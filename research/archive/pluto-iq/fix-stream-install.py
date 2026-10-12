from pathlib import Path
p=Path('tmp/pluto-iq/install-stream.py');s=p.read_text().replace('s=s.replace(\'#include "fw.h"\',(r/\'stream-hooks.c\').read_text()+\'\\n#include "fw.h"\',1)',"end=s.index('};',s.index('static const struct file_operations iq_cpuio_fops'))+2\ns=s[:end]+'\\n'+(r/'stream-hooks.c').read_text()+s[end:]");p.write_text(s)
