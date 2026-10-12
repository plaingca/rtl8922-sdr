import sys,json,subprocess
from pathlib import Path
sys.path.insert(0,'.')
import control
root='/home/plaing/rtl8922-iq-research/'
s=Path('tmp/pluto-iq/qualify.py').read_text().replace("root/'pluto-qualification-path1'","root/'frequency-coverage-test'").replace('==1601','==1089').replace("field('la_trigger_cnt',0)","field('la_trigger_cnt',255)")
a=s.index('    for num,(tune,offset,rate,fmt,source,gain)');b=s.index('\nfinally:',a)
s=s[:a]+'''    iw=str(root/'iw-local/sbin/iw')
    def cmd(*args):return subprocess.run([iw,*args],capture_output=True,text=True,timeout=5)
    report['original_regulatory']=cmd('reg','get').stdout
    original_country=re.search(r'country (\\w\\w):',report['original_regulatory']).group(1)
    report['world_phy']=cmd('phy').stdout
    report['regulatory_request_CA']={'returncode':(r:=cmd('reg','set','CA')).returncode,'stderr':r.stderr}
    time.sleep(.3);report['test_regulatory']=cmd('reg','get').stdout;report['test_phy']=cmd('phy').stdout
    channels=[]
    for line in report['test_phy'].splitlines():
        m=re.search(r'\\* (\\d+) MHz \\[(\\d+)\\](.*)',line)
        if m:channels.append({'mhz':int(m[1]),'channel':int(m[2]),'flags':m[3].strip()})
    report['channels']=channels
    # Survey every advertised channel through the normal receive-only tune API.
    for ch in channels:
        r=cmd('dev',iface,'set','freq',str(ch['mhz']),'HT20')
        ch['tune_returncode']=r.returncode
        if r.returncode:ch['tune_error']=r.stderr.strip()
    points=[2412,2437,2472,2484,5180,5240,5320,5500,5600,5720,5745,5805,5825,5885,5935,5955,5975,5995,6035,6115,6415,6695,6995,7115]
    def fft(data):
        x=np.frombuffer(data,dtype=np.int8).reshape(-1,2);z=x[:,0].astype(float)+1j*x[:,1];z-=z.mean()
        p=abs(np.fft.fft(z*np.hanning(len(z))))**2;f=np.fft.fftfreq(len(z),1/20000000);p[abs(f)<25000]=0;k=int(np.argmax(p));image=np.flatnonzero(abs(f+f[k])<3000)
        return {'peak_hz':float(f[k]),'peak_median_db':float(10*np.log10(p[k]/max(np.median(p),1e-20))),'image_rejection_db':float(10*np.log10(p[k]/max(p[image].max(),1e-20))),'rms':float(np.sqrt(np.mean(abs(z)**2)))}
    wr(0x8938,(rd(0x8938)&~0xc00)|0x400);wr(0x8924,(rd(0x8924)&~0x80000)|8)
    for mhz in points:
        s.tx_hardwaregain_chan0=-89.75;s.tx_destroy_buffer();lo.attrs['powerdown'].value='1'
        r=cmd('dev',iface,'set','freq',str(mhz),'HT20');test={'mhz':mhz,'tune_returncode':r.returncode,'tune_error':r.stderr.strip(),'tones':[]}
        if r.returncode:report['tests'].append(test);continue
        test['iw_info']=cmd('dev',iface,'info').stdout
        if mhz<=6000:
            s.tx_lo=mhz*1000000;test['pluto_actual_lo']=int(s.tx_lo)
        for offset in ([500000,-500000] if mhz<=6000 else [None]):
            s.tx_hardwaregain_chan0=-89.75;s.tx_destroy_buffer();lo.attrs['powerdown'].value='1'
            if offset is not None:
                fs=int(s.sample_rate);n=np.arange(16384);s.tx_hardwaregain_chan0=0;lo.attrs['powerdown'].value='0';s.tx(24576*np.exp(2j*np.pi*offset/fs*n))
            setup(2,14,4);wr(0x26b50,rd(0x26b50)&0x3fffffff);time.sleep(.03)
            wr(0x9668,0);wr(0x9660,(4<<16)|(11<<8)|9);time.sleep(.006)
            state=rd(0x9664);field('la_en',0);wr(0x9660,(4<<16)|(11<<8))
            data=(dbg/'iq_memory').read_bytes()[:65536];name=f'frozen-{mhz}-{offset}.bin';(out/name).write_bytes(data)
            result={'offset_hz':offset,'state':hex(state),'file':name,'fft':fft(data)}
            test['tones'].append(result)
        if mhz<=6000:
            plus,minus=test['tones'];delta=plus['fft']['peak_hz']-minus['fft']['peak_hz'];test['tone_delta_hz']=delta
            test['rf_tone_pass']=abs(delta-1000000)<10000 and min(t['fft']['peak_median_db'] for t in test['tones'])>30 and all(abs(t['fft']['peak_hz']-t['offset_hz'])<100000 for t in test['tones'])
            # One bounded PCIe stream per measured center, using the last (-500kHz) tone.
            setup(2,14,4);wr(0x26b50,rd(0x26b50)&0x3fffffff);(dbg/'iq_pipeline').write_text('Y');(dbg/'iq_chunk_bytes').write_text('8192');(dbg/'iq_sample_rate').write_text('5000000');(dbg/'iq_drain').write_bytes(b'1')
            tail=out/f'tail-{mhz}.bin';result=subprocess.run([str(root/'raw-drain-fast'),str(dbg),'100',str(tail)],capture_output=True,text=True,timeout=5)
            test['transport']={'returncode':result.returncode,'host':result.stdout,'stderr':result.stderr,'producer':(dbg/'iq_stream').read_text()}
            if tail.exists() and tail.stat().st_size:test['transport']['fft']=fft(tail.read_bytes())
        else:test['rf_tone_pass']=None;test['limitation']='Tuned and captured data only; Pluto reference cannot exceed6GHz.'
        report['tests'].append(test);print(json.dumps(test),flush=True);(out/'report.json').write_text(json.dumps(report,indent=2))
'''+s[b:]
s=s.replace("finally:\n    s.tx_hardwaregain_chan0", "finally:\n    if 'original_country' in globals():\n        cmd('reg','set',original_country);time.sleep(.2);report['restored_regulatory']=cmd('reg','get').stdout\n    s.tx_hardwaregain_chan0")
Path('tmp/pluto-iq/frequency-coverage-test.py').write_text(s)
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/frequency-coverage-test.py"')
Path('tmp/pluto-iq/frequency-coverage-test.sh').write_bytes(script.encode())
opts=['-q','-o','BatchMode=yes','-o','StrictHostKeyChecking=yes','-o','HostName=10.0.10.204','-o','HostKeyAlias=beastmode']
for name in ['frequency-coverage-test.py','frequency-coverage-test.sh']:subprocess.run(['scp']+opts+['tmp/pluto-iq/'+name,'beastmode:'+root+name],check=True,timeout=30)
r=control.ssh_execute('beastmode','sudo -n bash '+root+'frequency-coverage-test.sh > '+root+'frequency-coverage-run.log 2>&1; tail -12 '+root+'frequency-coverage-run.log',120)
Path('output/rtl8922-frequency-coverage-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))
subprocess.run(['scp']+opts+['beastmode:'+root+'frequency-coverage-test/report.json','output/rtl8922-frequency-coverage-report.json'],check=True,timeout=30)
