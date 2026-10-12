"""Explicit hardware experiment support. Importing does not access hardware."""

import json
import os
from pathlib import Path
import re
import signal
import subprocess
import time

ROOT = Path(__file__).resolve().parents[2]


class Radio:
    def __init__(self, report_path, seconds=120):
        self.report_path = Path(report_path)
        self.report = {
            "tests": [],
            "started_utc": time.strftime("%Y-%m-%dT%H:%M:%SZ", time.gmtime()),
        }
        self.saved = {}
        self.dbg = next(
            Path("/sys/kernel/debug/ieee80211").glob("*/rtw89/read_reg")
        ).parent
        self.fields = {
            name: (int(a, 16), int(m, 16))
            for name, a, m in re.findall(
                r'\{"([^"]+)",(0x[0-9a-f]+),(0x[0-9a-f]+)\}',
                (ROOT / "fields.hpp").read_text(),
            )
        }
        self.iw = os.environ["RTL8922_IW"]
        self.iface = next(Path("/sys/bus/pci/devices/0000:0d:00.0/net").iterdir()).name
        self.seconds = seconds
        self.pluto = None

    def save(self):
        self.report_path.parent.mkdir(parents=True, exist_ok=True)
        self.report_path.write_text(json.dumps(self.report, indent=2) + "\n")

    def __enter__(self):
        import adi

        self.pluto = adi.Pluto("ip:192.168.2.1")
        self.pluto._ctx.set_timeout(3000)
        self.lo = self.pluto._ctrl.find_channel("altvoltage1", True)
        self.original_powerdown = self.lo.attrs["powerdown"].value
        if self.original_powerdown != "1":
            raise RuntimeError("Pluto TX already active; refusing to take it")
        self.keys = [
            "sample_rate",
            "rx_lo",
            "tx_lo",
            "rx_rf_bandwidth",
            "tx_rf_bandwidth",
            "tx_hardwaregain_chan0",
        ]
        self.original = {k: getattr(self.pluto, k) for k in self.keys}
        self.report["original_pluto"] = self.original
        self.report["original_tx_powerdown"] = self.original_powerdown
        self.country = re.search(
            r"country (\w\w):",
            subprocess.check_output([self.iw, "reg", "get"], text=True),
        )[1]
        self.report["original_country"] = self.country
        self.save()

        def stop(*_):
            raise TimeoutError("bounded experiment interrupted")

        self.signals = {
            sig: signal.signal(sig, stop)
            for sig in (signal.SIGTERM, signal.SIGINT, signal.SIGALRM)
        }
        signal.alarm(self.seconds)
        return self

    def rd(self, addr):
        (self.dbg / "read_reg").write_text(f"{addr:x} 4\n")
        return int(
            re.findall(r"0x[0-9a-fA-F]+", (self.dbg / "read_reg").read_text())[-1], 16
        )

    def wr(self, addr, value):
        if addr not in self.saved:
            self.saved[addr] = self.rd(addr)
        (self.dbg / "write_reg").write_text(f"{addr:x} {value & 0xFFFFFFFF:x} 4\n")

    def field(self, name, value):
        addr, mask = self.fields[name]
        shift = (mask & -mask).bit_length() - 1
        self.wr(addr, (self.rd(addr) & ~mask) | ((value << shift) & mask))

    def setup(self, rate):
        tune = {
            40: ["2412", "HT40+"],
            80: ["5180", "80", "5210"],
            160: ["5180", "160", "5250"],
        }[rate]
        subprocess.run([self.iw, "reg", "set", "CA"], check=True)
        time.sleep(0.25)
        subprocess.run([self.iw, "dev", self.iface, "set", "freq", *tune], check=True)
        self.wr(0x9660, 0)
        self.field("la_en", 0)
        for name in (
            "la_and1_mask",
            "la_and2_en",
            "la_and3_en",
            "la_and4_en",
            "la_and5_sel",
            "la_and6_sel",
            "la_and7_sel",
            "la_and8_mask",
            "la_mac_and0_en",
            "la_mac_and1_en",
            "la_mac_and2_en",
            "la_re_and1_sel",
            "la_re_and1_mask",
            "la_scope_mode_en",
            "la_scope_mode_auto_fix_la",
            "la_and0_inv",
            "la_and8_inv",
        ):
            self.field(name, 0)
        self.field("and0_trig_disable", 1)
        self.field("la_trigger_cnt", 255)
        self.field("la_trigger_edge", 0)
        self.field("dma_dbgport_base_n", 31)
        self.field("dma_dbgport_ext_base_n", 0)
        for lane in "abcd":
            self.field(f"dma_{lane}_path_sel", 1)
            self.field(f"dma_{lane}_src_sel", 2)
        for bit in range(56, 64):
            self.field(f"dma_hdr_sel_{bit}", 0)
        self.field("dma_data_type", 14)
        self.field("r_dma_rdrdy", 0)
        self.field("dma_la_phy_sel", 0)
        self.wr(0x26B50, self.rd(0x26B50) & 0x3FFFFFFF)
        self.field("la_smp_rt_sel", {40: 3, 80: 2, 160: 1}[rate])
        self.field("la_clk_en", 1)
        self.field("la_en", 1)
        self.wr(0x8938, (self.rd(0x8938) & ~0xC00) | 0x400)
        self.wr(0x8924, (self.rd(0x8924) & ~0x80000) | 8)

    def freeze(self):
        self.wr(0x9668, 0)
        self.wr(0x9660, (4 << 16) | (11 << 8) | 9)
        time.sleep(0.01)
        self.field("la_en", 0)
        self.wr(0x9660, (4 << 16) | (11 << 8))
        return (self.dbg / "iq_memory").read_bytes()

    def __exit__(self, typ, value, tb):
        signal.alarm(0)
        errors = []

        def attempt(label, action):
            try:
                action()
            except Exception as e:
                errors.append(f"{label}: {e}")

        # Each cleanup step still runs if another transport operation fails.
        attempt("TX gain", lambda: setattr(self.pluto, "tx_hardwaregain_chan0", -89.75))
        attempt("TX buffer", self.pluto.tx_destroy_buffer)
        attempt("TX off", lambda: setattr(self.lo.attrs["powerdown"], "value", "1"))
        for k, v in self.original.items():
            attempt(k, lambda k=k, v=v: setattr(self.pluto, k, v))
        attempt(
            "TX off final", lambda: setattr(self.lo.attrs["powerdown"], "value", "1")
        )
        for a, v in reversed(list(self.saved.items())):
            if a == 0x9660:
                v &= ~9
            if a == 0x21090:
                v &= ~1
            attempt(
                hex(a),
                lambda a=a, v=v: (self.dbg / "write_reg").write_text(
                    f"{a:x} {v:x} 4\n"
                ),
            )
        attempt(
            "regulatory",
            lambda: subprocess.run([self.iw, "reg", "set", self.country], check=True),
        )
        attempt(
            "Pluto readback",
            lambda: self.report.update(
                restored_pluto={k: getattr(self.pluto, k) for k in self.keys},
                tx_powerdown=self.lo.attrs["powerdown"].value,
            ),
        )
        self.report["cleanup_errors"] = errors
        self.report["exception"] = str(value) if value else None
        self.save()
        for sig, handler in self.signals.items():
            signal.signal(sig, handler)
        if errors and typ is None:
            raise RuntimeError("; ".join(errors))
