#!/usr/bin/env python3
"""Hash-pinned, bounded native PMAC/PLCP trace. No hardware or DMA is accessed.

Unicorn executes selected x86 functions with register writers replaced by
recording stubs. This establishes software arguments, not a DAC input port.
"""

import argparse
import bisect
import hashlib
import json
from pathlib import Path
import struct

import capstone
import pefile
from unicorn import Uc, UC_ARCH_X86, UC_MODE_64, UC_HOOK_CODE
from unicorn.x86_const import UC_X86_REG_RAX, UC_X86_REG_RCX, UC_X86_REG_RDX, UC_X86_REG_R8, UC_X86_REG_R9, UC_X86_REG_RSP, UC_X86_REG_RIP


DRIVER_SHA256 = '6e008520696c20450959babc2d1f04a742c950d9085c3f02207fce2cd9830bbb'
BASE = 0x140000000
DEVICE, COMMON, INPUT, OUTPUT = 0x30000000, 0x30100000, 0x30200000, 0x30201000
STACK, RETURN = 0x30310008, 0x30400000
TABLE = COMMON+0x2774
FUNCTIONS = {
    'debug_register_table_init': (0x1403C8C68, 0x1403C9A39),
    'plcp_register_table_init': (0x1403CED34, 0x1403D0C5F),
    'plcp_input_init': (0x1403D28AC, 0x1403D2CE5),
    'plcp_delimiter_and_seed': (0x1403D1F18, 0x1403D2351),
    'delimiter_crc8': (0x1403D54C4, 0x1403D555C),
    'bit_field_or': (0x1404DA4BC, 0x1404DA4E6),
    'tx_info_configuration': (0x1403CEA84, 0x1403CED33),
    'channel20_mask': (0x1403CDEC8, 0x1403CDF45),
    'service_scrambler_seed': (0x1403D53A4, 0x1403D54C1),
    'tx_user_configuration': (0x1403CE034, 0x1403CEA82),
    'pmac_start_8922a': (0x1403E9A84, 0x1403E9D4F),
}
WRITERS = (0x140316994, 0x1403168C4)
STUBS = (*WRITERS, 0x1405F45B0, 0x140008874, 0x140001B88)


def word(cpu, address):
    return struct.unpack('<I', cpu.mem_read(address, 4))[0]


class NativeTrace:
    def __init__(self, raw):
        if hashlib.sha256(raw).hexdigest() != DRIVER_SHA256:
            raise ValueError('Unpinned Windows driver')
        self.pe = pefile.PE(data=raw)
        if self.pe.OPTIONAL_HEADER.ImageBase != BASE or self.pe.FILE_HEADER.Machine != 0x8664:
            raise ValueError('Unexpected PE architecture/base')
        bounds = {(BASE+e.struct.BeginAddress, BASE+e.struct.EndAddress)
                  for e in self.pe.DIRECTORY_ENTRY_EXCEPTION}
        self.functions = {}
        decoder = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_64)
        for name, (lo, hi) in FUNCTIONS.items():
            if (lo, hi) not in bounds and name != 'bit_field_or':
                raise ValueError(f'Native function bounds changed: {name}')
            code = self.pe.get_data(lo-BASE, hi-lo)
            instructions = list(decoder.disasm(code, lo))
            if sum(i.size for i in instructions) != len(code):
                raise ValueError(f'Incomplete native decode: {name}')
            if name == 'bit_field_or' and instructions[-1].mnemonic != 'ret':
                raise ValueError('Leaf bit-field helper changed')
            self.functions[name] = {'start_va': hex(lo), 'end_va_exclusive': hex(hi),
                                    'code_sha256': hashlib.sha256(code).hexdigest()}
        cpu = self.cpu = Uc(UC_ARCH_X86, UC_MODE_64)
        image = self.pe.get_memory_mapped_image()
        cpu.mem_map(BASE, (len(image)+4095) & ~4095)
        cpu.mem_write(BASE, image)
        cpu.mem_map(DEVICE, 0x410000)
        # Disable diagnostic logging via its self-pointing global. No logging
        # transport or peripheral implementation is executed.
        cpu.mem_write(0x140920000, struct.pack('<Q', 0x140920000))
        for address in STUBS:
            cpu.mem_write(address, b'\xc3')
        cpu.mem_write(DEVICE+0x9A0, struct.pack('<Q', COMMON))
        self.calls = []
        cpu.hook_add(UC_HOOK_CODE, self.on_code)

    def on_code(self, cpu, address, size, _):
        if address in WRITERS:
            self.calls.append({'writer_va': hex(address),
                               'relative_bb_address': hex(cpu.reg_read(UC_X86_REG_RDX) & 0xffffffff),
                               'mask': hex(cpu.reg_read(UC_X86_REG_R8) & 0xffffffff),
                               'unshifted_value': hex(cpu.reg_read(UC_X86_REG_R9) & 0xffffffff)})
            cpu.reg_write(UC_X86_REG_RAX, 0)
        elif address in STUBS:
            cpu.reg_write(UC_X86_REG_RAX, 0)
        elif not any(lo <= address and address+size <= hi for lo, hi in FUNCTIONS.values()):
            raise ValueError(f'Unexpected native execution: {address:#x}')

    def run(self, name, rdx=INPUT, r8=OUTPUT, r9=0, stack_args=()):
        cpu = self.cpu
        cpu.mem_write(STACK-0x10000, bytes(0x10000))
        cpu.mem_write(STACK, struct.pack('<Q', RETURN))
        for index, value in enumerate(stack_args):
            cpu.mem_write(STACK+0x28+8*index, struct.pack('<Q', value))
        for register, value in ((UC_X86_REG_RSP, STACK), (UC_X86_REG_RCX, DEVICE),
                                (UC_X86_REG_RDX, rdx), (UC_X86_REG_R8, r8), (UC_X86_REG_R9, r9)):
            cpu.reg_write(register, value)
        self.calls = []
        cpu.emu_start(FUNCTIONS[name][0], RETURN, timeout=200000, count=50000)
        if cpu.reg_read(UC_X86_REG_RIP) != RETURN:
            raise ValueError('Native instruction/time bound reached')
        return list(self.calls)

    def initialize(self, cr_type=4):
        cpu = self.cpu
        cpu.mem_write(COMMON, bytes(0x10000))
        cpu.mem_write(INPUT, bytes(0x2000))
        cpu.mem_write(DEVICE+0x13F8, struct.pack('<I', cr_type))
        cpu.mem_write(DEVICE+0x13F0, struct.pack('<I', 0x20000))
        # Use the normal PHY-register start path, not the CCK common-block path.
        cpu.mem_write(DEVICE+0x1404, struct.pack('<I', 1))
        self.run('plcp_register_table_init')


def analyze(raw):
    trace = NativeTrace(raw)
    debug_tables = []
    for cr_type in (4, 7):
        trace.initialize(cr_type)
        trace.run('debug_register_table_init')
        debug_tables.append({'native_cr_type': cr_type,
                             'tx_info_base_register_value': hex(word(trace.cpu, COMMON+0x1890+0x50)),
                             'common_ctrl_base_register_value': hex(word(trace.cpu, COMMON+0x1890+0x70))})
    trace.initialize(4)
    seed_cases = []
    for seed in (0x23, 0x24, 0x25, 0x55):
        trace.cpu.mem_write(INPUT, bytes(0x2000))
        trace.cpu.mem_write(INPUT+0x24, b'\x01')  # Legacy OFDM format
        trace.cpu.mem_write(INPUT+0x2e, b'\x01')  # One user
        trace.cpu.mem_write(INPUT+0x4b, bytes([seed]))
        trace.run('plcp_input_init')
        initialized_seed = trace.cpu.mem_read(INPUT+0x4b, 1)[0]
        first_word = word(trace.cpu, INPUT)
        # Synthetic already-calculated delimiter input: one 128-byte MPDU.
        # This traces packing only, not a validated complete PPDU recipe.
        trace.cpu.mem_write(OUTPUT+0x10, struct.pack('<I', (1 << 22) | (128 << 8)))
        writes = trace.run('plcp_delimiter_and_seed')
        seed_cases.append({'requested_random_seed': seed, 'initialized_random_seed': initialized_seed,
                           'input_first_word_after_native_init': hex(first_word),
                           'register_writes': writes[-5:]})
    source_cases = []
    for source in range(4):
        trace.cpu.mem_write(INPUT, bytes(0x1000))
        trace.cpu.mem_write(INPUT, bytes([source]))
        trace.cpu.mem_write(INPUT+0x24, b'\x01')
        trace.cpu.mem_write(INPUT+0x2e, b'\x01')
        source_cases.append({'supplied_first_byte': source,
                             'register_writes': trace.run('tx_info_configuration')})
    service_cases = []
    for seed in (1, 8, 0x5d, 0x7f):
        trace.cpu.mem_write(INPUT, bytes(0x1000))
        trace.cpu.mem_write(INPUT+0x24, b'\x01')
        trace.cpu.mem_write(INPUT+0x2e, b'\x01')
        trace.cpu.mem_write(INPUT+0x4a, bytes([seed]))
        service_cases.append({'requested_scrambler_seed': seed,
                              'register_writes': trace.run('service_scrambler_seed', r8=0)})
    modes = []
    for mode in (1, 3):
        trace.cpu.mem_write(INPUT, b'\x01')  # Enabled, OFDM (CCK bit clear)
        modes.append({'mode': mode, 'count': 8, 'period': 100,
                      'register_writes': trace.run('pmac_start_8922a', r8=mode, r9=8,
                                                  stack_args=(100, 0))})
    return {'schema_version': 1, 'hardware_access': False, 'driver_sha256': DRIVER_SHA256,
            'arbitrary_ifft_input_demonstrated': False,
            'scope': ['Selected hash-pinned x86 functions executed offline',
                      'Register writers are recording stubs; no bus, DMA, IFFT, DAC or RF modeled',
                      'Delimiter uses synthetic calculated fields, not a full transmit recipe',
                      'Native context/type values are explicit; related-source structures are not assumed identical'],
            'instruction_limit_per_case': 50000, 'timeout_us_per_case': 200000,
            'debug_register_maps': debug_tables, 'random_seed_cases': seed_cases,
            'tx_info_first_byte_cases': source_cases,
            'pmac_service_scrambler_seed_cases': service_cases,
            'pmac_start_modes': modes, 'functions': trace.functions,
            'interpretation': 'PMAC controls and generated packet metadata; no arbitrary per-subcarrier array writer identified in these traced functions'}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--driver', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    if args.output.exists():
        parser.error('Use a fresh output path')
    args.output.write_text(json.dumps(analyze(args.driver.read_bytes()), indent=2)+'\n')


if __name__ == '__main__':
    main()
