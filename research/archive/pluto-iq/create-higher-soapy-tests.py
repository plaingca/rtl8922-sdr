from pathlib import Path
s=Path('tmp/pluto-iq/run-soapy.py').read_text()
for rate in [10000000,20000000]:
 t=s.replace("str(root/'soapy/build'))",f"str(root/'soapy/build'),RTL8922_TEST_RATE='{rate}')").replace('1/5000000',f'1/{rate}').replace('rtl8922-soapy-first-run',f'rtl8922-soapy-rate{rate}-run')
 Path(f'tmp/pluto-iq/run-soapy-rate{rate}.py').write_text(t)
