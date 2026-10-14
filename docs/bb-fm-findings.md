# BBMCU NCO FM audio — October 13, 2026

**Follow-up:** [Continuous FM and live radio](bb-fm-continuous-findings.md)
removes the batch handoffs. The results below preserve the earlier batch-based
experiment and its limitations.

**A known spoken payload was transmitted through the BBMCU NCO and recovered
from Pluto in two consecutive complete runs.** The phrase is “This is the Realtek
radio. Testing one, two, three.” Both runs consumed all 63 audio buffers without
an underrun. This is a finite mono FM experiment, with brief firmware-service
pauses; it does not establish a gapless transmitter or arbitrary I/Q output.

Local audio artifacts (ignored by Git and absent from public downloads):

- Received speech, impulse blanking enabled: `output/audio/rtl8922-bb-fm-received.wav`
- Unblanked demodulation: `output/audio/rtl8922-bb-fm-unblanked.wav`
- Original synthesized source: `output/audio/rtl8922-bb-fm-source.wav`

The [evidence summary](../output/rtl8922-bb-fm-analysis.json) hashes its inputs
and audio artifacts. Raw I/Q remains under ignored `vendor/local-rf-captures/`.

## Why the frequency-pattern decoder failed

The previous failure did not establish that the NCO was too slow. Repeating the
same firmware pattern with retained I/Q exposed inadequate signal level and an
unhelpful receiver IF. In the old setup, quiet portions were close to the ADC's
one-count floor. The direct phase-difference discriminator operated around
1.25–1.75 MHz in a 4 MS/s stream, where noise can wrap phase differences across
the ±2 MHz boundary. Nearby Wi-Fi also produced much larger transient signals.
A strong narrow FFT peak was insufficient evidence for a clean instantaneous
frequency measurement.

The successful combined change used Pluto gain 60 instead of 30, TX calibration
gain 15 instead of 8, RF11 pad code 6 instead of 0, and zero receiver LO offset
instead of −1 MHz. The pattern then occupied approximately +250/+750 kHz.
These changes were tested together, so their individual contributions have not
been isolated. The pad value comes from the native 8922A 2-GHz IQK routine; it
is not an RF output-power calibration.

| Same finite frequency pattern | Old setup A | Adjusted setup B |
|---|---:|---:|
| Recovered update rate | 308,997/s | 309,041/s |
| Held-out correlation | −0.0028 | **0.9519** |
| Held-out signal/error | −29.88 dB | **9.85 dB** |
| Wrong-pattern signal/error | −29.88 dB | −3.75 dB |
| Recovered half swing | 23.1 kHz | **248.5 kHz** |

The failed fit's apparent update rate is not evidence of successful decoding.
Reports: [A](../output/rtl8922-bb-dds-pattern-diagnostic-a.json),
[B](../output/rtl8922-bb-dds-pattern-diagnostic-b.json).

A receive-only [channel survey](../output/rtl8922-bb-fm-rx-survey.json) found
2422 MHz substantially quieter than 2442 MHz during this session. Audio tests
used that channel. This is WBFM near 2.4224 GHz, not FM broadcast-band operation.

## Firmware and host streaming

[`bb_fm_patch.py`](../research/firmware/bb_fm_patch.py) builds a separate 656-byte
experimental payload in verified BB IRAM padding. It uses the established
runtime dispatcher hook at `0x1001280a`, command `0x3fd`, magic `0x464d3031`, and
BB-local NCO register `0xa000802c`. The pinned original firmware and working
driver are unchanged. No ROM, eFuse or other nonvolatile state is patched.

Two 2,048-byte buffers at `0x10016800` hold unsigned audio values. The host owns
the ready sequence words; BB owns the consumed count. The host publishes a
buffer only after filling it and cannot overwrite an unconsumed buffer. This
uses host MMIO block uploads, **not PCIe DMA**. Uploads take about 3–5 ms against
roughly 64 ms of audio per buffer.

Each byte sets a fractional frequency:

```text
fraction = audio_byte / 256
mean frequency = 250 kHz * (1 + fraction)
```

A fast accumulator dithers hardware NCO indices 1 and 2. Each audio byte lasts
334 iterations. The measured audio clock is approximately 31,936 samples/s;
the nominal source is 32 kHz, with 75 µs preemphasis and maximum requested
deviation ±74,218.75 Hz around a nominal +375 kHz carrier offset. This is mono;
no stereo multiplex or RDS is generated. Interrupts stay enabled. The experiment
does not establish CPU clock, cycle-exact bus timing, or independent phase control.

### Long-command failure and cooperative batches

The first four-second command lost valid BB RAM reads after about 24 buffers:
`consumed` became `0xdeadbeef`. Its exact hardware cause is unresolved; firmware
service starvation is a working explanation, not a proved watchdog diagnosis.
The original short experiments never exercised this duration. The host now
rejects invalid or regressed counters immediately.

The successful payload processes at most eight buffers per command, returns to
the normal firmware, then resumes at the next sequence. Returning approximately
every 0.513 seconds eliminated this failure in the subsequent complete runs.
The NCO remains at its last integer index during the handoff, causing seven
out-of-range frequency holds of about 2.3–3.25 ms. Thus the carrier continues,
but audio-sample updates are **not gapless**. Final completion, underrun and
cancellation mute the NCO; host cleanup also stops TX.

A later run exposed a host read race: `consumed` was read just before a boundary,
then the completion record just after it. The host incorrectly compared 31 with
32 and stopped. The corrected host uses the completed record and verifies the
now-stable consumed count. Final runs E and F both completed after this fix.
Failed reports remain preserved: [long command A](../output/rtl8922-bb-fm-speech-a.json),
[capture-export timeout B](../output/rtl8922-bb-fm-speech-b.json), and
[read race D](../output/rtl8922-bb-fm-speech-d.json).

## Received audio and limits

Pluto receives at 2 MS/s with manual gain 60. The offline receiver mixes the
measured carrier to zero, applies a 125 kHz channel low-pass filter, performs
quadrature FM demodulation, downsamples to 32 kHz, and applies 75 µs deemphasis
and a 30 Hz high-pass filter. These are conventional receiver operations; see
[GNU Radio's quadrature demodulator](https://wiki.gnuradio.org/index.php/Quadrature_Demod)
and [FM deemphasis](https://wiki.gnuradio.org/index.php/FM_Deemphasis).

The cleaned recording interpolates **only brief frequency excursions beyond
±95 kHz**, which exceed the requested modulation range. Detection does not use
the source audio. It repairs approximately 0.5% of the stream, primarily the
seven handoffs. The unblanked WAV preserves their clicks. Neither WAV inserts
source speech, removes the handoff durations, or reconstructs missing words.
The final playback file trims the initial synchronization chirp and padded tail.

The initial 120-ms chirp estimates clock, delay and gain. For fidelity metrics,
RF-measured pause durations account for the seven sample-clock interruptions.
The speech body is held out: it does not fit clock, gain, delay, or pause length.
Without accounting for those pauses, full-clip sample correlation fails; that
naive result is also retained in the individual demodulation reports.

| Final repeated run | E | F |
|---|---:|---:|
| Buffers consumed | 63/63 | 63/63 |
| Stream duration | 4.0594 s | 4.0612 s |
| Audio clock | 31,936.24 Hz | 31,936.05 Hz |
| Held-out correlation, accounting for measured pauses | **0.9849** | **0.9852** |
| Held-out signal/error | **14.45 dB** | **14.54 dB** |
| Wrong-payload signal/error | −3.21 dB | −3.21 dB |
| Interpolated fraction | 0.498% | 0.532% |
| ADC clipping | 0 | 0 |

Evidence: [RF E](../output/rtl8922-bb-fm-speech-e.json),
[RF F](../output/rtl8922-bb-fm-speech-f.json),
[audio E](../output/rtl8922-bb-fm-speech-demod-e.json),
[audio F](../output/rtl8922-bb-fm-speech-demod-f.json).
Two successful repeats support this bounded payload demonstration, not a
long-duration reliability or broadcast-quality claim. Unblanked fidelity,
continuous scheduling, stereo, wider audio bandwidth, and arbitrary I/Q remain
unqualified. The next transmitter improvement is a scheduled firmware consumer
that services normal firmware without holding an integer NCO word at handoffs.

## Reproduction and validation

The new tools default to offline operation. Hardware tests are explicit and
must use the bounded manual launcher, the user's stopped/released card, fresh
settings snapshots, and the unchanged working modules.

1. Generate the known phrase with `bb_fm_speech_source.py --output SOURCE.wav`
   (`libespeak-ng.so.1` is required), then use `bb_fm_audio.py --speech SOURCE.wav
   --prefix PRIVATE/speech`. Source/payload files belong under ignored storage.
2. Build isolated firmware with `bb_fm_patch.py --firmware ORIGINAL
   --output-firmware /tmp/rtl8922-bb-fm.bin --report PATCH.json`.
3. Run `bb_fm_probe.py --run-rf-test --payload PRIVATE/speech.bin --patch-report
   PATCH.json --report RF.json --trace PRIVATE/rf.cf32 --hold 334 --center-mhz 2422`
   inside `run_bb_rom_test.sh`, wrapped in a 45-second timeout. The existing
   `RTL8922_DRIVER_DIR`, `RTL8922_FIRMWARE` and `RTL8922_IW` variables select the
   original modules, temporary image and local iw executable.
4. Demodulate with `bb_fm_demod.py --trace PRIVATE/rf.cf32 --rf-report RF.json
   --source PRIVATE/speech.wav --source-metadata PRIVATE/speech.json
   --output RECEIVED.wav --report AUDIO.json --blank-impulses --skip-preamble`.
5. `analyze_bb_fm.py` checks the saved E/F evidence and hashes the artifacts.

All 45 firmware tests and 53 TX tests passed offline. New tests execute the
actual RISC-V payload in Unicorn, check density, bounds, cancellation, buffer
ownership, cooperative return/resume, and register preservation. Receiver tests
recover synthetic FM, reject invalid memory counters, test the source-independent
blanker, and reject unexplained pause counts. No hardware probe is run by tests.

The [fresh final check](../output/rtl8922-bb-fm-final-state.json) confirms Pluto
TX off, settings restored, card released, working modules unloaded, temporary
firmware/config removed, and demo still stopped. Some RF0 gain readbacks vary
when RX AGC resumes; these are retained in the individual reports. The original
working patch and pinned firmware hashes still match their pre-test values.
