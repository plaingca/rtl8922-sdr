#!/usr/bin/env python3
"""Aggregate saved single-frame and host-fed narrowband OFDM evidence offline."""
import argparse,json
from pathlib import Path

def summarize(output):
    root=Path('output');base='rtl8922-bb-nco-narrow-ofdm-'
    data={'schema_version':1,'hardware_access':False,'rf_requested_hz':2422250000,
          'modulation':'Custom uncoded QPSK OFDM, six active carriers, two pilots, CRC16',
          'subcarrier_spacing_hz':16666.666666666668,'active_carrier_center_span_hz':100000,
          'slot_write_rate_nominal':32000000/3,'frame_slots':8192,'payload_bytes':4,
          'repetition_averaging':False,'static_repeated_table':[],'host_stream_snapshots':[]}
    for tag in ['a','b']:
        p=root/(base+'demod-'+tag+'.json');r=json.loads(p.read_text());rx=r['single_frame_decode']
        data['static_repeated_table'].append({'analysis':str(p),'rf_report':r['rf_report'],
            'candidate_frames':rx['candidate_frames'],'crc_valid_frames':rx['crc_valid_frames'],
            'exact_payload_frames':rx['exact_payload_frames'],'median_evm':rx['median_evm_rms'],
            'total_bit_errors':rx['total_bit_errors'],'off_crc':r['off_control']['crc_valid_frames'],
            'wrong_training_crc':r['wrong_training_control']['crc_valid_frames']})
        p=root/(base+'stream-demod-'+tag+'.json');r=json.loads(p.read_text())
        data['host_stream_snapshots'].append({'analysis':str(p),'rf_report':r['rf_report'],
            **{k:r[k] for k in ['sequence_correct_crc_frames','distinct_known_payload_counts','median_frame_evm',
                'completed_stream_blocks','uploaded_during_playback','local_repetition_factor','upload_median_seconds','upload_max_seconds']},
            'detected_frames':r['single_frame_decode']['candidate_frames'],
            'off_crc':r['off_control']['crc_valid_frames'],'wrong_training_crc':r['wrong_training_control']['crc_valid_frames']})
    p=root/(base+'stream-full-d-qualified.json');r=json.loads(p.read_text())
    data['full_stream_capture']={'analysis':str(p),'rf_report':r['rf_report'],
         **{k:r[k] for k in ['sequence_correct_crc_frames','distinct_known_payload_counts','median_frame_evm',
             'maximum_frame_evm','total_bit_errors','transmitted_frames','interior_preamble_erasures','preamble_gaps',
             'completed_stream_blocks','uploaded_during_playback','local_repetition_factor','upload_median_seconds','upload_max_seconds',
             'counter_ticks_per_nco_write','median_frame_period_seconds','observed_payload_bits_per_second_before_losses']},
         'off_crc':r['off_control']['crc_valid_frames'],'wrong_training_crc':r['wrong_training_control']['crc_valid_frames']}
    data['final_state']=json.loads((root/(base+'final-state.json')).read_text())
    paths=[p for p in sorted(root.glob(base+'*.json')) if json.loads(p.read_text()).get('rf_tx_requested')]
    data['rf_attempts']=[{'report':str(p),'status':json.loads(p.read_text()).get('status'),
                         'exception':json.loads(p.read_text()).get('exception')} for p in paths]
    data['rf_attempt_count']=len(paths);data['passing_rf_attempts']=sum(r['status']=='finite_nco_gate_captured' for r in data['rf_attempts'])
    data['qualified']={'finite_single_frame_payload_decode':True,'finite_host_fed_native_rate_stream':True,
         'real_time_optimization':False,'indefinite_streaming':False,'20msps':False,'spectral_mask':False}
    data['scope']='Two single-frame table trials, two central stream snapshots, and one full ~0.394-s stream. Four optimized payloads cycle from host; no local buffer repetition. One interior preamble erasure in the full capture. No payload-frame averaging or across-frame CFO/channel fitting.'
    assert data['full_stream_capture']['transmitted_frames']==512
    assert data['full_stream_capture']['sequence_correct_crc_frames']==511
    assert data['full_stream_capture']['interior_preamble_erasures']==1
    assert data['final_state']['all_cleanup_checks_pass']
    output.write_text(json.dumps(data,indent=2)+'\n')
    print(json.dumps({k:data[k] for k in ['rf_attempt_count','passing_rf_attempts','qualified']}))
if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--output',type=Path,required=True);args=p.parse_args()
    if args.output.exists():raise ValueError('Output exists')
    summarize(args.output)
