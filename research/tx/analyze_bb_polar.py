#!/usr/bin/env python3
"""Offline RF comb-rate fit for a finite known BBMCU paired polar pattern.

Derives update rate from independent Pluto frequency measurements. A comb alone
is not proof of arbitrary payload fidelity, per-update continuity or 20 MS/s.
"""
import argparse
import hashlib
import json
from pathlib import Path
import numpy as np


def analyze(samples, report, meta, fft_size=32768):
    rate=float(report['actual_rx']['sample_rate'])
    n=fft_size
    blocks=samples[:len(samples)//n*n].reshape(-1,n)
    power=np.median(abs(np.fft.fftshift(np.fft.fft(blocks*np.hanning(n),axis=1),axes=1))**2,axis=0)
    freq=np.fft.fftshift(np.fft.fftfreq(n,1/rate))
    # Timing hypothesis comes from host bracket and known period; RF independently
    # fits line positions and slope over many harmonics around that hypothesis.
    command=report['commands'][-1]
    nominal=command['host_bracket_lower_bound_samples_per_second']/meta['period_samples']
    mean_index=np.mean([meta['nco_indices'][(int(meta['frequency_pattern'],16)>>i)&1] for i in range(32)])
    static_offsets=[report['controls'][i]['rf']['targets'][j]['hz']-(-2000000 if j==0 else 2000000)
                    for i,j in ((1,0),(2,1),(4,0))]
    cfo=float(np.median(static_offsets))
    carrier=mean_index*250000-4000000+cfo
    spacing=rate/n;lines=[]
    for order in range(-60,61):
        expected=carrier+order*nominal
        if abs(expected)>min(rate*.45,12000000):continue
        choices=np.flatnonzero(abs(freq-expected)<12000)
        k=int(choices[np.argmax(power[choices])])
        if not 1<=k<len(power)-1:continue
        floor=np.median(power[(abs(freq-freq[k])>6000)&(abs(freq-freq[k])<40000)])
        snr=10*np.log10(max(power[k],1e-20)/max(floor,1e-20))
        if snr<18:continue
        y=np.log(np.maximum(power[k-1:k+2],1e-20))
        offset=.5*(y[0]-y[2])/(y[0]-2*y[1]+y[2])
        lines.append({'order':order,'hz':float(freq[k]+np.clip(offset,-.5,.5)*spacing),
                      'above_local_floor_db':float(snr),'power':float(power[k])})
    if len(lines)<8:raise ValueError('Too few qualified comb lines')
    if max(r['order'] for r in lines)-min(r['order'] for r in lines)<16:
        raise ValueError('Qualified comb lines cover too little frequency span')
    order=np.array([r['order'] for r in lines]);measured=np.array([r['hz'] for r in lines])
    fit=np.polyfit(order,measured,1);residual=measured-np.polyval(fit,order)
    if max(abs(residual))>max(100.,spacing*.5):raise ValueError('Comb positions fail common-spacing fit')
    for row,error in zip(lines,residual):row['fit_error_hz']=float(error)
    return {'schema_version':1,'hardware_access':False,'status':'finite_paired_pattern_rate_measured',
       'fft_size':n,'period_samples':meta['period_samples'],'comb_spacing_hz':float(fit[0]),
       'rf_measured_paired_update_rate_hz':float(fit[0]*meta['period_samples']),
       'fitted_carrier_hz':float(fit[1]),'static_control_carrier_offset_hz':cfo,
       'qualified_lines':lines,'fit_max_residual_hz':float(max(abs(residual))),
       'capture_seconds':len(samples)/rate,'clip_fraction':report['clip_fraction'],
       'amplitude_control_db':report['amplitude_control_db'],
       'reaches_20msps':bool(fit[0]*meta['period_samples']>=20000000),
       'scope':'Known finite periodic pattern rate only. Does not establish arbitrary polar sample fidelity, '
               'gap-free sustained operation, host sample streaming or whole-band qualification.'}


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--rf-report',type=Path,required=True)
    p.add_argument('--patch-report',type=Path,required=True);p.add_argument('--output',type=Path,required=True)
    p.add_argument('--fft-size',type=int,default=32768,choices=(32768,65536,131072,262144,524288))
    args=p.parse_args()
    if args.output.exists():raise ValueError('Output exists')
    r=json.loads(args.rf_report.read_text());m=json.loads(args.patch_report.read_text())
    trace=Path(r['private_trace']);digest=hashlib.sha256(trace.read_bytes()).hexdigest()
    if digest!=r['trace_sha256']:raise ValueError('Trace changed')
    result=analyze(np.fromfile(trace,dtype='<c8'),r,m,args.fft_size)
    result['inputs']={str(x):hashlib.sha256(x.read_bytes()).hexdigest() for x in (args.rf_report,args.patch_report)}
    result['trace_sha256']=digest
    args.output.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({k:result[k] for k in ('status','rf_measured_paired_update_rate_hz','fit_max_residual_hz','reaches_20msps')}))
if __name__=='__main__':main()
