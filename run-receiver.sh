#!/bin/bash
set -euo pipefail
root=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
driver=${RTL8922_DRIVER_DIR:-$root/vendor/rtw89}
pci=${RTL8922_PCI:-0000:0d:00.0}
iw=${RTL8922_IW:-$(command -v iw || true)}
firmware=${RTL8922_FIRMWARE:-$driver/firmware/rtw8922a_fw-4.bin}
fail() { echo "Receiver setup: $*" >&2; exit 1; }
if test "$#" -eq 0; then
    echo 'Usage: sudo [env RTL8922_…] bash run-receiver.sh <command> [arguments…]' >&2
    echo 'See docs/getting-started.md. No hardware has been changed.' >&2
    exit 2
fi
test "$EUID" -eq 0 || fail 'Run with sudo; debugfs and temporary module loading require root.'
test -f "$firmware" || fail "Firmware not found: $firmware. Run driver/prepare.sh or set RTL8922_FIRMWARE."
test -x "$iw" || fail 'iw was not found; install it or set RTL8922_IW to its executable path.'
for tool in ip nmcli setpci lspci modprobe insmod rmmod install find; do
    command -v "$tool" >/dev/null || fail "Required command not found: $tool"
done
test -d "/sys/bus/pci/devices/$pci" || fail "PCI card not found: $pci. Set RTL8922_PCI for your card."
test ! -e "/sys/bus/pci/devices/$pci/driver" || fail "Card $pci already has a driver. Check the demo/service; release it explicitly before starting another receiver."
test "$(cat "/sys/bus/pci/devices/$pci/vendor")" = 0x10ec || fail 'Selected PCI device is not Realtek.'
test "$(cat "/sys/bus/pci/devices/$pci/device")" = 0x8922 || fail 'Selected PCI device is not an RTL8922.'
for mod in rtw89_core_git rtw89_pci_git rtw89_8922a_git rtw89_8922ae_git; do
    test -f "$driver/$mod.ko" || fail "Module missing: $driver/$mod.ko. Build the pinned driver first."
done
cd "$driver"
conf=/run/NetworkManager/conf.d/90-rtl8922-iq-test.conf
fw=/lib/firmware/rtw89/rtw8922a_fw-4.bin
test ! -e "$conf" || fail "Temporary NetworkManager configuration already exists: $conf. Inspect its owner before cleanup."
test ! -e "$fw" || fail "Firmware destination already exists: $fw. It will not be overwritten."
for mod in rtw89_core_git rtw89_pci_git rtw89_8922a_git rtw89_8922ae_git; do
    test ! -d "/sys/module/$mod" || fail "Module $mod is already loaded. Check for an active receiver before proceeding."
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
