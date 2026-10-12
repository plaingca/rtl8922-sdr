from pathlib import Path
s=Path('tmp/pluto-iq/run-live-control.py').read_text()
for a,b in [('live-control-test','gnuradio-live-test'),('live-control.py','gnuradio-live.py'),('live-control.sh','gnuradio-live.sh'),('rtl8922-live-control-run','rtl8922-gnuradio-live-run'),("root/'soapy/build'","root/'soapy/build-distro'"),("RTL8922_TRACE='1'","RTL8922_TRACE='1',PYTHONPATH='/usr/lib/python3/dist-packages'"),("[str(root/'soapy/live-control-check')]","['/usr/bin/python3',str(root/'soapy/gnuradio-live-check.py')]")]:
    s=s.replace(a,b)
a=s.index('    stages=[json.loads');b=s.index("\n'''+s[b:]",a)
s=s[:a]+s[b:]
Path('tmp/pluto-iq/run-gnuradio-live.py').write_text(s)
