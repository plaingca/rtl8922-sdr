import json,time,urllib.request,pathlib
base='http://127.0.0.1:8732'
def get():return json.load(urllib.request.urlopen(base+'/api/frame',timeout=5))
def post(path,obj):return json.load(urllib.request.urlopen(urllib.request.Request(base+path,data=json.dumps(obj).encode(),headers={'Content-Type':'application/json'}),timeout=5))
def compact(f):return {k:f.get(k) for k in ['live','frame','samples','frequency','rate','errors','recoveries','peak_hz','peak_dbfs','tone']}
r={'before':compact(get())}
try:
 r['tone_start']=post('/api/tone',{'enabled':True,'follow':True,'offset_khz':500,'gain_db':-10,'seconds':5})
 time.sleep(1)
 f=get();r['on']=compact(f)
 bins=f['fft'];n=len(bins);eligible=[i for i in range(n) if abs((i-n/2)*f['rate']/n)>25000]
 k=max(eligible,key=lambda i:bins[i]);r['on']['non_dc_peak_hz']=(k-n/2)*f['rate']/n
 r['on']['non_dc_peak_above_median_db']=bins[k]-sorted(bins)[n//2]
 time.sleep(5)
 r['expired']=compact(get())
 assert r['on']['live'] and abs(r['on']['non_dc_peak_hz']-500000)<100000
 assert not r['expired']['tone']['enabled'] and r['expired']['tone']['restored']
 assert r['expired']['samples']>r['before']['samples'] and r['expired']['errors']==0
finally:r['off']=post('/api/tone',{'enabled':False})
pathlib.Path('output/rtl8922-pll-followup-live.json').write_text(json.dumps(r,indent=2))
print(json.dumps(r,indent=2))
