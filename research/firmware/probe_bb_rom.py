#!/usr/bin/env python3
"""Bounded WCPU ROM capture; default prints a plan without hardware access.

Run under run-receiver.sh with the released card and original working modules.
Only the PCIe read-window selector is written, and it is restored in finally.
Raw probe bytes go to an explicit local directory; never commit those files.
BB ROM alias probes are disabled after 0x10000028 caused a firmware fault.
"""

import argparse
from collections import Counter
import fcntl
import hashlib
import json
from pathlib import Path
import re
import signal
import struct
import subprocess
import time


FIRMWARE_SHA256 = "d11927f593c82879bd0437435475d7915a60932374747984b3dc906a23009dea"
HISTORICAL_WCPU_ROM_SHA256 = "d133bbe8b31273f27d9eeae992ce5cccd8001eaf816ebbeca240ce84e07a6ee4"
PCI = Path("/sys/bus/pci/devices/0000:0d:00.0")
SELECTOR = 0xC04
APERTURE = 0x80000
DIRECTORY_OFFSET = 0x28
DIRECTORY_BYTES = 0x60
REQUIRED_KEYS = {0x44534243, 0x44534143, 0x44535546}
PLAN = {
    "hardware_access": False,
    "candidate_rom_bases": [],
    "candidate_status": "disabled: probing 0x10000028 caused FW BADADDR and SER 0x5000",
    "writes": "save, select and restore register 0xc04 only; no sample or executable-memory writes",
    "deadline_seconds": 20,
    "raw_output": "local .bin files, excluded from Git",
}


def require(condition, message):
    if not condition:
        raise ValueError(message)


def describe(data):
    words = [v for (v,) in struct.iter_unpack("<I", data)]
    counts = Counter(words)
    return {"bytes": len(data), "sha256": hashlib.sha256(data).hexdigest(),
            "unique_words": len(counts),
            "sentinel_words": {hex(v): counts[v] for v in (0, 0xFFFFFFFF, 0xDEADBEEF)}}


def validate_directory(data):
    require(len(data) == DIRECTORY_BYTES, "Wrong ROM directory size")
    entries = list(struct.iter_unpack("<II", data))
    by_key = {key: pointer for key, pointer in entries}
    valid = REQUIRED_KEYS <= by_key.keys() and all(
        (0x10000000 <= by_key[key] < 0x10010000 or
         0x10020000 <= by_key[key] < 0x10022400) and by_key[key] % 4 == 0
        for key in REQUIRED_KEYS)
    return {"valid": valid,
            "required_keys_found": [hex(key) for key in sorted(REQUIRED_KEYS & by_key.keys())],
            "pointer_domain_note": "API roots may be tables in local 0x10020000..0x100223ff; contents need separate validation",
            "entries": [{"key": hex(key), "pointer": hex(pointer)} for key, pointer in entries]
            if valid else []}


class DebugWindow:
    def __init__(self):
        require((PCI / "driver").resolve().name == "rtw89_8922ae_git", "Wrong or missing card driver")
        require((PCI / "vendor").read_text().strip() == "0x10ec" and
                (PCI / "device").read_text().strip() == "0x8922", "Wrong PCI device")
        iface = next((PCI / "net").iterdir()).name
        phy = (Path("/sys/class/net") / iface / "phy80211").resolve().name
        self.dbg = Path("/sys/kernel/debug/ieee80211") / phy / "rtw89"
        require((self.dbg / "read_reg").exists(), "Working debugfs unavailable")

    def read(self, address, count):
        require(address % 4 == 0 and count > 0 and count % 4 == 0 and count <= 512,
                "Invalid bounded register read")
        port = self.dbg / "read_reg"
        # The working driver's block formatter emits complete four-word rows.
        read_count = 4 if count == 4 else (count + 15) & ~15
        port.write_text(f"{address:x} {read_count:x}\n")
        reply = port.read_text()
        if count == 4:
            match = re.search(r"=0x([0-9a-fA-F]{8})", reply)
            require(match is not None, "Malformed word response")
            return struct.pack("<I", int(match[1], 16))
        words = []
        for line in reply.splitlines():
            match = re.fullmatch(r"([0-9a-fA-F]{8})h : ((?:[0-9a-fA-F]{8} ?)+)\s*", line)
            require(match is not None, "Malformed block response")
            require(int(match[1], 16) == 0x18600000 + address + len(words) * 4,
                    "Unexpected read response address")
            words.extend(int(word, 16) for word in match[2].split())
        require(len(words) * 4 == read_count, "Truncated or oversized block response")
        return struct.pack(f"<{len(words)}I", *words)[:count]

    def selector(self):
        return struct.unpack("<I", self.read(SELECTOR, 4))[0]

    def select(self, value):
        (self.dbg / "write_reg").write_text(f"{SELECTOR:x} {value:x} 4\n")
        require(self.selector() == value, "Read-window selector did not stick")

    def mapped_read(self, address, count):
        rounded_count = 4 if count == 4 else (count + 15) & ~15
        require(address % 4 == 0 and count % 4 == 0 and 0 < count <= 512 and
                (address & 0x7FFFF) + rounded_count <= 0x80000,
                "Read crosses aperture boundary")
        require(0x18638000 <= address and address + rounded_count <= 0x18640000,
                "Only the known BB RAM window is allowed; ROM aliases are disabled")
        self.select(address & ~0x7FFFF)
        return self.read(APERTURE + (address & 0x7FFFF), count)


def probe(window, firmware, directory, report, save, dump_wcpu=False):
    require(dump_wcpu, "BB ROM alias probes are disabled; select --dump-wcpu-rom")
    previous = window.selector()
    require(previous not in (0xFFFFFFFF, 0xDEADBEEF), "Invalid initial selector")
    report["selector_before"] = hex(previous)
    save()
    try:
        if dump_wcpu:
            port = window.dbg / "iq_rom"
            first = port.read_bytes()
            second = port.read_bytes()
            require(len(first) == len(second) == 0x80000, "Wrong WCPU ROM capture length")
            require(first == second, "WCPU ROM changed between reads")
            report["wcpu_rom"] = {"address": "0x20000000", **describe(first),
                                  "repeat_identical": True,
                                  "matches_historical": hashlib.sha256(first).hexdigest() == HISTORICAL_WCPU_ROM_SHA256,
                                  "raw_file": str(directory / "wcpu-rom.bin")}
            (directory / "wcpu-rom.bin").write_bytes(first)
            save()
        report["status"] = "wcpu_rom_captured"
    finally:
        window.select(previous)
        report["selector_after"] = hex(window.selector())
        report["selector_restored"] = report["selector_after"] == report["selector_before"]
        save()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--execute", action="store_true")
    parser.add_argument("--firmware", type=Path)
    parser.add_argument("--raw-directory", type=Path)
    parser.add_argument("--report", type=Path)
    parser.add_argument("--dump-wcpu-rom", action="store_true",
                        help="Read and compare only the existing 512 KiB WCPU ROM interface twice")
    args = parser.parse_args()
    if not args.execute:
        print(json.dumps({**PLAN, "dump_wcpu_rom": args.dump_wcpu_rom}, indent=2))
        return
    require(all((args.firmware, args.raw_directory, args.report)), "Execution requires all paths")
    require(args.dump_wcpu_rom, "BB ROM alias probes are disabled; select --dump-wcpu-rom")
    firmware = args.firmware.read_bytes()
    require(hashlib.sha256(firmware).hexdigest() == FIRMWARE_SHA256, "Unpinned firmware")
    require(args.report.resolve() != args.firmware.resolve(), "Report would overwrite firmware")
    require(not args.report.exists(), "Refusing to overwrite an existing report")
    require(subprocess.run(["systemctl", "is-active", "--quiet", "rtl8922-live-demo.service"]).returncode != 0,
            "Demo service is active")
    args.raw_directory.mkdir(mode=0o700, parents=True, exist_ok=False)
    report = {"schema_version": 1, **PLAN, "hardware_access": True,
              "started_utc": time.strftime("%Y-%m-%dT%H:%M:%SZ", time.gmtime()),
              "firmware_sha256": FIRMWARE_SHA256, "raw_directory": str(args.raw_directory),
              "dump_wcpu_rom": args.dump_wcpu_rom, "status": "started"}
    def save():
        args.report.write_text(json.dumps(report, indent=2) + "\n")
    def timeout(_signum, _frame):
        raise TimeoutError("Bounded ROM probe deadline reached")
    save()
    with open("/run/lock/rtl8922-sdr.lock", "a") as lock:
        fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
        signal.signal(signal.SIGALRM, timeout)
        signal.signal(signal.SIGTERM, timeout)
        signal.alarm(PLAN["deadline_seconds"])
        try:
            probe(DebugWindow(), firmware, args.raw_directory, report, save, dump_wcpu=args.dump_wcpu_rom)
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
