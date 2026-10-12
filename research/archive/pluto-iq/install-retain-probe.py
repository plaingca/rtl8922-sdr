from pathlib import Path
p=Path('/home/plaing/rtl8922-iq-research/la-driver/debug.c');s=p.read_text()
assert 'info_after' not in s
s=s.replace('static char iq_cpuio_result[512];','static char iq_cpuio_result[2048];')
s=s.replace('    u32 info = 0, link[3] = {}, physical = 0;','    u32 info = 0, info_after = 0, link[3] = {}, physical = 0;\n    char queues[1024] = {}; size_t qpos = 0;')
s=s.replace('values[1] = id | (8 << 16);','values[1] = id | (8 << 16) | (command == 64 ? BIT(26) : 0);')
needle='    release_ret = mac->set_cpuio(rtwdev, &ctrl, false);'
assert s.count(needle)==1
s=s.replace(needle,needle+'\n    if (command == 64 || command == 72) {\n        msleep(20);\n        dfi.target = DLE_DFI_TYPE_PKTINFO; dfi.addr = id;\n        if (!rtw89_mac_dle_dfi_cfg(rtwdev, &dfi)) info_after = dfi.out_data;\n        dfi.target = DLE_DFI_TYPE_QLNKTBL;\n        for (i=0;i<128;i++) {\n            u32 count, heads;\n            dfi.addr = (i<<1)|1;\n            if (rtw89_mac_dle_dfi_cfg(rtwdev, &dfi)) continue;\n            count = dfi.out_data & 0xfff;\n            if (!count || count == 0xfff) continue;\n            dfi.addr = i<<1;\n            if (rtw89_mac_dle_dfi_cfg(rtwdev, &dfi)) continue;\n            heads = dfi.out_data;\n            qpos += scnprintf(queues+qpos,sizeof(queues)-qpos," %u:%u:%x",i,count,heads);\n        }\n    }\n')
s=s.replace('physical=%u dma_ns=%llu\\n\",','physical=%u dma_ns=%llu info_after=%x queues=%s\\n\",').replace('contiguous,dma_ns);','contiguous,dma_ns,info_after,queues);')
p.write_text(s)
