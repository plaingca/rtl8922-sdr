#!/usr/bin/env python3
"""Manual paired streaming trial, with bounded storage and TX restoration."""

import json
import subprocess
import sys
import time
import numpy as np
from hardware import Radio, ROOT

seconds = 60
artifact = ROOT / "build-streaming"


def tone(radio, center, offset):
    s = radio.pluto
    s.tx_hardwaregain_chan0 = -89.75
    s.tx_destroy_buffer()
    radio.lo.attrs["powerdown"].value = "1"
    s.sample_rate = 4000000
    s.tx_rf_bandwidth = 3000000
    s.tx_lo = center
    s.tx_cyclic_buffer = True
    n = np.arange(16384)
    s.tx(16384 * np.exp(2j * np.pi * offset / s.sample_rate * n))
    s.tx_hardwaregain_chan0 = -10
    radio.lo.attrs["powerdown"].value = "0"


def fft(path, rate):
    data = np.fromfile(path, dtype=np.int8).reshape(-1, 2)
    if len(data) < 16384:
        return {"samples": len(data), "valid": False}
    z = data[:, 0].astype(float) + 1j * data[:, 1]
    z -= z.mean()
    p = np.abs(np.fft.fft(z * np.hanning(len(z)))) ** 2
    f = np.fft.fftfreq(len(z), 1 / (rate * 1e6))
    p[abs(f) < 20000] = 0
    k = int(np.argmax(p))
    return {
        "samples": len(z),
        "peak_hz": float(f[k]),
        "peak_median_db": float(10 * np.log10(p[k] / max(np.median(p), 1e-20))),
    }


if __name__ == "__main__":
    seconds = float(sys.argv[2]) if len(sys.argv) > 2 else 60
    with Radio(sys.argv[1], seconds=int(2 * seconds + 120)) as radio:
        for rate, account, duration in (
            (40, False, seconds),
            (40, True, seconds),
            (80, True, 2),
            (160, True, 2),
        ):
            for offset in (250000, -250000):
                radio.setup(rate)
                tone(
                    radio,
                    {40: 2422000000, 80: 5210000000, 160: 5250000000}[rate],
                    offset,
                )
                time.sleep(0.1)
                (radio.dbg / "iq_pipeline").write_text("Y")
                (radio.dbg / "iq_account_before_yield").write_text(
                    "Y" if account else "N"
                )
                (radio.dbg / "iq_chunk_bytes").write_text("8192")
                (radio.dbg / "iq_sample_rate").write_text(str(rate * 1000000 // 4))
                (radio.dbg / "iq_drain").write_text("1")
                capture = artifact / f"prefix-{rate}-{int(account)}-{offset}.bin"
                trial_duration = duration if offset > 0 else 2
                result = subprocess.run(
                    [
                        str(artifact / "raw-stream"),
                        str(radio.dbg),
                        str(trial_duration),
                        str(capture),
                        "262144",
                    ],
                    capture_output=True,
                    text=True,
                    timeout=trial_duration + 10,
                )
                row = {
                    "rate_msps": rate,
                    "account_before_yield": account,
                    "requested_seconds": trial_duration,
                    "tone_offset_hz": offset,
                    "returncode": result.returncode,
                    "host": json.loads(result.stdout),
                    "producer": (radio.dbg / "iq_stream").read_text(),
                    "stderr": result.stderr,
                    "host_drops": int((radio.dbg / "scope_dropped").read_text()),
                    "fft": fft(capture, rate),
                }
                radio.report["tests"].append(row)
                radio.save()
                print(json.dumps(row), flush=True)
                radio.pluto.tx_hardwaregain_chan0 = -89.75
                radio.pluto.tx_destroy_buffer()
                radio.lo.attrs["powerdown"].value = "1"
