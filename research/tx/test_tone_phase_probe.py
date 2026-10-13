"""The manual tone phase probe must own every register it changes."""

import unittest
from unittest.mock import patch

from calibration_probe import Transaction
from test_calibration_probe import FakeIO
from tone_phase_probe import run


class ProbeTest(unittest.TestCase):
    def test_phase_state_is_saved_before_writes_and_restored(self):
        io = FakeIO(1, capture_dac=True)
        io.values['bb', 0, 0x8030] = 0x400000C0
        initial = io.values.copy()
        report, saves = {}, []
        tx = Transaction(io, 1, report, lambda: saves.append(len(io.writes)),
                         capture_dac=True, probe_tone_phase=True)
        self.assertEqual(saves, [0])

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
        with patch('tone_phase_probe.spectrum', return_value={}):
            run(tx, Pluto(), lambda: None, report)
        self.assertEqual(len(report['tone_phase_probe']['rows']), 19)
        tx.restore()
        self.assertEqual(io.values, initial)


if __name__ == '__main__':
    unittest.main()
