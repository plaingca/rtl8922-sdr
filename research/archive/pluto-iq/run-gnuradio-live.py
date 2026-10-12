import sys,base64,json
sys.path.insert(0,'.')
from pathlib import Path
import control
root='/home/plaing/rtl8922-iq-research/'
s=Path('tmp/pluto-iq/qualify.py').read_text().replace("root/'pluto-qualification-path1'","root/'gnuradio-live-test'").replace('==1601','==1089')
a=s.index('    for num,(tune,offset,rate,fmt,source,gain)');b=s.index('\nfinally:',a)
s=s[:a]+'''    s.tx_lo=2422000000;s.tx_hardwaregain_chan0=0;lo.attrs['powerdown'].value='0'
    fs=int(s.sample_rate);n=np.arange(16384);s.tx(24576*np.exp(2j*np.pi*125000/fs*n));time.sleep(.1)
    import os
    env=dict(os.environ,SOAPY_SDR_PLUGIN_PATH=str(root/'soapy/build-distro'),RTL8922_TRACE='1',PYTHONPATH='/usr/lib/python3/dist-packages')
    result=subprocess.run(['/usr/bin/python3',str(root/'soapy/gnuradio-live-check.py')],env=env,capture_output=True,text=True,timeout=85)
    print(result.stdout,flush=True);print(result.stderr,flush=True)
    report['live_control']={'code':result.returncode,'stdout':result.stdout,'stderr':result.stderr}
    assert result.returncode==0

'''+s[b:]
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/gnuradio-live.py"')
iw='''#!/bin/sh
if [ "$5" = "2422" ] && [ "$6" = "HT40+" ]; then
    echo 'Intentional test-only iw rejection' >&2
    exit 7
fi
exec /home/plaing/rtl8922-iq-research/iw-local/sbin/iw "$@"
'''
for data,name in [(s,'gnuradio-live.py'),(script,'gnuradio-live.sh'),(iw,'soapy/live-test-iw')]:
    r=control.ssh_execute('beastmode','echo '+base64.b64encode(data.encode()).decode()+' | base64 -d > '+root+name,30);assert r['exit_code']==0,r
r=control.ssh_execute('beastmode','chmod 755 '+root+'soapy/live-test-iw && sudo -n bash '+root+'gnuradio-live.sh',120)
Path('output/rtl8922-gnuradio-live-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))
