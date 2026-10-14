#!/usr/bin/env bash
# Offline reference build only. Requires system GNU Radio 3.10 development files,
# pybind11, fmt, spdlog, cmake, a compiler, git, uv, and /usr/bin/python3.
set -euo pipefail
cd "$(dirname "$0")/../.."
reference=ad0598e4a874f4b8e1f391a1e0323e80df2b34ff
if [[ ! -d vendor/gr-ieee802-11/.git ]]; then
    git clone --no-checkout https://github.com/bastibl/gr-ieee802-11.git vendor/gr-ieee802-11
    git -C vendor/gr-ieee802-11 checkout --detach "$reference"
fi
[[ "$(git -C vendor/gr-ieee802-11 rev-parse HEAD)" == "$reference" ]]
# Retain the received FCS for a second, independent CRC calculation. The
# reference decoder's CRC residue rejection and all PHY processing stay intact.
/usr/bin/python3 - <<'PY'
import subprocess
from pathlib import Path
root = Path('vendor/gr-ieee802-11')
name = 'lib/decode_mac.cc'
original = subprocess.check_output(['git', '-C', str(root), 'show', 'HEAD:'+name]).decode()
changed = subprocess.check_output(['git', '-C', str(root), 'diff', 'HEAD', '--name-only']).decode().splitlines()
if any(item != name for item in changed):
    raise RuntimeError('Unexpected modifications in pinned reference checkout')
old = 'pmt::make_blob(out_bytes + 2, d_frame.psdu_size - 4)'
new = 'pmt::make_blob(out_bytes + 2, d_frame.psdu_size)'
assert original.count(old) == 1
patched = original.replace(old, new)
path = root / name
if path.read_text() not in (original, patched):
    raise RuntimeError('Refusing to overwrite unexpected reference modifications')
path.write_text(patched)
PY
if [[ ! -x build-wifi/venv/bin/python ]]; then
    uv venv --python /usr/bin/python3 --system-site-packages build-wifi/venv
fi
uv pip install --python build-wifi/venv/bin/python numpy==1.26.4 scipy==1.15.3
cmake -S vendor/gr-ieee802-11 -B build-wifi/gr \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX="$PWD/build-wifi/reference" \
    -DPYTHON_EXECUTABLE="$PWD/build-wifi/venv/bin/python" \
    -DGR_PYTHON_DIR=lib/python3.10/site-packages \
    -Dfmt_DIR=/usr/lib/x86_64-linux-gnu/cmake/fmt -DENABLE_DOXYGEN=OFF
cmake --build build-wifi/gr -j4
cmake --install build-wifi/gr
