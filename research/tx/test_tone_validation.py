import unittest

from tone_validation import qualify


def rows_for(offsets):
    rows = []
    for tone, offset in zip((None, 1, 2, 3, 1, None), offsets):
        targets = [{'expected_hz': 1000000 + k*250000,
                    'hz': 1000000 + k*250000 + offset,
                    'above_local_median_db': 30, 'power': 1000 if k == tone else 1}
                   for k in (1, 2, 3)]
        rows.append({'tone_index': tone, 'rf': {'targets': targets,
                                             'clip_fraction_per_buffer': [0]}})
    return rows


class ToneGatesTest(unittest.TestCase):
    def test_accepts_motion_with_common_oscillator_offset(self):
        self.assertTrue(qualify(rows_for([17000]*6))['passed'])

    def test_rejects_strong_stationary_ambient_peak(self):
        rows = rows_for([17000]*6)
        for row in rows:
            for target in row['rf']['targets']:
                target['hz'] = 1267000
                target['power'] = 1000
        result = qualify(rows)
        self.assertFalse(result['passed'])
        self.assertFalse(result['gates']['all_frequency_residuals_within_3000hz'])
        self.assertFalse(result['gates']['all_on_peaks_above_both_off_controls_15db'])

    def test_rejects_clipping_and_incomplete_sequence(self):
        rows = rows_for([17000]*6)
        rows[1]['rf']['clip_fraction_per_buffer'] = [0.001]
        self.assertFalse(qualify(rows)['passed'])
        with self.assertRaises(ValueError):
            qualify(rows[:-1])
