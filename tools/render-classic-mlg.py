#!/usr/bin/env python3
"""Offline 160 MS/s MLG parody: actual RF figures and short credited meme clips.

Requires NumPy, Pillow, FFmpeg and DejaVu fonts. No TTS, network or radio access.
An optional browser recording replaces the committed receiver still.
"""
import argparse
import hashlib
import importlib.util
import json
import math
from pathlib import Path
import re
import shutil
import subprocess
import wave

import numpy as np
from PIL import Image, ImageChops, ImageDraw, ImageOps

ROOT = Path(__file__).resolve().parents[1]
W, H, FPS, SR, DURATION = 1280, 720, 30, 48000, 50
ASSET_DIR = ROOT / 'docs/media/classic-assets'
NAME = 'rtl8922-classic-mlg-160msps'
RESAMPLE = getattr(Image, 'Resampling', Image)
spec = importlib.util.spec_from_file_location('trailer_drawing', ROOT/'tools/render-demo-video.py')
draw_helpers = importlib.util.module_from_spec(spec)
spec.loader.exec_module(draw_helpers)
font, stamp, fit_text = draw_helpers.font, draw_helpers.stamp, draw_helpers.fit_text

SCENES = [
    (0, 3, 'WAIT. THAT IS A WI-FI CARD?', 'Experimental single-path RTL8922AE reception. Actual project figures.'),
    (3, 9, '160 MS/s', '160 million complex samples/s. Bounded 80/160 MS/s trials passed.'),
    (9, 15, 'THE WATERFALL IS COOKING', 'Recorded passive 160 MS/s. 240 FFT/s target; screen refresh limits redraws.'),
    (15, 19, 'ONE BURST. ALL 160 MHz.', 'Actual 160 MHz HE-SU transmission. PHY headers decoded; two-stream payload not decoded.'),
    (19, 27, 'HEADER CRC KILLSTREAK', 'Same PHY header CRC passes in eight 20 MHz sections. Two-stream payload not decoded.'),
    (27, 32, 'THE RECEIPTS: 441 BYTES', 'Legacy 20 MHz OFDM beacon from 160 MS/s I/Q. Independently checked FCS: a232c556.'),
    (32, 35, '2.4 / 5 / 6 GHz', 'Sequential survey tiles. RF fidelity above 6 GHz remains unqualified.'),
    (35, 45, '160,000,000', 'Complex samples per second. One RX path; firmware held. Full-band EVM/sensitivity unqualified.'),
    (45, 50, 'DEAL WITH THE BANDWIDTH', 'Experimental RX. Indefinite continuity unqualified. HE two-stream payload not decoded.'),
]
# Event time is also used by the picture: one real hitmarker per header CRC.
EVENTS = [
    (0.15, 'mom', '[Meme clip: Mom, get the camera!]'),
    (3.05, 'airhorn', '[Airhorn]'),
    (3.8, 'damn-son', "Damn son, where'd you find this?"),
    (6.5, 'scary', '[Skrillex: Scary Monsters and Nice Sprites — brief drop]'),
    (9.8, 'oh-my-god', '[Excited gamer reaction]'),
    (15.1, 'sniper', '[Sniper shot]'),
    (15.6, 'get-noscoped', '[Meme clip: Get noscoped!]'),
    (21.0, 'triple', 'Oh baby, a triple! Oh yeah!'),
    (25.0, 'wombo', '[Tournament commentary: Wombo combo!]'),
    (27.3, 'wow', 'Wow!'),
    (32.05, 'triple', 'Oh baby, a triple!'),
    (35.3, 'airhorn', '[Airhorn]'),
    (36.8, 'bangarang', '[Skrillex: Bangarang — brief drop]'),
    (40.0, 'darude', '[Darude: Sandstorm — brief sting]'),
    (45.4, 'get-noscoped', '[Meme clip: Get noscoped!]'),
    (48.1, 'airhorn', '[Airhorn]'),
]
MUSIC_EDITS = [(0, 9, 24.4267), (9, 19, 40.0), (19, 27, 51.42),
               (27, 35, 82.0), (35, 45, 115.2), (45, 48, 131.7), (48, 50, 147.1)]


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def decode(ffmpeg, path, filters=None):
    cmd = [ffmpeg, '-v', 'error', '-threads', '2', '-i', str(path)]
    if filters:
        cmd += ['-af', filters]
    raw = subprocess.check_output(cmd+['-ar', str(SR), '-ac', '2', '-f', 'f32le', '-'])
    return np.frombuffer(raw, '<f4').reshape(-1, 2).copy()


def bass_timing(music):
    """Measure positive 35–180 Hz spectral flux on the edited music bus.

    Analyze before vocals/SFX so a hitmarker cannot trigger another hitmarker.
    A 5 ms analysis hop locates transients; shared audio/visual cues then snap
    to the nearest video frame. There is no assumed BPM or free-running grid.
    """
    size, hop = 2048, 240
    mono = music.mean(axis=1)
    windows = np.lib.stride_tricks.sliding_window_view(mono, size)[::hop]
    spectrum = abs(np.fft.rfft(windows*np.hanning(size), axis=1))
    frequencies = np.fft.rfftfreq(size, 1/SR)
    spectrum = spectrum[:, (frequencies >= 35) & (frequencies <= 180)]
    energy = np.sqrt(np.mean(spectrum**2, axis=1))
    flux = np.maximum(0, np.diff(spectrum, axis=0, prepend=spectrum[:1])).mean(axis=1)
    local = np.convolve(energy, np.ones(200)/200, 'same')
    score = flux/np.maximum(local, .1)
    peaks = [i for i in range(1, len(score)-1) if score[i] > score[i-1]
             and score[i] >= score[i+1] and energy[i] > .5 and score[i] > .09]
    selected = []
    for i in sorted(peaks, key=lambda x: score[x], reverse=True):
        if all(abs(i-j)*hop/SR >= .18 for j in selected):
            selected.append(i)
    candidates = [dict(detected_seconds=(i*hop+size/2)/SR,
                       time=round((i*hop+size/2)/SR*FPS)/FPS,
                       flux=float(score[i]), strength=min(1, float(score[i])/.4))
                  for i in sorted(selected)]
    header_pool = [c for c in candidates if 20.2 <= c['time'] < 23 and c['flux'] >= .2]
    if len(header_pool) < 8:
        raise ValueError('Music must contain eight distinct bass hits for the header sequence')
    headers = sorted(sorted(header_pool, key=lambda x: x['flux'], reverse=True)[:8], key=lambda x: x['time'])
    reveal = max((c for c in candidates if 3.2 < c['time'] < 3.8), key=lambda x: x['flux'])
    secondary = max((c for c in candidates if 6.5 < c['time'] < 7), key=lambda x: x['flux'])
    cues = [c for c in candidates if c['flux'] >= (.12 if 3 <= c['time'] < 9 else .22)]
    by_frame = {round(c['time']*FPS): c for c in cues+headers+[reveal, secondary]}
    return dict(method='35–180 Hz positive spectral flux; 2048-sample Hann, 240-sample hop, local energy normalization; nearest 30 fps frame',
                analyzed_bus='Edited Suno music plus classic music stings, before vocal ducking and SFX',
                cues=[by_frame[k] for k in sorted(by_frame)],
                header_hits=[c['time'] for c in headers], reveal=reveal['time'], secondary_reveal=secondary['time'])


def soundtrack(ffmpeg, work, manifest):
    count = DURATION*SR
    source = decode(ffmpeg, ROOT/'docs/media/music/announcer-breaks-the-sound.mp3',
                    'loudnorm=I=-18:TP=-3:LRA=18')
    music = np.zeros((count, 2), np.float32)
    for start, end, origin in MUSIC_EDITS:
        a, b, s = round(start*SR), round(end*SR), round(origin*SR)
        part = source[s:s+b-a]
        if len(part) != b-a:
            raise ValueError('Music edit outside supplied source')
        music[a:b] = part
        fade = min(round(.025*SR), len(part)//2)
        music[a:a+fade] *= np.linspace(0, 1, fade)[:, None]
        music[b-fade:b] *= np.linspace(1, 0, fade)[:, None]
    effects = np.zeros_like(music)
    duck = np.ones(count, np.float32)
    clips = {x['id']: x for x in manifest['clips']}
    pcm = {}
    for key, entry in clips.items():
        # Deliberately distorted, bass-boosted stems; final master has a ceiling.
        audio = decode(ffmpeg, ASSET_DIR/entry['file'], 'bass=g=14:f=100:w=0.7')
        audio /= max(.001, float(np.max(np.abs(audio))))
        pcm[key] = .7*np.tanh(audio*2.8)+.3*audio
    # Detect the actual arrangement, including the two classic dubstep stings.
    analysis_bus = music.copy()
    for start, key, _ in EVENTS:
        if clips[key]['kind'] == 'music':
            a = round(start*SR); b = min(count, a+len(pcm[key]))
            analysis_bus[a:b] = analysis_bus[a:b]*.07+pcm[key][:b-a]*.38
    sync = bass_timing(analysis_bus)
    scheduled = []
    for start, key, caption in EVENTS:
        if key == 'triple' and start == 21:
            start = sync['header_hits'][2]
        elif key == 'airhorn' and start == 3.05:
            start = sync['reveal']
        elif key == 'sniper':
            start = min((c['time'] for c in sync['cues'] if 15 <= c['time'] < 15.8), key=lambda x: abs(x-start))
        scheduled.append((start, key, caption))
    scheduled += [(t, 'hitmarker', '[Header CRC hitmarker]') for t in sync['header_hits']]
    scheduled += [(c['time'], 'hitmarker', '[Bass-synced decorative montage hitmarker]')
                  for c in sync['cues'] if 3 <= c['time'] < 49.5 and not 20.2 <= c['time'] < 23]
    events = []
    for start, key, caption in sorted(set(scheduled)):
        audio = pcm[key]
        if key == 'triple' and start == 32.05:
            audio = audio[:round(2.8*SR)]
        a, b = round(start*SR), min(count, round(start*SR)+len(audio))
        kind = clips[key]['kind']
        gain = .43 if kind == 'vocal' else (.38 if kind == 'music' else .27)
        if key == 'hitmarker' and start not in sync['header_hits']:
            gain = .17
        effects[a:b] += audio[:b-a]*gain
        if kind != 'sfx':
            left, right = max(0, a-round(.05*SR)), min(count, b+round(.12*SR))
            level = .07 if kind == 'music' else .28
            envelope = np.full(right-left, level, np.float32)
            envelope[:a-left] = np.linspace(1, level, a-left)
            envelope[b-left:] = np.linspace(level, 1, right-b)
            duck[left:right] = np.minimum(duck[left:right], envelope)
        events.append(dict(start=start, end=b/SR, clip=key, caption=caption))
    # A brief score choke makes the first measured drop/reveal hit harder.
    reveal_sample = round(sync['reveal']*SR)
    anticipation = round(.12*SR)
    music[reveal_sample-anticipation:reveal_sample] *= np.linspace(1, .025, anticipation)[:, None]
    mixed = music*duck[:, None]+effects
    mixed *= min(1, .94/float(np.max(np.abs(mixed))))
    t = np.arange(count)/SR
    mixed *= np.minimum(1, t/.015)[:, None]*np.minimum(1, (DURATION-t)/.4)[:, None]
    premaster, master = work/'premaster.wav', work/'master.wav'
    with wave.open(str(premaster), 'wb') as wav:
        wav.setnchannels(2); wav.setsampwidth(2); wav.setframerate(SR)
        wav.writeframes((mixed*32767).astype('<i2').tobytes())
    measure = subprocess.run([ffmpeg, '-v', 'info', '-i', str(premaster), '-af',
        'loudnorm=I=-12:TP=-2:LRA=12:print_format=json', '-f', 'null', '-'],
        capture_output=True, text=True, check=True)
    stats = json.loads(re.search(r'\{\s*"input_i".*?\}', measure.stderr, re.S)[0])
    settings = ('loudnorm=I=-12:TP=-2:LRA=12:linear=true:'
        f"measured_I={stats['input_i']}:measured_TP={stats['input_tp']}:"
        f"measured_LRA={stats['input_lra']}:measured_thresh={stats['input_thresh']}:"
        f"offset={stats['target_offset']}")
    subprocess.run([ffmpeg, '-y', '-v', 'error', '-i', str(premaster), '-af', settings,
                    '-ar', str(SR), '-c:a', 'pcm_s24le', str(master)], check=True)
    sync['hitmarkers'] = [x['start'] for x in events if x['clip'] == 'hitmarker']
    sync['sniper'] = next(x['start'] for x in events if x['clip'] == 'sniper')
    return master, events, stats, sync


def panel(canvas, source, zoom=1, center=(.5, .5)):
    # Crop the picture only. Evidence qualifier and HUD are drawn afterward.
    width, height = source.size
    aspect = W/570
    cw, ch = (width, width/aspect) if width/height < aspect else (height*aspect, height)
    cw, ch = cw/zoom, ch/zoom
    x = max(0, min(width-cw, width*center[0]-cw/2))
    y = max(0, min(height-ch, height*center[1]-ch/2))
    picture = source.crop((round(x), round(y), round(x+cw), round(y+ch)))
    canvas.paste(picture.resize((W, 570), RESAMPLE.BICUBIC), (0, 67))


def hitmark(d, x, y, size=28, color='white'):
    for sx, sy in ((-1, -1), (-1, 1), (1, -1), (1, 1)):
        d.line((x+sx*8, y+sy*8, x+sx*size, y+sy*size), fill='black', width=9)
        d.line((x+sx*8, y+sy*8, x+sx*size, y+sy*size), fill=color, width=4)


def product(logo, kind):
    out = Image.new('RGBA', (250, 350))
    d = ImageDraw.Draw(out)
    if kind == 'can':
        d.rounded_rectangle((38, 12, 212, 338), radius=33, fill='#83e500', outline='#eaffc0', width=6)
        d.ellipse((38, 12, 212, 52), fill='#c4cbd0', outline='white', width=4)
        d.ellipse((94, 22, 148, 42), fill='#57636d')
        d.polygon([(43, 274), (205, 88), (205, 152), (45, 336)], fill='#2a9200')
    else:
        d.polygon([(16, 18), (234, 18), (214, 334), (35, 334)], fill='#e74417', outline='#ffc42a')
        for y in (20, 30, 320, 330):
            d.line((25, y, 225, y), fill='#f9a434', width=5)
        d.polygon([(77, 248), (171, 247), (126, 302)], fill='#f8c054', outline='#ffe6a3')
    logo = ImageOps.contain(logo, (220, 180), RESAMPLE.LANCZOS)
    out.alpha_composite(logo, ((250-logo.width)//2, 95))
    return out


def frame(t, assets, live, products, sync):
    index = next(i for i, (a, b, _, _) in enumerate(SCENES) if a <= t < b)
    start, end, title, qualifier = SCENES[index]
    u = t-start
    im = Image.new('RGB', (W, H), '#050817')
    pulse = max((c['strength']*math.exp(-(t-c['time'])*18)
                 for c in sync['cues'] if 0 <= t-c['time'] < .35), default=0)
    zoom = 1+.22*pulse
    if index in (0, 1, 2, 8):
        src = live[int((u*12) % len(live))] if index == 2 and live else assets['live']
        if index == 1:
            panel(im, src, 1.25+1.2*pulse, (.5+.16*pulse*math.sin(t*13), .5))
        elif index == 2 and next(c['time'] for c in sync['cues'] if c['time'] >= 12.6) <= t < next(c['time'] for c in sync['cues'] if c['time'] >= 14):
            panel(im, src, 2.7+.9*pulse, (.14, .32))
        else:
            panel(im, src, zoom*(1.0 if index == 2 else 1.15), (.5+.07*math.sin(t*2), .5))
    elif index in (3, 4, 7):
        if index == 4 and sync['header_hits'][0] <= t < sync['header_hits'][-1]+.2:
            i = min(7, sum(t >= h for h in sync['header_hits'])-1)
            panel(im, assets['wide'], 3.4+.7*pulse, ((i+.5)/8, .5))
        elif index == 7:
            hits = sum(t >= c['time'] for c in sync['cues'])
            panel(im, assets['wide'], 1.1+1.3*pulse, (.2+.6*((hits%8)/7), .5))
        else:
            panel(im, assets['wide'], zoom)
    elif index == 5:
        panel(im, assets['beacon'], 1+.35*pulse, (.5, .53))
    else:
        panel(im, assets['survey'], 1+.13*pulse)
    # Jump cuts, camera punches, RGB edges and speed lines are decorations.
    if index in (1, 3, 4, 7, 8):
        if pulse > .6:
            area = im.crop((0, 67, W, 637))
            area = ImageOps.fit(area, (W+round(80*pulse), 570+round(36*pulse)), method=RESAMPLE.BICUBIC)
            im.paste(area, (-round(40*pulse), 67-round(18*pulse)))
        d = ImageDraw.Draw(im)
        for k in range(28):
            angle = k*math.tau/28+t*.3
            radius = 270+100*pulse
            x, y = 640+math.cos(angle)*radius, 350+math.sin(angle)*radius*.65
            d.line((x, y, x+math.cos(angle)*(55+130*pulse), y+math.sin(angle)*(45+95*pulse)),
                   fill='#00ffff' if k%2 else '#ff00cf', width=3)
    d = ImageDraw.Draw(im)
    if index == 0:
        stamp(im, 'MOM GET THE CAMERA', (640, 220), 65, '#ffe733', -7+5*math.sin(u*8))
        stamp(im, 'THAT WI-FI CARD HAS LORE', (640, 515), 44, 'white', 5)
    elif index == 1:
        if t < sync['reveal']:
            d.rectangle((0, 67, W, 637), fill='#020208')
            stamp(im, 'BANDWIDTH LOADING...', (640, 320), 66, '#ffe733', -4)
            stamp(im, 'BRACE YOUR ANTENNA', (640, 465), 42, 'white', 4)
        else:
            # Each slam comes from the measured bass cue, not a fixed BPM.
            for ring in range(7):
                radius = 60+ring*95+110*pulse
                points = [(640+math.cos(k*math.tau/8+t)*radius,
                           330+math.sin(k*math.tau/8+t)*radius*.7) for k in range(9)]
                d.line(points, fill='#00ffff' if ring%2 else '#ff00cf', width=3+round(4*pulse))
            x = 640+round(45*pulse*math.sin(t*75))
            y = 285+round(22*pulse*math.cos(t*62))
            size = round(290+170*pulse)
            for dx, color in ((-round(20*pulse), '#ff00cf'), (round(20*pulse), '#00ffff'), (0, '#ffe733')):
                d.text((x+dx, y), '160', font=font(size), anchor='mm', fill=color,
                       stroke_width=10, stroke_fill='black')
            stamp(im, 'MS/s', (640, 470), 82+round(32*pulse), 'white', 7*pulse*math.sin(t*50))
            stamp(im, 'MILLION COMPLEX SAMPLES / SECOND', (640, 580), 35, '#6eff80', -3)
            stamp(im, 'BANDWIDTH HAS LEFT THE CHAT', (640, 135), 36, '#00ffff', 5)
        if t >= sync['secondary_reveal']+.1:
            for x in (460, 650):
                for row in range(4):
                    for col in range(9-row):
                        d.rectangle((x+col*18, 345+row*16, x+col*18+18, 361+row*16), fill='black')
                d.rectangle((x+18, 351, x+60, 364), fill='white')
            d.rectangle((620, 350, 660, 367), fill='black')
    elif index == 2:
        stamp(im, '240 FFT/s TARGET', (640, 160), 51, '#00ffff', -4)
        if int(u*3)%4 == 0:
            stamp(im, 'REAL I/Q. ABSOLUTE CINEMA.', (640, 550), 43, '#ffe733', 6)
    elif index == 3:
        stamp(im, '160 MHz WIDE', (640, 180), 82, '#ffe733', -6)
        if abs(t-sync['sniper']) < .2:
            # Classic quickscope over the actual packet, not a new RF trace.
            d.ellipse((350, 80, 930, 660), outline='black', width=30)
            d.line((640, 80, 640, 630), fill='black', width=4)
            d.line((350, 370, 930, 370), fill='black', width=4)
        stamp(im, 'PACKET ACQUIRED', (640, 550), 48, '#6eff80', 4)
    elif index == 4:
        combo = sum(t >= h for h in sync['header_hits'])
        stamp(im, f'HEADER CRC x{combo}' if combo < 8 else '8 / 8 HEADER CRCs',
              (640, 170), 65 if combo < 8 else 74, '#6eff80', 4*math.sin(t*9))
        for i in range(8):
            x = 44+i*151
            d.rectangle((x, 530, x+136, 610), fill='#073d22' if i < combo else '#171a25',
                        outline='#6eff80' if i < combo else '#687080', width=3)
            d.text((x+68, 552), f'{5180+20*i} MHz', font=font(18), anchor='mm', fill='white')
            d.text((x+68, 584), 'CRC PASS' if i < combo else '...', font=font(20), anchor='mm', fill='#6eff80')
        if t > sync['header_hits'][-1]+.15:
            stamp(im, 'OH BABY, AN OCTUPLE', (640, 370), 54, '#ffe733', -7)
    elif index == 5:
        stamp(im, '441 BYTES. FCS MATCH.', (640, 155), 59, '#6eff80', -5)
        stamp(im, 'a232c556', (940, 540), 49, '#ffe733', 7)
    elif index == 6:
        stamp(im, 'OH BABY A TRIPLE', (640, 350), 68, '#ffe733', 16*math.sin(u*6))
        stamp(im, '(BAND TOUR)', (640, 470), 42, 'white', -6)
    elif index == 7:
        stamp(im, '160,000,000', (640, 300), 110+round(20*pulse), '#ffe733', 6*math.sin(t*12))
        stamp(im, 'COMPLEX SAMPLES / SECOND', (640, 445), 51, 'white', -4)
        stamp(im, 'CERTIFIED BANDWIDTH MOMENT', (640, 165), 40, '#00ffff', 5)
    else:
        stamp(im, 'RTL8922 SDR', (640, 235), 100, '#ffe733', -5)
        stamp(im, '160 MS/s  |  8 HEADER CRCs', (640, 390), 55, '#6eff80', 3)
        stamp(im, 'github.com/plaingca/rtl8922-sdr', (640, 540), 34, 'white', -2)
    # Spinning brand logos plus illustrated can/bag: intentional montage parody.
    if index in (1, 3, 4, 7, 8):
        for j, sprite in enumerate(products):
            size = int(125+70*pulse+30*math.sin(t*5+j))
            pic = sprite.resize((size, round(size*1.4)), RESAMPLE.BICUBIC)
            pic = pic.rotate((t*220*(1 if j else -1))%360, resample=RESAMPLE.BICUBIC, expand=True)
            x = int(70 if j == 0 else 1060)+round(50*math.sin(t*4+j))
            y = round(340+135*math.sin(t*3+j*2))
            im.paste(pic, (x-pic.width//2, y-pic.height//2), pic)
    for at in sync['hitmarkers']+[sync['sniper']]:
        if 0 <= t-at < .1:
            hitmark(ImageDraw.Draw(im), 640, 350, 42)
            hitmark(ImageDraw.Draw(im), 190+round(at*117)%900, 220+round(at*71)%300, 22)
    if index == 1 and t >= sync['reveal']:
        # RGB split and camera shake only on bass impacts; footer drawn later.
        if pulse > .2:
            area = im.crop((0, 67, W, 637))
            r, g, b = area.split()
            area = Image.merge('RGB', (ImageChops.offset(r, round(12*pulse), 0),
                                      g, ImageChops.offset(b, -round(12*pulse), 0)))
            im.paste(area, (round(13*pulse*math.sin(t*80)), 67))
        for j in range(4):
            pic = products[j%2].resize((95+round(55*pulse), 134+round(77*pulse)), RESAMPLE.BICUBIC)
            pic = pic.rotate(t*420+j*90, resample=RESAMPLE.BICUBIC, expand=True)
            angle = j*math.tau/4+t*.7
            x, y = 640+math.cos(angle)*(390+110*pulse), 330+math.sin(angle)*235
            im.paste(pic, (round(x-pic.width/2), round(y-pic.height/2)), pic)
    if index in (1, 4, 7) and pulse > .75:
        d = ImageDraw.Draw(im)
        d.rectangle((2, 68, 1277, 635), outline='#ff00d4', width=7)
        d.rectangle((11, 76, 1268, 627), outline='#00ffff', width=4)
    # HUD and evidence qualifiers are stationary and never covered by effects.
    d = ImageDraw.Draw(im)
    d.rectangle((0, 0, W, 66), fill='#050817')
    fit_text(d, (640, 33), title, 35, width=1220, fill='#ffe733')
    d.rectangle((0, 637, W, H), fill='#050817')
    d.text((28, 661), qualifier, font=font(18, True), fill='white', anchor='lm')
    d.text((28, 697), '160 MS/s   //   RTL8922AE   //   MONTAGE PARODY', font=font(17), fill='#00ffff', anchor='lm')
    d.text((1250, 697), 'MLG  +160', font=font(18), fill='#ffe733', anchor='rm')
    d.rectangle((0, 716, round(W*t/DURATION), 720), fill='#6eff80')
    return im


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--ffmpeg', default=shutil.which('ffmpeg'))
    parser.add_argument('--browser-video', type=Path)
    parser.add_argument('--review-only', action='store_true')
    args = parser.parse_args()
    if not args.ffmpeg:
        parser.error('FFmpeg required')
    work = ROOT/'build-media/classic'; work.mkdir(parents=True, exist_ok=True)
    out = ROOT/'docs/media'/NAME
    manifest = json.loads((ASSET_DIR/'manifest.json').read_text())
    for entry in manifest['clips']+manifest['graphics']:
        if sha(ASSET_DIR/entry['file']) != entry['sha256']:
            raise ValueError(f"Asset hash mismatch: {entry['file']}")
    paths = draw_helpers.ASSETS
    assets = {key: Image.open(ROOT/path).convert('RGB') for key, path in paths.items()}
    assets['live'] = assets['live'].crop((43, 252, 1382, 749))
    assets['wide'] = assets['wide'].crop((108, 412, 2122, 1166))
    live = []
    if args.browser_video:
        raw = subprocess.check_output([args.ffmpeg, '-v', 'error', '-threads', '2', '-ss', '4',
            '-i', str(args.browser_video), '-t', '8', '-vf', 'fps=12,scale=1000:722',
            '-f', 'rawvideo', '-pix_fmt', 'rgb24', '-'])
        for pixels in np.frombuffer(raw, np.uint8).reshape(-1, 722, 1000, 3):
            live.append(Image.fromarray(pixels).crop((30, 175, 960, 520)))
    products = [product(Image.open(ASSET_DIR/'mountain-dew.png').convert('RGBA'), 'can'),
                product(Image.open(ASSET_DIR/'doritos.png').convert('RGBA'), 'bag')]
    master, events, loudness, sync = soundtrack(args.ffmpeg, work, manifest)
    times = [sync['reveal']-.1, sync['reveal'], sync['reveal']+.1,
             sync['secondary_reveal'], 11, 16, sync['header_hits'][3], 23.2, 28.5, 33, 38, 46]
    previews = []
    for t in times:
        pic = frame(t, assets, live, products, sync)
        pic.save(work/f'frame-{t:.1f}.jpg', quality=92)
        previews.append(pic.resize((426, 240), RESAMPLE.LANCZOS))
    sheet = Image.new('RGB', (426*3, 240*4))
    for i, pic in enumerate(previews):
        sheet.paste(pic, ((i%3)*426, (i//3)*240))
    sheet.save(work/'contact-sheet.jpg', quality=92)
    if args.review_only:
        return
    command = [args.ffmpeg, '-y', '-v', 'error', '-f', 'rawvideo', '-pix_fmt', 'rgb24',
        '-s', f'{W}x{H}', '-r', str(FPS), '-i', '-', '-i', str(master),
        '-c:v', 'libx264', '-preset', 'fast', '-crf', '23', '-threads', '4', '-pix_fmt', 'yuv420p',
        '-c:a', 'aac', '-b:a', '256k', '-t', str(DURATION), '-movflags', '+faststart', str(out.with_suffix('.mp4'))]
    process = subprocess.Popen(command, stdin=subprocess.PIPE)
    try:
        for i in range(FPS*DURATION):
            process.stdin.write(frame(i/FPS, assets, live, products, sync).tobytes())
            if i%300 == 0:
                print(f'Rendered {i/FPS:.0f}/{DURATION}s', flush=True)
        process.stdin.close()
        if process.wait() != 0:
            raise RuntimeError('FFmpeg render failed')
    finally:
        if process.poll() is None:
            process.terminate(); process.wait()
    subprocess.run([args.ffmpeg, '-y', '-v', 'error', '-i', str(out.with_suffix('.mp4')),
        '-c:v', 'libvpx-vp9', '-crf', '33', '-b:v', '0', '-cpu-used', '4', '-row-mt', '1', '-threads', '4',
        '-c:a', 'libopus', '-b:a', '160k', str(out.with_suffix('.webm'))], check=True)
    frame(sync['reveal'], assets, live, products, sync).save(out.with_suffix('.jpg'), quality=94)
    # Sound labels are captions, not a fabricated TTS transcript. Overlapping
    # minor clicks are omitted where a vocal/music caption already describes it.
    cues = [x for x in events if x['clip'] not in ('hitmarker', 'sniper')]
    cues.append(dict(start=sync['header_hits'][0], end=sync['header_hits'][-1]+.2,
                     caption='[Eight bass-synced hitmarkers: eight PHY header CRC passes]'))
    cues.sort(key=lambda x: x['start'])
    srt = '\n\n'.join(f"{i}\n{draw_helpers.srt_time(x['start'])} --> {draw_helpers.srt_time(x['end'])}\n{x['caption']}"
                        for i, x in enumerate(cues, 1))+'\n'
    out.with_suffix('.srt').write_text(srt)
    out.with_suffix('.vtt').write_text('WEBVTT\n\n'+re.sub(r'(\d\d:\d\d:\d\d),(\d{3})', r'\1.\2', srt))
    info = dict(duration_seconds=DURATION, resolution=[W, H], fps=FPS, narration='No TTS; only credited original meme excerpts',
        focus='160 MS/s reception and eight PHY header CRCs; no overflow/recovery scene',
        timeline=[dict(start=a, end=b, title=c, evidence_qualifier=d) for a, b, c, d in SCENES],
        audio_events=events, music_source='docs/media/music/announcer-breaks-the-sound.mp3',
        bass_sync=sync,
        music_sha256=sha(ROOT/'docs/media/music/announcer-breaks-the-sound.mp3'),
        music_edits=[dict(start=a, end=b, source_start=c) for a, b, c in MUSIC_EDITS],
        mix='Bass boosted and saturated excerpt stems; bed ducks for vocals, nearly mutes for classic music stings. Two-pass -12 LUFS / -2 dBTP target master.',
        premaster_loudness=loudness, clip_manifest='docs/media/classic-assets/manifest.json',
        assets=[dict(path=path, sha256=sha(ROOT/path)) for path in paths.values()],
        browser_recording=dict(sha256=sha(args.browser_video), used_source_seconds=[4, 12]) if args.browser_video else None,
        outputs={suffix:sha(out.with_suffix(suffix)) for suffix in ('.mp4', '.webm', '.jpg', '.srt', '.vtt')})
    out.with_suffix('.json').write_text(json.dumps(info, indent=2)+'\n')
    print(str(out.with_suffix('.mp4')), flush=True)


if __name__ == '__main__':
    main()
