#!/usr/bin/env python3
"""One bounded passive/reference PAXI trial; wrapper must unload afterward."""

import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys
import threading
import time

import numpy as np

from hardware import Radio, ROOT

output = Path(sys.argv[1])
rate = int(sys.argv[2])
seconds = float(sys.argv[3])
block_bytes = int(sys.argv[4]) if len(sys.argv) > 4 else 8192
static_ring = bool(int(sys.argv[5])) if len(sys.argv) > 5 else False
burst = int(sys.argv[6]) if len(sys.argv) > 6 else 1
kind = sys.argv[7] if len(sys.argv) > 7 else "passive"
offset_hz = float(sys.argv[8]) if len(sys.argv) > 8 else 250000
prefix_bytes = int(sys.argv[9]) if len(sys.argv) > 9 else 262144
tx_gain = float(sys.argv[10]) if len(sys.argv) > 10 else -10
tx_amplitude = float(sys.argv[11]) if len(sys.argv) > 11 else 22000
symbol_rate = int(sys.argv[12]) if len(sys.argv) > 12 else 1000000
assert burst in (1, 4)
assert rate in (40, 80, 160) and 0 < seconds <= 60
assert kind in ("passive", "tone", "coded")
assert kind == "passive" or seconds <= 3
assert 0 < prefix_bytes <= 512 * 1024**2
assert shutil.disk_usage(ROOT).free > prefix_bytes + 1024**3
assert -89.75 <= tx_gain <= 0 and 0 < tx_amplitude <= 32700
assert symbol_rate in (250000, 1000000)
artifact = ROOT / "build-streaming" / output.stem
with Radio(output, seconds=int(seconds) + 30) as radio:
    driver_dir = Path(os.environ["RTL8922_DRIVER_DIR"])
    radio.report["scope"] = "Bounded live PAXI; transport/source guards, not sample-level RF qualification"
    radio.report["rate_msps"] = rate
    radio.report["requested_seconds"] = seconds
    radio.report["rf_kind"] = kind
    radio.report["tone_offset_hz"] = offset_hz if kind != "passive" else None
    radio.report["tx_gain_db"] = tx_gain if kind != "passive" else None
    radio.report["tx_amplitude"] = tx_amplitude if kind != "passive" else None
    radio.report["symbol_rate"] = symbol_rate if kind == "coded" else None
    radio.report["build_sha256"] = {
        str(path): hashlib.sha256(path.read_bytes()).hexdigest()
        for path in (Path(__file__), driver_dir / "iq-paxi-frozen.c", driver_dir / "iq-paxi-drain.c",
                     driver_dir / "rtw8922a.c", ROOT / "build-streaming/raw-stream",
                     *sorted(driver_dir.glob("*_git.ko")))
    }
    radio.report["loaded_core_srcversion"] = Path(
        "/sys/module/rtw89_core_git/srcversion"
    ).read_text().strip()
    radio.save()
    radio.setup(rate)
    radio.freeze()  # Stop/reset the writer before the private-ring takeover.
    (radio.dbg / "iq_sample_rate").write_text(str(rate * 1000000 // 4))
    (radio.dbg / "iq_chunk_bytes").write_text(str(block_bytes))
    (radio.dbg / "iq_paxi_disable_watchdog").write_text("Y")
    if static_ring:
        (radio.dbg / "iq_paxi_static_ring").write_text("Y")
        (radio.dbg / "iq_paxi_burst").write_text(str(burst))
    (radio.dbg / "iq_drain").write_text("1")
    timer = None
    tx_lock = threading.Lock()
    tx_expired = False

    def mute():
        with tx_lock:
            radio.lo.attrs["powerdown"].value = "1"

    def expire():
        global tx_expired
        with tx_lock:
            tx_expired = True
            radio.lo.attrs["powerdown"].value = "1"

    try:
        if kind != "passive":
            s = radio.pluto
            s.sample_rate = 4000000
            s.tx_rf_bandwidth = 3000000
            s.tx_lo = {40: 2422000000, 80: 5210000000, 160: 5250000000}[rate]
            s.tx_cyclic_buffer = True
            s.tx_hardwaregain_chan0 = -89.75
            if kind == "coded":
                rng = np.random.default_rng(8922)
                symbol_count = 32768 * symbol_rate // 1000000
                symbols = (2 * rng.integers(0, 2, symbol_count) - 1) + 1j * (
                    2 * rng.integers(0, 2, symbol_count) - 1
                )
                wave = np.repeat(symbols, 4000000 // symbol_rate) / np.sqrt(2)
            else:
                wave = np.ones(16384, dtype=np.complex64)
            wave *= np.exp(2j * np.pi * offset_hz / s.sample_rate * np.arange(len(wave)))
            # Serialize deadline muting and enabling, including slow TX setup.
            tx_deadline = time.monotonic() + 5
            timer = threading.Timer(5, expire)
            timer.start()
            s.tx(tx_amplitude * wave)
            with tx_lock:
                if tx_expired or time.monotonic() >= tx_deadline:
                    raise TimeoutError("TX setup exceeded bounded deadline")
                s.tx_hardwaregain_chan0 = tx_gain
                radio.lo.attrs["powerdown"].value = "0"
        result = subprocess.run(
            [str(ROOT / "build-streaming/raw-stream"), str(radio.dbg), str(seconds),
             str(artifact.with_suffix(".bin")), str(prefix_bytes), "iq_paxi_stream"],
            capture_output=True, text=True, timeout=seconds + 15,
        )
    finally:
        try:
            mute()
        finally:
            if timer:
                timer.cancel()
                timer.join()
    artifact.with_suffix(".log").write_text(result.stderr)
    host = json.loads(result.stdout)
    status = (radio.dbg / "iq_paxi_stream").read_text()
    hex_names = {
        "platform", "platform_before", "dcpu", "base", "index", "busy", "physical", "source", "error",
        "ple_quota", "wde_quota", "fc710", "fc714", "c2h_before", "c2h_after", "wcpu_before", "wcpu_after",
        "hci_rx_index", "pc_before", "pc_after", "base_after", "platform_after", "fc710_applied",
        "source_state", "source_loss",
    }
    driver = {
        k: int(v, 16 if k in hex_names or
               (k.startswith(("bd", "originalbd", "before", "after", "watch", "snap", "fp"))
                and k != "snapshots") else 10)
        for k, v in re.findall(r"(\w+)=([0-9a-f-]+)", status)
    }
    host_packets = int((radio.dbg / "scope_packets").read_text())
    host_drops = int((radio.dbg / "scope_dropped").read_text())
    measured_msps = driver["consumed"] * 4000 / driver["elapsed_ns"] if driver["elapsed_ns"] else 0
    checks = {
        "reader_clean": result.returncode == 0,
        "source_clean": driver["ret"] == 0 and driver["source_guard"] == 0,
        "scratch_guards_clean": driver["guard_errors"] == 0,
        "full_duration": driver["elapsed_ns"] >= seconds * 0.98e9,
        "correct_rate": rate * 0.98 <= measured_msps <= rate * 1.02,
        "packet_counts_match": host["packets"] == driver["completed"] == host_packets,
        "byte_counts_match": host["bytes"] == driver["consumed"] * 8,
        "no_host_drops": host_drops == 0,
        "tracking_quiesced": driver.get("tracking_quiesced") == 1,
        "held_cpu_watchdog_disabled": driver["watchdog_disabled"] == 1
        and driver["watchheld18003040"] == driver["watchpost18003040"] == 0
        and not (driver["watchpost18003044"] & 0x100)
        and not (driver["watchpost1a4"] & (1 << 22)),
    }
    row = {"host": host, "driver": driver, "checks": checks,
           "measured_msps": measured_msps, "transport_pass": all(checks.values()),
           "prefix": str(artifact.with_suffix(".bin"))}
    radio.report["tests"].append(row)
    radio.save()
    print(json.dumps({"checks": checks, "measured_msps": measured_msps,
                      "transport_pass": row["transport_pass"],
                      "ret": driver["ret"], "completed": driver["completed"],
                      "max_backlog": driver["max_backlog"], "source_guard": driver["source_guard"]}), flush=True)
    if not row["transport_pass"]:
        raise RuntimeError("Live PAXI transport gate failed; mandatory teardown")
