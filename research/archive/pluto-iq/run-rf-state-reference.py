import sys,base64,json,subprocess
from pathlib import Path
sys.path.insert(0,'.')
import control
root='/home/plaing/rtl8922-iq-research/'
s=Path('tmp/pluto-iq/qualify.py').read_text().replace("root/'pluto-qualification-path1'","root/'rf-state-reference'").replace('==1601','==1089')
a=s.index('    for num,(tune,offset,rate,fmt,source,gain)');b=s.index('\nfinally:',a)
s=s[:a]+'''    s.tx_lo=2422000000;s.tx_hardwaregain_chan0=0;lo.attrs['powerdown'].value='0'
    fs=int(s.sample_rate);n=np.arange(16384);s.tx(24576*np.exp(2j*np.pi*125000/fs*n));time.sleep(.1)
    import os
    env=dict(os.environ,SOAPY_SDR_PLUGIN_PATH=str(root/'soapy/build'),RTL8922_TRACE='1',RTL8922_RF_STATE_DIR=str(out))
    import threading
    s.rx_lo=2422000000;s.rx_rf_bandwidth=3000000;s.rx_buffer_size=16384
    reference=[];ref_errors=[];stop_ref=threading.Event()
    def receive_reference():
        try:
            while not stop_ref.is_set():
                v=np.asarray(s.rx(),dtype=np.complex128);t=time.monotonic_ns();v-=v.mean()
                power=abs(np.fft.fft(v*np.hanning(len(v))))**2;freqs=np.fft.fftfreq(len(v),1/fs)
                ix=np.flatnonzero(abs(freqs-125000)<25000);k=int(ix[np.argmax(power[ix])]);tone=float(freqs[k])
                ix=np.flatnonzero(abs(freqs+tone)<5000);image=int(ix[np.argmax(power[ix])])
                reference.append({'monotonic_ns':t,'tone_hz':tone,'image_rejection_db':float(10*np.log10(power[k]/power[image])),'peak_median_db':float(10*np.log10(power[k]/np.median(power))),'rms':float(np.sqrt(np.mean(abs(v)**2)))})
                time.sleep(.02)
        except Exception as e:ref_errors.append(str(e))
    ref_thread=threading.Thread(target=receive_reference);ref_thread.start()
    try:
        result=subprocess.run([str(root/'soapy/rf-state-check')],env=env,capture_output=True,text=True,timeout=85)
    finally:
        stop_ref.set();ref_thread.join(timeout=5);s.rx_destroy_buffer()
    report['pluto_reference']=reference;report['reference_errors']=ref_errors
    (out/'producer.log').write_text(result.stderr)
    (out/'stages.jsonl').write_text(result.stdout)
    report['returncode']=result.returncode
    cfo=None
    for line in result.stdout.splitlines():
        if not line.startswith('{'):continue
        stage=json.loads(line);rate=stage['rate']
        z=np.fromfile(out/('stage-'+str(stage['stage'])+'.cf32'),dtype=np.complex64).astype(np.complex128)
        rms=float(np.sqrt(np.mean(abs(z)**2)));z-=z.mean()
        P=abs(np.fft.fft(z*np.hanning(len(z))))**2;freq=np.fft.fftfreq(len(z),1/rate)
        ix=np.flatnonzero((freq>75000)&(freq<175000));k=int(ix[np.argmax(P[ix])]);tone=float(freq[k])
        if cfo is None:cfo=tone-125000
        ix=np.flatnonzero(abs(freq+tone)<5000);image=int(ix[np.argmax(P[ix])])
        stage.update(rms=rms,tone_hz=tone,peak_median_db=float(10*np.log10(P[k]/np.median(P))),image_rejection_db=float(10*np.log10(P[k]/P[image])),global_peak_hz=float(freq[np.argmax(P)]))
        stage['rf_pass']=stage['peak_median_db']>35 and stage['image_rejection_db']>15 and abs(tone-125000-cfo)<5000
        report['tests'].append(stage)
    report['transport_pass']=result.returncode==0 and len(report['tests'])==36
    report['rf_pass']=report['transport_pass'] and all(t['rf_pass'] for t in report['tests'])
    print(json.dumps({'transport_pass':report['transport_pass'],'rf_pass':report['rf_pass'],'stages':len(report['tests']),'bad':[t['stage'] for t in report['tests'] if not t['rf_pass']]}),flush=True)
'''+s[b:]
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/rf-state.py"')
for data,name in [(s,'rf-state.py'),(script,'rf-state.sh')]:
    r=control.ssh_execute('beastmode','echo '+base64.b64encode(data.encode()).decode()+' | base64 -d > '+root+name,30);assert r['exit_code']==0,r
r=control.ssh_execute('beastmode','sudo -n bash '+root+'rf-state.sh > '+root+'rf-state-reference-run.log 2>&1; tail -15 '+root+'rf-state-reference-run.log',120)
Path('output/rtl8922-rf-state-reference-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))
subprocess.run(['scp','-q','-o','BatchMode=yes','-o','StrictHostKeyChecking=yes','-o','HostName=10.0.10.204','-o','HostKeyAlias=beastmode','beastmode:'+root+'rf-state-reference/report.json','output/rtl8922-rf-state-reference-report.json'],check=True,timeout=30)

