import sys
sys.path.insert(0,'.')
from pathlib import Path
import control,base64
r=control.ssh_execute('beastmode','echo '+base64.b64encode(Path('tmp/pluto-iq/install-drain.py').read_bytes()).decode()+' | base64 -d > /home/plaing/rtl8922-iq-research/install-drain.py',20);assert r['exit_code']==0,r
