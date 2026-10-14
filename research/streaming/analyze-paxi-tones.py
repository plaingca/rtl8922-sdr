#!/usr/bin/env python3
"""Offline paired-tone check of bounded native i8 PAXI prefixes."""

import json
from pathlib import Path
import sys

import numpy as np

root = Path(__file__).resolve().parents[2]
rows = []
for rate in (80, 160):
    pair = []
    for offset in (250000, -250000):
        path = root / f"output/rtl8922-paxi-tone{rate}-{offset}-20261013.json"
        report = json.loads(path.read_text())
        trial = report["tests"][0]
        packed = np.fromfile(trial["prefix"], dtype="i1")
        z = packed.astype("f4").view("c8")
        n = 262144
        spectra = [np.abs(np.fft.fft(z[k:k+n] * np.hanning(n)))**2
                   for k in range(0, len(z)-n+1, n)]
        power = np.mean(spectra, axis=0)
        frequency = np.fft.fftfreq(n, 1 / (rate * 1e6))
        eligible = np.abs(frequency) > 50000  # Retain DC separately.
        peak = np.argmax(np.where(eligible, power, -1))
        pair.append({
            "input_report": str(path.relative_to(root)),
            "offset_hz": offset,
            "peak_hz": float(frequency[peak]),
            "above_median_db": float(10 * np.log10(power[peak] / np.median(power))),
            "transport_pass": trial["transport_pass"],
            "dc_power": float(power[0]),
            "restored": report["original_pluto"] == report["restored_pluto"]
            and report["tx_powerdown"] == "1" and not report["cleanup_errors"],
        })
    movement = pair[0]["peak_hz"] - pair[1]["peak_hz"]
    checks = {
        "both_transport_pass": all(row["transport_pass"] for row in pair),
        "both_restored": all(row["restored"] for row in pair),
        "both_positions_within_3khz": all(abs(row["peak_hz"] - row["offset_hz"]) < 3000 for row in pair),
        "movement_within_3khz": abs(movement - 500000) < 3000,
        "both_above_median_15db": all(row["above_median_db"] > 15 for row in pair),
    }
    rows.append({"rate_msps": rate, "tones": pair, "movement_hz": movement,
                 "checks": checks, "passed": all(checks.values())})
result = {"scope": "Paired narrowband RF references; not full-band fidelity or continuity",
          "tests": rows, "passed": all(row["passed"] for row in rows)}
Path(sys.argv[1]).write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
