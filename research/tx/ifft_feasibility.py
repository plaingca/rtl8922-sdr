#!/usr/bin/env python3
"""Hardware-free audit of FFT -> 4096-QAM -> IFFT and CP continuity claims.

This deliberately grants ideal access to every IFFT bin. Packet coding,
forced pilots, guards, preambles and physical RTL interfaces are not modeled.
The optional explicit zero is an additional hypothetical capability.
"""

import argparse
import json
from pathlib import Path

import numpy as np


def nearest_qam4096(values, allow_zero=False):
    values = np.asarray(values, dtype=complex)

    def axis(x):
        return (2*np.clip(np.rint((x*63+63)/2), 0, 63)-63)/63

    result = axis(values.real)+1j*axis(values.imag)
    if allow_zero:
        result = np.where(abs(values)**2 < abs(result-values)**2, 0j, result)
    return result


def snr_db(expected, actual):
    signal = float(np.mean(abs(expected)**2))
    error = float(np.mean(abs(actual-expected)**2))
    return float(10*np.log10(max(signal, 1e-300)/max(error, 1e-300)))


def reconstruct(signal, allow_zero=False):
    spectrum = np.fft.fft(signal)
    scale = max(float(np.max(abs(spectrum.real))), float(np.max(abs(spectrum.imag))))/.95
    if scale == 0:
        scale = 1.
    quantized = nearest_qam4096(spectrum/scale, allow_zero)*scale
    recovered = np.fft.ifft(quantized)
    error = float(np.mean(abs(recovered-signal)**2))
    return {'snr_db': snr_db(signal, recovered),
            'evm_percent': float(100*np.sqrt(error/max(float(np.mean(abs(signal)**2)), 1e-300))),
            'exact_within_1e_minus_12': bool(np.max(abs(recovered-signal)) < 1e-12),
            'time_mean_squared_error': error,
            'parseval_predicted_mse': float(np.sum(abs(quantized-spectrum)**2)/len(signal)**2),
            'nonzero_reconstructed_bins': int(np.count_nonzero(quantized))}


def bcc_encode(bits):
    """Rate-1/2, constraint-length-7 convolutional example, zero initial state."""
    state, encoded = 0, []
    for bit in bits:
        state = ((state << 1) | int(bit)) & 0x7f
        encoded.extend(((state & 0o133).bit_count() & 1, (state & 0o171).bit_count() & 1))
    return tuple(encoded)


def analyze():
    rng = np.random.default_rng(8922)
    n, rate, cp = 256, 20000000, 16
    t = np.arange(n)/rate
    waves = {
        'gaussian_complex_block': rng.normal(size=n)+1j*rng.normal(size=n),
        'single_exact_grid_tone_bin32': np.exp(2j*np.pi*32*np.arange(n)/n),
        'tone_3khz_above_bin32': np.exp(2j*np.pi*(32*rate/n+3000)*t),
        'two_ssb_audio_tones_above_bin32': np.exp(2j*np.pi*(32*rate/n+1500)*t)+.4*np.exp(2j*np.pi*(32*rate/n+3000)*t),
        'chirp_complex_block': np.exp(2j*np.pi*(100000*t+.5*2e11*t*t)),
    }
    examples = {name: {'qam_only': reconstruct(wave),
                        'qam_plus_explicit_zero_hypothesis': reconstruct(wave, True)}
                for name, wave in waves.items()}
    uniform = rng.uniform(-1, 1, 131072)+1j*rng.uniform(-1, 1, 131072)
    silence = nearest_qam4096(np.zeros(n))
    # Align useful samples to their actual wall-clock positions; the cyclic
    # prefix still duplicates samples N earlier instead of arbitrary targets.
    frequency = 32*rate/n+3000
    target = np.exp(2j*np.pi*frequency*np.arange(n+cp)/rate)
    useful = target[cp:]
    with_cp = np.r_[useful[-cp:], useful]
    encoded = {bcc_encode([(value >> k) & 1 for k in range(8)]) for value in range(256)}
    return {
        'schema_version': 1, 'hardware_access': False, 'rtl_ifft_interface_modeled': False,
        'assumptions': ['Ideal write access to all 256 bins', 'Ideal FFT/IFFT arithmetic except constellation quantization',
                        'No forced pilots, guards, FEC, scrambling, preamble, windowing or RF impairment in reconstruction examples'],
        'square_4096_qam': {'levels_per_real_axis': 64, 'bits_per_real_axis': 6,
                            'normalized_axis_step': 2/63, 'contains_complex_zero': False,
                            'uniform_square_input_snr_db': snr_db(uniform, nearest_qam4096(uniform)),
                            'zero_requested_bins_that_become_nonzero': int(np.count_nonzero(silence))},
        'examples': examples,
        'cyclic_prefix': {'nfft': n, 'cp_samples': cp, 'sample_rate': rate,
                          'target_tone_hz': frequency,
                          'prefix_relative_rms_error_percent': float(100*np.sqrt(np.mean(abs(with_cp[:cp]-target[:cp])**2))),
                          'whole_symbol_evm_percent': float(100*np.sqrt(np.mean(abs(with_cp-target)**2))),
                          'useful_samples_unchanged': bool(np.array_equal(with_cp[cp:], target[cp:]))},
        'coding_constraint_example': {'code': 'BCC rate 1/2, K=7, octal 133/171, fixed zero initial state',
                                      'input_bits': 8, 'encoded_bits': 16,
                                      'reachable_encoded_vectors': len(encoded), 'all_16bit_vectors': 2**16,
                                      'limit': 'Illustrates non-surjectivity; not the RTL8922 EHT LDPC encoder'},
        'bandwidth_math': {
            'raw_cs16_at_20_complex_msps_MBps': 80.,
            'raw_cs16_at_40_complex_msps_MBps': 160.,
            'all_256_12bit_bin_labels_without_cp_MBps': 30.,
            'packing_reduction_32bit_iq_to_12bit_bins_same_degrees_of_freedom': 32/12,
            'eht20_234_data_tones_12bits_with_0_8us_cp_MBps': 234*12/8/13.6,
            'eht20_rate5_6_payload_MBps_before_other_overhead': 234*12*5/6/8/13.6,
            'legacy54_payload_MBps': 6.75,
            'two_decimal_MB_at_legacy54_seconds_before_overhead': 2000000/6750000,
            'two_decimal_MB_at_176MBps_seconds_before_overhead': 2000000/176000000},
        'conclusion': 'Quantized bins do not reconstruct a general waveform exactly. Access to payload bytes is insufficient to freely choose coded constellation labels. A post-mapper bin interface and framing/CP control remain separate requirements.'}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    if args.output.exists():
        parser.error('Use a fresh output path')
    args.output.write_text(json.dumps(analyze(), indent=2)+'\n')


if __name__ == '__main__':
    main()
