#!/usr/bin/env python3
"""Offline pinned finite paired polar table player for BBMCU OFDM experiments."""
import argparse
import hashlib
import json
from pathlib import Path
import struct
from bb_dds_patch import Assembler,alu,opi,SAVED,HOOK,STUB,OUTPUT,MAILBOX,NCO,SECTION,LOCAL_BASE
from bb_rom_copy_patch import addi,lw,sw,jump
from bb_image_integrity import refresh_defaults,inspect_defaults
from probe_bb_rom import FIRMWARE_SHA256,require
from bb_polar_patch import AMP,csr

COMMAND=0x3FA
MAGIC=0x504F4631
TABLE=0x10016800
MAX_SAMPLES=1024
MAX_REPEATS=4096


def stub(nco_only=False,packing_bits=32):
    require(packing_bits in (4,32) and (packing_bits==32 or nco_only),'Packed nibbles require NCO-only playback')
    max_samples=MAX_SAMPLES*(32//packing_bits)
    a=Assembler();a.emit(addi(2,2,-64))
    for i,r in enumerate(SAVED):a.emit(sw(r,2,4*i))
    a.constant(5,COMMAND);a.branch(10,5,'normal',1)
    a.constant(6,MAILBOX);a.emit(lw(7,6,8));a.constant(5,MAGIC);a.branch(7,5,'normal',1)
    a.constant(28,OUTPUT)
    a.emit(sw(5,28,0),lw(7,28,4),addi(7,7,1),sw(7,28,4),addi(7,0,1),sw(7,28,8),sw(0,28,36),
           lw(10,6,12),lw(11,6,16),sw(10,28,12),sw(11,28,16))
    a.constant(5,NCO);a.constant(29,AMP)
    a.emit(lw(16,5,0),lw(17,29,0),sw(16,28,20),sw(17,28,28))
    a.constant(7,MAX_REPEATS);a.branch(7,10,'invalid',6);a.branch(10,0,'invalid')
    a.constant(7,max_samples);a.branch(7,11,'invalid',6);a.branch(11,0,'invalid')
    a.emit(opi(7,11,7,7));a.branch(7,0,'invalid',1)
    a.constant(7,0xFFFFF000);a.emit(alu(30,16,7,7),opi(31,17,-64,7))
    a.constant(14,TABLE)
    a.emit(opi(15,11,1,5) if packing_bits==4 else opi(15,11,2,1),alu(15,15,14))
    a.emit(csr(7,0xB00),sw(7,28,40))
    a.label('frame');a.constant(14,TABLE)
    a.label('samples')
    if packing_bits==4:
        a.emit(lw(7,14,0))
        for index in range(8):
            a.emit(opi(12,7,15,7),alu(12,12,30,6),sw(12,5,0))
            if index!=7:a.emit(opi(7,7,4,5))
        a.emit(addi(14,14,4))
    else:
        for offset in range(0,32,4):
            a.emit(lw(7,14,offset),opi(12,7,20,1),opi(12,12,20,5),alu(12,12,30,6),sw(12,5,0))
            if not nco_only:a.emit(opi(13,7,16,5),opi(13,13,63,7),alu(13,13,31,6),sw(13,29,0))
        a.emit(addi(14,14,32))
    a.branch(14,15,'samples',1)
    a.emit(addi(10,10,-1));a.branch(10,0,'frame',1)
    a.emit(0x0FF0000F,csr(7,0xB00),sw(7,28,44),lw(7,28,12),0x02B383B3,sw(7,28,36),
           sw(30,5,0),sw(17,29,0),lw(7,5,0),sw(7,28,24),lw(7,29,0),sw(7,28,32),addi(7,0,2))
    a.j('complete')
    a.label('invalid');a.emit(addi(7,0,3))
    a.label('complete');a.emit(0x0FF0000F,sw(7,28,8),0x0FF0000F,lw(7,6,0x84),opi(7,7,1,6),sw(7,6,0x84))
    for i,r in enumerate(SAVED):a.emit(lw(r,2,4*i))
    a.emit(addi(2,2,64),0x00008067)
    a.label('normal')
    for i,r in enumerate(SAVED):a.emit(lw(r,2,4*i))
    a.emit(addi(2,2,64),addi(2,2,-32),sw(1,2,28));a.emit(jump(HOOK+4-(STUB+len(a.words)*4)))
    return a.finish(),{k:hex(STUB+v) for k,v in a.labels.items()}


def build(firmware,nco_only=False,packing_bits=32):
    require(hashlib.sha256(firmware).hexdigest()==FIRMWARE_SHA256,'Unpinned firmware')
    off=SECTION+HOOK-LOCAL_BASE;start=SECTION+STUB-LOCAL_BASE
    require(firmware[off:off+4]==bytes.fromhex('011106ce'),'Hook changed')
    code,labels=stub(nco_only,packing_bits);require(STUB+len(code)<=TABLE,'Stub overlaps table')
    require(TABLE+MAX_SAMPLES*4<=OUTPUT,'Table overlaps output')
    require(not any(firmware[start:SECTION+0x8000]),'Scratch is not padding')
    patched=bytearray(firmware);patched[off:off+4]=struct.pack('<I',jump(STUB-HOOK));patched[start:start+len(code)]=code
    regions=[{'file_offset':hex(off),'bytes':4},{'file_offset':hex(start),'bytes':len(code)}];regions.extend(refresh_defaults(firmware,patched))
    report={'schema_version':1,'hardware_access':False,'original_sha256':FIRMWARE_SHA256,
       'patched_sha256':hashlib.sha256(patched).hexdigest(),'stub_bytes':len(code),'labels':labels,
       'command':COMMAND,'magic':hex(MAGIC),'table_local':hex(TABLE),'max_samples':MAX_SAMPLES*(32//packing_bits),'max_repeats':MAX_REPEATS,
       'nco_only':nco_only,'packing_bits':packing_bits,
       'packing':('eight low-to-high 4-bit NCO indices per 32-bit word; zero/mute allowed' if packing_bits==4 else
                  'low12 signed NCO index, zero allowed; amplitude fixed during loop' if nco_only else
                  'low12 signed NCO index, bits21:16 ITQT code; upper register fields preserved'),
       'changed_regions':regions,'integrity':inspect_defaults(patched),'interrupts':'left enabled',
       'scope':('Finite NCO-only mute/frequency table; no amplitude stores in loop' if nco_only else
                'Finite repeating preloaded polar table; no host sample refill or 20 MS/s qualification')}
    return bytes(patched),report

def main():
    p=argparse.ArgumentParser(description=__doc__)
    for name in ('firmware','output-firmware','report'):p.add_argument('--'+name,type=Path,required=True)
    p.add_argument('--nco-only',action='store_true',help='One NCO store per table entry, including zero/mute; no amplitude stores in the loop')
    p.add_argument('--packing-bits',type=int,default=32,choices=(4,32),help='Four-bit NCO-only packing extends the table to 8192 commands in the same RAM')
    a=p.parse_args();require(not a.output_firmware.exists() and not a.report.exists(),'Outputs exist')
    require(a.output_firmware.resolve()!=a.report.resolve(),'Outputs must differ')
    data,r=build(a.firmware.read_bytes(),a.nco_only,a.packing_bits);a.output_firmware.write_bytes(data);a.output_firmware.chmod(0o600)
    a.report.write_text(json.dumps(r,indent=2)+'\n');print(json.dumps({'stub_bytes':r['stub_bytes'],'sha256':r['patched_sha256']}))
if __name__=='__main__':main()
