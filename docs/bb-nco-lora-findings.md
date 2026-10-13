# Meshtastic LoRa preset sweep through the BBMCU NCO — October 13, 2026

**Receiver correction:** the [wide-mode follow-up](bb-nco-lora-wide-followup.md)
adds missing channel filtering. Fresh 1.625-MHz Short Turbo and Medium Turbo
runs recover **10/10** and **9/10**, and the saved 812.5-kHz Short Slow and
Medium Slow captures both recover **10/10**. The tables, plot and reports below
preserve the original unfiltered analysis; they do not supersede that correction.

**This path transmits decodable conventional LoRa packets in several modes,
but it is not yet a reliable transmitter across all Meshtastic presets.**
Short Turbo (500 kHz), Short Fast (250 kHz), Short Slow (250 kHz) and Narrow
Fast (62.5 kHz) each recover **10/10 distinct packets** in bounded confirmation
runs. Medium Turbo recovers **9/10**. The 812.5-kHz Short Slow and Medium Slow
parameter tests recover **7/10** and **9/10**. There is no packet averaging.

All RF was on **2.4 GHz** with Pluto receiving. Sub-GHz modem parameters were
transposed to that RF band; this card has not transmitted at 433/868/915 MHz.
The 2.4-GHz-profile tests use conventional LoRa encoding at Meshtastic's wide
bandwidths. Reception by an actual SX1280 or other commercial Meshtastic node
has **not** been demonstrated. The results establish packet synthesis and
software decoding, not complete Meshtastic device interoperability.

[All-mode plot](../output/rtl8922-bb-nco-lora-results.png) ·
[Aggregate report](../output/rtl8922-bb-nco-lora-analysis.json) ·
[Source metadata](../output/rtl8922-bb-nco-lora-source-metadata.json) ·
[Upstream pins and clock calibration](../output/rtl8922-bb-nco-lora-provenance.json) ·
[Final hardware state](../output/rtl8922-bb-nco-lora-final-state.json)

## Coverage and packet definition

The sweep pins Meshtastic firmware **develop** commit
`04cb8885118b959a9f538cd5881bd7d595758911` and protobufs commit
`28f4f5f5c31c0323bfb86d890a1acaff15d1c4c6`. This is a current source snapshot,
not a claim about every released firmware version. The
[preset mapping](https://github.com/meshtastic/firmware/blob/04cb8885118b959a9f538cd5881bd7d595758911/src/mesh/MeshRadio.h),
[region profiles](https://github.com/meshtastic/firmware/blob/04cb8885118b959a9f538cd5881bd7d595758911/src/mesh/RadioInterface.cpp)
and [packet settings](https://github.com/meshtastic/firmware/blob/04cb8885118b959a9f538cd5881bd7d595758911/src/mesh/RadioLibInterface.h)
are authoritative for the selected parameters.

There are **16 supported preset names and 26 parameter configurations** in
this sweep: sixteen sub-GHz configurations and ten wide-band LORA_24
configurations. Long Slow is deprecated but still selectable, so it is
included. Very Long Slow remains an enum but has no selectable profile or
parameter case in this snapshot; it is excluded rather than silently tested
as its Long Fast fallback. Custom settings are not an enumerable preset set.
Tiny's 15.6-kHz label is modeled as the hardware's 15.625-kHz bandwidth.

Each 35-byte payload contains a Meshtastic-style 16-byte radio header and an
unencrypted Data protobuf carrying `RTL8922 LoRa NN` as a text message.
Packet IDs and text sequence numbers change. No real node identity, encryption
key or existing mesh channel is used. The test matches sync word **0x2b**, an
explicit header, payload CRC, preset coding rate, automatic low-data-rate
optimization, and **16** sub-GHz or **12** wide-profile preamble symbols.
A valid PHY payload is not evidence that an existing mesh would accept it.

The separately built [gr-lora_sdr modem](https://github.com/tapparelj/gr-lora_sdr)
provides encoding and the stock receiver. Every generated packet first passes
an ideal software round trip. RF decoding receives the parameter configuration
and captured samples, with no transmitted payload bytes, source symbols or
command table. It performs its own acquisition, CFO/timing estimation,
explicit-header checks, FEC and CRC. Expected bytes are used afterward only to
score exact recovery. Every reported packet success also requires zero valid
CRC packets in the TX-off and wrong-sync (`0x12`) controls.

## Mode results

The table below reports exact payload plus CRC after explicit hold-phase
compensation, followed by the longer confirmation where one was run. “Underrun”
is a rejected transport attempt, not a zero packet-decoding result. Counts of
one or two are screening observations, not reliability estimates. The plot
also preserves the earlier average-clock-only sweep.

| Profile | Preset | SF | BW (kHz) | CR | Corrected screening | Ten-packet check |
| --- | --- | ---: | ---: | --- | --- | --- |
| Sub-GHz parameters | SHORT_TURBO | 7 | 500 | 4/5 | 2/2 | 10/10 |
| Sub-GHz parameters | SHORT_FAST | 7 | 250 | 4/5 | 2/2 | 10/10 |
| Sub-GHz parameters | SHORT_SLOW | 8 | 250 | 4/5 | 2/2 | 10/10 |
| Sub-GHz parameters | MEDIUM_TURBO | 9 | 500 | 4/5 | 2/2 | 9/10 |
| Sub-GHz parameters | MEDIUM_FAST | 9 | 250 | 4/5 | 1/2 | — |
| Sub-GHz parameters | MEDIUM_SLOW | 10 | 250 | 4/5 | 2/2 | Underrun; rejected |
| Sub-GHz parameters | LONG_TURBO | 11 | 500 | 4/8 | 0/2 | — |
| Sub-GHz parameters | LONG_FAST | 11 | 250 | 4/5 | 1/2 | — |
| Sub-GHz parameters | LONG_MODERATE | 11 | 125 | 4/8 | 0/1 | — |
| Sub-GHz parameters | LONG_SLOW | 12 | 125 | 4/8 | 0/1 | — |
| Sub-GHz parameters | LITE_FAST | 9 | 125 | 4/5 | 2/2 | — |
| Sub-GHz parameters | LITE_SLOW | 10 | 125 | 4/5 | 2/2 | — |
| Sub-GHz parameters | NARROW_FAST | 7 | 62.5 | 4/6 | Underrun; rejected | 10/10 |
| Sub-GHz parameters | NARROW_SLOW | 8 | 62.5 | 4/6 | 2/2 | — |
| Sub-GHz parameters | TINY_FAST | 7 | 15.625 | 4/5 | 1/1 | — |
| Sub-GHz parameters | TINY_SLOW | 8 | 15.625 | 4/6 | 0/1 | — |
| LORA_24 bandwidths | SHORT_TURBO | 7 | 1625 | 4/5 | 0/2 | — |
| LORA_24 bandwidths | SHORT_FAST | 7 | 812.5 | 4/5 | 1/2 | — |
| LORA_24 bandwidths | SHORT_SLOW | 8 | 812.5 | 4/5 | 2/2 | 7/10 |
| LORA_24 bandwidths | MEDIUM_TURBO | 9 | 1625 | 4/5 | 0/2 | — |
| LORA_24 bandwidths | MEDIUM_FAST | 9 | 812.5 | 4/5 | 1/2 | — |
| LORA_24 bandwidths | MEDIUM_SLOW | 10 | 812.5 | 4/5 | 2/2 | 9/10 |
| LORA_24 bandwidths | LONG_TURBO | 11 | 1625 | 4/8 | 0/2 | — |
| LORA_24 bandwidths | LONG_FAST | 11 | 812.5 | 4/5 | 1/2 | — |
| LORA_24 bandwidths | LONG_MODERATE | 11 | 406.25 | 4/8 | 0/2 | — |
| LORA_24 bandwidths | LONG_SLOW | 12 | 406.25 | 4/8 | 0/1 | — |

The strongest current choices are Short Turbo, Short Fast, Short Slow and
Narrow Fast. Their ten-packet checks have ten distinct expected IDs/texts,
not ten copies of one decoded payload. Medium Turbo is usable experimentally
but loses one of ten packets. Long Fast and several other modes produce only
partial recovery. Long Turbo, Long Moderate, Long Slow and Tiny Slow have no
qualified packets in the completed corrected tests. No 1.625-MHz configuration
decodes a packet. This does not prove those modes are impossible with a better
compiler or a different on-chip waveform path.

Across **62 bounded RF attempts**, **53** complete independent static RF
controls and command transport. At least one individual packet decodes in
**17/26 configurations**. The nine rejected attempts comprise seven underruns,
one static amplitude-control failure and one capture/setup timeout. All are
retained. Medium Slow's 2/2 screening result is not promoted to a reliable
longer stream: its ten-packet attempt underruns after 2,022 of 7,536 buffers.

## Why the first attempt failed, and what changed

The frequency-only compiler keeps the tone enabled throughout each packet.
It rounds desired accumulated phase into NCO frequency indices, retaining the
quantization error instead of independently rounding frequency samples. The
native spacing remains 250 kHz. Only guard intervals mute; there is no amplitude
or PDM synthesis inside a packet. Thus 250 kHz is not a minimum LoRa bandwidth:
Narrow Fast at 62.5 kHz and Tiny Fast at 15.625 kHz both decode.

The initial Short Fast source used a nominal **10.667 Mcommands/s** timebase.
It completed transport but recovered **0/2** packets. Its RF preamble repetition
peaks at about 1,026–1,027 samples, versus a nominal 1,024 at 2 MS/s. A diagnostic
399/400 resampling of that recording recovers both packets. This diagnostic
receiver time warp is not used to qualify later results.

The counter reports approximately **60.151 ticks/command**, versus the nominal
60, giving an effective **10.639879 Mcommands/s** under the assumed 640-MHz
counter clock. Correcting the transmitted chirp timebase recovers **2/2** Short
Fast packets with the receiver unchanged. The RF repetition measurement
independently supports the approximately 0.25% time stretch; the counter
arithmetic alone does not establish clock accuracy or every-store timing.

Average-rate correction still overlooks what happens at the buffer boundary.
The oscillator holds its final frequency while native firmware service runs.
The second compiler models **0.967 us** of extra hold per 4,096 commands,
tracks the additional phase, then uses bounded frequency commands to bring the
phase back toward the ideal chirp. This preserves the physical service call;
it does not remove its timing uncertainty. It improves several screening
results, including Long Fast from 0/2 to 1/2 and Lite Fast from 0/2 to 2/2.
An independent held-oscillator integration test verifies the intended phase
correction in the model; partial RF improvement does not validate that model
at every register write.

Commands stay within physical indices **1..9** during packets and zero during
guards. The 1.625-MHz sources are centered at +1.25 MHz so the chirp does not
cross the mute index. Most sub-GHz-parameter sources are centered at +500 kHz.
The corrected 500-kHz Medium/Long Turbo sources and the Short Turbo confirmation
use +750 kHz, providing lower-frequency headroom for phase recovery. Therefore
those comparisons also change IF placement; they are not an isolated test of
one compiler parameter.

Residual phase/timing error is a plausible reason long coherent symbols still
fail, but its precise hardware cause was not isolated. RF phase noise,
nonuniform register timing, service-gap variation and compiler-model error
remain candidates. The results do not justify attributing all failures to the
250-kHz step or declaring a fixed LoRa bandwidth ceiling.

## Transport and receiver controls

The existing sequence-owned two-buffer player remains the RF path. A separate
firmware image raises only the finite block budget from 1,024 to **16,384**;
its SHA256 is
`e21b6f2df14577809f8b259980f3c582f9db97bdf29c76b5d64d47517f521c8d`.
Default firmware bytes remain unchanged. No working driver patch or installed
module is overwritten. LoRa command tables are prepared offline and streamed
from the host; this experiment does not implement an autonomous on-chip LoRa
encoder or live network-packet ingress.

A FIFO-priority-1 refill thread initially prevented ordinary scheduling
preemption but introduced another failure: a busy loop can exhaust Linux's
**950 ms per 1-second real-time CPU budget**. Upload logs show approximately
50-ms stalls, and two longer attempts stop near 0.95 seconds. The corrected
helper sleeps **20 us** when waiting for a free buffer, reducing unnecessary
CPU use. Policy and affinity apply only to the bounded refill thread and are
restored on exit. Global scheduler settings and IRQ affinity are untouched.
Later underruns still occur, so paced scheduling is not indefinite reliability.

Every attempt uses the stopped-demo/released-card preflight, fresh saved
settings, a lock, an internal 38-second alarm and the maximum-45-second manual
launcher. Payload duration is below 6.3 seconds. Longer corrected modes use
one packet to fit a practical Pluto capture. Pluto uses manual gain 50 and
5-MHz analog bandwidth, with 2 MS/s for configurations through 500 kHz and
8 MS/s for wider configurations. The complete burst lies inside one newly
created acquisition. Reference-tone movement, half-amplitude and before/after
TX-off controls are separate from the packet decoder. Accepted captures do not
clip.

The receive center is calibrated using the independent moving reference tone
in each run; the stock decoder handles residual packet CFO. Signals are mixed
and resampled to eight samples per LoRa chip. No payload-frame combining,
post-capture clock warp, inter-packet fitting or payload-aided equalization is
used in qualified results. Long-range sensitivity, radiated power, adjacent
emissions and spectral-mask compliance were not measured.

## Reproduction

Build the pinned modem under an isolated prefix, using system GNU Radio 3.10
and compatible system NumPy. Its commit is recorded in the provenance report.
No system installation is required:

```sh
git clone https://github.com/tapparelj/gr-lora_sdr.git vendor/gr-lora_sdr
# Check out the exact gr_lora_sdr_commit in the provenance report.
env -u CONDA_PREFIX cmake -S vendor/gr-lora_sdr \
  -B vendor/gr-lora_sdr/build-system \
  -DCMAKE_INSTALL_PREFIX=/tmp/rtl8922-lora-prefix \
  -DPYTHON_EXECUTABLE=/usr/bin/python3 -DENABLE_DOXYGEN=OFF
cmake --build vendor/gr-lora_sdr/build-system -j4
cmake --install vendor/gr-lora_sdr/build-system --prefix /tmp/rtl8922-lora-prefix
export RTL8922_LORA_PREFIX=/tmp/rtl8922-lora-prefix
bash research/tx/lora_python.sh research/tx/bb_nco_lora.py \
  --name my-short-fast --preset SHORT_FAST --packets 10 \
  --playback-rate 10639878.95 --compensate-holds
```

`lora_python.sh` avoids incompatible `/usr/local` NumPy and makes only the
isolated modem available to the system Python. `bb_nco_lora_sweep.py` generates
all sources for a fresh `--stage cal|hold|confirm --suffix NAME --plan PATH`;
it never opens devices. Do not reuse the measured playback calibration on a
changed consumer without checking it.

Build the separate bounded player and paced writer manually:

```sh
python research/firmware/bb_nco_stream_patch.py \
  --firmware vendor/rtw89/firmware/rtw8922a_fw-4.bin \
  --output-firmware /tmp/my-lora-fw.bin --report /tmp/my-lora-patch.json \
  --max-blocks 16384
cc -O3 -DNCO_MAX_BLOCKS=16384 -DNCO_REFILL_SLEEP_NS=20000 \
  -Wall -Wextra -Werror -shared -fPIC research/tx/bb_nco_mapped_writer.c \
  -o /tmp/my-lora-writer.so
```

For an explicitly authorized RF test, use the existing maximum-45-second
`research/firmware/run_bb_rom_test.sh` launcher and working module directory
as in the [earlier streaming reproduction](bb-nco-narrow-ofdm-findings.md).
Set `RTL8922_FIRMWARE=/tmp/my-lora-fw.bin` and invoke:

```sh
/home/plaing/rtl8922-iq-research/pluto-venv/bin/python \
  research/tx/bb_nco_lora_probe.py --run-rf-test \
  --source-report vendor/local-rf-captures/bb-nco-lora-20261013/my-short-fast.json \
  --payload vendor/local-rf-captures/bb-nco-lora-20261013/my-short-fast.bin \
  --patch-report /tmp/my-lora-patch.json --mapped-writer /tmp/my-lora-writer.so \
  --report /tmp/my-lora-rf.json --trace /tmp/my-lora.cf32
```

Use fresh paths. The probe refuses an active demo, bound card or wrong firmware
through its wrapper, saves settings before tuning, and restores in `finally`.
Raw captures, command arrays, firmware and binaries remain private/ignored.

`analyze_bb_nco_lora.py` decodes hash-checked private traces. The public summary
and plot are reproducible from saved derived reports without raw captures:

```sh
bash research/tx/lora_python.sh research/tx/analyze_bb_nco_lora_summary.py \
  --plot output/rtl8922-bb-nco-lora-results.png
bash research/tx/lora_python.sh research/tx/test_bb_nco_lora.py
```

## Checks and final state

The hardware-free checks cover packet encoding/decoding across SF7/SF12,
LDRO, narrow and wide families; independent physical integration of the held
NCO; command packing/bounds; and real RISC-V execution of the extended finite
budget with underrun muting. Existing compiler/OFDM/firmware tests also pass.
Default, online-compiler and paced LoRa C helpers compile with warnings treated
as errors. No hardware probe runs automatically as a test.

All 62 attempts complete their cleanup actions without errors. Fixed Pluto
settings restore in every run. Nine instantaneous RX-gain readbacks differ
while the restored mode is `slow_attack`; these live AGC differences are retained,
not called exact per-run matches. Thirty-nine runs also record RTL register
readback differences, mostly RF register 0 bit 15, with one additional RF1
mode/gain difference. They are preserved rather than hidden or described as
exact register restoration.

The final independent check matches the first saved Pluto state and confirms
**Pluto TX off, RTL card unbound, demo stopped**, working module hashes and
wired routing unchanged, and no experiment modules or temporary firmware/NM
configuration. No unrelated service was restarted.
