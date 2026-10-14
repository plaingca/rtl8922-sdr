"""Hardware-free checks for noise/burst ranking; never opens either radio."""
import unittest
from quiet_frequency_survey import rank


class SurveyTest(unittest.TestCase):
    def row(self,frequency,power,clip=0.):
        return {'rf_hz':frequency,'rtl_lo_mhz':2422,'nco_offset_hz':frequency-2422000000,
                'band':'2.4 GHz','sampled_seconds':1.,'maximum_buffer_clip_fraction':clip,
                'band_power_dbfs':{'200000':power,'2000000':power}}
    def test_single_band_ranks_constant_interference_and_bursts(self):
        rows=[self.row(2421250000,[-60.]*100),self.row(2422250000,[-45.]*100),
              self.row(2423250000,[-60.]*90+[-20.]*10)]
        result=rank(rows)
        self.assertEqual([r['rf_hz'] for r in result],[2421250000,2422250000,2423250000])
        self.assertEqual(result[1]['metrics']['2000000']['fraction_above_band_floor_plus_6db'],1.)
        self.assertEqual(result[2]['metrics']['2000000']['fraction_above_band_floor_plus_6db'],.1)
    def test_clipped_capture_cannot_win_on_low_reported_power(self):
        rows=[self.row(2421250000,[-60.]*100),self.row(2422250000,[-70.]*100,.001)]
        self.assertEqual(rank(rows)[0]['rf_hz'],2421250000)

if __name__=='__main__':unittest.main()
