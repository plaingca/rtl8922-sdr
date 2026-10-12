from pathlib import Path
s=Path('tmp/pluto-iq/pll-gated-probe.py').read_text().replace("out=root/'pll-gated-probe'","out=root/'pll-port-probe'")
s=s.replace('rfw(0,addr,value)','wr(0x2ae0,((value&0xfffff)<<8)|(addr&0xff));time.sleep(.0001)')
s=s.replace("[(2412,2413),(2412,2387),(2412,2520),(5180,5181),(5180,4800),(5180,4500)]","[(2412,2412),(2412,2413),(2412,2387),(5180,5180),(5180,5181),(5180,4800)]")
s=s.replace("test['requested']=[integer,frac];test['immediate']=regs()","test['requested']=[integer,frac];test['immediate']=regs()\n            if test['immediate']['0:18']==0xfffff:raise RuntimeError('RF controller inaccessible; reject experiment')")
Path('tmp/pluto-iq/pll-port-probe.py').write_bytes(s.encode())
