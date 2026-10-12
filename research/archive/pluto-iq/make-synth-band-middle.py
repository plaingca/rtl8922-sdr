from pathlib import Path
exec(Path('tmp/pluto-iq/make-synth-band-edges.py').read_text())
s=Path('tmp/pluto-iq/synth-band-edges.py').read_text().replace("out=root/'synth-band-edges'","out=root/'synth-band-middle'")
s=s.replace("[(0,2,list(range(0,20))+[25,36,100]),(0,1,[36,64,100,149,165,180,200]),(1,2,[180,182,184,188,192,196,198,200])]", "[(0,1,list(range(100,145,2))),(1,2,[178,179,181,199,201,202,205,210])]" )
Path('tmp/pluto-iq/synth-band-middle.py').write_bytes(s.encode())
