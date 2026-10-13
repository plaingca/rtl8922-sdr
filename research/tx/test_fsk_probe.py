import unittest

import numpy as np

from fsk_probe import DWELL, PAYLOAD, SYNC, bits, decode


class FskDecoderTest(unittest.TestCase):
    def test_payload_is_held_out_from_sync_alignment(self):
        rate, delay, start = 1000000, 0.023, 0.2
        carriers = [123000, 373000]
        events = [[start+i*DWELL, bit] for i, bit in enumerate(bits(SYNC+PAYLOAD))]
        stop = start+len(events)*DWELL
        rng = np.random.default_rng(12)
        samples = rng.normal(size=2097152) + 1j*rng.normal(size=2097152)
        def tone(a, b, carrier):
            first, last = int(a*rate), int(b*rate)
            samples[first:last] += 5*np.exp(2j*np.pi*carrier*np.arange(first, last)/rate)
        tone(0, start+delay, carriers[0])
        for a, bit in events:
            tone(a+delay, a+delay+DWELL, carriers[bit])
        result = decode(samples, rate, carriers, events, stop)
        self.assertTrue(result['passed'], result)
        self.assertEqual(result['decoded_payload_hex'], PAYLOAD.hex())
        # A strong unmodulated tone must not pass as the programmed payload.
        t = np.arange(len(samples))/rate
        stationary = 5*np.exp(2j*np.pi*carriers[0]*t)
        negative = decode(stationary, rate, carriers, events, stop)
        self.assertFalse(negative['passed'])
        self.assertGreater(negative['payload_bit_errors'], 0)
