# Quiet-channel NCO synthesis improvements — October 13, 2026

**All three ideas were tested over the air on the quiet 2422.25-MHz path.**
Settled gain/phase correction improves both independent comparisons. Joint
filtered-I/Q optimization also improves both comparisons when its commands are
restricted to index 0..6; the wider signed-command version loses. Four-slot
frequency diversion works and gives the most consistent combined result, but
moves substantial RF power into the detour band and requires transmit filtering.

[Aggregate results](../output/rtl8922-bb-nco-improve-analysis.json) ·
[Comparison plots](../output/rtl8922-bb-nco-improve-results.png) ·
[Independent final state](../output/rtl8922-bb-nco-improve-final-state.json)

## Matched RF comparison

These are **narrowband known-AM experiments, not a new 2-MHz OFDM result**.
The target envelope is `0.55 + 0.35 cos(2 pi 20.833 kHz t)` with constant
wanted-carrier phase. Each 1024-command table lasts nominally 96 microseconds.
The same existing NCO-only firmware runs 4096 repeats, about 0.393 seconds,
and mutes autonomously. Each request writes 4,194,304 commands. Native counter
measurements remain approximately 60 ticks per store, consistent with
**10.667 million writes/s**, not a new CPU/DAC clock qualification or 20 MS/s.

Matched comparisons use RTL LO 2422 MHz, wanted NCO offset +250 kHz, equal-I/Q
amplitude code 0, Pluto gain 50, 40 MS/s, RX LO 2423 MHz and 5-MHz analog RX
bandwidth. Tone motion, a separate half-amplitude control, before/after TX-off
controls, zero clipping, unchanged table readback and cleanup must pass.
Actual RF has the common measured oscillator offset; the commanded frequency
is not an absolute-frequency calibration.

The two columns show the **range across two independent captures**, B and C.
Each single-period entry is that capture's median EVM across separately scored
96-us periods. The combined column averages admitted data periods first.

| Method | Single-period median complex EVM | Combined complex EVM |
|---|---:|---:|
| Baseline: density, then phase catch-up | 7.80–8.84% | 6.62–6.96% |
| Joint optimizer, signed index −16..16 | 9.86–11.88% | 8.14–9.08% |
| **Joint optimizer, positive index 0..6** | **4.00–6.82%** | **2.19–5.35%** |
| **Settled complex density calibration** | **6.07–6.29%** | **3.25–3.64%** |
| **Four-slot frequency diversion** | **4.62–7.30%** | **2.58–2.72%** |

All envelopes use the same 100-kHz digital low-pass filter. Repetitions with
broadband received energy above 1.5 times the median are excluded; the first
and last two periods are also excluded for edge effects. One complex gain is
calibrated on the first eight admitted periods; subsequent periods are scored
individually, without a separate gain/phase correction per period. Timing and
one common CFO are fitted using the known waveform across the full capture.
This is conditional quiet-period performance with known synchronization,
not blind synchronization, packet decoding, or error across every OTA period.
Exact admitted counts and same-gain TX-off EVM are retained in each analysis.

Initial captures at amplitude code 18 / Pluto gain 40 were noisy and are
preserved as A runs. They are excluded from this matched comparison. Thus
these numbers do not attribute the whole change from older experiments to
quiet-channel selection or synthesis alone.

## 1. Joint amplitude/phase optimization

The offline optimizer minimizes complex Fourier error inside the wanted
100-kHz low-pass response. Each NCO command is modeled by its **analytic
continuous-time integral throughout the write slot**, including evolving phase
and zero output for mute. It does not approximate each pulse by its endpoint.
Paired command edits preserve total accumulated phase while accounting for the
phase change throughout the interval between the edits. Playback remains one
peripheral store per slot; the BBMCU does no new optimization work.

The signed index −16..16 search predicts 0.332% filtered model EVM, versus
6.249% initially, but measured RF EVM worsens. It introduces negative and
larger frequency excursions whose dynamic transfer was not separately
calibrated. Restricting the search to index 0..6, at most +1.5 MHz, predicts
0.535% model EVM and improves both measured RF comparisons. The sign and
excursion range changed together, so these trials **do not isolate the exact
cause** of the wider search's failure. The ideal pulse model still misses
hardware behavior: its sub-percent prediction is not achieved on RF, and the
constrained method's two measured runs differ appreciably.

Minimizing filtered error lets quantization error move outside the wanted
band. This is an offline spectral-error search, not a demonstrated stable
real-time delta-sigma loop, and these measurements do not establish a lower
transmitted out-of-band emission level. Neither the best model score nor the
best single RF capture is promoted as a general arbitrary-I/Q solution.

## 2. Longer-hold complex calibration

Each of eight calibration tables holds one density for **72 microseconds**,
then full density for a 24-us reference. This is six times the old 12-us
plateau. The test is scored between 24 and 48 us; the reference is scored
between 80 and 88 us. These guards exclude step transients. The normalized
first-half/second-half test-window difference is 0.05–0.44% of full amplitude
across the eight points, supporting settling within the scored window.

| Density | Settled relative amplitude | Settled phase |
|---|---:|---:|
| 0.125 | 0.1221 | −34.63° |
| 0.250 | 0.2477 | −14.75° |
| 0.375 | 0.3758 | −8.18° |
| 0.500 | 0.5028 | −5.29° |
| 0.625 | 0.6265 | −3.24° |
| 0.750 | 0.7520 | −1.69° |
| 0.875 | 0.8752 | −0.81° |
| 1.000 | 0.9995 | −0.08° |

Amplitude is close to density; phase is not. The correction inverts the
measured amplitude curve and adds the opposite interpolated phase correction
to the desired cumulative phase before quantizing the nonzero commands. Phase
closes across the repeating table. This table uses index 0..6 and was tested
on the smooth target independently of its eight static calibration captures.
The repository's calibration command reproduces the transmitted payload
byte-for-byte. Its stable improvement is the cleanest evidence for carrying
this calibration forward, within the tested density/IF/filter settings.

## 3. Frequency diversion

An on block uses index 1, +250 kHz. An off-equivalent block uses index 33,
+8.25 MHz, for four write slots. Relative to the wanted carrier, the detour
adds `8 MHz × 375 ns = 3` turns. Its integral over those four slots at the
wanted carrier is zero in the ideal model, and it returns at the same wanted
phase. **There are no zero/mute commands in this table.** Density is generated
at the four-slot block rate, so duty changes have coarser time resolution.

A separate wideband capture verified static +8.25/+8.75-MHz tones moving by
499.878 kHz. All four source controls were 24.7–32.1 dB above both off controls.
A 30-MHz analog RX bandwidth / gain-25 capture passed with zero clipping.
Its filtered source-model correlation was 0.9896; the two narrow captures gave
0.9987–0.9992. The wanted-channel result is consistent with coherent phase
return and works better than muting in these finite trials. It is not direct
observation of an internal phase accumulator or proof of every write latch.

The wideband capture also shows why filtering matters: the integrated
200-kHz detour-band receiver power is **3.54 dB below the wanted band**, with
on/off differences of 8.90 and 11.95 dB respectively. These are uncalibrated
receiver measurements amid other RF activity, not an emission-mask result.
The first wideband attempt at gain 50 clipped and was rejected before table
playback; it remains in the evidence. Digital filtering in Pluto does not
remove the energy already transmitted near RF 2430.25 MHz. Practical use
needs an appropriate transmit filter and a fresh spectral measurement.

[Wideband spectrum/control evidence](../output/rtl8922-bb-nco-improve-diversion-spectrum.json)

## Receiver-analysis correction

The old CFO search maximized normalized correlation of a folded waveform.
A wrong CFO can attenuate the fold without changing its shape, leaving that
normalized score almost unchanged while inflating uncombined EVM. The new
analyzer refines CFO from the phase slope of per-period known-waveform
projections. It applies one common correction, preserving phase noise and
variation between scored periods. A synthetic test recovers a known CFO from
an intentionally wrong initial estimate.

All final comparisons use `*-analysis-v2.json`. Earlier v1 analyses are
preserved and superseded. The initial apparent improvement of the unrestricted
optimizer under v1 does not survive this correction. Historical gate reports
remain historical; their uncombined metrics should not be compared directly
to these corrected, stronger-signal measurements.

## Reproduction and cleanup

[`bb_nco_improve.py`](../research/tx/bb_nco_improve.py) provides offline
`generate`, `optimize`, `calibrate` and `analyze` commands. The constrained
search used `optimize --name joint-positive --steps 120000 --nonnegative`;
the signed search used 60,000 proposals. Both use seed 93. Calibration accepts
the eight saved hold-analysis reports through `calibrate --reports ...`.
[`analyze_bb_nco_improve.py`](../research/tx/analyze_bb_nco_improve.py) reproduces
the aggregate and plots from the saved small reports and ignored private traces.

The existing [manual table probe](../research/tx/bb_polar_ofdm_probe.py) adds
explicit `--control-base-index 33` and `--fixed-amplitude-code 0` options;
defaults preserve the earlier geometry. It still requires `--run-rf-test` and
the existing maximum-45-second isolated-firmware launcher. Narrow comparisons
use `--center-mhz 2422 --rx-rate 40000000 --rx-offset 1000000
--rx-bandwidth 5000000 --rx-gain 50 --control-base-index 1
--fixed-amplitude-code 0`. The wide diversion check uses gain 25, bandwidth
30000000 and control index 33. The unchanged 688-byte NCO-only firmware image
SHA256 is `c130bdf3f62142836ddb351563c81c613587beb5efa735c3b2f2542d44f17364`.

Twenty-three bounded RF attempts are preserved; 22 passed the independent RF
controls and one was rejected for clipping. Raw captures and source tables
remain ignored under `vendor/local-rf-captures/bb-nco-improve-20261013/`.
Four new offline tests check pulse integrals with signed commands/mute,
phase closure and zero wanted-carrier detour integral, optimizer error reduction,
and the CFO correction. Existing firmware/table/OFDM checks also pass.

Independent final checks confirm both TX paths off, all Pluto settings
restored, demo inactive, RTL card unbound, unchanged working modules and wired
route, and no temporary firmware/configuration or experiment modules. No
working driver or source firmware was modified. These experiments establish
finite narrowband improvement, not single-frame 2-MHz OFDM decoding,
indefinite streaming, 20-MS/s updates or an emission mask.
