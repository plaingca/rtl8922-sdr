#!/usr/bin/env python3
"""Trace pinned native SRAM debug selectors entirely offline.

Runs only the selected x86-64 selector/wrapper routines in Unicorn. Logging
and indirect bus access are replaced by recording stubs. No Windows driver
is loaded, no bus or converter is modeled, and no hardware is accessed.
"""

import argparse
import hashlib
import json
from pathlib import Path
import struct
from zipfile import ZipFile

import capstone
import pefile
from unicorn import Uc, UC_ARCH_X86, UC_MODE_64, UC_HOOK_CODE
from unicorn.x86_const import (UC_X86_REG_RAX, UC_X86_REG_RCX,
                              UC_X86_REG_RDX, UC_X86_REG_R8,
                              UC_X86_REG_R9, UC_X86_REG_RIP,
                              UC_X86_REG_RSP)


DRIVER_SHA256 = "6e008520696c20450959babc2d1f04a742c950d9085c3f02207fce2cd9830bbb"
PACKAGE_SHA256 = "4f1b9e5ea65fd6d4a3f04fdeee77fba83b3c423ee40f4e620c97f148f005e21b"
BASE = 0x140000000
OPS = 0x140CC4210
GUARD_POINTER = 0x1406842F8
RESOLVER = 0x140535AB0
READ = 0x14055DF00
WRITE = 0x14055E160
BUS_READ = 0x1404EBEF0
BUS_WRITE = 0x1404EC160
DEVICE = 0x2100000
OUTPUT = 0x2110000
LOG_OPS = 0x2120000
STACK = 0x21F0008  # Windows x64 entry: RSP is eight bytes off a 16-byte boundary.
RETURN = 0x2200000
GUARD = RETURN + 0x10
LOGGER = RETURN + 0x20
SENTINEL = 0xDEC0ADDE
READ_VALUE = 0xCAFE1234
WRITE_VALUE = 0x1234ABCD
FUNCTIONS = {
    "selector_base": (RESOLVER, 0x140535D0D),
    "sram_debug_read_8922a": (READ, 0x14055E15B),
    "sram_debug_write_8922a": (WRITE, 0x14055E369),
    "bbmcu_masked_read": (0x14035F90C, 0x14035F949),
    "bbmcu_read_transport": (0x14035F880, 0x14035F909),
    "bbmcu_masked_write": (0x14035FA40, 0x14035FAC6),
    "bbmcu_write_transport": (0x14035F990, 0x14035FA40),
    "bb_context_initialization": (0x1402F6240, 0x1402F660A),
    "bb_firmware_configuration": (0x1404CF6E8, 0x1404CFDA3),
    "bb_firmware_file_reader": (0x1404D0010, 0x1404D0146),
}


def require(condition, message):
    if not condition:
        raise ValueError(message)


def checked(data, digest, name):
    require(hashlib.sha256(data).hexdigest() == digest, f"Unpinned {name}")
    return data


def word(cpu, address):
    return struct.unpack("<I", cpu.mem_read(address, 4))[0]


def put_word(cpu, address, value):
    cpu.mem_write(address, struct.pack("<I", value & 0xFFFFFFFF))


def put_pointer(cpu, address, value):
    cpu.mem_write(address, struct.pack("<Q", value))


class NativeTrace:
    def __init__(self, driver):
        checked(driver, DRIVER_SHA256, "Windows driver")
        self.pe = pefile.PE(data=driver)
        require(self.pe.FILE_HEADER.Machine == 0x8664 and
                self.pe.OPTIONAL_HEADER.ImageBase == BASE, "Unexpected PE architecture/base")
        bounds = {(BASE + e.struct.BeginAddress, BASE + e.struct.EndAddress)
                  for e in self.pe.DIRECTORY_ENTRY_EXCEPTION}
        decoder = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_64)
        self.functions = {}
        for name, (lo, hi) in FUNCTIONS.items():
            require((lo, hi) in bounds, f"Unwind bounds changed for {name}")
            code = self.pe.get_data(lo - BASE, hi - lo)
            instructions = list(decoder.disasm(code, lo))
            require(sum(i.size for i in instructions) == len(code), f"Incomplete decode: {name}")
            self.functions[name] = (code, instructions)
        for offset, target in ((0x9C8, RESOLVER), (0xBD0, BUS_READ),
                               (0xBD8, BUS_WRITE), (0x620, WRITE), (0x628, READ)):
            actual = struct.unpack("<Q", self.pe.get_data(OPS + offset - BASE, 8))[0]
            require(actual == target, "Native operations-table linkage changed")

        self.cpu = Uc(UC_ARCH_X86, UC_MODE_64)
        mapped_image = self.pe.get_memory_mapped_image()
        self.cpu.mem_map(BASE, (len(mapped_image) + 4095) & ~4095)
        self.cpu.mem_write(BASE, mapped_image)
        self.cpu.mem_map(DEVICE, 0x100000)
        self.cpu.mem_map(RETURN, 0x1000)
        self.cpu.mem_write(GUARD, bytes.fromhex("ffe0"))  # jmp rax; emulator only
        self.cpu.mem_write(LOGGER, b"\xc3")
        # CFG dispatch is a tail jump to the target in RAX. Peripheral access
        # bodies are never executed; their stubs only record wrapper arguments.
        self.cpu.mem_write(BUS_READ, b"\xc3")
        self.cpu.mem_write(BUS_WRITE, b"\xc3")
        put_pointer(self.cpu, GUARD_POINTER, GUARD)
        put_pointer(self.cpu, DEVICE + 0x1390, OPS)
        put_pointer(self.cpu, DEVICE + 0x18, LOG_OPS)
        put_pointer(self.cpu, LOG_OPS + 0x118, LOGGER)
        self.allowed = [FUNCTIONS[n] for n in
                        ("selector_base", "sram_debug_read_8922a", "sram_debug_write_8922a")]
        self.bus_calls = []
        self.log_calls = 0
        self.transport_status = 0
        self.cpu.hook_add(UC_HOOK_CODE, self.on_code)

    def on_code(self, cpu, address, size, _):
        if address in (BUS_READ, BUS_WRITE):
            call = {"operation": "read" if address == BUS_READ else "write",
                    "address": hex(cpu.reg_read(UC_X86_REG_RDX)),
                    "length_bytes": cpu.reg_read(UC_X86_REG_R8)}
            pointer = cpu.reg_read(UC_X86_REG_R9)
            if address == BUS_READ:
                if not self.transport_status:
                    put_word(cpu, pointer, READ_VALUE)
            else:
                call["value"] = hex(word(cpu, pointer))
            self.bus_calls.append(call)
            cpu.reg_write(UC_X86_REG_RAX, self.transport_status)
        elif address == LOGGER:
            self.log_calls += 1
            cpu.reg_write(UC_X86_REG_RAX, 0)
        elif address == GUARD:
            pass
        else:
            require(any(lo <= address and address + size <= hi for lo, hi in self.allowed),
                    f"Unexpected native execution at {address:#x}")

    def run(self, operation, selector, offset=0x40, remap=False, transport_status=0):
        require(operation in ("base", "read", "write"), "Unsupported operation")
        require(0 <= selector <= 0xFFFFFFFF and 0 <= offset <= 0xFFFFFFFF,
                "Argument outside native u32 range")
        cpu = self.cpu
        self.bus_calls = []
        self.log_calls = 0
        self.transport_status = transport_status
        put_word(cpu, OUTPUT, SENTINEL)
        cpu.mem_write(STACK - 0x1000, bytes(0x1000))
        put_pointer(cpu, STACK, RETURN)
        put_pointer(cpu, DEVICE + 0x140, DEVICE + 0x10000)
        put_word(cpu, DEVICE + 0x1000C, int(remap))
        cpu.reg_write(UC_X86_REG_RSP, STACK)
        cpu.reg_write(UC_X86_REG_RCX, DEVICE)
        if operation == "base":
            cpu.reg_write(UC_X86_REG_RDX, OUTPUT)
            cpu.reg_write(UC_X86_REG_R8, selector)
            cpu.reg_write(UC_X86_REG_R9, 0)
            entry = RESOLVER
        else:
            cpu.reg_write(UC_X86_REG_RDX, offset)
            cpu.reg_write(UC_X86_REG_R8, OUTPUT if operation == "read" else WRITE_VALUE)
            cpu.reg_write(UC_X86_REG_R9, selector)
            entry = READ if operation == "read" else WRITE
        cpu.emu_start(entry, RETURN, timeout=100000, count=10000)
        require(cpu.reg_read(UC_X86_REG_RIP) == RETURN, "Native instruction/time bound reached")
        return {"operation": operation, "selector": selector,
                "offset": hex(offset), "special_offset_remap": remap,
                "synthetic_transport_status": transport_status,
                "return": cpu.reg_read(UC_X86_REG_RAX) & 0xFFFFFFFF,
                "output_word": hex(word(cpu, OUTPUT)),
                "bus_calls": list(self.bus_calls), "logging_stub_calls": self.log_calls}

    def evidence(self, name, lo, hi):
        _, instructions = self.functions[name]
        selected = [i for i in instructions if lo <= i.address < hi]
        require(selected and selected[0].address == lo and
                selected[-1].address + selected[-1].size == hi and len(selected) <= 16,
                "Invalid or excessive instruction excerpt")
        return [{"va": hex(i.address), "mnemonic": i.mnemonic, "operands": i.op_str}
                for i in selected]


def analyze(driver, package=None):
    trace = NativeTrace(driver)
    bases = [trace.run("base", sel) for sel in [*range(36), 0xFFFFFFFF]]
    wrappers = [trace.run(op, sel) for op in ("read", "write") for sel in range(29)]
    remaps = [trace.run(op, 13, offset=0x124, remap=True) for op in ("read", "write")]
    failures = [trace.run(op, 0, transport_status=0x55) for op in ("read", "write")]
    require(all(case["return"] == 0x55 for case in failures), "Transport error propagation changed")
    for case in wrappers:
        require(all(call["length_bytes"] == 4 for call in case["bus_calls"]),
                "Wrapper no longer performs a four-byte indirect access")
        require(len(case["bus_calls"]) == int(case["return"] == 0),
                "Unexpected rejected-selector side effect")
    require(all(c["bus_calls"][0]["address"] == "0x18800040" for c in wrappers
                if c["selector"] == 13), "DMAC selector mapping changed")
    require(all(c["bus_calls"][0]["address"] == "0x18800424" for c in remaps),
            "DMAC special offset remap changed")
    strings = {}
    for label, va, expected in (
            ("rom_stem", 0x14065B880, "RTL8922Afw_rom"),
            ("ram_stem", 0x14065B8F0, "RTL8922Afw"),
            ("bb0_suffix", 0x14065B950, "_bb0"),
            ("bb1_suffix", 0x14065B960, "_bb1"),
            ("extension", 0x14065B870, ".bin")):
        actual = trace.pe.get_data(va - BASE, 64).split(b"\0")[0].decode("ascii")
        require(actual == expected, "BB firmware filename component changed")
        strings[label] = {"va": hex(va), "value": actual}
    report = {
        "schema_version": 1, "hardware_access": False, "driver_sha256": DRIVER_SHA256,
        "emulation": {"architecture": "x86-64", "bounded_cases": len(bases + wrappers + remaps + failures),
                      "instruction_limit_per_case": 10000, "timeout_us_per_case": 100000,
                      "executed": "Native selector and read/write wrappers only",
                      "stubbed": ["CFG dispatch tail jump", "logging", "indirect bus reads and writes"],
                      "not_modeled": ["AXI reachability", "DMA", "clocked playback", "converters", "RF"]},
        "native_operations_table_va": hex(OPS), "base_selector_cases": bases,
        "debug_wrapper_cases": wrappers, "dmac_remap_cases": remaps,
        "transport_failure_cases": failures,
        "bbmcu_access": {
            "observed": "MP BBMCU register access delegates to a host register read/write at "
                        "runtime context offset + supplied offset + (nonzero phy selector ? 0x20000 : 0).",
            "initializer": "For the BE branch, context + 0x9ac is initialized to 0x30000.",
            "limit": "This is a register aperture; no BB-local ROM-to-host alias translation was found.",
            "initializer_excerpt": trace.evidence("bb_context_initialization", 0x1402F6311, 0x1402F6325),
            "read_address_excerpt": trace.evidence("bbmcu_read_transport", 0x14035F88F, 0x14035F8A5)},
        "bb_rom_file_loader": {
            "filename_components": strings,
            "rom_file_read_excerpt": trace.evidence("bb_firmware_configuration", 0x1404CF97D, 0x1404CF990),
            "ram_file_read_excerpt": trace.evidence("bb_firmware_file_reader", 0x1404D0101, 0x1404D011B),
            "limit": "Optional external ROM-image loading support does not supply the file or implement a ROM dump."},
        "functions": {name: {"start_va": hex(FUNCTIONS[name][0]),
                             "end_va_exclusive": hex(FUNCTIONS[name][1]),
                             "code_sha256": hashlib.sha256(code).hexdigest()}
                      for name, (code, _) in trace.functions.items()},
        "conclusion": {"arbitrary_iq_endpoint_identified": False,
                       "observed": "The SRAM debug wrappers select ordinary indirect addresses and transfer four bytes. "
                                   "Extra selectors resolve to MAC tables, packet memory, CPU/peripheral regions or a zero base.",
                       "limits": ["No sample reader, DAC source selection or sample-clock handshake found.",
                                  "A zero-base selector is not evidence that any chosen AXI address is reachable.",
                                  "The separate BB MCU ROM implementation remains unavailable."]},
    }
    if package is not None:
        checked(package.read_bytes(), PACKAGE_SHA256, "driver package")
        with ZipFile(package) as archive:
            names = archive.namelist()
        report["package"] = {"sha256": PACKAGE_SHA256, "entry_count": len(names),
                             "binary_or_rom_named_entries": [n for n in names if
                                 n.lower().endswith((".bin", ".dat", ".sys")) or "rom" in n.lower()],
                             "bb_rom_file_present": any("rtl8922afw_rom" in n.lower() for n in names)}
    return report


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--driver", type=Path, required=True)
    parser.add_argument("--driver-package", type=Path)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    require(args.output.resolve() not in {p.resolve() for p in
            (args.driver, args.driver_package) if p is not None}, "Output would overwrite an input")
    report = analyze(args.driver.read_bytes(), args.driver_package)
    args.output.write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps({"hardware_access": False, "bounded_native_cases": report["emulation"]["bounded_cases"],
                      "arbitrary_iq_endpoint_identified": False}))


if __name__ == "__main__":
    main()
