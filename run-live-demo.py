"""Run inside run-receiver.sh; restore regulatory domain on exit."""
import json
import os
import re
import signal
import subprocess
import shutil
import sys
from pathlib import Path
from receiver_modes import receiver_mode

base = Path(__file__).resolve().parent
iw = os.environ.get('RTL8922_IW') or shutil.which('iw')
if not iw:
    raise SystemExit('Set RTL8922_IW to the full path of iw')
original = subprocess.check_output([iw, 'reg', 'get'], text=True)
country = re.search(r'country (\w\w):', original)[1]
child = None


def stop(*_):
    if child and child.poll() is None:
        child.terminate()


for sig in (signal.SIGTERM, signal.SIGINT):
    signal.signal(sig, stop)
try:
    requested_country = os.environ.get('RTL8922_COUNTRY', country)
    if not re.fullmatch(r'[A-Z0-9]{2}', requested_country):
        raise ValueError('RTL8922_COUNTRY must be a two-character country code')
    subprocess.run([iw, 'reg', 'set', requested_country], check=True)
    # cfg80211 regulatory processing is asynchronous.
    import time
    time.sleep(.4)
    info = subprocess.check_output([iw, 'phy'], text=True)
    channels = [int(m[1]) for m in re.finditer(r'\* (\d+) MHz \[\d+\]([^\n]*)', info)
                if 'disabled' not in m[2] and 2412 <= int(m[1]) <= 7115]
    mode = receiver_mode()
    centers = mode.channels(channels)
    if not centers:
        raise ValueError('The selected receiver mode has no enabled baseline channel')
    (base / 'live-channels.json').write_text(json.dumps(centers))
    child = subprocess.Popen([sys.executable, str(base / 'live-demo.py')])
    child.wait()
finally:
    stop()
    if child:
        child.wait(timeout=10)
    subprocess.run([iw, 'reg', 'set', country], check=True)
    print('REGULATORY_RESTORED', country, flush=True)
raise SystemExit(child.returncode if child else 1)
