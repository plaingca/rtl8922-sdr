import unittest

import numpy as np

from ofdm_preimage import compile_frame, constraint_matrix, encode_psdu, qam64, scramble_mask


class PreimageTest(unittest.TestCase):
    def test_all_64_constellations_survive_real_packet_coding_and_fcs(self):
        labels = np.random.default_rng(8923).permutation(64).tolist()
        frame, report = compile_frame(labels)
        self.assertEqual(report['forward_model_labels'], labels)
        self.assertEqual(report['constraint_rank'], 6)
        self.assertTrue(report['fcs_valid'])
        self.assertTrue(report['mac_llc_prefix_preserved'])
        self.assertFalse(report['rf_demonstrated'])
        self.assertLess(report['wrong_seed_matching_labels'], 8)
        self.assertEqual(len(frame), report['psdu_bytes_including_fcs'])

    def test_scrambling_is_reversible_but_seed_changes_waveform(self):
        bits = np.random.default_rng(13).integers(0, 2, 500, dtype=np.uint8)
        mask = scramble_mask(len(bits), 93)
        np.testing.assert_array_equal((bits ^ mask) ^ mask, bits)
        self.assertFalse(np.array_equal(mask, scramble_mask(len(bits), 94)))
        with self.assertRaises(ValueError):
            scramble_mask(100, 0)

    def test_mapper_normalization_and_legacy_label_order(self):
        points = qam64(np.arange(64))
        self.assertAlmostEqual(float(np.mean(abs(points)**2)), 1)
        self.assertAlmostEqual(points[0].real, -7/np.sqrt(42))
        self.assertAlmostEqual(points[1].real, 7/np.sqrt(42))
        self.assertAlmostEqual(points[2].real, -1/np.sqrt(42))

    def test_dc_and_pilot_bins_are_not_payload_inputs(self):
        for k in (0, 7, -7, 21, -21, 30):
            with self.assertRaises(ValueError):
                constraint_matrix(k)


if __name__ == '__main__':
    unittest.main()
