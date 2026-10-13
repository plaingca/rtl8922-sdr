# Research archive

For a guided entry point, use the [research map](../docs/research-map.md),
[capabilities](../docs/capabilities.md) and [transmit quick start](../docs/transmit.md).
`make check-research` runs only hardware-free unit tests; it does not execute
the historical archive scripts or start an RF experiment.

`archive/pluto-iq/` preserves original experiment generators, capture scripts,
analysis utilities, patches and disassembly notes. `archive/vendor-analysis/`
contains our Windows driver inspection scripts. These are historical tools:
many refer to `/home/plaing/rtl8922-iq-research` or `D:/Meta-Orchestrator`.
Read each before use; they are not the portable demo launcher.

Raw I/Q, firmware/ROM images, Windows driver packages, compiled binaries,
third-party Python packages and credentials are excluded. Obtain a Windows
driver package separately to use the inspection scripts. Linux firmware comes
from the pinned upstream checkout with its upstream license.

Reports are in `output/`. Older reports are historical observations.
`synthesizer-findings.md`, `validation-summary.json` and the root README
describe current conclusions, rejected probes and continuity limitations.
Archive scripts may write registers or drive Pluto TX; they are not automatic tests.

`tx/` contains offline transmit-path inspection and explicit bounded manual RF
probes. LO carrier movement, digital RF calibration tones and finite complex
IF envelopes were observed. Raw DAC replay/streaming remains unproved.
Never run its RF modes automatically. See
[transmit findings](../docs/transmit-findings.md).

The [LoRa wide-mode follow-up](../docs/bb-nco-lora-wide-followup.md) documents
the missing receiver channel filter and remaining long-symbol failures.
`tx/analyze_bb_nco_lora.py` now filters by default; `--legacy-unfiltered`
reproduces the original receiver. `tx/diagnose_bb_nco_lora.py` audits received
headers/CRC/symbols, and `tx/model_bb_nco_lora.py` independently integrates the
packed command tables with the fixed service-hold model. All are offline.

The [DAC input follow-up](../docs/dac-input-findings.md) measures independent
I/Q tone attenuation, traces native DAC correction bytes and records the
failed apparent-DC source. Its working IQC-plus-DDS composition transmits
signed complex IF levels with a strong complementary image. The 40-ms held
values were independently reconstructed at RF; physical DAC sample timing,
replay RAM and continuous streaming remain unresolved.

`firmware/inspect_waveform_sources.py` is an offline companion to the firmware
TX inspector. It traces the BB parser's ROM API boundary and DPK setup/source
controls using pinned inputs. See the [waveform-source trace](../docs/waveform-source-trace.md)
for the initial ROM boundary and remaining sample-interface evidence.

`firmware/inspect_bb_rom.py` resolves six parser calls using the newly captured
BB code and API tables. The [BB ROM/parser findings](../docs/bb-rom-parser-findings.md)
document the accepted temporary copy method, checksum repair, packet-metadata
evidence and its limits. Raw images stay in ignored `vendor/` storage. The
builder and capture reader are manual tools; hardware execution requires explicit
`--execute` under the bounded launcher and must never run as CI.

`firmware/inspect_dma_mailbox.py` executes selected pinned RV32 routines offline
to recover IDDMA address/control programming, paired BB/AFE state-copy requests,
and the WCPU/BB three-word command mailbox. Its [flow analysis](../docs/tx-control-and-dma-flow.md)
distinguishes those interfaces from the still-missing DAC sample endpoint.
It requires local ROM/table inputs and the optional Unicorn dependency; it
never accesses hardware.

`firmware/inspect_nctl_sources.py` recognizes selected calibration-sequencer
patterns using pinned firmware and upstream source. Its [NCTL source analysis](../docs/nctl-source-findings.md)
matches four TPG bandwidth presets and recovers inferred DPK command branches.
It is a partial static interpretation, with unresolved mask and wait semantics;
it emits no executable program and does not establish arbitrary-I/Q replay.

`tx/inspect_debug_memory.py` executes selected pinned Windows SRAM debug
wrappers offline with the indirect bus replaced by recording stubs. Its
[debug-memory findings](../docs/tx-debug-memory-findings.md) map the MAC selectors,
trace the BB MCU register aperture, and identify an optional external BB ROM
image loader. None supplies a qualified DAC sample endpoint.
