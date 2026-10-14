#!/usr/bin/env python3
"""Inventory the pinned firmware offline; emit metadata and short code excerpts.

Does not access hardware, extract images, change firmware, or emit key material.
Requires capstone from research/requirements.txt.
"""

import argparse
import hashlib
import json
from pathlib import Path
import struct

import capstone


PINNED_SHA256 = "d11927f593c82879bd0437435475d7915a60932374747984b3dc906a23009dea"


def require(condition, message):
    if not condition:
        raise ValueError(message)


def image_header(data, offset, size):
    require(size >= 48 and offset + size <= len(data), "Image outside container")
    words = struct.unpack_from("<12I", data, offset)
    require(words[3] >> 24 == 1, "Expected pinned version-1 image header")
    count = (words[6] >> 8) & 0xFF
    header_size = words[5] >> 16
    require(48 + count * 16 <= header_size <= size, "Invalid image header size")
    sections = []
    for idx in range(count):
        address, flags, extra, _ = struct.unpack_from("<4I", data, offset + 48 + idx * 16)
        sections.append({
            "index": idx,
            "destination": hex(address),
            "declared_bytes": flags & 0xFFFFFF,
            "type": (flags >> 24) & 0xF,
            "checksum_trailer": bool(flags & (1 << 28)),
            "mssc_field": extra & 0xFF,
        })
    return {
        "file_offset": hex(offset),
        "bytes": size,
        "version": ".".join(str((words[1] >> shift) & 0xFF) for shift in (0, 8, 16, 24)),
        "header_bytes": header_size,
        "dsp_checksum_flag": bool(words[6] & (1 << 24)),
        "security_sections": sum(s["type"] == 9 for s in sections),
        "sections": sections,
        "section_payload_offsets_walked": False,
    }


def code_excerpt(data, file_offset, address, size):
    decoder = capstone.Cs(capstone.CS_ARCH_RISCV,
                          capstone.CS_MODE_RISCV32 | capstone.CS_MODE_RISCVC)
    code = data[file_offset:file_offset + size]
    instructions = list(decoder.disasm(code, address))
    require(sum(i.size for i in instructions) == size, "Incomplete startup decode")
    return {
        "file_offset": hex(file_offset),
        "address": hex(address),
        "bytes_checked": size,
        "code_sha256": hashlib.sha256(code).hexdigest(),
        "decoder": "RISC-V 32-bit with compressed instructions",
        "instructions": [
            {"address": hex(i.address), "mnemonic": i.mnemonic, "operands": i.op_str}
            for i in instructions
        ],
    }


def inspect(data):
    require(hashlib.sha256(data).hexdigest() == PINNED_SHA256, "Firmware hash is not pinned")
    require(data[0] == 0xFF, "Missing multi-firmware directory")
    names = {1: "normal", 3: "wake_on_wireless", 255: "log_dictionary"}
    images = []
    for idx in range(data[1]):
        cv, kind, mp, _, offset, size = struct.unpack_from("<4BII", data, 16 + idx * 16)
        require(offset + size <= len(data), "Invalid directory entry")
        entry = {"type": kind, "name": names.get(kind, "unknown"), "cv": cv,
                 "mp": mp, "file_offset": hex(offset), "bytes": size}
        if kind != 255:
            entry["header"] = image_header(data, offset, size)
        images.append(entry)
    normal = next(i for i in images if i["type"] == 1)
    log = next(i for i in images if i["type"] == 255)
    offset = (max(int(i["file_offset"], 16) + i["bytes"] for i in images) + 15) & ~15
    bbmcu = []
    nctl = []
    while offset + 32 <= len(data):
        kind, size = struct.unpack_from("<II", data, offset)
        payload = offset + 32
        require(payload + size <= len(data), "Element outside container")
        if kind in (0, 1):
            image = image_header(data, payload, size)
            section = image["sections"][0]
            require(section["type"] == 10 and section["declared_bytes"] == 32768,
                    "Unexpected baseband image section")
            base = payload + image["header_bytes"]
            magic, entry1, entry2 = struct.unpack_from("<3I", data, base)
            require(magic == 0x52667742 and entry1 == entry2 == 0x10010200,
                    "Baseband internal header changed")
            bbmcu.append({
                "element_id": kind,
                "silicon_revision_cv": data[offset + 24],
                "image": image,
                "entry_candidate_from_internal_header": hex(entry1),
                "entry_file_offset_within_section": "0x200",
                "execution_address_mapping": "Inferred from internal header; not live PC validation",
                "startup": code_excerpt(data, base + 0x200, entry1, 40),
            })
        elif kind == 8:
            require(size % 8 == 0, "Invalid NCTL register table")
            writes = list(struct.iter_unpack("<II", data[payload:payload + size]))
            addresses = [a for a, _ in writes if 0x8500 <= a < 0x9500]
            require(addresses == list(range(0x8500, 0x9500, 4)), "NCTL window changed")
            nctl.append({"file_offset": hex(offset), "payload_bytes": size,
                         "register_writes": len(writes), "sequencer_load_words": len(addresses),
                         "instruction_set": "undecoded"})
        offset = (payload + size + 15) & ~15
    require(not any(data[offset:]), "Unparsed trailing container bytes")
    require(len(bbmcu) == 2 and len(nctl) == 1, "Pinned element inventory changed")
    main_offset = int(normal["file_offset"], 16) + normal["header"]["header_bytes"]
    main_address = int(normal["header"]["sections"][0]["destination"], 16)
    return {
        "schema_version": 1,
        "hardware_access": False,
        "firmware": {"bytes": len(data), "sha256": PINNED_SHA256},
        "capstone_version": capstone.__version__,
        "directory": images,
        "main_code_excerpt": code_excerpt(data, main_offset, main_address, 18),
        "freertos_start_message_in_log_dictionary": b"FreeRTOS start done" in data[
            int(log["file_offset"], 16):int(log["file_offset"], 16) + log["bytes"]],
        "baseband_variants": bbmcu,
        "rf_nctl": nctl,
        "limits": [
            "Readable startup code does not establish that every region is plaintext.",
            "Security section presence does not establish this card's secure-boot fuse state.",
            "Acceptance of modified images and runtime code writes is untested.",
            "Two baseband firmware revisions do not establish two physical baseband cores.",
            "Exact CPU implementations, clock rates, and complete ISA extensions are unresolved.",
            "Section headers are inventoried; signature pools and authentication are not validated.",
        ],
    }


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--firmware", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    require(args.firmware.resolve() != args.output.resolve(), "Output would overwrite firmware")
    report = inspect(args.firmware.read_bytes())
    args.output.write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps({"hardware_access": False, "baseband_variants": len(report["baseband_variants"]),
                      "main_security_sections": report["directory"][0]["header"]["security_sections"]}))


if __name__ == "__main__":
    main()
