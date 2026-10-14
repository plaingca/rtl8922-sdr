"""Small, deterministic RF spectrogram font; no hardware access on import."""
import numpy as np
from functools import lru_cache

SAMPLE_RATE = 4_000_000
WAVE_SAMPLES = 16384
TEXT_BANDWIDTH = 1_000_000
ROW_SECONDS = .30
# Each glyph is five columns by seven rows, written top to bottom.
FONT = dict(zip('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 -!?/', [
    '01110 10001 10001 11111 10001 10001 10001',
    '11110 10001 10001 11110 10001 10001 11110',
    '01111 10000 10000 10000 10000 10000 01111',
    '11110 10001 10001 10001 10001 10001 11110',
    '11111 10000 10000 11110 10000 10000 11111',
    '11111 10000 10000 11110 10000 10000 10000',
    '01111 10000 10000 10111 10001 10001 01111',
    '10001 10001 10001 11111 10001 10001 10001',
    '11111 00100 00100 00100 00100 00100 11111',
    '00111 00010 00010 00010 10010 10010 01100',
    '10001 10010 10100 11000 10100 10010 10001',
    '10000 10000 10000 10000 10000 10000 11111',
    '10001 11011 10101 10101 10001 10001 10001',
    '10001 11001 10101 10011 10001 10001 10001',
    '01110 10001 10001 10001 10001 10001 01110',
    '11110 10001 10001 11110 10000 10000 10000',
    '01110 10001 10001 10001 10101 10010 01101',
    '11110 10001 10001 11110 10100 10010 10001',
    '01111 10000 10000 01110 00001 00001 11110',
    '11111 00100 00100 00100 00100 00100 00100',
    '10001 10001 10001 10001 10001 10001 01110',
    '10001 10001 10001 10001 10001 01010 00100',
    '10001 10001 10001 10101 10101 10101 01010',
    '10001 10001 01010 00100 01010 10001 10001',
    '10001 10001 01010 00100 00100 00100 00100',
    '11111 00001 00010 00100 01000 10000 11111',
    '01110 10001 10011 10101 11001 10001 01110',
    '00100 01100 00100 00100 00100 00100 01110',
    '01110 10001 00001 00010 00100 01000 11111',
    '11110 00001 00001 01110 00001 00001 11110',
    '00010 00110 01010 10010 11111 00010 00010',
    '11111 10000 10000 11110 00001 00001 11110',
    '01110 10000 10000 11110 10001 10001 01110',
    '11111 00001 00010 00100 01000 01000 01000',
    '01110 10001 10001 01110 10001 10001 01110',
    '01110 10001 10001 01111 00001 00001 01110',
    '00000 00000 00000 00000 00000 00000 00000',
    '00000 00000 00000 11111 00000 00000 00000',
    '00100 00100 00100 00100 00100 00000 00100',
    '01110 10001 00001 00010 00100 00000 00100',
    '00001 00001 00010 00100 01000 10000 10000',
]))


def normalize_text(value):
    if not isinstance(value, str):
        raise ValueError('Text must be a string')
    value = value.strip().upper()
    if not 1 <= len(value) <= 16 or any(c not in FONT for c in value):
        raise ValueError('Use 1–16 characters: A–Z, 0–9, spaces, - ! ? /')
    return value


def bitmap(text):
    glyphs = [FONT[c].split() for c in normalize_text(text)]
    return np.array([[int(bit) for bit in '0'.join(glyph[row] for glyph in glyphs)]
                     for row in range(7)], dtype=bool)


@lru_cache(maxsize=16)
def text_waves(text, offset_hz):
    """One coherent cyclic multitone buffer per row, bottom first for newest-at-top.

    Frequency pixels occupy a nominal 1 MHz canvas. Each lit pixel gets one
    narrow carrier so its power stands above the experimental 40 MS/s noise
    floor. Replacing the small cyclic buffer bounds Pluto memory use.
    """
    pixels = bitmap(text)
    frequencies = offset_hz + (np.arange(pixels.shape[1])/(pixels.shape[1]-1)-.5)*TEXT_BANDWIDTH
    bins = np.round(frequencies/SAMPLE_RATE*WAVE_SAMPLES).astype(int) % WAVE_SAMPLES
    waves = []
    rng = np.random.default_rng(8922)
    for row in [np.zeros(pixels.shape[1], dtype=bool), *pixels[::-1]]:
        active = bins[row]
        if not len(active):
            waves.append(np.zeros(WAVE_SAMPLES, dtype=np.complex64))
            continue
        # Choose deterministic phases with low crest factor. Keep the same
        # carrier power for every row, including rows with fewer lit pixels.
        best, peak = None, float('inf')
        for _ in range(16):
            spectrum = np.zeros(WAVE_SAMPLES, dtype=np.complex64)
            spectrum[active] = np.exp(2j*np.pi*rng.random(len(active)))
            wave = np.fft.ifft(spectrum)
            maximum = np.abs(wave).max()
            if maximum < peak:
                best, peak = wave, maximum
        waves.append(best)
    scale = 24576 / max(np.abs(wave).max() for wave in waves)
    return [(wave * scale).astype(np.complex64) for wave in waves]
