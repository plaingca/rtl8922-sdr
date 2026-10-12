from pathlib import Path
s=Path('tmp/pluto-iq/run-stream.py').read_text().replace('for duration in [100,1000]:','for duration,rate in [(10000,6),(1000,5),(1000,4),(1000,3)]:').replace('setup(2,0,6);','setup(2,0,rate);').replace("f'stream-", "f'rate{rate}-stream-").replace("'duration_ms':duration", "'duration_ms':duration,'rate_selector':rate").replace('1/1250000','1/(1250000*2**(6-rate))').replace('rtl8922-stream-run','rtl8922-stream-rates-run')
# Stronger tone to measure continuity at packet boundaries.
s=s.replace('s.tx_hardwaregain_chan0=-10','s.tx_hardwaregain_chan0=0').replace('s.tx(8192*','s.tx(24576*')
s=s.replace("'boundary_phase_step_median':float(np.median(edges))", "'boundary_phase_step_median':float(np.median(edges)),'adjacent_correlation_phase':float(np.angle(np.sum(z[1:]*np.conj(z[:-1])))),'boundary_correlation_phase':float(np.angle(np.sum(z[512::512]*np.conj(z[511:-1:512]))))")
Path('tmp/pluto-iq/run-stream-rates.py').write_text(s)
