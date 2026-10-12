from pathlib import Path
import hashlib,json
log=Path('output/rtl8922-soapy40-live65.log').read_text()
report=json.loads(Path('output/rtl8922-soapy40-live65-report.json').read_text())
assert '"samples":2600001536' in log and 'CLEANUP_DONE' in log
assert report['pluto_restored']==report['original_pluto'] and report['tx_powerdown_restored']==report['original_tx_powerdown']
sha=hashlib.sha256(Path('rtl8922-sdr/SoapyRTL8922.cpp').read_bytes()).hexdigest()
assert sha=='4eaf6383bbcb5ae21fe039f2e3a3a421d7c2bba9c0de8c8ca6d6203a338954c0'
p=Path('rtl8922-sdr/validation-summary.json');d=json.loads(p.read_text())
d['live_controls_20261012']['steady40_regression']={
    'status':'passed','cs16_samples':2600001536,'seconds':65.1249,
    'cf32_restart_samples':80000257,'timeouts':0,'detected_gaps':0,
    'source_max_backlog_records':3239,'max_poll_gap_ns':218067,'max_yield_ns':122234,
    'source_sha256':sha,
    'native_binary_sha256':'ce2370baee6af2a65248cd1bed39c2f281b4bf8b62d893c75648f272fdbc6e06',
    'distro_binary_sha256':'f6afac442d10d0e7b5d46c352c5e798bbc9003fc2e038c29d41e93e58cd8b254',
    'pluto_restored':True,'card_unbound':True,
    'log':'output/rtl8922-soapy40-live65.log','report':'output/rtl8922-soapy40-live65-report.json'}
d['additional_logs']=list(dict.fromkeys(d['additional_logs']+['output/rtl8922-soapy40-live65.log','output/rtl8922-soapy40-live65-report.json']))
p.write_text(json.dumps(d,indent=2)+'\n')
p=Path('rtl8922-sdr/README.txt');s=p.read_text()
anchor='  Pluto tone; changes took about 142..144 ms in these flowgraphs.\n'
if '- The plugin with live controls passed' not in s:
    s=s.replace(anchor,anchor+'''- The plugin with live controls passed a fresh 65.1249-second 40 MS/s
  regression: 2,600,001,536 CS16 samples, zero detected gaps/timeouts, and an
  80,000,257-sample CF32 restart. Maximum source backlog was 3,239 records.
  The ten-minute result below predates the live-control plugin changes.
''')
p.write_text(s)
print('Current plugin source/binary evidence and cleanup recorded')
