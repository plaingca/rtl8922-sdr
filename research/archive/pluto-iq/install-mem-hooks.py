from pathlib import Path
r=Path('/home/plaing/rtl8922-iq-research');p=r/'la-driver/debug.c';s=p.read_text()
if 'iq_memory_read' not in s:
 s=s.replace('#include "debug.h"','#include "debug.h"\n#include "pci.h"\n'+(r/'mem-hooks.c').read_text(),1)
 s=s.replace('iq_scope_data = vzalloc(IQ_SCOPE_LIMIT);','debugfs_create_file("iq_memory", 0400, debugfs_topdir, rtwdev, &iq_memory_fops);\n    iq_scope_data = vzalloc(IQ_SCOPE_LIMIT);',1)
 p.write_text(s)
