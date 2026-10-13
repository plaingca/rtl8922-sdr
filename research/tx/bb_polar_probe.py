#!/usr/bin/env python3
"""Explicit finite idle throughput measurement for isolated bb_polar_patch."""
import argparse
import fcntl
import hashlib
import json
import os
from pathlib import Path
import signal
import struct
import time
from calibration_probe import DebugIO
from bb_dds_probe import Mailbox
from bb_polar_patch import COMMAND, MAGIC, MAX_CYCLES, PERIOD, HOOK, STUB
from probe_bb_rom import require

class PolarTransport(Mailbox):
    def request(self, mode=0, cycles=0):
        require(mode in range(6) and 0<=cycles<=MAX_CYCLES,'Invalid request')
        before=self.result()
        require(not self.read(0x37600)&(1<<31),'Busy mailbox')
        self.write(0x3768C,1<<16)
        for a,v in ((0x37608,MAGIC),(0x3760C,cycles),(0x37610,mode),(0x37600,0xC0000003|COMMAND<<18)):self.write(a,v)
        start=time.monotonic();self.write(0x37680,1)
        last=before
        while time.monotonic()-start<2:
            last=self.result()
            if last[0]==MAGIC and last[1]==(before[1]+1)&0xFFFFFFFF and last[2] in (2,3):break
            time.sleep(.0005)
        elapsed=time.monotonic()-start
        row={'mode':mode,'cycles':cycles,'samples':cycles*PERIOD,'host_seconds':elapsed,
             'host_bracket_lower_bound_samples_per_second':cycles*PERIOD/elapsed,
             'result_words':[hex(v) for v in last]}
        row['mcycle_delta']=(last[11]-last[10])&0xFFFFFFFF
        row['cycles_per_sample']=row['mcycle_delta']/(cycles*PERIOD) if cycles else None
        row['host_bracket_lower_bound_cycle_hz']=row['mcycle_delta']/elapsed if cycles else None
        row['csr_words']=[hex(v) for v in struct.unpack('<8I',self.window.mapped_read(0x1863FB80,32))]
        require(row['csr_words'][0]==row['csr_words'][4],'MCCTL1 did not restore')
        require(row['csr_words'][2]==row['csr_words'][6],'MCCA did not restore')
        self.report.setdefault('commands',[]).append(row);self.save()
        require(last[0]==MAGIC and last[1]==(before[1]+1)&0xFFFFFFFF and last[2]==2,'Command failed')
        require(last[3:5]==(cycles,mode) and last[9]==cycles*PERIOD,'Count mismatch')
        header=self.read(0x37600);require(header==0xC0000003|COMMAND<<18,'Mailbox changed')
        self.write(0x37600,header&~(1<<31));row['completed']=True;self.save()
        return last


def run(args):
    import adi
    report={'schema_version':1,'hardware_access':True,'rf_tx_requested':False,'status':'started',
            'started_utc':time.strftime('%Y-%m-%dT%H:%M:%SZ',time.gmtime())}
    def save():args.report.write_text(json.dumps(report,indent=2)+'\n')
    def interrupted(*_):raise TimeoutError('Finite polar benchmark interrupted')
    handlers={s:signal.signal(s,interrupted) for s in (signal.SIGALRM,signal.SIGTERM,signal.SIGINT)}
    signal.alarm(25);box=None
    with open('/run/lock/rtl8922-sdr.lock','a') as lock:
        fcntl.flock(lock,fcntl.LOCK_EX|fcntl.LOCK_NB)
        try:
            image=Path(os.environ['RTL8922_FIRMWARE']).read_bytes();metadata=json.loads(args.patch_report.read_text())
            require(hashlib.sha256(image).hexdigest()==metadata['patched_sha256'],'Wrong firmware')
            report['firmware_sha256']=metadata['patched_sha256']
            pluto=adi.Pluto('ip:192.168.2.1');pluto._ctx.set_timeout(3000)
            require(pluto._ctrl.find_channel('altvoltage1',True).attrs['powerdown'].value=='1','Pluto TX active')
            keys=('sample_rate','rx_lo','tx_lo','rx_rf_bandwidth','tx_rf_bandwidth','gain_control_mode_chan0','tx_hardwaregain_chan0')
            report['saved_pluto']={k:getattr(pluto,k) for k in keys}
            io=DebugIO();modes={str(p):io.read(('rf',p,0)) for p in (0,1)}
            require(all((v>>16)&15 in (0,1,3) for v in modes.values()),'RF not idle')
            original=[io.read(('bb',0,a)) for a in (0x802C,0x82CC)]
            report['rf_modes_before']=modes;report['saved_nco_itqt']=original;save()
            box=PolarTransport(io,report,save)
            for local,count in ((HOOK&~3,8),(STUB,64)):
                host=0x18638000+local-0x10010000;off=0xD3E70+local-0x10010000
                require(box.window.mapped_read(host,count)==image[off:off+count],'Patch readback mismatch')
            result=box.request();require([result[5],result[7]]==original,'Peripheral mapping mismatch')
            for mode in (1,2,4,5):
                for cycles in (4096,32768,MAX_CYCLES):
                    result=box.request(mode,cycles)
                    require([result[5],result[7]]==[result[6],result[8]]==original,'Benchmark changed registers')
            report['final_nco_itqt']=[io.read(('bb',0,a)) for a in (0x802C,0x82CC)]
            report['final_pluto']={k:getattr(pluto,k) for k in keys}
            require(report['final_pluto']==report['saved_pluto'],'Pluto configuration changed')
            report['status']='idle_single_and_paired_store_benchmark_completed'
        except BaseException as exc:report['exception']=f'{type(exc).__name__}: {exc}';raise
        finally:
            signal.alarm(0)
            if box:box.restore()
            save()
            for s,h in handlers.items():signal.signal(s,h)
    print(json.dumps(report,indent=2))

def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--execute',action='store_true')
    p.add_argument('--patch-report',type=Path);p.add_argument('--report',type=Path);args=p.parse_args()
    if not args.execute:print('Offline plan: RF-idle finite single/paired register writes');return
    require(args.report and args.patch_report and not args.report.exists(),'Fresh report required');run(args)
if __name__=='__main__':main()
