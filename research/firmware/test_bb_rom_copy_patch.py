"""Hardware-free execution checks for the temporary RV32 ROM-copy stub.

Requires Unicorn 2.1.4 in addition to the normal analysis dependencies.
"""

import struct
from pathlib import Path
import unittest

from unicorn import Uc, UC_ARCH_RISCV, UC_MODE_RISCV32, UC_PROT_READ, UC_HOOK_MEM_WRITE
from unicorn.riscv_const import UC_RISCV_REG_X0

from bb_rom_copy_patch import (BUFFER, BULK_BUFFER, BULK_STUB, COUNT, FINISHED, HOOK, SOURCE, STARTED, STUB,
                               build, jump, startup_stub)
from bb_image_integrity import RECORDS, inspect_defaults, xor16


class IntegrityTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        path = Path(__file__).resolve().parents[2] / "vendor/rtw89/firmware/rtw8922a_fw-4.bin"
        if not path.exists():
            raise unittest.SkipTest("Pinned firmware is a local, ignored dependency")
        cls.firmware = path.read_bytes()

    def test_original_defaults_validate_and_code_change_breaks_checksum(self):
        original = inspect_defaults(self.firmware)
        self.assertTrue(all(r["checksum_matches"] and r["digests_match_code"] for r in original))
        patched, _ = build(self.firmware)
        self.assertTrue(all(not r["checksum_matches"] and not r["digests_match_code"]
                            for r in inspect_defaults(patched)))

    def test_refresh_changes_only_code_hashes_and_default_checksum_words(self):
        patched, report = build(self.firmware, refresh_digest=True)
        self.assertTrue(all(r["checksum_matches"] and r["digests_match_code"]
                            for r in inspect_defaults(patched)))
        allowed = set()
        for region in report["changed_regions"]:
            start = int(region["file_offset"], 16)
            allowed.update(range(start, start + region["bytes"]))
        changes = {i for i, (a, b) in enumerate(zip(self.firmware, patched)) if a != b}
        self.assertTrue(changes <= allowed)
        self.assertEqual(len(patched), len(self.firmware))
        self.assertEqual([r["algorithm"] for r in report["default_integrity_records"]],
                         ["sha256", "sha384"])
        # The default checksum explicitly includes the selected signature body;
        # changing that body must fail even when section hashes remain correct.
        damaged = bytearray(patched)
        damaged[RECORDS[0][0] + 0x100] ^= 1
        self.assertFalse(inspect_defaults(damaged)[0]["checksum_matches"])

    def test_xor16_is_little_endian_and_rejects_truncated_words(self):
        self.assertEqual(xor16(bytes.fromhex("12347856")), 0x3412 ^ 0x5678)
        with self.assertRaises(ValueError):
            xor16(b"\x00")


class CopyExecutionTest(unittest.TestCase):
    def test_copy_preserves_startup_state_and_only_writes_reserved_output_and_stack(self):
        self.check_execution(SOURCE, COUNT, STUB, BUFFER)

    def test_bulk_copy_preserves_state_and_does_not_cross_the_iram_end(self):
        self.check_execution(0x10002000, 0x1CF0, BULK_STUB, BULK_BUFFER)

    def test_directory_table_copy_uses_the_same_bounded_read_only_loop(self):
        self.check_execution(0x10020000, 0x100, STUB, BUFFER)

    def check_execution(self, source, count, stub_address, buffer_address):
        cpu = Uc(UC_ARCH_RISCV, UC_MODE_RISCV32)
        cpu.mem_map(0x10000000, 0x30000)
        rom = bytes((i * 17 + 11) & 255 for i in range(0x10000))
        rom_base = source & ~0xFFFF
        cpu.mem_write(rom_base, rom)
        cpu.mem_protect(rom_base, 0x10000, UC_PROT_READ)
        cpu.mem_write(HOOK, struct.pack("<I", jump(stub_address - HOOK)))
        cpu.mem_write(stub_address, startup_stub(source, count, stub_address, buffer_address))
        initial = {reg: (0xA1000000 + reg * 0x10203) & 0xFFFFFFFF for reg in range(1, 32)}
        initial[2] = 0x1001CAF0
        for reg, value in initial.items():
            cpu.reg_write(UC_RISCV_REG_X0 + reg, value)
        writes = []
        cpu.hook_add(UC_HOOK_MEM_WRITE, lambda _cpu, _kind, address, size, _value, _data:
                     writes.append((address, size)))
        cpu.emu_start(HOOK, HOOK + 4, count=20000)
        output = bytes(cpu.mem_read(buffer_address, 16 + count))
        self.assertEqual(struct.unpack_from("<II", output), (STARTED, FINISHED))
        self.assertEqual(output[8:16], bytes(8))
        self.assertEqual(output[16:], rom[source - rom_base:source - rom_base + count])
        for reg, value in initial.items():
            self.assertEqual(cpu.reg_read(UC_RISCV_REG_X0 + reg), HOOK if reg == 5 else value)
        self.assertTrue(writes)
        for address, size in writes:
            self.assertTrue(buffer_address <= address < address + size <= buffer_address + 16 + count or
                            initial[2] - 32 <= address < address + size <= initial[2])
        self.assertEqual(bytes(cpu.mem_read(buffer_address - 16, 16)), bytes(16))
        self.assertEqual(bytes(cpu.mem_read(buffer_address + 16 + count, 16)), bytes(16))

    def test_copy_bounds_reject_bad_addresses_and_lengths(self):
        for source, count in ((SOURCE + 1, COUNT), (SOURCE, 0), (SOURCE, 3),
                              (SOURCE, 0x4F4), (0x0FFFFFFC, 4), (0x1000FFFC, 8)):
            with self.subTest(source=source, count=count), self.assertRaises(ValueError):
                startup_stub(source, count)


if __name__ == "__main__":
    unittest.main()
