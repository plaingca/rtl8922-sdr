"""Execute the actual patch in Unicorn; MMIO is a recording memory model."""
from pathlib import Path
import struct
import unittest

from unicorn import Uc, UC_ARCH_RISCV, UC_MODE_RISCV32, UC_HOOK_MEM_WRITE
from unicorn.riscv_const import UC_RISCV_REG_X0, UC_RISCV_REG_PC
from bb_dds_patch import (build, stub, HOOK, STUB, OUTPUT, COMMAND, MAGIC, MAILBOX, NCO, MAX_COUNT)
from bb_rom_copy_patch import jump


class DDSExecutionTest(unittest.TestCase):
    def execute(self, mode=0, count=0, delay=0, fraction=0, command=COMMAND, magic=MAGIC):
        cpu = Uc(UC_ARCH_RISCV, UC_MODE_RISCV32)
        cpu.mem_map(0x10010000, 0x20000)
        cpu.mem_map(0xA0000000, 0x20000)
        cpu.mem_map(0x30000000, 0x1000)
        cpu.mem_write(STUB, stub()[0])
        cpu.mem_write(HOOK, struct.pack('<I', jump(STUB - HOOK)))
        cpu.mem_write(MAILBOX + 8, struct.pack('<III', magic, count, fraction << 16 | mode << 12 | delay))
        original = 0xABCDF123
        cpu.mem_write(NCO, struct.pack('<I', original))
        initial = {reg: 0xC0000000 + reg * 123 for reg in range(1, 32)}
        initial.update({1: 0x30000000, 2: 0x1002E000, 10: command})
        for reg, value in initial.items():
            cpu.reg_write(UC_RISCV_REG_X0 + reg, value)
        writes = []
        cpu.hook_add(UC_HOOK_MEM_WRITE, lambda _cpu, _access, address, size, value, _:
                     writes.append((address, size, value & 0xFFFFFFFF)))
        normal = command != COMMAND or magic != MAGIC
        end = HOOK + 4 if normal else 0x30000000
        cpu.emu_start(HOOK, end, timeout=2000000, count=500000)
        self.assertEqual(cpu.reg_read(UC_RISCV_REG_PC), end)
        for reg, value in initial.items():
            self.assertEqual(cpu.reg_read(UC_RISCV_REG_X0 + reg), value - 32 if normal and reg == 2 else value)
        for address, size, _ in writes:
            self.assertEqual(size, 4)
            self.assertTrue(initial[2] - 64 <= address < initial[2] or
                            OUTPUT <= address < OUTPUT + 44 or address in (NCO, MAILBOX + 0x84), hex(address))
        values = struct.unpack('<11I', cpu.mem_read(OUTPUT, 44))
        return values, [value for address, _, value in writes if address == NCO], original

    def test_normal_and_wrong_magic_preserve_displaced_prologue(self):
        for kwargs in ({'command': 3}, {'magic': 0}):
            with self.subTest(kwargs=kwargs):
                values, writes, _ = self.execute(**kwargs)
                self.assertEqual(values, (0,) * 11)
                self.assertEqual(writes, [])

    def test_read_only_reports_register_without_writes(self):
        values, writes, original = self.execute()
        self.assertEqual(values[:3], (MAGIC, 1, 2))
        self.assertEqual(values[5:7], (original, original))
        self.assertEqual(writes, [])

    def test_same_word_benchmark_preserves_all_bits(self):
        values, writes, original = self.execute(mode=1, count=100)
        self.assertEqual(writes, [original] * 100)
        self.assertEqual(values[9], 100)

    def test_fractional_accumulator_sequence_and_autonomous_zero(self):
        for fraction in (0, 16384, 32768, 49152, 65535):
            values, writes, original = self.execute(mode=2, count=64, fraction=fraction)
            accumulator = 0
            expected = []
            for _ in range(64):
                accumulator += fraction
                expected.append((original & ~4095) | (1 + (accumulator >> 16)))
                accumulator &= 65535
            self.assertEqual(writes, expected + [original & ~4095])
            self.assertEqual(values[9], 64)
            self.assertEqual(values[2], 2)

    def test_pattern_and_delay_have_exact_write_count(self):
        values, writes, original = self.execute(mode=3, count=64, delay=11)
        self.assertEqual([w & 4095 for w in writes[:-1]],
                         [1 + 2 * ((0xD39A6C57 >> (i % 32)) & 1) for i in range(64)])
        self.assertEqual(writes[-1], original & ~4095)
        self.assertEqual(values[9], 64)

    def test_invalid_requests_cannot_write_nco(self):
        for kwargs in ({'mode': 4, 'count': 1}, {'mode': 1, 'count': 0},
                       {'mode': 1, 'count': MAX_COUNT + 1},
                       {'mode': 1, 'count': 16385, 'delay': 1},
                       {'mode': 1, 'count': 10, 'delay': 1024}):
            with self.subTest(kwargs=kwargs):
                values, writes, _ = self.execute(**kwargs)
                self.assertEqual(values[2], 3)
                self.assertEqual(writes, [])

    def test_pinned_build_integrity_and_change_bounds(self):
        path = Path(__file__).resolve().parents[2] / 'vendor/rtw89/firmware/rtw8922a_fw-4.bin'
        if not path.exists():
            self.skipTest('Local pinned firmware unavailable')
        original = path.read_bytes()
        patched, report = build(original)
        self.assertTrue(all(r['checksum_matches'] and r['digests_match_code'] for r in report['integrity']))
        allowed = set()
        for r in report['changed_regions']:
            start = int(r['file_offset'], 16)
            allowed.update(range(start, start + r['bytes']))
        self.assertEqual(len(original), len(patched))
        self.assertTrue({i for i, (a, b) in enumerate(zip(original, patched)) if a != b} <= allowed)


if __name__ == '__main__':
    unittest.main()
