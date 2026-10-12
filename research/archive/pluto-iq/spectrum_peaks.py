import numpy as np,json
from pathlib import Path
f=Path('output/rtl8922-pluto-qualification');r=json.loads((f/'report.json').read_text())
for t in r['tests']:
 raw=np.fromfile(f/t['file'],dtype='<u8');bits=12 if t['format']==1 else 14
 vals=[]
 for k in range(2):
  a=((raw>>np.uint64(k*bits))&np.uint64((1<<bits)-1)).astype(np.int32);a[a>=1<<(bits-1)]-=1<<bits;vals.append(a)
 z=vals[0]+1j*vals[1];z-=z.mean();p=np.abs(np.fft.fft(z*np.hanning(len(z))))**2;ff=np.fft.fftfreq(len(z));ii=np.argsort(p)[::-1];chosen=[]
 for i in ii:
  if abs(ff[i])<.0005 or any(abs(ff[i]-ff[j])<.002 for j in chosen):continue
  chosen.append(i)
  if len(chosen)>=8:break
 print(t['file'],t['pluto_baseband_hz'],[(round(float(ff[i]),6),round(float(10*np.log10((p[i]+1e-20)/(np.median(p)+1e-20)))),2) for i in chosen])
