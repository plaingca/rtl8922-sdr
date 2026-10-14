# Research map

Start with [capabilities](capabilities.md) and the [transmit guide](transmit.md).
This index groups the detailed lab record by the question it answers. Reports
include failed hypotheses and cleanup evidence; a later success does not
retroactively qualify an earlier failure.

## Receive

| Question | Evidence |
| --- | --- |
| Where can it tune? | [Synthesizer findings](../synthesizer-findings.md), [validation summary](../validation-summary.json) |
| How fast can samples reach the host? | [Streaming throughput](streaming-throughput.md) |
| How does the waterfall demo work? | [40-MS/s demo and forwarded ports](demo40-waterfall.md) |
| What moved from the original checkout? | [Migration validation](migration-validation.md), [host handoff](codex-handoff.md) |

## Transmit waveforms

| Investigation | Evidence |
| --- | --- |
| LO, calibration tones and initial source search | [Transmit findings](transmit-findings.md) |
| Signed finite complex IF levels | [DAC input controls](dac-input-findings.md) |
| BBMCU frequency update loop | [DDS findings](bb-dds-findings.md) |
| Known speech and bounded live audio | [FM](bb-fm-findings.md), [continuous FM](bb-fm-continuous-findings.md) |
| Independent frequency/amplitude controls | [Polar modulation](bb-polar-findings.md) |
| 2-MHz repeated OFDM and amplitude limits | [Polar OFDM](bb-polar-ofdm-findings.md), [timing/attenuation calibration](bb-polar-calibration-findings.md) |
| Muting, phase pause and amplitude synthesis | [NCO gate/PDM](bb-nco-gate-findings.md) |
| Receive-only choice of quieter test location | [Frequency survey](quiet-frequency-findings.md) |
| Constrained optimization and diversion | [NCO improvement tests](bb-nco-improvement-findings.md) |
| Individual frames and host-fed commands | [100-kHz OFDM](bb-nco-narrow-ofdm-findings.md) |
| Stateful application I/Q compilation | [200-kHz causal compiler](bb-nco-realtime-findings.md) |
| Packet presets and remaining long-mode errors | [LoRa sweep](bb-nco-lora-findings.md), [wide follow-up](bb-nco-lora-wide-followup.md) |

## Firmware and source tracing

| Question | Evidence |
| --- | --- |
| What processors and images are present? | [Firmware findings](firmware-findings.md) |
| What did the debug memory wrappers access? | [Debug-memory findings](tx-debug-memory-findings.md) |
| How were ROM captures validated? | [ROM capture](rom-dump-findings.md), [BB ROM parser](bb-rom-parser-findings.md) |
| Where do TX parser/source controls lead? | [Firmware TX analysis](tx-firmware-static-findings.md), [waveform-source trace](waveform-source-trace.md) |
| What do DMA and mailbox interfaces carry? | [Control and DMA flow](tx-control-and-dma-flow.md) |
| Does the calibration sequencer provide a sample endpoint? | [NCTL source findings](nctl-source-findings.md) |

Tools live in [`research/tx/`](../research/tx/README.md) and
[`research/firmware/`](../research/firmware/). Derived reports and plots are in
[`output/`](../output/); raw inputs and third-party images are excluded. Many
analysis commands need private inputs and cannot be reproduced from public
JSON alone. The [archive guide](../research/README.md) distinguishes historical
host-specific scripts from current entry points.

`make check-research` runs synthetic/mocked unit tests and local-input checks,
never RF probes. GitHub Actions runs these same offline checks with private
inputs absent; such skips do not count as hardware validation.
