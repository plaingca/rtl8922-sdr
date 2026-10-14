"""Hardware-free checks of the manual IQ envelope probe."""

import unittest
from unittest.mock import patch

from calibration_probe import Transaction
from iq_envelope_probe import pack, run
from test_calibration_probe import FakeIO


class ProbeTest(unittest.TestCase):
    def test_signed_fields_and_range(self):
        self.assertEqual(pack(1024, -1024), 0x400C0002)
        self.assertEqual(pack(-1024, 1024), 0xC0040002)
        with self.assertRaises(ValueError):
            pack(2048, 0)

    def test_rf_standby_and_restore(self):
        io = FakeIO(1, capture_dac=True)
        initial = io.values.copy()
        report = {}
        tx = Transaction(io, 1, report, lambda: None, capture_dac=True)

        def capture():
            self.assertTrue(all((io.values['rf', p, 0] >> 16) & 15 == 1 for p in (0, 1)))
            self.assertEqual(io.values['bb', 0, 0x82CC] & 0x3F, 0x17)
            return {}

        class Pluto:
            sample_rate = 4000000

            def rx(self):
                return None

        tx.inspect_dac = capture
        with patch('iq_envelope_probe.spectrum', return_value={}):
            run(tx, Pluto(), lambda: None, report)
        tx.restore()
        self.assertEqual(io.values, initial)
        self.assertFalse(any(k[0] == 'rf' and k[2] == 0 and (v >> 16) & 15 == 2
                             for k, v in io.writes))


if __name__ == '__main__':
    unittest.main()
