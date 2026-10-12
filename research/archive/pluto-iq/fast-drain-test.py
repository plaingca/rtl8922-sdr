import pathlib,json,re,struct,time,hashlib,collections,math,sys,signal,subprocess
import numpy as np
import adi
root=pathlib.Path('/home/plaing/rtl8922-iq-research')
exec((root/'capture-original.py').read_text().split("report={'time_utc'")[0])
out=root/'fast-drain-test';out.mkdir(exist_ok=True)
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
    wr(0x8938,(rd(0x8938)&~0xc00)|0x400);wr(0x8924,(rd(0x8924)&~0x80000)|8)
    import os
    for bandwidth,center,clock,rawrate in [(40,2422,3,10000000),(80,5210,2,20000000),(160,5250,1,40000000)]:
        s.tx_hardwaregain_chan0=-89.75;s.tx_destroy_buffer();lo.attrs['powerdown'].value='1'
        args=['2412','HT40+'] if bandwidth==40 else ['5180',str(bandwidth),str(center)]
        tune=subprocess.run([str(root/'iw-local/sbin/iw'),'dev',iface,'set','freq']+args,capture_output=True,text=True)
        if tune.returncode:
            report['tests'].append({'bandwidth':bandwidth,'tune_error':tune.stderr});continue
        s.tx_lo=center*1000000;s.tx_hardwaregain_chan0=0;lo.attrs['powerdown'].value='0'
        fs=int(s.sample_rate);n=np.arange(16384);s.tx(24576*np.exp(2j*np.pi*125000/fs*n));time.sleep(.1)
        setup(2,14,clock)
        wr(0x9668,0);wr(0x9660,(4<<16)|(11<<8)|9);time.sleep(.01)
        field('la_en',0);wr(0x9660,(4<<16)|(11<<8))
        frozen=(dbg/'iq_memory').read_bytes();(out/f'frozen-{bandwidth}.bin').write_bytes(frozen)
        def fft(data):
            x=np.frombuffer(data,dtype=np.int8).reshape(-1,2);z=x[:,0].astype(float)+1j*x[:,1];z-=z.mean()
            p=abs(np.fft.fft(z*np.hanning(len(z))))**2;f=np.fft.fftfreq(len(z),1/(bandwidth*1000000));p[abs(f)<20000]=0;k=int(np.argmax(p));im=int(np.argmin(abs(f+f[k])))
            return {'global_peak_hz':float(f[k]),'peak_median_db':float(10*np.log10(p[k]/max(np.median(p),1e-20))),'image_db':float(10*np.log10(p[k]/max(p[im],1e-20)))}
        frozen_fft=fft(frozen)
        for chunk in [8192,10240]:
            setup(2,14,clock);(dbg/'iq_pipeline').write_text('Y');(dbg/'iq_chunk_bytes').write_text(str(chunk));(dbg/'iq_sample_rate').write_text(str(rawrate));(dbg/'iq_drain').write_bytes(b'1')
            dest=out/f'tail-{bandwidth}-{chunk}.bin'
            result=subprocess.run([str(root/'raw-drain-fast'),str(dbg),'1000',str(dest)],capture_output=True,text=True,timeout=10)
            test={'bandwidth':bandwidth,'rawrate':rawrate,'chunk':chunk,'host':result.stdout,'stderr':result.stderr,'returncode':result.returncode,'producer':(dbg/'iq_stream').read_text(),'drops':(dbg/'scope_dropped').read_text(),'frozen_fft':frozen_fft}
            if dest.exists() and dest.stat().st_size:test['tail_fft']=fft(dest.read_bytes())
            report['tests'].append(test);print(json.dumps(test),flush=True);(out/'report.json').write_text(json.dumps(report,indent=2))

finally:
    s.tx_hardwaregain_chan0=-89.75;s.tx_destroy_buffer();lo.attrs['powerdown'].value='1'
    for k,v in original.items():setattr(s,k,v)
    lo.attrs['powerdown'].value=powerdown
    for a,v in reversed(list(saved.items())):
        if a==0x9660:v&=~9
        (dbg/'write_reg').write_text(f'{a:x} {v:x} 4\n')
    report['pluto_restored']={k:getattr(s,k) for k in keys};report['tx_powerdown_restored']=lo.attrs['powerdown'].value
    (out/'report.json').write_text(json.dumps(report,indent=2));signal.alarm(0)
