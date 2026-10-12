import sys,time,json
sys.path.insert(0,'.')
from pathlib import Path
import control
rows=[]
for n in range(12):
 t=time.monotonic();r=control.ssh_execute('beastmode',"ps -p 3296362 -o pid=,stat=,etimes=; tail -4 /home/plaing/rtl8922-iq-research/yield300.log",20)
 row={'probe':n,'latency_seconds':time.monotonic()-t,**r};rows.append(row);Path('output/rtl8922-yield300-responsiveness.json').write_text(json.dumps(rows,indent=2));print(json.dumps(row),flush=True)
 if r['exit_code']==0 and 'CLEANUP_DONE' in r['stdout']:break
 time.sleep(30)
