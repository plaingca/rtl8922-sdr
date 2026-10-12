#!/usr/bin/env python3
"""Explicit manual RF check of an already-running demo; never a CI test.

Run with a Python environment containing pyadi-iio and numpy. Every TX is
bounded, and finally always stops TX and checks fresh Pluto saved settings.
"""
import argparse
import json
import time
import urllib.error
import urllib.request
from pathlib import Path

import adi
import numpy as np

URL = 'http://127.0.0.1:8732'


def get():
    return json.load(urllib.request.urlopen(URL+'/api/frame', timeout=10))


def post(path, data):
    request = urllib.request.Request(URL+path, data=json.dumps(data).encode(),
                                     headers={'Content-Type': 'application/json'})
    return json.load(urllib.request.urlopen(request, timeout=10))


def pluto_state():
    s = adi.Pluto('ip:192.168.2.1')
    s._ctx.set_timeout(2000)
    keys = ('sample_rate','rx_lo','tx_lo','rx_rf_bandwidth','tx_rf_bandwidth','tx_hardwaregain_chan0')
    state = {key:getattr(s, key) for key in keys}
    state['tx_powerdown'] = s._ctrl.find_channel('altvoltage1', True).attrs['powerdown'].value
    return state


def brief(frame):
    return {k:v for k,v in frame.items() if k not in ('fft','zoom_fft','events')}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--run-rf-test', action='store_true', required=True)
    parser.add_argument('--report', type=Path, required=True)
    args = parser.parse_args()
    initial = get()
    assert initial['live'] and initial['rate'] == 40000000
    assert not initial['tone']['enabled'], 'Refusing to interrupt an existing transmission'
    saved = pluto_state()
    assert saved['tx_powerdown'] == '1'
    report = dict(before=brief(initial), pluto_before=saved, tones=[])
    args.report.write_text(json.dumps(report, indent=2)+'\n')
    try:
        # Isolated tones must move with the command; never accept the DC spur.
        for offset in (750, -750):
            post('/api/tone', dict(enabled=True, mode='tone', offset_khz=offset, gain_db=0, seconds=8))
            time.sleep(.4)
            measured = []
            seen = -1
            until = time.monotonic()+1.2
            while time.monotonic() < until:
                frame = get()
                if frame['frame'] != seen:
                    seen = frame['frame']
                    f = frame['zoom_start_hz']+np.arange(len(frame['zoom_fft']))*frame['zoom_bin_hz']
                    power = np.array(frame['zoom_fft'])
                    mask = np.flatnonzero(np.abs(f-offset*1000) < 40000)
                    i = mask[np.argmax(power[mask])]
                    measured.append((float(f[i]), float(power[i]-np.median(power))))
                time.sleep(.06)
            report['tones'].append(dict(command_offset_hz=offset*1000,
                measured_offset_hz=float(np.median([m[0] for m in measured])),
                above_median_db=float(np.median([m[1] for m in measured]))))
        report['tone_movement_hz'] = report['tones'][0]['measured_offset_hz']-report['tones'][1]['measured_offset_hz']
        assert abs(report['tone_movement_hz']-1500000) < 2500
        assert all(t['above_median_db'] > 20 for t in report['tones'])
        # The final text starts with an automatic five-second timer.
        post('/api/tone', dict(enabled=True, mode='text', text='RTL8922', offset_khz=750, gain_db=0, seconds=5))
        rows = set()
        until = time.monotonic()+6.5
        while time.monotonic() < until:
            frame = get()
            if frame['tone']['enabled']:
                rows.add(frame['tone']['row'])
            time.sleep(.1)
        report['text_rows_observed'] = sorted(rows)
        report['timer'] = get()['tone']
        assert rows == set(range(8))
        assert not report['timer']['enabled'] and report['timer']['restored']
        try:
            post('/api/tune', dict(mhz=2390))
            raise AssertionError('Out-of-range 40 MS/s tuning was accepted')
        except urllib.error.HTTPError as exc:
            assert exc.code == 400
            report['out_of_range_rejected'] = True
        report['after'] = brief(get())
        report['new_capture_errors'] = report['after']['errors']-initial['errors']
        report['new_recoveries'] = report['after']['recoveries']-initial['recoveries']
        assert report['after']['live'] and not report['new_capture_errors'] and not report['new_recoveries']
        report['passed'] = True
    finally:
        report['off'] = post('/api/tone', dict(enabled=False))
        report['pluto_after'] = pluto_state()
        report['pluto_restored'] = report['pluto_after'] == saved
        args.report.write_text(json.dumps(report, indent=2)+'\n')
        assert report['pluto_restored'], 'Independent Pluto readback did not match saved settings'
    print(json.dumps(report, indent=2))


if __name__ == '__main__':
    main()
