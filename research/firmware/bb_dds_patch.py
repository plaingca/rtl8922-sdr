#!/usr/bin/env python3
"""Offline builder for a bounded BB mailbox NCO experiment, pinned CV1 only.

The unused command 0x3fe is intercepted before the normal dispatcher. All other
commands retain their original prologue and execution path. No driver changes,
security-setting changes, host-fed ring or physical clock claim are involved.
"""
import argparse
import hashlib
import json
from pathlib import Path
import struct

from bb_rom_copy_patch import (SECTION, LOCAL_BASE, addi, lui, lw, sw, bne,
                               jump, load_constant, immediate)
from bb_image_integrity import refresh_defaults, inspect_defaults
from probe_bb_rom import FIRMWARE_SHA256, require

HOOK = 0x1001280A
STUB = 0x10016400
OUTPUT = 0x10017B00
HOST_OUTPUT = 0x1863FB00
COMMAND = 0x3FE
MAGIC = 0x44445331
MAILBOX = 0xA0017600
NCO = 0xA000802C
MAX_COUNT = 262144
SAVED = [1, 5, 6, 7, *range(10, 18), *range(28, 32)]


def alu(rd, a, b, funct3=0):
    return b << 20 | a << 15 | funct3 << 12 | rd << 7 | 0x33


def opi(rd, a, value, funct3):
    return immediate(value, 12) << 20 | a << 15 | funct3 << 12 | rd << 7 | 0x13


class Assembler:
    def __init__(self):
        self.words, self.labels, self.fixups = [], {}, []

    def emit(self, *words):
        self.words.extend(words)

    def constant(self, reg, value):
        self.emit(*load_constant(reg, value))

    def label(self, name):
        self.labels[name] = len(self.words) * 4

    def branch(self, a, b, label, funct3=0):
        self.fixups.append((len(self.words), a, b, label, funct3))
        self.emit(0)

    def j(self, label):
        self.branch(0, 0, label)

    def finish(self):
        for index, a, b, label, funct3 in self.fixups:
            self.words[index] = (bne(a, b, self.labels[label] - index * 4) & ~(7 << 12)) | funct3 << 12
        return struct.pack(f'<{len(self.words)}I', *self.words)


def stub():
    a = Assembler()
    a.emit(addi(2, 2, -64))
    for i, reg in enumerate(SAVED):
        a.emit(sw(reg, 2, i * 4))
    a.constant(5, COMMAND)
    a.branch(10, 5, 'normal', 1)
    a.constant(6, MAILBOX)
    a.emit(lw(7, 6, 8))
    a.constant(5, MAGIC)
    a.branch(7, 5, 'normal', 1)
    a.constant(28, OUTPUT)
    a.emit(sw(5, 28, 0), lw(7, 28, 4), addi(7, 7, 1), sw(7, 28, 4),
           addi(7, 0, 1), sw(7, 28, 8), sw(0, 28, 36),
           lw(10, 6, 12), lw(11, 6, 16), sw(10, 28, 12), sw(11, 28, 16))
    # a2 = mode; a3 = delay; a4 = fractional increment; a5 = accumulator.
    a.emit(opi(12, 11, 12, 5), opi(12, 12, 15, 7), sw(12, 28, 40),
           opi(13, 11, 0x3FF, 7), opi(14, 11, 16, 5), addi(15, 0, 0))
    a.constant(5, NCO)
    a.emit(lw(16, 5, 0), sw(16, 28, 20), lw(7, 5, -0x24), sw(7, 28, 28),
           lw(7, 5, 0x5C), sw(7, 28, 32))
    a.branch(12, 0, 'done')  # Read-only address-mapping command.
    a.emit(addi(7, 0, 3))
    a.branch(7, 12, 'invalid', 6)  # Unsigned greater than maximum mode.
    a.constant(7, MAX_COUNT)
    a.branch(7, 10, 'invalid', 6)
    a.branch(10, 0, 'invalid')
    a.emit(opi(7, 11, 10, 5), opi(7, 7, 3, 7))
    a.branch(7, 0, 'invalid', 1)  # Reserved delay bits must be zero.
    a.branch(13, 0, 'bounded')
    a.constant(7, 16384)
    a.branch(7, 10, 'invalid', 6)
    a.label('bounded')
    a.constant(7, 0xFFFFF000)
    a.emit(alu(17, 16, 7, 7))  # Preserve all non-NCO fields.
    a.emit(addi(7, 0, 1))
    a.branch(12, 7, 'same_loop')
    a.emit(addi(7, 0, 2))
    a.branch(12, 7, 'fraction_loop')
    # Repeating 32-bit pattern; one selector update per iteration.
    a.constant(15, 0xD39A6C57)
    a.label('pattern_loop')
    a.emit(opi(7, 15, 1, 7), opi(7, 7, 1, 1), addi(7, 7, 1), alu(7, 7, 17, 6),
           sw(7, 5, 0), opi(7, 15, 31, 1), opi(15, 15, 1, 5), alu(15, 15, 7, 6))
    a.j('delay')
    a.label('fraction_loop')
    # First-order error accumulation: index 1 or 2, average 1+fraction/65536.
    a.emit(alu(15, 15, 14), opi(7, 15, 16, 5), addi(7, 7, 1), alu(7, 7, 17, 6),
           sw(7, 5, 0), opi(15, 15, 16, 1), opi(15, 15, 16, 5))
    a.j('delay')
    a.label('same_loop')
    a.emit(sw(16, 5, 0))
    a.label('delay')
    a.emit(addi(7, 13, 0))
    a.branch(7, 0, 'next')
    a.label('delay_loop')
    a.emit(addi(7, 7, -1))
    a.branch(7, 0, 'delay_loop', 1)
    a.label('next')
    a.emit(addi(10, 10, -1))
    a.branch(10, 0, 'finished')
    a.emit(addi(7, 0, 1))
    a.branch(12, 7, 'same_loop')
    a.emit(addi(7, 0, 2))
    a.branch(12, 7, 'fraction_loop')
    a.j('pattern_loop')
    a.label('finished')
    a.emit(lw(7, 28, 12), sw(7, 28, 36), addi(7, 0, 1))
    a.branch(12, 7, 'done')
    a.emit(sw(17, 5, 0), 0x0FF0000F)  # DDS zero at finite RF sequence end.
    a.label('done')
    a.emit(lw(7, 5, 0), sw(7, 28, 24), addi(7, 0, 2))
    a.j('complete')
    a.label('invalid')
    a.emit(addi(7, 0, 3))
    a.label('complete')
    a.emit(0x0FF0000F, sw(7, 28, 8), 0x0FF0000F)
    # Same completion notification as the original dispatcher.
    a.emit(lw(7, 6, 0x84), opi(7, 7, 1, 6), sw(7, 6, 0x84))
    for i, reg in enumerate(SAVED):
        a.emit(lw(reg, 2, i * 4))
    a.emit(addi(2, 2, 64), 0x00008067)  # ret
    a.label('normal')
    for i, reg in enumerate(SAVED):
        a.emit(lw(reg, 2, i * 4))
    a.emit(addi(2, 2, 64))
    # Exactly reproduce displaced c.addi sp,-32; c.swsp ra,28(sp).
    a.emit(addi(2, 2, -32), sw(1, 2, 28))
    a.emit(jump(HOOK + 4 - (STUB + len(a.words) * 4)))
    return a.finish(), {k: hex(STUB + v) for k, v in a.labels.items()}


def build(firmware):
    require(hashlib.sha256(firmware).hexdigest() == FIRMWARE_SHA256, 'Unpinned firmware')
    offset = SECTION + HOOK - LOCAL_BASE
    require(firmware[offset:offset + 4] == bytes.fromhex('011106ce'), 'Dispatcher prologue changed')
    code, labels = stub()
    start = SECTION + STUB - LOCAL_BASE
    require(STUB + len(code) < OUTPUT, 'Stub overlaps output')
    require(not any(firmware[start:SECTION + 0x8000]), 'Scratch IRAM is not padding')
    patched = bytearray(firmware)
    patched[offset:offset + 4] = struct.pack('<I', jump(STUB - HOOK))
    patched[start:start + len(code)] = code
    regions = [{'file_offset': hex(offset), 'bytes': 4}, {'file_offset': hex(start), 'bytes': len(code)}]
    regions.extend(refresh_defaults(firmware, patched))
    report = {'schema_version': 1, 'hardware_access': False,
              'original_sha256': FIRMWARE_SHA256, 'patched_sha256': hashlib.sha256(patched).hexdigest(),
              'hook': hex(HOOK), 'stub': hex(STUB), 'stub_bytes': len(code), 'labels': labels,
              'output_local': hex(OUTPUT), 'output_host': hex(HOST_OUTPUT),
              'command': COMMAND, 'magic': hex(MAGIC), 'nco_local_hypothesis': hex(NCO),
              'changed_regions': regions, 'integrity': inspect_defaults(patched),
              'modes': {'0': 'read only', '1': 'repeat original NCO word',
                        '2': 'fractional index 1/2', '3': '32-bit pattern, index 1/3'},
              'maximum_writes': MAX_COUNT, 'maximum_delay': 1023,
              'delayed_maximum_writes': 16384, 'interrupts': 'left enabled',
              'acceptance': 'requires separate bounded hardware validation; secure_boot=0 only'}
    return bytes(patched), report


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--firmware', required=True, type=Path)
    p.add_argument('--output-firmware', required=True, type=Path)
    p.add_argument('--report', required=True, type=Path)
    args = p.parse_args()
    require(not args.output_firmware.exists() and not args.report.exists(), 'Output exists')
    require(args.output_firmware.resolve() != args.report.resolve(), 'Outputs must differ')
    patched, report = build(args.firmware.read_bytes())
    args.output_firmware.write_bytes(patched)
    args.output_firmware.chmod(0o600)
    args.report.write_text(json.dumps(report, indent=2) + '\n')
    print(json.dumps({'patched_sha256': report['patched_sha256'], 'stub_bytes': report['stub_bytes']}))


if __name__ == '__main__':
    main()
