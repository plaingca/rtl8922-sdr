#!/usr/bin/env python3
"""Summarize derived manual DAC-probe reports; no hardware or raw captures."""

import argparse
import hashlib
import json
from pathlib import Path
import statistics


def analyze(directory):
    names = {
        'tpg': 'rtl8922-tpg-source-probe-path1.json',
        'itqt': 'rtl8922-dac-input-probe-path1.json',
        'matrix': 'rtl8922-iq-envelope-probe-path1.json',
        'phase': 'rtl8922-tone-phase-probe-path1.json',
        'dadck': 'rtl8922-dadck-modulation-path1.json',
    }
    inputs, hashes = {}, {}
    for name, filename in names.items():
        raw = (directory / filename).read_bytes()
        inputs[name] = json.loads(raw)
        hashes[filename] = hashlib.sha256(raw).hexdigest()
    tpg = inputs['tpg']['tpg_source_probe']
    candidates = [r for r in tpg['rows'] if r['name'].startswith(('preset_', 'word_'))]
    itqt = inputs['itqt']['dac_input_probe']
    rows = {int(r['name'].split('_')[-1], 16): r['tx_dac_debug']
            for r in itqt['rows'] if r['name'].startswith('itqt_dds1_')}
    if set(rows) != set(range(64)):
        raise ValueError('Incomplete six-bit ITQT sweep')
    axes = {}
    for axis, field in (('I', 'real_std'), ('Q', 'imag_std')):
        by_code = {}
        for code in range(8):
            observations = [r[field] for word, r in rows.items()
                            if (word >> 3 if axis == 'I' else word & 7) == code]
            by_code[str(code)] = {'median_std': statistics.median(observations),
                                 'min_std': min(observations), 'max_std': max(observations)}
        reference = by_code['1']['median_std']
        errors = [abs(by_code[str(c)]['median_std'] / (reference / 2**(c-1)) - 1)
                  for c in range(1, 7)]
        axes[axis] = {'code_bits': '5:3' if axis == 'I' else '2:0',
                      'observations_by_code': by_code,
                      'max_relative_error_from_power_of_two_codes_1_through_6': max(errors),
                      'mute_code_7_max_std': by_code['7']['max_std']}
    matrix = inputs['matrix']['iq_envelope_probe']['rows']
    phase = inputs['phase']['tone_phase_probe']
    phase_zero = [r['tx_dac_debug'] for r in phase['rows'] if r['tone_index'] == 0]
    dadck = inputs['dadck']['dadck_modulation']
    cleanup = {name: {'rtl_errors': d.get('rtl_cleanup_errors'),
                      'rtl_restore_mismatches': d.get('rtl_restore_mismatches'),
                      'cleanup_errors': d.get('cleanup_errors'),
                      'pluto_settings_restored': d.get('saved_pluto') == d.get('restored_pluto'),
                      'pluto_tx_powerdown': d.get('final_pluto_tx_powerdown')}
               for name, d in inputs.items()}
    return {
        'schema_version': 1, 'hardware_access': False,
        'arbitrary_iq_tx_demonstrated': False, 'input_report_sha256': hashes,
        'windows_driver_sha256': '6e008520696c20450959babc2d1f04a742c950d9085c3f02207fce2cd9830bbb',
        'firmware_sha256': 'd11927f593c82879bd0437435475d7915a60932374747984b3dc906a23009dea',
        'tpg': {'controls_passed': tpg['observation_control_passed'],
                'candidate_count': len(candidates),
                'all_candidates_digital_zero': all(r['tx_dac_debug']['real_std'] == 0
                    and r['tx_dac_debug']['imag_std'] == 0
                    and r['tx_dac_debug']['unique_words'] == 1 for r in candidates),
                'limit': 'Only tested source/trigger subsets; does not exclude another TPG activation sequence'},
        'itqt': {'controls_passed': itqt['observation_control_passed'],
                 'word_count': len(rows), 'axes': axes,
                 'observed_function': 'Independent powers-of-two attenuation of existing I/Q tones, code 7 mute',
                 'raw_sample_port': False,
                 'dds_zero_produced_nonzero_dc': any(
                     abs(r['tx_dac_debug']['real_mean']) > 1 or abs(r['tx_dac_debug']['imag_mean']) > 1
                     or r['tx_dac_debug']['real_std'] > 1 or r['tx_dac_debug']['imag_std'] > 1
                     for r in itqt['rows'] if r['name'].startswith('itqt_dds0_'))},
        'iqc_with_q_muted': {'cases': len(matrix),
                            'q_channel_always_zero': all(r['tx_dac_debug']['imag_std'] == 0
                                                        and r['tx_dac_debug']['imag_mean'] == 0 for r in matrix),
                            'complex_envelope_hypothesis_passed': False},
        'phase_source_hypotheses': {'controls_passed': phase['observation_control_passed'],
                                    'observations': len(phase['rows']),
                                    'nonzero_dc_found': any(abs(r['real_mean']) > 1 or abs(r['imag_mean']) > 1
                                                            for r in phase_zero),
                                    'phase_control_demonstrated': False},
        'dadck': {'native_helper_va': '0x14045bf64',
                  'manual_bits_relative_bb_2bd4': '0xa000',
                  'path1_result_byte_addresses_relative_bb': ['0xc4d0', '0xc4d4'],
                  'result_width_bits': 7,
                  'baseline_codes': dadck['baseline_codes'],
                  'state_count': len(dadck['events']),
                  'state_dwell_seconds': dadck['state_dwell_seconds'],
                  'heldout_uses_unseen_joint_codes': dadck['heldout_uses_unseen_joint_codes'],
                  'pilot_phase_residual_rad': dadck['pilot_phase_residual_rad'],
                  'heldout_modulation_to_residual_db': dadck['heldout_modulation_to_residual_db'],
                  'axis_singular_values': dadck['axis_singular_values'],
                  'qualified': False,
                  'limit': 'Weak pilot and failed held-out prediction; no independent RF I/Q-axis proof'},
        'cleanup': cleanup,
    }


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--reports', type=Path, required=True)
    p.add_argument('--output', type=Path, required=True)
    args = p.parse_args()
    if args.output.exists():
        p.error('Use a fresh output path to preserve prior evidence')
    args.output.write_text(json.dumps(analyze(args.reports), indent=2) + '\n')


if __name__ == '__main__':
    main()
