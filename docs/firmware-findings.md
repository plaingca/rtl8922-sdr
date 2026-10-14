# RTL8922AE processor and firmware inventory — 2026-10-12

The inspected main-controller ROM/RAM code and baseband MCU startup code are
readable 32-bit RISC-V, including compressed instructions. Offline reverse
engineering can continue without decryption of these regions. Acceptance of
modified code is a separate, unresolved question: the images contain security
sections, and the driver supports efuse-selected firmware authentication.

Follow-up: the [BB ROM/parser investigation](bb-rom-parser-findings.md) accepted
a checksum-corrected temporary BB startup patch on this card with reported
`secure_boot=0`. It captured the local code/API windows and resumed normal
startup. This is a scoped runtime result; it does not establish acceptance of
arbitrary images on other cards or remove the authentication uncertainty there.

This pass used local files only. It did not access the card or Pluto, load
firmware, change the working driver, or restart the stopped demo. Current RF
and capture qualification in the root README and validation summary is unchanged.

## Identified execution domains

| Domain | Evidence | Remaining uncertainty |
|---|---|---|
| Main WLAN controller (WCPU) | Normal image code at `0x20100000` decodes as RISC-V32 with compressed instructions. Seven existing ROM/RAM DMA function traces reproduced exactly, including their historical pointer checks. The firmware log dictionary contains a FreeRTOS startup message, and the driver waits for FreeRTOS readiness. | Exact CPU implementation, clock, full ISA extensions, and RTOS version. |
| Baseband MCU | The pinned driver declares `bbmcu_nr = 1`. Two BBMCU0 image elements target silicon revisions CV1 and CV0. Both contain a 32 KiB section with coherent RISC-V startup code at section offset `0x200`: stack initialization, a CSR operation, a fence and two indirect calls. | Exact CPU implementation, OS, full memory map and runtime ownership. |
| RF NCTL calibration sequencer | A register table loads 1,024 consecutive words at relative BB `0x8500..0x94fc`, with surrounding control writes. | Instruction semantics and execution model; it has not been identified as RISC-V or waveform RAM. |
| Data CPU (DCPU) control domain | The BE driver exposes separate data-CPU enable, reset, UART, DMA and firmware-download status controls; RTL8922A initialization touches its platform enable. | Its ISA, executable image mapping and relationship to the traced WCPU routines have not been established here. Register names alone do not provide a complete physical core count. |

Two RF paths, two BB firmware revisions and two generic BB initialization
branches must not be counted as two qualified baseband MCU cores. This pinned
RTL8922A configuration requests one BB MCU image.

## Container and code maps

Pinned `rtw8922a_fw-4.bin`: 1,849,226 bytes, SHA-256
`d11927f593c82879bd0437435475d7915a60932374747984b3dc906a23009dea`.

- The multi-image directory contains normal firmware, wake-on-wireless
  firmware, and a log dictionary. Normal and wake firmware report version
  `0.35.80.3`.
- Normal firmware starts at file offset `0x40`; its 192-byte image header puts
  the first code section at file offset `0x100`, destination `0x20100000`,
  length 390,672 bytes. The historical ROM capture covers 512 KiB from
  `0x20000000`; the historical function-pointer snapshot starts at `0x20201000`.
- BBMCU0 elements start at `0xd3df0` (CV1) and `0xdd7c0` (CV0). Their first
  section downloads to `0x18638000`. An internal header repeats `0x10010200`;
  coherent startup code occurs at section offset `0x200`. Using `0x10010200`
  as its execution address is an inference from that header, not a measured
  program counter or a complete alias map.
- The baseband startup is preceded by an internal header, opaque fields and
  padding. Decoding the section from byte zero gives misleading instructions.
- RF NCTL is an initialization table with 1,202 address/value pairs, including
  the 1,024-word sequencer load. Its remaining contents need semantic analysis.

## Encryption and authentication

Successful coherent disassembly and reproduction of known DMA functions show
that the inspected code regions are available in plaintext. This does not
establish that every firmware region is plaintext or identify all opaque data.

The normal and wake images each declare two type-9 security sections. The CV1
baseband image declares two, and CV0 declares one. The pinned loader handles
signature/key pools and secure-boot selection; `efuse_be.c` derives its secure
state from chip efuses. This inventory reads section declarations only: it does
not validate signatures, extract key material or determine the physical card's
secure-boot state. Host UEFI/module-signing settings are a separate mechanism.

Reading code is demonstrated. Booting modified images and writing executable
RAM successfully are untested. Readable memory and a historical RAM function
table do not establish writable/executable patch access. No fuse changes are
needed for the present offline work.

## Reproduction and next targets

With Capstone installed from `research/requirements.txt`, run:

```sh
python3 research/firmware/inspect.py \
  --firmware vendor/rtw89/firmware/rtw8922a_fw-4.bin \
  --output output/rtl8922-firmware-core-inventory.json
```

The inspector pins the input hash, checks container/header bounds, verifies the
two baseband startup blocks, and emits metadata and short instruction excerpts.
It emits no firmware images, ROM dumps or key material. The inventory is
[preserved here](../output/rtl8922-firmware-core-inventory.json).
The [existing seven-function trace](../output/rtl8922-stream-firmware-trace.json)
was independently reproduced with Capstone 5.0.7 against the locally preserved
ROM/table snapshots; those snapshots are historical, not fresh hardware reads.

The next useful offline targets are WCPU command dispatch and PAXI ownership
for extraction; BB MCU calibration call chains for tuning and TX routing; and
the NCTL instruction format. A first BB call map should distinguish code,
constants, initialization data and headers before assigning function names.
Any later hardware experiment must separately establish current ownership,
authentication/write behavior, bounded execution and restoration.

The [TX firmware follow-up](tx-firmware-static-findings.md) now traces the WCPU
DPK command handler into NCTL operations and identifies the CV1 BB MCU's
register backup/restore task. It classifies coefficient and RX diagnostic
memories while leaving arbitrary-I/Q playback unresolved.

Source anchors: pinned `vendor/rtw89/fw.h`, `fw.c`, `rtw8922a.c`, `mac_be.c`,
`efuse_be.c`, and the reconstructed firmware. Vendor files and raw historical
images remain ignored and are not redistributed by this report.
