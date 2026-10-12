from pathlib import Path
p=Path('tmp/pluto-iq/cpuio-hooks.c');s=p.read_text();s=s.replace('ret = mac->dle_buf_req(rtwdev, (command ? command : 104) + 24, false, &id);','''rtw89_write32(rtwdev, 0x9840, BIT(31) | (2 << 16) | ((command ? command : 104) + 24));
    ret = read_poll_timeout(rtw89_read32, initial, initial & BIT(31), 1, 2000, false, rtwdev, 0x9844);
    id = initial & 0xfff;
    if (!ret && id == 0xfff) ret = -ENOENT;''');p.write_text(s)
s=Path('tmp/pluto-iq/run-fullpacket.py').read_text().replace('rtl8922-fullpacket-run','rtl8922-request-quota2-run').replace('[64,104,128,512,4096,8192]','[512,4096,8192]');Path('tmp/pluto-iq/run-request-quota2.py').write_text(s)
