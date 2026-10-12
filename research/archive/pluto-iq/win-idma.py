exec(open('tmp/rtl8922-vendor/analyze.py').read().split('targets=')[0])
for v in [0x18004000,0x18007000,0x18008000,0x1800c000]:
 pat=v.to_bytes(4,'little'); pos=0
 while True:
  pos=b.find(pat,pos)
  if pos<0:break
  addr=base+p.get_rva_from_offset(pos)
  if addr<base+0x5f0000:
   lo,hi=fn(addr); print(hex(v),hex(addr),hex(lo));Path=pathlib.Path;Path('tmp/pluto-iq/base-'+hex(lo)+'.asm').write_text(dump(addr))
  pos+=1
