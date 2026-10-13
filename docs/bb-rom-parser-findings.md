# BB MCU ROM capture and parser trace — 2026-10-12

The BB-local ROM read now works. A checksum-corrected temporary startup stub
copied the code window and API tables into unused, host-readable BB IRAM, then
resumed the original startup. All 12 bulk-copy boots completed; their markers,
repeated RAM reads and overlapping chunks passed. No RF transmission test ran;
Pluto TX stayed off. Arbitrary-I/Q transmission remains unproved.

The parser lead now points to Wi-Fi header/resource-unit/user-field processing.
It contains RU-size tables, MCS, DCM, spatial-stream and CRC handling evidence.
The separate NCTL `0x20–0x23` path reaches hardware TPG configuration, without
an identified user-sample pointer or sample replay interface.

## The missing integrity check

Earlier patches refreshed only two SHA-256 fields and left the DSP checksum
stale. The pinned CV1 BB image also has a SHA-384 security record. Its two
default security records follow this recovered footer rule:

```text
checksum = XOR of little-endian 16-bit words in:
           BB section (32 KiB) + selected security record excluding its final 8 bytes
footer   = checksum as uint16 LE + 10 b1 19 94 09 25
```

| Default record | Section hash copies | DSP XOR16 word |
|---|---|---|
| SHA-256: `0xdbe70`, 712 bytes | `0xdbef0`, `0xdbf10` | `0xdc130` |
| SHA-384: `0xdc670`, 1032 bytes | `0xdc710`, `0xdc740` | `0xdca70` |

These are original container file offsets. The rule reproduces both default
footers and five of six pooled-signature footers. The final pooled record
differs; the helper deliberately does not rewrite pooled records. The driver
selects the first default security record when its interpreted `secure_boot`
state is zero and ignores the second. Refreshing SHA-384 keeps it consistent;
this experiment does not show the ignored record was required for acceptance.

[bb_image_integrity.py](../research/firmware/bb_image_integrity.py) validates the
original defaults, then refreshes their section hashes and checksum words.
Signing keys, signatures, hardware security settings and fuses remain unchanged.
Acceptance on a different secure-boot configuration is unproved.

Attempt F at 01:07 UTC on October 13 booted with `INTERFACE_UP_EXIT=0` and
`MSS secure_boot=0`. The stub readback and both markers passed; all three required
directory keys were present. Its validator returned false because it incorrectly
required API roots to point into code ROM. The actual roots point to tables at
`0x10020000…`. G copied the first 256 bytes of those tables. F/G reports retain
their original results; the successful H batch uses the corrected validator.

## The bounded BB-local copy

The patch redirects only the startup instruction at local `0x10010214`.
Its stub reproduces the displaced instruction, preserves its temporaries and
stack, and returns to `0x10010218`. Small copies use stub `0x10017000` and output
`0x10017b00`. Bulk copies use stub `0x10016240` and output `0x10016300`, with at
most `0x1cf0` payload bytes. The builder verifies zero padding in the pinned
image, and Unicorn execution checks enforce output/stack write bounds.

The host reads only the previously verified BB IRAM window
`0x18638000..0x1863ffff`; the BB CPU performs the local source reads.
The faulting global ROM alias is never retried. Each boot uses the unchanged
working modules and an isolated temporary firmware file under a 45-second
timeout. Cleanup removes the temporary firmware/NM files and unloads modules
after every chunk. No working driver is overwritten.

H completed in 31.76 seconds, inside a five-minute outer limit. Ten code chunks
and two table chunks stepped by `0x1c00`, overlapping by up to `0xf0` bytes.
Each output was read twice. This is not two independent complete ROM captures.

| Local window | Bytes | SHA-256 |
|---|---:|---|
| `0x10000000..0x1000ffff` | 65,536 | `048b294373e64d67ae11c1c779ce9047729a72c19b809ca18f15b4a7882ba758` |
| `0x10020000..0x100223ff` | 9,216 | `19e55f746ba1a9ba9d4f8a40ceeb585490135706583337941ab41625f5155789` |

Raw images stay in ignored `vendor/local-rom-dumps/20261012/bb-mcu/`.
The code window's last nonzero byte is at offset `0xbc7f`; its capture size
does not measure physical ROM capacity. The table window includes boot state
above `0x10022000`; that tail is not claimed to be immutable ROM. Evidence is
in the [capture report](../output/rtl8922-bb-rom-capture-h.json) and
[cleanup report](../output/rtl8922-bb-rom-h-final-state.json).

## Six parser calls resolved

The twelve-entry ROM directory, copied API tables and pinned RAM dispatch table
resolve every nonempty parser entry:

| Index | RAM wrapper | API key | API root + offset | ROM function |
|---:|---|---|---|---|
| 1 | `0x10010df6` | `0x44534243` | `0x10020054 + 4` | `0x100032e8` |
| 2 | `0x10010dfe` | `0x44534243` | `0x10020054 + 8` | `0x10002d08` |
| 3 | `0x10010e06` | `0x44534243` | `0x10020054 + 12` | `0x10002a60` |
| 4 | `0x10010e0e` | `0x44534143` | `0x10020000 + 8` | `0x100014fc` |
| 5 | `0x10010e16` | `0x44535546` | `0x10021be0 + 4` | `0x1000476e` |
| 6 | `0x10010e1e` | `0x44535546` | `0x10021be0 + 0` | `0x10004888` |

Concrete evidence includes the `parser/common_api.c` source suffix,
`inputLength <= 32`, `packDataIn4Bytes`, RU sizes, CRC and user-field formats.
The traced functions process packed words and per-context state, consistent
with the RAM parser's `0x4a4` context stride. This supports a packet-field role;
it does not classify every ROM API or establish a complete parser ABI.

An unresolved hardware boundary remains: ROM `0x100051a2` packs descriptor
fields, loads words, executes custom opcode `0x0b` operations separated by NOPs,
and stores result words. Other parser functions use the same custom opcode.
The decoder preserves instruction lengths and marks these operations unresolved.
They cannot be treated as no-ops, ordinary memory reads or DAC ports.

[inspect_bb_rom.py](../research/firmware/inspect_bb_rom.py) pins the inputs and
emits derived pointers, selected strings and short instruction excerpts. Its
[report](../output/rtl8922-bb-rom-parser-analysis.json) contains no complete ROM
image or disassembly.

## NCTL stimulus and arbitrary I/Q

The WCPU selector at `0x20117952` chooses NCTL `0x20/21/22/23` by bandwidth.
Each inferred wrapper calls common setup `0x3e8`, a seven-token setter, and
common control/wait `0x3f9`. The setters configure these fixed values:

| Operation | Bandwidth comparison | Mode byte at `0x806c` | Selection at `0x8068` |
|---|---|---|---|
| `0x20` | 160 MHz | `0x06` | `0x0180ff30` |
| `0x21` | 80 MHz | `0x00` | `0xffe0fa00` |
| `0x22` | 40 MHz | `0x04` | `0xff4009e0` |
| `0x23` | 20 MHz | `0x02` | `0xf9f007d0` |

The common sequence contains candidate set/clear operations on `0x806c` bit 3
around an unresolved wait token, plus synchronization controls. Its apparent
preserve mask `0xf7` would retain the bandwidth bits while toggling bit 3.
This remains static inference, not an executed ISA model or qualified trigger.
Full evidence and cross-chip comparison limits are in the
[NCTL findings](nctl-source-findings.md).

At this software boundary, stimulus is configured in the hardware TPG.
The setters contain no caller-supplied sample pointer, length, upload loop or
DMA request. Editing their literals changes generator configuration; it does
not establish a clocked arbitrary-I/Q reader. Neither physical TPG storage
nor a replacement-source mux is identified. No sample-source connection from
the traced packet-parser APIs was found.

The next useful targets are the TPG backing generator/storage and downstream
mux, or native timed changes to the existing DDS controls. Accepted BB code
execution is a new experimental control primitive; it is not a sample buffer.

## Validation and reproduction

Pluto settings matched the fresh snapshot, TX powerdown stayed `1`, the card
was unbound, modules unloaded, temporary system files absent and the user-stopped
demo inactive. No new firmware fault, SER, HWSI, checksum or security rejection
appeared in the experiment's kernel log. No new RF reception qualification ran.
The working driver patch and pinned firmware remain unchanged.

```sh
python3 research/firmware/inspect_bb_rom.py \
  --code vendor/local-rom-dumps/20261012/bb-mcu/code-window.bin \
  --tables vendor/local-rom-dumps/20261012/bb-mcu/api-tables-window.bin \
  --firmware vendor/rtw89/firmware/rtw8922a_fw-4.bin \
  --output /tmp/rtl8922-bb-rom-parser-analysis.json
python3 -m unittest discover -s research/firmware -p 'test_*.py'
```

All 32 firmware tests passed with the documented Capstone/Unicorn dependencies.
They cover checksum corruption, small/bulk execution bounds, register preservation,
read-failure restoration, wrong-capture rejection and unresolved instructions.
None opens hardware. The manual builder's `--source`, `--count`, `--bulk` and
`--refresh-section-digest` options reproduce each H chunk from its metadata;
the capture reader accepts `--patch-report` to use that exact layout. Hardware
execution remains explicit under the bounded launcher and must never enter CI.
