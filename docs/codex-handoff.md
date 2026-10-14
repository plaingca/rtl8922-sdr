# Codex handoff: direct execution on beastmode

> Historical migration handoff from 2026-10-12. Paths, visibility, live-service
> observations and qualification below describe that date. For installation
> and current capabilities, use [getting started](getting-started.md),
> [capabilities](capabilities.md) and the root validation summary. Refresh live
> state before taking hardware; this document does not authorize a restart.

Use `/home/plaing/rtl8922-sdr` as the project working directory. Repository:
`git@github.com:plaingca/rtl8922-sdr.git` (private). Read AGENTS.md, README.md,
synthesizer-findings.md, validation-summary.json and docs/migration-validation.md.

The independent source checkout is ready and builds locally on beastmode.
Driver source is in ignored vendor/rtw89, pinned and patched by driver/prepare.sh.
The working patch exactly matches the original driver. Kernel modules built
against 6.8.0-124-generic; plugin and live bridge built in build/. Build against
the intended application's SoapySDR ABI: /usr and /usr/local differ on this host.
Direct GitHub SSH authentication on beastmode was not verified; its initial
checkout was transferred with a Git bundle from the authenticated Windows host.
Do not copy credentials or private keys from Windows.

## Existing live system

The live demo still runs from `/home/plaing/rtl8922-iq-research/soapy`, managed
by transient service `rtl8922-live-demo.service`. The original working kernel
tree is `/home/plaing/rtl8922-iq-research/la-driver`; original source baseline
and firmware are in sibling rtw89/. The virtualenv with Pluto dependencies is
`/home/plaing/rtl8922-iq-research/pluto-venv/bin/python` and known 6-GHz-capable
iw is `/home/plaing/rtl8922-iq-research/iw-local/sbin/iw`.

Read current status via `curl -fsS http://127.0.0.1:8732/api/frame`.
Stop using POST /api/stop with JSON `{}`, then wait for the systemd service
to become inactive and wrapper cleanup to finish before taking the card.
Never run two hardware receivers together. Remote UI reaches Windows through
an existing loopback SSH tunnel; retain the same port when migrating runtime.

Latest handoff observation (2026-10-12; refresh before acting): service active,
20 MS/s at 2312 MHz, ~16.47 billion samples, 2 reported errors and 1 recovery.
Pluto tone disabled with saved-state restoration reported true. This is
additional evidence that long runs can recover with a capture gap; it is not
indefinite gapless qualification.

## Research status and priorities

User wants full practical tuning across S/C bands, faster extraction toward
320 MB/s, continuous 80/160 MS/s if achievable, and eventually raw-I/Q TX.
Known requested-center windows are 2312–2382,2412–2484,2500–2515,4900–7115 MHz.
Actual RF reference qualification ends at 6 GHz. Free-tuning mode uses native
20 MS/s with filtered outputs down to 1.25 MS/s. Coarse retunes produce gaps.

Most recent work traced Windows LCK, calibration-cache selection and RF-write
arbitration. 64 valid LCK/VCO trials plus 12 valid Windows-arbitration divider
trials added no range. RF25/26 and C6/C7 look like dividers but writes do not
stick, including the corrected direct-HWSI experiment. Two initial arbitration
reports used wrong BB addresses and are explicitly invalid. Do not reuse them
as negative evidence. BB-relative registers require +0x20000 in debugfs.

Next PLL lead is the channel-to-divider sequencer/manual gate. Coefficient
cache reload is not a divider API. Firmware work to date includes a limited
symbol/log search; the RF sequencer implementation remains unresolved. Vendor
binary images and raw data are outside Git under the original research root.
The archive keeps scripts/disassembly notes, often with historical paths.

Pluto is ip:192.168.2.1, extended approximately 70–6000 MHz. TX antennas were
attached; Realtek RX antennas may be absent. Save fresh radio state per test,
use bounded TX and finally restoration, require correct reference movement
at both tone offsets. Strong fixed/spurious peaks do not qualify reception.
Check TX powerdown after IIO transport failures: an earlier broken connection
left TX enabled despite attempted cleanup, and it was explicitly muted.

The new portable launcher compiles/syntax-checks but has not yet been run
against hardware. An initial task should verify this context and prepare a
concrete next experiment or runtime migration before interrupting the demo.
Do not automatically launch unrelated long-running RF tests just from handoff.
Do not restart the radio-scanner or other services. Check disk capacity before
large captures: root was ~99% full with ~24 GiB free at migration.
