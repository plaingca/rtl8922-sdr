from pathlib import Path
import json,hashlib
p=Path('rtl8922-sdr/validation-summary.json');d=json.loads(p.read_text());v=d['fine_tuning_20261012']
sha=hashlib.sha256(Path('rtl8922-sdr/SoapyRTL8922.cpp').read_bytes()).hexdigest()
assert sha=='43bf6e34480179287cd3109bef8fe3302d472ec645f04fa92bb74c89f45cf4e2'
r=json.loads(Path('output/rtl8922-soapy20-fine-normal65-report.json').read_text())
assert r['original_pluto']==r['pluto_restored'] and r['original_tx_powerdown']==r['tx_powerdown_restored']
assert r['tests'][1]['code']==0
v['normal20_regression']={'samples':1300000768,'seconds':65.1245,'timeouts':0,'gaps':0,'cf32_restart_samples':40001536,'max_backlog':13627,'host_drops':0,'log':'output/rtl8922-soapy20-fine-normal65.log','report':'output/rtl8922-soapy20-fine-normal65-report.json'}
v['build_sha256']={'source':sha,'native_plugin':'a88116573a28bc37f917a402d234ea1ae7266c71704d04233f3b5034b3650c61','distro_plugin':'1b3ba711a3cc7243ae51f4d10c0ce9eec3b57238a571ac81cce60b03343e9a4e','core_module':'27c42b65a4aab23c0b643bd78c5aa3ef6db1349682d48073ec92af8c3ab12eb1','bad_cf32_capture':hashlib.sha256(Path('output/rtl8922-nco-mode40-saturation.cf32').read_bytes()).hexdigest()}
v['cleanup']={'card_unbound':True,'temporary_firmware_removed':True,'temporary_network_config_removed':True,'pluto_restored':True,'default_route':'10.0.10.1 via enp14s0','driver_diff_check':'passed'}
v['logs']+=['output/rtl8922-soapy20-fine-normal65.log','output/rtl8922-soapy20-fine-normal65-report.json','output/rtl8922-nco-live-trigger0-failed.json','output/rtl8922-nco-live-count255-timeout.json','output/rtl8922-nco-live-allocation-fault.json','output/rtl8922-nco-live-yield-api-pass-rf-failed.json']
d['additional_logs']=list(dict.fromkeys(d['additional_logs']+v['logs']))
p.write_text(json.dumps(d,indent=2)+'\n')
p=Path('rtl8922-sdr/README.txt');s=p.read_text()
anchor='  maximum source backlog 3,165 records; both formats recovered the tone.\n'
if '- Fine-tuned 20 MS/s with normal scheduling passed' not in s:
    s=s.replace(anchor,anchor+'''- Fine-tuned 20 MS/s with normal scheduling passed 65.1245 seconds:
  1,300,000,768 CS16 samples, zero detected gaps/timeouts, and CF32 restart.
  Both long regressions used the current trigger-count and driver changes.
''')
p.write_text(s)
print('Final current-build evidence and cleanup recorded; full goal remains active')
