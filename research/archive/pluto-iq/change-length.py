from pathlib import Path
p=Path('tmp/pluto-iq/cpuio-hooks.c');s=p.read_text().replace('u32 filter, addr, aperture, initial, values[32] = {};','u32 filter, addr, aperture, initial, values[32] = {};\n    struct rtw89_mac_dle_dfi_ctrl dfi = { .type = DLE_CTRL_TYPE_PLE, .target = DLE_DFI_TYPE_PKTINFO };\n    u32 info = 0;')
s=s.replace('addr = 0x08000000', 'dfi.addr = id;\n    if (!rtw89_mac_dle_dfi_cfg(rtwdev, &dfi)) info = dfi.out_data;\n    addr = 0x08000000')
s=s.replace('values[1] = id | (1 << 16);','values[1] = id | ((command ? command / 8 : 1) << 16);')
s=s.replace('copied=0x%x\\n','copied=0x%x info=0x%x\\n').replace('dma_monitor, copied);','dma_monitor, copied, info);')
p.write_text(s)
p=Path('tmp/pluto-iq/run-iddma-marker.py');s=p.read_text().replace('[96,128]','[8,64,96,104,128]').replace('rtl8922-iddma-marker-run.json','rtl8922-length-word1-run.json');Path('tmp/pluto-iq/run-length-word1.py').write_text(s)
