#!/usr/bin/env python3
"""Explicit bounded dual-tone RF capture. Run under run-receiver.sh, never CI.

Uses the existing PAXI raw reader without modifying the driver. The wrapper
must unload the held-firmware modules after every invocation.
"""

import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import select
import shutil
import subprocess
import threading
import time

import numpy as np

from hardware import Radio, ROOT
from continuity_reference import make_reference


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--run-rf-test", action="store_true", required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--lo-offset-hz", type=int, default=12000000)
    parser.add_argument("--gain-db", type=float, default=-10)
    parser.add_argument("--soapy-2447", action="store_true")
    parser.add_argument("--coded-wideband", action="store_true")
    parser.add_argument("--disable-packet-detection", action="store_true")
    parser.add_argument("--samples", type=int, default=32 * 1024 * 1024)
    args = parser.parse_args()
    if args.coded_wideband and not args.soapy_2447:
        parser.error("The wideband code requires the Soapy 2447 MHz capture path")
    if abs(args.lo_offset_hz) > 60000000 or not -89.75 <= args.gain_db <= 0:
        parser.error("LO offset/gain outside bounded experiment limits")
    if not 32768 <= args.samples <= 160000000 or (
        not args.soapy_2447 and args.samples != 32 * 1024 * 1024
    ):
        parser.error(
            "Sample count must be 32768..160000000; native capture uses the default prefix"
        )
    prefix_bytes = 2 * args.samples
    if shutil.disk_usage(ROOT).free < prefix_bytes + 1024**3:
        raise RuntimeError("Insufficient capture disk space")
    artifact = ROOT / "build-streaming" / args.output.stem
    with Radio(args.output, seconds=35) as radio:
        driver = Path(os.environ["RTL8922_DRIVER_DIR"])
        paths = [
            Path(__file__),
            ROOT / "research/streaming/hardware.py",
            ROOT / "research/streaming/raw-stream.cpp",
            ROOT / "build-streaming/raw-stream",
            driver / "iq-paxi-frozen.c",
            driver / "iq-paxi-drain.c",
            *sorted(driver.glob("*_git.ko")),
        ]
        if args.soapy_2447:
            paths.extend(
                [
                    ROOT / "SoapyRTL8922.cpp",
                    ROOT / "build/libRTL8922Support.so",
                    ROOT / "research/streaming/phase-soapy-capture.cpp",
                    ROOT / "build-streaming/phase-soapy-capture",
                ]
            )
        if args.coded_wideband:
            paths.append(ROOT / "research/streaming/continuity_reference.py")
        center = 2447000000 if args.soapy_2447 else 5250000000
        radio.report.update(
            scope="Fresh dual-tone 160 MS/s native I/Q for offline boundary phase analysis",
            sample_rate=160000000,
            center_hz=center,
            packet_samples=4096,
            source_ring_samples=163840,
            requested_seconds=(prefix_bytes / 2 / 160000000 if args.soapy_2447 else 1),
            prefix_bytes=prefix_bytes,
            gain_db=args.gain_db,
            build_sha256={
                str(p): hashlib.sha256(p.read_bytes()).hexdigest() for p in paths
            },
            loaded_core_srcversion=Path("/sys/module/rtw89_core_git/srcversion")
            .read_text()
            .strip(),
        )
        radio.setup(160)
        radio.freeze()
        for name, value in [
            ("iq_sample_rate", "40000000"),
            ("iq_chunk_bytes", "8192"),
            ("iq_paxi_disable_watchdog", "Y"),
            ("iq_paxi_static_ring", "Y"),
            ("iq_paxi_burst", "4"),
            ("iq_drain", "1"),
        ]:
            (radio.dbg / name).write_text(value)
        s = radio.pluto
        s.sample_rate = 4000000
        s.tx_rf_bandwidth = 3000000
        s.tx_lo = center + args.lo_offset_hz
        s.tx_cyclic_buffer = True
        s.tx_hardwaregain_chan0 = -89.75
        bins = [-2999, 3001]
        n = np.arange(16384)
        wave = sum(np.exp(2j * np.pi * k * n / len(n)) for k in bins) * 16000
        if args.coded_wideband:
            wave, reference = make_reference()
            s.sample_rate = reference["sample_rate"]
            s.tx_rf_bandwidth = 34000000
            radio.report["coded_reference"] = reference
            radio.report["reference_wave_sha256"] = hashlib.sha256(
                wave.astype("<c8").tobytes()
            ).hexdigest()
        radio.report.update(
            nominal_tone_offsets_hz=[
                args.lo_offset_hz + k * 4000000 / len(n) for k in bins
            ],
            tx_lo=s.tx_lo,
            pluto_sample_rate=s.sample_rate,
            tx_bins=bins,
            tx_buffer_samples=len(n),
            tone_amplitude=16000,
        )
        if args.coded_wideband:
            radio.report["nominal_tone_offsets_hz"] = [
                args.lo_offset_hz + reference["pilot_hz"]
            ]
            radio.report["tx_buffer_samples"] = len(wave)
            radio.report.pop("tx_bins")
            radio.report.pop("tone_amplitude")
            radio.report["scope"] = (
                "Wideband known QPSK timing code plus RF pilot, 160 MS/s Soapy continuity experiment"
            )
        radio.save()
        lock = threading.Lock()
        expired = threading.Event()

        def mute():
            with lock:
                expired.set()
                radio.lo.attrs["powerdown"].value = "1"

        timer = threading.Timer(5, mute)
        deadline = time.monotonic() + 5
        proc = None
        ready = artifact.with_suffix(".ready")
        reader_log = None
        timer.start()
        try:
            if args.soapy_2447:
                ready.unlink(missing_ok=True)
                reader_log = artifact.with_suffix(".log").open("w")
                proc = subprocess.Popen(
                    [
                        str(ROOT / "build-streaming/phase-soapy-capture"),
                        str(center),
                        str(ready),
                        str(artifact.with_suffix(".bin")),
                        str(artifact.with_suffix(".reads.json")),
                        str(args.samples),
                    ],
                    stdout=subprocess.PIPE,
                    stderr=reader_log,
                    text=True,
                )
                if (
                    not select.select([proc.stdout], [], [], 4)[0]
                    or proc.stdout.readline().strip() != "READY"
                ):
                    raise RuntimeError("Soapy reader did not become ready")
                if args.disable_packet_detection:
                    # Pinned rtw8922a_bb_reset_en() uses these two fields to
                    # inhibit CCK/OFDM detection before reset. Leave reset and
                    # ADC clocks alone; apply after the completed band retune.
                    changes = [(0x20520, 1), (0x20C3C, 1 << 9)]
                    before = {hex(a): radio.rd(a) for a, _ in changes}
                    for a, mask in changes:
                        radio.wr(a, before[hex(a)] | mask)
                    after = {hex(a): radio.rd(a) for a, _ in changes}
                    if any(after[hex(a)] & mask != mask for a, mask in changes):
                        raise RuntimeError("Packet-detection inhibit readback failed")
                    radio.report["packet_detection_inhibit"] = dict(
                        before=before,
                        after=after,
                        provenance="Pinned rtw8922a.c rtw8922a_bb_reset_en; BB base 0x20000; reset/ADC clocks unchanged",
                    )
                    radio.save()
            s.tx(wave)
            with lock:
                if expired.is_set() or time.monotonic() >= deadline:
                    raise TimeoutError("TX setup exceeded independent deadline")
                s.tx_hardwaregain_chan0 = args.gain_db
                radio.lo.attrs["powerdown"].value = "0"
            if args.soapy_2447:
                time.sleep(0.05)  # Reader keeps draining during TX settling.
                ready.write_text("capture")
                stdout, _ = proc.communicate(timeout=10)
                result = subprocess.CompletedProcess(
                    proc.args, proc.returncode, stdout, ""
                )
            else:
                result = subprocess.run(
                    [
                        str(ROOT / "build-streaming/raw-stream"),
                        str(radio.dbg),
                        "1",
                        str(artifact.with_suffix(".bin")),
                        str(prefix_bytes),
                        "iq_paxi_stream",
                    ],
                    capture_output=True,
                    text=True,
                    timeout=18,
                )
        finally:
            try:
                mute()
            finally:
                timer.cancel()
                timer.join()
                if proc is not None and proc.poll() is None:
                    proc.terminate()
                    try:
                        proc.wait(timeout=5)
                    except subprocess.TimeoutExpired:
                        proc.kill()
                        proc.wait()
                if reader_log:
                    reader_log.close()
                ready.unlink(missing_ok=True)
        if args.soapy_2447:
            if result.returncode:
                raise RuntimeError(
                    "Soapy recorder failed; inspect "
                    + str(artifact.with_suffix(".log"))
                )
            host = json.loads(artifact.with_suffix(".reads.json").read_text())
            radio.report.update(
                read_boundaries=host["read_boundaries"],
                source_origin_samples=host["source_origin_samples"],
                capture_path="Soapy CS16, varied partial reads, lossless conversion to native i8",
            )
        else:
            artifact.with_suffix(".log").write_text(result.stderr)
            host = json.loads(result.stdout)
        status = (radio.dbg / "iq_paxi_stream").read_text()
        fields = dict(re.findall(r"(\w+)=([0-9a-f-]+)", status))
        drops = int((radio.dbg / "scope_dropped").read_text())
        packets = int((radio.dbg / "scope_packets").read_text())
        checks = dict(
            reader_clean=result.returncode == 0,
            source_clean=fields["ret"] == fields["source_guard"] == "0",
            scratch_clean=fields["guard_errors"] == "0",
            host_clean=drops == 0
            and (
                args.soapy_2447 or host["sequence_gaps"] == host["pending_bytes"] == 0
            ),
            counts_match=int(fields["completed"]) == packets
            and (
                args.soapy_2447
                or host["packets"] == packets
                and host["bytes"] == int(fields["consumed"]) * 8
            ),
            duration_complete=(
                host["samples"] >= prefix_bytes // 2
                if args.soapy_2447
                else int(fields["elapsed_ns"]) >= 0.98e9
            ),
            rate_correct=(
                host["sample_rate"] == 160000000
                if args.soapy_2447
                else 158e6
                <= int(fields["consumed"]) * 4e9 / int(fields["elapsed_ns"])
                <= 162e6
            ),
            prefix_complete=(
                host["samples"] * 2 if args.soapy_2447 else host["capture_bytes"]
            )
            == prefix_bytes,
            tracking_quiesced=fields["tracking_quiesced"] == "1",
            watchdog_disabled=fields["watchdog_disabled"] == "1",
        )
        if (radio.dbg / "iq_paxi_quiesce_pd").exists():
            checks["packet_detection_quiesced"] = (
                fields.get("packet_detection_quiesced") == "1"
            )
        radio.report.update(
            host=host,
            producer_status=status,
            checks=checks,
            transport_pass=all(checks.values()),
            prefix=str(artifact.with_suffix(".bin")),
        )
        radio.save()
        print(json.dumps(checks), flush=True)
        if not all(checks.values()):
            raise RuntimeError("Transport failed; RF continuity cannot pass")


if __name__ == "__main__":
    main()
