#!/usr/bin/env python3
"""Execute the pinned ROM descriptor writer offline; never access hardware."""

import argparse
import hashlib
import importlib.util
import json
from pathlib import Path
import struct
import sys

ROOT = Path(__file__).resolve().parents[2]
# Reuse the bounded emulator and pinned-input checks. Its neighboring inspect.py
# must not shadow Python's standard library module.
sys.path.insert(0, str(ROOT / "research/firmware"))
spec = importlib.util.spec_from_file_location(
    "dma_mailbox", ROOT / "research/firmware/inspect_dma_mailbox.py"
)
m = importlib.util.module_from_spec(spec)
spec.loader.exec_module(m)
sys.path.pop(0)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ("firmware", "rom", "table", "output"):
        parser.add_argument("--" + name, required=True, type=Path)
    args = parser.parse_args()
    rom, table, firmware = (getattr(args, name).read_bytes() for name in ("rom", "table", "firmware"))
    m.checked_inputs(firmware, rom, table)
    rows = []
    for slot in (0, 14, 31):
        for source in (0x18716200, 0x18766000, 0xB8716000):
            uc = m.machine([(0x20000000, 0x80000, rom), (0x20200000, 0x10000, None)])
            uc.mem_write(0x20201000, table)
            stub = m.word(uc, 0x20201668)
            request, ring = 0x20302000, 0x20300388
            m.put_word(uc, 0x20203580, 0x2020B000)
            m.put_word(uc, 0x2020B000, 0x2020B100)
            m.put_word(uc, 0x2020B100, ring)
            for k in range(32):
                m.put_word(uc, ring + 8*k, 0xD5A51234)
                m.put_word(uc, ring + 8*k + 4, 0xCCCCCCCC)
            m.put_word(uc, request, 0x18766100)
            m.put_word(uc, request + 4, source)
            uc.mem_write(request + 0x30, struct.pack("<HH", 32, 256))
            uc.mem_write(request + 0x4C, bytes([0, 2]))
            m.execute(uc, 0x20004DC2, [request, slot],
                      [(0x20004DC2, 0x20004EA6)], {stub: 0})
            expected_source = source if source < 0x30000000 else source & 0x1FFFFFFF
            actual = [list(struct.unpack("<II", uc.mem_read(ring + 8*s, 8)))
                      for s in (slot, (slot + 1) % 32)]
            expected = [[0x15A50020, 0x18766100], [0x55A50100, expected_source]]
            m.require(actual == expected, "ROM descriptor format disagrees with host probe")
            unchanged = all(
                m.word(uc, ring + 8*k) == 0xD5A51234
                and m.word(uc, ring + 8*k + 4) == 0xCCCCCCCC
                for k in range(32) if k not in (slot, (slot + 1) % 32)
            )
            m.require(unchanged, "ROM writer changed unrelated descriptors")
            rows.append({"start_slot": slot, "payload_source": hex(source),
                         "descriptors": actual, "untouched_slots_preserved": unchanged})
    report = {
        "hardware_access": False,
        "scope": "Execute pinned ROM TX0 descriptor writer with stubbed feature query; does not simulate DMA or CPU reset",
        "inputs": {k: hashlib.sha256(v).hexdigest() for k, v in
                   (("rom", rom), ("firmware", firmware), ("historical_table", table))},
        "cases": rows,
        "passed": True,
    }
    args.output.write_text(json.dumps(report, indent=2) + "\n")
    print(f"{len(rows)} ROM-executed descriptor cases passed")


if __name__ == "__main__":
    main()
