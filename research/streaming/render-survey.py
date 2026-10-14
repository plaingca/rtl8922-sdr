#!/usr/bin/env python3
"""Offline sequential survey mosaic with explicit gaps and nominal RF axes."""

import argparse
import hashlib
import json
from pathlib import Path

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument("report", type=Path)
parser.add_argument("--output-dir", type=Path, required=True)
args = parser.parse_args()
report = json.loads(args.report.read_text())
assert report["returncode"] == 0 and all(t["passed"] for t in report["tests"])
args.output_dir.mkdir(parents=True, exist_ok=True)
rate, nfft, average, step = 20000000, 2048, 16, .25
duration = (4000000 // (nfft*average)) * nfft*average / rate
rows = 4000000 // (nfft*average)
window = np.hanning(nfft).astype("f4")
groups = [
    ("2.4 GHz and adjacent recovered windows", 2312, 2515, [(2312,2382),(2412,2484),(2500,2515)]),
    ("5 GHz", 4900, 5955, [(4900,5955)]),
    ("6 GHz  ·  RF unvalidated above 6.000 GHz", 5955, 7115, [(5955,7115)]),
]
bands = []
for title, low, high, ranges in groups:
    edges = np.arange(low, high+step/2, step)
    frequencies = (edges[:-1]+edges[1:])/2
    valid = np.zeros(len(frequencies), dtype=bool)
    for a,b in ranges:
        valid |= (frequencies>=a)&(frequencies<=b)
    bands.append(dict(title=title, low=low, high=high, ranges=ranges,
                      edges=edges, freq=frequencies, valid=valid,
                      numerator=np.zeros((rows,len(frequencies))), denominator=np.zeros(len(frequencies))))
tiles = []
for number,t in enumerate(report["tests"],1):
    raw_path = Path(t["raw"])
    raw = np.fromfile(raw_path, dtype="i1")
    assert len(raw) == 8000000 and t["rf_center_hz"] == t["center_mhz"]*1e6
    z = raw[:rows*nfft*average*2].astype("f4").view("c8").reshape(rows*average,nfft)/128
    z -= z.mean(axis=1,keepdims=True)
    fft = np.fft.fftshift(np.fft.fft(z*window,axis=1),axes=1)
    power = (np.abs(fft)**2).reshape(rows,average,nfft).mean(axis=1)/window.sum()**2
    freq = t["center_mhz"]+np.fft.fftshift(np.fft.fftfreq(nfft,1/rate))/1e6
    # Discard outer 2 MHz; taper overlap shoulders from 6 to 8 MHz.
    weight = np.clip((8-np.abs(freq-t["center_mhz"]))/2,0,1)
    for band in bands:
        keep = (freq>=band["low"])&(freq<band["high"])&(weight>0)
        index = np.floor((freq[keep]-band["low"])/step).astype(int)
        if not len(index):
            continue
        w = weight[keep]
        count = len(band["freq"])
        band["denominator"] += np.bincount(index,weights=w,minlength=count)
        for row in range(rows):
            band["numerator"][row] += np.bincount(index,weights=w*power[row,keep],minlength=count)
    tiles.append({"center_mhz":t["center_mhz"],"started_unix_ns":t["started_unix_ns"],
                  "raw":str(raw_path),"raw_sha256":hashlib.sha256(raw).hexdigest(),"passed":t["passed"]})
    if number%20==0:
        print(f"Processed {number}/{len(report['tests'])} tiles",flush=True)

for band in bands:
    good = band["valid"]&(band["denominator"]>0)
    band["db"] = np.full_like(band["numerator"],np.nan)
    band["db"][:,good] = 10*np.log10(np.maximum(band["numerator"][:,good]/band["denominator"][good],1e-20))
    band["covered"] = good
    assert np.all(good[band["valid"]]), "Missing supported survey bins"
values = np.concatenate([b["db"][:,b["covered"]].ravel() for b in bands])
vmin, vmax = float(np.percentile(values,5)), float(np.percentile(values,99.9))+1
vmax = max(vmax,vmin+22)
plt.rcParams.update({"figure.facecolor":"#080e1b","axes.facecolor":"#0c1424",
                     "text.color":"#edf2fa","axes.labelcolor":"#aebdd0","axes.edgecolor":"#32425b",
                     "xtick.color":"#aebdd0","ytick.color":"#aebdd0","font.family":"DejaVu Sans",
                     "font.size":10,"savefig.facecolor":"#080e1b"})
cmap=plt.get_cmap("magma").copy()
cmap.set_bad("#202b3b")

def panel(fig, grid, band, show_legend=False):
    spectrum=fig.add_subplot(grid[0])
    waterfall=fig.add_subplot(grid[1],sharex=spectrum)
    good=band["covered"]
    med=np.full(len(good),np.nan)
    peak=med.copy()
    med[good]=np.median(band["db"][:,good],axis=0)
    peak[good]=np.quantile(band["db"][:,good],.95,axis=0)
    spectrum.plot(band["freq"]/1000,peak,color="#ffbb66",lw=.9,label="95th percentile")
    spectrum.plot(band["freq"]/1000,med,color="#66d7ed",lw=.8,label="Median")
    spectrum.set_ylim(vmin-3,vmax+5)
    spectrum.set_ylabel("dBFS/bin")
    spectrum.grid(alpha=.12)
    spectrum.set_title(band["title"],loc="left",fontweight="bold",fontsize=13,pad=8)
    spectrum.tick_params(labelbottom=False)
    if show_legend:
        spectrum.legend(loc="upper right",facecolor="#101b2e",edgecolor="#32425b",fontsize=9)
    image=waterfall.imshow(band["db"],extent=(band["low"]/1000,band["high"]/1000,duration,0),
                           origin="upper",aspect="auto",interpolation="nearest",cmap=cmap,vmin=vmin,vmax=vmax)
    waterfall.set_ylabel("Tile-local time (s)")
    waterfall.set_xlabel("Nominal RF frequency (GHz)")
    waterfall.set_xlim(band["low"]/1000,band["high"]/1000)
    if band["low"]==2312:
        for a,b in ((2382,2412),(2484,2500)):
            for ax in (spectrum,waterfall):
                ax.axvspan(a/1000,b/1000,facecolor="#253144",alpha=.7,hatch="///",edgecolor="#445167",lw=0)
            waterfall.text((a+b)/2000,duration/2,"GAP",rotation=90,ha="center",va="center",color="#b4c3d5",fontsize=9)
    return image

fig=plt.figure(figsize=(19,13),layout="constrained")
grid=fig.add_gridspec(6,2,height_ratios=[1,2.5,1,2.5,1,2.5],width_ratios=[45,1],hspace=.12)
for i,band in enumerate(bands):
    im=panel(fig,[grid[2*i,0],grid[2*i+1,0]],band,show_legend=i==0)
    fig.colorbar(im,cax=fig.add_subplot(grid[2*i+1,1]),label="dBFS / 9.77 kHz FFT bin")
fig.suptitle("RTL8922AE  /  the full tuning survey\n"
             f"{len(tiles)} overlapping 20 MHz captures · acquired sequentially · Pluto TX off",
             fontsize=19,fontweight="bold")
fig.supxlabel("0.200 s per tile · common power scale · uncalibrated gain · overlaps blended; outer 2 MHz discarded\n"
               "Separate frequency axes: no coverage between 2.515 and 4.900 GHz; hatched low-band gaps are unsupported",
               fontsize=10,color="#95a8c1")
main=args.output_dir/"rtl8922-full-span-survey.png"
fig.savefig(main,dpi=160)
plt.close(fig)
images=[str(main.resolve())]
for i,band in enumerate(bands,1):
    fig=plt.figure(figsize=(18,6),layout="constrained")
    grid=fig.add_gridspec(2,2,height_ratios=[1,3],width_ratios=[45,1])
    im=panel(fig,[grid[0,0],grid[1,0]],band,True)
    fig.colorbar(im,cax=fig.add_subplot(grid[1,1]),label="dBFS / 9.77 kHz FFT bin")
    fig.suptitle("Sequential capture mosaic · 0.200 s per tile · shared scale · Pluto TX off",fontsize=15,fontweight="bold")
    path=args.output_dir/f"rtl8922-survey-band-{i}.png"
    fig.savefig(path,dpi=180)
    plt.close(fig)
    images.append(str(path.resolve()))
manifest={"scope":"Sequential passive mosaic, not simultaneous coverage or calibration; RF above 6 GHz unqualified",
          "source_report":str(args.report.resolve()),"tile_count":len(tiles),"tiles":tiles,
          "sample_rate":rate,"fft_size":nfft,"spectra_averaged_per_row":average,
          "tile_displayed_seconds":duration,"mosaic_bin_mhz":step,"trusted_halfwidth_mhz":8,
          "overlap_blend":"Linear power; weights taper from 6 to 8 MHz from each center",
          "dc_removal":"Per-FFT complex mean subtraction","color_limits_dbfs":[vmin,vmax],
          "ranges_mhz":[[2312,2382],[2412,2484],[2500,2515],[4900,7115]],"images":images}
(args.output_dir/"manifest.json").write_text(json.dumps(manifest,indent=2)+"\n")
print(json.dumps({"images":images,"color_limits_dbfs":[vmin,vmax]},indent=2))
