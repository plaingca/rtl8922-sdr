exec(open('tmp/rtl8922-vendor/analyze.py').read().split('targets=')[0])
lo,hi=fn(0x140422340)
for x in md.disasm(p.get_data(lo-base,hi-lo),lo):
 for op in x.operands:
  if op.type==X86_OP_MEM and op.mem.base==X86_REG_RIP:
   addr=x.address+x.size+op.mem.disp
   if 0x140600000<addr<0x140700000:
    print(hex(x.address),p.get_data(addr-base,50).split(b'\0')[0])
print('\n'.join(y for y in dump(lo).splitlines() if 'mov      esi' in y))
