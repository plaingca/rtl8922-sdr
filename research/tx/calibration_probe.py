#!/usr/bin/env python3
"""Explicit, bounded RTL8922A calibration-TX experiment; default is offline.

Run inside run-receiver.sh, with its working modules, only on a released card.
The generator/routing sequence is traced from rtwlane711.sys 6102.24.143.0.
This is a hypothesis test, not qualified arbitrary-I/Q transmission.
"""

import argparse
import fcntl
import hashlib
import json
import os
from pathlib import Path
import re
import signal
import subprocess
import time


BB_BASE = 0x20000
FULL = 0xFFFFFFFF
RF_FULL = 0xFFFFF


def setup_plan(path, gain=0, source="calibration"):
    """(space, path, relative address, mask, unshifted value) operations."""
    p = path << 8
    bb = lambda a, m, v: ("bb", 0, a, m, v)
    rf = lambda k, a, m, v: ("rf", k, a, m, v)
    # RTL8922A callback 0x140464aec: analog TX gain and LO-test controls.
    # Keep LO injection off for the digital calibration-source experiment.
    analog = [rf(path, 5, 1, 0), rf(path, 0x11, RF_FULL, 0x600),
              rf(path, 0x58, 2, 1 if source == "lo" else 0)]
    if source == "lo":
        return analog
    return [
        # Prevent automatic RF-mode changes, and keep the other chain idle.
        rf(0, 5, 1, 0), rf(1, 5, 1, 0),
        rf(0, 0, 0xF0000, 4 if path == 0 else 1),
        rf(1, 0, 0xF0000, 4 if path == 1 else 1),
        # 0x140465504: force calibration AFE controls.
        bb(0x2AF4, 0xFF, 0xF3), bb(0x2BF4, 0xFF, 0xF3),
        # _iqk_macbb_setting_8922a, 0x14046c35c.
        bb(0x10FC, 0xFFFF0000, 0x303),
        bb(0xE414, FULL, 0x6C83FFFC), bb(0xE514, FULL, 0x6C83FFFC),
        bb(0x2AA0 + p, 0x100000, 0), bb(0x2AA0 + p, 0xF000, 6),
        bb(0x2AA0 + p, 0x100000, 1),
        bb(0x2BA0 + p, 0x200000, 0), bb(0x2BA0 + p, 0xF0000, 4),
        bb(0x2BA0 + p, 0x200000, 1),
        # 0x14046c4a1 loads mask 0x10 (r15d=1, then +0xf).
        # This force-enable bit must be set before the mode fields below.
        bb(0x2A20, 0x10, 1), bb(0x2B20, 0x10, 1),
        bb(0x2A20, 0xF00, 0 if path == 0 else 6),
        bb(0x2B20 if path == 0 else 0x2A20, 0xF00, 6 if path == 0 else 1),
        bb(0x2B20, 0xF00, 1 if path == 0 else 0),
        bb(0x10FC, 0xFFFF0000, 0x3333),
        # 0x14046c86c: calibration KIP preset, selected RF bank.
        rf(path, 0x10000, 0xF0000, 4), rf(path, 0x10005, 1, 0),
        bb(0x8008, FULL, 0x80), bb(0x8088, FULL, 0x81FF010A),
        bb(0x808C, FULL, 0x3C0C),
        # halrf_iqk_toneleakage_8922a, 0x140470644.
        bb(0x8074, 0xFF000000, 0x80), bb(0x80D0, FULL, 0x3000),
        bb(0x8120 + p, FULL, 0xC2000A08), bb(0x8000, 6, path),
        rf(path, 0x10001, 0x3F, gain),
        bb(0x8034, 0x30, 2), bb(0x80CC, 0x100, 1),
        bb(0x8034, 0xFF000000, 0x11),
        bb(0xE414 + p, 2, 1), bb(0x8014, 0x10000000, 1),
        bb(0x8014, 0x10000000, 0), bb(0xE414 + p, 2, 0),
        bb(0x8018, 0x70000000, 2), bb(0x81CC + p, 0x3F, 0x12),
    ] + analog


def la_plan(path, rate_select=4, data_type=0):
    """Select the public HALBB TX-DAC debug source; its validity is tested."""
    fields = {
        name: (int(addr, 16), int(mask, 16))
        for name, addr, mask in re.findall(r'\{"([^"]+)",(0x[0-9a-f]+),(0x[0-9a-f]+)\}',
            (Path(__file__).resolve().parents[2] / 'fields.hpp').read_text())
    }
    values = {
        'la_en': 0, 'la_and1_mask': 0, 'la_and2_en': 0, 'la_and3_en': 0,
        'la_and4_en': 0, 'la_and5_sel': 0, 'la_and6_sel': 0, 'la_and7_sel': 0,
        'la_and8_mask': 0, 'la_mac_and0_en': 0, 'la_mac_and1_en': 0,
        'la_mac_and2_en': 0, 'la_re_and1_sel': 0, 'la_re_and1_mask': 0,
        'la_scope_mode_en': 0, 'la_scope_mode_auto_fix_la': 0, 'la_and0_inv': 0,
        'la_and8_inv': 0, 'and0_trig_disable': 1, 'la_trigger_cnt': 255,
        'la_trigger_edge': 0, 'dma_dbgport_base_n': 31, 'dma_dbgport_ext_base_n': 0,
        'dma_data_type': data_type, 'r_dma_rdrdy': 0, 'dma_la_phy_sel': 0,
        'la_smp_rt_sel': rate_select, 'la_clk_en': 1,
    }
    for lane in 'abcd':
        values[f'dma_{lane}_path_sel'] = path
        values[f'dma_{lane}_src_sel'] = 4
    for bit in range(56, 64):
        values[f'dma_hdr_sel_{bit}'] = 0
    return [('mmio', 0, addr, mask, value)
            for name, value in values.items() for addr, mask in [fields[name]]] + [
                ('mmio', 0, 0x9660, FULL, 0), ('mmio', 0, 0x9668, FULL, 0),
                ('mmio', 0, 0x26B50, 0xC0000000, 0),
                ('mmio', 0, 0x8938, 0xC00, 1), ('mmio', 0, 0x8924, 0x80008, 1),
            ]


class DebugIO:
    def __init__(self):
        pci = Path("/sys/bus/pci/devices/0000:0d:00.0")
        iface = next((pci / "net").iterdir()).name
        # Match this card's PHY, never whichever debugfs directory comes first.
        phy_name = (Path("/sys/class/net") / iface / "phy80211").resolve().name
        self.dbg = Path("/sys/kernel/debug/ieee80211") / phy_name / "rtw89"
        if not (self.dbg / "read_rf").exists():
            raise RuntimeError("Working driver's debugfs is unavailable")
        self.iface = iface

    def read(self, key):
        space, path, address = key
        if space in ("bb", "bb8", "mmio"):
            port = self.dbg / "read_reg"
            port.write_text(f"{address + (BB_BASE if space in ('bb', 'bb8') else 0):x} {1 if space == 'bb8' else 4}\n")
        else:
            port = self.dbg / "read_rf"
            port.write_text(f"{path} {address:x} fffff\n")
        text = port.read_text()
        match = re.search(r"=0x([0-9a-fA-F]+)", text)
        if not match:
            raise RuntimeError(f"Unrecognized register response: {text!r}")
        value = int(match[1], 16)
        # LA's MAC trigger mask legitimately reads all ones before configuration.
        # Keep rejecting bus-error sentinels everywhere else.
        valid_trigger_mask = value == FULL and key == ("mmio", 0, 0x9668)
        if value in (FULL, RF_FULL, 0xDEADBEEF) and not valid_trigger_mask:
            raise RuntimeError(f"Invalid readback for {key}: {value:#x}")
        return value

    def write(self, key, value):
        space, path, address = key
        if space in ("bb", "bb8", "mmio"):
            (self.dbg / "write_reg").write_text(f"{address + (BB_BASE if space in ('bb', 'bb8') else 0):x} {value & (0xFF if space == 'bb8' else FULL):x} {1 if space == 'bb8' else 4}\n")
        else:
            (self.dbg / "write_rf").write_text(f"{path} {address:x} fffff {value & RF_FULL:x}\n")


class Transaction:
    """Snapshot the complete write set before the first hardware mutation."""
    def __init__(self, io, path, report, save, gain=0, source="calibration", capture_dac=False, tx_pad=0, probe_tpg=False, probe_dac_input=False, probe_tone_phase=False, probe_dadck=False, native_dac_clock4=False):
        self.io, self.path, self.report, self.save = io, path, report, save
        self.gain = gain
        self.source = source
        self.capture_dac = capture_dac
        self.tx_pad = tx_pad
        self.probe_tpg = probe_tpg
        self.probe_dac_input = probe_dac_input
        self.native_dac_clock4 = native_dac_clock4
        # Restore RF58 while its manual coefficient gate is still enabled,
        # then restore RFDF last. RTL8922A bypass helper: 0x140470434.
        keys = [('rf', path, 0xDF)] + [op[:3] for op in setup_plan(path, gain, source)]
        keys += [("bb", 0, 0x80CC)]
        keys += [("bb", 0, a) for a in (0x802C, 0x8034, 0x8138 + (path << 8), 0x8124 + (path << 8))]
        keys += [("rf", p, a) for p in (0, 1) for a in (0, 5, 0x10000)]
        if capture_dac:
            keys += [op[:3] for op in la_plan(path)]
        if probe_tpg:
            keys += [("bb", 0, a) for a in (0x8068, 0x806C, 0x8070)]
        if probe_dac_input:
            keys += [("bb", 0, 0x2B58)]
        if probe_tone_phase:
            keys += [("bb", 0, 0x8030)]
        if probe_dadck:
            keys += [("bb", 0, 0x2BD4), ("bb8", 0, 0xC4D0), ("bb8", 0, 0xC4D4)]
        self.saved = {key: io.read(key) for key in dict.fromkeys(keys)}
        for p in (0, 1):
            mode = (self.saved["rf", p, 0] >> 16) & 15
            if mode not in (0, 1, 3):
                raise RuntimeError(f"RF chain {p} is not idle/RX (mode {mode}); refusing takeover")
        report["saved_rtl"] = {self.label(k): hex(v) for k, v in self.saved.items()}
        save()

    @staticmethod
    def label(key):
        return f"{key[0]}:{key[1]}:{key[2]:x}"

    def field(self, space, path, address, mask, value):
        key = (space, path, address)
        if key not in self.saved:
            raise RuntimeError(f"Write outside pre-saved set: {key}")
        shift = (mask & -mask).bit_length() - 1
        current = self.io.read(key)
        self.io.write(key, (current & ~mask) | ((value << shift) & mask))

    def setup(self):
        for op in setup_plan(self.path, self.gain, self.source):
            self.field(*op)
            time.sleep(0.00001)
        if self.native_dac_clock4:
            # Exact 8922A DACK force-clock helper 0x140466d14. Keep this
            # explicit experimental alternative separate from the tone setup.
            address = 0x2AA0 | (self.path << 8)
            self.field('bb', 0, address, 0x200000, 0)
            self.field('bb', 0, address, 0xF0000, 4)
            self.field('bb', 0, address, 0x200000, 1)
        if self.tx_pad:
            # Actual 8922A 2-GHz IQK helper 0x140467f15 uses RF11[4:0]
            # value 6. Limit this external-path hypothesis to lower codes 1/2.
            self.field('rf', self.path, 0x11, 0x1F, self.tx_pad)

    def start(self, tone_index):
        if self.source == "lo":
            self.field("rf", self.path, 0, 0x30000, 2)
            return
        self.field("bb", 0, 0x8034, 0x30, 2)
        self.field("bb", 0, 0x80CC, 0x100, 1)
        self.field("bb", 0, 0x802C, 0xFFF, tone_index)
        self.field("rf", self.path, 0, 0xF0000, 2)
        self.field("bb", 0, 0x8034, 1, 1)
        self.field("bb", 0, 0x8034, 1, 0)

    def stop(self):
        if self.probe_tpg:
            self.field('bb', 0, 0x8070, 0xFF000000, 0)
            self.field('bb', 0, 0x806C, 8, 0)
        if self.source == 'calibration':
            # Live index zero was measured as all-zero DAC data. The mode and
            # 80CC changes alone did not stop an already running DDS.
            self.field('bb', 0, 0x802C, 0xFFF, 0)
        self.field("rf", self.path, 0x58, 2, 0)
        self.field("bb", 0, 0x8034, 1, 0)
        self.field("bb", 0, 0x8034, 0x30, 3)
        self.field("bb", 0, 0x80CC, 0x100, 0)
        for path in (0, 1):
            self.field("rf", path, 0, 0xF0000, 1)

    def inspect_dac(self, rate_select=4, data_type=0):
        import numpy as np
        for op in la_plan(self.path, rate_select, data_type):
            self.field(*op)
        self.field('mmio', 0, 0x21090, 1, 1)
        config = (4 << 16) | (11 << 8)
        self.field('mmio', 0, 0x9660, FULL, config | 9)
        time.sleep(0.01)
        status = self.io.read(('mmio', 0, 0x9664))
        self.field('mmio', 0, 0x21090, 1, 0)
        self.field('mmio', 0, 0x9660, FULL, config)
        raw = np.frombuffer((self.io.dbg / 'iq_memory').read_bytes(), dtype='<u8')
        pointer = status & 65535
        if status & 65536:
            raw = np.roll(raw, -pointer)
        else:
            raw = raw[:pointer]
        if len(raw) < 1024:
            return {'status': hex(status), 'records': len(raw), 'valid_capture': False}
        if data_type:
            bits, phases = {3: (14, 2), 12: (12, 2), 14: (8, 4)}[data_type]
            components = []
            for n in range(phases * 2):
                v = ((raw >> (n * bits)) & ((1 << bits) - 1)).astype(np.int32)
                v[v >= 1 << (bits-1)] -= 1 << bits
                components.append(v)
            z = np.asarray([components[2*n] + 1j * components[2*n+1]
                            for n in range(phases)]).T.reshape(-1)
            power = abs(np.fft.fft((z-z.mean()) * np.hanning(len(z))))**2
            return {'status': hex(status), 'records': len(raw), 'valid_capture': True,
                    'data_type': data_type, 'candidate_bits': bits, 'candidate_phases': phases,
                    'component_stats': [{'mean': float(v.mean()), 'std': float(v.std()),
                                         'min': int(v.min()), 'max': int(v.max())} for v in components],
                    'interleaved_real_std': float(z.real.std()), 'interleaved_imag_std': float(z.imag.std()),
                    'interleaved_real_mean': float(z.real.mean()), 'interleaved_imag_mean': float(z.imag.mean()),
                    'interleaved_peak_cycles_per_sample': float(np.fft.fftfreq(len(z))[np.argmax(power)])}
        real = (raw & 0x3FFF).astype(np.int32)
        imag = ((raw >> 14) & 0x3FFF).astype(np.int32)
        real[real >= 8192] -= 16384
        imag[imag >= 8192] -= 16384
        z = real + 1j * imag
        ac = z - z.mean()
        power = abs(np.fft.fft(ac * np.hanning(len(ac)))) ** 2
        index = int(np.argmax(power))
        return {'status': hex(status), 'records': len(raw), 'valid_capture': True,
                'real_std': float(real.std()), 'imag_std': float(imag.std()),
                'real_mean': float(real.mean()), 'imag_mean': float(imag.mean()),
                'real_min': int(real.min()), 'real_max': int(real.max()),
                'imag_min': int(imag.min()), 'imag_max': int(imag.max()),
                'iq_covariance': float(np.mean((real - real.mean()) * (imag - imag.mean()))),
                'unique_words': len(np.unique(raw)),
                'peak_cycles_per_record': float(np.fft.fftfreq(len(raw))[index]),
                'peak_above_median_db': float(10 * np.log10(max(power[index], 1e-20) / max(np.median(power), 1e-20)))}

    def restore(self):
        errors = []
        def attempt(label, action):
            try:
                action()
            except Exception as error:
                errors.append(f"{label}: {error}")
        # Attempt every mute operation even if another fails.
        if self.capture_dac:
            attempt('LA stop', lambda: self.field('mmio', 0, 0x21090, 1, 0))
            attempt('LA MAC stop', lambda: self.field('mmio', 0, 0x9660, FULL, 0))
        if self.source == 'calibration':
            attempt('DDS zero', lambda: self.field('bb', 0, 0x802C, 0xFFF, 0))
        if self.probe_tpg:
            attempt('TPG sync off', lambda: self.field('bb', 0, 0x8070, 0xFF000000, 0))
            attempt('TPG trigger off', lambda: self.field('bb', 0, 0x806C, 8, 0))
        attempt("LO test off", lambda: self.field("rf", self.path, 0x58, 2, 0))
        for op in [("bb", 0, 0x8034, 1, 0), ("bb", 0, 0x8034, 0x30, 3),
                   ("bb", 0, 0x80CC, 0x100, 0)]:
            attempt(str(op), lambda op=op: self.field(*op))
        for path in (0, 1):
            attempt(f"RF{path} standby", lambda path=path: self.field("rf", path, 0, 0xF0000, 1))
        for key, value in reversed(list(self.saved.items())):
            attempt(self.label(key), lambda key=key, value=value: self.io.write(key, value))
        mismatches = {}
        for key, value in self.saved.items():
            def check(key=key, value=value):
                actual = self.io.read(key)
                if actual != value:
                    mismatches[self.label(key)] = {"saved": hex(value), "actual": hex(actual)}
            attempt(f"readback {self.label(key)}", check)
        self.report["rtl_cleanup_errors"] = errors
        self.report["rtl_restore_mismatches"] = mismatches
        self.save()


def spectrum(samples, rate, expected=None):
    import numpy as np
    data = np.asarray(samples)
    n = min(len(data), 65536)
    power = abs(np.fft.fftshift(np.fft.fft(data[:n] * np.hanning(n)))) ** 2
    freq = np.fft.fftshift(np.fft.fftfreq(n, 1 / rate))
    # Retain the LO/DC region in the report, but exclude it for tone detection.
    median = max(float(np.median(power)), 1e-20)
    masked = power.copy()
    masked[abs(freq) < 50000] = 0
    peaks = []
    for _ in range(8):
        index = int(np.argmax(masked))
        peaks.append({"hz": float(freq[index]), "above_median_db": float(10 * np.log10(max(masked[index], 1e-20) / median)),
                      "power": float(power[index])})
        masked[abs(freq - freq[index]) < 10000] = 0
    targeted = None
    if expected is not None:
        nearby = np.flatnonzero(abs(freq - expected) < 50000)
        index = int(nearby[np.argmax(power[nearby])])
        local = power[(abs(freq - freq[index]) > 2000) & (abs(freq - freq[index]) < 100000)]
        targeted = {'hz': float(freq[index]), 'above_local_median_db': float(10 * np.log10(max(power[index], 1e-20) / max(np.median(local), 1e-20)))}
    return {"peaks": peaks, "targeted_peak": targeted, "rms": float(np.sqrt(np.mean(abs(data) ** 2))),
            "mean_real": float(np.mean(data.real)), "mean_imag": float(np.mean(data.imag)),
            "clip_fraction": float(np.mean((abs(data.real) >= 2047) | (abs(data.imag) >= 2047)))}


def run(args):
    import adi
    report = {"experimental": True, "arbitrary_iq_tx_demonstrated": False,
              "started_utc": time.strftime("%Y-%m-%dT%H:%M:%SZ", time.gmtime()),
              "path": args.path, "center_hz": 2442000000, "rf_gain_code": args.gain_code,
              "source": args.source,
              "lo_injection_disabled": args.disable_lo_injection,
              "manual_rf_mode_gain": args.rf_mode_gain, "tx_pad_code": args.tx_pad_code,
              "pluto_rx_rate": args.rx_rate,
              "probe_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
              "helper_sha256": {name: hashlib.sha256(Path(__file__).with_name(name).read_bytes()).hexdigest()
                                for name in ('tone_validation.py', 'dds_probe.py', 'fsk_probe.py', 'lok_modulation.py', 'tpg_probe.py', 'dac_input_probe.py', 'iq_envelope_probe.py', 'tone_phase_probe.py', 'dadck_reference.py', 'dds_dc_probe.py', 'iq_sample_probe.py', 'dac_phase_probe.py', 'iq_if_probe.py', 'decode_iq_if.py')},
              "probe_options": vars(args) | {"report": str(args.report)},
              "tone_tests": []}
    def save():
        args.report.write_text(json.dumps(report, indent=2) + "\n")
    def interrupted(*_):
        raise TimeoutError("bounded TX experiment interrupted")
    handlers = {sig: signal.signal(sig, interrupted) for sig in (signal.SIGINT, signal.SIGTERM, signal.SIGALRM)}
    signal.alarm(70)
    tx = None
    pluto = None
    original = None
    io = None
    original_frequency = None
    lock = None
    try:
        lock = open('/run/lock/rtl8922-sdr.lock', 'a')
        fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
        io = DebugIO()
        iw = os.environ["RTL8922_IW"]
        before_info = subprocess.check_output([iw, "dev", io.iface, "info"], text=True, timeout=5)
        match = re.search(r"channel .*?\((\d+) MHz\).*?width: 20 MHz", before_info)
        if match is None:
            raise RuntimeError("Probe expects the wrapper's initial HT20 channel")
        original_frequency = match[1]
        report["original_interface_info"] = before_info
        pluto = adi.Pluto("ip:192.168.2.1")
        pluto._ctx.set_timeout(3000)
        lo = pluto._ctrl.find_channel("altvoltage1", True)
        powerdown = lo.attrs["powerdown"].value
        if powerdown != "1":
            raise RuntimeError("Pluto TX active; refusing takeover")
        keys = ("sample_rate", "rx_lo", "tx_lo", "rx_rf_bandwidth", "tx_rf_bandwidth",
                "gain_control_mode_chan0", "rx_hardwaregain_chan0", "tx_hardwaregain_chan0")
        original = {k: getattr(pluto, k) for k in keys}
        report["saved_pluto"] = original
        report["saved_pluto_tx_powerdown"] = powerdown
        save()
        pluto.sample_rate = args.rx_rate
        pluto.rx_rf_bandwidth = int(args.rx_rate * 0.9)
        center = 2447 if args.probe_lok_stream else 2442
        report['center_hz'] = center * 1000000
        pluto.rx_lo = center * 1000000 - (250000 if args.probe_fsk and args.rx_rate == 2000000 else 1000000)
        pluto.gain_control_mode_chan0 = "manual"
        pluto.rx_hardwaregain_chan0 = 30
        pluto.rx_buffer_size = 65536
        subprocess.run([iw, "dev", io.iface, "set", "freq", str(center), "HT20"], check=True, timeout=5)
        time.sleep(0.1)
        tx = Transaction(io, args.path, report, save, args.gain_code, args.source, args.capture_dac, args.tx_pad_code, args.probe_tpg, args.probe_dac_input, args.probe_tone_phase or args.probe_dif5, args.probe_dadck or args.probe_dadck_reference, args.native_dac_clock4)
        # Control capture before any Realtek TX setup.
        report["off_before"] = spectrum(pluto.rx(), int(pluto.sample_rate))
        if args.probe_iq_if:
            from lok_modulation import capture
            report['iq_if_modulation'] = capture(tx, pluto, offset_source='iqc_if', payload_file=args.iq_json)
            pluto.rx_destroy_buffer()
            pluto.rx_buffer_size = 65536
            report['off_after'] = spectrum(pluto.rx(), int(pluto.sample_rate))
            report['status'] = 'iq_if_envelope_probe_complete'
            return
        if args.probe_dif5:
            from dac_phase_probe import run_dif5
            run_dif5(tx, pluto, save, report)
            return
        if args.probe_dac_phases:
            from dac_phase_probe import run as probe_dac_phases
            probe_dac_phases(tx, pluto, save, report)
            return
        if args.probe_iq_rf:
            from lok_modulation import capture
            report['iq_rf_modulation'] = capture(tx, pluto, offset_source='iqc_dc')
            pluto.rx_destroy_buffer()
            pluto.rx_buffer_size = 65536
            report['off_after'] = spectrum(pluto.rx(), int(pluto.sample_rate))
            report['status'] = 'iq_rf_level_probe_complete'
            return
        if args.probe_iq_samples:
            from iq_sample_probe import run as probe_iq_samples
            probe_iq_samples(tx, pluto, save, report, args.iq_json)
            return
        if args.probe_dds_dc:
            from dds_dc_probe import run as probe_dds_dc
            probe_dds_dc(tx, pluto, save, report)
            return
        if args.probe_dadck_reference:
            from dadck_reference import capture
            report['dadck_reference'] = capture(tx, pluto, full_range=args.dadck_range == 'full')
            pluto.rx_destroy_buffer()
            pluto.rx_buffer_size = 65536
            report['off_after'] = spectrum(pluto.rx(), int(pluto.sample_rate))
            report['status'] = 'dac_dck_reference_probe_complete_unqualified'
            return
        if args.probe_dadck:
            from lok_modulation import capture
            report['dadck_modulation'] = capture(tx, pluto, offset_source='dac_dck')
            pluto.rx_destroy_buffer()
            pluto.rx_buffer_size = 65536
            report['off_after'] = spectrum(pluto.rx(), int(pluto.sample_rate))
            report['status'] = 'dac_dck_offset_probe_complete_unqualified'
            return
        if args.probe_tone_phase:
            from tone_phase_probe import run as probe_tone_phase
            probe_tone_phase(tx, pluto, save, report)
            return
        if args.probe_iq_envelope:
            from iq_envelope_probe import run as probe_iq_envelope
            probe_iq_envelope(tx, pluto, save, report)
            return
        if args.probe_dac_input:
            from dac_input_probe import run as probe_dac_input
            probe_dac_input(tx, pluto, save, report)
            return
        if args.probe_tpg:
            from tpg_probe import run as probe_tpg
            probe_tpg(tx, pluto, save, report)
            return
        if args.verify_tone:
            from tone_validation import run as verify_tone
            verify_tone(tx, pluto, save, report)
            return
        if args.probe_dds:
            from dds_probe import run as probe_dds
            probe_dds(tx, pluto, save, report)
            return
        if args.probe_fsk:
            from fsk_probe import run as probe_fsk
            probe_fsk(tx, pluto, save, report)
            return
        if args.probe_lok_stream:
            from lok_modulation import capture
            report['lok_modulation'] = capture(tx, pluto)
            pluto.rx_destroy_buffer()
            pluto.rx_buffer_size = 65536
            report['off_after'] = spectrum(pluto.rx(), int(pluto.sample_rate))
            report['status'] = 'analog_offset_probe_complete_unqualified'
            return
        cases = [(2442, tone, None) for tone in (1, 2, 3, 1)] if args.source == "calibration" else [(2442, 0, None), (2447, 0, None), (2442, 0, None)]
        if args.probe_iqc:
            # Test both the normal and vendor NB-fallback low-bit settings.
            # The correction matrix is not assumed to be a complex multiplier.
            cases = [(2442, 1, value) for value in
                     (0x40000000, 0x20000000, 0x00000000, 0x00040000,
                      0x40000002, 0x20000002, 0x00000002, 0x00040002)]
        if args.probe_lok:
            cases = [(2442, 0, (i, q)) for i, q in
                     ((16, 16), (12, 16), (20, 16), (16, 12), (16, 20), (16, 16))]
        for frequency, tone, coefficient in cases:
            try:
                if args.source == "lo":
                    subprocess.run([iw, "dev", io.iface, "set", "freq", str(frequency), "HT20"], check=True, timeout=5)
                tx.setup()
                if args.disable_lo_injection:
                    tx.field('rf', args.path, 0x58, 2, 0)
                if coefficient is not None and args.probe_lok:
                    i, q = coefficient
                    tx.field('rf', args.path, 0xDF, 4, 1)
                    tx.field('rf', args.path, 0x58, 0xFFC00, (i << 5) | q)
                elif coefficient is not None:
                    tx.field('bb', 0, 0x8138 + (args.path << 8), FULL, coefficient)
                    tx.field('bb', 0, 0x8124 + (args.path << 8), 0x100, 0)
                tx.start(tone)
                if args.rf_mode_gain is not None:
                    # RF0[15:4] is the manual gain portion of RR_MOD_IQK.
                    # Keep RF0's mode/path bits; units and output power unknown.
                    tx.field('rf', args.path, 0, 0xFFF0, args.rf_mode_gain)
                time.sleep(0.005)
                pluto.rx_destroy_buffer()
                samples = pluto.rx()
                report["tone_tests"].append({"tone_index": tone, "rtl_center_mhz": frequency,
                    "txiqc": hex(coefficient) if coefficient is not None and args.probe_iqc else None,
                    "lok_coarse_iq": coefficient if args.probe_lok else None,
                    # Hypothesis from the debug-tap period and common IQK
                    # quarter-MHz indexing; verify motion on independent RF.
                    "expected_calibration_offset_hz_hypothesis": tone * 250000 if args.source == 'calibration' else None,
                    "pluto_rx_lo": int(pluto.rx_lo), "spectrum": spectrum(samples, int(pluto.sample_rate),
                        frequency * 1000000 - int(pluto.rx_lo) + (tone * 250000 if args.source == 'calibration' else 0)),
                    "readback": {"rf_mode": hex(io.read(("rf", args.path, 0))),
                                 "tone": hex(io.read(("bb", 0, 0x802C))),
                                 "rf_channel": hex(io.read(("rf", args.path, 0x18))),
                                 "rf_channel_v1": hex(io.read(("rf", args.path, 0x10018))),
                                 "rf_lok": hex(io.read(("rf", args.path, 0x58))),
                                 "afe_mode_path0": hex(io.read(("bb", 0, 0x2A20))),
                                 "afe_mode_path1": hex(io.read(("bb", 0, 0x2B20))),
                                 "control": hex(io.read(("bb", 0, 0x8034)))}})
                if args.capture_dac:
                    report['tone_tests'][-1]['tx_dac_debug'] = tx.inspect_dac()
                save()
            finally:
                tx.stop()
                if args.source == "lo":
                    tx.restore()
            time.sleep(0.02)
        # No assumed tone-index/Hz mapping: preserve observations for analysis.
        pluto.rx_destroy_buffer()
        report["off_after"] = spectrum(pluto.rx(), int(pluto.sample_rate))
        report["status"] = "tone_probe_complete_unqualified"
    except BaseException as error:
        report["exception"] = f"{type(error).__name__}: {error}"
        raise
    finally:
        signal.alarm(0)
        signal.signal(signal.SIGTERM, signal.SIG_IGN)
        signal.signal(signal.SIGINT, signal.SIG_IGN)
        cleanup = []
        if tx is not None:
            try:
                tx.restore()
            except Exception as error:
                cleanup.append(f"RTL restore/report: {error}")
        if pluto is not None and original is not None:
            actions = [("RX buffer", pluto.rx_destroy_buffer),
                       ("TX off", lambda: setattr(pluto._ctrl.find_channel("altvoltage1", True).attrs["powerdown"], "value", "1"))]
            # Gain restores while manual, then restore the original gain mode.
            for key in keys:
                if key != "gain_control_mode_chan0":
                    actions.append((key, lambda key=key: setattr(pluto, key, original[key])))
            actions.append(("gain mode", lambda: setattr(pluto, "gain_control_mode_chan0", original["gain_control_mode_chan0"])))
            for label, action in actions:
                try:
                    action()
                except Exception as error:
                    cleanup.append(f"{label}: {error}")
            try:
                report["restored_pluto"] = {k: getattr(pluto, k) for k in keys}
                report["final_pluto_tx_powerdown"] = pluto._ctrl.find_channel("altvoltage1", True).attrs["powerdown"].value
            except Exception as error:
                cleanup.append(f"Pluto readback: {error}")
        if original_frequency is not None:
            try:
                subprocess.run([iw, "dev", io.iface, "set", "freq", original_frequency, "HT20"], check=True, timeout=5)
            except Exception as error:
                cleanup.append(f"channel: {error}")
        report["cleanup_errors"] = cleanup
        save()
        for sig, handler in handlers.items():
            signal.signal(sig, handler)
        if lock is not None:
            lock.close()
    print(json.dumps({key: report.get(key) for key in
                      ("status", "exception", "rtl_cleanup_errors", "rtl_restore_mismatches", "cleanup_errors")}, indent=2))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--run-rf-test", action="store_true")
    parser.add_argument("--path", type=int, choices=(0, 1), default=0)
    parser.add_argument("--source", choices=("calibration", "lo"), default="calibration")
    parser.add_argument("--gain-code", type=int, choices=(0, 8, 15), default=0)
    parser.add_argument("--rx-rate", type=int, choices=(2000000, 4000000, 20000000), default=4000000)
    parser.add_argument("--report", type=Path)
    parser.add_argument("--capture-dac", action="store_true", help="Inspect TX-DAC debug tap during the bounded RF test")
    parser.add_argument("--probe-iqc", action="store_true", help="Test static TXIQC values against the calibration tone")
    parser.add_argument("--probe-lok", action="store_true", help="Test LO-offset I/Q controls against the LO carrier")
    parser.add_argument("--disable-lo-injection", action="store_true", help="Test LO-offset controls with direct LO injection off")
    parser.add_argument("--probe-lok-stream", action="store_true", help="Coherently measure independent analog I/Q offset changes")
    parser.add_argument("--rf-mode-gain", type=int, choices=(15,), help="Explicit manual RF0 gain-index hypothesis test")
    parser.add_argument("--verify-tone", action="store_true", help="Repeated RF selector-motion and off-control qualification")
    parser.add_argument("--probe-dds", action="store_true", help="Test live DDS frequency/stop controls and possible DC hold")
    parser.add_argument("--probe-tpg", action="store_true", help="Internal DAC-tap source experiment with RF mode held in standby")
    parser.add_argument("--probe-dac-input", action="store_true", help="Internal ITQT and DACK source-field experiment with RF mode held in standby")
    parser.add_argument("--probe-iq-envelope", action="store_true", help="Internal signed IQC experiment with the original Q tone muted")
    parser.add_argument("--probe-tone-phase", action="store_true", help="Internal test of phase/source hypotheses adjacent to the known tone controls")
    parser.add_argument("--probe-dadck", action="store_true", help="Coherent RF test of the native seven-bit DAC DC-correction fields")
    parser.add_argument("--probe-dadck-reference", action="store_true", help="DAC DC-correction RF test with a continuous phase-reference pilot")
    parser.add_argument("--dadck-range", choices=('local', 'full'), default='local', help="Seven-bit codebook for --probe-dadck-reference")
    parser.add_argument("--probe-dds-dc", action="store_true", help="Standby DAC-tap DDS-wrap/DC hypothesis at multiple capture rates")
    parser.add_argument("--probe-iq-samples", action="store_true", help="Standby signed I/Q sample writes through DDS wrap plus IQC")
    parser.add_argument("--iq-json", help="JSON pairs: --probe-iq-samples accepts 1..32 in [-1024,1024]; --probe-iq-if accepts 1..16 in [-512,512]")
    parser.add_argument("--probe-iq-rf", action="store_true", help="Bounded RF test of DDS640 plus signed I/Q sample fields")
    parser.add_argument("--probe-dac-phases", action="store_true", help="Standby packed DAC phases and native DAC-clock comparison")
    parser.add_argument("--native-dac-clock4", action="store_true", help="Explicit native DACK DAC-clock setting at the selected path's 2aa0 clock word")
    parser.add_argument("--probe-dif5", action="store_true", help="Standby packed-phase test of the adjacent IQC-like 8030 control word")
    parser.add_argument("--probe-iq-if", action="store_true", help="Bounded complex-envelope RF test at +250 kHz IF, with an unavoidable spectral image")
    parser.add_argument("--probe-fsk", action="store_true", help="Transmit and independently decode a bounded DDS symbol sequence")
    parser.add_argument("--tx-pad-code", type=int, choices=(0, 1, 2), default=0, help="Bounded RF11 analog TX-pad gain hypothesis (uncalibrated)")
    args = parser.parse_args()
    if not args.run_rf_test:
        plan = setup_plan(args.path, args.gain_code, args.source)
        if args.tx_pad_code:
            plan.append(('rf', args.path, 0x11, 0x1F, args.tx_pad_code))
        print(json.dumps({"hardware_access": False, "candidate_setup": plan,
                          "probe_options": vars(args) | {'report': str(args.report)}}, indent=2))
        return
    if args.report is None:
        parser.error("--report is required for RF tests")
    if args.report.exists():
        parser.error("Use a fresh --report path; previous RF evidence must be preserved")
    if sum((args.verify_tone, args.probe_dds, args.probe_fsk, args.probe_iqc, args.probe_lok, args.probe_lok_stream, args.probe_tpg, args.probe_dac_input, args.probe_iq_envelope, args.probe_tone_phase, args.probe_dadck, args.probe_dadck_reference, args.probe_dds_dc, args.probe_iq_samples, args.probe_iq_rf, args.probe_dac_phases, args.probe_dif5, args.probe_iq_if)) > 1:
        parser.error("Choose one probe mode per run")
    if args.tx_pad_code and args.source != 'calibration':
        parser.error("--tx-pad-code is only for calibration-source experiments")
    if args.probe_iqc and (not args.capture_dac or args.source != 'calibration'):
        parser.error("--probe-iqc requires --capture-dac and --source calibration")
    if args.verify_tone and (args.source != 'calibration' or args.probe_iqc or args.probe_lok or args.probe_lok_stream):
        parser.error("--verify-tone requires calibration and cannot combine with other probe modes")
    if args.probe_dds and (args.source != 'calibration' or not args.capture_dac or args.verify_tone):
        parser.error("--probe-dds requires calibration --capture-dac without --verify-tone")
    if args.probe_tpg and (args.source != 'calibration' or not args.capture_dac or args.path != 1 or args.tx_pad_code):
        parser.error("--probe-tpg requires calibration --capture-dac --path 1 and no TX-pad override")
    if args.probe_dac_input and (args.source != 'calibration' or not args.capture_dac or args.path != 1 or args.tx_pad_code):
        parser.error("--probe-dac-input requires calibration --capture-dac --path 1 and no TX-pad override")
    if args.probe_iq_envelope and (args.source != 'calibration' or not args.capture_dac or args.path != 1 or args.tx_pad_code):
        parser.error("--probe-iq-envelope requires calibration --capture-dac --path 1 and no TX-pad override")
    if args.probe_tone_phase and (args.source != 'calibration' or not args.capture_dac or args.path != 1 or args.tx_pad_code):
        parser.error("--probe-tone-phase requires calibration --capture-dac --path 1 and no TX-pad override")
    if (args.probe_dadck or args.probe_dadck_reference) and (args.source != 'calibration' or args.path != 1 or args.rx_rate != 4000000 or args.tx_pad_code):
        parser.error("DAC DC-correction probes require calibration --path 1 --rx-rate 4000000 and no TX-pad override")
    if args.dadck_range != 'local' and not args.probe_dadck_reference:
        parser.error('--dadck-range full requires --probe-dadck-reference')
    if args.probe_dds_dc and (args.source != 'calibration' or not args.capture_dac or args.path != 1 or args.tx_pad_code):
        parser.error('--probe-dds-dc requires calibration --capture-dac --path 1 and no TX-pad override')
    if args.probe_iq_samples and (args.source != 'calibration' or not args.capture_dac or args.path != 1 or args.tx_pad_code):
        parser.error('--probe-iq-samples requires calibration --capture-dac --path 1 and no TX-pad override')
    if args.iq_json and not (args.probe_iq_samples or args.probe_iq_if):
        parser.error('--iq-json requires --probe-iq-samples or --probe-iq-if')
    if args.probe_iq_rf and (args.source != 'calibration' or not args.capture_dac or args.path != 1 or args.rx_rate != 4000000 or args.tx_pad_code):
        parser.error('--probe-iq-rf requires calibration --capture-dac --path 1 --rx-rate 4000000 and no TX-pad override')
    if args.probe_dac_phases and (args.source != 'calibration' or not args.capture_dac or args.path != 1 or args.tx_pad_code):
        parser.error('--probe-dac-phases requires calibration --capture-dac --path 1 and no TX-pad override')
    if args.native_dac_clock4 and (args.source != 'calibration' or args.path != 1 or not (args.verify_tone or args.probe_iq_rf or args.probe_iq_samples)):
        parser.error('--native-dac-clock4 is limited to PATH1 calibration tone verification and signed-I/Q probes')
    if args.probe_dif5 and (args.source != 'calibration' or not args.capture_dac or args.path != 1 or args.tx_pad_code):
        parser.error('--probe-dif5 requires calibration --capture-dac --path 1 and no TX-pad override')
    if args.probe_iq_if and (args.source != 'calibration' or not args.capture_dac or args.path != 1 or args.rx_rate != 4000000 or args.tx_pad_code):
        parser.error('--probe-iq-if requires calibration --capture-dac --path 1 --rx-rate 4000000 and no TX-pad override')
    if args.probe_fsk and (args.source != 'calibration' or args.rx_rate not in (2000000, 4000000)):
        parser.error("--probe-fsk requires calibration --rx-rate 2000000 or 4000000")
    if args.rx_rate == 2000000 and not args.probe_fsk:
        parser.error("2 MS/s is only configured for --probe-fsk")
    if args.probe_lok and args.source != 'lo' and not args.capture_dac:
        parser.error("Calibration --probe-lok requires --capture-dac to verify zero DDS input")
    if args.disable_lo_injection and not args.probe_lok:
        parser.error("--disable-lo-injection requires --probe-lok")
    if args.probe_lok_stream and args.rx_rate != 4000000:
        parser.error("--probe-lok-stream requires --rx-rate 4000000")
    if os.geteuid() != 0:
        parser.error("RF tests require root and the working-driver wrapper")
    run(args)


if __name__ == "__main__":
    main()
