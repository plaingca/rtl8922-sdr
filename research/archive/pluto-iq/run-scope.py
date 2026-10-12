import sys
sys.path.insert(0,'.')
from pathlib import Path
import base64,control,json
root='/home/plaing/rtl8922-iq-research/'
s=Path('tmp/pluto-iq/qualify.py').read_text()
s=s.replace("root/'pluto-qualification-path1'","root/'scope-test'")
start=s.index('    for num,(tune,offset,rate,fmt,source,gain)')
end=s.index('\nfinally:',start)
s=s[:start]+'''    s.tx_hardwaregain_chan0=-10;lo.attrs['powerdown'].value='0';s.tx(8192*np.exp(2j*np.pi*.025*np.arange(16384)))
    for num,(rate,seg,macaddr,auto) in enumerate([(6,2,0xce60,1),(6,4,0xce60,1),(6,2,0xee60,1),(6,2,0xce60,0),(2,2,0xce60,1)]):
        setup(2,1,rate)
        (dbg/'scope_data').write_bytes(b'1')
        before={hex(a):hex(rd(a)) for a in (0xce60,0xee60,0x9660,0x210bc)}
        field('la_scope_mode_en',1);field('la_scope_mode_auto_fix_la',auto)
        wr(macaddr,(seg<<8)|0x11)
        time.sleep(.2)
        wr(macaddr,0);field('la_scope_mode_en',0);field('la_scope_mode_auto_fix_la',0)
        time.sleep(.1)
        data=(dbg/'scope_data').read_bytes();(out/f'scope-{num}.bin').write_bytes(data)
        result={'rate':rate,'segment':seg,'mac_addr':hex(macaddr),'auto':auto,'before':before,'bytes':len(data),'packets':(dbg/'scope_packets').read_text(),'dropped':(dbg/'scope_dropped').read_text(),'loss':hex(rd(0x966c))}
        report['tests'].append(result);print(json.dumps(result),flush=True)
        (out/'report.json').write_text(json.dumps(report,indent=2))
'''+s[end:]
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/scope.py"')
for data,name in [(s,'scope.py'),(script,'scope.sh')]:
 r=control.ssh_execute('beastmode','echo '+base64.b64encode(data.encode()).decode()+' | base64 -d > '+root+name,30);assert r['exit_code']==0,r
r=control.ssh_execute('beastmode','sudo -n bash '+root+'scope.sh',120)
Path('output/rtl8922-scope-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))
