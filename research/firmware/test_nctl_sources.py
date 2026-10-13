"""Guard incomplete NCTL interpretations; never run hardware probes."""

import unittest

from inspect_nctl_sources import analyze, candidate_registers, infer_dispatch, short_excerpt


class PartialNctlInterpretationTest(unittest.TestCase):
    def test_unknown_instruction_cannot_silently_preserve_page_or_mask(self):
        for token in (0x140F, 0x8F00, 0xE123, 0xA50D):
            with self.subTest(token=token), self.assertRaisesRegex(ValueError, "Unsupported"):
                candidate_registers((5, token, 0x6C08, 1), 0, 4)

    def test_mask_control_is_not_a_plain_register_literal(self):
        with self.assertRaisesRegex(ValueError, "Special control"):
            candidate_registers((4, 0x42F7, 5, 0x6C08, 1), 0, 5)

    def test_ranges_need_explicit_page_return_and_bounds(self):
        for words, start, stop in (((0x6C08, 1), 0, 2), ((5, 0x6C08), 0, 2),
                                   ((5, 1, 0x6C08), 0, 3), ((5, 1), -1, 2),
                                   ((5, 1), 0, 3), ((5,) * 65 + (1,), 0, 66)):
            with self.subTest(words=words[:3]), self.assertRaises(ValueError):
                candidate_registers(words, start, stop)

    def test_invalid_dispatch_and_excessive_excerpts_rejected(self):
        words = [0] * 2048
        with self.assertRaisesRegex(ValueError, "Dispatch prefix"):
            infer_dispatch(words)
        for start, stop in ((0, 33), (-1, 2), (2047, 2049), (1, 1)):
            with self.subTest(start=start, stop=stop), self.assertRaises(ValueError):
                short_excerpt(words, start, stop)

    def test_wrong_input_rejected_before_offset_reads(self):
        with self.assertRaisesRegex(ValueError, "Unpinned firmware"):
            analyze(b"wrong firmware", b"wrong source", b"wrong registers")


if __name__ == "__main__":
    unittest.main()
