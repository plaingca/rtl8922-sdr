#!/usr/bin/env python3
"""Offline dual-tone phase extrapolation across native PAXI packet boundaries.

Never filter across a tested boundary. Independently fit DC, both tones and
images, with local linear amplitude/phase drift, on either side. Interior
pseudo-boundaries measure phase noise. A small result is inconclusive unless
one-sample deletion/duplication controls are resolvable in these same samples.
Single/multiple continuous tones still have modulo-cycle ambiguity.
"""

import argparse
import hashlib
import json
from pathlib import Path

import numpy as np


def wrap(x):
    return np.angle(np.exp(1j * x))


def frequencies(z, rate, expected):
    n = min(1048576, len(z))
    spectrum = np.abs(np.fft.fft(z[:n] * np.hanning(n))) ** 2
    axis = np.fft.fftfreq(n, 1 / rate)
    found = []
    for target in expected:
        eligible = np.abs(axis - target) < 100000
        k = int(np.argmax(np.where(eligible, spectrum, -1)))
        a, b, c = np.log(spectrum[[(k - 1) % n, k, (k + 1) % n]] + 1e-30)
        delta = 0.5 * (a - c) / (a - 2 * b + c)
        found.append(float(axis[k] + delta * rate / n))
    return found


def weights(freqs, rate, window, side):
    t = np.arange(-window, 0) if side == "left" else np.arange(window)
    columns = [np.ones(window), t / window]
    for f in [*freqs, *[-f for f in freqs]]:
        carrier = np.exp(2j * np.pi * f / rate * t)
        columns.extend([carrier, carrier * t / window])
    matrix = np.array(columns).T
    return np.linalg.pinv(matrix)[[2 + 2 * k for k in range(len(freqs))]]


def coefficients(z, boundaries, freqs, rate, window=512):
    left, right = (
        weights(freqs, rate, window, "left"),
        weights(freqs, rate, window, "right"),
    )
    pairs = []
    for start in range(0, len(boundaries), 256):
        b = boundaries[start : start + 256]
        left_coeff = z[b[:, None] + np.arange(-window, 0)] @ left.T
        r = z[b[:, None] + np.arange(window)] @ right.T
        pairs.append(np.stack([left_coeff, r], axis=1))
    return np.concatenate(pairs)


def phase_steps(coeff):
    return np.angle(coeff[:, 1] * coeff[:, 0].conj())


def robust_sigma(x):
    return np.median(np.abs(wrap(x - np.median(x, axis=0))), axis=0) / 0.67448975


def analyze(
    z,
    rate,
    freqs,
    packet=4096,
    ring=163840,
    window=512,
    tested_boundaries=None,
    source_origin=0,
):
    if len(z) < packet * 8 or window > packet // 2:
        raise ValueError(
            "Need at least eight packets and windows no larger than half a packet"
        )
    grid = np.arange(packet, len(z) - window, packet)
    boundaries = (
        grid if tested_boundaries is None else np.asarray(tested_boundaries, dtype=int)
    )
    boundaries = boundaries[(boundaries >= window) & (boundaries + window < len(z))]
    if len(boundaries) < 8:
        raise ValueError("Too few test boundaries")
    controls = grid[grid + packet // 2 + window < len(z)] + packet // 2
    coeff = coefficients(z, boundaries, freqs, rate, window)
    steps = phase_steps(coeff)
    control_steps = phase_steps(coefficients(z, controls, freqs, rate, window))
    bias = np.median(control_steps, axis=0)
    sigma = robust_sigma(control_steps)
    # Empirical 6-sigma screening, with a floor for numerical roundoff.
    threshold = np.maximum(6 * sigma, 1e-6)
    errors = wrap(steps - bias)
    outliers = np.any(np.abs(errors) > threshold, axis=1)
    control_outliers = np.any(np.abs(wrap(control_steps - bias)) > threshold, axis=1)
    sensitivity = np.abs(wrap(2 * np.pi * np.array(freqs) / rate))
    amplitude = np.abs(coeff)
    # Test actual data, including noise, at regularly spread buffer boundaries.
    selected = boundaries[
        np.linspace(2, len(boundaries) - 3, min(128, len(boundaries) - 4), dtype=int)
    ]
    injections = []
    for count in (1, -1, 4096, 163840):
        valid = selected[
            (selected + max(count, 0) + window < len(z))
            & (selected + min(count, 0) >= window)
        ]
        left_coeff = coefficients(z, valid, freqs, rate, window)[:, 0]
        # A deletion advances the right source, duplication delays it. Evaluate
        # windows at the same logical boundary, independently of the left side.
        w = weights(freqs, rate, window, "right")
        r = z[valid[:, None] + count + np.arange(window)] @ w.T
        injected = np.angle(r * left_coeff.conj())
        detected = np.any(np.abs(wrap(injected - bias)) > threshold, axis=1)
        expected = wrap(2 * np.pi * np.array(freqs) * count / rate)
        base = phase_steps(coefficients(z, valid, freqs, rate, window))
        actual_change = wrap(injected - base)
        injections.append(
            dict(
                samples_removed=count,
                trials=len(valid),
                detected=int(detected.sum()),
                expected_phase_rad=expected.tolist(),
                median_added_phase_rad=np.median(actual_change, axis=0).tolist(),
            )
        )
    one_sample_resolved = bool(
        np.all(sensitivity > 2 * threshold)
        and all(r["detected"] == r["trials"] for r in injections[:2])
    )

    def summarize(mask):
        x = errors[mask]
        return dict(
            count=len(x),
            outliers=int(outliers[mask].sum()),
            max_abs_phase_rad=np.max(np.abs(x), axis=0).tolist() if len(x) else [],
        )

    worst = np.argsort(np.max(np.abs(errors) / threshold, axis=1))[-12:][::-1]
    # Preserve per-buffer results in the compact report, not raw received I/Q.
    return dict(
        boundary_samples=packet,
        window_samples_per_side=window,
        analyzed_samples=len(z),
        analyzed_seconds=len(z) / rate,
        tone_frequencies_hz=list(freqs),
        one_sample_phase_rad=sensitivity.tolist(),
        empirical_interior_sigma_rad=sigma.tolist(),
        threshold_rad=threshold.tolist(),
        interior_bias_rad=bias.tolist(),
        interior_control_count=len(controls),
        interior_control_outliers=int(control_outliers.sum()),
        packet_boundaries=summarize(np.ones(len(boundaries), dtype=bool)),
        source_origin_samples=source_origin,
        source_ring_boundaries=summarize((boundaries + source_origin) % ring == 0),
        nominal_128_packet_grid=summarize(boundaries % (packet * 128) == 0),
        median_tone_amplitudes=np.median(amplitude, axis=(0, 1)).tolist(),
        injected_controls=injections,
        one_sample_resolved=one_sample_resolved,
        bounded_phase_check_pass=bool(
            one_sample_resolved and not outliers.any() and not control_outliers.any()
        ),
        worst_boundaries=[
            dict(sample=int(boundaries[k]), phase_rad=errors[k].tolist()) for k in worst
        ],
        phase_noise_model="Empirical robust MAD; RF tails are not assumed Gaussian",
    )


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("reports", nargs="+", type=Path)
    p.add_argument("--output", type=Path, required=True)
    p.add_argument("--window", type=int, default=512)
    args = p.parse_args()
    rows = []
    for path in args.reports:
        report = json.loads(path.read_text())
        packed = np.memmap(report["prefix"], dtype=np.int8, mode="r").reshape(-1, 2)
        z = packed[:, 0].astype(np.float32) + 1j * packed[:, 1].astype(np.float32)
        freqs = frequencies(z, report["sample_rate"], report["nominal_tone_offsets_hz"])
        row = analyze(
            z,
            report["sample_rate"],
            freqs,
            window=args.window,
            source_origin=report.get("source_origin_samples", 0),
        )
        if "read_boundaries" in report:
            app = analyze(
                z,
                report["sample_rate"],
                freqs,
                window=args.window,
                tested_boundaries=report["read_boundaries"],
                source_origin=report.get("source_origin_samples", 0),
            )
            app["read_boundaries"] = app.pop("packet_boundaries")
            row["application_read_boundaries"] = {
                k: v
                for k, v in app.items()
                if k
                not in (
                    "per_boundary_phase_rad",
                    "source_ring_boundaries",
                    "nominal_128_packet_grid",
                )
            }
            row["bounded_phase_check_pass"] &= app["bounded_phase_check_pass"]
        row.update(
            input_report=str(path),
            input_sha256=hashlib.sha256(
                Path(report["prefix"]).read_bytes()
            ).hexdigest(),
            nominal_tone_offsets_hz=report["nominal_tone_offsets_hz"],
            transport_pass=report["transport_pass"],
            restored=report["original_pluto"] == report["restored_pluto"]
            and report["tx_powerdown"] == "1"
            and not report["cleanup_errors"],
        )
        rows.append(row)
        print(
            json.dumps(
                {
                    k: row[k]
                    for k in (
                        "input_report",
                        "one_sample_resolved",
                        "packet_boundaries",
                        "interior_control_outliers",
                        "bounded_phase_check_pass",
                    )
                }
            ),
            flush=True,
        )
    movement = []
    if len(rows) >= 2:
        expected = (
            np.array(rows[0]["nominal_tone_offsets_hz"])
            - rows[1]["nominal_tone_offsets_hz"]
        )
        actual = (
            np.array(rows[0]["tone_frequencies_hz"]) - rows[1]["tone_frequencies_hz"]
        )
        movement = (actual - expected).tolist()
    result = dict(
        analyzer_sha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        scope="Bounded native PAXI 160 MS/s RF phase check; no indefinite or all-gap-size qualification",
        method="Independent one-sided dual-tone/DC/image least squares with local linear drift; empirical interior noise and actual-IQ fault injections",
        movement_error_hz=movement,
        moving_reference_pass=bool(movement and max(map(abs, movement)) < 3000),
        tests=rows,
        unqualified=[
            "Modulo-cycle gaps below the phase/noise discrimination limit",
            "Gaps outside captured prefixes",
            "Indefinite reception and full-band RF fidelity",
        ],
    )
    result["bounded_phase_check_pass"] = (
        all(
            r["bounded_phase_check_pass"] and r["transport_pass"] and r["restored"]
            for r in rows
        )
        and result["moving_reference_pass"]
    )
    args.output.write_text(json.dumps(result, indent=2) + "\n")


if __name__ == "__main__":
    main()
