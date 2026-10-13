#!/usr/bin/env python3
"""Bounded, explicit RF test of finite BBMCU fractional-NCO synthesis.

Requires the isolated pinned patch and original working modules. Pluto receives
only. Raw RF stays in memory; reports retain independent per-block observations.
"""
import argparse
import fcntl
import hashlib
import json
import os
from pathlib import Path
import re
import signal
import subprocess
import threading
import time

import numpy as np

from calibration_probe import DebugIO, Transaction
from bb_dds_probe import Mailbox
from tone_validation import measure


def require(condition, message):
    if not condition:
        raise ValueError(message)


def analyze(samples, rate, reference):
    """Track the strongest narrow peak over the entire fixed source band.

    No requested fractional frequency enters detection or time selection.
    Consecutive blocks with stable frequency form candidate finite plateaus.
    """
    n = 4096
    x = np.asarray(samples)[:len(samples) // n * n].reshape(-1, n)
    power = abs(np.fft.fft(x * np.hanning(n), axis=1)) ** 2
    freq = np.fft.fftfreq(n, 1 / rate)
    region = np.flatnonzero((freq > reference - 100000) & (freq < reference + 600000))
    k = region[np.argmax(power[:, region], axis=1)]
    peaks = freq[k]
    floor = np.median(power[:, region], axis=1)
    strength = 10 * np.log10(np.maximum(power[np.arange(len(x)), k], 1e-20) / np.maximum(floor, 1e-20))
    clipped = np.any((abs(x.real) >= 2047) | (abs(x.imag) >= 2047), axis=1)
    valid = (strength >= 20) & ~clipped
    runs = []
    start = None
    for i in range(len(x) + 1):
        continuation = i < len(x) and valid[i] and (start is None or abs(peaks[i] - np.median(peaks[start:i])) <= 3000)
        if not continuation and start is not None:
            if i - start >= 4:
                runs.append({'start_seconds': start*n/rate, 'end_seconds': i*n/rate,
                             'blocks': i-start, 'median_hz': float(np.median(peaks[start:i])),
                             'min_above_floor_db': float(np.min(strength[start:i]))})
            start = None
        if i < len(x) and valid[i] and start is None:
            start = i
    return {'fft_size': n, 'samples': len(samples), 'sample_rate': rate,
            'clip_fraction': float(np.mean((abs(samples.real) >= 2047) | (abs(samples.imag) >= 2047))),
            'peak_hz_per_block': peaks.tolist(), 'peak_above_floor_db_per_block': strength.tolist(),
            'stable_runs': runs,
            'detection': 'fixed reference band, strongest FFT peak, >=20 dB above band median, no clipped blocks'}


def analyze_pattern(samples, rate, reference, lower_rate):
    """Fit a periodic frequency sequence on 10 ms, score the next 10 ms.

    Only rate/phase and an affine discriminator calibration use training data.
    Held-out time samples and a fixed wrong-pattern control score the result.
    Capture windows are fixed before RF acquisition, not selected by labels.
    """
    f = np.fft.fftfreq(len(samples), 1/rate)
    spectrum = np.fft.fft(samples)
    spectrum[(f < reference-100000) | (f > reference+600000)] = 0
    z = np.fft.ifft(spectrum)
    d = np.angle(z[1:]*np.conj(z[:-1]))*rate/(2*np.pi)
    times = np.arange(len(d))/rate
    train = (times >= .12) & (times < .13)
    test = (times >= .13) & (times < .14)
    t, y = times[train][::2], d[train][::2]
    pattern = np.array([1 if (0xD39A6C57 >> i) & 1 else -1 for i in range(32)])
    template = np.repeat(pattern, 8)
    best = None
    for refinement in range(2):
        if refinement:
            step = lower_rate*.15/300
            rates = np.linspace(max(lower_rate, best[1]-step), min(lower_rate*1.15, best[1]+step), 301)
        else:
            rates = np.linspace(lower_rate, lower_rate*1.15, 301)
        for update_rate in rates:
            bins = np.floor((t*update_rate % 32)*8).astype(int)
            sums = np.bincount(bins, weights=y-y.mean(), minlength=256)
            scores = np.fft.ifft(np.conj(np.fft.fft(sums))*np.fft.fft(template)).real
            shift = int(np.argmax(scores))
            score = float(scores[shift])
            if best is None or score > best[0]:
                best = (score, update_rate, shift/8)
    _, update_rate, phase = best
    def predicted(t, bits=pattern):
        position = (t*update_rate + phase) % 32
        centers = (position % 1 >= .25) & (position % 1 <= .75)
        return bits[np.floor(position).astype(int)], centers
    pred, centers = predicted(t)
    design = np.column_stack([np.ones(centers.sum()), pred[centers]])
    coefficients = np.linalg.lstsq(design, y[centers], rcond=None)[0]
    t_test, y_test = times[test][::2], d[test][::2]
    pred_test, centers_test = predicted(t_test)
    actual = y_test[centers_test]
    expected = coefficients[0] + coefficients[1]*pred_test[centers_test]
    signal_power = np.mean((expected-coefficients[0])**2)
    residual = np.mean((actual-expected)**2)
    wrong = np.array([1 if (0x6B27E149 >> i) & 1 else -1 for i in range(32)])
    pred_wrong, _ = predicted(t_test, wrong)
    wrong_residual = np.mean((actual-(coefficients[0]+coefficients[1]*pred_wrong[centers_test]))**2)
    correlation = float(np.corrcoef(actual, expected)[0, 1])
    return {'update_rate_hz': float(update_rate), 'phase_symbols': float(phase),
            'host_rate_lower_bound': lower_rate, 'search_upper_bound': lower_rate*1.15,
            'training_seconds': [.12, .13], 'heldout_seconds': [.13, .14],
            'heldout_points': len(actual), 'discriminator_center_hz': float(coefficients[0]),
            'discriminator_half_swing_hz': float(coefficients[1]),
            'heldout_correlation': correlation,
            'heldout_signal_error_db': float(10*np.log10(signal_power/max(residual, 1e-20))),
            'wrong_pattern_signal_error_db': float(10*np.log10(signal_power/max(wrong_residual, 1e-20))),
            'passed': bool(correlation >= .8 and coefficients[1] > 150000 and residual < wrong_residual/4),
            'scope': 'finite repeated frequency pattern, interrupts enabled; not per-write jitter qualification'}


def capture(box, tx, pluto, fraction, reference, mode=2, count=262144, delay=0):
    tx.setup()
    tx.start(1)
    pluto.rx_destroy_buffer()
    pluto._rxadc.set_kernel_buffers_count(1)
    pluto.rx_buffer_size = 1048576
    pluto._ctx.set_timeout(3000)
    stop = threading.Event()
    errors, timing = [], {}
    origin = time.monotonic()
    def writer():
        try:
            if stop.wait(0.12):
                return
            timing['command_start_seconds'] = time.monotonic() - origin
            box.request(mode=mode, count=count, fraction=fraction, delay=delay)
            timing['command_end_seconds'] = time.monotonic() - origin
        except Exception as exc:
            errors.append(f'{type(exc).__name__}: {exc}')
        finally:
            tx.stop()
    thread = threading.Thread(target=writer, name='bounded-bb-dds-request')
    thread.start()
    try:
        timing['rx_call_start_seconds'] = time.monotonic() - origin
        samples = np.asarray(pluto.rx())
        timing['rx_call_end_seconds'] = time.monotonic() - origin
    finally:
        stop.set()
        thread.join(timeout=3)
        require(not thread.is_alive(), 'BB command worker did not return')
        tx.stop()
    require(not errors and 'command_end_seconds' in timing, f'Incomplete RF sequence: {errors}')
    result = {'fraction': fraction, 'mode': mode, 'count': count, 'delay': delay, 'timing': timing,
              'rf': analyze(samples, int(pluto.sample_rate), reference)}
    private = os.environ.get('RTL8922_BB_DDS_TRACE_DIR')
    if private:
        directory = Path(private)
        require(directory.is_dir(), 'Private trace directory must already exist')
        trace = directory / f'mode{mode}-fraction{fraction}-delay{delay}-{time.monotonic_ns()}.cf32'
        with trace.open('xb') as stream:
            np.asarray(samples, dtype='<c8').tofile(stream)
        trace.chmod(0o600)
        if 'SUDO_UID' in os.environ:
            os.chown(trace, int(os.environ['SUDO_UID']), int(os.environ['SUDO_GID']))
        result['private_trace'] = str(trace)
    if mode == 3:
        result['pattern'] = analyze_pattern(samples, int(pluto.sample_rate), reference,
                                            box.report['commands'][-1]['host_bracket_lower_bound_updates_per_second'])
    return result


def run(args):
    import adi
    report = {'schema_version': 1, 'hardware_access': True, 'rf_tx_requested': True,
              'started_utc': time.strftime('%Y-%m-%dT%H:%M:%SZ', time.gmtime()),
              'status': 'started', 'arbitrary_iq_streaming_demonstrated': False,
              'center_hz': 2442000000, 'path': 1, 'rf_gain_code': args.gain_code,
              'rx_gain': args.rx_gain, 'tx_pad': args.tx_pad, 'runs': []}
    def save():
        args.report.write_text(json.dumps(report, indent=2) + '\n')
    def interrupted(*_):
        raise TimeoutError('Bounded BB DDS RF experiment interrupted')
    tx = box = pluto = None
    original = original_frequency = None
    handlers = {sig: signal.signal(sig, interrupted) for sig in (signal.SIGALRM, signal.SIGTERM, signal.SIGINT)}
    signal.alarm(30)
    with open('/run/lock/rtl8922-sdr.lock', 'a') as lock:
        fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
        try:
            metadata = json.loads(args.patch_report.read_text())
            actual = hashlib.sha256(Path(os.environ['RTL8922_FIRMWARE']).read_bytes()).hexdigest()
            require(actual == metadata['patched_sha256'], 'Wrong isolated firmware')
            report['firmware_sha256'] = actual
            pluto = adi.Pluto('ip:192.168.2.1')
            pluto._ctx.set_timeout(3000)
            pd = pluto._ctrl.find_channel('altvoltage1', True).attrs['powerdown']
            require(pd.value == '1', 'Pluto TX is active')
            keys = ('sample_rate', 'rx_lo', 'tx_lo', 'rx_rf_bandwidth', 'tx_rf_bandwidth',
                    'gain_control_mode_chan0', 'rx_hardwaregain_chan0', 'tx_hardwaregain_chan0')
            original = {k: getattr(pluto, k) for k in keys}
            report['saved_pluto'] = original
            io = DebugIO()
            iw = os.environ['RTL8922_IW']
            info = subprocess.check_output([iw, 'dev', io.iface, 'info'], text=True, timeout=3)
            match = re.search(r'channel .*?\((\d+) MHz\).*?width: 20 MHz', info)
            require(match is not None, 'Expected initial HT20 channel')
            original_frequency = match[1]
            save()
            pluto.sample_rate = 4000000
            pluto.rx_rf_bandwidth = 3600000
            pluto.rx_lo = 2442000000 - args.rx_offset
            pluto.gain_control_mode_chan0 = 'manual'
            pluto.rx_hardwaregain_chan0 = args.rx_gain
            pluto.rx_buffer_size = 65536
            subprocess.run([iw, 'dev', io.iface, 'set', 'freq', '2442', 'HT20'], check=True, timeout=3)
            time.sleep(0.1)
            tx = Transaction(io, 1, report, save, gain=args.gain_code, source='calibration', tx_pad=args.tx_pad)
            box = Mailbox(io, report, save)
            mapped = box.request()
            require(mapped[5] == io.read(('bb', 0, 0x802C)), 'NCO mapping mismatch')
            targets = [args.rx_offset + f for f in (250000, 500000, 750000)]
            report['off_before'] = measure(pluto, targets)
            reference = None
            report['static_controls'] = []
            for index in (1, 2, 3, 1):
                tx.setup()
                tx.start(index)
                row = {'index': index, 'rf': measure(pluto, targets)}
                report['static_controls'].append(row)
                if index == 1:
                    reference = row['rf']['targets'][0]['hz']
                tx.stop()
                save()
            offsets = [r['rf']['targets'][r['index']-1]['hz'] - r['index']*250000
                       for r in report['static_controls']]
            require(max(offsets) - min(offsets) <= 3000, 'Static NCO motion control failed')
            report['reference_index1_hz'] = reference
            for fraction in args.fractions:
                report['runs'].append(capture(box, tx, pluto, fraction, reference))
                save()
            if args.pattern:
                report['runs'].append(capture(box, tx, pluto, 0, reference, mode=3, count=16384, delay=1023))
                save()
            pluto.rx_destroy_buffer()
            pluto.rx_buffer_size = 65536
            report['off_after'] = measure(pluto, targets)
            report['status'] = 'finite_bb_fractional_dds_rf_captured'
        except BaseException as exc:
            report['exception'] = f'{type(exc).__name__}: {exc}'
            raise
        finally:
            signal.alarm(0)
            signal.signal(signal.SIGTERM, signal.SIG_IGN)
            signal.signal(signal.SIGINT, signal.SIG_IGN)
            cleanup = []
            if tx:
                try:
                    tx.restore()
                except Exception as exc:
                    cleanup.append(f'RTL restore: {exc}')
            if box:
                box.restore()
            if pluto is not None and original is not None:
                actions = [('RX buffer', pluto.rx_destroy_buffer),
                           ('TX off', lambda: setattr(pd, 'value', '1'))]
                for key in keys:
                    if key != 'gain_control_mode_chan0':
                        actions.append((key, lambda key=key: setattr(pluto, key, original[key])))
                actions.append(('gain mode', lambda: setattr(pluto, 'gain_control_mode_chan0', original['gain_control_mode_chan0'])))
                for label, action in actions:
                    try:
                        action()
                    except Exception as exc:
                        cleanup.append(f'{label}: {exc}')
                try:
                    report['restored_pluto'] = {k: getattr(pluto, k) for k in keys}
                    report['pluto_tx_powerdown'] = pd.value
                except Exception as exc:
                    cleanup.append(f'Pluto verification: {exc}')
            if original_frequency is not None:
                try:
                    subprocess.run([iw, 'dev', io.iface, 'set', 'freq', original_frequency, 'HT20'], check=True, timeout=3)
                except Exception as exc:
                    cleanup.append(f'Channel: {exc}')
            report['cleanup_errors'] = cleanup
            save()
            for sig, handler in handlers.items():
                signal.signal(sig, handler)
    print(json.dumps({k: report.get(k) for k in ('status', 'exception', 'cleanup_errors', 'rtl_restore_mismatches')}))


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--run-rf-test', action='store_true')
    p.add_argument('--patch-report', type=Path)
    p.add_argument('--report', type=Path)
    p.add_argument('--fractions', type=int, nargs='+', default=[0, 16384, 32768, 49152, 0])
    p.add_argument('--pattern', action='store_true')
    p.add_argument('--rx-gain', type=int, choices=range(0, 72), default=30)
    p.add_argument('--rx-offset', type=int, choices=(0, 1000000), default=1000000)
    p.add_argument('--gain-code', type=int, choices=(8, 15), default=8)
    p.add_argument('--tx-pad', type=int, choices=(0, 2, 6), default=0)
    args = p.parse_args()
    if not args.run_rf_test:
        print(json.dumps({'hardware_access': False, 'plan': 'finite BB fractional-NCO bursts with Pluto RX and restoration'}))
        return
    require(args.patch_report and args.report and not args.report.exists(), 'Fresh report and patch metadata required')
    require(1 <= len(args.fractions) <= 5 and all(0 <= f <= 65535 for f in args.fractions), 'Invalid bounded fraction list')
    run(args)


if __name__ == '__main__':
    main()
