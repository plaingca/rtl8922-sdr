import unittest

import numpy as np

from iq_if_probe import coefficients, payload, schedule
from iq_envelope_probe import pack


class IfTest(unittest.TestCase):
    def test_schedule_bounds_and_known_references(self):
        plan = schedule(payload())
        self.assertEqual(len(plan['states']), 38)
        self.assertEqual(len(plan['payload_indices']), 16)
        self.assertEqual([plan['states'][k] for k in plan['payload_indices']], payload())
        self.assertTrue(all(plan['states'][k] == (512, 0) for k in plan['reference_indices']))
        self.assertLess(plan['initial_pilot_seconds']+len(plan['states'])*plan['dwell_seconds'], 1.8)
        self.assertFalse(set(plan['payload_indices']) & set(plan['reference_indices']))

    def test_independent_fourier_components_and_zero_envelope_image(self):
        n = np.arange(1024)
        angle = 2*np.pi*8*n/len(n)
        for i, q in [(0, 0), (512, 0), (-512, 0), (0, 512), (0, -512), *payload()]:
            a, b = coefficients(i, q)
            pack(a, b)
            z = a/1024*np.cos(angle) + 1j*(np.sin(angle) + b/1024*np.cos(angle))
            bins = np.fft.fft(z) / len(z)
            desired = (i+1j*q)/1024
            self.assertAlmostEqual(abs(bins[8] - desired), 0, places=12)
            self.assertAlmostEqual(abs(bins[-8] - (desired-1)), 0, places=12)
        with self.assertRaises(ValueError):
            coefficients(-513, 0)


if __name__ == '__main__':
    unittest.main()
