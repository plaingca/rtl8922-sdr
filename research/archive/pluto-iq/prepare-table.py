from pathlib import Path
s=Path('tmp/pluto-iq/install-rom.py').read_text().replace("a=s.index('static ssize_t iq_memory_read');b=s.index('\\n#include <linux/vmalloc.h>',a)","a=s.index('static ssize_t iq_rom_read');b=s.index('};',s.index('static const struct file_operations iq_rom_fops',a))+2")
s=s.replace(".replace('iq_memory','iq_rom').replace('0x50000','0x80000').replace('0x18700000','0x20000000').replace(' + 0x16000','')", ".replace('iq_rom','iq_table').replace('0x80000 - *pos','0x4000 - *pos').replace('*pos >= 0x80000','*pos >= 0x4000').replace('0x20000000','0x20201000')")
s=s.replace("if 'iq_rom_read' not in s:","if 'iq_table_read' not in s:").replace('iq_rom", 0400','iq_table", 0400').replace('&iq_rom_fops','&iq_table_fops')
Path('tmp/pluto-iq/install-table.py').write_text(s)
s=Path('tmp/pluto-iq/run-rom.py').read_text();a=s.index("    (out/'rom.bin')");b=s.index("'''"+'+s[b:]',a);s=s[:a]+"    (out/'table.bin').write_bytes((dbg/'iq_table').read_bytes())\n"+s[b:];s=s.replace('rtl8922-rom-run.json','rtl8922-table-run.json');Path('tmp/pluto-iq/run-table.py').write_text(s)
