#!/usr/bin/env python3
"""Summarize small BB DDS reports offline; never acquires hardware or samples."""
import argparse
import hashlib
import json
from pathlib import Path


def summarize(directory):
    inputs = {}
    def read(name):
        raw = (directory / name).read_bytes()
        inputs[name] = hashlib.sha256(raw).hexdigest()
        return json.loads(raw)
    runtime = read('rtl8922-bb-dds-runtime-b.json')
    rows, patterns, timings, cleanup = [], [], [], []
    for suffix in ('a', 'b', 'c'):
        name = f'rtl8922-bb-dds-rf-{suffix}.json'
        report = read(name)
        cleanup.append({'report': name, 'errors': report['cleanup_errors'],
                        'rtl_restore_mismatches': report['rtl_restore_mismatches'],
                        'mailbox_errors': report['mailbox_cleanup_errors'],
                        'pluto_tx_powerdown': report['pluto_tx_powerdown'],
                        'pluto_saved_equals_restored': report['saved_pluto'] == report['restored_pluto']})
        timings.extend({'report': name, 'count': c['count'],
                        'host_bracket_seconds': c['host_command_seconds'],
                        'lower_bound_updates_per_second': c['host_bracket_lower_bound_updates_per_second']}
                       for c in report['commands'] if c['mode'] == 2 and c.get('completed'))
        for index, run in enumerate(report['runs']):
            if 'pattern' in run:
                patterns.append({'report': name, **run['pattern']})
            if run['mode'] != 2 or run['fraction'] == 0:
                continue
            # Time regions distinguish the pilot and finite command. The
            # requested fraction never selects an observed frequency plateau.
            pilots = [r for r in run['rf']['stable_runs'] if r['start_seconds'] < .1]
            tones = [r for r in run['rf']['stable_runs'] if .1 <= r['start_seconds'] < .17]
            row = {'report': name, 'run': index, 'fraction_numerator': run['fraction'],
                   'fraction_denominator': 65536,
                   'predicted_shift_hz': 250000*run['fraction']/65536,
                   'clip_fraction': run['rf']['clip_fraction']}
            if pilots and tones:
                pilot = max(pilots, key=lambda r: r['blocks'])
                tone = max(tones, key=lambda r: r['blocks'])
                shift = tone['median_hz'] - pilot['median_hz']
                row.update(pilot_hz=pilot['median_hz'], tone_hz=tone['median_hz'],
                           measured_shift_hz=shift, error_hz=shift-row['predicted_shift_hz'],
                           observed_plateau_seconds=tone['end_seconds']-tone['start_seconds'],
                           minimum_peak_above_floor_db=tone['min_above_floor_db'])
            rows.append(row)
    return {'schema_version': 1, 'hardware_access': False, 'input_sha256': inputs,
            'runtime_status': runtime['status'],
            'same_word_lower_bound_updates_per_second': runtime['commands'][-1]['host_bracket_lower_bound_updates_per_second'],
            'fractional_rf_observations': rows, 'finite_fractional_command_timings': timings,
            'all_eight_nonzero_fraction_observations_within_one_fft_bin': len(rows) == 8 and all(
                'error_hz' in row and abs(row['error_hz']) <= 4000000/4096 for row in rows),
            'pattern_decoder_results': patterns, 'cleanup_from_rf_reports': cleanup,
            'scope': 'Finite fractional-frequency synthesis through BB-local NCO writes. '
                     'Host brackets include command/observation overhead; no MCU clock or exact jitter claim.',
            'not_demonstrated': ['continuous host-fed streaming', 'arbitrary I/Q or clean QAM',
                                 'held-out fast frequency-pattern decoding', 'spectral purity/SFDR',
                                 'phase-noise or every-write timing qualification']}


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--reports', required=True, type=Path)
    p.add_argument('--output', required=True, type=Path)
    args = p.parse_args()
    if args.output.exists():
        raise ValueError('Output already exists')
    result = summarize(args.reports)
    args.output.write_text(json.dumps(result, indent=2) + '\n')
    print(json.dumps({k: result[k] for k in ('runtime_status', 'same_word_lower_bound_updates_per_second',
        'all_eight_nonzero_fraction_observations_within_one_fft_bin')}))


if __name__ == '__main__':
    main()
