from pathlib import Path
p=Path('tmp/pluto-iq/debug-fine-current.c');s=p.read_text()
a=s.index('static ssize_t iq_stream_serial(');b=s.index('/* Packet preparation',a)
t=s[a:b]
t=t.replace('    u16 id;', '    u16 id;\n    u32 failure_stage=0, end_la, end_wp, end_dma, end_status;')
t=t.replace('if (stamp-last_poll >= poll_limit) { ret=-EOVERFLOW; break; }','if (stamp-last_poll >= poll_limit) { failure_stage=5; ret=-EOVERFLOW; break; }')
t=t.replace('if (((state >> 17) & 7) != 1) { ret = -EIO; break; }','if (((state >> 17) & 7) != 1) { failure_stage=4; ret = -EIO; break; }')
t=t.replace('if (backlog >= 40960) { ret = -EOVERFLOW; break; }','if (backlog >= 40960) { failure_stage=6; ret = -EOVERFLOW; break; }')
t=t.replace('        if (ret) break;\n        timing[0]', '        if (ret) { failure_stage=1; break; }\n        timing[0]')
t=t.replace('        if (ret) break; /* Keep ownership', '        if (ret) { failure_stage=2; break; } /* Keep ownership')
t=t.replace('if (ret || i) { if (!ret) ret = i; break; }','if (ret || i) { failure_stage=ret?7:3; if (!ret) ret = i; break; }')
t=t.replace('    elapsed = ktime_get_ns()-start;', '''    elapsed = ktime_get_ns()-start;
    end_la=rtw89_read32(rtwdev,0x9660); end_wp=rtw89_read32(rtwdev,0x9664);
    end_dma=rtw89_read32(rtwdev,0x80058); end_status=rtw89_read32(rtwdev,0x800e8);''')
t=t.replace('physical=%u validation_ns=%llu\\n','physical=%u validation_ns=%llu fault_stage=%u last_state=%x end_la=%x end_wp=%x end_dma=%x end_status=%x\\n')
t=t.replace('physical_packets,validation_ns);','physical_packets,validation_ns,failure_stage,state,end_la,end_wp,end_dma,end_status);')
s=s[:a]+t+s[b:]
Path('tmp/pluto-iq/debug-serial-faults.c').write_bytes(s.encode())
