from pathlib import Path
p=Path('tmp/pluto-iq/cpuio-hooks.c');s=p.read_text().replace('values[16]','values[32]').replace('command > 4','(command != 0 && command != 64 && command != 72 && command != 96 && command != 128)').replace('rtwdev, 64, false','rtwdev, 128, false').replace('(3 << 24) | 40','(3 << 24) | (command ? command : 72)').replace('ctrl.dst_qid = command - 1','ctrl.dst_qid = 0');p.write_text(s)
p=Path('tmp/pluto-iq/install-cpuio-hooks.py');s=p.read_text();s=s.replace("if 'iq_cpuio_write' not in s:","if 'iq_cpuio_write' in s:\n a=s.index('/* Diagnostic ownership test:');b=s.index('#include',a) if '#include' in s[a:] else -1\n # Hook ends at its fops, immediately before original remainder.\n end=s.index('};',s.index('static const struct file_operations iq_cpuio_fops',a))+2\n s=s[:a]+(r/'cpuio-hooks.c').read_text()+s[end:]\n p.write_text(s)\nelse:");p.write_text(s)
p=Path('tmp/pluto-iq/run-cpuio.py');s=p.read_text().replace('for command in [0,1,2,3,4]:','for command in [0,64,72,96,128]:');s=s.replace('    for command in [0,64,72,96,128]:', '''    old=rd(0xc04)
    wr(0xc04,0x18000000)
    print('IDDMA_REGS',json.dumps({hex(a):hex(rd(0x80000+0x5000+a)) for a in list(range(0,0x60,4))+[0xe0,0xe4,0xe8,0xec,0xf0,0xfc]}),flush=True)
    wr(0xc04,old)
    for command in [0,64,72,96,128]:''');p.write_text(s)
