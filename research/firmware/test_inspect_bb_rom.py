"""Hardware-free provenance and parser-resolution checks for the BB capture."""

from pathlib import Path
import unittest

from inspect_bb_rom import analyze


class RomAnalysisTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        root = Path(__file__).resolve().parents[2]
        paths = (root / "vendor/local-rom-dumps/20261012/bb-mcu/code-window.bin",
                 root / "vendor/local-rom-dumps/20261012/bb-mcu/api-tables-window.bin",
                 root / "vendor/rtw89/firmware/rtw8922a_fw-4.bin")
        if not all(path.exists() for path in paths):
            raise unittest.SkipTest("ROM images are local ignored dependencies")
        cls.inputs = tuple(path.read_bytes() for path in paths)

    def test_parser_dispatch_reaches_captured_rom_tables(self):
        report = analyze(*self.inputs)
        self.assertEqual([r["rom_function"] for r in report["resolved_parser_calls"]],
                         ["0x100032e8", "0x10002d08", "0x10002a60", "0x100014fc",
                          "0x1000476e", "0x10004888"])
        self.assertFalse(report["arbitrary_iq_endpoint_identified"])
        instructions = report["selected_code_excerpts"]["input_and_output_of_custom_operation"]
        self.assertTrue(any(i.get("opcode") == "0xb" and i["mnemonic"] == "unresolved"
                            for i in instructions))

    def test_wrong_rom_or_table_capture_is_rejected(self):
        for index in (0, 1):
            inputs = list(self.inputs)
            damaged = bytearray(inputs[index])
            damaged[0] ^= 1
            inputs[index] = bytes(damaged)
            with self.subTest(index=index), self.assertRaisesRegex(ValueError, "Unpinned"):
                analyze(*inputs)


if __name__ == "__main__":
    unittest.main()
