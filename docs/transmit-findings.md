# RTL8922AE arbitrary-I/Q transmit investigation — 2026-10-12

**Digital calibration tones and a finite host-paced complex IF envelope are
now demonstrated at RF. Raw DAC replay/streaming remains unproved.** The isolated probe chains the recovered controls
and tests them against Pluto RX. The LO carrier follows 2442 → 2447 → 2442 MHz.
After correcting an AFE force-enable mask, calibration-tone offsets follow
250 → 500 → 750 → 250 kHz and disappear with TX off. Live signed frequency
writes and digital zeroing also work. A writable waveform/replay interface is
still missing. The initial correction/analog-offset attempts failed; the
later IQC-plus-DDS composition supplies a constrained complex envelope.
The follow-up below records the earlier symbol tests too.

The [DAC input follow-up](dac-input-findings.md) documents the working route:
leave DDS1 running and write signed IQC fields, producing the requested
complex envelope at +250 kHz plus a strong complementary image at −250 kHz.
Pluto reconstructed 16 unseen random levels at 34.02 dB signal/error, 1.99%
EVM after averaging each 40-ms hold. Two circular-waveform captures also
decoded offline with known training erasures excluded. This is a finite,
host-paced method with reference symbols, not a general raw-DAC stream.

The initial analysis was offline. The follow-up below used real RTL register
writes and bounded RF tests with antennas over the air, as reported by the user.
It loaded and unloaded the existing working modules without modifying them.
The user had stopped the demo; it remains stopped. Current RX qualification in
`README.md`, `synthesizer-findings.md` and `validation-summary.json` still apply.

## Pathway and the missing piece

The finite IF method already gives host control through IQC on the DDS output.
For a general SDR transmitter the target remains **finite cyclic waveform
replay**, followed by bursts and then host streaming. That proof needs a source
whose sample values we control, a way to select that source into the TX chain,
and known start/stop, length, clock and ownership rules. A tone generator alone
does not meet this definition.

```text
host I/Q array
    |
    v
[UNKNOWN: writable sample source, format, depth and replay control]
    |
    v
calibration stimulus / TX source selection
    |   RTL8922A IQK code and IQK/DPK TX routing are identified
    |   connection from a programmable sample source is unproved
    v
DAC -> TX analog chain -> RF output
    calibration tones measured at RF; arbitrary waveform fidelity unproved
```

IQK calibrates I/Q imbalance; DPK calibrates transmitter predistortion. Their
stimulus generation is worth inspecting because it exercises the transmit
chain outside ordinary packet generation. However, the generator could be
entirely fixed-function, with tone and bandwidth selectors but no sample RAM.
The writable source must be demonstrated before treating this as a viable
arbitrary-I/Q architecture. If it is fixed-function, the next target would be
a different BB sample-input/test interface; no such interface has yet been
identified here. Firmware patching alone cannot create a missing DAC data path.

The existing LA receive buffer and PAXI/IDDMA work concern transport. A DMA
engine accepting a context called `TX` does not establish a connection from
that memory to the RF DAC. Resolve the sample source first, then its transport.
No physical DAC sample rate, bandwidth, resolution, replay depth or sustained
throughput is qualified by this investigation. The 25 updates/s IF holds are
host timing. The RX wire format cannot be assumed to
be the DAC input format.

## Evidence on RTL8922A

The offline [inspection tool](../research/tx/inspect_tx.py) produced
[rtl8922-tx-static-analysis.json](../output/rtl8922-tx-static-analysis.json).
It records input hashes, named function bounds, string references, direct call
sites, function hashes and selected instruction excerpts. The named functions
were located from diagnostic strings and validated against x64 `.pdata`
function boundaries. Names assigned to the two PMAC helpers are our labels;
their call edges from the named entry point are checked explicitly.

### 1. PMAC generates Wi-Fi test transmissions

`halbb_set_pmac_tx_8922a`, VA `0x1403e9764`, enables the PMAC path using
relative BB registers `0x0980` (bits 0 and 16) and `0x0988` (mask `0x3f`,
value `0x37`). It also changes CCA-related controls, chooses a test mode,
and calls helpers at `0x1403e9a84` and `0x1403e9d50` to start and stop.

The start helper's OFDM branches manipulate `0x09c4` bit 0 for continuous
mode, bit 4 for counted packets, its upper field for a period, and `0x09c8`
for a packet count. It pulses `0x09c0` bit 0. There are separate CCK branches.
The inspected entry/configuration path contains test mode, count and timing
parameters; no arbitrary sample array upload was identified. PMAC is a useful
future RF bring-up control, but calling continuous packet TX is not a raw
I/Q implementation.

### 2. DAC configuration exists, without a discovered sample-input API

`halbb_ctrl_afe_dac_8922a`, VA `0x1403eb71c`, selects path-specific registers
`0x2a5c/0x2a60` or `0x2b5c/0x2b60`. Its bandwidth cases change fields with
masks `0xf8000000` and `0x7`. These are AFE/DAC configuration operations;
there are no waveform sample writes in this function. Its existence does not
show how to supply samples to the converter.

### 3. IQK provides the strongest signal-generation lead

`halrf_iqk_toneleakage_8922a`, VA `0x140470644`, sets up a selected calibration
path, changes RF mode, programs calibration controls, triggers a tone-related
operation, delays, and changes the controls again. Important observations:

| Relative BB address | Observed operation | Evidence / limit |
|---|---|---|
| `0x80d0` | Full write `0x3000` | Calibration path configuration |
| `0x8120 + (path << 8)` | Full write `0xc2000a08` | Per-path calibration configuration |
| `0x8000` | Mask `0x6`, value = selected path | Calibration path selection |
| `0xe414 + (path << 8)` | Bit 1 set, then cleared around a trigger/delay | TX-side calibration control; not a proven user-sample mux |
| `0x8018` | Mask `0x70000000`, value `2` | Calibration configuration |
| `0x81cc + (path << 8)` | Mask `0x3f`, value `0x12` | Per-path KIP control |
| `0x802c` | Mask `0xfff`, value `0xb` | TX tone control, consistent with the shared `R_IQK_DIF4` definition; Hz mapping unverified |
| `0x8034` | Bit 0 pulsed; bits 5:4 changed | Calibration operation control |

These observations alone are **not a complete register recipe**. The follow-up
probe includes traced AFE, MAC/BB and KIP presets, snapshots and stop/restore.
The corrected probe now produces both the internal tone and a corresponding
external RF tone. The function does not upload sample values.

The pinned Linux driver independently enables IQK/DPK TX-related controls in
[`rtw89_phy_preinit_rf_nctl_be`](https://github.com/morrownr/rtw89/blob/8bbbacadf6fa73c3a3195aefbd4b2ec2422ae356/phy_be.c#L475):
`R_GOTX_IQKDPK_C0/C1` at `0xe464/0xe564` (bits 28:27),
`R_IQKDPK_HC` at `0x2ab8` (bit 28), and clock/reset controls at
`0x0c60`, `0x0c6c`, `0xe4ac/0xe5ac`. This supports investigating the
calibration engine, without proving arbitrary waveform support.

### 4. The discovered IQK SRAM port reads captured data

`_iqk_rx_sram_8922a`, VA `0x14046d144`, selects a report mode through
`0x80d4/0x8074/0x80e8`, then writes `0x10000 + index` to `0x80d8` and
reads `0x80fc` with masks `0x3fff0000` and `0x3fff`. It walks indices
0 through `0x9f` in separate I and Q reporting loops. The writes are address
selection, not uploaded I/Q values. This is evidence of an RX SRAM readout
port, not of a writable DAC replay buffer. The readout masks do not qualify
TX precision.

### 5. Firmware contains an NCTL load, not an identified waveform table

The pinned `rtw8922a_fw-4.bin` is a multi-image container. Its elements begin
at file offset `0xd3df0`, after the directory's images; starting a firmware
decoder at byte zero would misinterpret the container header.

The `RF_NCTL` element (ID 8) is at file offset `0xf80e0`. Its 9,616-byte
payload has 1,202 address/value pairs. It writes `0x8080 = 5`, then 1,024
consecutive words to relative BB `0x8500..0x94fc`, then `0x8080 = 4` and
`0x8080 = 0`. The Linux loader treats this as the RF NCTL initialization
table. This looks like a calibration sequencer load; its instruction semantics
have not been decoded. **Do not overwrite this window with I/Q samples.**
Neither the size of the load nor its SRAM-like access establishes a sample
buffer. The container also includes BB-MCU images and calibration log-format
elements; these identify additional code to study but not an IQ-upload command.

### Address domains matter

All BB addresses above are the **relative BB addresses passed to vendor
helpers**. The pinned BE Linux PHY uses `.cr_base = 0x20000`, so a direct
MMIO address for relative `0x802c` is `0x2802c`. Whether to add that base
depends on the accessor: do not add it twice or use relative addresses with a
raw MMIO accessor. RF register numbers are a separate address space.
Windows `0x140...` addresses are PE virtual addresses, not card registers.
RTL8922D routines in the same Windows binary were excluded as register authority.

## Misleading names and other approaches

`rtw_hal_mp_tx_single_tone` (`0x1403b8940`) calls
`rtw_hal_rf_set_singletone_tx` (`0x1402c00a4`), which reaches an RF LO-test
operation through a thunk and dispatch table. The follow-up resolved that table
and measured a working carrier; it provides no arbitrary complex sample input.

`halbb_bb_wrap_set_tx_src` (`0x14030e6fc`) is another tempting name. The
public Realtek common
[`halbb_bb_wrapper.c`](https://github.com/morrownr/rtl8852bu-20250826/blob/b6a299b4fe95cb6a37eec27a6c3b21cbaa6abfa8/phl/hal_g6/phy/bb/halbb_bb_wrapper.c#L634)
explicitly has an RTL8922A branch and selects TMAC/PMAC/default **power
control**. It programs power fields and PMAC power selection, not an input
buffer of complex samples. The Windows function was inspected as well.

Public RTL8852B/C DPK code has a test-pattern generator (`TPG`) with bandwidth
selectors. This is a useful vocabulary and architecture hint, but those chips'
register values are not qualified RTL8922A settings. In particular, the
[RTL8852C TPG selector](https://github.com/morrownr/rtw89/blob/8bbbacadf6fa73c3a3195aefbd4b2ec2422ae356/rtw8852c_rfk.c#L2106)
chooses fixed configurations. It does not demonstrate uploading a waveform.

There is an actual precedent for Wi-Fi sample replay:
[Nexmon SDR](https://github.com/seemoo-lab/mobisys2018_nexmon_software_defined_radio)
writes template RAM and replays samples on Broadcom BCM4339/BCM43455c0.
It shows that a finite waveform replay interface is a sensible first target.
It supplies no Realtek register map or evidence that RTL8922A has the same
mechanism. Conversely,
[TransFi](https://sites.pitt.edu/~weigao/publications/mobisys22.pdf) synthesizes
custom constellation points through carefully constructed Wi-Fi payloads and
MIMO mixing on Atheros AR9580. That is a constrained PHY-emulation approach,
not a discovered RTL8922A DAC input path or a drop-in arbitrary-I/Q method.

The source and binary search covered the selected PMAC, single-tone, DAC,
IQK, SRAM and TX-source entry points, Linux firmware container metadata and
public related-chip HALRF code. It did not exhaustively reverse engineer the
BB MCU, RF firmware, silicon or all diagnostic interfaces. No public working
RTL8922A arbitrary-I/Q TX implementation was found in this search; that is
not proof that one is impossible.

## Follow-up: chaining and measuring the primitives

The [manual probe](../research/tx/calibration_probe.py) uses the existing working
debugfs accessors. It adds no kernel patch, changes no production RX behavior,
and exposes no Soapy TX channel. [Instructions](../research/tx/README.md) document
explicit RF flags; default execution prints a setup plan without hardware access.
Reports are derived statistics and register snapshots, with no raw captures.

### Actual RTL8922A LO callback and measured RF output

The pinned Windows binary resolves the dispatch as follows:

```text
halrf_ops_lo_test 0x140379484
  rf_info + 0x176980 -> operations table, slot +0x40
  RTL8922A initializer leaf 0x1404c41fc -> table 0x14093f510
  slot -> callback 0x1404630f0 -> per-path helper 0x140464aec
```

The RF initialization branch calls this initializer and selects BB base
`0x20000`; the adjacent initializer is for RTL8922D and was excluded. The
offline inspector now checks the leaf's three instructions, the table pointer
and the direct callback/helper edges. This resolves the actual chip operation
rather than copying RTL8852B's LO-test settings.

In 2.4 GHz the per-path helper disables RF5 bit 0, selects TX through RF0 mask
`0x30000` value 2, writes RF11=`0x600`, and sets RF58 bit 1. Disable clears that
RF58 bit and restores RF5=`0x41`. These are carrier-test controls, with no sample
upload. The probe snapshots and restores the original values instead of relying
only on the vendor disable defaults.

[LO movement evidence](../output/rtl8922-tx-lo-movement-path1.json), PATH1,
Pluto RX LO 2441 MHz, 20 MS/s, 65,536 samples per observation:

| RTL command | Measured peak relative to Pluto | Peak above local median |
|---|---:|---:|
| 2442 MHz | +1,015,930.18 Hz | 62.60 dB |
| 2447 MHz | +6,015,930.18 Hz | 62.48 dB |
| 2442 MHz again | +1,015,930.18 Hz | 19.21 dB, during ambient traffic |

The change is exactly 5 MHz at the FFT's approximately 305-Hz bin spacing.
The carrier is absent from the before/after controls. The approximately 15.9-kHz
offset includes both radios' frequency errors; it is not an absolute-frequency
calibration. This is external RF evidence of commanded carrier movement at
these two centers, not a TX-band coverage, power, modulation or sample-rate claim.

The earlier [LO observation](../output/rtl8922-tx-lo-path1.json) did not retain a
targeted peak during an ambient Wi-Fi burst; the movement report corrected that
measurement limitation. Broad traffic peaks were never accepted as the tone.

### Calibration tone reaches the internal TX-DAC debug tap

The shared HALBB enum labels source selector 4 as `LA_SRC_TX_DAC`. The probe
uses that selector with recovered LA fields and reports frequency in cycles per
record. This tests the internal digital signal; it does not measure analog
DAC-pin output or establish the converter's clock or resolution.

With tone selector `BB802c[11:0]` at 1/2/3/1:

| Chain | Measured cycles per record | Result |
|---|---|---|
| PATH1 | 0.05 / 0.10 / 0.15 / 0.05 | Repeatable digital tone |
| PATH0 | 0.05 / 0.10 / 0.15 / 0.05 | Repeatable digital tone |

See [PATH1](../output/rtl8922-tx-dac-path1.json) and
[PATH0](../output/rtl8922-tx-dac-path0.json). Each tap capture contains 40,960
records. Pluto did not show a corresponding controllable RF tone. A tone-index
0 trial yielded all-zero tap values, so it cannot serve as the assumed DC source.

The [initial PATH0](../output/rtl8922-tx-tone-path0.json),
[wide PATH1](../output/rtl8922-tx-tone-path1-wide.json),
[analog-gain PATH1](../output/rtl8922-tx-cal-gain-path1.json) and
[manual RF0 gain](../output/rtl8922-tx-manual-gain-path1.json) trials also failed
external digital-tone movement. The last trial requested manual gain index 15;
RF0 read `0x200e2`, so the requested gain field must not be treated as fully
understood or as a calibrated power control. No RF-output result is promoted
from these negative tests. The follow-up below found a probe mask error;
these earlier digital-RF failures do not test the complete vendor routing.

### Correction coefficients do not supply a general complex sample

`_iqk_check_nbiqc_8922a` identifies TXIQC at `BB8138 + (path << 8)`:
real field `0xfff00000`, imaginary field `0x000fff00`, real unity `0x400`.
The narrowband fallback uses `0x40000002`. This suggested a possible host-paced
complex multiplier around a constant stimulus, avoiding waveform RAM.

The [zero-tone experiment](../output/rtl8922-tx-iqc-path1.json) rejected the DC
source assumption. The [nonzero-tone experiment](../output/rtl8922-tx-iqc-tone-path1.json)
then measured the following PATH1 DAC standard deviations:

| TXIQC word | I standard deviation | Q standard deviation |
|---|---:|---:|
| `0x40000002` | 1447.98 | 1447.98 |
| `0x20000002` | 723.91 | 1448.24 |
| `0x00000002` | 0.00 | 1448.24 |
| `0x00040002` | 0.00 | 2047.74 |

Without low bit 1, changing the coefficient did not produce the expected scaling.
With bit 1, I can be scaled to zero while Q remains; adding the imaginary field
changes Q. These observations are consistent with an imbalance-correction
matrix, not a general complex multiplier with zero and quadrature behavior.
That matrix plus the available tone does not meet arbitrary I/Q requirements.

### Analog LO-offset route was tested and remains unqualified

The actual RTL8922A bypass helper at `0x140470434` sets RFDF bit 2, then writes
RF58=`0x84220`. `_iqk_lok_check_8922a` independently checks RF58's coarse I/Q
fields `0xf8000` and `0x7c00`. This provided another plausible path: modulate
analog LO cancellation offsets instead of sending data to the DAC.

The [first controls trial](../output/rtl8922-tx-lok-controls-path1.json) showed
that coefficient writes do not latch without the gate. The
[gated trial](../output/rtl8922-tx-lok-override-path1.json) verified readback of
I/Q levels 12/16/20. With [direct LO injection disabled](../output/rtl8922-tx-lok-offset-path1.json),
some states produced weak carrier leakage, but ambient traffic and independently
captured phases prevent a two-axis modulation claim.

The [multi-buffer coherent trial](../output/rtl8922-tx-lok-modulation-path1.json)
had a 4.39-radian pilot phase residual and a modulation-to-residual fit of
−9.48 dB; assuming phase continuity across refills was invalid. A
[single-buffer attempt](../output/rtl8922-tx-lok-modulation-single-buffer.json)
timed out at the original 3-second IIO timeout; cleanup ran. The
[single-buffer retry](../output/rtl8922-tx-lok-modulation-single-buffer-retry.json)
allowed 12 seconds for the transfer, captured without clipping, and reduced the
pilot residual to 0.304 radians. Its modulation-to-residual fit was still
−5.19 dB, with fitted axis singular values 0.2384 and 0.00285. **Neither fit
qualifies independent complex modulation.** The alignment/drift fits are
exploratory and were not validated against a held-out waveform. They also do
not prove that the analog-offset route is physically impossible.

## Follow-up: digital RF route recovered

### Correct force-enable mask

The initial probe mistranscribed the AFE routing mask at relative BB
`0x2a20/0x2b20` as `0x11`. In `_iqk_macbb_setting_8922a`, instruction
`0x14046c449` sets `r15d=1`; `0x14046c4a1` computes `ebx=r15d+0xf`, and
`0x14046c4aa` passes that mask in `r8d`. The mask is **`0x10`**, so value 1
must set bit 4. The old sparse mask/value combination instead cleared bit 4.
The offline inspector now derives and checks this construction and includes
the corresponding instruction excerpt. The probe was corrected without
changing the working driver. Earlier internal-tone observations remain useful;
earlier missing-RF observations cannot constrain a correctly forced TX path.

The [first corrected run](../output/rtl8922-tx-afe-force-fixed-path1.json)
showed a repeatable +250-kHz RF tone. A
[close-up run](../output/rtl8922-tx-afe-force-motion-path1.json) showed exactly
250-kHz motion between selectors 2 and 3, but nearby traffic masked other
observations. The first
[repeated qualification attempt](../output/rtl8922-tx-digital-tone-validation-path1.json)
failed its signal/off-control gates and is preserved. Its file was renamed
from the originally requested `...qualified-path1.json`; its contents are
unchanged and record `passed=false`.

The [gain-code-8 run](../output/rtl8922-tx-digital-tone-gain8-path1.json)
passed every gate at center 2442 MHz, PATH1, with receive-only Pluto at
2441 MHz / 4 MS/s. Median spectra from 32 FFT blocks per state suppress brief
traffic; no raw capture is saved. The quarter-MHz mapping was a hypothesis
before this measurement, and is now measured at the tested selectors:

| Selector | RF offset relative to Pluto | On above both off controls |
|---|---:|---:|
| 1 | 1,266,601.5625 Hz | 25.93 dB |
| 2 | 1,516,601.5625 Hz | 25.63 dB |
| 3 | 1,766,601.5625 Hz | 25.76 dB |
| 1 again | 1,266,601.5625 Hz | 25.32 dB |

The common oscillator offset was 16,601.5625 Hz. Measured movements were
exactly +250,000, +250,000 and −500,000 Hz. All on states exceeded the local
floor by 20 dB, exceeded both off controls by 15 dB, agreed with a common
frequency offset within 3 kHz, and had no clipped buffers. This establishes
the digital calibration-tone RF route at these settings. It does not measure
absolute output power, DAC clock/resolution, general bandwidth or replay.

### Live DDS controls and modulation limits

The [live DDS test](../output/rtl8922-tx-live-dds-controls-path1.json) changed
`0x802c[11:0]` while the generator ran. Selector 2 moved the RF tone without
another start pulse. `0xfff` produced −250 kHz and a negative-frequency
internal tone; selector zero produced one all-zero DAC-debug word and removed
the digital RF tone. Thus signed frequency control and digital zeroing work
at the tested values. Zero did **not** hold a nonzero DC sample.

Clearing `0x80cc` bit 8 or changing `0x8034[5:4]` to 3 alone did not stop the
already-running tone in that test. Cleanup therefore relies on RF standby
and now explicitly zeros the DDS before restoring the saved settings. Those
control writes must not be presented as a complete standalone DDS stop API.

`fsk_probe.py` schedules selectors 1/2 at 50 symbols/s for a 16-bit sync word
and the 64-bit payload `RTL8922!`. TX ends on its own 1.8-second schedule,
independently of the Pluto USB transfer. One RX buffer is decoded; timing
alignment uses only the sync word, and the payload is held out. The acceptance
gates require zero sync/payload errors, at least 6 dB discrimination for every
symbol, 15 dB pilot disappearance after TX stop, and no clipping.

| Experiment | Sync errors | Payload errors | Result |
|---|---:|---:|---|
| [Initial, 4 MS/s Pluto](../output/rtl8922-tx-dds-fsk-path1.json) | 0 | 4/64 | Failed |
| [Interference rejection](../output/rtl8922-tx-dds-fsk-interference-path1.json) | 1 | 6/64 | Failed |
| [RF11 TX-pad code 2](../output/rtl8922-tx-dds-fsk-pad2-path1.json) | 0 | 4/64 | Failed |
| [Smaller 2-MS/s RX buffer](../output/rtl8922-tx-dds-fsk-pluto2m-path1.json) | 0 | 2/64 | Failed |

The interference-aware receiver selects the quietest quartile of frames using
FFT bins outside both tone bands. Expected bits do not select those frames.
RF11's low five bits are a separate analog gain hypothesis from RF10001's
calibration gain code; the actual 8922A 2-GHz IQK helper uses value 6, while
the additional tests used code 2. Output power is uncalibrated. Host write
timing in the first burst stayed within 0.3 ms of schedule. Periodic weak
symbols remain unexplained: interference, RF ownership and capture continuity
need distinguishing. **There is no qualified error-free symbol link yet.**
The older reports hash the probe entrypoint only; helper modules evolved
between these attempts. Their receiver-rule differences are recorded above
and in the reports. Future runs also hash all four analysis helpers.

### Analog-offset retry and rejected source leads

With corrected AFE forcing and zero digital samples, the
[static I/Q-offset retry](../output/rtl8922-tx-afe-lok-dc-path1.json) produced
carrier changes at several RF58 coarse settings. The
[coherent retry](../output/rtl8922-tx-afe-lok-coherent-path1.json) used a digital
calibration-tone pilot, then zeroed the DDS and exercised the analog offsets.
It fit the first two repeats and reserved the last two for prediction. The
pilot phase residual was 0.394 rad; training modulation/residual was −5.28 dB,
and held-out modulation/residual was −7.50 dB. Fitted axis singular values
were 0.2060 and 0.1015, but the poor prediction prevents accepting either
independent axes or arbitrary complex modulation. The analog route is still
a lead, with no qualified waveform transmitter built on it.

Offline, `halbb_cfg_lbk_8922a` exposed fields at `0xe4f0/0xe5f0` that looked
like a possible constant-data override. Their use by
`_halrf_tssi_set_ndck_phy0_8922ab` places them in TSSI/NDCK calibration context;
they are not established I/Q sample inputs and were not written as such.
The tempting `halrf_load_shot_rxcfir` calls `0x14000a5f0` for internal chip
ID `0x66`, but that callee is a `ret 0` stub in this pinned binary. It supplies
no coefficient-upload or waveform path. The actual AFE/DAC bandwidth function
was also checked against the Linux implementation; it configures converters,
without uploading samples. These findings narrow the search and do not prove
that the silicon lacks a programmable source.

### Cleanup and current hardware state

Every saved RF report includes fresh Pluto settings and its final TX powerdown
state of 1. Probe write sets are saved before the first probe write; cleanup
attempts all mute/restore operations independently. Some RF0 gain readbacks
changed after restoration in RX, and RF58's fine-field bit 2 sometimes differed;
these mismatches remain in the reports rather than being hidden. RF58's LO-test
enable bit was cleared. One Pluto readback showed RX gain 70 versus the saved
71 after restoring `slow_attack`; that mode controls gain automatically. The
final independent readback was 71. Other saved Pluto attributes matched.
Final wrapper cleanup unloaded the modules, released
the card, removed its temporary firmware/NM configuration, and preserved the
wired default route. No nonvolatile RF writes were used. The demo stayed inactive.
The [initial final-state check](../output/rtl8922-tx-final-state.json) independently read
Pluto TX off, the restored settings, no bound RTL driver, no loaded experiment
modules, and the unchanged pinned working-patch hash. The
[TX validation summary](../output/rtl8922-tx-validation-summary.json) indexes
every saved hardware report and distinguishes the successful digital-tone
qualification from failed modulation/replay gates. The
[follow-up final-state check](../output/rtl8922-tx-followup-final-state.json)
records the state after the routing and modulation experiments above.

## Remaining experiment gates

1. **Resolve the source offline.** Trace the RTL8922A KIP/DPK stimulus controls
   and BB-MCU/NCTL consumers. Find actual sample-data stores and a reader feeding
   the TX path. Identify format, length, repeat, clock, source selection and
   a complete stop/reset sequence. Distinguish instruction, coefficient,
   calibration-report and waveform memories. A fixed tone or fixed TPG result
   does not satisfy this gate.
   The separate [firmware inventory](firmware-findings.md) identifies readable
   RISC-V BB-MCU startup code; its calibration call chains are a concrete next
   place to trace. Readability does not establish writable executable RAM or
   acceptance of modified firmware.
2. **Digital external route: passed for calibration tones.** Preserve the
   corrected AFE force mask, verify the rest of the source's ownership/clock
   rules, and characterize live-control timing with an independent capture
   continuity reference. The failed FSK and analog-offset trials must not be
   treated as qualified modulation. A DAC sample source is still missing.
3. **Prove finite waveform replay.** Once a writable source is known, transmit
   two different uploaded buffers, including asymmetric positive/negative
   complex tones and a deterministic modulated sequence. Capture independently
   with Pluto RX; verify spectrum movement and time-domain correlation with
   the requested sequence, allowing for delay/frequency/channel effects.
   Compare zero-buffer and TX-off controls, check I/Q sign/order, and report
   images, leakage and error. A strong spectral peak alone cannot pass.
4. **Only then implement bursts and streaming.** Measure buffer capacity,
   refill/ownership rules, overruns/underruns and sample clock before wiring a
   SoapySDR TX stream to it. Reuse PCIe transport only after the destination
   sample interface is established.

Any hardware stage must first check the current loopback demo status and card
ownership; never run both receivers. Save fresh RTL and Pluto settings, bound
the duration, and stop TX and restore settings in `finally`. The existing
working modules must not be overwritten while loaded. Keep any TX experiment
as an isolated experiment, respect the user's stopped-demo state, and do not
add hardware probes to CI. The current bounded probe demonstrates primitives;
it is not a qualified arbitrary-I/Q transmitter or a general replay API.

## Reproduction and provenance

- Working Linux source: `driver/upstream.json`, morrownr/rtw89 commit
  `8bbbacadf6fa73c3a3195aefbd4b2ec2422ae356`. Working patch SHA-256:
  `69f722ce636bb6fda541bd4be3d787fbc30b9db88b54d731dc66fe4a15036fc6`.
- Windows source package: ASUS
  [RTL8922AE 6102.24.143.0](https://dlcdnets.asus.com/pub/ASUS/mb/08WIRELESS/DRV_WiFi_RTK_8922AE_TP_W11_64_V6102241430_20260706R.zip).
  ZIP SHA-256: `4f1b9e5ea65fd6d4a3f04fdeee77fba83b3c423ee40f4e620c97f148f005e21b`.
  Extracted `rtwlane711.sys`: 13,661,408 bytes, SHA-256
  `6e008520696c20450959babc2d1f04a742c950d9085c3f02207fce2cd9830bbb`.
- Pinned Linux `firmware/rtw8922a_fw-4.bin`: 1,849,226 bytes, SHA-256
  `d11927f593c82879bd0437435475d7915a60932374747984b3dc906a23009dea`.
- Public Realtek common-source comparison: morrownr/rtl8852bu-20250826 commit
  `b6a299b4fe95cb6a37eec27a6c3b21cbaa6abfa8`. RTL8852B chip-specific files
  were used only as comparison, not RTL8922A register authority.

Run the [offline reproduction instructions](../research/tx/README.md) with
locally supplied inputs. Driver packages, firmware/ROM dumps, raw captures
and build outputs are not included. The working driver, Soapy receiver and
qualification results were not changed.
