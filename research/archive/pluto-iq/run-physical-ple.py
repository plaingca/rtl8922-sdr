import sys
sys.path.insert(0,'.')
from pathlib import Path
import base64,control,json
root='/home/plaing/rtl8922-iq-research/'
s=Path('tmp/pluto-iq/qualify.py').read_text().replace("root/'pluto-qualification-path1'","root/'cpuio-test'").replace('==1601','==1089')
a=s.index('    for num,(tune,offset,rate,fmt,source,gain)');b=s.index('\nfinally:',a)
s=s[:a]+'''    wr(0x8938,(rd(0x8938)&~0xc00)|0x400);wr(0x8924,(rd(0x8924)&~0x80000)|8)
    s.tx_hardwaregain_chan0=-10;lo.attrs['powerdown'].value='0'
    fs=int(s.sample_rate);n=np.arange(16384);s.tx(8192*np.exp(2j*np.pi*125000/fs*n));time.sleep(.1)
    setup(2,0,6)
    config=(4<<16)|(11<<8)|1
    wr(0x9660,config);wr(0x9660,config|8);time.sleep(.05)
    status=rd(0x9664);wr(0x9660,config&~1);field('la_en',0)
    reference=(dbg/'iq_memory').read_bytes();(out/'la-reference.bin').write_bytes(reference)
    (dbg/'scope_data').write_bytes(b'1');(dbg/'iq_cpuio').write_text('4096');time.sleep(.1)
    data=(dbg/'scope_data').read_bytes();(out/'la-dma.bin').write_bytes(data)
    payload=data[24:];raw=np.frombuffer(payload,dtype='<u8');I=(raw&16383).astype(np.int32);Q=((raw>>14)&16383).astype(np.int32);I[I>=8192]-=16384;Q[Q>=8192]-=16384;z=I+1j*Q;z-=z.mean();P=abs(np.fft.fft(z*np.hanning(len(z))))**2;P[:1]=0;k=int(np.argmax(P))
    result={'result':(dbg/'iq_cpuio').read_text(),'status':hex(status),'bytes':len(data),'reference_match':payload==reference[:len(payload)],'peak_hz':float(np.fft.fftfreq(len(z),1/1250000)[k]),'peak_median_db':float(10*np.log10(P[k]/np.median(P)))}
    report['tests'].append(result);print(json.dumps(result),flush=True)
'''+s[b:]
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/cpuio-test.py"')
for data,name in [(s,'cpuio-test.py'),(script,'cpuio-test.sh')]:
 r=control.ssh_execute('beastmode','echo '+base64.b64encode(data.encode()).decode()+' | base64 -d > '+root+name,30);assert r['exit_code']==0,r
r=control.ssh_execute('beastmode','sudo -n bash '+root+'cpuio-test.sh',120)
Path('output/rtl8922-physical-ple-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))

