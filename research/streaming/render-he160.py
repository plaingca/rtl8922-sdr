#!/usr/bin/env python3
"""Render the single HE-SU transmission whose header was verified in all eight sections."""
import argparse
import hashlib
import json
from pathlib import Path

import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import numpy as np

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('report', type=Path)
parser.add_argument('--output', type=Path, required=True)
args = parser.parse_args()
r = json.loads(args.report.read_text())
assert r['pass_all_eight'] and len(r['selected_headers']) == 8
raw = np.fromfile(r['source_capture'], dtype='i1', count=2*r['source_samples'], offset=2*r['source_start_sample'])
assert hashlib.sha256(raw.tobytes()).hexdigest() == r['source_interval_sha256']
z = raw.astype('f4').view('c8')/128
rate, center = r['source_rate'], r['source_center_mhz']
h = r['selected_headers'][2]
assert h['mcs'] == 9 and not h['stbc']  # This figure's modulation label.
packet_start = round((np.median([s['channel_ltf_sample'] for s in r['selected_headers']])-192)*8)
# L-SIG defines the protected legacy-equivalent PPDU duration, not a PSDU size.
duration_us = 20+4*np.ceil((16+8*h['lsig_length']+6)/24)
view_start = max(0, packet_start-round(12e-6*rate))
view_stop = min(len(z), packet_start+round((duration_us+20)*1e-6*rate))
nfft, hop = 512, 128
window = np.hanning(nfft).astype('f4')
starts = np.arange(view_start, view_stop-nfft+1, hop)
segments = np.stack([z[a:a+nfft] for a in starts])
segments -= segments.mean(axis=1, keepdims=True)
power = abs(np.fft.fftshift(np.fft.fft(segments*window, axis=1), axes=1))**2/window.sum()**2
power_db = 10*np.log10(np.maximum(power, 1e-20))
freq = center+np.fft.fftshift(np.fft.fftfreq(nfft, 1/rate))/1e6
times = (starts+nfft/2-packet_start)/rate*1e6
payload = (times >= 52) & (times < 64)
assert payload.any()
spectrum = 10*np.log10(np.maximum(power[payload].mean(axis=0), 1e-20))
noise_rows = times < -3
noise = 10*np.log10(np.maximum(power[noise_rows].mean(axis=0), 1e-20))
vmin, vmax = np.percentile(power_db[noise_rows], 20), np.percentile(power_db[payload], 97)
plt.rcParams.update({'figure.facecolor':'#080e1b','axes.facecolor':'#101b2e','text.color':'#ecf2fb',
    'axes.labelcolor':'#b1c1d6','axes.edgecolor':'#32425b','xtick.color':'#b1c1d6','ytick.color':'#b1c1d6','font.size':11})
fig = plt.figure(figsize=(14.5, 9.2), layout='constrained')
grid = fig.add_gridspec(3, 2, height_ratios=[1.2, 3.3, .65], width_ratios=[30, 1])
ax = fig.add_subplot(grid[0, 0]); wf = fig.add_subplot(grid[1, 0], sharex=ax)
ax.plot(freq, spectrum, lw=1.1, color='#62d5ed', label='52–64 µs after packet start')
ax.plot(freq, noise, lw=.7, color='#91a6c2', alpha=.65, label='Before packet')
ax.set_ylabel('Power (dBFS/bin)'); ax.grid(alpha=.12); ax.tick_params(labelbottom=False)
ax.legend(loc='lower left', facecolor='#101b2e', edgecolor='#32425b', fontsize=9)
im = wf.pcolormesh(freq, times, power_db, shading='nearest', cmap='magma', vmin=vmin, vmax=vmax)
wf.set(xlim=(center-80, center+80), ylim=(times[-1], times[0]), xlabel='RF frequency (MHz; nominal tuning)', ylabel='Time from packet start (µs; estimated)')
for boundary in np.arange(center-60, center+80, 20):
    wf.axvline(boundary, color='white', alpha=.2, lw=.6)
wf.axhline(32, color='#62d5ed', alpha=.65, lw=.6)
wf.text(center+78, 30, 'L-SIG + RL-SIG + HE-SIG-A', color='#d2e4f7', ha='right', fontsize=9)
bar = fig.add_subplot(grid[1, 1]); fig.colorbar(im, cax=bar, label='dBFS/bin')
checks = fig.add_subplot(grid[2, 0], sharex=ax)
checks.set(xlim=(center-80, center+80), ylim=(0, 1)); checks.axis('off')
for row in r['rows']:
    f = row['center_mhz']
    checks.add_patch(plt.Rectangle((f-9.5, .18), 19, .65, facecolor='#14382d', edgecolor='#7ce5aa', lw=1))
    checks.text(f, .52, f'{f:g} MHz\nCRC PASS', color='#7ce5aa', ha='center', va='center', fontsize=10)
fig.suptitle('A 160 MHz Wi-Fi 6 transmission — captured at 160 MS/s', fontsize=21, weight='bold')
ax.set_title(f"HE-SU · MCS {h['mcs']} (256-QAM, rate 5/6) · {h['nsts']} spatial streams · {h['coding']} · BSS color {h['bss_color']}", fontsize=12, pad=14)
fig.supxlabel('Identical CRC-checked PHY headers in all 8 sections. Two-stream payload / MAC FCS not decoded.\n512-point Hann FFT · 0.8 µs hop · DC removed per FFT · power is not antenna-calibrated', fontsize=10, color='#91a6c2')
args.output.parent.mkdir(parents=True, exist_ok=True)
fig.savefig(args.output, dpi=160)
print(args.output)
