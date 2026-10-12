from pathlib import Path
s=Path('tmp/pluto-iq/frequency-coverage-test.py').read_text().split('try:\n    assert rd')[0]
s=s.replace("out=root/'frequency-coverage-test'", "out=root/'synth-tone-probe'")
s=s.replace('signal.alarm(100)','signal.alarm(110)')
s+='''
assert powerdown == '1', 'Existing Pluto TX is active'
iw=str(root/'iw-local/sbin/iw')
def cmd(*args):return subprocess.run([iw,*args],capture_output=True,text=True,timeout=5)
rf_saved={}
def rfr(path,addr):
    (dbg/'read_rf').write_text(f'{path} {addr:x} fffff\\n')
    return int(re.findall(r'0x[0-9a-fA-F]+',(dbg/'read_rf').read_text())[-1],16)
def rfw(path,addr,value):
    if (path,addr) not in rf_saved:rf_saved[path,addr]=rfr(path,addr)
    (dbg/'write_rf').write_text(f'{path} {addr:x} fffff {value&0xfffff:x}\\n')
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
original_country=re.search(r'country (\\w\\w):',cmd('reg','get').stdout)[1]
try:
    cmd('reg','set','CA');time.sleep(.3)
    s.sample_rate=4000000;s.tx_rf_bandwidth=3000000;s.tx_cyclic_buffer=True
    wr(0x8938,(rd(0x8938)&~0xc00)|0x400);wr(0x8924,(rd(0x8924)&~0x80000)|8)
    cases=[('channel',2412,0,2407),('vendor',2412,0,2407),('vendor',2412,15,2482),('vendor',2412,19,2502),('vendor',2412,25,2532),('divider',2412,None,2413),('divider',2412,None,2407),('divider',2412,None,2387),('divider',5180,None,5181),('divider',5180,None,4980),('divider',5955,None,5900)]
    for method,baseline,ch,mhz in cases:
        field('la_en',0);wr(0x9660,0)
        cmd('dev',iface,'set','freq',str(baseline),'HT20').check_returncode();time.sleep(.03)
        test=dict(method=method,baseline_mhz=baseline,ch=ch,mhz=mhz,before=regs(),tones=[])
        report['tests'].append(test)
        if method in ['channel','vendor']:
            for path in [0,1]:
                if method=='vendor':rfw(path,5,0);rfw(path,0,0x30000)
                rfw(path,0x18,(rfr(path,0x18)&~0xff)|ch)
                time.sleep(.0004)
                if method=='vendor':rfw(path,5,0x41)
                rfw(path,0x10018,(rfr(path,0x10018)&~0xff)|ch)
        else:
            scale=.32 if baseline<3000 else .16 if baseline<5955 else 2/15
            div=mhz*scale;integer=int(div);frac=round((div-integer)*(1<<20))
            test['divider']=[integer,frac]
            rfw(0,0xc6,(rfr(0,0xc6)&~0x3ff)|integer);rfw(0,0xc7,frac)
        wr(0x26b4c,(rd(0x26b4c)&~0x1fff)|mhz);wr(0x26b50,(rd(0x26b50)&~0x7f)|round((1<<18)/mhz))
        time.sleep(.03);test['after']=regs();tones(test)
        print('SYNTH',method,mhz,test['pass'],[(t['fft']['peak_hz'],t['fft']['peak_median_db']) for t in test['tones']],flush=True)
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
'''
Path('tmp/pluto-iq/synth-tone-probe.py').write_bytes(s.encode())
