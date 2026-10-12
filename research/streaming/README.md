# Manual streaming research tools

Read the repository `AGENTS.md`, `README.md`, `synthesizer-findings.md` and
`validation-summary.json` first. These commands are for the existing
**beastmode** setup. The hardware tools stop and restore the existing demo;
they are not automatic tests and must never run beside another receiver.
See [findings](../../docs/streaming-throughput.md) before repeating a recipe.

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
