from pathlib import Path
import json,hashlib
fine=json.loads(Path('output/rtl8922-fine-control-report.json').read_text())
gr=json.loads(Path('output/rtl8922-gnuradio-fine-report.json').read_text())
long=json.loads(Path('output/rtl8922-soapy40-fine65-report.json').read_text())
for report in (fine,gr,long):
    assert report['original_pluto']==report['pluto_restored']
    assert report['original_tx_powerdown']==report['tx_powerdown_restored']
assert fine['live_control']['code']==gr['live_control']['code']==0
concurrent=[json.loads(l) for l in fine['live_control']['stdout'].splitlines() if 'concurrent_reads' in l][0]
assert concurrent['explicit_gaps']==0 and concurrent['max_setting_ms']<1
app=[json.loads(l) for l in gr['live_control']['stdout'].splitlines() if l.startswith('{')]
log=Path('output/rtl8922-soapy40-fine65.log').read_text()
assert '"samples":2600001536' in log and 'CLEANUP_DONE' in log
anomaly={
    'image_observation':{'stage':'before-concurrent20 in first priority-lock fine test','desired_peak_hz':-138854.98046875,'desired_peak_median_db':56.32262597025903,'image_peak_hz':-361328.125,'image_peak_median_db':58.43226903273496,'raw_capture_overwritten_by_rerun':True},
    'large_amplitude_observation':{'file':'output/rtl8922-nco-mode40-saturation.cf32','rate':40000000,'format':'interleaved little-endian CF32','rms':0.49364790320396423,'min_iq':[-1.,-1.],'max_iq':[0.9921875,0.9375],'strongest_spur_hz':-10000000.,'strongest_spur_peak_median_db':27.040078581089166,'desired_tone_peak_hz':111083.984375,'desired_tone_peak_median_db':19.773068713823946},
    'status':'Unresolved intermittent receive-quality failure after hardware mode changes. Could involve gain, calibration, tap/format or clock state; physical ADC saturation is not yet established.',
    'api_pass_rf_failed_log':'output/rtl8922-nco-live-yield-api-pass-rf-failed.json'}
Path('output/rtl8922-nco-rf-anomalies.json').write_text(json.dumps(anomaly,indent=2)+'\n')
entry={
    'status':'Fine tuning verified; full receiver remains experimental with RF-quality failures unresolved',
    'source_sha256':hashlib.sha256(Path('rtl8922-sdr/SoapyRTL8922.cpp').read_bytes()).hexdigest(),
    'driver_patch_sha256':hashlib.sha256(Path('rtl8922-sdr/driver.patch').read_bytes()).hexdigest(),
    'frequency_range_hz':{'normal':[2412000000,2472000000],'experimental40':[2422000000,2462000000]},
    'digital_translation':'Nearest 5 MHz RF center, negative complex mixing at native sample rate before decimation. Oscillator phase, FIR history and timestamps persist through same-RF-center updates; crossing RF centers reports an interruption.',
    'continuous_concurrent_controls':concurrent,'native_tone_stages':fine['tests'],'gnuradio':app,
    'steady40':{'samples':2600001536,'seconds':65.1258,'timeouts':0,'detected_gaps':0,'cf32_restart_samples':80000257,'max_backlog':3165,'max_poll_gap_ns':210132,'max_yield_ns':117034,'tone_peak_median_db':57.587014071564894},
    'faults_and_changes':{'count0_la_state_failure':'output/rtl8922-nco-live-trigger0-failed.json','allocation_fault_snapshot':'output/rtl8922-nco-live-allocation-fault.json','allocation_fault':'ret=-110 at allocation; completed DMA, recording LA, 258 packets. RX queue starvation inferred, not proved. Deadline-task wiphy yield now sleeps 25..50 us every ~2 ms; API transition sequence passed afterward. HRTICK/HRTICK_DL disabled on this host.','trigger_count':255,'trigger_semantics':'255 now used for all modes after 20 MS/s zero-count early completion; exact hardware semantics remain unproved.'},
    'rf_anomalies':anomaly,
    'limitations':['Digital translation shifts the existing RF passband; it does not widen or recenter the analogue filter.','Fine changes cause a normal FIR settling transient but no sample-count gap. Hardware center/rate changes interrupt acquisition.','Gain/AGC, image/clipping cause, longer robustness, broader RF coverage, installation and Gqrx/SDR++ testing remain.'],
    'logs':['output/rtl8922-fine-control-run.json','output/rtl8922-fine-control-report.json','output/rtl8922-gnuradio-fine-run.json','output/rtl8922-gnuradio-fine-report.json','output/rtl8922-soapy40-fine65.log','output/rtl8922-soapy40-fine65-report.json','output/rtl8922-nco-rf-anomalies.json']}
p=Path('rtl8922-sdr/validation-summary.json');d=json.loads(p.read_text());d['fine_tuning_20261012']=entry
d['additional_logs']=list(dict.fromkeys(d['additional_logs']+entry['logs']))
p.write_text(json.dumps(d,indent=2)+'\n')
p=Path('rtl8922-sdr/README.txt');s=p.read_text();anchor='CURRENT STATUS (latest results supersede the historical notes below)\n'
if '- Digital fine tuning is now implemented' not in s:
    s=s.replace(anchor,anchor+'''- Digital fine tuning is now implemented and verified on Pluto tones across
  all six sample rates. Frequency setters accept continuous frequencies in
  the current RF range. The nearest 5 MHz hardware center remains in use;
  negative complex mixing runs at the native sample rate before decimation.
  Same-center updates preserve DMA, oscillator phase, FIR history/cadence and
  software timestamps. A concurrent reader test observed zero gaps and a
  maximum fine-setting latency of 0.169 ms after fixing reader starvation.
- GNU Radio fine tuning at 20/40 MS/s passed with approximately 0.16/0.18 ms
  setting latency. Coarse tuning and rate changes still interrupt capture.
- Current digital-mixer/driver build passed 65.1258 seconds at 40 MS/s:
  2,600,001,536 CS16 samples, zero gaps/timeouts, CF32 restart passed,
  maximum source backlog 3,165 records; both formats recovered the tone.
- IMPORTANT UNRESOLVED RF RESULT: one mode-change capture had a stronger
  I/Q image than the tone; another produced near-full-scale samples and
  strong Fs/4 and Fs/2 spurs. The latter raw CF32 file is preserved under
  output/rtl8922-nco-mode40-saturation.cf32. Gain/calibration, source tap,
  format and clock state need investigation; transport success alone does
  not establish valid I/Q. See output/rtl8922-nco-rf-anomalies.json.
- Deadline producer yielding now includes a 25..50 us sleep outside the
  wireless mutex every ~2 ms, while internal DMA is inactive. This resolved
  an observed packet-allocation stall in the short transition regression.
  Starvation is the current inference; longer qualification is still needed.
  Serial fault snapshots distinguish allocation, DMA, enqueue and LA state.
- Trigger count 255 is now used in all modes after an early LA state change
  also appeared at 20 MS/s with zero count. Exact trigger semantics remain
  unknown. The old ten-minute test predates these latest changes.
''')
s=s.replace('  Continuous-frequency tuning, gain/AGC, installation/access lifecycle,','  Gain/AGC and receive-quality faults, installation/access lifecycle,')
s=s.replace('- Initial and live tuning on 2.4 GHz Wi-Fi centers, 2412..2472 MHz in\n  5 MHz steps, or 2422..2462 MHz at 40 MS/s. getFrequencyRange follows the\n  current mode. Invalid active settings are rejected before stopping RX.',
'''- Initial and live tuning accepts continuous frequencies at 2412..2472 MHz,
  or 2422..2462 MHz at 40 MS/s. getFrequencyRange follows the current mode.
  readSetting("rf_center") and readSetting("bb_offset") expose the chosen
  hardware center and digital offset. Invalid settings do not stop RX.
  Digital tuning does not widen or physically move the analogue passband;
  offset tuning has asymmetric RF edge coverage around the requested center.
  At decimated rates the FIR filters the translated signal before dropping
  samples. The receive response near RF filter edges is not yet qualified.''')
s=s.replace('- Live setFrequency/setSampleRate serializes with readStream. It stops DMA,',
'''- Controls take priority over reader iterations. readStream respects its
  timeout while a setting change owns the lock. Same-hardware-center fine
  changes update only the oscillator; filter response settles naturally.
- Hardware setFrequency/setSampleRate serializes with readStream. It stops DMA,''')
s=s.replace('gnuradio-live-check.py: running gr-soapy frequency and rate changes.',
'''gnuradio-live-check.py: running gr-soapy coarse/fine frequency and rate changes.
fine-control-check.cpp: real-device fine tuning, continuous timestamps,
  arbitrary read boundaries, concurrent updates and hardware-boundary changes.''')
p.write_text(s)
print('Saved fine tuning, scheduling changes and unresolved RF evidence')
