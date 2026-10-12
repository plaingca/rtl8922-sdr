#!/bin/bash
set -euo pipefail
base=/home/plaing/rtl8922-iq-research
cd "$base/la-driver-fast"
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
    if ! test -e /sys/bus/pci/devices/0000:0d:00.0/driver; then setpci -s 0000:0d:00.0 COMMAND=0000:0003; fi
    for dep in mac80211 cfg80211 led_class_multicolor; do if test -d /sys/module/$dep; then rmmod "$dep"; fi; done
    echo CLEANUP_DONE
    lspci -nnk -s 0d:00.0
    ip route show default
}
trap cleanup EXIT
printf '[device-rtl8922-iq-test]\nmatch-device=driver:rtw89_8922ae_git\nmanaged=0\n' > "$conf"
nmcli general reload conf
install -m 644 "$base/rtw89/firmware/rtw8922a_fw-4.bin" "$fw"
modprobe mac80211
modprobe led-class-multicolor
insmod ./rtw89_core_git.ko disable_ps_mode=Y
insmod ./rtw89_pci_git.ko disable_clkreq=Y disable_aspm_l1=Y disable_aspm_l1ss=Y
insmod ./rtw89_8922a_git.ko
insmod ./rtw89_8922ae_git.ko
sleep 2
lspci -nnk -s 0d:00.0
iface=$(ls /sys/bus/pci/devices/0000:0d:00.0/net | head -1)
test -n "$iface"
nmcli device set "$iface" managed no
echo "TEST_INTERFACE=$iface"
nmcli -t -f DEVICE,TYPE,STATE device status | grep "^$iface:"
"$base/iw-local/sbin/iw" dev "$iface" set type monitor
ip link set "$iface" up
"$base/iw-local/sbin/iw" dev "$iface" set freq 2412 HT20
"$base/iw-local/sbin/iw" dev "$iface" info

dbg=$(find /sys/kernel/debug/ieee80211 -path '*/rtw89/read_reg' -print -quit)
test -n "$dbg"
echo "DEBUGFS=$dbg"
"$base/pluto-venv/bin/python" "$base/fast-drain-test.py"
