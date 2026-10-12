import sys
sys.path.insert(0,'.')
from pathlib import Path
import base64,control,json
root='/home/plaing/rtl8922-iq-research/'
s=Path('tmp/pluto-iq/qualify.py').read_text().replace("root/'pluto-qualification-path1'","root/'scope-modes'")
s=s.replace('==1601','==1089')
a=s.index('    for num,(tune,offset,rate,fmt,source,gain)');b=s.index('\nfinally:',a)
s=s[:a]+'''    def counts():return {n:int((dbg/n).read_text()) for n in ['iq_desc_total','iq_desc_scope','iq_core_total','scope_packets','scope_dropped']}
    report['register_baseline']={hex(a):hex(rd(a)) for a in (0x11420,0x11440,0x11460,0x11464,0x15460)}
    print(json.dumps(report['register_baseline']),flush=True)
    s.tx_hardwaregain_chan0=-10;lo.attrs['powerdown'].value='0';s.tx(8192*np.exp(2j*np.pi*125000/4000000*np.arange(16384)))
    for num,(mode,auto,ready) in enumerate([(m,a,r) for m in [1,2,3] for a in [0,1] for r in [0,2]]):
        band=0;seg=2
        setup(2,0,6);(dbg/'scope_data').write_bytes(b'1')
        oldtag=rd(0x8924);wr(0x8924,(oldtag&~0x80000)|8)
        old=rd(0x8938);wr(0x8938,(old&~0xc00)|0x400)
        a0=rd(0x11460);a1=rd(0x15460)
        assert a0!=0xdeadbeef and a1!=0xdeadbeef
        for addr in ([0x11460] if band==0 else [0x15460] if band==1 else [0x11460,0x15460]):wr(addr,(seg<<8)|0x10|mode)
        field('la_scope_mode_en',1);field('la_scope_mode_auto_fix_la',auto);field('r_dma_rdrdy',ready)
        before=counts()
        config=(100<<24)|(2<<20)|(4<<16)|(11<<8)|32|1;wr(0x9660,config|8)
        time.sleep(.3)
        status=rd(0x9664);wr(0x9660,0);field('la_scope_mode_en',0);field('la_scope_mode_auto_fix_la',0)
        time.sleep(.05);after=counts();data=(dbg/'scope_data').read_bytes()
        (out/f'scope-{num}.bin').write_bytes(data)
        result={'mode':mode,'band':band,'segment':seg,'auto':auto,'ready':ready,'before':before,'after':after,'status':hex(status),'loss':hex(rd(0x966c)),'bytes':len(data),'mac_scope_readback':[hex(rd(0x11460)),hex(rd(0x15460))]}
        report['tests'].append(result);print(json.dumps(result),flush=True)
        wr(0x11460,a0);wr(0x15460,a1);wr(0x8924,oldtag);wr(0x8938,old)
        (out/'report.json').write_text(json.dumps(report,indent=2))
'''+s[b:]
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/scope-modes.py"')
for data,name in [(s,'scope-modes.py'),(script,'scope-modes.sh')]:
 r=control.ssh_execute('beastmode','echo '+base64.b64encode(data.encode()).decode()+' | base64 -d > '+root+name,30);assert r['exit_code']==0,r
r=control.ssh_execute('beastmode','sudo -n bash '+root+'scope-modes.sh',120)
Path('output/rtl8922-scope-modes-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))
