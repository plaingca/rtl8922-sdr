#!/usr/bin/env python3
"""Render a campy, evidence-based trailer. Offline: never opens radio hardware.

Requires NumPy, Pillow, FFmpeg with libx264/AAC/Opus, and DejaVu fonts.
An optional browser recording is a presentation asset, never an I/Q input.
"""
import argparse
from functools import lru_cache
import hashlib
import json
import math
from pathlib import Path
import re
import shutil
import subprocess
import wave

import numpy as np
from PIL import Image, ImageChops, ImageDraw, ImageFont

ROOT = Path(__file__).resolve().parents[1]
W, H, FPS, SR = 1280, 720, 30, 24000
VOICE_SPEED = 1.12
INK, WHITE, YELLOW, MINT = '#080e20', '#f6f5ee', '#ffe14b', '#65efc5'
FONT = '/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf'
REGULAR = '/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf'

SCENES = [
    ('MOM! GET THE ANTENNA!', 'THE SPECTRUM SPECTACULAR: MONTAGE EDITION',
     "Oh, BABY! Is your Wi-Fi card just... doing Wi-Fi? Folks, that is a TRAGEDY! Welcome to the Spectrum Spectacular!",
     'Actual RTL8922AE receive experiments. Dealership enthusiasm sold separately.'),
    ('160', 'MILLION COMPLEX SAMPLES / SECOND',
     "ONE HUNDRED AND SIXTY MILLION complex samples a second! That's right! This baby has more bandwidth than my entire personality!",
     'Experimental PAXI RX. 80 / 160 MS/s passed bounded 60-second application trials.'),
    ('LOOK AT THAT WATERFALL.', 'REAL I/Q. REAL RADIO.',
     "Look at that waterfall! Two hundred and forty FFTs a second! The spectrum is absolutely COOKING!",
     '240 FFT/s target; screen refresh limits redraws. Recorded passive RX; Pluto TX off.'),
    ('ONE BURST. ALL 160 MHz.', 'HEADER CRC STREAK: 8 FOR 8',
     "One hundred and sixty megahertz! Eight slices! Eight valid header checksums! EIGHT FOR EIGHT! Somebody clip that!",
     'Same HE-SU PHY header in eight 20 MHz sections. Two-stream payload not decoded.'),
    ('THE CHECKSUMS CHECK OUT.', '441-BYTE BEACON. SOFTWARE DECODED.',
     "Four hundred forty-one bytes! Decoded in software! Matching frame checksum! Oh my goodness, the checksums CHECK OUT!",
     'Legacy 20 MHz OFDM extracted from 160 MS/s I/Q. Independent FCS: a232c556.'),
    ("BUT WAIT! THERE'S MORE!", '2.4 / 5 / 6 GHz',
     "But WAIT! There's MORE! Two point four! Five! Six gigahertz! Every band must go! Sequentially, of course. We're ridiculous, not magical!",
     'Sequentially stitched survey, not simultaneous full-band RX. Above 6 GHz RF unqualified.'),
    ('OVERFLOW? GET BACK UP.', 'TUNE IT. KEEP ROLLING.',
     "Overflow? Skill issue! Just kidding. We mark the gap, reload, and get right back in the game! THAT'S the comeback! Tune while streaming!",
     'Retunes mark brief gaps without reload. Fault recovery reloads the isolated driver.'),
    ('RTL8922 SDR', 'DEAL WITH THE BANDWIDTH.',
     "The RTL eighty-nine twenty-two SDR! Open source! Experimental! Deal with the BANDWIDTH! Some debugging required. Imaginary warranties sold separately!",
     'One receive path. Firmware held. Indefinite continuity, full-band EVM / sensitivity unqualified.'),
]
ASSETS = {
    'live': 'docs/media/live-demo.png',
    'wide': 'output/wifi-decode/he160-wide-packet.png',
    'beacon': 'output/wifi-decode/decoded-beacon.png',
    'survey': 'output/full-band-survey/rtl8922-full-span-survey.png',
}


@lru_cache(maxsize=128)
def font(size, regular=False):
    return ImageFont.truetype(REGULAR if regular else FONT, size)


def text(draw, xy, value, size, fill=WHITE, anchor='mm', regular=False):
    draw.text(xy, value, font=font(size, regular), fill=fill, anchor=anchor,
              stroke_width=1 if size >= 50 else 0)


def fit_text(draw, xy, value, size, width=1190, **kwargs):
    while draw.textbbox((0, 0), value, font=font(size))[2] > width:
        size -= 1
    text(draw, xy, value, size, **kwargs)


def speech(directory, ffmpeg):
    """Decode committed neural voice stems locally; no model or network needed."""
    metadata = json.loads((directory/'manifest.json').read_text())
    narration = []
    for scene, entry in zip(SCENES, metadata['clips'], strict=True):
        path = directory/entry['file']
        if entry['text'] != scene[2] or hashlib.sha256(path.read_bytes()).hexdigest() != entry['sha256']:
            raise ValueError(f'Voiceover text/hash mismatch: {path}')
        raw = subprocess.check_output([ffmpeg, '-v', 'error', '-i', str(path),
                 '-af', f'atempo={VOICE_SPEED}', '-ar', str(SR), '-ac', '1', '-f', 'f32le', '-'])
        narration.append(np.frombuffer(raw, dtype='<f4').copy())
    return narration, metadata


def soundtrack(narration, lengths, work):
    """Original synth power chords, drums, risers and impact hits; seeded noise."""
    length = sum(lengths)
    t = np.arange(round(length * SR)) / SR
    audio = np.zeros(len(t), dtype=np.float32)
    voice = np.zeros_like(audio)
    rng = np.random.default_rng(8922)
    beat = 60 / 132
    # Original halftime montage bass and sawtooth power chords in E minor.
    for b, start in enumerate(np.arange(0, length, beat / 2)):
        a = round(start * SR)
        n = min(round(beat * .48 * SR), len(audio) - a)
        x = np.arange(n) / SR
        root = [82.4069, 65.4064, 73.4162, 97.9989][(b // 16) % 4]
        bass = np.sin(2 * np.pi * root * x) + .3 * np.sin(4 * np.pi * root * x)
        chord = sum((2 * ((x * f) % 1) - 1) for f in [root * 2, root * 3, root * 4]) / 3
        env = np.minimum(1, x / .008) * np.exp(-x * 6)
        wobble = .45 + .55*np.sin(2*np.pi*(3 if b % 4 else 6)*x)**2
        audio[a:a+n] += (.095*np.tanh(bass*2)*wobble + .035*chord) * env
    for b, start in enumerate(np.arange(0, length, beat)):
        a = round(start * SR)
        n = min(round(.25 * SR), len(audio) - a)
        x = np.arange(n) / SR
        kick = np.sin(2 * np.pi * (48 * x + 6 * (1-np.exp(-x*35)))) * np.exp(-x*20)
        noise = rng.standard_normal(n)
        snare = (noise - np.roll(noise, 1)) * np.exp(-x*25)
        audio[a:a+n] += .16 * kick if b % 2 == 0 else .055 * snare
        n = min(round(.045 * SR), len(audio) - a)
        x = np.arange(n) / SR
        audio[a:a+n] += .035 * rng.standard_normal(n) * np.exp(-x*90)
    starts = np.cumsum([0] + lengths[:-1])
    for start, pcm in zip(starts, narration):
        a = round((start + .6) * SR)
        voice[a:a+len(pcm)] += .68 * pcm
        a = round(start * SR)
        n = min(SR, len(audio)-a)
        x = np.arange(n) / SR
        audio[a:a+n] += .26 * np.sin(2*np.pi*(42*x + 8*(1-np.exp(-x*15)))) * np.exp(-x*5)
        if start > 0:
            n = min(round(.55 * SR), a)
            x = np.arange(n) / SR
            audio[a-n:a] += .07 * rng.standard_normal(n) * (x/.55)**2
    def horn(at, seconds=.65):
        a = round(at*SR)
        n = min(round(seconds*SR), len(audio)-a)
        if n <= 0:
            return
        x = np.arange(n)/SR
        brass = sum(sum(np.sin(2*np.pi*f*h*x)/h for h in range(1,7))
                    for f in (466.16, 587.33, 698.46))/5
        env = np.minimum(1, x/.025)*np.minimum(1, (seconds-x)/.09)
        audio[a:a+n] += .16*brass*env
    for s, start in enumerate(starts):
        horn(start+.08)
        if s in (1,3,7):
            horn(start+.85,.25)
            horn(start+1.2,.35)
    # Eight original hitmarker clicks, timed to the eight visual CRC stamps.
    for i in range(8):
        a = round((starts[3]+2+i*.38)*SR)
        n = min(round(.075*SR), len(audio)-a)
        x = np.arange(n)/SR
        audio[a:a+n] += .10*rng.standard_normal(n)*np.exp(-x*100)
        audio[a:a+n] += .14*np.sin(2*np.pi*1700*x)*np.exp(-x*70)
    for drop in (starts[3]+5.2, starts[7]+3.3):
        a = round(drop*SR)
        n = min(round(.95*SR),len(audio)-a)
        x = np.arange(n)/SR
        sub = np.sin(2*np.pi*(35*x+6*(1-np.exp(-x*8))))
        audio[a:a+n] += .24*np.tanh(sub*2)*np.exp(-x*3)
    # Duck music/effects under the clean neural announcer. No robot distortion.
    active = np.convolve((np.abs(voice[::240]) > .01).astype(float), np.ones(11)/11, mode='same')
    duck = np.interp(np.arange(len(t)), np.arange(len(active))*240, active)
    audio *= 1 - .5 * duck
    left, right = audio + voice, audio + voice
    delay = round(.09 * SR)
    right = right.copy()
    right[delay:] += .035 * voice[:-delay]
    stereo = np.stack([left, right], axis=1)
    stereo *= min(1, .93 / np.max(np.abs(stereo)))
    fade = np.minimum(1, (length - t) / 1.1)
    stereo *= fade[:, None]
    path = work / 'soundtrack.wav'
    with wave.open(str(path), 'wb') as wav:
        wav.setnchannels(2)
        wav.setsampwidth(2)
        wav.setframerate(SR)
        wav.writeframes((stereo * 32767).astype('<i2').tobytes())
    return path


def srt_time(seconds):
    ms = round(seconds*1000)
    return f'{ms//3600000:02}:{ms//60000%60:02}:{ms//1000%60:02},{ms%1000:03}'


def background(t):
    im = Image.new('RGB', (W, H), INK)
    d = ImageDraw.Draw(im)
    for x in range(-H, W, 100):
        shift = int((t * 22) % 100)
        d.line((x+shift, H, x+H+shift, 0), fill='#12203b', width=2)
    for y in range(0, H, 60):
        d.line((0, y, W, y), fill='#101b32')
    for i in range(12):
        x = int((i * 137 + t * (50+i*7)) % (W+400))-200
        y = (i * 53 + 80) % H
        d.line((x, y, x+140, y-35), fill='#243852', width=2)
    d.rectangle((0, 0, W, 7), fill=YELLOW)
    return im


def image_panel(im, asset, box, zoom=1):
    x, y, width, height = box
    scale = min(width / asset.width, height / asset.height) * zoom
    resampling = getattr(Image, 'Resampling', Image)
    pic = asset.resize((round(asset.width*scale), round(asset.height*scale)), resampling.LANCZOS)
    layer = Image.new('RGB', (width, height), '#080e1b')
    layer.paste(pic, ((width-pic.width)//2, (height-pic.height)//2))
    im.paste(layer, (x, y))
    ImageDraw.Draw(im).rounded_rectangle((x, y, x+width, y+height), radius=8, outline='#3a5a76', width=2)


def stamp(im, value, center, size=58, color=YELLOW, angle=-8):
    """An original meme caption; no stock graphics or altered RF samples."""
    layer = Image.new('RGBA', (1200, 180))
    d = ImageDraw.Draw(layer)
    while d.textbbox((0,0), value, font=font(size))[2] > 1130:
        size -= 1
    d.text((600,90), value, font=font(size), anchor='mm', fill=color,
           stroke_width=6, stroke_fill='#000000')
    layer = layer.rotate(angle, resample=Image.Resampling.BICUBIC if hasattr(Image,'Resampling') else Image.BICUBIC,
                         expand=True)
    im.paste(layer, (round(center[0]-layer.width/2), round(center[1]-layer.height/2)), layer)


def montage(im, scene, u, duration):
    d = ImageDraw.Draw(im)
    beats = [0.08,.85,1.2] if scene in (1,3,7) else [.08]
    if scene == 3:
        beats += [2+i*.38 for i in range(8)]
    age = min([u-b for b in beats if u >= b], default=99)
    if age < .16:
        # Camera impact affects the decorative picture area; qualification text
        # is drawn afterward, remains stationary and is never obscured.
        region = im.crop((0,55,W,638))
        strength = max(0, 1-age/.16)
        region = ImageChops.offset(region, round(9*strength*math.sin(u*90)),
                                  round(5*strength*math.cos(u*73)))
        im.paste(region,(0,55))
        d = ImageDraw.Draw(im)
        for i in range(24):
            angle = i*2*math.pi/24+u
            x,y = W/2+math.cos(angle)*(250+age*900), 350+math.sin(angle)*(130+age*550)
            d.line((x,y,x+math.cos(angle)*45,y+math.sin(angle)*35), fill=MINT if i%2 else '#ff62e0',width=3)
    # Thin colored edges are montage decoration, not spectrum values.
    d.rectangle((0,55,5,637),fill='#f054d7')
    d.rectangle((W-6,55,W,637),fill=MINT)
    if scene == 0 and 1.0 < u < 3.3:
        stamp(im, 'WI-FI CARD DETECTED', (640,175), 38, MINT, 5)
    if scene == 1 and 2.7 < u < 5.9:
        # Original pixel sunglasses fall onto the bandwidth counter.
        y = round(253 - max(0,3.15-u)*500)
        for origin in (491,650):
            for row in range(4):
                for col in range(9-row):
                    d.rectangle((origin+col*16,y+row*15,origin+col*16+16,y+row*15+15),fill='black')
            d.rectangle((origin+23,y+7,origin+51,y+18),fill=WHITE)
        d.rectangle((625,y+4,655,y+21),fill='black')
        if u > 3.2:
            stamp(im,'DEAL WITH THE BANDWIDTH',(640,165),44,WHITE,-4)
    if scene == 2 and 1.0 < u < 3.2:
        stamp(im,'240 FFT/s COMBO',(840,525),42,MINT,7)
    if scene == 3:
        combo = max(0,min(8,1+int((u-2)/.38))) if u >= 2 else 0
        if combo:
            stamp(im,f'CRC STREAK x{combo}',(640,220),48,YELLOW,4*math.sin(u*2))
        for i in range(8):
            age = u-(2+i*.38)
            if 0 <= age < .16:
                x,y = 118+i*149,591
                for sx,sy in ((-1,-1),(-1,1),(1,-1),(1,1)):
                    d.line((x+sx*8,y+sy*8,x+sx*23,y+sy*23),fill=WHITE,width=4)
        if u > 5.2 and u < 7.5:
            stamp(im,'8 FOR 8. SOMEBODY CLIP THAT.',(640,495),42,MINT,-3)
    if scene == 4 and 1.2 < u < 3.4:
        stamp(im,'FCS CONFIRMED +441',(825,525),42,MINT,-6)
    if scene == 5 and 1.2 < u < 3.8:
        spin = 360*max(0, 1-(u-1.2)/.8)+5
        stamp(im,'OH BABY A TRIPLE (BAND TOUR)',(640,390),43,YELLOW,spin)
    if scene == 6 and 1.0 < u < 2.8:
        stamp(im,'GAP DETECTED',(640,165),42,'#ff8274',-4)
    if scene == 6 and 3.8 < u < 6.5:
        stamp(im,'COMEBACK CONFIRMED',(640,165),44,MINT,5)
    if scene == 7 and 1.3 < u < 3.8:
        stamp(im,'+160 BANDWIDTH',(640,170),42,MINT,-5)
    return im


def frame(scene, u, duration, absolute, assets, browser):
    im = background(absolute)
    d = ImageDraw.Draw(im)
    title, sub, _, note = SCENES[scene]
    progress = u / duration
    slam = 1 + .12 * math.exp(-u*9) * math.cos(u*18)
    text(d, (35, 34), 'RTL8922AE  /  MLG SPECTRUM SPECTACULAR', 16, MINT, anchor='lm')
    text(d, (1245, 34), f'{scene+1:02} / 08', 16, anchor='rm')
    if scene in (0, 1, 7):
        fit_text(d, (W//2+4, 272+5), title, round((190 if scene==1 else 86)*slam), width=1150, fill='#512337')
        fit_text(d, (W//2, 272), title, round((190 if scene==1 else 86)*slam), width=1150, fill=YELLOW)
        fit_text(d, (W//2, 390), sub, 34)
        if scene == 0:
            text(d, (640, 470), '160 WIDE-SCOPE. ZERO DIGNITY.', 30, MINT)
            text(d, (640, 535), 'AIRHORNS ARE SYNTHETIC. THE RF IS REAL.', 22, regular=True)
        if scene == 1:
            # The time-honored dealership starburst, mercifully away from data.
            points = []
            for k in range(24):
                angle = k*math.pi/12 + .025*math.sin(u*2)
                radius = 94 if k % 2 == 0 else 72
                points.append((1065+radius*math.cos(angle), 275+radius*math.sin(angle)))
            d.polygon(points, fill='#ee634b', outline=YELLOW)
            text(d, (1065, 249), '160 MHz', 20, INK)
            text(d, (1065, 280), 'OF WOW', 20, INK)
            text(d, (1065, 309), 'EXPERIMENTAL', 10, INK)
            for i, label in enumerate(('ONE RECEIVE PATH', '80 / 160 MS/s', 'RAW COMPLEX I/Q')):
                x = 60 + i*420
                d.rounded_rectangle((x, 465, x+320, 540), radius=8, fill='#17352f', outline=MINT, width=2)
                text(d, (x+160, 502), label, 21, MINT)
            text(d, (640, 585), 'A WI-FI CARD. WITH A VERY DIFFERENT DAY JOB.', 23)
        if scene == 7:
            text(d, (640, 475), 'github.com/plaingca/rtl8922-sdr', 32, MINT)
            text(d, (640, 540), 'Some assembly. Quite a lot of debugging.', 25)
            text(d, (640, 585), 'Experimental receiver. No imaginary warranties.', 20, regular=True)
    else:
        fit_text(d, (640, 92), title, 46, fill=YELLOW)
        fit_text(d, (640, 140), sub, 24, fill=MINT)
        if scene == 2:
            asset = browser[min(int(u*12), len(browser)-1)] if browser else assets['live']
            # Close-up of the real display and receiver counters; discard the
            # browser recorder's unused gray area below the viewport.
            asset = asset.crop((30, 175, 960, 520)) if browser else asset.crop((43, 252, 1382, 749))
            image_panel(im, asset, (46, 172, 1188, 440))
            text(ImageDraw.Draw(im), (1145, 195), 'ACTUAL RX', 16, MINT)
        elif scene == 3:
            # Retain the full plot in the repo; enlarge its actual packet pixels
            # here and provide readable frequency captions below.
            image_panel(im, assets['wide'].crop((108, 412, 2122, 1166)), (46, 172, 1188, 380), 1+.03*progress)
            d = ImageDraw.Draw(im)
            for i in range(8):
                x = 48 + i*149
                active = u >= 2+i*.38
                color = MINT if active else '#7390a0'
                d.rounded_rectangle((x, 567, x+140, 614), radius=5, fill='#143e35' if active else '#122030', outline=color, width=2)
                text(d, (x+70, 591), f'{5180+20*i} CRC OK' if active else f'{5180+20*i} MHz', 15, color)
        elif scene == 4:
            image_panel(im, assets['beacon'], (46, 172, 1188, 440), 1+.02*progress)
        elif scene == 5:
            image_panel(im, assets['survey'], (46, 172, 1188, 440), 1+.04*progress)
        elif scene == 6:
            labels = [('01', 'RECEIVER FAULT', 'Record the interruption'),
                      ('02', 'RELEASE + RELOAD', 'Restore Pluto; clean driver teardown'),
                      ('03', 'RESUME THE SHOW', 'Last frequency. Browser reconnects.')]
            for i, (number, a, b) in enumerate(labels):
                x = 46+i*407
                color = MINT if u > i*1.1 else '#557186'
                d.rounded_rectangle((x, 212, x+374, 465), radius=12, fill='#13243a', outline=color, width=3)
                text(d, (x+187, 270), number, 66, color)
                fit_text(d, (x+187, 350), a, 23, width=350)
                fit_text(d, (x+187, 412), b, 16, width=350, regular=True)
            text(d, (640, 534), 'FORCED OVERFLOW TEST: RECOVERED AT 5350 MHz', 27, MINT)
            text(d, (640, 582), 'A gap is a gap. Recovery keeps the demo usable.', 22)
    im = montage(im, scene, u, duration)
    d = ImageDraw.Draw(im)
    d.rectangle((0, 643, W, H), fill='#050913')
    fit_text(d, (640, 664), note, 17, regular=True)
    text(d, (640, 696), 'REAL CAPTURES  /  SYNTHETIC ACTOR + ORIGINAL SFX  /  MONTAGE PARODY', 13, '#8298ad')
    d.rectangle((0, H-4, round(W*progress), H), fill=MINT)
    # A brief non-flashing film-style fade at the cut.
    fade = min(1, u/.12, (duration-u)/.18)
    if fade < 1:
        im = Image.blend(Image.new('RGB', im.size, INK), im, max(0, fade))
    return im


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, default=ROOT/'docs/media/rtl8922-mlg-montage.mp4')
    parser.add_argument('--work', type=Path, default=ROOT/'build-media')
    parser.add_argument('--browser-video', type=Path)
    parser.add_argument('--voiceover-dir', type=Path, default=ROOT/'docs/media/voiceover')
    parser.add_argument('--ffmpeg', default=shutil.which('ffmpeg'))
    args = parser.parse_args()
    if not args.ffmpeg:
        parser.error('FFmpeg required')
    args.work.mkdir(parents=True, exist_ok=True)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    assets = {k: Image.open(ROOT/v).convert('RGB') for k, v in ASSETS.items()}
    narration, voice_metadata = speech(args.voiceover_dir, args.ffmpeg)
    lengths = [math.ceil((len(pcm)/SR+1.5)*FPS)/FPS for pcm in narration]
    soundtrack_path = soundtrack(narration, lengths, args.work)
    browser = []
    if args.browser_video:
        # Take a stable passive part of the recording, with original counters visible.
        data = subprocess.check_output([args.ffmpeg, '-v', 'error', '-threads', '2', '-ss', '4',
                    '-i', str(args.browser_video), '-t', '8', '-vf', 'fps=12,scale=1000:722',
                    '-f', 'rawvideo', '-pix_fmt', 'rgb24', '-'])
        pixels = np.frombuffer(data, dtype=np.uint8).reshape(-1, 722, 1000, 3)
        browser = [Image.fromarray(p) for p in pixels]
    cmd = [args.ffmpeg, '-y', '-v', 'warning', '-threads', '4', '-f', 'rawvideo',
           '-pix_fmt', 'rgb24', '-s', f'{W}x{H}', '-r', str(FPS), '-i', '-',
           '-i', str(soundtrack_path), '-c:v', 'libx264', '-preset', 'fast', '-crf', '23',
           '-threads', '4', '-pix_fmt', 'yuv420p', '-c:a', 'aac', '-b:a', '160k', '-af', 'volume=2dB',
           '-movflags', '+faststart', '-shortest', str(args.output)]
    process = subprocess.Popen(cmd, stdin=subprocess.PIPE)
    starts = np.cumsum([0]+lengths[:-1])
    try:
        for s, duration in enumerate(lengths):
            print(f'Rendering scene {s+1}: {duration:.1f}s', flush=True)
            for n in range(round(duration*FPS)):
                im = frame(s, n/FPS, duration, starts[s]+n/FPS, assets, browser)
                if n == 30:
                    im.save(args.work/f'scene-{s+1}.jpg', quality=90)
                if s == 1 and n == 120:
                    im.save(args.output.with_suffix('.jpg'), quality=93)
                process.stdin.write(im.tobytes())
    finally:
        process.stdin.close()
    if process.wait():
        raise RuntimeError('FFmpeg encoding failed')
    subtitles = []
    for i, ((_, _, line, _), start, pcm) in enumerate(zip(SCENES, starts, narration)):
        # Short caption chunks keep subtitles usable on small screens.
        words = line.split()
        chunks = [' '.join(words[n:n+9]) for n in range(0, len(words), 9)]
        total = len(pcm)/SR
        for j, chunk in enumerate(chunks):
            a, b = start+.6+total*j/len(chunks), start+.6+total*(j+1)/len(chunks)
            subtitles.append(f'{len(subtitles)+1}\n{srt_time(a)} --> {srt_time(b)}\n{chunk}\n')
    subtitle_text = '\n'.join(subtitles).rstrip()+'\n'
    args.output.with_suffix('.srt').write_text(subtitle_text)
    args.output.with_suffix('.vtt').write_text('WEBVTT\n\n'+re.sub(r'(\d{2}:\d{2}:\d{2}),(\d{3})', r'\1.\2', subtitle_text))
    manifest = {
        'title': 'The RTL8922 Spectrum Spectacular', 'duration_seconds': sum(lengths),
        'video': {'width': W, 'height': H, 'fps': FPS, 'codec': 'H.264', 'audio': 'AAC stereo'},
        'sources': {v: hashlib.sha256((ROOT/v).read_bytes()).hexdigest() for v in ASSETS.values()},
        'browser_recording_sha256': hashlib.sha256(args.browser_video.read_bytes()).hexdigest() if args.browser_video else None,
        'browser_recording_note': 'Optional passive UI footage, no new RF stimulus; no counters removed. Offline render uses still fallback.',
        'edition': 'MLG montage parody',
        'audio': 'Original procedural bass music, airhorns and hitmarkers; expressive neural synthetic actor.',
        'voiceover': voice_metadata,
        'voice_playback_speed': VOICE_SPEED,
        'timeline': [{'start':float(start), 'duration':length, 'title':s[0], 'narration':s[2], 'qualification':s[3]}
                     for s, start, length in zip(SCENES, starts, lengths)],
        'sha256': hashlib.sha256(args.output.read_bytes()).hexdigest(),
    }
    args.output.with_suffix('.json').write_text(json.dumps(manifest, indent=2)+'\n')
    print(f'Done: {sum(lengths):.1f}s, {args.output.stat().st_size/1e6:.1f} MB', flush=True)


if __name__ == '__main__':
    main()
