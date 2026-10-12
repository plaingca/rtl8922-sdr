from pathlib import Path
p=Path('tmp/pluto-iq/run-cpuio.py');s=p.read_text();a=s.index('    old=rd(0xc04)');b=s.index("'"*3+"+s[b:]",a)
s=s[:a]+'''    (out/'rom.bin').write_bytes((dbg/'iq_rom').read_bytes())
    old=rd(0xc04);wr(0xc04,0x18000000)
    print('PLATFORM',hex(rd(0x88)),flush=True)
    for base in range(0,0xd000,0x1000):
        print('PLATREGS',hex(base),json.dumps({hex(a):hex(rd(0x80000+base+a)) for a in list(range(0,0x60,4))+[0xe0,0xe4,0xe8,0xec,0xf0,0xfc]}),flush=True)
    wr(0xc04,old)
'''+s[b:];s=s.replace('rtl8922-cpuio-run.json','rtl8922-rom-run.json');Path('tmp/pluto-iq/run-rom.py').write_text(s)

