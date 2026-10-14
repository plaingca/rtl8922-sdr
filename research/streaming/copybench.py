#!/usr/bin/env python3
"""Manual, bounded hardware diagnostic; never run as an automatic test."""

import hashlib
import json
import re
import sys
from hardware import Radio

mode = sys.argv[2] if len(sys.argv) > 2 else "channels"
assert mode in ("channels", "control29")

with Radio(sys.argv[1]) as radio:
    radio.setup(40)
    reference = radio.freeze()
    assert len(reference) == 327680 and len(set(reference)) > 4
    radio.report["reference_sha256"] = hashlib.sha256(reference).hexdigest()
    radio.report["rf_scope"] = (
        "Passive frozen samples; copy fidelity only, no TX or RF qualification"
    )
    cases = [
        (channel, physical, 0, staged)
        for channel in (5, 4, 3, 2)
        for physical in (0, 1)
        for staged in (0, 1)
    ]
    # Bit 28 failed the full-data comparison in the first run. Do not reuse it.
    if mode == "control29":
        cases = [(5, physical, 0x20000000, 1) for physical in (0, 1)]
    for channel, physical, flags, staged in cases:
        (radio.dbg / "iq_copybench").write_text(
            f"{channel} {flags:x} {physical} {staged} 8192"
        )
        status = (radio.dbg / "iq_copybench").read_text()
        row = {
            k: int(v, 16 if k in ("flags", "ctrl", "busy", "monitor") else 10)
            for k, v in re.findall(r"(\w+)=([0-9a-f-]+)", status)
        }
        row["valid_copy"] = not (row["ret"] or row["active"] or row["mismatched_words"])
        row["MBps"] = (
            row["bytes"] * row["copies"] * 1000 / row["elapsed_ns"]
            if row["elapsed_ns"] and row["valid_copy"]
            else None
        )
        radio.report["tests"].append(row)
        radio.save()
        print(json.dumps(row), flush=True)
        if row["ret"] == -28 and not row["active"]:
            continue  # Fragmented PLE allocation; physical mode unavailable.
        if row["ret"] or row["active"] or row["mismatched_words"]:
            raise RuntimeError("DMA variant failed; stop before trying another channel")
