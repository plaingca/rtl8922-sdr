import json
from pathlib import Path
r=json.loads(Path('output/rtl8922-free-plugin-analyzed-report.json').read_text())
p=Path('rtl8922-sdr/validation-summary.json')
v=json.loads(p.read_text())
v['free_tuning_2026_10_12']={
    'device_args':'driver=rtl8922,free_tuning=1',
    'requested_center_ranges_mhz':[[2412,2484],[5005,7115]],
    'precision':'1Hz requested increments; absolute frequency accuracy uncalibrated',
    'native_capture':'20MS/s signed8bitIQ, with NCO before FIR decimation',
    'output_rates_msps':[1.25,2.5,5,10,20],
    'tone_cases':len(r['tests']),
    'all_two_tone_checks_pass_after_excluding_known_shifted_dc':all(t['rf_tone_pass_with_dc_exclusion'] for t in r['tests']),
    'original_dominant_peaks_preserved_in_report':True,
    'tone_report':'output/rtl8922-free-plugin-analyzed-report.json',
    'initial_hardware_survey':'output/rtl8922-free-probe-report.json',
    'live_controls_report':'output/rtl8922-free-live-check.json',
    'recovery_report':'output/rtl8922-live-recovery-check.json',
    'pluto_restored':r['restored_pluto']==r['original_pluto'] and r['restored_powerdown']=='1',
    'limitations':['RF above6GHz unqualified','Ranges do not claim ultimate chip limits','Bandwidth edges/sensitivity not qualified','Existing DMA allocation timeout still possible; demo counts gaps and retries at most3 times per10seconds','No gapless80/160MS/s or320MB/s extraction'],
}
p.write_text(json.dumps(v,indent=2)+'\n')
print(json.dumps(v['free_tuning_2026_10_12'],indent=2))
