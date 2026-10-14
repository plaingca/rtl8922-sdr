# RTL8922AE ROM dump investigation — 2026-10-12

The main WLAN CPU ROM is readable through the existing working driver's PCIe
window. A fresh capture reproduced the historical capture byte for byte.
The separate BB MCU code window and API tables have now been captured through
an accepted temporary startup-copy patch. Earlier direct aliases and temporary
firmware formats failed; those results are preserved below. The successful
[BB ROM/parser investigation](bb-rom-parser-findings.md) fixed the missing DSP
checksum and resolved six parser calls. Nothing here qualifies arbitrary I/Q TX.

The `0x10000000` alias probe caused a firmware fault after the original firmware
had booted. The initial recovery claim was incomplete: interface-up and readable
RAM did not establish healthy reception. A fresh original-firmware reload at
23:52 UTC subsequently passed bounded external-tone receive checks at both
20 and 40 MS/s, with no new firmware/HWSI errors. See the
[recovery report](../output/rtl8922-rom-probe-recovery-20261012.json).

## Verified main-CPU capture

The working `iq_rom` debugfs file saves register `0xc04`, selects `0x20000000`,
reads the 512 KiB aperture at BAR offset `0x80000`, and restores the selector.
Two complete reads on 2026-10-12 at 23:42 UTC matched exactly and matched the
historical local `cpuio-test/rom.bin` SHA-256.

| Region | Bytes | Result |
|---|---:|---|
| `0x20000000..0x20053fff` | 344,064 (336 KiB) | Readable ROM prefix with the previously traced RV32 code and ROM data |
| `0x20054000..0x2007ffff` | 180,224 (176 KiB) | Every word is `0xdeadbeef`; treated as unmapped, not ROM contents |

The captured window size does not establish a 512 KiB physical ROM.

Local files are deliberately inside the ignored `vendor/` tree:

- `vendor/local-rom-dumps/20261012/wcpu-rom-window.bin`: full 512 KiB window,
  SHA-256 `d133bbe8b31273f27d9eeae992ce5cccd8001eaf816ebbeca240ce84e07a6ee4`.
- `vendor/local-rom-dumps/20261012/wcpu-rom-readable.bin`: the readable 336 KiB
  prefix, SHA-256 `d688582ba4c1ccf617dd2a90a844c4b6f0deab024a2b9ac7db924315bee1b58d`.

Raw images must remain uncommitted. The metadata and fresh cleanup checks are
in [the capture report](../output/rtl8922-rom-dump-20261012.json).

## BB MCU ROM target and direct-read results

The pinned BB RAM function at local `0x100105ce` scans twelve eight-byte
key/pointer pairs in `0x10000028..0x10000087`. The parser's calibration wrappers
use keys `0x44534243`, `0x44534143`, and `0x44535546`. Reading this 96-byte directory
would identify the missing ROM API roots without assuming function semantics.
This follows the [static waveform-source trace](waveform-source-trace.md).

The PCIe window read was first checked against the BB image's header at
global `0x18638000` and startup bytes at `0x18638200`. Both matched the pinned
firmware exactly. These checks establish access to those BB RAM bytes, not a
complete BB CPU address translation.

| Candidate global ROM base | Directory read at base + `0x28` |
|---|---|
| `0x18630000` | Stable register-like data; none of the required keys |
| `0x10000000` | Returned `0xdeadbeef` and triggered `FW BADADDR = 0x10000028`, followed by SER `0x5000`; faulting probe, disabled |

The first candidate belongs to the BB MCU register area; Linux's
`RTW89_BBMCU_ADDR_OFFSET = 0x30000` is a register offset, not evidence of a ROM
alias. The second probe caused a firmware fault, so its returned sentinels do
not establish a safe mapping or useful ROM contents. Neither candidate establishes that the ROM is encrypted or
unreadable through every interface. Probe metadata is in
[attempt A](../output/rtl8922-bb-rom-probe-a.json) and the fresh final report.

The kernel log at 23:42:06 UTC records selection of `0x10000000`, a read at
aperture offset `0x80028`, then `FW status = 0x1400`,
`FW BADADDR = 0x10000028`, and `FW EPC/RA = 0x2002c9e0`. SER reported
`0x5000` and requested a hardware restart. The HWSI busy and firmware-off H2C
messages followed this failure. Restoring the window selector and unloading
modules did not by themselves prove recovery.

## Temporary startup-copy experiment

An isolated firmware builder installs a 140-byte RV32 stub in verified zero
padding at local `0x10017000` and redirects the startup instruction at
`0x10010214`. Its intended action is to copy the 96-byte ROM directory to
`0x10017b10`, bracketed by completion markers at `0x10017b00`, then resume the
original startup. The corresponding host read address `0x1863fb00` remains a
hypothesis until the stub executes successfully. CPU store/cache behavior also
remains unverified on hardware.

Unicorn 2.1.4 emulation verified the copied bytes, register/stack preservation,
displaced instruction behavior, and bounded writes. Emulation does **not** prove
the device accepted or executed the patch.

| Attempt | Temporary BB image | Observed loader result |
|---|---|---|
| B | Code patch, original manifests | `fw checksum fail`, firmware type 64 |
| C / diagnostic D | Patch plus refreshed section SHA-256 fields at original file offsets `0xdbef0` and `0xdbf10` | Same checksum failure |
| E | Repacked one-section BB image without security sections | `fw security fail`, firmware type 64 |

Each failed boot invoked the existing loader's five retries inside a 45-second
outer timeout. B and C failed before the normal launcher ran the capture tool.
D preserved debugfs after failure but hit a probe formatter-length error: the
driver emits complete 16-byte rows. That error is fixed and regression-tested;
D supplies no valid copy-buffer evidence. E supplied no matching stub readback.
None of B through E produced a validated BB ROM directory or demonstrated BB patch execution.

The unchanged driver reported `MSS secure_boot=0 dev_type=0 cust_idx=0 key_num=0`
during D, E, and the successful original-firmware recovery boot. This is the
driver's interpreted efuse state. It does **not** mean unsigned firmware is
accepted: E directly contradicts that inference. The later F through H trials
repaired the missing DSP XOR16 footer and booted with the same reported
secure-boot state. They retained both security sections and all signing
keys/signatures; see the linked follow-up for the exact scope.
No keys were extracted, signatures generated, or fuses/security settings changed.

The locally inspected vendor Windows package contained no separate BB ROM
file. No copy of the expected three-key directory was found in its driver or
the preserved WCPU ROM. That is scoped to the inspected package and images.

## Tools, validation, and restored state

These tools are manual research tools, excluded from hardware CI:

- [probe_bb_rom.py](../research/firmware/probe_bb_rom.py): offline plan by default;
  execution requires `--execute --dump-wcpu-rom` and performs only two reads
  of the existing WCPU ROM interface. BB ROM alias probes are disabled, and
  the shared mapped-read helper permits only the known BB RAM window.
- [bb_rom_copy_patch.py](../research/firmware/bb_rom_copy_patch.py): offline builder
  for isolated experimental images, including the accepted checksum-corrected
  copy. It refuses to overwrite inputs/outputs.
- [capture_bb_rom_copy.py](../research/firmware/capture_bb_rom_copy.py): offline plan
  by default; manual bounded readback of markers and the expected directory.
- [run_bb_rom_test.sh](../research/firmware/run_bb_rom_test.sh): isolated launcher
  using the original modules, with firmware debug logging and failure readback.
  Always invoke under an outer `timeout` of at most 45 seconds.

Nine hardware-free tests passed, covering patch execution, copy bounds, directory
validation, rounded debugfs reads, mapping boundaries, rejection of the faulting
alias before changing the selector, WCPU-only capture, and restoration after a failed ROM read.
The shell launcher passed `bash -n`.

The 23:42 UTC boot used the untouched pinned firmware and brought the interface
up successfully. Its BB header/startup checks passed, but the subsequent alias
probe crashed the firmware. That boot must not be counted as a healthy receive
recovery. The already completed WCPU capture remains byte-identical to the
historical image.

The 23:52 UTC recovery reloaded the original working modules and untouched pinned
firmware without running any ROM probes. It captured 65,536 CF32 samples per tone
at 2442 MHz / 20 MS/s and 400,000 CF32 samples per tone at 2422 MHz / 40 MS/s.
The two Pluto offsets were +250 and -250 kHz. Observed peak movement was
499,790.74 Hz and 499,877.93 Hz respectively, inside the existing 3 kHz tolerance
around 500 kHz. All captures passed their sample-count, finite-value and timestamp
checks. The kernel log contained no new HWSI, firmware-fault, SER, power-off H2C,
failure or timeout messages across boot, reception and cleanup. These are short
receive health checks; they do not extend continuous-streaming qualification.

Fresh final checks confirmed the card unbound, temporary firmware/NM configuration
absent, all working `_git` modules unloaded, the wired default route present,
and the demo service and loopback listener inactive. Pluto's freshly saved
settings were restored exactly and TX powerdown read back as `1`. The working
driver source/modules were not patched or rebuilt. No Realtek TX test was run.

The follow-up established temporary BB patch execution and a BB-local copy
method without repeating the faulting aliases. Remaining targets are the custom
parser instructions and the hardware TPG/source mux. The successful copy does
not establish a DAC sample-data endpoint or arbitrary I/Q transmission.
