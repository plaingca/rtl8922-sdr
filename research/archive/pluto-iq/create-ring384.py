from pathlib import Path
import shutil
root=Path('/home/plaing/rtl8922-iq-research')
src=root/'la-driver';dst=root/'la-driver-ring384'
assert not dst.exists()
shutil.copytree(src,dst)
p=dst/'rtw8922a.c';s=p.read_text()
old='static const struct rtw89_dle_size iq_ple = {128, 1089, 239, 0x66000};'
assert old in s;s=s.replace(old,'static const struct rtw89_dle_size iq_ple = {128, 577, 239, 0x76000};')
s=s.replace('iq_ple_min = {128,128,32,16,19,13,165,292,44,18,128,4,0,0}', 'iq_ple_min = {128,0,32,16,19,13,64,0,44,18,128,4,0,0}')
s=s.replace('iq_ple_max = {128,128,32,118,121,115,394,394,146,120,230,106,0,0}', 'iq_ple_max = {128,0,32,118,121,115,166,0,146,120,230,106,0,0}')
s=s.replace('iq_buffer = {0x16000, 0x50000}', 'iq_buffer = {0x16000, 0x60000}')
p.write_text(s)
p=dst/'debug.c';s=p.read_text()
for a,b in [('0x50000','0x60000'),('0x18766000','0x18776000'),('0x66000','0x76000'),('1089','577'),('40960','49152'),('(4<<16)|(11<<8)','(5<<16)|(11<<8)')]:s=s.replace(a,b)
p.write_text(s)
assert 0x16000+0x60000+(577+239)*128+0x800==0x90000
assert sum([128,0,32,16,19,13,64,0,44,18,128,4,0,0])<=577
print('384 KiB variant prepared; original driver untouched.')
