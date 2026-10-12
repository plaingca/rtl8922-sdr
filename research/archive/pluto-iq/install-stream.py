from pathlib import Path
r=Path('/home/plaing/rtl8922-iq-research');p=r/'la-driver/debug.c';s=p.read_text()
if '/* Bounded raw LA' in s:
 a=s.index('/* Bounded raw LA');b=s.index('};',s.index('static const struct file_operations iq_stream_fops',a))+2;s=s[:a]+s[b:]
end=s.index('};',s.index('static const struct file_operations iq_cpuio_fops'))+2
s=s[:end]+'\n'+(r/'stream-hooks.c').read_text()+s[end:]
if 'debugfs_create_file("iq_stream"' not in s:s=s.replace('debugfs_create_file("iq_cpuio",','debugfs_create_file("iq_stream", 0600, debugfs_topdir, rtwdev, &iq_stream_fops);\n\tdebugfs_create_file("iq_cpuio",',1)
p.write_text(s)
