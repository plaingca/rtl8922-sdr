"""Offline checks only: these tests never connect to RF hardware."""
import sys
import time
import unittest
from types import SimpleNamespace
from unittest.mock import patch

import numpy as np
from pluto_tone import PlutoTone
from waterfall_text import FONT, SAMPLE_RATE, TEXT_BANDWIDTH, WAVE_SAMPLES, bitmap, normalize_text, text_waves


class WaveformTest(unittest.TestCase):
    def test_font_and_input(self):
        self.assertEqual(normalize_text(' hello 40 '), 'HELLO 40')
        self.assertEqual(bitmap('RTL8922').shape, (7, 41))
        for glyph in FONT.values():
            self.assertEqual(len(glyph.split()), 7)
            self.assertTrue(all(len(row) == 5 for row in glyph.split()))
        for bad in ('', '   ', 'A'*17, '☃', [], None):
            with self.assertRaises(ValueError):
                normalize_text(bad)

    def test_band_pixels_orientation_and_peak(self):
        # Independently recover the illuminated glyph pixels from generated RF.
        expected = bitmap('RTL8922')
        for offset in (-1e6, 750000, 1e6):
            waves = text_waves('RTL8922', offset)
            frequencies = np.fft.fftfreq(WAVE_SAMPLES, 1/SAMPLE_RATE)
            self.assertFalse(np.any(waves[0]))
            for transmitted_row, wave in enumerate(waves[1:]):
                spectrum = np.abs(np.fft.fft(wave))
                active = spectrum > spectrum.max()*.01
                self.assertTrue(np.all(np.abs(frequencies[active]-offset) <= TEXT_BANDWIDTH/2+SAMPLE_RATE/WAVE_SAMPLES))
                self.assertLessEqual(np.abs(wave).max(), 24576.01)
                recovered = []
                for col in range(expected.shape[1]):
                    center = offset - TEXT_BANDWIDTH/2 + col*TEXT_BANDWIDTH/(expected.shape[1]-1)
                    recovered.append(active[np.argmin(np.abs(frequencies-center))])
                np.testing.assert_array_equal(recovered, expected[6-transmitted_row])


class FakePluto:
    def __init__(self):
        self.sample_rate = 2000000
        self.rx_lo = 2400000000
        self.tx_lo = 2401000000
        self.rx_rf_bandwidth = 18000000
        self.tx_rf_bandwidth = 2000000
        self.tx_hardwaregain_chan0 = -25
        self.powerdown = SimpleNamespace(value='1')
        self._ctx = SimpleNamespace(set_timeout=lambda _: None)
        self._ctrl = SimpleNamespace(find_channel=lambda *_: SimpleNamespace(attrs={'powerdown': self.powerdown}))
        self.writes = 0
        self.fail_tx = False

    def tx_destroy_buffer(self):
        pass

    def tx(self, _):
        if self.fail_tx:
            raise RuntimeError('TX disconnected')
        self.writes += 1


class TransmitterTest(unittest.TestCase):
    def setUp(self):
        self.device = FakePluto()
        self.saved = {key: getattr(self.device, key) for key in ('sample_rate', 'rx_lo', 'tx_lo', 'rx_rf_bandwidth', 'tx_rf_bandwidth', 'tx_hardwaregain_chan0')}
        self.mock = patch.dict(sys.modules, {'adi': SimpleNamespace(Pluto=lambda _: self.device)})
        self.mock.start()
        self.t = PlutoTone()

    def tearDown(self):
        self.t.close()
        self.mock.stop()

    def start(self, **kwargs):
        return self.t.command(dict(enabled=True, mode='text', text='RTL8922', seconds=5, **kwargs), 2422e6)

    def assert_restored(self):
        self.assertFalse(self.t.enabled)
        self.assertTrue(self.t.restored)
        self.assertEqual(self.device.powerdown.value, '1')
        self.assertEqual({key:getattr(self.device, key) for key in self.saved}, self.saved)

    def test_row_follow_timeout_restoration(self):
        self.start()
        self.assertEqual(self.device.powerdown.value, '0')
        self.t.next_row = 0
        self.t.tick(2422e6)
        self.assertEqual(self.t.row, 1)
        deadline = self.t.deadline
        self.t.tick(2427e6)
        self.assertEqual(self.device.tx_lo, 2427000000)
        self.assertEqual(self.t.deadline, deadline)
        self.t.deadline = time.monotonic()-1
        self.t.tick(2427e6)
        self.assert_restored()

    def test_stale_receiver_restores(self):
        self.start()
        self.t.tick(2422e6, False)
        self.assert_restored()

    def test_row_failure_restores(self):
        self.start()
        self.device.fail_tx = True
        self.t.next_row = 0
        self.t.tick(2422e6)
        self.assert_restored()
        self.assertIn('TX disconnected', self.t.error)

    def test_initial_tx_failure_restores(self):
        self.device.fail_tx = True
        with self.assertRaises(ValueError):
            self.start()
        self.assert_restored()

    def test_existing_transmitter_is_not_modified(self):
        self.device.powerdown.value = '0'
        with self.assertRaisesRegex(ValueError, 'already transmitting'):
            self.start()
        self.assertEqual(self.device.powerdown.value, '0')
        self.assertEqual(self.device.writes, 0)

    def test_prepare_does_not_open_device_or_enable_tx(self):
        with patch.object(sys.modules['adi'], 'Pluto', side_effect=AssertionError('No hardware access')):
            self.t.prepare()
        self.assertIsNone(self.t.device)
        self.assertFalse(self.t.enabled)
        self.assertEqual(self.device.powerdown.value, '1')

    def test_tone_mode_and_stop(self):
        result = self.t.command(dict(enabled=True, mode='tone', offset_khz=500, seconds=5), 2422e6)
        self.assertEqual(result['bandwidth_hz'], 0)
        self.t.command(dict(enabled=False), 2422e6)
        self.assert_restored()


if __name__ == '__main__':
    unittest.main()
