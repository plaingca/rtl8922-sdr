# Polar timing and attenuation calibration — October 13, 2026

**The calibration did not enable single-frame 2-MHz OFDM decoding.** The
effective timing sweep favored the existing one-sample amplitude advance.
Intermediate desired-sideband amplitudes were demonstrated, but they require
unequal I/Q attenuation and create a conjugate image. That experimental mode
is not promoted: the noise-free desired-sideband model improves, while the RF
validation does not.

[Aggregate evidence](../output/rtl8922-bb-polar-cal-analysis.json) and
[comparison plot](../output/rtl8922-bb-polar-cal-comparison.png).

## Attenuation measurements

The initial sweep measured codes 9–63 at 2442 MHz, with a moving NCO tone at
+4 MHz. Codes do not form a monotonic gain scale: 9, 18, 27, etc. are the
equal-I/Q settings previously used, while codes 16, 24, 32, etc. return close
to the strongest desired-sideband amplitude. The observations fit two
three-bit power-of-two attenuators, rather than a six-bit scalar attenuator:

```
I amplitude = 2**-(code & 7)
Q amplitude = 2**-(code >> 3)
desired sideband amplitude = (I amplitude + Q amplitude) / 2
conjugate image amplitude  = (I amplitude - Q amplitude) / 2
```

This is an RF-supported interpretation, not a vendor specification. A second
test received both sidebands around the LO. The desired tone moved −500 kHz
and the conjugate image +500 kHz when the NCO changed from +2 to +1.5 MHz.
At code 9, the image was approximately −33.1 dBc. Code 10 provided an
intermediate desired amplitude, approximately −2.9 dB relative to code 9,
with an image approximately −8.5 dBc. More unequal settings can have an image
nearly as strong as the desired signal. Weak or contaminated image readings
are not used to characterize suppression.

The resulting LUT contains 28 desired-sideband levels. Sixteen use clean
measurements; twelve weak or contaminated measurements fall back to the
power-of-two model and remain explicitly marked inferred. Code 63 is no
longer assumed to be an exact zero in this fine-level LUT. Its low-level RF
response is not resolved well enough to claim an exact amplitude.

Evidence: [first sweep](../output/rtl8922-bb-polar-cal-sweep-a.json),
[completed image sweep](../output/rtl8922-bb-polar-cal-sweep-c.json), and
[amplitude LUT](../output/rtl8922-bb-polar-cal-attenuation.json).
The higher-gain image sweep B clipped and was rejected; its report is retained.

## Effective timing calibration

Timing selection used a separate seeded random 36-byte calibration packet,
not the final ASCII payload. The frame retained the same 64-point FFT,
16-sample CP, 24 active carriers and 5.333-MS/s paired update rate. Amplitude
advance was swept from zero through two samples, initially in 0.25-sample
steps. One sample is 187.5 ns; the sweep increment is 46.875 ns.

Among decodable calibration observations, median combined EVM was 47.9% at
zero advance, 31.7% at 0.5, 29.9% at 0.75, **26.3% at 1.0**, 42.0% at 1.75,
and 55.5% at 2.0. The 0.25 point was erased. Initial 1.25 and 1.5 runs failed
the independent RF controls; a repeat at 1.25 could not synchronize after
combining. A higher-gain 1.5 repeat gave 37.1% EVM.

The selected effective advance therefore remains one sample. This is an
empirical table-alignment result, including sample holds and filtering; it
does **not** identify the absolute internal amplitude/phase propagation delay.
Erased nearby points and changing RF conditions limit its precision. The
selection uses median EVM across decoded calibration groups without filtering
on CRC success. No final payload is used to choose the timing.

[Timing evidence](../output/rtl8922-bb-polar-cal-timing-analysis.json).

## Original 2-MHz payload validation

The original `RTL8922 polar OFDM at 2 MHz` packet and carrier allocation were
retained. Coarse and fine tables used the same firmware, TX settings, one-sample
advance and 0.5 peak target. Receiver gain was matched within each comparison.
Every accepted capture had moving-tone, amplitude and TX-off controls and zero
ADC clipping. Pluto RX remained 8 MS/s; the finite command completed about
0.615 seconds after startup. Captures returned within that active interval.

| Observation | Coarse attenuation | Fine desired-sideband levels |
|---|---:|---:|
| Noise-free desired-sideband model EVM | 18.4% | 13.7% |
| RF EVM, RX gain 60, 64-repeat combining | 28.7%, 30.3% | 37.4% |
| Combined CRC-valid groups, RX gain 60 | 4/5 | 0/2 |
| RF EVM, RX gain 55, 64-repeat combining | 28.1%, 26.3% | No synchronized groups |
| Combined CRC-valid groups, RX gain 55 | 3/4 | 0/3, all erased |
| Uncombined CRC-valid candidate frames, both gains | 0/513 | 0/103 |

Candidate counts are detector outputs, not a loss denominator for all emitted
frames. These counts do not establish a packet-error probability. Two additional
fine validation attempts clipped during the static controls and are excluded
from the table, with reports retained. All validation TX-off and wrong-training
controls produced zero valid CRCs.

The desired-sideband model omits the physical conjugate image, switching
transients and nonlinearities. It must not be interpreted as achieved RF EVM.
The change in noise/interference between sequential captures also prevents
attributing the RF degradation solely to unequal attenuation. For example,
at RX gain 60 the coherent repeated component relative to variation between
admitted repetitions was −1.1 dB in the first coarse capture and −4.7 dB in
the fine capture. That residual includes interference, noise and timing/phase
variation; it is not an isolated thermal-noise measurement. The erased fine
capture does not provide a trustworthy EVM or signal/noise estimate.

The result supports retaining equal-I/Q attenuation. A finer scalar amplitude
control, or a measured image/transient model plus better RF isolation, remains
necessary before claiming the fine-level approach improves fidelity. Raising
Pluto gain alone did not produce a single-frame decode.

## Tools, checks and cleanup

[`bb_polar_calibration.py`](../research/tx/bb_polar_calibration.py) builds the
LUT and separate calibration or validation sources offline. It reproduces the
exact tested LUT and both source tables. Example, using fresh output paths:

```sh
python research/tx/bb_polar_calibration.py levels \
  --sweep-report output/rtl8922-bb-polar-cal-sweep-a.json \
  --output /tmp/my-polar-levels.json
python research/tx/bb_polar_calibration.py generate \
  --levels-report /tmp/my-polar-levels.json \
  --private-dir vendor/local-rf-captures/my-calibration \
  --manifest /tmp/my-calibration-manifest.json \
  --advances 0 .25 .5 .75 1 1.25 1.5 1.75 2 --calibration-packet
```

The existing bounded manual OFDM probe accepts `--attenuation-sweep` and
`--sweep-images`; it remains offline unless `--run-rf-test` is supplied. Playback
uses the existing isolated table-player firmware and unchanged working modules.
The previous OFDM findings give the wrapper invocation. Eight offline tests pass,
including checks that scoring-reference bytes cannot change received decisions
or CRCs, and that invalid amplitude LUTs are rejected.

Across this follow-up, 17 RF runs completed their controls and six were rejected.
All failures and traces remain preserved. Some restored RF0 readbacks changed
within receiver gain/bandwidth fields; the driver definitions identify those
fields, and a read-only idle check independently observed live RF0 changes.
Those mismatches remain in the reports. Continuation required the RF mode and
all other saved registers to match, with successful mute, wrapper unload and
temporary-file cleanup.

The final run restored every saved RTL register exactly. An
[independent final check](../output/rtl8922-bb-polar-cal-final-state.json)
confirmed Pluto TX off, all Pluto settings restored, unchanged working module
hashes, unchanged wired route, no experimental modules or temporary firmware,
card released and demo still stopped. Raw captures and source arrays remain
private under ignored `vendor/`. Single-frame decoding, an emission mask,
indefinite streaming and the separate 20-MS/s goal remain unqualified.
