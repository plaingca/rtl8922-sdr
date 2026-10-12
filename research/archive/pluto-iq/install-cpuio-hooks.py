from pathlib import Path
r=Path('/home/plaing/rtl8922-iq-research');p=r/'la-driver/debug.c';s=p.read_text()
if 'iq_cpuio_write' in s:
 a=s.index('/* Diagnostic ownership test:');b=s.index('#include',a) if '#include' in s[a:] else -1
 # Hook ends at its fops, immediately before original remainder.
 end=s.index('};',s.index('static const struct file_operations iq_cpuio_fops',a))+2
 s=s[:a]+(r/'cpuio-hooks.c').read_text()+s[end:]
 p.write_text(s)
else:
 s=s.replace('#include "util.h"','#include "util.h"\n'+(r/'cpuio-hooks.c').read_text(),1)
 s=s.replace('debugfs_create_file("iq_memory",','debugfs_create_file("iq_cpuio", 0600, debugfs_topdir, rtwdev, &iq_cpuio_fops);\n\tdebugfs_create_file("iq_memory",',1)
 p.write_text(s)
