import sys,base64,json
sys.path.insert(0,'.')
from pathlib import Path
import control
root='/home/plaing/rtl8922-iq-research/'
s=Path('tmp/pluto-iq/qualify.py').read_text().replace("root/'pluto-qualification-path1'","root/'fine-control-test'").replace('==1601','==1089')
a=s.index('    for num,(tune,offset,rate,fmt,source,gain)');b=s.index('\nfinally:',a)
s=s[:a]+'''    s.tx_lo=2422000000;s.tx_hardwaregain_chan0=0;lo.attrs['powerdown'].value='0'
    fs=int(s.sample_rate);n=np.arange(16384);s.tx(24576*np.exp(2j*np.pi*125000/fs*n));time.sleep(.1)
    import os
    env=dict(os.environ,SOAPY_SDR_PLUGIN_PATH=str(root/'soapy/build'),RTL8922_TRACE='1')
    result=subprocess.run([str(root/'soapy/fine-control-check')],env=env,capture_output=True,text=True,timeout=85)
    print(result.stdout,flush=True);print(result.stderr,flush=True)
    report['live_control']={'code':result.returncode,'stdout':result.stdout,'stderr':result.stderr}
    assert result.returncode==0
    stages=[json.loads(line) for line in result.stdout.splitlines() if line.startswith('{')]
    cfo=None
    for stage in stages:
        if 'stage' not in stage:continue
        z=np.fromfile(root/'soapy'/('fine-'+stage['stage']+'.bin'),dtype=np.complex64);z=z.astype(np.complex128);z-=z.mean()
        P=abs(np.fft.fft(z*np.hanning(len(z))))**2;P[0]=0;k=int(np.argmax(P))
        freqs=np.fft.fftfreq(len(z),1/stage['rate']);global_k=k
        expected=2422125000-stage['frequency']
        if cfo is None:cfo=float(freqs[k])-expected
        indexes=np.flatnonzero(abs(freqs-(expected+cfo))<5000)
        k=int(indexes[np.argmax(P[indexes])]);peak=float(freqs[k])
        image_hz=-(2422125000-stage['rf_center']+cfo)-stage['bb_offset']
        image_hz=(image_hz+stage['rate']/2)%stage['rate']-stage['rate']/2
        indexes=np.flatnonzero(abs(freqs-image_hz)<5000);image_k=int(indexes[np.argmax(P[indexes])])
        item={**stage,'peak_hz':peak,'global_peak_hz':float(freqs[global_k]),'image_rejection_db':float(10*np.log10(P[k]/P[image_k])),'expected_hz_without_cfo':expected,'peak_median_db':float(10*np.log10(P[k]/np.median(P)))}
        report['tests'].append(item);print(json.dumps(item),flush=True)
        assert abs(peak-(expected+cfo))<5000 and item['peak_median_db']>20
'''+s[b:]
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/fine-control.py"')
iw='''#!/bin/sh
if [ "$5" = "2422" ] && [ "$6" = "HT40+" ]; then
    echo 'Intentional test-only iw rejection' >&2
    exit 7
fi
exec /home/plaing/rtl8922-iq-research/iw-local/sbin/iw "$@"
'''
for data,name in [(s,'fine-control.py'),(script,'fine-control.sh'),(iw,'soapy/live-test-iw')]:
    r=control.ssh_execute('beastmode','echo '+base64.b64encode(data.encode()).decode()+' | base64 -d > '+root+name,30);assert r['exit_code']==0,r
r=control.ssh_execute('beastmode','chmod 755 '+root+'soapy/live-test-iw && sudo -n bash '+root+'fine-control.sh',120)
Path('output/rtl8922-fine-control-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))
