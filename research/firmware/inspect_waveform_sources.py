#!/usr/bin/env python3
"""Trace BB parser indirections and DPK source controls offline.

Requires the pinned firmware. Optional WCPU ROM/table inputs are historical
snapshots, not a capture of BB MCU ROM. Emits only derived metadata and short
excerpts; never accesses hardware or writes executable/sample memory.
"""

import argparse
import hashlib
import json
from pathlib import Path
import struct

from inspect_tx_path import FW_SHA256, decode, edge, excerpt, pinned, require


ROM_SHA256 = "d133bbe8b31273f27d9eeae992ce5cccd8001eaf816ebbeca240ce84e07a6ee4"
TABLE_SHA256 = "d9a5d721e0af55f6aceacea9ef272548d485469373072d95aa3433dbd851630f"


def mapped_bytes(data, file_offset, base, length, address, count):
    require(file_offset >= 0 and length >= 0 and count >= 0 and
            base <= address and address + count <= base + length,
            "Mapped read outside section")
    offset = file_offset + address - base
    require(offset + count <= len(data), "Mapped read outside input")
    return data[offset:offset + count]


def trace(data):
    require(hashlib.sha256(data).hexdigest() == FW_SHA256, "Firmware hash is not pinned")
    bb_section = 0xD3E70
    bb = data[bb_section:bb_section + 32768]
    header = struct.unpack_from("<8I", bb)
    require(header[:3] == (0x52667742, 0x10010200, 0x10010200), "BB header changed")
    source, destination, end = header[4:7]
    require((source, destination, end) == (0x1001550C, 0x10024000, 0x10024CFC),
            "BB initialized-data mapping changed")

    def bb_data(address, count):
        return mapped_bytes(bb, source - 0x10010000, destination, end - destination, address, count)

    def bb_code(start, stop):
        rows, _ = decode(mapped_bytes(bb, 0, 0x10010000, len(bb), start, stop - start), start)
        require(all(row["mnemonic"] != "unknown" for row in rows.values()), "Incomplete BB decode")
        return rows

    def wc_code(start, stop):
        rows, _ = decode(mapped_bytes(data, 0x100, 0x20100000, 0x5F610, start, stop - start), start)
        require(all(row["mnemonic"] != "unknown" for row in rows.values()), "Incomplete WCPU decode")
        return rows

    handlers = struct.unpack("<7I", bb_data(0x10024000, 28))
    require(handlers == (0x10010DF4, 0x10010DF6, 0x10010DFE, 0x10010E06,
                         0x10010E0E, 0x10010E16, 0x10010E1E), "Parser handler table changed")
    require(bb_data(0x10024B54, 7) == b"Parser\0", "Parser task name mapping changed")
    wrappers = bb_code(handlers[0], 0x10010E26)
    # The roots are populated by main's ROM-directory lookups; these are not
    # absolute ROM function addresses. No physical/host alias is assumed.
    roots = [(None, None), (0x44534243, 4), (0x44534243, 8), (0x44534243, 12),
             (0x44534143, 8), (0x44535546, 4), (0x44535546, 0)]
    for index, start in enumerate(handlers[1:], 1):
        slot = -0x6D0 if index <= 3 else (-0x6D4 if index == 4 else -0x6C4)
        require(wrappers[start]["operands"] == f"a5, -{abs(slot):#x}(gp)", "ROM root changed")
        offset = roots[index][1]
        operand = f"a5, {hex(offset) if offset >= 10 else offset}(a5)"
        require(wrappers[start + 4]["operands"] == operand, "ROM API slot changed")
        require(wrappers[start + 6]["mnemonic"] == "c.jr", "ROM tail jump changed")
    parser_task = bb_code(0x10014E4E, 0x10014E58)
    loop = bb_code(0x1001148C, 0x1001149C)
    lookup = bb_code(0x100105CE, 0x100105FC)
    root_setup = bb_code(0x10014EDC, 0x10014F3E)
    select = wc_code(0x2011798E, 0x201179BE)
    tables = []
    for name, address, count in [("path0_setup", 0x2020CC64, 16),
                                 ("path1_setup", 0x2020CD24, 16),
                                 ("restore", 0x2020CDE4, 12)]:
        raw = mapped_bytes(data, 0x5F710, 0x20209BB8, 0x81C8, address, count * 12)
        writes = [{"register": hex(reg), "mask": hex(mask), "value": hex(value)}
                  for reg, mask, value in struct.iter_unpack("<III", raw)]
        tables.append({"name": name, "address": hex(address), "count": count,
                       "sha256": hashlib.sha256(raw).hexdigest(), "writes": writes})
    require(all({"register": "0x2a20", "mask": "0x10", "value": "0x1"} in t["writes"]
                for t in tables[:2]), "Qualified AFE force mask missing")
    # RFK log element 19 / rfk_id 1 associates these exact calls with DPK.
    log = 0x1C0370
    kind, size = struct.unpack_from("<II", data, log)
    require(kind == 19 and data[log + 24] == 43 and data[log + 28] == 1, "DPK log element changed")
    formats = []
    for index in (9, 10, 16, 22, 39, 41, 42):
        offset = struct.unpack_from("<H", data, log + 32 + index * 2)[0]
        start = log + 32 + offset
        stop = data.find(b"\0", start, log + 32 + size)
        require(stop >= start, "Unterminated DPK format")
        formats.append({"index": index, "text": data[start:stop].decode("ascii")})
    return {
        "schema_version": 1, "hardware_access": False,
        "firmware_sha256": FW_SHA256,
        "bb_parser": {
            "task_entry": "0x10014dca", "task_name": "Parser",
            "initialized_data_mapping": {"source": hex(source), "destination": hex(destination),
                                         "end_exclusive": hex(end), "status": "static inference"},
            "task_edges": [edge(parser_task, 0x10014E50, 0x1001129E, "Parser setup"),
                           edge(parser_task, 0x10014E54, 0x100113D8, "Parser execution loop")],
            "handler_table": {"address": "0x10024000", "recovered_entries": [
                {"index": i, "wrapper": hex(address), "rom_directory_key": hex(key) if key else None,
                 "api_table_byte_offset": offset, "status": "return" if i == 0 else "unresolved BB ROM API"}
                for i, (address, (key, offset)) in enumerate(zip(handlers, roots))]},
            "dispatch_excerpt": excerpt(loop, 0x1001148C, 0x1001149C),
            "wrapper_excerpts": list(wrappers.values()),
            "rom_directory": {"lookup_function": "0x100105ce", "start": "0x10000028",
                              "end_exclusive": "0x10000088", "entry_bytes": 8,
                              "lookup_excerpt": list(lookup.values()),
                              "root_setup_excerpt": list(root_setup.values()),
                              "contents_available": False},
            "limits": ["Seven initialized handlers recovered; full parser validation is not reconstructed.",
                       "Initialized RAM does not establish host write access or safe table patching.",
                       "Parser calls enter BB ROM APIs; their implementations remain untraced."]},
        "dpk": {
            "log_element": hex(log), "log_rfk_id": 1, "selected_formats": formats,
            "afe_setup_function": "0x2011724e", "afe_restore_function": "0x201172a6",
            "afe_tables": tables, "table_role": "register/mask/value configuration, not I/Q samples",
            "bandwidth_operation_select": {
                "function": "0x20117952", "context_byte": "context + path + 0x3a0",
                "operations_by_enum": {"3": "0x20", "2": "0x21", "1": "0x22", "default": "0x23"},
                "edge": edge(select, 0x201179BA, 0x20117038, "NCTL one-shot(path, operation)"),
                "excerpt": list(select.values()),
                "limits": "Operation meanings and NCTL stimulus implementation are undecoded."}},
        "wcpu_bb_access": {"write_wrapper": "0x2011bf94", "read_wrapper": "0x2011bf9e",
                           "write_pointer_slot": "0x2020107c", "read_pointer_slot": "0x20201078",
                           "excerpts": list(wc_code(0x2011BF94, 0x2011BFA8).values())},
        "arbitrary_iq_source_confirmed": False,
        "next_targets": ["BB ROM directory and parser API implementations, after resolving a safe read alias.",
                         "NCTL operations 0x20..0x23 and DPK IDL operations 0x2d/0x33/0x2e.",
                         "Find a sample-data writer plus a TX consumer before attempting replay."],
    }


def historical_access(rom, table):
    require(hashlib.sha256(rom).hexdigest() == ROM_SHA256, "Historical ROM hash is not pinned")
    require(hashlib.sha256(table).hexdigest() == TABLE_SHA256, "Historical table hash is not pinned")
    read, write = struct.unpack_from("<II", table, 0x78)
    require((read, write) == (0x20001C2A, 0x20001BCE), "Historical BB pointer slots changed")
    rows, _ = decode(rom[write - 0x20000000:0x1C5E], write)
    return {"status": "historical WCPU snapshots; not fresh reads and not BB MCU ROM",
            "rom_sha256": ROM_SHA256, "table_sha256": TABLE_SHA256,
            "bb_read_target": hex(read), "bb_write_target": hex(write),
            "lower_read_pointer_slot": "0x2020562c", "lower_write_pointer_slot": "0x20205628",
            "lower_pointer_values_available": False,
            "limit": "Snapshot ends at 0x20205000; final MMIO transport/alias is unresolved.",
            "write_transport_excerpt": excerpt(rows, 0x20001C0E, 0x20001C2A),
            "read_transport_excerpt": excerpt(rows, 0x20001C2A, 0x20001C40)}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--firmware", required=True, type=Path)
    parser.add_argument("--historical-rom", type=Path)
    parser.add_argument("--historical-table", type=Path)
    parser.add_argument("--output", required=True, type=Path)
    args = parser.parse_args()
    require(bool(args.historical_rom) == bool(args.historical_table), "Supply both historical inputs together")
    require(args.output.resolve() not in {p.resolve() for p in
            (args.firmware, args.historical_rom, args.historical_table) if p}, "Output would overwrite an input")
    report = trace(pinned(args.firmware, FW_SHA256))
    if args.historical_rom:
        report["historical_wcpu_access"] = historical_access(
            pinned(args.historical_rom, ROM_SHA256), pinned(args.historical_table, TABLE_SHA256))
    args.output.write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps({"hardware_access": False, "parser_handlers": 7, "dpk_afe_tables": 3,
                      "arbitrary_iq_source_confirmed": False}))


if __name__ == "__main__":
    main()
