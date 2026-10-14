#!/usr/bin/env python3
"""Execute pinned firmware PAXI flow initialization offline; never open hardware."""

import argparse
import hashlib
import importlib.util
import json
from pathlib import Path
import sys

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "research/firmware"))
spec = importlib.util.spec_from_file_location(
    "dma_mailbox", ROOT / "research/firmware/inspect_dma_mailbox.py"
)
m = importlib.util.module_from_spec(spec)
spec.loader.exec_module(m)
sys.path.pop(0)


def flow_case(firmware, rom, table, ple_pages):
    paxi, local = 0xB8006000, 0xB8600000
    uc = m.machine([
        (0x20000000, 0x80000, rom),
        (0x20100000, 0x60000, firmware[0x100:0x5F710]),
        (0x20200000, 0x10000, None),
        (paxi, 0x1000, None), (local, 0x10000, None),
    ])
    uc.mem_write(0x20201000, table)
    # Actual code reads the low 12 quota bits and the two page-size bits.
    m.put_word(uc, local + 0x9048, ple_pages | ple_pages << 16)
    m.put_word(uc, local + 0x9008, 1)  # 128-byte PLE pages
    m.put_word(uc, local + 0x8C44, 6 | 6 << 16)
    m.put_word(uc, local + 0x8C08, 0)  # 64-byte WDE pages
    m.put_word(uc, paxi + 0x700, 3)
    writes = []

    def on_write(cpu, access, address, size, value, _):
        m.require(size == 4, "Unexpected flow-control access size")
        writes.append({"offset": hex(address - paxi), "value": hex(value)})

    uc.hook_add(m.UC_HOOK_MEM_WRITE, on_write, begin=paxi, end=paxi + 0xFFF)
    # Feature 5 is explicitly stubbed false. Actual register read/write helpers
    # and the small-register address translation wrapper execute unchanged.
    calls = m.execute(uc, 0x20123078, (1, 0), [
        (0x20123078, 0x201232FC), (0x20126F5C, 0x20126F74),
        (0x20009444, 0x20009448), (0x20009454, 0x20009458),
    ], {m.word(uc, 0x20201668): 0})
    result = {hex(offset): hex(m.word(uc, paxi + offset))
              for offset in (0x700, 0x704, 0x710, 0x714, 0x750, 0x754, 0x770, 0x774)}
    m.require(m.word(uc, paxi + 0x710) == ple_pages * 2 << 16,
              "Unexpected C2H limit from pinned initializer")
    m.require(m.word(uc, paxi + 0x750) == m.word(uc, paxi + 0x754) == 6,
              "Unexpected WDE initialization")
    return {"ple_c2h_pages": ple_pages, "ple_page_bytes": 128,
            "wde_wcpu_pages": 6, "wde_page_bytes": 64,
            "final_registers": result, "writes": writes, "stubbed_calls": calls}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ("firmware", "rom", "table", "observed", "output"):
        parser.add_argument("--" + name, type=Path, required=True)
    args = parser.parse_args()
    firmware, rom, table = (getattr(args, k).read_bytes() for k in ("firmware", "rom", "table"))
    m.checked_inputs(firmware, rom, table)
    cases = [flow_case(firmware, rom, table, pages) for pages in (32, 192)]
    observed = json.loads(args.observed.read_text())["tests"][0]
    comparison = {
        "observed_ple_quota": hex(observed["ple_quota"]),
        "observed_fc710": hex(observed["fc710"]),
        "expected_if_initialized_from_192_pages": cases[1]["final_registers"]["0x710"],
        "matches_32_page_initialization": observed["fc710"] == int(cases[0]["final_registers"]["0x710"], 16),
        "matches_192_page_initialization": observed["fc710"] == int(cases[1]["final_registers"]["0x710"], 16),
    }
    report = {
        "hardware_access": False,
        "scope": "Execute pinned initializer with feature 5 false and synthetic quotas; no DMA or reclamation simulated",
        "inputs": {k: hashlib.sha256(v).hexdigest() for k, v in
                   (("firmware", firmware), ("rom", rom), ("historical_table", table))},
        "cases": cases, "observed_report": str(args.observed), "comparison": comparison,
        "limitation": "Establishes a configuration discrepancy under this feature branch, not the stall cause or a safe register repair",
        "passed": True,
    }
    args.output.write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps(comparison))


if __name__ == "__main__":
    main()
