"""Explicit online I/Q compiler feeding the existing bounded BB consumer."""
import ctypes as C,hashlib,threading,time,json
from pathlib import Path
import numpy as np
from bb_nco_stream_transport import StreamTransport
from bb_nco_stream_patch import COMMAND,MAGIC,BUFFER,BLOCK
from probe_bb_rom import require

class RealtimeTransport(StreamTransport):
    def upload(self,payload):
        src=json.loads(Path(self.report['source_report']).read_text());self.src=src
        self.blocks=src['stream_blocks'];self.factor=src['input_factor']
        require(2<=self.blocks<=1024 and 1<=self.factor<=128,'Realtime stream bounds')
        iq=np.frombuffer(payload,dtype='<c8')
        require(np.all(np.isfinite(iq)) and np.max(abs(iq))<=1,'Invalid input I/Q')
        require(len(iq)>=(self.blocks*4096-1)//self.factor+2,'Missing interpolation lookahead')
        self.iq=np.ascontiguousarray(iq);self.payload=payload
        library=Path(self.report['mapped_writer_library']);self.lib=C.CDLL(str(library))
        book=(C.c_uint*16)();self.lib.nco_compiler_codebook.argtypes=[C.POINTER(C.c_uint)]
        count=self.lib.nco_compiler_codebook(book)
        require(list(book)[:count]==src.get('nco_codebook',list(range(7)))==self.report['nco_codebook'],'Compiler/firmware command alphabet mismatch')
        self.lib.nco_open.restype=C.c_int;self.lib.nco_close.restype=None
        self.lib.nco_rt_prepare.argtypes=[C.c_void_p,C.c_uint,C.c_uint,C.c_float,C.c_float,C.c_void_p,C.POINTER(C.c_double)]
        self.lib.nco_rt_stream.argtypes=[C.c_void_p,C.c_uint,C.c_void_p,C.c_void_p,C.POINTER(C.c_uint)]
        self.window.select(0x18600000);require(self.lib.nco_open()==0,'Cannot map BAR2')
        preload=np.empty(1024,dtype='<u4');benchmark=C.c_double()
        require(self.lib.nco_rt_prepare(self.iq.ctypes.data,self.blocks,self.factor,src['feedback'],src['phase_weight'],preload.ctypes.data,C.byref(benchmark))==0,'Realtime preload failed')
        self.report['mapped_writer_sha256']=hashlib.sha256(library.read_bytes()).hexdigest()
        self.report['mapped_fill_benchmark_seconds']=benchmark.value;self.report['native_block_seconds']=.000384
        require(benchmark.value<.000384*.8,'Writer too slow')
        host=0x18638000+BUFFER-0x10010000
        actual=b''.join(self.window.mapped_read(host+i,512) for i in range(0,4096,512))
        require(actual==preload.tobytes(),'Realtime initial buffers readback failed')
        self.report['table_readback_matches']=True;self.report['realtime_compiler']={'input_factor':self.factor,
            'input_sample_rate_hz':src['input_sample_rate_hz'],'native_samples_compiled_before_tx':8192,
            'feedback':src['feedback'],'phase_weight':src['phase_weight'],'input_sha256':hashlib.sha256(payload).hexdigest()};self.save()

    def play(self,repeats,samples):
        require(repeats==1 and samples==self.blocks*4096,'Realtime sample bounds')
        before=self.result();require(not self.read(0x37600)&(1<<31),'Mailbox busy')
        self.write(0x3768c,1<<16)
        for addr,value in [(0x37608,MAGIC),(0x3760c,self.blocks),(0x37610,1),(0x37600,0xc0000003|COMMAND<<18)]:self.write(addr,value)
        times=np.zeros(self.blocks,dtype='<f8');uploads=np.zeros(self.blocks,dtype='<f8');consumed=C.c_uint();errors=[]
        def producer():
            code=self.lib.nco_rt_stream(self.iq.ctypes.data,self.blocks,times.ctypes.data,uploads.ctypes.data,C.byref(consumed))
            if code:errors.append(code)
        thread=threading.Thread(target=producer,name='causal-iq-command-refill');thread.start()
        start=time.monotonic();self.write(0x37680,1);thread.join(timeout=2.2);require(not thread.is_alive(),'Online producer deadline')
        last=self.result()
        while time.monotonic()-start<2 and last[2]==1:time.sleep(.001);last=self.result()
        ticks=(last[11]-last[10])&0xffffffff;elapsed=time.monotonic()-start
        self.report['stream']={'blocks':self.blocks,'completed_blocks':last[9],'host_seconds':elapsed,'result_words':[hex(v) for v in last],
            'producer_errors':errors,'last_consumed':consumed.value,'local_repetitions_per_block':1,
            'upload_seconds':uploads[2:].tolist(),'uploaded_while_running':int(sum(uploads>0))}
        completed=int(sum(times>0));self.report['realtime_compiler'].update(native_samples_compiled_during_tx=completed*4096,
            compile_seconds=times[2:].tolist(),maximum_compile_and_fill_seconds=float(np.max(times+uploads)),
            median_compile_seconds=float(np.median(times[2:])),maximum_compile_seconds=float(np.max(times)))
        self.report['playback']={'repeats':1,'frame_samples':samples,'samples_completed':last[9]*4096,'host_seconds':elapsed,
            'counter_ticks':ticks,'counter_ticks_per_nco_write':ticks/max(1,last[9]*4096),
            'counter_ticks_per_table_entry':ticks/max(1,last[9]*4096),'completed':last[2]==2}
        self.save()
        if last[0]==MAGIC and last[1]==(before[1]+1)&0xffffffff and last[2] in (2,3,4,5):
            header=self.read(0x37600);require(header==0xc0000003|COMMAND<<18,'Mailbox changed');self.write(0x37600,header&~(1<<31))
        require(not errors and last[2]==2 and last[9]==self.blocks,'Online stream underrun/failure')
        expected=np.empty(1024,dtype='<u4');self.lib.nco_rt_expected.argtypes=[C.c_void_p]
        self.lib.nco_rt_expected(expected.ctypes.data);self.expected_final_payload=expected.tobytes()
