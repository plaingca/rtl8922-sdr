import numpy as np,json
from pathlib import Path
def signal_data(folder,test):
 raw=np.fromfile(folder/test['file'],dtype='<u8');status=int(test['status'],16)
 if status&65536:raw=np.roll(raw,-(status&65535))
 bits=12 if test['format']==1 else 14
 x=np.stack([((raw>>np.uint64(bits*k))&np.uint64((1<<bits)-1)).astype(np.int32) for k in range(2)],axis=1);x[x>=1<<(bits-1)]-=1<<bits
 z=x[:,0]+1j*x[:,1];z-=z.mean();return z
def refine_peak(z,lo,hi):
 p=np.abs(np.fft.fft(z*np.hanning(len(z))))**2;f=np.fft.fftfreq(len(z));idx=np.where((f>=lo)&(f<=hi))[0];i=idx[np.argmax(p[idx])]
 a,b,c=np.log(p[(np.array([i-1,i,i+1])%len(p))]+1e-30);delta=.5*(a-c)/(a-2*b+c)
 return float(f[i]+delta/len(z)),float(10*np.log10(p[i]/np.median(p)))
f=Path('output/rtl8922-pluto-path1');report=json.loads((f/'report.json').read_text());single=[]
for t in report['tests']:
 z=signal_data(f,t);peak=t['pairs'][0]['peak_cycles_per_sample'];fr,snr=refine_peak(z,peak-.002,peak+.002)
 single.append({'file':t['file'],'source':t['source'],'receiver_mhz':t['receiver_mhz'],'rate_selector':t['rate_selector'],'tone_hz':t['pluto_baseband_hz'],'tx_gain_db':t['tx_gain_db'],'peak_cycles_per_sample_refined':fr,'peak_to_median_db':snr})
fs0=1500000/(single[1]['peak_cycles_per_sample_refined']-single[2]['peak_cycles_per_sample_refined'])
offset=single[0]['peak_cycles_per_sample_refined']*fs0-500000
f=Path('output/rtl8922-pluto-rates');r=json.loads((f/'report.json').read_text());rates=[]
nominal={0:80e6,1:40e6,2:20e6,3:10e6,4:5e6,5:2.5e6,6:1.25e6,7:160e6,8:80e6}
for t in r['tests']:
 z=signal_data(f,t);fs=nominal[t['rate_selector']]
 a,sa=refine_peak(z,90000/fs,145000/fs);b,sb=refine_peak(z,-285000/fs,-230000/fs)
 estimate=375000/(a-b)
 rates.append({'selector':t['rate_selector'],'tested_rate_hz':fs,'estimated_rate_relative_to_pluto_clock_hz':estimate,'difference_ppm':(estimate/fs-1)*1e6,'tone1_cycles_per_sample':a,'tone2_cycles_per_sample':b,'peak_to_median_db':[sa,sb],'cfo_hz':a*estimate-125000,'status':t['status'],'note':'selector 8 behaves as 80 MS/s in this setup; 320 MS/s is not validated' if t['rate_selector']==8 else ''})
result={'single_tones':single,'approximate_20Msps_from_separate_tones_hz':fs0,'relative_frequency_offset_hz':offset,'rates':rates,'interpretation':{'format0':'LE64: signed I14 bits0:13, signed Q14 bits14:27; upper36 original-header bits zero in these tests','format1':'LE64: signed I12 bits0:11,Q12 bits12:23, second stream I12 bits24:35,Q12 bits36:47; upper16 original-header bits zero','orientation':'I+jQ with those fields maps higher RF frequency to positive baseband frequency','absolute_polarity':'Global complex phase/sign cannot be calibrated uniquely over an unreferenced RF path. No absolute I/Q sign claim.','clock_reference':'Frequency spacing is relative to the Pluto clock; neither oscillator was compared with a calibrated external reference.','frequency_offset':'Approximately -13 kHz at 2.412 GHz between these two radios, varies during experiments; do not interpret entirely as Realtek error.'}}
Path('output/rtl8922-pluto-characterization.json').write_text(json.dumps(result,indent=2));print(json.dumps({'fs20':fs0,'cfo':offset,'rates':rates},indent=2))
