from pathlib import Path
import sys,base64
sys.path.insert(0,'.');import control
r='/home/plaing/rtl8922-iq-research/'
s='''from pathlib import Path
p=Path('/home/plaing/rtl8922-iq-research/la-driver/debug.c');s=p.read_text()
a=s.index('static ssize_t iq_memory_read');b=s.index('\n#include <linux/vmalloc.h>',a)
x=s[a:b].replace('iq_memory','iq_rom').replace('0x50000','0x80000').replace('0x18700000','0x20000000').replace(' + 0x16000','')
if 'iq_rom_read' not in s:
 s=s[:b]+x+s[b:]
 s=s.replace('debugfs_create_file("iq_memory",','debugfs_create_file("iq_rom", 0400, debugfs_topdir, rtwdev, &iq_rom_fops);\\n\\tdebugfs_create_file("iq_memory",'.replace('\\n','\n').replace('\\t','\t'),1)
 p.write_text(s)
'''
res=control.ssh_execute('beastmode','echo '+base64.b64encode(s.encode()).decode()+' | base64 -d > '+r+'install-rom.py',20);print(res)
