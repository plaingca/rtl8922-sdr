#!/usr/bin/env python3
"""Read the bounded result of bb_rom_copy_patch.py using the working driver.

Default is offline. Run --execute only under the manual receiver wrapper, with
the temporary patch firmware selected. Does not write code or any BB controls.
"""

import argparse
import fcntl
import json
from pathlib import Path
import signal
import struct
import subprocess
import time

from bb_rom_copy_patch import (BUFFER, COUNT, FINISHED, HOST_BUFFER, LOCAL_BASE,
                               SOURCE, STARTED, STUB, startup_stub)
from probe_bb_rom import DebugWindow, describe, require, validate_directory


def capture(window, directory, report, save, patch=None):
    source = int(patch["copy_source_local"], 0) if patch else SOURCE
    count = patch["copy_bytes"] if patch else COUNT
    stub_address = int(patch["stub"], 0) if patch else STUB
    buffer_address = int(patch["output_local"], 0) if patch else BUFFER
    stub = startup_stub(source, count, stub_address, buffer_address)
    host_buffer = 0x18638000 + buffer_address - LOCAL_BASE
    previous = window.selector()
    require(previous not in (0xFFFFFFFF, 0xDEADBEEF), "Invalid initial selector")
    report["selector_before"] = hex(previous)
    save()
    try:
        live = window.mapped_read(0x18638000 + stub_address - LOCAL_BASE, len(stub))
        report["stub_readback_matches"] = live == stub
        require(live == stub, "Temporary BB code did not reach the expected RAM window")
        def read_output():
            return b"".join(window.mapped_read(host_buffer + offset, min(512, 16 + count - offset))
                            for offset in range(0, 16 + count, 512))
        first = read_output()
        second = read_output()
        markers = struct.unpack_from("<II", first)
        report.update(output=describe(first), repeat_identical=first == second,
                      markers=[hex(v) for v in markers],
                      copy_finished=markers == (STARTED, FINISHED))
        if source == SOURCE and count >= COUNT:
            report["directory"] = validate_directory(first[16:16 + COUNT])
        (directory / "bb-rom-directory-copy.bin").write_bytes(first)
        valid = report["copy_finished"] and first == second
        report["status"] = "bb_local_copy_captured" if valid else "copy_not_validated"
        if source == SOURCE and count == COUNT and valid and report["directory"]["valid"]:
            report["status"] = "bb_rom_directory_captured"
        save()
    finally:
        window.select(previous)
        report["selector_after"] = hex(window.selector())
        report["selector_restored"] = report["selector_after"] == report["selector_before"]
        save()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--execute", action="store_true")
    parser.add_argument("--raw-directory", type=Path)
    parser.add_argument("--report", type=Path)
    parser.add_argument("--patch-report", type=Path, help="Builder metadata for a nondefault bounded copy")
    args = parser.parse_args()
    patch = json.loads(args.patch_report.read_text()) if args.patch_report else None
    if patch:
        require(patch["requires_reported_secure_boot_zero"] and not patch["bb_security_sections_omitted"],
                "Only default-manifest temporary images are supported")
        startup_stub(int(patch["copy_source_local"], 0), patch["copy_bytes"],
                     int(patch["stub"], 0), int(patch["output_local"], 0))
    plan = {"hardware_access": False, "source_local": patch["copy_source_local"] if patch else hex(SOURCE),
            "bytes": patch["copy_bytes"] if patch else COUNT,
            "output_local": patch["output_local"] if patch else hex(BUFFER),
            "output_host_hypothesis": patch["output_host_hypothesis"] if patch else hex(HOST_BUFFER),
            "writes": "save, select and restore register 0xc04 only", "deadline_seconds": 20}
    if not args.execute:
        print(json.dumps(plan, indent=2))
        return
    require(args.raw_directory and args.report, "Execution requires output paths")
    require(not args.report.exists(), "Refusing to overwrite report")
    require(subprocess.run(["systemctl", "is-active", "--quiet", "rtl8922-live-demo.service"]).returncode != 0,
            "Demo service is active")
    args.raw_directory.mkdir(mode=0o700, parents=True, exist_ok=False)
    report = {"schema_version": 1, **plan, "hardware_access": True,
              "started_utc": time.strftime("%Y-%m-%dT%H:%M:%SZ", time.gmtime()),
              "raw_directory": str(args.raw_directory), "status": "started"}
    def save():
        args.report.write_text(json.dumps(report, indent=2) + "\n")
    def timeout(_signal, _frame):
        raise TimeoutError("Bounded BB ROM result read reached deadline")
    save()
    with open("/run/lock/rtl8922-sdr.lock", "a") as lock:
        fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
        signal.signal(signal.SIGALRM, timeout)
        signal.signal(signal.SIGTERM, timeout)
        signal.alarm(20)
        try:
            capture(DebugWindow(), args.raw_directory, report, save, patch)
        except BaseException as error:
            report.update(status="failed", error=f"{type(error).__name__}: {error}")
            raise
        finally:
            signal.alarm(0)
            report["finished_utc"] = time.strftime("%Y-%m-%dT%H:%M:%SZ", time.gmtime())
            save()
    print(json.dumps({"status": report["status"], "selector_restored": report["selector_restored"]}))


if __name__ == "__main__":
    main()
