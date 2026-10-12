import json,time,urllib.request,urllib.error
from pathlib import Path
BASE='http://127.0.0.1:8732'
def get():return json.load(urllib.request.urlopen(BASE+'/api/frame',timeout=10))
def post(path,data):
    return json.load(urllib.request.urlopen(urllib.request.Request(BASE+path,data=json.dumps(data).encode(),headers={'Content-Type':'application/json'}),timeout=15))
results=[]
until=time.monotonic()+15
while time.monotonic()<until:
    try:
        if get().get('live'):break
    except Exception:pass
    time.sleep(.2)
else:raise RuntimeError('Receiver did not start')
try:
    post('/api/tone',dict(enabled=True,follow=True,offset_khz=500,gain_db=0,seconds=120))
    for m in [2312,2347.123456,2382,2412,2500,2505.123456,2515,4900,4940.123456,5000,5400.123456,2312]:
        post('/api/tune',{'mhz':m});until=time.monotonic()+8
        while time.monotonic()<until:
            f=get()
            if f['live'] and abs(f['frequency']-m*1e6)<1 and f['tone']['enabled'] and abs(f['tone']['center_hz']-m*1e6)<10:break
            time.sleep(.05)
        else:raise RuntimeError('Tune or tone-follow failed')
        time.sleep(.25);f=get();offset=f['tone']['rf_hz']-f['frequency']
        bins=[(-10e6+i*20e6/2048,v) for i,v in enumerate(f['fft'])]
        peak=max((p for p in bins if abs(p[0]-offset)<100000),key=lambda p:p[1]);median=sorted(f['fft'])[1024]
        row=dict(frequency_hz=f['frequency'],peak_offset_hz=peak[0],above_median_db=peak[1]-median,errors=f['errors'],recoveries=f['recoveries'])
        results.append(row);assert row['above_median_db']>20,row
    old=get();post('/api/tune',{'mhz':2400});time.sleep(.2);f=get();assert f['live'] and f['frequency']==old['frequency'] and any(e.startswith('TUNE_ERROR') for e in f['events'])
    post('/api/tune',{'mhz':2312});time.sleep(.2);old=get();time.sleep(5);f=get()
    report=dict(tunes=results,rejected_gap_preserved_stream=True,fixed_5s_samples=f['samples']-old['samples'],fixed_5s_interruptions=f['errors']-old['errors'],fixed_5s_recoveries=f['recoveries']-old['recoveries'])
finally:
    off=post('/api/tone',{'enabled':False})
Path('output/rtl8922-synth-live-check.json').write_text(json.dumps({**report,'tone_off':off},indent=2))
print(json.dumps(report,indent=2))
