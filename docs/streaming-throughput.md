# Streaming throughput investigation — 2026-10-12

The present copy path supports bounded 40 MS/s runs, but cannot keep up with
80 or 160 MS/s. The strongest next lead is a firmware-coordinated packet AXI
DMA (PAXI) path that avoids IDDMA. It has **not** delivered an LA payload to
the host yet. No new rate is promoted to the working driver or Soapy plugin.

All rates below count **complex samples**, with signed 8-bit I and 8-bit Q.
An LA record holds four consecutive complex samples in eight bytes.

| Requested rate | Payload to host | 320 KiB source-ring retention | Current evidence |
|---|---:|---:|---|
| 40 MS/s | 80 MB/s | 4.096 ms | 900 s / 71.999 GB passed transport checks, plus two 60 s trials |
| 80 MS/s | 160 MB/s | 2.048 ms | Source overwrite after 4.14 ms; 327,680 bytes delivered |
| 160 MS/s | 320 MB/s | 1.024 ms | Source overwrite after 1.43 ms; 106,496 bytes delivered |
| 320 MS/s | 640 MB/s | 0.512 ms, if such a producer exists | Exceeds this card's PCIe link capacity; source mode unverified |

MB/s is decimal. These figures are raw transport requirements: converting to
CS16 doubles host memory traffic, and CF32 quadruples it. Host packet sequence
numbers alone cannot detect loss inside the capture ring; producer status,
the ring-overwrite guard and host drop counters must also pass.

## What was tested

The independent checkout uses the pinned working driver as its base, with
diagnostics in the alternative
[`streaming-throughput-experimental.patch`](../driver/patches/streaming-throughput-experimental.patch).
The working patch and original demo module are unchanged. The additional
`iq_account_before_yield` switch defaults off; when enabled it checks a
completed copy before the voluntary sleep. The loop still releases the
wireless mutex at the next iteration. It is an A/B experiment, not a fix
for the higher-rate bottleneck.

1. Frozen SRAM was copied 100 times into one producer-owned PLE allocation.
   The final copy was compared word for word. Channels 2–5, virtual/physical
   destinations, and staged/immediate OWN writes were compared. Valid
   virtual copies achieved **87.27–88.10 MB/s**. Valid aligned physical
   copies achieved **132.38–135.17 MB/s**. Physical mapping could not be
   established for one fragmented allocation; that case is unavailable,
   not a throughput measurement. Allocation, page-list validation, headers
   and PCIe delivery are excluded from these isolated copy rates.
2. A ROM-derived bit-28 control variant appeared to reach **259.62 MB/s**,
   but **2,047 of 2,048 words were wrong**. It is rejected. The original
   diagnostic number is preserved in the report, not counted as bandwidth.
   A separate bit-29 test copied correctly at 87.92 MB/s virtual and
   134.67 MB/s physical, giving no useful improvement. The meanings of
   control bits 28/29 are not established.
3. Both baseline and account-before-yield variants completed 60 seconds
   at 40 MS/s, about 4.8 GB each, with zero host sequence gaps, zero FIFO
   drops and producer `ret=0`, `loss=0`. The scheduling change did not
   improve the observed maximum backlog and did not enable 80/160 MS/s.
4. At 80/160 MS/s, the source guard returned `-75` (`EOVERFLOW`), reason 4,
   despite zero host sequence gaps. Requested two-second tests therefore
   **failed**. Good host counters do not rescue those results.
5. Pluto offsets +250/-250 kHz produced measured movements of 500.183 kHz
   at 40, 499.878 kHz at 80, and 501.803 kHz at 160 MS/s. A fixed 18 MHz
   spur dominated the 40 MS/s FFT; it is not accepted as the reference.
   The offline report preserves the global peaks and separately examines
   a declared +/-1 MHz band, excluding +/-20 kHz DC. This post-hoc analysis
   checks the narrow reference signal, not full passband fidelity.

The separate coded capture and endurance reports must be read together.
The passive endurance trial delivered **71,999,397,888 bytes** in
**900.000130 producer seconds** (79.9993 MB/s), comprising 8,788,989 complete
packets and 35,999,698,944 complex samples. Host and producer packet counts
match; the 64-bit host record total matches the producer's modulo-32-bit
count across **two wraps**. Sequence gaps, FIFO drops, pending bytes and
all reported errors were zero; `ret=0`, `loss=0`, guard reason 0. Maximum
backlog was 4,707 of 40,960 records; maximum observed poll gap was 366 us.
This is a bounded raw-transport pass, not an indefinite guarantee.

The new 0.25-second stored QPSK prefix **failed** the existing coherence gate
(minimum 0.237, median 0.368, required 0.5/0.8). The injected one-sample
deletion control was detected, but that does not override failed coherence.
No sample-level continuity pass is claimed from this prefix.

## Path to 40 MS/s

The existing 8 KiB pipeline plus a SCHED_DEADLINE producer is the demonstrated
route. These tests used 950 us runtime per 1 ms period, a consuming raw FIFO
reader, continuous acquisition, and explicit stop at the duration limit.
No receiver restart is permitted within a passing trial. Captures were
bounded to short prefixes; the endurance run drains and counts all bytes.

There is little bandwidth margin over the 80 MB/s requirement. Earlier
normal-scheduling failures and allocation timeouts still matter; automatic
recovery creates a gap. Before calling this indefinitely drop-free, require
repeatable long runs under representative host load, a high-coherence coded
reference with loss/duplication controls, and the actual Soapy/application
consumer at the intended output format. A successful raw drain is a narrower
result than that end-to-end claim.

## Path to 80 and 160 MS/s

Current transport:

```text
LA SRAM -> IDDMA -> allocated PLE packet -> dispatcher -> PCIe RX -> host FIFO
           ^ measured bottleneck
```

Candidate transport:

```text
LA SRAM -> PAXI scatter/gather reader -> packet/PLE routing -> PCIe RX -> host
           ^ direct LA access unverified
```

The new offline ROM/RAM-firmware trace identifies these entry points in the
local firmware, verified against the historical function-pointer snapshot:

| Function | Code address | Pointer slot |
|---|---|---|
| IDDMA start / completion wait | `0x20008904` / `0x20008a26` | `0x2020206c` / `0x20202068` |
| PAXI context selector | `0x20122bac` | `0x2020217c` |
| PAXI descriptor writer | `0x20004dc2` | `0x202021dc` |
| PAXI submission | `0x20004f52` | `0x202021d4` |
| PAXI completion handling | `0x2000548c` | `0x20202140` |
| PAXI flow-control initialization | `0x20123078` | `0x202021d0` |

The selector accepts **TX contexts 0 and 1**; TX argument 2 returns error 4.
TX0 uses base/index offsets `0x620/0x420`, TX1 `0x624/0x424`, relative to
`0x18006000`. The descriptor writer uses eight-byte descriptors, 16-bit
segment lengths, a last-segment bit at bit 30, and a 32-descriptor ring.
Submission and completion also maintain firmware-owned state.

The earlier failed hardware bypass probe configured previously uninitialized
TX2 (`0x628/0x428`). That is outside this firmware selector's supported TX
contexts. Its timeout does **not** establish that a correctly coordinated
TX0 path cannot read LA SRAM. It also does not prove that TX2 is absent in
all silicon configurations. Existing TX0/1 rings were not overwritten.

Concrete next gates, in order:

1. Establish firmware-coordinated ownership of a TX0 submission slot and
   its completion/release state. Use a cooperative firmware hook or an
   understood firmware-quiesce protocol. An idle hardware index is not
   sufficient ownership; a host mutex does not stop the device CPU.
2. Submit a stopped, known LA block using a separate report header and an
   LA-address payload segment. Verify the **entire host payload** against
   frozen SRAM, guard adjacent memory, verify the host-only destination,
   completion and release, then restore. Start with one bounded packet.
3. Measure repeated, fully verified transfers including descriptor updates,
   completion and host delivery. Target at least **200 MB/s** for 80 MS/s
   and **400 MB/s** for 160 MS/s as engineering margin targets, not measured
   results. If direct LA access fails, test a known owned SRAM source to
   distinguish address reachability from a broken submission setup.
4. Only then enable a live writer: enforce ring-retention and DMA-in-flight
   guards, preserve sequence numbers, stop on any overwrite. Advance through
   one-second, minute, and long application runs with coded signal checks.

A persistent owned physical PLE pool might help 40 MS/s allocation jitter,
but safe host completion/reuse is unresolved. The measured physical IDDMA
rate is below even 80 MS/s's payload requirement, so it cannot by itself
solve 80 or 160 MS/s. A larger ring only absorbs transient stalls.
PAXI could still share the same limiting SRAM fabric; only the proposed
full-payload, end-to-end measurement can establish an actual speedup.

## What would be required for 320 MS/s

Fresh `lspci` reads show both **LnkCap and LnkSta = 5 GT/s, width x1**.
PCIe 2.x uses 8b/10b encoding, leaving 4 Gb/s = **500 MB/s** per direction
before packet overhead ([PCI-SIG explanation](https://pcisig.com/how-does-pcie-30-8gts-double-pcie-20-5gts-bit-rate)).
The endpoint does not advertise a faster link to retrain.

Thus full 320 MS/s signed-8-bit complex transport cannot fit this link.
Four-bit I plus four-bit Q would require 320 MB/s, but would reduce precision
and needs an **on-device** packing path that has not been found. Compressing
or truncating after PCIe does not solve the bottleneck, and arbitrary noisy
I/Q cannot be assumed losslessly compressible below a fixed ceiling.

There is also no qualified 320 MS/s source. The pinned `rtw8922a.c` advertises
20/40/80/160 MHz bandwidths only; a generic 320 MHz RF encoding elsewhere in
the driver is not proof of an RTL8922AE mode. Sample rate and usable RF
bandwidth are separate claims. A reduced-precision 320 MS/s investigation
must first prove distinct consecutive samples, clock rate and RF response.

## Evidence and reproduction

- [Copy control experiment](../output/rtl8922-copy-control-bench.json), including the rejected fast-looking variant.
- [Aggregate result](../output/rtl8922-stream-throughput-summary.json), including separate transport and coded-signal decisions.
- [Copy channels/alignment](../output/rtl8922-copy-channel-bench.json).
- [Remaining bit-29 control](../output/rtl8922-copy-control29-bench.json), valid copies without a speedup.
- [Stream matrix](../output/rtl8922-stream-matrix-v1.json) and [reference analysis](../output/rtl8922-stream-matrix-analysis.json).
- [Coded/endurance capture](../output/rtl8922-stream-endurance-v1.json) and [coded analysis](../output/rtl8922-stream-coded40-analysis.json).
- [Offline firmware trace](../output/rtl8922-stream-firmware-trace.json), hashes and short supporting excerpts.
- [Build manifest](../output/rtl8922-stream-build-manifest.json).
- [Final independent restoration check](../output/rtl8922-stream-final-restoration.json):
  original working module loaded, demo live at 2312 MHz / 20 MS/s, 40,562,688
  samples added during the two-second check with no added errors/recoveries,
  Pluto settings restored and TX powerdown = 1.
- Each hardware session has an adjacent `.session.json` with the saved demo
  state and restored live state. Test reports record fresh Pluto settings,
  final readbacks, TX powerdown and cleanup errors.
- [Manual tool instructions](../research/streaming/README.md). Hardware
  scripts are never CI tests. Raw samples, firmware, ROM and builds stay ignored.
