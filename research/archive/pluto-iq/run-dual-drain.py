import sys,json,subprocess
from pathlib import Path
sys.path.insert(0,'.')
import control
root='/home/plaing/rtl8922-iq-research/'
s=Path('tmp/pluto-iq/qualify.py').read_text().replace("root/'pluto-qualification-path1'","root/'dual-drain-test'").replace('==1601','==1089').replace("field('la_trigger_cnt',0)","field('la_trigger_cnt',255)")
a=s.index('    for num,(tune,offset,rate,fmt,source,gain)');b=s.index('\nfinally:',a)
s=s[:a]+'''    wr(0x8938,(rd(0x8938)&~0xc00)|0x400);wr(0x8924,(rd(0x8924)&~0x80000)|8)
    import os
    for bandwidth,center,clock,rawrate in [(40,2422,3,10000000),(80,5210,2,20000000),(160,5250,1,40000000)]:
        s.tx_hardwaregain_chan0=-89.75;s.tx_destroy_buffer();lo.attrs['powerdown'].value='1'
        args=['2412','HT40+'] if bandwidth==40 else ['5180',str(bandwidth),str(center)]
        tune=subprocess.run([str(root/'iw-local/sbin/iw'),'dev',iface,'set','freq']+args,capture_output=True,text=True)
        if tune.returncode:
            report['tests'].append({'bandwidth':bandwidth,'tune_error':tune.stderr});continue
        s.tx_lo=center*1000000;s.tx_hardwaregain_chan0=0;lo.attrs['powerdown'].value='0'
        fs=int(s.sample_rate);n=np.arange(16384);s.tx(24576*np.exp(2j*np.pi*125000/fs*n));time.sleep(.1)
        setup(2,14,clock)
        wr(0x9668,0);wr(0x9660,(4<<16)|(11<<8)|9);time.sleep(.01)
        field('la_en',0);wr(0x9660,(4<<16)|(11<<8))
        frozen=(dbg/'iq_memory').read_bytes();(out/f'frozen-{bandwidth}.bin').write_bytes(frozen)
        def fft(data):
            x=np.frombuffer(data,dtype=np.int8).reshape(-1,2);z=x[:,0].astype(float)+1j*x[:,1];z-=z.mean()
            p=abs(np.fft.fft(z*np.hanning(len(z))))**2;f=np.fft.fftfreq(len(z),1/(bandwidth*1000000));p[abs(f)<20000]=0;k=int(np.argmax(p));im=int(np.argmin(abs(f+f[k])))
            return {'global_peak_hz':float(f[k]),'peak_median_db':float(10*np.log10(p[k]/max(np.median(p),1e-20))),'image_db':float(10*np.log10(p[k]/max(p[im],1e-20)))}
        frozen_fft=fft(frozen)
        (dbg/'iq_dual').write_text('Y')
        for chunk in [8192,10240]:
            setup(2,14,clock);(dbg/'iq_pipeline').write_text('Y');(dbg/'iq_chunk_bytes').write_text(str(chunk));(dbg/'iq_sample_rate').write_text(str(rawrate));(dbg/'iq_drain').write_bytes(b'1')
            dest=out/f'tail-{bandwidth}-{chunk}.bin'
            result=subprocess.run([str(root/'raw-drain-fast'),str(dbg),'1000',str(dest)],capture_output=True,text=True,timeout=10)
            test={'bandwidth':bandwidth,'rawrate':rawrate,'chunk':chunk,'host':result.stdout,'stderr':result.stderr,'returncode':result.returncode,'producer':(dbg/'iq_stream').read_text(),'drops':(dbg/'scope_dropped').read_text(),'frozen_fft':frozen_fft}
            if dest.exists() and dest.stat().st_size:test['tail_fft']=fft(dest.read_bytes())
            report['tests'].append(test);print(json.dumps(test),flush=True);(out/'report.json').write_text(json.dumps(report,indent=2))
'''+s[b:]
Path('tmp/pluto-iq/dual-drain-test.py').write_text(s)
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('"$base/la-driver"','"$base/la-driver-fast"').replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/dual-drain-test.py"')
Path('tmp/pluto-iq/dual-drain-test.sh').write_bytes(script.encode())
opts=['-q','-o','BatchMode=yes','-o','StrictHostKeyChecking=yes','-o','HostName=10.0.10.204','-o','HostKeyAlias=beastmode']
for filename in ['dual-drain-test.py','dual-drain-test.sh','raw-drain-fast.cpp']:
 subprocess.run(['scp']+opts+['tmp/pluto-iq/'+filename,'beastmode:'+root+filename],check=True,timeout=30)
r=control.ssh_execute('beastmode','g++ -O3 -pthread '+root+'raw-drain-fast.cpp -o '+root+'raw-drain-fast && sudo -n bash '+root+'dual-drain-test.sh > '+root+'dual-drain-run.log 2>&1; tail -15 '+root+'dual-drain-run.log',120)
Path('output/rtl8922-dual-drain-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))
subprocess.run(['scp']+opts+['beastmode:'+root+'dual-drain-test/report.json','output/rtl8922-dual-drain-report.json'],check=True,timeout=30)

