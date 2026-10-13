"""Hardware-free output validation and selector restoration checks."""

from pathlib import Path
import struct
import tempfile
import unittest

from bb_rom_copy_patch import (BULK_BUFFER, BULK_STUB, FINISHED, LOCAL_BASE,
                               STARTED, startup_stub)
from capture_bb_rom_copy import capture


class CopyCaptureTest(unittest.TestCase):
    def test_bulk_rows_are_bounded_and_selector_restores_after_a_failed_read(self):
        patch = {"copy_source_local": "0x10002000", "copy_bytes": 0x1CF0,
                 "stub": hex(BULK_STUB), "output_local": hex(BULK_BUFFER)}
        expected_stub = startup_stub(0x10002000, 0x1CF0, BULK_STUB, BULK_BUFFER)

        class Window:
            value = 0x18780000
            calls = 0

            def selector(self):
                return self.value

            def select(self, value):
                self.value = value

            def mapped_read(self, address, count):
                self.value = 0x18600000
                self.calls += 1
                if address == 0x18638000 + BULK_STUB - LOCAL_BASE:
                    return expected_stub
                if self.calls == 4:
                    raise OSError("Injected bounded-read failure")
                if count > 512 or address + count > 0x18640000:
                    raise AssertionError("Unbounded hardware read")
                return struct.pack("<II", STARTED, FINISHED) + bytes(count - 8)

        window, report = Window(), {}
        with tempfile.TemporaryDirectory() as directory:
            with self.assertRaisesRegex(OSError, "Injected"):
                capture(window, Path(directory), report, lambda: None, patch)
        self.assertTrue(report["selector_restored"])
        self.assertEqual(window.value, 0x18780000)


if __name__ == "__main__":
    unittest.main()
