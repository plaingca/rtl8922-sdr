from pathlib import Path
import json
live=json.loads(Path('output/rtl8922-live-control-report.json').read_text())
gr=json.loads(Path('output/rtl8922-gnuradio-live-report.json').read_text())
for report in (live,gr):
    assert report['live_control']['code']==0
    assert report['pluto_restored']==report['original_pluto']
    assert report['tx_powerdown_restored']==report['original_tx_powerdown']
stages=[json.loads(line) for line in live['live_control']['stdout'].splitlines() if line.startswith('{')]
app=[json.loads(line) for line in gr['live_control']['stdout'].splitlines() if line.startswith('{')]
p=Path('rtl8922-sdr/validation-summary.json');d=json.loads(p.read_text())
d['live_controls_20261012']={
    'status':'passed on both native SoapySDR ABI and distribution GNU Radio gr-soapy',
    'native_stages':live['tests'],'concurrent_reader':stages[-1],
    'gnuradio_flowgraphs':app,
    'semantics':'A live hardware setting change stops and restarts capture, discards queued old samples, returns one SOAPY_SDR_OVERFLOW with HAS_TIME, and rebases software timestamps by measured host pause duration. Settled segments remain continuous. No-op/invalid settings do not interrupt reception.',
    'rollback':'Intentional iw rejection at 40 MS/s restored the old frequency/rate and resumed after one explicit discontinuity.',
    'remaining':'Hardware tuning still restricted to 5 MHz grid; no sample-accurate timestamps across tuning, no AGC/gain controls or normal-user lifecycle yet.',
    'logs':['output/rtl8922-live-control-run.json','output/rtl8922-live-control-report.json','output/rtl8922-gnuradio-live-run.json','output/rtl8922-gnuradio-live-report.json']}
d['additional_logs']=list(dict.fromkeys(d['additional_logs']+d['live_controls_20261012']['logs']))
p.write_text(json.dumps(d,indent=2)+'\n')
p=Path('rtl8922-sdr/README.txt');s=p.read_text()
s=s.replace('  Live tuning/rate controls,\n  installation/access lifecycle, broader tuning, and actual Gqrx/SDR++',
'''  Continuous-frequency tuning, gain/AGC, installation/access lifecycle,
  broader tuning, and actual Gqrx/SDR++''')
anchor='CURRENT STATUS (latest results supersede the historical notes below)\n'
if '- Live frequency/rate controls now work' not in s:
    s=s.replace(anchor,anchor+'''- Live frequency/rate controls now work through SoapySDR and GNU Radio.
  Native tests covered all six rates, signed +/-5 MHz retuning, concurrent
  reader/control threads, invalid settings and recovery from a rejected iw
  command. GNU Radio retuning, 20->40 MS/s and 40->5 MS/s all recovered the
  Pluto tone; changes took about 142..144 ms in these flowgraphs.
''')
s=s.replace('- Initial tuning on 2.4 GHz Wi-Fi centers, 2412..2472 MHz, 5 MHz steps.',
'''- Initial and live tuning on 2.4 GHz Wi-Fi centers, 2412..2472 MHz in
  5 MHz steps, or 2422..2462 MHz at 40 MS/s. getFrequencyRange follows the
  current mode. Invalid active settings are rejected before stopping RX.
- Live setFrequency/setSampleRate serializes with readStream. It stops DMA,
  flushes the old sample/packet/filter state, configures the new setting,
  and restarts. The next read reports one SOAPY_SDR_OVERFLOW with HAS_TIME;
  subsequent reads contain only the new configuration. Software timestamps
  remain increasing using the measured host pause; timestamps across a
  change are approximate, not hardware sample timing. A change is therefore
  an explicit acquisition interruption, not a gapless retune. Unchanged
  settings are no-ops. Failed reconfiguration attempts restore old settings
  when possible and still report the interruption. The settled receiver
  remains continuous until another setting change or a detected overrun.''')
s=s.replace('gnuradio-check.py: real GNU Radio gr-soapy flowgraph and tone measurement.',
'''gnuradio-check.py: real GNU Radio gr-soapy flowgraph and tone measurement.
live-control-check.cpp: real-device live tuning/rates, timestamps, invalid
  controls, concurrent reading, and test-only iw-failure recovery.
  Its forced-failure test expects the temporary live-test-iw wrapper created
  by tmp/pluto-iq/run-live-control.py; it is not a production iw replacement.
gnuradio-live-check.py: running gr-soapy frequency and rate changes.''')
p.write_text(s)
print('Saved live-control and GNU Radio results')
