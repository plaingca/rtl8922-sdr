import sys
sys.path.insert(0,'.')
from pathlib import Path
import base64,control,json
root='/home/plaing/rtl8922-iq-research/'
s=Path('tmp/pluto-iq/qualify.py').read_text().replace("root/'pluto-qualification-path1'","root/'cpuio-test'").replace('==1601','==1089')
a=s.index('    for num,(tune,offset,rate,fmt,source,gain)');b=s.index('\nfinally:',a)
s=s[:a]+'''    wr(0x8938,(rd(0x8938)&~0xc00)|0x400);wr(0x8924,(rd(0x8924)&~0x80000)|8)
    s.tx_hardwaregain_chan0=0;lo.attrs['powerdown'].value='0'
    fs=int(s.sample_rate);n=np.arange(16384);s.tx(24576*np.exp(2j*np.pi*125000/fs*n));time.sleep(.1)
    import os,threading,errno
    setup(2,0,4);(dbg/'iq_drain').write_bytes(b'1')
    errors=[]
    def producer():
        try:(dbg/'iq_stream').write_text('30000')
        except Exception as e:errors.append(str(e))
    worker=threading.Thread(target=producer);worker.start()
    pending=bytearray();total=0;packets=0;expected=0;gaps=[];tail=collections.deque(maxlen=60);digest=hashlib.sha256();edge=0j;previous=None;first_saved=False;begin=time.monotonic()
    fd=os.open(dbg/'iq_drain',os.O_RDONLY|os.O_NONBLOCK)
    def unpack_sample(w):
        i=w&16383;q=(w>>14)&16383
        return complex(i-16384 if i>=8192 else i,q-16384 if q>=8192 else q)
    try:
        while True:
            try:part=os.read(fd,65536)
            except BlockingIOError:
                if not worker.is_alive():break
                time.sleep(.0002);continue
            pending.extend(part)
            while len(pending)>=4120:
                h=struct.unpack_from('<6I',pending);assert h[0]==4096 and h[3]==4096,h
                chunk=bytes(pending[24:4120]);del pending[:4120]
                if h[1]!=expected:gaps.append([expected,h[1]])
                expected=h[1]+512;packets+=1;total+=4096;digest.update(chunk);tail.append((h[1],chunk))
                if not first_saved:(out/'live-first.bin').write_bytes(chunk);first_saved=True
                first=unpack_sample(struct.unpack_from('<Q',chunk)[0]);last=unpack_sample(struct.unpack_from('<Q',chunk,4088)[0])
                if previous is not None:edge+=first*previous.conjugate()
                previous=last
    finally:os.close(fd);worker.join()
    elapsed=time.monotonic()-begin;field('la_en',0);time.sleep(.01)
    reference=(dbg/'iq_memory').read_bytes();(out/'live-final-ring.bin').write_bytes(reference)
    payload=b''.join(chunk for seq,chunk in tail);(out/'live-last.bin').write_bytes(payload)
    matches=[chunk==reference[(seq%40960)*8:(seq%40960)*8+4096] for seq,chunk in tail]
    raw=np.frombuffer(payload,dtype='<u8');I=(raw&16383).astype(np.int32);Q=((raw>>14)&16383).astype(np.int32);I[I>=8192]-=16384;Q[Q>=8192]-=16384;z=I+1j*Q;z-=z.mean();nfft=min(65536,len(z));P=abs(np.fft.fft(z[-nfft:]*np.hanning(nfft)))**2;P[0]=0;k=int(np.argmax(P))
    result={'duration_ms':30000,'rate_selector':4,'result':(dbg/'iq_stream').read_text(),'consumer_errors':errors,'host_packets':packets,'host_sample_bytes':total,'fifo_capacity':128*1024*1024,'host_bytes_per_second':total/elapsed,'elapsed_s':elapsed,'pending_bytes':len(pending),'sequence_gaps':gaps,'dropped':(dbg/'scope_dropped').read_text(),'last_ring_chunks_match':sum(matches),'last_ring_chunks_checked':len(matches),'sha256':digest.hexdigest(),'peak_hz':float(np.fft.fftfreq(nfft,1/5000000)[k]),'peak_median_db':float(10*np.log10(P[k]/np.median(P))),'adjacent_correlation_phase':float(np.angle(np.sum(z[1:]*np.conj(z[:-1])))),'boundary_correlation_phase':float(np.angle(edge))}
    report['tests'].append(result);print(json.dumps(result),flush=True)
'''+s[b:]
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/cpuio-test.py"')
for data,name in [(s,'cpuio-test.py'),(script,'cpuio-test.sh')]:
 r=control.ssh_execute('beastmode','echo '+base64.b64encode(data.encode()).decode()+' | base64 -d > '+root+name,30);assert r['exit_code']==0,r
r=control.ssh_execute('beastmode','sudo -n bash '+root+'cpuio-test.sh',120)
Path('output/rtl8922-live-drain-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))

