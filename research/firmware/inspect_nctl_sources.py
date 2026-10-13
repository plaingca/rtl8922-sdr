#!/usr/bin/env python3
"""Recognize selected NCTL control patterns in pinned inputs, entirely offline.

This is a partial static interpretation, not a complete ISA decoder or hardware
emulator. It emits derived metadata and short excerpts, never an executable
sequencer image. It does not access a device, load a driver or transmit RF.
"""

import argparse
import hashlib
import json
from pathlib import Path
import re
import struct


FW_SHA256 = "d11927f593c82879bd0437435475d7915a60932374747984b3dc906a23009dea"
RFK_SHA256 = "eccbb6b07738927c3d6b95d9d9bdf4d2e74b8733e8003023eb4ae9b4dcb2ec0d"
REG_SHA256 = "a2e82156ae4ebca7a408c67c28b51e01f7f737ecb456b63fc4ab0b239bbceb4d"
ELEMENT = 0xF80E0
PAYLOAD_BYTES = 9616
SOURCE_COMMIT = "8bbbacadf6fa73c3a3195aefbd4b2ec2422ae356"


def require(condition, message):
    if not condition:
        raise ValueError(message)


def checked(data, expected, name):
    require(hashlib.sha256(data).hexdigest() == expected, f"Unpinned {name}")
    return data


def candidate_registers(words, start, stop):
    """Recognize only explicit-page, literal-byte, return sequences.

    The address rule is inferred from the matching TPG constants. Special
    control locations and unsupported tokens deliberately fail: interpreting
    an unknown instruction as a no-op would hide mask/base changes. These are
    candidate register literals, not simulated peripheral writes.
    """
    require(0 <= start < stop <= len(words) and stop - start <= 64,
            "Invalid or unbounded token range")
    page = None
    literals = []
    returned = False
    for pc in range(start, stop):
        token = words[pc]
        if token in (4, 5, 6, 7):
            page = token - 4
        elif 0x4000 <= token < 0x8000:
            require(page is not None, "Register token without an explicit page")
            offset = page * 64 + ((token >> 8) & 63)
            require(offset >= 4, "Special control location has unresolved semantics")
            literals.append({"pc_halfword": hex(pc), "candidate_register": hex(0x8000 + offset),
                             "literal_byte": hex(token & 255)})
        elif token == 1:
            require(pc == stop - 1, "Return before range end")
            returned = True
        else:
            raise ValueError(f"Unsupported NCTL token {token:#06x} at {pc:#x}")
    require(returned, "Missing terminal return token")
    return literals


def short_excerpt(words, start, stop):
    require(0 <= start < stop <= len(words) and stop - start <= 32,
            "Invalid or excessive excerpt")
    return {"pc_halfword_start": hex(start), "tokens": [f"{v:04x}" for v in words[start:stop]]}


def source_presets(rfk, registers):
    text = rfk.decode("utf-8")
    start = text.index("static void _dpk_tpg_sel(")
    stop = text.index("\nstatic ", start + 1)
    function = text[start:stop]
    mode = re.findall(r"R_TPG_MOD,\s*B_TPG_MOD_F,\s*(0x[0-9a-f]+)\);", function)
    value = re.findall(r"R_TPG_SEL,\s*MASKDWORD,\s*(0x[0-9a-f]+)\);", function)
    presets = list(zip((int(v, 16) for v in mode), (int(v, 16) for v in value)))
    require(presets == [(3, 0x0180FF30), (0, 0xFFE0FA00),
                        (2, 0xFF4009E0), (1, 0xF9F007D0)], "Reference presets changed")
    require(function.index("CHANNEL_WIDTH_160") < function.index("CHANNEL_WIDTH_80") <
            function.index("CHANNEL_WIDTH_40"), "Reference bandwidth order changed")
    reg_text = registers.decode("utf-8")
    for name, value in (("R_TPG_SEL", 0x8068), ("R_TPG_MOD", 0x806C)):
        match = re.search(rf"^#define {name}\s+(0x[0-9A-Fa-f]+)$", reg_text, re.M)
        require(match and int(match[1], 16) == value, "Reference TPG address changed")
    return presets


def infer_dispatch(words):
    """Recover the sparse 0x20..0x35 branch pattern; ISA semantics are inferred."""
    require(words[0x52] == 0xA50D, "Dispatch prefix changed")
    commands = [0x20, 0x21, 0x22, 0x23, *range(0x28, 0x36)]
    branches = []
    for pc, command in enumerate(commands, 0x53):
        token = words[pc]
        require(token == (0xF02C | ((command & 15) << 8)), "Conditional branch pattern changed")
        entry = pc + (token & 255)
        require(0x66 <= entry <= 0x90 and words[entry] >> 12 == 3,
                "Relative branch does not reach the jump run")
        branches.append({"inferred_command": hex(command), "conditional_pc_halfword": hex(pc),
                         "jump_pc_halfword": hex(entry), "target_pc_halfword": hex(words[entry] & 0xFFF)})
    require(words[0x65] == 1, "Dispatch return changed")
    return branches


def analyze(firmware, rfk, registers):
    checked(firmware, FW_SHA256, "firmware")
    checked(rfk, RFK_SHA256, "reference RFK source")
    checked(registers, REG_SHA256, "reference register source")
    require(struct.unpack_from("<II", firmware, ELEMENT) == (8, PAYLOAD_BYTES),
            "NCTL element bounds changed")
    payload = firmware[ELEMENT + 32:ELEMENT + 32 + PAYLOAD_BYTES]
    pairs = list(struct.iter_unpack("<II", payload))
    run = [(i, address, value) for i, (address, value) in enumerate(pairs)
           if 0x8500 <= address < 0x9500]
    require([a for _, a, _ in run] == list(range(0x8500, 0x9500, 4)), "NCTL load window changed")
    require([i for i, _, _ in run] == list(range(run[0][0], run[0][0] + 1024)),
            "Nonconsecutive NCTL load")
    program = b"".join(struct.pack("<I", value) for _, _, value in run)
    words = struct.unpack("<2048H", program)
    require(words[:2] == (8, 0x8000), "Initial base-like token changed")
    require(words[0x67B] == 1 and all(word == 0x3000 for word in words[0x67C:]),
            "Trailing jump padding changed")
    require(all(word >> 12 == 3 for word in words[0x66:0x91]), "Jump run changed")
    reference = source_presets(rfk, registers)
    dispatch = infer_dispatch(words)
    by_command = {int(item["inferred_command"], 16): item for item in dispatch}
    presets = []
    for command, bandwidth, setter, (mode, value) in zip(
            range(0x20, 0x24), (160, 80, 40, 20), (0x3B7, 0x3BE, 0x3C5, 0x3CC), reference):
        wrapper = int(by_command[command]["target_pc_halfword"], 16)
        require(words[wrapper:wrapper + 10] ==
                (4, 0x4380, 7, 0x7200, 4, 0x4300, 0xE3E8, 0xE000 | setter, 0xE3F9, 1),
                "Bandwidth wrapper changed")
        literals = candidate_registers(words, setter, setter + 7)
        observed = {int(item["candidate_register"], 16): int(item["literal_byte"], 16)
                    for item in literals}
        require(set(observed) == {0x8068, 0x8069, 0x806A, 0x806B, 0x806C},
                "Unexpected preset destination")
        reconstructed = sum(observed[0x8068 + i] << (i * 8) for i in range(4))
        require(reconstructed == value and observed[0x806C] == mode << 1,
                "NCTL literals do not match reference TPG preset")
        presets.append({"inferred_command": hex(command), "reference_bandwidth_mhz": bandwidth,
                        "wrapper_pc_halfword": hex(wrapper), "setter_pc_halfword": hex(setter),
                        "reference_tpg_sel": hex(value), "reference_mode_field": mode,
                        "candidate_register_literals": literals,
                        "inferred_call_targets": ["0x3e8", hex(setter), "0x3f9"],
                        "setter_excerpt": short_excerpt(words, setter, setter + 7)})

    idl = []
    for command, target, calls, stop in (
            (0x2D, 0x454, [0x5EC], 0x457), (0x2E, 0x466, [0x63B], 0x468),
            (0x33, 0x457, [0x5A7, 0x614], 0x45C),
            (0x34, 0x45C, [0x5BE, 0x614], 0x461),
            (0x35, 0x461, [0x5D5, 0x614], 0x466)):
        require(int(by_command[command]["target_pc_halfword"], 16) == target,
                "IDL dispatch correspondence changed")
        recovered = [word & 0xFFF for word in words[target:stop] if word >> 12 == 14]
        require(recovered == calls and words[stop - 1] == 1, "IDL wrapper changed")
        idl.append({"inferred_command": hex(command), "wrapper_pc_halfword": hex(target),
                    "inferred_call_targets": [hex(pc) for pc in calls],
                    "wrapper_excerpt": short_excerpt(words, target, stop)})
    # Record only the initial unambiguous page/literal portion. Subsequent
    # read/ALU/trigger/wait tokens are deliberately not simulated.
    idl_modes = []
    for start, selector, order in ((0x5A7, 4, 0), (0x5BE, 2, 1), (0x5D5, 0, 2)):
        require(words[start:start + 7] == (6, 0x5D00 | selector, 0x6000 | order,
                                          0x6100, 5, 0x7380, 4), "IDL mode prefix changed")
        literals = candidate_registers((*words[start:start + 4], 1), 0, 5)
        for literal in literals:
            literal["pc_halfword"] = hex(start + int(literal["pc_halfword"], 16))
        idl_modes.append({"pc_halfword": hex(start),
                          "candidate_register_literals": literals,
                          "limits": "Only the explicit initial literals are interpreted; the routine continues."})

    return {
        "schema_version": 1, "hardware_access": False, "executable_output": False,
        "firmware_sha256": FW_SHA256,
        "reference": {"commit": SOURCE_COMMIT, "chip": "RTL8852C, comparison only",
                      "rfk_source_sha256": RFK_SHA256, "register_source_sha256": REG_SHA256,
                      "function": "_dpk_tpg_sel", "tpg_sel_register": "0x8068", "tpg_mode_register": "0x806c"},
        "nctl": {"element_file_offset": hex(ELEMENT), "payload_sha256": hashlib.sha256(payload).hexdigest(),
                 "program_sha256": hashlib.sha256(program).hexdigest(), "load_words": 1024,
                 "token_halfwords": 2048, "jump_padding_start_halfword": "0x67c",
                 "address_unit": "Halfword indices into the NCTL load, not RISC-V addresses",
                 "interpretation_status": "Partial static inference; no NCTL instructions executed"},
        "inferred_encoding": {
            "page_tokens": "0x0004..0x0007 select successive 64-byte groups",
            "register_token": "0x4000..0x7fff: low 8 bits literal; bits 13:8 byte index within group",
            "candidate_address": "0x8000 + 64*(page_token-4) + ((token>>8)&0x3f)",
            "call_token": "0xexxx appears to call absolute halfword xxx",
            "jump_token": "0x3xxx appears to jump to absolute halfword xxx",
            "return_token": "0x0001 appears to return",
            "conditional_token": "Selected 0xfn2c tokens appear to branch forward 0x2c halfwords for command nibble n",
            "unsupported": ["Delay/wait encodings and timing", "Reads, ALU and multiword instructions",
                            "Complete command-selection semantics", "Base/path state and mask/control effects"],
            "mask_caution": "0x42f7 before 0x6c08, then 0x4200, is consistent with preserving other 0x806c bits. "
                            "Mask semantics are unresolved; do not simulate this as an unconditional full-byte overwrite."},
        "inferred_sparse_dispatch": dispatch,
        "bandwidth_presets": presets,
        "shared_tpg_control": {
            "before_setter_pc_halfword": "0x3e8", "after_setter_pc_halfword": "0x3f9",
            "after_setter_excerpt": short_excerpt(words, 0x3F9, 0x411),
            "interpretation": "The common sequence contains candidate 0x806c bit-3 control, 0x8073 literals and "
                              "unresolved wait/delay tokens. Trigger and timing behavior are not established."},
        "idl_wrappers": idl, "idl_mode_prefixes": idl_modes,
        "conclusion": {
            "new_evidence": "All four bandwidth setters contain exactly the reference TPG mode and selection constants. "
                            "Sparse branch structure links them and the traced IDL commands to short NCTL wrappers.",
            "sample_upload_in_bandwidth_setters": False,
            "arbitrary_iq_endpoint_identified": False,
            "limits": ["Four matching presets are not proof that the complete TPG is immutable or ROM-only.",
                       "No sample FIFO, writable waveform memory, I/Q packing or clocked replay reader identified.",
                       "Register visibility and a programmable sequencer do not establish sample-rate writes to the DAC.",
                       "No hardware behavior or timing is modeled; the cross-chip reference supplies names and matching constants."]},
        "next_targets": ["Resolve NCTL mask/base and wait semantics before proposing custom programs.",
                         "Follow the hardware side of TPG/source controls to a sample writer and clocked consumer.",
                         "A native-timed DDS sequence is a separate modulation hypothesis, not arbitrary-I/Q replay."],
    }


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--firmware", type=Path, required=True)
    parser.add_argument("--upstream-root", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    inputs = (args.firmware, args.upstream_root / "rtw8852c_rfk.c", args.upstream_root / "reg.h")
    require(args.output.resolve() not in {p.resolve() for p in inputs}, "Output would overwrite an input")
    report = analyze(*(p.read_bytes() for p in inputs))
    args.output.write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps({"hardware_access": False, "matching_bandwidth_presets": len(report["bandwidth_presets"]),
                      "inferred_dispatch_entries": len(report["inferred_sparse_dispatch"]),
                      "arbitrary_iq_endpoint_identified": False}))


if __name__ == "__main__":
    main()
