#!/usr/bin/env python3
"""Explicit bounded passive experiment; never run automatically or in CI."""

import hashlib
import json
import re
import sys

from hardware import Radio

with Radio(sys.argv[1], seconds=150) as radio:
    radio.setup(40)
    reference = radio.freeze()
    assert len(reference) == 327680 and len(set(reference)) > 4
    radio.report["reference_sha256"] = hashlib.sha256(reference).hexdigest()
    radio.report["scope"] = "Frozen passive LA-to-PLE copies; excludes host delivery and live writer"
    for physical in (1, 0):
        for lanes in (1, 2, 4):
            (radio.dbg / "iq_parallel_copybench").write_text(f"{lanes} {physical} 8192 10")
            status = (radio.dbg / "iq_parallel_copybench").read_text()
            row = {
                k: int(v, 16 if k in ("active", "monitor") else 10)
                for k, v in re.findall(r"(\w+)=([0-9a-f-]+)", status)
            }
            row["valid_copy"] = (
                not any(row[k] for k in ("ret", "active", "mismatched_words", "guard_errors"))
                and row["completed"] == row["rounds"]
                and row["monitor"] == 0
            )
            row["dma_MBps"] = (
                row["lanes"] * row["bytes"] * row["completed"] * 1000 / row["dma_ns"]
                if row["valid_copy"] and row["dma_ns"] else None
            )
            radio.report["tests"].append(row)
            radio.save()
            print(json.dumps(row), flush=True)
            if row["ret"] == -28 and not row["active"]:
                continue
            if not row["valid_copy"]:
                raise RuntimeError("Parallel DMA failed validation; stop and unload")
