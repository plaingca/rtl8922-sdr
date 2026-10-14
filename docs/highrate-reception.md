# 80/160 MS/s reception investigation — 2026-10-13

Both rates now pass **60-second raw transport trials** using the separate PAXI
experiment: 80 MS/s delivered 9.60 GB and 160 MS/s delivered 19.20 GB, with
matching producer/host counts, no sequence gaps or drops, and no source-guard
failures. The working kernel patch is unchanged. This is bounded experimental
reception; indefinite operation, full-band fidelity and general tuning remain
unqualified.

## Latest results

An ambient **441-byte Wi-Fi beacon** was decoded entirely in software from
the saved passive 160 MS/s signed-i8 I/Q capture, after extracting channel 44
(5220 MHz) at 20 MS/s. Its legacy OFDM payload uses 16-QAM, rate 1/2, at
24 Mb/s. The received FCS and independently computed Python CRC32 both equal
`0xa232c556`. Removing phase from the same channelized samples produced zero
valid frames. This demonstrates coherent complex reception on this channel;
it does not qualify fidelity across the full 160 MHz or decoding of 160 MHz
Wi-Fi PHY frames. The original capture, rather than a monitor-interface packet
capture, is the sole decoder input. No new hardware run or TX was used.

[Decode evidence](../output/wifi-decode/ch5220.json),
[phase-removed control](../output/wifi-decode/ch5220-magnitude-only.json),
[recovered constellation](../output/wifi-decode/decoded-beacon.png).
Reproduction is described in the [streaming research notes](../research/streaming/README.md#offline-wi-fi-frame-demodulation).


A subsequent **160 MHz Wi-Fi 6 HE-SU transmission** now demonstrates coherent
wideband reception: all eight 20 MHz sections recover identical L-SIG and
HE-SIG-A bits with valid HE CRCs, aligned within 0.2 us. The header signals
MCS 9, two spatial streams and LDPC. Phase-removed controls recover no valid HE
headers. This is a preamble/PHY-header qualification across contiguous 160 MHz;
the two-stream payload and its MAC FCS were not decoded. Full-band EVM,
sensitivity, sample-level continuity and indefinite operation remain unqualified.
[Header evidence](../output/wifi-decode/he160-eight-sections.json),
[single-packet waterfall](../output/wifi-decode/he160-wide-packet.png),
[independent codec comparison](../output/wifi-decode/he-codec-reference-check.json).

| Test | Result |
|---|---|
| Frozen LA, 4,096 × 8 KiB, all bytes and sequences verified | **382.07 MB/s**, guards and host drops zero |
| Live 80 MS/s, 60 seconds | **79.9994 MS/s**, 9,599,860,736 bytes, 1,171,858 packets |
| Live 160 MS/s, 60 seconds | **159.9987 MS/s**, 19,199,623,168 bytes, 2,343,704 packets |
| Soapy, 80/160 MS/s, CF32 and CS16, one second each | All four pass, including partial reads, timestamps and sample-value grids |
| Soapy CF32, final isolated build, 60 seconds each | **4,799,954,944 / 9,599,909,888 samples** at 80/160 MS/s; no source failures, drops or timestamp gaps; clean bounded end |
| Default continuous 160 MS/s demo, 180 seconds | **Pass** beyond the old 107-second source rollover; about 28.8 billion samples, zero capture errors/restarts, host drops or source-guard failures |
| Paired Pluto tones at +/-250 kHz | Moves 498.657/499.268 kHz at 80/160 MS/s; strict absolute-position check fails with a common 28–29 kHz offset |
| Initial 1 Msymbol/s coded references | Timing gate fails on insufficient coherence; not a continuity pass |

The live source guard samples the LA write pointer before/after DMA and host
reclamation. It rejects invalid state/pointers, backlog reaching the 40,960-record
ring, and polling gaps longer than 90% of ring retention, which could conceal a
complete wrap. The 160 MS/s trial's largest poll gap was 189.863 us versus a
921.6 us limit; maximum backlog was 16,387 records versus 40,960 available.
A post-DMA guard failure invalidates the whole trial even if bytes reached the
host. Recovery and timeout retries are never counted as continuous reception.
Only a small raw prefix is stored; every packet is drained and counted.

[Verified frozen transfer](../output/rtl8922-paxi-burst4-4096x8192-20261013.json),
[80 MS/s minute](../output/rtl8922-paxi-live80-wdt-off-60s-20261013.json),
[160 MS/s minute](../output/rtl8922-paxi-live160-burst4-60s-20261013.json),
[paired tones](../output/rtl8922-paxi-tone-analysis-20261013.json).
[Final 80 MS/s CF32 minute](../output/rtl8922-paxi-soapy-80-CF32-persistent-v2-20261013.json),
[final 160 MS/s CF32 minute](../output/rtl8922-paxi-soapy-160-CF32-persistent-v2-20261013.json).

### What fixed the stalls

The wide DLE quota and cached PAXI limit disagreed. Correcting PAXI `0x710`
from `0x00400000` to `0x01800000` moved the frozen stall from 95 to 192 packets,
but did not sustain reception. Publishing DLE availability alone also failed.
The successful path reloads the PAXI limit every 128 packets, **only after all
submitted packets reached the host, PAXI is idle, and the C2H/WCPU quotas are
fully free**. It uses the official DLE availability-update handshake, stops TX0,
reloads the limit, verifies it, then resumes TX0. The precise missing hardware
credit-return mechanism remains unresolved; this is a guarded administrative
resynchronization, not a decoded completion protocol.

A private 120-descriptor ring covers all forty 8 KiB LA blocks. Each block has
its own header; four packets are submitted with one producer-index write.
The fully verified frozen rate rose from 307.13 MB/s with full reinitialization,
through 318.34 MB/s with minimal limit reload and 337.61 MB/s with a static ring,
to 382.07 MB/s with four-packet submissions. The final ring and headers occupy
an owned 4 KiB allocation. TX1 and the original working modules are untouched.

[Full resynchronization](../output/rtl8922-paxi-resync-batch64-20261013.json),
[minimal reload](../output/rtl8922-paxi-minimal128-20261013.json),
[static ring](../output/rtl8922-paxi-static120-4096x8192-20261013.json).

### The watchdog did expire

The early 200 ms hold did not explain the short 95-packet stall. It also did
not rule out the later watchdog failure: the first long live 80 MS/s run
triggered SER error `0x2599`, which the pinned driver identifies as
`MAC_AX_ERR_L2_ERR_WDT_TIMEOUT_INT`. Host recovery then powered down the MAC,
and reads became `0xeaeaeaea`. That run is retained as a failure.

Live PAXI now requires explicit `iq_paxi_disable_watchdog=Y` and follows the
pinned driver's CPU-local watchdog-disable sequence **before holding WCPU**:
clear control at `0x18003040`, clear pending W1C status and its local mask at
`0x18003044`, and verify readbacks. PCIe error interrupts and host SER recovery
remain enabled. Both successful minute trials recorded control zero and clear
watchdog timeout status throughout. A fresh normal firmware load initializes
the watchdog again; every experiment ends with mandatory module teardown.
DCPU still reads unavailable and is not claimed halted.

[Failed long run](../output/rtl8922-paxi-live80-60s-20261013.json),
[watchdog diagnosis](../output/rtl8922-paxi-watchdog-failure-20261013.json).

### Host scheduling and FIFO pressure

Full-minute application tests exposed two further failures beyond the passing
raw-transport trials. One producer poll gap reached 1.0325 ms, exceeding the
160 MS/s ring retention; another run timed out waiting for host completion.
Both are failures, regardless of clean host packet sequence numbers. PAXI
workers now use a 250 us SCHED_DEADLINE period with 237.5 us runtime, retaining
the same 95% reservation of one CPU. No system scheduler policy is changed.
The isolated driver also blocks/cancels its ordinary RF/DIG/CFO tracking work
before WCPU hold, following the pinned suspend path; that work cannot safely
share the borrowed MMIO aperture or held firmware. Poll diagnostics report the
stages bracketing the largest gap. Tracking remains stopped until module unload.

A separate kernel log showed an order-4 allocation failure in `iq_drain_read`:
the old reader allocated/freed a physically contiguous 64 KiB temporary on every
read. The isolated PAXI reader instead allocates one reusable buffer per open
with `kvmalloc`, serializes reads from that descriptor, and frees it on close.
Its initial signed/unsigned empty-FIFO error is retained as a failed trial;
the corrected version returns negative `EAGAIN` explicitly. The working driver
is unchanged. The Soapy client also rejects impossible oversized read results.
[Allocation evidence](../output/rtl8922-paxi-drain-allocation-failure-20261013.json).

### Default continuous Soapy and demo mode

Plain `driver=rtl8922` now selects the separate PAXI profile, initially at
**160 MS/s / 5250 MHz**. `capture_mode=paxi` selects it explicitly;
`experimental_paxi=1` remains an alias. The mode also exposes 80 MS/s at
**5210 MHz**, requires the deadline producer, and rejects the legacy `free_tuning=1` option and restarting a stopped stream.
Live 160 MS/s captures accept band retunes through a producer mailbox. CF32 and CS16 support partial reads.

The demo defaults to continuous 160 MS/s reception with the full 160 MHz view
selected. There is no 60-second capture cap: writing `0` to `iq_paxi_stream`
runs until `iq_stop` or a source/DMA/host fault. Explicit nonzero durations
remain available for bounded manual experiments. Source positions and completed
packet counters are now 64 bits. A 32-bit source counter would wrap after
107.374 seconds at 160 MS/s and calculate the wrong 40,960-record ring offset.
On-wire packet sequence numbers intentionally remain 32 bits and wrap normally.

The [three-minute default demo trial](../output/rtl8922-continuous-demo160-180s-20261013.json)
passed all source, host, shutdown and rollover checks. A separate
[plain-device CS16 check](../output/rtl8922-default-soapy160-20261013.json)
verified that `driver=rtl8922` starts at 160 MS/s / 5250 MHz.
Desktop/mobile browser checks used synthetic I/Q and a mocked Pluto, with
18 hardware-free tests passing. [Fresh reconstruction](../output/rtl8922-continuous-reconstruction-20261013.json)
matched the tested driver source byte for byte.
[Independent restoration](../output/rtl8922-continuous-demo-restoration-20261013.json)
confirmed the stopped demo, released card, unloaded modules and TX off.

A fresh driver load is required after every stop/fault. The demo shuts down on
receiver exit and the wrapper unloads the held-firmware driver. It does not
attempt a same-load PAXI restart. Continuous mode is an operating behavior;
bounded tests do not qualify indefinite reliability or sample-level RF continuity.

`RTL8922_CAPTURE_MODE=legacy40` retains the previous demo using `vendor/rtw89`.
Generic low-rate devices can use `capture_mode=legacy`; explicit `free_tuning=1`
also selects the legacy path. The working kernel patch remains unchanged.
Default preparation is `bash driver/prepare-default.sh`, followed by
`make -C vendor/rtw89-paxi-wide -j4` and the normal CMake build.

Reconstruct and build as described below, then explicitly launch a bounded
check on beastmode (the example assumes the fresh target is `vendor/rtw89-paxi-new`):

```sh
cmake -S . -B build-paxi -DCMAKE_BUILD_TYPE=Release \
  -DSoapySDR_DIR=/usr/local/share/cmake/SoapySDR
cmake --build build-paxi -j4
mkdir -p build-streaming
g++ -O3 -std=c++17 -Wall -Wextra research/streaming/paxi-soapy-check.cpp \
  -o build-streaming/paxi-soapy-check $(pkg-config --cflags --libs SoapySDR)
sudo timeout --signal=TERM --kill-after=20 100 env \
  RTL8922_DRIVER_DIR="$PWD/vendor/rtw89-paxi-new" \
  RTL8922_IW=/home/plaing/rtl8922-iq-research/iw-local/sbin/iw \
  RTL8922_COUNTRY=CA SOAPY_SDR_ROOT="$PWD/build-paxi/soapy-root" \
  SOAPY_SDR_PLUGIN_PATH="$PWD/build-paxi" \
  bash run-receiver.sh /home/plaing/rtl8922-iq-research/pluto-venv/bin/python \
  research/streaming/paxi-soapy-check.py output/paxi-soapy-new.json 160 CF32 60
```

These are explicit hardware experiments, not CI commands. Read the loopback demo
status and confirm the card is unused before launch; never use the old session
runner to restart a deliberately stopped demo. The wrapper refuses a bound card
and unloads its modules on exit. Each script saves fresh Pluto settings, rejects
an active transmitter and restores settings with TX off. Coded/tone runs have an
independent five-second TX timer and use at most three seconds of reception.
Raw prefixes remain ignored; reports record build hashes and driver srcversion.

### 240 fps live spectrum display

The demo retains a 262,144-point Hann FFT (610.35 Hz bins at 160 MS/s),
now using a reusable single-precision FFTW plan in the native display worker.
Snapshot scheduling follows the sample count at a 240 Hz cadence. The receive
thread continuously drains I/Q and exchanges a bounded pending snapshot with
the worker; display skips remain separate from capture errors.

The worker sends only the 2,048-bin peak overview and the native-resolution
zoom, rather than a 2 MiB I/Q block, for each frame. Python publishes the spectra
through `/api/stream` as server-sent events. Each client has bounded history and
socket timeouts, so a slow viewer cannot stall reception. `/api/frame` remains
available for status and manual verification. The browser batches incoming
waterfall rows using `requestAnimationFrame`; a 60 Hz screen can receive 240
rows/s while redrawing the spectrum at its own refresh rate. The 960-row
waterfall represents about four seconds at the target rate. The display reports
native FFT, server and rendered row rates separately.

Hardware-free tests compare FFT bin order, Hann normalization, peak pooling,
zoom clipping, RMS and tones/noise against an independent NumPy calculation at
40/160 MS/s. The native path adds the `libfftw3-dev`/pkg-config build dependency.
All 21 hardware-free tests pass. Browser tests exercise the persistent stream,
fixed tuning and loopback access. A [120-second live trial](../output/rtl8922-fft240-demo160-120s-20261013.json)
passes the 240 Hz cadence, native/server throughput, old counter rollover,
source/scratch guards, host-drop and shutdown checks. It records 25 skipped
display snapshots out of about 28,800 scheduled frames, with zero capture errors
or host drops. The [live browser check](../output/rtl8922-fft240-live-browser.json)
reports about 240 waterfall rows/s with no browser skips; screen refresh and
FFT frame rate remain distinct.

### Live retuning without driver reload

The 160 MS/s mode now accepts enabled 2.4 GHz channel centers and 5 MHz centers
from 5005 through 7115 MHz, while retaining the same module load, capture worker,
held WCPU and private PAXI ring. The initial capture still starts at 5250 MHz.
Stopping the stream or changing sample rate still requires teardown/reload.

The `iq_paxi_retune` mailbox runs on the producer between completed DMA batches.
It stops LA sampling, waits for every submitted host completion, checks reclaimed
quotas, and stops idle TX0. It uses the pinned chip's host-side channel/help
callbacks to switch MAC/BB/RF band, gain and filter settings; it never calls
firmware channel notifications or calibration requests. RF register readbacks
are configuration checks, not proof of LO lock. After settling, it explicitly
discards old-frequency FIFO bytes without resetting packet/drop counters, resets
only the idle TX0 index and LA writer, and resumes source guards from a new
physical ring origin. Wire sequences remain monotonic modulo 32 bits. Soapy
clears its old-frequency parser state and reports an intentional timestamp gap;
the bridge marks a new waterfall generation instead of restarting the driver.

The [bounded cross-band trial](../output/rtl8922-paxi-retune-bands-20261013.json)
hopped 5250 → 5350 → 2442 → 5975 → 6675 → 5250 MHz, keeping the same interface
index and module srcversion. All source/scratch guards and host-drop checks
passed. Five retunes paused sampling for about 24–26 ms each. Paired +/-250 kHz
Pluto references moved by 498.0–500.5 kHz at the tested centers through 5975 MHz,
with at least 21 dB peak/median separation. The first low-gain 5350 MHz pilot
is retained as a failure because it missed the 15 dB SNR gate; it was repeated
with stronger bounded references, without relaxing the gate. 6675 MHz has only
passive transport evidence; RF qualification above 6 GHz remains unresolved.
These tests do not qualify whole-band fidelity, and retune gaps are intentional.

The [expanded edge sweep](../output/rtl8922-paxi-retune-band-edges-final-20261013.json)
passed 12 same-driver hops at 2412, 2462, 5005, 5570, 5815, 5950, 5955, 5975,
6185, 6675, 7115 and 5250 MHz. References were used through 5975 MHz; the higher
centers remain passive-only. The host channel routine supplies requested MHz
explicitly to avoid nl80211 interpreting 5 GHz indexes 182–196 as Japanese
4.9 GHz channel numbers. The failed pre-fix edge trial is preserved. Another
trial correctly stopped on a 1.43 ms source polling gap; no continuity guard
was relaxed. The native control reader now consumes every complete line from
each pipe read, fixing commands left buffered when zoom and tune arrived together.

All 22 offline tests pass; a fresh reconstruction matches the tested driver.
The browser keeps its stream connection and shows pending/completed tune status.
Pluto is muted and its saved settings restored before any receiver retune.
The [HTTP trial](../output/rtl8922-paxi-retune-http-20261013.json) exercises the
same band hops through the actual demo controls without reloading the card.

### RF timing qualification remains separate

The paired reference moves correctly, establishing received RF at both tested
centers, but a common frequency offset fails the strict absolute-position gate.
Neither is a full-band passband or LO-accuracy qualification. The initial 1
Msymbol/s coded signal had insufficient coherence. A 250 ksymbol/s reference
improved coherence but still cannot resolve a one-sample step confidently.

The experimental high-rate analyzer removes DC before frequency translation,
uses causal overlap-add FIR filtering, and normalizes correlation separately for
each candidate lag. Raw correlation can favor shifted windows with more energy
and bias narrowband timing. It now also requires a three-sigma timing-step
uncertainty below half a sample; merely failing to reject a step with large error
bars is not a continuity pass. An injected deletion must still shift the estimate
by one sample. The historical 20/40 MS/s correlation method is retained by default.
Offline FIR parity and a known repeated QPSK control validate the experimental
analysis path, but do not qualify the live radio.

The final report links all passing application trials, retained failure types,
source/build hashes and independent restoration checks:
[qualification summary](../output/rtl8922-paxi-highrate-summary-20261013.json).
After the final tests Pluto settings matched the saved baseline with TX off,
the card was unbound, experimental modules and temporary files were removed,
the wired route was unchanged, and the demo remained stopped.
[Independent final state](../output/rtl8922-paxi-final-restoration-20261013.json).

## Earlier experiments and retained failures

The following records describe intermediate versions. Their failures remain
valid evidence for those versions; the later results above supersede their
statements about whether a live trial had yet run.

## Concurrent IDDMA result

A bounded passive experiment froze the 320 KiB LA ring, then copied distinct
8 KiB blocks using idle IDDMA channels beginning at channel 2. Each channel
owned its destination PLE allocation. Every round poisoned the destination
with the complement of the reference, then checked every word and adjacent
guards. Allocation, poisoning, verification and host delivery are excluded
from the DMA timer.

| Channels | Result | Aggregate timed copy rate |
|---|---|---:|
| 1 | 10 rounds, all words and guards correct | 68.71 MB/s |
| 2 | 10 rounds, all words and guards correct | 73.85 MB/s |
| 4 | Allocation timed out before the first DMA round | Unavailable |

The one/two-channel cases do not meet the 160 MB/s payload needed by 80 MS/s,
or the 320 MB/s needed by 160 MS/s. This differs from the older hot-copy
benchmark: each round now poisons and verifies its destination. The numbers
are not an isolated A/B comparison with the older 135 MB/s result. They do
not establish an ultimate silicon bandwidth ceiling.

[Measured report](../output/rtl8922-parallel-copybench-20261013.json).
Pluto settings were freshly saved and restored, TX stayed off, and wrapper
cleanup unloaded the driver and removed temporary firmware/NM files. The
demo remains stopped; the card is unbound and the wired route is intact.
[Independent post-test state](../output/rtl8922-highrate-idle-state-20261013.json).

## Frozen TX0 PAXI experiments

The user approved bounded WCPU hold/reset, private-ring DMA tests and subsequent
flow-control tests. TX0 directly delivered both a known owned-SRAM ramp and
frozen LA SRAM to the host, with every payload byte checked. DCPU control reads
`0xdeadbeef`; DCPU is neither modified nor claimed stopped. The experiment
resets and holds WCPU, installs an owned private descriptor ring in idle TX0,
and leaves WCPU held and TX0 stopped until mandatory module teardown. It never
resumes firmware with stale software queue state.

The original C2H PLE quota was 32 pages (4 KiB), insufficient for a header plus
4 KiB payload. The isolated `--wide-queue` profile assigns C2H 192 pages and
reduces CMAC1 RX's reserved minimum from 292 to 132 pages. Total reserved pages,
physical layout and the 320 KiB LA ring are unchanged. The working driver is
untouched.

| Wide-queue test | Result |
|---|---|
| One 8 KiB frozen LA packet | All bytes correct |
| 64 × 8 KiB | All bytes correct; 524,288 payload bytes in 1.581 ms, 331.70 MB/s |
| 4,096 × 8 KiB requested | 95 correct packets, then DMA index stalls and times out |
| 4,096 × 256 B requested | 6 correct packets, then stalls |
| Replenish `0x750/0x754` after each completion, capped by fresh free-page count | Same 6-packet stall |
| Disable PAXI flow-control low bits, with fresh quota checks | No packets complete |

The 64-packet result proves direct frozen LA-to-host transfer and short-burst
bandwidth. It does **not** establish sustained bandwidth or live continuity.
At that stage no live PAXI or Pluto TX trial had run because the sustained
frozen gate failed. Every completed prefix above matches the frozen reference;
failed runs are retained as failures, without a throughput score.

[Short-burst evidence](../output/rtl8922-paxi-wide-la-64x8192-20261013.json),
[sustained failure](../output/rtl8922-paxi-wide-la-4096x8192-20261013.json),
[quota snapshot](../output/rtl8922-paxi-wide-quota-20261013.json),
[credit experiment](../output/rtl8922-paxi-credit-la-64x256-20261013.json),
[flow-control disable failure](../output/rtl8922-paxi-fc-off-la-64x256-20261013.json).

At the stall, the sampled C2H and WCPU DLE quotas show zero used pages; the host
RX ring is not full. WCPU PC remains zero, the hold bit remains set and TX0's
base remains the private ring. Those observations do not establish the missing
completion/credit protocol. Unavailable error-register reads are explicitly
marked unavailable. Earlier atomic polling with a zero delay greatly exceeded
its nominal timeout; current probes use a wall-clock-based 2 ms completion wait.

### WCPU watchdog check

CPU-local watchdog control at `0x18003040` reads `0x80001e84`, with the enable
bit set. These early tests did not disable or service the watchdog. Read-only snapshots
follow the pinned driver's CPU-local indirect accessor and also record host
watchdog interrupts, HALT and PCIe/DMA watchdog timeout status.

| Additional hold before DMA | Hold to first submission | Correct 8 KiB packets before stall | Total measured hold through stall |
|---|---:|---:|---:|
| 0 ms | 0.103 ms | 95 | 4.460 ms |
| 200 ms | 202.274 ms | 95 | 206.660 ms |

CPU-local watchdog status remains zero before hold, after the delay and after
the stall. Host watchdog timeout bits, HALT and the sampled DMA watchdog timeout
bits remain clear in both runs. This argues against a short elapsed-time watchdog
expiry causing the observed 95-packet stall. It does not rule out later expiry,
other watchdogs or loss of firmware housekeeping during long captures. WCPU hold
remains a bounded diagnostic technique, not a qualified continuous capture path.
A production path needs understood queue ownership and completion handling plus
validated watchdog behavior, preferably with firmware running cooperatively.

[Zero-delay report](../output/rtl8922-paxi-watch-0ms-20261013.json),
[200 ms hold report](../output/rtl8922-paxi-watch-200ms-20261013.json).
Both runs restored fresh Pluto settings with TX off and no cleanup errors;
the wrapper unloaded the experimental modules and left the demo stopped.

The pinned ROM descriptor writer was executed offline in nine cases, covering
start slots 0, 14 and 31, address normalization and preservation of unrelated
descriptors. All passed; the emulator does not simulate DMA or watchdogs.
[Offline evidence](../output/rtl8922-paxi-descriptor-offline-20261013.json).

## Patch review: likely causes of the stall

The current patch implements descriptor submission and waits for TX0's read
index and busy bit. It does not implement the complete firmware submission,
completion, allocator and interrupt protocol. A DMA read index reaching the
producer index only establishes descriptor consumption; it does not establish
that every downstream resource is reusable. Holding WCPU removes its normal
housekeeping as well as avoiding a competing descriptor writer. Missing resource
return remains a leading hypothesis, not an identified mechanism. The traced ROM
completion helper includes software SRAM-pool freeing; that alone is not proof
of a hardware-credit return operation missing from this private-ring path.

There is a concrete configuration discrepancy in the wide-queue experiment.
`prepare-paxi.py --wide-queue` changes DLE's C2H quota from 32 to 192 pages but
does not reinitialize PAXI's corresponding limit. Executing the pinned firmware
initializer offline with feature 5 false, 128-byte PLE pages and the observed
six-page WDE quota gives:

| C2H quota input | Initializer output at PAXI `0x710` |
|---|---:|
| 32 pages | `0x00400000` |
| 192 pages | `0x01800000` |
| Measured wide-queue card | `0x00400000`, while DLE quota is `0x00c000c0` |

All eight final sampled flow-control registers match the synthetic 32-page
initialization case. The pinned driver first boots firmware using its download
layout and later initializes the normal DLE layout; the wide-queue patch changes
the latter. This provides a plausible origin for the discrepancy, but does not
prove when the live firmware last ran this initializer or explain exactly why
packet 96 fails. The offline feature branch is stated explicitly and DMA is not
simulated. The result does not authorize treating `0x710` as a complete repair.
[Executable offline evidence](../output/rtl8922-paxi-flow-offline-20261013.json).

The descriptor positions narrow the failure further. Starting at slot 14,
95 completed three-descriptor packets leave TX0 at slot 11; the failing next
packet posts slot 14 but the hardware remains at slot 11. Six completed
two-descriptor packets leave it at slot 26; the next posts slot 28 but hardware
remains at slot 26. Both sustained failures occur before consuming the next
header descriptor. The large-packet case has already crossed both descriptor
and frozen-source wraps successfully. This favors admission/resource exhaustion
over a failure reading a particular LA address or the first ring wrap. The
six-packet count matching the WCPU WDE quota is suggestive, not a proof of which
resource is exhausted; there is no validated quantitative model for 95 yet.

The experiments rewriting `0x750/0x754` only reproduce initializer writes;
their role as an incremental return/acknowledgment interface was never proved.
Likewise, clearing `0x700` bits is not a demonstrated flow-check bypass: the
initializer clears those bits during setup and re-enables them at the end,
and the experiment stopped all packet progress. Neither negative test rules
out a flow-control problem. Zero used pages in two sampled DLE quotas also
cannot establish that PAXI credits, other quotas or completion queues are free.

## Consistent-limit hardware follow-up

The user authorized the proposed initialization/accounting follow-up. The
experimental control mode 3 checks the fresh 192-page C2H quota, zero current
use and 128-byte page size. With TX0 stopped and idle, it disables the same
low FC bits as the pinned initializer, changes only the `0x710` limit field
to `0x01800000`, restores FC enable and verifies both readbacks. Original
configuration is restored on known-inactive completion; uncertain DMA retains
its allocation/configuration until mandatory teardown.

New resource tracing records all 14 PLE and five WDE quota views, raw free-page
and empty-group views, both PCIe receive indices and host counts. Snapshots are
before submission, after selected packet counts and at termination. They add
measurement overhead, so these runs are diagnostic rather than throughput gates.

| Arm | Payload | Correct packets before stop | Result |
|---|---:|---:|---|
| Corrected limit, one-packet safety check | 8,192 B | 1 / 1 requested | Full-payload pass |
| Instrumented baseline | 8,192 B | 95 | Timeout |
| Corrected limit | 8,192 B | 192 | Timeout |
| Corrected limit, 100 us host service after every packet | 8,192 B | 192 | Timeout |
| Identical FC toggle/write sequence, retain old limit | 8,192 B | 95 | Timeout |
| Corrected limit, preserve original descriptor bits 16..29 as ROM writer does | 8,192 B | 192 | Timeout |
| Corrected limit, header-rounding control | 8,160 B | 35 | Timeout |
| Corrected limit, header-rounding control | 224 B | 89 | Timeout |

Every sustained arm requested 4,096 packets. Every completed host prefix was
verified byte for byte, with no host drops or mismatched packets. All runs
saved/restored fresh Pluto settings, kept TX off and reported no cleanup errors.
[Comparison and evidence links](../output/rtl8922-paxi-consistent-summary-20261013.json).

The old-limit toggle control isolates the limit change from merely cycling FC
enable: it retains the original 95-packet failure. The corrected limit therefore
contributes to progress, but does not fix sustained operation. The identical
192-packet failure after much slower host-service pacing argues against delayed
host replenishment as the remaining cause in that arm. Copying the original
upper descriptor bits also makes no difference to that threshold.

After the first large packet, C2H's DFI view transiently shows 65 used pages;
at the final stall it shows zero use and 192 free reserved pages. Other sampled
quotas return to their initial values; the producer's eight-page CPUIO scratch
allocation remains intentionally owned. Both host receive indices are recorded,
and the delivered packet count reaches the completed count. These observations
favor PAXI credit/return accounting becoming inconsistent despite DLE reclamation,
but the exact counter or acknowledgment is not identified.

Leaving 32 bytes of allocation headroom does not cure the stall. The 8,160-byte
arm also changes payload alignment and often requires another scatter/gather
segment. Its shorter failure cannot isolate rounding from fragmentation. Its
source descriptors explicitly wrap at the frozen LA boundary, and the host
verifier uses a cyclic reference, so these controls never read beyond the owned
frozen ring. The 224-byte arm changes packet-size classification as well as
rounding. Neither result proves a particular arithmetic leak.

At this intermediate stage no live capture was attempted because the sustained
frozen gate still failed. The remaining work is to identify the PAXI credit-return protocol
and its length/segment accounting. Releasing WCPU against the private ring would
expose stale firmware state; a firmware-running cooperative path remains the
preferred eventual design. The original working driver is unchanged.

## Reconstructing the diagnostics

Build only in a new isolated directory. These steps do not open hardware:

```sh
bash driver/prepare.sh vendor/rtw89-parallel-new
python3 research/streaming/prepare-parallel.py vendor/rtw89-parallel-new
make -C vendor/rtw89-parallel-new -j4

bash driver/prepare.sh vendor/rtw89-paxi-new
python3 research/streaming/prepare-paxi.py vendor/rtw89-paxi-new --wide-queue
make -C vendor/rtw89-paxi-new -j4
```

Each preparation script verifies the pinned upstream and exact untouched
working patch through `prepare-experiment.py`. It refuses the working driver
directory. Never stack alternative patches or rebuild loaded modules.
Hardware execution requires specific authorization for CPU hold and queue
borrowing (granted for the bounded runs above), and must run within the bounded `run-receiver.sh` wrapper so teardown is mandatory.
The older `run-session.py` assumes a running demo and must not be used to
restart the user-stopped demo.

Offline reproduction (local ROM/table inputs remain ignored):

```sh
/tmp/rtl8922-tx-venv/bin/python research/streaming/inspect-paxi-descriptors.py \
  --firmware vendor/rtw89/firmware/rtw8922a_fw-4.bin \
  --rom /home/plaing/rtl8922-iq-research/cpuio-test/rom.bin \
  --table /home/plaing/rtl8922-iq-research/cpuio-test/table.bin \
  --output output/paxi-descriptor-check-new.json

/tmp/rtl8922-tx-venv/bin/python research/streaming/inspect-paxi-flow.py \
  --firmware vendor/rtw89/firmware/rtw8922a_fw-4.bin \
  --rom /home/plaing/rtl8922-iq-research/cpuio-test/rom.bin \
  --table /home/plaing/rtl8922-iq-research/cpuio-test/table.bin \
  --observed output/rtl8922-paxi-watch-0ms-20261013.json \
  --output output/paxi-flow-check-new.json
```

Both diagnostic drivers compile against the host's 6.8.0-124-generic kernel.
Python syntax/lint and `git diff --check` pass. The working patch and prepared
working checkout still hash to the pinned
`69f722ce636bb6fda541bd4be3d787fbc30b9db88b54d731dc66fe4a15036fc6`.

## Demo overflow recovery — 2026-10-14

`run-demo-service.py` now supervises the existing receiver wrapper. Unexpected
capture termination closes/restores Pluto and finishes driver teardown before
restarting after two seconds. Fresh PAXI initialization still uses 5250 MHz;
the native bridge then restores the saved target with the qualified live-retune
path. A queued tune request also survives an interruption. Session identifiers,
generation separators and cumulative error/recovery counters distinguish the
new capture. The browser's EventSource reconnects. Stop Demo exits cleanly and
does not restart. Wrapper setup failures, including a card owned by another
receiver, are not retried. The working kernel patch and source guards are
unchanged; resumed reception is explicitly discontinuous.

Pluto support imports and the default text buffers are prepared before RX
activation without opening hardware. Numerical-library thread counts are limited
to one in the supervised process tree. Pluto remains muted until its initial
cyclic buffer has loaded. At 160 MS/s, bounded tone and text tests at 0 dB each
ran for about three seconds without receive errors and restored fresh settings
with TX off. This reduces cold-start work; the precise trigger of the original
untraced overflow is not established.

A 650 ms native-process pause filled the 128 MiB host FIFO and produced a real
sequence gap (9,081 dropped packets in the final trial). The demo tore down the
old session and resumed at 5350 MHz with one counted interruption/recovery.
Stop Demo then left the supervisor stopped, card released and Pluto restored.
This tests recovery, not gap-free capture. Detailed source fault statuses are
now retained; an earlier trial also caught a real source-ring overrun with
45,894 records of backlog, beyond the 40,960-record ring.

Evidence: [combined checks](../output/rtl8922-demo-overflow-recovery-summary-20261014.json)
and [final forced-overflow trial](../output/rtl8922-pluto-demo-recovery-v5-20261014.json).
Earlier failed trials remain saved: the first 100 ms pause did not overflow the
FIFO; v2 exposed a transient-HTTP-read issue in the test harness; v3 exposed
incorrect fresh startup at a saved non-baseline center; v4 exposed a pending
retune lost during an early source overrun. Those harness/restore issues were
corrected before the final pass. Offline tests cover cold preparation without
hardware access, muted TX setup failures, recovery at saved and queued centers,
cumulative counters, wrapper setup errors and manual stopping.
