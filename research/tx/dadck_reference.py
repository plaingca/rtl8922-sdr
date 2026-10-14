"""Manual DAC DC-correction test with a continuous independent RF pilot.

The pilot's 1/2/1 frequency motion checks identity and aligns one RX buffer.
Its complex envelope removes common RF phase drift. Unseen joint DAC codes
are held out from the matrix and differential-frequency fit. No raw data saved.
"""

import threading
import time
import os
from pathlib import Path


def tone_peak(samples, rate, nominal):
    """Median short-block spectra reject transient ambient Wi-Fi bursts."""
    import numpy as np
    n = 4096
    samples = np.asarray(samples)
    blocks = samples[:len(samples) // n * n].reshape(-1, n)
    if len(blocks) < 8:
        raise ValueError('Insufficient pilot blocks')
    power = np.median(abs(np.fft.fft(blocks * np.hanning(n), axis=1))**2, axis=0)
    frequencies = np.fft.fftfreq(n, 1 / rate)
    k = np.flatnonzero(abs(frequencies - nominal) < 50000)
    peak = int(k[np.argmax(power[k])])
    floor = np.median(power[k[abs(frequencies[k] - frequencies[peak]) > 5000]])
    return {'hz': float(frequencies[peak]),
            'above_local_median_db': float(10 * np.log10(max(power[peak], 1e-20) / max(floor, 1e-20))),
            'blocks': len(blocks), 'fft_size': n}


def states(centers, full_range=False):
    ci, cq = centers
    if not all(0 <= c <= 127 for c in centers):
        raise ValueError(f'Invalid seven-bit DAC DCK baseline: {centers}')
    if full_range:
        result = [(0, 0)]
        for code in (16, 48, 80, 112):
            result.extend(((code, 0), (0, 0), (0, code), (0, 0)))
        for _ in range(2):
            for pair in ((32, 96), (96, 32), (48, 112), (112, 48)):
                result.extend((pair, (0, 0)))
        return result

    def levels(c):
        # Never wrap a code or assume signed encoding. Near an endpoint,
        # independently vary that axis toward the interior of the code range.
        if c < 4:
            return (2, 4), (1, 3)
        if c > 123:
            return (-4, -2), (-3, -1)
        return (-4, 4), (-2, 2)

    (it, ih), (qt, qh) = levels(ci), levels(cq)
    result = [centers]
    for repeat in range(4):
        offsets = ((it[0], 0), (it[1], 0), (0, qt[0]), (0, qt[1])) if repeat < 2 else ((ih[0], qh[0]), (ih[1], qh[1]), (ih[0], qh[1]), (ih[1], qh[0]))
        for i, q in offsets:
            result.extend(((ci + i, cq + q), centers))
    return result


def evaluate(points, design):
    """Fit only first 17 states; later mixed levels are never fitted."""
    import numpy as np
    y, t, x = np.asarray(points, complex), np.arange(len(points)) * .04, np.asarray(design, float)
    train = np.arange(len(y)) <= 16
    inverse = np.linalg.pinv(x[train])
    best = None
    for df in np.arange(-10, 10.0001, .025):
        corrected = y * np.exp(-2j * np.pi * df * t)
        coefficients = inverse @ corrected[train]
        mse = float(np.mean(abs(corrected[train] - x[train] @ coefficients)**2))
        if best is None or mse < best[0]:
            best = mse, float(df), coefficients, corrected
    mse, df, coefficients, corrected = best
    predicted = x @ coefficients
    heldout_mse = float(np.mean(abs(corrected[~train] - predicted[~train])**2))
    modulation = float(np.mean(abs(x[~train, 1:] @ coefficients[1:])**2))
    singular = np.linalg.svd(np.array([[c.real for c in coefficients[1:]],
                                     [c.imag for c in coefficients[1:]]]), compute_uv=False)
    snr = float(10 * np.log10(max(modulation, 1e-20) / max(heldout_mse, 1e-20)))
    condition = float(singular[0] / max(singular[1], 1e-20))
    return {'train_mse': mse, 'differential_frequency_hz': df,
            'heldout_mse': heldout_mse, 'heldout_modulation_to_residual_db': snr,
            'axis_singular_values': singular.tolist(), 'axis_condition': condition,
            'coefficients': [[float(c.real), float(c.imag)] for c in coefficients],
            'heldout_axis_gate_passed': snr >= 15 and condition < 3}


def capture(tx, pluto, full_range=False):
    import numpy as np
    rate, size, decimation = 4000000, 8388608, 512
    centers = tuple(tx.saved['bb8', 0, a] & 127 for a in (0xC4D0, 0xC4D4))
    sequence = states(centers, full_range)
    if int(pluto.sample_rate) != rate:
        raise ValueError('Expected 4 MS/s RX')
    pluto.rx_hardwaregain_chan0 = 45
    pluto.rx_destroy_buffer()
    pluto._ctx.set_timeout(12000)
    pluto._rxadc.set_kernel_buffers_count(1)
    pluto.rx_buffer_size = size
    tx.setup()
    tx.field('bb', 0, 0x2BD4, 0xA000, 5)
    tx.start(1)
    stop, events, errors = threading.Event(), [], []
    origin = time.monotonic()

    def wait_until(seconds):
        return stop.wait(max(0, origin + seconds - time.monotonic()))

    def writer():
        try:
            for seconds, index in ((.12, 2), (.20, 1)):
                if wait_until(seconds):
                    return
                tx.field('bb', 0, 0x802C, 0xFFF, index)
                events.append({'kind': 'pilot', 'time': time.monotonic() - origin, 'index': index})
            for n, (i, q) in enumerate(sequence):
                if wait_until(.32 + .04 * n):
                    return
                for address, code in ((0xC4D0, i), (0xC4D4, q)):
                    key = ('bb8', 0, address)
                    tx.io.write(key, (tx.saved[key] & 0x80) | code)
                readback = [tx.io.read(('bb8', 0, a)) & 127 for a in (0xC4D0, 0xC4D4)]
                events.append({'kind': 'dac', 'time': time.monotonic() - origin,
                               'i': i, 'q': q, 'readback': readback})
                if readback != [i, q]:
                    raise RuntimeError(f'DAC correction write did not read back: {[i, q]} -> {readback}')
            if not wait_until(.32 + .04 * len(sequence)):
                tx.stop()
        except Exception as error:
            errors.append(str(error))

    thread = threading.Thread(target=writer, name='bounded-dadck-reference')
    thread.start()
    try:
        samples = np.asarray(pluto.rx())
    finally:
        stop.set()
        thread.join(timeout=3)
        if thread.is_alive():
            raise RuntimeError('DAC reference writer did not stop')
        tx.stop()
        pluto._ctx.set_timeout(3000)
    result = {'qualified': False, 'arbitrary_iq_demonstrated': False,
              'continuous_pilot': True, 'baseline_codes': list(centers),
              'events': events, 'rx_gain_db': 45, 'state_dwell_seconds': .04,
              'full_seven_bit_codebook': full_range}
    if errors or len(events) != len(sequence) + 2:
        raise RuntimeError(f'Incomplete DAC reference sequence: {errors}')
    if len(samples) != size:
        raise RuntimeError('Incomplete single RX buffer')
    initial = tone_peak(samples[:131072], rate, 1250000)
    carrier = initial['hz']
    result['pilot_coarse_hz'] = carrier
    result['initial_pilot_spectrum'] = initial

    def envelope(frequency):
        return (samples * np.exp(-2j * np.pi * frequency * np.arange(size) / rate)).reshape(-1, decimation).mean(axis=1)

    pilot, shifted, output = envelope(carrier), envelope(carrier + 250000), envelope(carrier - 250000)
    t = (np.arange(len(pilot)) + .5) * decimation / rate
    clip = ((abs(samples.real) >= 2047) | (abs(samples.imag) >= 2047)).reshape(-1, decimation).mean(axis=1)
    result['clipped_fraction'] = float(np.mean(clip > 0))
    result['initial_pilot_median_amplitude'] = float(np.median(abs(pilot[t < .04])))
    private = os.environ.get('RTL8922_PRIVATE_DAC_TRACE')
    if private:
        trace = Path(private).resolve()
        if trace.parent != Path('/tmp') or trace.exists() or trace.suffix != '.npz':
            raise ValueError('Private capture trace must be a fresh /tmp/*.npz path')
        # Private decimated capture, deliberately outside Git. No full-rate data.
        np.savez_compressed(trace, pilot=pilot, shifted=shifted, output=output,
                            t=t, clip=clip, carrier=carrier, events=np.asarray(events, object),
                            centers=np.asarray(centers))
        trace.chmod(0o600)
        result['private_decimated_trace_path'] = str(trace)
    if initial['above_local_median_db'] < 20:
        return result | {'reason': 'Initial pilot did not exceed local floor by 20 dB'}
    # Identify the training marker without using any DAC state or held-out data.
    marker = (abs(shifted) > 3 * abs(pilot)) & (t > .01) & (t < .4) & (clip == 0)
    run = np.convolve(marker.astype(int), np.ones(32, int), mode='same') >= 30
    hits = np.flatnonzero(run)
    if not len(hits):
        return result | {'reason': 'Pilot frequency-motion marker not detected'}
    begin, end = float(t[hits[0]]), float(t[hits[-1]])
    # The falling edge may be hidden by an ambient burst. Align to the clean
    # onset, accounting for the centered 32-record support; verify occupancy,
    # moved spectrum and return spectrum independently of the DAC payload.
    onset = begin - 15 * decimation / rate
    delay = onset - events[0]['time']
    result.update(marker_start_seconds=begin, marker_stop_seconds=end,
                  rx_alignment_seconds=delay, marker_duration_seconds=end - begin)
    marker_interval = (t > onset + .005) & (t < onset + .075)
    occupancy = float(np.mean(marker[marker_interval]))
    result['marker_occupancy_fraction'] = occupancy
    if occupancy < .6:
        return result | {'reason': 'Insufficient clean shifted-pilot marker occupancy'}
    # A marker's measured spectral peak must move by the commanded 250 kHz.
    segment = samples[int((onset + .008) * rate):int((onset + .072) * rate)]
    moved_spectrum = tone_peak(segment, rate, 1500000)
    result['moved_pilot_spectrum'] = moved_spectrum
    moved = moved_spectrum['hz']
    result['pilot_shift_hz'] = moved - carrier
    if abs(moved - carrier - 250000) > 3000 or moved_spectrum['above_local_median_db'] < 20:
        return result | {'reason': 'Strong peak did not follow reference motion'}
    returned = tone_peak(samples[int((onset + .09) * rate):int((onset + .122) * rate)], rate, 1250000)
    result['returned_pilot_spectrum'] = returned
    if abs(returned['hz'] - carrier) > 3000 or returned['above_local_median_db'] < 20:
        return result | {'reason': 'Pilot did not return to original frequency'}
    points, design, counts = [], [], []
    ratio = output * pilot.conj() / np.maximum(abs(pilot)**2, 1e-12)
    dac_events = events[2:]
    for event, (i, q) in zip(dac_events, sequence):
        central = (t > event['time'] + delay + .006) & (t < event['time'] + delay + .034) & (clip == 0)
        amplitude = result['initial_pilot_median_amplitude']
        selected = central & (abs(pilot) > max(.1, amplitude * .5)) & (abs(pilot) < amplitude * 2)
        counts.append(int(selected.sum()))
        if counts[-1] < 40:
            return result | {'reason': 'Insufficient clean pilot observations', 'counts': counts}
        z = ratio[selected]
        points.append(complex(np.median(z.real), np.median(z.imag)))
        design.append([1, i - centers[0], q - centers[1]])
    result['counts'] = counts
    result['clipped_fraction'] = float(np.mean(clip > 0))
    result['state_ratio_estimates'] = [[float(z.real), float(z.imag)] for z in points]
    result['fit'] = evaluate(points, design)
    if full_range:
        # Encoding is selected by training error only. Held-out joint codes
        # cannot choose the encoding, frequency, or matrix coefficients.
        signed = lambda c: c if c < 64 else c - 128
        signed_design = [[1, signed(i) - signed(centers[0]), signed(q) - signed(centers[1])]
                         for i, q in sequence]
        candidates = {'unsigned': result['fit'], 'twos_complement': evaluate(points, signed_design)}
        encoding = min(candidates, key=lambda name: candidates[name]['train_mse'])
        result['encoding_candidates'] = candidates
        result['selected_encoding_from_training'] = encoding
        result['fit'] = candidates[encoding]
    result['reason'] = 'Offset-axis test only; raw sample replay is unproved'
    return result
