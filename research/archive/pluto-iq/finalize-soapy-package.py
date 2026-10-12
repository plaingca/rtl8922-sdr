from pathlib import Path
import shutil,json
root=Path('rtl8922-sdr');dev=Path('tmp/pluto-iq/sdr-development');dev.mkdir(exist_ok=True)
for p in list(root.glob('create-*.py'))+[root/'prepare-long-test.py',root/'upgrade-driver.py',root/'upload-upgrade.py',root/'upload-source.py']:
 if p.exists():shutil.move(str(p),str(dev/p.name))
p=root/'README.txt';s=p.read_text().replace('- Final native-mode65s test and its exact result are logged separately in\n  output/rtl8922-soapy-native5-long-run.json once that run finishes.','- Final native5MHz mode:65.005s at5MS/s,325000192CS16samples,476075reads,\n  no reported gaps, errors or timeouts; subsequent CF32 restart also passed.\n  Exact log: output/rtl8922-soapy-native5-long-run.json.')
p.write_text(s)
result=json.loads(Path('output/rtl8922-soapy-native5-long-run.json').read_text());assert result['exit_code']==0
Path('rtl8922-sdr/validation-summary.json').write_text(json.dumps({'native_long_run':result,'additional_logs':['output/rtl8922-soapy-rate1250000-run.json','output/rtl8922-soapy-rate2500000-run.json','output/rtl8922-gnuradio-run.json','output/rtl8922-soapy-overflow-run.json','output/rtl8922-native5-filter-run.json','output/rtl8922-physical-ple-run.json']},indent=2))
