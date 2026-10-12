exec(open('tmp/pluto-iq/trace-table.py').read().split('for off in')[0])
for a in [0x20202544,0x202025a4,0x20203580,0x20203584]:
 print(hex(a),t[a-0x20201000:a-0x20201000+160].hex(' '))
for addr,size in [(0x20012ea8,1800),(0x2015db20,300),(0x20126f5c,260),(0x2012e6b0,1800)]:
 data=b[addr-0x20000000:addr-0x20000000+size] if addr<0x20100000 else Path('tmp/pluto-iq/rtw8922a_fw-4.bin').read_bytes()[256+addr-0x20100000:256+addr-0x20100000+size]
 Path('tmp/pluto-iq/func-'+hex(addr)+'.asm').write_text('\n'.join(f'{x.address:08x} {x.mnemonic} {x.op_str}' for x in m.disasm(data,addr)))
