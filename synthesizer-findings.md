# RTL8922AE synthesizer investigation — 2026-10-12

Three additional receive windows were recovered with real Pluto RF references:

| Requested center range | RF0x18 / RF0x10018 band bits | Channel field |
|---|---|---|
| 2312–2382 MHz | `0x00200` | `(MHz-2307)/5`, channels 1–15 |
| 2412–2484 MHz (existing) | `0x00000` | channels 1–13; channel 14 is 2484 MHz |
| 2500–2515 MHz | `0x00100` | `100+(MHz-2500)/5`, channels 100–103 |
| 4900–5000 MHz | `0x10200` | `(MHz-4000)/5`, channels 180–200 |
| 5005–5950 MHz (existing) | `0x10100` | `(MHz-5000)/5` |
| 5955–7115 MHz (existing, above 6 GHz RF unqualified) | `0x30000` | `(MHz-5950)/5` |

The plugin uses these hardware centers and a digital NCO for intermediate
requested frequencies. It exposes separate ranges 2312–2382, 2412–2484,
2500–2515 and 4900–7115 MHz with `free_tuning=1`. Other mode behavior is
unchanged. This is partial S/C-band coverage; it does not establish the
silicon's ultimate limits, full passband fidelity or sensitivity.

## Trace and experiments

The local Windows `rtwlane711.sys` function-name strings located
`halrf_ctl_band_ch_bw_8922a` at `0x140461bfc`. The normal path forms band
codes 0, 0x10100 and 0x30000 and combines them with an 8-bit channel.
Its selected-synthesizer sequence writes RF5=0, RF0=0x30000, RF18,
waits 400 microseconds, writes RF5=0x41, then RF10018. Reproducing that
sequence did not make channel 0 tune below 2412 MHz.

The open driver similarly uses RF18/10018 for channel/band/bandwidth.
See [rtw8922a_rfk.c](https://github.com/lwfinger/rtw89/blob/main/rtw8922a_rfk.c)
and [register definitions](https://github.com/lwfinger/rtw89/blob/main/reg.h).
The driver also has per-synthesizer power and calibration-table selection;
these are distinct from an arbitrary-frequency PLL programming interface.
An upstream [VCO-setting fix](https://git.zx2c4.com/wireguard-linux/commit/?id=20aac091a15dc7229ef1a268253fe36bb6b2be39)
removed an incorrect forced VCO selection. The follow-up below tests that
selection temporarily; none of these overrides is enabled in the plugin.

An eleven-center RF register survey found divider-like readbacks at C6/C7:
`(C6 & 0x3ff) + C7 / 2^20` matches MHz*0.32 in normal 2.4 GHz mode,
MHz*0.16 in 5 GHz and MHz*2/15 in 6 GHz. RF25/26 similarly match
MHz*0.4 for 2.4 GHz and MHz*0.2 for 5/6 GHz, using an 11-bit integer.
These are observed formulas, not documented writable PLL controls.
Direct writes to both pairs, with and without RF5 gating, read back unchanged.
The RF tones confirmed that these attempts had not moved the LO.

All sixteen combinations of the two band fields were tested at three channel
values, then promising encodings were mapped more closely. Some values
produce computed divider readbacks but no correctly positioned reference.
Some also produce strong peaks that barely move with Pluto, or peaks many
MHz from their expected position. None are accepted as working tuning.

## Positive and negative evidence

- All 15 centers from 2312 to 2382 MHz, step 5 MHz, passed two-tone tests.
  Channel 0 clamped to 2312; channels 16–19 (2387–2402) failed.
- 2500, 2505, 2510 and 2515 MHz passed. Channel 99 did not lock to the
  inferred 2500 center, and 2520 MHz failed. A wider sweep through 2720
  failed reference-position/movement checks, even where strong peaks existed.
- Tested centers 4900,4905,4910,4920,4940,4960,4980,4990,4995,5000 MHz
  passed. The code also worked at selected overlapping 5005–5025 centers;
  the plugin switches to the existing normal 5 GHz code at 5005.
- Correcting an earlier off-by-5-MHz expected-frequency calculation showed
  normal 2.4-GHz code channel 15 works at 2482. Channels 16–19 failed at
  2487–2502. The existing channel-14 special frequency remains 2484.
- Seventeen installed-plugin capture cases passed at 20 MS/s, including
  endpoints, decimal tuning and old-range regression points. Additional
  1.25 and 5 MS/s checks passed at 2347.123456 and 4940.123456 MHz.
  Each tone capture contained 65,536 CF32 samples over PCIe. Both Pluto
  offsets (+/-250 kHz) had to move the peak by 500 kHz within 3 kHz.
  Known shifted analog DC was excluded separately, with original peaks kept.
- Longer live reception retains the existing allocation-timeout limitation;
  short RF captures do not prove indefinite gapless operation. The first
  demo restart encountered ret=-110 and exhausted the bounded recovery limit.
  A clean restart then passed twelve live tone-follow retunes through the
  new and old windows. An invalid 2400-MHz command preserved reception.
  Five fixed-frequency seconds added 99,176,448 samples with no additional
  interruptions or recoveries. Coarse retune gaps were counted.

All probes restored Pluto's saved settings and powered TX down; wrapper
cleanup removed temporary modules/firmware/NM configuration and preserved
the wired route. No Realtek transmit operation or nonvolatile RF write was used.

Evidence under `D:/Meta-Orchestrator/output/`: `rtl8922-synth-xrefs.json`,
`rtl8922-radio-a-init.json`, `rtl8922-synth-register-survey.json`,
`rtl8922-synth-tone-probe.json`, `rtl8922-synth-tone-probe-v2.json`,
`rtl8922-synth-band-probe.json`, `rtl8922-synth-band-edges.json`,
`rtl8922-synth-band-middle.json`, `rtl8922-synth-band-last.json`,
`rtl8922-synth-plugin-analyzed-report.json`, `rtl8922-synth-live-check.json`.

Remaining work for full S/C coverage: identify a writable frequency/divider
override and the corresponding calibration/band selection, verify actual
LO lock with RF tones, then characterize the board's analog filtering.
Above 6 GHz requires another qualified RF reference; this Pluto cannot
validate the rest of C band.

## Follow-up: Windows arbitration, LCK and VCO probes (2026-10-12)

Windows function 0x140462d60 gates RF5, writes RF0=0x30000, toggles
RF D3 from 0x3103 to 0x3003 around an RF18 write, waits 400 us, then
restores RF5=0x41. This is an LCK sequence, not a divider programming API.
0x140465a7c selects calibration table 0..2 using BB8104/8204 and RF1/10001;
0x140467478 reloads cached calibration coefficients. Neither revealed a
manual frequency override.

64 two-offset Pluto trials tested control, LCK, RF D6 bit19=0/1, and
RF B2 bits9:8=0..3 at eight requested centers. 2412 and 4900 MHz passed
all eight modes. No mode passed at 2387,2402,2520,2700,4000 or4800 MHz.
4000 used band code 0x10201, which lies below that encoding's known
4900-MHz clamp; it does not establish that the synthesizer reached 4000.
D6 selection changed calibration readback on valid controls but did not
extend reception. B2 selection was overwritten/read back unchanged after
channel programming. At 2700 MHz the strong spurious peak moved only
roughly 15–25 kHz for a 1-MHz reference change, rejecting it as reception.

The RF writer was traced through dispatch to
`halbb_write_rf_reg_fullmask_8922a` (0x1403f0468) and its analog transport
0x1403efdb4. It uses the same HWSI data port as Linux (BB2AE0/2BE0), but
temporarily changes BB704,730,E610,C60,C74,C58,6B54,1008,4,E414,2ADC,
40EC and50EC for access arbitration. These are BB-relative addresses:
the driver's BB writer adds its base, 0x20000 on this card.
The separate 0x20370 transport was identified by its embedded function
name as RTL8922D; it is not evidence for an RTL8922A register interface.

An initial arbitration probe omitted the BB base and produced invalid
all-ones RF readbacks. Both that run and its direct-port variant are
INVALID evidence and must not be counted as negative tuning results.
After correcting the address translation, twelve direct-port trials
completed with valid RF reads: unchanged-divider controls at 2412/5180
passed for both pairs; requested 2413,2387,5181,4800 failed for both pairs.
RF25/26 and C6/C7 readbacks stayed at the baseline values despite the
Windows arbitration sequence. Thus this access-path difference did not
make the observed divider-like registers writable.

The RAM firmware log dictionary and printable ROM strings exposed no
PLL/VCO/LCK symbol names. This is a limited symbol search, not a completed
disassembly of the RF calibration implementation. Linux's RF offload
interface uses H2C category OUTSRC, RF class0xB and RF18/channel calibration
tables; a manual divider command has not been identified. The remaining
target is the hardware/firmware channel-to-divider sequencer or a manual
override gate, not the already-traced coefficient-cache selector.

Evidence: `output/rtl8922-pll-cal-probe.json` (64 trials),
`output/rtl8922-pll-port-probe-v2.json` (12 valid trials),
`output/rtl8922-firmware-pll-logs.json` (empty symbol search), and asm in
`tmp/pluto-iq/pll-register-callers.asm`, `calibration-extra.asm`,
`rf-access-be2-transport.asm`, `rf-access-be2-hwsi.asm`.
Invalid exploratory reports retain their original names
`rtl8922-pll-gated-probe.json` and `rtl8922-pll-port-probe.json`.

Both valid runs restored fresh saved Pluto settings and TX powerdown=1.
At the start, the prior demo had logged broken-pipe cleanup errors and
left Pluto TX enabled at 2312 MHz/-10 dB. No host TX process was running.
That state was saved in `pluto-orphan-tx-state.json` on beastmode, then
explicitly muted before testing. No NVM writes or Realtek TX were used.
Qualified tuning ranges remain unchanged.
