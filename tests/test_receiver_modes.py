import os
import unittest
from unittest.mock import patch

from receiver_modes import receiver_mode


class ReceiverModeTests(unittest.TestCase):
    def test_default_continuous_span(self):
        with patch.dict(os.environ, {}, clear=True):
            mode = receiver_mode()
        self.assertEqual((mode.rate, mode.frequency), (160000000, 5250000000))
        self.assertTrue(mode.can_retune)
        self.assertIn(5250, mode.channels([5180, 5200]))
        self.assertEqual(mode.channels([2412]), [2412])
        self.assertNotIn('device_args', mode.public())

    def test_live_mode_accepts_band_centers_and_rejects_invalid_frequency(self):
        mode = receiver_mode('paxi160')
        for mhz in (5250, 5350, 2442, 5975, 6675):
            mode.validate_frequency(mhz*1000000)
        for hz in (5301000000, 3000000000, float('nan'), float('inf')):
            with self.subTest(hz=hz), self.assertRaises(ValueError):
                mode.validate_frequency(hz)

    def test_legacy_preserves_ht40_channels(self):
        mode = receiver_mode('legacy40')
        self.assertEqual(mode.channels([2412, 2422, 2432, 2462]), [2422])
        self.assertTrue(mode.can_retune)
        mode.validate_frequency(2462000000)
        with self.assertRaises(ValueError):
            mode.validate_frequency(5250000000)

    def test_environment_mode_and_invalid_mode(self):
        with patch.dict(os.environ, RTL8922_CAPTURE_MODE='legacy40'):
            self.assertEqual(receiver_mode().rate, 40000000)
        with self.assertRaises(ValueError):
            receiver_mode('unknown')
