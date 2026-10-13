# NCO mute phase behavior and PDM amplitude — October 13, 2026

**The RF behaves as though the NCO phase accumulator freezes while its index
is zero, then resumes without resetting. Ordinary mute PDM therefore changes
frequency as well as amplitude. Frequency-compensated PDM demonstrates finite
narrowband amplitude control with one peripheral store per slot.** It does not
qualify independent amplitude/phase control, clean single-frame OFDM or a
wideband arbitrary-I/Q transmitter.

[Aggregate measurements](../output/rtl8922-bb-nco-gate-analysis.json) ·
[Phase and envelope plots](../output/rtl8922-bb-nco-gate-results.png)

## What the zero command does to phase

An isolated firmware variant plays 1024-entry tables using only writes to
BB-local `0xa000802c`. The separate attenuation stays at equal-I/Q code `0x12`
during playback. Each command emits 4,194,304 NCO writes in approximately
0.393–0.394 seconds, then mutes the source. Native counts are about 60 ticks
per store, consistent with the earlier **10.666-million-write/s** estimate:
one slot approximately every **93.75 ns**. Counter frequency is not an
independently established CPU or DAC clock.

The phase probe mixes unequal on-burst lengths with mute gaps from one through
105 write slots. Their timing distinguishes an oscillator that keeps running,
an accumulator that pauses, and a restart on every mute exit. The RF is fitted
to all three models with the same freedom in common delay, phase, gain and
small residual carrier offset. Quiet repetitions are selected by received
energy, before model comparison. TX-off data are processed identically.

| RF observation | Keep running | Pause during mute | Reset on unmute |
|---|---:|---:|---:|
| 4-MHz on-frequency, repeat C | 0.194 | **0.989** | 0.449 |
| 4.5-MHz on-frequency, B | 0.262 | **0.981** | 0.366 |
| 4.5-MHz on-frequency, confirmation D | 0.261 | **0.987** | 0.384 |

These are normalized complex waveform correlations, not EVM percentages.
Their TX-off fits remain below the qualification threshold. Nonzero frequency
writes do resume transmission; a separate start pulse is not required for each
mute exit in these tests. No claim is made about observing the internal
accumulator directly or verifying every peripheral latch independently.

With alternating zero/index-16 writes, the pause model correlates 0.936 while
the other models correlate only about 0.020. Its strongest coherent spectral
component lies at **+2 MHz**, although the on-frequency is +4 MHz. The missing
phase advance during off-slots explains why simple 50% mute duty does not
preserve the original carrier.

Evidence: [4-MHz phase](../output/rtl8922-bb-nco-gate-phase16-repeat-c-analysis.json),
[4.5-MHz phase](../output/rtl8922-bb-nco-gate-phase18-b-analysis.json),
[phase confirmation](../output/rtl8922-bb-nco-gate-phase18-confirm-d-analysis.json),
[alternating PDM](../output/rtl8922-bb-nco-gate-pdm-half-repeat-c-analysis.json).
Early captures that did not identify a phase model remain unqualified.

## Compensation and amplitude result

The compensated table tracks desired cumulative phase and adds the missing
advance to the next nonzero frequency command. This still uses one NCO store
per slot. It produces short bursts at higher instantaneous frequencies, so
the filtered desired component has amplitude compression and phase error
that depend on density and IF. It is not equivalent to a transparent amplitude
gate, and receiver filtering does not prove that unwanted RF emissions vanish.

Eight density plateaus were tested, followed by a smooth envelope
`0.55 + 0.35 cos(2 pi 20.833 kHz t)` at nominal +250-kHz and +1-MHz IFs.
The RF center remained 2442 MHz. Pluto sampled at 40 MS/s; the final smooth
tests used a 5-MHz analog receive bandwidth and moving reference tones around
the actual IF. Demodulated envelopes use a **100-kHz digital low-pass filter**.

| Measurement after repetition combining | 250-kHz IF | 1-MHz IF |
|---|---:|---:|
| Plateau complex-envelope EVM | **8.0%** | 20.3% |
| Plateau magnitude RMS error | 5.8% | 7.4% |
| Smooth AM complex-envelope EVM | **6.6%** | 23.5% |
| Smooth AM magnitude RMS error | **3.2%** | 4.6% |

The plateau observations combine 63/64 admitted repetitions; smooth AM
combines 64. One table lasts 96 microseconds. A single common time alignment
and complex gain are allowed; the analysis does not fit a separate correction
to each amplitude level. The lower IF reduces phase error. Small amplitudes
remain distorted: in the 250-kHz plateau test, density 0.125 measured about
0.092 relative amplitude with substantial phase error. The near-zero plateau
also contains receiver-filter transients and noise; it is not a mute-leakage
specification.

Without combining the data periods, the smooth 250-kHz-IF experiment has
**23.1% median magnitude error and 34.1% median complex EVM**. At 1 MHz those
numbers are 24.1% and 42.6%. This uses a constant gain calibrated on the first
eight admitted periods and scores the following 56 separately. CFO and timing
still come from the full-capture model fit, so it is not blind synchronization
or packet decoding. The same-gain TX-off control has approximately 104% EVM.
This establishes filtered repeated-waveform feasibility, not clean live AM.

Evidence: [250-kHz plateaus](../output/rtl8922-bb-nco-gate-pdm-quarter-compensated-f-analysis.json),
[1-MHz plateaus](../output/rtl8922-bb-nco-gate-pdm-low-compensated-c-analysis.json),
[250-kHz smooth AM](../output/rtl8922-bb-nco-gate-pdm-quarter-am-h-analysis.json),
[1-MHz smooth AM](../output/rtl8922-bb-nco-gate-pdm-low-am-h-analysis.json).

The phase-classification `qualified` field is deliberately false when the
compensated pause and ideal continuous models are too similar to distinguish.
Amplitude feasibility has its own explicit fields; inability to distinguish
two nearly identical phase predictions is not evidence of amplitude failure.

## Reproduction, checks and cleanup

The existing pinned table-player builder accepts `--nco-only`. The tested
firmware contains a 688-byte stub; its complete image SHA256 is
`c130bdf3f62142836ddb351563c81c613587beb5efa735c3b2f2542d44f17364`.

No working driver or NCTL program is changed. Twelve offline tests pass.
Emulator tests verify exact NCO/mute ordering, no amplitude stores
inside the loop, normal ABI handling, invalid requests and final muting.

[`bb_nco_gate.py`](../research/tx/bb_nco_gate.py) generates sources and analyzes
saved RF data offline. It reproduces the tested waveform types exactly.
The manual probe supports explicit receiver rate/bandwidth/offset and reference
index arguments; default settings retain the earlier OFDM behavior. Hardware
still requires `--run-rf-test` inside the existing maximum-45-second wrapper.
For example, on a stopped demo and released card, the final AM geometry was
40 MS/s, 5-MHz RX bandwidth, RX offset 1 MHz and control index 1 for the
250-kHz-IF source. Every capture has fresh snapshots and its own cleanup.

Twenty-five bounded RF attempts are preserved: fifteen passed the independent
RF controls and ten were rejected for clipping, weak reference tones or
contaminated off controls. Passing RF controls alone does not qualify a phase
model or amplitude waveform. Tables were read back before and after playback.
Raw captures, folded receiver samples and source arrays remain in ignored
`vendor/local-rf-captures/`; small JSON reports and plots contain the results.

The later [quiet-channel improvement tests](bb-nco-improvement-findings.md)
add settled complex-density correction and coherent frequency diversion.
They also correct a normalized-fold CFO ambiguity that can inflate uncombined
EVM. The historical measurements above are preserved; their uncombined EVM
should not be compared directly with the follow-up's corrected measurements.

The [independent final state check](../output/rtl8922-bb-nco-gate-final-state.json)
confirms Pluto TX off, restored Pluto settings, unchanged working modules and
wired route, no temporary firmware/config or experimental modules, card
released and demo still stopped. Some RF0 readbacks differ only in live RX
gain/bandwidth fields; those readbacks are retained. All other saved-register
checks and mute/unload cleanup completed.

No emission mask, 2-MHz OFDM improvement, indefinitely fed waveform stream,
20-MS/s update rate or whole-band qualification follows from these tests.
