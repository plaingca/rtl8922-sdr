#!/usr/bin/env python3
"""Explicit bounded same-driver band hops, paired RF references, final teardown.

No CI use. Pluto TX is independently limited to three seconds per tone phase.
Above 6 GHz only passive transport is checked because Pluto cannot supply RF.
"""
from collections import deque
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import sys
import threading
import time

import numpy as np
from hardware import Radio, ROOT

output = Path(sys.argv[1])
centers = [int(c) for c in sys.argv[2:]] or [5250, 5350, 2442, 5975, 6675, 5250]
assert 1 <= len(centers) <= 12
frames = deque(maxlen=512)
condition = threading.Condition()
reader_error = []
proc = None


def reader():
    try:
        while True:
            line = proc.stdout.readline()
            if not line:
                break
            meta = json.loads(line)
            payload = bytearray()
            while len(payload) < meta['bytes']:
                block = proc.stdout.read(meta['bytes']-len(payload))
                if not block:
                    raise EOFError('Truncated spectrum')
                payload.extend(block)
            bins = np.frombuffer(payload, dtype='<f4')
            meta['zoom_fft'] = bins[meta['fft_bins']:].copy()
            meta['overview'] = bins[:meta['fft_bins']].copy()
            with condition:
                frames.append(meta)
                condition.notify_all()
    except Exception as exc:
        reader_error.append(str(exc))
    finally:
        with condition:
            condition.notify_all()


def wait_frames(mhz, seconds=.4):
    began = time.monotonic()
    deadline = began+5
    selected = []
    last_id = -1
    while True:
        with condition:
            condition.wait(timeout=.05)
            selected = [f for f in frames if f['frequency'] == mhz*1e6]
            if selected and selected[-1]['frame'] != last_id:
                last_id = selected[-1]['frame']
            else:
                selected = []
        if proc.poll() is not None or reader_error:
            raise RuntimeError('Receiver failed: '+str(reader_error))
        if selected and time.monotonic()-began >= seconds:
            return selected[-min(32, len(selected)):]
        if time.monotonic() > deadline:
            raise TimeoutError('Retune/capture timeout at '+str(mhz))


with Radio(output, seconds=120) as radio:
    driver = Path(os.environ['RTL8922_DRIVER_DIR'])
    paths = [ROOT/'SoapyRTL8922.cpp', ROOT/'live-bridge.cpp', driver/'iq-paxi-frozen.c',
             ROOT/'build/live-bridge', ROOT/'build/libRTL8922Support.so', *sorted(driver.glob('*_git.ko'))]
    radio.report.update(scope='Same driver instance and held WCPU throughout all retunes; intentional capture gaps',
                        centers_mhz=centers, build_sha256={str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in paths},
                        srcversion=Path('/sys/module/rtw89_core_git/srcversion').read_text().strip(),
                        ifindex=(Path('/sys/class/net')/radio.iface/'ifindex').read_text().strip())
    subprocess.run([radio.iw, 'reg', 'set', 'CA'], check=True)
    time.sleep(.3)
    artifacts = ROOT/'build-streaming'/output.stem
    timer = None
    tx_lock = threading.Lock()
    try:
        with artifacts.with_suffix('.log').open('wb') as log:
            proc = subprocess.Popen([str(ROOT/'build/live-bridge')], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=log)
            worker = threading.Thread(target=reader, daemon=True)
            worker.start()
            wait_frames(5250, .5)
            proc.stdin.write(b'zoom 0\n')
            proc.stdin.flush()
            previous = 5250
            for mhz in centers:
                before = frames[-1]['samples']
                began = time.monotonic()
                if mhz != previous:
                    proc.stdin.write(f'{mhz*1000000}\n'.encode())
                    proc.stdin.flush()
                capture = wait_frames(mhz, .5)
                elapsed = time.monotonic()-began
                row = dict(center_mhz=mhz, retune_seconds=elapsed, first_samples=before,
                           last_samples=capture[-1]['samples'], errors=capture[-1]['errors'],
                           retunes=capture[-1].get('retunes'), generation=capture[-1]['generation'], tones=[])
                if mhz <= 6000:
                    for offset in (250000, -250000):
                        s = radio.pluto
                        s.tx_hardwaregain_chan0 = -89.75
                        s.tx_destroy_buffer()
                        s.sample_rate = 4000000
                        s.tx_rf_bandwidth = 3000000
                        s.tx_lo = mhz*1000000
                        s.tx_cyclic_buffer = True
                        wave = 22000*np.exp(2j*np.pi*offset/s.sample_rate*np.arange(16384))
                        expired = threading.Event()

                        def mute():
                            with tx_lock:
                                expired.set()
                                radio.lo.attrs['powerdown'].value = '1'

                        timer = threading.Timer(3, mute)
                        timer.start()
                        try:
                            s.tx(wave)
                            with tx_lock:
                                if expired.is_set():
                                    raise TimeoutError('TX setup exceeded deadline')
                                s.tx_hardwaregain_chan0 = 0
                                radio.lo.attrs['powerdown'].value = '0'
                            observed = wait_frames(mhz, .4)
                            power = np.mean([10**(f['zoom_fft']/10) for f in observed[-16:]], axis=0)
                            hz = observed[-1]['zoom_start_hz']+(np.arange(len(power))+.5)*observed[-1]['zoom_bin_hz']
                            eligible = np.abs(hz-offset) <= 80000
                            peak = np.argmax(np.where(eligible, power, -1))
                            row['tones'].append(dict(offset_hz=offset, peak_hz=float(hz[peak]),
                                                     above_median_db=float(10*np.log10(power[peak]/np.median(power))),
                                                     overview_peaks_hz=[float((int(i)+.5)*160000000/2048-80000000) for i in np.argsort(observed[-1]['overview'])[-12:]]))
                        finally:
                            mute()
                            timer.cancel()
                            timer.join()
                            timer = None
                            s.tx_destroy_buffer()
                    movement = row['tones'][0]['peak_hz']-row['tones'][1]['peak_hz']
                    row['tone_movement_hz'] = movement
                    row['rf_pass'] = abs(movement-500000) <= 8000 and all(t['above_median_db'] >= 15 for t in row['tones'])
                else:
                    row['rf_pass'] = None
                    row['scope'] = 'Passive transport only; RF above 6 GHz unqualified'
                row['same_driver_instance'] = (Path('/sys/module/rtw89_core_git/srcversion').read_text().strip() == radio.report['srcversion']
                                               and (Path('/sys/class/net')/radio.iface/'ifindex').read_text().strip() == radio.report['ifindex'])
                row['retune_status'] = (radio.dbg/'iq_paxi_retune').read_text()
                radio.report['tests'].append(row)
                radio.save()
                print(json.dumps(row), flush=True)
                if row['errors'] or row['rf_pass'] is False:
                    raise RuntimeError('Retune or paired RF gate failed')
                previous = mhz
            proc.stdin.write(b'stop\n')
            proc.stdin.flush()
            proc.wait(timeout=10)
            worker.join(timeout=2)
    finally:
        radio.lo.attrs['powerdown'].value = '1'
        if timer:
            timer.cancel()
            timer.join()
        if proc and proc.poll() is None:
            proc.terminate()
            try:
                proc.wait(timeout=10)
            except subprocess.TimeoutExpired:
                proc.kill()
                proc.wait()
        radio.report['producer'] = dict(re.findall(r'(\w+)=([0-9a-f-]+)', (radio.dbg/'iq_paxi_stream').read_text()))
        radio.report['host_drops'] = int((radio.dbg/'scope_dropped').read_text())
        radio.report['reader_error'] = reader_error
        radio.save()
    checks = dict(producer_clean=radio.report['producer'].get('ret') == '0',
                  source_guards_clean=radio.report['producer'].get('source_guard') == '0',
                  no_host_drops=radio.report['host_drops'] == 0, reader_clean=not reader_error,
                  clean_exit=proc.returncode == 0)
    radio.report['checks'] = checks
    radio.save()
    if not all(checks.values()):
        raise RuntimeError('Same-driver retune transport check failed')
