import subprocess
from pathlib import Path
opts = ['-q','-o','BatchMode=yes','-o','StrictHostKeyChecking=yes','-o','HostName=10.0.10.204','-o','HostKeyAlias=beastmode']
remote='/home/plaing/rtl8922-iq-research/soapy/'
files=['SoapyRTL8922.cpp','live-bridge.cpp','live-demo.py','live-demo.html','run-live-demo.py','run-receiver.sh','pluto_tone.py']
for name in files:
    # Linux scripts must have LF line endings after Windows editing.
    data=Path('rtl8922-sdr',name).read_text(encoding='utf-8').replace('\r\n','\n').encode()
    temp=Path('tmp/pluto-iq',name);temp.write_bytes(data)
    subprocess.run(['scp',*opts,str(temp),'beastmode:'+remote+name],check=True,timeout=30)
