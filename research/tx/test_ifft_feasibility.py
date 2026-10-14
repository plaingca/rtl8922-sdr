import unittest

import numpy as np

from ifft_feasibility import bcc_encode, nearest_qam4096, reconstruct


class IfftFeasibilityTest(unittest.TestCase):
    def test_exact_grid_is_representable_but_zero_is_not_qam(self):
        grid = np.arange(-63, 64, 2)/63
        values = grid[:, None]+1j*grid[None, :]
        np.testing.assert_array_equal(nearest_qam4096(values), values)
        self.assertNotEqual(complex(nearest_qam4096(0)), 0j)
        self.assertEqual(complex(nearest_qam4096(0, allow_zero=True)), 0j)

    def test_parseval_exposes_quantization_error(self):
        rng = np.random.default_rng(8922)
        signal = rng.normal(size=256)+1j*rng.normal(size=256)
        result = reconstruct(signal)
        self.assertFalse(result['exact_within_1e_minus_12'])
        self.assertAlmostEqual(result['time_mean_squared_error'], result['parseval_predicted_mse'], places=12)
        self.assertLess(result['snr_db'], 40)

    def test_sparse_target_needs_a_way_to_zero_unused_bins(self):
        signal = np.exp(2j*np.pi*32*np.arange(256)/256)
        qam = reconstruct(signal)
        with_zero = reconstruct(signal, True)
        self.assertEqual(qam['nonzero_reconstructed_bins'], 256)
        self.assertEqual(with_zero['nonzero_reconstructed_bins'], 1)
        self.assertGreater(with_zero['snr_db'], qam['snr_db']+15)

    def test_payload_bits_cannot_choose_every_encoded_vector(self):
        vectors = {bcc_encode([(value >> k) & 1 for k in range(8)]) for value in range(256)}
        self.assertEqual(len(vectors), 256)
        self.assertEqual(len(next(iter(vectors))), 16)
        self.assertLess(len(vectors), 2**16)


if __name__ == '__main__':
    unittest.main()
