from pathlib import Path
exec(Path('tmp/pluto-iq/make-synth-tone-probe.py').read_text())
s=Path('tmp/pluto-iq/synth-tone-probe.py').read_text().replace("out=root/'synth-tone-probe'", "out=root/'synth-tone-probe-v2'")
s=s.replace("cmd('dev',iface,'set','freq',str(baseline),'HT20').check_returncode();time.sleep(.03)", "cmd('dev',iface,'set','freq',str(5180 if baseline<3000 else 2412),'HT20').check_returncode();cmd('dev',iface,'set','freq',str(baseline),'HT20').check_returncode();time.sleep(.03)")
a=s.index('    cases=');b=s.index('    for method',a)
s=s[:a]+"    cases=[('vendor',2412,ch,2407+5*ch) for ch in [1,15,16,17,18,19]] + [('control25',2412,None,m) for m in [2413,2407,2387]] + [('gate25',2412,None,m) for m in [2413,2407,2387]] + [('gatec6',2412,None,m) for m in [2413,2407]] + [('control25',5180,None,5181),('gate25',5180,None,5181),('gatec6',5180,None,5181)]\n"+s[b:]
s=s.replace("        else:\n            scale=.32", "        elif method in ['control25','gate25']:\n            if method=='gate25':rfw(0,5,0)\n            div=mhz*(.4 if baseline<3000 else .2);integer=int(div);frac=round((div-integer)*(1<<20))\n            test['divider']=[integer,frac]\n            rfw(0,0x25,(rfr(0,0x25)&~0x7ff)|integer);rfw(0,0x26,frac)\n            test['immediate']=regs()\n            if method=='gate25':rfw(0,5,0x41)\n        else:\n            if method=='gatec6':rfw(0,5,0)\n            scale=.32")
s=s.replace("rfw(0,0xc7,frac)\n", "rfw(0,0xc7,frac)\n            test['immediate']=regs()\n            if method=='gatec6':rfw(0,5,0x41)\n")
Path('tmp/pluto-iq/synth-tone-probe-v2.py').write_bytes(s.encode())
