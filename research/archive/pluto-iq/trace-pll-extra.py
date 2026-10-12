exec(open('tmp/rtl8922-vendor/analyze.py').read().split('targets=')[0])
import struct
fw=pathlib.Path('tmp/pluto-iq/rtw8922a_fw-4.bin').read_bytes()
start=768616;n=struct.unpack_from('<I',fw,start+4)[0];ids=struct.unpack_from('<'+'I'*n,fw,start+8);ptr=start+8+4*n
logs=[]
for ident in ids:
 while fw[ptr]==0:ptr+=1
 end=fw.index(b'\0',ptr);s=fw[ptr:end].decode(errors='replace');ptr=end
 if any(w in s.lower() for w in ['vco','pll','lck','synth','syn_','syn ']):logs.append([hex(ident),s])
pathlib.Path('output/rtl8922-firmware-pll-logs.json').write_text(json.dumps(logs,indent=2))
print('firmware logs',json.dumps(logs,indent=2))
data=p.sections[0].get_data();va=base+p.sections[0].VirtualAddress
hits={}
for match in re.finditer(b'\xe8',data):
 off=match.start()
 if off+5>len(data):continue
 target=va+off+5+struct.unpack_from('<i',data,off+1)[0]
 if target!=0x14045907c:continue
 address=va+off;lo,hi=fn(address)
 if not 0x140459000<=lo<0x140478000:continue
 instructions=list(md.disasm(p.get_data(lo-base,hi-lo),lo))
 for idx,i in enumerate(instructions):
  if i.address!=address:continue
  context=instructions[max(0,idx-12):idx+2]
  if any(re.search(r'r8d, 0x(?:1f|b2|b3|c5|c6|c7|d3|d5|d6|df)$',j.op_str) for j in context):
   hits[hex(lo)]=dump(lo)
pathlib.Path('tmp/pluto-iq/pll-register-callers.asm').write_text('\n\n'.join(hits.values()))
print('Windows register caller functions',list(hits))
