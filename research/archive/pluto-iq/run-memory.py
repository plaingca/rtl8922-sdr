import sys
sys.path.insert(0,'.')
from pathlib import Path
import base64,control,json
root='/home/plaing/rtl8922-iq-research/'
s=Path('tmp/pluto-iq/qualify.py').read_text().replace("root/'pluto-qualification-path1'","root/'memory-qualification'")
a=s.index('    for num,(tune,offset,rate,fmt,source,gain)');b=s.index('\nfinally:',a)
s=s[:a]+'''    result=capture('reference',2,0,6)
    expected=(out/'reference.bin').read_bytes()
    timings=[]
    for i in range(8):
        t=time.monotonic();data=(dbg/'iq_memory').read_bytes();elapsed=time.monotonic()-t
        assert data==expected,'binary aperture read disagrees with existing readout'
        timings.append(elapsed)
    result['binary_read_seconds']=timings;result['binary_MBps']=[len(data)/t/1e6 for t in timings]
    result['fastest_supported_record_rate_estimate']=len(data)/min(timings)/8
    report['tests'].append(result);print(json.dumps(result),flush=True)
    setup(2,0,6);field('la_and1_mask',0xffffffff);field('la_and1_val',0x5a5a5a5a)
    config=(3<<16)|(11<<8)|1;wr(0x9660,config|8)
    points=[];t=time.monotonic()
    for i in range(15):
        points.append([time.monotonic()-t,hex(rd(0x9664))]);time.sleep(.005)
    wr(0x9660,0);field('la_en',0)
    report['continuous_engine_probe']=points
    print(json.dumps({'continuous_engine_probe':points}),flush=True)
'''+s[b:]
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/memory.py"')
for data,name in [(s,'memory.py'),(script,'memory.sh')]:
 r=control.ssh_execute('beastmode','echo '+base64.b64encode(data.encode()).decode()+' | base64 -d > '+root+name,30);assert r['exit_code']==0,r
r=control.ssh_execute('beastmode','sudo -n bash '+root+'memory.sh',120)
Path('output/rtl8922-memory-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))
