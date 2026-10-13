"""Execute real finite table dispatch code against an MMIO recording model."""
import struct
import unittest
from pathlib import Path
from unicorn import Uc,UC_ARCH_RISCV,UC_MODE_RISCV32,UC_HOOK_MEM_WRITE
from unicorn.riscv_const import UC_RISCV_REG_X0,UC_RISCV_REG_PC
from bb_polar_table_patch import *

class TableTest(unittest.TestCase):
    def execute(self,samples=16,repeats=3,command=COMMAND,packing_bits=32):
        c=Uc(UC_ARCH_RISCV,UC_MODE_RISCV32)
        for p,n in ((0x10010000,0x20000),(0xA0000000,0x20000),(0x30000000,4096)):c.mem_map(p,n)
        c.mem_write(HOOK,struct.pack('<I',jump(STUB-HOOK)));c.mem_write(STUB,stub(packing_bits==4,packing_bits)[0])
        c.mem_write(MAILBOX+8,struct.pack('<III',MAGIC,repeats,samples))
        data=[((i%7+1)*9)<<16 | ((i+4)&4095) for i in range(16)]
        if packing_bits==4:
            data=[0,1,6,2,0,5,3,4]*2
            c.mem_write(TABLE,struct.pack('<2I',*[sum(data[i+j]<<(4*j) for j in range(8)) for i in (0,8)]))
        else:c.mem_write(TABLE,struct.pack('<16I',*data))
        c.mem_write(NCO,struct.pack('<I',0xABCD0010));c.mem_write(AMP,struct.pack('<I',0x12340012))
        initial={r:0x20000000+r*7 for r in range(1,32)};initial.update({1:0x30000000,2:0x1002E000,10:command})
        for r,v in initial.items():c.reg_write(UC_RISCV_REG_X0+r,v)
        writes=[];c.hook_add(UC_HOOK_MEM_WRITE,lambda c,a,p,s,v,u:writes.append((p,v&0xFFFFFFFF)))
        end=HOOK+4 if command!=COMMAND else 0x30000000;c.emu_start(HOOK,end,count=100000)
        self.assertEqual(c.reg_read(UC_RISCV_REG_PC),end)
        for r,v in initial.items():self.assertEqual(c.reg_read(UC_RISCV_REG_X0+r),v-32 if r==2 and command!=COMMAND else v)
        return struct.unpack('<12I',c.mem_read(OUTPUT,48)),[(p,v) for p,v in writes if p in (NCO,AMP)],data
    def test_table_sequence_and_autonomous_mute(self):
        out,writes,data=self.execute();expected=[]
        for _ in range(3):
            for v in data:expected.extend([(NCO,0xABCD0000|(v&4095)),(AMP,0x12340000|((v>>16)&63))])
        self.assertEqual(writes,expected+[(NCO,0xABCD0000),(AMP,0x12340012)])
        self.assertEqual(out[9],48);self.assertEqual(out[2],2)
    def test_pinned_firmware_checksum_and_bounds(self):
        path=Path('vendor/rtw89/firmware/rtw8922a_fw-4.bin')
        if not path.exists():self.skipTest('Pinned firmware unavailable')
        original=path.read_bytes();patched,r=build(original)
        self.assertTrue(all(x['checksum_matches'] and x['digests_match_code'] for x in r['integrity']))
        self.assertLessEqual(STUB+r['stub_bytes'],TABLE)
        allowed=set()
        for region in r['changed_regions']:
            off=int(region['file_offset'],16);allowed.update(range(off,off+region['bytes']))
        self.assertEqual(len(original),len(patched))
        self.assertTrue({i for i,(a,b) in enumerate(zip(original,patched)) if a!=b}<=allowed)

    def test_invalid_and_normal_do_not_touch_peripherals(self):
        for k in ({'samples':0},{'samples':15},{'samples':MAX_SAMPLES+8},{'repeats':0},{'repeats':MAX_REPEATS+1},{'command':3}):
            out,writes,_=self.execute(**k);self.assertEqual(writes,[])
    def test_nibble_order_mute_and_no_loop_amplitude_stores(self):
        out,writes,data=self.execute(packing_bits=4)
        expected=[(NCO,0xABCD0000|v) for _ in range(3) for v in data]
        self.assertEqual(writes,expected+[(NCO,0xABCD0000),(AMP,0x12340012)])
        self.assertEqual(out[9],48);self.assertEqual(out[2],2)
        for samples in [0,15,8193,8200]:
            out,writes,_=self.execute(samples=samples,packing_bits=4)
            self.assertEqual(writes,[])
    def test_original_nco_image_unchanged_and_nibbles_stay_in_owned_ram(self):
        path=Path('vendor/rtw89/firmware/rtw8922a_fw-4.bin')
        if not path.exists():self.skipTest('Pinned firmware unavailable')
        original=path.read_bytes();old,r=build(original,True)
        self.assertEqual(r['patched_sha256'],'c130bdf3f62142836ddb351563c81c613587beb5efa735c3b2f2542d44f17364')
        new,r=build(original,True,4)
        self.assertEqual(r['max_samples'],8192)
        self.assertLessEqual(TABLE+r['max_samples']//2,OUTPUT)
        self.assertTrue(all(x['checksum_matches'] and x['digests_match_code'] for x in r['integrity']))
if __name__=='__main__':unittest.main()
