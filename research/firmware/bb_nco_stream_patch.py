#!/usr/bin/env python3
"""Bounded, sequence-owned NCO nibble stream in the established padding RAM."""
import argparse,hashlib,json,struct
from pathlib import Path
from bb_dds_patch import Assembler,alu,opi,HOOK,STUB,OUTPUT,NCO,MAILBOX,SAVED
from bb_rom_copy_patch import SECTION,LOCAL_BASE,addi,lw,sw,jump
from bb_image_integrity import refresh_defaults,inspect_defaults
from probe_bb_rom import FIRMWARE_SHA256,require
COMMAND=0x3FA;MAGIC=0x504F4631;BUFFER=0x10016800;BLOCK=2048;CONTROL=OUTPUT+0x40;MAX_BLOCKS=1024
LUT=0x10017880
EXTENDED_CODEBOOK=[0,1,2,3,4,5,6,8,9,12,13,16,17,24,32,33]

def stub(extended=False,max_blocks=MAX_BLOCKS):
    require(1<=max_blocks<=16384,'Stream block bound')
    a=Assembler();a.emit(addi(2,2,-64))
    for i,r in enumerate(SAVED):a.emit(sw(r,2,i*4))
    a.constant(5,COMMAND);a.branch(10,5,'normal',1);a.constant(6,MAILBOX)
    a.emit(lw(7,6,8));a.constant(5,MAGIC);a.branch(7,5,'normal',1);a.constant(28,OUTPUT)
    a.emit(sw(5,28,0),lw(7,28,4),addi(7,7,1),sw(7,28,4),addi(7,0,1),sw(7,28,8),
           lw(10,6,12),lw(11,6,16),sw(10,28,12),sw(11,28,16),sw(0,28,36))
    a.constant(5,NCO);a.emit(lw(7,5,0),sw(7,28,20));a.constant(17,0xFFFFF000);a.emit(alu(17,17,7,7))
    a.constant(7,max_blocks);a.branch(7,10,'invalid',6);a.branch(10,0,'invalid')
    a.emit(addi(7,0,64));a.branch(7,11,'invalid',6);a.branch(11,0,'invalid')
    a.constant(30,CONTROL);a.emit(addi(29,0,0),sw(29,30,8),0xB00023F3,sw(7,28,40))
    a.label('block')
    a.emit(addi(2,2,-64))
    for i,r in enumerate(SAVED):a.emit(sw(r,2,i*4))
    a.constant(10,0x1002C1A4);a.constant(11,1000000);a.constant(5,0x1000779A);a.emit(5<<15|1<<7|0x67)
    for i,r in enumerate(SAVED):a.emit(lw(r,2,i*4))
    a.emit(addi(2,2,64),lw(7,30,12));a.branch(7,0,'cancelled',1)
    a.emit(opi(31,29,1,7),opi(31,31,2,1),alu(31,31,30),lw(7,31,0),addi(12,29,1));a.branch(7,12,'underrun',1)
    a.emit(0x0FF0000F,opi(13,29,1,7),opi(13,13,11,1));a.constant(7,BUFFER);a.emit(alu(13,13,7))
    a.constant(7,BLOCK);a.emit(alu(15,13,7),addi(16,11,0))
    if extended:a.constant(31,LUT)
    a.label('repeat');a.emit(addi(14,13,0))
    a.label('words');a.emit(lw(7,14,0))
    for i in range(8):
        a.emit(opi(12,7,15,7))
        if extended:a.emit(opi(12,12,2,1),alu(12,12,31),lw(12,12,0))
        a.emit(alu(12,12,17,6),sw(12,5,0))
        if i!=7:a.emit(opi(7,7,4,5))
    a.emit(addi(14,14,4));a.branch(14,15,'words',1)
    a.emit(addi(16,16,-1));a.branch(16,0,'repeat',1)
    a.emit(addi(29,29,1),addi(10,10,-1),sw(29,30,8),sw(29,28,36),0x0FF0000F);a.branch(10,0,'block',1)
    a.emit(addi(7,0,2));a.j('mute')
    a.label('underrun');a.emit(addi(7,0,4));a.j('mute')
    a.label('cancelled');a.emit(addi(7,0,5));a.j('mute')
    a.label('invalid');a.emit(addi(7,0,3))
    a.label('mute');a.emit(sw(17,5,0),addi(12,7,0),0xB00023F3,sw(7,28,44),addi(7,12,0),0x0FF0000F,sw(7,28,8),0x0FF0000F,
        lw(7,5,0),sw(7,28,24),lw(7,6,0x84),opi(7,7,1,6),sw(7,6,0x84))
    for i,r in enumerate(SAVED):a.emit(lw(r,2,i*4))
    a.emit(addi(2,2,64),0x00008067)
    a.label('normal')
    for i,r in enumerate(SAVED):a.emit(lw(r,2,i*4))
    a.emit(addi(2,2,64),addi(2,2,-32),sw(1,2,28));a.emit(jump(HOOK+4-(STUB+len(a.words)*4)))
    return a.finish()

def build(original,extended=False,max_blocks=MAX_BLOCKS):
    require(hashlib.sha256(original).hexdigest()==FIRMWARE_SHA256,'Unpinned firmware')
    code=stub(extended,max_blocks);off=SECTION+HOOK-LOCAL_BASE;start=SECTION+STUB-LOCAL_BASE
    require(original[off:off+4]==bytes.fromhex('011106ce'),'Hook changed')
    require(not any(original[start:SECTION+0x8000]),'Scratch not empty')
    require(STUB+len(code)<=BUFFER and BUFFER+BLOCK*2<=OUTPUT and CONTROL+16<=LOCAL_BASE+0x8000,'RAM overlap')
    out=bytearray(original);out[off:off+4]=struct.pack('<I',jump(STUB-HOOK));out[start:start+len(code)]=code
    regions=[{'file_offset':hex(off),'bytes':4},{'file_offset':hex(start),'bytes':len(code)}]
    if extended:
        lut=SECTION+LUT-LOCAL_BASE;require(BUFFER+2*BLOCK<=LUT and LUT+64<=OUTPUT,'LUT overlap')
        out[lut:lut+64]=struct.pack('<16I',*EXTENDED_CODEBOOK);regions.append({'file_offset':hex(lut),'bytes':64})
    regions+=refresh_defaults(original,out)
    return bytes(out),{'schema_version':1,'hardware_access':False,'original_sha256':FIRMWARE_SHA256,
        'patched_sha256':hashlib.sha256(out).hexdigest(),'stub_bytes':len(code),'nco_only':True,'packing_bits':4,
        'stream_consumer':True,'max_samples':8192,'block_bytes':BLOCK,'block_commands':BLOCK*2,'max_blocks':max_blocks,
        'nco_codebook':EXTENDED_CODEBOOK if extended else list(range(7)),'lookup_local':hex(LUT) if extended else None,
        'command':COMMAND,'magic':hex(MAGIC),'buffer_local':hex(BUFFER),'control_local':hex(CONTROL),
        'changed_regions':regions,'integrity':inspect_defaults(out),'scope':'Finite host-fed double-buffered nibble commands; underrun/cancel/final completion mute; native timer serviced per block'}

if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    for name in ['firmware','output-firmware','report']:p.add_argument('--'+name,type=Path,required=True)
    p.add_argument('--extended',action='store_true',help='Experimental positive-frequency alphabet through index 33; same nibble transport')
    p.add_argument('--max-blocks',type=int,choices=(1024,16384),default=1024,help='Explicit longer finite LoRa packet budget; default unchanged')
    a=p.parse_args();require(not a.output_firmware.exists() and not a.report.exists(),'Output exists')
    data,r=build(a.firmware.read_bytes(),a.extended,a.max_blocks);a.output_firmware.write_bytes(data);a.output_firmware.chmod(0o600)
    a.report.write_text(json.dumps(r,indent=2)+'\n');print(json.dumps({'stub_bytes':r['stub_bytes'],'sha256':r['patched_sha256']}))
