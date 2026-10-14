# Why the other 2.4-GHz LoRa modes failed

The initial all-mode sweep missed a receiver channel filter. Adding it recovers
several previously failed modes from **the same saved RF captures**, including
Short Turbo and Medium Turbo at **1.625 MHz**. Fresh ten-packet tests recover
**10/10 Short Turbo** and **9/10 Medium Turbo**, with distinct payloads and no
repetition averaging. The SF11/SF12 modes still have unresolved RF errors.

[Paired results and controls](../output/rtl8922-bb-nco-lora-wide-followup-analysis.json) ·
[Fresh before state](../output/rtl8922-bb-nco-lora-wide-followup-before-state.json) ·
[Fresh final state](../output/rtl8922-bb-nco-lora-wide-followup-final-state.json) ·
[Original sweep and source pins](bb-nco-lora-findings.md)

## The missing filter

The analyzer mixed each capture to the channel center and resampled to eight
samples per LoRa chip. That resampler's antialias filter preserves nearly the
whole new sample-rate bandwidth; it is not a LoRa channel-selection filter.
The pinned gr-lora_sdr synchronizer then picks one sample per chip
(`frame_sync_impl.cc`, downsampling loop), without first suppressing energy
outside the LoRa channel. That energy can alias into the dechirped FFT bins.

The corrected analyzer applies a **257-tap Kaiser-8 FIR**, cutoff
**0.55 times the LoRa bandwidth**, before the modem's internal chip decimation.
The same scaled filter is used in every mode, without fitting transmitted
payloads. Mixing calibration, the transmitter, and the modem remain unchanged.
The offline centered FIR is equivalent to a causal FIR with 128 samples of
fixed delay; this work does not implement a live filtered receiver.

A hardware-free regression makes the failure explicit: combine the desired
packet with a different packet four times stronger at **+2 bandwidths**.
Without the FIR, the receiver decodes the unwanted packet after it aliases to
the wanted carrier. With the FIR, it decodes the intended packet, including
CRC. This establishes the receiver vulnerability. It does not identify how
much of the out-of-channel energy in each RF capture came from NCO modulation
products, other signals, or the receive chain.

## Paired re-decoding of existing RF

Every row uses unchanged, SHA256-checked capture bytes. Counts require exact
payload and valid CRC; every TX-off and wrong-sync control has zero valid CRC
packets. Two-packet counts are screening observations, not reliability claims.

| Preset | SF | Bandwidth | Original receiver | With channel FIR |
| --- | ---: | ---: | ---: | ---: |
| Short Turbo | 7 | 1.625 MHz | 0/2 | **2/2** |
| Short Fast | 7 | 812.5 kHz | 1/2 | **2/2** |
| Short Slow | 8 | 812.5 kHz | 7/10 | **10/10** |
| Medium Turbo | 9 | 1.625 MHz | 0/2 | **2/2** |
| Medium Fast | 9 | 812.5 kHz | 1/2 | **2/2** |
| Medium Slow | 10 | 812.5 kHz | 9/10 | **10/10** |
| Long Turbo | 11 | 1.625 MHz | 0/2 | 0/2 |
| Long Fast | 11 | 812.5 kHz | 1/2 | 1/2 |
| Long Moderate | 11 | 406.25 kHz | 0/2 | **1/2** |
| Long Slow | 12 | 406.25 kHz | 0/1 | 0/1 |

Two additional bounded RF runs used ten distinct packets on the same quiet
2422-MHz setup, with the existing calibrated, hold-compensated command compiler.
Both were captured at 8 MS/s, 5-MHz analog receive bandwidth and manual gain 50.

| Fresh capture | Original receiver | With channel FIR |
| --- | ---: | ---: |
| Short Turbo, 1.625 MHz | 8/10 | **10/10** |
| Medium Turbo, 1.625 MHz | 7/10 | **9/10** |

The fresh captures also show variation from the earlier two-packet screens:
several packets now decode even without the filter. The paired improvement
establishes the filter's benefit, not that it is the only source of failure.
These small bursts do not qualify indefinite streaming or link sensitivity.

## What remains in the long modes

Filtered audits recover valid explicit headers in all four long-mode captures.
Their failures occur in symbol decisions and payload/CRC decoding, rather than
simply failing to find a preamble. Post-decode reference scoring shows:

- Long Turbo: 45 and 50 incorrect FFT decisions across two 64-symbol frames.
  The first frame's errors are all one bin high; the second also has larger
  errors. Both payload CRCs fail.
- Long Moderate: 9 and 24 incorrect decisions across two 64-symbol frames,
  predominantly adjacent-bin errors. FEC recovers one complete packet.
- Long Slow: 18 adjacent-bin errors across 56 symbols. FEC recovers all 35
  payload bytes, but the received CRC bytes are wrong, so the packet is rejected.
- Long Fast: two and one incorrect decisions across two 43-symbol frames;
  one complete packet survives FEC/CRC.

These symbol counts are diagnostic scores against the nearest transmitted
reference **after decoding**. They are not another decoding method and do not
turn a failed CRC into a pass. Hard instead of soft decisions did not generally
resolve the failures. A single timebase correction estimated from repeated
preamble correlation also failed to improve the long modes; it is retained
only as an unsuccessful diagnostic, not used to qualify packet recovery.

Independent integration of the **actual packed command tables**, with the
nominal local slot rate and exactly the compiler's fixed 0.967-us service hold,
decodes Short Turbo **2/2**, Long Turbo **2/2**, Long Moderate **2/2**, and
Long Slow **1/1**. This simulation includes the coarse NCO frequency steps but
excludes timing variation, RF phase noise and analog distortion. It shows that
the frequency step and fixed-hold model do not inherently prevent these packets
from decoding; it does not validate the model against hardware at every store.

Residual phase/timing mismatch and receiver synchronization remain candidates.
The stock receiver estimates sample-clock offset from carrier offset, an
assumption that deserves checking for this independently timed NCO player.
The present evidence does not isolate that assumption, service-gap variation,
register timing or RF phase noise as the remaining cause. There is no basis
for declaring a fixed 812.5-kHz ceiling or calling all wide modes reliable.

## Implementation and reproduction

`analyze_bb_nco_lora.py` now enables the fixed channel FIR by default. Use
`--legacy-unfiltered` for a paired comparison with the original receiver.
Existing reports are preserved; new reports must use fresh output paths.
The source generator and BBMCU firmware are unchanged by this follow-up.

```sh
export RTL8922_LORA_PREFIX=/tmp/rtl8922-lora-prefix
bash research/tx/lora_python.sh research/tx/analyze_bb_nco_lora.py \
  --rf-report output/rtl8922-bb-nco-lora-wide-short-turbo-hold-a.json \
  --output /tmp/wide-short-turbo-filtered.json
bash research/tx/lora_python.sh research/tx/diagnose_bb_nco_lora.py \
  --rf-report output/rtl8922-bb-nco-lora-wide-long-turbo-hold-a.json \
  --output /tmp/long-turbo-audit.json
bash research/tx/lora_python.sh research/tx/model_bb_nco_lora.py \
  --source-report vendor/local-rf-captures/bb-nco-lora-20261013/wide-long-turbo-hold-a.json \
  --output /tmp/long-turbo-model.json
python research/tx/analyze_bb_nco_lora_wide_summary.py \
  --output /tmp/lora-wide-summary.json
bash research/tx/lora_python.sh research/tx/test_bb_nco_lora.py
```

The first three commands need private captures or command tables; the summary
uses derived reports only. Five hardware-free tests pass, including the
out-of-channel alias regression, hard-decision diagnostic audit, existing
packet-family round trips, independent hold-phase integration and packed bounds.
No RF probe is run by those tests.

Both fresh RF attempts completed, recorded zero clipping and no cleanup errors.
The independent final check confirms Pluto TX off, restored fixed settings,
RTL card unbound, demo inactive, working module hashes unchanged and wired
routing unchanged. Register readback differences remain recorded in the RF
reports; this is not a claim of identical live register readbacks. Raw captures,
command tables and firmware remain private/ignored.

All successes are conventional LoRa software decoding in the WiFi band.
Commercial SX1280 or Meshtastic-node interoperability, spectral masks and
radiated power remain unqualified.
