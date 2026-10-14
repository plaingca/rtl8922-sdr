# The RTL8922 Spectrum Spectacular

[Watch the trailer (MP4)](rtl8922-spectrum-spectacular.mp4) ·
[WebM](rtl8922-spectrum-spectacular.webm) ·
[Subtitles](rtl8922-spectrum-spectacular.srt) ·
[Timeline, transcript and asset hashes](rtl8922-spectrum-spectacular.json)

A 69-second, 1280 × 720, 30 fps H.264/AAC celebration of making a Wi-Fi card
do a very different job. Actual received spectrum, an enthusiastic synthetic
announcer, original procedural synth music, and the traditional dealership
starburst. No stock RF footage or invented waterfall traces.

The video includes a passive browser recording from 2026-10-14 at 5250 MHz,
160 MS/s, with Pluto TX off. The receiver had already recovered from an
overflow; its displayed gap/restart counters are retained. `live-demo.png` is
a still from that session. The temporary browser recording is not required
for the offline still-image version of the render.

The remaining pictures are preserved analysis figures:

| Scene | Evidence | Meaning |
| --- | --- | --- |
| 80 / 160 MS/s | [Application trials](../highrate-reception.md) | Bounded 60-second CF32 tests; the continuous demo separately passed 180 seconds. |
| Live waterfall | [UI still](live-demo.png) | Real passive I/Q at 160 MS/s. 240 FFT/s is the processing target; browser redraws are limited by screen refresh. |
| Wide Wi-Fi 6 burst | [Full figure](../../output/wifi-decode/he160-wide-packet.png), [headers](../../output/wifi-decode/he160-eight-sections.json) | Identical CRC-checked PHY headers in all eight 20 MHz sections of one 160 MHz HE-SU transmission. Two-stream payload / MAC FCS not decoded. |
| Beacon decode | [Constellation and FCS](../../output/wifi-decode/decoded-beacon.png), [decode](../../output/wifi-decode/ch5220.json) | 441-byte legacy OFDM beacon recovered from a 20 MHz channel extracted from 160 MS/s I/Q; independent FCS `a232c556`. |
| Band tour | [Full survey](../../output/full-band-survey/rtl8922-full-span-survey.png), [manifest](../../output/full-band-survey/manifest.json) | Sequential 20 MS/s tiles across 2.4 / 5 / 6 GHz, not simultaneous reception of all bands. RF fidelity above 6 GHz remains unqualified. |
| Overflow recovery | [Bounded recovery check](../../output/rtl8922-demo-overflow-recovery-summary-20261014.json) | Forced overflow, complete teardown, reload, and resumption at 5350 MHz. Gaps remain counted. Manual stop stays stopped. |

This is one experimental receive path with firmware held. Ordinary retunes
pause capture without reloading the driver. Fault recovery reloads the isolated
driver. Indefinite sample continuity, full-band EVM and sensitivity remain
unqualified. The trailer is not a claim of arbitrary-I/Q transmit capability;
the browser's transmitter controls use a separate ADALM-Pluto.

## Rebuild without hardware

Install NumPy, Pillow, FFmpeg with libx264/AAC, the eSpeak NG shared library
and DejaVu fonts. On Debian/Ubuntu the native packages are `ffmpeg`,
`libespeak-ng1` and `fonts-dejavu-core`. Then, from the repository root:

```sh
python3 tools/render-demo-video.py
```

The renderer never opens a radio, browser, network connection or transmitter.
It uses the committed still as a fallback for the live-waterfall scene. To use
an existing passive browser recording, pass `--browser-video /path/to/video.webm`.
The supplied edition uses that option; its manifest records the source hash.
Intermediate audio and review frames go to ignored `build-media/`. Output goes
to this directory. The movie uses no remotely hosted media at playback time.
`index.html` is a local player with both formats and English WebVTT captions;
serve this directory over HTTP to load its caption track. Create the WebM
fallback after rendering with:

```sh
ffmpeg -i docs/media/rtl8922-spectrum-spectacular.mp4 \
  -c:v libvpx-vp9 -crf 33 -b:v 0 -cpu-used 4 -row-mt 1 -threads 4 \
  -c:a libopus -b:a 96k docs/media/rtl8922-spectrum-spectacular.webm
```

All RF figures and browser footage come from this project. Music and effects
are synthesized by the renderer. The announcer uses local eSpeak NG's
`en-us+m3` voice; no downloaded voice model or commercial music is included.
The repository license covers the original script and creative media.
