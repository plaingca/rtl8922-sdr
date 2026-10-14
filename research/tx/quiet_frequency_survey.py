#!/usr/bin/env python3
"""Explicit passive Pluto survey; RTL stays unbound and neither radio transmits."""
import argparse
import fcntl
import json
import os
import signal
import subprocess
import time
from pathlib import Path
import numpy as np

RATE=8000000
FFT=4096
BUFFER=65536


def candidates():
    return [{'rtl_lo_mhz':c,'nco_offset_hz':offset,'rf_hz':int(c*1e6+offset),
             'band':'2.4 GHz' if c<3000 else '5 GHz'}
            for c in [2412,2422,2432,2442,2452,2462,5180,5200,5220,5240,5745,5765,5785,5805,5825]
            for offset in [250000,4000000]]


def measure(pluto,rf,offset,buffers):
    pluto.rx_destroy_buffer();pluto.rx_lo=int(rf+offset);time.sleep(.025)
    pluto.rx();pluto.rx()
    actual_lo=pluto.rx_lo
    f=np.fft.fftshift(np.fft.fftfreq(FFT,1/RATE))+actual_lo-rf
    masks={str(bw):abs(f)<=bw/2 for bw in [200000,2000000]}
    window=np.hanning(FFT);normalization=FFT*sum(window**2)
    powers={k:[] for k in masks};clips=[];start=time.monotonic()
    for _ in range(buffers):
        x=np.asarray(pluto.rx());clips.append(float(np.mean((abs(x.real)>=2047)|(abs(x.imag)>=2047))))
        matrix=x.reshape(-1,FFT)
        ps=abs(np.fft.fftshift(np.fft.fft(matrix*window,axis=1),axes=1))**2/normalization
        for k,mask in masks.items():powers[k].extend(np.sum(ps[:,mask],axis=1).tolist())
    return {'actual_rx_lo':actual_lo,'lo_offset_hz':offset,'buffers':buffers,
        'sampled_seconds':buffers*BUFFER/RATE,'wall_seconds':time.monotonic()-start,
        'maximum_buffer_clip_fraction':max(clips),'mean_clip_fraction':float(np.mean(clips)),
        'band_power_dbfs':{k:(10*np.log10(np.maximum(v,1e-20)/2048**2)).tolist() for k,v in powers.items()}}


def rank(rows):
    groups={}
    for row in rows:
        key=row['rf_hz'];groups.setdefault(key,[]).append(row)
    ranked=[]
    for key,values in groups.items():
        result={k:values[0][k] for k in ['rf_hz','rtl_lo_mhz','nco_offset_hz','band']}
        result['sampled_seconds']=sum(r['sampled_seconds'] for r in values)
        result['maximum_buffer_clip_fraction']=max(r['maximum_buffer_clip_fraction'] for r in values)
        result['metrics']={}
        for bw in ['200000','2000000']:
            p=np.concatenate([r['band_power_dbfs'][bw] for r in values])
            result['metrics'][bw]={'p10_dbfs':float(np.quantile(p,.1)),'median_dbfs':float(np.median(p)),
                'p95_dbfs':float(np.quantile(p,.95)),'p99_dbfs':float(np.quantile(p,.99)),
                'maximum_dbfs':float(max(p))}
        ranked.append(result)
    for band in ['2.4 GHz','5 GHz']:
        subset=[r for r in ranked if r['band']==band]
        if not subset:continue
        for bw in ['200000','2000000']:
            floor=min(r['metrics'][bw]['p10_dbfs'] for r in subset)
            for result in subset:
                p=np.concatenate([r['band_power_dbfs'][bw] for r in groups[result['rf_hz']]])
                result['metrics'][bw]['fraction_above_band_floor_plus_6db']=float(np.mean(p>floor+6))
                result['metrics'][bw]['band_reference_floor_dbfs']=floor
    return sorted(ranked,key=lambda r:(r['maximum_buffer_clip_fraction']>0,r['metrics']['2000000']['p99_dbfs']))


def run(args):
    import adi
    report={'schema_version':1,'hardware_access':True,'rf_tx_requested':False,'status':'started',
        'started_utc':time.strftime('%Y-%m-%dT%H:%M:%SZ',time.gmtime()),'rx_rate':RATE,
        'rx_bandwidth':5000000,'rx_gain':args.gain,'fft_samples':FFT,
        'power_scope':'Uncalibrated receiver dBFS; cross-band antenna/gain/noise response may differ',
        'rows':[]}
    def save():
        args.report.write_text(json.dumps(report,indent=2)+'\n')
        if 'SUDO_UID' in os.environ:os.chown(args.report,int(os.environ['SUDO_UID']),int(os.environ['SUDO_GID']))
    def interrupt(*_):raise TimeoutError('Passive survey time bound')
    handlers={s:signal.signal(s,interrupt) for s in [signal.SIGALRM,signal.SIGTERM,signal.SIGINT]}
    signal.alarm(140);pluto=None;original=None
    with open('/run/lock/rtl8922-sdr.lock','a') as lock:
        fcntl.flock(lock,fcntl.LOCK_EX|fcntl.LOCK_NB)
        try:
            assert not Path('/sys/bus/pci/devices/0000:0d:00.0/driver').exists(),'RTL card is bound'
            demo=subprocess.run(['systemctl','is-active','rtl8922-live-demo.service'],capture_output=True,text=True).stdout.strip()
            assert demo=='inactive','Demo is active'
            pluto=adi.Pluto('ip:192.168.2.1');pluto._ctx.set_timeout(4000)
            pd=pluto._ctrl.find_channel('altvoltage1',True).attrs['powerdown'];assert pd.value=='1','Pluto TX active'
            keys=['sample_rate','rx_lo','tx_lo','rx_rf_bandwidth','tx_rf_bandwidth','gain_control_mode_chan0','rx_hardwaregain_chan0','tx_hardwaregain_chan0']
            original={k:getattr(pluto,k) for k in keys};report['saved_pluto']=original;save()
            pluto.sample_rate=RATE;pluto.rx_rf_bandwidth=5000000;pluto.gain_control_mode_chan0='manual';pluto.rx_hardwaregain_chan0=args.gain
            report['actual_rx']={k:getattr(pluto,k) for k in ['sample_rate','rx_rf_bandwidth','rx_hardwaregain_chan0']}
            pluto._rxadc.set_kernel_buffers_count(1);pluto.rx_buffer_size=BUFFER
            points=json.loads(args.points.read_text()) if args.points else candidates()
            rng=np.random.default_rng(20261013)
            for iteration in range(args.passes):
                for i in rng.permutation(len(points)):
                    point=points[i]
                    for offset in args.offsets:
                        row=dict(point,pass_index=iteration,measured_utc=time.strftime('%Y-%m-%dT%H:%M:%SZ',time.gmtime()))
                        row.update(measure(pluto,point['rf_hz'],offset,args.buffers));report['rows'].append(row);save()
                        p=np.array(row['band_power_dbfs']['2000000']);print('PASS',iteration,'RF',point['rf_hz']/1e6,'MHz','p99',round(float(np.quantile(p,.99)),1),'dBFS',flush=True)
            report['ranking']=rank(report['rows']);report['status']='passive_survey_complete'
        except BaseException as exc:report['exception']=f'{type(exc).__name__}: {exc}';raise
        finally:
            signal.alarm(0);signal.signal(signal.SIGTERM,signal.SIG_IGN);signal.signal(signal.SIGINT,signal.SIG_IGN);errors=[]
            if pluto is not None and original is not None:
                actions=[('RX buffer',pluto.rx_destroy_buffer),('TX off',lambda:setattr(pd,'value','1'))]
                actions.extend((k,lambda k=k:setattr(pluto,k,original[k])) for k in keys if k!='gain_control_mode_chan0')
                actions.append(('gain mode',lambda:setattr(pluto,'gain_control_mode_chan0',original['gain_control_mode_chan0'])))
                for name,fn in actions:
                    try:fn()
                    except Exception as exc:errors.append(f'{name}: {exc}')
                report['restored_pluto']={k:getattr(pluto,k) for k in keys};report['pluto_tx_powerdown']=pd.value
            report['cleanup_errors']=errors;report['rtl_card_bound_after']=Path('/sys/bus/pci/devices/0000:0d:00.0/driver').exists();save()
            for s,h in handlers.items():signal.signal(s,h)


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--run-passive-survey',action='store_true')
    p.add_argument('--report',type=Path);p.add_argument('--points',type=Path)
    p.add_argument('--buffers',type=int,default=32,choices=range(1,400));p.add_argument('--passes',type=int,default=3,choices=(1,2,3))
    p.add_argument('--offsets',type=int,nargs='+',default=[1250000],choices=(-1250000,1250000))
    p.add_argument('--gain',type=int,default=45,choices=range(0,72));a=p.parse_args()
    if not a.run_passive_survey:print('Offline plan: passive Pluto interference scan, RTL unbound and both transmitters off');return
    if not a.report or a.report.exists():raise ValueError('Fresh report path required')
    run(a)

if __name__=='__main__':main()
