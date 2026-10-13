"""Hardware-free causal compiler, chunk-state and independent packet tests."""
import unittest,subprocess,sys,json,os,io,tempfile
from pathlib import Path
import numpy as np
from bb_nco_realtime import Compiler,FS
from bb_nco_narrow_ofdm import make_frame,decode,unpack
from bb_nco_gate import phase_model
LIB=Path(os.environ.get('RTL8922_NCO_TEST_LIBRARY','/tmp/rtl8922-nco-realtime-strict.so'))
class RealtimeTest(unittest.TestCase):
    @unittest.skipUnless(LIB.exists(),'Compile C first')
    def test_pipe_accepts_reads_split_inside_samples_and_reports_tail(self):
        from bb_nco_iq_pipe import compile_stream
        class Fragmented(io.BytesIO):
            def read(self, size=-1):
                return super().read(min(size, 3))
        iq=(.2*np.exp(2j*np.pi*np.arange(100)/60)).astype('<c8')
        expected=Compiler(LIB).feed_iq(iq,20).tobytes()
        out=io.BytesIO()
        stats=compile_stream(Fragmented(iq.tobytes()),out,Compiler(LIB))
        self.assertEqual(out.getvalue(),expected)
        self.assertEqual(stats['uncompiled_command_slots'],4)
        for raw in (b'',iq.tobytes()+b'x'):
            with self.assertRaises(ValueError):
                compile_stream(Fragmented(raw),io.BytesIO(),Compiler(LIB))

    @unittest.skipUnless(LIB.exists(),'Compile C first')
    def test_pipe_files_refuse_overwrite_and_remove_failed_output(self):
        bootstrap="import inspect,runpy,sys;sys.path="+repr(sys.path)+";script=sys.argv.pop(1);runpy.run_path(script,run_name='__main__')"
        with tempfile.TemporaryDirectory() as directory:
            src=Path(directory)/'input.cf32';dst=Path(directory)/'commands.bin'
            cmd=[sys.executable,'-c',bootstrap,'research/tx/bb_nco_iq_pipe.py','--library',str(LIB),'--input',str(src),'--output',str(dst)]
            iq=np.full(100,.2,dtype='<c8');src.write_bytes(iq.tobytes())
            result=subprocess.run(cmd,capture_output=True,check=True)
            self.assertEqual(result.stdout,b'')
            expected=Compiler(LIB).feed_iq(iq,20).tobytes()
            self.assertEqual(dst.read_bytes(),expected)
            self.assertNotEqual(subprocess.run(cmd,capture_output=True).returncode,0)
            self.assertEqual(dst.read_bytes(),expected)
            dst.unlink();src.write_bytes(iq.tobytes()+b'x')
            self.assertNotEqual(subprocess.run(cmd,capture_output=True).returncode,0)
            self.assertFalse(dst.exists())
            src.write_bytes(np.full(100,np.nan,dtype='<c8').tobytes())
            self.assertNotEqual(subprocess.run(cmd,capture_output=True).returncode,0)
            self.assertFalse(dst.exists())

    @unittest.skipUnless(LIB.exists(),'Compile the hardware-free C library first')
    def test_streaming_chunks_are_bit_exact_with_one_shot_and_stay_bounded(self):
        rng=np.random.default_rng(550);iq=(.25*(rng.standard_normal(16384)+1j*rng.standard_normal(16384))).astype('<c8');iq*=.9/max(abs(iq))
        a=Compiler(LIB);whole,_=a.compile(iq)
        b=Compiler(LIB);chunks=[b.compile(iq[i:i+4096])[0] for i in range(0,len(iq),4096)]
        np.testing.assert_array_equal(whole,np.concatenate(chunks));self.assertEqual(a.state.samples,b.state.samples)
        self.assertTrue(np.all(unpack(whole.tobytes())<=6))
    @unittest.skipUnless(LIB.exists(),'Compile C first')
    def test_interpolation_preserves_absolute_time_and_chunk_state(self):
        rng=np.random.default_rng(559);iq=(.1*(rng.standard_normal(1000)+1j*rng.standard_normal(1000))).astype('<c8');factor=20
        a=Compiler(LIB);parts=[]
        for first in [0,4096]:parts.append(a.interpolated(iq,first,4096,factor)[0])
        native=np.interp(np.arange(8192)/factor,np.arange(len(iq)),iq.real)+1j*np.interp(np.arange(8192)/factor,np.arange(len(iq)),iq.imag)
        b=Compiler(LIB);reference,_=b.compile(native)
        # Different interpolation arithmetic can change a marginal quantizer
        # decision; compare the filtered physical output rather than raw bits.
        x=phase_model(unpack(np.concatenate(parts).tobytes()),40000000,'paused',250000)
        y=phase_model(unpack(reference.tobytes()),40000000,'paused',250000)
        from bb_nco_gate import lowpass
        self.assertLess(np.sqrt(np.mean(abs(lowpass(x-y,40000000,100000))**2)),.03)
        self.assertEqual(a.state.samples,8192)
        with self.assertRaises(ValueError):a.interpolated(iq,0,4096,1)
    @unittest.skipUnless(LIB.exists(),'Compile C first')
    def test_incremental_input_chunks_preserve_interpolation_and_causality(self):
        rng=np.random.default_rng(556);iq=(.1*(rng.standard_normal(1001)+1j*rng.standard_normal(1001))).astype('<c8')
        a=Compiler(LIB);whole=a.feed_iq(iq,20)
        b=Compiler(LIB);parts=[b.feed_iq(iq[i:i+37],20) for i in range(0,len(iq),37)]
        np.testing.assert_array_equal(whole,np.concatenate(parts));self.assertEqual(a.state.samples,b.state.samples)
        c=Compiler(LIB);prefix=c.feed_iq(iq[:100],20)
        d=Compiler(LIB);changed=iq.copy();changed[100:]*=-1
        np.testing.assert_array_equal(prefix,d.feed_iq(changed[:100],20))
    @unittest.skipUnless(LIB.exists(),'Compile C first')
    def test_causal_compiler_recovers_unaveraged_100_and_200khz_frames(self):
        for oversample,slots in [(40,8192),(20,4096)]:
            z,p,_=make_frame(oversample=oversample,slots=slots)
            c=Compiler(LIB);packed,_=c.compile(np.tile(z,12))
            received=phase_model(unpack(packed.tobytes()),40000000,'paused',250000)
            r,_=decode(received,40000000,oversample=oversample,reference=p)
            self.assertGreaterEqual(r['crc_valid_frames'],10)
            self.assertFalse(r['repetition_averaging'])
    @unittest.skipUnless(LIB.exists(),'Compile C first')
    def test_public_api_rejects_unsafe_native_bounds_and_invalid_iq(self):
        c=Compiler(LIB);iq=np.zeros(1000,dtype='<c8')
        for first,count,factor in [(-1,8,20),(0,-8,20),(0,0,20),(0,4104,20),(0,8,0),(0,8,129),(0,8,1.5)]:
            with self.assertRaises(ValueError):c.interpolated(iq,first,count,factor)
        for bad in (np.array([np.nan]*16),np.ones(16)*1.1,np.zeros((8,2))):
            with self.assertRaises(ValueError):c.compile(bad)
            with self.assertRaises(ValueError):c.feed_iq(bad)
            with self.assertRaises(ValueError):c.interpolated(bad,0,8,20)
        c.feed_iq(iq[:10],20)
        with self.assertRaises(ValueError):c.feed_iq(iq[:10],40)
    @unittest.skipUnless(LIB.exists(),'Compile C first')
    def test_pipe_matches_incremental_api_and_rejects_partial_samples(self):
        iq=(.3*np.exp(2j*np.pi*np.arange(1001)/300)).astype('<c8')
        api=Compiler(LIB);expected=api.feed_iq(iq,20).tobytes()
        bootstrap="import inspect,runpy,sys;sys.path="+repr(sys.path)+";script=sys.argv.pop(1);runpy.run_path(script,run_name='__main__')"
        cmd=[sys.executable,'-c',bootstrap,'research/tx/bb_nco_iq_pipe.py','--library',str(LIB),'--factor','20','--chunk-samples','37']
        r=subprocess.run(cmd,input=iq.tobytes(),capture_output=True,check=True)
        self.assertEqual(r.stdout,expected)
        stats=json.loads(r.stderr.decode().splitlines()[-1]);self.assertEqual(stats['input_samples'],1001)
        self.assertFalse(stats['hardware_access'])
        r=subprocess.run(cmd,input=b'bad',capture_output=True)
        self.assertNotEqual(r.returncode,0);self.assertIn(b'Truncated CF32',r.stderr)
if __name__=='__main__':unittest.main()
