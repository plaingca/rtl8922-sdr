# BB MCU parser and DPK waveform-source trace — 2026-10-12

The BB MCU parser is now traced to its ROM API boundary. The recovered handlers
do not yet expose a writable I/Q source: their implementations live in BB MCU
ROM, which was absent during this initial static pass. The WCPU DPK setup tables contain
register settings, including the AFE force bit used by the qualified tone.
Neither finding supplies a sample-upload or replay interface.

Update at 01:12 UTC on October 13: the subsequent bounded BB-local copy succeeded.
The [BB ROM/parser findings](bb-rom-parser-findings.md) resolve all six ROM targets
and identify Wi-Fi header/user-field processing evidence. The historical static
report below still records what was available before that capture. It must not
be read as the current ROM availability status.

This investigation stayed offline. It did not access hardware, alter the working
driver, load firmware or restart the stopped demo. The independent
[DPK firmware trace](tx-firmware-static-findings.md) covers the H2C entry point,
NCTL launcher, coefficient readback and RX SRAM diagnostics. Current RF evidence
remains in [transmit findings](transmit-findings.md).

The [companion inspector](../research/firmware/inspect_waveform_sources.py)
reproduces the details below from hash-pinned inputs. Its
[report](../output/rtl8922-waveform-source-trace.json) contains derived metadata
and short instruction excerpts, without raw images or full disassemblies.

## The parser reaches BB ROM

The CV1 BB MCU header supplies the initialized-data mapping from
`0x1001550c` to `0x10024000..0x10024cfc`. Applying it resolves the task names,
handler pointers and register lists consistently. This remains a static
inference; the execution alias and host write access are unverified.

There are two distinct tasks. `BackupRestore` at `0x10014d5a` dispatches queued
register-save/restore requests through `0x1001280a`. `Parser` at `0x10014dca`
calls setup at `0x1001129e` and an execution loop starting at `0x100113d8`.
The latter starts four bytes before its first saved-register instruction;
entering at `0x100113dc` would miss the stack adjustment and return-address save.

At `0x1001148c`, the loop loads a handler index from a context record, indexes
the table at `0x10024000` and performs an indirect call. Seven initialized
entries have been recovered:

| Index | Wrapper | ROM directory key | API-table byte offset |
|---:|---|---|---:|
| 0 | `0x10010df4` | Returns immediately | — |
| 1 | `0x10010df6` | `0x44534243` | 4 |
| 2 | `0x10010dfe` | `0x44534243` | 8 |
| 3 | `0x10010e06` | `0x44534243` | 12 |
| 4 | `0x10010e0e` | `0x44534143` | 8 |
| 5 | `0x10010e16` | `0x44535546` | 4 |
| 6 | `0x10010e1e` | `0x44535546` | 0 |

Main initializes these API roots through the lookup at `0x100105ce`. It walks
eight-byte key/pointer entries in `0x10000028..0x10000088`. The wrappers load
function pointers from the returned API tables and tail-call them. Their
implementations cannot be inferred from the wrappers. The parser's full input
validation and command format also remain unresolved; this is not a safe API
for arbitrary calls or a proposed function-pointer patch.

The available 512 KiB historical ROM snapshot belongs to the **WCPU** at
`0x20000000`. It does not contain this BB MCU ROM directory. A safe read alias
for the BB ROM must be established before trying to capture its directory or
follow these handlers. The firmware download destination `0x18638000` alone
does not establish that alias.

## DPK setup confirms routing, without uploading samples

The WCPU function at `0x2011724e` consumes 16 register/mask/value triplets per
path from `0x2020cc64` and `0x2020cd24`. Its restore function at `0x201172a6`
consumes 12 triplets at `0x2020cde4`, then performs additional cleanup writes.
The DPK log dictionary labels these calls BB/AFE setting and restore.

Both setup tables include `0x2a20` and `0x2b20`, **mask `0x10`, value 1**.
That independently confirms the sparse-mask correction that enabled our
external digital tone. They also configure `0xe414/0xe514`, converter/filter
controls at `0x2aa0/0x2ba0`, routing at `0x2a20/0x2b20`, and path controls at
`0xba24/0xbb24`. These tables contain configuration triplets rather than a
time-ordered I/Q buffer. The restore table is calibration cleanup, not a
complete standalone transmitter stop procedure.

Function `0x20117952` chooses NCTL operations according to the saved bandwidth
enum at `context + path + 0x3a0`:

| Enum | Operation |
|---:|---|
| 3 | `0x20` |
| 2 | `0x21` |
| 1 | `0x22` |
| Other | `0x23` |

It passes `(path, operation)` to `0x20117038`, which writes
`((18 * path + 0x19) | (operation << 8)) & 0xffff` to BB `0x8000`.
This is a concrete entry into the bandwidth-dependent calibration sequence.
The operations' internal meanings, stimulus source and source-selection mux
remain undecoded. The DPK IDL operations `0x2d/0x33/0x2e` are additional targets.

## WCPU access boundary and next evidence

The optional historical pointer snapshot resolves BB write wrapper
`0x2011bf94` through slot `0x2020107c` to ROM `0x20001bce`, and BB read wrapper
`0x2011bf9e` through `0x20201078` to ROM `0x20001c2a`. Those implement masked
register access, then delegate to lower transport pointers at `0x20205628`
and `0x2020562c`. The preserved table ends at `0x20205000`, so these pointer
values are unavailable. This trace does not establish a final MMIO alias.
These are historical snapshots, not fresh hardware reads.

The useful next evidence is the BB ROM API code or decoded NCTL operations
showing an actual data writer and a consumer feeding TX. A writable register
restore buffer, coefficient bank, RX report port or instruction window does
not provide that connection. No new RF test follows from these findings alone.

## Reproduction

With the dependencies in `research/requirements.txt` installed:

```sh
python3 research/firmware/inspect_waveform_sources.py \
  --firmware vendor/rtw89/firmware/rtw8922a_fw-4.bin \
  --output /tmp/rtl8922-waveform-source-trace.json
python3 -m unittest discover -s research/firmware -p 'test_*.py'
```

To reproduce the historical WCPU access checks, additionally supply
`--historical-rom /path/to/rom.bin --historical-table /path/to/table.bin`.
Both snapshots are hash-pinned; neither is required for the BB parser and DPK
table trace. All inputs are read-only and output may not overwrite an input.
The report records input hashes and the limitations above. Raw firmware, ROM
captures and vendor packages remain excluded from Git.

Validation: the report reproduced byte-for-byte, and the firmware-only result
matched after removing the optional historical section. Six new decoder and
input-boundary tests, eight TX analysis/cleanup tests and eleven existing
project tests passed. Python compilation and whitespace checks passed. The
working driver patch still matches its pinned hash. No hardware tests ran.
