200141ce c.addi sp, -0x10
200141d0 c.swsp s0, 8(sp)
200141d2 c.swsp ra, 0xc(sp)
200141d4 addi a5, zero, 0x20
200141d8 c.sw a5, 4(a0)
200141da lui a5, 0x20202
200141de lw a5, 0x164(a5)
200141e2 c.mv s0, a0
200141e4 c.mv a2, a0
200141e6 c.li a3, 0
200141e8 addi a1, zero, 0x20
200141ec c.li a0, 0
200141ee c.jalr a5
200141f0 c.beqz a0, 0x1a
200141f2 lui a5, 0x20202
200141f6 lw a5, 0x340(a5)
200141fa c.li a0, 2
200141fc c.lui a1, 0x10
200141fe c.jalr a5
20014200 c.li a0, 4
20014202 c.lwsp ra, 0xc(sp)
20014204 c.lwsp s0, 8(sp)
20014206 c.addi sp, 0x10
20014208 c.jr ra
2001420a c.lw a5, 0(s0)
2001420c c.bnez a5, -0xa
2001420e lui a5, 0x20202
20014212 lw a5, 0x340(a5)
20014216 c.li a0, 2
20014218 c.lui a1, 8
2001421a c.jalr a5
2001421c c.li a0, 2
2001421e c.j -0x1c
20014220 lui a5, 0x20203
20014224 addi a5, a5, 0x580
20014228 c.lw a4, 8(a5)
2001422a c.addi16sp sp, -0x50
2001422c c.swsp s4, 0x38(sp)
2001422e lw s4, 8(a4)
20014232 c.swsp ra, 0x4c(sp)
20014234 c.swsp s0, 0x48(sp)
20014236 c.swsp s1, 0x44(sp)
20014238 c.swsp s2, 0x40(sp)
2001423a c.swsp s3, 0x3c(sp)
2001423c c.swsp s5, 0x34(sp)
2001423e bnez s4, 0x3c
20014242 lui a5, 0x20202
20014246 addi a5, a5, 0x3e4
2001424a lbu a4, 8(a5)
2001424e lui a1, 0x200
20014252 c.li a0, 0
20014254 c.addi a4, 1
20014256 sb a4, 8(a5)
2001425a lui a5, 0x20202
2001425e lw a5, 0x340(a5)
20014262 c.jalr a5
20014264 c.li s0, 1
20014266 c.lwsp ra, 0x4c(sp)
20014268 c.mv a0, s0
2001426a c.lwsp s0, 0x48(sp)
2001426c c.lwsp s1, 0x44(sp)
2001426e c.lwsp s2, 0x40(sp)
20014270 c.lwsp s3, 0x3c(sp)
20014272 c.lwsp s4, 0x38(sp)
20014274 c.lwsp s5, 0x34(sp)
20014276 c.addi16sp sp, 0x50
20014278 c.jr ra
2001427a c.mv s2, a0
2001427c c.bnez a0, 0x26
2001427e c.li a5, 6
20014280 sb a5, 0x10(sp)
20014284 lui a5, 0x20209
20014288 addi a5, a5, -0x364
2001428c c.swsp a5, 0x14(sp)
2001428e addi a5, zero, 0x106
20014292 c.swsp a5, 0x18(sp)
20014294 lui a5, 0x20202
20014298 lw a5, 0x348(a5)
2001429c c.addi4spn a0, sp, 0x10
2001429e c.jalr a5
200142a0 c.j -0x3c
200142a2 c.lw a5, 4(a5)
200142a4 c.mv s3, a1
200142a6 c.lw s1, 0xc(a5)
200142a8 lui a5, 0x20201
200142ac lw a5, 0x12c(a5)
200142b0 lw s5, 8(s1)
200142b4 c.jalr a5
200142b6 lbu a5, 0x10(s1)
200142ba c.addi a5, 1
200142bc sb a5, 0x10(s1)
200142c0 lui a5, 0x20201
200142c4 lw a5, 0x130(a5)
200142c8 c.jalr a5
200142ca lhu a5, 4(s2)
200142ce c.swsp s3, 0x20(sp)
200142d0 c.addi4spn a0, sp, 0x10
200142d2 c.addi a5, -8
200142d4 c.swsp a5, 0x24(sp)
200142d6 lui a5, 0x20201
200142da lw a5, 0x6cc(a5)
200142de c.jalr a5
200142e0 c.mv s0, a0
200142e2 c.beqz a0, 0x70
200142e4 beqz s3, 0x2c
200142e8 lhu a1, 4(s2)
200142ec lui a5, 0x20202
200142f0 lw a5, 0x15c(a5)
200142f4 c.li a3, 0
200142f6 c.mv a2, s3
200142f8 c.addi a1, -8