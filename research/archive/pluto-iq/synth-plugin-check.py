import json,subprocess,os,time,re,signal
from pathlib import Path
import numpy as np
import adi
root=Path('/home/plaing/rtl8922-iq-research'); out=root/'synth-plugin-check';out.mkdir(exist_ok=True)
iw=str(root/'iw-local/sbin/iw');country=re.search(r'country (\w\w):',subprocess.check_output([iw,'reg','get'],text=True))[1]
s=adi.Pluto('ip:192.168.2.1');s._ctx.set_timeout(3000)
keys=['sample_rate','rx_lo','tx_lo','rx_rf_bandwidth','tx_rf_bandwidth','tx_hardwaregain_chan0'];original={k:getattr(s,k) for k in keys};lo=s._ctrl.find_channel('altvoltage1',True);pd=lo.attrs['powerdown'].value
report={'original_pluto':original,'original_powerdown':pd,'tests':[]}
assert pd=='1', 'Existing Pluto TX is active'
try:
    subprocess.run([iw,'reg','set','CA'],check=True);time.sleep(.3)
    s.tx_hardwaregain_chan0=-89.75;s.tx_destroy_buffer();lo.attrs['powerdown'].value='1';s.sample_rate=4000000;s.tx_rf_bandwidth=3000000;s.tx_cyclic_buffer=True
    for hz,rate in [(h,20000000) for h in [2312000000,2347123456,2382000000,2412000000,2484000000,2500000000,2505123456,2515000000,4900000000,4940123456,5000000000,5400123456,5945123456]]+[(h,r) for h in [2347123456,4940123456] for r in [1250000,5000000]]:
        result={'frequency_hz':hz,'rate':rate,'tones':[]}
        for offset in [250000,-250000]:
            s.tx_hardwaregain_chan0=-89.75;s.tx_destroy_buffer();lo.attrs['powerdown'].value='1';s.tx_lo=hz;s.tx_hardwaregain_chan0=0;lo.attrs['powerdown'].value='0';s.tx(24576*np.exp(2j*np.pi*offset/int(s.sample_rate)*np.arange(16384)));time.sleep(.03)
            name=f'{hz}-{rate}-{offset}.cf32';env={**os.environ,'RTL8922_TEST_FREQUENCY':str(hz),'RTL8922_TEST_RATE':str(rate),'RTL8922_CAPTURE_FILE':str(out/name)}
            capture=subprocess.run([str(root/'soapy/free-capture-check')],env=env,capture_output=True,text=True,timeout=12)
            t={'offset_hz':offset,'returncode':capture.returncode,'stdout':capture.stdout,'stderr':capture.stderr}
            if capture.returncode==0:
                z=np.fromfile(out/name,dtype=np.complex64);z=z[8192:];p=abs(np.fft.fft((z-z.mean())*np.hanning(len(z))))**2;f=np.fft.fftfreq(len(z),1/rate);p[abs(f)<20000]=0;k=int(np.argmax(p));t.update(peak_hz=float(f[k]),peak_median_db=float(10*np.log10(p[k]/np.median(p))))
            result['tones'].append(t)
        plus,minus=result['tones']; result['pass']=all(t['returncode']==0 and abs(t.get('peak_hz',1e99)-t['offset_hz'])<60000 and t.get('peak_median_db',0)>25 for t in result['tones']) and abs(plus.get('peak_hz',0)-minus.get('peak_hz',0)-500000)<3000
        report['tests'].append(result);(out/'report.json').write_text(json.dumps(report,indent=2));print(json.dumps(result),flush=True)
finally:
    s.tx_hardwaregain_chan0=-89.75;s.tx_destroy_buffer();lo.attrs['powerdown'].value='1'
    for k,v in original.items():setattr(s,k,v)
    lo.attrs['powerdown'].value=pd
    subprocess.run([iw,'reg','set',country],check=True)
    report['restored_pluto']={k:getattr(s,k) for k in keys};report['restored_powerdown']=lo.attrs['powerdown'].value;report['restored_country']=country;(out/'report.json').write_text(json.dumps(report,indent=2))
