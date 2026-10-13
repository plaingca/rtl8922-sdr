# Getting started

This is a Linux research receiver with a browser demo and separate experimental
transmit tools. Start with the offline checks; they need neither root nor a card.

## Install and check

```sh
python3 -m venv .venv
.venv/bin/python -m pip install -r requirements.txt
make doctor PYTHON=.venv/bin/python
make check PYTHON=.venv/bin/python
```

`doctor` checks the working patch's SHA256, Python dependencies, build tools and
local artifacts. It does not query devices, contact beastmode, load drivers,
start services or transmit. Missing optional artifacts are reported separately.
Use `.venv/bin/python tools/doctor.py --json` for structured output.

For transmit/firmware analysis and the full offline research suite:

```sh
.venv/bin/python -m pip install -r research/requirements.txt
.venv/bin/python tools/doctor.py --research
make check-research PYTHON=.venv/bin/python
```

The research runner builds a fresh C compiler library in temporary storage,
then runs only the TX and firmware unit tests. RF probe imports use mocks or
synthetic input in these tests; hardware modes are never invoked. Tests requiring
private ROM/firmware inputs or the optional pinned GNU Radio LoRa modem report
skips when those dependencies are absent. LoRa setup is described in the
[LoRa findings](bb-nco-lora-findings.md), not installed by this quick start.

## Build the receiver

Install matching kernel headers, GCC/G++, make, git, CMake, SoapySDR development
files, `iw`, `pciutils`, NetworkManager and libiio through your distribution.
Then, from the repository root:

```sh
bash driver/prepare.sh
make -C vendor/rtw89 -j4
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build -j4
```

The preparation script downloads the source and firmware pinned by
[`driver/upstream.json`](../driver/upstream.json), and applies the working patch.
It neither installs nor loads modules. Experimental driver/firmware patches
are alternatives built from their documented inputs; do not stack them.

The plugin and application must use the same SoapySDR ABI. When `/usr` and
`/usr/local` installations coexist, set `SoapySDR_DIR` for the intended version
and use a separate build directory. Set `RTL8922_BRIDGE` if the bridge is built
outside the default `build/` directory.

## Start reception explicitly

The original beastmode demo is stopped. Before using its card, inspect
`rtl8922-live-demo.service` and the loopback demo status if available. Do not
run a second receiver or overwrite working modules while they are loaded.
For another machine, use its PCI address and its actual regulatory country.

With the card released and the build complete:

```sh
sudo env RTL8922_PCI=0000:0d:00.0 \
  RTL8922_IW=/usr/sbin/iw RTL8922_COUNTRY=CA \
  SOAPY_SDR_ROOT="$PWD/build/soapy-root" \
  SOAPY_SDR_PLUGIN_PATH="$PWD/build" \
  bash run-receiver.sh "$PWD/.venv/bin/python" run-live-demo.py
```

The launcher refuses a bound card, loaded experiment modules or occupied
temporary firmware/configuration paths. Its setup errors explain what to fix.
It does not automatically detach a networking card. Root is required for
module/debugfs access and receiver scheduling. Cleanup unloads its modules,
removes its temporary files and restores the saved regulatory country.

Open [the local demo](http://127.0.0.1:8732/). For beastmode forwarding, use
your existing SSH configuration from the viewing machine:

```sh
ssh -N -L 8732:127.0.0.1:8732 beastmode
```

A different local port works too; use that port in the browser. The server is
loopback-only and commands must come from the exact same local origin.

1. Wait for **Live · 40 MS/s**, then tune within 2422–2462 MHz.
2. Choose the text close-up or full 40-MHz view. Pausing freezes the display;
   the receiver keeps draining I/Q.
3. For a Pluto signal, choose text or reference tone and press **Start Pluto TX**.
   This transmits from the external Pluto, not the Wi-Fi card. Starting requires
   live reception and an idle Pluto transmitter.
4. **Stop TX** mutes Pluto. **Stop demo & release hardware** ends the session.
   Closing a browser tab does not stop reception.

The transmitter timer, stale-receiver watchdog and normal shutdown mute TX
and restore saved Pluto settings. A lost IIO connection can prevent restoration;
check device state after a transport failure. Capture gaps/restarts and skipped
display snapshots are different counters. The waterfall is a view of real
received I/Q, not a continuous recording or a synthetic text overlay.

## Troubleshooting

| Symptom | What to check |
| --- | --- |
| `No module named numpy` or other import error | Use the Python interpreter where requirements were installed; pass `PYTHON=.venv/bin/python` to make. Do not mix another Python's compiled packages. |
| Firmware/module missing | Run preparation and build, or set `RTL8922_DRIVER_DIR` / `RTL8922_FIRMWARE` to the intended existing files. |
| Card already has a driver / module loaded | Check the current owner and demo status. Release it explicitly; the launcher will not interrupt another receiver. |
| Temporary path already exists | Inspect its owner. The launcher refuses to overwrite another session's firmware or configuration. |
| Plugin not found or ABI mismatch | Match SoapySDR builds and set `SOAPY_SDR_PLUGIN_PATH`; isolate older installed plugins with `SOAPY_SDR_ROOT`. |
| Browser cannot connect | Check launcher output and SSH forwarding. Use a localhost/loopback URL, not the remote host's LAN name. |
| Tune/TX controls disabled | Wait for fresh receiver samples. Read the connection badge and capture status. Stop TX remains available. |
| Allocation timeout / restart limit | Stop the launcher, check cleanup and restart explicitly. Indefinite capture is not qualified. |
| Research tests skip LoRa or private inputs | Expected on a public checkout; the suite states which checks did not run. |

[Capabilities and measured limits](capabilities.md) · [Transmit quick start](transmit.md)

## Validation of the usability update

The [October 13 offline report](../output/rtl8922-polish-offline-validation.json)
records 163 passing test cases across the demo, TX, firmware and optional LoRa
launchers. The public snapshot also passes with private firmware/ROM inputs
absent and their dependent tests explicitly skipped. Chromium checks cover
desktop/mobile layout and command states using mocked API responses. No RF
experiment or service change was made during this update. GitHub Actions uses
the documented requirements and offline targets; local results are recorded
separately from future hosted CI runs.
