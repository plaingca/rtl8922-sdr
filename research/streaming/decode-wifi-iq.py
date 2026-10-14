#!/usr/bin/env python3
"""Offline legacy OFDM Wi-Fi decoding of native signed-i8 RTL8922 captures.

Requires the pinned gr-ieee802-11 reference built by prepare-wifi-decoder.sh.
The reference's FCS stripping is disabled; both its residue gate and an
independent Python CRC must pass. This program never opens radio hardware.
"""
import argparse
import hashlib
import json
import time
import zlib
from pathlib import Path

import numpy as np
from scipy.signal import resample_poly
from gnuradio import gr, blocks, fft
import ieee802_11
import pmt


class Messages(gr.basic_block):
    def __init__(self):
        gr.basic_block.__init__(self, name="offline evidence", in_sig=None, out_sig=None)
        self.frames, self.symbols = [], []
        for port, handler in (("frames", self.frame), ("symbols", self.symbol)):
            self.message_port_register_in(pmt.intern(port))
            self.set_msg_handler(pmt.intern(port), handler)

    def frame(self, msg):
        meta = pmt.to_python(pmt.car(msg))
        data = bytes(pmt.to_python(pmt.cdr(msg)))
        self.frames.append((meta, data))

    def symbol(self, msg):
        self.symbols.append(np.asarray(pmt.c32vector_elements(pmt.cdr(msg)), dtype=np.complex64))


def decode(samples, frequency, threshold=.56):
    tb = gr.top_block("offline Wi-Fi I/Q evidence")
    source = blocks.vector_source_c(samples, False)
    delay16 = blocks.delay(gr.sizeof_gr_complex, 16)
    conjugate = blocks.conjugate_cc()
    multiply = blocks.multiply_cc()
    corr = blocks.moving_average_cc(48, 1, 4000, 1)
    magnitude = blocks.complex_to_mag(1)
    power = blocks.complex_to_mag_squared(1)
    avgpower = blocks.moving_average_ff(64, 1, 4000, 1)
    divide = blocks.divide_ff(1)
    short = ieee802_11.sync_short(threshold, 2, False, False)
    delay320 = blocks.delay(gr.sizeof_gr_complex, 320)
    long = ieee802_11.sync_long(320, False, False)
    vector = blocks.stream_to_vector(gr.sizeof_gr_complex, 64)
    transform = fft.fft_vcc(64, True, [], True, 1)
    eq = ieee802_11.frame_equalizer(ieee802_11.LS, frequency, 20e6, False, False)
    mac = ieee802_11.decode_mac(False, False)
    sink = blocks.vector_sink_b(48)
    messages = Messages()
    tb.connect(source, delay16, conjugate, (multiply, 1))
    tb.connect(source, (multiply, 0))
    tb.connect(multiply, corr, magnitude, (divide, 0))
    tb.connect(source, power, avgpower, (divide, 1))
    tb.connect(delay16, (short, 0))
    tb.connect(corr, (short, 1))
    tb.connect(divide, (short, 2))
    tb.connect(short, (long, 0))
    tb.connect(short, delay320, (long, 1))
    tb.connect(long, vector, transform, eq, mac)
    tb.connect(eq, sink)
    tb.msg_connect(mac, "out", messages, "frames")
    tb.msg_connect(eq, "symbols", messages, "symbols")
    tb.run()
    time.sleep(.05)
    return messages, sink.tags()


def frame_info(meta, data):
    received = int.from_bytes(data[-4:], "little")
    computed = zlib.crc32(data[:-4])
    fc = int.from_bytes(data[:2], "little")
    typ, sub = (fc >> 2) & 3, (fc >> 4) & 15
    types = {0: "management", 1: "control", 2: "data"}
    names = {(0, 8): "beacon", (0, 5): "probe response", (1, 13): "ACK", (1, 9): "block ACK"}
    cleanmeta = {str(k): v.item() if hasattr(v, "item") else v for k, v in meta.items() if k != "csi"}
    return dict(kind=names.get((typ, sub), types.get(typ, "reserved")),
                type=typ, subtype=sub, bytes_including_fcs=len(data),
                frame_sha256=hashlib.sha256(data).hexdigest(),
                fcs_received=f"{received:08x}", fcs_computed=f"{computed:08x}",
                crc_pass=received == computed, metadata=cleanmeta)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("report", type=Path)
    parser.add_argument("--channel-mhz", type=float, required=True)
    parser.add_argument("--center-mhz", type=float, default=5250)
    parser.add_argument("--start", type=float, default=0)
    parser.add_argument("--seconds", type=float, default=.25)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--negative-control", action="store_true")
    args = parser.parse_args()
    report = json.loads(args.report.read_text())
    trial = report["tests"][0]
    if report["rf_kind"] != "passive" or report["rate_msps"] != 160 or not trial["transport_pass"]:
        raise ValueError("Requires a transport-qualified passive 160 MS/s capture")
    rate = 160000000
    start, count = round(args.start * rate), round(args.seconds * rate)
    rawpath = Path(trial["prefix"])
    raw = np.fromfile(rawpath, dtype=np.int8, count=2*count, offset=2*start)
    if len(raw) != 2*count:
        raise ValueError("Capture does not cover requested sample interval")
    sourcehash = hashlib.sha256(raw.tobytes()).hexdigest()
    z = raw.astype(np.float32).view(np.complex64) / 128
    z -= z.mean()
    offset = (args.channel_mhz - args.center_mhz) * 1e6
    if offset % 10000000 or count % 16:
        raise ValueError("This extractor requires a 10 MHz channel grid and a multiple of 16 samples")
    lut = np.exp(-2j*np.pi*offset/rate*np.arange(16)).astype(np.complex64)
    z.reshape(-1, 16)[:] *= lut
    channel = resample_poly(z, 1, 8).astype(np.complex64)
    del z, raw
    if args.negative_control:
        channel = np.abs(channel).astype(np.complex64)
    messages, tags = decode(channel, args.channel_mhz*1e6)
    infos = [frame_info(m, d) for m, d in messages.frames]
    evidence = dict(source_report=str(args.report), source_capture=str(rawpath),
                    source_report_sha256=hashlib.sha256(args.report.read_bytes()).hexdigest(),
                    source_interval_sha256=sourcehash, source_rate=rate,
                    source_center_mhz=args.center_mhz, channel_mhz=args.channel_mhz,
                    source_start_sample=start, source_samples=count,
                    channel_rate=20000000, channel_samples=len(channel),
                    channelizer="complex mixing then scipy.signal.resample_poly(up=1, down=8), default Kaiser FIR",
                    phase_removed=args.negative_control,
                    reference_commit="ad0598e4a874f4b8e1f391a1e0323e80df2b34ff",
                    reference_modification="retain received FCS in PDU; CRC gate and PHY algorithms unchanged",
                    equalized_symbols=len(messages.symbols), equalizer_tags=len(tags),
                    frame_count=len(infos), crc_pass_count=sum(f["crc_pass"] for f in infos), frames=infos)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(evidence, indent=2)+"\n")
    # Keep raw received bytes and channelized samples strictly in ignored build/.
    stem = Path("build-wifi") / args.output.stem
    channel.tofile(str(stem)+".cf32")
    selected = next(((m, d) for m, d in messages.frames if frame_info(m,d)["kind"] == "beacon"),
                    messages.frames[0] if messages.frames else None)
    if selected:
        meta, data = selected
        Path(str(stem)+".bin").write_bytes(data)
        # Equalizer stream tags and message vectors share one index per OFDM symbol.
        grouped = {}
        for tag in tags:
            grouped.setdefault(int(tag.offset), {})[pmt.symbol_to_string(tag.key)] = pmt.to_python(tag.value)
        match = next((idx for idx, m in grouped.items()
                      if m.get("frame bytes") == meta.get("frame bytes") and m.get("snr") == meta.get("snr")), None)
        if match is not None:
            enc = int(meta["encoding"])
            ndbps = [24,36,48,72,96,144,192,216][enc]
            nsym = (16+8*len(data)+6+ndbps-1)//ndbps
            np.save(str(stem)+"-symbols.npy", np.asarray(messages.symbols[match:match+nsym]))
            evidence["selected_frame"] = frame_info(meta, data)
            evidence["selected_equalizer_symbol_offset"] = match
            evidence["selected_ofdm_symbols"] = nsym
            args.output.write_text(json.dumps(evidence, indent=2)+"\n")
    print(json.dumps(dict(channel_mhz=args.channel_mhz, frame_count=len(infos),
                          crc_pass_count=evidence["crc_pass_count"], output=str(args.output)), indent=2))


if __name__ == "__main__":
    main()
