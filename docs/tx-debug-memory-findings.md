# TX sample search: native debug memory and BB ROM boundary — 2026-10-12

No arbitrary-I/Q playback endpoint was found in this pass. The useful new
result is a concrete map of the Windows SRAM debug API, including its rejected
write selectors, plus a distinction between the BB MCU's host register window
and its still-missing local ROM. An optional external BB ROM-image loader is
present in the Windows driver, but that is not a ROM-dump interface.

The [offline analyzer](../research/tx/inspect_debug_memory.py) and
[derived report](../output/rtl8922-debug-memory-analysis.json) preserve the
evidence. No hardware was accessed, no driver or firmware was installed, and
the stopped demo was not restarted. The working driver patch was unchanged.

## SRAM debug resolves to indirect bus accesses

The pinned ASUS driver has native read/write wrappers at
`0x14055df00` and `0x14055e160`. Its operations table at `0x140cc4210`
links these wrappers to the base-address resolver at `0x140535ab0` through
slot `0x9c8`, then to indirect read/write functions through slots
`0xbd0/0xbd8`. Those links are checked against the actual table contents.

The wrapper selector and resolver selector are **different enumerations**.
For example, wrapper selector 13 calls resolver selector 4. Passing the
number from one layer to the other would select different storage.

Selected wrapper results below use a supplied byte offset of `0x40`. The
region descriptions agree with the pinned upstream MAC memory definitions;
the addresses and acceptance/rejection come from the native wrapper trace.

| Wrapper selector | Indirect address | Region | Read | Write |
|---:|---|---|---|---|
| 12 | `0x18700040` | Shared packet memory | Accepted | Rejected |
| 13 | `0x18800040` | DMAC table | Accepted | Accepted |
| 17 | `0x19c02040` | DCPU local region | Accepted | Accepted |
| 18 | `0x18862040` | TX descriptor FIFO 0 | Accepted | Rejected |
| 19 | `0x18881840` | TX descriptor FIFO 1 | Accepted | Rejected |
| 20 | `0x18861040` | TX packet-data FIFO 0 | Accepted | Rejected |
| 21 | `0x18881040` | TX packet-data FIFO 1 | Accepted | Rejected |
| 22 | `0x18820040` | NAT25 CAM | Accepted | Accepted |
| 23 | `0x18829040` | MLD table | Accepted | Accepted |
| 24 | `0x1882a040` | RX classification CAM | Accepted | Accepted |

“Accepted” means that the **emulated wrapper** called the recorded indirect
access stub. It does not establish hardware access, memory permissions or
correct device power state. The FIFO write rejection is a restriction of this
debug API; it does not prove that other bus masters cannot write packet data.

Each successful wrapper requests a four-byte access. For the special DMAC
layout flag, offset `0x124` becomes `0x424`, producing `0x18800424` in both
directions. A synthetic transport error `0x55` propagates to the caller.
These behaviors were checked by executing the actual selected x86 code in
Unicorn, with a bounded instruction range and instruction/time limits.
Logging and indirect bus access are recording stubs; no bus is simulated.

There are also zero-base resolver entries, including one reached by wrapper
selector 16. This is not a discovered DAC aperture or a reason to try arbitrary
physical addresses. An address that software can formulate may still fault on
the device bus, as the previous BB ROM alias attempt demonstrated.

This closes a specific false lead: the native “SRAM debug” API's extra
selectors do not identify a sample-clocked DAC FIFO. Its visible TX FIFOs
match the MAC's existing packet path. None of the traced wrappers supplies a
sample rate, I/Q format, replay length, source mux or DAC request handshake.

## The BB MCU register API does not translate local ROM addresses

The MP register-read entry at `0x1403ba978` calls the leaf wrapper at
`0x14026e31c`, which tail-calls masked read `0x14035f90c`. The corresponding
write entry at `0x1403bb5a8` calls `0x14026e384`, then `0x14035fa40`.

Their address calculation is:

```text
host register address = context register-window base
                      + supplied offset
                      + (nonzero PHY selector ? 0x20000 : 0)
```

The context initializer sets the BB MCU register-window base at context
offset `0x9ac` to `0x30000` on the BE branch. The lower routines add that
base and call the host register transport. The masked write performs ordinary
read/modify/write when the mask is narrower than a word.

There is no recovered translation from the BB CPU's local `0x10000000` ROM
space into a host-visible memory window in this chain. The API name means
BB MCU **register** access; it does not establish a safe ROM read alias.
The ROM directory and parser implementations described in the
[waveform-source trace](waveform-source-trace.md) remain unavailable.

## A separate external BB ROM image was supported by the vendor loader

The BB firmware configuration routine at `0x1404cf6e8` has an optional,
flag-controlled branch that formats a filename using these literal components:

| Component | Value |
|---|---|
| ROM stem | `RTL8922Afw_rom` |
| BB suffixes | `_bb0`, `_bb1` |
| Extension | `.bin` |

Other filename components are supplied dynamically; these literals alone do
not establish one exact filename. The ROM branch passes the constructed path
and a host buffer to file-reader `0x14000d1b8`, with a maximum of `0x100000`
bytes. This is an upper read limit, **not** the silicon ROM's measured size.

The RAM loader at `0x1404d0010` separately uses stem `RTL8922Afw`. Its caller
can copy supplied RAM-image data or request a file. That should not be mistaken
for an embedded complete BB ROM image. This pass did not establish that the
optional ROM branch is enabled on production AE cards or that such an image
can be loaded successfully.

The hash-pinned ASUS ZIP has 23 entries. Its binary/data-named entries are
`rtwlane711.sys` and `rtldata711.dat`; there is no separately named
`RTL8922Afw_rom` file. Searches for the recovered stem did not locate a public
copy. This is a useful acquisition lead, not a recovered ROM or evidence that
the unknown parser handlers support sample replay.

## What this means for getting samples to the antenna

The MCU code exposes the **control** side: mailbox requests, register settings,
calibration sequencing and DMA programming. Our qualified digital RF tone
already demonstrates that one calibration-generated signal reaches the analog
TX chain. It does not establish that the DAC consumes a WCPU/BB MCU RAM buffer.

The missing connection is still one of these:

1. A writable FIFO with a sample-clock request/backpressure mechanism and a
   source selection into TX.
2. Writable sample memory with a clocked reader, sample format, length/repeat
   controls and that source selection.

The [NCTL trace](nctl-source-findings.md) reaches fixed TPG bandwidth setters;
this debug-memory trace does not expose their hardware data source. The next
useful static evidence would be the missing BB ROM implementation, or an
RTL8922A stimulus-source definition that names an actual sample writer and
consumer. Native-timed changes to the observed DDS remain a separate, narrower
modulation hypothesis requiring resolved NCTL mask and timing semantics.

Related RTL8852C vendor source was also inspected at OpenIPC/devourer commit
`5be2b72001c1af19e44519074a7dac2f986492d5`, downloaded only under `/tmp`.
Its [IQK SRAM routine](https://github.com/OpenIPC/devourer/blob/5be2b72001c1af19e44519074a7dac2f986492d5/hal/halrf/g6/vendor/halrf_8852c/halrf_iqk_8852c.c#L225)
reads the receive sample report; its
[TPG selector](https://github.com/OpenIPC/devourer/blob/5be2b72001c1af19e44519074a7dac2f986492d5/hal/halrf/g6/vendor/halrf_8852c/halrf_dpk_8852c.c#L297)
uses the same four constants already cross-checked in the NCTL analysis.
Those are comparison evidence from another chip, not an RTL8922A register map
or proof that no hidden playback mode exists.

## Reproduction and validation

Install `research/requirements.txt` and Unicorn 2.1.4 into a local analysis
environment. NumPy is needed by the existing tone/FSK tests. Supply the pinned
ASUS driver and, optionally, its original ZIP; the analyzer never downloads
inputs or accesses hardware.

```sh
python3 research/tx/inspect_debug_memory.py \
  --driver /path/to/rtwlane711.sys \
  --driver-package /path/to/driver.zip \
  --output /tmp/rtl8922-debug-memory-analysis.json
python3 -m unittest discover -s research/tx -p 'test_*.py' -v
```

Validation: 99 bounded native execution cases, including error propagation
and selector rejection, passed. Four new offline scope/input guards passed.
The report reproduced byte for byte. The complete TX test suite passed after
using the analysis dependencies together with the existing NumPy installation.
Syntax and whitespace checks passed, and the working driver patch retained
SHA-256 `69f722ce636bb6fda541bd4be3d787fbc30b9db88b54d731dc66fe4a15036fc6`.
No RF or other hardware tests ran.
