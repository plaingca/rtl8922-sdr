exec(open('tmp/rtl8922-vendor/analyze.py').read().split('targets=')[0])
import hashlib
hdr=pathlib.Path('tmp/rtl8852cu-iq-research/phl/hal_g6/phy/bb/halbb_la_mode.h').read_text();body=hdr.split('struct bb_la_cr_info {')[1].split('};')[0];fields=re.findall(r'\bu32\s+(\w+)\s*;',body)
regs={};mem={};evidence={}
def canon(r):
 n=md.reg_name(r)
 return {'eax':'rax','ecx':'rcx','edx':'rdx','ebp':'rbp'}.get(n,n[:-1] if re.fullmatch(r'r\d+d',n) else n)
def val(o):
 if o.type==X86_OP_IMM:return o.imm & 0xffffffff
 if o.type==X86_OP_REG:return regs.get(canon(o.reg))
 return None
for i in md.disasm(p.get_data(0x3d5f2c,0x3d64d4-0x3d5f2c),base+0x3d5f2c):
 ops=i.operands
 if i.mnemonic=='mov':
  dst,src=ops;v=val(src)
  if dst.type==X86_OP_REG:regs[canon(dst.reg)]=v
  elif dst.type==X86_OP_MEM and dst.mem.base==X86_REG_RBX:
   mem[dst.mem.disp]=v;evidence[dst.mem.disp]=hex(i.address)
 elif i.mnemonic=='lea' and ops[0].type==X86_OP_REG:
  m=ops[1].mem;v=regs.get(canon(m.base));regs[canon(ops[0].reg)]=(v+m.disp)&0xffffffff if v is not None and not m.index else None
 elif i.mnemonic=='or' and ops[0].type==X86_OP_REG:
  a=val(ops[0]);c=val(ops[1]);regs[canon(ops[0].reg)]=(a|c)&0xffffffff if a is not None else None
 else:raise RuntimeError(str(i))
rows=[]
for n in range(0,min(len(fields),0x2c0//4),2):
 off=n*4;a=mem.get(off);mask=mem.get(off+4)
 rows.append({'field':fields[n],'struct_offset':hex(off),'address':hex(a) if a is not None else None,'mask':hex(mask) if mask is not None else None,'instruction':evidence.get(off),'mask_instruction':evidence.get(off+4)})
result={'source':'ASUS official RTL8922AE driver 6102.24.143.0','zip_sha256':hashlib.sha256(pathlib.Path('tmp/rtl8922-vendor/driver.zip').read_bytes()).hexdigest(),'sys_sha256':hashlib.sha256(b).hexdigest(),'chip_branch_evidence':'0x1402f709c tests IC bit17 and returns cr_type4; 0x1403d586b branches cr_type4 to 0x1403d5f2c','function':'halbb_cr_cfg_la_init','function_va':'0x1403d5834','status':'Static extraction; field names correlated with older OSS HALBB layout; hardware unvalidated','fields':rows,'unlabeled_tail':{hex(k):hex(v) if v is not None else None for k,v in mem.items() if k>=len(fields)*4}}
pathlib.Path('output/rtl8922-la-registers.json').write_text(json.dumps(result,indent=2))
print('Header fields',len(fields),'written dwords',len(mem));print(json.dumps(rows[:28],indent=2));
for a in [0x14027fc18,0x1403d654f]:pathlib.Path('tmp/rtl8922-vendor/function-'+hex(a)+'.asm').write_text(dump(a))
