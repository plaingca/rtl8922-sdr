"""Offline ISA-level tests: exact paired writes, restoration and rejection."""
import struct
import unittest
from pathlib import Path
from unicorn import Uc, UC_ARCH_RISCV, UC_MODE_RISCV32, UC_HOOK_MEM_WRITE, UC_HOOK_CODE
from unicorn.riscv_const import UC_RISCV_REG_X0, UC_RISCV_REG_PC
from bb_polar_patch import *

class PolarTest(unittest.TestCase):
    def execute(self,mode=3,cycles=3,command=COMMAND,nops=0,write_buffer=False,buffered_device=False):
        cpu=Uc(UC_ARCH_RISCV,UC_MODE_RISCV32)
        for base,size in ((0x10010000,0x20000),(0xA0000000,0x20000),(0x30000000,0x1000)):cpu.mem_map(base,size)
        cpu.mem_write(STUB,stub(nops,write_buffer,buffered_device)[0]);cpu.mem_write(HOOK,struct.pack('<I',jump(STUB-HOOK)))
        cpu.mem_write(MAILBOX+8,struct.pack('<III',MAGIC,cycles,mode))
        cpu.mem_write(NCO,struct.pack('<I',0xABCD0123));cpu.mem_write(AMP,struct.pack('<I',0x12340012))
        initial={r:0x20000000+r*7 for r in range(1,32)};initial.update({1:0x30000000,2:0x1002E000,10:command})
        for r,v in initial.items():cpu.reg_write(UC_RISCV_REG_X0+r,v)
        custom={0x7C1:0x206,0x7C2:0,0x7C3:0x80800000,0xFD1:0x12345678}
        def csr_model(c,pc,size,_):
            w=int.from_bytes(c.mem_read(pc,4),'little')
            address=w>>20
            if w&127==0x73 and address in custom:
                rd=w>>7&31;rs=w>>15&31;kind=w>>12&7
                source=c.reg_read(UC_RISCV_REG_X0+rs);old=custom[address]
                if kind==1:custom[address]=source
                elif kind==2 and rs:custom[address]=old|source
                else:self.assertEqual((kind,rs),(2,0))
                if rd:c.reg_write(UC_RISCV_REG_X0+rd,old)
                c.reg_write(UC_RISCV_REG_PC,pc+4)
        cpu.hook_add(UC_HOOK_CODE,csr_model)
        writes=[]
        cpu.hook_add(UC_HOOK_MEM_WRITE,lambda c,a,addr,s,v,u:writes.append((addr,v&0xFFFFFFFF)))
        end=HOOK+4 if command!=COMMAND else 0x30000000
        cpu.emu_start(HOOK,end,count=100000)
        self.assertEqual(cpu.reg_read(UC_RISCV_REG_PC),end)
        for r,v in initial.items():self.assertEqual(cpu.reg_read(UC_RISCV_REG_X0+r),v-32 if command!=COMMAND and r==2 else v)
        self.assertEqual(custom[0x7C1],0x206);self.assertEqual(custom[0x7C3],0x80800000)
        return struct.unpack('<12I',cpu.mem_read(OUTPUT,48)),[(a,v) for a,v in writes if a in (NCO,AMP)]
    def test_pattern_and_pacing(self):
        for nops in (0,1,4,8):
            result,writes=self.execute(nops=nops)
            expected=[]
            for i in range(96):
                expected.extend([(NCO,0xABCD0000+(24 if F_PATTERN>>(i%32)&1 else 8)),
                                 (AMP,0x12340000+(0x1B if A_PATTERN>>(i%32)&1 else 0x12))])
            self.assertEqual(writes,expected+[(NCO,0xABCD0000),(AMP,0x12340012)])
            self.assertEqual(result[2],2);self.assertEqual(result[9],96)
    def test_write_buffer_preserves_csr_and_pattern(self):
        result,writes=self.execute(write_buffer=True,buffered_device=True)
        self.assertEqual(result[9],96);self.assertEqual(len(writes),194)

    def test_idle_benchmarks(self):
        for mode in (1,2):
            result,writes=self.execute(mode=mode)
            expected=[(NCO,0xABCD0123)] + ([(AMP,0x12340012)] if mode==2 else [])
            self.assertEqual(writes,expected*96+[(AMP,0x12340012)])
    def test_pinned_image_integrity_and_mutation_bounds(self):
        path=Path('vendor/rtw89/firmware/rtw8922a_fw-4.bin')
        if not path.exists():self.skipTest('Pinned firmware unavailable')
        original=path.read_bytes()
        for options in ({},{'nops':8},{'buffered_device':True}):
            patched,report=build(original,**options)
            self.assertTrue(all(r['checksum_matches'] and r['digests_match_code'] for r in report['integrity']))
            allowed=set()
            for r in report['changed_regions']:
                start=int(r['file_offset'],16);allowed.update(range(start,start+r['bytes']))
            self.assertEqual(len(original),len(patched))
            self.assertTrue({i for i,(a,b) in enumerate(zip(original,patched)) if a!=b}<=allowed)

    def test_normal_readonly_and_rejections(self):
        for kw in ({'command':2},{'mode':0},{'mode':6},{'cycles':0},{'cycles':MAX_CYCLES+1}):
            result,writes=self.execute(**kw);self.assertEqual(writes,[])
            if kw.get('mode')==6 or 'cycles' in kw:self.assertEqual(result[2],3)
if __name__=='__main__':unittest.main()
