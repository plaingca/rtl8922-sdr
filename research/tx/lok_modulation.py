"""Bounded RF tests of offset controls and the experimental complex IF route.

Full RF buffers stay in memory. An explicit environment variable can retain
private decimated diagnostic envelopes under /tmp. Called by calibration_probe.
"""

import threading
import time
import os
from pathlib import Path


def capture(tx, pluto, offset_source='rf_lo', payload_file=None):
    import numpy as np

    rate, size, decimation = 4000000, 8388608, 512
    if offset_source not in ('rf_lo', 'dac_dck', 'iqc_dc', 'iqc_if'):
        raise ValueError('Unknown offset source')
    dac_dck = offset_source == 'dac_dck'
    iqc_dc = offset_source == 'iqc_dc'
    iqc_if = offset_source == 'iqc_if'
    iqc = iqc_dc or iqc_if
    if iqc_if:
        from iq_if_probe import coefficients as if_coefficients, payload as if_payload, schedule
        requested_payload = if_payload(payload_file)
        if_schedule = schedule(requested_payload)
    if dac_dck:
        centers = tuple(tx.saved['bb8', 0, a] & 0x7F for a in (0xC4D0, 0xC4D4))
        if not all(4 <= c <= 123 for c in centers):
            raise ValueError(f'DAC DCK baseline too close to the code boundary: {centers}')
    else:
        centers = (0, 0) if iqc else (16, 16)
    if int(pluto.sample_rate) != rate:
        raise ValueError('LO-offset modulation probe requires 4 MS/s Pluto RX')
    pluto.rx_hardwaregain_chan0 = 45
    pluto.rx_destroy_buffer()
    pluto._ctx.set_timeout(12000)
    pluto._rxadc.set_kernel_buffers_count(1)
    pluto.rx_buffer_size = size
    tx.setup()
    if iqc:
        from iq_envelope_probe import pack
        tx.field('bb', 0, 0x8238, 0xFFFFFFFF, pack(1024, 0))
        tx.field('bb', 0, 0x8224, 0x100, 0)
        tx.field('bb', 0, 0x802C, 0xFFF, 640 if iqc_dc else 1)
        tx.field('bb', 0, 0x8034, 1, 1)
        tx.field('bb', 0, 0x8034, 1, 0)
        constant = tx.inspect_dac(7)
        if iqc_dc and (not constant.get('valid_capture') or constant['real_std'] > 1 or constant['imag_std'] > 1
                or abs(constant['real_mean']) < 1000 or abs(constant['imag_mean']) > 1):
            raise RuntimeError(f'DDS640 constant preflight failed: {constant}')
    elif dac_dck:
        # Native 8922A helper 0x14045bf64 sets manual DADCK bits 13/15,
        # then writes the two seven-bit results to byte registers c4d0/c4d4.
        # Do not launch the DACK calibration engine or alter MSBK/bias values.
        tx.field('bb', 0, 0x2BD4, 0xA000, 5)
    else:
        tx.field('rf', tx.path, 0xDF, 4, 1)
        tx.field('rf', tx.path, 0x58, 0xFFC00, (16 << 5) | 16)
    digital_pilot = tx.source == 'calibration'
    tx.start(1 if digital_pilot else 0)
    # Alternating reference states separate oscillator drift from I/Q changes.
    # Both axes are exercised independently, with repeated levels.
    ci, cq = centers
    states = [centers]
    for repeat in range(4):
        tests = ((ci-4, cq), (ci+4, cq), (ci, cq-4), (ci, cq+4))
        if iqc:
            tests = ((-512, 0), (512, 0), (0, -512), (0, 512)) if repeat < 2 else ((-256, -384), (256, 384), (-384, 256), (384, -256))
        if dac_dck and repeat >= 2:
            # Unseen joint levels are held out from matrix/frequency fitting.
            tests = ((ci-2, cq-3), (ci+2, cq+3), (ci-3, cq+2), (ci+3, cq-2))
        for test in tests:
            states.extend((test, centers))
    if iqc_if:
        states = if_schedule['states']
    base = tx.io.read(('rf', tx.path, 0x58)) & ~0xFFC02
    stop = threading.Event()
    events, errors = [], []
    origin = time.monotonic()

    def writer():
        try:
            deadline = origin + 0.2
            for i, q in states:
                if stop.wait(max(0, deadline - time.monotonic())):
                    return
                if digital_pilot and not events and not iqc_if:
                    tx.field('bb', 0, 0x802C, 0xFFF, 640 if iqc_dc else 0)
                    if iqc_dc:
                        tx.field('bb', 0, 0x8034, 1, 1)
                        tx.field('bb', 0, 0x8034, 1, 0)
                if iqc:
                    tx.io.write(('bb', 0, 0x8238), pack(*(if_coefficients(i, q) if iqc_if else (i, q))))
                elif dac_dck:
                    for address, code in ((0xC4D0, i), (0xC4D4, q)):
                        key = ('bb8', 0, address)
                        tx.io.write(key, (tx.saved[key] & 0x80) | code)
                else:
                    value = base | (i << 15) | (q << 10)
                    tx.io.write(('rf', tx.path, 0x58), value)
                events.append((time.monotonic() - origin, i, q))
                deadline += 0.04
            # End RF on schedule even if the Pluto buffer transfer stalls.
            if not stop.wait(max(0, deadline - time.monotonic())):
                tx.stop()
        except Exception as error:
            errors.append(str(error))

    thread = threading.Thread(target=writer, name='bounded-lok-offset-writer')
    thread.start()
    try:
        # One buffer avoids assuming phase continuity across Pluto refills.
        samples = np.asarray(pluto.rx())
    finally:
        stop.set()
        thread.join(timeout=3)
        if thread.is_alive():
            raise RuntimeError('LO-offset writer failed to stop')
        tx.stop()
        pluto._ctx.set_timeout(3000)
    if errors:
        raise RuntimeError(f'LO-offset writer: {errors}')
    if len(events) != len(states):
        raise RuntimeError('LO-offset sequence incomplete')
    pilot = samples[:262144]
    power = abs(np.fft.fft(pilot * np.hanning(len(pilot)))) ** 2
    frequencies = np.fft.fftfreq(len(pilot), 1 / rate)
    pilot_nominal = 1250000 if digital_pilot else 1000000
    candidates = np.flatnonzero(abs(frequencies - pilot_nominal) < 50000)
    coarse = float(frequencies[candidates[np.argmax(power[candidates])]])
    if iqc:
        from dadck_reference import tone_peak
        pilot_spectrum = tone_peak(pilot, rate, pilot_nominal)
        if pilot_spectrum['above_local_median_db'] < 20:
            return {'qualified': False, 'reason': 'Initial RF reference too weak', 'pilot_spectrum': pilot_spectrum, 'events': events}
        coarse = pilot_spectrum['hz']
    n = np.arange(len(pilot))
    pilot_env = (pilot * np.exp(-2j * np.pi * coarse * n / rate)).reshape(-1, decimation).mean(axis=1)
    pilot_t = (np.arange(len(pilot_env)) * decimation + decimation / 2) / rate
    slope, intercept = np.polyfit(pilot_t, np.unwrap(np.angle(pilot_env)), 1)
    if iqc:
        rms = np.sqrt(np.mean(abs(pilot.reshape(-1, decimation))**2, axis=1))
        quiet_limit = max(5., float(np.quantile(rms, .25)) * 2)
        quiet = rms < quiet_limit
        edges = np.r_[0, np.flatnonzero(quiet[1:] != quiet[:-1]) + 1, len(quiet)]
        slopes, residuals = [], []
        for a, b in zip(edges[:-1], edges[1:]):
            if quiet[a] and b-a >= 20:
                phase = np.unwrap(np.angle(pilot_env[a:b]))
                fit = np.polyfit(pilot_t[a:b], phase, 1)
                slopes.append(fit[0]); residuals.append(float(np.std(phase - np.polyval(fit, pilot_t[a:b]))))
        if not slopes:
            return {'qualified': False, 'reason': 'Insufficient clean reference phase', 'events': events}
        slope, intercept = float(np.median(slopes)), 0.
    carrier = coarse + float(slope / (2 * np.pi))
    pilot_residual = float(np.std(np.unwrap(np.angle(pilot_env)) - (slope * pilot_t + intercept)))
    if iqc:
        pilot_residual = float(np.median(residuals))
    pilot_full = (samples * np.exp(-2j * np.pi * carrier * np.arange(size) / rate)).reshape(-1, decimation).mean(axis=1)
    analog_carrier = carrier - (250000 if digital_pilot and not iqc_if else 0)
    env = (samples * np.exp(-2j * np.pi * analog_carrier * np.arange(size) / rate)).reshape(-1, decimation).mean(axis=1) if digital_pilot and not iqc_if else pilot_full
    t = (np.arange(len(env)) * decimation + decimation / 2) / rate
    clip = ((abs(samples.real) >= 2047) | (abs(samples.imag) >= 2047)).reshape(-1, decimation).mean(axis=1)
    image = ((samples * np.exp(-2j * np.pi * (carrier - 500000) * np.arange(size) / rate))
             .reshape(-1, decimation).mean(axis=1)) if iqc_if else np.asarray([])
    private_trace = None
    if iqc and os.environ.get('RTL8922_PRIVATE_IQ_RF_TRACE'):
        trace = Path(os.environ['RTL8922_PRIVATE_IQ_RF_TRACE']).resolve()
        if trace.parent != Path('/tmp') or trace.exists() or trace.suffix != '.npz':
            raise ValueError('Private trace must be a fresh /tmp/*.npz file')
        np.savez_compressed(trace, output=env, pilot=pilot_full, image=image, t=t, clip=clip,
                            rms=np.sqrt(np.mean(abs(samples.reshape(-1, decimation))**2, axis=1)),
                            states=np.asarray(states), events=np.asarray(events),
                            carrier=analog_carrier, quiet_limit=quiet_limit)
        trace.chmod(0o600)
        private_trace = str(trace)
    if iqc_if:
        from decode_iq_if import decode
        diagnostic = {'output': env, 'image': image, 't': t, 'clip': clip,
                      'rms': np.sqrt(np.mean(abs(samples.reshape(-1, decimation))**2, axis=1)),
                      'states': np.asarray(states), 'events': np.asarray(events),
                      'quiet_limit': quiet_limit}
        common = {'offset_source': offset_source, 'if_schedule': if_schedule,
                  'private_decimated_trace_path': private_trace,
                  'carrier_hz_relative_pluto': analog_carrier,
                  'image_hz_relative_pluto': analog_carrier-500000,
                  'if_envelope_mapping': 'A=2*I-1024, B=2*Q; desired m=(I+jQ)/1024; image=m-1',
                  'pilot_spectrum': pilot_spectrum,
                  'discarded_clipped_fraction': float(np.mean(clip > 0)),
                  'events': events}
        try:
            result = decode(diagnostic, if_schedule)
        except ValueError as error:
            return common | {'qualified': False, 'finite_complex_if_sequence_demonstrated': False,
                             'reason': str(error)}
        valid = (t > events[0][0]+result['rx_alignment_seconds']+.006)
        valid &= t < events[-1][0]+result['rx_alignment_seconds']+.034
        valid &= (clip == 0) & (diagnostic['rms'] < quiet_limit)
        result['spectral_image_mean_power_relative_to_desired_db'] = float(
            10*np.log10(max(float(np.mean(abs(image[valid])**2)), 1e-20) /
                        max(float(np.mean(abs(env[valid])**2)), 1e-20)))
        return common | result | {'qualified': result['finite_complex_if_sequence_demonstrated']}
    # The large pilot-to-leakage drop aligns queued RX samples to host writes.
    pilot_amplitude = float(np.median(abs(pilot_full[:100])))
    smoothed_amplitude = np.convolve(abs(pilot_full), np.ones(25)/25, mode='same')
    low = np.flatnonzero((smoothed_amplitude < pilot_amplitude * 0.2) & (t > 0.08))
    if not len(low):
        return {'qualified': False, 'reason': 'No pilot-to-offset transition', 'events': events}
    delay = float(t[low[0]] - events[0][0])
    event_t = np.asarray([event[0] for event in events]) + delay
    state_index = np.searchsorted(event_t, t, side='right') - 1
    valid = (state_index >= 0) & (state_index < len(states)) & (clip == 0)
    for edge in event_t:
        valid &= abs(t - edge) > 0.006
    valid &= t < event_t[-1] + 0.035
    if iqc:
        broadband_rms = np.sqrt(np.mean(abs(samples.reshape(-1, decimation))**2, axis=1))
        valid &= broadband_rms < quiet_limit
    x = np.array([[1, states[max(0, min(int(k), len(states)-1))][0] - ci,
                   states[max(0, min(int(k), len(states)-1))][1] - cq] for k in state_index])
    y, ts, design = env[valid], t[valid], x[valid]
    state_ids = state_index[valid]
    # Suppress occasional strong ambient Wi-Fi bursts before fitting a weak LO.
    limit = np.quantile(abs(y), 0.9) * 2
    clean = abs(y) < limit
    y, ts, design, state_ids = y[clean], ts[clean], design[clean], state_ids[clean]
    if len(y) < 500:
        return {'qualified': False, 'reason': 'Insufficient unclipped observations', 'events': events}
    ts -= ts.mean()
    # Fit only the first two repeats. Reserve the last two for prediction;
    # held-out RF points never select frequency, drift or matrix coefficients.
    train = state_ids <= 16
    heldout = state_ids > 16
    if train.sum() < 200 or heldout.sum() < 200:
        return {'qualified': False, 'reason': 'Insufficient train/held-out observations', 'events': events}
    inverse = np.linalg.pinv(design[train])

    def fit(df, drift):
        corrected = y * np.exp(-2j * np.pi * (df * ts + 0.5 * drift * ts**2))
        coefficients = inverse @ corrected[train]
        residual = corrected[train] - design[train] @ coefficients
        return float(np.mean(abs(residual)**2)), coefficients

    df, drift = 0., 0.
    # Coordinate search is offline, requires only NumPy, and retains fit error.
    for width, step in ((80, 1), (8, 0.2), (1, 0.025)):
        for _ in range(3):
            df = min(np.arange(df-width, df+width+step/2, step), key=lambda f: fit(f, drift)[0])
            drift = min(np.arange(drift-2*width, drift+2*width+step, 2*step), key=lambda d: fit(df, d)[0])
    mse, coefficients = fit(df, drift)
    axes = np.array([[coefficients[1].real, coefficients[2].real],
                     [coefficients[1].imag, coefficients[2].imag]])
    singular = np.linalg.svd(axes, compute_uv=False)
    modulation_power = float(np.mean(abs(design[:, 1:] @ coefficients[1:])**2))
    corrected = y * np.exp(-2j * np.pi * (df * ts + 0.5 * drift * ts**2))
    heldout_mse = float(np.mean(abs(corrected[heldout] - design[heldout] @ coefficients)**2))
    on = np.any(design[:, 1:] != 0, axis=1)
    on_zero_db = float(10*np.log10(max(float(np.median(abs(y[on])**2)), 1e-20) / max(float(np.median(abs(y[~on])**2)), 1e-20)))
    heldout_snr = float(10*np.log10(max(modulation_power, 1e-20)/max(heldout_mse, 1e-20)))
    condition = float(singular[0] / max(singular[1], 1e-20))
    gates = {'reference_phase_residual_below_0_25_rad': pilot_residual < .25,
             'heldout_prediction_above_15db': heldout_snr >= 15,
             'two_independent_axes_condition_below_3': condition < 3,
             'on_above_zero_15db': on_zero_db >= 15}
    image_ratio = None
    if iqc_if:
        image_ratio = float(10*np.log10(max(float(np.mean(abs(image[valid])**2)), 1e-20) /
                                      max(float(np.mean(abs(env[valid])**2)), 1e-20)))
    return {'qualified': bool(iqc and all(gates.values())),
            'interpretation': 'Finite host-paced complex IF envelope with a second spectral image' if iqc_if else 'Finite host-paced signed I/Q RF levels' if iqc_dc else 'Analog-offset matrix with held-out prediction; not DAC sample replay',
            'iqc_rf_gates': gates if iqc else None,
            'dds640_constant_preflight': constant if iqc_dc else None,
            'on_above_zero_db': on_zero_db,
            'axis_condition': condition,
            'offset_source': offset_source, 'baseline_codes': list(centers),
            'heldout_uses_unseen_joint_codes': dac_dck or iqc,
            'spectral_image_mean_power_relative_to_desired_db': image_ratio,
            'if_envelope_mapping': 'A=2*I-1024, B=2*Q; desired m=(I+jQ)/1024; image=m-1' if iqc_if else None,
            'private_decimated_trace_path': private_trace,
            'digital_calibration_pilot': digital_pilot,
            'pilot_hz_relative_pluto': carrier, 'carrier_hz_relative_pluto': analog_carrier, 'pilot_phase_residual_rad': pilot_residual,
            'pilot_amplitude': pilot_amplitude, 'rx_alignment_seconds': delay,
            'residual_frequency_hz': float(df), 'frequency_drift_hz_per_second': float(drift),
            'state_dwell_seconds': 0.04, 'events': events, 'used_envelope_points': len(y),
            'discarded_clipped_fraction': float(np.mean(clip > 0)),
            'complex_intercept_i_q_coefficients': [[float(c.real), float(c.imag)] for c in coefficients],
            'axis_singular_values': singular.tolist(), 'fit_mse': mse,
            'train_points': int(train.sum()), 'heldout_points': int(heldout.sum()),
            'heldout_mse': heldout_mse,
            'heldout_modulation_to_residual_db': float(10*np.log10(max(modulation_power, 1e-20)/max(heldout_mse, 1e-20))),
            'modulation_power': modulation_power,
            'modulation_to_residual_db': float(10*np.log10(max(modulation_power, 1e-20)/max(mse, 1e-20)))}
