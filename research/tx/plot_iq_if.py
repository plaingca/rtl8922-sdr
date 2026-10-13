#!/usr/bin/env python3
"""Plot small decoded-point reports, never raw captures or hardware."""

import argparse
import json
from pathlib import Path

import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import numpy as np


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--reports', type=Path, nargs='+', required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    if args.output.exists():
        parser.error('Use a fresh output path')
    plt.rcParams.update({'font.size': 10, 'axes.spines.top': False, 'axes.spines.right': False})
    fig, axes = plt.subplots(1, len(args.reports), figsize=(4*len(args.reports), 5.2), squeeze=False)
    for ax, path in zip(axes[0], args.reports):
        report = json.loads(path.read_text())
        expected = np.asarray(report['payload_requested_iq_codes'])/1024
        decoded = np.asarray(report['payload_reconstructed_iq_codes'])/1024
        for a, b in zip(expected, decoded):
            ax.plot([a[0], b[0]], [a[1], b[1]], color='#8b98aa', lw=1)
        ax.scatter(*expected.T, s=60, marker='o', facecolors='none', edgecolors='#36465e', label='Requested')
        ax.scatter(*decoded.T, s=35, marker='x', color='#e56a28', linewidths=1.8, label='From Pluto RF')
        run = path.name.split('path1-')[1].split('-')[0].upper()
        ax.set_title(f"Capture {run}: {report['heldout_snr_db']:.1f} dB, {report['heldout_evm_percent']:.2f}% EVM")
        ax.set(xlabel='I / 1024', ylabel='Q / 1024', xlim=(-.54, .54), ylim=(-.54, .54), aspect='equal')
        ax.grid(alpha=.2)
    fig.suptitle('RTL8922: unseen complex levels recovered over the air', fontsize=14)
    handles, labels = axes[0, 0].get_legend_handles_labels()
    fig.legend(handles, labels, loc='lower center', bbox_to_anchor=(.5, .06), ncol=2, frameon=False)
    fig.text(.5, .025, '40 ms holds; known-reference and affine I/Q calibration; strong complementary image remains',
             ha='center', fontsize=9, color='#4a5667')
    fig.tight_layout(rect=(0, .15, 1, .94))
    fig.savefig(args.output, dpi=180)


if __name__ == '__main__':
    main()
