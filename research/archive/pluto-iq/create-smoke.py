from pathlib import Path
s=Path('tmp/pluto-iq/run-live-drain.py').read_text().replace("write_text('30000')", "write_text('100')").replace("'duration_ms':30000", "'duration_ms':100").replace('rtl8922-live-drain-run','rtl8922-live-drain-final-smoke')
Path('tmp/pluto-iq/run-live-smoke.py').write_text(s)
