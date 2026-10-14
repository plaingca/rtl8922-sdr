#!/usr/bin/env python3
"""Offline reproducible address trace. Does not read or write the card.

Requires locally supplied ROM/table captures; never downloads or emits dumps.
The table is a historical runtime snapshot based at 0x20201000, not proof
that a newly loaded firmware has the same live function pointers.
"""

import argparse
import hashlib
import json
from pathlib import Path
import struct

from capstone import Cs, CS_ARCH_RISCV, CS_MODE_RISCV32, CS_MODE_RISCVC

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument("--firmware", type=Path, required=True)
parser.add_argument("--rom", type=Path, required=True)
parser.add_argument("--table", type=Path, required=True)
parser.add_argument("--output", type=Path, required=True)
args = parser.parse_args()
blobs = {k: getattr(args, k).read_bytes() for k in ("firmware", "rom", "table")}
assert len(blobs["rom"]) == 0x80000 and len(blobs["table"]) == 0x4000
assert struct.unpack_from("<I", blobs["firmware"], 0x70)[0] == 0x20100000
assert struct.unpack_from("<I", blobs["firmware"], 0x74)[0] & 0xFFFFFF == 0x5F610
decoder = Cs(CS_ARCH_RISCV, CS_MODE_RISCV32 | CS_MODE_RISCVC)
functions = [
    ("iddma_start", 0x2020206C, 0x20008904, 0x20008A26),
    ("iddma_wait", 0x20202068, 0x20008A26, 0x20008A8A),
    ("paxi_context_selector", 0x2020217C, 0x20122BAC, 0x20122CFE),
    ("paxi_descriptor_writer", 0x202021DC, 0x20004DC2, 0x20004EA6),
    ("paxi_submit", 0x202021D4, 0x20004F52, 0x200051E6),
    ("paxi_completion", 0x20202140, 0x2000548C, 0x20005592),
    ("paxi_flow_control_init", 0x202021D0, 0x20123078, 0x201232FC),
]
traces = []
for name, slot, start, end in functions:
    actual = struct.unpack_from("<I", blobs["table"], slot - 0x20201000)[0]
    assert actual == start, f"{name}: historical function pointer changed: {actual:x}"
    if start < 0x20100000:
        code = blobs["rom"][start - 0x20000000 : end - 0x20000000]
    else:
        code = blobs["firmware"][256 + start - 0x20100000 : 256 + end - 0x20100000]
    ins = list(decoder.disasm(code, start))
    assert sum(i.size for i in ins) == len(code), f"Incomplete decode: {name}"
    # Small, specific excerpts support the interpretation without copying
    # entire firmware functions into the repository.
    ranges = {
        "paxi_context_selector": [
            (0x20122BCE, 0x20122BEA),
            (0x20122C02, 0x20122C24),
            (0x20122C40, 0x20122C62),
        ],
        "paxi_descriptor_writer": [(0x20004E46, 0x20004E76)],
        "paxi_submit": [(0x20005196, 0x200051E2)],
    }.get(name, [])
    snippets = [
        f"{i.address:08x} {i.mnemonic} {i.op_str}"
        for i in ins
        if any(lo <= i.address <= hi for lo, hi in ranges)
    ]
    traces.append(
        {
            "name": name,
            "historical_pointer_slot": hex(slot),
            "start": hex(start),
            "end_exclusive": hex(end),
            "instruction_count": len(ins),
            "code_sha256": hashlib.sha256(code).hexdigest(),
            "evidence_excerpt": snippets,
        }
    )
report = {
    "inputs": {
        k: {"bytes": len(v), "sha256": hashlib.sha256(v).hexdigest()}
        for k, v in blobs.items()
    },
    "firmware_code_file_offset": 256,
    "firmware_code_address": "0x20100000",
    "table_snapshot_address": "0x20201000",
    "functions": traces,
    "interpretation": [
        "The patched context selector accepts transmit contexts 0 and 1; argument 2 returns error 4.",
        "TX0 uses base/index offsets 0x620/0x420; TX1 uses 0x624/0x424, relative to 0x18006000.",
        "The descriptor writer stores 16-bit lengths, payload addresses, and bit30 on the last segment; ring size is 32 descriptors.",
        "Submission and completion use shared firmware state as well as hardware indices. An idle hardware index does not grant exclusive ownership.",
        "Direct LA SRAM reads through this engine and sustained throughput are still unverified.",
    ],
    "hardware_access": False,
}
args.output.write_text(json.dumps(report, indent=2) + "\n")
print(json.dumps({"functions": len(traces), "hardware_access": False}))
