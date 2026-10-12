import json,time,urllib.request
from pathlib import Path
base='http://127.0.0.1:8732'
def frame():return json.load(urllib.request.urlopen(base+'/api/frame',timeout=5))
def tune(m):
    req=urllib.request.Request(base+'/api/tune',data=json.dumps({'mhz':m}).encode(),headers={'Content-Type':'application/json'})
    return json.load(urllib.request.urlopen(req,timeout=5))
results=[]
for m in [2478.123456,2484,5005,5400.123456,5400.123457,5600.123456,5945.123456,6001.234567,7115,5400.123456]:
    old=frame();start=time.monotonic();tune(m)
    while time.monotonic()-start<5:
        f=frame()
        if f.get('live') and abs(f.get('frequency',0)-m*1e6)<.01 and f.get('frame',0)>old.get('frame',0):break
        time.sleep(.05)
    else:raise RuntimeError(f'Tune failed at {m}: {f.get("events")}')
    results.append({k:f[k] for k in ['frequency','rf_center','generation','samples','errors','frame']})
    results[-1]['latency_ms']=round((time.monotonic()-start)*1000,2)
old=frame();tune(4000);time.sleep(.3);f=frame()
assert f['live'] and f['frequency']==old['frequency'] and any(x.startswith('TUNE_ERROR') for x in f['events'])
# Clear the expected rejected-command notice before handoff.
tune(5400.123456);time.sleep(.2);old=frame();time.sleep(5);f=frame()
assert f['live'] and f['samples']>old['samples']
r={'tunes':results,'invalid_4000_preserved_stream':True,'five_second_sample_delta':f['samples']-old['samples'],'five_second_interruptions_delta':f['errors']-old['errors'],'five_second_recoveries_delta':f.get('recoveries',0)-old.get('recoveries',0),'final_frequency':f['frequency'],'note':'No Pluto TX during interactive-demo checks; RF tone tests saved separately. Any receive restart is counted, not treated as gapless.'}
Path('output/rtl8922-free-live-check.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))
