import sys
sys.path.insert(0,'.')
import base64,control
from pathlib import Path
for name in ['cpuio-hooks.c','install-cpuio-hooks.py']:
 data=Path('tmp/pluto-iq',name).read_text().encode()
 result=control.ssh_execute('beastmode','echo '+base64.b64encode(data).decode()+' | base64 -d > /home/plaing/rtl8922-iq-research/'+name,20)
 assert result['exit_code']==0,result
