import sys
sys.path.insert(0,'.')
import pathlib,base64,control,json
root='/home/plaing/rtl8922-iq-research/'
s=pathlib.Path('tmp/rtl8922-la-readback.sh').read_text().replace('cd "$base/rtw89"','cd "$base/la-driver"').replace('install -m 644 firmware/rtw8922a_fw-4.bin','install -m 644 "$base/rtw89/firmware/rtw8922a_fw-4.bin"')
s=s[:s.index('for address in')]+'python3 "$base/capture.py"\n'
pathlib.Path('tmp/rtl8922-la-capture.sh').write_text(s)
for local,remote in [('output/rtl8922-la-registers.json','la-registers.json'),('tmp/rtl8922-vendor/capture.py','capture.py'),('tmp/rtl8922-la-capture.sh','la-capture.sh')]:
    data=base64.b64encode(pathlib.Path(local).read_text().encode()).decode()
    r=control.ssh_execute('beastmode',f'echo {data} | base64 -d > {root+remote}',30)
    assert r['exit_code']==0,r
r=control.ssh_execute('beastmode',f'sudo -n bash {root}la-capture.sh',120)
pathlib.Path('output/rtl8922-la-capture-run.json').write_text(json.dumps(r,indent=2))
print(json.dumps(r,indent=2))
