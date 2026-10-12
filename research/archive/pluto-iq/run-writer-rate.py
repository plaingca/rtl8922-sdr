import sys
sys.path.insert(0,'.')
from pathlib import Path
import base64,control,json
root='/home/plaing/rtl8922-iq-research/'
s=Path('tmp/pluto-iq/qualify.py').read_text().replace("root/'pluto-qualification-path1'","root/'cpuio-test'").replace('==1601','==1089')
a=s.index('    for num,(tune,offset,rate,fmt,source,gain)');b=s.index('\nfinally:',a)
s=s[:a]+'''    fs=int(s.sample_rate);n=np.arange(16384);s.tx_hardwaregain_chan0=0;lo.attrs['powerdown'].value='0';s.tx(24576*np.exp(2j*np.pi*125000/fs*n));time.sleep(.1)
    for width,fmt,rt in [('HT20',14,4),('HT40+',14,3),('HT40+',14,4),('HT20',14,3),('HT40+',0,3)]:
        subprocess.run([str(root/'iw-local/sbin/iw'),'dev',iface,'set','freq','2412',width],check=True)
        s.tx_lo=2422000000 if width=='HT40+' else 2412000000
        setup(2,fmt,rt);config=(4<<16)|(11<<8)|1;wr(0x9660,config);wr(0x9660,config|8)
        begin=time.monotonic_ns();last_time=begin;last=0;total=0;intervals=[]
        while time.monotonic_ns()-begin<300000000:
            status=rd(0x9664);now=time.monotonic_ns();wp=status&65535;total+=(wp+40960-last)%40960
            intervals.append([now-last_time,(wp+40960-last)%40960]);last=wp;last_time=now;time.sleep(.0003)
        elapsed=time.monotonic_ns()-begin;loss=rd(0x966c);wr(0x9660,config&~1);field('la_en',0)
        raw=(dbg/'iq_memory').read_bytes();(out/f'nofetch-{width}-{fmt}-{rt}.bin').write_bytes(raw)
        report['tests'].append({'width':width,'format':fmt,'selector':rt,'records':total,'elapsed_ns':elapsed,'records_per_second':total*1e9/elapsed,'maximum_poll_gap_ns':max(x[0] for x in intervals),'loss':hex(loss),'status':hex(status),'intervals':intervals})
        print(json.dumps({k:v for k,v in report['tests'][-1].items() if k!='intervals'}),flush=True)
'''+s[b:]
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/cpuio-test.py"')
for data,name in [(s,'cpuio-test.py'),(script,'cpuio-test.sh')]:
 r=control.ssh_execute('beastmode','echo '+base64.b64encode(data.encode()).decode()+' | base64 -d > '+root+name,30);assert r['exit_code']==0,r
r=control.ssh_execute('beastmode','sudo -n bash '+root+'cpuio-test.sh',120)
Path('output/rtl8922-writer-rate-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))

