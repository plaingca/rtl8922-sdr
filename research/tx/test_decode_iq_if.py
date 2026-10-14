import copy
import unittest

import numpy as np

from decode_iq_if import decode
from iq_if_probe import payload, schedule


def synthetic(constant=False):
    plan = schedule(payload())
    states = np.asarray(plan['states'])
    events = np.c_[.2+np.arange(len(states))*.04, states]
    t = (np.arange(16384)+.5)/7812.5
    index = np.searchsorted(events[:, 0]-.066, t, side='right')-1
    active = (index >= 0) & (index < len(states))
    m = np.ones(len(t), complex)
    m[active] = (states[index[active], 0]+1j*states[index[active], 1])/1024
    m[t >= .2+len(states)*.04-.066] = 0
    phase = np.exp(1j*(2*np.pi*(47*t+29*t*t)+.6*np.sin(70*t)))
    differential = .93*np.exp(1j*(.4+2*np.pi*3.07*t+.06*t*t))
    alpha, beta = 1+.03j, .035-.025j
    upper = phase*(alpha*m+beta*(m.conj()-1))
    lower = phase/differential*(alpha*(m-1)+beta*m.conj())
    if constant:
        upper[active] = phase[active]*(alpha*.25+beta*(-.75))
        lower[active] = phase[active]/differential[active]*(alpha*(-.75)+beta*.25)
    stopped = t >= .2+len(states)*.04-.066
    upper[stopped] = 0
    lower[stopped] = 0
    rng = np.random.default_rng(8922)
    upper += .006*(rng.normal(size=len(t))+1j*rng.normal(size=len(t)))
    lower += .006*(rng.normal(size=len(t))+1j*rng.normal(size=len(t)))
    trace = {'t': t, 'output': upper, 'image': lower, 'clip': np.zeros(len(t)),
             'rms': np.ones(len(t))*3, 'quiet_limit': 6,
             'states': states, 'events': events}
    return trace, plan


class DecoderTest(unittest.TestCase):
    def test_common_phase_drift_and_iq_imbalance_cancel(self):
        trace, plan = synthetic()
        result = decode(trace, plan)
        self.assertTrue(result['finite_complex_if_sequence_demonstrated'], result)
        self.assertGreater(result['heldout_snr_db'], 35)
        self.assertFalse(result['unknown_payload_values_used_in_fitting'])

    def test_unknown_labels_cannot_select_calibration_or_alignment(self):
        trace, plan = synthetic()
        result = decode(trace, plan)
        other = copy.deepcopy(trace)
        ids = plan['payload_indices']
        other['states'][ids] = np.roll(other['states'][ids], 1, axis=0)
        other['events'][:, 1:] = other['states']
        changed = decode(other, plan)
        for key in ('forward_affine_matrix', 'differential_image_frequency_hz',
                    'rx_alignment_seconds', 'reference_ratios_real_imag',
                    'payload_reconstructed_iq_codes'):
            self.assertEqual(result[key], changed[key])
        self.assertFalse(changed['finite_complex_if_sequence_demonstrated'])
        self.assertLess(changed['heldout_snr_db'], 3)

    def test_stationary_strong_signal_is_rejected(self):
        trace, plan = synthetic(constant=True)
        result = decode(trace, plan, alignment=-.066)
        self.assertFalse(result['finite_complex_if_sequence_demonstrated'])
        self.assertLess(result['heldout_snr_db'], 3)

    def test_payload_cannot_be_its_own_reference(self):
        trace, plan = synthetic()
        plan['reference_indices'].append(plan['payload_indices'][0])
        with self.assertRaisesRegex(ValueError, 'ownership'):
            decode(trace, plan)

    def test_erased_training_requires_surviving_axes_but_every_payload(self):
        trace, plan = synthetic()
        t = trace['t']
        ids = np.searchsorted(trace['events'][:, 0]-.066, t, side='right')-1
        trace['rms'][np.isin(ids, [10, 11, 12, 13, 14])] = 900
        result = decode(trace, plan)
        self.assertTrue(result['finite_complex_if_sequence_demonstrated'])
        self.assertEqual(result['discarded_training_indices'], [10, 11, 12, 13, 14])
        trace['rms'][ids == plan['payload_indices'][0]] = 900
        with self.assertRaisesRegex(ValueError, 'payload samples'):
            decode(trace, plan)

    def test_smooth_circular_waveform_and_fixed_scramble(self):
        trace, _ = synthetic()
        angle = 2*np.pi*(np.arange(16)+.17)/16
        values = np.rint(440*np.c_[np.cos(angle), np.sin(angle)]).astype(int).tolist()
        plan = schedule(values)
        states = np.asarray(plan['states'])
        # Reuse only timestamps/noise-free physical parameters, synthesize the
        # fresh waveform rather than letting its labels affect the decoder.
        trace['states'] = states
        trace['events'][:, 1:] = states
        t = trace['t']
        ids = np.searchsorted(trace['events'][:, 0]-.066, t, side='right')-1
        active = (ids >= 0) & (ids < len(states))
        m = np.ones(len(t), complex)
        m[active] = (states[ids[active], 0]+1j*states[ids[active], 1])/1024
        phase = np.exp(2j*np.pi*(47*t+29*t*t))
        ratio = .93*np.exp(1j*(.4+2*np.pi*3.07*t+.06*t*t))
        trace['output'] = phase*m
        trace['image'] = phase/ratio*(m-1)
        result = decode(trace, plan)
        self.assertTrue(result['finite_complex_if_sequence_demonstrated'])
        self.assertLess(result['wrong_sequence_snr_db'], 3)


if __name__ == '__main__':
    unittest.main()
