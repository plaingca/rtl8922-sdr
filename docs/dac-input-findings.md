# DAC input investigation — 2026-10-12 local / October 13 UTC

**A finite, host-paced complex IF envelope is now demonstrated over the air.**
Signed host I/Q values control the manual correction matrix while the known
DDS runs at +250 kHz. Pluto recovered unseen random levels and a circular
waveform. The route has a strong lower image, 40-ms holds and known reference
symbols. Raw DAC replay, continuous streaming and wideband waveform fidelity
remain unproved. The working driver and RX qualification were not changed.

The [derived analysis](../output/rtl8922-dac-input-analysis.json) hashes every
input report for the initial five experiments. Its
[offline summarizer](../research/tx/analyze_dac_inputs.py) reads reports only.
The [follow-up analysis](../output/rtl8922-dac-if-followup-analysis.json),
reproduced by [analyze_dac_followup.py](../research/tx/analyze_dac_followup.py),
hashes the later reports and preserves failed attempts. No raw capture, ROM,
firmware or Windows driver is included.

## Working route: complex envelope around the calibration tone

The measured triangular correction matrix supplies two signed fields at
PATH1 relative BB `0x8238`: A in bits 31:20, B in bits 19:8, with bit 1
enabling manual values. Each coefficient is signed 12-bit. Leave the original
I/Q DDS running at index 1 and write the complete packed correction word
atomically. No phase retrigger is needed between values.

For normalized coefficients `a=A/1024`, `b=B/1024`, the measured model is

```text
z = a*cos(wt) + j*(sin(wt) + b*cos(wt))
  = m*exp(jwt) + (m-1)*exp(-jwt)

m = (I_code + j*Q_code)/1024
A = 2*I_code - 1024
B = 2*Q_code
```

This creates the requested complex envelope around nominal +250 kHz and a
complementary image around −250 kHz. A zero requested envelope still emits
the lower image: **stop TX by zeroing the DDS and restoring RF mode**, as the
probe does, rather than by writing `(I,Q)=(0,0)`.

The [implementation](../research/tx/iq_if_probe.py) accepts 1–16 integer I/Q
pairs, each component in `[-512,512]`. It uses 40-ms holds, fixed signed-axis
training and a known `m=1/2` reference before/after each group of at most four
unknown values. The largest scheduled sequence lasts 1.72 seconds. These are
host-paced holds, not samples clocked by the DAC or a replay engine.

The [receiver](../research/tx/decode_iq_if.py) uses both images. With a calibrated
image ratio `r`, `U-r*L` gives a reference independent of the unknown envelope.
That cancels common oscillator drift. Fixed known reference symbols determine
the ratio and differential DDS phase; signed-axis training determines the
affine I/Q calibration. The held-out values are used only to score the decoded
result, after every alignment/fit choice. Each 40-ms level is coherently
averaged over its clean interior. The result is not an instantaneous-sample
EVM or a qualified bandwidth measurement.

| Capture / payload | Held-out signal/error | EVM | Axis condition | Evaluation |
|---|---:|---:|---:|---|
| C, 16 unseen random pairs | 34.02 dB | 1.99% | 1.165 | Originally passed prospectively; current offline decoder agrees |
| D, 16 circular-waveform points | 35.12 dB | 1.75% | 1.164 | Offline decoding with erased known training symbols excluded |
| E, repeated circular waveform | 23.94 dB | 6.35% | 1.200 | Offline decoding with erased known training symbols excluded |

Derived decoded-point evidence:
[C](../output/rtl8922-iq-if-envelope-path1-c-offline-v2.json),
[D](../output/rtl8922-iq-if-envelope-path1-d-offline.json),
[E](../output/rtl8922-iq-if-envelope-path1-e-offline.json).
The original [C hardware report](../output/rtl8922-iq-if-envelope-path1-c.json)
passed with the decoder frozen before its fresh random payload was sent:
34.03 dB, 1.99% EVM. Subsequent offline changes affect known-reference fitting,
erasure handling and the fixed wrong-sequence control; they do not fit to
unknown payload values.

The original [D](../output/rtl8922-iq-if-envelope-path1-d.json) and
[E](../output/rtl8922-iq-if-envelope-path1-e.json) reports are retained as failed
validations: strong ambient RF erased several training intervals, leaving
only 1–24 clean points there. The revised offline decoder requires surviving
training for both signed I/Q axes and zero, usable known references bracketing
the payload, and at least 32 clean points for **every** unknown value. It
discards known training intervals based only on clipping/broadband energy and
coverage. No missing payload value is inferred from its requested value.
Fixed shuffled sequences score −3.62, −2.43 and −2.43 dB respectively.

Early IF attempts [A](../output/rtl8922-iq-if-envelope-path1-a.json) and
[B](../output/rtl8922-iq-if-envelope-path1-b.json) used a polynomial model of
oscillator drift and failed held-out prediction. The two-image reference
replaced that assumption. In capture C the lower image averaged **8.11 dB
more power** than the desired image over the sequence. There is no claim of
a clean single-sideband waveform, calibrated RF output power, continuous
25-sample/s payload, or arbitrary wideband DAC streaming.

## The apparent DC source was a sampling trap

The [DDS-wrap sweep](../output/rtl8922-dds-dc-probe-path1.json) initially found
nonzero constant-looking first-phase debug values at indices 320, 640 and
960. Signed manual IQC values then generated an exact finite sequence at that
selected tap: [32 unseen complex pairs](../output/rtl8922-internal-iq-sample-sequence-path1.json),
nominal 2,000 host writes/s, zero DAC-count error and at most 5.42 µs timing
residual against the debug record clock. This is real control of the selected
debug phase, but it does not establish a constant physical DAC input.

The [faster debug-rate sweep](../output/rtl8922-dds-dc-wide-probe-path1.json)
showed indices 320/960 alternating at Nyquist with selector 7. Selector 7's
DDS1 frequency was 0.0015625 cycles/record, consistent with a 160 MHz record
rate at the independently measured 250 kHz tone. Selector 8 instead produced
0.003125 cycles/record; it is not a qualified 320 MS/s source. Index 640 still
looked constant in the first phase, but the
[packed-phase comparison](../output/rtl8922-dac-phase-clock-path1.json) found
variation in other candidate phases at selector 7. For 2p12 packing, phase 0
was constant +512 while the other I phase varied between −512 and +512.
Packed-field interpretation remains provisional; the data already invalidate
the inference from a constant first phase to a constant full converter input.

The two RF attempts using DDS640 failed:
[original clock setup](../output/rtl8922-iq-rf-levels-path1-a.json), −24.87 dB
held-out prediction and −0.023 dB on/zero difference;
[native DACK clock alternative](../output/rtl8922-iq-rf-levels-path1-b.json),
−26.32 dB and +0.292 dB. No raw-DC RF sequence was demonstrated.

The native tone helper programs PATH1's second clock word at `0x2ca0`;
the separate native DACK force-DAC-clock helper `0x140466d14` uses `0x2ba0`
with code 4. Both alternatives were tested without changing the default
working recipe. Their physical clock rates remain unqualified. A fresh
[original-recipe tone control](../output/rtl8922-dac-followup-tone-control-path1.json)
passed full motion/off checks. The clock-alternative control failed its full
off-floor gates despite comparable moving-tone power.

An additional [90-observation adjacent-word experiment](../output/rtl8922-dif5-packed-probe-path1.json)
varied `0x8030` with DDS0/1/640 and three packing types. DDS0 remained zero in
all candidate phases; none of the tested words supplied a second signed data
input. The working IF method avoids both this unknown field and the aliased
DDS640 hypothesis.

## A measured writable control: ITQT

Related public HALRF code calls `0x81cc + (path << 8)` ITQT and commonly writes
`0x12`, `0x1b` or `0x3f`. Their paired three-bit halves suggested independent
amplitude settings. Native RTL8922A tone/DACK helpers also use this address
and those constants. The experiment tested all 64 low-six-bit codes on PATH1.

[Hardware evidence](../output/rtl8922-dac-input-probe-path1.json): both RF chains
were in mode 1 during every internal capture; Pluto remained a receiver.
The known DDS tone and zero controls passed. Each observation contained 40,960
debug records; the tone had 20 distinct words at 0.05 cycles per record.
This does not measure the physical DAC sample clock or resolution.

| Code | Median I standard deviation, bits 5:3 | Median Q standard deviation, bits 2:0 |
|---:|---:|---:|
| 0 | 5661.35 | 5838.17 |
| 1 | 2830.81 | 2924.49 |
| 2 | 1415.16 | 1462.30 |
| 3 | 707.74 | 730.94 |
| 4 | 353.55 | 365.73 |
| 5 | 176.97 | 182.79 |
| 6 | 88.43 | 91.42 |
| 7 | 0.00 | 0.00 |

Each median pools eight settings of the other channel. Codes 1–6 follow
powers-of-two attenuation with maximum relative errors 0.0861% for I and
0.0473% for Q. Code 0 can reach the debug format's full-scale limit; it is not
a qualified linear operating point. Code 7 mutes its channel, with at most
2.8 counts of residual variation when the other channel is at its largest
setting. With the other channel attenuated, the muted channel is zero.

Here `0x17` leaves I at one-quarter amplitude and mutes Q; `0x3a` mutes I and
leaves Q at one-quarter amplitude; `0x3f` mutes both. Writes take effect on an
existing tone. This supplies two writable modulation controls, but no signed
sample value, waveform pointer, replay length or update clock. With DDS index
zero, all tested codes remained digital zero: no nonzero constant source.

## TPG and source routing

The [TPG test](../output/rtl8922-tpg-source-probe-path1.json) exercised four
bandwidth presets and seven simple word patterns under each traced CFIR_SYS
preset, `0xc2000a08` and `0xce000a08`. It applied candidate `0x806c` trigger
and `0x8070` sync controls with DDS zero. All 22 cases remained zero between
successful nonzero DDS controls. This tests only the implemented subset,
without the complete DPK preparation/NCTL operation. It does not exclude
another TPG activation sequence or qualify those fields as sample memory.

Native DACK code sets `0x2b58[28:27]` to 2 and later 0. Its PATH1 wrapper uses
CFIR_SYS `0x42000a08`. Testing those selector values, both CFIR_SYS presets,
DDS 0/1 and ITQT `0x12`/`0x3f` revealed no additional signal at the digital
DAC tap. These AFE/calibration selectors might act downstream of that tap;
the negative result is scoped to this observation point and setup. Full DACK
calibration was not launched.

## Two attempted compositions failed

[Q-mute plus IQC](../output/rtl8922-iq-envelope-probe-path1.json) tested twelve
signed correction settings. The proposed mapping was `(a + j*b) * I_tone`
after removing the original Q tone. Q instead remained exactly zero, including
for nonzero imaginary fields. I scaled with the real field's magnitude. The
result does not establish that composition or absolute sign from independent,
unsynchronized captures.

[Adjacent phase/source controls](../output/rtl8922-tone-phase-probe-path1.json)
tested `0x8030` low-byte values `0xc0/0/0x40/0x80` and `0x82cc[13:12]`
values 0/3. The pinned 8922A NCTL element initializes `0x8030=0x400000c0`;
its interpretation as a phase field was a hypothesis. The source-switch
comparison came from related-chip calibration code. Neither test changed
the measured quadrature relationship or produced nonzero DC at DDS zero.

## DAC-local DC-correction bytes

The [offline native trace](../output/rtl8922-dac-calibration-trace.json),
reproduced by [inspect_dac_inputs.py](../research/tx/inspect_dac_inputs.py),
checks the operations-table slot, PE bounds, hashes and call edges:

```text
RTL8922A operations table 0x14093f510, slot +0x28
  -> 0x14045d3b0 -> local DACK 0x14046106c
  -> PATH1 variant 0x14045cf74
  -> source variant 0x14045b078 / DC-correction variant 0x14045bf64
```

The last helper reads two seven-bit correction results, sets relative BB
`0x2bd4` bits 13/15, and writes result bytes to relative BB `0xc4d0`/`0xc4d4`.
These DAC DC corrections differ from the RF58 LO-offset fields tested before.
The trace identifies one native variant, without proving every stepping uses it.

The [RF experiment](../output/rtl8922-dadck-modulation-path1.json) saved actual
bytes `0x7b/0x78` and manual-control word `0x2100f000`, then varied each axis
by at most four codes. Native-width byte access preserved adjacent analog
settings. The DAC calibration engine, MSBK weights and bias were unchanged.

The 33-state sequence used 40-ms dwells and one Pluto buffer. The first two
repetitions trained an exploratory frequency/drift/matrix fit. Unseen joint
I/Q settings in the last two repetitions were held out. **Validation failed:**
pilot phase residual 0.796 radians, held-out modulation-to-residual −26.24 dB,
and fitted axis singular values approximately 0.2447 and 0.0000300. There is
no trustworthy pair of RF I/Q axes or waveform reconstruction. The weak pilot
and failed prediction also prevent concluding that the path can never work.

Later continuous-pilot tests preserved several invalid marker captures and
boundary preflight refusals. The
[full seven-bit codebook test](../output/rtl8922-dadck-reference-path1-e.json)
used unsigned/two's-complement candidates selected from training, verified
the pilot's 250 kHz movement and avoided clipping. It still failed: −4.64 dB
held-out prediction and axis condition 4.58. These correction bytes have not
provided a qualified independent pair of RF sample axes. The successful IF
route above uses the digital IQC fields instead.

## Cleanup and reproduction

Every test saved fresh RTL/Pluto state and used the existing working modules
under the bounded wrapper. The first four captured with both RF modes in
standby; DADCK and IF tests briefly used calibration TX at 2442 MHz, gain code 8. Setup
briefly enters calibration mode before standby, so the first four tests do not
prove absolutely zero possible emissions. Pluto TX stayed powered down.
Full captures remained in memory. Explicit private decimated diagnostic traces
were retained under `/tmp` for offline decoding, outside the repository and
excluded from Git.

The hardware reports show successful cleanup actions and restored Pluto
configuration. Most also match every immediate readback. The follow-up tone
control reads RX gain 71 versus saved 70, and IF capture C reads 69 versus
saved 71 after restoring `slow_attack` AGC; all other properties match.
These dynamic AGC differences are retained in the reports and are not claimed
as exact immediate snapshot restoration. The final independent check matches
the original settings, with RX gain 71.
Some reports retain RF0 readback differences confined to RX gain fields;
modes read back as RX. The IQC-composition report restored every saved field.
Those mismatches are preserved, without claiming exact RTL restoration.
The wrapper subsequently unloaded the modules and released the card.
The [initial state check](../output/rtl8922-dac-input-final-state.json) and
[follow-up state check](../output/rtl8922-dac-input-followup-final-state.json) verify
the card unbound, demo inactive, Pluto TX off, original Pluto settings restored,
temporary files absent, unchanged working module/patch hashes, and no new
firmware-fault/timeout lines in the experiment's kernel-log window.

See the [probe instructions](../research/tx/README.md) for the explicit manual
modes and bounded `--probe-iq-if --iq-json` interface. Never run RF modes as CI
tests. The hardware-free TX suite includes byte access, snapshot ownership,
failure cleanup, DAC-byte restore order, complex IF synthesis, label-independent
decoding and training erasures. No Soapy TX stream is implemented.

The missing pieces for a general SDR transmitter are regular hardware sample
timing, a sustained value source, and image control. The IF result supplies a
measured route for finite signed complex envelopes; DMA transport alone still
does not identify a converter sample endpoint. The pinned driver's firmware
command-list offload is a possible timing lead, but its PCIe firmware handler
has not been verified and no command list was sent blindly.
