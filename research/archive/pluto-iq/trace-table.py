import sys,struct
from pathlib import Path
sys.path.insert(0,'tmp/rtl8922-vendor/pylibs')
from capstone import *
m=Cs(CS_ARCH_RISCV,CS_MODE_RISCV32|CS_MODE_RISCVC);m.skipdata=True
b=Path('tmp/pluto-iq/rom.bin').read_bytes();t=Path('tmp/pluto-iq/table.bin').read_bytes()
for off in range(0x500,0x790,4):
 addr=struct.unpack_from('<I',t,off)[0]
 if 0x20000000<=addr<0x20080000:
  text='\n'.join(f'{x.address:08x} {x.mnemonic} {x.op_str}' for x in m.disasm(b[addr-0x20000000:addr-0x20000000+300],addr))
  Path('tmp/pluto-iq/table-fn-'+hex(off)+'.asm').write_text(text)
  print(hex(off),hex(addr),'; '.join(text.splitlines()[:6]))
