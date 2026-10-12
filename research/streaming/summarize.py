#!/usr/bin/env python3
"""Offline aggregate of this investigation's recorded evidence."""

import json
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[2]
OUT = ROOT / "output"


def read(name):
    return json.loads((OUT / name).read_text())


def transport(trial):
    fields = dict(re.findall(r"(\w+)=([^\s]+)", trial["producer"]))
    host = trial["host"]
    elapsed = int(fields["elapsed_ns"]) / 1e9
    counters_clean = all(
        host[k] == 0
        for k in (
            "sequence_gaps",
            "pending_bytes",
            "producer_errno",
            "policy_errno",
            "reader_errno",
            "driver_ret",
        )
    )
    checks = {
        "host_counters_clean": counters_clean,
        "host_fifo_drops_zero": trial["host_drops"] == 0,
        "producer_clean": int(fields["ret"]) == 0 and int(fields["loss"], 16) == 0,
        "requested_duration_completed": elapsed >= 0.99 * trial["requested_seconds"],
        "packet_count_matches": int(fields["packets"]) == host["packets"],
        "record_count_matches_modulo_u32": (host["bytes"] // 8) % (2**32)
        == int(fields["consumed"]),
    }
    return {
        "rate_msps": trial["rate_msps"],
        "account_before_yield": trial["account_before_yield"],
        "requested_seconds": trial["requested_seconds"],
        "producer_seconds": elapsed,
        "bytes": host["bytes"],
        "complex_samples": host["bytes"] // 2,
        "payload_MBps": host["bytes"] / elapsed / 1e6,
        "sequence_counter_wraps": (host["bytes"] // 8) // (2**32),
        "max_backlog_records": int(fields["max_backlog"]),
        "producer_return": int(fields["ret"]),
        "source_guard_reason": int(fields["reason"]),
        "checks": checks,
        "transport_pass": all(checks.values()),
    }


matrix = read("rtl8922-stream-matrix-v1.json")
endurance = read("rtl8922-stream-endurance-v1.json")
assert endurance.get("tx_powerdown") == "1", (
    "Endurance session must finish and clean up first"
)
copy = read("rtl8922-copy-channel-bench.json")
copy_rates = {"virtual": [], "physical_aligned": []}
for row in copy["tests"]:
    if row["ret"] or row["mismatched_words"] or row["active"]:
        continue
    key = "physical_aligned" if row["physical"] else "virtual"
    copy_rates[key].append(row["bytes"] * row["copies"] / row["elapsed_ns"] * 1000)
report = {
    "date": "2026-10-12",
    "sample_format": "signed 8-bit I plus signed 8-bit Q",
    "working_driver_promoted": False,
    "bit29_control": read("rtl8922-copy-control29-bench.json")["tests"],
    "copy_only_MBps": {
        k: {"min": min(v), "max": max(v)} for k, v in copy_rates.items()
    },
    "matrix": [transport(t) for t in matrix["tests"]],
    "endurance": [dict(name=t["name"], **transport(t)) for t in endurance["tests"]],
    "new_coded_waveform_gate_passed": read("rtl8922-stream-coded40-analysis.json")[
        "timing_check_passed"
    ],
    "reference_movement": read("rtl8922-stream-matrix-analysis.json")["pairs"],
    "paxi_bypass_status": "Firmware trace lead only; direct LA-to-host transfer unverified",
    "rate_320_status": "640 MB/s exceeds verified PCIe Gen2 x1 ceiling at 8+8 bits; reduced precision and source mode unverified",
    "limitations": [
        "Transport checks do not establish sample-level continuity or full-band RF fidelity.",
        "A failed coded coherence gate cannot be overridden by packet counters.",
        "No indefinite drop-free guarantee; allocation timeouts and application consumers remain relevant.",
    ],
}
(OUT / "rtl8922-stream-throughput-summary.json").write_text(
    json.dumps(report, indent=2) + "\n"
)
print(json.dumps(report["endurance"], indent=2))
