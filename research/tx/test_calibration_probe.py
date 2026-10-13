"""Hardware-free fault-injection checks; never import adi or access debugfs."""

import unittest

from calibration_probe import DebugIO, Transaction, setup_plan, la_plan


class FakeIO:
    def __init__(self, path, source='calibration', capture_dac=False):
        self.values = {op[:3]: 0 for op in setup_plan(path, source=source)}
        self.values['bb', 0, 0x80CC] = 0
        if capture_dac:
            self.values.update({op[:3]: 0 for op in la_plan(path)})
        self.values['rf', path, 0xDF] = 0
        self.values.update({("bb", 0, a): 0 for a in (0x802C, 0x8034, 0x8138 + (path << 8), 0x8124 + (path << 8))})
        self.values.update({("rf", p, a): 0x30000 if a in (0, 0x10000) else 0x41
                            for p in (0, 1) for a in (0, 5, 0x10000)})
        self.writes = []
        self.fail_key = None

    def read(self, key):
        return self.values[key]

    def write(self, key, value):
        self.writes.append((key, value))
        if key == self.fail_key:
            self.fail_key = None
            raise OSError("injected bus failure")
        self.values[key] = value


class CleanupTest(unittest.TestCase):
    def test_native_clock_override_uses_selected_clock_word_and_restores(self):
        io = FakeIO(1)
        initial = io.values.copy()
        tx = Transaction(io, 1, {}, lambda: None, native_dac_clock4=True)
        tx.setup()
        self.assertEqual(io.values['bb', 0, 0x2BA0] & 0x2F0000, 0x240000)
        tx.restore()
        self.assertEqual(io.values, initial)

    def test_dac_offset_bytes_use_byte_access_and_restore_before_gate(self):
        transport = DebugIO.__new__(DebugIO)
        # A tiny path-like fake checks the actual debugfs request width.
        requests = []

        class Port:
            def write_text(self, value):
                requests.append(value)

            def read_text(self):
                return 'get 1 bytes at 0x0002c4d0=0x00000040'

        class Directory:
            def __truediv__(self, _):
                return Port()

        transport.dbg = Directory()
        self.assertEqual(transport.read(('bb8', 0, 0xC4D0)), 64)
        transport.write(('bb8', 0, 0xC4D0), 66)
        self.assertEqual(requests, ['2c4d0 1\n', '2c4d0 42 1\n'])
        io = FakeIO(1)
        io.values.update({('bb', 0, 0x2BD4): 0x21000000,
                          ('bb8', 0, 0xC4D0): 64, ('bb8', 0, 0xC4D4): 63})
        initial = io.values.copy()
        tx = Transaction(io, 1, {}, lambda: None, probe_dadck=True)
        tx.field('bb', 0, 0x2BD4, 0xA000, 5)
        tx.field('bb8', 0, 0xC4D0, 0x7F, 66)
        io.fail_key = ('bb', 0, 0x8034)
        tx.restore()
        self.assertEqual(io.values, initial)
        restore_byte = max(n for n, (key, value) in enumerate(io.writes)
                           if key == ('bb8', 0, 0xC4D0) and value == 64)
        restore_gate = max(n for n, (key, value) in enumerate(io.writes)
                           if key == ('bb', 0, 0x2BD4) and value == 0x21000000)
        self.assertLess(restore_byte, restore_gate)

    def test_snapshot_precedes_writes_and_restore_survives_stop_failure(self):
        for path in (0, 1):
            io = FakeIO(path)
            initial = io.values.copy()
            report = {}
            saves = []
            tx = Transaction(io, path, report, lambda: saves.append(len(io.writes)))
            self.assertEqual(saves, [0])
            tx.setup()
            tx.start(1)
            self.assertEqual((io.values['rf', path, 0] >> 16) & 15, 2)
            io.fail_key = ('bb', 0, 0x8034)
            tx.restore()
            self.assertTrue(report['rtl_cleanup_errors'])
            self.assertEqual(report['rtl_restore_mismatches'], {})
            self.assertEqual(io.values, initial)
            self.assertTrue(any(key == ('rf', 1, 0) and (value >> 16) & 15 == 1
                                for key, value in io.writes))

    def test_rejects_active_tx_before_any_write(self):
        io = FakeIO(0)
        io.values['rf', 1, 0] = 0x20000
        with self.assertRaisesRegex(RuntimeError, 'refusing takeover'):
            Transaction(io, 0, {}, lambda: None)
        self.assertEqual(io.writes, [])

    def test_manual_lok_gate_restores_coefficients_before_gate_release(self):
        io = FakeIO(1, source='lo', capture_dac=True)
        io.values['rf', 1, 0x58] = 0x83DE8
        initial = io.values.copy()
        tx = Transaction(io, 1, {}, lambda: None, source='lo', capture_dac=True)
        tx.setup()
        tx.field('rf', 1, 0xDF, 4, 1)
        tx.field('rf', 1, 0x58, 0xFFC00, (12 << 5) | 20)
        tx.start(0)
        io.fail_key = ('mmio', 0, 0x21090)
        tx.restore()
        self.assertEqual(io.values, initial)
        restore58 = max(n for n, (key, value) in enumerate(io.writes)
                        if key == ('rf', 1, 0x58) and value == 0x83DE8)
        restore_df = max(n for n, (key, value) in enumerate(io.writes)
                         if key == ('rf', 1, 0xDF) and value == 0)
        self.assertLess(restore58, restore_df)

    def test_unsaved_write_is_rejected_before_io(self):
        io = FakeIO(0)
        tx = Transaction(io, 0, {}, lambda: None)
        with self.assertRaisesRegex(RuntimeError, 'outside pre-saved set'):
            tx.field('bb', 0, 0x8500, 0xFFFFFFFF, 123)
        self.assertEqual(io.writes, [])


if __name__ == '__main__':
    unittest.main()
