#!/bin/bash
set -euo pipefail
root=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
driver=${RTL8922_DRIVER_DIR:-$root/vendor/rtw89}
pci=${RTL8922_PCI:-0000:0d:00.0}
iw=${RTL8922_IW:-$(command -v iw)}
firmware=${RTL8922_FIRMWARE:-$driver/firmware/rtw8922a_fw-4.bin}
test "$EUID" -eq 0
test "$#" -gt 0
test -f "$firmware"
test -x "$iw"
test -d "/sys/bus/pci/devices/$pci/net"
test ! -e "/sys/bus/pci/devices/$pci/driver"
cd "$driver"
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
insmod ./rtw89_core_git.ko disable_ps_mode=Y
insmod ./rtw89_pci_git.ko disable_clkreq=Y disable_aspm_l1=Y disable_aspm_l1ss=Y
insmod ./rtw89_8922a_git.ko
insmod ./rtw89_8922ae_git.ko
sleep 2
lspci -nnk -s "$pci"
iface=$(ls "/sys/bus/pci/devices/$pci/net" | head -1)
test -n "$iface"
nmcli device set "$iface" managed no
echo "TEST_INTERFACE=$iface"
nmcli -t -f DEVICE,TYPE,STATE device status | grep "^$iface:"
"$iw" dev "$iface" set type monitor
ip link set "$iface" up
"$iw" dev "$iface" set freq 2412 HT20
"$iw" dev "$iface" info

dbg=$(find /sys/kernel/debug/ieee80211 -path '*/rtw89/read_reg' -print -quit)
test -n "$dbg"
echo "DEBUGFS=$dbg"
test "$#" -gt 0
export RTL8922_IW="$iw" RTL8922_PCI="$pci"
cd "$root"
"$@"
