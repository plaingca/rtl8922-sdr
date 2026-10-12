from pathlib import Path
s=Path('tmp/pluto-iq/run-packed-phase.py').read_text();s=s.replace('1125000','125000');s=s.replace('for fmt,rdrdy in [(0,0),(12,0),(12,1),(12,2),(14,0),(14,1),(14,2)]:','for fmt,small,rt,txlo in [(14,0,4,2412000000),(14,0,4,2420000000),(12,2,3,2412000000),(12,2,3,2416000000)]:');s=s.replace('        setup(2,fmt,4);field(\'r_dma_rdrdy\',rdrdy)', '''        rdrdy=0
        s.tx_hardwaregain_chan0=-89.75;s.tx_destroy_buffer();lo.attrs['powerdown'].value='1';s.tx_lo=txlo;s.tx_hardwaregain_chan0=0;lo.attrs['powerdown'].value='0';s.tx(24576*np.exp(2j*np.pi*125000/fs*n));time.sleep(.1)
        setup(2,fmt,rt);wr(0x26b50,(rd(0x26b50)&0x3fffffff)|(small<<30))''')
s=s.replace("f'packed-{fmt}-{rdrdy}.bin'","f'packed-{fmt}-{txlo}.bin'");s=s.replace("'rdrdy':rdrdy", "'rdrdy':rdrdy,'smallbw':small,'rate_selector':rt,'RF_offset_hz':txlo-2412000000+125000")
s=s.replace("z=x[:,::2]+1j*x[:,1::2];result", "z=x[:,::2]+1j*x[:,1::2];z-=z.mean(axis=0);result")
s=s.replace('rtl8922-packed-phase-run','rtl8922-packed-wideband-run');Path('tmp/pluto-iq/run-packed-wideband.py').write_text(s)
