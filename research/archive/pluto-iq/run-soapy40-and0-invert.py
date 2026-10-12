import sys
sys.path.insert(0,'.')
from pathlib import Path
import base64,control,json
root='/home/plaing/rtl8922-iq-research/'
s=Path('tmp/pluto-iq/qualify.py').read_text().replace("root/'pluto-qualification-path1'","root/'cpuio-test'").replace('==1601','==1089')
a=s.index('    for num,(tune,offset,rate,fmt,source,gain)');b=s.index('\nfinally:',a)
s=s[:a]+'''    wr(0x8938,(rd(0x8938)&~0xc00)|0x400);wr(0x8924,(rd(0x8924)&~0x80000)|8)
    s.tx_lo=2422000000;s.tx_hardwaregain_chan0=0;lo.attrs['powerdown'].value='0'
    fs=int(s.sample_rate);n=np.arange(16384);s.tx(24576*np.exp(2j*np.pi*125000/fs*n));time.sleep(.1)
    import os
    env=dict(os.environ,SOAPY_SDR_PLUGIN_PATH=str(root/'soapy/build'),RTL8922_TEST_RATE='40000000',RTL8922_LONG_TEST='1',RTL8922_TRACE='1')
    for command in [['SoapySDRUtil','--probe=driver=rtl8922'],[str(root/'soapy/stream-check')]]:
        result=subprocess.run(command,env=env,capture_output=True,text=True,timeout=85)
        print(result.stdout,flush=True);print(result.stderr,flush=True)
        report['tests'].append({'command':command,'code':result.returncode,'stdout':result.stdout,'stderr':result.stderr})
        print(json.dumps({'producer':(dbg/'iq_stream').read_text(),'pipeline':(dbg/'iq_pipeline').read_text(),'packets':(dbg/'scope_packets').read_text(),'dropped':(dbg/'scope_dropped').read_text()}),flush=True)
        assert result.returncode==0
    for fmt,ty in [('CS16','<i2'),('CF32','<f4')]:
        x=np.fromfile(root/'soapy'/f'{fmt}.bin',dtype=ty).reshape(-1,2);z=x[:,0]+1j*x[:,1];z-=z.mean();P=abs(np.fft.fft(z*np.hanning(len(z))))**2;P[0]=0;k=int(np.argmax(P))
        result={'format':fmt,'peak_hz':float(np.fft.fftfreq(len(z),1/40000000)[k]),'peak_median_db':float(10*np.log10(P[k]/np.median(P))),'rms':np.std(x,axis=0).tolist(),'min':x.min(axis=0).tolist(),'max':x.max(axis=0).tolist()}
        report['tests'].append(result);print(json.dumps(result),flush=True)
'''+s[b:]
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/cpuio-test.py"')
for data,name in [(s,'cpuio-test.py'),(script,'cpuio-test.sh')]:
 r=control.ssh_execute('beastmode','echo '+base64.b64encode(data.encode()).decode()+' | base64 -d > '+root+name,30);assert r['exit_code']==0,r
r=control.ssh_execute('beastmode','sudo -n bash '+root+'cpuio-test.sh',120)
Path('output/rtl8922-soapy40-and0-invert-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))
