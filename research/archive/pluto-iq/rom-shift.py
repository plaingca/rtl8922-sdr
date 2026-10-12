exec(open('tmp/pluto-iq/trace-virtual.py').read().split('for name,start,data')[0])
b=Path('tmp/pluto-iq/rom.bin').read_bytes();m.skipdata=True;ins=list(m.disasm(b,0x20000000));lines=[]
for i,x in enumerate(ins):
 if x.mnemonic in ['slli','c.slli'] and x.op_str.endswith(', 0xf'):
  lines.append('\nSHIFT '+hex(x.address));lines.extend(f'{y.address:08x} {y.mnemonic} {y.op_str}' for y in ins[max(0,i-15):i+35])
Path('tmp/pluto-iq/rom-shift15.asm').write_text('\n'.join(lines));print(len(lines))
