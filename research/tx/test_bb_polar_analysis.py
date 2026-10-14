"""Offline spectral estimator controls; no radio operations."""
import unittest
import numpy as np
from analyze_bb_polar import analyze

class PolarAnalysisTest(unittest.TestCase):
    def data(self):
        fs=40000000.;update=16000000/3*1.00001;n=262144
        fpattern=0xD39A6C57;apattern=0x6B19A3D5
        f=np.array([6000000. if fpattern>>i&1 else 2000000. for i in range(32)])
        t=np.arange(n)/fs;position=t*update;index=np.floor(position).astype(np.int64)
        slot=index%32;prefix=np.r_[0,np.cumsum(f)]
        cycles=((index//32)*sum(f)+prefix[slot]+f[slot]*(position-index))/update
        phase=2*np.pi*(cycles-4000000*t+15000*t)
        amp=np.array([.5 if apattern>>i&1 else 1. for i in range(32)])[slot]
        rng=np.random.default_rng(8922)
        x=amp*np.exp(1j*phase)+.03*(rng.standard_normal(n)+1j*rng.standard_normal(n))
        controls=[{'rf':{'targets':[{'hz':-1985000},{'hz':2015000}]}} for _ in range(5)]
        r={'actual_rx':{'sample_rate':fs},'commands':[{'host_bracket_lower_bound_samples_per_second':update*.999}],
           'controls':controls,'clip_fraction':0.,'amplitude_control_db':-6.01}
        m={'period_samples':32,'nco_indices':[8,24],'frequency_pattern':hex(fpattern)}
        return x,r,m,update
    def test_measures_actual_rf_comb_rate(self):
        x,r,m,update=self.data();a=analyze(x,r,m)
        self.assertLess(abs(a['rf_measured_paired_update_rate_hz']-update),150)
        self.assertFalse(a['reaches_20msps'])
        self.assertGreaterEqual(len(a['qualified_lines']),8)
    def test_inconsistent_strong_comb_line_is_rejected(self):
        x,r,m,update=self.data();t=np.arange(len(x))/r['actual_rx']['sample_rate']
        x=x+10*np.exp(2j*np.pi*(265000+14*update/32+8000)*t)
        with self.assertRaisesRegex(ValueError,'common-spacing'):
            analyze(x,r,m)

    def test_strong_static_tone_is_not_a_rate_measurement(self):
        x,r,m,_=self.data();t=np.arange(len(x))/r['actual_rx']['sample_rate']
        with self.assertRaisesRegex(ValueError,'Too few qualified'):
            analyze(np.exp(2j*np.pi*265000*t),r,m)
if __name__=='__main__':unittest.main()
