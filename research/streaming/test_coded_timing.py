"""Independent generated-I/Q controls; no devices or hardware imports."""

import unittest

import numpy as np
from scipy.signal import resample

from coded_timing import evaluate


class TimingControls(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        rng = np.random.default_rng(719)
        period = 65536
        x = rng.normal(size=period) + 1j * rng.normal(size=period)
        spectrum = np.fft.fft(x) * (abs(np.fft.fftfreq(period)) < 0.078)
        code = np.fft.ifft(spectrum)
        code /= np.sqrt(np.mean(abs(code) ** 2))
        omega = 2j * np.pi * np.fft.fftfreq(period)
        cls.model = [np.fft.ifft(np.fft.fft(code) * omega**k) for k in range(4)]
        cls.fit = np.array([-2.1e-6, 1234.35])
        n = np.arange(4 * period)
        # Independent Fourier interpolation, rather than the analyzer's
        # Hermite interpolation and local quadratic timing model.
        dense = resample(code, 16 * period)
        u = ((1 + cls.fit[0]) * n + cls.fit[1]) % period * 16
        source = np.interp(u, np.arange(len(dense) + 1), np.r_[dense, dense[0]])
        cls.received = source * np.exp(1j * (0.7 + 2e-6 * n)) + 0.015 * (
            rng.normal(size=len(n)) + 1j * rng.normal(size=len(n))
        )
        cls.boundaries = np.arange(16384, len(n) - 16384, 4096)

    def test_clock_and_carrier_phase_are_not_sample_loss(self):
        r = evaluate(self.received, self.model, self.fit, self.boundaries)
        self.assertTrue(r["clean"].all())
        self.assertLess(np.max(abs(r["steps"])), 0.05)
        self.assertTrue(all(c["detected"] == c["trials"] for c in r["controls"]))

    def test_actual_deleted_sample(self):
        b = 131072
        z = np.concatenate((self.received[:b], self.received[b + 1 :]))
        r = evaluate(z, self.model, self.fit, self.boundaries, injection_controls=False)
        self.assertFalse(r["clean"][np.flatnonzero(r["boundaries"] == b)[0]])

    def test_actual_duplicated_sample(self):
        b = 131072
        z = np.concatenate(
            (self.received[:b], self.received[b - 1 : b], self.received[b:])
        )
        r = evaluate(z, self.model, self.fit, self.boundaries, injection_controls=False)
        self.assertFalse(r["clean"][np.flatnonzero(r["boundaries"] == b)[0]])

    def test_actual_packet_deletion(self):
        b = 131072
        z = np.concatenate((self.received[:b], self.received[b + 4096 :]))
        r = evaluate(z, self.model, self.fit, self.boundaries, injection_controls=False)
        self.assertFalse(r["clean"][np.flatnonzero(r["boundaries"] == b)[0]])

    def test_noise_cannot_pass_fault_controls(self):
        rng = np.random.default_rng(119)
        z = rng.normal(size=len(self.received)) + 1j * rng.normal(
            size=len(self.received)
        )
        r = evaluate(z, self.model, self.fit, self.boundaries)
        self.assertFalse(all(c["detected"] == c["trials"] for c in r["controls"][:2]))


if __name__ == "__main__":
    unittest.main()
