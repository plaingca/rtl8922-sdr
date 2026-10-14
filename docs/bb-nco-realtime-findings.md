# Causal I/Q compilation and wider NCO OFDM — October 13, 2026

**The working bounded mode now carries a 200-kHz QPSK OFDM signal from
533.333 kS/s complex input. Commands are compiled during transmission.** Two
independent Pluto recordings recovered **1,011/1,024** and **1,016/1,024** exact
CRC16 frames, without repetition averaging, at **22.99%** and **21.59%** median
EVM. This doubles the previous demonstrated active-carrier span. It remains a
distorted experimental transmitter, not a general wideband DAC.

[Results plot](../output/rtl8922-bb-nco-realtime-results.png) ·
[Aggregate evidence](../output/rtl8922-bb-nco-realtime-analysis.json) ·
[Source metadata and hashes](../output/rtl8922-bb-nco-realtime-source-metadata.json) ·
[Final hardware state](../output/rtl8922-bb-nco-realtime-final-state.json)

## What changed

The earlier [100-kHz stream](bb-nco-narrow-ofdm-findings.md) replayed commands
from an offline whole-frame optimizer. The new C compiler chooses one command
at a time, retaining oscillator phase and complex error-feedback state. It
compares the desired I/Q against the analytic mean throughout the NCO slot,
adds leaky error feedback, and penalizes phase misalignment at the next slot.
There is no future frame search or known-payload optimization in the compiler.
Linear interpolation requires one input sample of lookahead.

The working command alphabet stays at physical indices **0..6**. Zero mutes
and pauses the physical phase; the other commands step NCO frequency. The
compiler models that behavior relative to the wanted +250-kHz carrier. The
nominal playback cadence remains **10.667 million commands/s**. Eight command
nibbles fit in each little-endian 32-bit host word. This is a constrained
switching representation of I/Q, not one independently writable complex DAC
sample per command, and it does not prove every store latches RF independently.

`bb_nco_realtime_writer.c` combines the compiler with the existing mapped PCIe
writer. Only the first **8,192 commands** are prepared before TX. A further
**4,186,112 commands** are computed during each successful RF burst. Sequence
ownership prevents the host from overwriting the buffer currently consumed by
the BBMCU. Native firmware service calls remain in the consumer between
buffers; there is no intentional local buffer repetition. The default isolated
firmware is unchanged, SHA256
`cc670f28e15dd6c46ebb5cf3fdd0c4bd02f11fad056396ea2eb1637ee3f10fb3`.

## RF results and scope

All full captures use the requested quiet carrier **2422.25 MHz**, Pluto
8 MS/s, actual LO about 2423 MHz, 5-MHz RX bandwidth, manual gain 50, and
8,388,608 samples. Each recording contains the complete approximately
0.394-second burst. Hardware gain and attenuation remain fixed. The four
4-byte payloads RT00..RT03 cycle, each with CRC16. Each frame supplies its own
timing, two training symbols for CFO/channel estimation, and pilots. There is
no inter-frame fitting or combining. Known transmitted bytes enter only the
post-decode scoring of errors and EVM.

| Active carrier-center span | Input rate | Envelope peak | Exact CRC frames / sent | Median EVM | Interpretation |
| --- | ---: | ---: | ---: | ---: | --- |
| 100 kHz | 266.667 kS/s | 0.7 | 510/512 | 20.19% | Causal compiler baseline |
| 200 kHz, A/B | 533.333 kS/s | 0.7 | 960/1024; 958/1024 | 28.60%; 29.31% | Wider mode before envelope tuning |
| **200 kHz, A/B** | **533.333 kS/s** | **0.9** | **1011/1024; 1016/1024** | **22.99%; 21.59%** | **Working bounded mode** |
| 250 kHz, successful retry | 666.667 kS/s | 0.9 | 989/1024 | 31.43% | Degraded experimental mode; earlier attempt underruns |
| 400 kHz, default alphabet | 1.067 MS/s | 0.7 | 175 raw CRC-valid frames / 2048 sent | Unqualified | Severe loss and distortion; rejected |

The 200-kHz working configuration uses feedback **0.97**, phase weight **1.0**,
and input envelope peak **0.9**. Increasing the input envelope from 0.7 matters:
the wider result should not be attributed to compiler speed alone. Paired
working runs deliver **2,027/2,048 frames (98.97%)**. The measured frame period
is about 385.125 us; four payload bytes per frame offer 83.09 kbit/s and deliver
approximately **82 kbit/s** after losses. This is this small custom frame's
payload rate, not a capacity estimate.

The two working runs detect 1,019 and 1,023 preambles respectively, leaving
five and one erased preambles. Eight and seven detected frames fail CRC.
Both TX-off and wrong-training controls yield zero CRC-valid frames. Captures
have no ADC clipping; reference tone movement, half-amplitude and TX-off
checks pass independently of the payload decoder.

“200 kHz” measures the span of outer active subcarrier centers. It does not
specify occupied-power bandwidth, adjacent-channel leakage or an emission
mask. Frequency diversion and mute generate unwanted energy; transmit
filtering and a spectrum qualification remain necessary before claiming a
spectrally clean waveform.

## Compiler speed and refill limit

For the working runs, compiling a 4,096-command buffer takes a median
**67.0–67.1 us**. Mapped filling takes about **153 us**. Worst observed
compile-plus-fill times are **321.4 us** and **313.2 us**, below the nominal
**384-us** buffer deadline. Both consume **1024/1024 buffers**, with 1,022
uploaded during playback and no local repetitions.

One 250-kHz attempt misses the deadline: compile-plus-fill reaches **570.9 us**,
producer error is `-32`, BB status is 4, and only 927 buffers complete. The
consumer mutes on underrun. That attempt is retained and rejected; the later
successful retry does not establish indefinite scheduler reliability. This is
not a bandwidth-dependent hardware limit by itself: even the 200-kHz mode
remains vulnerable to a long host scheduling delay with only two buffers.

The earlier probe surfaced a final-buffer mismatch before the producer error
in that failed run. That message does not establish memory corruption. The
probe now preserves acquired RF before qualification and reports producer
failure first. The original failure report remains unchanged, and its raw RF
trace was not preserved by that older ordering.

Fourteen RF attempts are preserved; thirteen complete transport and independent
static RF controls. Several parameter choices worsen fidelity. At 400 kHz,
sparse detections make timing-derived sequence labels and EVM scoring
uncertain, so the 175 raw CRC results do not qualify a usable mode.

An optional 16-entry extended alphabet also completes command transport. Its
short 40-MS/s snapshot contains no OFDM preambles, but its RX call starts after
the finite TX ends. Queued capture timing is unverified, so it cannot establish
that the extended alphabet itself failed to synthesize the waveform. It is
unqualified and disabled by default. No 500-kHz RF test was performed; favorable
offline model results are not RF evidence.

## Application interface

The hardware-free compiler accepts interleaved little-endian float32 I/Q
(CF32). Complex magnitude must be finite and at most 1. Preserve one compiler
instance for the entire stream; it retains phase, interpolation fraction and
complex error across arbitrary input chunks. The working input rate is
10.667 MHz / 20 = **533.333 kS/s**. Scale an application waveform to peak 0.9
when reproducing the demonstrated OFDM mode.

```sh
cc -O3 -Wall -Wextra -Werror -shared -fPIC \
  research/tx/bb_nco_realtime.c -lm -o /tmp/nco-compiler.so
cc -O3 -Wall -Wextra -Werror -shared -fPIC \
  research/tx/bb_nco_realtime_writer.c -lm -o /tmp/nco-online-writer.so
python research/tx/bb_nco_iq_pipe.py --library /tmp/nco-compiler.so \
  --factor 20 --chunk-samples 256 < input.cf32 > commands.bin
```

Stdout is packed binary commands only, flushed after each chunk; JSON timing
and counts go to stderr at EOF. The pipe is unpaced and applies stdout
backpressure. It keeps one sample of interpolation lookahead and may leave
fewer than eight native commands unreturned at EOF. Append a final held I/Q
sample when a finite producer needs that interpolation tail.

A [full-input pipe check](../output/rtl8922-bb-nco-realtime-pipe-check.json)
converted 0.393 seconds of the working I/Q source in 0.097 seconds, about
**4.06 times real time** on this host, including Python chunk handling and file
I/O. Its first 4,194,304 commands match absolute-time block compilation exactly.
This is an unpaced software benchmark; it does not measure live-source jitter.

For direct integration, add `research/tx` to the Python module path:

```python
from bb_nco_realtime import Compiler
compiler = Compiler('/tmp/nco-compiler.so', feedback=.97, phase_weight=1.)
for cf32_chunk in input_chunks:
    words = compiler.feed_iq(cf32_chunk, factor=20)
    command_queue.write(words.tobytes())
```

The pipe/API never opens hardware. A device queue must supply buffering and
meet the BB refill deadline. The demonstrated RF transport accepts a finite
prepared I/Q array, compiling it as buffers become free. **An external live
socket/audio/modem source has not yet been connected to RF in these tests.**
Thus online command synthesis is demonstrated; upstream I/O scheduling and
long-duration operation remain a separate qualification.

Use ordinary `-O3`, not `-ffast-math`: the latter can alter floating-point
subnormal handling in the Python process. Tests compile the strict library at
`/tmp/rtl8922-nco-realtime-strict.so` and verify exact chunk continuity,
causality, input bounds, pipe output, and independent modeled OFDM decoding.

## Reproduction and restoration

Generate I/Q only; this performs no command-table optimization or hardware I/O:

```sh
python research/tx/bb_nco_realtime.py --name my-rt200 \
  --oversample 20 --factor 20 --feedback .97 --weight 1 --peak .9
```

Use fresh names; sources go under ignored `vendor/local-rf-captures/`.
Reconstruct the default stream firmware with
`research/firmware/bb_nco_stream_patch.py` as in the previous streaming report.
For an explicitly authorized manual RF run, retain that report's maximum
45-second launcher, isolated firmware, fresh saved settings and restore path.
Use `bb_polar_ofdm_probe.py` with these changes to its full-stream invocation:

```sh
--realtime-iq --mapped-writer /tmp/nco-online-writer.so \
--source-report vendor/local-rf-captures/bb-nco-realtime-20261013/my-rt200.json \
--payload vendor/local-rf-captures/bb-nco-realtime-20261013/my-rt200.bin \
--rx-rate 8000000 --rx-offset 1000000 --rx-bandwidth 5000000 \
--samples 8388608 --capture-whole-pattern --repeats 1 --stream-blocks 1024
```

Keep `--center-mhz 2422 --control-base-index 1 --fixed-amplitude-code 0
--rx-gain 50`, the default stream patch report, and fresh report/trace paths.
No probe runs automatically as a test. Raw I/Q, command tables, firmware and
compiled binaries remain private/ignored.

`analyze_bb_nco_ofdm_stream.py` reproduces individual-frame reports from
private hash-checked traces and sources. `analyze_bb_nco_realtime.py` reproduces
the public aggregate and plot using saved reports and public source metadata:

```sh
python research/tx/analyze_bb_nco_realtime.py \
  --plot output/rtl8922-bb-nco-realtime-results.png
```

Thirty hardware-free compiler, receiver, firmware and optimizer tests pass.
Default and experimental C libraries build with warnings treated as errors.
The local offline Python environment warns that its NumPy version exceeds
SciPy's declared range; all tests pass, but use matching dependency versions
for a clean reproduction.

All cleanup actions complete without errors and saved Pluto settings restore
exactly. Thirteen per-run RTL readbacks differ from their saved values only in
RF register 0 bit 15; these differences are preserved in the aggregate and are
not described as exact register restoration. Their cause was not established
by these tests. Final independent checks confirm **Pluto TX off, RTL card
unbound, demo stopped**, original working modules unchanged, no experiment
modules or temporary firmware/configuration, and unchanged wired routing.
