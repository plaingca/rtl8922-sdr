import sys
sys.path.insert(0,'.')
from pathlib import Path
import base64,control,json
root='/home/plaing/rtl8922-iq-research/'
s=Path('tmp/pluto-iq/qualify.py').read_text().replace("root/'pluto-qualification-path1'","root/'ring320-qualification'")
s=s.replace('(3<<16)', '(4<<16)').replace('==1601','==1089')
s=s.replace('def capture(name,source,fmt,rate):', '''def dump():
    return (dbg/'iq_memory').read_bytes()

def capture(name,source,fmt,rate):''')
a=s.index('    for num,(tune,offset,rate,fmt,source,gain)');b=s.index('\nfinally:',a)
s=s[:a]+'''    fs=int(s.sample_rate);n=np.arange(16384)
    s.tx_hardwaregain_chan0=-10;lo.attrs['powerdown'].value='0';s.tx(8192*np.exp(2j*np.pi*125000/fs*n))
    for i in range(3):
        result=capture(f'capture-{i}',2,0,6)
        assert (out/f'capture-{i}.bin').stat().st_size==0x50000
        report['tests'].append(result);print(json.dumps(result),flush=True)
    setup(2,0,6);field('la_and1_mask',0xffffffff);field('la_and1_val',0x5a5a5a5a)
    config=(4<<16)|(11<<8)|1;wr(0x9660,config|8)
    points=[];t=time.monotonic()
    for i in range(25):
        points.append([time.monotonic()-t,hex(rd(0x9664))]);time.sleep(.002)
    wr(0x9660,0);field('la_en',0)
    report['continuous_ring']=points
    report['partition']={hex(a):hex(rd(a)) for a in (0x8c08,0x9008)}
    print(json.dumps({'continuous_ring':points,'partition':report['partition']}),flush=True)
'''+s[b:]
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/ring320.py"')
for data,name in [(s,'ring320.py'),(script,'ring320.sh')]:
 r=control.ssh_execute('beastmode','echo '+base64.b64encode(data.encode()).decode()+' | base64 -d > '+root+name,30);assert r['exit_code']==0,r
r=control.ssh_execute('beastmode','sudo -n bash '+root+'ring320.sh',120)
Path('output/rtl8922-ring320-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))
