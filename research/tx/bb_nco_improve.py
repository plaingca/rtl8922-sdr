#!/usr/bin/env python3
"""Offline joint-I/Q NCO synthesis and analysis; never accesses hardware."""
import argparse
import hashlib
import json
from pathlib import Path
import numpy as np
from bb_nco_gate import FS, SLOTS, pdm, compensated_table, phase_model, lowpass, fit_models

ROOT=Path('vendor/local-rf-captures/bb-nco-improve-20261013')
Q=2*np.pi*250000/FS

def write_source(name,table,target,**meta):
    table=np.asarray(table,dtype=int)
    if len(table)!=SLOTS or np.sum(table)%128:raise ValueError('Table must close RF phase at 1024 slots')
    path=ROOT/name;data=(table&4095).astype('<u4').tobytes()
    if path.with_suffix('.bin').exists() or path.with_suffix('.json').exists():raise ValueError('Source exists')
    path.with_suffix('.bin').write_bytes(data);path.with_suffix('.bin').chmod(0o600)
    row={'schema_version':1,'hardware_access':False,'kind':name,'sample_rate':FS,
         'frame_samples':SLOTS,'carrier_offset_hz':250000,'table_sha256':hashlib.sha256(data).hexdigest(),
         'target_real':np.asarray(target).real.tolist(),'target_imag':np.asarray(target).imag.tolist(),
         'on_slots':int(sum(table!=0)),**meta}
    path.with_suffix('.json').write_text(json.dumps(row,indent=2)+'\n')
    return row

def diversion(target):
    # Four diverted slots add exactly 3 turns relative to the 250-kHz carrier.
    # All slots emit RF. Only a wanted-channel filter makes a detour look off.
    gate=pdm(np.asarray(target).reshape(-1,4).mean(axis=1))
    return np.repeat(np.where(gate,1,33),4)

def initial_sources():
    ROOT.mkdir(parents=True,exist_ok=True)
    amp=.55+.35*np.cos(2*np.pi*2*np.arange(SLOTS)/SLOTS)
    gate=pdm(amp);gate[-1]=1
    write_source('baseline',compensated_table(gate,1),amp,method='separate density and phase catch-up')
    write_source('diversion',diversion(amp),amp,method='four-slot +8-MHz coherent detours')
    # 72-us test hold and 24-us reference; 6x the historical 12-us plateaus.
    for density in [.125,.25,.375,.5,.625,.75,.875,1.]:
        target=np.r_[np.full(768,density),np.ones(256)]
        gate=np.r_[pdm(target[:768]),np.ones(256,dtype=int)]
        write_source('hold-'+str(int(density*1000)),compensated_table(gate,1),target,
                     method='long settled density and full-amplitude reference',density=density,
                     test_hold_us=72,reference_hold_us=24)

def coefficients(table,harmonics):
    """Exact continuous-time slot integrals, including phase throughout pulses."""
    table=np.asarray(table);n=len(table);k=np.asarray(harmonics)
    phase=Q*(np.r_[0,np.cumsum(table)[:-1]]-np.arange(n))
    delta=Q*(table[:,None]-1)-2*np.pi*k/n
    integrals=np.sinc(delta/(2*np.pi))*np.exp(.5j*delta)*(table[:,None]!=0)
    return np.sum(np.exp(1j*phase[:,None]-2j*np.pi*np.arange(n)[:,None]*k/n)*integrals,axis=0)/n

def optimize(initial,target,steps=30000,seed=93,command_min=-16,command_max=16,cutoff=100000):
    """Discrete coordinate search of filtered complex error, with exact pulses.

    Paired edits keep total phase fixed; the changed phase inside the interval
    is included. Minimizing weighted low-frequency Fourier error moves the
    quantization error away from the wanted band. No RF-derived target fitting.
    """
    table=np.asarray(initial,dtype=int).copy();n=len(table)
    bound=max(12,int(np.ceil(cutoff*n/FS))+2);k=np.arange(-bound,bound+1)
    freq=abs(k*FS/n);width=.15*cutoff
    h=np.where(freq<cutoff-width,1,np.where(freq>cutoff,0,.5+.5*np.cos(np.pi*(freq-cutoff+width)/width)))
    desired=np.fft.fft(target)[k%n]/n
    values=np.arange(command_min,command_max+1);delta=Q*(values[:,None]-1)-2*np.pi*k/n
    pulse=np.sinc(delta/(2*np.pi))*np.exp(.5j*delta)*(values[:,None]!=0)
    phase=Q*(np.r_[0,np.cumsum(table)[:-1]]-np.arange(n))
    basis=np.exp(1j*phase[:,None]-2j*np.pi*np.arange(n)[:,None]*k/n)
    parts=basis*pulse[table-command_min];c=parts.sum(axis=0)/n
    norm=np.sum(abs(desired*h)**2)
    def loss(z):return float(np.sum(abs((z-desired)*h)**2)/norm)
    first=loss(c);best=first;accepted=0;rng=np.random.default_rng(seed)
    for step in range(steps):
        i=int(rng.integers(n-1));j=min(n-1,i+int(rng.integers(1,33)))
        # Includes gate changes and frequency edits in one constrained search.
        d=int(rng.integers(-5,6))
        if d==0 or not(command_min<=table[i]+d<=command_max and command_min<=table[j]-d<=command_max):continue
        new=parts[i:j+1].copy()
        new[0]=basis[i]*pulse[table[i]+d-command_min]
        rotate=np.exp(1j*Q*d)
        new[1:-1]*=rotate
        new[-1]=basis[j]*rotate*pulse[table[j]-d-command_min]
        trial=c+(new-parts[i:j+1]).sum(axis=0)/n;score=loss(trial)
        if score<best:
            table[i]+=d;table[j]-=d;parts[i:j+1]=new;basis[i+1:j+1]*=rotate
            c=trial;best=score;accepted+=1
    if not np.allclose(c,coefficients(table,k),atol=1e-10):raise AssertionError('Incremental objective drift')
    return table,{'initial_filtered_evm':float(np.sqrt(first)),'optimized_filtered_evm':float(np.sqrt(best)),
                  'accepted_edits':accepted,'proposals':steps,'seed':seed,'filter_cutoff_hz':cutoff,
                  'objective':'Complex Fourier error with analytic within-slot integrals; no per-sample gain fitting',
                  'command_range':[command_min,command_max]}

def calibrated_source(paths,name='calibrated'):
    reports=[json.loads(p.read_text()) for p in paths]
    rows=sorted([r['calibration'] for r in reports],key=lambda r:r['density'])
    density=np.array([r['density'] for r in rows]);gain=np.array([r['relative_amplitude'] for r in rows])
    phase=np.unwrap(np.deg2rad([r['relative_phase_degrees'] for r in rows]))
    if np.any(np.diff(gain)<=0):raise ValueError('Calibration gain must be monotonic')
    amp=.55+.35*np.cos(2*np.pi*2*np.arange(SLOTS)/SLOTS)
    drive=np.interp(amp,gain,density);correction=-np.interp(drive,density,phase)
    gate=pdm(drive);gate[-1]=1;state=0;table=[]
    for n,bit in enumerate(gate):
        end=int(round(n+1+(correction[(n+1)%SLOTS]-correction[0])/Q))
        value=((end-state+64)%128-64) if bit else 0
        if bit and value==0:raise ValueError('On-slot became mute')
        table.append(value);state+=value
    return write_source(name,table,amp,method='inverse settled complex density LUT',calibration=rows,
        calibration_reports=[str(p) for p in paths],drive_density=drive.tolist(),phase_precorrection_radians=correction.tolist())

def refine_cfo(x,model,rate,offset,initial):
    """Fit phase slope across periods; normalized fold correlation alone is
    nearly insensitive to CFO because fold attenuation cancels in its norm.
    """
    period=len(model);count=len(x)//period
    t=np.arange(count*period)/rate
    mixed=lowpass(x[:count*period]*np.exp(-2j*np.pi*(offset+initial)*t),rate,3000000)
    matrix=mixed.reshape(count,period)
    energy=np.mean(abs(matrix)**2,axis=1);quiet=energy<=1.5*np.median(energy)
    quiet[:2]=False;quiet[-2:]=False
    fold=matrix[quiet].mean(axis=0)
    shift=int(np.argmax(abs(np.fft.ifft(np.fft.fft(fold)*np.conj(np.fft.fft(model))))))
    ref=np.roll(model,shift);projection=matrix@np.conj(ref)
    phase=np.unwrap(np.angle(projection));time=np.arange(count)*period/rate
    slope=np.polyfit(time[quiet],phase[quiet],1)[0]
    corrected=initial+slope/(2*np.pi)
    fold=(matrix*np.exp(-2j*np.pi*(corrected-initial)*t.reshape(count,period)))[quiet].mean(axis=0)
    return corrected,fold,{'initial_normalized_fold_cfo_hz':initial,
        'phase_slope_correction_hz':float(slope/(2*np.pi)),
        'method':'Linear phase slope of per-period known-waveform projections; one global correction'}

def analyze(rf_path,out):
    rf=json.loads(rf_path.read_text());srcpath=Path(rf['source_report']);src=json.loads(srcpath.read_text())
    if rf.get('status')!='finite_nco_gate_captured':raise ValueError('RF controls rejected this capture')
    raw=srcpath.with_suffix('.bin').read_bytes()
    if hashlib.sha256(raw).hexdigest()!=src['table_sha256']:raise ValueError('Source digest mismatch')
    word=np.frombuffer(raw,dtype='<u4').astype(int);table=np.where(word>=2048,word-4096,word)
    for key,hkey in [('private_trace','trace_sha256'),('private_off_trace','off_trace_sha256')]:
        if hashlib.sha256(Path(rf[key]).read_bytes()).hexdigest()!=rf[hkey]:raise ValueError('Trace digest mismatch')
    x=np.fromfile(rf['private_trace'],dtype='<c8');off=np.fromfile(rf['private_off_trace'],dtype='<c8')
    rate=rf['actual_rx']['sample_rate'];carrier=src['carrier_offset_hz']
    offset=carrier+rf['center_mhz']*1e6-rf['actual_rx']['rx_lo']+rf['measured_carrier_offset_hz']
    fit,fold,models=fit_models(x,table,rate,offset,carrier)
    model=models['paused']
    cfo,fold,cfo_details=refine_cfo(x,model,rate,offset,fit['residual_cfo_hz'])
    fit['residual_cfo_hz']=float(cfo);fit['cfo_refinement']=cfo_details
    for key,m in models.items():
        fit['phase_models'][key]=float(max(abs(np.fft.ifft(np.fft.fft(fold)*np.conj(np.fft.fft(m)))))/np.sqrt(np.sum(abs(fold)**2)*np.sum(abs(m)**2)))
    shift=int(np.argmax(abs(np.fft.ifft(np.fft.fft(fold)*np.conj(np.fft.fft(model))))))
    aligned=np.roll(fold,-shift);period=len(fold);count=len(x)//period
    # One common gain from calibration periods; no fit to individual test frames.
    mixed=x*np.exp(-2j*np.pi*(offset+fit['residual_cfo_hz'])*np.arange(len(x))/rate)
    matrix=lowpass(mixed,rate,100000)[:count*period].reshape(count,period)
    matrix=np.roll(matrix,-shift,axis=1)
    broad=lowpass(mixed,rate,3000000)[:count*period].reshape(count,period)
    energy=np.mean(abs(broad)**2,axis=1);quiet=energy<=1.5*np.median(energy);quiet[:2]=False;quiet[-2:]=False
    eligible=np.flatnonzero(quiet);cal=eligible[:8];test=eligible[8:]
    if len(test)<8:raise ValueError('Too few separate scored repetitions')
    target=np.array(src['target_real'])+1j*np.array(src['target_imag'])
    pos=np.floor(np.arange(period)*SLOTS/period).astype(int)
    expected=lowpass(target[pos],rate,100000)
    gain=np.vdot(expected,np.mean(matrix[cal],axis=0))/np.vdot(expected,expected)
    normalized=matrix[test]/gain
    evm=np.sqrt(np.mean(abs(normalized-expected)**2,axis=1)/np.mean(abs(expected)**2))
    mag=np.sqrt(np.mean((abs(normalized)-abs(expected))**2,axis=1)/np.mean(abs(expected)**2))
    combined=np.mean(normalized,axis=0)
    neg=lowpass(off*np.exp(-2j*np.pi*(offset+fit['residual_cfo_hz'])*np.arange(len(off))/rate),rate,100000)
    neg=np.roll(neg[:count*period].reshape(count,period),-shift,axis=1)/gain
    row={'schema_version':1,'hardware_access':False,'rf_report':str(rf_path),'source':str(srcpath),
         'fit':fit,'alignment_samples':shift,'counter_ticks_per_nco_write':rf['playback']['counter_ticks_per_nco_write'],
         'filter_cutoff_hz':100000,'calibration_repetitions':cal.tolist(),'scored_repetitions':test.tolist(),
         'median_single_period_evm':float(np.median(evm)),'p90_single_period_evm':float(np.quantile(evm,.9)),
         'median_single_period_magnitude_error':float(np.median(mag)),
         'combined_evm':float(np.sqrt(np.mean(abs(combined-expected)**2)/np.mean(abs(expected)**2))),
         'combined_magnitude_error':float(np.sqrt(np.mean((abs(combined)-abs(expected))**2)/np.mean(abs(expected)**2))),
         'off_median_evm_same_gain':float(np.median(np.sqrt(np.mean(abs(neg-expected)**2,axis=1)/np.mean(abs(expected)**2)))),
         'scope':'Known finite repeated waveform; gain from first eight admitted periods; global timing/CFO fit, not blind synchronization or packet decoding'}
    if 'density' in src:
        # Wide guards keep the 100-kHz filter away from both amplitude steps.
        envelope=lowpass(aligned,rate,100000)
        a=envelope[int(24e-6*rate):int(48e-6*rate)]
        b=envelope[int(80e-6*rate):int(88e-6*rate)]
        value=np.mean(a)/np.mean(b)
        row['calibration']={'density':src['density'],'relative_amplitude':float(abs(value)),
            'relative_phase_degrees':float(np.angle(value)*180/np.pi),
            'test_score_window_us':[24,48],'reference_score_window_us':[80,88],
            'test_hold_us':72,'reference_hold_us':24,
            'first_vs_second_half_relative_difference':float(abs(np.mean(a[:len(a)//2])-np.mean(a[len(a)//2:]))/abs(np.mean(b)))}
    private=Path(rf['private_trace']).with_name(Path(rf['private_trace']).stem+'-metrics.npz')
    np.savez(private,observed=combined,target=expected,single=normalized,evm=evm,aligned=aligned)
    row['private_metrics']=str(private);out.write_text(json.dumps(row,indent=2)+'\n')
    print(json.dumps({k:row.get(k) for k in ['rf_report','median_single_period_evm','combined_evm','calibration']}))

def main():
    p=argparse.ArgumentParser(description=__doc__);sub=p.add_subparsers(dest='cmd',required=True)
    sub.add_parser('generate')
    opt=sub.add_parser('optimize');opt.add_argument('--name',default='joint');opt.add_argument('--steps',type=int,default=30000)
    opt.add_argument('--nonnegative',action='store_true',help='Constrain commands to 0..6, matching the calibrated IF range')
    cal=sub.add_parser('calibrate');cal.add_argument('--reports',type=Path,nargs='+',required=True);cal.add_argument('--name',default='calibrated')
    a=sub.add_parser('analyze');a.add_argument('--rf-report',type=Path,required=True);a.add_argument('--output',type=Path,required=True)
    args=p.parse_args()
    if args.cmd=='generate':initial_sources()
    elif args.cmd=='calibrate':calibrated_source(args.reports,args.name)
    elif args.cmd=='analyze':
        if args.output.exists():raise ValueError('Output exists')
        analyze(args.rf_report,args.output)
    else:
        src=json.loads((ROOT/'baseline.json').read_text());target=np.array(src['target_real'])+1j*np.array(src['target_imag'])
        table=np.fromfile(ROOT/'baseline.bin',dtype='<u4').astype(int)
        result,meta=optimize(table,target,args.steps,command_min=0 if args.nonnegative else -16,command_max=6 if args.nonnegative else 16)
        write_source(args.name,result,target,method='joint filtered I/Q optimization',optimizer=meta)
        print(json.dumps(meta))

if __name__=='__main__':main()
