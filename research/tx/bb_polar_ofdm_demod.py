#!/usr/bin/env python3
"""Offline decode of Pluto RF capture, with TX-off and wrong-training controls."""
import argparse
import hashlib
import json
from pathlib import Path
import numpy as np
from scipy.signal import firwin,lfilter
from bb_polar_ofdm import decode,decode_combined,FS,MESSAGE


def prepare(x,rate,offset):
    t=np.arange(len(x))/rate
    mixed=x*np.exp(-2j*np.pi*offset*t)
    return lfilter(firwin(65,1250000,fs=rate),[1],mixed)


def run(args):
    rf=json.loads(args.rf_report.read_text());source=json.loads(args.source_report.read_text())
    trace=Path(rf['private_trace']);offtrace=Path(rf['private_off_trace'])
    for p,k in ((trace,'trace_sha256'),(offtrace,'off_trace_sha256')):
        if hashlib.sha256(p.read_bytes()).hexdigest()!=rf[k]:raise ValueError('Trace changed')
    rate=float(rf['actual_rx']['sample_rate'])
    offset=rf['center_mhz']*1000000+source['carrier_offset_hz']-rf['actual_rx']['rx_lo']+rf['measured_carrier_offset_hz']
    x=np.fromfile(trace,dtype='<c8');off=np.fromfile(offtrace,dtype='<c8')
    y=prepare(x,rate,offset);off_y=prepare(off,rate,offset)
    # Reference bytes affect only error scoring; synchronization, equalization,
    # hard decisions and CRC use received samples and the preamble/pilots.
    reference=bytes.fromhex(source['packet_hex'])
    result,points=decode(y,rate=rate,seed=source['training_seed'],reference_packet=reference)
    negative,_=decode(off_y,rate=rate,seed=source['training_seed'],reference_packet=reference)
    wrong,_=decode(y,rate=rate,seed=source['training_seed']+1,reference_packet=reference)
    combined,combined_points=decode_combined(y,rate=rate,seed=source['training_seed'],group_frames=args.combine,reference_packet=reference)
    combined_off,_=decode_combined(off_y,rate=rate,seed=source['training_seed'],group_frames=args.combine,reference_packet=reference)
    combined_wrong,_=decode_combined(y,rate=rate,seed=source['training_seed']+1,group_frames=args.combine,reference_packet=reference)
    combined['off_crc_valid_groups']=combined_off['crc_valid_groups']
    combined['wrong_training_crc_valid_groups']=combined_wrong['crc_valid_groups']
    result['repetition_combined']=combined
    result.update({'rf_report':str(args.rf_report.resolve()),'source_report':str(args.source_report.resolve()),
      'rf_trace_sha256':rf['trace_sha256'],'off_trace_sha256':rf['off_trace_sha256'],
      'rx_rate':rate,'mixed_offset_hz':offset,'source_nominal_bandwidth_hz':source['nominal_subcarrier_span_hz'],
      'capture_seconds':len(x)/rate,'transmitter_counter_ticks_per_pair':rf['playback']['counter_ticks_per_pair'],
      'tx_off_control':{k:negative[k] for k in ('candidate_frames','crc_valid_frames','maximum_training_score')},
      'wrong_training_control':{k:wrong[k] for k in ('candidate_frames','crc_valid_frames','maximum_training_score')},
      'reference_payload_inserted':False})
    gates={'enough_frames':result['candidate_frames']>=20,
           'at_least_90_percent_exact_payloads':result['exact_payload_frames']>=.9*max(1,result['candidate_frames']),
           'ber_at_most_1e_minus3':result['ber']<=.001,
           'both_negative_controls_no_crc':negative['crc_valid_frames']==wrong['crc_valid_frames']==0,
           'capture_unclipped':rf['clip_fraction']==0}
    result['qualification']={'passed':all(gates.values()),'gates':gates,
      'scope':'Finite custom 2-MHz OFDM payload through preloaded BBMCU polar table; no host streaming or 20 MS/s claim'}
    combined_gates={'at_least_three_disjoint_groups':combined['total_groups']>=3,
      'at_least_90_percent_exact_payloads':combined['exact_payload_groups']>=.9*max(1,combined['total_groups']),
      'ber_at_most_1e_minus3':combined.get('ber',1.)<=.001,
      'negative_controls_no_crc':combined_off['crc_valid_groups']==combined_wrong['crc_valid_groups']==0,
      'capture_unclipped':rf['clip_fraction']==0}
    combined['qualification']={'passed':all(combined_gates.values()),'gates':combined_gates}
    result['qualification']['single_frame_passed']=result['qualification']['passed']
    result['qualification']['passed']=result['qualification']['passed'] or combined['qualification']['passed']
    result['qualification']['mode']='single_frame' if result['qualification']['single_frame_passed'] else 'repetition_combined'
    if combined['crc_valid_groups']:
        best=next(r for r in combined['groups'] if r['crc_ok'])
        result['recovered_message']=bytes.fromhex(best['recovered_payload_hex'])[:-4].rstrip(b'\0').decode('ascii',errors='replace')
    if result['crc_valid_frames']:
        best=next(r for r in result['frames'] if r['crc_ok'])
        result['recovered_message']=bytes.fromhex(best['recovered_payload_hex'])[:-4].rstrip(b'\0').decode('ascii',errors='replace')
    if args.plot:
        import matplotlib
        matplotlib.use('Agg')
        import matplotlib.pyplot as plt
        fig,axes=plt.subplots(1,3,figsize=(14,4))
        n=8192
        for data,label in ((x,'TX on'),(off,'TX off')):
            z=data[:len(data)//n*n].reshape(-1,n)
            ps=np.median(abs(np.fft.fftshift(np.fft.fft(z*np.hanning(n),axis=1),axes=1))**2,axis=0)
            f=np.fft.fftshift(np.fft.fftfreq(n,1/rate))-offset
            axes[0].plot(f/1e6,10*np.log10(np.maximum(ps,1e-20)),label=label,linewidth=.8)
        axes[0].set(xlim=(-2.5,2.5),xlabel='Offset from OFDM center (MHz)',ylabel='FFT power (dB)',title='Pluto RF capture');axes[0].legend()
        shown=combined_points if len(combined_points) else points
        if len(shown):axes[1].scatter(shown.real,shown.imag,s=4,alpha=.3)
        axes[1].scatter([-.707,-.707,.707,.707],[-.707,.707,-.707,.707],marker='x',c='red',s=45)
        axes[1].set(xlim=(-2,2),ylim=(-2,2),xlabel='I',ylabel='Q',title=f'Data after combining {args.combine} repetitions');axes[1].set_aspect('equal')
        rows=combined['groups']
        axes[2].plot([r['group_start_input_frame']*800/FS*1000 for r in rows],[r['bit_errors'] for r in rows],'.')
        axes[2].set(xlabel='Capture time (ms)',ylabel='Bit errors / combined 320-bit frame',title=f"Combined CRC: {combined['crc_valid_groups']}/{combined['total_groups']}")
        fig.tight_layout();fig.savefig(args.plot,dpi=160);plt.close(fig)
        result['plot']=str(args.plot.resolve())
    args.output.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({k:result.get(k) for k in ('candidate_frames','crc_valid_frames','ber','median_evm_rms','recovered_message','qualification')}))


def main():
    p=argparse.ArgumentParser(description=__doc__)
    for n in ('rf-report','source-report','output'):p.add_argument('--'+n,type=Path,required=True)
    p.add_argument('--combine',type=int,default=64,choices=(16,32,64))
    p.add_argument('--plot',type=Path);a=p.parse_args()
    if a.output.exists() or (a.plot and a.plot.exists()):raise ValueError('Outputs exist')
    run(a)
if __name__=='__main__':main()
