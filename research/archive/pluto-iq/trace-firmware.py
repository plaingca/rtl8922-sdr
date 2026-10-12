import sys,struct
from pathlib import Path
sys.path.insert(0,'tmp/rtl8922-vendor/pylibs')
from capstone import *
b=Path('tmp/pluto-iq/rtw8922a_fw-4.bin').read_bytes(); code=b[256:256+0x5f610]
m=Cs(CS_ARCH_RISCV,CS_MODE_RISCV32|CS_MODE_RISCVC)
m.skipdata=True; ins=list(m.disasm(code,0x20100000)); print('decoded',len(ins))
for i,x in enumerate(ins):
 if x.mnemonic=='lui' and '0x18005' in x.op_str:
  print('\nIDDMA candidate')
  for y in ins[max(0,i-12):i+45]:print(hex(y.address),y.mnemonic,y.op_str)
start=768616;n=struct.unpack_from('<I',b,start+4)[0];ids=struct.unpack_from('<'+'I'*n,b,start+8);ptr=start+8+4*n
for id in ids:
 while b[ptr]==0:ptr+=1
 end=b.index(b'\0',ptr);s=b[ptr:end].decode(errors='replace');ptr=end
 if any(v in s.lower() for v in ['iddma','ddma','dma buffer']):print('LOG',hex(id),s)
Path('tmp/pluto-iq/firmware-disasm.txt').write_text('\n'.join(f'{x.address:08x} {x.mnemonic} {x.op_str}' for x in ins))

