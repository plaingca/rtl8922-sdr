import sys
sys.path.insert(0,'.')
from pathlib import Path
import base64,control,json
root='/home/plaing/rtl8922-iq-research/'
s=Path('tmp/pluto-iq/qualify.py').read_text().replace("root/'pluto-qualification-path1'","root/'cpuio-test'").replace('==1601','==1089')
a=s.index('    for num,(tune,offset,rate,fmt,source,gain)');b=s.index('\nfinally:',a)
s=s[:a]+'''    wr(0x8938,(rd(0x8938)&~0xc00)|0x400);wr(0x8924,(rd(0x8924)&~0x80000)|8)
    s.tx_lo=2422000000;s.tx_hardwaregain_chan0=0;lo.attrs['powerdown'].value='0'
    fs=int(s.sample_rate);n=np.arange(16384);s.tx(24576*np.exp(2j*np.pi*125000/fs*n));time.sleep(.1)
    subprocess.run([str(root/'iw-local/sbin/iw'),'dev',iface,'set','freq','2412','HT40+'],check=True)
    wr(0x26b50,rd(0x26b50)&0x3fffffff)
    for count in [0,1,2,3,7,15,31,63,127,255]:
        setup(2,14,3);field('la_trigger_cnt',count)
        wr(0x9660,(4<<16)|(11<<8)|1);wr(0x9660,(4<<16)|(11<<8)|9)
        start=time.monotonic()
        while time.monotonic()-start<6:
            status=rd(0x9664)
            if (status>>17)&7!=1:break
            time.sleep(.002)
        print(json.dumps({'count':count,'seconds':time.monotonic()-start,'state':hex(status),'loss':hex(rd(0x966c)),'DMA':'disabled'}),flush=True)
        wr(0x9660,0)
'''+s[b:]
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/cpuio-test.py"')
for data,name in [(s,'cpuio-test.py'),(script,'cpuio-test.sh')]:
 r=control.ssh_execute('beastmode','echo '+base64.b64encode(data.encode()).decode()+' | base64 -d > '+root+name,30);assert r['exit_code']==0,r
r=control.ssh_execute('beastmode','sudo -n bash '+root+'cpuio-test.sh',120)
Path('output/rtl8922-la40-count-matrix-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))
