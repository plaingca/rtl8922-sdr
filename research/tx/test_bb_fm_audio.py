"""Offline FM correctness, signal controls, and invalid transport-state gates."""
import sys
from pathlib import Path
import unittest
from unittest.mock import Mock
import numpy as np
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'firmware'))
from bb_fm_audio import prepare
from bb_fm_demod import blank_impulses,demodulate,analyze,score_with_measured_pauses
from bb_fm_probe import FMTransport
from scipy import signal


class AudioTest(unittest.TestCase):
    def test_payload_bounds_padding_and_reference(self):
        payload,reference,meta=prepare()
        self.assertEqual(len(payload)%2048,0)
        self.assertGreaterEqual(payload.min(),52)
        self.assertLessEqual(payload.max(),204)
        self.assertTrue(np.all(payload[len(reference):]==128))
        self.assertAlmostEqual(meta['nominal_peak_deviation_hz'],74218.75)

    def test_independent_blanker_leaves_valid_fm_and_repairs_short_excursion(self):
        x=np.sin(np.arange(20000)*.01)*74000
        y,stats=blank_impulses(x,400000)
        np.testing.assert_array_equal(y,x)
        x[8000:9000]=125000
        y,stats=blank_impulses(x,400000)
        self.assertEqual(stats['spans'],[[7960,9040]])
        self.assertLess(max(abs(y)),75000)

    def test_ideal_rf_recovers_heldout_tones_without_reference_in_demodulator(self):
        payload,reference,meta=prepare()
        rate=2000000
        index=np.floor(np.arange(round(len(payload)*rate/32000))*32000/rate).astype(int)
        freq=250000*(1+payload[index].astype(float)/256)
        iq=np.exp(2j*np.pi*np.cumsum(freq)/rate)
        audio=demodulate(np.r_[np.zeros(100000),iq,np.zeros(100000)],rate,375000)
        got,stats=analyze(audio,reference,32000,meta['preamble_samples'])
        self.assertGreater(stats['heldout_correlation'],.98)
        self.assertGreater(stats['heldout_signal_error_db'],15)
        self.assertLess(stats['wrong_payload_signal_error_db'],0)

    def test_pause_scoring_rejects_unexplained_number_of_gaps(self):
        x=np.zeros(40000)
        stats={'pilot_start_seconds':0,'pilot_clock_scale':1,'pilot_gain_hz_per_unit':1}
        result=score_with_measured_pauses(x,x,32000,5760,stats,{'phase_rate':400000,'spans':[]},20)
        self.assertEqual(result['status'],'pause_count_mismatch')

    def test_invalid_memory_read_cannot_authorize_buffer_reuse(self):
        box=object.__new__(FMTransport)
        box.control=Mock(return_value=(0,0,0xDEADBEEF,0))
        box.local_write=Mock()
        with self.assertRaisesRegex(ValueError,'Invalid BB consumed'):
            box.fill(3,bytes(2048))
        box.local_write.assert_not_called()


if __name__=='__main__':unittest.main()
