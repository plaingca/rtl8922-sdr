#!/usr/bin/env python3
"""Optionally regenerate the demo's synthetic actor. Never opens radio hardware.

Install qwen-tts==0.1.1 in an isolated environment. Model weights stay in the
local Hugging Face cache; only compressed creative voice stems are published.
"""
import argparse
import hashlib
import importlib.util
import json
from pathlib import Path
import shutil
import subprocess
import time

MODEL = 'Qwen/Qwen3-TTS-12Hz-1.7B-CustomVoice'
REVISION = '0c0e3051f131929182e2c023b9537f8b1c68adfe'
ROOT = Path(__file__).resolve().parents[1]
DELIVERY = (
    'Speak English as an outrageously enthusiastic American used car salesman '
    'hosting a ridiculous gaming montage. A warm, natural, smiling male voice. '
    'Very expressive, playful and excited, with big pitch changes, punchy '
    'emphasis, comic pauses and a slightly breathless sales pitch. '
    'Really sell the punchlines. Sound like a lively human actor, not a robot '
    'or a calm audiobook narrator. Keep every word clear. No background music.'
)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, default=ROOT/'docs/media/voiceover')
    parser.add_argument('--work', type=Path, default=ROOT/'build-media/voiceover')
    parser.add_argument('--threads', type=int, default=4)
    args = parser.parse_args()
    import torch
    import soundfile as sf
    from huggingface_hub import snapshot_download
    from qwen_tts import Qwen3TTSModel
    torch.set_num_threads(args.threads)
    torch.set_num_interop_threads(1)
    torch.manual_seed(8922)
    spec = importlib.util.spec_from_file_location('demo_renderer', ROOT/'tools/render-demo-video.py')
    renderer = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(renderer)
    path = snapshot_download(MODEL, revision=REVISION, max_workers=2)
    # CPU only: leave the shared GPU and live receiver resources alone.
    print('Loading neural actor on CPU', flush=True)
    model = Qwen3TTSModel.from_pretrained(path, device_map='cpu',
                dtype=torch.bfloat16, attn_implementation='eager')
    args.output.mkdir(parents=True, exist_ok=True)
    args.work.mkdir(parents=True, exist_ok=True)
    ffmpeg = shutil.which('ffmpeg')
    if not ffmpeg:
        parser.error('FFmpeg required')
    clips = []
    for i, scene in enumerate(renderer.SCENES, 1):
        start = time.monotonic()
        torch.manual_seed(8922+i)
        print(f'Voicing scene {i}: {scene[2]}', flush=True)
        wavs, sr = model.generate_custom_voice(text=scene[2], language='English',
                    speaker='Ryan', instruct=DELIVERY, max_new_tokens=700,
                    do_sample=True, temperature=.8, top_p=.95,
                    repetition_penalty=1.05)
        wav = args.work/f'scene-{i}.wav'
        sf.write(wav, wavs[0], sr, subtype='PCM_16')
        output = args.output/f'scene-{i}.ogg'
        subprocess.run([ffmpeg, '-y', '-v', 'error', '-i', str(wav),
            '-af', 'loudnorm=I=-17:TP=-2:LRA=11', '-c:a', 'libopus', '-b:a', '96k', str(output)], check=True)
        duration = len(wavs[0])/sr
        clips.append({'file':output.name, 'text':scene[2], 'duration_seconds':duration,
                      'sha256':hashlib.sha256(output.read_bytes()).hexdigest()})
        print(f'Scene {i}: {duration:.2f}s of speech in {time.monotonic()-start:.1f}s', flush=True)
    manifest = {'model':MODEL, 'revision':REVISION, 'model_license':'Apache-2.0',
                'model_url':f'https://huggingface.co/{MODEL}', 'speaker':'Ryan',
                'synthetic_voice':True, 'delivery_instruction':DELIVERY,
                'seed':8922, 'device':'cpu', 'package':'qwen-tts==0.1.1', 'clips':clips}
    (args.output/'manifest.json').write_text(json.dumps(manifest, indent=2)+'\n')


if __name__ == '__main__':
    main()
