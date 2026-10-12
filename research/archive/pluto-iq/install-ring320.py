from pathlib import Path
r=Path('/home/plaing/rtl8922-iq-research/la-driver')
p=r/'rtw8922a.c';s=p.read_text()
assert 'iq_ple = {128, 1601, 239, 0x56000}' in s
s=s.replace('iq_ple = {128, 1601, 239, 0x56000}', 'iq_ple = {128, 1089, 239, 0x66000}')
s=s.replace('iq_ple_min = {320,320,32,16,19,13,292,292,44,18,1,4,0,0}', 'iq_ple_min = {128,128,32,16,19,13,292,292,44,18,1,4,0,0}')
s=s.replace('iq_ple_max = {320,320,32,246,249,243,522,522,274,248,1,234,0,0}', 'iq_ple_max = {128,128,32,118,121,115,394,394,146,120,1,106,0,0}')
s=s.replace('iq_buffer = {0x16000, 0x40000}', 'iq_buffer = {0x16000, 0x50000}')
p.write_text(s)
p=r/'debug.c';s=p.read_text()
a=s.index('    {\n        size_t i;');b=s.index('    rtw89_write32(rtwdev, 0xc04, filter);',a)
s=s[:a]+'    memcpy_fromio(data, rtwpci->mmap + 0x80000 + 0x16000 + *pos, count);\n'+s[b:]
a=s.index('static ssize_t iq_memory_read');b=s.index('static const struct file_operations iq_memory_fops',a)
s=s[:a]+s[a:b].replace('0x40000','0x50000')+s[b:];p.write_text(s)
