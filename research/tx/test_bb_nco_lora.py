"""Hardware-free packet compatibility and independent held-NCO phase checks."""
import unittest
import numpy as np
try:
    import bb_nco_lora as lora
except ImportError:
    lora=None

@unittest.skipIf(lora is None,'Requires separately built pinned gr-lora_sdr')
class LoRaTest(unittest.TestCase):
    def test_channel_filter_rejects_packet_that_aliases_at_chip_decimation(self):
        from bb_nco_lora_rx import channelize
        p=lora.parameters('SHORT_TURBO',True)
        desired=bytes(range(35));unwanted=bytes(range(35,70))
        a,rate=lora.modulate(lora.encode(desired,p),p)
        b,_=lora.modulate(lora.encode(unwanted,p),p)
        # Two bandwidths away becomes the same carrier after 8:1 sample picking.
        mixed=a+4*b*np.exp(2j*np.pi*2*p['bandwidth_hz']*np.arange(len(a))/rate)
        mixed=np.r_[np.zeros(round(.01*rate)),mixed,np.zeros(round(.03*rate))]
        recovered=[]
        for filtered in (False,True):
            iq,target=channelize(mixed,rate,p['bandwidth_hz'],0,filtered)
            result=lora.decode(iq,target,p)
            recovered.append([v['payload_hex'] for v in result['packets'] if v['crc_ok']])
        self.assertEqual(recovered[0],[unwanted.hex()])
        self.assertEqual(recovered[1],[desired.hex()])

    def test_hard_decode_audit_preserves_payload_and_received_crc(self):
        p=lora.parameters('SHORT_FAST');payload=bytes(range(35))
        iq,rate=lora.modulate(lora.encode(payload,p),p)
        result=lora.decode(np.r_[np.zeros(round(.01*rate)),iq,np.zeros(round(.03*rate))],rate,p,soft=False,audit=True)
        self.assertEqual([(v['payload_hex'],v['crc_ok']) for v in result['packets']],[(payload.hex(),True)])
        raw=bytes.fromhex(result['audit']['before_crc'][0]['bytes_hex'])
        self.assertEqual(raw[:len(payload)],payload)
        self.assertEqual(len(raw),len(payload)+2)
        self.assertEqual(result['audit']['headers'][0]['err'],0)
        self.assertGreater(len(result['_synchronized_iq']),0)

    def test_explicit_header_fec_crc_roundtrip_across_parameter_families(self):
        payload=bytes(range(35))
        for name,wide in [('SHORT_FAST',False),('LONG_SLOW',False),('TINY_SLOW',False),('SHORT_TURBO',True)]:
            p=lora.parameters(name,wide);symbols=lora.encode(payload,p);iq,rate=lora.modulate(symbols,p)
            x=np.r_[np.zeros(round(.01*rate)),iq,np.zeros(round(.03*rate))]
            result=lora.decode(x,rate,p)
            self.assertEqual([(v['payload_hex'],v['crc_ok']) for v in result['packets']],[(payload.hex(),True)])
            self.assertFalse(result['repetition_averaging'])
    def test_hold_correction_improves_independently_integrated_chirp_phase(self):
        fs=lora.FS;playback=10639878.95;gap=4096*(1/playback-1/fs);rate=1000000;offset=853
        t=np.arange(50000)/rate;phase=2*np.pi*(-100000*t+200000/.05*t*t/2)
        iq=np.exp(1j*phase).astype('<c8');rms=[]
        for correct in (False,True):
            codes=lora.compile_frequency(iq,rate,500000,None,playback,correct,offset)
            n=np.arange(len(codes));starts=n/fs+((offset+n)//4096-offset//4096)*gap
            duration=np.diff(np.r_[starts,starts[-1]+1/fs])
            before=np.r_[0,np.cumsum(codes*duration)[:-1]]*2*np.pi*250000
            times=np.arange(49000)/rate;k=np.searchsorted(starts,times,side='right')-1
            actual=before[k]+2*np.pi*250000*codes[k]*(times-starts[k])
            expected=np.interp(times,t,phase)+2*np.pi*500000*times
            error=np.angle(np.exp(1j*(actual-expected)));rms.append(np.sqrt(np.mean(error**2)))
        self.assertLess(rms[1],.15)
        self.assertLess(rms[1],rms[0]/3)
    def test_preset_inventory_and_packed_command_bounds(self):
        self.assertEqual(len(lora.PRESETS),16)
        self.assertEqual(sum(not s.startswith(('LITE','NARROW','TINY')) for s in lora.PRESETS),10)
        self.assertTrue(lora.parameters('LONG_SLOW')['deprecated'])
        self.assertEqual(lora.parameters('TINY_FAST')['bandwidth_hz'],15625)
        with self.assertRaises(ValueError):lora.parameters('TINY_FAST',True)
        with self.assertRaises(ValueError):lora.pack(np.ones(7,dtype=np.uint8))
        with self.assertRaises(ValueError):lora.pack(np.ones(8,dtype=np.uint8)*10)
        codes=np.tile(np.arange(8),4);words=lora.pack(codes)
        restored=((words[:,None]>>(4*np.arange(8)))&15).ravel()
        np.testing.assert_array_equal(codes,restored)

if __name__=='__main__':unittest.main()
