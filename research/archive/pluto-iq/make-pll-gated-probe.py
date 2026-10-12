from pathlib import Path
s=Path('tmp/pluto-iq/synth-tone-probe-v2.py').read_text().replace("out=root/'synth-tone-probe-v2'","out=root/'pll-gated-probe'")
a=s.index('    cases=');b=s.index('finally:\n    signal.alarm',a)
s=s[:a]+'''
    def gated_write(addr,value):
        addresses=[0x704,0x730,0xe610,0xc60,0xc74,0xc58,0x6b54,0x1008,0xe414,0x2adc,0x40ec,0x50ec]
        backup={a:rd(a) for a in addresses}
        def masked(a,m,v):wr(a,(rd(a)&~m)|((v<<((m&-m).bit_length()-1))&m))
        try:
            masked(0x704,0x1000,0);masked(0x730,0x2000,0);masked(0xe610,8,1)
            masked(0x704,2,0);time.sleep(.000001)
            for a,m,v in [(0xc60,0xc0000,0),(0xc60,0xf00,1),(0xc74,0x30,3),(0xc58,0x100000,1),(0x6b54,0xf,3),(0x1008,0x800000,1),(4,0xf00000,2),(4,0xf00,1),(0xe414,0x800,1),(0x2adc,0x1f8000,0x3f),(0x40ec,0x3f000,0xf),(0x50ec,0x3f000,0xf),(0x2adc,0x3000,3)]:
                if a not in backup:backup[a]=rd(a)
                masked(a,m,v)
            masked(0x704,2,1);time.sleep(.000003)
            rfw(0,addr,value)
            masked(0x704,2,0)
        finally:
            for a,v in reversed(list(backup.items())):wr(a,v)
    for baseline,mhz in [(2412,2413),(2412,2387),(2412,2520),(5180,5181),(5180,4800),(5180,4500)]:
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
            wr(0x26b4c,(rd(0x26b4c)&~0x1fff)|mhz);wr(0x26b50,(rd(0x26b50)&~0x7f)|round((1<<18)/mhz))
            time.sleep(.02);test['after']=regs();tones(test)
            print('GATED',mhz,test['pair'],test['pass'],[hex(test['immediate']['0:'+format(a,'x')]) for a in pair],flush=True)
        finally:
            for a,v in before.items():gated_write(a,v)
'''+s[b:]
Path('tmp/pluto-iq/pll-gated-probe.py').write_bytes(s.encode())
