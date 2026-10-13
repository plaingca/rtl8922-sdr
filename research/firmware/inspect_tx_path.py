#!/usr/bin/env python3
"""Reproduce the pinned RTL8922A TX firmware trace using offline files only.

Emits metadata, decoded tables and short instruction excerpts, never images or
full disassemblies. Requires capstone and (with --windows-driver) pefile from
research/requirements.txt. Address mappings are static, not live PC readings.
"""

import argparse
from collections import Counter
import hashlib
import json
from pathlib import Path
import struct

import capstone


FW_SHA256 = "d11927f593c82879bd0437435475d7915a60932374747984b3dc906a23009dea"
PE_SHA256 = "6e008520696c20450959babc2d1f04a742c950d9085c3f02207fce2cd9830bbb"
REGS = "zero ra sp gp tp t0 t1 t2 s0 s1 a0 a1 a2 a3 a4 a5 a6 a7 s2 s3 s4 s5 s6 s7 s8 s9 s10 s11 t3 t4 t5 t6".split()


def require(condition, message):
    if not condition:
        raise ValueError(message)


def pinned(path, expected):
    data = path.read_bytes()
    require(hashlib.sha256(data).hexdigest() == expected, f"Unpinned input: {path}")
    return data


def decode(code, base):
    """Honor instruction lengths even when Capstone lacks a particular opcode.

    Capstone 5.0.7 does not decode the Zbs instructions used by this BB MCU.
    Splitting an unknown 32-bit instruction into compressed halves is invalid.
    Only standard RV32 Zbs encodings receive the narrow fallback below.
    """
    decoder = capstone.Cs(capstone.CS_ARCH_RISCV,
                          capstone.CS_MODE_RISCV32 | capstone.CS_MODE_RISCVC)
    decoder.detail = True
    result = {}
    fallback = Counter()
    offset = 0
    while offset < len(code):
        require(offset + 2 <= len(code), "Truncated instruction halfword")
        halfword = struct.unpack_from("<H", code, offset)[0]
        size = 2 if halfword & 3 != 3 else 4
        require(size == 2 or halfword & 0x1F != 0x1F, "Unsupported instruction length")
        require(offset + size <= len(code), "Truncated instruction")
        address = base + offset
        raw = code[offset:offset + size]
        instruction = next(decoder.disasm(raw, address), None)
        row = {"address": hex(address), "size": size}
        if instruction is not None and instruction.size == size:
            row.update(mnemonic=instruction.mnemonic, operands=instruction.op_str)
            if instruction.mnemonic in ("jal", "c.jal", "j", "c.j"):
                row["direct_target"] = hex(address + instruction.operands[-1].imm)
        else:
            word = int.from_bytes(raw, "little")
            opcode, funct3, funct7 = word & 127, (word >> 12) & 7, word >> 25
            mnemonic = {(0x14, 1): "bset", (0x24, 1): "bclr",
                        (0x34, 1): "binv", (0x24, 5): "bext"}.get((funct7, funct3))
            if size == 4 and opcode in (0x13, 0x33) and mnemonic:
                mnemonic += "i" if opcode == 0x13 else ""
                source2 = str((word >> 20) & 31) if opcode == 0x13 else REGS[(word >> 20) & 31]
                row.update(mnemonic=mnemonic,
                           operands=f"{REGS[(word >> 7) & 31]}, {REGS[(word >> 15) & 31]}, {source2}",
                           decoder="RV32 Zbs encoding fallback")
                fallback[mnemonic] += 1
            else:
                row.update(mnemonic="unknown", operands=hex(word))
        result[address] = row
        offset += size
    return result, dict(fallback)


def excerpt(instructions, start, end):
    require(start in instructions, f"Missing excerpt start {start:#x}")
    rows = [row for address, row in instructions.items() if start <= address < end]
    require(rows and int(rows[-1]["address"], 16) + rows[-1]["size"] == end,
            f"Excerpt end is not an instruction boundary: {end:#x}")
    require(all(row["mnemonic"] != "unknown" for row in rows), "Unknown instruction in excerpt")
    return rows


def edge(instructions, site, target, purpose):
    row = instructions[site]
    require(row.get("direct_target") == hex(target), f"Call/jump changed at {site:#x}")
    return {"site": hex(site), "target": hex(target), "purpose": purpose,
            "instruction": row}


def inspect_firmware(data):
    # Walk only the ordinary code/data prefix. Security pools are not parsed.
    image = 0x40
    words = struct.unpack_from("<12I", data, image)
    require(words[3] >> 24 == 1 and words[5] >> 16 == 192, "Unexpected image header")
    sections, cursor = [], image + (words[5] >> 16)
    for index in range(2):
        address, flags, extra, _ = struct.unpack_from("<4I", data, image + 48 + index * 16)
        length = flags & 0xFFFFFF
        require((flags >> 24) & 0xF != 9 and not flags & (1 << 28) and not extra & 0xFF,
                "Expected ordinary section without checksum/MSSC trailer")
        require(cursor + length <= len(data), "Section outside image")
        sections.append((cursor, address, length))
        cursor += length
    require(sections == [(0x100, 0x20100000, 0x5F610),
                         (0x5F710, 0x20209BB8, 0x81C8)], "Pinned sections changed")
    code_offset, code_base, code_length = sections[0]
    # Known function boundaries avoid decoding embedded constants as code.
    main = {}
    for start, end in [(0x20116E5A, 0x201186B8), (0x2011C95E, 0x2011CCA0)]:
        rows, _ = decode(data[code_offset + start - code_base:
                              code_offset + end - code_base], start)
        require(all(r["mnemonic"] != "unknown" for r in rows.values()), "Incomplete WCPU trace decode")
        main.update(rows)
    data_offset, data_base, data_length = sections[1]

    def main_data(address, count):
        require(data_base <= address and address + count <= data_base + data_length,
                "Main data read out of bounds")
        return data[data_offset + address - data_base:data_offset + address - data_base + count]

    dispatch = struct.unpack("<10I", main_data(0x2020D3C8, 40))
    require(dispatch[3] == 0x2011CB9E, "DPK dispatch target changed")
    require(all(target in main for target in dispatch), "Invalid dispatch instruction boundary")
    trace = [
        edge(main, 0x2011CC9E, 0x2011C95E, "H2C class 0x0b dispatcher"),
        edge(main, 0x2011CBBA, 0x20118662, "Function 3 DPK request handler"),
        edge(main, 0x2011869A, 0x20118504, "Per-path DPK orchestration"),
        edge(main, 0x201185E6, 0x20118394, "DPK calibration core"),
        edge(main, 0x2011841A, 0x20117E94, "Gain/calibration loop"),
        edge(main, 0x20118422, 0x20118130, "IDL stage, named by adjacent firmware log"),
        edge(main, 0x2011814E, 0x20117038, "Launch operation 0x2d"),
        edge(main, 0x20118158, 0x20117038, "Launch operation 0x33"),
        edge(main, 0x20118168, 0x20117038, "Tail-launch operation 0x2e"),
        edge(main, 0x201175AA, 0x2011BF94, "Write RX SRAM index, not sample value"),
        edge(main, 0x201175B2, 0x2011BF9E, "Read RX SRAM data"),
        edge(main, 0x2011808C, 0x2011BF9E, "Read DPK coefficient word"),
    ]
    bb_offset, bb_base = 0xD3E70, 0x10010000
    bb = data[bb_offset:bb_offset + 32768]
    header = struct.unpack_from("<8I", bb)
    require(header[:3] == (0x52667742, 0x10010200, 0x10010200), "BB header changed")
    source, destination, data_end = header[4:7]
    require((source, destination, data_end) == (0x1001550C, 0x10024000, 0x10024CFC),
            "BB data mapping changed")

    def bb_data(address, count):
        require(destination <= address and address + count <= data_end, "BB data read out of bounds")
        offset = source - bb_base + address - destination
        return bb[offset:offset + count]

    bb_code, fallback = decode(bb[0x200:0x5468], bb_base + 0x200)
    unknown = [row for row in bb_code.values() if row["mnemonic"] == "unknown"]
    require([(r["address"], r["operands"]) for r in unknown] == [("0x10010cae", "0x10e7878b")],
            "Unexpected BB unknown instruction")
    require(bb_data(0x10024B44, 14) == b"BackupRestore\0", "Task string mapping changed")
    bb_dispatch = struct.unpack("<21I", bb_data(0x100249EC, 84))
    require(all(target in bb_code for target in bb_dispatch), "Invalid BB dispatch target")
    groups = []
    for index in range(14):
        count, starts, ends, buffer, masks, total_ptr = struct.unpack(
            "<6I", bb_data(0x10024814 + index * 24, 24))
        require(0 < count <= 64, "Unexpected backup range count")
        start_values = struct.unpack(f"<{count}H", bb_data(starts, count * 2))
        end_values = struct.unpack(f"<{count}H", bb_data(ends, count * 2))
        mask_values = struct.unpack(f"<{count}I", bb_data(masks, count * 4))
        require(all(lo <= hi and (hi - lo) % 4 == 0 for lo, hi in zip(start_values, end_values)),
                "Invalid register backup interval")
        groups.append({"group": index, "initial_buffer": hex(buffer),
                       "total_bytes_state_pointer": hex(total_ptr),
                       "ranges": [{"start": hex(lo), "end_inclusive": hex(hi), "mask": hex(mask)}
                                  for lo, hi, mask in zip(start_values, end_values, mask_values)]})
    require(any(r["start"] == "0x8500" and r["end_inclusive"] == "0x94fc"
                for r in groups[0]["ranges"]), "NCTL backup range missing")
    return {
        "firmware": {"sha256": FW_SHA256, "bytes": len(data),
                     "ordinary_prefix_sections": [{"file_offset": hex(o), "destination": hex(a), "bytes": n}
                                                  for o, a, n in sections]},
        "wc_cpu": {
            "h2c_class": "0x0b", "h2c_function": 3,
            "request_fields": ["len=8", "phy", "dpk_enable", "kpath", "band", "bw", "channel", "debug"],
            "dispatch_table": {"address": "0x2020d3c8", "targets": [hex(t) for t in dispatch]},
            "verified_direct_edges": trace,
            "one_shot": {"function": "0x20117038", "bb_command_register": "0x8000",
                         "command_formula": "((18 * path + 0x19) | (operation << 8)) & 0xffff",
                         "status_checks": ["BB 0xbff8 low byte == 0x55", "BB 0x80fc low halfword == 0x8000"],
                         "poll_iteration_limit_each": 2000,
                         "excerpts": excerpt(main, 0x2011703E, 0x2011704E) +
                                     excerpt(main, 0x20117060, 0x2011708A)},
            "rx_sram": {"function": "0x20117556", "words_read": 512,
                        "index_write": "BB 0x80d8 = 0x10000 | index",
                        "data_read": "BB 0x80fc", "direction": "readback to firmware log",
                        "excerpt": excerpt(main, 0x20117592, 0x201175CA)},
            "coefficients": {"function": "0x20118012", "words_per_bank": 24,
                             "formula_for_table_index_0_or_1": "0xa500 + (path << 10) + table_index * 0x1d0 + k_index * 0x60",
                             "direction": "readback to coefficient log; no waveform replay established",
                             "excerpt": excerpt(main, 0x20118044, 0x2011807A)},
            "request_excerpt": excerpt(main, 0x2011866A, 0x20118690),
            "idl_operations_excerpt": excerpt(main, 0x20118148, 0x2011816C),
        },
        "bb_mcu_cv1": {
            "section_file_offset": hex(bb_offset), "entry_candidate": "0x10010200",
            "data_mapping": {"source": hex(source), "destination": hex(destination), "end_exclusive": hex(data_end),
                             "status": "inferred from header and validated static references; not live PC validation"},
            "decoder_zbs_fallback_counts": fallback,
            "unresolved_code_words": unknown,
            "text_end_candidate": "0x10015468 (followed by exception-frame-like metadata)",
            "task_name": "BackupRestore", "task_entry": "0x10014d5a",
            "verified_direct_edges": [edge(bb_code, 0x10015108, 0x1001308A, "Task creation helper"),
                                      edge(bb_code, 0x10014DA4, 0x1001280A, "Queued command dispatch"),
                                      edge(bb_code, 0x10012818, 0x100117EE, "Read mailbox arguments")],
            "command_table": {"address": "0x100249ec", "targets": [hex(t) for t in bb_dispatch]},
            "backup_descriptors": groups,
            "save_function": "0x10011efe", "restore_function": "0x1001200c",
            "task_creation_excerpt": excerpt(bb_code, 0x100150F0, 0x1001510C),
            "restore_copy_excerpt": excerpt(bb_code, 0x100120AC, 0x100120C6) +
                                    excerpt(bb_code, 0x100120DA, 0x100120F0),
        },
    }


def inspect_windows(data):
    import pefile

    pe = pefile.PE(data=data)
    base = pe.OPTIONAL_HEADER.ImageBase
    decoder = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_64)
    decoder.detail = True
    rows = list(decoder.disasm(pe.get_data(0x140378E28 - base, 0x34), 0x140378E28))
    call = next(i for i in rows if i.address == 0x140378E57)
    require(call.mnemonic == "call" and call.operands[0].imm == 0x14000A5F0, "RXCFIR dispatch changed")
    require(pe.get_data(0x14000A5F0 - base, 3) == b"\xc2\x00\x00", "RXCFIR leaf is no longer ret 0")
    return {"sha256": PE_SHA256, "bytes": len(data),
            "load_shot_rxcfir": {"wrapper": "0x140378e28", "chip_id_branch": "0x66",
                                 "call_site": "0x140378e57", "target": "0x14000a5f0",
                                 "target_instruction": "ret 0", "status": "empty leaf in this build"}}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--firmware", required=True, type=Path)
    parser.add_argument("--windows-driver", type=Path)
    parser.add_argument("--output", required=True, type=Path)
    args = parser.parse_args()
    require(args.output.resolve() not in {p.resolve() for p in (args.firmware, args.windows_driver) if p},
            "Output would overwrite an input")
    report = {"schema_version": 1, "hardware_access": False, "capstone_version": capstone.__version__,
              **inspect_firmware(pinned(args.firmware, FW_SHA256))}
    if args.windows_driver:
        report["windows_driver"] = inspect_windows(pinned(args.windows_driver, PE_SHA256))
    report["limits"] = [
        "Static call chains establish calibration control, not arbitrary I/Q replay.",
        "No TX sample buffer, sample clock/format, repeat control or DAC input mux is established.",
        "RX SRAM readback and DPK coefficient banks must not be labeled TX waveform RAM.",
        "BB register backup/restore can write registers but does not prove a sample playback path.",
        "NCTL microcode semantics and modified-firmware acceptance remain unresolved.",
        "BB addresses are relative register offsets, not host physical addresses.",
    ]
    args.output.write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps({"hardware_access": False, "wc_cpu_direct_edges": len(report["wc_cpu"]["verified_direct_edges"]),
                      "bb_backup_groups": len(report["bb_mcu_cv1"]["backup_descriptors"])}))


if __name__ == "__main__":
    main()
