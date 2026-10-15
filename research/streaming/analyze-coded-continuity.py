#!/usr/bin/env python3
"""Offline fixed-channel timing and explicit deletion controls for 160 MS/s."""

import argparse
import hashlib
import importlib.util
import json
from pathlib import Path

import numpy as np

from coded_timing import RATE, acquire, channel_model, evaluate


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("report", type=Path)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    capture = json.loads(args.report.read_text())
    source = Path(capture["prefix"])
    packed = np.fromfile(source, dtype="i1").reshape(-1, 2)
    z = packed[:, 0].astype("f4") + 1j * packed[:, 1].astype("f4")
    spec = importlib.util.spec_from_file_location(
        "phase", Path(__file__).with_name("analyze-phase-boundaries.py")
    )
    phase = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(phase)
    pilot = phase.frequencies(z, RATE, capture["nominal_tone_offsets_hz"])[0]
    lo_offset = capture["tx_lo"] - capture["center_hz"]
    cfo = pilot - lo_offset - capture["coded_reference"]["pilot_hz"]
    z = z * np.exp(-2j * np.pi * (lo_offset + cfo) * np.arange(len(z)) / RATE)
    ref, coarse, fit = acquire(z)
    model = channel_model(z, ref, fit)
    native = np.arange(4096, len(z), 4096)
    app = np.array(capture["read_boundaries"])
    interiors = native + 2048
    b = np.unique(np.r_[native, app, interiors])
    # Analyze a central interval with a complete one-sided 16k window and
    # an additional source sample available for every injected deletion.
    b = b[(b >= 16384) & (b < len(z) - 16384)]
    result = evaluate(z, model, fit, b)
    rows = []
    for name, positions in [
        ("native_packets", native),
        ("application_reads", app),
        ("interior_controls", interiors),
        (
            "source_ring",
            native[(native + capture["source_origin_samples"]) % 163840 == 0],
        ),
    ]:
        mask = np.isin(result["boundaries"], positions)
        rows.append(
            dict(
                kind=name,
                boundaries=int(mask.sum()),
                max_abs_timing_step_samples=float(np.max(abs(result["steps"][mask])))
                if mask.any()
                else None,
                unresolved_or_failed=int(np.sum(~result["clean"][mask])),
                timing_step_failures=int(np.sum(abs(result["steps"][mask]) >= 0.5)),
                low_code_significance=int(np.sum(~result["quality"][mask])),
            )
        )
    residual = coarse[:, 1] - np.polyval(fit, coarse[:, 0])
    checks = dict(
        transport=capture["transport_pass"],
        restored=capture["original_pluto"] == capture["restored_pluto"]
        and capture["tx_powerdown"] == "1"
        and not capture["cleanup_errors"],
        coarse_timeline_no_jump=bool(np.max(abs(residual)) < 1.5),
        all_boundaries_resolved=bool(result["clean"].all()),
        all_fault_controls_detected=all(
            c["detected"] == c["trials"] for c in result["controls"]
        ),
    )
    worst = np.argsort(abs(result["steps"]))[-12:][::-1]
    report = dict(
        input_report=str(args.report),
        input_sha256=hashlib.sha256(source.read_bytes()).hexdigest(),
        analyzer_sha256={
            p.name: hashlib.sha256(p.read_bytes()).hexdigest()
            for p in [
                Path(__file__),
                Path(__file__).with_name("coded_timing.py"),
                Path(__file__).with_name("continuity_reference.py"),
            ]
        },
        method="Known wideband QPSK code; one fixed 257-tap channel; common complex gain per side; quadratic timing model; no I/Q filtering across tested boundaries",
        sample_rate=RATE,
        center_hz=capture["center_hz"],
        received_samples=len(z),
        analyzed_start_sample=16384,
        analyzed_stop_sample=len(z) - 16384,
        analyzed_seconds=(len(z) - 32768) / RATE,
        pilot_observed_hz=pilot,
        cfo_hz=cfo,
        clock_error_ppm=float(fit[0] * 1e6),
        coarse_timeline_residual_max_samples=float(np.max(abs(residual))),
        window_samples_per_side=result["window_samples"],
        channel_training_periods=32,
        minimum_code_projection_snr=float(result["projection_snr"].min()),
        confidence_control="Four wrong-code lags in each same window; matched projection must exceed null RMS by 6x",
        tests=rows,
        controls=result["controls"],
        checks=checks,
        passed=all(checks.values()),
        worst_boundaries=[
            dict(
                sample=int(result["boundaries"][i]),
                step_samples=float(result["steps"][i]),
            )
            for i in worst
        ],
        limits=[
            "Bounded received interval only",
            "RF reference at 2447 MHz center; not full-band fidelity",
            "Periodic-code whole-cycle ambiguity beyond the source-ring guard bound",
            "Single deletions/duplications at tested boundaries; no universal claim for cancelling paired edits within a window",
        ],
    )
    args.output.write_text(json.dumps(report, indent=2) + "\n")
    print(
        json.dumps(
            {
                k: report[k]
                for k in (
                    "passed",
                    "clock_error_ppm",
                    "coarse_timeline_residual_max_samples",
                    "tests",
                    "controls",
                    "checks",
                )
            }
        ),
        flush=True,
    )


if __name__ == "__main__":
    main()
