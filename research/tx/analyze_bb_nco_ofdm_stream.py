#!/usr/bin/env python3
"""Offline individual-frame validation of the bounded host-fed OFDM stream."""
import argparse,hashlib,json
from pathlib import Path
import numpy as np
from bb_nco_narrow_ofdm import decode,ROOT,RX_RATE,FS

def analyze(path,output,plot=None):
    rf=json.loads(path.read_text());src=json.loads(Path(rf['source_report']).read_text())
    if rf.get('status')!='finite_nco_gate_captured' or rf['stream']['completed_blocks']!=src['stream_blocks']:raise ValueError('Stream controls/transport failed')
    raw=Path(rf['source_report']).with_suffix('.bin').read_bytes()
    if hashlib.sha256(raw).hexdigest()!=src['table_sha256']:raise ValueError('Stream changed')
    offset=250000+rf['center_mhz']*1e6-rf['actual_rx']['rx_lo']+rf['measured_carrier_offset_hz'];rate=rf['actual_rx']['sample_rate']
    controls={};points=None
    for field,hkey in [('private_trace','trace_sha256'),('private_off_trace','off_trace_sha256')]:
        raw=Path(rf[field]).read_bytes()
        if hashlib.sha256(raw).hexdigest()!=rf[hkey]:raise ValueError('Trace changed')
        x=np.frombuffer(raw,dtype='<c8');mixed=x*np.exp(-2j*np.pi*offset*np.arange(len(x))/rate)
        result,p=decode(mixed,rate,body_bytes=src['body_bytes'],seed=src['training_seed'],oversample=src.get('oversample',40))
        controls[field]=result
        if field=='private_trace':
            points=p;wrong,_=decode(mixed,rate,body_bytes=src['body_bytes'],seed=src['training_seed']+1,oversample=src.get('oversample',40))
    result=controls['private_trace'];frames=result['frames'];packets=[v['packet_hex'] for v in src['sources']]
    times=np.array([r['start_seconds'] for r in frames])
    period=float(np.median(np.diff(times))) if len(frames)>=2 else src['ofdm_frame_slots']/FS
    inferred_slots=int(round((times[-1]-times[0])/period))+1 if len(frames)>=2 else len(frames)
    gaps=[{'after_detected_frame':i,'missing_frames':int(round((times[i+1]-times[i])/period))-1,
           'start_seconds':float(times[i])} for i in range(len(times)-1) if times[i+1]-times[i]>1.5*period]
    first=next((i for i,r in enumerate(frames) if r['crc_ok'] and r['recovered_packet_hex'] in packets),None)
    counts={v['body_hex']:0 for v in src['sources']};good=0;evm=[];all_errors=[]
    if first is not None:
        origin=packets.index(frames[first]['recovered_packet_hex'])
        qam=points.reshape(len(frames),-1)
        for i,r in enumerate(frames):
            # Timing and the first received sequence label identify the expected
            # stream member for scoring only. They never enter the RX decoder.
            index=int(round((r['start_seconds']-frames[first]['start_seconds'])/period))
            expected_hex=packets[(origin+index)%len(packets)];expected=bytes.fromhex(expected_hex)
            bits=np.unpackbits(np.frombuffer(expected,dtype=np.uint8)).astype(int)
            b=bits.reshape(-1,2);constellation=((1-2*b[:,0])+1j*(1-2*b[:,1]))/np.sqrt(2)
            r['evm_rms']=float(np.sqrt(np.mean(abs(qam[i]-constellation)**2)))
            r['expected_packet_hex']=expected_hex;r['sequence_matches']=r['recovered_packet_hex']==expected_hex
            r['bit_errors']=int(sum(bits!=np.unpackbits(np.frombuffer(bytes.fromhex(r['recovered_packet_hex']),dtype=np.uint8))))
            if r['crc_ok'] and r['sequence_matches']:good+=1
            if r['crc_ok'] and r['recovered_body_hex'] in counts:counts[r['recovered_body_hex']]+=1
            evm.append(r['evm_rms']);all_errors.append(r['bit_errors'])
    uploads=rf['stream']['upload_seconds'];row={'schema_version':1,'hardware_access':False,'rf_report':str(path),
        'source_report':rf['source_report'],'single_frame_decode':result,'off_control':controls['private_off_trace'],
        'wrong_training_control':wrong,'distinct_known_payload_counts':counts,'sequence_correct_crc_frames':good,
        'median_frame_period_seconds':period if len(frames)>=2 else None,'median_frame_evm':float(np.median(evm)) if evm else None,
        'transmitted_frames':src['frame_count'],'inferred_frame_slots_between_first_and_last':inferred_slots,
        'interior_preamble_erasures':max(0,inferred_slots-len(frames)),'preamble_gaps':gaps,
        'maximum_frame_evm':float(max(evm)) if evm else None,'total_bit_errors':int(sum(all_errors)),
        'mapped_fill_benchmark_seconds':rf['mapped_fill_benchmark_seconds'],
        'upload_median_seconds':float(np.median(uploads)),'upload_max_seconds':float(max(uploads)),
        'completed_stream_blocks':rf['stream']['completed_blocks'],'uploaded_during_playback':rf['stream']['uploaded_while_running'],
        'local_repetition_factor':rf['stream']['local_repetitions_per_block'],'counter_ticks_per_nco_write':rf['playback']['counter_ticks_per_nco_write'],
        'observed_payload_bits_per_second_before_losses':src['body_bytes']*8/period if len(frames)>=2 else None,
        'stream_crc_demonstrated':good>0 and all(v>0 for v in counts.values()) and controls['private_off_trace']['crc_valid_frames']==0 and wrong['crc_valid_frames']==0,
        'scope':'Finite host-fed stream of precomputed optimized frames at native store cadence; four payloads cycle. Each RF frame decoded independently; stream order used only for scoring. No real-time optimizer, indefinitely sustained service, full-run RF capture or every-write RF latch qualification.'}
    if rf.get('realtime_iq'):
        c=rf['realtime_compiler'];row['realtime_compiler']={k:v for k,v in c.items() if k!='compile_seconds'}
        row['active_carrier_span_hz']=src['active_carrier_span_hz']
        row['scope']='Finite CF32 input streamed through a causal compiler during RF. Input I/Q is prepared before the test; only first two command buffers are precompiled. No payload averaging or across-frame RX fitting. Stream timing/order are used only for scoring; indefinite upstream I/O and emission masks remain unqualified.'
    timing=rf.get('capture_timing_monotonic',{})
    if timing.get('rx_call',0)>timing.get('command_end',float('inf')):
        row['capture_timing_warning']='RX call begins after finite TX ends; queued acquisition overlap is unverified. Decode absence does not establish synthesis failure.'
    output.write_text(json.dumps(row,indent=2)+'\n')
    if plot:
        import matplotlib
        matplotlib.use('Agg')
        import matplotlib.pyplot as plt
        if not frames:
            fig,ax=plt.subplots(figsize=(8,3));ax.text(.5,.5,'No OFDM preambles detected; RF/stream controls passed',ha='center',va='center')
            ax.axis('off');fig.savefig(plot,dpi=150);plt.close(fig)
            print(json.dumps({'stream_crc_demonstrated':False,'candidate_frames':0}));return
        fig,ax=plt.subplots(1,3,figsize=(15,4),constrained_layout=True)
        ax[0].scatter(points.real,points.imag,s=5,alpha=.4);ideal=np.array([1+1j,1-1j,-1+1j,-1-1j])/np.sqrt(2)
        ax[0].scatter(ideal.real,ideal.imag,c='red',marker='+',s=100);ax[0].set_aspect('equal');ax[0].set(xlabel='I',ylabel='Q',title='Changing frames, individually equalized',xlim=(-1.6,1.6),ylim=(-1.6,1.6))
        ax[1].plot((times-times[0])*1000,np.array(evm)*100,'o-',ms=3)
        for gap in gaps:ax[1].axvline((gap['start_seconds']+period-times[0])*1000,color='red',ls='--',alpha=.6)
        ax[1].set(xlabel='Capture time (ms)',ylabel='Frame EVM (%)',title=f'CRC/sequence correct {good}/{inferred_slots}; {inferred_slots-len(frames)} erasure')
        labels=[bytes.fromhex(v['body_hex']).decode() for v in src['sources']]
        values=[packets.index(r['recovered_packet_hex']) if r['recovered_packet_hex'] in packets else -1 for r in frames]
        ax[2].plot((times-times[0])*1000,values,'.-');ax[2].set_yticks(range(len(labels)),labels)
        ax[2].set(xlabel='Capture time (ms)',xlim=(0,min(12,(times[-1]-times[0])*1000)),title='Decoded payload order, first 12 ms; no averaging')
        for a in ax:a.grid(alpha=.25)
        fig.savefig(plot,dpi=150);plt.close(fig)
    print(json.dumps({k:row[k] for k in ['stream_crc_demonstrated','sequence_correct_crc_frames','distinct_known_payload_counts','median_frame_evm','median_frame_period_seconds','upload_max_seconds']}))

if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--rf-report',type=Path,required=True);p.add_argument('--output',type=Path,required=True);p.add_argument('--plot',type=Path)
    args=p.parse_args()
    if args.output.exists() or (args.plot and args.plot.exists()):raise ValueError('Output exists')
    analyze(args.rf_report,args.output,args.plot)
