#!/usr/bin/env bash
# Hardware-free Python launcher for a separately built system GNU Radio modem.
set -euo pipefail
prefix=${RTL8922_LORA_PREFIX:?Set the isolated gr-lora_sdr install prefix}
arch=$(/usr/bin/gcc -dumpmachine)
export LD_LIBRARY_PATH="$prefix/lib/$arch:$prefix/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
exec /usr/bin/python3 -S -c '
import sys,runpy
from pathlib import Path
prefix=Path(sys.argv.pop(1));script=sys.argv.pop(1)
sys.path.extend(["/usr/lib/python3/dist-packages",str(Path(script).resolve().parent)])
import gnuradio
version=f"{sys.version_info.major}.{sys.version_info.minor}"
for path in (prefix/f"local/lib/python{version}/dist-packages/gnuradio",prefix/f"lib/python{version}/site-packages/gnuradio"):
    if path.exists():gnuradio.__path__.append(str(path))
runpy.run_path(script,run_name="__main__")
' "$prefix" "$@"
