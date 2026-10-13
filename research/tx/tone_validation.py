"""Independent RF checks for the calibration DDS; raw samples stay in memory."""

import time


def summarize_spectra(power, rate, targets):
    import numpy as np
    power = np.asarray(power)
    freq = np.fft.fftshift(np.fft.fftfreq(len(power), 1 / rate))
    found = []
    for target in targets:
        nearby = np.flatnonzero(abs(freq - target) < 50000)
        k = int(nearby[np.argmax(power[nearby])])
        local = power[(abs(freq - freq[k]) > 5000) & (abs(freq - freq[k]) < 100000)]
        floor = max(float(np.median(local)), 1e-20)
        found.append({'expected_hz': target, 'hz': float(freq[k]),
                      'power': float(power[k]), 'local_median_power': floor,
                      'above_local_median_db': float(10 * np.log10(max(power[k], 1e-20) / floor))})
    return found


def measure(pluto, targets):
    import numpy as np
    pluto.rx_destroy_buffer()
    spectra, clips, rms = [], [], []
    # Median over time suppresses brief nearby Wi-Fi packets. Keep the block
    # spectra and all requested tone positions in the small derived report.
    for _ in range(8):
        data = np.asarray(pluto.rx())
        clips.append(float(np.mean((abs(data.real) >= 2047) | (abs(data.imag) >= 2047))))
        rms.append(float(np.sqrt(np.mean(abs(data) ** 2))))
        for block in data.reshape(-1, 16384):
            spectra.append(abs(np.fft.fftshift(np.fft.fft(block * np.hanning(len(block))))) ** 2)
    return {'targets': summarize_spectra(np.median(spectra, axis=0), int(pluto.sample_rate), targets),
            'blocks': len(spectra), 'fft_size': 16384,
            'rms_per_buffer': rms, 'clip_fraction_per_buffer': clips}


def qualify(rows):
    """Require the complete motion/repeat/off sequence, not a strong peak."""
    import numpy as np
    if [r['tone_index'] for r in rows] != [None, 1, 2, 3, 1, None]:
        raise ValueError('Incomplete tone qualification sequence')
    peaks = [r['rf']['targets'][r['tone_index'] - 1] for r in rows[1:-1]]
    offsets = [p['hz'] - p['expected_hz'] for p in peaks]
    common_offset = float(np.median(offsets))
    movement = [peaks[i+1]['hz'] - peaks[i]['hz'] for i in range(3)]
    suppression = []
    for p in peaks:
        controls = [r['rf']['targets'][next(i for i, t in enumerate(r['rf']['targets'])
                                            if t['expected_hz'] == p['expected_hz'])]['power']
                    for r in (rows[0], rows[-1])]
        suppression.append(float(10 * np.log10(max(p['power'], 1e-20) / max(*controls, 1e-20))))
    gates = {
        'all_on_peaks_above_local_floor_20db': all(p['above_local_median_db'] >= 20 for p in peaks),
        'all_on_peaks_above_both_off_controls_15db': all(s >= 15 for s in suppression),
        'all_frequency_residuals_within_3000hz': all(abs(o-common_offset) <= 3000 for o in offsets),
        'no_clipped_buffers': all(max(r['rf']['clip_fraction_per_buffer']) == 0 for r in rows),
    }
    return {'passed': all(gates.values()), 'gates': gates,
            'measured_movements_hz': movement, 'common_carrier_offset_hz': common_offset,
            'on_above_off_db': suppression,
            'scope': 'Finite calibration-tone RF route only; no arbitrary-I/Q or replay qualification'}


def run(tx, pluto, save, report):
    targets = [report['center_hz'] - int(pluto.rx_lo) + k * 250000 for k in (1, 2, 3)]
    rows = []
    report['digital_tone_verification'] = {'rows': rows}
    for index in (None, 1, 2, 3, 1, None):
        try:
            tx.stop()
            if index is not None:
                tx.setup()
                tx.start(index)
            time.sleep(0.01)
            row = {'tone_index': index, 'rf': measure(pluto, targets)}
            if index is not None and tx.capture_dac:
                row['tx_dac_debug'] = tx.inspect_dac()
            rows.append(row)
            save()
        finally:
            tx.stop()
    report['digital_tone_verification']['qualification'] = qualify(rows)
    report['status'] = 'digital_tone_verification_complete'
    save()
