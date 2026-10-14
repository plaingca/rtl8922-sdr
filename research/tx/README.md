# Transmit-path investigation and isolated experiments

Start with the [transmit quick start](../../docs/transmit.md) for file/pipe
compilation and the [capability guide](../../docs/capabilities.md) for measured
limits. `make tx-compiler` builds the offline C compiler; `make check-research`
runs synthetic/mocked tests, including EOF and file-output safeguards. RTL8922
hardware experiments remain explicit manual procedures below.

The [quiet-channel NCO improvement tests](../../docs/bb-nco-improvement-findings.md)
compare joint filtered-I/Q table search, longer-hold complex calibration and
four-slot frequency diversion. `bb_nco_improve.py` and
`analyze_bb_nco_improve.py` generate/analyze evidence entirely offline.
Hardware remains an explicit bounded invocation of `bb_polar_ofdm_probe.py`.
No hardware probe runs as part of the unit tests.

The [100-kHz OFDM and mapped streaming follow-up](../../docs/bb-nco-narrow-ofdm-findings.md)
adds `bb_nco_narrow_ofdm.py` for constrained source generation and per-frame
decoding. `bb_nco_stream_transport.py` and manually compiled
`bb_nco_mapped_writer.c` feed the sequence-owned consumer in
`research/firmware/bb_nco_stream_patch.py`. They are explicit manual hardware
tools, with bounded consumption, underrun muting and the existing restore path.

The [causal I/Q compiler and 200-kHz follow-up](../../docs/bb-nco-realtime-findings.md)
adds `bb_nco_realtime.c`, the stateful `Compiler.feed_iq()` API and
`bb_nco_iq_pipe.py` (CF32 stdin to packed command stdout, hardware-free).
`bb_nco_realtime_writer.c` and `bb_nco_realtime_transport.py` compile commands
while filling the existing bounded BB consumer. Two full RF runs recover
98.7–99.2% of 200-kHz OFDM frames. Inputs were prepared CF32 arrays; external
live ingress and indefinite refill reliability remain unqualified.
`analyze_bb_nco_realtime.py` reproduces the aggregate and plot without hardware.

The [Meshtastic LoRa preset sweep](../../docs/bb-nco-lora-findings.md) adds
`bb_nco_lora.py` and `bb_nco_lora_sweep.py` for offline packet generation and
frequency-only NCO phase compilation, using separately built pinned
`gr-lora_sdr`. `analyze_bb_nco_lora.py` uses the stock packet receiver;
`analyze_bb_nco_lora_summary.py` rebuilds public results. `lora_python.sh` selects
the isolated modem and compatible system Python dependencies.
`bb_nco_lora_probe.py` is an explicit bounded manual RF test, using a separate
16,384-block firmware budget and paced mapped refill helper. Defaults of the
previous firmware/OFDM paths stay unchanged; no hardware tests run in CI.

The [BBMCU DDS findings](../../docs/bb-dds-findings.md) document the isolated
runtime mailbox patch, finite fractional-frequency RF results and failed fast
pattern decoder. `bb_dds_probe.py` checks the runtime hook with RF off;
`bb_dds_rf_probe.py` is a separate explicit RF test. Both default to an offline
plan, require isolated firmware and use the existing bounded manual launcher.
`analyze_bb_dds.py` reproduces the small-report summary without hardware.

`inspect_tx.py` reconstructs selected RTL8922A Windows driver function
locations from their diagnostic-string references, checks x86 instruction
boundaries against PE unwind metadata, and emits short evidence excerpts.
It optionally walks the pinned Linux firmware's multi-image/element containers
and summarizes the RF NCTL initialization table. It never accesses hardware.

See [transmit findings](../../docs/transmit-findings.md) for the interpretation,
input provenance, missing arbitrary-sample interface, and qualification gates.
The checked-in [report](../../output/rtl8922-tx-static-analysis.json) is derived
metadata and selected disassembly, not a driver or firmware dump.

Supply your own `rtwlane711.sys` from the specified ASUS package. The script
rejects other hashes because its helper addresses and excerpt ranges are
version-specific. There is no option to bypass that check. Do not add the
package, extracted driver, or firmware to Git.

`inspect_debug_memory.py` separately executes the native SRAM debug selector
and read/write wrappers in Unicorn 2.1.4, with logging and bus access stubbed.
It checks the operations-table links and records accepted/rejected selectors;
it never executes the actual bus transport. See the
[debug-memory findings](../../docs/tx-debug-memory-findings.md) for reproduction,
the BB MCU register-access boundary and the optional external BB ROM-image
loader. This analyzer also needs `research/requirements.txt`.

`inspect_dac_inputs.py` traces the native DACK source and DAC DC-correction
variant using the pinned Windows input, entirely offline.
`analyze_dac_inputs.py` summarizes the initial five derived hardware reports;
`analyze_dac_followup.py` summarizes later probes and IF decoding. See
[DAC input findings](../../docs/dac-input-findings.md) for the working finite
complex IF route, the strong complementary image, and rejected source hypotheses.

From the repository root, with a prepared pinned upstream checkout:

```sh
python3 -m venv /tmp/rtl8922-tx-analysis
/tmp/rtl8922-tx-analysis/bin/pip install capstone==5.0.9 pefile==2024.8.26
/tmp/rtl8922-tx-analysis/bin/python research/tx/inspect_tx.py \
  --driver /path/to/rtwlane711.sys \
  --firmware vendor/rtw89/firmware/rtw8922a_fw-4.bin \
  --output /tmp/rtl8922-tx-static-analysis.json
```

Omit `--firmware` to inspect only the Windows driver. The output path is
explicit, so a normal inspection need not overwrite the checked-in report.
The inspector remains entirely offline. The following probe is separate and
explicitly requires hardware authorization. No Soapy TX stream or waveform
RAM interface is implemented.

## Bounded manual experiments

`calibration_probe.py` defaults to printing a candidate setup without opening
hardware. `--run-rf-test` enables a bounded lab experiment, requires root and
a fresh `--report` path, and must run inside `run-receiver.sh` with the pinned
working modules. Inspect it before running; never invoke RF modes in CI.

The user reported antennas over the air for the recorded experiments. The
script checks that Pluto TX is already off, uses Pluto as a receiver, snapshots
its settings and the RTL write set before probe writes, holds the Soapy card
lock, stops TX, restores settings in `finally`, and the wrapper unloads modules.
RF gain codes have no calibrated dBm mapping. Tests stay on 2442/2447 MHz.
Read the current demo status first. The user stopped the demo; leave it stopped.
Do not overwrite the original working driver or load a second receiver.

On beastmode, the existing paths used for the measurements were:

```sh
sudo systemctl is-active rtl8922-live-demo.service
# Must be inactive; also check http://127.0.0.1:8732/status when available.
sudo timeout --signal=TERM --kill-after=15s 100s env \
  OPENBLAS_NUM_THREADS=1 \
  RTL8922_DRIVER_DIR=/home/plaing/rtl8922-iq-research/la-driver \
  RTL8922_FIRMWARE=/home/plaing/rtl8922-sdr/vendor/rtw89/firmware/rtw8922a_fw-4.bin \
  RTL8922_IW=/home/plaing/rtl8922-iq-research/iw-local/sbin/iw \
  bash /home/plaing/rtl8922-sdr/run-receiver.sh \
  /home/plaing/rtl8922-iq-research/pluto-venv/bin/python \
  /home/plaing/rtl8922-sdr/research/tx/calibration_probe.py \
  --run-rf-test --source lo --path 1 --rx-rate 20000000 \
  --report /tmp/rtl8922-lo-fresh-report.json
```

Manual modes:

| Options | Experiment / limit |
|---|---|
| `--source lo` | Actual RTL8922A LO-test callback, 2442 → 2447 → 2442 MHz; carrier only |
| `--source calibration --capture-dac` | Tone indices 1/2/3/1 and internal TX-DAC tap; use `--verify-tone` for full RF qualification |
| `--probe-iqc --capture-dac` | Static correction settings with the calibration tone; partial matrix, not complex multiplication |
| `--source lo --probe-lok` | Six coarse I/Q LO-offset settings with the manual RFDF gate |
| Previous row plus `--disable-lo-injection` | Leakage from the offset controls; no direct LO test injection |
| `--source lo --probe-lok-stream --rx-rate 4000000` | One-buffer coherent RF-axis experiment; exploratory fit, never a qualification result |
| `--rf-mode-gain 15` | Additional manual RF0 gain-field hypothesis; no RF tone established |
| `--verify-tone --source calibration --path 1 --gain-code 8 --rx-rate 4000000` | Repeated selector/off checks; digital RF tones passed with the corrected AFE mask |
| `--probe-dds --capture-dac --source calibration` | Live positive/negative frequency writes, zero input and gate/stop hypotheses |
| `--probe-fsk --source calibration --rx-rate 4000000` | Bounded 50-symbol/s sync/payload experiment; recorded trials failed full qualification |
| Previous row with `--rx-rate 2000000 --tx-pad-code 2` | Smaller Pluto buffer and separate RF11 gain-field hypothesis; still failed |
| `--probe-lok --source calibration --capture-dac` | Analog offsets with AFE enabled and the digital source zeroed |
| `--probe-lok-stream --source calibration --rx-rate 4000000` | Digital pilot, analog offset matrix, training/held-out prediction; failed |
| `--probe-tpg --capture-dac --path 1` | Standby DAC-tap TPG/source subsets; tested cases stayed zero |
| `--probe-dac-input --capture-dac --path 1` | All 64 ITQT codes and native DACK source settings; independent I/Q tone attenuation measured |
| `--probe-iq-envelope --capture-dac --path 1` | Signed IQC with Q muted; proposed complex-envelope composition failed |
| `--probe-tone-phase --capture-dac --path 1` | Adjacent phase/source hypotheses; no phase/DC input demonstrated |
| `--probe-dadck --path 1 --gain-code 8 --rx-rate 4000000` | Native DAC correction bytes, one RF buffer and unseen held-out I/Q settings; failed validation |
| `--probe-dadck-reference --path 1 --gain-code 8 --rx-rate 4000000` | Continuous DDS pilot plus native DAC correction bytes; `--dadck-range full` tests the seven-bit codebook; failed RF-axis validation |
| `--probe-dds-dc --capture-dac --path 1` | Multi-rate debug sweep; apparent constants are not proof of full DAC DC |
| `--probe-iq-samples --capture-dac --path 1 [--iq-json file]` | DDS640, up to 32 signed pairs in `[-1024,1024]`, nominal 2,000 host writes/s; selected debug phase only, RF failed |
| `--probe-dac-phases --capture-dac --path 1` | Standby packed-phase and native DACK clock alternative; disproves the constant first-phase inference |
| `--native-dac-clock4` | Explicit alternate clock setting, limited to PATH1 tone verification or signed-I/Q probes; no qualified rate |
| `--probe-dif5 --capture-dac --path 1` | Standby unknown `0x8030` word tests; no signed data input found |
| `--probe-iq-if --capture-dac --path 1 --gain-code 8 --rx-rate 4000000 [--iq-json file]` | Finite complex IF levels at nominal +250 kHz, 40-ms holds, strong −250 kHz image; independent RF decoding passed |

`--path 0/1` selects the chain; `--gain-code 0/8/15` selects the calibration
TXAGC hypothesis. The LA source value 4 follows the public HALBB TX-DAC enum;
record frequency is reported in cycles per record, without assuming a DAC
sample clock or physical converter resolution. The analog-offset probe uses
`lok_modulation.py`; it does not upload DAC samples, assumes an exploratory
frequency-drift model, and reports its error rather than declaring a pass.
The multi-buffer predecessor failed phase continuity; the single-buffer retry
also failed modulation qualification. See the findings for every report.

The initial AFE force mask was wrong (`0x11` instead of `0x10`); old missing-RF
observations do not test complete routing. The corrected recipe now produces
measured digital RF tones. `tone_validation.py` implements the motion/off
checks, `dds_probe.py` checks live controls, and `fsk_probe.py` schedules a
fixed 1.8-second burst and decodes its held-out payload. No raw samples are
saved. `--tx-pad-code 0/1/2` selects an additional uncalibrated RF11 field,
distinct from `--gain-code`; default zero preserves the original recipe.
These remain explicit research tools, with no Soapy TX interface.

## Finite complex IF waveform

`--probe-iq-if --iq-json /tmp/my-iq.json` accepts a JSON list of 1–16 signed
integer `[I,Q]` pairs, each component in `[-512,512]`. Use the bounded launcher
above with `--source calibration --path 1 --gain-code 8 --rx-rate 4000000
--capture-dac --probe-iq-if` and a fresh report. The complete scheduled sequence
lasts at most 1.72 seconds and always includes known training/reference symbols.
Each unknown value is held 40 ms. It is a finite waveform test, with neither
hardware-clocked replay nor a continuous host stream.

`iq_if_probe.py` maps the requested complex envelope into the manual IQC
fields while DDS1 keeps running. Desired and complementary envelopes appear
around nominal +250/−250 kHz. The lower image is strong; `(0,0)` only zeroes
the desired envelope and **does not stop RF**. The normal stop path zeros the
DDS and restores RF controls.

`decode_iq_if.py` reconstructs unknown levels using both images. Known
references determine their ratio; surviving signed-axis training determines
the affine I/Q calibration. Every unknown value requires at least 32 clean
decimated points. Training erasures are reported, not silently interpolated
as unknown samples. See [the measured results](../../docs/dac-input-findings.md).

Full RF buffers stay in memory. For offline investigation only, explicitly
set `RTL8922_PRIVATE_IQ_RF_TRACE` to a fresh `/tmp/*.npz` path. This retains
decimated two-image envelopes with private permissions; do not add them to
Git. Offline reproduction needs that private file and the small hardware
report:

```sh
python3 research/tx/decode_iq_if.py \
  --trace /tmp/private-if-trace.npz \
  --source-report /tmp/fresh-if-hardware-report.json \
  --output /tmp/fresh-if-decoded-report.json
python3 research/tx/analyze_dac_followup.py \
  --reports output --output /tmp/fresh-dac-if-summary.json
```

Hardware-free fault-injection checks cover snapshot-before-write, rejecting an
active TX chain, continuing restoration after an I/O error, restoring LO
coefficients before releasing their gate, and rejecting unsaved writes:

```sh
python3 -m unittest discover -s research/tx -p 'test_*.py' -v
```

The offline tests also exercise motion/off/clipping rejection and the
FSK decoder with synthetic data and a strong unmodulated negative control.
NumPy and Unicorn are required for the analysis tests; no test imports a hardware client.
The IF tests cover common phase drift, IQ imbalance, a circular waveform,
stationary-signal rejection, known training erasures, and proving that changed
unknown labels cannot alter alignment, fitted parameters or reconstructed I/Q.

## BBMCU FM audio

`bb_fm_audio.py` prepares a known mono FM payload; `bb_fm_speech_source.py`
synthesizes the test phrase. `bb_fm_probe.py` is the explicit bounded hardware
runner for isolated `research/firmware/bb_fm_patch.py` firmware. It streams two
IRAM buffers and returns to normal firmware every eight blocks.
`bb_fm_demod.py` recovers Pluto audio offline; `analyze_bb_fm.py` checks saved
repeat evidence. See [results and reproduction](../../docs/bb-fm-findings.md)
for the handoff pauses, optional receiver impulse blanking, and scope.

The subsequent `bb_fm_continuous_probe.py` uses independent continuous firmware
and `bb_fm_live_source.py` for bounded ICY/SHOUTcast-compatible URL ingestion.
`analyze_bb_fm_continuity.py` measures raw RF holds without repair, and
`analyze_bb_fm_continuous.py` aggregates the saved evidence. See
[continuous results](../../docs/bb-fm-continuous-findings.md) for the native timer
service, live-radio commands, and duration/clock-drift limits.
