import sys,json,subprocess
from pathlib import Path
sys.path.insert(0,'.')
import control
root='/home/plaing/rtl8922-iq-research/'
s=Path('tmp/pluto-iq/qualify.py').read_text().replace("root/'pluto-qualification-path1'","root/'paxi-snapshot-test'").replace('==1601','==1089').replace("field('la_trigger_cnt',0)","field('la_trigger_cnt',255)")
a=s.index('    for num,(tune,offset,rate,fmt,source,gain)');b=s.index('\nfinally:',a)
s=s[:a]+'''    wr(0x8938,(rd(0x8938)&~0xc00)|0x400);wr(0x8924,(rd(0x8924)&~0x80000)|8)
    s.tx_lo=2422000000;s.tx_hardwaregain_chan0=0;lo.attrs['powerdown'].value='0'
    fs=int(s.sample_rate);n=np.arange(16384);s.tx(24576*np.exp(2j*np.pi*125000/fs*n));time.sleep(.1)
    subprocess.run([str(root/'iw-local/sbin/iw'),'dev',iface,'set','freq','2412','HT40+'],check=True)
    setup(2,14,3);wr(0x9660,(4<<16)|(11<<8)|9);time.sleep(.01);field('la_en',0);wr(0x9660,(4<<16)|(11<<8))
    reference=(dbg/'iq_memory').read_bytes();(out/'frozen.bin').write_bytes(reference)
    old_window=rd(0xc04)
    try:
        wr(0xc04,0x18006000)
        offsets=[0,4,0x100,0x104,0x300,0x304,0x308,0x30c,0x320,0x324,0x328,0x400,0x404,0x408,0x40c,0x410,0x414,0x418,0x41c,0x420,0x424,0x428,0x42c,0x430,0x434,0x600,0x604,0x608,0x60c,0x610,0x614,0x618,0x61c,0x620,0x624,0x628,0x62c,0x630,0x634,0xa00]
        regs={hex(o):hex(rd(0x80000+o)) for o in offsets};descriptors={}
        for off in [0x620,0x624,0x628,0x62c,0x630,0x634]:
            addr=int(regs[hex(off)],16)
            if addr in [0,0xffffffff,0xdeadbeef] or addr&7:continue
            if not (0x18000000<=addr<0x21000000):continue
            wr(0xc04,addr&~0x7ffff)
            descriptors[hex(off)]={'address':hex(addr),'words':[hex(rd(0x80000+(addr&0x7ffff)+4*i)) for i in range(64)]}
        headers={}
        for addr in [0x20229758,0x20229778,0x20229798,0x202297b8,0x202297d8,0x202297f8]:
            wr(0xc04,addr&~0x7ffff)
            headers[hex(addr)]=[hex(rd(0x80000+(addr&0x7ffff)+4*i)) for i in range(8)]
        report['tests'].append({'paxi_registers':regs,'tx_descriptors':descriptors,'tx_headers':headers,'afe':hex(rd(0x24))});print(json.dumps(report['tests'][-1]),flush=True)
    finally:wr(0xc04,old_window)
'''+s[b:]
Path('tmp/pluto-iq/paxi-snapshot-test.py').write_text(s)
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('"$base/la-driver"','"$base/la-driver-fast"').replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/paxi-snapshot-test.py"')
Path('tmp/pluto-iq/paxi-snapshot-test.sh').write_bytes(script.encode())
opts=['-q','-o','BatchMode=yes','-o','StrictHostKeyChecking=yes','-o','HostName=10.0.10.204','-o','HostKeyAlias=beastmode']
for name in ['paxi-snapshot-test.py','paxi-snapshot-test.sh']:subprocess.run(['scp']+opts+['tmp/pluto-iq/'+name,'beastmode:'+root+name],check=True,timeout=30)
r=control.ssh_execute('beastmode','sudo -n bash '+root+'paxi-snapshot-test.sh > '+root+'paxi-snapshot-run.log 2>&1; tail -12 '+root+'paxi-snapshot-run.log',120)
Path('output/rtl8922-paxi-snapshot-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))
subprocess.run(['scp']+opts+['beastmode:'+root+'paxi-snapshot-test/report.json','output/rtl8922-paxi-snapshot-report.json'],check=True,timeout=30)
