# Licensing and third-party material

The [GPL-2.0-only license](LICENSE) covers original project source and tooling.
It does not replace third-party notices or grant rights to vendor material,
music, recordings, logos or trademarks.

## Driver and firmware

The patches modify rtw89 source with upstream GPL-2.0/BSD-3-Clause notices;
retain the notices in each affected file. The upstream revision and working
patch hash are recorded in [driver/upstream.json](driver/upstream.json).
Preparation downloads upstream source and firmware separately into ignored
`vendor/` directories. Firmware is subject to upstream
`LICENCE.rtlwifi_firmware.txt`, not the project's code license. Windows driver
packages, firmware/ROM images and raw I/Q are not distributed here.

## Research archive

The archive includes selected disassembly excerpts and register traces for
interoperability research. These are derived from vendor software and are not
original GPL project code or a release of vendor source. Original vendor rights
remain applicable. The scripts record input provenance; obtain any required
vendor binaries separately. Historical reports retain lab paths and identifiers
as provenance, not portable configuration or current hardware state.

## Demo media

The repository owner has confirmed redistribution permission for the supplied
music and third-party assets in the demo. This confirmation does not extend the
GPL code license to them or grant downstream reuse rights. Follow the individual
source terms and obtain any permissions needed for your own redistribution.

[Media credits and reproduction](docs/media/README.md) and the
[classic asset sources](docs/media/classic-assets/SOURCES.md) identify the music,
recordings, graphic owners, transformations and provenance manifests. Logos and
trademarks belong to their owners; no endorsement is claimed. Generated demo
movies are omitted from GitHub source archives to keep source downloads smaller;
use a Git checkout to obtain the movies and their reproduction assets.
