#!/usr/bin/env python3
"""Explicit, finite BBMCU FM audio transmission and private Pluto RF capture.

The host fills two IRAM audio buffers; BB owns consumed count and NCO timing.
Only known verified-padding addresses are written. Use the unchanged working
modules, isolated bb_fm_patch firmware and the bounded manual launcher.
"""
import argparse
import fcntl
import hashlib
import json
import math
import os
from pathlib import Path
import re
import resource
import signal
import struct
import subprocess
import sys
import threading
import time
import numpy as np

from calibration_probe import DebugIO, Transaction
from bb_dds_probe import Mailbox
from tone_validation import measure
from bb_fm_continuous_patch import COMMAND, MAGIC, BUFFER, BLOCK, CONTROL, MAX_BLOCKS, HOOK, STUB


def require(condition,message):
    if not condition:raise ValueError(message)


class FMTransport(Mailbox):
    def local_write(self,local,value):
        require(local%4==0 and (BUFFER<=local<BUFFER+2*BLOCK or local in (CONTROL,CONTROL+4,CONTROL+12)),
                'Host write outside owned audio/ready/cancel words')
        host=0x18638000+local-0x10010000
        self.write(0x80000+(host&0x7FFFF),value)

    def control(self):
        host=0x18638000+CONTROL-0x10010000
        return struct.unpack('<4I',self.window.mapped_read(host,16))

    def fill(self,sequence,data,verify=False):
        require(len(data)==BLOCK and 1<=sequence<=MAX_BLOCKS,'Invalid audio block')
        consumed=self.control()[2]
        require(0<=consumed<=MAX_BLOCKS,'Invalid BB consumed count')
        require(sequence<=2 or consumed>=sequence-2,'Attempt to overwrite unconsumed audio')
        local=BUFFER+((sequence-1)&1)*BLOCK
        self.window.select(0x18600000)
        before=time.monotonic()
        for offset,(value,) in enumerate(struct.iter_unpack('<I',data)):
            self.local_write(local+offset*4,value)
        if verify:
            host=0x18638000+local-0x10010000
            observed=b''.join(self.window.mapped_read(host+offset,512) for offset in range(0,BLOCK,512))
            require(observed==data,'IRAM audio write/readback mismatch')
        self.local_write(CONTROL+((sequence-1)&1)*4,sequence)
        self.report.setdefault('uploads',[]).append({'sequence':sequence,'consumed_before':consumed,
             'seconds':time.monotonic()-before,'verified':verify})

    def prepare(self,payload):
        self.window.select(0x18600000)
        for local in (CONTROL,CONTROL+4,CONTROL+12):self.local_write(local,0)
        self.fill(1,payload[:BLOCK],True)
        if len(payload)>BLOCK:self.fill(2,payload[BLOCK:2*BLOCK],True)

    def stream(self,payload,hold,stop):
        blocks=len(payload)//BLOCK
        require(1<=blocks<=MAX_BLOCKS and 16<=hold<=1024,'Invalid stream bounds')
        previous=self.result()
        require(not self.read(0x37600)&(1<<31),'Mailbox busy')
        self.write(0x3768C,1<<16)
        for address,value in ((0x37608,MAGIC),(0x3760C,blocks),(0x37610,hold),
                              (0x37600,0xC0000003|COMMAND<<18)):
            self.write(address,value)
        start=time.monotonic();self.write(0x37680,1)
        next_sequence=3
        progress=[]
        last_consumed=0
        try:
            while time.monotonic()-start<34:
                if stop.is_set():self.local_write(CONTROL+12,1)
                consumed=self.control()[2]
                require(last_consumed<=consumed<=blocks,'Invalid or regressed BB consumed count')
                if consumed!=last_consumed:
                    progress.append([time.monotonic()-start,consumed]);last_consumed=consumed
                result=self.result()
                if result[0]==MAGIC and result[1]==(previous[1]+1)&0xFFFFFFFF:
                    if result[2] in (2,3,4,5):break
                if next_sequence<=blocks and consumed>=next_sequence-2:
                    self.fill(next_sequence,payload[(next_sequence-1)*BLOCK:next_sequence*BLOCK])
                    next_sequence+=1
                else:time.sleep(.001)
            else:raise TimeoutError('BB FM completion deadline')
            self.report['stream']={'result_words':[hex(v) for v in result],
                'host_seconds':time.monotonic()-start,'blocks':blocks,'hold':hold,
                'progress':progress,'completed_blocks':result[9],'status':result[2],
                'uploaded_blocks':min(next_sequence-1,blocks)}
            header=self.read(0x37600)
            require(header==0xC0000003|COMMAND<<18,'Mailbox changed')
            self.write(0x37600,header&~(1<<31))
            self.save()
            require(result[2]==2 and result[9]==blocks,'Stream underrun, cancellation or invalid request')
        except BaseException:
            self.report['stream_failure']={'last_result':[hex(v) for v in result], 'last_consumed':last_consumed, 'progress':progress}
            self.save()
            self.local_write(CONTROL+12,1)
            raise


def run(args):
    import adi
    source=None
    payload=None if args.stream_url else args.payload.read_bytes()
    length=args.stream_blocks*BLOCK if args.stream_url else len(payload)
    require(length%BLOCK==0 and 1<=length//BLOCK<=MAX_BLOCKS,'Invalid payload length')
    metadata=json.loads(args.patch_report.read_text())
    firmware=Path(os.environ['RTL8922_FIRMWARE']).read_bytes()
    require(hashlib.sha256(firmware).hexdigest()==metadata['patched_sha256'],'Wrong isolated firmware')
    report={'schema_version':1,'hardware_access':True,'rf_tx_requested':True,
      'started_utc':time.strftime('%Y-%m-%dT%H:%M:%SZ',time.gmtime()),'status':'started',
      'firmware_sha256':metadata['patched_sha256'],'payload_sha256':None if args.stream_url else hashlib.sha256(payload).hexdigest(),
      'payload':args.stream_url if args.stream_url else str(args.payload.resolve()),
      'continuous_consumer':True,'source_started_monotonic':source.started if source else None,'hold':args.hold,'rx_rate':args.rx_rate,'rx_offset_hz':375000,
      'center_hz':args.center_mhz*1000000,'rx_gain':args.rx_gain,'tx_gain_code':15,'tx_pad':6}
    def save():args.report.write_text(json.dumps(report,indent=2)+'\n')
    def interrupted(*_):raise TimeoutError('Bounded FM probe interrupted')
    handlers={s:signal.signal(s,interrupted) for s in (signal.SIGALRM,signal.SIGTERM,signal.SIGINT)}
    signal.alarm(38)
    tx=box=pluto=None;original=frequency=None;thread=None;stop=threading.Event()
    with open('/run/lock/rtl8922-sdr.lock','a') as lock:
        fcntl.flock(lock,fcntl.LOCK_EX|fcntl.LOCK_NB)
        try:
            if args.stream_url:
                from bb_fm_live_source import LiveSource
                source=LiveSource(args.stream_url,args.stream_blocks,args.source_prefix)
                payload=source
                report['source_started_monotonic']=source.started
            require(os.statvfs(args.trace.parent).f_bavail*os.statvfs(args.trace.parent).f_frsize>500000000,
                    'Insufficient capture disk space')
            pluto=adi.Pluto('ip:192.168.2.1');pluto._ctx.set_timeout(3000)
            pd=pluto._ctrl.find_channel('altvoltage1',True).attrs['powerdown']
            require(pd.value=='1','Pluto TX active')
            keys=('sample_rate','rx_lo','tx_lo','rx_rf_bandwidth','tx_rf_bandwidth',
                  'gain_control_mode_chan0','rx_hardwaregain_chan0','tx_hardwaregain_chan0')
            original={k:getattr(pluto,k) for k in keys};report['saved_pluto']=original
            io=DebugIO();iw=os.environ['RTL8922_IW']
            info=subprocess.check_output([iw,'dev',io.iface,'info'],text=True,timeout=3)
            match=re.search(r'channel .*?\((\d+) MHz\).*?width: 20 MHz',info)
            require(match is not None,'Initial channel is not HT20');frequency=match[1]
            save()
            pluto.sample_rate=args.rx_rate;pluto.rx_rf_bandwidth=800000;pluto.rx_lo=args.center_mhz*1000000+375000
            pluto.gain_control_mode_chan0='manual';pluto.rx_hardwaregain_chan0=args.rx_gain
            pluto.rx_buffer_size=65536
            subprocess.run([iw,'dev',io.iface,'set','freq',str(args.center_mhz),'HT20'],check=True,timeout=3)
            time.sleep(.1)
            tx=Transaction(io,1,report,save,gain=15,source='calibration',tx_pad=6)
            box=FMTransport(io,report,save)
            for local,count in ((HOOK&~3,8),(STUB,64)):
                host=0x18638000+local-0x10010000;offset=0xD3E70+local-0x10010000
                require(box.window.mapped_read(host,count)==firmware[offset:offset+count],'Loaded patch mismatch')
            box.prepare(payload)
            report['off_before']=measure(pluto,[-125000,0,125000])
            predicted=len(payload)*args.hold/10000000
            size=math.ceil((predicted*1.1+.4)*args.rx_rate/4096)*4096
            limit=resource.getrlimit(resource.RLIMIT_FSIZE)[0]
            require(limit==resource.RLIM_INFINITY or size*8<=limit,'Capture exceeds per-file size limit; reduce rate or duration')
            tx.setup();tx.start(1)
            report['pilot']=measure(pluto,[-125000])
            pilot=report['pilot']['targets'][0]
            require(pilot['above_local_median_db']>=20,'Pilot too weak')
            report['carrier_hz']=pilot['hz']+125000
            pluto.rx_destroy_buffer();pluto._rxadc.set_kernel_buffers_count(1)
            # A single acquisition avoids unqualified inter-buffer phase gaps.
            require(size<=33554432,'Capture too large')
            pluto.rx_buffer_size=size;pluto._ctx.set_timeout(30000)
            errors=[];timing={};origin=time.monotonic()
            report['capture_origin_monotonic']=origin
            def writer():
                try:
                    if stop.wait(.15):return
                    timing['start']=time.monotonic()-origin
                    box.stream(payload,args.hold,stop)
                    timing['end']=time.monotonic()-origin
                except Exception as exc:errors.append(f'{type(exc).__name__}: {exc}')
                finally:tx.stop()
            thread=threading.Thread(target=writer,name='bounded-bb-fm-producer');thread.start()
            samples=np.asarray(pluto.rx())
            timing['rx_return']=time.monotonic()-origin
            thread.join(timeout=34)
            require(not thread.is_alive(),'Producer still running')
            report['timing']=timing;report['producer_errors']=errors
            clipped=0
            with args.trace.open('xb') as f:
                os.fchmod(f.fileno(),0o600)
                if 'SUDO_UID' in os.environ:os.fchown(f.fileno(),int(os.environ['SUDO_UID']),int(os.environ['SUDO_GID']))
                for offset in range(0,len(samples),262144):
                    part=samples[offset:offset+262144]
                    clipped+=np.count_nonzero((abs(part.real)>=2047)|(abs(part.imag)>=2047))
                    np.asarray(part,dtype='<c8').tofile(f)
            report['clip_fraction']=float(clipped/len(samples))
            args.trace.chmod(0o600)
            if 'SUDO_UID' in os.environ:os.chown(args.trace,int(os.environ['SUDO_UID']),int(os.environ['SUDO_GID']))
            report['private_trace']=str(args.trace.resolve());report['captured_samples']=len(samples)
            save()
            require(not errors,f'Producer failed: {errors}')
            pluto.rx_destroy_buffer();pluto.rx_buffer_size=65536
            report['off_after']=measure(pluto,[-125000,0,125000])
            report['status']='finite_fm_audio_captured'
        except BaseException as exc:
            report['exception']=f'{type(exc).__name__}: {exc}';raise
        finally:
            signal.alarm(0);signal.signal(signal.SIGTERM,signal.SIG_IGN);signal.signal(signal.SIGINT,signal.SIG_IGN)
            stop.set();cleanup=[]
            if source:source.stop.set()
            if thread and thread.is_alive():thread.join(timeout=2)
            if tx:
                try:tx.restore()
                except Exception as exc:cleanup.append(f'RTL: {exc}')
            if box:
                try:box.restore()
                except Exception as exc:cleanup.append(f'Mailbox: {exc}')
            if pluto is not None and original is not None:
                actions=[('RX buffer',pluto.rx_destroy_buffer),('TX off',lambda:setattr(pd,'value','1'))]
                actions.extend((k,lambda k=k:setattr(pluto,k,original[k])) for k in keys if k!='gain_control_mode_chan0')
                actions.append(('gain mode',lambda:setattr(pluto,'gain_control_mode_chan0',original['gain_control_mode_chan0'])))
                for name,fn in actions:
                    try:fn()
                    except Exception as exc:cleanup.append(f'{name}: {exc}')
                try:
                    report['restored_pluto']={k:getattr(pluto,k) for k in keys};report['pluto_tx_powerdown']=pd.value
                except Exception as exc:cleanup.append(f'Pluto readback: {exc}')
            if frequency:
                try:subprocess.run([iw,'dev',io.iface,'set','freq',frequency,'HT20'],check=True,timeout=3)
                except Exception as exc:cleanup.append(f'Channel: {exc}')
            if source:
                try:
                    report['live_source']=source.close()
                    report['payload_sha256']=report['live_source']['payload_sha256']
                except Exception as exc:cleanup.append(f'Live source: {exc}')
            report['cleanup_errors']=cleanup;save()
            for s,h in handlers.items():signal.signal(s,h)
    print(json.dumps({k:report.get(k) for k in ('status','exception','stream','cleanup_errors')}))


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--run-rf-test',action='store_true')
    for name in ('payload','patch-report','report','trace'):p.add_argument('--'+name,type=Path)
    p.add_argument('--rx-rate',type=int,default=1000000,choices=(1000000,2000000))
    p.add_argument('--stream-url')
    p.add_argument('--stream-blocks',type=int,default=125)
    p.add_argument('--source-prefix',type=Path)
    p.add_argument('--hold',type=int,default=334)
    p.add_argument('--center-mhz',type=int,choices=(2412,2422,2442,2447,2462),default=2442)
    p.add_argument('--rx-gain',type=int,default=60,choices=range(0,72))
    args=p.parse_args()
    if not args.run_rf_test:
        print(json.dumps({'hardware_access':False,'plan':'finite double-buffered BB FM, Pluto RX, restore'}));return
    require(all((args.patch_report,args.report,args.trace)),'Report/trace paths required')
    require(bool(args.payload)!=bool(args.stream_url),'Choose payload file or stream URL')
    require(not args.stream_url or args.source_prefix,'Live source prefix required')
    require(not args.report.exists() and not args.trace.exists(),'Output exists')
    require(16<=args.hold<=1024,'Invalid hold count')
    run(args)


if __name__=='__main__':main()
