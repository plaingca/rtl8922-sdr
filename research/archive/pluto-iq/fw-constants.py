from pathlib import Path
import struct
b=Path('tmp/pluto-iq/rtw8922a_fw-4.bin').read_bytes()
for v in [0x18005000,0x18006000,0x18000000,0x40000018]:
 p=0
 while True:
  p=b.find(struct.pack('<I',v),p)
  if p<0:break
  if p<430792:print(hex(v),hex(p),'codeaddr',hex(0x20100000+p-256) if p<390928 else hex(0x20209bb8+p-390928))
  p+=1
