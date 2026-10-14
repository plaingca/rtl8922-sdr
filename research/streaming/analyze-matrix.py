#!/usr/bin/env python3
"""Offline analysis of bounded raw prefixes; never opens hardware."""

import argparse
import hashlib
import json
from pathlib import Path
import re

import numpy as np

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument("report", type=Path)
parser.add_argument("prefix_dir", type=Path)
parser.add_argument("output", type=Path)
args = parser.parse_args()
source = json.loads(args.report.read_text())
rows = []
for trial in source["tests"]:
    rate, account, offset = (
        trial[k] for k in ("rate_msps", "account_before_yield", "tone_offset_hz")
    )
    path = args.prefix_dir / f"prefix-{rate}-{int(account)}-{offset}.bin"
    data = path.read_bytes()
    iq = np.frombuffer(data, dtype=np.int8).reshape(-1, 2)
    z = iq[:, 0].astype(float) + 1j * iq[:, 1]
    power = abs(np.fft.fft((z - z.mean()) * np.hanning(len(z)))) ** 2
    freq = np.fft.fftfreq(len(z), 1 / (rate * 1e6))
    # Declared after seeing the fixed spur: report both the global peak and
    # a broad, fixed +/-1 MHz reference band, excluding only +/-20 kHz DC.
    selected = np.flatnonzero((abs(freq) > 20000) & (abs(freq) <= 1000000))
    k = selected[np.argmax(power[selected])]
    fields = dict(re.findall(r"(\w+)=([^\s]+)", trial["producer"]))
    elapsed = int(fields["elapsed_ns"]) / 1e9
    clean = trial["returncode"] == 0 and trial["host_drops"] == 0
    clean &= int(fields["ret"]) == 0 and int(fields["loss"], 16) == 0
    clean &= elapsed >= 0.99 * trial["requested_seconds"]
    rows.append(
        {
            "rate_msps": rate,
            "account_before_yield": account,
            "tone_offset_hz": offset,
            "global_peak": trial["fft"],
            "reference_band_peak_hz": float(freq[k]),
            "reference_peak_median_db": float(
                10 * np.log10(power[k] / np.median(power))
            ),
            "fft_bin_hz": rate * 1e6 / len(z),
            "prefix_sha256": hashlib.sha256(data).hexdigest(),
            "producer_seconds": elapsed,
            "host_bytes": trial["host"]["bytes"],
            "full_requested_duration_transport_pass": bool(clean),
            "source_guard_reason": int(fields["reason"]),
            "max_backlog_records": int(fields["max_backlog"]),
        }
    )
pairs = []
for first, second in zip(rows[::2], rows[1::2]):
    movement = first["reference_band_peak_hz"] - second["reference_band_peak_hz"]
    peak_ok = all(
        abs(r["reference_band_peak_hz"] - r["tone_offset_hz"]) <= 50000
        and r["reference_peak_median_db"] >= 18
        for r in (first, second)
    )
    pairs.append(
        {
            "rate_msps": first["rate_msps"],
            "account_before_yield": first["account_before_yield"],
            "measured_movement_hz": movement,
            "reference_movement_pass": bool(peak_ok and abs(movement - 500000) <= 3000),
        }
    )
result = {
    "source_report": str(args.report),
    "trials": rows,
    "pairs": pairs,
    "analysis_scope": "Post-hoc reference-band analysis; global peaks preserved. "
    "Reference movement does not establish wideband fidelity or long-run sample continuity.",
}
args.output.write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(pairs, indent=2))
