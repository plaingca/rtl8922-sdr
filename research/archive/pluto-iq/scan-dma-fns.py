exec(open('tmp/pluto-iq/trace-table.py').read().split('for off in')[0])
f=Path('tmp/pluto-iq/rtw8922a_fw-4.bin').read_bytes()[256:256+0x5f610]
lines=[]
for off in range(0,0x1000,4):
 addr=struct.unpack_from('<I',t,off)[0]
 data=b[addr-0x20000000:addr-0x20000000+500] if 0x20000000<=addr<0x20080000 else f[addr-0x20100000:addr-0x20100000+500] if 0x20100000<=addr<0x2015f610 else b''
 if not data:continue
 ins=list(m.disasm(data,addr));text='\n'.join(f'{x.address:08x} {x.mnemonic} {x.op_str}' for x in ins)
 if any(x.mnemonic in ['slli','c.slli'] and x.op_str.endswith(', 4') for x in ins) and ('0x80000' in text or '0xa0000' in text):
  lines.append('\nTABLE '+hex(off)+' '+hex(addr)+'\n'+text)
Path('tmp/pluto-iq/dma-candidates.asm').write_text('\n'.join(lines));print(len(lines))
print('\n'.join(x.split('\n')[1] for x in lines))
for off in [0x568,0x574,0x578,0x57c,0x580,0x73c,0x748]:print('PTR',hex(off),hex(struct.unpack_from('<I',t,off)[0]))
