import json,subprocess,sys
from pathlib import Path
sys.path.insert(0,'.')
import control
opts=['-q','-o','BatchMode=yes','-o','StrictHostKeyChecking=yes','-o','HostName=10.0.10.204','-o','HostKeyAlias=beastmode']
remote='/home/plaing/rtl8922-iq-research/'
cpp=Path('rtl8922-sdr/capture-check.cpp').read_text()
cpp=cpp.replace('static_cast<uint64_t>(rate*seconds)','65536')
cpp=cpp.replace('rate==40000000?"driver=rtl8922,experimental40=1":"driver=rtl8922"','"driver=rtl8922,free_tuning=1,producer_scheduler=deadline"')
cpp=cpp.replace('rate==40000000?2422000000.:2412000000.','std::atof(std::getenv("RTL8922_TEST_FREQUENCY"))')
cpp=cpp.replace('    dev->deactivateStream(s); dev->closeStream(s); SoapySDR::Device::unmake(dev);\n    out.close();','    std::cout<<"RF_CENTER "<<dev->readSetting("rf_center")<<" OFFSET "<<dev->readSetting("bb_offset")<<std::endl;\n    dev->deactivateStream(s); dev->closeStream(s); SoapySDR::Device::unmake(dev);\n    out.close();')
Path('rtl8922-sdr/free-capture-check.cpp').write_bytes(cpp.encode())
script='''import json,subprocess,os,time,re,signal
from pathlib import Path
import numpy as np
import adi
root=Path('/home/plaing/rtl8922-iq-research'); out=root/'free-plugin-check';out.mkdir(exist_ok=True)
iw=str(root/'iw-local/sbin/iw');country=re.search(r'country (\\w\\w):',subprocess.check_output([iw,'reg','get'],text=True))[1]
s=adi.Pluto('ip:192.168.2.1');s._ctx.set_timeout(3000)
keys=['sample_rate','rx_lo','tx_lo','rx_rf_bandwidth','tx_rf_bandwidth','tx_hardwaregain_chan0'];original={k:getattr(s,k) for k in keys};lo=s._ctrl.find_channel('altvoltage1',True);pd=lo.attrs['powerdown'].value
report={'original_pluto':original,'original_powerdown':pd,'tests':[]}
try:
    subprocess.run([iw,'reg','set','CA'],check=True);time.sleep(.3)
    s.tx_hardwaregain_chan0=-89.75;s.tx_destroy_buffer();lo.attrs['powerdown'].value='1';s.sample_rate=4000000;s.tx_rf_bandwidth=3000000;s.tx_cyclic_buffer=True
    for hz,rate in [(5005000000,20000000),(5400123456,20000000),(5600123456,20000000),(5945123456,20000000),(2478123456,20000000),(2484000000,20000000)]+[(5400123456,r) for r in [1250000,2500000,5000000,10000000]]:
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
'''
Path('tmp/pluto-iq/free-plugin-check.py').write_bytes(script.encode())
for local,dest in [('rtl8922-sdr/free-capture-check.cpp','soapy/free-capture-check.cpp'),('tmp/pluto-iq/free-plugin-check.py','free-plugin-check.py')]:
    subprocess.run(['scp',*opts,local,'beastmode:'+remote+dest],check=True,timeout=30)
r=control.ssh_execute('beastmode','cd '+remote+'soapy && g++ -O3 -std=c++17 free-capture-check.cpp -o free-capture-check -I/usr/local/include -L/usr/local/lib -Wl,-rpath,/usr/local/lib -lSoapySDR && sudo -n bash run-receiver.sh '+remote+'pluto-venv/bin/python '+remote+'free-plugin-check.py > free-plugin-check.log 2>&1; tail -8 free-plugin-check.log',120)
Path('output/rtl8922-free-plugin-run.json').write_text(json.dumps(r,indent=2))
subprocess.run(['scp',*opts,'beastmode:'+remote+'free-plugin-check/report.json','output/rtl8922-free-plugin-report.json'],check=True,timeout=30)
r=json.loads(Path('output/rtl8922-free-plugin-report.json').read_text())
for t in r['tests']:print(t['frequency_hz'],t['rate'],t['pass'],[(x['returncode'],x.get('peak_hz'),x.get('peak_median_db'),x['stderr']) for x in t['tones']])
