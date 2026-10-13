"""Hardware-free checks for exact pulse optimization and coherent detours."""
import unittest
import numpy as np
from bb_nco_improve import coefficients,diversion,optimize,refine_cfo,FS,Q
from bb_nco_gate import pdm,compensated_table,phase_model,SLOTS

class ImproveTest(unittest.TestCase):
    def test_integrals_match_oversampled_signed_nco_and_mute(self):
        table=np.tile([0,2,-3,4,1,0,1,3],128)
        k=np.arange(-12,13);exact=coefficients(table,k)
        # Midpoint numerical integration includes phase during every pulse.
        points=256;pos=(np.arange(len(table)*points)+.5)/points
        index=np.floor(pos).astype(int);before=np.r_[0,np.cumsum(table)[:-1]]
        wave=(table[index]!=0)*np.exp(1j*(Q*(before[index]+table[index]*(pos-index))-Q*pos))
        numeric=np.mean(wave[:,None]*np.exp(-2j*np.pi*pos[:,None]*k/len(table)),axis=0)
        self.assertLess(np.max(abs(exact-numeric)),2e-7)
    def test_four_slot_diversion_returns_phase_and_integrates_to_zero(self):
        target=np.full(SLOTS,.5);table=diversion(target)
        self.assertTrue(set(table)=={1,33});self.assertEqual(int(sum(table))%128,0)
        # Relative phase advance is exactly three cycles per detour, and its
        # desired-carrier integral vanishes, without any mute command.
        self.assertAlmostEqual(4*Q*(33-1),6*np.pi)
        self.assertLess(abs(np.sinc(4*Q*(33-1)/(2*np.pi))),1e-14)
        self.assertAlmostEqual(abs(coefficients(table,[0])[0]),.5,places=12)
    def test_joint_search_preserves_phase_and_reduces_actual_filtered_error(self):
        target=.55+.35*np.cos(2*np.pi*2*np.arange(SLOTS)/SLOTS)
        gate=pdm(target);gate[-1]=1;initial=compensated_table(gate,1)
        table,report=optimize(initial,target,steps=15000)
        self.assertEqual(int(sum(table))%128,0)
        self.assertLess(report['optimized_filtered_evm'],report['initial_filtered_evm']*.5)
        self.assertLessEqual(max(abs(table)),16)
    def test_cfo_refinement_does_not_confuse_fold_shape_with_coherence(self):
        rate=40000000;target=.55+.35*np.cos(2*np.pi*2*np.arange(SLOTS)/SLOTS)
        gate=pdm(target);gate[-1]=1;table=compensated_table(gate,1)
        model=phase_model(table,rate,'paused',250000)
        from bb_nco_gate import lowpass
        model=lowpass(model,rate,3000000)
        x=np.tile(np.roll(model,137),48)
        x*=np.exp(2j*np.pi*193*np.arange(len(x))/rate)
        cfo,fold,report=refine_cfo(x,model,rate,0,-70)
        self.assertLess(abs(cfo-193),.2)

if __name__=='__main__':unittest.main()
