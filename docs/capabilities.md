# Receive and transmit capabilities

These are measured research results, not specifications for a general-purpose
SDR. Receiver extraction, RF fidelity, continuity and transmit sample access
have separate evidence requirements.

## Receiver

The qualified path is **PATH1 RF/ADC → digital receive processing → diagnostic
LA capture → 320-KiB SRAM ring → PCIe extraction → SoapySDR**. It is not proven
to be unprocessed ADC output. The plugin supplies CF32 and CS16.

| Mode | Result | Limit |
| --- | --- | --- |
| Free tuning, 20 MS/s capture | Requested windows 2312–2382, 2412–2484, 2500–2515 and 4900–7115 MHz; filtered output at 1.25, 2.5, 5, 10 and 20 MS/s | Subject to enabled channels; external tone evidence ends at 6 GHz; sensitivity and whole-band fidelity uncharacterized |
| Explicit legacy browser demo, 40 MS/s | 2422–2462 MHz centers, overview and waterfall close-up | Experimental; retunes cause gaps; display skips do not measure sample loss |
| Bounded 40-MS/s raw transport | Fifteen-minute transport check passed its counters | Does not establish sample-level continuity or indefinite operation |
| Default browser demo, 160 MS/s | Continuous capture at 5250 MHz, full 5170–5330 MHz waterfall; three-minute demo trial passed its guards | Live band retuning with marked gaps and no module reload; firmware held until teardown; stops on receive faults |
| PAXI 80/160 MS/s | 60-second raw transport and CF32 application trials pass at 5210/5250 MHz | Full-band fidelity and indefinite reliability remain unqualified; see [PAXI findings](highrate-reception.md) |
| Corrected PAXI 160 MS/s continuity | One-second Pluto coded-reference capture passes at 2447 MHz, with every tested single-sample fault detected | Packet detection inhibited; bounded interval only; see [continuity findings](continuity-pd-findings.md) |

Read the [synthesizer findings](../synthesizer-findings.md),
[validation summary](../validation-summary.json), [throughput report](streaming-throughput.md)
and [demo evidence](demo40-waterfall.md). Strong stationary peaks and calculated
PLL dividers were not accepted as proof of successful RF tuning.

## Transmitters

**The browser's transmitter is ADALM-Pluto.** It sends timed waterfall text or
reference tones with saved-setting restoration. The RTL8922 receiver displays
them. It does not expose the experimental RTL transmitter in the browser.

**RTL8922 transmission remains a bounded laboratory workflow.** Isolated
BBMCU firmware drives recovered frequency/amplitude controls. There is no Soapy
TX stream or qualified general raw-DAC replay interface.

| Experiment | Observed result | Qualification boundary |
| --- | --- | --- |
| LO / digital calibration tone | External frequency movement and TX-off controls | Carrier/tone controls, not sample upload |
| Finite complex IF envelope | 16 unseen held levels reconstructed at 34-dB signal/error | 40-ms host holds and strong complementary image |
| FM | Known speech and 8-/12-second live ICY bursts recovered on Pluto | Indefinite operation unqualified |
| Precomputed 100-kHz OFDM | 511/512 frames recovered across a 0.394-second changing stream | One preamble erasure; optimized commands prepared offline |
| Causally compiled 200-kHz OFDM | 1011/1024 and 1016/1024 exact CRC frames; 21.6–23.0% median EVM | Input I/Q prepared before each test; external live ingress and indefinite streaming unqualified |
| LoRa | Selected modes recover distinct packets without averaging; Short Turbo 1.625 MHz 10/10, Medium Turbo 9/10 | 2.4-GHz lab RF; SF11/SF12 errors, commercial Meshtastic-node interoperability unqualified |

For causal OFDM, **533.333 kS/s** is the CF32 application input rate,
**10.667 million commands/s** is the nominal NCO write cadence, and **200 kHz**
is the span between the outer active subcarrier centers. Neither command rate
nor input rate is measured occupied bandwidth. Muting pauses phase and generates
unwanted energy; spectral masks and calibrated radiated power remain unqualified.

The compiler's software pipe is hardware-free. The RF experiment instead
compiles while refilling two BB buffers, and deliberately stops after a bounded
burst. Host scheduling can miss its refill deadline; an observed underrun is
retained as a failure. Passing later runs does not erase it.

See the [transmit guide](transmit.md) for entry points and the
[research map](research-map.md) for the complete evidence, including rejected
recipes. Historical findings describe their own scope; current aggregate reports
and explicit limits take priority over an optimistic earlier experiment.
