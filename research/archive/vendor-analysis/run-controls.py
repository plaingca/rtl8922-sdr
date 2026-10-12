import sys
sys.path.insert(0,'.')
import pathlib,base64,control,json
root='/home/plaing/rtl8922-iq-research/'
s=pathlib.Path('tmp/rtl8922-vendor/capture.py').read_text().replace("root/'captures'","root/'captures-controls'")
s=s.replace("for num,(source,fmt,rate) in enumerate([(3,1,2),(3,1,2),(2,1,2),(3,0,0)]):","for num,(source,fmt,rate,paths) in enumerate([(3,1,2,[0,0,0,0]),(3,1,2,[1,1,1,1]),(3,1,2,[1,0,1,0])]):")
s=s.replace("zip('abcd',[0,1,0,1])","zip('abcd',paths)").replace("'source':source,'format':fmt","'source':source,'paths':paths,'format':fmt")
data=base64.b64encode(s.encode()).decode()
r=control.ssh_execute('beastmode',f'echo {data} | base64 -d > {root}capture.py',30); assert r['exit_code']==0,r
r=control.ssh_execute('beastmode',f'sudo -n bash {root}la-capture.sh',120)
pathlib.Path('output/rtl8922-la-controls-run.json').write_text(json.dumps(r,indent=2))
print(json.dumps(r,indent=2))
