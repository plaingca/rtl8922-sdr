import sys
sys.path.insert(0,'.')
from pathlib import Path
import base64,control,json
root='/home/plaing/rtl8922-iq-research/'
s=Path('tmp/pluto-iq/qualify.py').read_text().replace("root/'pluto-qualification-path1'","root/'cpuio-test'").replace('==1601','==1089')
a=s.index('    for num,(tune,offset,rate,fmt,source,gain)');b=s.index('\nfinally:',a)
s=s[:a]+'''    wr(0x8938,(rd(0x8938)&~0xc00)|0x400);wr(0x8924,(rd(0x8924)&~0x80000)|8)
    fs=int(s.sample_rate);n=np.arange(16384);s.tx_hardwaregain_chan0=0;lo.attrs['powerdown'].value='0';s.tx(24576*np.exp(2j*np.pi*125000/fs*n));time.sleep(.1)
    for fmt,small,rt,txlo in [(14,0,4,2412000000),(14,0,4,2420000000),(12,2,3,2412000000),(12,2,3,2416000000)]:
        rdrdy=0
        s.tx_hardwaregain_chan0=-89.75;s.tx_destroy_buffer();lo.attrs['powerdown'].value='1';s.tx_lo=txlo;s.tx_hardwaregain_chan0=0;lo.attrs['powerdown'].value='0';s.tx(24576*np.exp(2j*np.pi*125000/fs*n));time.sleep(.1)
        setup(2,fmt,rt);wr(0x26b50,(rd(0x26b50)&0x3fffffff)|(small<<30))
        config=(4<<16)|(11<<8)|1;wr(0x9660,config);wr(0x9660,config|8);time.sleep(.05)
        status=rd(0x9664);wr(0x9660,config&~1);field('la_en',0)
        raw=np.frombuffer((dbg/'iq_memory').read_bytes(),dtype='<u8');(out/f'packed-{fmt}-{txlo}.bin').write_bytes(raw.tobytes())
        bits=14 if fmt==0 else 12 if fmt==12 else 8;phases=1 if fmt==0 else 2 if fmt==12 else 4
        x=np.stack([((raw>>np.uint64(bits*j))&np.uint64((1<<bits)-1)).astype(np.int32) for j in range(phases*2)],axis=1);x[x>=1<<(bits-1)]-=1<<bits
        z=x[:,::2]+1j*x[:,1::2];z-=z.mean(axis=0);result={'format':fmt,'rdrdy':rdrdy,'smallbw':small,'rate_selector':rt,'RF_offset_hz':txlo-2412000000+125000,'status':hex(status),'std':np.std(x,axis=0).tolist(),'pair_equal':[float(np.mean(z[:,0]==z[:,j])) for j in range(phases)],'phase_vs_first':[float(np.angle(np.vdot(z[:,0],z[:,j]))) for j in range(phases)],'phase_step':float(np.angle(np.vdot(z[:-1,0],z[1:,0])))}
        linear=z.reshape(-1);P=abs(np.fft.fft(linear*np.hanning(len(linear))))**2;P[0]=0;k=int(P.argmax());result['interleaved_peak_hz']=float(np.fft.fftfreq(len(linear),1/(5000000*phases))[k]);result['peak_median_db']=float(10*np.log10(P[k]/np.median(P)))
        report['tests'].append(result);print(json.dumps(result),flush=True)
'''+s[b:]
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/cpuio-test.py"')
for data,name in [(s,'cpuio-test.py'),(script,'cpuio-test.sh')]:
 r=control.ssh_execute('beastmode','echo '+base64.b64encode(data.encode()).decode()+' | base64 -d > '+root+name,30);assert r['exit_code']==0,r
r=control.ssh_execute('beastmode','sudo -n bash '+root+'cpuio-test.sh',120)
Path('output/rtl8922-packed-wideband-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))
