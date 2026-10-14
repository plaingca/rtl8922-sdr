"""Synthetic positive/negative checks for RF peak tracking; no hardware."""
import unittest
import numpy as np
from bb_dds_rf_probe import analyze, analyze_pattern


class PeakTrackingTest(unittest.TestCase):
    def test_pattern_rate_generalizes_to_heldout_time_and_rejects_static_tone(self):
        rate = 4000000
        t = np.arange(1048576)/rate
        pattern = np.array([(0xD39A6C57 >> i) & 1 for i in range(32)])
        f = 1266000 + 500000*pattern[np.floor((t*310000+3.25) % 32).astype(int)]
        z = 100*np.exp(2j*np.pi*np.cumsum(f)/rate)
        result = analyze_pattern(z, rate, 1266000, 300000)
        self.assertTrue(result['passed'])
        self.assertLess(abs(result['update_rate_hz']-310000), 10)
        constant = 100*np.exp(2j*np.pi*1400000*t)
        self.assertFalse(analyze_pattern(constant, rate, 1266000, 300000)['passed'])

    def test_observations_follow_unknown_tone_changes(self):
        rate = 4000000
        n = 4096 * 24
        freqs = np.repeat([1265000, 1327500, 1390000], n // 3)
        z = 100 * np.exp(2j * np.pi * np.cumsum(freqs) / rate)
        result = analyze(z, rate, 1265000)
        self.assertEqual(len(result['stable_runs']), 3)
        for run, expected in zip(result['stable_runs'], (1265000, 1327500, 1390000)):
            self.assertLess(abs(run['median_hz'] - expected), rate/4096)

    def test_noise_and_clipping_do_not_create_accepted_plateaus(self):
        rng = np.random.default_rng(123)
        noise = rng.normal(size=4096*16) + 1j*rng.normal(size=4096*16)
        self.assertEqual(analyze(noise, 4000000, 1265000)['stable_runs'], [])
        z = 3000*np.exp(2j*np.pi*1265000*np.arange(len(noise))/4000000)
        self.assertEqual(analyze(z, 4000000, 1265000)['stable_runs'], [])


if __name__ == '__main__':
    unittest.main()
