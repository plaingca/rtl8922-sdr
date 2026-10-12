from pathlib import Path
r=Path('/home/plaing/rtl8922-iq-research/la-driver')
p=r/'debug.c';s=p.read_text()
if 'iq_desc_total' not in s:
 s=s.replace('static u64 iq_scope_packets, iq_scope_dropped;', '''static u64 iq_scope_packets, iq_scope_dropped;
static u64 iq_desc_total, iq_desc_scope, iq_core_total;
void rtw89_iq_observe(unsigned int stage, unsigned int type)
{
    if (stage == 0) { iq_desc_total++; if (type == 3) iq_desc_scope++; }
    else iq_core_total++;
}
EXPORT_SYMBOL_GPL(rtw89_iq_observe);''')
 s=s.replace('debugfs_create_u64("scope_packets",', '''debugfs_create_u64("iq_desc_total", 0400, debugfs_topdir, &iq_desc_total);
    debugfs_create_u64("iq_desc_scope", 0400, debugfs_topdir, &iq_desc_scope);
    debugfs_create_u64("iq_core_total", 0400, debugfs_topdir, &iq_core_total);
    debugfs_create_u64("scope_packets",''')
 s=s.replace('memcpy_fromio(data, rtwpci->mmap + 0x80000 + 0x16000 + *pos, count);', '''{
        size_t i;
        u8 __iomem *src = rtwpci->mmap + 0x80000 + 0x16000 + *pos;
        for (i = 0; i + 8 <= count; i += 8)
            put_unaligned_le64(readq(src + i), data + i);
        if (i < count) memcpy_fromio(data + i, src + i, count - i);
    }''')
 p.write_text(s)
p=r/'debug.h';s=p.read_text()
if 'rtw89_iq_observe' not in s:
 s=s.replace('#include "core.h"','#include "core.h"\nvoid rtw89_iq_observe(unsigned int stage, unsigned int type);',1);p.write_text(s)
p=r/'pci.c';s=p.read_text()
if 'rtw89_iq_observe' not in s:
 s=s.replace('rtw89_chip_query_rxdesc(rtwdev, desc_info, skb->data, rxinfo_size);','rtw89_chip_query_rxdesc(rtwdev, desc_info, skb->data, rxinfo_size);\n        rtw89_iq_observe(0, desc_info->pkt_type);',1);p.write_text(s)
p=r/'core.c';s=p.read_text()
if 'rtw89_iq_observe' not in s:
 s=s.replace('if (desc_info->pkt_type != RTW89_CORE_RX_TYPE_WIFI) {','rtw89_iq_observe(1, desc_info->pkt_type);\n\tif (desc_info->pkt_type != RTW89_CORE_RX_TYPE_WIFI) {',1);p.write_text(s)
