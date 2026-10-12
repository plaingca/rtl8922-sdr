# RTL8922 SDR research

Experimental raw I/Q reception from a Realtek RTL8922AE Wi-Fi card: patched
Linux driver, SoapySDR plugin, live FFT/waterfall demo and timed ADALM-Pluto
waterfall text and reference tone generation.

## Current state

- One qualified receive path (`PATH1`), CF32/CS16 output.
- Free-tuning requested centers: **2312–2382, 2412–2484, 2500–2515 and
  4900–7115 MHz**, subject to enabled baseline channels. Actual RF tone
  validation ends at 6 GHz because of the available Pluto reference.
- Free tuning captures at 20 MS/s, with filtered output at 1.25, 2.5, 5, 10
  and 20 MS/s. The browser demo now focuses on experimental **40 MS/s**
  reception at 2422–2462 MHz, with a 1 MHz Pluto waterfall-text signal.
- Coarse retunes cause gaps. Indefinite gapless reception, continuous
  80/160 MS/s and 320 MB/s extraction remain unresolved. Allocation timeouts
  can require a receiver restart.
- Full S/C-band coverage remains unresolved. 76 recent valid PLL/LCK/VCO
  trials unlocked no further windows. No Realtek raw-I/Q TX path is qualified.

See [synthesizer findings](synthesizer-findings.md),
[validation summary](validation-summary.json) and
[development history](docs/development-history.txt) for evidence and limitations.

The [streaming throughput investigation](docs/streaming-throughput.md) covers
40/80/160 MS/s tests, the firmware PAXI bypass lead, and the PCIe/precision
constraints on 320 MS/s. The isolated experimental patch and bounded manual
tools preserve both successful and rejected measurements.

## Contents

- `driver/`: working kernel patch, pinned upstream provenance and setup script.
  Experimental patches are alternatives, **not** patches to stack onto the working driver.
- `SoapyRTL8922.cpp`, `fields.hpp`: SoapySDR receiver and recovered LA fields.
- `live-bridge.cpp`, `live-demo.py`, `live-demo.html`, `pluto_tone.py`: streaming
  bridge, browser demo and bounded reference transmitter. `waterfall_text.py`
  builds the RF text waveform; `tests/` contains hardware-free checks.
- `*-check.cpp`, `*-check.py`, `coded-continuity.py`: hardware validation tools.
  Some older tools retain host paths; inspect before running.
- `research/`, `output/`: archived experiments, analysis and small reports.
- `examples/beastmode/`: original host-specific launchers for reference.

## Build on Linux

Dependencies: matching running-kernel headers, GCC/G++, make, git, CMake,
SoapySDR development files, recent `iw`, `pciutils`, NetworkManager,
libiio and Python.

```sh
bash driver/prepare.sh
make -C vendor/rtw89 -j4
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build -j4
python3 -m venv .venv
.venv/bin/pip install -r requirements.txt
```

The setup script downloads `morrownr/rtw89` at commit
`8bbbacadf6fa73c3a3195aefbd4b2ec2422ae356`, including upstream firmware,
then applies the working patch. It does not install or load modules.
Firmware remains subject to its upstream `LICENCE.rtlwifi_firmware.txt`.

Build against the **same SoapySDR ABI as the application**. The original host
has incompatible `/usr` and `/usr/local` builds; select a matching
`SoapySDR_DIR` and separate build directory when necessary. No system plugin
installation is required if `SOAPY_SDR_PLUGIN_PATH` points at the build.

## Run the demo

The wrapper requires an otherwise unbound RTL8922AE, no loaded `_git` modules,
and absent temporary firmware/NM config paths. It refuses to overwrite these.
Root is needed for debugfs, modules and the worker's SCHED_DEADLINE policy.
The wrapper removes temporary firmware/config and unloads its modules on exit.
It does not automatically unbind a card used for networking.

```sh
sudo env RTL8922_PCI=0000:0d:00.0 \
  RTL8922_IW=/usr/sbin/iw \
  RTL8922_COUNTRY=CA \
  SOAPY_SDR_ROOT="$PWD/build/soapy-root" \
  SOAPY_SDR_PLUGIN_PATH="$PWD/build" \
  bash run-receiver.sh "$PWD/.venv/bin/python" run-live-demo.py
```

Use the host's actual country in `RTL8922_COUNTRY`; omitting it retains the
current domain, which is restored on exit. This example matches the original
Canadian host. Recent `iw` with 6-GHz support may be needed for upper bands.

Open **http://127.0.0.1:8732/**. The server listens on loopback only;
forward that port through SSH for a remote receiver. A different local
forwarded port is supported: Host remains restricted to loopback names, while
browser control commands must match that exact local origin. Closing the browser
does not stop reception. Use **Stop demo & release hardware**, or terminate
the launcher.

`RTL8922_DRIVER_DIR` overrides `vendor/rtw89`; `RTL8922_FIRMWARE` overrides
the firmware source. `RTL8922_PLUTO_URI` defaults to `ip:192.168.2.1`.
`RTL8922_DEVICE_ARGS` overrides the bridge's default
`driver=rtl8922,producer_scheduler=deadline,experimental40=1`.
The bridge starts at 2422 MHz and 40 MS/s. This demo does not use free tuning.
Setting `SOAPY_SDR_ROOT` to a private empty path prevents an older installed
plugin from taking precedence over the checkout build.
The plugin accepts `iw=`, `pci=` and `debugfs=` device arguments.
Multi-card operation is unqualified; debugfs discovery takes the first
compatible loaded device.

Pluto opens only when requested and refuses an already active transmitter.
Enter up to 16 characters and press **Transmit / apply** to paint real RF text
on the waterfall. The default message is `RTL8922`, centered at +750 kHz,
using a nominal 1 MHz canvas. The 1.5 MHz close-up makes it readable; the
40 MHz overview shows its place in the full capture. Reference-tone mode,
follow/fixed frequency, offset, gain and a 5–300-second timer remain available.
Each text row uses a small cyclic multitone buffer for about 0.3 seconds; row
changes briefly gate TX. A 262,144-point FFT and peak-binned waterfall retain
the narrow carriers. A separate publisher keeps slow display processing from
blocking the hardware reader; skipped display snapshots are counted separately
from receive errors. No synthetic text is painted into the received display.
Timeout, stale RX, Stop TX and normal server exit mute TX and restore saved
settings. A prior broken IIO connection prevented restoration; check TX state
after transport failures.

Offline checks: `python3 -m unittest discover -s tests -v`. The explicit manual
RF check is `research/demo/check_live.py --run-rf-test --report <path>`;
`research/demo/check_backpressure.py --run-capture-test` pauses only the display
server for two seconds with Pluto off. These require the running beastmode demo
and must never be invoked automatically by CI. See
[demo validation](docs/demo40-waterfall.md) for the measured result.

## Continuing development

This standalone snapshot was extracted from the command-center workspace on
2026-10-12. Existing live services were kept on their original paths during
migration. The 40 MS/s demo update moved `rtl8922-live-demo.service` to this
checkout while retaining the original pinned working driver and Pluto Python
environment. The original 20 MS/s launcher remains available as a fallback.
Board filtering and sensitivity outside qualified points remain
uncharacterized. Next targets: channel-to-divider sequencer/manual override,
faster ring extraction, and continuity tests with coded waveforms.

## Licensing and provenance

Driver patches modify upstream GPL-2.0/BSD-3-Clause rtw89 files; preserve their
notices. Original project code and tooling are GPL-2.0-only; see `LICENSE`.
Windows drivers and firmware images are not redistributed here. Historical
disassembly notes document interoperability research, not a vendor source release.
