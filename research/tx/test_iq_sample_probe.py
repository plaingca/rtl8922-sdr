import unittest

import numpy as np

from iq_sample_probe import SYNC, decode, sequence


class SampleTest(unittest.TestCase):
    def test_repeated_samples_are_valid_holds(self):
        targets = [list(x) for x in SYNC] + [[512, -512]] * 8
        z = np.vstack((np.zeros((20, 2)), np.repeat(np.asarray(targets)*2, 100, axis=0), np.zeros((20, 2))))
        result = decode(z[:, 0], z[:, 1], targets, 2, np.arange(len(targets))*.0005+.004)
        self.assertTrue(result['passed'])
        self.assertEqual(result['payload_samples'], 8)

    def test_heldout_value_and_order_rejection(self):
        targets = sequence()
        z = np.vstack((np.zeros((20, 2)), np.repeat(np.asarray(targets)*2, 100, axis=0), np.zeros((20, 2))))
        events = np.arange(len(targets)) * .0005 + .004
        result = decode(z[:, 0], z[:, 1], targets, 2, events)
        self.assertTrue(result['passed'])
        corrupted = z.copy()
        n = len(SYNC) + 4
        corrupted[20+n*100:20+(n+1)*100] += [10, -20]
        bad = decode(corrupted[:, 0], corrupted[:, 1], targets, 2, events)
        self.assertFalse(bad['passed'])
        self.assertEqual(bad['payload_wrong_values'], 1)
        shuffled = targets.copy()
        shuffled[-1], shuffled[-2] = shuffled[-2], shuffled[-1]
        self.assertFalse(decode(z[:, 0], z[:, 1], shuffled, 2, events)['passed'])
        self.assertFalse(decode(np.ones(500), np.ones(500), targets, 2, events)['passed'])


if __name__ == '__main__':
    unittest.main()
