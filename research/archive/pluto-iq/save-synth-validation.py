import json
from pathlib import Path
files=['register-survey','tone-probe','tone-probe-v2','band-probe','band-edges','band-middle','band-last','plugin-analyzed-report','live-check']
r={name:json.loads(Path('output','rtl8922-synth-'+name+'.json').read_text()) for name in files}
p=Path('rtl8922-sdr/validation-summary.json');d=json.loads(p.read_text())
d['synthesizer_extension']={'exposed_ranges_mhz':[[2312,2382],[2412,2484],[2500,2515],[4900,7115]],'rf_above_6000_qualified':False,'full_S_C_coverage':False,'plugin_all_17_cases_pass':all(t['rf_tone_pass_with_dc_exclusion'] for t in r['plugin-analyzed-report']['tests']),'live':r['live-check'],'evidence':['output/rtl8922-synth-'+name+'.json' for name in files],'findings':'rtl8922-sdr/synthesizer-findings.md','existing_allocation_timeout_seen':True}
p.write_text(json.dumps(d,indent=2))
