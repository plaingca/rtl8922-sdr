from pathlib import Path
s=Path('tmp/pluto-iq/run-soapy40-fine65.py').read_text().replace('fine65','fine20-normal65').replace('40000000','20000000')
s=s.replace("RTL8922_PRODUCER_SCHEDULER='deadline'","RTL8922_PRODUCER_SCHEDULER='normal'")
Path('tmp/pluto-iq/run-soapy20-fine65.py').write_text(s)
