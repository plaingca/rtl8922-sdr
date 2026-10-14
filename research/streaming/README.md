# Manual streaming research tools

Read the repository `AGENTS.md`, `README.md`, `synthesizer-findings.md` and
`validation-summary.json` first. These commands are for the existing
**beastmode** setup. The hardware tools stop and restore the existing demo;
they are not automatic tests and must never run beside another receiver.
See [findings](../../docs/streaming-throughput.md) before repeating a recipe.

The [2026-10-13 follow-up](../../docs/highrate-reception.md) records the separate
PAXI path: fully verified 382.07 MB/s frozen transfer and clean 60-second passive
transport at 80/160 MS/s. `prepare-paxi.py --wide-queue` reconstructs the isolated
driver. `paxi-live.py` requires explicit watchdog disable before holding WCPU,
uses guarded credit resynchronization, and always requires module teardown.
The exact hardware credit-return mechanism remains unresolved. The working
kernel patch is unchanged. `inspect-paxi-descriptors.py` and
`inspect-paxi-flow.py` are offline emulators, not hardware qualifications.

The old session runner below restarts a demo and **must not be used while the
user has deliberately stopped it**. New PAXI runs use `run-receiver.sh` directly,
which unloads the isolated modules on exit and leaves the demo stopped.

For the current PAXI Soapy recipe and its fixed centers, continuous default and reload
requirement, use [the explicit mode guide](../../docs/highrate-reception.md#default-continuous-soapy-and-demo-mode).
`continuous-demo-check.py output/report.json 180` manually runs the default
160 MS/s browser backend beyond the former 107-second counter rollover, with
Pluto TX off and fresh settings restored. Run it through `run-receiver.sh`;
it stops the test demo and requires module teardown. Never run it in CI.
`paxi-soapy-check.py` runs one bounded capture per module load; its C++ client
checks timestamps, partial reads, native conversion grids and reload rejection.
`paxi-drain.c` replaces only the isolated driver's allocation-per-read FIFO
reader with a reusable per-open buffer. `analyze-paxi-tones.py` and the explicit
high-rate flags in `coded-continuity.py` are offline analysis tools.

## Isolated driver and reader

From the repository root, create a **new** directory:

```sh
bash driver/prepare.sh vendor/rtw89-streaming
python3 research/streaming/prepare-experiment.py
make -C vendor/rtw89-streaming -j4
mkdir -p build-streaming
g++ -O2 -std=c++17 -Wall -Wextra -pthread \
  research/streaming/raw-stream.cpp -o build-streaming/raw-stream
```

`prepare-experiment.py` checks the exact upstream commit and working patch
hash. It refuses the default working-driver checkout. It adds copy diagnostics
and the default-off account-before-yield switch. It does not load modules.
An optional positional target supports reconstruction in another isolated
directory. The full alternative driver patch is also preserved under
`driver/patches/streaming-throughput-experimental.patch`; apply that to the
**pristine pinned upstream**, not on top of `driver.patch`.

Never rebuild/replace the original demo's loaded working driver. The session
runner uses the experimental directory only after the demo has released the
card and unloaded its modules. It refuses to replace a still-loaded driver.

The recorded session runner predates the migration to the 40 MS/s demo in this
checkout and restores the original 20 MS/s launcher. Adapt its service restore
step before any new experiment. The demo is currently stopped at the user's
request; none of these tools should be run automatically.

## Explicit hardware runs

The runner saves the current demo state, requires live RX and an inactive
tone, calls the demo's Stop API, then runs the selected script under a bounded
wrapper. `Radio` independently saves fresh Pluto settings before changing
anything, rejects an active TX, and restores settings with TX off in `finally`.
The service is then restarted on its original paths and retuned to its saved
frequency. Inspect both the report and adjacent `.session.json` afterward.

```sh
# Frozen passive copies; stops on incorrect data or unsafe DMA completion.
python3 research/streaming/run-session.py --timeout 180 \
  research/streaming/copybench.py output/copy-bench-new.json

# Separate bit-29 control; the rejected bit-28 variant is not retried.
python3 research/streaming/run-session.py --timeout 90 \
  research/streaming/copybench.py output/control29-new.json control29

# Two 60-second 40 MS/s arms, then short 80/160 attempts and paired tones.
python3 research/streaming/run-session.py --timeout 230 \
  research/streaming/stream-matrix.py output/stream-matrix-new.json 60

# One-second coded TX capture, then 900 seconds of passive reception.
python3 research/streaming/run-session.py --timeout 1020 \
  research/streaming/endurance.py output/endurance-new.json 900
```

The supplied runner assumes `/home/plaing/rtl8922-iq-research/pluto-venv`,
`iw-local/sbin/iw`, `soapy/run-receiver.sh` and
`rtl8922-live-demo.service`. Inspect and adapt it before using another host.
Hardware scripts require the wrapper's `RTL8922_IW` environment and root.
They must not be imported as a test suite. Only `hardware.py` is a helper
whose import does not open the card or Pluto.

Raw prefixes are written under ignored `build-streaming/`, never committed.
The endurance tool checks available disk and stores only 20 MB of coded data
and a 256 KiB passive prefix. It drains all other bytes without saving them.
Progress is in `build-streaming/endurance40.log`. The matrix and endurance
prefix names are reused: retain them elsewhere under an ignored directory
before repeating a run if their raw data is still needed.

`raw-stream` reports packet framing, modulo-32-bit record sequence, pending
bytes, producer scheduling/read errors, and driver return status. Its host
duration includes a final 100 ms drain; use the producer's `elapsed_ns` for
source duration. A finite tail below a complete packet at explicit stop is
not silently added to the delivered sample count. A source error ends a
trial; recovery is never counted as gapless operation.

## Offline analysis

These tools open files only and do not touch hardware:

```sh
python3 research/streaming/summarize.py

uv run --with numpy python research/streaming/analyze-matrix.py \
  output/rtl8922-stream-matrix-v1.json build-streaming \
  output/matrix-analysis-new.json

# Convert the bounded signed-int8 coded prefix for the existing analyzer.
uv run --with numpy python - <<'PY'
import numpy as np
a = np.fromfile('build-streaming/coded40.bin', dtype=np.int8).reshape(-1, 2)
(a[:, 0].astype(np.float32) + 1j*a[:, 1]).astype('<c8').tofile('build-streaming/coded40.cf32')
PY
uv run --with numpy --with scipy python coded-continuity.py \
  --rate 40000000 --input build-streaming/coded40.cf32 \
  --output output/coded-analysis-new.json --analysis-lowpass-hz 1200000

uv run --with capstone python research/streaming/inspect-firmware.py \
  --firmware vendor/rtw89/firmware/rtw8922a_fw-4.bin \
  --rom /home/plaing/rtl8922-iq-research/cpuio-test/rom.bin \
  --table /home/plaing/rtl8922-iq-research/cpuio-test/table.bin \
  --output output/firmware-trace-new.json
```

The isolated SciPy command avoids this host's system-SciPy/NumPy-2 ABI
mismatch. The firmware analyzer uses already available local inputs, records
hashes, checks expected pointer addresses and decodes small evidence excerpts.
It never generates ROM captures or writes firmware to the card. Historical
pointer values must be rechecked before any future live firmware hook.

Static checks:

```sh
uv run --with ruff ruff check research/streaming
bash -n run-receiver.sh
git diff --check
```

## Offline 160 MHz waterfalls

`paxi-live.py` can retain a prefix up to 512 MiB and checks free disk space first.
At 160 MS/s this stores 1.678 seconds of native i8 I/Q; the rest of a bounded
trial is drained and counted. Raw data remains under ignored `build-streaming/`.
`render-waterfalls.py` reads passive 160 MS/s reports, requires passing transport,
and renders actual prefixes with a shared color scale, spectrum traces, and a
provenance manifest. It processes bounded FFT batches rather than loading the
whole capture as floating-point samples. It does not open hardware.

```sh
uv run --with numpy --with matplotlib python research/streaming/render-waterfalls.py \
  output/rtl8922-waterfall160-shot{1,2,3}-20261013.json \
  --output-dir output/waterfalls160
```

The captured gallery spans 5170–5330 MHz at nominal center 5250 MHz, with Pluto
TX off. Power is digital dBFS per FFT bin, not calibrated antenna power. Per-FFT
DC mean removal and averaging are stated on the figures. Separate snapshots are
not concatenated into a continuous time axis.

## Full-span sequential survey

`survey-capture.cpp` / `survey-capture.py` collect passive, native i8 snapshots
through the existing 20 MS/s `free_tuning=1` mode. A supplied text plan contains
one center in MHz per line. Each tile records 0.2 seconds, checks native sample
conversion and timestamps, and requires a clean producer result with no FIFO
drops. The batch stops on failure and retains completed tiles; the wrapper
unloads the isolated driver afterward. Fresh Pluto settings are saved/restored
with TX off. The bounded batch accepts at most 180 tiles and checks free disk.

The recorded 164-tile plan uses 15 MHz center spacing plus endpoints in
2312–2382, 2412–2484, 2500–2515, 4900–5950 and 5955–7115 MHz. Above 6 GHz
is tuning-reported coverage without an external RF-reference qualification.
`render-survey.py` discards each tile's outer 2 MHz and blends overlapping
shoulders in linear power, with no gain normalization. Gaps remain blank.
Waterfall time is relative to each tile, and adjacent columns were captured at
different wall times; the manifest preserves all tile timestamps and raw hashes.
The recorded images are in `output/full-band-survey/`.

```sh
g++ -O3 -std=c++17 -Wall -Wextra research/streaming/survey-capture.cpp \
  -o build-streaming/survey-capture $(pkg-config --cflags --libs SoapySDR)
# Explicit hardware run: use run-receiver.sh with the isolated driver, private
# build-paxi plugin, Pluto Python environment, and a bounded timeout.
# Wrapper command: python research/streaming/survey-capture.py REPORT PLAN
uv run --with numpy --with matplotlib python research/streaming/render-survey.py \
  output/rtl8922-full-band-survey-20261013.json --output-dir output/full-band-survey
```

## Offline Wi-Fi frame demodulation

`decode-wifi-iq.py` extracts one 20 MHz channel from an existing transport-qualified
passive 160 MS/s native signed-i8 I/Q capture. It performs complex mixing and
FIR decimation, then runs the independent GNU Radio `gr-ieee802-11` legacy OFDM
receiver: short/long training synchronization, FFT, pilot/channel equalization,
L-SIG decoding, demapping, deinterleaving, Viterbi decoding and descrambling.
Only frames passing the reference CRC residue gate are emitted. A single-line
reference patch retains the original received FCS in its PDU, allowing a second
independent `zlib.crc32` check. PHY processing and the CRC gate are unchanged.
The reference is pinned to `ad0598e4a874f4b8e1f391a1e0323e80df2b34ff` from
<https://github.com/bastibl/gr-ieee802-11>. It is GPL-3.0 licensed.

These commands are entirely offline and do not open a receiver, use a monitor
interface, or start TX. The build expects the host's system GNU Radio 3.10
libraries/development files and Python 3.10, plus cmake, pybind11, fmt, spdlog,
git and uv. A local NumPy 1.x environment avoids the installed GNU Radio
bindings' incompatibility with NumPy 2. All downloaded sources and compiled
libraries stay in ignored vendor/build directories.

```sh
bash research/streaming/prepare-wifi-decoder.sh
export PYTHONPATH="$PWD/build-wifi/reference/lib/python3.10/site-packages"
export LD_LIBRARY_PATH="$PWD/build-wifi/reference/lib/x86_64-linux-gnu"
build-wifi/venv/bin/python research/streaming/decode-wifi-iq.py \
  output/rtl8922-waterfall160-shot1-20261013.json --channel-mhz 5220 \
  --output output/wifi-decode/ch5220.json
build-wifi/venv/bin/python research/streaming/decode-wifi-iq.py \
  output/rtl8922-waterfall160-shot1-20261013.json --channel-mhz 5220 \
  --negative-control --output output/wifi-decode/ch5220-magnitude-only.json
build-wifi/venv/bin/python research/streaming/render-wifi-decode.py \
  output/wifi-decode/ch5220.json output/wifi-decode/ch5220-magnitude-only.json \
  --output output/wifi-decode/decoded-beacon.png
```

The recorded 250 ms source interval recovered one valid 441-byte broadcast
beacon at 24 Mb/s (16-QAM, rate 1/2), FCS `a232c556`, sequence 1140, beacon
interval 102.4 ms, and 25 structurally valid information elements. Phase removal
uses `abs(channelized_IQ)` with zero imaginary component and recovered no valid
frame. Input interval and report hashes preserve provenance. The figure uses
all 37 payload OFDM symbols, 48 data subcarriers each, associated through the
reference equalizer's stream-tag offset; its 23 dB SNR is the decoder's training
estimate, not a calibrated measurement or payload EVM. SSID and addresses are
omitted from the figure/reports. Raw decoded bytes, channelized I/Q and symbol
arrays remain under ignored `build-wifi/`. Raw source files are not published,
so reproduction requires the locally retained capture. This demonstrates
usable coherent I/Q on channel 44, not a 160 MHz Wi-Fi PHY decoder or complete
wideband fidelity qualification. The service remains stopped.

## A coherent 160 MHz Wi-Fi transmission

`wifi_he_header.py` independently extracts all eight 20 MHz sections from one
native 160 MS/s capture. STF autocorrelation and repeated L-LTF correlation
provide timing and carrier correction. The receiver decodes L-SIG and its
repeated copy, then HE-SIG-A using pilot correction, 52-tone deinterleaving,
soft rate-1/2 K=7 Viterbi decoding and the transmitted four-bit HE CRC. It
requires valid L-SIG parity/tail, exact RL-SIG agreement, HE format/reserved/tail
checks, and matching complete headers at aligned times across all eight
sections. Phase-removed controls must produce no accepted HE-SU header. The
four extra HE-SIG-A tones use the nearest L-LTF channel estimate.

The download trial `output/rtl8922-wifi-wide-shot4-20261013.json` passed its
bounded transport gates. One downlink HE-SU transmission at about 0.98746 seconds
has identical L-SIG and HE-SIG-A bits in sections centered at 5180, 5200, 5220,
5240, 5260, 5280, 5300 and 5320 MHz. All eight HE CRCs pass; timing spread is
0.2 us. It signals bandwidth code 3, MCS 9 (256-QAM, rate 5/6), two space-time
streams without STBC, LDPC, and BSS color 63. The continuous occupied span and
updated AP beacon resolve the bandwidth code's 160/80+80 ambiguity to contiguous
160 MHz. No HE payload or MAC FCS was decoded: general two-stream MIMO payload
recovery is beyond this single-path receiver. Full-band EVM, sensitivity,
sample-level continuity and indefinite reception remain unqualified.

```sh
# Reuses the NumPy/SciPy environment from prepare-wifi-decoder.sh; no GNU Radio
# imports, downloaded decoder, radio access or transmitter are needed here.
build-wifi/venv/bin/python research/streaming/wifi_he_header.py \
  output/rtl8922-wifi-wide-shot4-20261013.json --start .9874 \
  --output output/wifi-decode/he160-eight-sections.json
build-wifi/venv/bin/python research/streaming/render-he160.py \
  output/wifi-decode/he160-eight-sections.json \
  --output output/wifi-decode/he160-wide-packet.png
build-wifi/venv/bin/python -m unittest discover -s tests -p test_wifi_he_header.py
```

The codec was also checked against the independent GR-WiFi encoder and CRC
implementation at `cloud9477/gr-ieee80211` commit
`add75653e8de63361b9d3d34606eb8dc5b6029c5`: 400 clean/noisy BCC decodes and 100
CRC comparisons passed, retained in `output/wifi-decode/he-codec-reference-check.json`.
The unit fixture was independently encoded by that reference. The production
header decoder uses its own implementation and has no dependency on GR-WiFi.

Field interpretations follow [Qualcomm's HE-SU definitions](https://android.googlesource.com/kernel/google-modules/wlan/qcom/wcn6740/wlan/+/refs/heads/android-gs-akita-android16/fw-api/hw/qca6490/v1/he_sig_a_su_info.h),
[HE format detection](https://www.mathworks.com/help/wlan/ref/wlanformatdetect.html),
and the [IEEE HE CRC clarification](https://www.ieee802.org/11/email/stds-802-11-tgax/msg00523.html).
Four two-second passive trials saved fresh settings, passed transport checks,
restored Pluto settings with TX off, and unloaded the driver. Early snapshots
showing only 80/20 MHz activity are retained without promotion. The final
receiver remains stopped. These observations are reception evidence; no
reference-tone qualification or calibrated antenna-power claim is added.
