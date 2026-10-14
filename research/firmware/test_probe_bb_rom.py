"""Hardware-free directory, read formatting, and restoration checks."""

from pathlib import Path
import struct
import tempfile
import unittest

from probe_bb_rom import DebugWindow, REQUIRED_KEYS, probe, validate_directory


class FakePort:
    def write_text(self, text):
        self.address, self.count = (int(word, 16) for word in text.split())

    def read_text(self):
        if self.count == 4:
            return "reg=0x12345678\n"
        return "\n".join(f"{0x18600000 + self.address + offset:08x}h : " +
                         " ".join(f"{offset + i:08x}" for i in range(0, 16, 4))
                         for offset in range(0, self.count, 16)) + "\n"


class FakeDebugDirectory:
    def __init__(self, port):
        self.port = port

    def __truediv__(self, name):
        assert name == "read_reg"
        return self.port


class ReadFormattingTest(unittest.TestCase):
    def test_rounds_driver_rows_and_returns_only_requested_words(self):
        port = FakePort()
        window = DebugWindow.__new__(DebugWindow)
        window.dbg = FakeDebugDirectory(port)
        self.assertEqual(window.read(0xBF000, 140), struct.pack("<35I", *range(0, 140, 4)))
        self.assertEqual(port.count, 144)
        self.assertEqual(window.read(0xC04, 4), bytes.fromhex("78563412"))

    def test_directory_requires_expected_keys_and_rom_pointer_domain(self):
        entries = [(key, 0x10000100 + index * 16) for index, key in enumerate(sorted(REQUIRED_KEYS))]
        valid = b"".join(struct.pack("<II", *entry) for entry in entries) + bytes(72)
        self.assertTrue(validate_directory(valid)["valid"])
        self.assertFalse(validate_directory(bytes(96))["valid"])
        wrong = struct.pack("<II", entries[0][0], 0x10010000) + valid[8:]
        self.assertFalse(validate_directory(wrong)["valid"])
        tables = b"".join(struct.pack("<II", key, 0x10020000 + index * 16)
                          for index, (key, _) in enumerate(entries)) + bytes(72)
        self.assertTrue(validate_directory(tables)["valid"])

    def test_rounded_read_cannot_cross_mapping_boundary(self):
        window = DebugWindow.__new__(DebugWindow)
        window.select = lambda _value: self.fail("Selector changed before validating the range")
        with self.assertRaisesRegex(ValueError, "aperture boundary"):
            window.mapped_read(0x1867FFF4, 12)

    def test_rom_alias_is_rejected_before_changing_selector(self):
        window = DebugWindow.__new__(DebugWindow)
        window.select = lambda _value: self.fail("Selector changed for a forbidden ROM alias")
        with self.assertRaisesRegex(ValueError, "ROM aliases are disabled"):
            window.mapped_read(0x10000028, 96)

    def test_execute_without_explicit_wcpu_dump_cannot_touch_hardware(self):
        with self.assertRaisesRegex(ValueError, "alias probes are disabled"):
            probe(object(), b"", Path("/unused"), {}, lambda: None)

    def test_selector_is_restored_when_wcpu_capture_fails(self):
        class Window:
            value = 0x18700000

            class Port:
                def read_bytes(self):
                    raise OSError("ROM read failed")

            class Directory:
                def __truediv__(self, name):
                    assert name == "iq_rom"
                    return Window.Port()

            dbg = Directory()

            def selector(self):
                return self.value

            def select(self, value):
                self.value = value

        window = Window()
        report = {}
        with tempfile.TemporaryDirectory() as directory:
            with self.assertRaisesRegex(OSError, "ROM read failed"):
                probe(window, b"", Path(directory), report, lambda: None, dump_wcpu=True)
        self.assertEqual(window.value, 0x18700000)
        self.assertTrue(report["selector_restored"])

    def test_wcpu_dump_does_not_probe_any_bb_alias(self):
        class Window:
            value = 0x18700000

            class Port:
                def read_bytes(self):
                    return bytes(0x80000)

            class Directory:
                def __truediv__(self, name):
                    assert name == "iq_rom"
                    return Window.Port()

            dbg = Directory()

            def selector(self):
                return self.value

            def select(self, value):
                self.value = value

            def mapped_read(self, *_):
                raise AssertionError("WCPU dump must not probe BB aliases")

        report = {}
        with tempfile.TemporaryDirectory() as directory:
            probe(Window(), b"", Path(directory), report, lambda: None, dump_wcpu=True)
        self.assertEqual(report["status"], "wcpu_rom_captured")
        self.assertTrue(report["selector_restored"])


if __name__ == "__main__":
    unittest.main()
