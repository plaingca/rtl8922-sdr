import sys
sys.path.insert(0,'.')
from pathlib import Path
import base64,control,json
root='/home/plaing/rtl8922-iq-research/'
s=Path('tmp/pluto-iq/qualify.py').read_text().replace("root/'pluto-qualification-path1'","root/'scope-forward-test'")
a=s.index('    for num,(tune,offset,rate,fmt,source,gain)');b=s.index('\nfinally:',a)
s=s[:a]+'''    s.tx_hardwaregain_chan0=-10;lo.attrs['powerdown'].value='0';s.tx(8192*np.exp(2j*np.pi*.025*np.arange(16384)))
    for num,(rate,arm,forward,auto) in enumerate([(6,0,1,1),(6,1,1,1),(6,1,1,0),(6,1,0,1),(2,1,1,1)]):
        setup(2,1,rate)
        (dbg/'scope_data').write_bytes(b'1')
        before={hex(a):hex(rd(a)) for a in (0x8938,0x8920,0x8924,0x9660,0x210bc)}
        old=rd(0x8938);wr(0x8938,(old&~0xc00)|(0x400 if forward else 0))
        field('la_scope_mode_en',1);field('la_scope_mode_auto_fix_la',auto)
        config=(100<<24)|(2<<20)|(3<<16)|(11<<8)|32|1
        if arm:wr(0x9660,config|8)
        time.sleep(.2)
        status=rd(0x9664);wr(0x9660,0);field('la_scope_mode_en',0);field('la_scope_mode_auto_fix_la',0)
        time.sleep(.1)
        data=(dbg/'scope_data').read_bytes();(out/f'scope-{num}.bin').write_bytes(data)
        result={'rate':rate,'arm':arm,'forward':forward,'auto':auto,'before':before,'bytes':len(data),'packets':(dbg/'scope_packets').read_text(),'dropped':(dbg/'scope_dropped').read_text(),'status':hex(status),'loss':hex(rd(0x966c))}
        report['tests'].append(result);print(json.dumps(result),flush=True)
        (out/'report.json').write_text(json.dumps(report,indent=2))
'''+s[b:]
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/scope-forward.py"')
for data,name in [(s,'scope-forward.py'),(script,'scope-forward.sh')]:
 r=control.ssh_execute('beastmode','echo '+base64.b64encode(data.encode()).decode()+' | base64 -d > '+root+name,30);assert r['exit_code']==0,r
r=control.ssh_execute('beastmode','sudo -n bash '+root+'scope-forward.sh',120)
Path('output/rtl8922-scope-forward-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))
