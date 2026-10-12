import sys,base64,json,subprocess
from pathlib import Path
sys.path.insert(0,'.')
import control
root='/home/plaing/rtl8922-iq-research/'
s=Path('tmp/pluto-iq/qualify.py').read_text().replace("root/'pluto-qualification-path1'","root/'rf-watch-test'").replace('==1601','==1089')
a=s.index('    for num,(tune,offset,rate,fmt,source,gain)');b=s.index('\nfinally:',a)
s=s[:a]+'''    s.tx_lo=2422000000;s.tx_hardwaregain_chan0=0;lo.attrs['powerdown'].value='0'
    fs=int(s.sample_rate);n=np.arange(16384);s.tx(24576*np.exp(2j*np.pi*125000/fs*n));time.sleep(.1)
    import os
    env=dict(os.environ,SOAPY_SDR_PLUGIN_PATH=str(root/'soapy/build'),RTL8922_TRACE='1',RTL8922_RF_STATE_DIR=str(out))
    result=subprocess.run([str(root/'soapy/rf-watch-check')],env=env,capture_output=True,text=True,timeout=85)
    (out/'producer.log').write_text(result.stderr)
    (out/'stages.jsonl').write_text(result.stdout)
    report['returncode']=result.returncode
    stages=[json.loads(line) for line in result.stdout.splitlines() if line.startswith('{')]
    report['summary']=next((x for x in stages if 'total_samples' in x),{})
    for stage in stages:
        if 'window' not in stage:continue
        z=np.fromfile(out/('window-'+str(stage['window'])+'.cf32'),dtype=np.complex64).astype(np.complex128);stage['rms']=float(np.sqrt(np.mean(abs(z)**2)));z-=z.mean()
        P=abs(np.fft.fft(z*np.hanning(len(z))))**2;freq=np.fft.fftfreq(len(z),1/40000000)
        ix=np.flatnonzero((freq>75000)&(freq<175000));k=int(ix[np.argmax(P[ix])]);tone=float(freq[k])
        ix=np.flatnonzero(abs(freq+tone)<5000);image=int(ix[np.argmax(P[ix])])
        stage.update(tone_hz=tone,peak_median_db=float(10*np.log10(P[k]/np.median(P))),image_rejection_db=float(10*np.log10(P[k]/P[image])),global_peak_hz=float(freq[np.argmax(P)]))
        stage['rf_pass']=stage['peak_median_db']>35 and stage['image_rejection_db']>15
        report['tests'].append(stage)
    report['transport_pass']=result.returncode==0 and report['summary'].get('total_samples')==2600000000 and len(report['tests'])==130
    report['rf_pass']=report['transport_pass'] and all(t['rf_pass'] for t in report['tests'])
    print(json.dumps({'transport_pass':report['transport_pass'],'rf_pass':report['rf_pass'],'windows':len(report['tests']),'bad':[t['window'] for t in report['tests'] if not t['rf_pass']]}),flush=True)
'''+s[b:]
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/rf-state.py"')
for data,name in [(s,'rf-state.py'),(script,'rf-state.sh')]:
    r=control.ssh_execute('beastmode','echo '+base64.b64encode(data.encode()).decode()+' | base64 -d > '+root+name,30);assert r['exit_code']==0,r
r=control.ssh_execute('beastmode','sudo -n bash '+root+'rf-state.sh > '+root+'rf-watch-run.log 2>&1; tail -15 '+root+'rf-watch-run.log',120)
Path('output/rtl8922-rf-watch-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))
subprocess.run(['scp','-q','-o','BatchMode=yes','-o','StrictHostKeyChecking=yes','-o','HostName=10.0.10.204','-o','HostKeyAlias=beastmode','beastmode:'+root+'rf-watch-test/report.json','output/rtl8922-rf-watch-report.json'],check=True,timeout=30)

