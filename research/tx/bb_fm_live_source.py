#!/usr/bin/env python3
"""Bounded ICY/SHOUTcast-compatible audio ingestion; no RF access.

FFmpeg decodes a live network input to mono PCM. A bounded producer queue keeps
network reads out of the MMIO refill loop. Only consumed audio is saved locally.
"""
import hashlib,json,os,queue,subprocess,threading,time,wave
from pathlib import Path
from urllib.parse import urlparse
import numpy as np
from bb_fm_audio import prepare,write_wav


class LiveSource:
    block=2048
    def __init__(self,url,blocks,prefix,ffmpeg='/home/plaing/.local/bin/ffmpeg'):
        if urlparse(url).scheme not in ('http','https'):raise ValueError('HTTP(S) stream required')
        if not 4<=blocks<=192:raise ValueError('Live demonstration limited to 192 blocks')
        self.url=url;self.blocks=blocks;self.prefix=Path(prefix);self.next_offset=0
        self.payload=[];self.reference=[];self.events=[];self.clipped=0;self.error=None
        self.stop=threading.Event();self.queue=queue.Queue(maxsize=24)
        self.started=time.monotonic();self.process=None
        for suffix in ('.bin','.wav','.json','.ffmpeg.log'):
            if self.prefix.with_suffix(suffix).exists():raise ValueError('Source output exists')
        self.log=self.prefix.with_suffix('.ffmpeg.log').open('xb')
        self.process=subprocess.Popen([ffmpeg,'-nostdin','-hide_banner','-loglevel','warning',
            '-rw_timeout','5000000','-icy','1','-i',url,'-vn','-ac','1','-ar','32000',
            '-t',str(blocks*2048/32000+1),'-f','s16le','pipe:1'],stdout=subprocess.PIPE,stderr=self.log)
        self.thread=threading.Thread(target=self._produce,daemon=True,name='bounded-icy-decoder')
        self.thread.start()

    def _read(self,count):
        result=bytearray()
        while len(result)<count and not self.stop.is_set():
            part=self.process.stdout.read(count-len(result))
            if not part:raise EOFError('Internet decoder stopped before requested audio')
            result.extend(part)
        if len(result)!=count:raise EOFError('Source cancelled')
        return bytes(result)

    def _produce(self):
        try:
            # Same pilot as the known speech test; the rest arrives from the URL.
            _,pilot,meta=prepare();pilot=pilot[:meta['preamble_samples']]*meta['reference_scale']
            pending=pilot;previous=0.;alpha=np.exp(-1/(32000*75e-6))
            for sequence in range(1,self.blocks+1):
                need=max(0,self.block-len(pending))
                if need:pending=np.r_[pending,np.frombuffer(self._read(need*2),dtype='<i2').astype(float)/32768]
                pcm=pending[:self.block];pending=pending[self.block:]
                emphasized=(pcm-alpha*np.r_[previous,pcm[:-1]])/(1-alpha);previous=pcm[-1]
                emphasized*=.25
                self.clipped+=int(np.count_nonzero(abs(emphasized)>1))
                # Store the reference corresponding to actual limited modulation.
                modulation=np.clip(emphasized,-1,1)
                data=np.rint(128+76*modulation).astype(np.uint8).tobytes()
                # Clipping is separately reported; the source reference is untouched.
                item=(data,pcm*.25,time.monotonic()-self.started,sequence)
                while not self.stop.is_set():
                    try:self.queue.put(item,timeout=.1);break
                    except queue.Full:pass
                if self.stop.is_set():return
        except Exception as exc:self.error=f'{type(exc).__name__}: {exc}'

    def __len__(self):return self.blocks*self.block

    def __getitem__(self,key):
        if not isinstance(key,slice) or key.step not in (None,1):raise ValueError('Only sequential whole blocks')
        start=key.start or 0;end=key.stop
        if start!=self.next_offset or end-start!=self.block:raise ValueError('Nonsequential source access')
        deadline=time.monotonic()+5
        while not self.stop.is_set() and time.monotonic()<deadline:
            try:
                data,reference,at,sequence=self.queue.get(timeout=.1)
                break
            except queue.Empty:
                if self.error:raise RuntimeError(self.error)
        else:raise TimeoutError(self.error or 'Internet source stopped or underrun')
        self.payload.append(data);self.reference.append(reference);self.next_offset=end
        self.events.append({'sequence':sequence,'decoded_seconds':at,'consumed_seconds':time.monotonic()-self.started,
                            'queue_blocks_remaining':self.queue.qsize()})
        return data

    def close(self):
        self.stop.set()
        if self.process and self.process.poll() is None:
            self.process.terminate()
            try:self.process.wait(timeout=2)
            except subprocess.TimeoutExpired:self.process.kill();self.process.wait(timeout=2)
        self.thread.join(timeout=2);self.log.close()
        data=b''.join(self.payload);reference=np.concatenate(self.reference) if self.reference else np.array([])
        paths=[self.prefix.with_suffix(s) for s in ('.bin','.wav','.json')]
        paths[0].write_bytes(data);write_wav(paths[1],reference,32000)
        metadata={'audio_rate':32000,'preamble_samples':5760,'reference_samples':len(reference),
          'payload_samples':len(data),'blocks':len(data)//2048,'preemphasis_seconds':75e-6,
          'nominal_peak_deviation_hz':74218.75,'carrier_offset_hz':375000,'source':self.url,
          'source_kind':'live ICY HTTP input decoded by ffmpeg during RF streaming',
          'payload_sha256':hashlib.sha256(data).hexdigest(),'source_wav_sha256':hashlib.sha256(paths[1].read_bytes()).hexdigest(),
          'preemphasis_clipped_samples':self.clipped,'error':self.error,'events':self.events}
        paths[2].write_text(json.dumps(metadata,indent=2)+'\n')
        for path in paths+[self.prefix.with_suffix('.ffmpeg.log')]:
            path.chmod(0o600)
            if 'SUDO_UID' in os.environ:os.chown(path,int(os.environ['SUDO_UID']),int(os.environ['SUDO_GID']))
        return metadata
