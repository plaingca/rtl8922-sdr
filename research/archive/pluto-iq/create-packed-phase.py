from pathlib import Path
s=Path('tmp/pluto-iq/run-la-iddma.py').read_text();a=s.index('    s.tx_hardwaregain_chan0=-10');b=s.index("'''+s[b:]",a)
s=s[:a]+'''    fs=int(s.sample_rate);n=np.arange(16384);s.tx_hardwaregain_chan0=0;lo.attrs['powerdown'].value='0';s.tx(24576*np.exp(2j*np.pi*1125000/fs*n));time.sleep(.1)
    for fmt,rdrdy in [(0,0),(12,0),(12,1),(12,2),(14,0),(14,1),(14,2)]:
        setup(2,fmt,4);field('r_dma_rdrdy',rdrdy)
        config=(4<<16)|(11<<8)|1;wr(0x9660,config);wr(0x9660,config|8);time.sleep(.05)
        status=rd(0x9664);wr(0x9660,config&~1);field('la_en',0)
        raw=np.frombuffer((dbg/'iq_memory').read_bytes(),dtype='<u8');(out/f'packed-{fmt}-{rdrdy}.bin').write_bytes(raw.tobytes())
        bits=14 if fmt==0 else 12 if fmt==12 else 8;phases=1 if fmt==0 else 2 if fmt==12 else 4
        x=np.stack([((raw>>np.uint64(bits*j))&np.uint64((1<<bits)-1)).astype(np.int32) for j in range(phases*2)],axis=1);x[x>=1<<(bits-1)]-=1<<bits
        z=x[:,::2]+1j*x[:,1::2];result={'format':fmt,'rdrdy':rdrdy,'status':hex(status),'std':np.std(x,axis=0).tolist(),'pair_equal':[float(np.mean(z[:,0]==z[:,j])) for j in range(phases)],'phase_vs_first':[float(np.angle(np.vdot(z[:,0],z[:,j]))) for j in range(phases)],'phase_step':float(np.angle(np.vdot(z[:-1,0],z[1:,0])))}
        linear=z.reshape(-1);P=abs(np.fft.fft(linear*np.hanning(len(linear))))**2;P[0]=0;k=int(P.argmax());result['interleaved_peak_hz']=float(np.fft.fftfreq(len(linear),1/(5000000*phases))[k]);result['peak_median_db']=float(10*np.log10(P[k]/np.median(P)))
        report['tests'].append(result);print(json.dumps(result),flush=True)
'''+s[b:]
s=s.replace('rtl8922-la-iddma-run','rtl8922-packed-phase-run');Path('tmp/pluto-iq/run-packed-phase.py').write_text(s)
