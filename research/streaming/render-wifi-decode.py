#!/usr/bin/env python3
"""Plot the equalized payload symbols of a CRC-verified ambient Wi-Fi frame."""
import argparse
import json
from pathlib import Path
import zlib

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument("report", type=Path)
parser.add_argument("control", type=Path)
parser.add_argument("--output", type=Path, required=True)
args = parser.parse_args()
report = json.loads(args.report.read_text())
control = json.loads(args.control.read_text())
frame = report["selected_frame"]
stem = Path("build-wifi") / args.report.stem
data = Path(str(stem)+".bin").read_bytes()
symbols = np.load(str(stem)+"-symbols.npy").ravel()
assert frame["crc_pass"] and zlib.crc32(data[:-4]) == int.from_bytes(data[-4:], "little")
assert report["source_interval_sha256"] == control["source_interval_sha256"]
assert control["phase_removed"] and control["crc_pass_count"] == 0
assert frame["metadata"]["encoding"] == 4  # 16-QAM, rate 1/2, 24 Mb/s
assert frame["kind"] == "beacon"
assert len(symbols) == report["selected_ofdm_symbols"]*48
fc = int.from_bytes(data[:2], "little")
sequence = int.from_bytes(data[22:24], "little") >> 4
interval = int.from_bytes(data[32:34], "little")
assert data[4:10] == bytes.fromhex("ffffffffffff")
pos, ies = 36, []
while pos < len(data)-4:
    kind, length = data[pos:pos+2]
    assert pos+2+length <= len(data)-4
    ies.append(kind)
    pos += 2+length
assert pos == len(data)-4
plt.rcParams.update({"figure.facecolor":"#080e1b", "axes.facecolor":"#101b2e",
    "text.color":"#ecf2fb", "axes.labelcolor":"#b1c1d6", "axes.edgecolor":"#32425b",
    "xtick.color":"#b1c1d6", "ytick.color":"#b1c1d6", "font.size":12})
fig = plt.figure(figsize=(13.5, 7), layout="constrained")
grid = fig.add_gridspec(1, 2, width_ratios=[1.1, 1])
ax = fig.add_subplot(grid[0, 0])
ax.scatter(symbols.real, symbols.imag, s=9, c="#62d5ed", alpha=.52, linewidths=0,
           label=f"{len(symbols):,} recovered payload subcarriers")
points = np.array([-3, -1, 1, 3])/np.sqrt(10)
x, y = np.meshgrid(points, points)
ax.scatter(x.ravel(), y.ravel(), s=70, facecolors="none", edgecolors="#ffba64",
           linewidths=1.4, label="Ideal 16-QAM")
ax.set(xlim=(-1.65, 1.65), ylim=(-1.65, 1.65), xlabel="In-phase (I)", ylabel="Quadrature (Q)")
ax.set_aspect("equal")
ax.grid(alpha=.12)
ax.set_title("Equalized symbols from the decoded beacon", fontsize=13, pad=15)
ax.legend(loc="lower center", fontsize=9, facecolor="#101b2e", edgecolor="#32425b")
text = fig.add_subplot(grid[0, 1]); text.axis("off")
text.text(.02, .94, "BEACON DECODED", color="#7ce5aa", weight="bold", fontsize=23)
rows = [("RF channel", "44 · 5220 MHz"), ("Original capture", "160 MS/s · signed 8-bit I + Q"),
        ("Software channelization", "20 MS/s complex · decimation ×8"),
        ("PHY", "Legacy OFDM · 16-QAM · 24 Mb/s"),
        ("Frame length", f"{len(data)} bytes including received FCS"),
        ("Sequence / beacon interval", f"{sequence} / {interval*1.024:g} ms"),
        ("MAC structure", f"Broadcast · {len(ies)} valid information elements"),
        ("Decoder SNR estimate", f"{frame['metadata']['snr']:.1f} dB")]
for i, (key, value) in enumerate(rows):
    yy = .83-i*.073
    text.text(.02, yy, key, color="#91a6c2", fontsize=10)
    text.text(.02, yy-.032, value, fontsize=12)
text.text(.02, .19, f"Received FCS     0x{frame['fcs_received']}\nComputed CRC32   0x{frame['fcs_computed']}",
          family="monospace", fontsize=16, color="#7ce5aa", linespacing=1.7)
text.text(.02, .055, "Phase removed: 0 valid frames from the same samples.\nSSID and transmitter address omitted from this figure.",
          color="#91a6c2", fontsize=10, linespacing=1.5)
fig.suptitle("A real Wi-Fi frame recovered from the 160 MS/s I/Q", fontsize=21, weight="bold")
args.output.parent.mkdir(parents=True, exist_ok=True)
fig.savefig(args.output, dpi=160)
print(args.output)
