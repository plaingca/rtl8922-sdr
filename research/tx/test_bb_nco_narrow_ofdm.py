"""Single-frame decoding, no scoring-data leakage and false-positive controls."""
import unittest
import numpy as np
from bb_nco_narrow_ofdm import *

class NarrowTest(unittest.TestCase):
    def test_independent_frames_with_different_phases_and_cfos(self):
        z,p,_=make_frame();ref=resample_poly(z,1,8)
        rng=np.random.default_rng(834);frames=[]
        for n in range(12):
            phi=rng.uniform(-np.pi,np.pi);cfo=rng.uniform(-700,700)
            x=ref*np.exp(1j*(phi+2*np.pi*cfo*np.arange(len(ref))/RX_RATE))
            x+=.01*(rng.standard_normal(len(x))+1j*rng.standard_normal(len(x)));frames.append(x)
        result,points=decode(np.concatenate(frames),RX_RATE,reference=p)
        self.assertGreaterEqual(result['crc_valid_frames'],10)
        self.assertEqual(result['crc_valid_frames'],result['exact_payload_frames'])
        self.assertFalse(result['repetition_averaging'])
        altered,other=decode(np.concatenate(frames),RX_RATE,reference=bytes(len(p)))
        self.assertEqual(altered['crc_valid_frames'],result['crc_valid_frames'])
        self.assertEqual([r['recovered_packet_hex'] for r in altered['frames']],[r['recovered_packet_hex'] for r in result['frames']])
        np.testing.assert_array_equal(points,other)
    def test_noise_wrong_training_and_packet_corruption(self):
        rng=np.random.default_rng(773);noise=rng.standard_normal(20000)+1j*rng.standard_normal(20000)
        r,_=decode(noise,RX_RATE);self.assertEqual(r['crc_valid_frames'],0)
        z,p,_=make_frame();r,_=decode(np.tile(z,6),FS,seed=8923,reference=p)
        self.assertEqual(r['crc_valid_frames'],0)
        self.assertNotEqual(binascii.crc_hqx(bytes([p[0]^1])+p[1:-2],0xffff),int.from_bytes(p[-2:],'big'))
    def test_nibble_packing_bounds_and_phase_closure(self):
        z,p,_=make_frame();table=initial_table(z);self.assertEqual(sum(table)%128,0)
        np.testing.assert_array_equal(table,unpack(pack(table)))
        with self.assertRaises(ValueError):pack(np.array([7]*8))
        self.assertEqual(len(pack(table)),4096)

if __name__=='__main__':unittest.main()
