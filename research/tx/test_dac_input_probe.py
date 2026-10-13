"""Hardware-free checks of the manual DAC input probe's ownership boundary."""

import unittest
from unittest.mock import patch

from calibration_probe import Transaction
from dac_input_probe import run
from test_calibration_probe import FakeIO


class ProbeTest(unittest.TestCase):
    def transaction(self):
        io = FakeIO(1, capture_dac=True)
        io.values['bb', 0, 0x2B58] = 0x41000
        report, saves = {}, []
        tx = Transaction(io, 1, report, lambda: saves.append(len(io.writes)),
                         capture_dac=True, probe_dac_input=True)
        return io, report, saves, tx

    def test_source_saved_before_writes_and_restored_after_failure(self):
        io, report, saves, tx = self.transaction()
        initial = io.values.copy()
        self.assertEqual(saves, [0])
        tx.field('bb', 0, 0x2B58, 0x18000000, 2)
        io.fail_key = ('bb', 0, 0x8034)
        tx.restore()
        self.assertEqual(io.values, initial)
        self.assertTrue(report['rtl_cleanup_errors'])
        self.assertEqual(report['rtl_restore_mismatches'], {})

    def test_failed_control_prevents_source_changes(self):
        io, report, _, tx = self.transaction()
        tx.inspect_dac = lambda: {'valid_capture': False}
        run(tx, None, lambda: None, report)
        self.assertFalse(any(k == ('bb', 0, 0x2B58) for k, _ in io.writes))
        self.assertEqual(report['status'], 'dac_input_observation_control_failed')
        tx.restore()

    def test_all_field_codes_remain_in_standby(self):
        io, report, _, tx = self.transaction()

        def capture():
            self.assertTrue(all((io.values['rf', p, 0] >> 16) & 15 == 1 for p in (0, 1)))
            active = bool(io.values['bb', 0, 0x802C] & 0xFFF)
            return {'valid_capture': True, 'real_std': 100 if active else 0,
                    'imag_std': 100 if active else 0}

        class Pluto:
            sample_rate = 4000000

            def rx(self):
                return None

        tx.inspect_dac = capture
        with patch('dac_input_probe.spectrum', return_value={}):
            run(tx, Pluto(), lambda: None, report)
        rows = report['dac_input_probe']['rows']
        self.assertEqual(len([r for r in rows if r['name'].startswith('itqt_dds1_')]), 64)
        self.assertFalse(any(k[0] == 'rf' and k[2] == 0 and (v >> 16) & 15 == 2
                             for k, v in io.writes))
        tx.restore()
        self.assertEqual(report['rtl_restore_mismatches'], {})


if __name__ == '__main__':
    unittest.main()
