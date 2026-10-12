import json,re,subprocess
from pathlib import Path
reports={n:json.loads(Path('output/rtl8922-'+n+'-report.json').read_text()) for n in ['fast-drain','dual-drain']}
rows=[]
for name,r in reports.items():
 for t in r['tests']:
  p=t.get('producer','');h=json.loads(t.get('host','{}'))
  def number(key):
   m=re.search(r'\b'+key+r'=(\d+)',p);return int(m[1]) if m else None
  elapsed=number('elapsed_ns');ret=int(re.search(r'\bret=(-?\d+)',p)[1])
  rows.append({'variant':name,'rate_msps':t['bandwidth'],'packet_bytes':t['chunk'],'driver_ret':ret,'elapsed_ms':elapsed/1e6,'delivered_MBps':h['bytes']*1000/elapsed,'required_MBps':t['bandwidth']*2,'host_sequence_gaps':h['sequence_gaps'],'host_fifo_drops':int(t['drops']),'frozen_tone':t['frozen_fft'],'pass':ret==0 and h['sequence_gaps']==0})
summary={'date':'2026-10-12','result':'80 and160 MS/s continuous reception failed;40 MS/s control passed','experiments':['C++ raw reader with SCHED_DEADLINE producer','8KiB versus10KiB packets','CPU packet quota maximum230 to394','two idle IDDMA channels copying disjoint halves of each packet'],'interpretation':'No useful throughput increase. Host FIFOs had zero drops, but source backlog exceeded40960 records. Parallel-channel timings suggest a shared bottleneck, not proof of its physical location. Short native80/160 RF captures contain the Pluto tone; these do not qualify full-band fidelity or continuity.','rows':rows,'cleanup':'Pluto attributes and original TX powerdown restored by finally; temporary modules, firmware and NM config removed; original working driver hash unchanged.'}
Path('output/rtl8922-fast-drain-summary.json').write_text(json.dumps(summary,indent=2))
p=Path('rtl8922-sdr/validation-summary.json');d=json.loads(p.read_text());d['fast_dma_80_160_20261012']=summary;p.write_text(json.dumps(d,indent=2))
p=Path('rtl8922-sdr/README.txt')
with p.open('a') as f:
 f.write('''

80/160 MS/s DMA drain experiments (2026-10-12)
- Tested native HT80 center5210MHz and HT160 center5250MHz with Pluto
  transmitting a +125kHz baseband tone. Packed format14, path1/source2,
  LA selectors2/1 respectively. Producer pointer rates agree approximately
  with20/40 million64-bit records persecond (=80/160 million complex8bitIQ).
- Frozen captures show the tone about42..45dB above median FFT power with
  about35..44dB image rejection. Measured ~97kHz at5GHz includes unresolved
  oscillator offset. These are narrow-tone observations, not full RF qualification.
- An optimized C++ raw FIFO reader, deadline producer, 10KiB packets,
  increased CPU packet quota, and simultaneous IDDMA4+5 copying disjoint
  halves did not enable continuous80 or160 MS/s. Both single/dual variants
  stopped with ret=-75 on source backlog/overwrite at roughly4.1..4.3ms
  for80 and1.4ms for160. Host sequence gaps and FIFO drops were zero,
  which does NOT establish continuity after the source guard fails.
- 40MS/s control passed the requested1second in all variants. Dual-channel
  copy timings did not improve; a shared transfer bottleneck is an inference.
  10KiB allocation remained slower despite increasing the quota maximum.
- All changes are isolated in la-driver-fast; original driver and shipped
  Soapy plugin unchanged. Experimental patch: fast-drain-experimental.patch.
  Raw reader checks the producer status in addition to write()/packet status.
  Older single-channel logs have process returncode0 even when ret=-75;
  always use producer ret and summary.pass to assess them.
- Evidence: output/rtl8922-fast-drain-summary.json and the fast-drain /
  dual-drain report.json files. Pluto settings restored and TX powered down;
  temporary firmware/modules/NM configuration removed, wired route unchanged.
''')
print(json.dumps(rows,indent=2))
