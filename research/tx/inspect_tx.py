#!/usr/bin/env python3
"""Inspect locally supplied RTL8922A binaries for TX research, entirely offline.

Emits selected disassembly excerpts and firmware table metadata, never binary
data or complete firmware tables. Pinned hashes protect version-specific VAs.
Does not load drivers, access debugfs, contact hardware, or download anything.
"""

import argparse
import bisect
import hashlib
from importlib.metadata import version
import json
from pathlib import Path
import re
import struct

import capstone
from capstone.x86 import X86_OP_IMM, X86_OP_MEM, X86_REG_RIP
import pefile


DRIVER_SHA256 = "6e008520696c20450959babc2d1f04a742c950d9085c3f02207fce2cd9830bbb"
FIRMWARE_SHA256 = "d11927f593c82879bd0437435475d7915a60932374747984b3dc906a23009dea"
NAMES = (
    "rtw_hal_mp_tx_single_tone",
    "rtw_hal_rf_set_singletone_tx",
    "halrf_ops_lo_test",
    "halbb_bb_wrap_set_tx_src",
    "halbb_set_pmac_tx_8922a",
    "halbb_ctrl_afe_dac_8922a",
    "halbb_ctrl_tx_path_pmac_8922a",
    "halrf_iqk_preset_8922a",
    "halrf_iqk_reg_restore_8922a",
    "_iqk_txk_setting_8922a",
    "_iqk_macbb_setting_8922a",
    "_iqk_rx_sram_8922a",
    "halrf_iqk_toneleakage_8922a",
    "_iqk_check_nbiqc_8922a",
    "_iqk_read_xym_8922a",
    "_iqk_lok_check_8922a",
    "halbb_cfg_lbk_8922a",
    "_halrf_tssi_set_ndck_phy0_8922ab",
    "halrf_load_shot_rxcfir",
)
# These two helpers have no function-name string. Their direct call edges
# from the named PMAC entry are checked below; names are our descriptions.
HELPERS = {"pmac_start_helper": 0x1403E9A84, "pmac_stop_helper": 0x1403E9D50}
TRACE_HELPERS = {
    "rf_ops_initialization": 0x14038E7AC,
    "rtl8922a_lo_test_callback": 0x1404630F0,
    "rtl8922a_lo_test_per_path": 0x140464AEC,
    "calibration_afe_force_helper": 0x140465504,
    "calibration_kip_preset_helper": 0x14046C86C,
    "rtl8922a_manual_lok_bypass_helper": 0x140470434,
}
# Small excerpts only: evidence for generator controls and RX SRAM direction.
EXCERPTS = {
    "halrf_ops_lo_test": [(0x140379484, 0x1403794A8)],
    "halbb_set_pmac_tx_8922a": [(0x1403E9857, 0x1403E989C)],
    "halbb_ctrl_afe_dac_8922a": [(0x1403EB80B, 0x1403EB880)],
    "halrf_iqk_toneleakage_8922a": [
        (0x140470779, 0x1404707BF),
        (0x140470826, 0x14047083B),
        (0x140470889, 0x14047092B),
    ],
    "_iqk_rx_sram_8922a": [
        (0x14046D240, 0x14046D258),
        (0x14046D27B, 0x14046D28E),
        (0x14046D2B4, 0x14046D2BE),
        (0x14046D2F7, 0x14046D30A),
    ],
    "pmac_start_helper": [
        (0x1403E9C32, 0x1403E9C61),
        (0x1403E9CDD, 0x1403E9D36),
    ],
    "rtl8922a_lo_test_callback": [(0x1404630F0, 0x140463148)],
    "rtl8922a_lo_test_per_path": [(0x140464B24, 0x140464BC3)],
    "rf_ops_initialization": [(0x14038E962, 0x14038E983)],
    "rtl8922a_manual_lok_bypass_helper": [(0x14047043E, 0x140470484)],
    "_iqk_check_nbiqc_8922a": [(0x14046B73F, 0x14046B7AD)],
    "_iqk_lok_check_8922a": [(0x14046C180, 0x14046C1C7)],
    "_iqk_macbb_setting_8922a": [(0x14046C449, 0x14046C4C9)],
    "halbb_cfg_lbk_8922a": [(0x1403EADA2, 0x1403EADFC)],
    "_halrf_tssi_set_ndck_phy0_8922ab": [(0x1404995AE, 0x14049963E)],
    "halrf_load_shot_rxcfir": [(0x140378E46, 0x140378E5C)],
}


def sha256(data):
    return hashlib.sha256(data).hexdigest()


def checked_input(path, expected):
    data = path.read_bytes()
    actual = sha256(data)
    if actual != expected:
        raise ValueError(f"{path.name}: SHA-256 mismatch: {actual}; expected {expected}")
    return data


def inspect_driver(data):
    pe = pefile.PE(data=data)
    if pe.FILE_HEADER.Machine != 0x8664:
        raise ValueError("Expected an x86-64 PE driver")
    base = pe.OPTIONAL_HEADER.ImageBase
    functions = sorted(
        (base + e.struct.BeginAddress, base + e.struct.EndAddress)
        for e in pe.DIRECTORY_ENTRY_EXCEPTION
    )
    starts = [lo for lo, _ in functions]
    decoder = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_64)
    decoder.detail = True
    decoded = {}

    def containing(address):
        idx = bisect.bisect_right(starts, address) - 1
        if idx < 0 or address >= functions[idx][1]:
            raise ValueError(f"No .pdata function contains {address:#x}")
        return functions[idx]

    def decode(bounds):
        if bounds not in decoded:
            lo, hi = bounds
            code = pe.get_data(lo - base, hi - lo)
            instructions = list(decoder.disasm(code, lo))
            if sum(i.size for i in instructions) != hi - lo:
                raise ValueError(f"Incomplete function decode at {lo:#x}")
            decoded[bounds] = instructions
        return decoded[bounds]

    strings = {}
    for name in NAMES:
        # Exclude substring matches in longer identifiers.
        pattern = rb"(?<![a-zA-Z_0-9])" + re.escape(name.encode()) + rb"\x00"
        matches = list(re.finditer(pattern, data))
        if not matches:
            raise ValueError(f"Missing function-name string: {name}")
        for match in matches:
            strings[base + pe.get_rva_from_offset(match.start())] = name

    located = {name: {} for name in NAMES}
    for section in pe.sections:
        if not section.Characteristics & 0x20000000:
            continue
        code = section.get_data()
        section_va = base + section.VirtualAddress
        # Find likely RIP-relative LEAs cheaply, then verify that each hit
        # is an instruction boundary in the containing .pdata function.
        for match in re.finditer(rb"[\x48\x4c]\x8d[\x05\x0d\x15\x1d\x25\x2d\x35\x3d]", code):
            off = match.start()
            instruction = next(decoder.disasm(code[off : off + 15], section_va + off), None)
            if instruction is None:
                continue
            for operand in instruction.operands:
                if operand.type != X86_OP_MEM or operand.mem.base != X86_REG_RIP:
                    continue
                target = instruction.address + instruction.size + operand.mem.disp
                name = strings.get(target)
                if name is None:
                    continue
                bounds = containing(instruction.address)
                if instruction.address not in {i.address for i in decode(bounds)}:
                    raise ValueError(f"Unaligned string xref: {instruction.address:#x}")
                located[name].setdefault(bounds, []).append(instruction.address)

    def describe(name, bounds, xrefs):
        lo, hi = bounds
        instructions = decode(bounds)
        ranges = EXCERPTS.get(name, [])
        return {
            "name": name,
            "start_va": hex(lo),
            "end_va_exclusive": hex(hi),
            "string_xrefs_va": [hex(a) for a in sorted(xrefs)],
            "code_sha256": sha256(pe.get_data(lo - base, hi - lo)),
            "instruction_count": len(instructions),
            "direct_calls": [
                {"site_va": hex(i.address), "target_va": hex(i.operands[0].imm)}
                for i in instructions
                if i.mnemonic == "call" and i.operands[0].type == X86_OP_IMM
            ],
            "evidence_excerpt": [
                f"{i.address:016x} {i.mnemonic} {i.op_str}"
                for i in instructions
                if any(start <= i.address < end for start, end in ranges)
            ],
        }

    report = []
    for name, locations in located.items():
        if len(locations) != 1:
            raise ValueError(f"Expected one named function for {name}, found {len(locations)}")
        bounds, xrefs = next(iter(locations.items()))
        report.append(describe(name, bounds, xrefs))
    pmac = next(item for item in report if item["name"] == "halbb_set_pmac_tx_8922a")
    call_targets = {int(c["target_va"], 16) for c in pmac["direct_calls"]}
    for name, address in HELPERS.items():
        if address not in call_targets:
            raise ValueError(f"Missing PMAC call edge to {name}")
        bounds = containing(address)
        if bounds[0] != address:
            raise ValueError(f"Helper is not a .pdata function start: {name}")
        report.append(describe(name, bounds, []))
    for name, address in TRACE_HELPERS.items():
        bounds = containing(address)
        if bounds[0] != address:
            raise ValueError(f'Trace helper is not a .pdata start: {name}')
        report.append(describe(name, bounds, []))
    # Resolve the chip's actual callback rather than borrowing an 8852 helper.
    # This leaf has no unwind entry: decode only its LEA, MOV and RET (15 bytes).
    leaf_va, table_va, slot = 0x1404C41FC, 0x14093F510, 0x40
    leaf = list(decoder.disasm(pe.get_data(leaf_va-base, 15), leaf_va))
    if ([i.mnemonic for i in leaf] != ['lea', 'mov', 'ret']
            or leaf[0].operands[1].type != X86_OP_MEM
            or leaf[0].operands[1].mem.base != X86_REG_RIP
            or leaf[0].address + leaf[0].size + leaf[0].operands[1].mem.disp != table_va
            or leaf[1].operands[0].mem.disp != 0x176980):
        raise ValueError('Unexpected RTL8922A RF operations initializer')
    callback = struct.unpack('<Q', pe.get_data(table_va-base+slot, 8))[0]
    if callback != TRACE_HELPERS['rtl8922a_lo_test_callback']:
        raise ValueError('Unexpected RTL8922A LO-test callback slot')
    by_name = {item['name']: item for item in report}
    for caller, callee in (
        ('rf_ops_initialization', leaf_va),
        ('rtl8922a_lo_test_callback', TRACE_HELPERS['rtl8922a_lo_test_per_path']),
        ('halrf_iqk_toneleakage_8922a', TRACE_HELPERS['calibration_afe_force_helper']),
        ('halrf_iqk_toneleakage_8922a', TRACE_HELPERS['calibration_kip_preset_helper']),
    ):
        if not any(int(call['target_va'], 16) == callee for call in by_name[caller]['direct_calls']):
            raise ValueError(f'Missing traced call edge: {caller} -> {callee:#x}')
    lo_dispatch = {
        'initializer_leaf_va': hex(leaf_va), 'table_va': hex(table_va),
        'rf_info_ops_offset': '0x176980', 'lo_test_slot_offset': hex(slot),
        'callback_va': hex(callback),
        'initializer_excerpt': [f'{i.address:016x} {i.mnemonic} {i.op_str}' for i in leaf],
        'initializer_sha256': sha256(pe.get_data(leaf_va-base, 15)),
    }
    # Recover the sparse-mask bug's exact source: r15d=1; ebx=r15d+0xf;
    # r8d=ebx. Mask 0x10 sets bit4, whereas 0x11/value1 clears bit4.
    macbb = {i.address: i for i in decode(containing(0x14046C35C))}
    base_instruction, add_instruction = macbb[0x14046C449], macbb[0x14046C4A1]
    if base_instruction.mnemonic != 'mov' or add_instruction.mnemonic != 'lea':
        raise ValueError('Unexpected AFE force-mask construction')
    force_mask = base_instruction.operands[1].imm + add_instruction.operands[1].mem.disp
    if force_mask != 0x10 or macbb[0x14046C4AA].op_str != 'r8d, ebx':
        raise ValueError('Unexpected AFE force-mask operands')
    short_cfir_stub = next(decoder.disasm(pe.get_data(0xA5F0, 15), base+0xA5F0))
    if short_cfir_stub.mnemonic != 'ret':
        raise ValueError('Short RX-CFIR stub changed')
    followup = {'afe_force_mask': hex(force_mask),
                'afe_force_relative_bb_addresses': ['0x2a20', '0x2b20'],
                'short_rxcfir_callee_va': hex(base+0xA5F0),
                'short_rxcfir_callee_instruction': short_cfir_stub.mnemonic+' '+short_cfir_stub.op_str,
                'short_rxcfir_callee_sha256': sha256(bytes(short_cfir_stub.bytes))}
    # Some direct calls reach tiny jump thunks without unwind entries. Decode
    # only their first instruction, never an invented surrounding function.
    named_starts = {int(item["start_va"], 16) for item in report}
    direct_targets = {
        int(call["target_va"], 16)
        for item in report for call in item["direct_calls"]
    }
    thunks = []
    for target in sorted(direct_targets - named_starts):
        instruction = next(decoder.disasm(pe.get_data(target - base, 15), target), None)
        if (instruction is not None and instruction.mnemonic == "jmp"
                and instruction.operands[0].type == X86_OP_IMM
                and instruction.operands[0].imm in named_starts):
            thunks.append({
                "thunk_va": hex(target),
                "target_va": hex(instruction.operands[0].imm),
                "instruction_sha256": sha256(bytes(instruction.bytes)),
            })
    if not any(t["thunk_va"] == "0x14037c418" and t["target_va"] == "0x140379484" for t in thunks):
        raise ValueError("Missing single-tone to LO-test jump thunk")
    return {"image_base_va": hex(base), "functions": report, "resolved_jump_thunks": thunks,
            "rtl8922a_lo_test_dispatch": lo_dispatch, "followup_controls": followup}


def inspect_firmware(data):
    """Walk fw.h's multi-firmware and element containers, not executable code."""
    def require(condition, message):
        if not condition:
            raise ValueError(message)

    def align16(value):
        return (value + 15) & ~15

    require(len(data) >= 16 and data[0] == 0xFF, "Missing multi-firmware header")
    nr = data[1]
    require(nr > 0 and 16 + nr * 16 <= len(data), "Invalid multi-firmware directory")
    images = []
    for idx in range(nr):
        cv, kind, mp, _, offset, size = struct.unpack_from("<4BII", data, 16 + idx * 16)
        require(offset >= 16 + nr * 16 and offset + size <= len(data), "Invalid image bounds")
        images.append({"cv": cv, "type": kind, "mp": mp, "file_offset": hex(offset), "bytes": size})
    offset = align16(max(int(item["file_offset"], 16) + item["bytes"] for item in images))
    elements = []
    nctl = []
    while offset + 32 <= len(data):
        kind, size = struct.unpack_from("<II", data, offset)
        end = offset + 32 + size
        require(end <= len(data), "Invalid firmware element bounds")
        payload = data[offset + 32 : end]
        element = {
            "id": kind,
            "file_offset": hex(offset),
            "payload_bytes": size,
            "version_bytes": list(data[offset + 8 : offset + 12]),
        }
        elements.append(element)
        if kind == 8:  # RTW89_FW_ELEMENT_ID_RF_NCTL in pinned fw.h
            require(size % 8 == 0, "NCTL payload is not an address/value table")
            entries = list(struct.iter_unpack("<II", payload))
            run = [(i, addr) for i, (addr, _) in enumerate(entries) if 0x8500 <= addr < 0x9500]
            require([addr for _, addr in run] == list(range(0x8500, 0x9500, 4)), "NCTL window changed")
            require([i for i, _ in run] == list(range(run[0][0], run[0][0] + 1024)), "Nonconsecutive NCTL load")
            nctl.append({
                **element,
                "payload_sha256": sha256(payload),
                "register_write_count": len(entries),
                "sequential_window": {
                    "first_entry_index": run[0][0],
                    "last_entry_index": run[-1][0],
                    "first_relative_bb_address": "0x8500",
                    "last_relative_bb_address": "0x94fc",
                    "words": len(run),
                },
                "access_control_writes": [
                    {"entry_index": i, "relative_bb_address": hex(addr), "value": hex(value)}
                    for i, (addr, value) in enumerate(entries) if addr == 0x8080
                ],
                "interpretation": "NCTL initialization load; not an identified TX sample buffer",
            })
        offset = align16(end)
    require(nctl, "Missing RF_NCTL element")
    require(not any(data[offset:]), "Unparsed trailing firmware data")
    return {"images": images, "elements": elements, "nctl": nctl}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--driver", type=Path, required=True, help="Locally supplied rtwlane711.sys, 6102.24.143.0")
    parser.add_argument("--firmware", type=Path, help="Optional pinned rtw8922a_fw-4.bin")
    parser.add_argument("--output", type=Path, required=True, help="Derived JSON report; no raw binary output")
    args = parser.parse_args()
    try:
        driver = checked_input(args.driver, DRIVER_SHA256)
        report = {
            "schema_version": 2,
            "hardware_access": False,
            "arbitrary_iq_tx_demonstrated": False,
            "inputs": {"driver": {"bytes": len(driver), "sha256": sha256(driver)}},
            "analysis_tools": {
                "capstone_package": version("capstone"),
                "capstone_api": capstone.__version__,
                "pefile": pefile.__version__,
            },
            "windows_driver": inspect_driver(driver),
        }
        if args.firmware is not None:
            firmware = checked_input(args.firmware, FIRMWARE_SHA256)
            report["inputs"]["firmware"] = {"bytes": len(firmware), "sha256": sha256(firmware)}
            report["linux_firmware"] = inspect_firmware(firmware)
    except (OSError, ValueError, pefile.PEFormatError) as error:
        parser.exit(1, f"Inspection failed: {error}\n")
    args.output.write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps({"functions": len(report["windows_driver"]["functions"]), "hardware_access": False}))


if __name__ == "__main__":
    main()
