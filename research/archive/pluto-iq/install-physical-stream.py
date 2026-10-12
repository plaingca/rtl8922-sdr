from pathlib import Path
p=Path('/home/plaing/rtl8922-iq-research/la-driver/debug.c')
s=p.read_text()
assert 'iq_physical' not in s
p.with_name('debug-before-physical.c.save').write_text(s)
helper='/* Only map an allocation still owned by this producer. Check every link;\n * packet IDs do not imply physical contiguity. Fall back to virtual DMA. */\nstatic u32 iq_owned_physical(struct rtw89_dev *rtwdev, u16 id, u32 bytes)\n{\n    struct rtw89_mac_dle_dfi_ctrl dfi = {\n        .type = DLE_CTRL_TYPE_PLE, .target = DLE_DFI_TYPE_PAGELLT,\n    };\n    u32 pages = DIV_ROUND_UP(bytes + 24, 128), i;\n    if (id + pages > 1089) return 0;\n    for (i = 0; i < pages; ++i) {\n        dfi.addr = id + i;\n        if (rtw89_mac_dle_dfi_cfg(rtwdev, &dfi) ||\n            (dfi.out_data & 0xfff) != (i + 1 == pages ? 0xfff : id + i + 1))\n            return 0;\n    }\n    return 0x18766000 + id * 128 + 24;\n}\n\n'
s=s.replace('/* Raw LA -> IDDMA channel 5 -> owned PLE -> host dispatch. */',helper+'/* Raw LA -> IDDMA channel 5 -> owned PLE -> host dispatch. */')
s=s.replace('static bool iq_stop, iq_running;', 'static bool iq_stop, iq_running, iq_physical;')
s=s.replace('    u16 id;\n    int ret = 0, i;', '    u16 id;\n    u32 physical = 0, physical_packets = 0;\n    u64 validation_ns = 0;\n    bool use_physical = READ_ONCE(iq_physical);\n    int ret = 0, i;')
needle='        addr = 0x08000000 | (id << 15); aperture = 0x80000 + (addr & 0x7ffff);'
assert s.count(needle)==1
s=s.replace(needle,'        if (use_physical) {\n            physical = iq_owned_physical(rtwdev, id, bytes);\n            validation_ns += ktime_get_ns()-stamp; stamp = ktime_get_ns();\n            if (physical) physical_packets++;\n        }\n'+needle)
s=s.replace('rtw89_write32(rtwdev, 0x80054, addr+24);','rtw89_write32(rtwdev, 0x80054, physical ? physical : addr+24);')
s=s.replace('stages_ns=%llu,%llu,%llu,%llu\\n\",ret,packets,produced,consumed,max_backlog,elapsed,loss,monitor,timing[0],timing[1],timing[2],timing[3]);','stages_ns=%llu,%llu,%llu,%llu physical=%u validation_ns=%llu\\n\",ret,packets,produced,consumed,max_backlog,elapsed,loss,monitor,timing[0],timing[1],timing[2],timing[3],physical_packets,validation_ns);')
s=s.replace('debugfs_create_bool(\"iq_stop\",','debugfs_create_bool(\"iq_physical\", 0600, debugfs_topdir, &iq_physical);\n    debugfs_create_bool(\"iq_stop\",')
p.write_text(s)
