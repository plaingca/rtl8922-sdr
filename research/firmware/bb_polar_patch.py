#!/usr/bin/env python3
"""Offline pinned BBMCU unrolled NCO/ITQT throughput experiment.

Finite commands only. Mode 1 rewrites NCO, mode 2 rewrites NCO and ITQT,
mode 3 alternates a known 32-sample frequency/amplitude pattern. No driver edits.
"""
import argparse
import hashlib
import json
from pathlib import Path
import struct
from bb_dds_patch import (Assembler, alu, opi, SAVED, HOOK, STUB, OUTPUT,
                          MAILBOX, NCO, SECTION, LOCAL_BASE)
from bb_rom_copy_patch import addi, lw, sw, jump
from bb_image_integrity import refresh_defaults, inspect_defaults
from probe_bb_rom import FIRMWARE_SHA256, require

COMMAND = 0x3FB
MAGIC = 0x504F4C31
AMP = 0xA00082CC
PERIOD = 32
MAX_CYCLES = 131072
F_PATTERN = 0xD39A6C57
A_PATTERN = 0x6B19A3D5
CSR_OUTPUT = OUTPUT + 0x80


def csr(rd, address, source=0, funct3=2):
    return address << 20 | source << 15 | funct3 << 12 | rd << 7 | 0x73


def stub(nops=0, write_buffer=False, buffered_device=False):
    require(0 <= nops <= 8, 'Invalid pacing')
    a = Assembler()
    a.emit(addi(2, 2, -64))
    for i, r in enumerate(SAVED): a.emit(sw(r, 2, 4*i))
    a.constant(5, COMMAND); a.branch(10, 5, 'normal', 1)
    a.constant(6, MAILBOX); a.emit(lw(7, 6, 8))
    a.constant(5, MAGIC); a.branch(7, 5, 'normal', 1)
    a.constant(28, OUTPUT)
    a.emit(sw(5,28,0), lw(7,28,4), addi(7,7,1), sw(7,28,4),
           addi(7,0,1), sw(7,28,8), sw(0,28,36),
           lw(10,6,12), lw(11,6,16), sw(10,28,12), sw(11,28,16))
    a.constant(5,NCO); a.constant(29,AMP)
    a.emit(lw(16,5,0), sw(16,28,20), lw(17,29,0), sw(17,28,28))
    for offset,address in enumerate((0x7C1,0x7C2,0x7C3,0xFD1)):
        a.emit(csr(7,address),sw(7,28,0x80+offset*4))
    a.branch(11,0,'done')
    a.emit(addi(7,0,5)); a.branch(7,11,'invalid',6)
    a.constant(7,MAX_CYCLES); a.branch(7,10,'invalid',6); a.branch(10,0,'invalid')
    if buffered_device:
        # Keep DCache disabled and MergeUC policy zero; only allow the CCA5
        # noncacheable write-through/merge attribute during this finite command.
        a.emit(lw(7,28,0x88));a.constant(6,2<<20);a.emit(alu(7,7,6,6),0x0FF0000F,csr(0,0x7C3,7,1),0x0FF0000F)
        a.constant(6,MAILBOX)
    if write_buffer:
        a.constant(7,1<<20);a.emit(0x0FF0000F,csr(0,0x7C1,7),0x0FF0000F)
    a.emit(csr(7,0x7C1),sw(7,28,0x94),csr(7,0x7C3),sw(7,28,0x9C))
    a.emit(0xB0002373,sw(6,28,40))  # csrr t1,mcycle, as used by native ROM 0x10005452
    a.constant(6,MAILBOX)
    a.emit(addi(7,0,4)); a.branch(11,7,'amp_only')
    a.emit(addi(7,0,5)); a.branch(11,7,'nop_only')
    a.emit(addi(7,0,1)); a.branch(11,7,'single')
    a.emit(addi(7,0,2)); a.branch(11,7,'paired')
    # Two NCO indices 8/24 (2/6 MHz); scalar amplitude /4 and /8.
    a.constant(7,0xFFFFF000); a.emit(alu(12,16,7,7), opi(13,12,8,6), opi(14,12,24,6))
    a.emit(opi(15,17,-64,7), opi(30,15,0x12,6), opi(31,15,0x1B,6))
    a.label('pattern')
    for i in range(PERIOD):
        a.emit(sw(14 if F_PATTERN>>i&1 else 13,5,0), sw(31 if A_PATTERN>>i&1 else 30,29,0))
        a.emit(*([addi(0,0,0)]*nops))
    a.emit(addi(10,10,-1)); a.branch(10,0,'pattern',1); a.j('finished')
    a.label('single')
    for _ in range(PERIOD): a.emit(sw(16,5,0))
    a.emit(addi(10,10,-1)); a.branch(10,0,'single',1); a.j('finished')
    a.label('paired')
    for _ in range(PERIOD): a.emit(sw(16,5,0),sw(17,29,0))
    a.emit(addi(10,10,-1)); a.branch(10,0,'paired',1)
    a.j('finished')
    a.label('amp_only')
    for _ in range(PERIOD): a.emit(sw(17,29,0))
    a.emit(addi(10,10,-1));a.branch(10,0,'amp_only',1);a.j('finished')
    a.label('nop_only')
    for _ in range(PERIOD): a.emit(addi(0,0,0))
    a.emit(addi(10,10,-1));a.branch(10,0,'nop_only',1)
    a.label('finished')
    a.emit(0x0FF0000F,0xB0002373,sw(6,28,44));a.constant(6,MAILBOX)
    if buffered_device:
        a.emit(lw(7,28,0x88),csr(0,0x7C3,7,1),0x0FF0000F)
    if write_buffer:
        a.emit(lw(7,28,0x80),csr(0,0x7C1,7,1),0x0FF0000F)
    a.emit(lw(7,28,12), opi(7,7,5,1), sw(7,28,36), addi(7,0,3))
    a.branch(11,7,'restore',1)
    a.emit(sw(12,5,0))  # End actual RF pattern muted, restore ITQT.
    a.label('restore'); a.emit(sw(17,29,0))
    a.label('done')
    a.emit(lw(7,5,0),sw(7,28,24),lw(7,29,0),sw(7,28,32),addi(7,0,2)); a.j('complete')
    a.label('invalid'); a.emit(addi(7,0,3))
    a.label('complete')
    a.emit(csr(6,0x7C1),sw(6,28,0x90),csr(6,0x7C3),sw(6,28,0x98));a.constant(6,MAILBOX)
    a.emit(0x0FF0000F,sw(7,28,8),0x0FF0000F,lw(7,6,0x84),opi(7,7,1,6),sw(7,6,0x84))
    for i,r in enumerate(SAVED): a.emit(lw(r,2,4*i))
    a.emit(addi(2,2,64),0x00008067)
    a.label('normal')
    for i,r in enumerate(SAVED): a.emit(lw(r,2,4*i))
    a.emit(addi(2,2,64),addi(2,2,-32),sw(1,2,28))
    a.emit(jump(HOOK+4-(STUB+len(a.words)*4)))
    return a.finish(),{k:hex(STUB+v) for k,v in a.labels.items()}


def build(firmware,nops=0,write_buffer=False,buffered_device=False):
    require(hashlib.sha256(firmware).hexdigest()==FIRMWARE_SHA256,'Unpinned firmware')
    offset=SECTION+HOOK-LOCAL_BASE; start=SECTION+STUB-LOCAL_BASE
    require(firmware[offset:offset+4]==bytes.fromhex('011106ce'),'Hook changed')
    code,labels=stub(nops,write_buffer,buffered_device)
    require(STUB+len(code)<OUTPUT,'Stub overlaps output')
    require(not any(firmware[start:SECTION+0x8000]),'Scratch is not padding')
    patched=bytearray(firmware)
    patched[offset:offset+4]=struct.pack('<I',jump(STUB-HOOK)); patched[start:start+len(code)]=code
    regions=[{'file_offset':hex(offset),'bytes':4},{'file_offset':hex(start),'bytes':len(code)}]
    regions.extend(refresh_defaults(firmware,patched))
    report={'schema_version':1,'hardware_access':False,'original_sha256':FIRMWARE_SHA256,
      'patched_sha256':hashlib.sha256(patched).hexdigest(),'stub_bytes':len(code),'labels':labels,
      'command':COMMAND,'magic':hex(MAGIC),'nops_per_pattern_sample':nops,
      'write_buffer_enabled_for_valid_commands':write_buffer,'buffered_device_experiment':buffered_device,
      'write_buffer_control_source':'https://github.com/Ameba-AIoT/ameba-rtos/blob/master/component/soc/common/include/cmsis/cache_riscv.h',
      'period_samples':PERIOD,'frequency_pattern':hex(F_PATTERN),'amplitude_pattern':hex(A_PATTERN),
      'nco_indices':[8,24],'itqt_codes':[0x12,0x1B],'max_cycles':MAX_CYCLES,
      'changed_regions':regions,'integrity':inspect_defaults(patched),'interrupts':'left enabled',
      'scope':'Finite throughput and pattern experiment; not a host streaming interface'}
    return bytes(patched),report


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--firmware',type=Path,required=True);p.add_argument('--output-firmware',type=Path,required=True)
    p.add_argument('--report',type=Path,required=True);p.add_argument('--nops',type=int,default=0)
    p.add_argument('--write-buffer',action='store_true')
    p.add_argument('--buffered-device',action='store_true')
    args=p.parse_args();require(not args.output_firmware.exists() and not args.report.exists(),'Outputs exist')
    require(args.output_firmware.resolve()!=args.report.resolve(),'Output paths must differ')
    data,report=build(args.firmware.read_bytes(),args.nops,args.write_buffer,args.buffered_device)
    args.output_firmware.write_bytes(data);args.output_firmware.chmod(0o600)
    args.report.write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps({'bytes':report['stub_bytes'],'sha256':report['patched_sha256']}))
if __name__=='__main__':main()
