#!/usr/bin/env python3
"""Add diagnostics to the isolated, prepared streaming driver checkout."""

from pathlib import Path
import argparse
import hashlib
import json
import shutil
import subprocess

root = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument(
    "target", nargs="?", type=Path, default=root / "vendor/rtw89-streaming"
)
target = parser.parse_args().target.resolve()
assert target != (root / "vendor/rtw89").resolve(), "Keep the working checkout separate"
pin = json.loads((root / "driver/upstream.json").read_text())
head = subprocess.check_output(
    ["git", "-C", str(target), "rev-parse", "HEAD"], text=True
).strip()
diff = subprocess.check_output(["git", "-C", str(target), "diff", "--binary"])
assert head == pin["commit"]
assert hashlib.sha256(diff).hexdigest() == pin["working_patch_sha256"], (
    "Expected untouched working patch"
)
debug = target / "debug.c"
source = debug.read_text()
needle = "static ssize_t iq_stream_write("
assert source.count(needle) == 1
source = source.replace(needle, '#include "iq-copybench.c"\n\n' + needle)
needle = '    debugfs_create_bool("iq_pipeline", 0600, debugfs_topdir, &iq_pipeline);'
assert source.count(needle) == 1
source = source.replace(
    needle,
    needle
    + '\n    debugfs_create_file("iq_copybench", 0600, debugfs_topdir, rtwdev, &iq_copybench_fops);',
)
# A/B option: validate and account the completed copy before voluntarily
# sleeping. The next loop iteration still releases the wireless mutex.
needle = "static bool iq_stop, iq_running, iq_physical, iq_pipeline;"
assert source.count(needle) == 1
source = source.replace(needle, needle + "\nstatic bool iq_account_before_yield;")
needle = "        now=iq_stream_yield(rtwdev,&filter,&yield_at,&stats);"
assert source.count(needle) == 2
first = source.index(needle)
second = source.index(needle, first + len(needle))
source = source[:second] + source[second:].replace(
    needle,
    "        now=READ_ONCE(iq_account_before_yield) ? ktime_get_ns() :\n            iq_stream_yield(rtwdev,&filter,&yield_at,&stats);",
    1,
)
needle = '    debugfs_create_bool("iq_pipeline", 0600, debugfs_topdir, &iq_pipeline);'
source = source.replace(
    needle,
    needle
    + '\n    debugfs_create_bool("iq_account_before_yield", 0600, debugfs_topdir, &iq_account_before_yield);',
)
debug.write_text(source)
shutil.copyfile(root / "research/streaming/copybench.c", target / "iq-copybench.c")
print(target)
