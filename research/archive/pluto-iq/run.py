import sys
sys.path.insert(0,'.')
from pathlib import Path
import control,base64,json
root='/home/plaing/rtl8922-iq-research/'
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/qualify.py"')
for data,name in [(Path('tmp/rtl8922-vendor/capture.py').read_text(),'capture-original.py'),(Path('tmp/pluto-iq/qualify.py').read_text(),'qualify.py'),(script,'pluto-qualify.sh')]:
    r=control.ssh_execute('beastmode','echo '+base64.b64encode(data.encode()).decode()+' | base64 -d > '+root+name,30);assert r['exit_code']==0,r
r=control.ssh_execute('beastmode','sudo -n bash '+root+'pluto-qualify.sh',120)
Path('output/rtl8922-pluto-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))
