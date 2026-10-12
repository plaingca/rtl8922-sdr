import sys
from pathlib import Path
sys.path.insert(0,'tmp/rtl8922-vendor/pylibs')
from capstone import *
m=Cs(CS_ARCH_RISCV,CS_MODE_RISCV32|CS_MODE_RISCVC);m.skipdata=True
for name,start,data in [('fw',0x20100000,Path('tmp/pluto-iq/rtw8922a_fw-4.bin').read_bytes()[256:256+0x5f610]),('rom',0x20000000,Path('tmp/pluto-iq/rom.bin').read_bytes())]:
 lines=[]
 for off in range(0,len(data)-4,2):
  w=int.from_bytes(data[off:off+4],'little')
  if w&0x7f==0x37 and w>>12 in [0x8000,0x10000,0x28000,0x48000,0x88000,0x18002,0x18007]:
   lines.append('\n'+name+' '+hex(start+off))
   for x in m.disasm(data[max(0,off-30):off+150],start+max(0,off-30)):lines.append(f'{x.address:08x} {x.mnemonic} {x.op_str}')
 Path('tmp/pluto-iq/'+name+'-virtual.asm').write_text('\n'.join(lines));print(name,len(lines))
