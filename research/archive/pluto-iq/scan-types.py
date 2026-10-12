exec(open('tmp/pluto-iq/trace-virtual.py').read().split('for name,start,data')[0])
for name,start,data in [('fw',0x20100000,Path('tmp/pluto-iq/rtw8922a_fw-4.bin').read_bytes()[256:256+0x5f610]),('rom',0x20000000,Path('tmp/pluto-iq/rom.bin').read_bytes())]:
 lines=[]
 for off in range(0,len(data)-4,2):
  w=int.from_bytes(data[off:off+4],'little')
  if w&0x7f==0x37 and w>>12 in [0xa000,0x3000]:
   lines.append('\nTYPE '+hex(start+off))
   for x in m.disasm(data[max(0,off-30):off+120],start+max(0,off-30)):lines.append(f'{x.address:08x} {x.mnemonic} {x.op_str}')
 Path('tmp/pluto-iq/'+name+'-type.asm').write_text('\n'.join(lines));print(name,len(lines))
