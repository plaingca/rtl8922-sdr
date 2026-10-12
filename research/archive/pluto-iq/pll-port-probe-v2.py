import pathlib,json,re,struct,time,hashlib,collections,math,sys,signal,subprocess
import numpy as np
import adi
root=pathlib.Path('/home/plaing/rtl8922-iq-research')
exec((root/'capture-original.py').read_text().split("report={'time_utc'")[0])
out=root/'pll-port-probe-v2';out.mkdir(exist_ok=True)
def interrupted(*args): raise TimeoutError('bounded RF experiment ended')
signal.signal(signal.SIGTERM,interrupted);signal.signal(signal.SIGINT,interrupted);signal.signal(signal.SIGALRM,interrupted);signal.alarm(110)
s=adi.Pluto('ip:192.168.2.1');s._ctx.set_timeout(3000)
keys=['sample_rate','rx_lo','tx_lo','rx_rf_bandwidth','tx_rf_bandwidth','tx_hardwaregain_chan0']
original={k:getattr(s,k) for k in keys};lo=s._ctrl.find_channel('altvoltage1',True);powerdown=lo.attrs['powerdown'].value
report={'original_pluto':original,'original_tx_powerdown':powerdown,'tests':[]}
iface=next(pathlib.Path('/sys/bus/pci/devices/0000:0d:00.0/net').iterdir()).name
def setup(source,fmt,rate):
    wr(0x9660,0);field('la_en',0)
    for key in ['la_and1_mask','la_and2_en','la_and3_en','la_and4_en','la_and5_sel','la_and6_sel','la_and7_sel','la_and8_mask','la_mac_and0_en','la_mac_and1_en','la_mac_and2_en','la_re_and1_sel','la_re_and1_mask','la_scope_mode_en','la_scope_mode_auto_fix_la','la_and0_inv','la_and8_inv']:field(key,0)
    field('and0_trig_disable',1);field('la_trigger_cnt',255);field('la_trigger_edge',0)
    field('dma_dbgport_base_n',31);field('dma_dbgport_ext_base_n',0)
    for path,index in zip('abcd',[1,1,1,1]):field('dma_'+path+'_path_sel',index);field('dma_'+path+'_src_sel',source)
    for bit in range(56,64):field('dma_hdr_sel_'+str(bit),0)
    field('dma_data_type',fmt);field('r_dma_rdrdy',0);field('dma_la_phy_sel',0);field('la_smp_rt_sel',rate);field('la_clk_en',1);field('la_en',1)
def capture(name,source,fmt,rate):
    setup(source,fmt,rate)
    config=(100<<24)|(2<<20)|(3<<16)|(11<<8)|32|1
    wr(0x9668,0);wr(0x9660,config);wr(0x9660,config|8)
    t=time.monotonic();deadline=t+2
    while time.monotonic()<deadline:
        status=rd(0x9664)
        if (status>>17)&7 in (2,3):break
        time.sleep(.01)
    elapsed=time.monotonic()-t;loss=rd(0x966c);wr(0x9660,config&~1);field('la_en',0)
    data=dump();(out/(name+'.bin')).write_bytes(data)
    raw=np.frombuffer(data,dtype='<u8');wp=status&65535
    assert wp<len(raw)
    if status&65536:raw=np.roll(raw,-wp)
    else:raw=raw[:wp]
    bits=12 if fmt==1 else 14;lanes=4 if fmt==1 else 2
    x=np.stack([((raw>>np.uint64(bits*i))&np.uint64((1<<bits)-1)).astype(np.int32) for i in range(lanes)],axis=1);x[x>=1<<(bits-1)]-=1<<bits
    pairs=[]
    for pair in range(lanes//2):
        z=x[:,2*pair]+1j*x[:,2*pair+1];z-=z.mean()
        f=np.fft.fftfreq(len(z));p=np.abs(np.fft.fft(z*np.hanning(len(z))))**2;p[np.abs(f)<.0001]=0
        k=int(np.argmax(p));noise=np.median(p[p>0]);pairs.append({'peak_cycles_per_sample':float(f[k]),'peak_to_median_db':float(10*np.log10(p[k]/noise)),'std':np.std(x[:,2*pair:2*pair+2],axis=0).tolist(),'means':np.mean(x[:,2*pair:2*pair+2],axis=0).tolist(),'clip_fraction':float(np.mean(np.abs(x[:,2*pair:2*pair+2])>=(1<<(bits-1))-1))})
    return {'file':name+'.bin','source':source,'format':fmt,'rate_selector':rate,'status':hex(status),'loss':hex(loss),'elapsed_s':elapsed,'records':len(raw),'sha256':hashlib.sha256(data).hexdigest(),'pairs':pairs}

assert powerdown == '1', 'Existing Pluto TX is active'
iw=str(root/'iw-local/sbin/iw')
def cmd(*args):return subprocess.run([iw,*args],capture_output=True,text=True,timeout=5)
rf_saved={}
def rfr(path,addr):
    (dbg/'read_rf').write_text(f'{path} {addr:x} fffff\n')
    return int(re.findall(r'0x[0-9a-fA-F]+',(dbg/'read_rf').read_text())[-1],16)
def rfw(path,addr,value):
    if (path,addr) not in rf_saved:rf_saved[path,addr]=rfr(path,addr)
    (dbg/'write_rf').write_text(f'{path} {addr:x} fffff {value&0xfffff:x}\n')
def regs():return {f'{p}:{a:x}':rfr(p,a) for p in [0] for a in [0,5,0x17,0x18,0x1f,0x25,0x26,0x48,0x49,0x4a,0xb2,0xb3,0xbc,0xbe,0xc5,0xc6,0xc7,0xc8,0xcf,0xd1,0xd2,0xd3,0xd5,0xd6,0xd7,0x10018]}
def fft(data,offset):
    x=np.frombuffer(data,dtype=np.int8).reshape(-1,2);z=x[:,0].astype(float)+1j*x[:,1];z-=z.mean()
    p=abs(np.fft.fft(z*np.hanning(len(z))))**2;f=np.fft.fftfreq(len(z),1/20000000);p[abs(f)<25000]=0
    k=int(np.argmax(p));near=np.flatnonzero(abs(f-offset)<100000);n=near[np.argmax(p[near])]
    return dict(peak_hz=float(f[k]),peak_median_db=float(10*np.log10(p[k]/max(np.median(p),1e-20))),expected_peak_hz=float(f[n]),expected_peak_median_db=float(10*np.log10(p[n]/max(np.median(p),1e-20))))
def tones(test):
    s.tx_lo=round(test['mhz']*1e6);test['pluto_lo']=int(s.tx_lo)
    for offset in [500000,-500000]:
        s.tx_hardwaregain_chan0=-89.75;s.tx_destroy_buffer();lo.attrs['powerdown'].value='1'
        n=np.arange(16384);s.tx_hardwaregain_chan0=0;lo.attrs['powerdown'].value='0';s.tx(24576*np.exp(2j*np.pi*offset/int(s.sample_rate)*n))
        setup(2,14,4);wr(0x26b50,rd(0x26b50)&0x3fffffff);time.sleep(.03)
        wr(0x9668,0);wr(0x9660,(4<<16)|(11<<8)|9);time.sleep(.008)
        state=rd(0x9664);field('la_en',0);wr(0x9660,(4<<16)|(11<<8))
        data=(dbg/'iq_memory').read_bytes()[:65536]
        test['tones'].append(dict(offset_hz=offset,state=hex(state),fft=fft(data,offset)))
    a,b=test['tones'];test['tone_delta_hz']=a['fft']['peak_hz']-b['fft']['peak_hz']
    test['pass']=abs(test['tone_delta_hz']-1e6)<10000 and all(abs(t['fft']['peak_hz']-t['offset_hz'])<100000 and t['fft']['peak_median_db']>20 for t in test['tones'])
    s.tx_hardwaregain_chan0=-89.75;s.tx_destroy_buffer();lo.attrs['powerdown'].value='1'
original_country=re.search(r'country (\w\w):',cmd('reg','get').stdout)[1]
try:
    cmd('reg','set','CA');time.sleep(.3)
    s.sample_rate=4000000;s.tx_rf_bandwidth=3000000;s.tx_cyclic_buffer=True
    wr(0x8938,(rd(0x8938)&~0xc00)|0x400);wr(0x8924,(rd(0x8924)&~0x80000)|8)

    def gated_write(addr,value):
        addresses=[0x704,0x730,0xe610,0xc60,0xc74,0xc58,0x6b54,0x1008,0xe414,0x2adc,0x40ec,0x50ec]
        backup={a+0x20000:rd(a+0x20000) for a in addresses}
        def masked(a,m,v):
            a+=0x20000
            if a not in backup:backup[a]=rd(a)
            wr(a,(rd(a)&~m)|((v<<((m&-m).bit_length()-1))&m))
        try:
            masked(0x704,0x1000,0);masked(0x730,0x2000,0);masked(0xe610,8,1)
            masked(0x704,2,0);time.sleep(.000001)
            for a,m,v in [(0xc60,0xc0000,0),(0xc60,0xf00,1),(0xc74,0x30,3),(0xc58,0x100000,1),(0x6b54,0xf,3),(0x1008,0x800000,1),(4,0xf00000,2),(4,0xf00,1),(0xe414,0x800,1),(0x2adc,0x1f8000,0x3f),(0x40ec,0x3f000,0xf),(0x50ec,0x3f000,0xf),(0x2adc,0x3000,3)]:
                masked(a,m,v)
            masked(0x704,2,1);time.sleep(.000003)
            wr(0x22ae0,((value&0xfffff)<<8)|(addr&0xff));time.sleep(.0001)
            masked(0x704,2,0)
        finally:
            for a,v in reversed(list(backup.items())):wr(a,v)
    for baseline,mhz in [(2412,2412),(2412,2413),(2412,2387),(5180,5180),(5180,5181),(5180,4800)]:
      for pair in [(0x25,0x26),(0xc6,0xc7)]:
        cmd('dev',iface,'set','freq',str(5180 if baseline<3000 else 2412),'HT20').check_returncode()
        cmd('dev',iface,'set','freq',str(baseline),'HT20').check_returncode();time.sleep(.02)
        before={a:rfr(0,a) for a in pair}
        test=dict(mhz=mhz,baseline_mhz=baseline,pair=[hex(a) for a in pair],before=regs(),tones=[]);report['tests'].append(test)
        try:
            scale=(.4 if baseline<3000 else .2) if pair[0]==0x25 else (.32 if baseline<3000 else .16)
            div=mhz*scale;integer=int(div);frac=round((div-integer)*(1<<20));mask=0x7ff if pair[0]==0x25 else 0x3ff
            gated_write(pair[0],(before[pair[0]]&~mask)|integer);gated_write(pair[1],frac)
            test['requested']=[integer,frac];test['immediate']=regs()
            if test['immediate']['0:18']==0xfffff:raise RuntimeError('RF controller inaccessible; reject experiment')
            wr(0x26b4c,(rd(0x26b4c)&~0x1fff)|mhz);wr(0x26b50,(rd(0x26b50)&~0x7f)|round((1<<18)/mhz))
            time.sleep(.02);test['after']=regs();tones(test)
            print('GATED',mhz,test['pair'],test['pass'],[hex(test['immediate']['0:'+format(a,'x')]) for a in pair],flush=True)
        finally:
            for a,v in before.items():gated_write(a,v)
finally:
    signal.alarm(0)
    s.tx_hardwaregain_chan0=-89.75;s.tx_destroy_buffer();lo.attrs['powerdown'].value='1'
    field('la_en',0);wr(0x9660,0)
    for (p,a),v in rf_saved.items():rfw(p,a,v)
    cmd('dev',iface,'set','freq','2412','HT20');cmd('reg','set',original_country)
    for a,v in saved.items():wr(a,v)
    for k,v in original.items():setattr(s,k,v)
    lo.attrs['powerdown'].value=powerdown
    report['pluto_restored']={k:getattr(s,k) for k in keys};report['tx_powerdown_restored']=lo.attrs['powerdown'].value
    (out/'report.json').write_text(json.dumps(report,indent=2))
