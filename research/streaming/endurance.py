#!/usr/bin/env python3
"""Manual 40 MS/s trial: coded prefix then bounded passive endurance."""

import json
import shutil
import subprocess
import sys
import time

import numpy as np

from hardware import Radio, ROOT


seconds = float(sys.argv[2]) if len(sys.argv) > 2 else 900
assert 1 <= seconds <= 1800
artifact = ROOT / "build-streaming"
assert shutil.disk_usage(artifact).free > 1024**3


def mute(radio):
    radio.pluto.tx_hardwaregain_chan0 = -89.75
    radio.pluto.tx_destroy_buffer()
    radio.lo.attrs["powerdown"].value = "1"


with Radio(sys.argv[1], seconds=int(seconds + 90)) as radio:
    radio.setup(40)
    (radio.dbg / "iq_pipeline").write_text("Y")
    (radio.dbg / "iq_account_before_yield").write_text("N")
    (radio.dbg / "iq_chunk_bytes").write_text("8192")
    (radio.dbg / "iq_sample_rate").write_text("10000000")
    s = radio.pluto
    mute(radio)
    s.sample_rate = 4000000
    s.tx_rf_bandwidth = 3000000
    s.tx_lo = 2422000000
    s.tx_cyclic_buffer = True
    rng = np.random.default_rng(8922)
    symbols = (2 * rng.integers(0, 2, 32768) - 1) + 1j * (
        2 * rng.integers(0, 2, 32768) - 1
    )
    wave = np.repeat(symbols, 4) / np.sqrt(2)
    wave *= np.exp(2j * np.pi * 250000 / s.sample_rate * np.arange(len(wave)))
    s.tx(22000 * wave)
    s.tx_hardwaregain_chan0 = 0
    radio.lo.attrs["powerdown"].value = "0"
    time.sleep(0.1)
    for name, duration, limit in [
        ("coded40", 1, 20000000),
        ("endurance40", seconds, 262144),
    ]:
        if name == "endurance40":
            mute(radio)
        (radio.dbg / "iq_drain").write_text("1")
        capture = artifact / (name + ".bin")
        # Save progress separately so the whole-duration drain is observable.
        with (artifact / (name + ".log")).open("w") as progress:
            result = subprocess.run(
                [
                    str(artifact / "raw-stream"),
                    str(radio.dbg),
                    str(duration),
                    str(capture),
                    str(limit),
                ],
                stdout=subprocess.PIPE,
                stderr=progress,
                text=True,
                timeout=duration + 15,
            )
        row = {
            "name": name,
            "rate_msps": 40,
            "account_before_yield": False,
            "requested_seconds": duration,
            "returncode": result.returncode,
            "host": json.loads(result.stdout),
            "producer": (radio.dbg / "iq_stream").read_text(),
            "host_drops": int((radio.dbg / "scope_dropped").read_text()),
            "tx_on": name == "coded40",
            "capture_bytes_limit": limit,
        }
        radio.report["tests"].append(row)
        radio.save()
        print(json.dumps(row), flush=True)
        if result.returncode or row["host_drops"]:
            raise RuntimeError(
                "Continuity failure; stop without restarting or concealing it"
            )
