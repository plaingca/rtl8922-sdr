#!/usr/bin/env python3
"""Hardware-free stateful CF32 compiler API and test-source construction."""
import argparse,ctypes as C,hashlib,json,time
from pathlib import Path
import numpy as np
from bb_nco_gate import FS
EXTENDED_CODEBOOK=[0,1,2,3,4,5,6,8,9,12,13,16,17,24,32,33]
ROOT=Path('vendor/local-rf-captures/bb-nco-realtime-20261013')
class State(C.Structure):
    _fields_=[('er',C.c_float),('ei',C.c_float),('phase',C.c_uint),('samples',C.c_uint64),('feedback',C.c_float),('phase_weight',C.c_float)]
class Compiler:
    def __init__(self,library,feedback=.97,phase_weight=1.):
        if not 0<=feedback<=1 or not 0<=phase_weight<=32:raise ValueError('Compiler feedback/phase weight out of bounds')
        self.lib=C.CDLL(str(library));self.state=State();self.library=Path(library)
        self.lib.nco_compiler_init.argtypes=[C.POINTER(State),C.c_float,C.c_float]
        self.lib.nco_compile.argtypes=[C.POINTER(State),C.c_void_p,C.c_size_t,C.c_void_p]
        self.lib.nco_compile_interpolated.argtypes=[C.POINTER(State),C.c_void_p,C.c_uint64,C.c_size_t,C.c_uint,C.c_void_p]
        for name in ('nco_compiler_init','nco_compile','nco_compile_interpolated'):getattr(self.lib,name).restype=None
        self.lib.nco_compiler_init(C.byref(self.state),feedback,phase_weight)
        book=(C.c_uint*16)();self.lib.nco_compiler_codebook.argtypes=[C.POINTER(C.c_uint)]
        self.lib.nco_compiler_codebook.restype=C.c_uint
        count=self.lib.nco_compiler_codebook(book);self.codebook=list(book)[:count]
    def compile(self,iq):
        iq=np.ascontiguousarray(iq,dtype='<c8')
        if iq.ndim!=1 or len(iq)%8 or not np.all(np.isfinite(iq)) or np.max(abs(iq),initial=0)>1:raise ValueError('Expected bounded finite CF32, count multiple of eight')
        packed=np.empty(len(iq)//8,dtype='<u4');start=time.perf_counter()
        self.lib.nco_compile(C.byref(self.state),iq.ctypes.data,len(iq),packed.ctypes.data)
        return packed,time.perf_counter()-start
    def feed_iq(self,iq,factor=20):
        """Incremental CF32 API: retain one-sample lookahead and interpolation
        phase between input chunks. Returns packed words ready for a TX queue.
        """
        iq=np.ascontiguousarray(iq,dtype='<c8')
        if iq.ndim!=1 or not isinstance(factor,int) or not 1<=factor<=128 or not np.all(np.isfinite(iq)) or np.max(abs(iq),initial=0)>1:raise ValueError('Invalid streaming input')
        if hasattr(self,'factor') and self.factor!=factor:raise ValueError('Sample rate changed midstream')
        self.factor=factor
        self.pending=np.concatenate([getattr(self,'pending',np.empty(0,dtype='<c8')),iq])
        self.fraction=getattr(self,'fraction',0);outputs=[]
        while (len(self.pending)-1)*factor-self.fraction>=8:
            count=min(4096,((len(self.pending)-1)*factor-self.fraction)//8*8)
            packed,_=self.interpolated(self.pending,self.fraction,count,factor);outputs.append(packed)
            used,self.fraction=divmod(self.fraction+count,factor);self.pending=self.pending[used:]
        return np.concatenate(outputs) if outputs else np.empty(0,dtype='<u4')
    def interpolated(self,iq,first,count,factor):
        iq=np.ascontiguousarray(iq,dtype='<c8')
        if iq.ndim!=1 or not all(isinstance(v,int) for v in (first,count,factor)) or first<0 or not 0<count<=4096 or count%8 or not 1<=factor<=128 or (first+count-1)//factor+1>=len(iq):raise ValueError('Input/lookahead bounds')
        if not np.all(np.isfinite(iq)) or np.max(abs(iq),initial=0)>1:raise ValueError('Invalid input I/Q')
        packed=np.empty(count//8,dtype='<u4');start=time.perf_counter()
        self.lib.nco_compile_interpolated(C.byref(self.state),iq.ctypes.data,first,count,factor,packed.ctypes.data)
        return packed,time.perf_counter()-start

def generate(name,oversample=20,factor=20,blocks=1024,feedback=.97,weight=1.,peak=.7,extended=False):
    from bb_nco_narrow_ofdm import make_frame
    ROOT.mkdir(parents=True,exist_ok=True);prefix=ROOT/name
    if prefix.with_suffix('.bin').exists() or prefix.with_suffix('.json').exists():raise ValueError('Source exists')
    slots=8192 if oversample==40 else 4096 if oversample>=16 else 2048
    bodies=[b'RT00',b'RT01',b'RT02',b'RT03'];chunks=[];sources=[]
    for body in bodies:
        z,p,_=make_frame(body=body,oversample=oversample,slots=slots,peak=peak);chunks.append(z)
        sources.append({'body_hex':body.hex(),'packet_hex':p.hex()})
    native_count=blocks*4096;cycle=np.concatenate(chunks)
    if native_count%len(cycle):raise ValueError('Input must contain complete payload cycles')
    native=np.tile(cycle,native_count//len(cycle)).astype('<c8')
    indices=np.arange((native_count-1)//factor+2)*factor
    iq=native[np.minimum(indices,len(native)-1)]
    raw=iq.astype('<c8').tobytes();prefix.with_suffix('.bin').write_bytes(raw);prefix.with_suffix('.bin').chmod(0o600)
    meta={'schema_version':1,'hardware_access':False,'kind':'realtime-cf32-ofdm','input_format':'CF32_LE','input_factor':factor,
        'input_sample_rate_hz':FS/factor,'input_samples':len(iq),'frame_samples':native_count,'stream_blocks':blocks,
        'ofdm_frame_slots':slots,'frame_count':native_count//slots,'oversample':oversample,'active_carrier_span_hz':4000000/oversample,
        'body_bytes':4,'training_seed':8922,'carrier_offset_hz':250000,'table_sha256':hashlib.sha256(raw).hexdigest(),
        'feedback':feedback,'phase_weight':weight,'envelope_peak':peak,'sources':sources,
        'nco_codebook':EXTENDED_CODEBOOK if extended else list(range(7)),
        'scope':'I/Q input only; command decisions are made causally by the compiler during playback, no stored command table'}
    prefix.with_suffix('.json').write_text(json.dumps(meta,indent=2)+'\n')
    print(json.dumps({k:meta[k] for k in ['active_carrier_span_hz','input_sample_rate_hz','frame_count','input_samples']}))
if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--name',required=True);p.add_argument('--oversample',type=int,choices=(8,10,16,20,40),default=20)
    p.add_argument('--factor',type=int,default=20);p.add_argument('--feedback',type=float,default=.97);p.add_argument('--weight',type=float,default=1.);p.add_argument('--peak',type=float,default=.7)
    p.add_argument('--extended',action='store_true')
    a=p.parse_args();generate(a.name,a.oversample,a.factor,feedback=a.feedback,weight=a.weight,peak=a.peak,extended=a.extended)
