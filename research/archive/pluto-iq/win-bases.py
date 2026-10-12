exec(open('tmp/rtl8922-vendor/analyze.py').read().split('targets=')[0])
from collections import Counter
c=Counter()
# Scan each LUI-immediate equivalent in x86 data operands, or packed pointer table.
for mat in re.finditer(rb'[\x00-\xff][\x00-\xff][\x00-\x0f]\x18',b):
 v=int.from_bytes(mat.group(),'little')
 if v&0xfff==0:c[v]+=1
print([(hex(k),v) for k,v in c.most_common(45)])
