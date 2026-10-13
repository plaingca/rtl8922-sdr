import unittest

import numpy as np

from dadck_reference import evaluate, states, tone_peak


class ReferenceTest(unittest.TestCase):
    def test_transient_strong_interference_cannot_select_pilot(self):
        rate, n = 4000000, 131072
        t = np.arange(n) / rate
        rng = np.random.default_rng(9)
        y = 2 * np.exp(2j * np.pi * 1266000 * t) + rng.normal(size=n) + 1j * rng.normal(size=n)
        y[:n // 4] += 1000 * np.exp(2j * np.pi * 1290000 * t[:n // 4])
        result = tone_peak(y, rate, 1250000)
        self.assertLess(abs(result['hz'] - 1266000), 1000)
        self.assertGreater(result['above_local_median_db'], 20)

    def test_boundary_and_unseen_joint_levels(self):
        with self.assertRaises(ValueError):
            states((128, 120))
        s = states((123, 120))
        self.assertTrue(all(0 <= c <= 127 for pair in s for c in pair))
        train = set(s[:17])
        self.assertTrue(all(pair not in train for pair in s[17::2]))
        for center in ((119, 124), (124, 1), (0, 127)):
            edge = states(center)
            self.assertTrue(all(0 <= c <= 127 for pair in edge for c in pair))
            self.assertTrue(all(pair not in set(edge[:17]) for pair in edge[17::2]))
            self.assertTrue(all(abs(v - c) <= 4 for pair in edge for v, c in zip(pair, center)))
        full = states((0, 127), full_range=True)
        self.assertEqual(len(full), 33)
        self.assertTrue(all(0 <= c <= 127 for pair in full for c in pair))
        self.assertTrue(all(pair not in set(full[:17]) for pair in full[17::2]))

    def test_heldout_cannot_select_matrix(self):
        s = states((64, 64))
        x = np.array([[1, i - 64, q - 64] for i, q in s])
        t = np.arange(len(x)) * .04
        y = (x @ np.array([1 + .5j, .4 + .1j, -.1 + .4j])) * np.exp(2j * np.pi * .5 * t)
        good = evaluate(y, x)
        self.assertTrue(good['heldout_axis_gate_passed'])
        y[17:] += 5j
        bad = evaluate(y, x)
        self.assertFalse(bad['heldout_axis_gate_passed'])
        self.assertEqual(good['coefficients'], bad['coefficients'])
        self.assertEqual(good['differential_frequency_hz'], bad['differential_frequency_hz'])


if __name__ == '__main__':
    unittest.main()
