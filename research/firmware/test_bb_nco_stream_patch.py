"""Execute the real streamed nibble consumer with sequence/timer fault models."""
import struct,unittest
from unicorn import Uc,UC_ARCH_RISCV,UC_MODE_RISCV32,UC_HOOK_CODE,UC_HOOK_MEM_WRITE
from unicorn.riscv_const import UC_RISCV_REG_X0,UC_RISCV_REG_PC
from bb_nco_stream_patch import *

class StreamTest(unittest.TestCase):
    def execute(self,blocks=5,repeats=1,refill=True,cancel=False,extended=False,max_blocks=MAX_BLOCKS):
        c=Uc(UC_ARCH_RISCV,UC_MODE_RISCV32)
        for addr,size in [(0x10000000,0x40000),(0xa0000000,0x20000),(0x30000000,4096)]:c.mem_map(addr,size)
        c.mem_write(STUB,stub(extended,max_blocks));c.mem_write(HOOK,struct.pack('<I',jump(STUB-HOOK)))
        if extended:c.mem_write(LUT,struct.pack('<16I',*EXTENDED_CODEBOOK))
        c.mem_write(0x1000779a,bytes.fromhex('13000000'));c.mem_write(MAILBOX+8,struct.pack('<III',MAGIC,blocks,repeats))
        c.mem_write(CONTROL,struct.pack('<4I',1,2,0,0));c.mem_write(NCO,struct.pack('<I',0x250001))
        def fill(seq):c.mem_write(BUFFER+((seq-1)&1)*BLOCK,bytes([17*((seq+6)%16 if extended else seq%7)])*BLOCK)
        fill(1);fill(2)
        initial={r:0x20000000+r*19 for r in range(1,32)};initial.update({1:0x30000000,2:0x1002e000,10:COMMAND})
        for r,v in initial.items():c.reg_write(UC_RISCV_REG_X0+r,v)
        writes=[];services=[]
        def service(cpu,addr,size,u):
            self.assertEqual(cpu.reg_read(UC_RISCV_REG_X0+10),0x1002c1a4)
            self.assertEqual(cpu.reg_read(UC_RISCV_REG_X0+11),1000000)
            target=cpu.reg_read(UC_RISCV_REG_X0+1)
            for r in SAVED:cpu.reg_write(UC_RISCV_REG_X0+r,0xbad00000+r)
            services.append(addr);cpu.reg_write(UC_RISCV_REG_PC,target)
        def write(cpu,kind,addr,size,value,u):
            if addr==NCO:writes.append(value)
            if addr==CONTROL+8 and value:
                if cancel:c.mem_write(CONTROL+12,struct.pack('<I',1))
                if refill and value+2<=blocks:
                    seq=value+2;fill(seq);c.mem_write(CONTROL+((seq-1)&1)*4,struct.pack('<I',seq))
        c.hook_add(UC_HOOK_CODE,service,begin=0x1000779a,end=0x1000779a)
        c.hook_add(UC_HOOK_MEM_WRITE,write);c.emu_start(HOOK,0x30000000,count=1000000)
        self.assertEqual(c.reg_read(UC_RISCV_REG_PC),0x30000000)
        for r,v in initial.items():self.assertEqual(c.reg_read(UC_RISCV_REG_X0+r),v)
        return struct.unpack('<12I',c.mem_read(OUTPUT,48)),writes,services
    def test_changes_buffers_once_per_owned_sequence_and_preserves_service_context(self):
        out,writes,services=self.execute(repeats=2)
        self.assertEqual((out[2],out[9]),(2,5));self.assertEqual(len(services),5)
        expected=[0x250000|(seq%7) for seq in range(1,6) for _ in range(4096*2)]
        self.assertEqual(writes,expected+[0x250000])
    def test_underrun_and_cancel_mute_without_consuming_stale_buffer(self):
        for kwargs,status,count in [({'refill':False},4,2),({'cancel':True},5,1)]:
            out,writes,_=self.execute(**kwargs)
            self.assertEqual((out[2],out[9]),(status,count));self.assertEqual(writes[-1],0x250000)
            self.assertEqual(len(writes),count*4096+1)
    def test_request_bounds(self):
        for kwargs in [{'blocks':0},{'blocks':1025},{'repeats':0},{'repeats':65}]:
            out,writes,services=self.execute(**kwargs)
            self.assertEqual(out[2],3);self.assertEqual(writes,[0x250000]);self.assertEqual(services,[])
    def test_extended_alphabet_maps_nibbles_without_changing_owned_buffers(self):
        out,writes,_=self.execute(extended=True)
        expected=[0x250000|EXTENDED_CODEBOOK[(seq+6)%16] for seq in range(1,6) for _ in range(4096)]
        self.assertEqual(writes,expected+[0x250000]);self.assertEqual((out[2],out[9]),(2,5))
    def test_long_lora_bound_still_rejects_overflow_and_mutes_on_missing_refill(self):
        out,writes,_=self.execute(blocks=16385,max_blocks=16384)
        self.assertEqual(out[2],3);self.assertEqual(writes,[0x250000])
        out,writes,_=self.execute(blocks=1025,max_blocks=16384,refill=False)
        self.assertEqual((out[2],out[9]),(4,2));self.assertEqual(writes[-1],0x250000)

if __name__=='__main__':unittest.main()
