"""Experimental host-paced signed I/Q writes, observed internally in standby.

DDS word 640 supplies the candidate constant; IQC's two signed fields
program I and Q. One packed write updates both fields. No waveform SRAM or
hardware sample clock is assumed; RF transmission remains unqualified.
"""

import json
from pathlib import Path
import random
import time

from calibration_probe import FULL, la_plan, spectrum
from iq_envelope_probe import pack


SYNC = ((1024, 0), (0, 1024), (-1024, 0), (0, -1024),
        (512, 512), (-512, 512), (-512, -512), (512, -512))
DWELL = .0005


def sequence(filename=None):
    if filename:
        payload = json.loads(Path(filename).read_text())
    else:
        rng = random.Random(8922)
        payload = [[rng.randrange(-1000, 1001), rng.randrange(-1000, 1001)] for _ in range(32)]
    if not isinstance(payload, list) or not 1 <= len(payload) <= 32:
        raise ValueError('Expected 1..32 I/Q pairs')
    for pair in payload:
        if not isinstance(pair, (list, tuple)) or len(pair) != 2 or any(
                type(c) is not int or not -1024 <= c <= 1024 for c in pair):
            raise ValueError('Expected signed integer I/Q values in [-1024,1024]')
    return [list(x) for x in SYNC] + payload


def decode(real, imag, targets, scale, events):
    import numpy as np
    z = np.column_stack((real, imag))
    edges = np.flatnonzero(np.any(z[1:] != z[:-1], axis=1)) + 1
    bounds = np.r_[0, edges, len(z)]
    runs = [(int(a), int(b), z[a]) for a, b in zip(bounds[:-1], bounds[1:]) if b-a >= 8]
    expected = np.asarray(targets) * scale
    groups = []
    for n, target in enumerate(expected):
        if groups and np.array_equal(target, expected[groups[-1][0]]):
            groups[-1].append(n)
        else:
            groups.append([n])
    group_expected = np.asarray([expected[g[0]] for g in groups])
    start = None
    # Alignment uses only the eight known synchronization levels.
    for n in range(len(runs) - len(SYNC) + 1):
        if all(np.max(abs(runs[n+k][2] - group_expected[k])) <= 1 for k in range(len(SYNC))):
            start = n
            break
    if start is None:
        return {'passed': False, 'reason': 'Synchronization levels not found', 'stable_runs': len(runs)}
    selected = runs[start:start + len(groups)]
    if len(selected) != len(groups):
        return {'passed': False, 'reason': 'Incomplete sample sequence', 'decoded_levels': len(selected)}
    actual = np.asarray([r[2] for r, g in zip(selected, groups) for _ in g])
    error = actual - expected
    sync_positions = np.asarray([r[0] for r in selected[:len(SYNC)]])
    clock, offset = np.polyfit(np.asarray(events[:len(SYNC)]), sync_positions, 1)
    predicted = np.asarray([events[g[0]] for g in groups]) * clock + offset
    residual = np.asarray([r[0] for r in selected]) - predicted
    return {'passed': bool(np.max(abs(error)) <= 1),
            'alignment_uses_sync_only': True, 'payload_samples': len(targets)-len(SYNC),
            'payload_wrong_values': int(np.any(abs(error[len(SYNC):]) > 1, axis=1).sum()),
            'max_absolute_dac_count_error': float(np.max(abs(error))),
            'sample_value_rms_error': float(np.sqrt(np.mean(error**2))),
            'estimated_records_per_host_second_from_sync': float(clock),
            'max_payload_write_timing_residual_us': float(np.max(abs(residual[len(SYNC):]), initial=0) / clock * 1e6),
            'dwell_records': [r[1]-r[0] for r in selected],
            'host_write_intervals_us': (np.diff(events) * 1e6).tolist(),
            'interpretation': 'Finite host-paced I/Q holds at DAC debug tap; hardware-clocked replay and RF are unproved'}


def run(tx, pluto, save, report, filename=None):
    import numpy as np
    targets = sequence(filename)
    result = report['iq_sample_probe'] = {
        'scope': 'Both RF paths held in standby; internal TX-DAC tap',
        'arbitrary_iq_rf_demonstrated': False, 'dds_word': 640,
        'requested_iq': targets, 'target_dwell_seconds': DWELL,
        'nominal_host_updates_per_second': 1 / DWELL, 'static_checks': []}
    tx.setup()
    for path in (0, 1):
        tx.field('rf', path, 0, 0xF0000, 1)
    tx.field('bb', 0, 0x8238, FULL, pack(1024, 0))
    tx.field('bb', 0, 0x8224, 0x100, 0)
    tx.field('bb', 0, 0x82CC, 0x3F, 0x12)
    tx.field('bb', 0, 0x802C, 0xFFF, 640)
    tx.field('bb', 0, 0x8034, 1, 1)
    tx.field('bb', 0, 0x8034, 1, 0)
    dc = tx.inspect_dac(7)
    result['constant_control'] = dc
    scale = dc.get('real_mean', 0) / 1024
    if (not dc.get('valid_capture') or abs(abs(scale)-2) > .001
            or dc.get('real_std', 1e9) > .1 or dc.get('imag_std', 1e9) > .1
            or abs(dc.get('imag_mean', 1e9)) > .1):
        report['status'] = 'iq_sample_constant_control_failed'
        save()
        return
    result['dac_counts_per_coefficient'] = scale
    for i, q in targets:
        tx.field('bb', 0, 0x8238, FULL, pack(i, q))
        obs = tx.inspect_dac(7)
        result['static_checks'].append({'requested': [i, q], 'tx_dac_debug': obs})
    result['static_values_passed'] = all(
        x['tx_dac_debug']['valid_capture']
        and abs(x['tx_dac_debug']['real_mean'] - x['requested'][0] * scale) <= 1
        and abs(x['tx_dac_debug']['imag_mean'] - x['requested'][1] * scale) <= 1
        and x['tx_dac_debug']['real_std'] < 1 and x['tx_dac_debug']['imag_std'] < 1
        for x in result['static_checks'])
    save()
    if not result['static_values_passed']:
        report['status'] = 'iq_sample_static_values_failed'
        return
    key = ('bb', 0, 0x8238)
    assert key in tx.saved
    tx.io.write(key, pack(0, 0))
    for op in la_plan(tx.path, 6):
        tx.field(*op)
    tx.field('mmio', 0, 0x21090, 1, 1)
    config = (4 << 16) | (11 << 8)
    tx.field('mmio', 0, 0x9660, FULL, config | 9)
    origin, events = time.monotonic(), []
    if any((tx.io.read(('rf', p, 0)) >> 16) & 15 != 1 for p in (0, 1)):
        raise RuntimeError('RF standby lost before sample sequence')
    for n, (i, q) in enumerate(targets):
        time.sleep(max(0, origin + .004 + n * DWELL - time.monotonic()))
        tx.io.write(key, pack(i, q))
        events.append(time.monotonic() - origin)
    if any((tx.io.read(('rf', p, 0)) >> 16) & 15 != 1 for p in (0, 1)):
        raise RuntimeError('RF standby lost after sample sequence')
    time.sleep(max(0, origin + .004 + len(targets) * DWELL - time.monotonic()))
    tx.io.write(key, pack(0, 0))
    time.sleep(max(0, origin + .034 - time.monotonic()))
    status = tx.io.read(('mmio', 0, 0x9664))
    tx.field('mmio', 0, 0x21090, 1, 0)
    tx.field('mmio', 0, 0x9660, FULL, config)
    raw = np.frombuffer((tx.io.dbg / 'iq_memory').read_bytes(), dtype='<u8')
    pointer = status & 65535
    raw = np.roll(raw, -pointer) if status & 65536 else raw[:pointer]
    real = (raw & 0x3FFF).astype(np.int32)
    imag = ((raw >> 14) & 0x3FFF).astype(np.int32)
    real[real >= 8192] -= 16384
    imag[imag >= 8192] -= 16384
    result['capture_records'] = len(raw)
    result['host_write_times'] = events
    result['sequence_verification'] = decode(real, imag, targets, scale, events)
    result['finite_internal_iq_sequence_demonstrated'] = result['sequence_verification']['passed']
    tx.stop()
    report['off_after'] = spectrum(pluto.rx(), int(pluto.sample_rate))
    report['status'] = 'internal_iq_sample_probe_complete_rf_unqualified'
    save()
