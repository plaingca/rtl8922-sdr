import pathlib,json,re,struct,time,hashlib,collections,math,sys,signal,subprocess
import numpy as np
import adi
root=pathlib.Path('/home/plaing/rtl8922-iq-research')
exec((root/'capture-original.py').read_text().split("report={'time_utc'")[0])
out=root/'free-tuning-probe';out.mkdir(exist_ok=True)
def interrupted(*args): raise TimeoutError('bounded RF experiment ended')
signal.signal(signal.SIGTERM,interrupted);signal.signal(signal.SIGINT,interrupted);signal.signal(signal.SIGALRM,interrupted);signal.alarm(100)
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
try:
    assert rd(0x8c08)>>16&8191==1408 and rd(0x9008)>>16&8191==1089
    s.tx_hardwaregain_chan0=-89.75;s.tx_destroy_buffer();lo.attrs['powerdown'].value='1'
    s.sample_rate=4000000;s.tx_rf_bandwidth=3000000;s.tx_lo=2412000000;s.tx_cyclic_buffer=True
    iw=str(root/'iw-local/sbin/iw')
    def cmd(*args):return subprocess.run([iw,*args],capture_output=True,text=True,timeout=5)
    report['original_regulatory']=cmd('reg','get').stdout
    original_country=re.search(r'country (\w\w):',report['original_regulatory']).group(1)
    report['world_phy']=cmd('phy').stdout
    report['regulatory_request_CA']={'returncode':(r:=cmd('reg','set','CA')).returncode,'stderr':r.stderr}
    time.sleep(.3);report['test_regulatory']=cmd('reg','get').stdout;report['test_phy']=cmd('phy').stdout
    def rfread(path,addr):
        (dbg/'read_rf').write_text(f'{path} {addr:x} fffff\n')
        return int(re.findall(r'0x[0-9a-fA-F]+',(dbg/'read_rf').read_text())[-1],16)
    def rfwrite(path,addr,value):
        (dbg/'write_rf').write_text(f'{path} {addr:x} fffff {value:x}\n')
    rf_original={(p,a):rfread(p,a) for p in (0,1) for a in (0x18,0x10018)}
    points=[(2,0,2407),(2,1,2412),(2,13,2472),(2,14,2477),(2,14,2484),(2,15,2487),(2,19,2507),(2,25,2537),
            (5,1,5005),(5,20,5100),(5,35,5175),(5,68,5340),(5,80,5400),(5,96,5480),(5,120,5600),
            (5,169,5845),(5,177,5885),(5,180,5900),(5,182,5910),(5,189,5945),(5,196,5980),(5,199,5995),
            (6,0,5950),(6,2,5960),(6,10,6000)]
    def fft(data):
        x=np.frombuffer(data,dtype=np.int8).reshape(-1,2);z=x[:,0].astype(float)+1j*x[:,1];z-=z.mean()
        p=abs(np.fft.fft(z*np.hanning(len(z))))**2;f=np.fft.fftfreq(len(z),1/20000000);p[abs(f)<25000]=0;k=int(np.argmax(p));image=np.flatnonzero(abs(f+f[k])<3000)
        return {'peak_hz':float(f[k]),'peak_median_db':float(10*np.log10(p[k]/max(np.median(p),1e-20))),'image_rejection_db':float(10*np.log10(p[k]/max(p[image].max(),1e-20))),'rms':float(np.sqrt(np.mean(abs(z)**2)))}
    wr(0x8938,(rd(0x8938)&~0xc00)|0x400);wr(0x8924,(rd(0x8924)&~0x80000)|8)
    for band,ch,mhz in points:
        s.tx_hardwaregain_chan0=-89.75;s.tx_destroy_buffer();lo.attrs['powerdown'].value='1'
        baseline=2412 if band==2 else 5180 if band==5 else 5955
        r=cmd('dev',iface,'set','freq',str(baseline),'HT20');test={'band':band,'rf_channel':ch,'baseline_mhz':baseline,'mhz':mhz,'tune_returncode':r.returncode,'tune_error':r.stderr.strip(),'tones':[]}
        if r.returncode:report['tests'].append(test);continue
        test['iw_info']=cmd('dev',iface,'info').stdout
        field('la_en',0)
        bandbits=0 if band==2 else 0x10100 if band==5 else 0x30000
        for path in (0,1):
            for addr in (0x18,0x10018):
                value=(rfread(path,addr)&~0x31fff)|bandbits|ch
                rfwrite(path,addr,value);time.sleep(.0001)
        # Match the receive BB central-frequency and inverse-frequency fields.
        wr(0x26b4c,(rd(0x26b4c)&~0x1fff)|mhz)
        wr(0x26b50,(rd(0x26b50)&~0x7f)|round((1<<18)/mhz))
        test['rf_readback']={f'{p}:{a:x}':hex(rfread(p,a)) for p in (0,1) for a in (0x18,0x10018)}
        time.sleep(.02)

        if mhz<=6000:
            s.tx_lo=mhz*1000000;test['pluto_actual_lo']=int(s.tx_lo)
        for offset in ([500000,-500000] if mhz<=6000 else [None]):
            s.tx_hardwaregain_chan0=-89.75;s.tx_destroy_buffer();lo.attrs['powerdown'].value='1'
            if offset is not None:
                fs=int(s.sample_rate);n=np.arange(16384);s.tx_hardwaregain_chan0=0;lo.attrs['powerdown'].value='0';s.tx(24576*np.exp(2j*np.pi*offset/fs*n))
            setup(2,14,4);wr(0x26b50,rd(0x26b50)&0x3fffffff);time.sleep(.03)
            wr(0x9668,0);wr(0x9660,(4<<16)|(11<<8)|9);time.sleep(.006)
            state=rd(0x9664);field('la_en',0);wr(0x9660,(4<<16)|(11<<8))
            data=(dbg/'iq_memory').read_bytes()[:65536];name=f'frozen-{mhz}-{offset}.bin';(out/name).write_bytes(data)
            result={'offset_hz':offset,'state':hex(state),'file':name,'fft':fft(data)}
            test['tones'].append(result)
        if mhz<=6000:
            plus,minus=test['tones'];delta=plus['fft']['peak_hz']-minus['fft']['peak_hz'];test['tone_delta_hz']=delta
            test['rf_tone_pass']=abs(delta-1000000)<10000 and min(t['fft']['peak_median_db'] for t in test['tones'])>30 and all(abs(t['fft']['peak_hz']-t['offset_hz'])<100000 for t in test['tones'])
            # One bounded PCIe stream per measured center, using the last (-500kHz) tone.
            setup(2,14,4);wr(0x26b50,rd(0x26b50)&0x3fffffff);(dbg/'iq_pipeline').write_text('Y');(dbg/'iq_chunk_bytes').write_text('8192');(dbg/'iq_sample_rate').write_text('5000000');(dbg/'iq_drain').write_bytes(b'1')
            tail=out/f'tail-{mhz}.bin';result=subprocess.run([str(root/'raw-drain-fast'),str(dbg),'100',str(tail)],capture_output=True,text=True,timeout=5)
            test['transport']={'returncode':result.returncode,'host':result.stdout,'stderr':result.stderr,'producer':(dbg/'iq_stream').read_text()}
            if tail.exists() and tail.stat().st_size:test['transport']['fft']=fft(tail.read_bytes())
        else:test['rf_tone_pass']=None;test['limitation']='Tuned and captured data only; Pluto reference cannot exceed6GHz.'
        report['tests'].append(test);print(json.dumps(test),flush=True);(out/'report.json').write_text(json.dumps(report,indent=2))

finally:
    if 'rf_original' in globals():
        field('la_en',0)
        for (p,a),v in rf_original.items():rfwrite(p,a,v)
    if 'original_country' in globals():
        cmd('reg','set',original_country);time.sleep(.2);report['restored_regulatory']=cmd('reg','get').stdout
    s.tx_hardwaregain_chan0=-89.75;s.tx_destroy_buffer();lo.attrs['powerdown'].value='1'
    for k,v in original.items():setattr(s,k,v)
    lo.attrs['powerdown'].value=powerdown
    for a,v in reversed(list(saved.items())):
        if a==0x9660:v&=~9
        (dbg/'write_reg').write_text(f'{a:x} {v:x} 4\n')
    report['pluto_restored']={k:getattr(s,k) for k in keys};report['tx_powerdown_restored']=lo.attrs['powerdown'].value
    (out/'report.json').write_text(json.dumps(report,indent=2));signal.alarm(0)
