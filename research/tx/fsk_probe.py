"""Bounded DDS-symbol experiment; this is not a raw-I/Q sample streamer."""

import threading
import time

from tone_validation import measure


SYNC = (0xD391).to_bytes(2, 'big')
PAYLOAD = b'RTL8922!'
DWELL = 0.02


def bits(data):
    return [(byte >> bit) & 1 for byte in data for bit in range(7, -1, -1)]


def decode(samples, rate, carriers, events, stop_time):
    import numpy as np
    nfft = 4096
    data = np.asarray(samples)[:len(samples) // nfft * nfft].reshape(-1, nfft)
    freq = np.fft.fftfreq(nfft, 1 / rate)
    power = abs(np.fft.fft(data * np.hanning(nfft), axis=1)) ** 2
    energies = np.array([np.sum(power[:, abs(freq-f) < 4000], axis=1) for f in carriers]).T
    guard = np.zeros(nfft, dtype=bool)
    for f in carriers:
        guard |= (abs(freq-f) > 10000) & (abs(freq-f) < 40000)
    background = np.median(power[:, guard], axis=1)
    ratio = 10 * np.log10(np.maximum(energies[:, 1], 1e-20) / np.maximum(energies[:, 0], 1e-20))
    t = (np.arange(len(data)) + 0.5) * nfft / rate
    event_t = np.asarray([e[0] for e in events])
    symbol_bits = bits(SYNC + PAYLOAD)

    def symbols(delay, count):
        values = []
        for a in event_t[:count] + delay + DWELL / 2:
            select = abs(t-a) < DWELL * 0.3
            # Reject broadband interference using bins outside both tone bands.
            # This rule never sees the expected symbol or the decoded payload.
            if select.any():
                quiet = select & (background <= np.quantile(background[select], 0.25))
                values.append(float(np.median(ratio[quiet])))
            else:
                values.append(float('nan'))
        return np.asarray(values)

    # Align using only the sync word. Payload bits never influence alignment.
    sync = np.asarray(bits(SYNC))
    candidates = []
    for delay in np.arange(-0.2, 0.401, 0.0005):
        v = symbols(delay, len(sync))
        if np.isfinite(v).all():
            wrong = int(np.sum((v > 0) != sync))
            score = float(np.mean(np.clip(v, -20, 20) * (2*sync-1)))
            candidates.append((wrong, -score, float(delay)))
    if not candidates:
        return {'passed': False, 'reason': 'Sync lies outside the capture'}
    _, _, delay = min(candidates)
    values = symbols(delay, len(symbol_bits))
    if not np.isfinite(values).all():
        return {'passed': False, 'reason': 'Payload lies outside the capture', 'alignment_seconds': delay}
    decoded = (values > 0).astype(int)
    payload = bytes(sum(int(bit) << (7-j) for j, bit in enumerate(decoded[i:i+8]))
                    for i in range(len(sync), len(decoded), 8))
    sync_errors = int(np.sum(decoded[:len(sync)] != sync))
    payload_errors = int(np.sum(decoded[len(sync):] != np.asarray(bits(PAYLOAD))))
    pilot = t < event_t[0] + delay - 0.02
    off = t > stop_time + delay + 0.02
    suppression = float(10 * np.log10(max(float(np.median(energies[pilot, 0])), 1e-20) /
                                     max(float(np.median(energies[off, 0])), 1e-20))) if pilot.any() and off.any() else None
    clip = float(np.mean((abs(samples.real) >= 2047) | (abs(samples.imag) >= 2047)))
    gates = {'sync_without_bit_errors': sync_errors == 0,
             'payload_without_bit_errors': payload_errors == 0,
             'every_symbol_has_6db_tone_discrimination': bool(np.min(abs(values)) >= 6),
             'pilot_disappears_after_tx_stop_15db': suppression is not None and suppression >= 15,
             'no_clipping': clip == 0}
    return {'passed': all(gates.values()), 'gates': gates,
            'scope': 'Host-controlled two-frequency DDS symbols; not arbitrary complex samples',
            'alignment_seconds_sync_only': delay, 'sync_bit_errors': sync_errors,
            'payload_bit_errors': payload_errors, 'decoded_payload_hex': payload.hex(),
            'expected_payload_hex': PAYLOAD.hex(), 'symbol_tone_ratio_db': values.tolist(),
            'interference_rule': 'Lowest quartile of out-of-tone-band noise within each symbol center window',
            'pilot_above_off_db': suppression, 'clip_fraction': clip,
            'fft_size': nfft, 'candidate_alignment_count': len(candidates)}


def run(tx, pluto, save, report):
    import numpy as np
    rate = int(pluto.sample_rate)
    if rate not in (2000000, 4000000):
        raise ValueError('FSK probe requires 2 or 4 MS/s Pluto RX')
    tx.setup()
    tx.start(1)
    pilot = measure(pluto, [report['center_hz'] - int(pluto.rx_lo) + 250000])
    carrier = pilot['targets'][0]['hz']
    report['fsk'] = {'pilot': pilot, 'payload_hex': PAYLOAD.hex(), 'sync_hex': SYNC.hex(),
                     'symbol_seconds': DWELL, 'symbol_rate': 1/DWELL,
                     'tone_indices': [1, 2], 'events': []}
    save()
    pluto.rx_destroy_buffer()
    pluto._ctx.set_timeout(12000)
    pluto._rxadc.set_kernel_buffers_count(1)
    pluto.rx_buffer_size = 4194304 if rate == 2000000 else 8388608
    stop = threading.Event()
    events, errors = report['fsk']['events'], []
    origin = time.monotonic()
    stopped_at = []

    def writer():
        try:
            deadline = origin + 0.2
            for bit in bits(SYNC + PAYLOAD):
                if stop.wait(max(0, deadline-time.monotonic())):
                    return
                tx.field('bb', 0, 0x802C, 0xFFF, 1 + bit)
                events.append([time.monotonic()-origin, bit])
                deadline += DWELL
            if not stop.wait(max(0, deadline-time.monotonic())):
                tx.stop()
                stopped_at.append(time.monotonic()-origin)
        except Exception as error:
            errors.append(str(error))

    thread = threading.Thread(target=writer, name='bounded-dds-fsk-writer')
    thread.start()
    try:
        samples = np.asarray(pluto.rx())
    finally:
        stop.set()
        thread.join(timeout=3)
        if thread.is_alive():
            raise RuntimeError('DDS writer failed to stop')
        tx.stop()
        pluto._ctx.set_timeout(3000)
    if errors or len(events) != len(bits(SYNC + PAYLOAD)) or not stopped_at:
        raise RuntimeError(f'Incomplete DDS sequence: {errors}, events={len(events)}')
    report['fsk']['stopped_at_seconds'] = stopped_at[0]
    report['fsk']['qualification'] = decode(samples, int(pluto.sample_rate),
                                           [carrier, carrier+250000], events, stopped_at[0])
    report['status'] = 'dds_fsk_probe_complete'
    save()
