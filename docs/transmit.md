# Transmit quick start

Choose the transmitter first. The browser demo controls an external **Pluto**.
The **RTL8922** transmit tools are separate experiments, with temporary firmware
and bounded manual launchers. They do not provide a normal SoapySDR TX device.

## Pluto text and reference tones

Follow [receiver setup](getting-started.md), wait for live samples, and use
**Start Pluto TX**. The timer is 5–300 seconds. **Stop TX**, stale reception and
normal shutdown mute TX and restore the saved settings. Text mode supports
A–Z, 0–9, spaces and `- ! ? /`; the displayed band marks the commanded location.
The default Pluto URI is `ip:192.168.2.1`; override it with `RTL8922_PLUTO_URI`.

## Compile application I/Q offline

From the repository root, with NumPy installed:

```sh
make tx-compiler
.venv/bin/python research/tx/bb_nco_iq_pipe.py \
  --input input.cf32 --output commands.bin
```

This reads a file and writes a **new** command file. It does not open hardware
or transmit. Existing output files are refused. Failed file conversions remove
their newly created incomplete output. The optional library path defaults to
`build/nco-compiler.so`; use `--library /path/to/compiler.so` to override it.

For a small synthetic input, entirely offline:

```sh
.venv/bin/python - <<'PY'
import numpy as np
n = np.arange(4096)
iq = (0.5 * np.exp(2j * np.pi * 10000 * n / (32000000 / 3 / 20))).astype('<c8')
with open('/tmp/example-input.cf32', 'xb') as output:
    output.write(iq.tobytes())
PY
.venv/bin/python research/tx/bb_nco_iq_pipe.py \
  --input /tmp/example-input.cf32 --output /tmp/example-commands.bin
```

Use fresh paths when repeating. A Unix pipe remains supported:

```sh
.venv/bin/python research/tx/bb_nco_iq_pipe.py --factor 20 \
  < input.cf32 > commands.bin
```

Shell redirection follows normal shell overwrite rules; use `--output` for
exclusive file creation. Piped stdout cannot be rolled back if invalid input
arrives after earlier valid chunks. Always check the process exit status.

### Data contract

- Input is interleaved **little-endian float32 I,Q**: eight bytes per complex
  sample. Values must be finite with complex magnitude at most one. Peak 0.9
  reproduces the demonstrated 200-kHz OFDM envelope setting.
- Default interpolation factor 20 means **533.333 kS/s** application input.
  Changing the factor changes the input rate, not the nominal command cadence.
- Output packs eight 4-bit NCO indices in each little-endian uint32, low nibble
  first. The default compiler uses physical indices 0..6. These are constrained
  frequency/mute commands, not independently writable DAC I/Q samples.
- One compiler instance retains phase, interpolation and error state across
  chunks. Chunk boundaries, including partial byte reads, do not reset it.
- At EOF, one lookahead input sample and fewer than eight remaining command
  slots are not padded. JSON statistics on **stderr** report output count and
  `uncompiled_command_slots`; stdout contains only binary data.

Applications can use `Compiler.feed_iq()` from
[`bb_nco_realtime.py`](../research/tx/bb_nco_realtime.py). Keep the same instance
and factor for the whole stream. The unpaced pipe is a software interface;
external live ingress through this pipe has not been RF-qualified.

## Bounded RTL8922 experiments

Use the exact firmware/source pins and commands in the matching report:

| Goal | Entry point |
| --- | --- |
| Causal I/Q / 200-kHz OFDM | [Compiler, RF results and refill limits](bb-nco-realtime-findings.md) |
| Precomputed 100-kHz OFDM | [Mapped streaming and individual-frame decoding](bb-nco-narrow-ofdm-findings.md) |
| LoRa presets | [Source pins and sweep](bb-nco-lora-findings.md), [channel-filter correction](bb-nco-lora-wide-followup.md) |
| FM audio | [Speech recovery](bb-fm-findings.md), [bounded live audio](bb-fm-continuous-findings.md) |
| Tone / finite IF controls | [Transmit investigation](transmit-findings.md), [DAC input follow-up](dac-input-findings.md) |

The documented hardware launchers are manual lab procedures, not quick-start
automation. Inspect them before use. Check that the demo is stopped and the
card released, save fresh device settings, bound the test, and stop TX/restore
settings in `finally`. Never load a second receiver or replace loaded working
modules. Raw captures, generated command tables, firmware and build products
remain local/ignored; public JSON/plots retain the measurement provenance.

[Capability limits](capabilities.md) · [Full research map](research-map.md)
