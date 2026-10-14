# 100-kHz QPSK OFDM and host-fed NCO streaming — October 13, 2026

Follow-up: [causal I/Q compilation and 200-kHz OFDM](bb-nco-realtime-findings.md) now demonstrates online command generation. The results below remain the earlier precomputed-command baseline.

**Pluto decodes individual narrowband OFDM frames without payload-frame
averaging. Changing optimized frames also stream from the host at the native
NCO cadence.** A full bounded stream recovered 511 of 512 transmitted frames,
all with correct payload and CRC16; one interior frame was a preamble erasure.
No decoded frame had a bit error. The four host-fed payloads appeared in order.

[Aggregate evidence](../output/rtl8922-bb-nco-narrow-ofdm-analysis.json) ·
[Full-stream constellation and payload order](../output/rtl8922-bb-nco-narrow-ofdm-stream-full-d.png) ·
[Independent cleanup](../output/rtl8922-bb-nco-narrow-ofdm-final-state.json)

## Waveform and individual-frame receiver

The RF command is RTL LO 2422 MHz plus a +250-kHz NCO carrier, on the quiet
2422.25-MHz path. A common measured oscillator offset is removed using the
independent static reference tone; absolute RF frequency is not calibrated.
The existing equal-I/Q amplitude code stays at zero during playback; only
NCO index 0..6 commands vary. Each nonzero command sets frequency and zero
mutes, with the previously observed paused-phase behavior.

The custom laboratory OFDM format is:

- FFT size 16, oversampled 40 times at the nominal 10.667-million-store/s rate.
- Six active carriers, indices −3, −2, −1, +1, +2, +3, at 16.667-kHz spacing.
  The outer carrier centers span **100 kHz**. This is not a measured 99%-power
  bandwidth or an emission mask; OFDM sidelobes and NCO quantization energy
  extend beyond those centers.
- Outer carriers are pilots; four inner carriers carry QPSK data. Useful
  symbol time is 60 us, cyclic prefix 15 us, total symbol time 75 us.
- Two training symbols and six data symbols carry four payload bytes plus
  CRC16-CCITT, initial value `0xffff`, big-endian trailer. There is no FEC.
- The active frame lasts 600 us, inside an 8192-command table lasting nominally
  768 us. Remaining slots provide a guard. The table closes accumulated RF
  phase. Joint optimization uses analytic within-slot pulse integrals, index
  0..6, a 100-kHz objective low-pass response, seed 93 and 300,000 proposals.

The receiver resamples to 1.333 MS/s. Every frame supplies its own timing,
CFO estimate from its two training symbols, per-carrier channel estimate,
and pilot phase/timing correction. Neither payload bits nor another frame
enter those fits. Two training symbols within a frame are normal preamble
processing; **payload frames are never combined**. Payload references are
used only after demodulation to score EVM/bit errors and verify stream order.

The receiver uses a fixed 0.65 normalized training-correlation threshold.
There is no received-energy selection of quiet frames in these experiments.
Synthetic tests vary phase and CFO independently between frames, verify that
changing the scoring reference cannot change recovered bits, and reject noise
and wrong training. The optimized pulse model decodes 7/7 complete synthetic
frames, at about 7.6% median symbol EVM.

## OTA results

| Experiment | Individually decoded / observed frame opportunities | Median EVM |
|---|---:|---:|
| Preloaded `IQOK`, capture A | 85/85 detected frames | 12.15% |
| Preloaded `IQOK`, capture B | 85/85 detected frames | 11.87% |
| Host-fed changing frames, central snapshot A | 84/84 detected frames | 11.49% |
| Host-fed changing frames, central snapshot B | 84/84 detected frames | 12.61% |
| **Host-fed changing frames, full burst D** | **511/512 transmitted frames** | **13.34%** |

All listed decoded frames have valid CRC and the expected payload. The full
burst's maximum decoded-frame EVM is 27.49%. It has one missed preamble inside
the burst, following detected frame 63; timing shows a two-frame gap between
`IQ03` and `IQ01`. That missing `IQOK` frame counts as an erasure. It is not
silently excluded or described as a zero-error burst. Its cause has not been
isolated. The host consumer reports no buffer underrun.

Full-burst payload counts were `IQOK`: 127, `IQ01`: 128, `IQ02`: 128,
`IQ03`: 128. The same gain/geometry TX-off records and wrong-training decoders
produced **zero CRC-valid frames** in all passing experiments. Independent
moving-tone and scalar-amplitude controls also passed, and no passing RF
capture clipped.

The A/B measurements sample a 65.536-ms central window at Pluto 8 MS/s, LO
2423 MHz, 5-MHz analog RX bandwidth and manual gain 50. They do not observe
all 512 transmitted frames. The full-burst acquisition instead uses Pluto
2 MS/s, LO 2422.5 MHz, 1.5-MHz analog bandwidth, gain 50 and 2,097,152 samples.
Its one contiguous recording spans the complete approximately 0.394-s stream.
The receiver geometry differs, so the EVM change between snapshot and full
capture is not attributed solely to streaming.

Evidence: [preloaded A](../output/rtl8922-bb-nco-narrow-ofdm-demod-a.json),
[preloaded B](../output/rtl8922-bb-nco-narrow-ofdm-demod-b.json),
[stream A](../output/rtl8922-bb-nco-narrow-ofdm-stream-demod-a.json),
[stream B](../output/rtl8922-bb-nco-narrow-ofdm-stream-demod-b.json),
[full stream D](../output/rtl8922-bb-nco-narrow-ofdm-stream-full-d-qualified.json).

## How host streaming works

The first OFDM payload is a temporary 656-byte nibble table player. Packing
8 commands per 32-bit word extends the original 1024-command table to 8192
commands in the same 4096-byte verified-padding region. It keeps one NCO
store per slot; emulator tests verify nibble order, mute, bounds, ABI handling
and the absence of amplitude stores in its loop. The original 32-bit table
player produces exactly the same firmware bytes as before.

The separate host-fed consumer is an 876-byte temporary payload, with two
2048-byte buffers at the established BB-local `0x10016800` region. Each
buffer carries 4096 commands. Ready sequence numbers belong to the host;
the consumed count belongs to BB. The host refills only a released buffer,
then publishes its sequence. The consumer performs the native timer refresh
at each boundary, stays inside one command, and mutes on underrun,
cancellation or final completion. Interrupts remain enabled.

The existing debugfs uploader historically managed about 0.62 MB/s, below
the **5.33 MB/s** needed for fresh four-bit commands at 10.667 million stores/s.
The new bounded C helper maps the card's existing BAR2 aperture and makes
volatile 32-bit stores to **only the same owned BB buffers and ready/cancel
words**. It checks the aperture selector, flushes posted writes with a read
before publishing readiness, and initially verifies both complete buffers
through the independent debugfs readback path. No working driver changes or
new DMA endpoint are required.

Mapped fills took approximately **153 us per 2048 bytes**, about 13.4 MB/s,
against a nominal 384-us consumption interval. Maximum recorded fill times
were 178.7 us, 170.5 us and 177.8 us in the three successful streams. These
measurements cover these bounded runs, not worst-case host scheduling latency.

Every stream consumed **1024/1024 buffers** and wrote 4,194,304 NCO commands.
The first two buffers were preloaded; **1022 buffers were uploaded while
playback ran**. Local repetition factor is **one**. The four source frames
cycle in a 2-MiB host stream, so the BB is not simply looping a resident frame.
Final buffer readback matches the final two host blocks.

Streaming measures about 60.151 native counter ticks per NCO command,
versus 60.000 in the static table player. The native service and boundary work
add small overhead; zero jitter and every-write RF-latch behavior are not
qualified. The measured RF frame interval is **770.25 us**, approximately
**1,298 frames/s**, or **41.5 kbit/s of payload before erasures**. This is
consistent with the established nominal 10.667-million-store/s path, slightly
reduced by boundary service; it is not a 20-MS/s result.

The host streams **precomputed jointly optimized commands**. The optimizer is
not generating new arbitrary payloads at the RF frame rate. Indefinite
streaming, live optimizer throughput, longer scheduler/outage endurance and
normal Wi-Fi coexistence remain unqualified. The present consumer intentionally
stops after 1024 blocks, approximately 0.394 seconds.

## Reproduction

All generators and analyzers are offline. No test automatically opens hardware.

```sh
python research/tx/bb_nco_narrow_ofdm.py generate \
  --name ofdm-iqok-a --message IQOK --steps 300000
# Likewise generate ofdm-iq01/IQ01, ofdm-iq02/IQ02 and ofdm-iq03/IQ03.
python research/tx/bb_nco_narrow_ofdm.py stream-source \
  --name stream-four-payloads --cycles 128 \
  --sources ofdm-iqok-a ofdm-iq01 ofdm-iq02 ofdm-iq03
python research/firmware/bb_nco_stream_patch.py \
  --firmware vendor/rtw89/firmware/rtw8922a_fw-4.bin \
  --output-firmware /tmp/my-nco-stream.bin --report /tmp/my-nco-stream-patch.json
cc -O2 -Wall -Wextra -Werror -shared -fPIC \
  research/tx/bb_nco_mapped_writer.c -o /tmp/my-nco-writer.so
```

Use fresh names/paths; the generators refuse existing outputs. Recreating the
stream from the four saved source reports reproduces its payload byte-for-byte.
The stream firmware SHA256 is
`cc670f28e15dd6c46ebb5cf3fdd0c4bd02f11fad056396ea2eb1637ee3f10fb3`.
The packed static player SHA256 is
`900f9ef56a8f3f8f49eb3aa8e2c27db6e5fc34e09120d3d77b2a066138a93a30`.
Both are alternatives built from the pinned original; do not stack patches.

Hardware still requires the existing manual maximum-45-second launcher and
fresh saved settings. For a full capture on a stopped demo/released card:

```sh
sudo -n timeout --signal=TERM --kill-after=10s 45s env \
  OPENBLAS_NUM_THREADS=1 \
  RTL8922_DRIVER_DIR=/home/plaing/rtl8922-iq-research/la-driver \
  RTL8922_FIRMWARE=/tmp/my-nco-stream.bin \
  RTL8922_IW=/home/plaing/rtl8922-iq-research/iw-local/sbin/iw \
  bash research/firmware/run_bb_rom_test.sh \
  /home/plaing/rtl8922-iq-research/pluto-venv/bin/python \
  research/tx/bb_polar_ofdm_probe.py --run-rf-test \
  --center-mhz 2422 --rx-gain 50 --fixed-amplitude-code 0 \
  --rx-rate 2000000 --rx-offset 500000 --rx-bandwidth 1500000 \
  --control-base-index 1 --samples 2097152 --capture-whole-pattern \
  --repeats 1 --stream-blocks 1024 --mapped-writer /tmp/my-nco-writer.so \
  --patch-report /tmp/my-nco-stream-patch.json \
  --source-report vendor/local-rf-captures/bb-nco-narrow-ofdm-20261013/stream-four-payloads.json \
  --payload vendor/local-rf-captures/bb-nco-narrow-ofdm-20261013/stream-four-payloads.bin \
  --report /tmp/my-stream-rf.json --trace /tmp/my-stream.cf32
```

`bb_nco_narrow_ofdm.py analyze` scores static-table captures.
`analyze_bb_nco_ofdm_stream.py` scores changing-stream captures;
`analyze_bb_nco_narrow_summary.py` reproduces the aggregate. Raw IQ, source
arrays/tables, firmware and compiled helpers remain ignored/private.

## Checks and restoration

Six bounded RF attempts are preserved. Five passed all independent controls.
Full-capture attempt C failed the static half-amplitude gate before table
playback; it remains rejected. Retry D passed unchanged gates. Twenty-three
hardware-free firmware/receiver/optimizer/OFDM tests pass, including real
RISC-V execution of sequence ownership, native-service register preservation,
underrun/cancellation muting and request bounds. The C helper builds cleanly
with warnings treated as errors.

Independent final checks confirm Pluto TX off, every saved Pluto setting
restored, card unbound, demo still stopped, original working module hashes and
wired route unchanged, and no temporary firmware/configuration or experiment
modules. No unrelated service was restarted. Neither emission-mask compliance
nor wideband arbitrary-I/Q transmission follows from these narrowband tests.
