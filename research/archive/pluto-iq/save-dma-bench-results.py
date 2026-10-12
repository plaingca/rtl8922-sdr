import json,re
from pathlib import Path
r=json.loads(Path('output/rtl8922-dma-bench-report.json').read_text());rows=[]
for t in r['tests']:
 for line in t['status'].splitlines():
  if not line.startswith('source='):continue
  x={k:int(v) for k,v in re.findall(r'(\w+)=(\d+)',line)};x['MBps']=x['bytes']*x['copies']*1000/x['elapsed_ns'];rows.append(x)
assert len(rows)==72 and all(x['mismatched_words']==0 for x in rows)
assert all(t['reference_match'] for t in r['tests'])
best=max(rows,key=lambda x:x['MBps'])
summary={'date':'2026-10-12','target_MBps':320,'target_achieved':False,'measurement_scope':'Stopped LA SRAM to one producer-owned PLE allocation; excludes page validation, allocation, PCIe submission and host delivery. Every final block in the72 test combinations was compared word-for-word to frozen LA SRAM; three subsequent host packets also matched.','mode_key':{'0':'virtual payload offset24','1':'physical offset24','2':'physical offset32','3':'physical offset64','4':'physical offset128','5':'virtual offset128'},'best_isolated_copy':best,'copy_benchmarks':rows,'other_tests':{'clock_selectors':'AFE_CTRL1 exposed DMAC and DCPU clock selectors0..3 read back, but did not improve copy speed. Original0x1fffff1f restored. Actual selected frequency not established.','direct_BAR':'32-bit CPU reads matched frozen320KiB twice at2.17MB/s. 64/128/256/512-bit reads returned0xffffffff data and failed comparisons. Their apparent throughput is invalid.','GPU':'cudaHostRegisterIoMemory|Mapped|ReadOnly returned801 operation not supported; no GPU transfer occurred.','PAXIDMA':'Located live engine at0x18006000 and8-byte TXBDs in firmware SRAM. Uninitialized channel2 probe using producer-owned descriptor memory timed out with index0,busy0 and zero host bytes. This is not a working bypass. Firmware-owned channels0/1 were not replaced.'},'limitations':['140MB/s is an isolated copy result, not continuous host receive.','No demonstrated320MB/s route yet.','A faster packet AXI path or a ring-to-PCIe route avoiding IDDMA remains unresolved.'],'cleanup':'Temporary driver modules, firmware and NM configuration removed; Pluto settings restored and TX powered down; original working driver/plugin unchanged.'}
Path('output/rtl8922-dma-path-summary.json').write_text(json.dumps(summary,indent=2))
p=Path('rtl8922-sdr/validation-summary.json');d=json.loads(p.read_text());d['dma_path_benchmarks_20261012']=summary;p.write_text(json.dumps(d,indent=2))
with Path('rtl8922-sdr/README.txt').open('a') as f:f.write('''

320MB/s path investigation (2026-10-12, follow-up)
- PCIe currently negotiates5GT/s x1. No demonstrated320MB/s extraction.
- Repeated frozen-LA copies into one owned PLE allocation isolate IDDMA:
  virtual addressing ~90MB/s; physical offset24 ~120MB/s; physical
  offsets32/64/128 ~140MB/s. Allocation, LLT validation and PCIe delivery
  are excluded. All72 tested final blocks matched frozen SRAM word-for-word;
  subsequent4/8/10KiB host packets also matched. This is not a continuous
  host streaming result and does not qualify any new Soapy sample rate.
- Poll delay0/1/4/16us and exposed DMAC/DCPU clock selectors did not close
  the gap. Clock register restored; frequency meanings remain unresolved.
- Direct sysfs BAR2 reads: only32bit accesses passed the full frozen-ring
  comparison (~2.17MB/s). Wider accesses returned all-ones and are invalid.
  CUDA I/O-memory registration returned801/not supported, so no GPU copy.
- Found separate packet AXI DMA at0x18006000, with live firmware TX rings
  at0x20300388 and0x20300488,8byte descriptors and32byte first segments.
  Read-only snapshots saved. A bounded probe of previously uninitialized
  TXchannel2 with owned scratch memory and report-type3/host target8 made
  no progress (index0,busy0,ret-110), with zero PCIe host data. Existing
  firmware-owned TXchannels0/1 were not replaced. No RF TX requested.
- Changes remain isolated in la-driver-fast. Original working driver hash
  27c42b65a4aab23c0b643bd78c5aa3ef6db1349682d48073ec92af8c3ab12eb1.
  Evidence: output/rtl8922-dma-path-summary.json plus dma-bench,clock-bench,
  bar-bench,paxi-snapshot,paxi-probe report files. Firmware,modules,NM test
  config removed; Pluto settings restored with TX down; wired route unchanged.
''')
print(json.dumps({'best':best,'combinations':len(rows),'all_final_blocks_match':True}))
