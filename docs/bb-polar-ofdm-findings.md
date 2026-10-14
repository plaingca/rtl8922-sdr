# 2-MHz OFDM through the BBMCU polar path — October 13, 2026

**Pluto recovered the exact transmitted message with valid CRC32 in two RF
captures. This required coherent combining of 64 repetitions. Single-frame
reception remains unreliable.** This establishes finite waveform feasibility,
not a qualified real-time 2-MHz OFDM mode or the outstanding 20 MS/s goal.

Recovered message: [`RTL8922 polar OFDM at 2 MHz`](../output/rtl8922-bb-polar-ofdm-recovered.txt).
The message file is extracted from a CRC-valid received packet, not copied from
the source. [Best capture constellation and results](../output/rtl8922-bb-polar-ofdm-d2.png).

## Waveform and transmitter

This is custom laboratory OFDM, not an IEEE 802.11 frame:

| Parameter | Value |
|---|---|
| Nominal paired update rate | 16/3 MS/s, approximately 5.333 MS/s |
| FFT / cyclic prefix | 64 / 16 samples |
| Active subcarriers | −12..−1 and +1..+12 |
| Subcarrier spacing | 83.333 kHz |
| Outer active-carrier span | 2 MHz, −1 to +1 MHz |
| Data / pilots per symbol | 20 QPSK data carriers / 4 known pilots |
| Frame | Two training symbols, eight data symbols, 800 samples |
| Packet | 36 payload bytes, including padding, plus four CRC32 bytes |
| Frame repetitions per command | 4096, about 0.615 seconds |
| TX LO / NCO offset | 2442 MHz / +4 MHz, nominal carrier 2446 MHz |

The DC gap, rectangular OFDM symbol boundaries, polar quantization and images
mean this is not a measurement of a clean 2-MHz emission mask or 99%-power
occupied bandwidth. The requested 2-MHz active-carrier span is explicit.

[`bb_polar_ofdm.py`](../research/tx/bb_polar_ofdm.py) converts complex OFDM to
phase differences and scalar envelopes. Frequency commands use the measured
250-kHz NCO grid, with cumulative phase-error feedback. The repeating table
closes phase exactly at its nominal update rate. Envelope commands use
first-order error feedback among the available equal-I/Q attenuation levels,
from mute through one half. The envelope is advanced one sample to account for
the sequential frequency/amplitude writes and hold timing. This is an initial
model-based timing choice, not a calibrated broadband delay correction.

[`bb_polar_table_patch.py`](../research/firmware/bb_polar_table_patch.py) adds a
finite table player after normal BBMCU startup. Its 816-byte stub dispatches
frequency/amplitude pairs from a verified 3200-byte IRAM table. One mailbox
command emits all 3,276,800 pairs, then zeros the NCO and restores attenuation.
Normal firmware commands preserve their original prologue and ABI. No driver
patch or NCTL program is changed. Interrupts remain enabled. The finite command
finishes before the previously observed idle-timer failure interval; it does
not establish indefinite operation or a host-refilled sample stream.

## Independent receiver and results

Pluto captures at 8 MS/s with 5-MHz analog bandwidth, LO 2447.5 MHz. Moving
static tones and a half-amplitude control precede each accepted run, with both
TX-off measurements and zero clipping required. The capture buffer is warmed
before the command; queued pilot data is discarded.

The receiver mixes using the measured pilot offset and resamples to the nominal
paired rate. Known training symbols establish timing, carrier offset and
channel response. Four pilots correct each data symbol's residual phase and
timing. Expected payload bits are used only for final error measurement. CRC
checks operate on the received bytes. No reference samples or bits are inserted.

| Result | Capture C | Capture D |
|---|---:|---:|
| Pluto RX gain | 45 | 55 |
| Capture duration | 32.768 ms | 32.768 ms |
| Repetitions present | 218 | 218 |
| Repetitions admitted by fixed energy rule | 135 | 158 |
| Complete disjoint groups of 64 | 2 | 2 |
| CRC-valid, exact received packets | 1 | 2 |
| Erased groups | 1 | 0 |
| Decoded bits / bit errors | 320 / 0 | 640 / 0 |
| Combined EVM RMS | 29.59% | 25.62% median |
| TX-off CRC-valid groups | 0 | 0 |
| Wrong-training CRC-valid groups | 0 | 0 |
| Uncombined CRC-valid frames | 0 | 0 |

Evidence: [RF C](../output/rtl8922-bb-polar-ofdm-rf-c.json),
[RF D](../output/rtl8922-bb-polar-ofdm-rf-d.json),
[decode C](../output/rtl8922-bb-polar-ofdm-demod-c2.json),
[decode D](../output/rtl8922-bb-polar-ofdm-demod-d2.json).
Three of four complete combined observations recovered the exact packet. One
erasure is retained separately; zero bit errors among the 960 decoded bits
must not be presented as zero losses across all observations. The stricter
qualification gates remain false. The receiver's single-frame attempts also
failed, despite finding some preambles.

The energy rule admits received frame blocks with power at most 1.5 times the
capture median, before examining any payload. This rejects strong nearby
traffic. Each combined observation uses 64 distinct admitted repetitions;
input indices and excluded/leftover counts are recorded. Circular tiling of
the averaged waveform permits frame synchronization but adds no independent
observations. At least 9.6 ms of repeated transmission contributes to each
combined packet, with additional time where interference causes exclusions.

The initial lower-envelope capture A failed CRC decoding. Run B was rejected
for static-control overload before transmitting the payload. C recovered one
combined packet; D confirmed recovery. A longer attempt E was also rejected
for overload before payload transmission. All reports are retained. Original
C/D decoder reports preserve the earlier fixed-time grouping; C2/D2 use the
same captures with groups containing exactly 64 admitted repetitions.

## Reproduction and limits

The experiment uses the unchanged working modules, a separate temporary
firmware and a bounded manual wrapper. Generate a source table offline:

```sh
OPENBLAS_NUM_THREADS=1 python research/tx/bb_polar_ofdm.py \
  --peak .5 --prefix vendor/local-rf-captures/my-ofdm
python research/firmware/bb_polar_table_patch.py \
  --firmware vendor/rtw89/firmware/rtw8922a_fw-4.bin \
  --output-firmware /tmp/rtl8922-ofdm.bin --report output/my-ofdm-patch.json
```

Explicit hardware invocation, only with the demo stopped and card released:

```sh
sudo -n timeout --signal=TERM --kill-after=10s 45s env OPENBLAS_NUM_THREADS=1 \
  RTL8922_DRIVER_DIR=/home/plaing/rtl8922-iq-research/la-driver \
  RTL8922_FIRMWARE=/tmp/rtl8922-ofdm.bin \
  RTL8922_IW=/home/plaing/rtl8922-iq-research/iw-local/sbin/iw \
  bash research/firmware/run_bb_rom_test.sh \
  /home/plaing/rtl8922-iq-research/pluto-venv/bin/python \
  research/tx/bb_polar_ofdm_probe.py --run-rf-test --center-mhz 2442 --rx-gain 55 \
  --patch-report output/my-ofdm-patch.json \
  --source-report vendor/local-rf-captures/my-ofdm.json \
  --payload vendor/local-rf-captures/my-ofdm.bin \
  --report output/my-ofdm-rf.json --trace vendor/local-rf-captures/my-ofdm-rf.cf32
```

Then run `bb_polar_ofdm_demod.py` with that RF report, source report, a fresh
output JSON and optional plot path. The tool records failed qualification
rather than promoting a sparse CRC success to reliable streaming.

Six hardware-free tests cover exact firmware dispatch, invalid commands, ABI
and image-integrity bounds, phase closure, quantized-model decoding, noisy
repetition combining, wrong training and noise false positives. RF captures and
source tables remain private in ignored `vendor/`; no dumps or build artifacts
are committed. The [final hardware check](../output/rtl8922-bb-polar-ofdm-final-state.json)
verifies TX off, restored Pluto settings, card released and working files
unchanged. The stopped demo remains stopped.

Further work is needed for reliable single-frame decoding, calibrated polar
path delay/amplitude response, emission characterization and host streaming.
The original goal of gap-free 20 MS/s across the mutual bands remains active.
