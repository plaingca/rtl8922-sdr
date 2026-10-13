#!/usr/bin/env bash
# Manual, bounded ROM experiment launcher. Uses the original working modules.
# Unlike the demo launcher, preserves debugfs long enough to inspect a failed
# firmware download. Caller must wrap this in timeout (maximum 45 seconds).
set -euo pipefail
root=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/../.." && pwd)
driver=${RTL8922_DRIVER_DIR:?Set the existing working module directory}
firmware=${RTL8922_FIRMWARE:?Set the isolated test firmware file}
iw=${RTL8922_IW:?Set the existing iw executable}
pci=0000:0d:00.0
test "$EUID" -eq 0
test "$#" -gt 0
test -f "$firmware"
test -x "$iw"
test "$(systemctl is-active rtl8922-live-demo.service || true)" = inactive
test ! -e "/sys/bus/pci/devices/$pci/driver"
test "$(cat "/sys/bus/pci/devices/$pci/vendor")" = 0x10ec
test "$(cat "/sys/bus/pci/devices/$pci/device")" = 0x8922
conf=/run/NetworkManager/conf.d/90-rtl8922-iq-test.conf
fw=/lib/firmware/rtw89/rtw8922a_fw-4.bin
test ! -e "$conf"
test ! -e "$fw"
for mod in rtw89_core_git rtw89_pci_git rtw89_8922a_git rtw89_8922ae_git; do
    test ! -d "/sys/module/$mod"
done
cleanup() {
    set +e
    if test -n "${iface:-}"; then ip link set "$iface" down; fi
    for mod in rtw89_8922ae_git rtw89_8922a_git rtw89_pci_git rtw89_core_git; do
        if test -d "/sys/module/$mod"; then rmmod "$mod"; fi
    done
    rm -f -- "$conf" "$fw"
    nmcli general reload conf
    if ! test -e "/sys/bus/pci/devices/$pci/driver"; then setpci -s "$pci" COMMAND=0000:0003; fi
    echo CLEANUP_DONE
    lspci -nnk -s "$pci"
    ip route show default
}
trap cleanup EXIT
trap 'exit 130' INT
trap 'exit 143' TERM
printf '[device-rtl8922-iq-test]\nmatch-device=driver:rtw89_8922ae_git\nmanaged=0\n' > "$conf"
nmcli general reload conf
install -m 644 "$firmware" "$fw"
modprobe mac80211
modprobe led-class-multicolor
cd "$driver"
insmod ./rtw89_core_git.ko disable_ps_mode=Y debug_mask=4096
insmod ./rtw89_pci_git.ko disable_clkreq=Y disable_aspm_l1=Y disable_aspm_l1ss=Y
insmod ./rtw89_8922a_git.ko
insmod ./rtw89_8922ae_git.ko
sleep 2
iface=$(ls "/sys/bus/pci/devices/$pci/net" | head -1)
test -n "$iface"
nmcli device set "$iface" managed no
"$iw" dev "$iface" set type monitor
boot=0
ip link set "$iface" up || boot=$?
echo "INTERFACE_UP_EXIT=$boot"
# Print only the driver's secure-boot state, not efuse bytes or key material.
journalctl -k --since '1 minute ago' --no-pager -o cat |
    grep -E 'rtw89_8922ae_git.*(MSS secure_boot=|fw checksum fail|fw security fail|failed to download firmware type)' || true
cd "$root"
"$@"
