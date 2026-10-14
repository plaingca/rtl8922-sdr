#!/usr/bin/env python3
"""Edit the supplied Suno song under the existing montage. No RF/hardware access.

Preserves the encoded picture streams; rebuilds narration/music/hitmarker stems
and masters the new score. Requires NumPy and FFmpeg, not a TTS model.
"""
import argparse
import hashlib
import json
import math
from pathlib import Path
import re
import shutil
import subprocess
import wave

import numpy as np

ROOT = Path(__file__).resolve().parents[1]
SR = 48000


def decode(ffmpeg, path, filters=None, channels=2):
    command = [ffmpeg, '-v', 'error', '-threads', '2', '-i', str(path), '-map', '0:a:0']
    if filters:
        command += ['-af', filters]
    data = subprocess.check_output(command+['-ar', str(SR), '-ac', str(channels), '-f', 'f32le', '-'])
    return np.frombuffer(data, dtype='<f4').reshape(-1, channels).copy()


def take(source, start, count):
    if start < 0 or start+count > len(source)+1:
        raise ValueError('Edit extends beyond the source audio')
    part = source[start:start+count]
    return np.pad(part, ((0,count-len(part)),(0,0)))


def write_wave(path, pcm):
    with wave.open(str(path), 'wb') as wav:
        wav.setnchannels(2)
        wav.setsampwidth(2)
        wav.setframerate(SR)
        wav.writeframes((np.clip(pcm,-1,1)*32767).astype('<i2').tobytes())


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--plan', type=Path, default=ROOT/'docs/media/music/suno-edit.json')
    parser.add_argument('--picture', type=Path, default=ROOT/'docs/media/rtl8922-mlg-montage.mp4')
    parser.add_argument('--output', type=Path, default=ROOT/'docs/media/rtl8922-suno-montage.mp4')
    parser.add_argument('--work', type=Path, default=ROOT/'build-media/suno-mix')
    parser.add_argument('--ffmpeg', default=shutil.which('ffmpeg'))
    args = parser.parse_args()
    if not args.ffmpeg:
        parser.error('FFmpeg required')
    args.picture = args.picture.resolve()
    args.output = args.output.resolve()
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.work.mkdir(parents=True, exist_ok=True)
    plan = json.loads(args.plan.read_text())
    picture = json.loads(args.picture.with_suffix('.json').read_text())
    source_path = ROOT/plan['source']
    if hashlib.sha256(source_path.read_bytes()).hexdigest() != plan['source_sha256']:
        raise ValueError('Music source hash mismatch')
    if abs(plan['duration_seconds']-picture['duration_seconds']) > 1e-6:
        raise ValueError('Music edit and picture durations differ')
    duration = picture['duration_seconds']
    count = round(duration*SR)
    source = decode(args.ffmpeg, source_path,
             f"loudnorm=I=-17:TP=-2:LRA=20,equalizer=f=2000:t=q:w=0.6:g={plan['music_midrange_cut_db']}")
    music = np.zeros((count,2),dtype=np.float32)
    previous_end = 0
    normalized_edits = []
    for segment in plan['segments']:
        a,b = round(segment['target_start']*SR),round(segment['target_end']*SR)
        if a != previous_end or b <= a or b > count:
            raise ValueError('Edit must cover the picture once, without gaps or overlaps')
        start = len(source)-(b-a) if segment.get('source_tail') else round(segment['source_start']*SR)
        music[a:b] = take(source,start,b-a)
        normalized_edits.append({**segment,'source_start':start/SR,'source_end':(start+b-a)/SR})
        previous_end = b
    if previous_end != count:
        raise ValueError('Edit does not reach the picture ending')
    # Blend source handles around each fixed picture cut; do not move the drops.
    half = round(plan['crossfade_seconds']*SR/2)
    for old,new in zip(normalized_edits,normalized_edits[1:]):
        if abs(old['source_end']-new['source_start']) < 2/SR:
            continue
        center = round(new['target_start']*SR)
        a,b = center-half,center+half
        outgoing = take(source,round(old['source_end']*SR)-half,2*half)
        incoming = take(source,round(new['source_start']*SR)-half,2*half)
        phase = np.linspace(0,math.pi/2,2*half)[:,None]
        music[a:b] = outgoing*np.cos(phase)+incoming*np.sin(phase)
    voice = np.zeros(count,dtype=np.float32)
    duck = np.zeros(count,dtype=np.float32)
    stems = picture['voiceover']['clips']
    for scene,entry in zip(picture['timeline'],stems,strict=True):
        path = ROOT/'docs/media/voiceover'/entry['file']
        if hashlib.sha256(path.read_bytes()).hexdigest() != entry['sha256']:
            raise ValueError('Voice stem hash mismatch')
        pcm = decode(args.ffmpeg,path,f"atempo={picture['voice_playback_speed']}",channels=1)[:,0]
        a = round((scene['start']+.6)*SR)
        b = a+len(pcm)
        if b > count:
            raise ValueError('Narration extends beyond picture')
        voice[a:b] += pcm
        # Smooth paragraph-level ducking keeps speech clear without pumping
        # the bass between syllables. Music returns during scene transitions.
        attack,release = round(.14*SR),round(.24*SR)
        left,right = max(0,a-attack),min(count,b+release)
        envelope = np.ones(right-left,dtype=np.float32)
        envelope[:a-left] = np.linspace(0,1,a-left)
        envelope[b-left:] = np.linspace(1,0,right-b)
        duck[left:right] = np.maximum(duck[left:right],envelope)
    music *= 10**(plan['music_gain_db']/20)
    music *= (10**(-plan['duck_db']*duck/20))[:,None]
    voice *= 10**(plan['narration_gain_db']/20)
    mixed = music+voice[:,None]
    # Keep the eight timed CRC clicks. Retire the procedural bed, airhorns
    # and fake sub drops so they do not double the supplied song.
    for i in range(8):
        rng = np.random.default_rng(8922+i)
        a = round((picture['timeline'][3]['start']+2+i*.38)*SR)
        n = round(.075*SR)
        t = np.arange(n)/SR
        click = (.08*rng.standard_normal(n)*np.exp(-t*100)
                 +.10*np.sin(2*np.pi*1700*t)*np.exp(-t*70))
        mixed[a:a+n] += click[:,None]
    peak = float(np.max(np.abs(mixed)))
    mixed *= min(1,.92/peak)
    t = np.arange(count)/SR
    mixed *= np.minimum(1,t/.03)[:,None]
    mixed *= np.minimum(1,(duration-t)/.65)[:,None]
    premaster = args.work/'premaster.wav'
    write_wave(premaster,mixed)
    # Two-pass linear loudness normalization with a true-peak ceiling.
    measure = subprocess.run([args.ffmpeg,'-v','info','-i',str(premaster),'-af',
              'loudnorm=I=-16:TP=-1.5:LRA=18:print_format=json','-f','null','-'],
              capture_output=True,text=True,check=True)
    match = re.search(r'\{\s*"input_i".*?\}',measure.stderr,re.S)
    if not match:
        raise ValueError('No loudness measurement returned')
    loudness = json.loads(match[0])
    settings = ('loudnorm=I=-16:TP=-1.5:LRA=18:linear=true:'
        f"measured_I={loudness['input_i']}:measured_TP={loudness['input_tp']}:"
        f"measured_LRA={loudness['input_lra']}:measured_thresh={loudness['input_thresh']}:"
        f"offset={loudness['target_offset']}")
    master = args.work/'master.wav'
    subprocess.run([args.ffmpeg,'-y','-v','error','-i',str(premaster),'-af',settings,
                    '-ar',str(SR),'-c:a','pcm_s24le',str(master)],check=True)
    for extension,audio_codec,bitrate in (('mp4','aac','256k'),('webm','libopus','160k')):
        old = args.picture.with_suffix('.'+extension)
        output = args.output.with_suffix('.'+extension)
        command = [args.ffmpeg,'-y','-v','error','-threads','2','-i',str(old),'-i',str(master),
                   '-map','0:v:0','-map','1:a:0','-c:v','copy','-c:a',audio_codec,'-b:a',bitrate,
                   '-t',str(duration)]
        if extension == 'mp4':
            command += ['-movflags','+faststart']
        subprocess.run(command+[str(output)],check=True)
    for extension in ('jpg','srt','vtt'):
        shutil.copyfile(args.picture.with_suffix('.'+extension),args.output.with_suffix('.'+extension))
    result = {**picture,'edition':'MLG montage parody with user-supplied Suno dubstep',
              'audio':'User-supplied Suno track, neural announcer and original CRC hitmarkers. Procedural score and duplicate airhorns removed.',
              'music_edit':{**plan,'segments':normalized_edits},'mastering':{'target_lufs':-16,'true_peak_ceiling_dbtp':-1.5,'premaster_measurement':loudness},
              'picture_preserved_from':str(args.picture.relative_to(ROOT)),
              'sha256':hashlib.sha256(args.output.read_bytes()).hexdigest(),
              'webm_sha256':hashlib.sha256(args.output.with_suffix('.webm').read_bytes()).hexdigest()}
    args.output.with_suffix('.json').write_text(json.dumps(result,indent=2)+'\n')
    print(f'Created Suno edition: {duration:.2f}s, peak ceiling -1.5 dBTP',flush=True)


if __name__ == '__main__':
    main()
