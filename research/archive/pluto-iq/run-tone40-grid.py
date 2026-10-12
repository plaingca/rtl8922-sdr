import sys
sys.path.insert(0,'.')
from pathlib import Path
import base64,control,json
root='/home/plaing/rtl8922-iq-research/'
s=Path('tmp/pluto-iq/qualify.py').read_text().replace("root/'pluto-qualification-path1'","root/'cpuio-test'").replace('==1601','==1089')
a=s.index('    for num,(tune,offset,rate,fmt,source,gain)');b=s.index('\nfinally:',a)
s=s[:a]+'''    wr(0x8938,(rd(0x8938)&~0xc00)|0x400);wr(0x8924,(rd(0x8924)&~0x80000)|8)
    import os
    for mhz in [-18,-15,-10,-5,0,5,10,15,18]:
        s.tx_destroy_buffer();lo.attrs['powerdown'].value='1';s.tx_lo=2422000000+mhz*1000000
        fs=int(s.sample_rate);n=np.arange(16384);wave=24576*np.exp(2j*np.pi*125000/fs*n)
        s.tx_hardwaregain_chan0=0;lo.attrs['powerdown'].value='0';s.tx(wave);time.sleep(.1)
        output=root/'soapy'/f'tone40-{mhz}.cf32'
        env=dict(os.environ,SOAPY_SDR_PLUGIN_PATH=str(root/'soapy/build'),RTL8922_TEST_RATE='40000000',RTL8922_CAPTURE_FILE=str(output),RTL8922_CAPTURE_SECONDS='.02')
        result=subprocess.run([str(root/'soapy/capture-check')],env=env,capture_output=True,text=True,timeout=10)
        assert result.returncode==0,(result.stdout,result.stderr)
        x=np.fromfile(output,dtype='<c8');z=x[-65536:];z=z-z.mean();p=abs(np.fft.fft(z*np.hanning(len(z))))**2;f=np.fft.fftfreq(len(z),1/40000000);expected=mhz*1000000+125000
        near=abs(f-expected)<500000;indices=np.flatnonzero(near);k=int(indices[np.argmax(p[near])]);mirror=int(np.argmin(abs(f+f[k])))
        record={'offset_mhz':mhz,'samples':len(x),'expected_hz':expected,'peak_hz':float(f[k]),'peak_median_db':float(10*np.log10(p[k]/np.median(p))),'image_ratio_db':float(10*np.log10(p[k]/max(p[mirror],1e-30))),'rms':float(np.std(z))}
        print(json.dumps(record),flush=True);report['tests'].append(record)
        assert len(x)==800000 and record['peak_median_db']>25 and abs(f[k]-expected)<100000
'''+s[b:]
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/cpuio-test.py"')
for data,name in [(s,'cpuio-test.py'),(script,'cpuio-test.sh')]:
 r=control.ssh_execute('beastmode','echo '+base64.b64encode(data.encode()).decode()+' | base64 -d > '+root+name,30);assert r['exit_code']==0,r
r=control.ssh_execute('beastmode','sudo -n bash '+root+'cpuio-test.sh',120)
Path('output/rtl8922-tone40-grid-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))
