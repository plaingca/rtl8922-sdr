#!/usr/bin/env python3
"""Reproduce the DAC/IF follow-up summary from small reports, without hardware."""

import argparse
import hashlib
import json
from pathlib import Path


def analyze(directory):
    names = [
        'rtl8922-dac-input-analysis.json',
        'rtl8922-dds-dc-probe-path1.json', 'rtl8922-dds-dc-wide-probe-path1.json',
        'rtl8922-internal-iq-sample-sequence-path1.json',
        'rtl8922-dac-phase-clock-path1.json', 'rtl8922-dif5-packed-probe-path1.json',
        'rtl8922-iq-rf-levels-path1-a.json', 'rtl8922-iq-rf-levels-path1-b.json',
        'rtl8922-dac-followup-tone-control-path1.json',
        'rtl8922-native-dac-clock-tone-control-path1.json',
        'rtl8922-dadck-reference-path1-c.json', 'rtl8922-dadck-reference-path1-d.json',
        'rtl8922-dadck-reference-path1-e.json',
        *[f'rtl8922-iq-if-envelope-path1-{letter}.json' for letter in 'abcde'],
        'rtl8922-iq-if-envelope-path1-c-offline-v2.json',
        'rtl8922-iq-if-envelope-path1-d-offline.json',
        'rtl8922-iq-if-envelope-path1-e-offline.json',
    ]
    reports, hashes = {}, {}
    for name in names:
        raw = (directory/name).read_bytes()
        reports[name] = json.loads(raw)
        hashes[name] = hashlib.sha256(raw).hexdigest()
    sequence = reports['rtl8922-internal-iq-sample-sequence-path1.json']['iq_sample_probe']
    packed = reports['rtl8922-dac-phase-clock-path1.json']['dac_phase_probe']['rows']
    counterexamples = [r for r in packed if r['dds_word'] == 640
                       and r['capture_rate_selector'] == 7 and r['data_type'] in (12, 14)]
    dif5 = reports['rtl8922-dif5-packed-probe-path1.json']['dif5_packed_probe']['rows']
    if_results = []
    for name in names:
        if '-offline' in name:
            r = reports[name]
            if_results.append({'report': name, 'passed': r['finite_complex_if_sequence_demonstrated'],
                               'payload_levels': len(r['payload_indices']),
                               'heldout_snr_db': r['heldout_snr_db'],
                               'heldout_evm_percent': r['heldout_evm_percent'],
                               'wrong_sequence_snr_db': r['wrong_sequence_snr_db'],
                               'axis_condition': r['axis_condition'],
                               'discarded_training_indices': r['discarded_training_indices'],
                               'min_payload_clean_points': min(r['clean_points_per_state'][k] for k in r['payload_indices']),
                               'unknown_payload_values_used_in_fitting': r['unknown_payload_values_used_in_fitting']})
    original_if = {}
    cleanup = {}
    for name, r in reports.items():
        if 'iq_if_modulation' in r:
            m = r['iq_if_modulation']
            original_if[name] = {k: m.get(k) for k in
                                 ('qualified', 'reason', 'heldout_snr_db',
                                  'heldout_modulation_to_residual_db',
                                  'spectral_image_mean_power_relative_to_desired_db')}
        if 'saved_pluto' in r:
            cleanup[name] = {'rtl_cleanup_errors': r.get('rtl_cleanup_errors'),
                             'rtl_restore_mismatches': r.get('rtl_restore_mismatches'),
                             'cleanup_errors': r.get('cleanup_errors'),
                             'pluto_settings_restored': r.get('saved_pluto') == r.get('restored_pluto'),
                             'final_pluto_tx_powerdown': r.get('final_pluto_tx_powerdown')}
    return {
        'schema_version': 1, 'hardware_access': False,
        'raw_dac_replay_or_streaming_demonstrated': False,
        'finite_host_paced_complex_if_demonstrated': all(r['passed'] for r in if_results),
        'input_report_sha256': hashes,
        'internal_signed_sequence': {
            'dds_word': 640, 'scope': 'Selected first debug phase only',
            'finite_internal_sequence_demonstrated': sequence['finite_internal_iq_sequence_demonstrated'],
            'static_values_passed': sequence['static_values_passed'],
            'nominal_host_updates_per_second': sequence['nominal_host_updates_per_second'],
            'verification': sequence['sequence_verification'],
            'physical_dac_constant_or_rf_proved': False},
        'sampling_trap': {
            'wide_capture_observation_control_passed': reports['rtl8922-dds-dc-wide-probe-path1.json']['dds_dc_probe']['observation_control_passed'],
            'dds320_and_960_alias_to_dc_at_slow_debug_rates': True,
            'rate_selector_7_dds1_cycles_per_record': .0015625,
            'rate_selector_8_dds1_cycles_per_record': .003125,
            'selector8_is_not_qualified_320msps': True,
            'dds640_packed_counterexamples': counterexamples,
            'packed_field_interpretation_provisional': True,
            'adjacent_8030_observations': len(dif5),
            'adjacent_8030_dds_zero_always_zero': all(
                all(c['mean'] == 0 and c['std'] == 0 for c in r['tx_dac_debug']['component_stats'])
                if r['data_type'] else r['tx_dac_debug']['real_mean'] == r['tx_dac_debug']['imag_mean'] == 0
                for r in dif5 if r['dds_word'] == 0)},
        'raw_dc_rf_attempts': {name: {k: reports[name]['iq_rf_modulation'][k] for k in
                                      ('qualified', 'on_above_zero_db', 'heldout_modulation_to_residual_db')}
                               for name in ('rtl8922-iq-rf-levels-path1-a.json', 'rtl8922-iq-rf-levels-path1-b.json')},
        'dac_correction_full_codebook': reports['rtl8922-dadck-reference-path1-e.json']['dadck_reference']['fit'],
        'complex_if': {
            'path': 1, 'center_hz': 2442000000, 'rf_gain_code_uncalibrated': 8,
            'dds_word': 1, 'nominal_if_hz': 250000,
            'iqc_relative_bb_address': '0x8238', 'manual_enable_bit': 1,
            'signed_field_width': 12, 'a_bits': '31:20', 'b_bits': '19:8',
            'coefficient_mapping': 'A_code=2*I_code-1024; B_code=2*Q_code',
            'ideal_signal': 'z=m*exp(jwt)+(m-1)*exp(-jwt), m=(I_code+j*Q_code)/1024',
            'payload_component_range': [-512, 512], 'max_payload_levels': 16,
            'host_hold_seconds': .04, 'instantaneous_host_updates_per_second': 25,
            'max_total_tx_seconds': 1.72, 'continuous_payload_stream': False,
            'spectral_image_db_relative_to_desired_random_payload_c': reports['rtl8922-iq-if-envelope-path1-c.json']['iq_if_modulation']['spectral_image_mean_power_relative_to_desired_db'],
            'receiver_method': 'U-r*L is payload-independent; fixed known references determine r; training-only affine calibration',
            'validation': if_results, 'original_reports_preserved': original_if,
            'reanalysis_note': 'D/E initially failed the requirement for all training symbols. Offline decoding discards erased known training symbols, requires both signed axes, and still requires every held-out payload symbol. C originally passed prospectively.',
            'limits': ['Strong complementary spectral image', 'Finite host-paced holds with known reference symbols',
                       'No physical DAC rate, wideband fidelity, replay RAM or continuous stream qualification']},
        'cleanup': cleanup,
    }


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--reports', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    if args.output.exists():
        parser.error('Use a fresh output path')
    args.output.write_text(json.dumps(analyze(args.reports), indent=2)+'\n')


if __name__ == '__main__':
    main()
