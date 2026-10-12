import json
from pathlib import Path
rows=json.loads((Path(__file__).resolve().parent/'output/rtl8922-la-registers.json').read_text())['fields']
text='// Register fields recovered from the official RTL8922A diagnostic driver.\nstruct Field { const char *name; uint32_t addr, mask; };\nstatic const Field fields[] = {\n'
for r in rows:
 if r['address'] is not None:text+='    {"%s",0x%x,%s},\n'%(r['field'],int(r['address'],16)+0x20000,r['mask'])
(Path(__file__).resolve().parent/'fields.hpp').write_text(text+'};\n')
