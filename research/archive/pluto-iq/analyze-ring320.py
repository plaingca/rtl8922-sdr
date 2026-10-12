from pathlib import Path
import json,numpy as np,struct
r=Path('output/rtl8922-ring320-captures');report=json.loads((r/'report.json').read_text());out=[]
for test in report['tests']:
 raw=np.frombuffer((r/test['file']).read_bytes(),dtype='<u8');raw=np.roll(raw,-(int(test['status'],16)&65535))
 x=np.stack([((raw>>np.uint64(i*14))&np.uint64(16383)).astype(np.int32) for i in range(2)],axis=1);x[x>=8192]-=16384
 z=x[:,0]+1j*x[:,1];blocks=[]
 for start in range(0,len(z),8192):
  y=z[start:start+8192];p=np.abs(np.fft.fft((y-y.mean())*np.hanning(len(y))))**2;k=p.argmax()
  blocks.append({'start_record':start,'peak_hz_at_nominal_rate':float(np.fft.fftfreq(len(y),1/1250000)[k]),'peak_to_median_db':float(10*np.log10(p[k]/np.median(p))),'std_iq':x[start:start+8192].std(axis=0).tolist()})
 out.append({'file':test['file'],'bytes':len(raw)*8,'blocks':blocks})
Path('output/rtl8922-ring320-analysis.json').write_text(json.dumps(out,indent=2))
print(json.dumps(out,indent=2))
