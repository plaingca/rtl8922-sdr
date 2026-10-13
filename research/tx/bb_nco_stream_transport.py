"""Explicit mapped writer for the bounded sequence-owned NCO stream."""
import ctypes as C
import hashlib,struct,threading,time,os
from pathlib import Path
import numpy as np
from bb_dds_probe import Mailbox
from bb_nco_stream_patch import COMMAND,MAGIC,BUFFER,BLOCK,CONTROL,MAX_BLOCKS
from probe_bb_rom import require

class StreamTransport(Mailbox):
    def upload(self,payload):
        require(len(payload)%BLOCK==0 and 2<=len(payload)//BLOCK<=getattr(self,'max_blocks',MAX_BLOCKS),'Stream size invalid')
        word=np.frombuffer(payload,dtype='<u4')
        require(all(np.all(((word>>shift)&15)<=getattr(self,'command_max',6)) for shift in range(0,32,4)),'Unqualified stream command')
        self.payload=payload;self.blocks=len(payload)//BLOCK
        self.data=(C.c_uint32*(len(payload)//4)).from_buffer_copy(payload)
        library=Path(self.report['mapped_writer_library']);self.lib=C.CDLL(str(library))
        self.lib.nco_open.restype=C.c_int;self.lib.nco_close.restype=None
        self.lib.nco_prepare.argtypes=[C.POINTER(C.c_uint32),C.c_uint,C.POINTER(C.c_double)]
        self.lib.nco_stream.argtypes=[C.POINTER(C.c_uint32),C.c_uint,C.POINTER(C.c_double),C.POINTER(C.c_uint)]
        if hasattr(self.lib,'nco_refill_sleep_ns'):self.report['refill_idle_sleep_ns']=self.lib.nco_refill_sleep_ns()
        self.window.select(0x18600000);require(self.lib.nco_open()==0,'Cannot map the card BAR2 RAM aperture')
        benchmark=C.c_double();require(self.lib.nco_prepare(self.data,self.blocks,C.byref(benchmark))==0,'Mapped preload failed')
        self.report['mapped_writer_sha256']=hashlib.sha256(library.read_bytes()).hexdigest()
        self.report['mapped_fill_benchmark_seconds']=benchmark.value
        self.report['native_block_seconds']=4096/(32000000/3)
        require(benchmark.value<self.report['native_block_seconds']*.8,'Mapped writer cannot sustain native stream rate')
        host=0x18638000+BUFFER-0x10010000
        actual=b''.join(self.window.mapped_read(host+i,512) for i in range(0,2*BLOCK,512))
        require(actual==payload[:2*BLOCK],'Mapped preload full readback failed')
        self.report['table_readback_matches']=True;self.save()

    def play(self,repeats,samples):
        require(repeats==1 and samples==len(self.payload)*2,'Stream has no local frame repetition')
        before=self.result();require(not self.read(0x37600)&(1<<31),'Mailbox busy')
        self.write(0x3768c,1<<16)
        for addr,value in [(0x37608,MAGIC),(0x3760c,self.blocks),(0x37610,1),(0x37600,0xc0000003|COMMAND<<18)]:self.write(addr,value)
        uploads=(C.c_double*self.blocks)();consumed=C.c_uint();errors=[]
        def producer():
            policy=param=affinity=None
            try:
                if getattr(self,'realtime_refill',False):
                    policy=os.sched_getscheduler(0);param=os.sched_getparam(0);affinity=os.sched_getaffinity(0)
                    os.sched_setaffinity(0,{self.refill_cpu})
                    os.sched_setscheduler(0,os.SCHED_FIFO,os.sched_param(1))
                    self.report['refill_scheduler']={'policy':'SCHED_FIFO','priority':1,'cpu':self.refill_cpu,'scope':'Only bounded refill thread; policy/affinity restored on exit'}
                code=self.lib.nco_stream(self.data,self.blocks,uploads,C.byref(consumed))
                if code:errors.append(code)
            except Exception as exc:errors.append(f'{type(exc).__name__}: {exc}')
            finally:
                if policy is not None:
                    try:os.sched_setscheduler(0,policy,param);os.sched_setaffinity(0,affinity)
                    except Exception as exc:errors.append(f'Refill scheduling restore: {exc}')
        thread=threading.Thread(target=producer,name='mapped-nco-refill');thread.start()
        start=time.monotonic();self.write(0x37680,1);thread.join(timeout=getattr(self,'stream_timeout',2)+.2)
        require(not thread.is_alive(),'Mapped producer failed deadline')
        last=self.result()
        while time.monotonic()-start<getattr(self,'stream_timeout',2) and last[2]==1:
            time.sleep(.001);last=self.result()
        elapsed=time.monotonic()-start
        self.report['stream']={'blocks':self.blocks,'completed_blocks':last[9],'host_seconds':elapsed,
            'result_words':[hex(v) for v in last],'producer_errors':errors,'last_consumed':consumed.value,
            'local_repetitions_per_block':1,'upload_seconds':list(uploads)[2:],
            'uploaded_while_running':int(sum(v>0 for v in list(uploads)[2:]))}
        ticks=(last[11]-last[10])&0xffffffff
        self.report['playback']={'repeats':1,'frame_samples':samples,'samples_completed':last[9]*4096,
            'host_seconds':elapsed,'counter_ticks':ticks,'counter_ticks_per_nco_write':ticks/max(1,last[9]*4096),
            'counter_ticks_per_table_entry':ticks/max(1,last[9]*4096),'completed':last[2]==2}
        self.save()
        if last[0]==MAGIC and last[1]==(before[1]+1)&0xffffffff and last[2] in (2,3,4,5):
            header=self.read(0x37600);require(header==0xc0000003|COMMAND<<18,'Mailbox changed')
            self.write(0x37600,header&~(1<<31))
        require(not errors and last[2]==2 and last[9]==self.blocks,'Stream underrun or producer failure')

    def restore(self):
        if hasattr(self,'lib'):self.lib.nco_close()
        super().restore()
