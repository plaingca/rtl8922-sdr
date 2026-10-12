import sys
sys.path.insert(0,'.')
from pathlib import Path
import base64,control,json
root='/home/plaing/rtl8922-iq-research/'
s=Path('tmp/pluto-iq/qualify.py').read_text().replace("root/'pluto-qualification-path1'","root/'scope-headers'").replace('==1601','==1089')
a=s.index('    for num,(tune,offset,rate,fmt,source,gain)');b=s.index('\nfinally:',a)
s=s[:a]+'''    def counts():return {n:int((dbg/n).read_text()) for n in ['iq_desc_total','iq_desc_scope','iq_core_total','scope_packets','scope_dropped']}
    s.tx_hardwaregain_chan0=-10;lo.attrs['powerdown'].value='0';s.tx(8192*np.exp(2j*np.pi*125000/4000000*np.arange(16384)))
    cases=[(m,h,r) for m in [0,1,2] for h in [0,1,2,3] for r in [0]]
    for num,(mode,hdr,ready) in enumerate(cases):
        wr(0x11460,0);field('la_en',0);time.sleep(.05)
        setup(2,0,6);(dbg/'scope_data').write_bytes(b'1')
        oldtag=rd(0x8924);wr(0x8924,(oldtag&~0x80000)|8)
        old=rd(0x8938);wr(0x8938,(old&~0xc00)|0x400)
        field('la_scope_mode_en',1);field('la_scope_mode_auto_fix_la',0);field('r_dma_rdrdy',ready)
        if hdr==1:field('dma_hdr_sel_63',12)
        if hdr==2:field('dma_hdr_sel_62',12)
        if hdr==3:
            for bit in range(56,64):field('dma_hdr_sel_'+str(bit),12)
        wr(0x11460,(2<<8)|0x10|mode)
        before=counts();config=(4<<16)|(11<<8)|1;wr(0x9660,config|8)
        t=time.monotonic();time.sleep(.15);elapsed=time.monotonic()-t
        status=rd(0x9664);bb={hex(a):hex(rd(a)) for a in [0x21090,0x21094,0x21098,0x210bc]}
        wr(0x11460,0);wr(0x9660,0);field('la_scope_mode_en',0);time.sleep(.05)
        after=counts();data=(dbg/'scope_data').read_bytes();(out/f'scope-{num}.bin').write_bytes(data)
        result={'mode':mode,'header_case':hdr,'ready':ready,'before':before,'after':after,'status':hex(status),'bb':bb,'loss':hex(rd(0x966c)),'bytes':len(data),'seconds':elapsed}
        report['tests'].append(result);print(json.dumps(result),flush=True)
        wr(0x8924,oldtag);wr(0x8938,old)
        (out/'report.json').write_text(json.dumps(report,indent=2))
'''+s[b:]
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/scope-headers.py"')
for data,name in [(s,'scope-headers.py'),(script,'scope-headers.sh')]:
 r=control.ssh_execute('beastmode','echo '+base64.b64encode(data.encode()).decode()+' | base64 -d > '+root+name,30);assert r['exit_code']==0,r
r=control.ssh_execute('beastmode','sudo -n bash '+root+'scope-headers.sh',120)
Path('output/rtl8922-scope-headers-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))
