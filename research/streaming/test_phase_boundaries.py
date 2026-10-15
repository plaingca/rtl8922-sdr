"""Hardware-free controls for phase validation; no radio imports or devices."""

import importlib.util
from pathlib import Path
import unittest

import numpy as np

spec = importlib.util.spec_from_file_location(
    "phase_boundaries", Path(__file__).with_name("analyze-phase-boundaries.py")
)
phase = importlib.util.module_from_spec(spec)
spec.loader.exec_module(phase)


class PhaseControls(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.rate = 160000000
        cls.freqs = [39267822.265625, 40732666.015625]
        n = np.arange(1048576)
        rng = np.random.default_rng(6119)
        cls.signal = (
            25 * np.exp(2j * np.pi * cls.freqs[0] / cls.rate * n + 0.4j)
            + 19 * np.exp(2j * np.pi * cls.freqs[1] / cls.rate * n - 1.2j)
            + 2
            + 3j
            + 0.3 * (rng.normal(size=len(n)) + 1j * rng.normal(size=len(n)))
        )

    def test_continuous_and_fault_sensitivity(self):
        result = phase.analyze(self.signal, self.rate, self.freqs)
        self.assertTrue(result["bounded_phase_check_pass"])
        self.assertTrue(result["one_sample_resolved"])
        self.assertTrue(
            all(r["detected"] == r["trials"] for r in result["injected_controls"][:2])
        )

    def test_independent_deleted_sample(self):
        b = 64 * 4096
        received = np.concatenate((self.signal[:b], self.signal[b + 1 :]))
        result = phase.analyze(received, self.rate, self.freqs)
        self.assertFalse(result["bounded_phase_check_pass"])
        self.assertEqual(result["packet_boundaries"]["outliers"], 1)
        self.assertEqual(result["worst_boundaries"][0]["sample"], b)

    def test_independent_duplicated_sample(self):
        b = 64 * 4096
        received = np.concatenate(
            (self.signal[:b], self.signal[b - 1 : b], self.signal[b:])
        )
        result = phase.analyze(received, self.rate, self.freqs)
        self.assertFalse(result["bounded_phase_check_pass"])
        self.assertEqual(result["packet_boundaries"]["outliers"], 1)
        self.assertEqual(result["worst_boundaries"][0]["sample"], b)

    def test_noise_cannot_qualify(self):
        rng = np.random.default_rng(319)
        received = rng.normal(size=len(self.signal)) + 1j * rng.normal(
            size=len(self.signal)
        )
        result = phase.analyze(received, self.rate, self.freqs)
        self.assertFalse(result["one_sample_resolved"])
        self.assertFalse(result["bounded_phase_check_pass"])

    def test_whole_cycle_blind_spot(self):
        # Independent clean signals: a 16-sample loss is exactly four/five
        # cycles at these two frequencies and is invisible to tone phase.
        n = np.arange(1048576)
        freqs = [40000000, 50000000]
        source = 25 * np.exp(2j * np.pi * n / 4) + 19 * np.exp(2j * np.pi * n * 5 / 16)
        b = 64 * 4096
        received = np.concatenate((source[:b], source[b + 16 :]))
        result = phase.analyze(received, self.rate, freqs)
        self.assertEqual(result["packet_boundaries"]["outliers"], 0)
        self.assertTrue(result["one_sample_resolved"])


if __name__ == "__main__":
    unittest.main()
