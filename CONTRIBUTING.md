# Contributing

Start with [getting started](docs/getting-started.md) and the
[capability limits](docs/capabilities.md). This is experimental Linux research
software for RTL8922AE, with one demonstrated receive path. Qualification is
specific to the documented hardware, mode and duration.

## Before a pull request

```sh
python3 -m venv .venv
.venv/bin/python -m pip install -r research/requirements.txt
make doctor PYTHON=.venv/bin/python
make check check-research check-distribution PYTHON=.venv/bin/python
make tx-compiler
```

The checks do not open a radio. Some research tests need private firmware/ROM
inputs or the optional LoRa modem and explicitly skip without them. Describe
those skips in your PR. For C++ changes, also build the receiver with CMake as
described in the setup guide. CI never runs historical scripts or RF probes.

Keep the working driver pin and its patch separate from experimental profiles;
experimental patches are alternative snapshots. Preserve upstream notices.
Explain the change, the checks you ran and any effect on existing qualifications.
New RF claims need bounded measured evidence, reference-tone movement where
applicable, and clear distinction between transport counters and signal fidelity.

## Hardware and reports

RF tests are explicit manual lab work. Check ownership of the card and demo
before starting. Save fresh radio settings, bound the duration and stop TX and
restore settings in `finally`. Do not interrupt networking or another service.
Do not automatically restart a stopped demo. Follow your local radio rules.

Commit small analysis reports and synthetic fixtures. Exclude raw captures,
decoded packet contents, SSIDs, device addresses, credentials, vendor packages,
firmware/ROM images and build outputs. Screen screenshots and embedded media
too. Use example hostnames/paths in new documentation. Historical lab reports
retain their original provenance and may mention the original machine.

Run `make check-distribution` after staging new files. This checks the Git-tracked
file set; ignored local files are not part of the distribution. Before publishing
new history, also run [Gitleaks](https://github.com/gitleaks/gitleaks):

```sh
gitleaks git . --log-opts=--all --redact
```

`check-distribution` is not a secret scanner. If a credential was committed,
rotate it and follow [the private reporting process](SECURITY.md).

Code contributions are under GPL-2.0-only, subject to existing upstream notices.
See [NOTICE](NOTICE.md) for the separate treatment of research excerpts and media.
