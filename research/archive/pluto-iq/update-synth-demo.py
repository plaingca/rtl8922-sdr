from pathlib import Path
p=Path('rtl8922-sdr/live-demo.html');s=p.read_text(encoding='utf-8')
s=s.replace('<option value="2">2.4 GHz</option>','<option value="2">S band · 2.3 / 2.4 / 2.5 GHz</option>')
s=s.replace('<option value="5">5 GHz</option>','<option value="5">C band · 4.9 / 5 GHz</option>')
s=s.replace('min="2412" max="7115"','min="2312" max="7115"')
s=s.replace('2412–2484 MHz or 5005–7115 MHz','2312–2382, 2412–2484, 2500–2515 or 4900–7115 MHz')
s=s.replace('<div class="presets">','<div class="presets"><button data-mhz="2312">2.312 GHz</button><button data-mhz="2382">2.382 GHz</button><button data-mhz="2505">2.505 GHz</button><button data-mhz="4900">4.900 GHz</button>')
s=s.replace('Higher 6 GHz centers tune and produce samples, but RF reception there is unqualified.', 'Higher 6 GHz centers tune and produce samples, but RF reception there is unqualified. Additional RF-qualified synthesizer encodings expose 2312–2382, 2500–2515 and 4900–5000 MHz. Gaps remain; full S/C-band coverage has not been achieved.')
p.write_text(s,encoding='utf-8')
