#!/usr/bin/env bash
# Reconstruct the separate default PAXI profile; never load or install modules.
set -euo pipefail
root=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
target=${1:-$root/vendor/rtw89-paxi-wide}
bash "$root/driver/prepare.sh" "$target"
python3 "$root/research/streaming/prepare-paxi.py" "$target" --wide-queue
