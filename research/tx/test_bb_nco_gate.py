"""Hardware-free tests for mute-phase discrimination and compensated PDM."""
import unittest
import numpy as np
from bb_nco_gate import *


class GateTest(unittest.TestCase):
    def test_pdm_counts_and_compensated_phase_closure(self):
        densities=np.repeat([0,.125,.25,.375,.625,.75,.875,1.],128)
        gate=pdm(densities)
        self.assertEqual(sum(gate),512)
        for index in [1,4]:
            table=compensated_table(gate,index)
            self.assertTrue(np.array_equal(table!=0,gate!=0))
            self.assertEqual(sum(table)%128,0)
            phase=np.cumsum(table)
            self.assertTrue(np.all((phase[gate!=0]-index*(np.flatnonzero(gate)+1))%128==0))
    def test_phase_hypotheses_are_distinguishable(self):
        table=sources()[0][1];rate=40000000;rng=np.random.default_rng(39)
        for mode in ['continuous','paused','reset']:
            wave=phase_model(table,rate,mode,4000000)
            x=np.tile(np.roll(wave,23),24)*np.exp(2j*np.pi*37*np.arange(len(wave)*24)/rate)
            x+=.02*(rng.standard_normal(len(x))+1j*rng.standard_normal(len(x)))
            result,_,_=fit_models(x,table,rate,0,4000000)
            self.assertEqual(result['best_model'],mode)
            self.assertTrue(result['model_selection_qualified'])
    def test_noise_does_not_identify_a_phase_model(self):
        table=sources()[0][1];rng=np.random.default_rng(44)
        noise=rng.standard_normal(3840*24)+1j*rng.standard_normal(3840*24)
        result,_,_=fit_models(noise,table,40000000,0,4000000)
        self.assertFalse(result['model_selection_qualified'])

if __name__=='__main__':unittest.main()
