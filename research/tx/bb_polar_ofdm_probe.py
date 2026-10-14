#!/usr/bin/env python3
"""Manual finite BBMCU polar/NCO-only table transmission and Pluto capture."""
import argparse
import fcntl
import hashlib
import json
import os
from pathlib import Path
import re
import signal
import struct
import subprocess
import threading
import time
import numpy as np
from calibration_probe import DebugIO,Transaction
from bb_dds_probe import Mailbox
from bb_polar_rf_probe import measure
from bb_polar_table_patch import COMMAND,MAGIC,TABLE,MAX_SAMPLES,MAX_REPEATS,HOOK,STUB
from probe_bb_rom import require

class TableTransport(Mailbox):
    def upload(self,payload):
        bits=getattr(self,'packing_bits',32)
        require(len(payload)%(4 if bits==4 else 32)==0 and 0<len(payload)<=MAX_SAMPLES*4,'Invalid table size')
        host=0x18638000+TABLE-0x10010000;self.window.select(0x18600000)
        for i,(word,) in enumerate(struct.iter_unpack('<I',payload)):
            if bits==4:
                require(getattr(self,'allow_mute',False),'Nibble packing requires NCO-only firmware')
                require(all(((word>>shift)&15)<=6 for shift in range(0,32,4)),'Nibble command exceeds qualified index 0..6')
            else:
                require(word&0xFFC0F000==0 and (word&4095 or getattr(self,'allow_mute',False)),'Invalid packed sample')
                if getattr(self,'allow_mute',False):require(word<4096,'NCO-only table contains amplitude fields')
            self.write(0x80000+((host+i*4)&0x7FFFF),word)
        observed=b''.join(self.window.mapped_read(host+i,min(512,len(payload)-i)) for i in range(0,len(payload),512))
        require(observed==payload,'Polar table readback mismatch')
        self.report['table_readback_matches']=True;self.save()

    def play(self,repeats,samples):
        require(1<=repeats<=MAX_REPEATS and 0<samples<=getattr(self,'max_samples',MAX_SAMPLES) and samples%8==0,'Invalid playback bounds')
        before=self.result();require(not self.read(0x37600)&(1<<31),'Mailbox busy')
        self.write(0x3768C,1<<16)
        for a,v in ((0x37608,MAGIC),(0x3760C,repeats),(0x37610,samples),(0x37600,0xC0000003|COMMAND<<18)):self.write(a,v)
        start=time.monotonic();self.write(0x37680,1);last=before
        while time.monotonic()-start<2:
            last=self.result()
            if last[0]==MAGIC and last[1]==(before[1]+1)&0xFFFFFFFF and last[2] in (2,3):break
            time.sleep(.001)
        row={'repeats':repeats,'frame_samples':samples,'host_seconds':time.monotonic()-start,
             'result_words':[hex(v) for v in last],'samples_completed':last[9],
             'counter_ticks':(last[11]-last[10])&0xFFFFFFFF}
        per_entry=row['counter_ticks']/max(1,last[9]);row['counter_ticks_per_table_entry']=per_entry
        row['counter_ticks_per_nco_write' if self.report.get('nco_only') else 'counter_ticks_per_pair']=per_entry
        self.report['playback']=row;self.save()
        require(last[0]==MAGIC and last[1]==(before[1]+1)&0xFFFFFFFF and last[2]==2 and last[9]==samples*repeats,'Playback failed')
        header=self.read(0x37600);require(header==0xC0000003|COMMAND<<18,'Mailbox changed')
        self.write(0x37600,header&~(1<<31));row['completed']=True;self.save()


def write_trace(path,samples):
    with path.open('xb') as f:
        os.fchmod(f.fileno(),0o600)
        if 'SUDO_UID' in os.environ:os.fchown(f.fileno(),int(os.environ['SUDO_UID']),int(os.environ['SUDO_GID']))
        np.asarray(samples,dtype='<c8').tofile(f)
    return hashlib.sha256(path.read_bytes()).hexdigest()


def run(args):
    import adi
    image=Path(os.environ['RTL8922_FIRMWARE']).read_bytes();patch=json.loads(args.patch_report.read_text())
    source=json.loads(args.source_report.read_text());payload=args.payload.read_bytes()
    require(hashlib.sha256(image).hexdigest()==patch['patched_sha256'],'Wrong firmware')
    require(hashlib.sha256(payload).hexdigest()==source['table_sha256'],'Wrong table')
    report={'schema_version':1,'hardware_access':True,'rf_tx_requested':True,'status':'started',
       'firmware_sha256':patch['patched_sha256'],'table_sha256':source['table_sha256'],'source_report':str(args.source_report.resolve()),
       'center_mhz':args.center_mhz,'rx_rate':args.rx_rate,'rx_offset_hz':args.rx_offset,'rx_gain':args.rx_gain,
       'nco_only':bool(patch.get('nco_only',False)),'fixed_amplitude_code':args.fixed_amplitude_code,
       'packing_bits':int(patch.get('packing_bits',32)),
       'capture_whole_pattern':args.capture_whole_pattern,
       'realtime_iq':args.realtime_iq,
       'nco_codebook':patch.get('nco_codebook',list(range(7))),
       'stream_blocks':args.stream_blocks,'mapped_writer_library':str(args.mapped_writer.resolve()) if args.mapped_writer else None,
       'started_utc':time.strftime('%Y-%m-%dT%H:%M:%SZ',time.gmtime())}
    offpath=args.trace.with_name(args.trace.stem+'-off.cf32')
    require(not offpath.exists(),'Off trace exists')
    def save():args.report.write_text(json.dumps(report,indent=2)+'\n')
    def interrupted(*_):raise TimeoutError('Bounded OFDM probe interrupted')
    handlers={s:signal.signal(s,interrupted) for s in (signal.SIGALRM,signal.SIGTERM,signal.SIGINT)}
    signal.alarm(38);tx=box=pluto=thread=None;original=frequency=None
    with open('/run/lock/rtl8922-sdr.lock','a') as lock:
        fcntl.flock(lock,fcntl.LOCK_EX|fcntl.LOCK_NB)
        try:
            require(os.statvfs(args.trace.parent).f_bavail*os.statvfs(args.trace.parent).f_frsize>args.samples*16+100000000,'Disk space')
            pluto=adi.Pluto('ip:192.168.2.1');pluto._ctx.set_timeout(getattr(args,'context_timeout_ms',4000))
            pd=pluto._ctrl.find_channel('altvoltage1',True).attrs['powerdown'];require(pd.value=='1','Pluto TX active')
            keys=('sample_rate','rx_lo','tx_lo','rx_rf_bandwidth','tx_rf_bandwidth','gain_control_mode_chan0',
                  'rx_hardwaregain_chan0','tx_hardwaregain_chan0')
            original={k:getattr(pluto,k) for k in keys};report['saved_pluto']=original
            io=DebugIO();iw=os.environ['RTL8922_IW']
            info=subprocess.check_output([iw,'dev',io.iface,'info'],text=True,timeout=3)
            match=re.search(r'channel .*?\((\d+) MHz\).*?width: 20 MHz',info)
            require(match is not None,'Initial channel not HT20');frequency=match[1];save()
            subprocess.run([iw,'dev',io.iface,'set','freq',str(args.center_mhz),'HT20'],check=True,timeout=3)
            pluto.sample_rate=args.rx_rate;pluto.rx_rf_bandwidth=args.rx_bandwidth or (5000000 if args.rx_rate==8000000 else 30000000)
            pluto.rx_lo=args.center_mhz*1000000+args.rx_offset
            pluto.gain_control_mode_chan0='manual';pluto.rx_hardwaregain_chan0=args.rx_gain
            pluto._rxadc.set_kernel_buffers_count(1);pluto.rx_buffer_size=args.samples
            report['actual_rx']={k:getattr(pluto,k) for k in ('sample_rate','rx_lo','rx_rf_bandwidth','rx_hardwaregain_chan0')}
            tx=Transaction(io,1,report,save,gain=15,source='calibration',tx_pad=6)
            if args.stream_blocks:
                require(patch.get('stream_consumer') and args.mapped_writer,'Streaming firmware and mapped writer required')
                if args.realtime_iq:
                    from bb_nco_realtime_transport import RealtimeTransport
                    require(source.get('input_format')=='CF32_LE' and source['stream_blocks']==args.stream_blocks,'Realtime source mismatch')
                    box=RealtimeTransport(io,report,save)
                else:
                    from bb_nco_stream_transport import StreamTransport
                    require(len(payload)==args.stream_blocks*2048,'Stream block count mismatch')
                    box=StreamTransport(io,report,save)
                    if source.get('kind')=='meshtastic-lora-frequency-dither':
                        require(getattr(args,'lora_test',False) and patch['max_blocks']==16384,'Explicit bounded LoRa launcher required')
                        require(2<=args.stream_blocks<=16384 and source['nco_command_max']<=9,'LoRa command bounds')
                        box.max_blocks=16384;box.command_max=source['nco_command_max']
                        box.stream_timeout=args.stream_blocks*.000386+1
                        box.realtime_refill=True;box.refill_cpu=args.refill_cpu
                        report['nco_codebook']=source['nco_codebook']
                        report['lora_parameters']=source['parameters'];report['transmitted_packets']=source['packet_count']
            else:
                require(not patch.get('stream_consumer'),'Streaming firmware requires stream arguments')
                box=TableTransport(io,report,save)
            box.allow_mute=report['nco_only']
            box.packing_bits=report['packing_bits'];box.max_samples=patch['max_samples']
            require(box.packing_bits in (4,32),'Unsupported packing')
            sample_count=source['frame_samples'] if args.realtime_iq else len(payload)*8//box.packing_bits
            require(sample_count==source['frame_samples'],'Source/table length mismatch')
            budget=67108864 if getattr(args,'lora_test',False) else 4194304
            require(sample_count*args.repeats<=budget,'Bounded playback exceeds experiment write budget')
            require(not args.capture_whole_pattern or args.samples/args.rx_rate>
                    sample_count*args.repeats/(32000000/3)+.3,'Whole-pattern RX window too short')
            for local,count in ((HOOK&~3,8),(STUB,64)):
                host=0x18638000+local-0x10010000;off=0xD3E70+local-0x10010000
                require(box.window.mapped_read(host,count)==image[off:off+count],'Loaded patch mismatch')
            if patch.get('lookup_local'):
                local=int(patch['lookup_local'],16);host=0x18638000+local-0x10010000
                require(box.window.mapped_read(host,64)==image[0xD3E70+local-0x10010000:0xD3E70+local-0x10010000+64],'Loaded NCO lookup mismatch')
            box.upload(payload)
            pluto.rx_buffer_size=getattr(args,'off_samples',args.samples)
            off=np.asarray(pluto.rx(),dtype='<c8');report['off_trace_sha256']=write_trace(offpath,off)
            report['private_off_trace']=str(offpath.resolve())
            pluto.rx_destroy_buffer();pluto.rx_buffer_size=65536
            base=args.control_base_index
            targets=[base*250000-args.rx_offset,(base+2)*250000-args.rx_offset];report['controls']=[]
            report['control_base_index']=base
            amplitude=args.fixed_amplitude_code
            for index,amp in ((None,None),(base,amplitude),(base+2,amplitude),(base,amplitude+9),(base,amplitude)):
                tx.stop()
                if index is not None:
                    tx.setup();tx.field('bb',0,0x82CC,0x3F,amp);tx.start(index)
                report['controls'].append({'index':index,'itqt':amp,'rf':measure(pluto,targets)});save()
            peaks=[report['controls'][i]['rf']['targets'][j] for i,j in ((1,0),(2,1),(3,0),(4,0))]
            require(all(p['above_local_median_db']>20 for p in peaks),'Static control too weak')
            require(all(max(c['rf']['clip_fraction_per_buffer'])==0 for c in report['controls']),'Static control clipped')
            movement=peaks[1]['hz']-peaks[0]['hz'];require(abs(movement-500000)<3000,'Tone failed motion control')
            report['amplitude_control_db']=float(10*np.log10(peaks[2]['power']/peaks[0]['power']))
            report['tone_movement_hz']=movement;report['measured_carrier_offset_hz']=peaks[-1]['hz']-targets[0]
            require(-8<report['amplitude_control_db']<-4,'Amplitude control failed')
            if args.attenuation_sweep:
                # Keep the RF source running while changing only this saved field.
                # The independent moving-tone controls above identify the source.
                report['attenuation_sweep']=[]
                pluto.rx_destroy_buffer();pluto.rx_buffer_size=16384
                if args.sweep_images:
                    tx.stop();pluto.rx_lo=args.center_mhz*1000000
                    tx.field('bb',0,0x82CC,0x3F,10);tx.start(8)
                    report['image_motion_controls']=[]
                    for index in (8,6,8):
                        tx.start(index)
                        report['image_motion_controls'].append({'index':index,'rf':measure(pluto,[2000000,1500000,-2000000,-1500000])})
                    positive=[r['rf']['targets'][j]['hz'] for r,j in zip(report['image_motion_controls'],[0,1,0])]
                    negative=[r['rf']['targets'][j]['hz'] for r,j in zip(report['image_motion_controls'],[2,3,2])]
                    require(abs(positive[1]-positive[0]+500000)<3000,'Image sweep tone motion failed')
                    require(abs(negative[1]-negative[0]-500000)<3000,'Conjugate image motion failed')
                    require(all(max(r['rf']['clip_fraction_per_buffer'])==0 for r in report['image_motion_controls']),'Image controls clipped')
                    center=positive[-1];report['attenuation_sweep_rx_lo']=pluto.rx_lo
                else:center=peaks[-1]['hz']
                for code in range(9,64):
                    tx.field('bb',0,0x82CC,0x3F,code)
                    pluto.rx_destroy_buffer()
                    powers=[];noise=[];clips=[];frequencies=[];images=[]
                    for _ in range(3):
                        x=np.asarray(pluto.rx());ps=abs(np.fft.fftshift(np.fft.fft(x*np.hanning(len(x)))))**2
                        f=np.fft.fftshift(np.fft.fftfreq(len(x),1/8000000))
                        search=np.flatnonzero(abs(f-center)<3000)
                        k=int(search[np.argmax(ps[search])]);powers.append(float(sum(ps[k-2:k+3])))
                        local=ps[(abs(f-center)>10000)&(abs(f-center)<100000)]
                        noise.append(float(np.median(local)*5));frequencies.append(float(f[k]))
                        if args.sweep_images:
                            image_center=-2000000+report['measured_carrier_offset_hz']
                            search=np.flatnonzero(abs(f-image_center)<3000);j=int(search[np.argmax(ps[search])])
                            images.append(float(sum(ps[j-2:j+3])))
                        clips.append(float(np.mean((abs(x.real)>=2047)|(abs(x.imag)>=2047))))
                    row={'code':code,'power':float(np.median(powers)),'noise_power':float(np.median(noise)),
                         'peak_hz':float(np.median(frequencies)),'clip_fraction':max(clips)}
                    row['above_noise_db']=float(10*np.log10(row['power']/max(row['noise_power'],1e-20)))
                    if images:row['image_power']=float(np.median(images))
                    report['attenuation_sweep'].append(row);save()
                    require(row['clip_fraction']==0,'Attenuation sweep clipped')
                tx.stop();pluto.rx_destroy_buffer();pluto.rx_lo=args.center_mhz*1000000+5500000
                tx.field('bb',0,0x82CC,0x3F,0x12);tx.start(16)
            pluto.rx_destroy_buffer();pluto.rx_buffer_size=getattr(args,'warmup_samples',args.samples)
            warm=time.monotonic();pluto.rx();report['capture_buffer_warmup_seconds']=time.monotonic()-warm
            errors=[];timing={}
            def writer():
                try:
                    timing['command_start']=time.monotonic();box.play(args.repeats,sample_count);timing['command_end']=time.monotonic()
                except Exception as exc:errors.append(f'{type(exc).__name__}: {exc}')
                finally:tx.stop()
            if args.capture_whole_pattern:
                # Recreate RX and schedule TX inside one contiguous acquisition;
                # the normal short-snapshot path retains its queued-buffer discard.
                pluto.rx_destroy_buffer()
                pluto.rx_buffer_size=args.samples
                original_writer=writer
                def writer():
                    time.sleep(.15);original_writer()
            thread=threading.Thread(target=writer,name='finite-polar-ofdm');thread.start()
            if not args.capture_whole_pattern:
                time.sleep(.05);pluto.rx()
            timing['rx_call']=time.monotonic()
            samples=np.asarray(pluto.rx(),dtype='<c8');timing['rx_return']=time.monotonic();thread.join(timeout=3)
            report['capture_timing_monotonic']=timing;require(not thread.is_alive(),'Pattern thread still running')
            report['producer_errors']=errors
            # Preserve the RF acquisition even if a producer underrun prevents
            # final-buffer qualification; the producer status remains primary.
            report['trace_sha256']=write_trace(args.trace,samples);report['private_trace']=str(args.trace.resolve())
            report['captured_samples']=len(samples);report['clip_fraction']=float(np.mean((abs(samples.real)>=2047)|(abs(samples.imag)>=2047)))
            save();require(not errors,'Pattern command failed')
            table_host=0x18638000+TABLE-0x10010000
            final_payload=getattr(box,'expected_final_payload',payload[-4096:]) if args.stream_blocks else payload
            observed=b''.join(box.window.mapped_read(table_host+i,min(512,len(final_payload)-i)) for i in range(0,len(final_payload),512))
            report['table_unchanged_after_playback']=observed==final_payload
            if args.stream_blocks:report['stream_final_buffers_match']=observed==final_payload
            require(observed==final_payload,'Final table/buffers readback mismatch')
            pluto.rx_destroy_buffer();pluto.rx_buffer_size=65536;report['off_after']=measure(pluto,targets)
            suppression=[]
            for k,j in ((1,0),(2,1),(3,0),(4,0)):
                on=report['controls'][k]['rf']['targets'][j]['power']
                off=max(report['controls'][0]['rf']['targets'][j]['power'],report['off_after']['targets'][j]['power'])
                suppression.append(float(10*np.log10(on/max(off,1e-20))))
            report['on_above_both_off_db']=suppression;save()
            require(min(suppression)>15,'Static control not above both off controls')
            require(report['clip_fraction']==0,'Capture clipped')
            report['status']='finite_nco_gate_captured' if report['nco_only'] else 'finite_polar_ofdm_captured'
        except BaseException as exc:report['exception']=f'{type(exc).__name__}: {exc}';raise
        finally:
            signal.alarm(0);signal.signal(signal.SIGTERM,signal.SIG_IGN);signal.signal(signal.SIGINT,signal.SIG_IGN);cleanup=[]
            if thread and thread.is_alive():thread.join(timeout=3)
            if tx:
                try:tx.restore()
                except Exception as exc:cleanup.append(f'RTL: {exc}')
            if box:box.restore()
            if pluto is not None and original is not None:
                actions=[('RX buffer',pluto.rx_destroy_buffer),('TX off',lambda:setattr(pd,'value','1'))]
                actions.extend((k,lambda k=k:setattr(pluto,k,original[k])) for k in keys if k!='gain_control_mode_chan0')
                actions.append(('gain mode',lambda:setattr(pluto,'gain_control_mode_chan0',original['gain_control_mode_chan0'])))
                for name,fn in actions:
                    try:fn()
                    except Exception as exc:cleanup.append(f'{name}: {exc}')
                try:report['restored_pluto']={k:getattr(pluto,k) for k in keys};report['pluto_tx_powerdown']=pd.value
                except Exception as exc:cleanup.append(str(exc))
            if frequency:
                try:subprocess.run([iw,'dev',io.iface,'set','freq',frequency,'HT20'],check=True,timeout=3)
                except Exception as exc:cleanup.append(f'Channel: {exc}')
            report['cleanup_errors']=cleanup;save()
            for s,h in handlers.items():signal.signal(s,h)
    print(json.dumps({k:report.get(k) for k in ('status','playback','clip_fraction','cleanup_errors')}))


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--run-rf-test',action='store_true')
    for name in ('patch-report','source-report','payload','report','trace'):p.add_argument('--'+name,type=Path)
    p.add_argument('--center-mhz',type=int,default=2422,choices=(2412,2422,2442,2462))
    p.add_argument('--samples',type=int,default=262144,choices=(262144,524288,2097152,8388608))
    p.add_argument('--rx-rate',type=int,default=8000000,choices=(2000000,8000000,40000000))
    p.add_argument('--capture-whole-pattern',action='store_true',help='Place bounded TX inside one long contiguous Pluto acquisition')
    p.add_argument('--control-base-index',type=int,default=16,choices=(1,4,16,18,33))
    p.add_argument('--fixed-amplitude-code',type=int,default=18,choices=(0,9,18),help='Equal I/Q attenuation for NCO-only playback and moving-tone controls')
    p.add_argument('--stream-blocks',type=int,default=0,choices=range(0,1025),help='Explicit bounded host-fed stream, two 2048-byte buffers, no local repetition')
    p.add_argument('--mapped-writer',type=Path,help='Manually compiled bounded BAR2 writer library')
    p.add_argument('--realtime-iq',action='store_true',help='Input payload is CF32; causal commands compiled during transmission')
    p.add_argument('--rx-offset',type=int,default=5500000,choices=(500000,1000000,1750000,5500000))
    p.add_argument('--rx-bandwidth',type=int,choices=(1500000,5000000,30000000))
    p.add_argument('--attenuation-sweep',action='store_true',help='Measure codes 9..63 before the finite payload')
    p.add_argument('--sweep-images',action='store_true',help='Observe both conjugate sidebands during the attenuation sweep')
    p.add_argument('--rx-gain',type=int,default=40,choices=range(0,72));p.add_argument('--repeats',type=int,default=4096,choices=range(1,4097));args=p.parse_args()
    if not args.run_rf_test:print('Offline plan: finite preloaded polar OFDM and independent Pluto capture');return
    require(all(getattr(args,k) for k in ('patch_report','source_report','payload','report','trace')),'All file arguments required')
    require(not args.attenuation_sweep or args.rx_rate==8000000,'Attenuation sweep requires 8 MS/s')
    require(not args.attenuation_sweep or args.control_base_index==16,'Attenuation sweep requires the original reference tone')
    require(not args.attenuation_sweep or args.rx_offset==5500000,'Attenuation sweep requires the original receiver LO')
    require(not args.attenuation_sweep or args.fixed_amplitude_code==18,'Attenuation sweep requires the original amplitude')
    require(not args.report.exists() and not args.trace.exists(),'Fresh output paths required');run(args)
if __name__=='__main__':main()
