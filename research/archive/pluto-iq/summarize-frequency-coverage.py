import json
from pathlib import Path

root = Path(__file__).resolve().parents[2]
r = json.loads((root / 'output/rtl8922-frequency-coverage-report.json').read_text())
summary = {
    'date': '2026-10-12',
    'regulatory_domain_during_test': 'CA',
    'accepted_channel_centers_mhz': [c['mhz'] for c in r['channels'] if c['tune_returncode'] == 0],
    'rejected_channel_centers_mhz': [c['mhz'] for c in r['channels'] if c['tune_returncode'] != 0],
    'rf_verified_centers_mhz': [t['mhz'] for t in r['tests'] if t.get('rf_tone_pass') is True],
    'capture_only_unqualified_centers_mhz': [t['mhz'] for t in r['tests'] if t['tune_returncode'] == 0 and t.get('rf_tone_pass') is None],
    'method': 'Two Pluto tones at +500/-500 kHz; native 20 MS/s packed signed int8 IQ, path1/source2/format14. Correct 1MHz movement and >30dB peak/median required. Each verified center also tested with 100ms PCIe stream.',
    'transport': [dict(mhz=t['mhz'], duration_ms=100, process_returncode=t['transport']['returncode'], **json.loads(t['transport']['host'])) for t in r['tests'] if 'transport' in t],
    'limitations': [
        'All advertised channel centers surveyed for tune acceptance; RF tone checks only at listed verified centers.',
        'Pluto LO limited to 6GHz; reception above 6GHz is not RF qualified.',
        'Channel-center coverage is not continuous off-band tuning or a measured passband edge.',
        'Narrow tones and short streaming tests do not establish sensitivity, full-band fidelity or long-run continuity.',
        'Soapy plugin remains restricted to 2.4GHz; these measurements use low-level capture helpers.',
        '80/160MS/s continuous extraction and 320MB/s remain unresolved.',
    ],
    'cleanup': {'regulatory_restored_to_world_00': 'country 00:' in r['restored_regulatory'], 'pluto_settings_restored': r['pluto_restored'] == r['original_pluto'], 'pluto_tx_powerdown': r['tx_powerdown_restored']},
    'source_report': 'output/rtl8922-frequency-coverage-report.json',
}
(root / 'output/rtl8922-frequency-coverage-summary.json').write_text(json.dumps(summary, indent=2) + '\n')
p = root / 'rtl8922-sdr/validation-summary.json'
v = json.loads(p.read_text())
v['frequency_coverage_2026_10_12'] = summary
p.write_text(json.dumps(v, indent=2) + '\n')
print(json.dumps({'rf_verified_centers_mhz': summary['rf_verified_centers_mhz'], 'accepted_centers': len(summary['accepted_channel_centers_mhz']), 'transport_pass': all(t['driver_ret'] == 0 and t['sequence_gaps'] == 0 and t['process_returncode'] == 0 for t in summary['transport']), 'cleanup': summary['cleanup']}, indent=2))
