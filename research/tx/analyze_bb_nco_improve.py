#!/usr/bin/env python3
"""Summarize saved quiet-channel NCO comparisons and plot offline evidence."""
import argparse
import json
from pathlib import Path
import numpy as np
from bb_nco_improve import ROOT

METHODS=[('baseline','Baseline'),('joint','Joint, unrestricted'),('joint-positive','Joint, index 0..6'),('calibrated','Settled calibration'),('diversion-narrow','Diversion')]

def diversion_spectrum():
    path=Path('output/rtl8922-bb-nco-improve-diversion-wide-b.json')
    rf=json.loads(path.read_text())
    analysis=json.loads(Path('output/rtl8922-bb-nco-improve-diversion-wide-b-analysis-v2.json').read_text())
    rate=rf['actual_rx']['sample_rate']
    offset=250000+rf['center_mhz']*1e6-rf['actual_rx']['rx_lo']+rf['measured_carrier_offset_hz']+analysis['fit']['residual_cfo_hz']
    n=8192;freq=np.fft.fftshift(np.fft.fftfreq(n,1/rate));powers=[]
    for field in ['private_trace','private_off_trace']:
        raw=np.fromfile(rf[field],dtype='<c8');blocks=raw[:len(raw)//n*n].reshape(-1,n)
        powers.append(np.mean(abs(np.fft.fftshift(np.fft.fft(blocks*np.hanning(n),axis=1),axes=1))**2,axis=0))
    rows=[]
    for name,f0 in [('wanted',offset),('diverted',offset+8000000)]:
        mask=abs(freq-f0)<100000;on=float(sum(powers[0][mask]));off=float(sum(powers[1][mask]))
        rows.append({'band':name,'receive_offset_hz':f0,'on_to_off_band_power_db':float(10*np.log10(on/off)),
                     'uncalibrated_on_band_power':on})
    return {'rf_report':str(path),'moving_tone_hz':rf['tone_movement_hz'],
        'control_above_both_off_db':rf['on_above_both_off_db'],'clip_fraction':rf['clip_fraction'],
        'model_correlation':analysis['fit']['phase_models']['paused'],'bands':rows,
        'diverted_to_wanted_200khz_power_db':float(10*np.log10(rows[1]['uncalibrated_on_band_power']/rows[0]['uncalibrated_on_band_power'])),
        'scope':'Receiver band powers, no calibrated emission mask; unrelated wideband activity can contaminate averages'}

def summarize(output,plot):
    result={'schema_version':1,'hardware_access':False,'requested_rf_center_hz':2422250000,
        'sample_write_rate_hz':32000000/3,'wanted_filter_cutoff_hz':100000,
        'target':'0.55 + 0.35 cos(2 pi 20.833 kHz t), constant wanted-carrier phase',
        'comparison_geometry':{'rtl_lo_mhz':2422,'wanted_nco_offset_hz':250000,'pluto_sample_rate':40000000,
                               'pluto_lo_offset_hz':1000000,'pluto_analog_bandwidth_hz':5000000,
                               'pluto_gain':50,'equal_iq_amplitude_code':0},'methods':{}}
    data={}
    for key,label in METHODS:
        rows=[]
        for suffix in ['b','c']:
            path=Path(f'output/rtl8922-bb-nco-improve-{key}-{suffix}-analysis-v2.json')
            row=json.loads(path.read_text());rf=json.loads(Path(row['rf_report']).read_text())
            assert rf['clip_fraction']==0 and not rf['cleanup_errors'] and rf['table_unchanged_after_playback']
            assert rf['center_mhz']==2422 and rf['rx_gain']==50 and rf['fixed_amplitude_code']==0
            assert rf['actual_rx']['rx_rf_bandwidth']==5000000 and rf['actual_rx']['sample_rate']==40000000
            rows.append({'analysis_report':str(path),'rf_report':row['rf_report'],
                         **{k:row[k] for k in ['median_single_period_evm','p90_single_period_evm','combined_evm',
                            'combined_magnitude_error','median_single_period_magnitude_error','off_median_evm_same_gain']},
                         'scored_repetitions':len(row['scored_repetitions']),
                         'source_model_correlation':row['fit']['phase_models']['paused']})
            data[(key,suffix)]=row
        result['methods'][key]={'label':label,'runs':rows}
    result['long_hold_calibration']=[]
    for n in [125,250,375,500,625,750,875,1000]:
        path=Path(f'output/rtl8922-bb-nco-improve-hold-{n}-b-analysis-v2.json')
        row=json.loads(path.read_text());result['long_hold_calibration'].append({'analysis_report':str(path),**row['calibration']})
    result['optimizer_models']={name:json.loads((ROOT/(name+'.json')).read_text())['optimizer'] for name in ['joint','joint-positive']}
    result['diversion_spectrum']=diversion_spectrum()
    result['cleanup']=json.loads(Path('output/rtl8922-bb-nco-improve-final-state.json').read_text())
    rf_paths=[p for p in sorted(Path('output').glob('rtl8922-bb-nco-improve-*.json')) if json.loads(p.read_text()).get('rf_tx_requested')]
    result['rf_attempts']=[{'report':str(p),'status':json.loads(p.read_text()).get('status'),
                            'exception':json.loads(p.read_text()).get('exception')} for p in rf_paths]
    result['rf_attempt_count']=len(rf_paths);result['rf_control_passes']=sum(r['status']=='finite_nco_gate_captured' for r in result['rf_attempts'])
    result['analysis_correction']='v2 adds a single global CFO from known-waveform projection phase slope; v1 normalized-fold-only fits retained and superseded'
    result['scope']='Finite 96-us known AM periods, 100-kHz receiver LPF, energy-admitted repetitions. Eight gain calibration periods; data periods scored separately. Global known-waveform timing/CFO fit, no blind synchronization, payload decoding, 2-MHz OFDM or streaming qualification.'
    result['conclusions']={'unrestricted_joint_optimizer_improved':False,
        'positive_constrained_joint_improved_in_both_repeats':True,'settled_calibration_improved_in_both_repeats':True,
        'diversion_improved_in_both_repeats':True,'diversion_requires_transmit_filtering':True,
        '20msps_achieved':False,'single_frame_ofdm_decoded':False}
    output.write_text(json.dumps(result,indent=2)+'\n')
    import matplotlib
    matplotlib.use('Agg')
    import matplotlib.pyplot as plt
    fig,axes=plt.subplots(3,2,figsize=(14,12),constrained_layout=True)
    labels=[v for _,v in METHODS];x=np.arange(len(METHODS))
    for ax,metric,title in [(axes[0,0],'median_single_period_evm','Single-period median EVM: separate scored periods'),
                            (axes[0,1],'combined_evm','EVM after combining admitted data periods')]:
        for j,suffix in enumerate(['b','c']):
            y=[100*data[(k,suffix)][metric] for k,_ in METHODS]
            ax.plot(x+(.07 if j else -.07),y,'o',label='Capture '+suffix.upper(),markersize=7)
        ax.set_xticks(x,labels,rotation=18,ha='right');ax.set_ylabel('Complex EVM (%)');ax.set_title(title);ax.grid(alpha=.25);ax.legend()
    cal=result['long_hold_calibration'];d=np.array([r['density'] for r in cal])
    axes[1,0].plot(d,d,'--',color='gray',label='Ideal');axes[1,0].plot(d,[r['relative_amplitude'] for r in cal],'o-',label='Measured')
    axes[1,0].set(xlabel='Mute density',ylabel='Amplitude relative to full output',title='72-us holds: settled amplitude');axes[1,0].legend();axes[1,0].grid(alpha=.25)
    axes[1,1].plot(d,[r['relative_phase_degrees'] for r in cal],'o-');axes[1,1].axhline(0,color='gray',ls='--')
    axes[1,1].set(xlabel='Mute density',ylabel='Phase relative to full output (degrees)',title='72-us holds: settled phase');axes[1,1].grid(alpha=.25)
    ax=axes[2,0]
    for key,label in METHODS:
        if key=='joint':continue
        metrics=np.load(data[(key,'b')]['private_metrics']);t=np.arange(len(metrics['target']))/40
        if key=='baseline':ax.plot(t,abs(metrics['target']),'k--',label='Target',lw=2)
        ax.plot(t,abs(metrics['observed']),label=label,alpha=.85)
    ax.set(xlabel='Time within repeated table (us)',ylabel='Normalized filtered amplitude',title='Combined envelope, capture B; 100-kHz LPF');ax.legend(fontsize=8);ax.grid(alpha=.25)
    rf=json.loads(Path('output/rtl8922-bb-nco-improve-diversion-wide-b.json').read_text())
    analysis=json.loads(Path('output/rtl8922-bb-nco-improve-diversion-wide-b-analysis-v2.json').read_text())
    rate=rf['actual_rx']['sample_rate'];offset=250000+rf['center_mhz']*1e6-rf['actual_rx']['rx_lo']+rf['measured_carrier_offset_hz']+analysis['fit']['residual_cfo_hz']
    n=8192;freq=np.fft.fftshift(np.fft.fftfreq(n,1/rate))-offset;ax=axes[2,1]
    powers=[]
    for field in ['private_trace','private_off_trace']:
        raw=np.fromfile(rf[field],dtype='<c8');blocks=raw[:len(raw)//n*n].reshape(-1,n)
        powers.append(np.mean(abs(np.fft.fftshift(np.fft.fft(blocks*np.hanning(n),axis=1),axes=1))**2,axis=0))
    reference=np.max(powers[0][abs(freq)<100000])
    for power,label in zip(powers,['Diverting waveform','TX off']):ax.plot(freq/1e6,10*np.log10(np.maximum(power/reference,1e-12)),label=label,alpha=.8)
    ax.axvline(0,color='gray',ls='--');ax.axvline(8,color='gray',ls='--');ax.set(xlim=(-1,10),ylim=(-65,10),xlabel='Offset from wanted carrier (MHz)',ylabel='Relative receiver power (dB)',title='Wideband capture: diverted energy remains at +8 MHz');ax.legend();ax.grid(alpha=.25)
    fig.suptitle('RTL8922 NCO improvements at commanded RF 2422.25 MHz — 10.667 M stores/s\nTwo independent captures per method; stronger matched settings; finite known AM, not OFDM decoding',fontsize=14)
    fig.savefig(plot,dpi=150);plt.close(fig)
    print(json.dumps({'rf_attempts':result['rf_attempt_count'],'rf_control_passes':result['rf_control_passes'],'cleanup_pass':result['cleanup']['all_cleanup_checks_pass']}))

if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--output',type=Path,required=True);p.add_argument('--plot',type=Path,required=True)
    args=p.parse_args()
    if args.output.exists() or args.plot.exists():raise ValueError('Fresh output paths required')
    summarize(args.output,args.plot)
