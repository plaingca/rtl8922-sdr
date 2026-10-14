# RTL8922A arbitrary-I/Q TX: firmware trace — 2026-10-12

The best remaining static lead is the calibration stimulus generator and its
connection to the DAC input. This pass found the actual DPK firmware handler,
followed it into NCTL calibration commands, and classified two apparent memory
leads. It did **not** establish a writable TX sample buffer or arbitrary-I/Q
replay. Finding readable firmware is useful, but software visibility does not
by itself expose a sample port in the baseband hardware.

Everything below came from offline files. No card access, SSH, register writes,
firmware loading, driver changes or demo restart occurred in this pass. Current
RF results and qualification remain in [transmit findings](transmit-findings.md),
the root README and validation summary. In particular, that separate hardware
work reports digital calibration tones; those are not arbitrary sample replay.

The reproducible evidence is in
[the derived report](../output/rtl8922-tx-firmware-static-analysis.json) and
[the inspector](../research/firmware/inspect_tx_path.py). Raw firmware, ROM and
vendor packages are not included.

## A concrete calibration entry point

The pinned Linux driver sends an eight-byte DPK request using H2C category 2,
class `0x0b`, function 3. Its fields are length, PHY, DPK enable, path mask,
band, bandwidth, channel and debug enable. This is a calibration control packet,
with no sample pointer or sample payload in the identified request.

The normal firmware's first two ordinary sections map as follows:

| File offset | Firmware destination | Bytes | Use in this trace |
|---|---|---:|---|
| `0x100` | `0x20100000` | 390,672 | WCPU executable code |
| `0x5f710` | `0x20209bb8` | 33,224 | Initialized data, including dispatch pointers |

The inspector walks this ordinary prefix only; it does not parse security pools.
The dispatch chain is now tied to real decoded branch targets:

| Address | Role |
|---|---|
| `0x2011cc56` | Reads the H2C class from the header; class `0x0b` reaches `0x2011c95e` |
| `0x2020d3c8` | Ten-entry function dispatch table; entry 3 is `0x2011cb9e` |
| `0x2011cb9e` | Function 3 case, calling `0x20118662` |
| `0x20118662` | Checks request length byte equals 8, copies the request and starts DPK |
| `0x20118504` | Iterates the selected RF paths, saves settings, runs calibration and restores settings |
| `0x20118394` | Calibration core: RF/BB setup, gain loop, IDL stage and result handling |
| `0x20117038` | Launches a hardware calibration operation and polls completion |

This explains why the Windows DPK path largely sends an offload request rather
than implementing the calibration on the host. A large block of DPK-related
strings in that driver belongs to firmware-log decoding; those strings alone
must not be mistaken for the calibration algorithm.

### The NCTL boundary

The launcher at `0x20117038` constructs the low 16-bit command as:

```text
((18 * path + 0x19) | (operation << 8)) & 0xffff
```

Here `a0` is the path and `a1` is the operation. This operand order matters.
The IDL stage at `0x20118130` issues operations `0x2d`, `0x33` and `0x2e`.
The launcher writes the command to relative BB `0x8000` and checks `0xbff8`
for low-byte `0x55`, then `0x80fc` for low-halfword `0x8000`, with bounded
2,000-iteration polls. These are calibration operation selectors and status
checks. They are not a sample-upload protocol.

The separately inventoried `0x8500..0x94fc` initialization window contains
1,024 sequencer words. Its instruction format remains undecoded. The next
useful static step is to connect the identified operation selectors to that
sequencer's stimulus-generation and source-selection behavior. Neither the
RISC-V ISA nor register names establish the NCTL instruction format.

## Memory leads classified

### DPK coefficient banks

The function at `0x20118012` selects a coefficient view through
`0x81d8 + (path << 8)` and reads 24 words per bank. For table indices 0 and 1,
the bank address is:

```text
0xa500 + (path << 10) + table_index * 0x1d0 + k_index * 0x60
```

The results go to coefficient log records. The bank selectors, size, calibration
context and log labels identify coefficient storage in this routine. This is
useful evidence against interpreting every writable calibration RAM window as
a time-ordered I/Q waveform buffer. It does not prove that no other hardware
mode can reuse a memory.

### DPK RX SRAM

The function at `0x20117556` enables the diagnostic view, sets report selection
through `0x80d4`, writes `0x10000 | index` to `0x80d8`, and **reads** `0x80fc`.
It repeats for 512 indices and logs the results. It then reverses its temporary
controls. This routine provides capture readback, not sample upload or replay.
Its 512-word loop should not be confused with the different Windows IQK
diagnostic loops previously identified.

### BB MCU backup buffers

The CV1 BB MCU header gives a source address `0x1001550c` and a data interval
`0x10024000..0x10024cfc`. Applying that relocation resolves its task name,
dispatch pointers and descriptor tables consistently. This is a static mapping
inference, not a measured program counter or complete alias map.

Task creation at `0x100150f0` supplies the name `BackupRestore` and callback
`0x10014d5a`. The task waits for queued messages and calls the dispatcher at
`0x1001280a`, which reads mailbox arguments and uses a 21-entry command table.

Fourteen descriptors at `0x10024814` describe register groups. Each gives a
range count, pointers to start/end arrays, a buffer, masks and a byte-count
state pointer. The save routine at `0x10011efe` reads register ranges into
memory; the restore routine at `0x1001200c` writes them back, including masked
updates. The initial buffer pointer is `0x10030000`; its runtime allocation
and ownership are not established by this static initializer.

The ranges include BB controls, the `0x8500..0x94fc` NCTL window, coefficient
windows and RF-related windows. This accounts for substantial memory movement
without implying a DAC sample queue. Register restoration can write hardware,
but no sample cadence or playback engine is demonstrated by that copy loop.

## Decoder and host-side checks

The local Capstone 5.0.7 decoder misses standard RISC-V Zbs bit operations in
this BB image. Skipping undecodable bytes two at a time splits some 32-bit
instructions into misleading compressed instructions. The new inspector takes
instruction length from the encoding and adds a narrow RV32 Zbs decoder for
the missing operations. This follows the
[RISC-V bit-manipulation specification](https://docs.riscv.org/reference/isa/unpriv/b-st-ext.html).

The selected BB code interval still contains one unresolved custom instruction
at `0x10010cae`, encoding `0x10e7878b`. The metadata after the candidate text
end at `0x10015468` is excluded. This is not a claim of complete ISA or control
flow recovery.

The optional Windows check also resolves a tempting name: the RTL8922A branch
of `halrf_load_shot_rxcfir` calls `0x14000a5f0`, which is just `ret 0` in this
pinned build. It supplies no upload implementation here. This result is
specific to the inspected package, not a claim about every Realtek release.

## Path forward and missing interfaces

1. **Trace the calibration stimulus source into the DAC mux.** This has the
   strongest existing support: separate RF tests demonstrate digital tones,
   and the firmware now supplies a concrete calibration call chain. The useful
   discovery would be an alternate source selecting writable SRAM or a FIFO.
2. **Decode enough NCTL semantics to follow the DPK stimulus operations.**
   Determine whether it configures a fixed generator or a programmable sample
   source. Microcode access alone does not prove arbitrary I/Q is possible.
3. **Follow a proven sample endpoint back to transport.** PAXI/PCIe and writable
   RAM are useful only after finding their connection to the sample consumer.
   Packet TX descriptors do not establish that connection.

A replay implementation still needs a write port or source buffer, I/Q packing,
sample clock, length/repeat controls, and a source mux feeding the transmit
chain. Streaming additionally needs refill timing and underrun behavior. None
of those interfaces has yet been established as an arbitrary-sample path.

## Reproduction

With `research/requirements.txt` installed:

```sh
python3 research/firmware/inspect_tx_path.py \
  --firmware vendor/rtw89/firmware/rtw8922a_fw-4.bin \
  --windows-driver /path/to/locally-preserved/rtwlane711.sys \
  --output output/rtl8922-tx-firmware-static-analysis.json
```

Omit `--windows-driver` to reproduce the firmware-only portion. Both inputs are
hash-pinned; changed inputs are rejected. The report includes short instruction
excerpts, checked direct-call targets and interpreted register descriptors,
without emitting firmware images or full disassemblies.

Validation: the full report reproduced byte-for-byte, all eight fallback Zbs
encodings were checked, an unresolved 32-bit instruction preserved the following
instruction's alignment, three malformed/truncated encodings were rejected,
and a changed firmware input was rejected. Python compilation passed. The
working driver patch still matches its pinned hash. No hardware tests were run.

Source anchors: pinned `vendor/rtw89/fw.c:8678` (`rtw89_fw_h2c_rf_dpk`),
`fw.h:4896` (RFK class), `fw.h:5080` (DPK request), the pinned firmware and the
optional Windows package. Input hashes are recorded in the report. Register
offsets in this document belong to the BB address domain; firmware-local aliases
must not be used as host physical addresses.
