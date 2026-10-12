import sys
sys.path.insert(0,'.')
from pathlib import Path
import base64,control
for name in ['stream-hooks.c','install-stream.py']:
 r=control.ssh_execute('beastmode','echo '+base64.b64encode(Path('tmp/pluto-iq',name).read_bytes()).decode()+' | base64 -d > /home/plaing/rtl8922-iq-research/'+name,20);assert r['exit_code']==0,r
