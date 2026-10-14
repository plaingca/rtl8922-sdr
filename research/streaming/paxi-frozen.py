#!/usr/bin/env python3
"""One bounded passive packet. Wrapper MUST unload the driver after this script."""

import hashlib
import json
import os
from pathlib import Path
import re
import struct
import sys
import time

from hardware import Radio

mode = int(sys.argv[2])
rounds = int(sys.argv[3]) if len(sys.argv) > 3 else 1
block_bytes = int(sys.argv[4]) if len(sys.argv) > 4 else 256
recredit = int(sys.argv[5]) if len(sys.argv) > 5 else 0
hold_delay_ms = int(sys.argv[6]) if len(sys.argv) > 6 else 0
host_service_us = int(sys.argv[7]) if len(sys.argv) > 7 else 0
trace = int(sys.argv[8]) if len(sys.argv) > 8 else 1
refresh_every = int(sys.argv[9]) if len(sys.argv) > 9 else 64
assert mode in (0, 1)
with Radio(sys.argv[1], seconds=60) as radio:
    driver_dir = Path(os.environ["RTL8922_DRIVER_DIR"])
    radio.report["test_parameters"] = {
        "source_mode": mode, "rounds": rounds, "block_bytes": block_bytes,
        "control_mode": recredit, "hold_delay_ms": hold_delay_ms,
        "host_service_us": host_service_us, "resource_trace": trace, "refresh_every": refresh_every,
    }
    radio.report["build_sha256"] = {
        str(path): hashlib.sha256(path.read_bytes()).hexdigest()
        for path in [Path(__file__), driver_dir / "iq-paxi-frozen.c", driver_dir / "iq-paxi-drain.c",
                     driver_dir / "rtw8922a.c", *sorted(driver_dir.glob("*_git.ko"))]
    }
    radio.report["loaded_core_srcversion"] = Path(
        "/sys/module/rtw89_core_git/srcversion"
    ).read_text().strip()
    radio.save()
    radio.setup(40)
    reference = radio.freeze()
    assert len(reference) == 327680 and len(set(reference)) > 4
    cyclic_reference = reference + reference
    expected = (
        reference[:block_bytes] if mode else
        struct.pack("<64I", *(0x91AC0000 ^ k for k in range(128, 192)))
    )
    radio.report["scope"] = "Frozen host-target PAXI TX0 packets; WCPU held until driver teardown"
    radio.report["expected_sha256"] = hashlib.sha256(expected).hexdigest()
    (radio.dbg / "scope_data").write_text("1")
    (radio.dbg / "iq_paxi_frozen").write_text(
        f"{mode} {rounds} {block_bytes} {recredit} {hold_delay_ms} {host_service_us} {trace} {refresh_every}"
    )
    status = (radio.dbg / "iq_paxi_frozen").read_text()
    time.sleep(0.05)
    data = (radio.dbg / "scope_data").read_bytes()
    row = {
        k: int(v, 16 if k in (
            "platform", "platform_before", "dcpu", "base", "index", "busy", "physical", "source", "error",
            "ple_quota", "wde_quota", "fc710", "fc714", "c2h_before", "c2h_after",
            "wcpu_before", "wcpu_after", "hci_rx_index", "pc_before", "pc_after", "base_after", "platform_after",
            "fc710_applied"
        ) or k.startswith(("bd", "originalbd", "before", "after", "watch", "snap", "fp")) and k != "snapshots" else 10)
        for k, v in re.findall(r"(\w+)=([0-9a-f-]+)", status)
    }
    row["host_bytes"] = len(data)
    row["host_packets"] = int((radio.dbg / "scope_packets").read_text())
    row["host_drops"] = int((radio.dbg / "scope_dropped").read_text())
    row["host_header"] = list(struct.unpack_from("<6I", data)) if len(data) >= 24 else None
    offset = 0
    mismatches = []
    framed_packets = 0
    host_block_bytes = block_bytes + (8 if recredit == 6 else 0)
    for packet in range(rounds):
        if offset + 24 + host_block_bytes > len(data):
            break
        header = struct.unpack_from("<6I", data, offset)
        source_offset = packet * block_bytes % 327680
        payload = data[offset + 24:offset + 24 + host_block_bytes]
        target = cyclic_reference[source_offset:source_offset + block_bytes] if mode else expected
        if recredit == 6:
            target = bytes(8) + target
        sequence = 0xFACE0000 if rounds == 1 else packet * (block_bytes // 8)
        if header[0] != host_block_bytes or header[3] != host_block_bytes or header[1] != sequence or payload != target:
            mismatches.append(packet)
        framed_packets += 1
        offset += 24 + host_block_bytes
    row["framed_packets"] = framed_packets
    row["mismatched_packets"] = len(mismatches)
    row["first_mismatched_packets"] = mismatches[:16]
    row["payload_matches"] = framed_packets == rounds and not mismatches and offset == len(data)
    row["payload_sha256"] = hashlib.sha256(data[24:]).hexdigest() if len(data) >= 24 else None
    row["error_register_available"] = row["error"] not in (0xEAEAEAEA, 0xDEADBEEF, 0xFFFFFFFF)
    row["all_device_cpus_quiesced"] = False  # DCPU ownership is unresolved.
    row["passed"] = (
        row["ret"] == 0 and row["completed"] == rounds and row["guard_errors"] == 0
        and (not row["error_register_available"] or row["error"] == 0) and row["payload_matches"]
        and row["host_packets"] == rounds and row["host_drops"] == 0
    )
    row["payload_MBps"] = rounds * block_bytes * 1000 / row["elapsed_ns"] if row["passed"] else None
    radio.report["tests"].append(row)
    radio.save()
    print(json.dumps(row), flush=True)
    if not row["passed"]:
        raise RuntimeError("PAXI gate failed; unload and reinitialize, no live stream")
