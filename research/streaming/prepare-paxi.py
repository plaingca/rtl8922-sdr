#!/usr/bin/env python3
"""Prepare an isolated working-patch checkout for a mandatory-teardown PAXI probe."""

from pathlib import Path
import argparse
import shutil
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument("target", type=Path)
parser.add_argument("--wide-queue", action="store_true",
                    help="Reassign 160 reserved PLE pages from CMAC1 RX to C2H before initialization")
args = parser.parse_args()
target = args.target.resolve()
subprocess.run(
    [sys.executable, str(ROOT / "research/streaming/prepare-experiment.py"), str(target)],
    check=True,
)
debug = target / "debug.c"
source = debug.read_text()
start = source.index('/* Consuming FIFO reader; EAGAIN permits a userspace producer/consumer loop. */')
end = source.index('static ssize_t iq_drain_write', start)
source = source[:start] + '#include "iq-paxi-drain.c"\n' + source[end:]
needle = '.owner = THIS_MODULE, .read = iq_drain_read, .write = iq_drain_write,'
assert source.count(needle) == 1
source = source.replace(needle, needle + '\n    .open = iq_paxi_drain_open, .release = iq_paxi_drain_release,')
needle = '#include "iq-copybench.c"'
assert source.count(needle) == 1
source = source.replace(needle, needle + '\n#include "iq-paxi-frozen.c"')
needle = '    debugfs_create_file("iq_copybench", 0600, debugfs_topdir, rtwdev, &iq_copybench_fops);'
assert source.count(needle) == 1
source = source.replace(
    needle,
    needle + '\n    debugfs_create_file("iq_paxi_frozen", 0600, debugfs_topdir, rtwdev, &iq_paxi_frozen_fops);'
    + '\n    debugfs_create_file("iq_paxi_stream", 0600, debugfs_topdir, rtwdev, &iq_paxi_stream_fops);'
    + '\n    debugfs_create_file("iq_paxi_retune", 0600, debugfs_topdir, rtwdev, &iq_paxi_retune_fops);'
    + '\n    debugfs_create_bool("iq_paxi_static_ring", 0600, debugfs_topdir, &iq_paxi_static_ring);'
    + '\n    debugfs_create_bool("iq_paxi_disable_watchdog", 0600, debugfs_topdir, &iq_paxi_disable_watchdog);'
    + '\n    debugfs_create_bool("iq_paxi_quiesce_pd", 0600, debugfs_topdir, &iq_paxi_quiesce_pd);'
    + '\n    debugfs_create_u32("iq_paxi_burst", 0600, debugfs_topdir, &iq_paxi_burst);',
)
shutil.copyfile(ROOT / "research/streaming/paxi-frozen.c", target / "iq-paxi-frozen.c")
shutil.copyfile(ROOT / "research/streaming/paxi-drain.c", target / "iq-paxi-drain.c")
debug.write_text(source)
if args.wide_queue:
    chip = target / "rtw8922a.c"
    chip_source = chip.read_text()
    before_min = "static const struct rtw89_ple_quota iq_ple_min = {128,128,32,16,19,13,165,292,44,18,128,4,0,0};"
    after_min = "static const struct rtw89_ple_quota iq_ple_min = {128,128,192,16,19,13,165,132,44,18,128,4,0,0};"
    before_max = "static const struct rtw89_ple_quota iq_ple_max = {128,128,32,118,121,115,394,394,146,120,230,106,0,0};"
    after_max = "static const struct rtw89_ple_quota iq_ple_max = {128,128,192,118,121,115,394,394,146,120,230,106,0,0};"
    assert chip_source.count(before_min) == chip_source.count(before_max) == 1
    # Total reserved pages, physical layout and LA ring size are unchanged.
    assert 32 + 292 == 192 + 132
    chip.write_text(chip_source.replace(before_min, after_min).replace(before_max, after_max))
print(target)
