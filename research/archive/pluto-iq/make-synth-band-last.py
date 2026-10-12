from pathlib import Path
s=Path('tmp/pluto-iq/synth-band-middle.py').read_text()
a=s.index('    for high,low,chs in ');b=s.index(':\n        for ch in chs:',a)
s=s[:a]+'    for high,low,chs in [(0,1,[99,100,101,102,103,104])]'+s[b:]
s=s.replace("out=root/'synth-band-middle'","out=root/'synth-band-last'")
Path('tmp/pluto-iq/synth-band-last.py').write_bytes(s.encode())
