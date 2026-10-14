"""Hardware-free ownership and cleanup checks for the manual TPG probe."""

import unittest
from unittest.mock import patch

from calibration_probe import Transaction
from test_calibration_probe import FakeIO
from tpg_probe import run


class ProbeTest(unittest.TestCase):
    def transaction(self):
        io = FakeIO(1, capture_dac=True)
        io.values.update({('bb', 0, a): 0x321000 for a in (0x8068, 0x806C, 0x8070)})
        report, saves = {}, []
        tx = Transaction(io, 1, report, lambda: saves.append(len(io.writes)),
                         capture_dac=True, probe_tpg=True)
        return io, report, saves, tx

    def test_extra_state_saved_before_mutation_and_restored_after_failure(self):
        io, report, saves, tx = self.transaction()
        initial = io.values.copy()
        self.assertEqual(saves, [0])
        tx.setup()
        for address in (0x8068, 0x806C, 0x8070):
            tx.field('bb', 0, address, 0xFFFFFFFF, 0x1000100)
        io.fail_key = ('bb', 0, 0x8070)
        tx.restore()
        self.assertEqual(io.values, initial)
        self.assertEqual(report['rtl_restore_mismatches'], {})
        self.assertTrue(report['rtl_cleanup_errors'])

    def test_observation_failure_stops_before_candidate_writes(self):
        io, report, _, tx = self.transaction()
        tx.inspect_dac = lambda: {'valid_capture': False}
        run(tx, None, lambda: None, report)
        self.assertEqual(report['status'], 'tpg_observation_control_failed')
        self.assertFalse(any(k[0] == 'bb' and k[2] in (0x8068, 0x806C, 0x8070)
                             for k, _ in io.writes))
        tx.restore()

    def test_candidate_captures_keep_both_rf_paths_in_standby(self):
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
        with patch('calibration_probe.spectrum', return_value={}):
            run(tx, Pluto(), lambda: None, report)
        self.assertTrue(report['tpg_source_probe']['observation_control_passed'])
        self.assertFalse(any(k[0] == 'rf' and k[2] == 0 and (v >> 16) & 15 == 2
                             for k, v in io.writes))
        tx.restore()
        self.assertEqual(report['rtl_restore_mismatches'], {})


if __name__ == '__main__':
    unittest.main()
