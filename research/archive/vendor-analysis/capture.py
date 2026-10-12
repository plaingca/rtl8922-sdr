import pathlib,json,re,struct,time,hashlib,collections,math
root=pathlib.Path('/home/plaing/rtl8922-iq-research')
out=root/'captures'; out.mkdir(exist_ok=True)
dbg=next(pathlib.Path('/sys/kernel/debug/ieee80211').glob('*/rtw89/read_reg')).parent
fields={x['field']:x for x in json.loads((root/'la-registers.json').read_text())['fields'] if x['address'] is not None}
saved={}
def rd(addr):
    (dbg/'read_reg').write_text(f'{addr:x} 4\n')
    text=(dbg/'read_reg').read_text()
    return int(re.findall(r'0x[0-9a-fA-F]+',text)[-1],16)
def wr(addr,value):
    if addr not in saved: saved[addr]=rd(addr)
    (dbg/'write_reg').write_text(f'{addr:x} {value&0xffffffff:x} 4\n')
def field(name,value):
    f=fields[name]; a=int(f['address'],16)+0x20000; m=int(f['mask'],16); shift=(m&-m).bit_length()-1
    wr(a,(rd(a)&~m)|((value<<shift)&m))
def dump():
    b=bytearray()
    for start in range(0x16000,0x56000,2048):
        (dbg/'mac_mem_dump').write_text(f'1 {start:x} 800\n')
        words=[]
        for line in (dbg/'mac_mem_dump').read_text().splitlines():
            if ':' in line: words.extend(int(x,16) for x in line.split(':',1)[1].split())
        assert len(words)==512, len(words)
        b.extend(struct.pack('<512I',*words))
    return bytes(b)
def stats(b):
    c=collections.Counter(b); words=list(struct.unpack('<%dQ'%(len(b)//8),b))
    return {'bytes':len(b),'sha256':hashlib.sha256(b).hexdigest(),'unique_bytes':len(c),'unique_records':len(set(words)),'zero_fraction':c[0]/len(b),'ff_fraction':c[255]/len(b),'entropy':-sum(v/len(b)*math.log2(v/len(b)) for v in c.values()),'first_records':[f'{x:016x}' for x in words[:16]]}
report={'time_utc':time.strftime('%Y-%m-%dT%H:%M:%SZ',time.gmtime()),'partition':{hex(a):hex(rd(a)) for a in (0x8c08,0x9008)},'attempts':[]}
try:
    wde=rd(0x8c08); ple=rd(0x9008)
    assert (wde>>16)&0x1fff==1408
    assert (ple>>16)&0x1fff==1601
    assert (ple>>8)&0x7f==0x56000//8192
    baseline=dump(); (out/'baseline.bin').write_bytes(baseline); report['baseline']=stats(baseline)
    for num,(source,fmt,rate) in enumerate([(3,1,2),(3,1,2),(2,1,2),(3,0,0)]):
        wr(0x9660,0)
        field('la_en',0)
        for key in ['la_and1_mask','la_and2_en','la_and3_en','la_and4_en','la_and5_sel','la_and6_sel','la_and7_sel','la_and8_mask','la_mac_and0_en','la_mac_and1_en','la_mac_and2_en','la_re_and1_sel','la_re_and1_mask','la_scope_mode_en','la_scope_mode_auto_fix_la','la_and0_inv','la_and8_inv']:
            field(key,0)
        field('and0_trig_disable',1); field('la_trigger_cnt',0); field('la_trigger_edge',0)
        field('dma_dbgport_base_n',31); field('dma_dbgport_ext_base_n',0)
        for path,index in zip('abcd',[0,1,0,1]):
            field('dma_'+path+'_path_sel',index); field('dma_'+path+'_src_sel',source)
        for bit in range(56,64): field('dma_hdr_sel_'+str(bit),0)
        field('dma_data_type',fmt); field('r_dma_rdrdy',0); field('dma_la_phy_sel',0)
        field('la_smp_rt_sel',rate); field('la_clk_en',1); field('la_en',1)
        # 100 * 2^2 us post-trigger, 256 KiB, start 0x16000, timeout enabled.
        config=(100<<24)|(2<<20)|(3<<16)|(11<<8)|(1<<5)|1
        wr(0x9668,0); wr(0x9660,config)
        before={hex(a):hex(rd(a)) for a in (0x9660,0x9664,0x20014,0x21090,0x21094,0x21098)}
        wr(0x9660,config|8)
        history=[]; deadline=time.monotonic()+2
        while time.monotonic()<deadline:
            value=rd(0x9664)
            if not history or value!=history[-1]: history.append(value)
            if (value>>17)&7 in (2,3): break
            time.sleep(.01)
        after={hex(a):hex(rd(a)) for a in (0x9660,0x9664,0x966c)}
        # Freeze even if engine failed to report completion.
        wr(0x9660,config&~1); field('la_en',0)
        data=dump(); name=f'capture-{num}-src{source}-fmt{fmt}.bin'; (out/name).write_bytes(data)
        entry={'file':name,'source':source,'format':fmt,'rate_selector':rate,'before':before,'after':after,'history':[hex(x) for x in history],'stats':stats(data),'changed_bytes_from_baseline':sum(a!=b for a,b in zip(baseline,data))}
        report['attempts'].append(entry); print(json.dumps(entry),flush=True)
finally:
    for a,v in reversed(list(saved.items())):
        if a==0x9660: v&=~9
        (dbg/'write_reg').write_text(f'{a:x} {v:x} 4\n')
    (out/'report.json').write_text(json.dumps(report,indent=2))
