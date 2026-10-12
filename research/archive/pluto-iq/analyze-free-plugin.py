import json,re
from pathlib import Path
import numpy as np
base=Path('/home/plaing/rtl8922-iq-research/free-plugin-check')
r=json.loads((base/'report.json').read_text())
for case in r['tests']:
    hz,rate=case['frequency_hz'],case['rate']
    for t in case['tones']:
        if t['returncode']:continue
        z=np.fromfile(base/f"{hz}-{rate}-{t['offset_hz']}.cf32",dtype=np.complex64)[8192:]
        p=abs(np.fft.fft((z-z.mean())*np.hanning(len(z))))**2
        f=np.fft.fftfreq(len(z),1/rate)
        rfcenter=float(re.search(r'RF_CENTER ([0-9.]+)',t['stdout'])[1])
        dc=rfcenter-hz
        # NCO moves analog DC away from output0. Preserve the original
        # dominant peak, then measure RF tone excluding only known DC.
        t['dc_offset_hz']=dc
        p[(abs(f)<20000)|(abs(f-dc)<20000)]=0
        k=int(np.argmax(p))
        t['dc_excluded_peak_hz']=float(f[k])
        t['dc_excluded_peak_median_db']=float(10*np.log10(p[k]/np.median(p)))
    a,b=case['tones']
    case['rf_tone_pass_with_dc_exclusion']=all(t['returncode']==0 and abs(t.get('dc_excluded_peak_hz',1e99)-t['offset_hz'])<60000 and t.get('dc_excluded_peak_median_db',0)>25 for t in case['tones']) and abs(a.get('dc_excluded_peak_hz',0)-b.get('dc_excluded_peak_hz',0)-500000)<3000
    print(hz,rate,case['rf_tone_pass_with_dc_exclusion'],[(round(t.get('dc_excluded_peak_hz',0)),round(t.get('dc_excluded_peak_median_db',0),1)) for t in case['tones']])
r['analysis_note']='Original dominant peaks retained. Analog DC is shifted to rf_center-requested_frequency by NCO; second analysis excludes +/-20kHz around that frequency and output0. Both tone positions must move500kHz.'
(base/'analyzed-report.json').write_text(json.dumps(r,indent=2))
