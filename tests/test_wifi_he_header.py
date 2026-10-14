"""Offline PHY codec checks with an independently encoded real HE-SIG-A fixture."""
import importlib.util
from pathlib import Path
import unittest

import numpy as np

ROOT = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location('wifi_he_header', ROOT/'research/streaming/wifi_he_header.py')
he = importlib.util.module_from_spec(spec)
spec.loader.exec_module(he)

# The received PHY metadata, independently encoded by GR-WiFi at
# add75653e8de63361b9d3d34606eb8dc5b6029c5 (not by this decoder).
BITS = '1101001011111110000111010001110001100010100110000000'
ENCODED = '11101011100101101010010001001100011001100101011100101000001001000110110100110100111011100100111110011100'


class HeHeaderCodec(unittest.TestCase):
    def test_independent_encoded_header_with_noise(self):
        expected = list(map(int, BITS))
        llr = 2*np.array(list(map(int, ENCODED)))-1
        noise = np.random.default_rng(8922).normal(0, .4, len(llr))
        self.assertEqual(he.viterbi(llr+noise), expected)

    def test_crc_and_decoded_transmission_parameters(self):
        bits = list(map(int, BITS))
        self.assertEqual(he.he_crc(bits[:42]), [0, 1, 1, 0])
        self.assertEqual(he.he_crc(bits[:42]), bits[42:46])
        self.assertEqual(he.value(bits[19:21]), 3)  # 160 / 80+80 MHz
        self.assertEqual(he.value(bits[3:7]), 9)
        self.assertEqual(he.value(bits[23:26])+1, 2)
        self.assertEqual(bits[33], 1)  # LDPC
        damaged = bits[:42]
        damaged[19] ^= 1
        self.assertNotEqual(he.he_crc(damaged), bits[42:46])


if __name__ == '__main__':
    unittest.main()
