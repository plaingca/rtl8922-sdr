from pathlib import Path
root=Path('/home/plaing/rtl8922-iq-research/la-driver')
p=root/'debug.c';s=p.read_text();hook=(root.parent/'scope-hooks.c').read_text()
if 'IQ_SCOPE_LIMIT' not in s:
 s=s.replace('#include "debug.h"','#include "debug.h"\n#include <linux/vmalloc.h>\n#include <linux/ktime.h>\n'+hook,1)
 s=s.replace('rtw89_debugfs_add_rw(read_reg);','''iq_scope_data = vzalloc(IQ_SCOPE_LIMIT);
    debugfs_create_file("scope_data", 0600, debugfs_topdir, NULL, &iq_scope_fops);
    debugfs_create_u64("scope_packets", 0400, debugfs_topdir, &iq_scope_packets);
    debugfs_create_u64("scope_dropped", 0400, debugfs_topdir, &iq_scope_dropped);
    rtw89_debugfs_add_rw(read_reg);''',1)
 s=s.replace('kfree(rtwdev->debugfs);','vfree(iq_scope_data); iq_scope_data = NULL;\n\tkfree(rtwdev->debugfs);',1);p.write_text(s)
p=root/'debug.h';s=p.read_text()
if 'rtw89_scope_record' not in s:s=s.replace('#include "core.h"','#include "core.h"\nvoid rtw89_scope_record(struct sk_buff *skb, struct rtw89_rx_desc_info *desc);',1);p.write_text(s)
p=root/'core.c';s=p.read_text()
if 'rtw89_scope_record' not in s:
 s=s.replace('case RTW89_CORE_RX_TYPE_C2H:', '''case RTW89_CORE_RX_TYPE_BB_SCOPE:
        rtw89_scope_record(skb, desc_info);
        dev_kfree_skb_any(skb);
        break;
    case RTW89_CORE_RX_TYPE_C2H:''',1);p.write_text(s)
