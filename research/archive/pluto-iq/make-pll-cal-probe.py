from pathlib import Path
s=Path('tmp/pluto-iq/synth-tone-probe-v2.py').read_text().replace("out=root/'synth-tone-probe-v2'","out=root/'pll-cal-probe'")
a=s.index('    cases=');b=s.index('finally:\n    signal.alarm',a)
s=s[:a]+'''
    cases=[(2412,0x1),(2387,0x210),(2402,0x213),(2520,0x168),(2700,0x18c),(4000,0x10201),(4800,0x102a0),(4900,0x102b4)]
    for mhz,code in cases:
      for mode in ['control','lck','vco0','vco1','sel0','sel1','sel2','sel3']:
        field('la_en',0);wr(0x9660,0)
        baseline=2412 if mhz<3000 else 5180
        cmd('dev',iface,'set','freq',str(5180 if baseline<3000 else 2412),'HT20').check_returncode()
        cmd('dev',iface,'set','freq',str(baseline),'HT20').check_returncode();time.sleep(.01)
        before={(p,a):rfr(p,a) for p in [0,1] for a in [0,5,0x18,0x10018,0xd3,0xd6,0xb2]}
        test=dict(mhz=mhz,code=hex(code),mode=mode,before=regs(),tones=[]);report['tests'].append(test)
        try:
          for path in [0,1]:
            rfw(path,5,0);rfw(path,0,0x30000)
            if mode.startswith('vco'):rfw(path,0xd6,(rfr(path,0xd6)&~0x80000)|(int(mode[-1])<<19))
            if mode.startswith('sel'):rfw(path,0xb2,(rfr(path,0xb2)&~0x300)|(int(mode[-1])<<8))
            if mode!='control':rfw(path,0xd3,0x3103)
            rfw(path,0x18,(rfr(path,0x18)&~0x303ff)|code)
            if mode!='control':rfw(path,0xd3,0x3003)
          time.sleep(.0004)
          for path in [0,1]:
            rfw(path,5,0x41);rfw(path,0x10018,(rfr(path,0x10018)&~0x303ff)|code)
          wr(0x26b4c,(rd(0x26b4c)&~0x1fff)|mhz);wr(0x26b50,(rd(0x26b50)&~0x7f)|round((1<<18)/mhz))
          time.sleep(.02);test['after']=regs();tones(test)
          print('PLL',mhz,mode,test['pass'],hex(test['after']['0:b2']),[(round(t['fft']['peak_hz']),round(t['fft']['peak_median_db'],1)) for t in test['tones']],flush=True)
        finally:
          for (path,addr),value in before.items():rfw(path,addr,value)
'''+s[b:]
Path('tmp/pluto-iq/pll-cal-probe.py').write_bytes(s.encode())
