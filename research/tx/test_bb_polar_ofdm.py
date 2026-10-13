"""Offline known-payload, quantized-path and false-positive controls."""
import unittest
import numpy as np
from bb_polar_ofdm import *

class OFDMTest(unittest.TestCase):
    def test_custom_packet_reference_only_changes_scoring(self):
        message=np.random.default_rng(41).integers(0,256,36,dtype=np.uint8).tobytes()
        z,packet,_=make_frame(peak=.5,message=message)
        table,phase,levels,_=polar_table(z)
        x=model(table,phase,levels,repeats=8)
        scored,points=decode(x,reference_packet=packet)
        other,other_points=decode(x,reference_packet=bytes(40))
        self.assertGreater(scored['crc_valid_frames'],0)
        self.assertEqual(scored['ber'],0.)
        self.assertGreater(other['ber'],.1)
        self.assertEqual(scored['crc_valid_frames'],other['crc_valid_frames'])
        self.assertEqual([r['recovered_payload_hex'] for r in scored['frames']],
                         [r['recovered_payload_hex'] for r in other['frames']])
        np.testing.assert_array_equal(points,other_points)
    def test_fine_attenuation_packing_and_invalid_lut(self):
        pairs=[((2.**-i+2.**-q)/2,i+8*q) for i in range(1,8) for q in range(i,8)]
        pairs.sort();levels,codes=map(np.array,zip(*pairs))
        z,_,_=make_frame(peak=.5)
        table,_,amplitude,meta=polar_table(z,levels=levels,codes=codes,amp_advance=.75)
        self.assertEqual(len(levels),28)
        self.assertTrue(set((table>>16).tolist()).issubset(set(codes.tolist())))
        self.assertTrue(np.all(amplitude>=1/128))
        self.assertEqual(meta['amp_advance_samples'],.75)
        with self.assertRaises(ValueError):polar_table(z,levels=[.5,.25],codes=[9,18])
    def test_phase_closed_table_and_quantized_model_payload(self):
        z,packet,_=make_frame(peak=.5);table,phase,levels,meta=polar_table(z)
        self.assertEqual(len(table),800);self.assertEqual(phase[-1]%64,0)
        self.assertTrue(np.all(table&4095));self.assertLess(max(table&4095),2048)
        self.assertEqual(zlib.crc32(packet[:-4]),int.from_bytes(packet[-4:],'big'))
        received=model(table,phase,levels,repeats=12);r,_=decode(received)
        self.assertGreaterEqual(r['crc_valid_frames'],10);self.assertEqual(r['ber'],0.)
    def test_combining_uses_training_and_rejects_wrong_training(self):
        z,_,_=make_frame(peak=.5);table,phase,levels,_=polar_table(z)
        x=model(table,phase,levels,repeats=64)
        rng=np.random.default_rng(443);x=x*np.exp(2j*np.pi*27*np.arange(len(x))/FS)
        x=x+.02*(rng.standard_normal(len(x))+1j*rng.standard_normal(len(x)))
        x[16*FRAME:24*FRAME]+=rng.standard_normal(8*FRAME)+1j*rng.standard_normal(8*FRAME)
        r,_=decode_combined(x,group_frames=16)
        self.assertEqual(r['total_groups'],3);self.assertEqual(r['crc_valid_groups'],3);self.assertEqual(r['ber'],0.)
        wrong,_=decode_combined(x,seed=8923,group_frames=16);self.assertEqual(wrong['crc_valid_groups'],0)
    def test_noise_does_not_produce_crc_valid_payload(self):
        rng=np.random.default_rng(443);x=rng.standard_normal(FRAME*32)+1j*rng.standard_normal(FRAME*32)
        r,_=decode(x);self.assertEqual(r['crc_valid_frames'],0)
        c,_=decode_combined(x,group_frames=16);self.assertEqual(c['crc_valid_groups'],0)
if __name__=='__main__':unittest.main()
