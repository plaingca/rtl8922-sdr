#!/usr/bin/env python3
"""Offline inspection of the locally captured BB code and API-table windows.

Emits derived pointers, hashes and short excerpts, never complete ROM images.
The 0x10022000+ part of the table capture is a boot-state snapshot, not claimed
to be immutable ROM. Unknown custom instructions remain explicitly undecoded.
"""

import argparse
import hashlib
import json
from pathlib import Path
import struct

from probe_bb_rom import FIRMWARE_SHA256, require, validate_directory
from inspect_tx_path import decode


CODE_SHA256 = "048b294373e64d67ae11c1c779ce9047729a72c19b809ca18f15b4a7882ba758"
TABLE_SHA256 = "19e55f746ba1a9ba9d4f8a40ceeb585490135706583337941ab41625f5155789"
CODE_BASE = 0x10000000
TABLE_BASE = 0x10020000
ROOTS = {0x44534143: (0x10020000, 21), 0x44534243: (0x10020054, 17),
         0x44535546: (0x10021BE0, 14)}
PARSER = ((1, 0x10010DF6, 0x44534243, 4, 0x100032E8),
          (2, 0x10010DFE, 0x44534243, 8, 0x10002D08),
          (3, 0x10010E06, 0x44534243, 12, 0x10002A60),
          (4, 0x10010E0E, 0x44534143, 8, 0x100014FC),
          (5, 0x10010E16, 0x44535546, 4, 0x1000476E),
          (6, 0x10010E1E, 0x44535546, 0, 0x10004888))


def checked(data, digest, size, name):
    require(len(data) == size and hashlib.sha256(data).hexdigest() == digest, f"Unpinned {name}")
    return data


def excerpt(code, start, size):
    require(CODE_BASE <= start and start + size <= CODE_BASE + len(code) and size <= 48,
            "Invalid or oversized code excerpt")
    offset = start - CODE_BASE
    rows, _ = decode(code[offset:offset + size], start)
    result = []
    for address, row in rows.items():
        if row["mnemonic"] != "unknown":
            result.append({"pc": hex(address), "mnemonic": row["mnemonic"],
                           "operands": row["operands"]})
        else:
            word = int(row["operands"], 0)
            result.append({"pc": hex(address), "mnemonic": "unresolved",
                           "opcode": hex(word & 0x7F), "instruction_word": hex(word),
                           "bytes": row["size"]})
    return result


def analyze(code, tables, firmware):
    checked(code, CODE_SHA256, 0x10000, "BB code window")
    checked(tables, TABLE_SHA256, 0x2400, "BB API-table window")
    checked(firmware, FIRMWARE_SHA256, 1849226, "firmware")
    directory = validate_directory(code[0x28:0x88])
    require(directory["valid"], "BB directory validation failed")
    entries = {int(e["key"], 0): int(e["pointer"], 0) for e in directory["entries"]}
    api_tables = []
    for key, (root, count) in ROOTS.items():
        require(entries[key] == root, "API root changed")
        pointers = struct.unpack_from(f"<{count}I", tables, root - TABLE_BASE)
        require(all(CODE_BASE <= p < CODE_BASE + 0xBC80 and p % 2 == 0 for p in pointers),
                "API entry outside captured code")
        api_tables.append({"key": hex(key), "root": hex(root),
                           "function_pointers": [hex(p) for p in pointers]})
    dispatch = struct.unpack_from("<7I", firmware, 0xD3E70 + 0x550C)
    require(dispatch == (0x10010DF4, *(entry[1] for entry in PARSER)), "RAM parser dispatch changed")
    resolved = []
    for opcode, wrapper, key, displacement, expected in PARSER:
        root = entries[key]
        pointer = struct.unpack_from("<I", tables, root - TABLE_BASE + displacement)[0]
        require(pointer == expected, "ROM parser target changed")
        resolved.append({"parser_opcode": opcode, "ram_wrapper": hex(wrapper), "api_key": hex(key),
                         "table_offset": hex(displacement), "rom_function": hex(pointer)})
    markers = []
    for value in (b"inputLength <= 32", b"*pRemainBits <= 32", b"ruSize = RU_26_TONES,",
                  b"CRC TAIL:", b"userField[%d]:staId=%d, field:", b"packDataIn4Bytes"):
        offset = tables.find(value)
        require(offset >= 0, "Parser evidence string missing")
        markers.append({"address": hex(TABLE_BASE + offset), "text": value.decode()})
    require(b"/parser/common_api.c\0" in tables, "Common API source suffix missing")
    require(b"mcs = %d" in tables and b"dcmEnable = %d" in tables and b"spatialConfig=%d" in tables,
            "User-field metadata strings missing")
    return {
        "schema_version": 1, "hardware_access": False,
        "inputs": {"code": {"bytes": len(code), "sha256": CODE_SHA256},
                   "tables": {"bytes": len(tables), "sha256": TABLE_SHA256},
                   "firmware_sha256": FIRMWARE_SHA256},
        "directory": directory, "selected_api_tables": api_tables,
        "resolved_parser_calls": resolved,
        "parser_evidence": {"source_suffix": "parser/common_api.c", "strings": markers,
                            "additional_fields": ["mcs", "dcmEnable", "spatialConfig", "nSts", "coding"],
                            "interpretation": "Wi-Fi PHY header/resource-unit/user-field processing; "
                                              "not evidence of calibration waveform generation"},
        "selected_code_excerpts": {
            "input_and_output_of_custom_operation": excerpt(code, 0x100051DE, 48),
            "completion_register_update": excerpt(code, 0x10005A18, 16)},
        "custom_isa_limit": "Opcode 0x0b is used between input-word loads and output-word stores. "
                            "Its hardware semantics are unresolved; do not emulate it as a no-op or label it a DAC port.",
        "nctl_relationship": "The four previously recovered TPG setters are separate from these ROM parser APIs. "
                             "No sample-pointer connection between the traced interfaces has been identified.",
        "arbitrary_iq_endpoint_identified": False,
        "limits": ["Captured code address window size is not a physical ROM size measurement.",
                   "Bytes at table-window addresses 0x10022000 and above include boot state; immutable status unproved.",
                   "Parser-domain inference does not classify every function in the ROM.",
                   "No sample upload, clocked sample reader or DAC source mux has been demonstrated."]}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--code", type=Path, required=True)
    parser.add_argument("--tables", type=Path, required=True)
    parser.add_argument("--firmware", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    require(args.output.resolve() not in {p.resolve() for p in (args.code, args.tables, args.firmware)},
            "Output would overwrite an input")
    report = analyze(args.code.read_bytes(), args.tables.read_bytes(), args.firmware.read_bytes())
    args.output.write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps({"hardware_access": False, "resolved_parser_calls": len(report["resolved_parser_calls"]),
                      "arbitrary_iq_endpoint_identified": False}))


if __name__ == "__main__":
    main()
