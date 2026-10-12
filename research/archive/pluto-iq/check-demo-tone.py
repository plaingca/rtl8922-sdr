import json,time,urllib.request
from pathlib import Path
BASE='http://127.0.0.1:8732'
def get():return json.load(urllib.request.urlopen(BASE+'/api/frame',timeout=10))
def post(path,data):
    req=urllib.request.Request(BASE+path,data=json.dumps(data).encode(),headers={'Content-Type':'application/json'})
    return json.load(urllib.request.urlopen(req,timeout=15))
def tune(m):
    post('/api/tune',{'mhz':m})
    until=time.monotonic()+8
    while time.monotonic()<until:
        f=get()
        if f['live'] and abs(f['frequency']-m*1e6)<1:return
        time.sleep(.1)
    raise RuntimeError('Tune failed')
def tone(offset=500,seconds=60,**kw):return post('/api/tone',dict(enabled=True,follow=True,offset_khz=offset,gain_db=0,seconds=seconds,**kw))
def measure():
    time.sleep(.8)
    rows=[]
    for _ in range(6):
        f=get();t=f['tone'];expect=t['rf_hz']-f['frequency']
        bins=[(-10e6+i*20e6/2048,v) for i,v in enumerate(f['fft'])]
        peak=max((p for p in bins if abs(p[0]-expect)<150000),key=lambda p:p[1])
        median=sorted(f['fft'])[1024]
        rows.append(dict(receiver_hz=f['frequency'],tone=t,peak_offset_hz=peak[0],peak_dbfs=peak[1],above_median_db=peak[1]-median))
        time.sleep(.1)
    return max(rows,key=lambda r:r['above_median_db'])
r={}
try:
    tune(2412);tone();r['positive']=measure()
    tone(-500);r['negative']=measure()
    r['tone_movement_hz']=r['positive']['peak_offset_hz']-r['negative']['peak_offset_hz']
    assert abs(r['tone_movement_hz']-1e6)<20000
    assert min(r['positive']['above_median_db'],r['negative']['above_median_db'])>20
    tune(5400.123456);r['follow_5ghz']=measure()
    assert abs(r['follow_5ghz']['tone']['center_hz']-5400.123456e6)<10
    assert r['follow_5ghz']['above_median_db']>20
    tune(6415);time.sleep(.7);r['above_pluto_range']=get()['tone']
    assert not r['above_pluto_range']['enabled'] and r['above_pluto_range']['restored']
    tune(2412);tone(seconds=5);time.sleep(5.5);r['timer']=get()['tone']
    assert not r['timer']['enabled'] and r['timer']['restored']
    post('/api/tone',dict(enabled=True,follow=False,center_mhz=2412,offset_khz=750,gain_db=0,seconds=60))
    r['fixed']=measure();assert r['fixed']['above_median_db']>20
finally:
    r['off']=post('/api/tone',{'enabled':False})
    Path('output/rtl8922-demo-tone-check.json').write_text(json.dumps(r,indent=2))
print(json.dumps(r,indent=2))
