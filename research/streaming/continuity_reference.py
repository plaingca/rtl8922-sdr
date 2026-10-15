"""Deterministic periodic, wideband Pluto timing reference; no device access."""

import numpy as np


def make_reference():
    rate = 40000000
    symbol_rate = 20000000
    count = 65536
    rng = np.random.default_rng(8922160)
    symbols = (
        (2 * rng.integers(0, 2, count // 2) - 1)
        + 1j * (2 * rng.integers(0, 2, count // 2) - 1)
    ) / np.sqrt(2)
    impulses = np.zeros(count, dtype=complex)
    impulses[::2] = symbols
    f = np.abs(np.fft.fftfreq(count, 1 / rate))
    rolloff = 0.25
    lo, hi = symbol_rate * (1 - rolloff) / 2, symbol_rate * (1 + rolloff) / 2
    power = np.where(
        f <= lo,
        1.0,
        np.where(f >= hi, 0.0, 0.5 * (1 + np.cos(np.pi * (f - lo) / (hi - lo)))),
    )
    wave = np.fft.ifft(np.fft.fft(impulses) * np.sqrt(power))
    wave /= np.sqrt(np.mean(np.abs(wave) ** 2))
    pilot_bin = 22937
    wave += 0.25 * np.exp(2j * np.pi * pilot_bin * np.arange(count) / count)
    wave *= 30000 / np.max(np.abs(wave))
    return wave, dict(
        sample_rate=rate,
        symbol_rate=symbol_rate,
        samples=count,
        receiver_period_samples=count * 4,
        pilot_bin=pilot_bin,
        pilot_hz=pilot_bin * rate / count,
        rolloff=rolloff,
        seed=8922160,
    )
