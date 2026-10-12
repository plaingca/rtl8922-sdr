exec(open('tmp/pluto-iq/trace-firmware.py').read().split('ins=list')[0] if False else open('tmp/pluto-iq/trace-firmware.py').read().split('m.skipdata')[0])
for off in range(0,len(code)-4,2):
 w=int.from_bytes(code[off:off+4],'little')
 if w&0x7f==0x37 and w>>12 in [0x18818,0x18823,0x18005,0x18006]:
  print('\nCANDIDATE',hex(0x20100000+off))
  for x in m.disasm(code[max(0,off-20):off+100],0x20100000+max(0,off-20)):print(hex(x.address),x.mnemonic,x.op_str)
