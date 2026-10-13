#!/usr/bin/env python3
"""Synthesize the known test phrase to a local WAV; no audio playback or RF."""
import argparse
from pathlib import Path
p=argparse.ArgumentParser(description=__doc__)
p.add_argument("--output",required=True,type=Path)
args=p.parse_args()
if args.output.exists():raise ValueError("Output exists")
import ctypes as c, wave
lib=c.CDLL('libespeak-ng.so.1')
lib.espeak_Initialize.argtypes=[c.c_int,c.c_int,c.c_char_p,c.c_int]
rate=lib.espeak_Initialize(2,0,None,0x8000)
assert rate>0,rate
chunks=[]
@c.CFUNCTYPE(c.c_int,c.POINTER(c.c_short),c.c_int,c.c_void_p)
def cb(data,n,event):
 if data and n:chunks.append(c.string_at(data,n*2))
 return 0
lib.espeak_SetSynthCallback.argtypes=[type(cb)];lib.espeak_SetSynthCallback(cb)
lib.espeak_SetVoiceByName.argtypes=[c.c_char_p];lib.espeak_SetVoiceByName(b'en-us')
lib.espeak_SetParameter(1,170,0)
lib.espeak_Synth.argtypes=[c.c_char_p,c.c_size_t,c.c_uint,c.c_int,c.c_uint,c.c_uint,c.c_void_p,c.c_void_p]
text=b'This is the Realtek radio. Testing one, two, three.'
assert lib.espeak_Synth(text,len(text)+1,0,1,0,1,None,None)==0
out=str(args.output)
with wave.open(out,'wb') as w:
 w.setnchannels(1);w.setsampwidth(2);w.setframerate(rate);w.writeframes(b''.join(chunks))
print(out,rate,sum(map(len,chunks))/2/rate)
