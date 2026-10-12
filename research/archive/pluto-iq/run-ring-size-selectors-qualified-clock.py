import sys,base64,json,subprocess
from pathlib import Path
sys.path.insert(0,'.')
import control
root='/home/plaing/rtl8922-iq-research/'
s=Path('tmp/pluto-iq/qualify.py').read_text().replace("root/'pluto-qualification-path1'","root/'ring-size-selectors-qualified-clock'").replace('==1601','==577')
a=s.index('    for num,(tune,offset,rate,fmt,source,gain)');b=s.index('\nfinally:',a)
s=s[:a]+'''    s.tx_lo=2412000000;s.tx_hardwaregain_chan0=0;lo.attrs['powerdown'].value='0'
    fs=int(s.sample_rate);n=np.arange(16384);s.tx(24576*np.exp(2j*np.pi*125000/fs*n));time.sleep(.1)
    setup(2,14,4);field('la_trigger_cnt',255)
    # Qualified raw 5M records/s; stop threshold is below reserved 49152 records.
    for selector in [4,5,6,7,8,15]:
        config=(selector<<16)|(11<<8)|1
        wr(0x9668,0);wr(0x9660,config);wr(0x9660,config|8)
        history=[];start=time.monotonic_ns();last=start;reason='deadline'
        while time.monotonic_ns()-start<450000000:
            value=rd(0x9664);now=time.monotonic_ns();history.append({'ns':now-start,'value':value,'wp':value&65535,'state':value>>17&7})
            if value&65535>=43008:reason='beyond_320K';break
            if now-last>1000000:reason='poll_guard';break
            if value>>17&7!=1:reason='state_change';break
            last=now;time.sleep(.0002)
        cfg=rd(0x9660);wr(0x9660,config&~1)
        item={'selector':selector,'config':hex(cfg),'history':history,'max_wp':max(h['wp'] for h in history),'beyond_old_ring':any(h['wp']>=40960 for h in history),'reason':reason,'states':sorted(set(h['state'] for h in history))}
        report['tests'].append(item);print(json.dumps({k:v for k,v in item.items() if k!='history'}),flush=True)
    field('la_en',0)
'''+s[b:]
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('"$base/la-driver"','"$base/la-driver-ring384"').replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/ring-size-selectors-qualified-clock.py"')
for data,name in [(s,'ring-size-selectors-qualified-clock.py'),(script,'ring-size-selectors-qualified-clock.sh')]:
    r=control.ssh_execute('beastmode','echo '+base64.b64encode(data.encode()).decode()+' | base64 -d > '+root+name,30);assert r['exit_code']==0,r
r=control.ssh_execute('beastmode','sudo -n bash '+root+'ring-size-selectors-qualified-clock.sh > '+root+'ring-size-selectors-qualified-clock.log 2>&1; tail -18 '+root+'ring-size-selectors-qualified-clock.log',120)
Path('output/rtl8922-ring-size-selectors-qualified-clock-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))
subprocess.run(['scp','-q','-o','BatchMode=yes','-o','StrictHostKeyChecking=yes','-o','HostName=10.0.10.204','-o','HostKeyAlias=beastmode','beastmode:'+root+'ring-size-selectors-qualified-clock/report.json','output/rtl8922-ring-size-selectors-qualified-clock-report.json'],check=True,timeout=30)
