"""Hardware-free instruction execution and buffer ownership checks."""
from pathlib import Path
import struct
import unittest
from unicorn import Uc, UC_ARCH_RISCV, UC_MODE_RISCV32, UC_HOOK_MEM_WRITE
from unicorn.riscv_const import UC_RISCV_REG_X0, UC_RISCV_REG_PC
from bb_fm_patch import (build, stub, COMMAND, MAGIC, BUFFER, CONTROL, BLOCK,
                          HOOK, STUB, OUTPUT, MAILBOX, NCO)
from bb_rom_copy_patch import jump


class FMExecutionTest(unittest.TestCase):
    def execute(self, blocks=1, hold=16, ready=1, cancel=0, command=COMMAND, refill=False):
        cpu = Uc(UC_ARCH_RISCV, UC_MODE_RISCV32)
        cpu.mem_map(0x10010000, 0x20000)
        cpu.mem_map(0xA0000000, 0x20000)
        cpu.mem_map(0x30000000, 0x1000)
        cpu.mem_write(STUB, stub())
        cpu.mem_write(HOOK, struct.pack('<I', jump(STUB-HOOK)))
        cpu.mem_write(MAILBOX+8, struct.pack('<III', MAGIC, blocks, hold))
        cpu.mem_write(CONTROL, struct.pack('<4I', ready, 2, 0, cancel))
        cpu.mem_write(BUFFER, bytes([64, 192])*(BLOCK//2))
        cpu.mem_write(NCO, struct.pack('<I', 0xABCDF123))
        initial = {r:0xB0000000+r*17 for r in range(1,32)}
        initial.update({1:0x30000000,2:0x1002E000,10:command})
        for r,v in initial.items():cpu.reg_write(UC_RISCV_REG_X0+r,v)
        writes=[]
        def write(_cpu,_kind,addr,size,value,_):
            self.assertTrue(initial[2]-64 <= addr < initial[2] or OUTPUT <= addr < OUTPUT+48 or
                            addr in (CONTROL+8,NCO,MAILBOX+0x84),hex(addr))
            if addr==NCO:writes.append(value&0xFFFFFFFF)
            if addr==CONTROL+8 and refill and value:
                sequence=value+2
                cpu.mem_write(CONTROL+((sequence-1)&1)*4,struct.pack("<I",sequence))
        cpu.hook_add(UC_HOOK_MEM_WRITE,write)
        end=0x30000000 if command==COMMAND else HOOK+4
        cpu.emu_start(HOOK,end,count=6000000,timeout=5000000)
        self.assertEqual(cpu.reg_read(UC_RISCV_REG_PC),end)
        for r,v in initial.items():
            self.assertEqual(cpu.reg_read(UC_RISCV_REG_X0+r),v-32 if command!=COMMAND and r==2 else v)
        return struct.unpack('<12I',cpu.mem_read(OUTPUT,48)),writes

    def test_finite_audio_has_correct_density_and_mutes(self):
        result,writes=self.execute()
        self.assertEqual(result[2],2)
        self.assertEqual(result[9],1)
        self.assertEqual(len(writes),BLOCK*16+1)
        self.assertEqual(writes[-1],0xABCDF000)
        for i in (0,1,1022,1023,2046,2047):
            values=writes[i*16:(i+1)*16]
            self.assertEqual(sum((x&4095)==2 for x in values),4 if i%2==0 else 12)

    def test_missing_sequence_or_cancel_mutes_without_reading_audio(self):
        for kwargs,status in (({'ready':0},4),({'ready':3},4),({'cancel':1},5)):
            result,writes=self.execute(**kwargs)
            self.assertEqual(result[2],status)
            self.assertEqual(writes,[0xABCDF000])

    def test_invalid_bounds_do_not_write_nco(self):
        for kwargs in ({'blocks':65},{'hold':15},{'hold':1025}):
            result,writes=self.execute(**kwargs)
            self.assertEqual(result[2],3)
            self.assertEqual(writes,[])

    def test_zero_blocks_readonly_and_normal_command_preserved(self):
        result,writes=self.execute(blocks=0)
        self.assertEqual(result[2],2)
        self.assertEqual(writes,[])
        result,writes=self.execute(command=3)
        self.assertEqual(result,(0,)*12)
        self.assertEqual(writes,[])

    def test_batch_returns_without_muting_and_resume_finishes(self):
        result,writes=self.execute(blocks=9,refill=True)
        self.assertEqual((result[2],result[9]),(6,8))
        self.assertEqual(len(writes),8*BLOCK*16)
        self.assertIn(writes[-1]&4095,(1,2))
        result,writes=self.execute(blocks=9|(8<<8),ready=9)
        self.assertEqual((result[2],result[9]),(2,9))
        self.assertEqual(writes[-1]&4095,0)

    def test_build_keeps_integrity_and_limits_changed_bytes(self):
        path=Path(__file__).resolve().parents[2]/'vendor/rtw89/firmware/rtw8922a_fw-4.bin'
        if not path.exists():self.skipTest('Pinned local firmware absent')
        original=path.read_bytes();patched,report=build(original)
        self.assertTrue(all(x['checksum_matches'] and x['digests_match_code'] for x in report['integrity']))
        allowed=set()
        for r in report['changed_regions']:
            start=int(r['file_offset'],16);allowed.update(range(start,start+r['bytes']))
        self.assertTrue({i for i,(a,b) in enumerate(zip(original,patched)) if a!=b} <= allowed)


if __name__=='__main__':unittest.main()
