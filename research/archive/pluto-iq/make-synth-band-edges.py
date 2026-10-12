from pathlib import Path
exec(Path('tmp/pluto-iq/make-synth-band-probe.py').read_text())
s=Path('tmp/pluto-iq/synth-band-probe.py').read_text().replace("out=root/'synth-band-probe'","out=root/'synth-band-edges'")
s=s.replace("    for high in range(4):\n      for low in range(4):\n        for ch in [1,32,255]:", "    for high,low,chs in [(0,2,list(range(0,20))+[25,36,100]),(0,1,[36,64,100,149,165,180,200]),(1,2,[180,182,184,188,192,196,198,200])]:\n        for ch in chs:")
Path('tmp/pluto-iq/synth-band-edges.py').write_bytes(s.encode())
