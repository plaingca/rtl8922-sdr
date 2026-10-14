# 160 MS/s: Classic MLG montage

[Watch the classic MLG cut (MP4)](rtl8922-classic-mlg-160msps.mp4) ·
[WebM](rtl8922-classic-mlg-160msps.webm) ·
[Captions](rtl8922-classic-mlg-160msps.srt) ·
[Timeline and hashes](rtl8922-classic-mlg-160msps.json) ·
[Sound / graphic credits](classic-assets/SOURCES.md)

The featured edit is 50 seconds at 1280 × 720 / 30 fps, centered on **160
million complex samples per second** and **eight valid PHY-header CRCs**
across one 160 MHz Wi-Fi 6 burst. Actual meme recordings replace all TTS.
Original hitmarkers, airhorns, gamer reactions and short classic Skrillex /
Darude stings join the user-supplied Suno song. Camera punches, quickscopes,
spinning Dew cans / Doritos bags, sunglasses and hitmarker barrages are
intentionally excessive. The 160 reveal adds a brief score choke, a huge
number slam, RGB splits, neon tunnels, camera shake and six spinning props.
There is no overflow/recovery scene in this cut.

Zoom punches and hitmarkers follow measured bass transients in the edited
music, including the classic drop stings. The renderer detects positive
35–180 Hz spectral flux with a 5 ms analysis hop, then snaps shared picture
and sound events to the nearest 30 fps frame. The previous fixed BPM pulse
is removed. Eight detected bass hits between 20 and 23 seconds drive the
eight header-check scopes and sounds; all other hitmarkers are decorative.
Exact detected times, frame times and strengths are in the movie's JSON.

The evidence qualifiers remain stationary below the effects. The waterfall
and packet figures are real project evidence; zooms and overlays do not alter
the underlying I/Q. The eight labeled header checks are timed to eight real
hitmarker sounds. The two-stream HE payload
was **not** decoded; the separately shown 441-byte legacy beacon was, with
independently matching FCS `a232c556`. The three-band survey is sequential,
and RF fidelity above 6 GHz remains unqualified. Reception is experimental,
with one receive path and firmware held. Indefinite continuity and full-band
EVM / sensitivity remain unqualified.

## Rebuild the featured edit without hardware

Install NumPy, Pillow, FFmpeg with libx264 / VP9 / AAC / Opus and DejaVu fonts:

```sh
python3 tools/render-classic-mlg.py
```

The renderer uses committed still figures and short `.ogg` excerpts. It
validates their hashes and never opens the network, a radio, a speech model
or a transmitter. An existing passive browser recording can replace the
receiver still with `--browser-video /path/to/recording.webm`; the shipped cut
uses source seconds 4–12 of the earlier 2026-10-14 passive recording. Without
that optional input, the receiver scenes use the committed still. Use
`--review-only` to produce a contact sheet without encoding a movie.

Both MP4 and WebM, a poster, English captions and a provenance JSON are
written to this directory; intermediates remain in ignored `build-media/`.
The main music is edited to the reveal / header-check / finale beats, reduced
under real vocal clips, and nearly muted under the classic music stings.
Excerpt stems receive bass boost and saturation before a separate two-pass
master targeting -12 LUFS / -2 dBTP. This intentionally distorted sound does
not depend on uncontrolled final sample clipping. Third-party recordings and
logos retain their owners' rights; see the detailed source manifest and credits.

`index.html` features this edit with both formats and a caption track; serve
this directory over HTTP to load captions. Older edits below remain available
for comparison. Their neural announcer is absent from the featured cut.

---

# Previous Suno / neural-announcer edition

[Watch the Suno edition (MP4)](rtl8922-suno-montage.mp4) ·
[WebM](rtl8922-suno-montage.webm) ·
[Subtitles](rtl8922-suno-montage.srt) ·
[Timeline, transcript and asset hashes](rtl8922-suno-montage.json)

[Compare the original salesman trailer](rtl8922-spectrum-spectacular.mp4).
[The previous MLG edit with procedural music](rtl8922-mlg-montage.mp4) also remains available.

A 1280 × 720, 30 fps MLG montage parody of making a Wi-Fi card do a very
different job. Actual received spectrum, an expressive neural salesman, falling
pixel sunglasses, a spinning triple-band caption and an eight-hit CRC combo.
This previous edition uses the supplied Suno dubstep track, *Announcer breaks
the sound*, cut to the 83.87-second picture. The old procedural music and
airhorns are removed, while the eight original CRC hitmarker clicks remain.
The measurement captions remain stationary and
readable beneath the effects. No stock RF footage or invented waterfall traces.

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

To rebuild the previous score and remux both formats from the committed MLG
picture streams, install NumPy and FFmpeg, then run:

```sh
python3 tools/remix-demo-music.py
```

This preserves the encoded picture streams, edits the supplied song using
[`music/suno-edit.json`](music/suno-edit.json), reconstructs the announcer from
the committed voice stems and adds the timed CRC clicks. Music is reduced by
8 dB under narration with smooth attack/release, with a small midrange cut to
leave speech space. The final mix is mastered toward -16 LUFS with a -1.5 dBTP
master ceiling. The source MP3 keeps the supplied compressed audio without
re-encoding; embedded metadata and artwork have been removed. Its hash and the
uploaded file's hash are recorded in the edit plan.

To rebuild the preceding picture/montage edition from its source figures:

Install NumPy, Pillow, FFmpeg with libx264/AAC/Opus and DejaVu fonts. On
Debian/Ubuntu the native packages are `ffmpeg` and `fonts-dejavu-core`.
Then, from the repository root:

```sh
python3 tools/render-demo-video.py
```

The renderer decodes the committed compressed voice stems; no speech model or
API key is needed. It never opens a radio, browser, network connection or transmitter.
It uses the committed still as a fallback for the live-waterfall scene. To use
an existing passive browser recording, pass `--browser-video /path/to/video.webm`.
The supplied edition uses that option; its manifest records the source hash.
Intermediate audio and review frames go to ignored `build-media/`. Output goes
to this directory. The movie uses no remotely hosted media at playback time.
`index.html` is a local player with both formats and English WebVTT captions;
serve this directory over HTTP to load its caption track. Create the WebM
fallback after rendering with:

```sh
ffmpeg -i docs/media/rtl8922-mlg-montage.mp4 \
  -c:v libvpx-vp9 -crf 33 -b:v 0 -cpu-used 4 -row-mt 1 -threads 4 \
  -c:a libopus -b:a 96k docs/media/rtl8922-mlg-montage.webm
```

All RF figures and browser footage come from this project. Montage graphics,
CRC clicks and the previous procedural score were synthesized by the renderer.
The previous music is the user-supplied Suno track credited above; its source,
edit points and mix provenance are preserved separately. Original project code
remains under the repository license.

## Neural announcer

The actor is synthetic: [Qwen3-TTS-12Hz-1.7B-CustomVoice](https://huggingface.co/Qwen/Qwen3-TTS-12Hz-1.7B-CustomVoice),
using the `Ryan` preset and an exaggerated used car salesman delivery prompt.
The model is Apache-2.0 licensed; its weights are downloaded to the local
Hugging Face cache and are not included in this repository. The creative voice
stems, prompt, seed, pinned model revision and hashes are in
[`voiceover/manifest.json`](voiceover/manifest.json). The final mix uses a modest
1.12× tempo adjustment with pitch preserved, and ducks the music under speech.

To regenerate the stems, install `qwen-tts==0.1.1` in a separate environment,
following [the upstream setup instructions](https://github.com/QwenLM/Qwen3-TTS#environment-setup),
then run:

```sh
python tools/generate-demo-voiceover.py --threads 4
```

This optional step downloads the pinned model on first use and runs inference
on CPU. It never opens radio hardware or uses the shared GPU. The normal movie
render remains entirely offline. Regenerated audio can differ across library
versions or hardware; the shipped stems preserve the published performance.
