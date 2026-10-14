#!/usr/bin/env python3
"""Offline source generation and phase-model fitting for bounded NCO mute tests."""
import argparse
import hashlib
import json
from pathlib import Path
import numpy as np

FS=32000000/3
SLOTS=1024


def pdm(values):
    error=0.;bits=[]
    for value in values:
        error+=value;bit=int(error>=1-1e-10);error-=bit;bits.append(bit)
    return np.array(bits,dtype=int)


def compensated_table(gate,index):
    """Catch up frozen phase on each on-slot; 128 units are three full turns."""
    result=[];state=0
    for n,bit in enumerate(gate):
        value=((index*(n+1)-state)%128) if bit else 0
        if bit and not value:raise ValueError('An on-slot would become mute')
        result.append(value);state+=value
    if state%128:raise ValueError('Repeating compensated table does not close phase')
    return np.array(result)


def sources():
    gaps=[1,2,3,4,5,7,11,17,23,31,47,105]
    lengths=[61,66,59,63,67,60,65,62,69,64,57,68]
    gate=[]
    for off,on in zip(gaps,lengths):gate.extend([0]*off+[1]*on)
    gate=np.r_[gate,np.ones(SLOTS-len(gate),dtype=int)]
    assert sum(gate)==768
    densities=np.repeat([0,.125,.25,.375,.625,.75,.875,1.],128)
    density_gate=pdm(densities)
    sine=.55+.35*np.cos(2*np.pi*2*np.arange(SLOTS)/SLOTS)
    sine_gate=pdm(sine);sine_gate[-1]=1
    return [('phase16',16*gate,'varied mute gaps and noninteger-cycle on bursts'),
            ('phase18',18*gate,'independent frequency repeat'),
            ('pdm-half',16*pdm(np.full(SLOTS,.5)),'alternating mute/tone at full write rate'),
            ('pdm-levels',16*density_gate,'eight block densities, fixed on-frequency'),
            ('pdm-low-naive',4*density_gate,'uncompensated 1-MHz IF'),
            ('pdm-low-compensated',compensated_table(density_gate,4),'phase-compensated 1-MHz IF'),
            ('pdm-low-am',compensated_table(sine_gate,4),'20.833-kHz smooth amplitude envelope at 1-MHz IF'),
            ('pdm-quarter-naive',density_gate,'uncompensated 250-kHz IF'),
            ('pdm-quarter-compensated',compensated_table(density_gate,1),'phase-compensated 250-kHz IF'),
            ('pdm-quarter-am',compensated_table(sine_gate,1),'20.833-kHz smooth amplitude envelope at 250-kHz IF')]


def generate(folder,manifest):
    rows=[]
    for name,table,description in sources():
        prefix=folder/name;data=table.astype('<u4').tobytes()
        assert not prefix.with_suffix('.bin').exists() and not prefix.with_suffix('.json').exists()
        prefix.with_suffix('.bin').write_bytes(data);prefix.with_suffix('.bin').chmod(0o600)
        carrier=250000 if 'quarter' in name else 1000000 if 'low-' in name else int(max(table))*250000
        meta={'schema_version':1,'hardware_access':False,'kind':name,
            'description':description,'sample_rate':FS,'frame_samples':SLOTS,'carrier_offset_hz':carrier,
            'table_sha256':hashlib.sha256(data).hexdigest(),'on_slots':int(sum(table!=0)),
            'phase_model_scope':'Continuous oscillator, paused accumulator, or restart on each mute exit; unknown fixed gain/phase/delay fitted equally'}
        if name in ['pdm-quarter-am','pdm-low-am']:meta['target_amplitude']=(.55+.35*np.cos(2*np.pi*2*np.arange(SLOTS)/SLOTS)).tolist()
        elif name in ['pdm-levels','pdm-low-naive','pdm-low-compensated','pdm-quarter-naive','pdm-quarter-compensated']:
            meta['target_amplitude']=np.repeat([0,.125,.25,.375,.625,.75,.875,1.],128).tolist()
        prefix.with_suffix('.json').write_text(json.dumps(meta,indent=2)+'\n')
        rows.append({'source':str(prefix.with_suffix('.json')),'payload':str(prefix.with_suffix('.bin')),
            'report':f'output/rtl8922-bb-nco-gate-{name}-a.json','trace':str(folder/(name+'-a.cf32'))})
    manifest.write_text(json.dumps(rows,indent=2)+'\n')


def phase_model(table,rate,mode,carrier):
    n=int(round(len(table)*rate/FS));p=np.arange(n)*FS/rate;k=np.floor(p).astype(int)%len(table)
    q=2*np.pi*250000/FS;freq=np.asarray(table,dtype=float);gate=freq!=0
    if mode=='continuous':phase=2*np.pi*carrier*p/FS
    elif mode=='paused':
        before=np.r_[0,np.cumsum(freq)[:-1]];phase=q*(before[k]+freq[k]*(p-np.floor(p)))
    elif mode=='reset':
        before=[];state=0.
        for value in freq:
            if value==0:state=0.
            before.append(state);state+=value
        phase=q*(np.array(before)[k]+freq[k]*(p-np.floor(p)))
    else:raise ValueError(mode)
    return gate[k]*np.exp(1j*(phase-2*np.pi*carrier*np.arange(n)/rate))


def lowpass(x,rate,cutoff):
    f=abs(np.fft.fftfreq(len(x),1/rate));width=cutoff*.15
    response=np.where(f<cutoff-width,1.,np.where(f>cutoff,0.,.5+.5*np.cos(np.pi*(f-(cutoff-width))/width)))
    return np.fft.ifft(np.fft.fft(x)*response)


def fit_models(x,table,rate,offset,carrier):
    mixed=x*np.exp(-2j*np.pi*offset*np.arange(len(x))/rate)
    y=lowpass(mixed,rate,3000000)
    period=int(round(len(table)*rate/FS));count=len(y)//period
    matrix=y[:count*period].reshape(count,period)
    energy=np.mean(abs(matrix)**2,axis=1);quiet=energy<=1.5*np.median(energy)
    # Exclude FFT edge transients; received energy selection never uses a model.
    quiet[:2]=False;quiet[-2:]=False
    if sum(quiet)<8:raise ValueError('Too few quiet repetitions')
    models={m:lowpass(phase_model(table,rate,m,carrier),rate,3000000) for m in ['continuous','paused','reset']}
    transforms={m:np.conj(np.fft.fft(v)) for m,v in models.items()}
    norms={m:float(np.sum(abs(v)**2)) for m,v in models.items()}
    t=np.arange(count*period).reshape(count,period)/rate
    def evaluate(cfo):
        fold=np.mean((matrix*np.exp(-2j*np.pi*cfo*t))[quiet],axis=0);spectrum=np.fft.fft(fold)
        scores={m:float(max(abs(np.fft.ifft(spectrum*h)))/np.sqrt(np.sum(abs(fold)**2)*norms[m])) for m,h in transforms.items()}
        return scores,fold
    best=max((max(evaluate(f)[0].values()),float(f)) for f in np.arange(-1000,1001,10))
    best=max((max(evaluate(f)[0].values()),float(f)) for f in np.arange(best[1]-10,best[1]+10.01,.5))
    scores,fold=evaluate(best[1]);winner=max(scores,key=scores.get)
    return {'phase_models':scores,'best_model':winner,'residual_cfo_hz':best[1],
        'received_repetitions':count,'quiet_repetitions':int(sum(quiet)),
        'model_selection_qualified':scores[winner]>.85 and scores[winner]-sorted(scores.values())[-2]>.1},fold,models


def amplitude_metrics(fold,model,target,rate):
    """Score the narrowband complex envelope after common time/gain calibration."""
    correlation=np.fft.ifft(np.fft.fft(fold)*np.conj(np.fft.fft(model)))
    shift=int(np.argmax(abs(correlation)));aligned=np.roll(fold,-shift)
    envelope=lowpass(aligned,rate,100000)
    position=np.floor(np.arange(len(fold))*len(target)/len(fold)).astype(int)
    expected=lowpass(np.asarray(target)[position],rate,100000).real
    gain=np.vdot(expected,envelope)/np.vdot(expected,expected)
    normalized=envelope/gain
    evm=float(np.sqrt(np.mean(abs(normalized-expected)**2)/np.mean(expected**2)))
    magnitude_error=float(np.sqrt(np.mean((abs(normalized)-expected)**2)/np.mean(expected**2)))
    block=[]
    if len(np.unique(target))<=8:
        full=np.mean(envelope[7*len(fold)//8+len(fold)//32:len(fold)-len(fold)//32])
        for i in range(8):
            start=i*len(fold)//8+len(fold)//32;end=(i+1)*len(fold)//8-len(fold)//32
            value=np.mean(envelope[start:end])/full
            block.append({'density':float(target[i*len(target)//8]),'relative_amplitude':float(abs(value)),
                          'relative_phase_degrees':float(np.angle(value)*180/np.pi)})
    return {'filter_cutoff_hz':100000,'repeat_combined':True,'alignment_samples':shift,
            'complex_envelope_evm':evm,'magnitude_rms_error':magnitude_error,'levels':block},normalized,expected


def uncombined_amplitude(x,off,rate,offset,target,result):
    """Keep data periods separate; calibrate only one gain on eight periods."""
    offset+=result['residual_cfo_hz'];period=int(round(SLOTS*rate/FS));count=len(x)//period
    mixed=x*np.exp(-2j*np.pi*offset*np.arange(len(x))/rate)
    broad=lowpass(mixed,rate,3000000)[:count*period].reshape(count,period)
    energy=np.mean(abs(broad)**2,axis=1);quiet=energy<=1.5*np.median(energy);quiet[:2]=False;quiet[-2:]=False
    narrow=lowpass(mixed,rate,100000)[:count*period].reshape(count,period)
    shift=result['amplitude']['alignment_samples'];narrow=np.roll(narrow,-shift,axis=1)
    pos=np.floor(np.arange(period)*SLOTS/period).astype(int)
    expected=lowpass(np.asarray(target)[pos],rate,100000).real
    eligible=np.flatnonzero(quiet);cal=eligible[:8];test=eligible[8:]
    if not len(test):raise ValueError('Too few periods for separate AM scoring')
    gain=np.vdot(expected,np.mean(narrow[cal],axis=0))/np.vdot(expected,expected)
    normalized=narrow[test]/gain
    errors=np.sqrt(np.mean(abs(normalized-expected)**2,axis=1)/np.mean(expected**2))
    mag=np.sqrt(np.mean((abs(normalized)-expected)**2,axis=1)/np.mean(expected**2))
    negative=lowpass(off*np.exp(-2j*np.pi*offset*np.arange(len(off))/rate),rate,100000)
    negative=np.roll(negative[:count*period].reshape(count,period),-shift,axis=1)/gain
    return {'filter_cutoff_hz':100000,'data_repetitions_combined':False,
        'calibration_repetitions':cal.tolist(),'scored_repetitions':test.tolist(),
        'gain_calibration':'One constant complex gain from first eight admitted repetitions; CFO/timing from full-capture phase model fit',
        'median_complex_evm':float(np.median(errors)),'p90_complex_evm':float(np.quantile(errors,.9)),
        'median_magnitude_rms_error':float(np.median(mag)),'p90_magnitude_rms_error':float(np.quantile(mag,.9)),
        'off_median_complex_evm_same_gain':float(np.median(np.sqrt(np.mean(abs(negative-expected)**2,axis=1)/np.mean(expected**2)))),
        'scope':'Known periodic AM waveform, not packet decoding or an independent blind synchronization test'}


def analyze(rf_path,source_path,output):
    rf=json.loads(rf_path.read_text());src=json.loads(source_path.read_text())
    if rf['status']!='finite_nco_gate_captured':raise ValueError('Rejected RF capture')
    trace=Path(rf['private_trace']);off_path=Path(rf['private_off_trace'])
    for p,key in [(trace,'trace_sha256'),(off_path,'off_trace_sha256')]:
        if hashlib.sha256(p.read_bytes()).hexdigest()!=rf[key]:raise ValueError('Capture hash changed')
    table_path=source_path.with_suffix('.bin')
    if hashlib.sha256(table_path.read_bytes()).hexdigest()!=src['table_sha256']:raise ValueError('Table changed')
    table=np.fromfile(table_path,dtype='<u4');rate=rf['actual_rx']['sample_rate']
    offset=src['carrier_offset_hz']+rf['center_mhz']*1e6-rf['actual_rx']['rx_lo']+rf['measured_carrier_offset_hz']
    x=np.fromfile(trace,dtype='<c8');off=np.fromfile(off_path,dtype='<c8')
    result,fold,models=fit_models(x,table,rate,offset,src['carrier_offset_hz'])
    negative,_,_=fit_models(off,table,rate,offset,src['carrier_offset_hz'])
    result.update({'schema_version':1,'hardware_access':False,'source':str(source_path),'rf_report':str(rf_path),
        'off_phase_models':negative['phase_models'],'off_qualified':negative['model_selection_qualified'],
        'counter_ticks_per_nco_write':rf['playback']['counter_ticks_per_nco_write'],
        'rf_rate_assumed_for_models':FS,'qualification_scope':'Identifying one unique phase hypothesis; compensated amplitude is evaluated separately',
        'scope':'Periodic finite models, not proof of every peripheral latch or zero jitter'})
    result['qualified']=result['model_selection_qualified'] and not negative['model_selection_qualified']
    if src.get('target_amplitude') is not None:
        metrics,_,_=amplitude_metrics(fold,models['paused'],src['target_amplitude'],rate)
        metrics['feasibility_gates']={'source_model_correlation_above_90_percent':result['phase_models']['paused']>.9,
            'off_model_correlation_below_50_percent':negative['phase_models']['paused']<.5,
            'amplitude_rms_error_below_10_percent':metrics['magnitude_rms_error']<.1}
        metrics['narrowband_amplitude_feasibility']=all(metrics['feasibility_gates'].values())
        metrics['scope']='Known repeated envelope after receiver filtering/averaging; no emission-mask, independent phase, or streaming qualification'
        result['amplitude']=metrics
        if len(np.unique(src['target_amplitude']))>8:
            result['uncombined_amplitude']=uncombined_amplitude(x,off,rate,offset,src['target_amplitude'],result)
    private_fold=trace.with_name(trace.stem+'-fold.npz')
    np.savez(private_fold,fold=fold,**models);result['private_fold']=str(private_fold)
    output.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result))


def main():
    p=argparse.ArgumentParser(description=__doc__);sub=p.add_subparsers(dest='command',required=True)
    g=sub.add_parser('generate');g.add_argument('--folder',type=Path,required=True);g.add_argument('--manifest',type=Path,required=True)
    a=sub.add_parser('analyze')
    for name in ['rf-report','source-report','output']:a.add_argument('--'+name,type=Path,required=True)
    args=p.parse_args()
    if args.command=='generate':
        if args.manifest.exists():raise ValueError('Manifest exists')
        args.folder.mkdir(parents=True,exist_ok=True);generate(args.folder,args.manifest)
    else:
        if args.output.exists():raise ValueError('Output exists')
        analyze(args.rf_report,args.source_report,args.output)

if __name__=='__main__':main()
