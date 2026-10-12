import sys
sys.path.insert(0,'.')
from pathlib import Path
import base64,control,json
root='/home/plaing/rtl8922-iq-research/'
s=Path('tmp/pluto-iq/qualify.py').read_text().replace("root/'pluto-qualification-path1'","root/'cpuio-test'").replace('==1601','==1089')
a=s.index('    for num,(tune,offset,rate,fmt,source,gain)');b=s.index('\nfinally:',a)
s=s[:a]+'''    wr(0x8938,(rd(0x8938)&~0xc00)|0x400);wr(0x8924,(rd(0x8924)&~0x80000)|8)
    s.tx_lo=2422000000;s.tx_hardwaregain_chan0=0;lo.attrs['powerdown'].value='0'
    fs=int(s.sample_rate);rng=np.random.default_rng(8922);symbols=(2*rng.integers(0,2,32768)-1)+1j*(2*rng.integers(0,2,32768)-1);wave=np.repeat(symbols,4);n=np.arange(len(wave));wave=wave/np.sqrt(2)*np.exp(2j*np.pi*250000/fs*n);s.tx(22000*wave);(root/'soapy/coded40-tx.cf32').write_bytes(wave.astype('<c8').tobytes());time.sleep(.1)
    import os
    env=dict(os.environ,SOAPY_SDR_PLUGIN_PATH=str(root/'soapy/build'),RTL8922_TEST_RATE='40000000',RTL8922_CAPTURE_FILE=str(root/'soapy/coded40-cf32.bin'))
    for command in [[str(root/'soapy/capture-check')]]:
        result=subprocess.run(command,env=env,capture_output=True,text=True,timeout=30)
        print(result.stdout,flush=True);print(result.stderr,flush=True)
        report['tests'].append({'command':command,'code':result.returncode,'stdout':result.stdout,'stderr':result.stderr})
        assert result.returncode==0
'''+s[b:]
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/cpuio-test.py"')
for data,name in [(s,'cpuio-test.py'),(script,'cpuio-test.sh')]:
 r=control.ssh_execute('beastmode','echo '+base64.b64encode(data.encode()).decode()+' | base64 -d > '+root+name,30);assert r['exit_code']==0,r
r=control.ssh_execute('beastmode','sudo -n bash '+root+'cpuio-test.sh',120)
Path('output/rtl8922-coded40-capture-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))
