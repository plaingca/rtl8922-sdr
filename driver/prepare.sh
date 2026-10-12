#!/usr/bin/env bash
set -euo pipefail
root=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
target=${1:-$root/vendor/rtw89}
test ! -e "$target" || { echo "Target already exists: $target" >&2; exit 1; }
mkdir -p -- "$(dirname -- "$target")"
git clone --no-checkout https://github.com/morrownr/rtw89.git "$target"
git -C "$target" checkout --detach 8bbbacadf6fa73c3a3195aefbd4b2ec2422ae356
git -C "$target" apply --check "$root/driver/patches/driver.patch"
git -C "$target" apply "$root/driver/patches/driver.patch"
echo "Prepared working driver in $target"
echo "Build with: make -C $target -j4"
