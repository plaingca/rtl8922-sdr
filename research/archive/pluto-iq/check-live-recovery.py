import json,time,sys,urllib.request
from pathlib import Path
sys.path.insert(0,'.')
import control
def frame():return json.load(urllib.request.urlopen('http://127.0.0.1:8732/api/frame',timeout=3))
before=frame()
assert before['live']
control.ssh_execute('beastmode', "sudo -n sh -c 'printf Y > /sys/kernel/debug/ieee80211/phy0/rtw89/iq_stop'", 10)
start=time.monotonic()
while time.monotonic()-start<10:
    f=frame()
    if f['live'] and f.get('recoveries',0)>before.get('recoveries',0) and f['samples']>before['samples']:break
    time.sleep(.1)
else:raise RuntimeError(str({k:f.get(k) for k in ['live','message','events']}))
r={'injected_fault':'Stop only this demo producer via iq_stop; no RF transmitter active','recovered':True,'recovery_ms':round((time.monotonic()-start)*1000,2),'interruptions_delta':f['errors']-before['errors'],'recoveries_delta':f['recoveries']-before.get('recoveries',0),'frequency_preserved':f['frequency']==before['frequency'],'events':f['events']}
Path('output/rtl8922-live-recovery-check.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))
