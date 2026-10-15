# 160 MS/s buffer-boundary phase check — 2026-10-15

**Follow-up:** [packet detection was isolated as the trigger, the PAXI profile
was corrected, and bounded coded continuity now passes](continuity-pd-findings.md).
The findings below preserve the inconclusive initial check.

**Zero dropped samples is not confirmed.** Seven fresh Pluto-reference captures
passed transport/source guards, but none passed the complete RF phase gate.
The strongest references resolved injected one-sample faults; phase excursions
also occurred inside packets, so the observed excursions cannot be assigned
to buffer loss. Existing sample-level and indefinite continuity qualifications
remain unchanged.

Pluto was the actual RF tone generator in every run. Two continuous tones were
generated in a cyclic buffer, and their RF frequencies moved between captures.
For the final pair, a 10 MHz reference movement measured within 231 Hz on both
tones. This rejects stationary spurs as the reference. No shared reference
clock or phase synchronization between the radios was assumed.

Each saved prefix has 33,554,432 complex signed-i8 samples, or 0.2097152 seconds
at 160 MS/s. The three initial native PAXI runs used 5250 MHz and a one-second
transport interval, retaining only the prefix. Four further runs used the
Soapy CS16 path retuned to the established 2447 MHz setting; returned values
were checked against the native sample grid and converted losslessly to i8.
Their requests varied between 257, 1024, 3000 and 16384 samples, exercising
partial reads. All seven prefixes remain ignored local artifacts.

## Phase analysis

The offline analyzer independently fits each side of a boundary. Its model
includes both complex tones, their images, DC, and local linear drift. No FIR
filter or averaging window crosses the tested boundary. Interior packet
midpoints serve as controls for RF/measurement noise. Screening uses six times
the empirical robust MAD-derived scale; it does not assume the tails are
Gaussian. A pass also requires resolving one-sample deletion and duplication
controls in the same received I/Q, and no excursions in either set.

The initial 5250 MHz runs and the +/-12 MHz Soapy runs failed the sensitivity
gate. Their apparently clean counters and, in some cases, zero threshold
exceedances are **not** phase-continuity passes: for the weakest runs the
threshold even exceeded pi, making that screen uninformative.

The final Soapy pair used wider tone spacing and offsets near +40/+50 MHz.
The 2048-sample windows on either side of each packet boundary stay within
the adjacent 4096-sample packets. This is a longer analysis of the saved data,
not another hardware run. The earlier 512-sample analysis was insufficient
for the conservative one-sample resolution margin.

| Final reference | Packet boundaries screened | Packet excursions | Interior excursions / controls | Soapy read boundaries / excursions | Injected single deletions / duplications detected |
| --- | ---: | ---: | ---: | ---: | --- |
| Near +40 MHz | 8191 | 207 | 216 / 8190 | 16382 / 440 | 128/128 and 128/128 |
| Near +50 MHz | 8191 | 31 | 31 / 8190 | 16383 / 54 | 128/128 and 128/128 |

Both final runs also resolved all 128 injected 4096-sample deletions. A whole
163840-sample source-ring deletion was detected in 127/127 controls at +40 MHz,
but only 33/127 at +50 MHz. Tone phase is modulo 2*pi: even multiple tones can
have poorly discriminated gap sizes. A hardware-free control explicitly shows
a whole-cycle deletion that appears phase-continuous. These are reasons not
to promote a bounded tone check into proof of zero sample loss.

The source-ring checks account for the prefix's position after intentional
retuning and warmup. Each final run includes 204 actual ring boundaries; the
+40 MHz run has seven excursions there, and the +50 MHz run has zero. No
buffer-specific excess or confirmed dropped-sample event was established.
The general RF phase gate remains inconclusive rather than a transport failure.

## Evidence and reproduction

- [Initial native analysis](../output/rtl8922-phase-boundaries-20261015.json)
- [Initial Soapy analysis](../output/rtl8922-phase-soapy-boundaries-20261015.json)
- [Final Soapy analysis](../output/rtl8922-phase-wideoffset-boundaries-20261015.json)
- [Initial restoration](../output/rtl8922-phase-session-20261015.json)
- [Soapy restoration](../output/rtl8922-phase-soapy-session-20261015.json)
- [Final restoration](../output/rtl8922-phase-wideoffset-session-20261015.json)

Reports retain capture/build hashes, loaded-module provenance, raw prefix
hashes, source counters, sample positions and injected-control results.
The analyzer uses only NumPy and opens no hardware:

```sh
OPENBLAS_NUM_THREADS=1 python research/streaming/analyze-phase-boundaries.py \
  output/rtl8922-phase-soapy-offset40-20261015.json \
  output/rtl8922-phase-soapy-offset50-20261015.json \
  --window 2048 --output output/phase-reanalysis.json
python -m unittest discover -s research/streaming -p test_phase_boundaries.py -v
```

Five independent offline controls pass: continuous noisy tones, a deleted
sample, a duplicated sample, insufficient-SNR rejection, and the whole-cycle
blind spot. The C++ capture client builds with strict warnings. Hardware
capture is explicitly manual: compile `phase-soapy-capture.cpp` with SoapySDR,
then invoke `paxi-phase-capture.py --run-rf-test --soapy-2447` under the existing
`run-receiver.sh` wrapper, with an output path, LO offset and bounded gain.
The wrapper refuses an occupied card; read demo state and release the related
receiver before taking it. These commands must never be CI tests.

Fresh settings were saved before each trial. Independent five-second timers
bounded Pluto TX; each trial muted TX in `finally`, restored Pluto/register
settings and unloaded its isolated driver. The pre-existing demo was active
when this task began and was restored after each trial group at 2447 MHz /
160 MS/s with TX off. Pluto's six saved RF settings matched exactly, and the
wired route was preserved. No working or experimental driver source changed.
