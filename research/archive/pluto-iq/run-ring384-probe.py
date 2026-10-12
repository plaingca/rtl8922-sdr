import sys,base64,json,subprocess
from pathlib import Path
sys.path.insert(0,'.')
import control
root='/home/plaing/rtl8922-iq-research/'
s=Path('tmp/pluto-iq/qualify.py').read_text().replace("root/'pluto-qualification-path1'","root/'ring384-probe'").replace('==1601','==577')
a=s.index('    for num,(tune,offset,rate,fmt,source,gain)');b=s.index('\nfinally:',a)
s=s[:a]+'''    s.tx_lo=2412000000;s.tx_hardwaregain_chan0=0;lo.attrs['powerdown'].value='0'
    fs=int(s.sample_rate);n=np.arange(16384);s.tx(24576*np.exp(2j*np.pi*125000/fs*n));time.sleep(.1)
    setup(2,14,4);field('la_trigger_cnt',255)
    config=(5<<16)|(11<<8)|1
    wr(0x9668,0);wr(0x9660,config);wr(0x9660,config|8)
    history=[];start=time.monotonic_ns()
    for i in range(240):
        value=rd(0x9664);history.append({'ns':time.monotonic_ns()-start,'value':value,'wp':value&65535,'state':value>>17&7})
        if value&65535>=49152:break
        time.sleep(.0002)
    report['la_config']=hex(rd(0x9660));report['history']=history;report['loss']=hex(rd(0x966c))
    wr(0x9660,config&~1);field('la_en',0)
    data=(dbg/'iq_memory').read_bytes();(out/'ring.bin').write_bytes(data)
    report['bytes']=len(data);report['max_wp']=max(h['wp'] for h in history)
    report['beyond_old_ring']=any(40960<=h['wp']<49152 for h in history)
    report['states']=sorted(set(h['state'] for h in history))
    for i in range(6):
        x=np.frombuffer(data[i*65536:(i+1)*65536],np.int8).reshape(-1,2);z=x[:,0].astype(float)+1j*x[:,1];z-=z.mean()
        P=abs(np.fft.fft(z*np.hanning(len(z))))**2;freq=np.fft.fftfreq(len(z),1/20000000);ix=np.flatnonzero((freq>75000)&(freq<175000));k=int(ix[np.argmax(P[ix])])
        report['tests'].append({'block':i,'rms':float(np.sqrt(np.mean(abs(z)**2))),'peak_hz':float(freq[k]),'peak_median_db':float(10*np.log10(P[k]/np.median(P)))})
    print(json.dumps({k:v for k,v in report.items() if k not in ['history','original_pluto']}),flush=True)
'''+s[b:]
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('"$base/la-driver"','"$base/la-driver-ring384"').replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/ring384-probe.py"')
for data,name in [(s,'ring384-probe.py'),(script,'ring384-probe.sh')]:
    r=control.ssh_execute('beastmode','echo '+base64.b64encode(data.encode()).decode()+' | base64 -d > '+root+name,30);assert r['exit_code']==0,r
r=control.ssh_execute('beastmode','sudo -n bash '+root+'ring384-probe.sh > '+root+'ring384-probe.log 2>&1; tail -18 '+root+'ring384-probe.log',120)
Path('output/rtl8922-ring384-probe-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))
subprocess.run(['scp','-q','-o','BatchMode=yes','-o','StrictHostKeyChecking=yes','-o','HostName=10.0.10.204','-o','HostKeyAlias=beastmode','beastmode:'+root+'ring384-probe/report.json','output/rtl8922-ring384-probe-report.json'],check=True,timeout=30)
