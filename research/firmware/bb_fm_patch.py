#!/usr/bin/env python3
"""Build an isolated bounded audio/FM consumer in the pinned BB image.

Two verified-padding IRAM buffers carry unsigned audio bytes. Host-owned ready
sequence words and a BB-owned consumed count prevent overwrite. Missing data or
cancellation zeros the DDS immediately. This is a manual research payload.
"""
import argparse
import hashlib
import json
from pathlib import Path
import struct

from bb_dds_patch import Assembler, alu, opi, HOOK, STUB, OUTPUT, NCO, MAILBOX, SAVED
from bb_rom_copy_patch import SECTION, LOCAL_BASE, addi, lw, sw, jump
from bb_image_integrity import refresh_defaults, inspect_defaults
from probe_bb_rom import FIRMWARE_SHA256, require

COMMAND = 0x3FD
MAGIC = 0x464D3031
BUFFER = 0x10016800
BLOCK = 2048
CONTROL = OUTPUT + 0x40
MAX_BLOCKS = 64


def stub():
    a = Assembler()
    a.emit(addi(2, 2, -64))
    for i, reg in enumerate(SAVED):
        a.emit(sw(reg, 2, i*4))
    a.constant(5, COMMAND)
    a.branch(10, 5, 'normal', 1)
    a.constant(6, MAILBOX)
    a.emit(lw(7, 6, 8))
    a.constant(5, MAGIC)
    a.branch(7, 5, 'normal', 1)
    a.constant(28, OUTPUT)
    a.emit(sw(5, 28, 0), lw(7, 28, 4), addi(7, 7, 1), sw(7, 28, 4),
           addi(7, 0, 1), sw(7, 28, 8), lw(10, 6, 12), lw(11, 6, 16),
           sw(10, 28, 12), sw(11, 28, 16), sw(0, 28, 36))
    a.emit(opi(29, 10, 8, 5), opi(10, 10, 255, 7), sw(10, 28, 12))
    a.constant(5, NCO)
    a.emit(lw(7, 5, 0), sw(7, 28, 20))
    a.branch(10, 0, 'done')
    a.emit(addi(7, 0, MAX_BLOCKS))
    a.branch(7, 10, 'invalid', 6)
    a.emit(addi(7, 0, 16))
    a.branch(11, 7, 'invalid', 6)
    a.emit(addi(7, 0, 1024))
    a.branch(7, 11, 'invalid', 6)
    a.branch(29, 10, 'invalid', 7)
    a.emit(alu(10, 10, 29) | (0x20 << 25))
    a.emit(addi(7, 0, 8))
    a.branch(10, 7, 'batch_size_ok', 6)
    a.emit(addi(10, 0, 8))
    a.label('batch_size_ok')
    a.constant(30, CONTROL)
    a.constant(17, 0xFFFFF000)
    a.emit(lw(7, 5, 0), alu(17, 17, 7, 7), addi(15, 0, 0), sw(29, 30, 8))
    a.label('block')
    a.emit(lw(7, 30, 12))
    a.branch(7, 0, 'cancelled', 1)
    a.emit(opi(31, 29, 1, 7), opi(31, 31, 2, 1), alu(31, 31, 30),
           lw(7, 31, 0), addi(12, 29, 1))
    a.branch(7, 12, 'underrun', 1)
    a.emit(0x0FF0000F, opi(12, 29, 1, 7), opi(12, 12, 11, 1))
    a.constant(7, BUFFER)
    a.emit(alu(12, 12, 7))
    a.constant(13, BLOCK)
    a.label('sample')
    a.emit(12 << 15 | 4 << 12 | 14 << 7 | 3,  # lbu a4,0(a2)
           opi(14, 14, 8, 1), addi(16, 11, 0))
    a.label('dds')
    a.emit(alu(15, 15, 14), opi(7, 15, 16, 5), addi(7, 7, 1),
           alu(7, 7, 17, 6), sw(7, 5, 0), opi(15, 15, 16, 1), opi(15, 15, 16, 5),
           addi(16, 16, -1))
    a.branch(16, 0, 'dds', 1)
    a.emit(addi(12, 12, 1), addi(13, 13, -1))
    a.branch(13, 0, 'sample', 1)
    a.emit(addi(29, 29, 1), addi(10, 10, -1), sw(29, 30, 8), sw(29, 28, 36), 0x0FF0000F)
    a.branch(10, 0, 'block', 1)
    a.emit(lw(7, 28, 12))
    a.branch(29, 7, 'yield', 6)
    a.emit(addi(7, 0, 2))
    a.j('mute')
    a.label('yield')
    a.emit(addi(7, 0, 6))
    a.j('complete')
    a.label('underrun')
    a.emit(addi(7, 0, 4))
    a.j('mute')
    a.label('cancelled')
    a.emit(addi(7, 0, 5))
    a.label('mute')
    a.emit(sw(17, 5, 0), 0x0FF0000F)
    a.j('complete')
    a.label('done')
    a.emit(addi(7, 0, 2))
    a.j('complete')
    a.label('invalid')
    a.emit(addi(7, 0, 3))
    a.label('complete')
    a.emit(lw(31, 5, 0), sw(31, 28, 24), 0x0FF0000F, sw(7, 28, 8), 0x0FF0000F,
           lw(7, 6, 0x84), opi(7, 7, 1, 6), sw(7, 6, 0x84))
    for i, reg in enumerate(SAVED):
        a.emit(lw(reg, 2, i*4))
    a.emit(addi(2, 2, 64), 0x00008067)
    a.label('normal')
    for i, reg in enumerate(SAVED):
        a.emit(lw(reg, 2, i*4))
    a.emit(addi(2, 2, 64), addi(2, 2, -32), sw(1, 2, 28))
    a.emit(jump(HOOK+4-(STUB+len(a.words)*4)))
    return a.finish()


def build(firmware):
    require(hashlib.sha256(firmware).hexdigest() == FIRMWARE_SHA256, 'Unpinned firmware')
    offset = SECTION+HOOK-LOCAL_BASE
    require(firmware[offset:offset+4] == bytes.fromhex('011106ce'), 'Dispatcher prologue changed')
    code = stub()
    start = SECTION+STUB-LOCAL_BASE
    require(STUB+len(code) <= BUFFER, 'Code overlaps stream buffer')
    require(not any(firmware[start:SECTION+0x8000]), 'Scratch IRAM is not empty')
    patched = bytearray(firmware)
    patched[offset:offset+4] = struct.pack('<I', jump(STUB-HOOK))
    patched[start:start+len(code)] = code
    regions = [{'file_offset': hex(offset), 'bytes': 4}, {'file_offset': hex(start), 'bytes': len(code)}]
    regions.extend(refresh_defaults(firmware, patched))
    return bytes(patched), {'schema_version': 1, 'hardware_access': False,
        'original_sha256': FIRMWARE_SHA256, 'patched_sha256': hashlib.sha256(patched).hexdigest(),
        'hook': hex(HOOK), 'stub': hex(STUB), 'stub_bytes': len(code), 'command': COMMAND,
        'magic': hex(MAGIC), 'buffer_local': hex(BUFFER), 'buffer_bytes': 2*BLOCK,
        'control_local': hex(CONTROL), 'batch_blocks':8, 'max_blocks': MAX_BLOCKS, 'block_samples': BLOCK,
        'hold_range': [16, 1024], 'interrupts': 'enabled', 'changed_regions': regions,
        'integrity': inspect_defaults(patched),
        'semantics': 'fraction=unsigned_audio_byte/256; index 1/2; finite count; underrun/cancel mutes'}


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
    args.report.write_text(json.dumps(report, indent=2)+'\n')
    print(json.dumps({'stub_bytes':report['stub_bytes'],'patched_sha256':report['patched_sha256']}))


if __name__ == '__main__':
    main()
