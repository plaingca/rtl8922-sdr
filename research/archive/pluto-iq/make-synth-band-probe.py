from pathlib import Path
exec(Path('tmp/pluto-iq/make-synth-tone-probe-v2.py').read_text())
s=Path('tmp/pluto-iq/synth-tone-probe-v2.py').read_text().replace("out=root/'synth-tone-probe-v2'","out=root/'synth-band-probe'")
a=s.index('    cases=');b=s.index("        print('SYNTH'",a)
s=s[:a]+'''
    for high in range(4):
      for low in range(4):
        for ch in [1,32,255]:
            field('la_en',0);wr(0x9660,0)
            baseline=2412 if high==0 else 5955 if high==3 else 5180
            cmd('dev',iface,'set','freq',str(5180 if baseline<3000 else 2412),'HT20').check_returncode()
            cmd('dev',iface,'set','freq',str(baseline),'HT20').check_returncode();time.sleep(.01)
            test=dict(method='bandcode',baseline_mhz=baseline,band_high=high,band_low=low,ch=ch,tones=[],before=regs())
            report['tests'].append(test)
            for path in [0,1]:
                rfw(path,5,0);rfw(path,0,0x30000)
                rfw(path,0x18,(rfr(path,0x18)&~0x303ff)|(high<<16)|(low<<8)|ch)
                time.sleep(.0004);rfw(path,5,0x41)
                rfw(path,0x10018,(rfr(path,0x10018)&~0x303ff)|(high<<16)|(low<<8)|ch)
            time.sleep(.015);test['after']=regs()
            n=(test['after']['0:25']&0x7ff)+test['after']['0:26']/(1<<20)
            mhz=round(n*(2.5 if high==0 else 5),3);test['mhz']=mhz
            if 70<=mhz<=5999:
                wr(0x26b4c,(rd(0x26b4c)&~0x1fff)|round(mhz));wr(0x26b50,(rd(0x26b50)&~0x7f)|round((1<<18)/mhz))
                tones(test)
            print('BAND',high,low,ch,mhz,test.get('pass'),hex(test['after']['0:b2']),[(round(t['fft']['peak_hz']),round(t['fft']['peak_median_db'],1)) for t in test['tones']],flush=True)
'''+s[s.index('finally:\n    signal.alarm',b):]
Path('tmp/pluto-iq/synth-band-probe.py').write_bytes(s.encode())
