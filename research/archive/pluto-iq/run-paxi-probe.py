import sys,json,subprocess
from pathlib import Path
sys.path.insert(0,'.')
import control
root='/home/plaing/rtl8922-iq-research/'
s=Path('tmp/pluto-iq/qualify.py').read_text().replace("root/'pluto-qualification-path1'","root/'paxi-probe-test'").replace('==1601','==1089').replace("field('la_trigger_cnt',0)","field('la_trigger_cnt',255)")
a=s.index('    for num,(tune,offset,rate,fmt,source,gain)');b=s.index('\nfinally:',a)
s=s[:a]+'''    wr(0x8938,(rd(0x8938)&~0xc00)|0x400);wr(0x8924,(rd(0x8924)&~0x80000)|8)
    s.tx_lo=2422000000;s.tx_hardwaregain_chan0=0;lo.attrs['powerdown'].value='0'
    fs=int(s.sample_rate);n=np.arange(16384);s.tx(24576*np.exp(2j*np.pi*125000/fs*n));time.sleep(.1)
    subprocess.run([str(root/'iw-local/sbin/iw'),'dev',iface,'set','freq','2412','HT40+'],check=True)
    setup(2,14,3);wr(0x9660,(4<<16)|(11<<8)|9);time.sleep(.01);field('la_en',0);wr(0x9660,(4<<16)|(11<<8))
    reference=(dbg/'iq_memory').read_bytes();(out/'frozen.bin').write_bytes(reference)
    for chunk in [8192]:
        (dbg/'scope_data').write_bytes(b'1');(dbg/'iq_paxi').write_text('1');time.sleep(.02)
        status=(dbg/'iq_paxi').read_text();data=(dbg/'scope_data').read_bytes();(out/f'packet-{chunk}.bin').write_bytes(data)
        test={'chunk':chunk,'status':status,'host_bytes':len(data),'reference_match':data[24:]==reference[:chunk],'host_drops':(dbg/'scope_dropped').read_text()}
        report['tests'].append(test);print(json.dumps(test),flush=True)
'''+s[b:]
Path('tmp/pluto-iq/paxi-probe-test.py').write_text(s)
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('"$base/la-driver"','"$base/la-driver-fast"').replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/paxi-probe-test.py"')
Path('tmp/pluto-iq/paxi-probe-test.sh').write_bytes(script.encode())
opts=['-q','-o','BatchMode=yes','-o','StrictHostKeyChecking=yes','-o','HostName=10.0.10.204','-o','HostKeyAlias=beastmode']
for name in ['paxi-probe-test.py','paxi-probe-test.sh']:subprocess.run(['scp']+opts+['tmp/pluto-iq/'+name,'beastmode:'+root+name],check=True,timeout=30)
r=control.ssh_execute('beastmode','sudo -n bash '+root+'paxi-probe-test.sh > '+root+'paxi-probe-run.log 2>&1; tail -12 '+root+'paxi-probe-run.log',120)
Path('output/rtl8922-paxi-probe-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))
subprocess.run(['scp']+opts+['beastmode:'+root+'paxi-probe-test/report.json','output/rtl8922-paxi-probe-report.json'],check=True,timeout=30)
