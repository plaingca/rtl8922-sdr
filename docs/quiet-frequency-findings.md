# Quieter OTA test frequencies — October 13, 2026

**Use RF 2422.25 MHz for the next narrowband PDM tests:** RTL LO 2422 MHz
plus a +250-kHz NCO offset. The survey also identifies RF 2421.5 MHz as a
quiet center for a future retargeted 2-MHz OFDM test. Neither transmitter was
enabled during this survey; modulation fidelity at the new locations has not
been measured by this follow-up.

[Aggregate evidence](../output/rtl8922-quiet-survey-analysis.json) ·
[Survey plots](../output/rtl8922-quiet-survey-results.png)

## Passive measurements

Pluto surveyed 42 distinct RF centers across 2.4 and 5 GHz, using manual gain
45, 8-MS/s sampling and a 5-MHz analog receive bandwidth. A coarse scan used
three shuffled passes across 30 centers. A finer scan sampled 13 centers
around the quiet 2.4-GHz window. Six shortlisted centers were then observed
for approximately three sampled seconds with Pluto's LO on each side of the
wanted window, at offsets of +1.25 and −1.25 MHz. This keeps receiver DC
outside the measured bands and checks that quietness survives a changed IF.

The 141 observations contain 64.684 sampled seconds in total. USB transfers
make these discontinuous snapshots, not a continuous full-band recording.
Hann-windowed 4096-point FFTs measure integrated power in 200-kHz and 2-MHz
windows, with 0.512-ms time resolution. Levels are uncalibrated receiver
dBFS, not RF dBm.

| RF center | 2-MHz power, 99th percentile | Interference occupancy | Maximum buffer clipping |
|---|---:|---:|---:|
| **2422.25 MHz** | **−56.6 dBFS** | **0.42%** | **0** |
| **2421.50 MHz** | **−56.4 dBFS** | **0.40%** | **0** |
| Current narrowband location: 2442.25 MHz | −14.1 dBFS | 24.74% | 5.57% |
| Current OFDM location: 2446.00 MHz | −28.5 dBFS | 24.02% | 0.0061% |
| 5-GHz candidate: 5789.00 MHz | −56.8 dBFS | 0% | 0 |
| 5-GHz candidate: 5244.00 MHz | −52.4 dBFS | 0.99% | 0 |

Occupancy is the fraction of FFT windows exceeding the lowest within-band
tenth-percentile integrated power plus 6 dB. It is a defined measurement
threshold, not Wi-Fi packet decoding. The maximum clipping column is the
largest clipped-sample fraction in any 65,536-sample buffer, not whole-survey
clipping time.

The measured 99th-percentile ADC band-power differences are about 42.5 dB for
the narrowband comparison and 27.9 dB for the OFDM comparison. The busy
locations clipped, so these are not calibrated RF power differences or
demonstrated SNR/EVM gains. Receiver/antenna response across the two frequency
bands is also uncalibrated; the 5-GHz entries are alternative receive candidates,
not a demonstrated improvement in the wanted transmit link.

The two 2.4-GHz quiet locations remained quiet with either LO placement. The
LO-specific 2-MHz 99th percentiles were approximately −56.6/−56.6 dBFS at
2422.25 MHz and −56.5/−56.4 dBFS at 2421.5 MHz. Channel activity may change;
these measurements establish a quieter choice during this survey, not
permanent channel availability.

## Geometry for the next experiments

- PDM: retain the +250-kHz IF and select RTL LO 2422 MHz, producing
  **2422.25 MHz RF**. This stays on the previously exercised 2.4-GHz path.
- OFDM candidate: RTL LO 2417 MHz with a +4.5-MHz waveform offset would
  produce **2421.5 MHz RF**. The OFDM table and receiver must be retargeted and
  the new geometry verified before claiming transmission there. The existing
  +4-MHz OFDM offset with RTL LO 2422 MHz lands at **2426 MHz**, which the scan
  found busy; changing only that LO would miss the quiet window.
- RF 5789 MHz was quiet, but the exact RTL transmit path there has not been
  qualified. Quiet receive power alone does not establish a working transmitter.

Evidence: [coarse survey](../output/rtl8922-quiet-survey-a.json),
[refinement observations](../output/rtl8922-quiet-survey-refine.json),
[recovered refinement analysis](../output/rtl8922-quiet-survey-refine-analysis.json),
[longer confirmation](../output/rtl8922-quiet-survey-confirm-b.json).
All refinement observations completed; an empty-band summary error was fixed
offline with the original report/exception preserved. An initial confirmation
setup attempt collected no observations and is also retained.

## Tools and restoration

[`quiet_frequency_survey.py`](../research/tx/quiet_frequency_survey.py) is
offline unless `--run-passive-survey` is supplied. Its manual mode requires
an unbound RTL card, stopped demo, inactive Pluto transmitter and exclusive
hardware lock. Every run snapshots Pluto settings, remains receive-only and
restores settings in `finally`. Two hardware-free ranking tests cover a
single-band scan, constant interference, intermittent bursts and clipping.

An [independent final check](../output/rtl8922-quiet-survey-final-state.json)
confirms Pluto TX off, all saved receiver settings restored, RTL card unbound,
demo still stopped, unchanged working modules and wired route, and no temporary
firmware/config or experiment modules. No driver, firmware or RF TX registers
were changed by this task.
