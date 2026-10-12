import json
import subprocess
import sys
from pathlib import Path
sys.path.insert(0,'.')
import control

s=Path('tmp/pluto-iq/frequency-coverage-test.py').read_text()
s=s.replace("root/'frequency-coverage-test'", "root/'free-tuning-probe'")
a=s.index('    channels=[]'); b=s.index('    def fft(data):',a)
s=s[:a]+'''    def rfread(path,addr):
        (dbg/'read_rf').write_text(f'{path} {addr:x} fffff\\n')
        return int(re.findall(r'0x[0-9a-fA-F]+',(dbg/'read_rf').read_text())[-1],16)
    def rfwrite(path,addr,value):
        (dbg/'write_rf').write_text(f'{path} {addr:x} fffff {value:x}\\n')
    rf_original={(p,a):rfread(p,a) for p in (0,1) for a in (0x18,0x10018)}
    points=[(2,0,2407),(2,1,2412),(2,13,2472),(2,14,2477),(2,14,2484),(2,15,2487),(2,19,2507),(2,25,2537),
            (5,1,5005),(5,20,5100),(5,35,5175),(5,68,5340),(5,80,5400),(5,96,5480),(5,120,5600),
            (5,169,5845),(5,177,5885),(5,180,5900),(5,182,5910),(5,189,5945),(5,196,5980),(5,199,5995),
            (6,0,5950),(6,2,5960),(6,10,6000)]
'''+s[b:]
s=s.replace('    for mhz in points:', '    for band,ch,mhz in points:')
s=s.replace("r=cmd('dev',iface,'set','freq',str(mhz),'HT20');test={'mhz':mhz", "baseline=2412 if band==2 else 5180 if band==5 else 5955\n        r=cmd('dev',iface,'set','freq',str(baseline),'HT20');test={'band':band,'rf_channel':ch,'baseline_mhz':baseline,'mhz':mhz")
needle="        test['iw_info']=cmd('dev',iface,'info').stdout"
s=s.replace(needle,needle+'''
        field('la_en',0)
        bandbits=0 if band==2 else 0x10100 if band==5 else 0x30000
        for path in (0,1):
            for addr in (0x18,0x10018):
                value=(rfread(path,addr)&~0x31fff)|bandbits|ch
                rfwrite(path,addr,value);time.sleep(.0001)
        # Match the receive BB central-frequency and inverse-frequency fields.
        wr(0x26b4c,(rd(0x26b4c)&~0x1fff)|mhz)
        wr(0x26b50,(rd(0x26b50)&~0x7f)|round((1<<18)/mhz))
        test['rf_readback']={f'{p}:{a:x}':hex(rfread(p,a)) for p in (0,1) for a in (0x18,0x10018)}
        time.sleep(.02)
''')
s=s.replace("finally:\n    if 'original_country'", "finally:\n    if 'rf_original' in globals():\n        field('la_en',0)\n        for (p,a),v in rf_original.items():rfwrite(p,a,v)\n    if 'original_country'")
Path('tmp/pluto-iq/free-tuning-probe.py').write_bytes(s.encode())
wrapper=Path('tmp/rtl8922-la-capture.sh').read_text().replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/free-tuning-probe.py"')
Path('tmp/pluto-iq/free-tuning-probe.sh').write_bytes(wrapper.encode())
opts=['-q','-o','BatchMode=yes','-o','StrictHostKeyChecking=yes','-o','HostName=10.0.10.204','-o','HostKeyAlias=beastmode']
remote='/home/plaing/rtl8922-iq-research/'
for name in ['free-tuning-probe.py','free-tuning-probe.sh']:
    subprocess.run(['scp',*opts,'tmp/pluto-iq/'+name,'beastmode:'+remote+name],check=True,timeout=30)
r=control.ssh_execute('beastmode','sudo -n bash '+remote+'free-tuning-probe.sh > '+remote+'free-tuning-probe.log 2>&1; tail -8 '+remote+'free-tuning-probe.log',120)
Path('output/rtl8922-free-probe-run.json').write_text(json.dumps(r,indent=2))
subprocess.run(['scp',*opts,'beastmode:'+remote+'free-tuning-probe/report.json','output/rtl8922-free-probe-report.json'],check=True,timeout=30)
r=json.loads(Path('output/rtl8922-free-probe-report.json').read_text())
for t in r['tests']:
    print(t['band'],t['rf_channel'],t['mhz'],t.get('rf_tone_pass'),[(round(x['fft']['peak_hz']),round(x['fft']['peak_median_db'],1)) for x in t['tones']],t.get('transport',{}).get('host',''))
