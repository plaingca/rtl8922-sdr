"""Run inside run-receiver.sh; restore regulatory domain on exit."""
import json
import re
import signal
import subprocess
from pathlib import Path

base = Path(__file__).resolve().parent
iw = '/home/plaing/rtl8922-iq-research/iw-local/sbin/iw'
original = subprocess.check_output([iw, 'reg', 'get'], text=True)
country = re.search(r'country (\w\w):', original)[1]
child = None


def stop(*_):
    if child and child.poll() is None:
        child.terminate()


for sig in (signal.SIGTERM, signal.SIGINT):
    signal.signal(sig, stop)
try:
    subprocess.run([iw, 'reg', 'set', 'CA'], check=True)
    # cfg80211 regulatory processing is asynchronous.
    import time
    time.sleep(.4)
    info = subprocess.check_output([iw, 'phy'], text=True)
    channels = [int(m[1]) for m in re.finditer(r'\* (\d+) MHz \[\d+\]([^\n]*)', info)
                if 'disabled' not in m[2] and 2412 <= int(m[1]) <= 7115]
    (base / 'live-channels.json').write_text(json.dumps(channels))
    child = subprocess.Popen(['/home/plaing/rtl8922-iq-research/pluto-venv/bin/python', str(base / 'live-demo.py')])
    child.wait()
finally:
    stop()
    if child:
        child.wait(timeout=10)
    subprocess.run([iw, 'reg', 'set', country], check=True)
    print('REGULATORY_RESTORED', country, flush=True)
