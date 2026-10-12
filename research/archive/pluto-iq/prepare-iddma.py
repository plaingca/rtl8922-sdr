from pathlib import Path
p=Path('tmp/pluto-iq/cpuio-hooks.c');s=p.read_text().replace('u32 filter, addr, aperture, initial, values[32] = {};','u32 filter, addr, aperture, initial, values[32] = {};\n    u32 dma_old[3] = {}, dma_ctrl = 0, dma_monitor = 0, copied = 0;\n    int dma_ret = -999;')
a=s.index('    rtw89_write32(rtwdev, 0xc04, filter);')
s=s[:a]+'''    if (verified && command == 128) {
        rtw89_write32(rtwdev, 0xc04, 0x18008000);
        for (i = 0; i < 3; ++i) dma_old[i] = rtw89_read32(rtwdev, 0x80050 + 4 * i);
        dma_ctrl = dma_old[2];
        if (dma_ctrl != 0xdeadbeef && !(dma_ctrl & BIT(31)) && !(rtw89_read32(rtwdev, 0x800e8) & BIT(5))) {
            rtw89_write32(rtwdev, 0x80050, addr + 96);
            rtw89_write32(rtwdev, 0x80054, addr + 24);
            rtw89_write32(rtwdev, 0x80058, 32);
            rtw89_write32(rtwdev, 0x80058, BIT(31) | 32);
            dma_ret = read_poll_timeout_atomic(rtw89_read32, dma_ctrl, !(dma_ctrl & BIT(31)), 1, 1000, false, rtwdev, 0x80058);
            dma_monitor = rtw89_read32(rtwdev, 0x800fc);
            if (!dma_ret) {
                for (i = 0; i < 3; ++i) rtw89_write32(rtwdev, 0x80050 + 4 * i, dma_old[i]);
                rtw89_write32(rtwdev, 0x800e4, BIT(5));
            }
        }
        rtw89_write32(rtwdev, 0xc04, addr & ~0x7ffff);
        copied = rtw89_read32(rtwdev, aperture + 24);
    }
'''+s[a:]
s=s.replace('queue=%u enqueue=%d\\n','queue=%u enqueue=%d dma=%d ctrl=0x%x mon=0x%x copied=0x%x\\n').replace('ctrl.dst_qid, release_ret);','ctrl.dst_qid, release_ret, dma_ret, dma_ctrl, dma_monitor, copied);');p.write_text(s)
p=Path('tmp/pluto-iq/run-cpuio.py');s=p.read_text();a=s.index('    old=rd(0xc04)');b=s.index('    for command in',a);s=s[:a]+s[b:];s=s.replace('[0,64,72,96,128]','[96,128]').replace('rtl8922-cpuio-run.json','rtl8922-iddma-marker-run.json');Path('tmp/pluto-iq/run-iddma-marker.py').write_text(s)
