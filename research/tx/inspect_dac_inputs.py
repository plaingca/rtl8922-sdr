#!/usr/bin/env python3
"""Locate the pinned RTL8922A DACK source/offset helpers offline.

Emits function hashes, call edges and short register-reference excerpts.
Never executes vendor code or accesses hardware; not a complete decompiler.
"""

import argparse
import bisect
import hashlib
import json
from pathlib import Path

import capstone
import pefile


DRIVER_SHA256 = '6e008520696c20450959babc2d1f04a742c950d9085c3f02207fce2cd9830bbb'
HELPERS = {
    'dack_dispatch': 0x14045D3B0,
    'local_dack': 0x14046106C,
    'path1_calibration_variant': 0x14045CF74,
    'path1_dack_source_variant': 0x14045B078,
    'path1_dac_dc_correction_variant': 0x14045BF64,
}
REGISTERS = (0x2B58, 0x2BCC, 0x2BD0, 0x2BD4, 0x82CC, 0x8220,
             0xC4D0, 0xC4D4, 0xC1F6, 0xC1F7)


def analyze(raw):
    if hashlib.sha256(raw).hexdigest() != DRIVER_SHA256:
        raise ValueError('Unpinned Windows driver')
    pe = pefile.PE(data=raw)
    base = pe.OPTIONAL_HEADER.ImageBase
    bounds = sorted((base + x.struct.BeginAddress, base + x.struct.EndAddress)
                    for x in pe.DIRECTORY_ENTRY_EXCEPTION)
    starts = [lo for lo, _ in bounds]
    decoder = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_64)
    decoder.detail = True
    slot = 0x14093F510 + 0x28
    target = int.from_bytes(pe.get_data(slot - base, 8), 'little')
    if target != HELPERS['dack_dispatch']:
        raise ValueError('8922A DACK operations-table slot changed')
    functions = {}
    for name, address in HELPERS.items():
        i = bisect.bisect_right(starts, address) - 1
        lo, hi = bounds[i]
        if lo != address:
            raise ValueError(f'Function boundary changed for {name}')
        code = pe.get_data(lo - base, hi - lo)
        instructions = list(decoder.disasm(code, lo))
        if sum(x.size for x in instructions) != len(code):
            raise ValueError(f'Incomplete disassembly for {name}')
        references, calls = [], []
        for instruction in instructions:
            operands = instruction.operands
            if instruction.mnemonic == 'call' and operands[0].type == capstone.x86.X86_OP_IMM:
                calls.append(hex(operands[0].imm))
            if any(o.type == capstone.x86.X86_OP_IMM and o.imm in REGISTERS for o in operands):
                references.append({'va': hex(instruction.address),
                                   'instruction': instruction.mnemonic + ' ' + instruction.op_str})
        functions[name] = {'start_va': hex(lo), 'end_va': hex(hi),
                           'function_sha256': hashlib.sha256(code).hexdigest(),
                           'direct_calls': sorted(set(calls)), 'register_reference_excerpts': references}
    for caller, callees in [('dack_dispatch', ['local_dack']),
                            ('local_dack', ['path1_calibration_variant']),
                            ('path1_calibration_variant', ['path1_dack_source_variant', 'path1_dac_dc_correction_variant'])]:
        if not all(hex(HELPERS[c]) in functions[caller]['direct_calls'] for c in callees):
            raise ValueError(f'Call graph changed at {caller}')
    return {'schema_version': 1, 'hardware_access': False, 'vendor_code_executed': False,
            'driver_sha256': DRIVER_SHA256, 'operations_table_slot_va': hex(slot),
            'functions': functions,
            'limits': 'Selected DACK variant only; field meanings require tracing and hardware evidence. No sample RAM found here.'}


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--driver', type=Path, required=True)
    p.add_argument('--output', type=Path, required=True)
    args = p.parse_args()
    if args.output.exists():
        p.error('Use a fresh output path')
    args.output.write_text(json.dumps(analyze(args.driver.read_bytes()), indent=2) + '\n')


if __name__ == '__main__':
    main()
