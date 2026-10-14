# NCTL stimulus-source analysis — 2026-10-12

The missing DAC sample interface has **not** been found. This pass recovers a
useful part of the calibration sequencer's control structure: four bandwidth
setters contain the exact public TPG preset constants, and a sparse branch
pattern connects those setters and the traced DPK IDL commands to short NCTL
routines. The setters configure a generator; they do not upload samples.

The subsequent [BB ROM capture/parser trace](bb-rom-parser-findings.md) resolved
the missing parser API roots. Its Wi-Fi header/user-field evidence does not
provide a sample-pointer connection to these TPG setters. The capture also
established temporary BB code execution; it did not establish arbitrary I/Q TX.

This is offline static analysis. No card registers, firmware, driver, Pluto
settings or demo state changed. The [analyzer](../research/firmware/inspect_nctl_sources.py)
uses the pinned firmware and pinned upstream source files. Its
[derived report](../output/rtl8922-nctl-source-analysis.json) contains hashes,
candidate register literals, inferred edges and short excerpts. It emits no
executable program or complete firmware table.

## A partial encoding, with a useful external cross-check

The NCTL element contains 1,024 words loaded at BB `0x8500..0x94fc`. Reading
each word as low halfword followed by high halfword produces consistent short
blocks and branches. All program positions below are **halfword indices**,
not BB addresses or RISC-V program counters. For example, index `0x3b7`
occupies the upper halfword of the load word at BB `0x8c6c`.

The following interpretation fits the selected blocks:

| Token | Static interpretation |
|---|---|
| `0x0004..0x0007` | Select successive groups of 64 register bytes |
| `0x4000..0x7fff` | Register-like operation with a six-bit byte index and an eight-bit literal |
| `0xexxx` | Call a block at absolute halfword index `xxx` |
| `0x3xxx` | Jump to absolute halfword index `xxx` |
| `0x0001` | Return |

With the apparent initial base `0x8000`, the candidate register address is
`0x8000 + 64*(page_token-4) + ((token>>8)&0x3f)`. Thus, after `0x0005`, token
`0x6c06` corresponds to a literal `0x06` for `0x806c`, and tokens `0x68xx`
through `0x6bxx` correspond to the four bytes of `0x8068`.

This is an inference from the binary patterns, **not a complete or
hardware-validated ISA description**. The initial base-like instruction,
path selection, reads, ALU operations, multiword instructions, waits and delay
units remain unresolved. A recognizer must stop at unsupported instructions;
silently treating them as no-ops would produce a false trace.

There is also an important mask ambiguity. A common block uses `0x42f7`,
then `0x6c08`, followed by `0x4200`, with page selections between them. This
is consistent with preserving the TPG bandwidth bits while changing bit 3.
A naive full-byte store interpretation would clear the bandwidth field that
the setter just configured. The report flags this discrepancy and does not
simulate these tokens as unconditional stores or label the surrounding
sequence a qualified trigger.

## The four bandwidth operations reach fixed preset setters

A run at indices `0x53..0x64` contains sparse `0xfn2c` tokens. Adding `0x2c`
to each token's position reaches a `0x3xxx` entry in the jump run at
`0x66..0x90`. The compared nibbles, WCPU command values, bandwidth ordering
and known DPK command IDs support the following command mapping. Complete
command-selection semantics have not been executed or proved.

| Inferred command | Wrapper | Setter | Comparison bandwidth | `0x806c` literal | Reconstructed `0x8068` |
|---|---|---|---|---|---|
| `0x20` | `0x38f` | `0x3b7` | 160 MHz | `0x06` | `0x0180ff30` |
| `0x21` | `0x399` | `0x3be` | 80 MHz | `0x00` | `0xffe0fa00` |
| `0x22` | `0x3a3` | `0x3c5` | 40 MHz | `0x04` | `0xff4009e0` |
| `0x23` | `0x3ad` | `0x3cc` | 20 MHz | `0x02` | `0xf9f007d0` |

Each setter is seven halfwords: one page token, five literal operations and a
return. Its wrapper calls common block `0x3e8`, the setter, and common block
`0x3f9`. There is no caller-supplied sample pointer, sample-array loop, DMA
request or replay length in these setters.

All four mode values and all four 32-bit selection values match
[`_dpk_tpg_sel` in the pinned RTL8852C source](https://github.com/morrownr/rtw89/blob/8bbbacadf6fa73c3a3195aefbd4b2ec2422ae356/rtw8852c_rfk.c#L2106).
The local pinned `reg.h` names these addresses `R_TPG_MOD` and `R_TPG_SEL`.
The exact constant correspondence is stronger evidence than borrowing
register names alone. It remains a cross-chip comparison; it does not establish
the complete RTL8922A TPG implementation or its physical memory architecture.

The WCPU's previously traced `0x20117952` selects `0x20/0x21/0x22/0x23`
for bandwidth enum `3/2/1/default`. The inferred sequencer mapping therefore
agrees with that order. It does not establish that every code path in the
supplied WCPU image runs on our AE card.

## The IDL commands also resolve to short control wrappers

The same branch structure accounts for the previously traced WCPU launches:

| Command | Wrapper | Inferred calls |
|---|---|---|
| `0x2d` | `0x454` | `0x5ec` |
| `0x33` | `0x457` | `0x5a7`, `0x614` |
| `0x2e` | `0x466` | `0x63b` |

Adjacent commands `0x34/0x35` call `0x5be/0x5d5` respectively, followed by
`0x614`. Their initial explicit literals distinguish three configurations:

| Block | Candidate byte at `0x809d` | Candidate byte at `0x80a0` | Candidate byte at `0x80a1` |
|---|---|---|---|
| `0x5a7` | `0x04` | `0x00` | `0x00` |
| `0x5be` | `0x02` | `0x01` | `0x00` |
| `0x5d5` | `0x00` | `0x02` | `0x00` |

The public register map calls `0x809c` IDL selection and `0x80a0` normalization
order/tap configuration. These are consistent with calibration-processing
modes. The remaining routines include unsupported read/ALU/wait tokens; their
complete effects and exact AE behavior are unresolved. No user-sample source
was identified by this correspondence.

## Consequences for the transmit search

The useful control path is now more specific:

```text
WCPU bandwidth selection
    -> NCTL command 0x20..0x23
    -> common setup -> fixed TPG preset -> common control/wait block
    -> hardware generator / downstream TX routing remains to be traced
```

The four setters narrow the search to the **hardware side of the TPG and its
downstream source mux**. They provide no sample-data endpoint for IDDMA.
They also do not prove that the entire TPG is fixed or that hidden sample
storage cannot exist. A complete negative result would require its register
definition or implementation, not four matching routines.

A second lead is the programmable sequencer itself. If its mask/base and
wait/timing semantics can be established, it might provide a native-timed
sequence of changes to the already observed DDS tone source. That could help
investigate the rejected host-driven FSK experiments. It is a separate,
unqualified modulation hypothesis: no sequencer-driven modulation, sample
timing, arbitrary complex amplitude or I/Q replay was demonstrated here.

Before any custom NCTL program, establish the remaining semantics with a
bounded register-only canary and a verified stop/restore path. Do not run a
speculative program against RF controls or replace the NCTL load with samples.
For arbitrary I/Q, the required evidence remains a writable sample source,
its data format and a clocked consumer selected into the DAC path.

## Reproduction

The new analyzer uses only the Python standard library. The upstream source
files are reconstructed by the existing pinned driver setup; it does not
download or prepare them itself.

```sh
python3 research/firmware/inspect_nctl_sources.py \
  --firmware vendor/rtw89/firmware/rtw8922a_fw-4.bin \
  --upstream-root vendor/rtw89 \
  --output /tmp/rtl8922-nctl-source-analysis.json
python3 -m unittest discover -s research/firmware -p 'test_*.py'
```

The full firmware test suite still needs the previously documented Capstone
and optional Unicorn dependencies. Validation: four preset matches, 18
inferred dispatch entries, five IDL wrappers and 24 firmware tests passed.
The new report reproduced byte for byte. Syntax and whitespace checks passed;
the working driver patch retained its pinned SHA-256. No hardware tests ran.
