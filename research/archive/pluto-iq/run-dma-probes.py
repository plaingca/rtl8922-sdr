import sys
sys.path.insert(0,'.')
from pathlib import Path
import base64,control,json
root='/home/plaing/rtl8922-iq-research/'
s=Path('tmp/pluto-iq/qualify.py').read_text().replace("root/'pluto-qualification-path1'","root/'dma-probes'")
a=s.index('    for num,(tune,offset,rate,fmt,source,gain)');b=s.index('\nfinally:',a)
s=s[:a]+'''    result=capture('reference',2,0,6)
    expected=(out/'reference.bin').read_bytes();timings=[]
    for i in range(5):
        t=time.monotonic();data=(dbg/'iq_memory').read_bytes();elapsed=time.monotonic()-t
        if data!=expected:
            print(json.dumps({'readq_mismatch':True,'first_64':data[:64].hex(),'expected_64':expected[:64].hex(),'different_bytes':sum(a!=b for a,b in zip(data,expected))}),flush=True)
        timings.append(elapsed)
    report['readq']={'seconds':timings,'MBps':[len(data)/t/1e6 for t in timings],'identical':data==expected}
    print(json.dumps(report['readq']),flush=True)
    def counts():return {n:int((dbg/n).read_text()) for n in ['iq_desc_total','iq_desc_scope','iq_core_total','scope_packets','scope_dropped']}
    report['baseline_counts']=counts()
    for num,(tag,cpu,auto,arm) in enumerate([(0,0,1,1),(1,0,1,1),(1,1,1,1),(0,1,1,1),(1,0,0,1),(1,0,1,0),(1,1,0,1),(0,0,0,1)]):
        setup(2,0,6);(dbg/'scope_data').write_bytes(b'1')
        oldtag=rd(0x8924);wr(0x8924,(oldtag&~0x80008)|(8 if tag else 0)|(0x80000 if cpu else 0))
        old=rd(0x8938);wr(0x8938,(old&~0xc00)|0x400)
        field('la_scope_mode_en',1);field('la_scope_mode_auto_fix_la',auto)
        before=counts();regs_before={hex(a):hex(rd(a)) for a in (0x8914,0x8920,0x8924,0x8938,0x9660,0x210bc)}
        config=(100<<24)|(2<<20)|(3<<16)|(11<<8)|32|1
        if arm:wr(0x9660,config|8)
        time.sleep(.15)
        status=rd(0x9664);wr(0x9660,0);field('la_scope_mode_en',0);field('la_scope_mode_auto_fix_la',0)
        time.sleep(.05);after=counts();data=(dbg/'scope_data').read_bytes()
        (out/f'scope-{num}.bin').write_bytes(data)
        result={'tag':tag,'cpu':cpu,'auto':auto,'arm':arm,'before':before,'after':after,'registers':regs_before,'status':hex(status),'loss':hex(rd(0x966c)),'bytes':len(data)}
        report['tests'].append(result);print(json.dumps(result),flush=True)
        wr(0x8924,oldtag);wr(0x8938,old)
        (out/'report.json').write_text(json.dumps(report,indent=2))
'''+s[b:]
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/dma-probes.py"')
for data,name in [(s,'dma-probes.py'),(script,'dma-probes.sh')]:
 r=control.ssh_execute('beastmode','echo '+base64.b64encode(data.encode()).decode()+' | base64 -d > '+root+name,30);assert r['exit_code']==0,r
r=control.ssh_execute('beastmode','sudo -n bash '+root+'dma-probes.sh',120)
Path('output/rtl8922-dma-probes-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))

