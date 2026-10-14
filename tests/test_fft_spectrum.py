"""Compare native FFT scaling, frequency order and zoom pooling with NumPy."""
import ctypes
from pathlib import Path
import shutil
import subprocess
import tempfile
import unittest

import numpy as np

ROOT = Path(__file__).resolve().parents[1]


class FFTSpectrumTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        if not shutil.which('pkg-config') or not shutil.which('g++'):
            raise unittest.SkipTest('Native FFT checks need g++ and pkg-config')
        flags = subprocess.run(['pkg-config', '--cflags', '--libs', 'fftw3f'], capture_output=True, text=True)
        if flags.returncode:
            raise unittest.SkipTest('Native FFT checks need libfftw3-dev')
        cls.temp = tempfile.TemporaryDirectory()
        cls.addClassCleanup(cls.temp.cleanup)
        library = Path(cls.temp.name) / 'fft-check.so'
        subprocess.run(['g++', '-shared', '-fPIC', '-O3', '-std=c++17', '-Wall', '-Wextra', '-Werror',
                        str(ROOT / 'tests/fft_spectrum_wrapper.cpp'), '-o', str(library), *flags.stdout.split()], check=True)
        cls.lib = ctypes.CDLL(str(library))
        cls.lib.spectrum_create.restype = ctypes.c_void_p
        cls.lib.spectrum_destroy.argtypes = [ctypes.c_void_p]
        array = np.ctypeslib.ndpointer(dtype=np.float32, flags='C_CONTIGUOUS')
        cls.lib.spectrum_analyze.argtypes = [ctypes.c_void_p, array, ctypes.c_double, ctypes.c_double, array,
                                            np.ctypeslib.ndpointer(dtype=np.float64, flags='C_CONTIGUOUS')]
        cls.lib.spectrum_analyze.restype = ctypes.c_size_t
        cls.plan = cls.lib.spectrum_create()
        cls.addClassCleanup(lambda: cls.lib.spectrum_destroy(cls.plan))

    def check_spectrum(self, x, rate, center):
        n = len(x)
        bins = np.empty(n, dtype=np.float32)
        metrics = np.empty(5, dtype=np.float64)
        count = self.lib.spectrum_analyze(self.plan, x.view(np.float32), rate, center, bins, metrics)
        window = np.hanning(n)
        power = np.abs(np.fft.fftshift(np.fft.fft(x*window)))**2/window.sum()**2
        overview = 10*np.log10(np.maximum(power.reshape(2048, -1).max(axis=1), 1e-14))
        center = np.clip(center, -rate/2+750000, rate/2-750000)
        frequencies = np.fft.fftshift(np.fft.fftfreq(n, 1/rate))
        selection = np.flatnonzero(np.abs(frequencies-center) <= 750000)
        selection = selection[:len(selection)//4*4]
        zoom = 10*np.log10(np.maximum(power[selection].reshape(-1, 4).max(axis=1), 1e-14))
        self.assertEqual(count, 2048+len(zoom))
        # Single precision has about 0.01 dB error near the -140 dBFS floor.
        np.testing.assert_allclose(bins[:count], np.r_[overview, zoom], atol=.02)
        self.assertAlmostEqual(metrics[0], float(np.sqrt(np.mean(abs(x.astype('complex128'))**2))), places=7)
        self.assertAlmostEqual(metrics[2], frequencies[power.argmax()])
        self.assertAlmostEqual(metrics[3], frequencies[selection[0]])
        self.assertAlmostEqual(metrics[4], 4*rate/n)

    def test_noise_and_off_bin_tones_both_rates_and_clipped_zoom(self):
        n = 262144
        rng = np.random.default_rng(8922)
        noise = .01*(rng.normal(size=n)+1j*rng.normal(size=n))
        for rate, center in ((160000000, 750000), (160000000, -1234567),
                             (40000000, 1e9), (160000000, -1e9)):
            with self.subTest(rate=rate, center=center):
                x = (noise+.1*np.exp(2j*np.pi*1234567*np.arange(n)/rate)).astype('complex64')
                self.check_spectrum(x, rate, center)

    def test_zero_and_full_scale_constant(self):
        for value in (0, .5):
            with self.subTest(value=value):
                self.check_spectrum(np.full(262144, value, dtype='complex64'), 160000000, 750000)
