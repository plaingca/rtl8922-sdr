import sys
sys.path.insert(0,'.')
from pathlib import Path
import base64,control,json
root='/home/plaing/rtl8922-iq-research/'
s=Path('tmp/pluto-iq/qualify.py').read_text().replace("root/'pluto-qualification-path1'","root/'pluto-qualification-rates'")
a=s.index('    for num,(tune,offset,rate,fmt,source,gain)');b=s.index('\nfinally:',a)
s=s[:a]+'''    fs=int(s.sample_rate);n=np.arange(32768)
    s.tx_hardwaregain_chan0=-10;lo.attrs['powerdown'].value='0'
    s.tx(4096*(np.exp(2j*np.pi*125000/fs*n)+np.exp(-2j*np.pi*250000/fs*n)))
    for num,rate in enumerate([6,5,4,3,2,1,0,7,8]):
        result=capture(f'rate-{rate}',2,0,rate)
        result.update({'receiver_mhz':2412,'pluto_lo':int(s.tx_lo),'pluto_sample_rate':fs,'tones_hz':[125000,-250000],'tx_gain_db':-10})
        report['tests'].append(result);print(json.dumps(result),flush=True)
        (out/'report.json').write_text(json.dumps(report,indent=2))
'''+s[b:]
script=Path('tmp/rtl8922-la-capture.sh').read_text().replace('python3 "$base/capture.py"','"$base/pluto-venv/bin/python" "$base/rates.py"')
for data,name in [(s,'rates.py'),(script,'rates.sh')]:
 r=control.ssh_execute('beastmode','echo '+base64.b64encode(data.encode()).decode()+' | base64 -d > '+root+name,30);assert r['exit_code']==0,r
r=control.ssh_execute('beastmode','sudo -n bash '+root+'rates.sh',120)
Path('output/rtl8922-rates-run.json').write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))
