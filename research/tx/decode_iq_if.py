#!/usr/bin/env python3
"""Offline two-image IF decoder. Unknown I/Q labels participate only in scoring.

U=g*exp(j*theta)*m and L=g/r*exp(j*theta)*(m-1), so U-r*L supplies
a phase reference independent of m. Known m=1/2 symbols determine r.
Finite 40-ms levels are averaged; this is not a wideband SDR qualification.
"""

import argparse
import hashlib
import json
from pathlib import Path

import numpy as np


def tls_ratio(u, l):
    """Fit U+r*L=0 with equal noise in the two same-bandwidth envelopes."""
    covariance = np.array([[np.vdot(u, u), np.vdot(u, l)],
                           [np.vdot(l, u), np.vdot(l, l)]])
    eigenvalues, vectors = np.linalg.eigh(covariance)
    if abs(vectors[0, 0]) < 1e-8:
        raise ValueError('Reference cannot determine the image ratio')
    ratio = vectors[1, 0] / vectors[0, 0]
    return ratio, float(max(eigenvalues[0], 0) / len(u))


def decode(trace, plan, alignment=None):
    t, upper, lower = (np.asarray(trace[k]) for k in ('t', 'output', 'image'))
    if not (t.ndim == 1 and upper.shape == lower.shape == t.shape):
        raise ValueError('Both time-aligned spectral images are required')
    states = np.asarray(trace['states'])
    events = np.asarray(trace['events'])
    if states.shape != (len(events), 2) or not np.array_equal(states, events[:, 1:]):
        raise ValueError('State labels and actual write events disagree')
    training, references, payload = (np.asarray(plan[k], dtype=int) for k in
                                    ('training_indices', 'reference_indices', 'payload_indices'))
    if (set(training) & set(payload) or set(references) & set(payload)
            or set(training) | set(references) | set(payload) != set(range(len(states)))):
        raise ValueError('Training/reference/payload ownership is invalid')
    if not np.all(states[references] == (512, 0)):
        raise ValueError('Every image-ratio reference must be known m=1/2')
    good = (np.asarray(trace['clip']) == 0) & (np.asarray(trace['rms']) < float(trace['quiet_limit']))
    pilot = good & (t < .065)
    if pilot.sum() < 30:
        raise ValueError('Insufficient clean initial pilot')
    pilot_amplitude = float(np.median(abs(upper[pilot])))
    if alignment is None:
        amplitude = np.convolve(abs(upper), np.ones(25)/25, mode='same')
        onset = np.flatnonzero(good & (t > .08) & (amplitude < .25*pilot_amplitude))
        if not len(onset):
            raise ValueError('Initial pilot-to-zero transition not found')
        alignment = float(t[onset[0]] - events[0, 0])
    edges = events[:, 0] + alignment
    state_id = np.searchsorted(edges, t, side='right') - 1
    good &= (state_id >= 0) & (state_id < len(states)) & (t < edges[-1] + .034)
    for edge in edges:
        good &= abs(t-edge) > .006
    masks = [good & (state_id == k) for k in range(len(states))]
    counts = np.asarray([v.sum() for v in masks])
    if np.min(counts[payload]) < 32:
        raise ValueError(f'Insufficient clean payload samples: minimum {np.min(counts[payload])}')
    # Ambient bursts can erase known training symbols. Use surviving known
    # symbols only; every unknown payload symbol must still be observed.
    usable = np.flatnonzero(counts >= 32)
    requested_training = training.copy()
    training = np.intersect1d(training, usable)
    references = np.intersect1d(references, usable)
    required_axes = {(0, 0), (-512, 0), (512, 0), (0, -512), (0, 512)}
    if not required_axes <= {tuple(v) for v in states[training]}:
        raise ValueError('Clean training does not cover both signed I/Q axes and zero')
    if len(references) < 3 or references[0] > payload[0] or references[-1] < payload[-1]:
        raise ValueError('Clean known references must bracket the payload')
    # Differential DDS frequency uses fixed known references, including those
    # interleaved with the payload. Unknown payload values never enter this fit.
    # Common oscillator drift can be arbitrary and cancels point by point.
    cal = good & np.isin(state_id, references)
    ct, cu, cl = t[cal], upper[cal], lower[cal]
    center = float(ct.mean())

    def fit(frequency):
        return tls_ratio(cu, cl*np.exp(2j*np.pi*frequency*(ct-center)))

    frequency = min(np.arange(-20, 20.001, .02), key=lambda f: fit(f)[1])
    frequency = min(np.arange(frequency-.04, frequency+.041, .001), key=lambda f: fit(f)[1])
    # Known reference symbols within the payload track slow differential
    # phase drift. Their values and placement are fixed before transmission.
    reference_t, reference_ratio, reference_errors = [], [], []
    for index in references:
        v = masks[index]
        ratio, error = tls_ratio(upper[v], lower[v]*np.exp(2j*np.pi*frequency*(t[v]-center)))
        reference_t.append(float(t[v].mean()))
        reference_ratio.append(ratio)
        reference_errors.append(error)
    order = np.argsort(reference_t)
    reference_t = np.asarray(reference_t)[order]
    reference_ratio = np.asarray(reference_ratio)[order]
    reference_errors = np.asarray(reference_errors)[order]
    ratio = (np.interp(t, reference_t, abs(reference_ratio)) *
             np.exp(1j*np.interp(t, reference_t, np.unwrap(np.angle(reference_ratio)))) *
             np.exp(2j*np.pi*frequency*(t-center)))
    difference = upper-ratio*lower
    # Per-level coherent correlation avoids dividing individual noisy samples.
    # Every state uses identical averaging, without its requested I/Q value.
    observed = np.full(len(states), np.nan+1j*np.nan)
    for index in usable:
        v = masks[index]
        observed[index] = np.vdot(difference[v], upper[v]) / np.vdot(difference[v], difference[v])
    design = np.c_[np.ones(len(training)), states[training]/1024]
    matrix = np.linalg.lstsq(design, np.c_[observed[training].real, observed[training].imag], rcond=None)[0]
    condition = float(np.linalg.cond(matrix[1:]))
    if not np.isfinite(condition) or condition > 100:
        raise ValueError('Calibration did not identify two independent I/Q axes')
    reconstructed = (np.c_[observed.real, observed.imag] - matrix[0]) @ np.linalg.inv(matrix[1:])
    # The held-out labels are first read here, after alignment and all fits.
    expected = states[payload]/1024
    recovered = reconstructed[payload]
    mse = float(np.mean(np.sum((recovered-expected)**2, axis=1)))
    signal = float(np.mean(np.sum(expected**2, axis=1)))
    snr = float(10*np.log10(max(signal, 1e-20)/max(mse, 1e-20)))
    # A one-symbol shift is still very similar for smooth waveforms. Use a
    # fixed random permutation; never select the control from the RF result.
    permutation = np.random.default_rng(8922).permutation(len(expected))
    shuffled_mse = float(np.mean(np.sum((recovered-expected[permutation])**2, axis=1)))
    shuffled_snr = float(10*np.log10(max(signal, 1e-20)/max(shuffled_mse, 1e-20)))
    train_mse = float(np.mean(np.sum((reconstructed[training]-states[training]/1024)**2, axis=1)))
    gates = {'heldout_complex_level_snr_at_least_20db': snr >= 20,
             'two_axis_condition_below_3': condition < 3,
             'wrong_sequence_snr_below_3db': shuffled_snr < 3,
             'all_payload_states_at_least_32_clean_points': bool(np.min(counts[payload]) >= 32)}
    return {'experimental': True, 'wideband_arbitrary_iq_tx_demonstrated': False,
            'finite_complex_if_sequence_demonstrated': bool(all(gates.values())),
            'gates': gates, 'method': 'Known references determine U-rL; coherent per-level correlation; training-only affine I/Q calibration',
            'unknown_payload_values_used_in_fitting': False,
            'rx_alignment_seconds': alignment, 'pilot_amplitude': pilot_amplitude,
            'differential_image_frequency_hz': float(frequency),
            'reference_times_seconds': reference_t.tolist(),
            'reference_ratios_real_imag': [[float(z.real), float(z.imag)] for z in reference_ratio],
            'reference_tls_noise_eigenvalues': reference_errors.tolist(),
            'reference_indices_used': references.tolist(),
            'training_indices_used': training.tolist(),
            'discarded_training_indices': np.setdiff1d(requested_training, training).tolist(),
            'forward_affine_matrix': matrix.tolist(), 'axis_condition': condition,
            'train_complex_mse': train_mse, 'heldout_complex_mse': mse,
            'heldout_signal_power': signal, 'heldout_snr_db': snr,
            'heldout_evm_percent': float(100*np.sqrt(mse/max(signal, 1e-20))),
            'wrong_sequence_snr_db': shuffled_snr,
            'wrong_sequence_fixed_permutation': permutation.tolist(),
            'payload_indices': payload.tolist(), 'payload_requested_iq_codes': states[payload].tolist(),
            'payload_reconstructed_iq_codes': (recovered*1024).tolist(),
            'clean_points_per_state': counts.tolist(), 'total_points': len(t),
            'excluded_fraction': float(1-good.mean()),
            'dwell_seconds': float(plan['dwell_seconds']),
            'constraints': ['Finite sequence with reference symbols', 'Host-paced 40 ms holds',
                            'Strong complementary spectral image', 'No DAC waveform RAM or hardware sample clock identified']}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--trace', type=Path, required=True)
    parser.add_argument('--source-report', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    if args.output.exists():
        parser.error('Use a fresh output path')
    source = json.loads(args.source_report.read_text())
    measurement = source['iq_if_modulation']
    plan = measurement['if_schedule']
    with np.load(args.trace, allow_pickle=False) as trace:
        result = decode(trace, plan)
    result['source_report'] = str(args.source_report.resolve())
    result['source_report_sha256'] = hashlib.sha256(args.source_report.read_bytes()).hexdigest()
    result['private_trace_sha256'] = hashlib.sha256(args.trace.read_bytes()).hexdigest()
    result['decoder_sha256'] = hashlib.sha256(Path(__file__).read_bytes()).hexdigest()
    args.output.write_text(json.dumps(result, indent=2) + '\n')
    print(json.dumps({k: result[k] for k in ('finite_complex_if_sequence_demonstrated', 'heldout_snr_db', 'heldout_evm_percent', 'axis_condition')}, indent=2))


if __name__ == '__main__':
    main()
