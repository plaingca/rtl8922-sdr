#!/usr/bin/env python3
"""Prepare only a new isolated working-patch checkout for the parallel probe."""

from pathlib import Path
import argparse
import shutil
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument("target", type=Path)
target = parser.parse_args().target.resolve()
subprocess.run(
    [sys.executable, str(ROOT / "research/streaming/prepare-experiment.py"), str(target)],
    check=True,
)
debug = target / "debug.c"
source = debug.read_text()
needle = '#include "iq-copybench.c"'
assert source.count(needle) == 1
source = source.replace(needle, needle + '\n#include "iq-parallel-copybench.c"')
needle = '    debugfs_create_file("iq_copybench", 0600, debugfs_topdir, rtwdev, &iq_copybench_fops);'
assert source.count(needle) == 1
source = source.replace(
    needle,
    needle + '\n    debugfs_create_file("iq_parallel_copybench", 0600, debugfs_topdir, rtwdev, &iq_parallel_fops);',
)
shutil.copyfile(ROOT / "research/streaming/parallel-copybench.c", target / "iq-parallel-copybench.c")
debug.write_text(source)
print(target)
