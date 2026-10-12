import sys
sys.path.insert(0,'.')
from pathlib import Path
import base64,control,json
root='/home/plaing/rtl8922-iq-research/'
s=Path('tmp/pluto-iq/qualify.py').read_text().replace("root/'pluto-qualification-path1'","root/'cpuio-test'").replace('==1601','==1089')
a=s.index('    for num,(tune,offset,rate,fmt,source,gain)');b=s.index('\nfinally:',a)
s=s[:a]+'''    wr(0x8938,(rd(0x8938)&~0xc00)|0x400);wr(0x8924,(rd(0x8924)&~0x80000)|8)
    old=rd(0xc04)
    wr(0xc04,0x18000000)
    print('IDDMA_REGS',json.dumps({hex(a):hex(rd(0x80000+0x5000+a)) for a in list(range(0,0x60,4))+[0xe0,0xe4,0xe8,0xec,0xf0,0xfc]}),flush=True)
    wr(0xc04,old)
    for command in [0,64,72,96,128]:
        (dbg/'scope_data').write_bytes(b'1')
        (dbg/'iq_cpuio').write_text(str(command))
        time.sleep(.1)
        data=(dbg/'scope_data').read_bytes();(out/f'cpuio-{command}.bin').write_bytes(data)
        result={'command':command,'result':(dbg/'iq_cpuio').read_text(),'scope_packets':(dbg/'scope_packets').read_text(),'bytes':len(data),'cpuio_err':hex(rd(0x988c)),'empty1':hex(rd(0x8434)),'desc':(dbg/'iq_desc_total').read_text(),'core':(dbg/'iq_core_total').read_text()}
        report['tests'].append(result);print(json.dumps(result),flush=True)
'''+s[b:]
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/cpuio-test.py"')
for data,name in [(s,'cpuio-test.py'),(script,'cpuio-test.sh')]:
 r=control.ssh_execute('beastmode','echo '+base64.b64encode(data.encode()).decode()+' | base64 -d > '+root+name,30);assert r['exit_code']==0,r
r=control.ssh_execute('beastmode','sudo -n bash '+root+'cpuio-test.sh',120)
Path('output/rtl8922-cpuio-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))
