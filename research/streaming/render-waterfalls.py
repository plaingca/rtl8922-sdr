#!/usr/bin/env python3
"""Render actual bounded native-i8 capture prefixes; never opens hardware."""

import argparse
import hashlib
import json
from pathlib import Path

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument("reports", nargs="+", type=Path)
parser.add_argument("--output-dir", type=Path, required=True)
args = parser.parse_args()
args.output_dir.mkdir(parents=True, exist_ok=True)
captures = []
nfft, average = 4096, 64
window = np.hanning(nfft).astype("f4")
for path in args.reports:
    report = json.loads(path.read_text())
    if report["rate_msps"] != 160 or report.get("rf_kind") != "passive":
        raise ValueError("This gallery expects passive 160 MS/s captures")
    trial = report["tests"][0]
    if not trial["transport_pass"]:
        raise RuntimeError(f"Rejected capture: {path}")
    rate = report["rate_msps"] * 1000000
    center = {40: 2422, 80: 5210, 160: 5250}[report["rate_msps"]]
    raw_path = Path(trial["prefix"])
    raw = np.memmap(raw_path, dtype="i1", mode="r")
    row_bytes = nfft * average * 2
    rows = len(raw) // row_bytes
    power = np.empty((rows, nfft // 2), dtype="f4")
    for row in range(rows):
        z = raw[row*row_bytes:(row+1)*row_bytes].astype("f4").view("c8") / 128
        z = z.reshape(average, nfft)
        z -= z.mean(axis=1, keepdims=True)
        fft = np.fft.fftshift(np.fft.fft(z * window, axis=1), axes=1)
        mean = (np.abs(fft)**2).mean(axis=0) / window.sum()**2
        power[row] = mean.reshape(-1, 2).mean(axis=1)
    db = 10 * np.log10(np.maximum(power, 1e-20))
    freq = center + np.fft.fftshift(np.fft.fftfreq(nfft, 1/rate)).reshape(-1, 2).mean(axis=1)/1e6
    duration = rows * average * nfft / rate
    captures.append(dict(path=path, report=report, trial=trial, center=center,
                         rate=rate, raw_path=raw_path, raw_bytes=len(raw),
                         power=power, db=db, freq=freq, duration=duration))
    print(f"Analyzed {path.name}: {rows} rows, {duration:.6f} seconds", flush=True)

valid = np.concatenate([c["db"][:, np.abs(c["freq"]-c["center"]) > .25].ravel() for c in captures])
vmin = float(np.percentile(valid, 5))
vmax = max(float(np.percentile(valid, 99.95)) + 1, vmin + 18)
plt.rcParams.update({
    "figure.facecolor": "#080e1b", "axes.facecolor": "#0c1424",
    "text.color": "#ecf2fb", "axes.labelcolor": "#aebdd0", "axes.edgecolor": "#32425b",
    "xtick.color": "#aebdd0", "ytick.color": "#aebdd0", "font.family": "DejaVu Sans",
    "font.size": 11, "savefig.facecolor": "#080e1b",
})
outputs = []
for i, c in enumerate(captures, 1):
    fig = plt.figure(figsize=(15, 8.4), layout="constrained")
    grid = fig.add_gridspec(2, 2, height_ratios=[1, 3], width_ratios=[35, 1])
    spectrum = fig.add_subplot(grid[0, 0])
    waterfall = fig.add_subplot(grid[1, 0], sharex=spectrum)
    colorbar = fig.add_subplot(grid[1, 1])
    spectrum.plot(c["freq"], 10*np.log10(np.maximum(np.quantile(c["power"], .95, axis=0), 1e-20)),
                  color="#ffb85c", lw=.8, label="95th percentile")
    spectrum.plot(c["freq"], 10*np.log10(np.maximum(np.median(c["power"], axis=0), 1e-20)),
                  color="#62d5ed", lw=.8, label="Median")
    spectrum.set_ylabel("Power (dBFS/bin)")
    spectrum.set_ylim(vmin-3, vmax+4)
    spectrum.grid(alpha=.12)
    spectrum.legend(loc="upper right", facecolor="#101b2e", edgecolor="#32425b", fontsize=9)
    spectrum.tick_params(labelbottom=False)
    left, right = c["center"]-c["rate"]/2e6, c["center"]+c["rate"]/2e6
    im = waterfall.imshow(c["db"], extent=(left, right, c["duration"], 0),
                          origin="upper", aspect="auto", interpolation="nearest",
                          cmap="magma", vmin=vmin, vmax=vmax)
    waterfall.set_xlim(left, right)
    waterfall.set_xticks(np.arange(left, right+1, 20))
    waterfall.set_xlabel("RF frequency (MHz, nominal tuning)")
    waterfall.set_ylabel("Time from start (s)")
    fig.colorbar(im, cax=colorbar, label="dBFS / FFT bin")
    for ax in (spectrum, waterfall):
        ax.axvline(c["center"], color="#b8c7d9", lw=.5, alpha=.3, ls="--")
    fig.suptitle(f"160 MHz of real spectrum  /  RTL8922AE\n"
                 f"Snapshot {i}  ·  {left:.0f}–{right:.0f} MHz  ·  {c['duration']:.3f} s  ·  Pluto TX off",
                 fontsize=18, fontweight="bold")
    waterfall.set_title("4096-point Hann FFT · 64 spectra averaged per row · DC removed per FFT · shared color scale",
                        fontsize=9, color="#92a5bd", pad=9)
    output = args.output_dir / f"rtl8922-160mhz-waterfall-{i}.png"
    fig.savefig(output, dpi=160)
    plt.close(fig)
    outputs.append({
        "image": str(output.resolve()), "capture_report": str(c["path"].resolve()),
        "capture_started_utc": c["report"]["started_utc"],
        "raw_prefix": str(c["raw_path"]), "raw_bytes": c["raw_bytes"],
        "raw_sha256": hashlib.sha256(c["raw_path"].read_bytes()).hexdigest(),
        "displayed_seconds": c["duration"], "transport_pass": c["trial"]["transport_pass"],
        "restored": c["report"]["original_pluto"] == c["report"]["restored_pluto"]
        and c["report"]["tx_powerdown"] == "1" and not c["report"]["cleanup_errors"],
    })
manifest = {"scope": "Real passive RTL8922AE captures; nominal frequency axis, uncalibrated RF power; separate snapshots",
            "fft_size": nfft, "spectra_per_row": average, "frequency_bins_averaged": 2,
            "dc_removal": "Per-FFT complex mean subtraction", "color_limits_dbfs": [vmin, vmax],
            "images": outputs}
(args.output_dir / "manifest.json").write_text(json.dumps(manifest, indent=2)+"\n")
print(json.dumps(manifest, indent=2))
