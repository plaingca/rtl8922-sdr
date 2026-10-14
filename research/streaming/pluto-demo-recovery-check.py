#!/usr/bin/env python3
"""Explicit bounded RF/control test. Never run in CI. Starts its own receiver."""
import json
import os
from pathlib import Path
import re
import signal
import subprocess
import sys
import threading
import time
from urllib.error import URLError
from urllib.request import Request, urlopen

import adi
import psutil

ROOT = Path(__file__).resolve().parents[2]
output = Path(sys.argv[1])
base = 'http://127.0.0.1:18732'
report = {'tests': [], 'scope': ('Passive receive interruption and automatic driver recovery' if '--skip-tx' in sys.argv else 'Two bounded Pluto transmissions, then intentional receive interruption and automatic driver recovery')}
output.parent.mkdir(parents=True, exist_ok=True)

def save():
    output.write_text(json.dumps(report, indent=2)+'\n')

def request(path, payload=None, timeout=4):
    data = json.dumps(payload).encode() if payload is not None else None
    req = Request(base+path, data=data, headers={'Origin': base, 'Content-Type': 'application/json'})
    with urlopen(req, timeout=timeout) as response:
        return json.load(response)

def live(predicate=lambda f: True, seconds=20):
    deadline = time.monotonic()+seconds
    while time.monotonic() < deadline:
        if proc.poll() is not None:
            raise RuntimeError('Supervisor ended unexpectedly')
        try:
            f = request('/api/frame', timeout=2)
            if f.get('live') and predicate(f):
                return f
        except (URLError, TimeoutError, ConnectionError, json.JSONDecodeError):
            pass
        time.sleep(.1)
    raise TimeoutError('Receiver did not recover within bounded deadline')

s = adi.Pluto('ip:192.168.2.1'); s._ctx.set_timeout(2000)
lo = s._ctrl.find_channel('altvoltage1', True)
assert lo.attrs['powerdown'].value == '1'
keys = ('sample_rate', 'rx_lo', 'tx_lo', 'rx_rf_bandwidth', 'tx_rf_bandwidth', 'tx_hardwaregain_chan0')
original = {k: getattr(s, k) for k in keys}
report['original_pluto'] = original
save()
proc = None
log_path = ROOT/'build-streaming'/f'{output.stem}.log'
try:
    with log_path.open('wb') as log:
        proc = subprocess.Popen([sys.executable, str(ROOT/'run-demo-service.py')],
                                env=dict(os.environ, RTL8922_DEMO_PORT='18732'), stdout=log, stderr=log)
        first = live()
        report['first_frame'] = {k: first[k] for k in ('session','frequency','errors','recoveries','capture_restarts')}
        for mode in (() if '--skip-tx' in sys.argv else ('tone', 'text')):
            # Independent muting deadline protects even a blocked HTTP command.
            watchdog = threading.Timer(5, lambda: setattr(lo.attrs['powerdown'], 'value', '1'))
            watchdog.start()
            try:
                began = time.monotonic()
                tx = request('/api/tone', dict(enabled=True, mode=mode, text='RTL8922',
                                               seconds=5, gain_db=0, offset_khz=750, follow=True))
                assert tx['enabled']
                assert lo.attrs['powerdown'].value == '0'
                time.sleep(max(0, 3-(time.monotonic()-began)))
                stop = request('/api/tone', {'enabled': False})
                frame = live()
                row = dict(mode=mode, enabled=tx['enabled'], restored=stop['restored'],
                           tx_powerdown=lo.attrs['powerdown'].value,
                           errors=frame['errors'], recoveries=frame['recoveries'],
                           same_session=frame['session']==first['session'])
                report['tests'].append(row); save()
                assert row['restored'] and row['tx_powerdown']=='1' and row['same_session']
                assert row['errors']==row['recoveries']==0
            finally:
                lo.attrs['powerdown'].value = '1'
                watchdog.cancel(); watchdog.join()
        request('/api/tune', {'mhz': 5350})
        before = live(lambda f: f['frequency']==5350000000 and not f['tune_pending'])
        native = next(p for p in psutil.Process(proc.pid).children(recursive=True) if p.name()=='live-bridge')
        timer = threading.Timer(.65, lambda: os.kill(native.pid, signal.SIGCONT))
        timer.start()
        try:
            os.kill(native.pid, signal.SIGSTOP)
            time.sleep(.7)
        finally:
            if native.is_running(): os.kill(native.pid, signal.SIGCONT)
            timer.cancel(); timer.join()
        after = live(lambda f: f['session']!=before['session'])
        assert after['frequency']==before['frequency']
        assert after['capture_restarts']>=before['capture_restarts']+1
        assert after['errors']==after['recoveries']==after['capture_restarts']
        report['recovery'] = {k: after[k] for k in ('session','frequency','errors','recoveries','capture_restarts','generation')}
        request('/api/stop', {})
        proc.wait(timeout=20)
        assert proc.returncode==0
        report['manual_stop_stays_stopped'] = True
finally:
    lo.attrs['powerdown'].value = '1'
    if proc and proc.poll() is None:
        proc.terminate()
        try: proc.wait(timeout=30)
        except subprocess.TimeoutExpired:
            proc.kill();proc.wait()
    for k,v in original.items():setattr(s,k,v)
    lo.attrs['powerdown'].value = '1'
    report['restored_pluto'] = {k:getattr(s,k) for k in keys}
    report['tx_powerdown'] = lo.attrs['powerdown'].value
    report['log'] = str(log_path)
    text = log_path.read_text() if log_path.exists() else ''
    report['producer_status_lines'] = re.findall(r'RTL8922 producer: ([^\n]+)',text)
    report['pass'] = (report.get('manual_stop_stays_stopped',False)
                      and report['restored_pluto']==original and report['tx_powerdown']=='1')
    save()
print(json.dumps({k:v for k,v in report.items() if k not in ('producer_status_lines',)},indent=2))
