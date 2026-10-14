#!/usr/bin/env python3
"""Manual bounded HTTP retuning check; receiver wrapper always tears down."""
import json
import os
from pathlib import Path
import subprocess
import sys
import time
from urllib.error import URLError
from urllib.request import Request, urlopen

from hardware import Radio, ROOT

output = Path(sys.argv[1])
port = int(os.environ.get('RTL8922_DEMO_PORT', '18732'))
base = f'http://127.0.0.1:{port}'


def request(path, payload=None):
    req = Request(base+path, data=json.dumps(payload).encode() if payload is not None else None,
                  headers={'Origin': base, 'Content-Type': 'application/json'})
    with urlopen(req, timeout=3) as response:
        return json.load(response)


with Radio(output, seconds=75) as radio:
    original_ifindex = (Path('/sys/class/net')/radio.iface/'ifindex').read_text()
    with (ROOT/'build-streaming'/f'{output.stem}.log').open('wb') as log:
        proc = subprocess.Popen([sys.executable, str(ROOT/'run-live-demo.py')],
                                env=dict(os.environ, RTL8922_DEMO_PORT=str(port), RTL8922_COUNTRY='CA'), stdout=log, stderr=log)
        try:
            deadline = time.monotonic()+12
            while True:
                try:
                    frame = request('/api/frame')
                    if frame['live']:
                        break
                except (URLError, TimeoutError):
                    pass
                if time.monotonic() > deadline or proc.poll() is not None:
                    raise RuntimeError('Demo failed to start')
                time.sleep(.1)
            centers = request('/api/channels')
            assert all(c in centers for c in (2442, 5350, 5975, 6675, 5250))
            for mhz in (2442, 5350, 5975, 6675, 5250):
                began = time.monotonic()
                response = request('/api/tune', {'mhz': mhz})
                deadline = began+5
                while True:
                    frame = request('/api/frame')
                    if frame['live'] and frame['frequency'] == mhz*1e6 and not frame['tune_pending']:
                        break
                    if proc.poll() is not None or time.monotonic() > deadline:
                        raise RuntimeError('HTTP retune failed at '+str(mhz))
                    time.sleep(.01)
                time.sleep(1)
                frame = request('/api/frame')
                row = dict(center_mhz=mhz, http_retune_seconds=time.monotonic()-began-1, response=response,
                           errors=frame['errors'], recoveries=frame['recoveries'], retunes=frame['retunes'],
                           fft_fps=frame['fft_fps'], live=frame['live'],
                           same_interface=(Path('/sys/class/net')/radio.iface/'ifindex').read_text() == original_ifindex)
                assert row['live'] and not row['errors'] and not row['recoveries'] and row['same_interface'], row
                radio.report['tests'].append(row)
                radio.save()
            request('/api/stop', {})
            proc.wait(timeout=12)
            assert proc.returncode == 0
            radio.report['retune_status'] = (radio.dbg/'iq_paxi_retune').read_text()
            radio.report['producer_status'] = (radio.dbg/'iq_paxi_stream').read_text()
            radio.report['host_drops'] = int((radio.dbg/'scope_dropped').read_text())
            assert radio.report['host_drops'] == 0
            assert radio.report['producer_status'].startswith('ret=0 ')
            radio.report['passed'] = True
        finally:
            if proc.poll() is None:
                proc.terminate()
                try:
                    proc.wait(timeout=12)
                except subprocess.TimeoutExpired:
                    proc.kill()
                    proc.wait()
            radio.save()
    print(json.dumps(radio.report['tests']), flush=True)
