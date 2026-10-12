import json
import time
import urllib.request
from pathlib import Path

base = 'http://127.0.0.1:8732'
def frame():
    return json.load(urllib.request.urlopen(base+'/api/frame', timeout=5))
def tune(mhz):
    req=urllib.request.Request(base+'/api/tune',data=json.dumps({'mhz':mhz}).encode(),headers={'Content-Type':'application/json'})
    return json.load(urllib.request.urlopen(req,timeout=5))
results=[]
for mhz in [5180,5180.25,5825,5955,5995,6415,7115,2437]:
    before=frame();start=time.monotonic();tune(mhz)
    while time.monotonic()-start<6:
        f=frame()
        if f.get('live') and f.get('frequency')==mhz*1e6 and f.get('frame',0)>before.get('frame',0):break
        time.sleep(.05)
    else:raise RuntimeError(f'Tune failed: {mhz}, {f.get("events")}')
    results.append({k:f[k] for k in ['frequency','rf_center','generation','frame','samples','errors','age_ms','peak_dbfs','rms']})
    results[-1]['tune_ms']=round((time.monotonic()-start)*1000,2)
    time.sleep(.25)
before=frame();tune(5600);time.sleep(.3);after=frame()
invalid={'requested_mhz':5600,'preserved_frequency':after['frequency']==before['frequency'], 'live':after['live'],'events':after['events']}
assert invalid['preserved_frequency'] and invalid['live'] and any('TUNE_ERROR' in x for x in invalid['events'])
start=frame();time.sleep(5);end=frame()
assert end['live'] and end['samples']>start['samples'] and end['errors']==start['errors']
report={'cross_band_tunes':results,'invalid_preserves_stream':invalid,'five_second_stream_check':{'sample_delta':end['samples']-start['samples'],'error_delta':end['errors']-start['errors']},'note':'Live received noise/signals; no Pluto transmitter enabled. Does not further qualify upper6GHz RF.'}
Path('output/rtl8922-live-demo-check.json').write_text(json.dumps(report,indent=2))
print(json.dumps(report,indent=2))
