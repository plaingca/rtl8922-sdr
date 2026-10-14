#!/usr/bin/env python3
"""Prepare a known mono FM payload offline; unsigned bytes are NCO fractions."""
import argparse
import hashlib
import json
from pathlib import Path
import wave
import numpy as np


def write_wav(path, samples, rate):
    with wave.open(str(path), 'wb') as w:
        w.setnchannels(1); w.setsampwidth(2); w.setframerate(rate)
        w.writeframes(np.rint(np.clip(samples, -1, 1)*32767).astype('<i2').tobytes())


def prepare(rate=32000, speech=None):
    if rate != 32000:raise ValueError("This experiment requires 32 kHz source audio")
    def tone(hz, seconds):
        t=np.arange(round(seconds*rate))/rate
        return .7*np.sin(2*np.pi*hz*t)*np.minimum(1,np.minimum(t/.005,(seconds-t)/.005))
    t=np.arange(round(.12*rate))/rate
    pilot=.7*np.sin(2*np.pi*(700*t+.5*(5000/.12)*t*t))*np.minimum(1,np.minimum(t/.005,(.12-t)/.005))
    preamble=np.concatenate([np.zeros(round(.02*rate)),pilot,np.zeros(round(.04*rate))])
    if speech:
        with wave.open(str(speech),'rb') as w:
            if w.getnchannels()!=1 or w.getsampwidth()!=2:raise ValueError('Expected mono PCM16 WAV')
            source=np.frombuffer(w.readframes(w.getnframes()),dtype='<i2').astype(float)/32768
            original_rate=w.getframerate()
        t=np.arange(round(len(source)*rate/original_rate))/rate
        body=np.interp(t,np.arange(len(source))/original_rate,source)
        body=body/max(np.max(abs(body)),1e-12)*.9
    else:
        body=np.concatenate([tone(440,.12),tone(2000,.12),tone(3300,.12),tone(700,.12)])
    reference=np.concatenate([preamble,body,np.zeros(round(.03*rate))])
    alpha=np.exp(-1/(rate*75e-6))
    emphasized=(reference-alpha*np.r_[0,reference[:-1]])/(1-alpha)
    scale=max(np.max(abs(emphasized)),1)
    deviation=emphasized/scale
    payload=np.rint(128+76*deviation).astype(np.uint8)
    payload=np.pad(payload,(0,(-len(payload))%2048),constant_values=128)
    if len(payload)>64*2048:raise ValueError('Audio exceeds finite 64-block limit')
    return payload,reference/scale,{'audio_rate':rate,'preamble_samples':len(preamble),'pilot':'700 to 5700 Hz linear chirp, 120 ms',
            'reference_samples':len(reference),'payload_samples':len(payload),'blocks':len(payload)//2048,
            'preemphasis_seconds':75e-6,'nominal_peak_deviation_hz':76*250000/256,
            'carrier_offset_hz':375000,'source':str(speech) if speech else 'generated 440/2000/3300/700 Hz sequence',
            'reference_scale':scale}


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--speech',type=Path)
    p.add_argument('--rate',type=int,default=32000)
    p.add_argument('--prefix',required=True,type=Path)
    args=p.parse_args()
    paths=[args.prefix.with_suffix(s) for s in ('.bin','.wav','.json')]
    if any(p.exists() for p in paths):raise ValueError('Output exists')
    payload,reference,metadata=prepare(args.rate,args.speech)
    paths[0].write_bytes(payload.tobytes());write_wav(paths[1],reference,args.rate)
    metadata['payload_sha256']=hashlib.sha256(payload.tobytes()).hexdigest()
    paths[2].write_text(json.dumps(metadata,indent=2)+'\n')
    print(json.dumps(metadata))


if __name__=='__main__':main()
