from pathlib import Path
s=Path('tmp/pluto-iq/pll-port-probe.py').read_text().replace("out=root/'pll-port-probe'","out=root/'pll-port-probe-v2'")
s=s.replace('backup={a:rd(a) for a in addresses}', 'backup={a+0x20000:rd(a+0x20000) for a in addresses}')
s=s.replace('def masked(a,m,v):wr(a,(rd(a)&~m)|((v<<((m&-m).bit_length()-1))&m))','def masked(a,m,v):\n            a+=0x20000\n            if a not in backup:backup[a]=rd(a)\n            wr(a,(rd(a)&~m)|((v<<((m&-m).bit_length()-1))&m))')
s=s.replace('if a not in backup:backup[a]=rd(a)','if a+0x20000 not in backup:backup[a+0x20000]=rd(a+0x20000)',1) if False else s
s=s.replace('                if a not in backup:backup[a]=rd(a)\n                masked(a,m,v)','                masked(a,m,v)')
s=s.replace('wr(0x2ae0,','wr(0x22ae0,')
Path('tmp/pluto-iq/pll-port-probe-v2.py').write_bytes(s.encode())
