# BBMCU runtime NCO control — October 12 local / October 13 UTC, 2026

**Follow-up:** [FM audio findings](bb-fm-findings.md) resolves the fast-pattern
receiver failure and demonstrates finite host-fed speech. The limitations and
failed-pattern results below describe the earlier experiment.

**A finite BBMCU register loop now produces fractional RF tones.** An isolated
640-byte patch intercepts one otherwise unsupported mailbox command after normal
startup. It writes the RTL8922A calibration NCO at BB-local `0xa000802c` and
returns to the original task after a bounded count. Rapid alternation between
indices 1 and 2 produces intermediate frequencies over the air. Continuous
host-fed streaming, arbitrary I/Q and clean fast data modulation remain unproved.

The [offline summary](../output/rtl8922-bb-dds-analysis.json) hashes its input
reports. The original working driver and pinned firmware were unchanged.
Experiments used PATH1 at 2442 MHz, calibration gain code 8, and receive-only
Pluto at 2441 MHz / 4 MS/s. No RF output-power calibration is implied.

## Runtime entry and register mapping

The existing `BackupRestore` task calls dispatcher `0x1001280a`. The patch
replaces its first two compressed instructions with one four-byte jump into
verified padding at `0x10016400`. Command `0x3fe`, accompanied by magic
`0x44445331`, takes the experimental branch. All other calls reproduce the
displaced stack/prologue instructions and resume at `0x1001280e`.

The existing WCPU-to-BB mailbox supplies three words. The host uses the working
driver's MMIO debug interface to send the command and doorbell; the BB task
performs the loop without a host transaction per sample. Results and a sequence
counter appear at local `0x10017b00`, in the already verified host-readable IRAM
window at `0x1863fb00`. No arbitrary-PC debug interface or runtime code overwrite
was required. The firmware file is patched before its temporary boot.

The firmware's own register restore routine supplied the `0xa0000000` peripheral
base. A read-only custom command then matched three host reads exactly:
relative BB `0x802c`, `0x8008` and `0x8088`. This establishes those tested aliases,
not a universal memory map or access to shared packet RAM.

The first runtime attempt completed its read-only command, but the host refused
the next command because the custom branch left the mailbox header's ownership
bit set. The corrected host helper releases that bit only after observing its
matching completed command. Both [attempt A](../output/rtl8922-bb-dds-runtime-a.json)
and [successful B](../output/rtl8922-bb-dds-runtime-b.json) are retained.

## Finite synthesis algorithm and throughput

Mode 2 uses a 16-bit fractional accumulator:

```text
accumulator += fraction
index = 1 + (accumulator >> 16)
accumulator &= 65535
write NCO = preserved_upper_fields | index
```

At the measured index spacing, the predicted mean frequency is
`250 kHz * (1 + fraction / 65536)`. This is frequency-word dithering around the
existing hardware DDS. It does not upload I/Q samples or provide a direct phase
register. The finite loop zeros the NCO after its final update; host cleanup
also stops TX and restores the pre-test register/settings snapshots.

The RF-off same-word benchmark completed 262,144 writes inside a 25.636-ms
host timing bracket: **at least 10.226 million loop writes/s**. The finite
fractional RF commands gave lower bounds of **10.181–10.622 million writes/s**.
These brackets include mailbox notification, polling and result reads, but
exclude argument preparation. They are not a measurement of CPU clock, individual
bus-write latency, DAC sample rate, or every update's RF timing. Interrupts remain
enabled; neither zero jitter nor a 160-MHz MCU clock is claimed.

## Independent RF observations

Each capture begins with index 1, executes a finite fractional command, then
stops TX. A fixed-band FFT tracker identifies stable frequency plateaus without
using the requested fraction. The offline summary selects the longest early
pilot and later plateau using fixed time regions, then compares their frequency
difference with the prediction. FFT-bin spacing is 976.5625 Hz.

| Fraction numerator / 65536 | Predicted shift from index 1 | Observed shift |
|---:|---:|---:|
| 10000 | 38,146.97 Hz | 38,085.94 Hz |
| 12345 | 47,092.44 Hz | 47,851.56 Hz |
| 16384 | 62,500 Hz | 62,500 Hz |
| 32768 | 125,000 Hz | 125,000 Hz, three runs |
| 40000 | 152,587.89 Hz | 152,343.75 Hz |
| 49152 | 187,500 Hz | 187,500 Hz |

All eight nonzero-fraction observations are within one FFT bin of their
predicted relative shift. Accepted plateaus last approximately 8–25 ms and
exceed their in-band spectral median by at least 20 dB. The repeated half-index
result spans both patch versions. Static 1→2→3→1 tone controls accompany every
RF run. Evidence: [A](../output/rtl8922-bb-dds-rf-a.json),
[B](../output/rtl8922-bb-dds-rf-b.json), [C](../output/rtl8922-bb-dds-rf-c.json).

This establishes finite fractional-frequency synthesis and repeatable requested
frequency motion. It does not qualify spectral purity, spurs, phase noise,
instantaneous EVM, arbitrary payload recovery, or nominal 3.8-Hz tuning resolution
suggested by the accumulator arithmetic. Raw RF samples stayed in memory.

## Fast frequency-pattern decoding did not pass

Mode 3 repeats a known 32-bit selector pattern using indices 1 and 3. A receiver
fits rate/phase and discriminator calibration on 10 ms, then scores a separate
10-ms interval and a fixed wrong-pattern control.

The first delayed pattern, with 255 delay iterations, ended before the held-out
window. A second firmware version increased the allowed delay to 1023 while
retaining the 16,384-update delayed-count bound. Its command lasted about 54 ms,
but the held-out decode still failed: correlation approximately 0.003 and
signal/error approximately −31 dB. The fitted 305-kupdate/s value is therefore
**not** a qualified RF timing result. Both failures are preserved. No claim of
reliable fast FSK, PSK, QAM or chirp fidelity follows from the successful mean
frequency measurements.

## Bounds, cleanup and validation

- Maximum undelayed count: 262,144. Maximum delayed count: 16,384, with
  0–1023 delay-loop iterations per update. The newest patch rejects reserved
  configuration bits and invalid counts before writing the NCO.
- Scratch writes are restricted to the patch's stack and result area. All
  touched CPU registers are preserved. Non-NCO bits of `0x802c` are preserved.
- The unchanged original modules load only isolated `/tmp` firmware, under the
  existing 45-second manual launcher. Each experiment unloads modules and removes
  temporary firmware/NM files. No raw firmware, ROM or capture is committed.
- RF run A observed an RF0 gain-field readback difference in RX mode during
  restoration; runs B/C had no RTL register mismatches. Run B's Pluto RX gain
  changed after restoring automatic gain mode. These discrepancies remain in
  the reports, rather than being hidden by a blanket restoration claim.
- The [fresh final check](../output/rtl8922-bb-dds-final-state.json) found Pluto
  TX off and all settings matching the last fresh snapshot, card unbound,
  working modules unloaded, temporary files absent, stopped demo inactive and
  no new firmware fault/SER/HWSI/checksum/security-failure log lines.
- The working patch and original firmware retain their pinned SHA-256 hashes.

Offline checks passed: 39 firmware tests and 48 TX tests. New Unicorn cases check the actual generated instructions,
normal-call preservation, write bounds, fractional sequences, final zeroing,
invalid requests and integrity records. Synthetic RF checks include frequency
tracking, noise/clipping rejection and held-out timing with a static-tone
negative control. None of these tests accesses hardware.

## Reproduction

The builder and summarizer are offline. Use an environment with Capstone,
Unicorn and NumPy; the hardware runner uses the existing Pluto environment.

```sh
python3 research/firmware/bb_dds_patch.py \
  --firmware vendor/rtw89/firmware/rtw8922a_fw-4.bin \
  --output-firmware /tmp/rtl8922-bb-dds-fresh.bin \
  --report /tmp/rtl8922-bb-dds-fresh-patch.json
python3 research/tx/analyze_bb_dds.py --reports output \
  --output /tmp/rtl8922-bb-dds-analysis.json
python3 -m unittest discover -s research/firmware -p 'test_*.py'
python3 -m unittest discover -s research/tx -p 'test_*.py'
```

Manual hardware execution must first verify the demo/card ownership and use
`research/firmware/run_bb_rom_test.sh` under its documented 45-second outer
timeout, with the existing working module directory. Set `RTL8922_FIRMWARE` to
the isolated generated file. Run `research/tx/bb_dds_probe.py --execute` first;
RF is a separate explicit `research/tx/bb_dds_rf_probe.py --run-rf-test` action.
Both require `--patch-report` and a fresh `--report`. Optional `--fractions`
accepts up to five bounded numerators; `--pattern` includes the still-unqualified
pattern test. Never add these hardware modes to CI or restart the stopped demo.

The next useful step is to measure phase evolution and sidebands of finite
fractional bursts, then diagnose the failed frequency-pattern decoder. A
host-fed ring and persistent service need separate ownership, underrun and
watchdog work. The present implementation deliberately completes and returns.
