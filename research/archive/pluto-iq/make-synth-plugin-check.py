from pathlib import Path
s=Path('tmp/pluto-iq/free-plugin-check.py').read_text().replace("out=root/'free-plugin-check'","out=root/'synth-plugin-check'")
a=s.index('    for hz,rate in ');b=s.index(':\n        result=',a)
s=s[:a]+"    for hz,rate in [(h,20000000) for h in [2312000000,2347123456,2382000000,2412000000,2484000000,2500000000,2505123456,2515000000,4900000000,4940123456,5000000000,5400123456,5945123456]]+[(h,r) for h in [2347123456,4940123456] for r in [1250000,5000000]]"+s[b:]
s=s.replace('try:\n    subprocess.run',"assert pd=='1', 'Existing Pluto TX is active'\ntry:\n    subprocess.run")
Path('tmp/pluto-iq/synth-plugin-check.py').write_bytes(s.encode())
s=Path('tmp/pluto-iq/analyze-free-plugin.py').read_text().replace('/free-plugin-check','/synth-plugin-check')
Path('tmp/pluto-iq/analyze-synth-plugin.py').write_bytes(s.encode())
