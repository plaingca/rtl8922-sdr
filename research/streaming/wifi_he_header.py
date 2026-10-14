#!/usr/bin/env python3
# SPDX-License-Identifier: GPL-2.0-or-later
"""Offline coherent HE-SU header verification across a native 160 MS/s capture.

No radio access. Decodes L-SIG, its repeated copy, and HE-SIG-A independently
in eight 20 MHz sections. Does not decode the HE payload or its MAC FCS.
"""
import argparse
import hashlib
import json
from pathlib import Path

import numpy as np
from scipy.signal import correlate, resample_poly

RATE = 160_000_000
CHANNEL_RATE = 20_000_000
PILOTS = np.array([11, 25, 39, 53])
PILOT_SIGNS = np.array([1, 1, 1, -1])
DATA_L = np.array([k for k in range(6, 59) if k != 32 and k not in PILOTS])
DATA_HE = np.array([k for k in range(4, 61) if k != 32 and k not in PILOTS])
LTF = np.zeros(64)
LTF[6:32] = [1, 1, -1, -1, 1, 1, -1, 1, -1, 1, 1, 1, 1, 1, 1, -1,
             -1, 1, 1, -1, 1, -1, 1, 1, 1, 1]
LTF[33:59] = [1, -1, -1, 1, 1, -1, 1, -1, 1, -1, -1, -1, -1, -1, 1,
              1, -1, -1, 1, -1, 1, -1, 1, 1, 1, 1]


def value(bits):
    return sum(int(b) << i for i, b in enumerate(bits))


def viterbi(llr):
    """Soft rate-1/2, K=7 BCC; zero initial and final states, 133/171 octal."""
    llr = np.asarray(llr).reshape(-1, 2)
    states = np.arange(64)
    previous = np.stack(((states & 31) << 1, ((states & 31) << 1) | 1), axis=1)
    registers = previous | ((states >> 5)[:, None] << 6)
    coded = np.array([[(int(r) & g).bit_count() & 1 for g in (0o133, 0o171)]
                      for r in registers.ravel()]).reshape(64, 2, 2)
    metrics = np.full(64, -np.inf)
    metrics[0] = 0
    history = []
    for pair in llr:
        scores = metrics[previous] + np.sum(coded * pair, axis=2)
        winner = scores.argmax(axis=1)
        history.append(previous[states, winner])
        metrics = scores[states, winner]
    result, state = [], 0
    for predecessors in reversed(history):
        result.append(int(state >> 5))
        state = int(predecessors[state])
    return result[::-1]


def he_crc(bits):
    """HE's four transmitted CRC bits: complemented c7..c4 of the HT CRC8."""
    register = 0xff
    for bit in bits:
        feedback = int(bit) ^ (register >> 7)
        register = ((register << 1) & 0xff) ^ (0x07 if feedback else 0)
    return [1 ^ ((register >> shift) & 1) for shift in (7, 6, 5, 4)]


def deinterleave(symbol, he=False):
    n, columns = (52, 13) if he else (48, 16)
    return np.asarray(symbol)[[(n // columns) * (k % columns) + k // columns for k in range(n)]]


def rolling(z, n):
    dtype = np.complex128 if np.iscomplexobj(z) else np.float64
    integral = np.concatenate(([0], np.cumsum(z, dtype=dtype)))
    return integral[n:] - integral[:-n]


def synchronize(samples):
    """STF autocorrelation, matched repeated L-LTF, coarse and fine CFO."""
    z = np.asarray(samples, dtype=np.complex64)
    if len(z) < 600:
        return []
    a, b = z[:-16], z[16:]
    corr = rolling(np.conj(a)*b, 48)
    power, power_b = rolling(abs(a)**2, 48), rolling(abs(b)**2, 48)
    score = abs(corr) / np.sqrt(np.maximum(power*power_b, 1e-25))
    noise = np.quantile(power, .2)
    mask = (score > .7) & (power > max(noise*4, 1e-10))
    edges = np.diff(np.pad(mask.astype(np.int8), (1, 1)))
    starts, ends = np.flatnonzero(edges == 1), np.flatnonzero(edges == -1)
    template = np.fft.ifft(np.fft.ifftshift(LTF))
    norm, out, last = np.linalg.norm(template), [], -350
    for start, end in zip(starts, ends):
        if end-start < 20 or start-last < 350:
            continue
        cfo = np.angle(corr[start:min(end, start+64)].sum()) / 16
        lo, hi = max(0, start-32), min(len(z), start+400)
        region = z[lo:hi] * np.exp(-1j*cfo*np.arange(hi-lo))
        cross = abs(correlate(region, template, mode="valid", method="direct"))
        cross /= norm * np.sqrt(np.maximum(rolling(abs(region)**2, 64), 1e-25))
        pair = cross[:-64] * cross[64:]
        if not len(pair):
            continue
        pair[:max(0, start-lo+50)] = 0
        peak = int(pair.argmax())
        if pair[peak] < .12:
            continue
        # Two samples inside the CP accommodate multipath without crossing
        # a symbol's trailing boundary. The channel estimate absorbs this shift.
        pos = lo+peak-2
        if pos < 0 or pos+448 > len(z):
            continue
        tmp = z[pos:pos+128] * np.exp(-1j*cfo*np.arange(128))
        total = cfo + np.angle(np.vdot(tmp[:64], tmp[64:]))/64
        symbols = []
        for off in (0, 64, 144, 224, 304, 384):
            v = z[pos+off:pos+off+64] * np.exp(-1j*total*np.arange(off, off+64))
            symbols.append(np.fft.fftshift(np.fft.fft(v)))
        out.append((int(pos), float(total), np.asarray(symbols), float(pair[peak])))
        last = start
    return out


def equalize(symbol, channel):
    symbol = symbol / np.where(abs(channel) > 1e-8, channel, 1)
    phase = np.angle(np.sum(symbol[PILOTS]*PILOT_SIGNS))
    return symbol * np.exp(-1j*phase)


def headers(channel):
    out = []
    for pos, cfo, z, match in synchronize(channel):
        h = np.where(LTF != 0, (z[0]+z[1])/2 * np.where(LTF != 0, LTF, 1), 1)
        eq = [equalize(v, h) for v in z[2:]]
        lsig = viterbi(deinterleave(eq[0][DATA_L].real))
        length = value(lsig[5:17])
        if (value(lsig[:4]) != 11 or sum(lsig[:18]) % 2 or lsig[4]
                or any(lsig[18:]) or length % 3 != 1):
            continue
        rlsig = viterbi(deinterleave(eq[1][DATA_L].real))
        if rlsig != lsig:
            continue
        # L-LTF covers +/-26 tones; nearest-tone extrapolation estimates the
        # four additional HE-SIG-A data tones at +/-27 and +/-28.
        h[4:6], h[59:61] = h[6], h[58]
        he_eq = [equalize(v, h) for v in z[4:6]]
        he = viterbi(np.concatenate([deinterleave(v[DATA_HE].real, he=True) for v in he_eq]))
        checks = {"format_su": he[0] == 1, "reserved_bits": he[14] == he[40] == 1,
                  "tail_zero": not any(he[46:]), "crc4_pass": he_crc(he[:42]) == he[42:46],
                  "valid_mcs": value(he[3:7]) <= 11,
                  "doppler_off": he[41] == 0}
        if not all(checks.values()):
            continue
        out.append(dict(format="HE-SU", channel_ltf_sample=pos, ltf_match=match,
                        cfo_hz=cfo*CHANNEL_RATE/(2*np.pi), lsig_bits=lsig,
                        lsig_length=length, rlsig_matches=True, he_siga_bits=he,
                        crc_received_bits=he[42:46], crc_computed_bits=he_crc(he[:42]),
                        checks=checks, bandwidth_mhz=[20, 40, 80, 160][value(he[19:21])],
                        mcs=value(he[3:7]), nsts=value(he[23:26])+1,
                        coding="LDPC" if he[33] else "BCC", stbc=bool(he[35]),
                        bss_color=value(he[8:14]), downlink=not bool(he[2]),
                        gi_ltf_code=value(he[21:23])))
    return out


def extract(z, channel_mhz, center_mhz):
    offset = (channel_mhz-center_mhz)*1e6
    if offset % 10_000_000 or len(z) % 16:
        raise ValueError("Requires a 10 MHz grid and sample count divisible by 16")
    mixed = z.copy()
    mixed.reshape(-1, 16)[:] *= np.exp(-2j*np.pi*offset/RATE*np.arange(16)).astype(np.complex64)
    return resample_poly(mixed, 1, 8).astype(np.complex64)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("capture_report", type=Path)
    parser.add_argument("--start", type=float, required=True)
    parser.add_argument("--seconds", type=float, default=.00025)
    parser.add_argument("--center-mhz", type=float, default=5250)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    report = json.loads(args.capture_report.read_text())
    trial = report["tests"][0]
    if report["rate_msps"] != 160 or report["rf_kind"] != "passive" or not trial["transport_pass"]:
        raise ValueError("Requires a transport-qualified passive 160 MS/s capture")
    if args.start < 0 or not 0 < args.seconds <= .1:
        raise ValueError("Offline analysis window must be positive and at most 100 ms")
    start, count = round(args.start*RATE), round(args.seconds*RATE)
    raw = np.fromfile(trial["prefix"], dtype=np.int8, count=2*count, offset=2*start)
    if len(raw) != 2*count:
        raise ValueError("Requested interval extends beyond saved capture")
    source_hash = hashlib.sha256(raw.tobytes()).hexdigest()
    z = raw.astype(np.float32).view(np.complex64)/128
    z -= z.mean()
    rows = []
    for offset in range(-70, 71, 20):
        channel_mhz = args.center_mhz+offset
        channel = extract(z, channel_mhz, args.center_mhz)
        candidates = headers(channel)
        control = headers(np.abs(channel).astype(np.complex64))
        rows.append(dict(center_mhz=channel_mhz, headers=candidates,
                         phase_removed_valid_headers=len(control)))
    # Require matching complete header bits at approximately the same time,
    # never select unrelated packets based solely on a common bandwidth field.
    selected = []
    for first in rows[0]["headers"]:
        matches = [first]
        for row in rows[1:]:
            match = next((h for h in row["headers"]
                          if h["he_siga_bits"] == first["he_siga_bits"]
                          and h["lsig_bits"] == first["lsig_bits"]
                          and abs(h["channel_ltf_sample"]-first["channel_ltf_sample"]) <= 16), None)
            if match is None:
                break
            matches.append(match)
        if len(matches) == 8 and first["bandwidth_mhz"] == 160:
            selected = matches
            break
    passed = len(selected) == 8 and all(r["phase_removed_valid_headers"] == 0 for r in rows)
    evidence = dict(pass_all_eight=passed, source_report=str(args.capture_report),
                    source_report_sha256=hashlib.sha256(args.capture_report.read_bytes()).hexdigest(),
                    source_capture=trial["prefix"], source_interval_sha256=source_hash,
                    source_start_sample=start, source_samples=count,
                    source_rate=RATE, source_center_mhz=args.center_mhz,
                    extractor="complex mixing; scipy resample_poly(1,8), default Kaiser FIR",
                    decoder_sha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
                    numpy_version=np.__version__, rows=rows, selected_headers=selected,
                    scope="Coherent HE-SU preamble and PHY header across contiguous 160 MHz; payload and MAC FCS not decoded")
    if selected:
        evidence["ltf_alignment_spread_us"] = (
            max(h["channel_ltf_sample"] for h in selected)-min(h["channel_ltf_sample"] for h in selected)
        ) / CHANNEL_RATE * 1e6
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(evidence, indent=2)+"\n")
    print(json.dumps(dict(pass_all_eight=passed, header_copies=len(selected), output=str(args.output))))
    if not passed:
        raise SystemExit(1)


if __name__ == "__main__":
    main()
