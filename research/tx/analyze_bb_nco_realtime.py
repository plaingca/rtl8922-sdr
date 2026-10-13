#!/usr/bin/env python3
"""Aggregate saved causal-compiler RF evidence, without opening hardware."""
import argparse
import hashlib
import json
from pathlib import Path


def read(path):
    return json.loads(path.read_text())


def aggregate(root):
    sources = read(root / 'rtl8922-bb-nco-realtime-source-metadata.json')['sources']
    runs = []
    for path in sorted(root.glob('rtl8922-bb-nco-realtime-*.json')):
        rf = read(path)
        if not isinstance(rf, dict) or not rf.get('hardware_access') or not rf.get('realtime_iq'):
            continue
        tag = path.stem.removeprefix('rtl8922-bb-nco-realtime-')
        src = sources[Path(rf['source_report']).name]
        stream, compiler = rf['stream'], rf['realtime_compiler']
        completed = (rf.get('status') == 'finite_nco_gate_captured'
                     and rf['playback']['completed']
                     and stream['completed_blocks'] == src['stream_blocks']
                     and not stream.get('producer_errors')
                     and rf.get('stream_final_buffers_match'))
        row = {
            'tag': tag, 'rf_report': str(path),
            'rf_report_sha256': hashlib.sha256(path.read_bytes()).hexdigest(),
            'source': src, 'rf_controls_and_stream_completed': bool(completed),
            'completed_buffers': stream['completed_blocks'],
            'total_buffers': src['stream_blocks'],
            'local_repetitions_per_buffer': stream['local_repetitions_per_block'],
            'full_burst_capture_requested': rf['capture_whole_pattern'],
            'clip_fraction': rf.get('clip_fraction'),
            'compiler': {k: v for k, v in compiler.items() if k != 'compile_seconds'},
            'native_buffer_budget_seconds': rf['native_block_seconds'],
            'producer_errors': stream.get('producer_errors', []),
            'exception': rf.get('exception'),
            'rtl_restore_mismatches': rf.get('rtl_restore_mismatches', {}),
            'cleanup_actions_without_errors': (not any(rf.get(k) for k in ('cleanup_errors', 'rtl_cleanup_errors',
                              'mailbox_cleanup_errors'))
                             and str(rf['pluto_tx_powerdown']) == '1'
                             and rf['saved_pluto'] == rf['restored_pluto']),
        }
        demod_path = path.with_name(path.stem + '-demod.json')
        if demod_path.exists():
            demod = read(demod_path)
            decode = demod['single_frame_decode']
            row.update(demod_report=str(demod_path),
                       transmitted_frames=src['frame_count'], detected_frames=decode['candidate_frames'],
                       crc_frames=decode['crc_valid_frames'],
                       sequence_correct_crc_frames=demod['sequence_correct_crc_frames'],
                       median_frame_evm=demod['median_frame_evm'],
                       median_frame_period_seconds=demod['median_frame_period_seconds'],
                       off_crc_frames=demod['off_control']['crc_valid_frames'],
                       wrong_training_crc_frames=demod['wrong_training_control']['crc_valid_frames'],
                       repetition_averaging=decode['repetition_averaging'])
            if completed and rf['capture_whole_pattern'] and src['active_carrier_span_hz'] <= 250000:
                row['exact_delivery_fraction'] = demod['sequence_correct_crc_frames'] / src['frame_count']
                row['offered_payload_bps'] = demod['observed_payload_bits_per_second_before_losses']
                row['delivered_payload_bps'] = row['offered_payload_bps'] * row['exact_delivery_fraction']
        if not completed:
            row['qualification'] = 'rejected_host_refill_underrun'
            row['failure_interpretation'] = ('BB status 4 and producer -32 indicate underrun; final readback '
                'was checked before producer error in this historical run. No RF trace was preserved. '
                'Current probe preserves acquisition before qualification and reports producer failure first.')
        elif not rf['capture_whole_pattern']:
            row['qualification'] = 'unqualified_snapshot_timing'
            row['failure_interpretation'] = ('No preambles in this snapshot, but RX call began after finite '
                'TX completed. Queued capture timing is unverified; this is not proof the expanded '
                'alphabet cannot synthesize OFDM. No bandwidth claim from this run.')
        elif src['active_carrier_span_hz'] >= 400000:
            row['qualification'] = 'rejected_waveform_distortion'
            row['failure_interpretation'] = ('Sparse detections make timing-derived source sequence/EVM '
                'scoring uncertain. Report raw CRC count only; no useful 400 kHz mode qualified.')
        elif tag in ('rt200-peak-a', 'rt200-peak-b'):
            row['qualification'] = 'working_bounded_200khz'
        elif tag == 'rt250-peak-b':
            row['qualification'] = 'degraded_experimental_250khz'
        else:
            row['qualification'] = 'baseline_or_tuning_attempt'
        runs.append(row)
    chosen = [r for r in runs if r['qualification'] == 'working_bounded_200khz']
    assert len(chosen) == 2
    assert all(r['cleanup_actions_without_errors'] for r in runs)
    assert all(r['off_crc_frames'] == r['wrong_training_crc_frames'] == 0
               and not r['repetition_averaging'] for r in chosen)
    correct = sum(r['sequence_correct_crc_frames'] for r in chosen)
    total = sum(r['transmitted_frames'] for r in chosen)
    return {
        'schema_version': 1, 'hardware_access': False,
        'scope': ('Finite prepared CF32 inputs; commands generated causally during RF playback. '
                  'Bandwidth denotes active OFDM carrier-center span, not an emission mask. '
                  'No external live-source RF ingress, infinite endurance, or every-store RF latch claim.'),
        'attempts': len(runs),
        'rf_controls_and_stream_completed': sum(r['rf_controls_and_stream_completed'] for r in runs),
        'restore_readback_note': ('Cleanup actions completed and Pluto settings restored. Thirteen runs '
            'record RF register 0 readback differences of bit 15 only. These are preserved, not '
            'classified as exact register restoration; final card is unbound, Pluto TX off and demo stopped.'),
        'working_mode': {
            'active_carrier_span_hz': 200000, 'input_sample_rate_hz': 10666666.666666666 / 20,
            'input_factor': 20, 'feedback': .97, 'phase_weight': 1., 'envelope_peak': .9,
            'physical_nco_codebook': list(range(7)),
            'exact_crc_frames': correct, 'transmitted_frames': total,
            'paired_delivery_fraction': correct / total,
            'median_evm_range': [min(r['median_frame_evm'] for r in chosen), max(r['median_frame_evm'] for r in chosen)],
            'runs': [r['tag'] for r in chosen],
        },
        'final_state': read(root / 'rtl8922-bb-nco-realtime-final-state.json'),
        'pipe_check': read(root / 'rtl8922-bb-nco-realtime-pipe-check.json'),
        'runs': runs,
    }


def plot_report(report, output):
    import matplotlib
    matplotlib.use('Agg')
    import matplotlib.pyplot as plt
    import numpy as np
    by_tag = {r['tag']: r for r in report['runs']}
    selected = [by_tag[t] for t in ('rt100-base-b', 'rt200-a', 'rt200-b',
                                  'rt200-peak-a', 'rt200-peak-b', 'rt250-peak-b')]
    labels = ['100k\npeak .7', '200k A\npeak .7', '200k B\npeak .7',
              '200k A\npeak .9', '200k B\npeak .9', '250k\npeak .9']
    colors = ['#64748b'] * 3 + ['#14866d'] * 2 + ['#d97706']
    fig, ax = plt.subplots(2, 2, figsize=(12, 8), constrained_layout=True)
    x = np.arange(len(selected))
    ax[0, 0].bar(x, [r['exact_delivery_fraction'] * 100 for r in selected], color=colors)
    ax[0, 0].set(ylabel='Exact CRC frames / transmitted (%)', ylim=(0, 105), title='Individual frames; no repetition averaging')
    ax[0, 1].bar(x, [r['median_frame_evm'] * 100 for r in selected], color=colors)
    ax[0, 1].set(ylabel='Median frame EVM (%)', title='Peak .9 improves 200 kHz over peak .7')
    for a in ax[0]:
        a.set_xticks(x, labels)
    timing = [by_tag[t] for t in ('rt200-peak-a', 'rt200-peak-b', 'rt250-peak-a', 'rt250-peak-b')]
    ax[1, 0].bar(range(4), [r['compiler']['maximum_compile_and_fill_seconds'] * 1e6 for r in timing],
                 color=['#14866d', '#14866d', '#be123c', '#d97706'])
    ax[1, 0].axhline(384, color='black', linestyle='--', label='384 us refill budget')
    ax[1, 0].set_xticks(range(4), ['200k A', '200k B', '250k\nunderrun', '250k\nretry'])
    ax[1, 0].set(ylabel='Worst compile + fill (us)', title='Host refill remains vulnerable to scheduling')
    ax[1, 0].legend()
    root = Path(by_tag['rt200-peak-b']['demod_report']).parent
    for tag, color in [('rt200-peak-a', '#4377b2'), ('rt200-peak-b', '#14866d')]:
        frames = read(root / f'rtl8922-bb-nco-realtime-{tag}-demod.json')['single_frame_decode']['frames']
        times = [(f['start_seconds'] - frames[0]['start_seconds']) * 1000 for f in frames]
        ax[1, 1].scatter(times, [f['evm_rms'] * 100 for f in frames], s=3, alpha=.35, color=color, label=tag[-1].upper())
    ax[1, 1].set(xlabel='Time from first detected frame (ms)', ylabel='Frame EVM (%)',
                 ylim=(0, 65), title='Two independent 200 kHz runs (one >65% outlier)')
    ax[1, 1].legend(title='Run')
    for a in ax.flat:
        a.grid(axis='y', alpha=.2)
        a.set_axisbelow(True)
    fig.suptitle('RTL8922 BBMCU NCO: causal I/Q compiler and bounded RF streaming\n'
                 '200 kHz active-carrier span, 533.3 kS/s CF32 input, 10.667 Mcommands/s nominal')
    fig.savefig(output, dpi=150)
    plt.close(fig)


if __name__ == '__main__':
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--root', type=Path, default=Path('output'))
    p.add_argument('--output', type=Path, default=Path('output/rtl8922-bb-nco-realtime-analysis.json'))
    p.add_argument('--plot', type=Path)
    args = p.parse_args()
    result = aggregate(args.root)
    args.output.write_text(json.dumps(result, indent=2) + '\n')
    if args.plot:
        plot_report(result, args.plot)
    print(json.dumps(result['working_mode'], indent=2))
