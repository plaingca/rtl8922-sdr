#!/usr/bin/env python3
"""Execute pinned WCPU DMA and WCPU/BB mailbox code offline in Unicorn.

MMIO is ordinary emulator memory. No DMA transfer, bus arbitration, interrupts,
converter or RF behavior is simulated. This tool never opens a hardware device.
The supplied function-pointer snapshot is historical, not fresh runtime state.
"""

import argparse
import hashlib
import json
from pathlib import Path
import struct
import sys

# The adjacent historical inventory tool is named inspect.py. Keep it from
# shadowing Python's inspect module when Unicorn imports that standard library.
_search_path = sys.path[:]
try:
    sys.path[:] = [p for p in sys.path if Path(p).resolve() != Path(__file__).parent.resolve()]
    from unicorn import Uc, UC_ARCH_RISCV, UC_MODE_RISCV32, UC_HOOK_CODE, UC_HOOK_MEM_WRITE
    from unicorn.riscv_const import (UC_RISCV_REG_A0, UC_RISCV_REG_A1,
                                    UC_RISCV_REG_PC, UC_RISCV_REG_RA, UC_RISCV_REG_SP)
finally:
    sys.path[:] = _search_path

from inspect_tx_path import FW_SHA256, decode, edge, excerpt, pinned, require


ROM_SHA256 = "d133bbe8b31273f27d9eeae992ce5cccd8001eaf816ebbeca240ce84e07a6ee4"
TABLE_SHA256 = "d9a5d721e0af55f6aceacea9ef272548d485469373072d95aa3433dbd851630f"
RETURN = 0x20400000
DMA_BASE = 0xB8008000
WCPU_MAILBOX = 0x18637600
BB_MAILBOX = 0xA0017600


def word(uc, address):
    return struct.unpack("<I", uc.mem_read(address, 4))[0]


def put_word(uc, address, value):
    uc.mem_write(address, struct.pack("<I", value & 0xFFFFFFFF))


def checked_inputs(firmware, rom, table):
    for name, data, digest in (("firmware", firmware, FW_SHA256),
                               ("ROM", rom, ROM_SHA256),
                               ("historical table", table, TABLE_SHA256)):
        require(hashlib.sha256(data).hexdigest() == digest, f"Unpinned {name}")


def machine(regions):
    uc = Uc(UC_ARCH_RISCV, UC_MODE_RISCV32)
    for base, size, data in regions:
        uc.mem_map(base, size)
        if data:
            uc.mem_write(base, data)
    uc.mem_map(0x20300000, 0x10000)
    uc.mem_map(RETURN, 0x1000)
    uc.reg_write(UC_RISCV_REG_SP, 0x2030FFF0)
    uc.reg_write(UC_RISCV_REG_RA, RETURN)
    return uc


def execute(uc, entry, args, allowed, stubs=None):
    """Bound execution and reject calls outside the explicitly studied code."""
    stubs = stubs or {}
    calls = []
    for address in stubs:
        uc.mem_write(address, bytes.fromhex("8280"))  # c.jr ra, in emulator memory only
    for index, value in enumerate(args):
        uc.reg_write(UC_RISCV_REG_A0 + index, value & 0xFFFFFFFF)

    def on_code(cpu, address, size, _):
        if address in stubs:
            calls.append({"address": hex(address), "a0": hex(cpu.reg_read(UC_RISCV_REG_A0)),
                          "a1": hex(cpu.reg_read(UC_RISCV_REG_A1))})
            cpu.reg_write(UC_RISCV_REG_A0, stubs[address])
            cpu.reg_write(UC_RISCV_REG_PC, cpu.reg_read(UC_RISCV_REG_RA))
        else:
            require(any(lo <= address and address + size <= hi for lo, hi in allowed),
                    f"Unexpected execution at {address:#x}")

    hook = uc.hook_add(UC_HOOK_CODE, on_code)
    try:
        uc.emu_start(entry, RETURN, timeout=100000, count=10000)
    finally:
        uc.hook_del(hook)
    require(uc.reg_read(UC_RISCV_REG_PC) == RETURN, "Offline instruction/time bound reached")
    return calls


def dma_case(rom, table, args, status=0, critical_disabled=1):
    uc = machine([(0x20000000, 0x80000, rom), (0x20200000, 0x10000, None),
                  (0x20146000, 0x3000, None), (DMA_BASE, 0x1000, None)])
    uc.mem_write(0x20201000, table)
    uc.mem_write(0x202045F4, bytes([critical_disabled]))
    put_word(uc, DMA_BASE + 0xE8, status)
    writes = []

    def on_write(cpu, access, address, size, value, _):
        require(size == 4, "Non-word DMA register write")
        writes.append({"address": hex(address), "value": hex(value & 0xFFFFFFFF)})

    uc.hook_add(UC_HOOK_MEM_WRITE, on_write, begin=DMA_BASE, end=DMA_BASE + 0xFFF)
    calls = execute(uc, 0x20008904, args,
                    [(0x20008904, 0x20008A26), (0x20008A8A, 0x20008AB8),
                     (0x20009444, 0x20009448), (0x20009454, 0x20009458)],
                    {0x20146A0E: 0x55, 0x20146A60: 0, 0x20148330: 0})
    return {"arguments": [hex(v) for v in args], "status_before": hex(status),
            "critical_section_disabled": bool(critical_disabled),
            "return": uc.reg_read(UC_RISCV_REG_A0), "register_writes": writes,
            "stubbed_calls": calls}


def mailbox_case(firmware, args):
    uc = machine([(0x20100000, 0x60000, firmware[0x100:0x5F710]),
                  (WCPU_MAILBOX & ~0xFFF, 0x1000, None)])
    # These three routines initialize unrelated state, sample BB settings and
    # handle old completion flags. Only the producer's header/payload/doorbell
    # sequence is executed; this is not a model of mailbox interrupt delivery.
    calls = execute(uc, 0x20111660, args,
                    [(0x20111660, 0x201116C0), (0x2011148C, 0x201114AA)],
                    {0x20111398: 0, 0x2011143E: 0, 0x201113F2: 0})
    payload = bytes(uc.mem_read(WCPU_MAILBOX + 8, 12))
    header = word(uc, WCPU_MAILBOX)
    doorbell = word(uc, WCPU_MAILBOX + 0x80)
    bb = machine([(0x10010000, 0x20000, firmware[0xD3E70:0xDBE70]),
                  (BB_MAILBOX & ~0xFFF, 0x1000, None)])
    # Copy the three words between the independently decoded MMIO domains.
    # This checks wire-format compatibility; it cannot verify a physical alias.
    bb.mem_write(BB_MAILBOX + 8, payload)
    outputs = (0x10027D00, 0x10027D04, 0x10027D08)
    execute(bb, 0x100117EE, outputs,
            [(0x100117EE, 0x1001182A), (0x100106F4, 0x1001073C),
             (0x10010656, 0x10010670)])
    received = [word(bb, address) for address in outputs]
    require(received == list(args[:3]), "Mailbox sender/receiver disagree")
    require(header == 0xC0000003 | ((args[3] & 0xFFF) << 18), "Header format changed")
    require(doorbell == 1, "Producer notification changed")
    return {"arguments": [hex(v) for v in args], "header": hex(header),
            "decoded_command": hex((header >> 18) & 0xFFF), "payload_word_count": header & 0x3FFFF,
            "doorbell": hex(doorbell), "received": [hex(v) for v in received],
            "stubbed_producer_calls": calls}


def afedig_case(firmware, rom, table, restore):
    uc = machine([(0x20100000, 0x60000, firmware[0x100:0x5F710]),
                  (0x20000000, 0x80000, rom), (0x20200000, 0x20000, None),
                  (DMA_BASE, 0x1000, None)])
    uc.mem_write(0x20201000, table)
    uc.mem_write(0x20209BB8, firmware[0x5F710:0x678D8])
    uc.mem_write(0x202045F4, b"\x01")
    # This entire RAM function only populates the RF helper function pointers.
    execute(uc, 0x201464D8, (), [(0x201464D8, 0x2014665A)])
    pointers = {hex(a): hex(word(uc, a)) for a in (0x2020D0A0, 0x2020D09C)}
    require(pointers == {"0x2020d0a0": "0x20146440", "0x2020d09c": "0x2014644a"},
            "RF DMA pointer initialization changed")
    writes = []
    uc.hook_add(UC_HOOK_MEM_WRITE,
                lambda cpu, access, address, size, value, _:
                writes.append({"address": hex(address), "value": hex(value & 0xFFFFFFFF)}),
                begin=DMA_BASE, end=DMA_BASE + 0xFFF)
    buffer = 0x20218000
    entry = 0x2011AF70 if restore else 0x2011AF04
    calls = execute(uc, entry, (buffer,),
                    [(0x2011AF04, 0x2011AFDC), (0x20146440, 0x20146454),
                     (0x20008904, 0x20008A26), (0x20008A8A, 0x20008AB8),
                     (0x20009444, 0x20009448), (0x20009454, 0x20009458)],
                    {0x20008A26: 1})
    source, destination = (buffer, 0x1862C000) if restore else (0x1862C000, buffer)
    require(writes == [{"address": hex(DMA_BASE), "value": hex(source)},
                       {"address": hex(DMA_BASE + 4), "value": hex(destination)},
                       {"address": hex(DMA_BASE + 8), "value": "0x250"},
                       {"address": hex(DMA_BASE + 8), "value": "0x80000250"}],
            "BB/AFE DMA request changed")
    return {"direction": "restore" if restore else "backup", "entry": hex(entry),
            "initialized_pointer_slots": pointers, "source_programmed": hex(source),
            "destination_programmed": hex(destination), "length_argument": "0x250",
            "length_bytes_inferred": 592, "register_writes": writes,
            "stubbed_completion_calls": calls,
            "limitation": "Completion is stubbed successful; bus transfer and AE runtime reachability are unverified"}


def inspect(firmware, rom, table):
    checked_inputs(firmware, rom, table)
    pointers = {slot: struct.unpack_from("<I", table, slot - 0x20201000)[0]
                for slot in (0x2020174C, 0x20201758, 0x20202064, 0x2020206C)}
    require(pointers == {0x2020174C: 0x20009454, 0x20201758: 0x20009444,
                         0x20202064: 0x20008A8A, 0x2020206C: 0x20008904},
            "Historical DMA helper pointers changed")
    rows, _ = decode(rom[0x8904:0x8AB8], 0x20008904)
    main = {}
    for lo, hi in ((0x2011AF04, 0x2011AFDC), (0x20146440, 0x20146454),
                   (0x201464D8, 0x2014665A), (0x20126BF2, 0x20126C80)):
        decoded, _ = decode(firmware[0x100 + lo - 0x20100000:0x100 + hi - 0x20100000], lo)
        main.update(decoded)
    bb, _ = decode(firmware[0xD3E70 + 0x200:0xD3E70 + 0x5468], 0x10010200)
    command_table = struct.unpack_from("<21I", firmware, 0xD3E70 + 0x550C + 0x9EC)
    expected = [0x10012850, 0x1001285E, 0x1001286A, 0x1001283A,
                0x10012832, 0x10012832, 0x1001288A, 0x1001283A]
    expected += [0x10012850] * 11 + [0x10012872, 0x1001287E]
    require(list(command_table) == expected, "BB command table changed")
    cases = []
    for channel in range(6):
        for flag0 in (0, 1):
            for flag1 in (0, 1):
                args = (channel, 0x18716000, 0x18770000, 0x1000, flag0, flag1)
                case = dma_case(rom, table, args)
                expected_control = 0x1000 | (0 if flag0 else 1 << 28) | (flag1 << 29)
                expected_writes = [
                    {"address": hex(DMA_BASE + 16 * channel), "value": hex(args[1])},
                    {"address": hex(DMA_BASE + 16 * channel + 4), "value": hex(args[2])},
                    {"address": hex(DMA_BASE + 16 * channel + 8), "value": hex(expected_control)},
                    {"address": hex(DMA_BASE + 16 * channel + 8), "value": hex(expected_control | 1 << 31)}]
                require(case["return"] == 1 and case["register_writes"] == expected_writes,
                        "Emulated IDDMA register program differs")
                cases.append(case)
    for args, status, critical in [
            ((6, 0, 0, 0x1000, 0, 0), 0, 1),
            ((0, 0x18716000, 0x18770000, 0x1000, 0, 0), 1, 1),
            ((5, 0x18716000, 0x18770000, 0x1000, 0, 0), 0, 0),
            ((0, 0xB8716000, 0xB8637608, 0x3FFFF, 0, 0), 0, 1),
            ((0, 0x20001000, 0x30001000, 0x40000, 1, 0), 0, 1),
            ((0, 0x18716001, 0x18622A5C, 0, 1, 1), 0, 1)]:
        cases.append(dma_case(rom, table, args, status, critical))
    require(all(c["return"] == 0 and not c["register_writes"] for c in cases[24:26]),
            "Invalid/busy channel was not rejected")
    require(all(c["return"] == 1 for c in cases[26:]), "DMA edge case did not return success")
    require([c["address"] for c in cases[26]["stubbed_calls"]] == ["0x20146a0e", "0x20146a60"],
            "Critical-section calls changed")
    require(cases[27]["register_writes"][0]["value"] == "0x18716000" and
            cases[27]["register_writes"][1]["value"] == "0x18637608",
            "High address masking changed")
    require(cases[28]["register_writes"][0]["value"] == "0x20001000" and
            cases[28]["register_writes"][1]["value"] == "0x10001000" and
            cases[28]["register_writes"][2]["value"] == "0x0",
            "Address threshold or length truncation changed")
    require(cases[29]["register_writes"][0]["value"] == "0x18716001" and
            cases[29]["register_writes"][1]["value"] == "0x18622a5c",
            "Unaligned source or register-like destination was filtered")
    mailbox = [mailbox_case(firmware, args) for args in
               ((8, 1, 0, 1), (4, 1, 1, 2), (0x11223344, 0x55667788, 0x90ABCDEF, 0x12345))]
    afedig = [afedig_case(firmware, rom, table, restore) for restore in (False, True)]
    return {
        "schema_version": 1, "hardware_access": False,
        "inputs": {name: {"bytes": len(data), "sha256": hashlib.sha256(data).hexdigest()}
                   for name, data in (("firmware", firmware), ("rom", rom), ("historical_table", table))},
        "scope": ["Actual pinned RV32 instructions executed in Unicorn with MMIO backed by memory.",
                  "Only lock, unlock and logging are stubbed in the DMA start trace; ready/read/write helpers execute.",
                  "Mailbox producer setup and old-completion helpers are stubbed; receiver copy executes without stubs.",
                  "BB/AFE helper initialization and DMA start execute; the completion wait is stubbed successful.",
                  "Copying mailbox payload between address domains is an offline format check, not a physical alias test.",
                  "No hardware DMA transfer, FIFO, sample pacing, interrupt delivery or RF behavior is modeled."],
        "iddma": {"entry": "0x20008904", "register_base_cpu": hex(DMA_BASE),
                  "register_base_global_inferred": "0x18008000",
                  "historical_pointers": {hex(k): hex(v) for k, v in pointers.items()},
                  "arguments": ["channel 0..5", "source", "destination", "length low 18 bits",
                                "zero sets bit28", "nonzero sets bit29"],
                  "address_rule": "address >= 0x30000000 is ANDed with 0x1fffffff; smaller addresses unchanged",
                  "control_rule": "(length & 0x3ffff) | ((!arg4) << 28) | ((!!arg5) << 29), then set bit31",
                  "endpoint_validation": "No RAM-only destination check, alignment check, or FIFO request selector in this routine",
                  "not_proven": ["Hardware meaning of bits28/29", "Arbitrary-address bus reachability",
                                 "Fixed versus incrementing addresses", "DAC sample port or replay consumer"],
                  "excerpts": [excerpt(rows, a, b) for a, b in
                               ((0x200089A4, 0x200089BC), (0x200089C0, 0x200089DE),
                                (0x200089DE, 0x200089FE), (0x200089FE, 0x20008A1E))],
                  "emulated_cases": cases},
        "bb_afe_bulk_copy": {
            "pointer_initializer": "0x201464d8", "dma_wrapper": "0x20146440",
            "wait_wrapper": "0x2014644a", "cpu_window": "0xb862c000",
            "dma_window_programmed": "0x1862c000", "bytes": 592,
            "purpose": "Paired BB/AFE state backup/restore request, no sample playback controls identified",
            "variant_limit": "The image contains backup_afedig_8922d and restore_afedig_8922d error strings; AE live reachability is not established",
            "emulated_cases": afedig,
            "excerpts": [excerpt(main, a, b) for a, b in
                         ((0x20146638, 0x20146658), (0x20146440, 0x20146454),
                          (0x2011AF04, 0x2011AF22), (0x2011AF70, 0x2011AF8E))],
            "other_dma_start": {"entry": "0x20126bf2", "channels_in_code": [0, 1],
                                "behavior": "Same source/destination masking and low18 length, bit31 start, no bit28/29 flags",
                                "status": "Static code only; not a DAC-specific DMA engine"}},
        "mailbox": {"producer": "0x20111660", "producer_header": "0x2011148c",
                    "wcpu_base": hex(WCPU_MAILBOX), "bb_base": hex(BB_MAILBOX),
                    "header": "0xc0000000 | ((command & 0xfff) << 18) | word_count",
                    "payload_offsets": ["0x8", "0xc", "0x10"], "notification_offset": "0x80",
                    "completion_offset": "0x84", "bb_receiver": "0x100117ee",
                    "bb_dispatcher": "0x1001280a", "bb_command_table": "0x100249ec",
                    "command_targets": [{"command": i, "target": hex(v)} for i, v in enumerate(command_table)],
                    "edges": [edge(bb, site, target, purpose) for site, target, purpose in
                              ((0x1001180C, 0x100106F4, "Read three mailbox words"),
                               (0x10014C1A, 0x1001075E, "Interrupt receives command"),
                               (0x10014C2C, 0x10013C8E, "Queue command"),
                               (0x10014DA4, 0x1001280A, "BackupRestore task dispatch"),
                               (0x10012818, 0x100117EE, "Read three arguments"),
                               (0x10012844, 0x100106DA, "Signal completion"))],
                    "emulated_cases": mailbox},
        "conclusion": "Programmable DMA destinations and a WCPU/BB control mailbox are established in code; no DAC sample endpoint is established."
    }


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--firmware", type=Path, required=True)
    parser.add_argument("--rom", type=Path, required=True)
    parser.add_argument("--historical-table", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    require(args.output.resolve() not in {p.resolve() for p in
            (args.firmware, args.rom, args.historical_table)}, "Output would overwrite an input")
    report = inspect(pinned(args.firmware, FW_SHA256), pinned(args.rom, ROM_SHA256),
                     pinned(args.historical_table, TABLE_SHA256))
    args.output.write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps({"hardware_access": False, "dma_cases": len(report["iddma"]["emulated_cases"]),
                      "mailbox_cases": len(report["mailbox"]["emulated_cases"]),
                      "bb_afe_cases": len(report["bb_afe_bulk_copy"]["emulated_cases"])}))


if __name__ == "__main__":
    main()
