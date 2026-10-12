from pathlib import Path
p=Path('tmp/pluto-iq/cpuio-hooks.c');s=p.read_text().replace('command != 0 && command != 8 && command != 104 && command != 64 && command != 72 && command != 96 && command != 128','command > 8192 || command % 8')
# fix precedence produced expression parentheses correctly
s=s.replace('(command > 8192 || command % 8)', '(command > 8192 || command % 8)')
s=s.replace('dle_buf_req(rtwdev, 128, false','dle_buf_req(rtwdev, (command ? command : 104) + 24, false')
s=s.replace('values[1] = id | ((command ? command / 8 : 1) << 16);','values[1] = id | (8 << 16);')
s=s.replace('for (i = 0; i < ARRAY_SIZE(values); ++i) rtw89_write32(rtwdev, aperture + i * 4, values[i]);','for (i = 0; i < 6; ++i) rtw89_write32(rtwdev, aperture + i * 4, values[i]);\n        for (i = 6; i < ((command ? command : 104) + 24) / 4; ++i) rtw89_write32(rtwdev, aperture + i * 4, 0x49510000 | i);')
s=s.replace('for (i = 0; i < ARRAY_SIZE(values); ++i)\n            if (rtw89_read32(rtwdev, aperture + i * 4) != values[i]) verified = false;','for (i = 0; i < ((command ? command : 104) + 24) / 4; ++i)\n            if (rtw89_read32(rtwdev, aperture + i * 4) != (i < 6 ? values[i] : (0x49510000 | i))) verified = false;')
p.write_text(s)
s=Path('tmp/pluto-iq/run-length-word1.py').read_text().replace('[8,64,96,104,128]','[64,104,128,512,4096,8192]').replace('rtl8922-length-word1-run','rtl8922-fullpacket-run')
s=s.replace("'bytes':len(data)","'bytes':len(data),'payload_match':(len(data)==command+24 and all(struct.unpack_from('<I',data,24+4*j)[0]==(0x49510000 | (j+6 if command!=128 or j>=8 else j+24)) for j in range(command//4)))")
Path('tmp/pluto-iq/run-fullpacket.py').write_text(s)
