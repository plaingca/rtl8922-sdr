# Continuous BBMCU NCO streaming and live ICY radio — October 13, 2026

**The 2–3 ms host handoffs are removed.** One running BB consumer now processes
the entire stream while the host refills alternating buffers. A live ICY radio
feed completed 125/125 and 192/192 buffers in separate 8.02- and 12.31-second RF
runs. Pluto recovered the audio without impulse blanking, handoff interpolation,
or pause correction.

[Play the 12.13-second Pluto recording](../output/audio/rtl8922-bb-fm-shoutcast-received.wav).
The initial synchronization chirp is trimmed; the music is demodulated RF.
[Known speech through the same continuous consumer](../output/audio/rtl8922-bb-fm-continuous-speech.wav)
is also available locally. Audio and raw captures are ignored by Git.

## What caused the long-command failure

The [earlier implementation](bb-fm-findings.md) returned to normal firmware every
eight buffers because a long-running command eventually produced invalid BB RAM
reads (`0xdeadbeef`). Those returns introduced the audible frequency holds.

The newly pinned static trace identifies the missing service:

- The idle task calls `0x100104a4` from `0x100132f2`.
- That hook calls timer API offset `0x70` with object `0x1002c1a4` and argument
  `1,000,000`, then executes `WFI`.
- The captured ROM table at `0x10021efc + 0x70` resolves the refresh function to
  `0x1000779a`. It updates the timer and restarts it.
- The timeout path at `0x10014c80` proceeds toward BB reset and an infinite wait.

The continuously running higher-priority command starves the idle task. Calling
its **existing timer refresh**, without its `WFI`, lets the long NCO loop remain
alive. This explains the earlier failure much more specifically than the
previous generic firmware-starvation hypothesis. The physical timer clock and
exact expiration duration are not independently calibrated; the new code uses
the same argument as the original idle hook.

The [timer trace](../output/rtl8922-bb-fm-timer-trace.json) pins firmware and both
ROM captures by SHA-256 and records short supporting instruction excerpts.
[`inspect_bb_stream_timer.py`](../research/firmware/inspect_bb_stream_timer.py)
reproduces it offline from the local captures. No watchdog or interrupt is
disabled.

## The continuous consumer

[`bb_fm_continuous_patch.py`](../research/firmware/bb_fm_continuous_patch.py)
builds a separate 776-byte experimental payload. It keeps the established
runtime dispatcher hook and IRAM ring, but uses command `0x3fc` and magic
`0x464d4331`. Each 2,048-sample block refreshes the native timer once; the
consumer saves and restores all live caller-saved registers around the ROM
call, including the fractional accumulator and buffer counters.

There is one mailbox submission and one final completion. Buffer boundaries
stay inside the BB loop. The host neither starts the next batch nor sleeps
between batches. Missing data, cancellation and final completion mute the NCO.
Interrupts remain enabled. Native service and ordinary loop overhead still
exist; this is not a claim of cycle-exact timing or zero per-write jitter.

The firmware accepts up to 512 blocks as a bounded experiment. The live-radio
runner deliberately limits this demonstration to 192 blocks and runs inside the
45-second hardware wrapper. This is a continuous buffer-consumption method with
an intentional final stop, not an indefinitely running service. Normal Wi-Fi
coexistence and all other firmware tasks have not been qualified while the
consumer owns this task.

The original working driver, original firmware and previous batch prototype
remain intact. The image is loaded temporarily into RAM using the existing
manual experiment launcher.

## Actual network streaming

The input was the public [SomaFM Groove Salad direct MP3 stream](https://somafm.com/groovesalad/directstreamlinks.html):
`https://ice5.somafm.com/groovesalad-128-mp3`.
This endpoint is ICY/SHOUTcast-compatible HTTP audio, served by Icecast; it is
not evidence that SomaFM runs the SHOUTcast server product.

[`bb_fm_live_source.py`](../research/tx/bb_fm_live_source.py) runs FFmpeg against
the live URL, decodes mono 32-kHz PCM, applies 75 µs preemphasis with fixed
headroom, and publishes unsigned fractional-NCO samples into a bounded
24-block host queue. The MMIO producer drains that queue into the two BB buffers.
The network decoder runs concurrently with RF: **98 blocks in run B and 165 in
run C were decoded while TX was active**. This was not a downloaded clip played
back afterward. Monotonic timestamps and the consumed source hashes are kept
in the RF reports. There were no source errors or preemphasis clipping events.

The audio clock measured from the initial pilot is approximately 31,936 Hz,
slightly below the nominal 32-kHz decoded rate. The bounded queue absorbs this
small mismatch for these tests. Indefinite operation would also need clock-drift
control and longer network-outage/endurance testing.

The RF center command remains 2422 MHz, PATH1, calibration gain 15 and pad 6.
Nominal FM is centered +375 kHz from that LO with at most ±74.22 kHz deviation;
it is mono WBFM near 2.4224 GHz, not broadcast-band FM. The successful live
captures use Pluto at 1 MS/s, LO 2422.375 MHz, manual RX gain 60, and 800-kHz
analog bandwidth. Mixing its measured residual carrier to zero leaves ample
room for the 125-kHz digital channel filter.

## Continuity and received fidelity

The receiver uses quadrature demodulation, 75 µs deemphasis and a 30-Hz high-pass
filter. The source is used to fit clock, gain and delay from the initial chirp,
then to score the held-out audio. It does not supply replacement playback
samples. **Blanking is disabled, and no pause-duration correction is applied.**

| Measurement | Known speech | Live B | Live C |
|---|---:|---:|---:|
| Completed buffers | 63/63 | 125/125 | 192/192 |
| RF stream duration | 4.041 s | 8.017 s | 12.313 s |
| Held-out correlation | 0.9945 | 0.9900 | 0.9891 |
| Held-out signal/error | 18.36 dB | 16.09 dB | 15.68 dB |
| Wrong-payload signal/error | −3.19 dB | −2.70 dB | −2.65 dB |
| Host batch handoffs | 0 | 0 | 0 |
| Out-of-range holds ≥100 µs | — | **0** | **0** |

[`analyze_bb_fm_continuity.py`](../research/tx/analyze_bb_fm_continuity.py)
independently measures frequency excursions beyond ±95 kHz in the raw RF. The
old handoffs held an integer NCO word roughly ±125 kHz from the intended center.
A nine-sample median at 400 kHz suppresses isolated discriminator noise; holds
of 100 µs or longer fail the gate. Only TX start/stop edges are excluded, not
internal block boundaries. The longest new excursion was 10 µs in run C;
there were no ≥100-µs holds in either live capture.

The [old recording fails the same detector](../output/rtl8922-bb-fm-old-handoff-control.json),
with a maximum 3.2425-ms hold and excursions at the seven previous handoffs.
This negative control checks that the detector can see the defect being fixed.
It does not prove exact timing of every NCO write or rule out every possible
waveform discontinuity.

Evidence: [speech](../output/rtl8922-bb-fm-continuous-demod-a.json),
[RF B](../output/rtl8922-bb-fm-icy-b.json), [RF C](../output/rtl8922-bb-fm-icy-c.json),
[audio B](../output/rtl8922-bb-fm-icy-demod-b.json),
[audio C](../output/rtl8922-bb-fm-icy-demod-c.json),
[continuity B](../output/rtl8922-bb-fm-icy-continuity-b.json),
[continuity C](../output/rtl8922-bb-fm-icy-continuity-c.json).
The [aggregate summary](../output/rtl8922-bb-fm-continuous-analysis.json) hashes
these reports and the delivered WAV.

The first live attempt also completed all 125 buffers, but its 2-MS/s CF32 file
exceeded the environment's per-file size limit during export. The failed report
and partial capture are preserved. Switching to 1 MS/s solved the export issue;
the runner now checks that file-size limit before enabling TX.

## Reproduce the bounded live test

Build the isolated image offline:

```sh
python3 research/firmware/bb_fm_continuous_patch.py \
  --firmware vendor/rtw89/firmware/rtw8922a_fw-4.bin \
  --output-firmware /tmp/rtl8922-bb-fm-continuous.bin \
  --report output/my-continuous-patch.json
```

With the demo stopped and the card released, run an explicit bounded test using
the original working module directory. All output paths must be fresh:

```sh
sudo timeout --signal=TERM --kill-after=10s 45s env OPENBLAS_NUM_THREADS=1 \
  RTL8922_DRIVER_DIR=/home/plaing/rtl8922-iq-research/la-driver \
  RTL8922_FIRMWARE=/tmp/rtl8922-bb-fm-continuous.bin \
  RTL8922_IW=/home/plaing/rtl8922-iq-research/iw-local/sbin/iw \
  bash research/firmware/run_bb_rom_test.sh \
  /home/plaing/rtl8922-iq-research/pluto-venv/bin/python \
  research/tx/bb_fm_continuous_probe.py --run-rf-test \
  --stream-url https://ice5.somafm.com/groovesalad-128-mp3 \
  --stream-blocks 192 --source-prefix vendor/local-rf-captures/my-radio \
  --patch-report output/my-continuous-patch.json \
  --report output/my-radio-rf.json --trace vendor/local-rf-captures/my-radio.cf32 \
  --hold 334 --center-mhz 2422 --rx-rate 1000000
```

Demodulate with `bb_fm_demod.py`, passing the resulting RF report, CF32 capture,
and saved source `.wav`/`.json`, plus `--skip-preamble`. Do **not** add
`--blank-impulses` for this continuous-path validation. Then run
`analyze_bb_fm_continuity.py` on the RF/audio reports.

All **46 firmware and 58 TX offline tests passed**. New checks cover native
service register preservation, crossing the former batch boundary in one
command, source cancellation, sequential consumption, 1-MS/s demodulation,
and positive/negative hold detection. Tests never launch hardware or network
probes automatically.

The [fresh final check](../output/rtl8922-bb-fm-continuous-final-state.json)
confirms Pluto TX off, settings restored, card released, temporary firmware
removed, original file hashes unchanged, no live radio decoder left running,
and the demo still stopped. Long-duration reliability, stereo, calibrated RF
power, arbitrary I/Q and normal networking coexistence remain unqualified.
