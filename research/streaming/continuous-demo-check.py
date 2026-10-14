#!/usr/bin/env python3
"""Manual bounded passive demo trial, including the old 107-second ring rollover.

Run under run-receiver.sh, never CI. Saves fresh Pluto settings and restores them;
no TX is enabled. The wrapper must unload the held-firmware driver afterward.
"""
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import sys
import time
from urllib.error import URLError
from urllib.request import Request, urlopen

from hardware import Radio, ROOT

output = Path(sys.argv[1])
seconds = float(sys.argv[2]) if len(sys.argv) > 2 else 180
assert 120 <= seconds <= 300
port = int(os.environ.get('RTL8922_DEMO_PORT', '18732'))
base = f'http://127.0.0.1:{port}'


def request(path, payload=None):
    data = json.dumps(payload).encode() if payload is not None else None
    req = Request(base+path, data=data, headers={'Content-Type': 'application/json', 'Origin': base})
    with urlopen(req, timeout=3) as response:
        return json.load(response)


with Radio(output, seconds=int(seconds)+45) as radio:
    driver = Path(os.environ.get('RTL8922_DRIVER_DIR', ROOT / 'vendor/rtw89-paxi-wide'))
    paths = [ROOT / 'SoapyRTL8922.cpp', ROOT / 'live-bridge.cpp', ROOT / 'live-demo.py',
             ROOT / 'build/libRTL8922Support.so', ROOT / 'build/live-bridge',
             driver / 'iq-paxi-frozen.c', *sorted(driver.glob('*_git.ko'))]
    radio.report.update(scope='Bounded continuous default demo with Pluto TX off; not RF sample-level qualification',
                        requested_seconds=seconds,
                        build_sha256={str(p): hashlib.sha256(p.read_bytes()).hexdigest() for p in paths},
                        loaded_core_srcversion=Path('/sys/module/rtw89_core_git/srcversion').read_text().strip())
    env = dict(os.environ, RTL8922_DEMO_PORT=str(port))
    log_path = ROOT / 'build-streaming' / (output.stem+'.log')
    frames = []
    proc = None
    try:
        with log_path.open('wb') as log:
            proc = subprocess.Popen([sys.executable, str(ROOT / 'live-demo.py')], env=env, stdout=log, stderr=log)
            startup = time.monotonic()+15
            while True:
                if proc.poll() is not None:
                    raise RuntimeError('Demo failed during startup; see '+str(log_path))
                try:
                    frame = request('/api/frame')
                    if frame['live']:
                        break
                except (URLError, TimeoutError):
                    pass
                if time.monotonic() > startup:
                    raise TimeoutError('No live demo frame')
                time.sleep(.1)
            config = request('/api/config')
            started = time.monotonic()
            last_frame = -1
            while time.monotonic()-started < seconds:
                frame = request('/api/frame')
                if not frame['live'] or proc.poll() is not None:
                    raise RuntimeError('Continuous demo stopped early')
                if frame['frame'] != last_frame:
                    last_frame = frame['frame']
                    frames.append({k: frame[k] for k in ('frame', 'samples', 'rate', 'frequency', 'errors', 'recoveries', 'display_skipped', 'fft_fps', 'backend_fps')})
                time.sleep(.25)
            request('/api/stop', {})
            proc.wait(timeout=10)
            elapsed = time.monotonic()-started
    finally:
        if proc is not None and proc.poll() is None:
            proc.terminate()
            try:
                proc.wait(timeout=8)
            except subprocess.TimeoutExpired:
                proc.kill()
                proc.wait()
        radio.report.update(frame_count=len(frames), first_frame=frames[0] if frames else None,
                            last_frame=frames[-1] if frames else None, log=str(log_path))
        radio.save()
    status = (radio.dbg / 'iq_paxi_stream').read_text()
    producer = dict(re.findall(r'(\w+)=([0-9a-f-]+)', status))
    drops = int((radio.dbg / 'scope_dropped').read_text())
    checks = {
        'default_160_mode': config['name'] == 'paxi160' and config['rate'] == 160000000,
        'all_frames_160_fixed_center': all(f['rate'] == 160000000 and f['frequency'] == 5250000000 for f in frames),
        'samples_increase': all(b['samples'] > a['samples'] for a, b in zip(frames, frames[1:])),
        'no_errors_or_restarts': all(f['errors'] == f['recoveries'] == 0 for f in frames),
        'past_old_counter_rollover': int(producer.get('consumed', '0')) > 2**32,
        'continuous_64bit': producer.get('continuous') == '1' and producer.get('counter_bits') == '64',
        'producer_clean': producer.get('ret') == '0' and producer.get('source_guard') == '0',
        'scratch_guards_clean': producer.get('guard_errors') == '0',
        'no_host_drops': drops == 0,
        'tracking_quiesced': producer.get('tracking_quiesced') == '1',
        'watchdog_disabled': producer.get('watchdog_disabled') == '1',
        'full_duration': len(frames) > seconds and frames[-1]['samples']-frames[0]['samples'] >= seconds*.98*160000000,
        'clean_shutdown': proc.returncode == 0,
        'fft_cadence_240': 238 <= (frames[-1]['frame']-frames[0]['frame'])*160000000/(frames[-1]['samples']-frames[0]['samples']) <= 242,
        'native_fft_240': sum(f['fft_fps'] for f in frames[8:])/len(frames[8:]) >= 237,
        'backend_240': sum(f['backend_fps'] for f in frames[8:])/len(frames[8:]) >= 237,
    }
    radio.report['tests'].append(dict(checks=checks, passed=all(checks.values()), producer=producer,
                                      host_drops=drops, elapsed_seconds=elapsed, config=config))
    radio.save()
    print(json.dumps(checks), flush=True)
    if not all(checks.values()):
        raise RuntimeError('Continuous demo gate failed')
