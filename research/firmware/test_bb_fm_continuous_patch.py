"""Execute continuous consumer; emulate only the previously traced ROM service."""
import struct,unittest
from unicorn import Uc,UC_ARCH_RISCV,UC_MODE_RISCV32,UC_HOOK_CODE,UC_HOOK_MEM_WRITE
from unicorn.riscv_const import UC_RISCV_REG_X0,UC_RISCV_REG_PC
from bb_fm_continuous_patch import *


class ContinuousTest(unittest.TestCase):
    def test_crosses_old_batch_boundary_with_one_command_and_preserves_context(self):
        cpu=Uc(UC_ARCH_RISCV,UC_MODE_RISCV32)
        cpu.mem_map(0x10000000,0x40000);cpu.mem_map(0xA0000000,0x20000);cpu.mem_map(0x30000000,4096)
        cpu.mem_write(0x1000779A,bytes.fromhex("13000000"));cpu.mem_write(STUB,stub());cpu.mem_write(HOOK,struct.pack('<I',jump(STUB-HOOK)))
        cpu.mem_write(MAILBOX+8,struct.pack('<III',MAGIC,9,16))
        cpu.mem_write(CONTROL,struct.pack('<4I',1,2,0,0))
        cpu.mem_write(BUFFER,bytes([128])*4096);cpu.mem_write(NCO,struct.pack('<I',0x250001))
        initial={r:0xB0000000+r for r in range(1,32)};initial.update({1:0x30000000,2:0x1002E000,10:COMMAND})
        for r,v in initial.items():cpu.reg_write(UC_RISCV_REG_X0+r,v)
        services=[];writes=[]
        def service(c,addr,size,unused):
            if addr!=0x1000779A:return
            self.assertEqual(c.reg_read(UC_RISCV_REG_X0+10),0x1002C1A4)
            self.assertEqual(c.reg_read(UC_RISCV_REG_X0+11),1000000)
            target=c.reg_read(UC_RISCV_REG_X0+1)
            for r in SAVED:c.reg_write(UC_RISCV_REG_X0+r,0xBAD00000+r)
            services.append(addr);c.reg_write(UC_RISCV_REG_PC,target)
        def write(c,kind,addr,size,value,unused):
            if addr==CONTROL+8 and value:
                seq=value+2;c.mem_write(CONTROL+((seq-1)&1)*4,struct.pack('<I',seq))
            if addr==NCO:writes.append(value)
        cpu.hook_add(UC_HOOK_CODE,service,begin=0x1000779A,end=0x1000779A)
        cpu.hook_add(UC_HOOK_MEM_WRITE,write)
        cpu.emu_start(HOOK,0x30000000,count=8000000)
        self.assertEqual(cpu.reg_read(UC_RISCV_REG_PC),0x30000000)
        result=struct.unpack('<12I',cpu.mem_read(OUTPUT,48))
        self.assertEqual((result[1],result[2],result[9]),(1,2,9))
        self.assertEqual(len(services),9)
        self.assertEqual(len(writes),9*2048*16+1)
        self.assertEqual(writes[-1],0x250000)
        for r,v in initial.items():self.assertEqual(cpu.reg_read(UC_RISCV_REG_X0+r),v)


if __name__=='__main__':unittest.main()
