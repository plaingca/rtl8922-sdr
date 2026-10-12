from pathlib import Path
p=Path('tmp/pluto-iq/run-rom.py');s=p.read_text().replace("    (out/'rom.bin').write_bytes((dbg/'iq_rom').read_bytes())",'')
s=s.replace("    for base in range(0,0xd000,0x1000):", "    for base in range(0x1000,0xd000,0x1000):\n        wr(0xc04,0x18000000+base)\n        print('FILTER',hex(rd(0xc04)),flush=True)")
s=s.replace('rd(0x80000+base+a)','rd(0x80000+a)');s=s.replace('rtl8922-rom-run.json','rtl8922-plat-run.json');Path('tmp/pluto-iq/run-plat.py').write_text(s)
