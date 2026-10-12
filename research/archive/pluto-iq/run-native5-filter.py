import sys
sys.path.insert(0,'.')
from pathlib import Path
import base64,control,json
root='/home/plaing/rtl8922-iq-research/'
s=Path('tmp/pluto-iq/qualify.py').read_text().replace("root/'pluto-qualification-path1'","root/'cpuio-test'").replace('==1601','==1089')
a=s.index('    for num,(tune,offset,rate,fmt,source,gain)');b=s.index('\nfinally:',a)
s=s[:a]+'''    wr(0x8938,(rd(0x8938)&~0xc00)|0x400);wr(0x8924,(rd(0x8924)&~0x80000)|8)
    for smallbw,txlo in [(1,2412000000),(1,2414000000),(1,2415000000),(1,2418000000)]:
        s.tx_hardwaregain_chan0=-89.75;s.tx_destroy_buffer();lo.attrs['powerdown'].value='1';s.tx_lo=txlo
        fs=int(s.sample_rate);n=np.arange(16384);s.tx_hardwaregain_chan0=0;lo.attrs['powerdown'].value='0';s.tx(24576*np.exp(2j*np.pi*125000/fs*n));time.sleep(.1)
        setup(2,0,2);wr(0x26b50,(rd(0x26b50)&0x3fffffff)|(smallbw<<30));time.sleep(.05)
        (dbg/'scope_data').write_bytes(b'1');(dbg/'iq_stream').write_text('100');time.sleep(.02);field('la_en',0)
        data=(dbg/'scope_data').read_bytes();payload=b''.join(data[p+24:p+8216] for p in range(0,len(data),8216));raw=np.frombuffer(payload,dtype='<u8')[:65536]
        I=(raw&16383).astype(np.int32);Q=((raw>>14)&16383).astype(np.int32);I[I>=8192]-=16384;Q[Q>=8192]-=16384;z=I+1j*Q;z-=z.mean();P=abs(np.fft.fft(z*np.hanning(len(z))))**2;P[0]=0;k=int(np.argmax(P))
        result={'smallbw':smallbw,'tx_lo':txlo,'RF_offset_hz':txlo-2412000000+125000,'result':(dbg/'iq_stream').read_text(),'samples':len(raw),'peak_hz_if_5MS':float(np.fft.fftfreq(len(z),1/5000000)[k]),'peak_median_db':float(10*np.log10(P[k]/np.median(P))),'rms':np.std([I,Q],axis=1).tolist(),'repeat_fraction':float(np.mean(raw[1:]==raw[:-1]))}
        report['tests'].append(result);print(json.dumps(result),flush=True);(out/f'alias-{smallbw}-{txlo}.bin').write_bytes(raw.tobytes())
'''+s[b:]
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/cpuio-test.py"')
for data,name in [(s,'cpuio-test.py'),(script,'cpuio-test.sh')]:
 r=control.ssh_execute('beastmode','echo '+base64.b64encode(data.encode()).decode()+' | base64 -d > '+root+name,30);assert r['exit_code']==0,r
r=control.ssh_execute('beastmode','sudo -n bash '+root+'cpuio-test.sh',120)
Path('output/rtl8922-native5-filter-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))
