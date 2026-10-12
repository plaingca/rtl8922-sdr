#!/bin/bash
set -euo pipefail
base=/home/plaing/rtl8922-iq-research/soapy
iw=/home/plaing/rtl8922-iq-research/iw-local/sbin/iw
country=$($iw reg get | sed -n 's/^country \([A-Z0-9]*\):.*/\1/p' | head -1)
trap '$iw reg set "$country"' EXIT
$iw reg set CA
sleep .4
"$base/bands-check"
