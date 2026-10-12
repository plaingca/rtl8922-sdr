import sys,pathlib,re,bisect,json
sys.path.insert(0,'tmp/rtl8922-vendor/pylibs')
import pefile,capstone
from capstone.x86 import *
p=pefile.PE('tmp/rtl8922-vendor/extracted/rtwlane711.sys');b=pathlib.Path('tmp/rtl8922-vendor/extracted/rtwlane711.sys').read_bytes();base=p.OPTIONAL_HEADER.ImageBase
md=capstone.Cs(capstone.CS_ARCH_X86,capstone.CS_MODE_64);md.detail=True
funcs=[(base+e.struct.BeginAddress,base+e.struct.EndAddress) for e in p.DIRECTORY_ENTRY_EXCEPTION];starts=[f[0] for f in funcs]
def fn(a):
 i=bisect.bisect_right(starts,a)-1
 return funcs[i] if i>=0 and a<funcs[i][1] else (a,a+64)
def dump(a):
 lo,hi=fn(a);rva=lo-base
 return '\n'.join(f'{i.address:016x} {i.mnemonic:8} {i.op_str}' for i in md.disasm(p.get_data(rva,hi-lo),lo))
targets={base+p.get_rva_from_offset(m.start()):m.group().decode() for m in re.finditer(rb'halbb_(?:cr_cfg_la_init|la_[a-z_]+)\x00',b)}
found=[]
# Locate RIP relative lea instructions by their byte encoding, decoding candidates only.
s=p.sections[0];data=s.get_data();va=base+s.VirtualAddress
for m in re.finditer(rb'[\x48\x4c]\x8d[\x05\x0d\x15\x1d\x25\x2d\x35\x3d]',data):
 off=m.start();i=next(md.disasm(data[off:off+15],va+off),None)
 if i:
  for op in i.operands:
   if op.type==X86_OP_MEM and op.mem.base==X86_REG_RIP:
    t=i.address+i.size+op.mem.disp
    if t in targets:found.append((targets[t],hex(i.address),[hex(x) for x in fn(i.address)]));pathlib.Path('tmp/rtl8922-vendor/'+targets[t].strip('\x00')+'-'+hex(fn(i.address)[0])+'.asm').write_text(dump(i.address))
print(json.dumps(found,indent=2));pathlib.Path('tmp/rtl8922-vendor/xrefs.json').write_text(json.dumps(found,indent=2))
