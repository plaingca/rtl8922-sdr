import sys
from pathlib import Path
sys.path.insert(0,'tmp/rtl8922-vendor/pylibs')
from capstone import *
b=Path('tmp/pluto-iq/rom.bin').read_bytes();m=Cs(CS_ARCH_RISCV,CS_MODE_RISCV32|CS_MODE_RISCVC)
for off in range(0,len(b)-4,2):
 w=int.from_bytes(b[off:off+4],'little')
 if w&0x7f==0x37 and 0x18000<=w>>12<0x18020:
  print('\nROMBASE',hex(0x20000000+off),hex(w>>12))
  for x in m.disasm(b[max(0,off-12):off+90],0x20000000+max(0,off-12)):print(hex(x.address),x.mnemonic,x.op_str)
