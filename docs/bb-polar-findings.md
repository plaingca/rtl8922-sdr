# BBMCU polar modulation investigation — October 13, 2026

The 20 MS/s goal remains unmet. Independent frequency and scalar-amplitude
control now work over RF, but this BBMCU register path delivers about
**5.333 million complete pairs/s**. It needs two peripheral stores per pair.
Removing arithmetic and unrolling the stores did not improve that rate.

This is an isolated experiment using the unchanged working modules and
separate temporary firmware. It does not qualify an arbitrary-I/Q transmitter,
20 MS/s polar streaming, or the full mutual tuning range.

## Measured bottleneck

[`bb_polar_patch.py`](../research/firmware/bb_polar_patch.py) intercepts mailbox
command `0x3fb` after normal firmware startup. Finite loops issue 32 unrolled
stores/pairs per iteration. Other commands preserve the original handler.
Unicorn checks the emitted writes, ABI restoration, invalid-argument rejection,
CSR restoration and pinned-image mutation bounds.

| RF-idle operation | Counter ticks per operation | Largest host-bracket lower bound |
|---|---:|---:|
| NCO store alone | approximately 60 | 10.65 million/s |
| ITQT store alone | approximately 60 | 10.66 million/s |
| NCO followed by ITQT | approximately 120 | 5.33 million pairs/s |
| Unrolled CPU NOP control | approximately 1 | over 610 million/s |

Evidence: [initial stores](../output/rtl8922-bb-polar-runtime-a.json),
[native cycle counts](../output/rtl8922-bb-polar-runtime-b.json).
The `mcycle` read is also present in the native ROM at `0x10005452`.
Counter ticks must not be confused with independently measured CPU clock or
DAC sample clock. Long peripheral loops imply a counter frequency near
640 MHz; this does not validate the original assumed 160 MHz core clock.

The [public Realtek cache header](https://github.com/Ameba-AIoT/ameba-rtos/blob/master/component/soc/common/include/cmsis/cache_riscv.h)
matches the native instruction-memory CSR setup and identifies the write-buffer
bit at `0x7c1[20]`. Runtime `MCCTL1=0x03100216` already has that bit set.
[Explicitly enabling it](../output/rtl8922-bb-polar-runtime-c.json) produced no
speedup. A [temporary noncacheable device-attribute change](../output/rtl8922-bb-polar-runtime-d.json)
changed `MCCA` from `0x81811111` to `0x81a11111`, with the uncacheable merge
policy left zero. It also produced no speedup. Both CSRs restored exactly.
Neither experiment supports enabling write coalescing for sample dispatch.

## RF evidence for independent controls

The frequency register is BB-local `0xa000802c`; its low 12 bits select signed
250 kHz increments. Scalar amplitude uses BB-local `0xa00082cc`, with equal
I/Q attenuation codes. `0x12` selects one quarter, and `0x1b` one eighth.
The previously measured powers-of-two attenuation is now checked externally.

The finite pattern independently selects NCO index 8/24 and ITQT code
`0x12`/`0x1b` using different 32-bit patterns. The high register fields are
preserved. One command emits 4,194,304 pairs, then mutes the NCO and restores
ITQT. Interrupts remain enabled. There is no host buffer handoff in this loop.

| Center | Frequency-control movement | Half-amplitude control | Spectral paired rate |
|---|---:|---:|---:|
| 2422 MHz | 4.001465 MHz | −5.96 dB | 5.333359 MS/s |
| 5180 MHz | 4.000244 MHz | −5.66 dB | 5.333364 MS/s |
| 5500 MHz | 3.999939 MHz | −6.34 dB | spectral fit unqualified |

The 2422 MHz [RF capture](../output/rtl8922-bb-polar-rf-b.json) and
[rate analysis](../output/rtl8922-bb-polar-rf-analysis-b.json) are separate from
the 5180 MHz [RF capture](../output/rtl8922-bb-polar-rf-5180-e.json) and
[rate analysis](../output/rtl8922-bb-polar-rf-analysis-5180-e.json).
The 5180 MHz run passes frequency movement, amplitude, both TX-off controls
and zero clipping. Its nine qualified comb lines span 32 harmonic orders;
maximum common-spacing residual is below 10 Hz. The original 2422 MHz run
used the earlier control FFT and has no clipped buffers; its report preserves
both off measurements, but predates the explicit aggregate off gate.

The final 5500 MHz [capture](../output/rtl8922-bb-polar-rf-5500-c.json)
passes static motion, amplitude, both off controls and clipping. It contains
visible pattern-related spectral lines, but too few exceed the analyzer's
18 dB local-floor threshold to qualify an independent rate fit. Its BB counter
measurement remains approximately 120 ticks/pair; this cannot replace the
missing RF-rate qualification.

The native 5-GHz IQK sequence uses RF11 mid-field value 5 and low-field pad 14.
The experimental `--native-5g-gain` option applies those fields transactionally.
It is separate from the 2.4-GHz calibration setup. A tone's presence alone does
not qualify a band: initial low-SNR and overloaded captures were rejected and
retained in the reports.

The analyzer fits RF line positions rather than converting CPU counters to RF
rate. It requires at least eight lines, a span of at least 16 harmonic orders,
and a tight common-spacing residual. Synthetic modulation and a strong static
tone provide positive and negative controls. A periodic spectral fit alone
does not establish every individual update, arbitrary payload fidelity, exact
jitter, or sustained gap-free operation.

## Capture timing correction

The first larger-buffer 5500 MHz attempt passed the static controls but did
not yield a qualified pattern spectrum. The runner previously started the
sub-second BB command before allocating the Pluto buffer. The current runner
warms that buffer before the command and discards a queued static-pilot buffer.
It records command and capture-call times. The final retry took 0.202 seconds
to warm the buffer before starting the command, and both capture calls fell
inside the approximately 0.788-second command window. Its spectral fit still
failed, so allocation is not an explanation for that remaining failure. The
change removes allocation timing as an uncontrolled variable. A failed spectrum must not be relabeled a
USB bandwidth success.

Raw captures remain private under ignored `vendor/local-rf-captures/`.
The Pluto configuration and every RTL control touched by the RF transaction
are freshly saved, TX is stopped in `finally`, and settings are restored.
The wrapper unloads the modules and removes its temporary firmware/config.
The user-stopped demo is never restarted.

## Native sequencer lead remains unqualified

NCTL may offer a path around the CPU peripheral-store limit. Its inferred
byte-write ISA and native start/stop calls were traced before attempting
RF-idle canaries. The experiments changed no NCO or RF transmit mode.

Program-window reads returned the same word at all 1024 addresses. Tested
access modes and the native KIP clock forces did not establish addressed RAM
readback. A bounded test using the unchanged pinned load element for restoring
program words did not produce the intended byte value or completion marker.
Preserving the base header changed the target register, but still failed the
expected semantics. That is a rejected canary, not sequencer code-execution
qualification. Reports [G](../output/rtl8922-nctl-canary-g.json),
[H](../output/rtl8922-nctl-canary-h.json), and
[I](../output/rtl8922-nctl-canary-i.json) preserve the observations.

The last canary restored its ordinary target, clock and access controls, but
the program-window readback could not verify the restored header. The wrapper
subsequently unloaded/reset the experimental firmware. A reliable addressed
program interface and stop/restore check remain necessary before sequencer RF
modulation. The partial static decoder must not treat unknown operations as
no-ops.

## Remaining completion requirements

- A physically verified 20 million complete polar updates/s, preserving each
  update. The current two-store loop is approximately 3.75 times too slow.
- Gap-free sustained execution, including timer service and host refill where
  applicable. A finite repeating register pattern is insufficient.
- Polar waveform fidelity, amplitude/frequency timing alignment and distortion
  characterization. The current amplitude control has coarse scalar levels.
- RF qualification across the mutual tuning segments, including their edges.
  Three tested centers, only two qualified spectral rates, and the existing
  receive-range evidence do not cover it.

The complete objective remains active. None of these requirements is waived
by the successful live-FM work or by a wide-looking spectrum.

Eight hardware-free firmware and spectral-analysis tests pass. The
[aggregate report](../output/rtl8922-bb-polar-analysis.json) preserves evidence
hashes and each unmet completion requirement. The
[fresh final check](../output/rtl8922-bb-polar-final-state.json) independently
confirms TX off, saved Pluto settings restored, the card released, temporary
files removed and working module/patch hashes unchanged.
