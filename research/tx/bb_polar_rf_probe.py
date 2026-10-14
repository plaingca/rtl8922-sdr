#!/usr/bin/env python3
"""Manual bounded paired NCO/ITQT RF test; one short contiguous Pluto capture.

Static moving tones and scalar-amplitude controls precede the finite pattern.
The unchanged working driver is used with isolated bb_polar_patch firmware.
"""
import argparse
import fcntl
import hashlib
import json
import os
from pathlib import Path
import re
import signal
import subprocess
import threading
import time
import numpy as np
from calibration_probe import DebugIO,Transaction
from bb_polar_probe import PolarTransport
from bb_polar_patch import HOOK,STUB,MAX_CYCLES
from probe_bb_rom import require
from tone_validation import summarize_spectra


def measure(pluto, targets):
    """Longer coherent FFT makes weak high-band controls resolvable."""
    pluto.rx_destroy_buffer()
    spectra=[];clips=[];rms=[]
    for _ in range(8):
        x=np.asarray(pluto.rx())
        require(len(x)==pluto.rx_buffer_size,'Unexpected control buffer size')
        clips.append(float(np.mean((abs(x.real)>=2047)|(abs(x.imag)>=2047))))
        rms.append(float(np.sqrt(np.mean(abs(x)**2))))
        spectra.append(abs(np.fft.fftshift(np.fft.fft(x*np.hanning(len(x)))))**2)
    return {'targets':summarize_spectra(np.median(spectra,axis=0),int(pluto.sample_rate),targets),
            'fft_size':pluto.rx_buffer_size,'blocks':8,'clip_fraction_per_buffer':clips,'rms_per_buffer':rms}


def run(args):
    import adi
    image=Path(os.environ['RTL8922_FIRMWARE']).read_bytes();meta=json.loads(args.patch_report.read_text())
    require(hashlib.sha256(image).hexdigest()==meta['patched_sha256'],'Wrong firmware')
    report={'schema_version':1,'hardware_access':True,'rf_tx_requested':True,'status':'started',
       'firmware_sha256':meta['patched_sha256'],'native_5g_gain':args.native_5g_gain,'center_mhz':args.center_mhz,'rx_rate':40000000,
       'started_utc':time.strftime('%Y-%m-%dT%H:%M:%SZ',time.gmtime())}
    def save():args.report.write_text(json.dumps(report,indent=2)+'\n')
    def interrupted(*_):raise TimeoutError('Bounded polar RF probe interrupted')
    handlers={s:signal.signal(s,interrupted) for s in (signal.SIGALRM,signal.SIGTERM,signal.SIGINT)}
    signal.alarm(38);tx=box=pluto=thread=None;original=frequency=None
    with open('/run/lock/rtl8922-sdr.lock','a') as lock:
        fcntl.flock(lock,fcntl.LOCK_EX|fcntl.LOCK_NB)
        try:
            require(os.statvfs(args.trace.parent).f_bavail*os.statvfs(args.trace.parent).f_frsize>100000000,'Disk space')
            pluto=adi.Pluto('ip:192.168.2.1');pluto._ctx.set_timeout(4000)
            pd=pluto._ctrl.find_channel('altvoltage1',True).attrs['powerdown'];require(pd.value=='1','Pluto TX active')
            keys=('sample_rate','rx_lo','tx_lo','rx_rf_bandwidth','tx_rf_bandwidth','gain_control_mode_chan0',
                  'rx_hardwaregain_chan0','tx_hardwaregain_chan0')
            original={k:getattr(pluto,k) for k in keys};report['saved_pluto']=original
            io=DebugIO();iw=os.environ['RTL8922_IW']
            info=subprocess.check_output([iw,'dev',io.iface,'info'],text=True,timeout=3)
            match=re.search(r'channel .*?\((\d+) MHz\).*?width: 20 MHz',info)
            require(match is not None,'Initial channel not HT20');frequency=match[1];save()
            subprocess.run([iw,'dev',io.iface,'set','freq',str(args.center_mhz),'HT20'],check=True,timeout=3)
            pluto.sample_rate=40000000;pluto.rx_rf_bandwidth=30000000;pluto.rx_lo=args.center_mhz*1000000+4000000
            pluto.gain_control_mode_chan0='manual';pluto.rx_hardwaregain_chan0=args.rx_gain;pluto.rx_buffer_size=args.control_fft_size
            report['actual_rx']={k:getattr(pluto,k) for k in ('sample_rate','rx_lo','rx_rf_bandwidth','rx_hardwaregain_chan0')}
            tx=Transaction(io,1,report,save,gain=15,source='calibration',tx_pad=14 if args.native_5g_gain else 6)
            box=PolarTransport(io,report,save)
            for local,count in ((HOOK&~3,8),(STUB,64)):
                host=0x18638000+local-0x10010000;off=0xD3E70+local-0x10010000
                require(box.window.mapped_read(host,count)==image[off:off+count],'Loaded patch mismatch')
            targets=[-2000000,2000000];report['controls']=[]
            for index,amp in ((None,None),(8,0x12),(24,0x12),(8,0x1B),(8,0x12)):
                tx.stop()
                if index is not None:
                    tx.setup()
                    if args.native_5g_gain:tx.field('rf',1,0x11,0x700,5)
                    tx.field('bb',0,0x82CC,0x3F,amp);tx.start(index)
                report['controls'].append({'index':index,'itqt':amp,'rf':measure(pluto,targets)});save()
            peaks=[report['controls'][i]['rf']['targets'][j] for i,j in ((1,0),(2,1),(3,0),(4,0))]
            require(all(p['above_local_median_db']>20 for p in peaks),'Static control too weak')
            require(all(max(c['rf']['clip_fraction_per_buffer'])==0 for c in report['controls']),'Static control clipped')
            movement=peaks[1]['hz']-peaks[0]['hz'];require(abs(movement-4000000)<10000,'Tone failed motion control')
            ratio=10*np.log10(peaks[2]['power']/peaks[0]['power'])
            report['amplitude_control_db']=float(ratio);report['tone_movement_hz']=movement
            require(-8<ratio<-4,'ITQT did not produce scalar half-amplitude RF')
            pluto.rx_destroy_buffer();pluto._rxadc.set_kernel_buffers_count(1);pluto.rx_buffer_size=args.samples
            # Allocate and refill the large Pluto buffer before starting the
            # sub-second command. Allocation latency must not consume the RF window.
            warm=time.monotonic();pluto.rx();report['capture_buffer_warmup_seconds']=time.monotonic()-warm
            errors=[];timing={}
            def writer():
                try:
                    timing['command_start']=time.monotonic();box.request(3,MAX_CYCLES);timing['command_end']=time.monotonic()
                except Exception as exc:errors.append(f'{type(exc).__name__}: {exc}')
                finally:tx.stop()
            thread=threading.Thread(target=writer,name='finite-polar-pattern');thread.start();time.sleep(.05)
            pluto.rx()  # Discard the buffer queued during the static pilot.
            timing['rx_call']=time.monotonic()
            samples=np.asarray(pluto.rx(),dtype='<c8');timing['rx_return']=time.monotonic();thread.join(timeout=3)
            report['capture_timing_monotonic']=timing
            require(not thread.is_alive(),'Pattern thread still running')
            report['producer_errors']=errors;require(not errors,'Pattern command failed')
            with args.trace.open('xb') as f:
                os.fchmod(f.fileno(),0o600)
                if 'SUDO_UID' in os.environ:os.fchown(f.fileno(),int(os.environ['SUDO_UID']),int(os.environ['SUDO_GID']))
                samples.tofile(f)
            report['private_trace']=str(args.trace.resolve());report['captured_samples']=len(samples)
            report['clip_fraction']=float(np.mean((abs(samples.real)>=2047)|(abs(samples.imag)>=2047)))
            report['trace_sha256']=hashlib.sha256(args.trace.read_bytes()).hexdigest()
            pluto.rx_destroy_buffer();pluto.rx_buffer_size=args.control_fft_size
            report['off_after']=measure(pluto,targets)
            suppression=[]
            for k,j in ((1,0),(2,1),(3,0),(4,0)):
                signal_power=report['controls'][k]['rf']['targets'][j]['power']
                off=max(report['controls'][0]['rf']['targets'][j]['power'],report['off_after']['targets'][j]['power'])
                suppression.append(float(10*np.log10(signal_power/max(off,1e-20))))
            report['on_above_both_off_db']=suppression;save()
            require(min(suppression)>15,'Static control not sufficiently above both off controls')
            require(report['clip_fraction']==0,'Pattern capture clipped')
            report['status']='paired_polar_pattern_captured'
        except BaseException as exc:report['exception']=f'{type(exc).__name__}: {exc}';raise
        finally:
            signal.alarm(0);signal.signal(signal.SIGTERM,signal.SIG_IGN);signal.signal(signal.SIGINT,signal.SIG_IGN)
            cleanup=[]
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
    print(json.dumps({k:report.get(k) for k in ('status','amplitude_control_db','tone_movement_hz','cleanup_errors')}))


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--run-rf-test',action='store_true')
    p.add_argument('--patch-report',type=Path);p.add_argument('--report',type=Path);p.add_argument('--trace',type=Path)
    p.add_argument('--center-mhz',type=int,default=2422,choices=(2412,2422,2442,2462,5180,5500,5745,5955))
    p.add_argument('--control-fft-size',type=int,default=65536,choices=(65536,262144))
    p.add_argument('--samples',type=int,default=1048576,choices=(262144,1048576))
    p.add_argument('--native-5g-gain',action='store_true',help='Use the native 5-GHz IQK RF11 mid-field 5 and pad 14')
    p.add_argument('--rx-gain',type=int,default=60,choices=range(0,72));args=p.parse_args()
    if not args.run_rf_test:print('Offline plan: bounded NCO/ITQT controls and RF pattern');return
    require(args.patch_report and args.report and args.trace and not args.report.exists() and not args.trace.exists(),'Fresh output paths required')
    require(not args.native_5g_gain or args.center_mhz>=4900,'5-GHz gain requires high band')
    run(args)
if __name__=='__main__':main()
