import unittest
from unittest.mock import patch

from calibration_probe import Transaction
from dds_dc_probe import run
from test_calibration_probe import FakeIO


class DcProbeTest(unittest.TestCase):
    def test_slow_capture_alias_does_not_qualify_as_dc(self):
        io = FakeIO(1, capture_dac=True)
        report = {}
        tx = Transaction(io, 1, report, lambda: None, capture_dac=True)

        def capture(rate):
            self.assertTrue(all((io.values['rf', p, 0] >> 16) & 15 == 1 for p in (0, 1)))
            index = io.values['bb', 0, 0x802C] & 0xFFF
            alias = index == 20 and rate == 4
            return {'valid_capture': True, 'real_std': 0 if alias or index == 0 else 100,
                    'imag_std': 0 if alias or index == 0 else 100,
                    'real_mean': 100 if alias else 0, 'imag_mean': 0}

        class Pluto:
            sample_rate = 4000000

            def rx(self):
                return None

        tx.inspect_dac = capture
        with patch('dds_dc_probe.spectrum', return_value={}):
            run(tx, Pluto(), lambda: None, report)
        self.assertEqual(report['dds_dc_probe']['constant_candidates'], [])
        tx.restore()
        self.assertEqual(report['rtl_restore_mismatches'], {})


if __name__ == '__main__':
    unittest.main()
