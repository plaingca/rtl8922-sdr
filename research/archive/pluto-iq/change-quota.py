from pathlib import Path
p=Path('tmp/pluto-iq/run-fullpacket.py');s=p.read_text();s=s.replace('    for command in [64,104,128,512,4096,8192]:', '''    wr(0x9068,(106<<16)|1);wr(0x9010,rd(0x9010)|(10<<24)|(1<<29))
    for command in [64,104,128,512,4096,8192]:''');s=s.replace('rtl8922-fullpacket-run','rtl8922-quota-fullpacket-run');Path('tmp/pluto-iq/run-quota-fullpacket.py').write_text(s)
