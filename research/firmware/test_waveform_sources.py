"""Offline decoder/input-boundary regression checks. No hardware probes."""

import struct
import unittest

from inspect_tx_path import decode, excerpt
from inspect_waveform_sources import historical_access, mapped_bytes, trace


class DecoderBoundaryTest(unittest.TestCase):
    def test_unknown_32_bit_word_does_not_split_into_compressed_halves(self):
        code = struct.pack("<IH", 0x10E7878B, 0x0001)
        rows, _ = decode(code, 0x1000)
        self.assertEqual(list(rows), [0x1000, 0x1004])
        self.assertEqual(rows[0x1000]["mnemonic"], "unknown")
        self.assertEqual(rows[0x1004]["mnemonic"], "c.nop")
        with self.assertRaises(ValueError):
            excerpt(rows, 0x1000, 0x1006)

    def test_relative_call_target_is_added_to_instruction_pc(self):
        rows, _ = decode(bytes.fromhex("ef008000"), 0x20117000)
        self.assertEqual(rows[0x20117000]["direct_target"], "0x20117008")

    def test_all_eight_zbs_encodings_preserve_next_boundary(self):
        for opcode in (0x13, 0x33):
            for funct7, funct3, name in ((0x14, 1, "bset"), (0x24, 1, "bclr"),
                                       (0x34, 1, "binv"), (0x24, 5, "bext")):
                with self.subTest(opcode=opcode, name=name):
                    word = (funct7 << 25) | (7 << 20) | (14 << 15) | (funct3 << 12) | (15 << 7) | opcode
                    rows, _ = decode(struct.pack("<IH", word, 0x0001), 0x1000)
                    self.assertEqual(rows[0x1000]["mnemonic"], name + ("i" if opcode == 0x13 else ""))
                    self.assertEqual(rows[0x1000]["size"], 4)
                    self.assertEqual(rows[0x1004]["mnemonic"], "c.nop")

    def test_truncated_and_extended_instructions_are_rejected(self):
        for raw in (b"\x01", b"\x13\x00", b"\x1f\x00\x00\x00"):
            with self.subTest(raw=raw), self.assertRaises(ValueError):
                decode(raw, 0x1000)


class InputBoundaryTest(unittest.TestCase):
    def test_relocation_read_and_invalid_ranges(self):
        self.assertEqual(mapped_bytes(b"abcdefgh", 2, 0x1000, 4, 0x1001, 2), b"de")
        for offset, length, address, count in ((2, 4, 0xFFF, 1), (2, 4, 0x1003, 2),
                                               (7, 4, 0x1000, 2), (-1, 4, 0x1000, 2),
                                               (2, 4, 0x1000, -1)):
            with self.subTest(address=address, count=count), self.assertRaises(ValueError):
                mapped_bytes(b"abcdefgh", offset, 0x1000, length, address, count)

    def test_unpinned_inputs_rejected_before_address_reads(self):
        with self.assertRaisesRegex(ValueError, "hash is not pinned"):
            trace(b"not the pinned firmware")
        with self.assertRaisesRegex(ValueError, "ROM hash is not pinned"):
            historical_access(b"wrong ROM", b"wrong table")


if __name__ == "__main__":
    unittest.main()
