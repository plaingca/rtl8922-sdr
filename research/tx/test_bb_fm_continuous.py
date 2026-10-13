"""Offline live-ingestion cancellation and RF continuity controls."""
import io,json,queue,tempfile,threading,unittest
from pathlib import Path
from unittest.mock import patch
import numpy as np
from bb_fm_live_source import LiveSource
from analyze_bb_fm_continuity import measure
from bb_fm_demod import demodulate,analyze
from bb_fm_audio import prepare


class FakeProcess:
    def __init__(self,*args,**kwargs):
        self.stdout=io.BytesIO((np.sin(np.arange(100000)*.03)*10000).astype('<i2').tobytes())
        self.returncode=None
    def poll(self):return self.returncode
    def terminate(self):self.returncode=-15
    def kill(self):self.returncode=-9
    def wait(self,timeout=None):return self.returncode


class StreamingTest(unittest.TestCase):
    def test_live_source_preserves_consumed_reference_and_bounds_shutdown(self):
        with tempfile.TemporaryDirectory() as directory,patch('bb_fm_live_source.subprocess.Popen',FakeProcess):
            prefix=Path(directory)/'source';s=LiveSource('https://example.invalid/live',4,prefix)
            for i in range(4):self.assertEqual(len(s[i*2048:(i+1)*2048]),2048)
            result=s.close()
            self.assertEqual(result['blocks'],4);self.assertIsNone(result['error'])
            self.assertEqual(len(prefix.with_suffix('.bin').read_bytes()),8192)
            self.assertFalse(s.thread.is_alive())
            self.assertEqual(s.process.poll(),-15)

    def test_cancelled_empty_queue_does_not_wait_for_network(self):
        s=object.__new__(LiveSource);s.next_offset=0;s.queue=queue.Queue();s.stop=threading.Event();s.error=None
        s.stop.set()
        with self.assertRaisesRegex(TimeoutError,'stopped'):s[:2048]

    def test_nonsequential_read_rejected(self):
        s=object.__new__(LiveSource);s.next_offset=2048
        with self.assertRaisesRegex(ValueError,'Nonsequential'):s[0:2048]

    def test_detector_accepts_fm_and_rejects_integer_hold_at_one_msps(self):
        rate=1000000;t=np.arange(200000)/rate;freq=14000+70000*np.sin(2*np.pi*997*t)
        iq=np.exp(2j*np.pi*np.cumsum(freq)/rate)
        self.assertTrue(measure(iq,rate,14000,.01,.19)['no_100us_holds'])
        freq[80000:83000]=139000;iq=np.exp(2j*np.pi*np.cumsum(freq)/rate)
        result=measure(iq,rate,14000,.01,.19)
        self.assertFalse(result['no_100us_holds'])
        self.assertGreater(result['max_out_of_range_hold_seconds'],.002)

    def test_one_msps_receiver_recovers_independent_fm(self):
        payload,reference,meta=prepare();rate=1000000
        index=np.floor(np.arange(round(len(payload)*rate/32000))*32000/rate).astype(int)
        freq=14000+250000*(payload[index].astype(float)/256-.5)
        iq=np.exp(2j*np.pi*np.cumsum(freq)/rate)
        audio=demodulate(np.r_[np.zeros(50000),iq,np.zeros(50000)],rate,14000)
        _,stats=analyze(audio,reference,32000,meta['preamble_samples'])
        self.assertGreater(stats['heldout_correlation'],.98)
        self.assertGreater(stats['heldout_signal_error_db'],15)


if __name__=='__main__':unittest.main()
