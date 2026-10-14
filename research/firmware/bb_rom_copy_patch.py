#!/usr/bin/env python3
"""Build an isolated, temporary BB startup patch; never changes the pinned file.

By default the patch copies the 96-byte BB-local ROM directory into unused BB
IRAM, then resumes the displaced startup instruction. Bounded larger copies are
also supported. This method executed on the tested card with reported secure
boot zero; other configurations remain unqualified. Building is entirely offline.
"""

import argparse
import hashlib
import json
from pathlib import Path
import struct

from probe_bb_rom import FIRMWARE_SHA256, require
from bb_image_integrity import inspect_defaults, refresh_defaults


SECTION = 0xD3E70
LOCAL_BASE = 0x10010000
HOOK = 0x10010214
STUB = 0x10017000
BUFFER = 0x10017B00
HOST_BUFFER = 0x1863FB00
BULK_STUB = 0x10016240
BULK_BUFFER = 0x10016300
SOURCE = 0x10000028
COUNT = 0x60
STARTED = 0x524F4D31
FINISHED = 0x524F4D32


def immediate(value, bits):
    require(-(1 << (bits - 1)) <= value < 1 << (bits - 1), "Immediate out of range")
    return value & ((1 << bits) - 1)


def addi(rd, rs, value):
    return immediate(value, 12) << 20 | rs << 15 | rd << 7 | 0x13


def lui(rd, value):
    require(value & 0xFFF == 0, "Unaligned LUI")
    return value | rd << 7 | 0x37


def lw(rd, rs, offset):
    return immediate(offset, 12) << 20 | rs << 15 | 2 << 12 | rd << 7 | 3


def sw(rs2, rs1, offset):
    value = immediate(offset, 12)
    return value >> 5 << 25 | rs2 << 20 | rs1 << 15 | 2 << 12 | (value & 31) << 7 | 0x23


def bne(rs1, rs2, offset):
    require(offset % 2 == 0, "Unaligned branch")
    value = immediate(offset, 13)
    return ((value >> 12) << 31 | ((value >> 5) & 63) << 25 | rs2 << 20 |
            rs1 << 15 | 1 << 12 | ((value >> 1) & 15) << 8 | ((value >> 11) & 1) << 7 | 0x63)


def jump(offset):
    require(offset % 2 == 0, "Unaligned jump")
    value = immediate(offset, 21)
    return ((value >> 20) << 31 | ((value >> 1) & 1023) << 21 |
            ((value >> 11) & 1) << 20 | ((value >> 12) & 255) << 12 | 0x6F)


def load_constant(register, value):
    low = (value & 0xFFF) - (0x1000 if value & 0x800 else 0)
    return [lui(register, (value - low) & 0xFFFFFFFF), addi(register, register, low)]


def startup_stub(source=SOURCE, count=COUNT, stub_address=STUB, buffer_address=BUFFER):
    require((stub_address, buffer_address) in ((STUB, BUFFER), (BULK_STUB, BULK_BUFFER)),
            "Unsupported scratch layout")
    require(source % 4 == 0 and count % 4 == 0 and 0 < count <= LOCAL_BASE + 0x8000 - buffer_address - 16,
            "Unaligned or oversized ROM copy")
    require(0x10000000 <= source and source + count <= 0x10010000 or
            0x10020000 <= source and source + count <= 0x10022400,
            "Copy outside BB ROM / directory-root domains")
    # Preserve all four temporaries used and the 16-byte stack alignment.
    words = [addi(2, 2, -32)]
    words += [sw(reg, 2, offset) for reg, offset in ((5, 0), (6, 4), (7, 8), (10, 12))]
    words += load_constant(6, buffer_address) + load_constant(10, STARTED) + [sw(10, 6, 0)]
    words += load_constant(5, source) + [addi(6, 6, 16)]
    words += [addi(7, 0, count)] if count <= 0x7FF else load_constant(7, count)
    loop = len(words) * 4
    words += [lw(10, 5, 0), sw(10, 6, 0), addi(5, 5, 4), addi(6, 6, 4), addi(7, 7, -4)]
    words += [bne(7, 0, loop - len(words) * 4), 0x0FF0000F]
    words += load_constant(6, buffer_address) + load_constant(10, FINISHED) + [sw(10, 6, 4), 0x0FF0000F]
    words += [lw(reg, 2, offset) for reg, offset in ((5, 0), (6, 4), (7, 8), (10, 12))]
    words += [addi(2, 2, 32)]
    # Reproduce AUIPC t0,0 at the original PC, then resume its ADDI partner.
    words += load_constant(5, HOOK)
    words += [jump(HOOK + 4 - (stub_address + len(words) * 4))]
    return struct.pack(f"<{len(words)}I", *words)


def build(firmware, source=SOURCE, count=COUNT, refresh_digest=False, omit_security=False, bulk=False):
    require(not (refresh_digest and omit_security), "Choose digest refresh or unsigned BB test")
    require(hashlib.sha256(firmware).hexdigest() == FIRMWARE_SHA256, "Unpinned firmware")
    hook_offset = SECTION + HOOK - LOCAL_BASE
    stub_address, buffer_address = (BULK_STUB, BULK_BUFFER) if bulk else (STUB, BUFFER)
    stub_offset = SECTION + stub_address - LOCAL_BASE
    buffer_offset = SECTION + buffer_address - LOCAL_BASE
    require(firmware[hook_offset:hook_offset + 4] == bytes.fromhex("97020000"),
            "Displaced AUIPC changed")
    stub = startup_stub(source, count, stub_address, buffer_address)
    require(stub_offset + len(stub) < buffer_offset, "Stub overlaps output")
    require(not any(firmware[stub_offset:SECTION + 0x8000]), "Reserved BB IRAM padding is not empty")
    patched = bytearray(firmware)
    patched[hook_offset:hook_offset + 4] = struct.pack("<I", jump(stub_address - HOOK))
    patched[stub_offset:stub_offset + len(stub)] = stub
    regions = [{"file_offset": hex(hook_offset), "bytes": 4},
               {"file_offset": hex(stub_offset), "bytes": len(stub)}]
    if refresh_digest:
        # Earlier trials updated only SHA-256 and retained a stale DSP XOR16
        # footer. Preserve signing keys/signatures; refresh both default records.
        regions.extend(refresh_defaults(firmware, patched))
    if omit_security:
        # Build a one-section BB test image. This is only useful on a card whose
        # driver reports secure_boot=0. No hardware security setting is changed.
        element, header, end = 0xD3DF0, 0xD3E10, 0xDD7C0
        require(struct.unpack_from("<I", firmware, element + 4)[0] == end - header,
                "BB element length changed")
        words = list(struct.unpack_from("<12I", firmware, header))
        require(words[5] >> 16 == 96 and (words[6] >> 8) & 255 == 3,
                "BB image layout changed")
        words[5] = (words[5] & 0xFFFF) | 64 << 16
        words[6] = (words[6] & ~(0xFF00 | (1 << 24))) | 0x100
        compact_header = struct.pack("<12I", *words) + firmware[header + 48:header + 64]
        compact_image = compact_header + patched[SECTION:SECTION + 0x8000]
        patched[header:end] = compact_image
        struct.pack_into("<I", patched, element + 4, len(compact_image))
    return bytes(patched), {
        "schema_version": 2, "hardware_access": False,
        "pinned_firmware_sha256": FIRMWARE_SHA256,
        "patched_firmware_sha256": hashlib.sha256(patched).hexdigest(),
        "hook": hex(HOOK), "stub": hex(stub_address), "stub_bytes": len(stub),
        "copy_source_local": hex(source), "copy_bytes": count,
        "output_local": hex(buffer_address),
        "output_host_hypothesis": hex(0x18638000 + buffer_address - LOCAL_BASE),
        "marker_started": hex(STARTED), "marker_finished": hex(FINISHED),
        "changed_regions": regions, "section_digest_refreshed": refresh_digest,
        "default_integrity_records": inspect_defaults(patched) if refresh_digest else [],
        "pooled_keys_and_signatures_changed": False,
        "requires_reported_secure_boot_zero": True,
        "changed_regions_coordinates": "original container before optional header/security repacking",
        "bb_security_sections_omitted": omit_security,
        "container_repacked": omit_security,
        "patched_bb_section_file_offset": hex(SECTION - 32 if omit_security else SECTION),
        "container_bytes_removed": len(firmware) - len(patched),
        "acceptance": "untested; no signatures generated or hardware security settings changed",
        "writes_if_executed": "temporary BB IRAM output and stack only; original startup resumed",
    }


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--firmware", type=Path, required=True)
    parser.add_argument("--output-firmware", type=Path, required=True)
    parser.add_argument("--report", type=Path, required=True)
    parser.add_argument("--source", type=lambda value: int(value, 0), default=SOURCE)
    parser.add_argument("--count", type=lambda value: int(value, 0), default=COUNT)
    parser.add_argument("--bulk", action="store_true", help="Use verified zero padding for a larger bounded copy")
    parser.add_argument("--refresh-section-digest", action="store_true",
                        help="Update default SHA-256/SHA-384 section hashes and DSP XOR16 footers")
    parser.add_argument("--omit-bb-security", action="store_true",
                        help="Build a one-section unsigned BB test image; requires secure_boot=0")
    args = parser.parse_args()
    require(not args.output_firmware.exists() and not args.report.exists(), "Output already exists")
    require(args.output_firmware.resolve() != args.report.resolve(), "Firmware and report paths must differ")
    patched, report = build(args.firmware.read_bytes(), args.source, args.count,
                            refresh_digest=args.refresh_section_digest,
                            omit_security=args.omit_bb_security, bulk=args.bulk)
    args.output_firmware.write_bytes(patched)
    args.output_firmware.chmod(0o600)
    args.report.write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps(report, indent=2))


if __name__ == "__main__":
    main()
