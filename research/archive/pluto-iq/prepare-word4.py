from pathlib import Path
p=Path('tmp/pluto-iq/cpuio-hooks.c');s=p.read_text().replace('command != 0 &&','command != 0 && command != 8 && command != 104 &&').replace('values[1] = id | (1 << 16);','values[1] = id | (1 << 16);\n        values[4] = command;');p.write_text(s)
p=Path('tmp/pluto-iq/run-iddma-marker.py');s=p.read_text().replace('[96,128]','[8,64,96,104]').replace('rtl8922-iddma-marker-run.json','rtl8922-length-word4-run.json');Path('tmp/pluto-iq/run-length-word4.py').write_text(s)
