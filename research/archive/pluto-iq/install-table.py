from pathlib import Path
p=Path('/home/plaing/rtl8922-iq-research/la-driver/debug.c');s=p.read_text()
a=s.index('static ssize_t iq_rom_read');b=s.index('};',s.index('static const struct file_operations iq_rom_fops',a))+2
x=s[a:b].replace('iq_rom','iq_table').replace('0x80000 - *pos','0x4000 - *pos').replace('*pos >= 0x80000','*pos >= 0x4000').replace('0x20000000','0x20201000')
if 'iq_table_read' not in s:
 s=s[:b]+x+s[b:]
 s=s.replace('debugfs_create_file("iq_memory",','debugfs_create_file("iq_table", 0400, debugfs_topdir, rtwdev, &iq_table_fops);\n\tdebugfs_create_file("iq_memory",',1)
 p.write_text(s)
