2002169c lui a5, 0x20202
200216a0 lw a5, 0x15c(a5)
200216a4 c.addi sp, -0x10
200216a6 c.swsp ra, 0xc(sp)
200216a8 c.li a3, 0
200216aa c.jalr a5
200216ac c.beqz a0, 0x16
200216ae lui a5, 0x20202
200216b2 c.lwsp ra, 0xc(sp)
200216b4 lw a5, 0x340(a5)
200216b8 addi a1, zero, 0x20
200216bc c.li a0, 2
200216be c.addi sp, 0x10
200216c0 c.jr a5
200216c2 c.lwsp ra, 0xc(sp)
200216c4 c.addi sp, 0x10
200216c6 c.jr ra
200216c8 lui a5, 0x20203
200216cc lw a5, 0x584(a5)
200216d0 c.addi16sp sp, -0x60
200216d2 c.swsp ra, 0x5c(sp)
200216d4 c.lw a4, 0x20(a5)
200216d6 c.li a5, 1
200216d8 sll a5, a5, a0
200216dc c.lw a3, 0(a4)
200216de c.swsp s0, 0x58(sp)
200216e0 c.swsp s1, 0x54(sp)
200216e2 c.swsp s2, 0x50(sp)
200216e4 c.swsp s3, 0x4c(sp)
200216e6 c.swsp s4, 0x48(sp)
200216e8 c.swsp zero, 0xc(sp)
200216ea c.swsp zero, 0x10(sp)
200216ec c.swsp zero, 0x14(sp)
200216ee c.swsp zero, 0x18(sp)
200216f0 c.swsp zero, 0x2c(sp)
200216f2 c.swsp zero, 0x30(sp)
200216f4 c.swsp zero, 0x34(sp)
200216f6 c.swsp zero, 0x38(sp)
200216f8 c.swsp zero, 0x3c(sp)
200216fa c.and a5, a3
200216fc c.bnez a5, 0x1e
200216fe lui a5, 0x20201
20021702 lw a5, 0x6b8(a5)
20021706 c.li a4, 0
20021708 addi a3, zero, 0x23f
2002170c c.li a2, 3
2002170e addi a0, zero, 0x40
20021712 c.li a1, 0
20021714 c.jalr a5
20021716 c.li s0, 0
20021718 c.j 0x58
2002171a slli a5, a0, 2
2002171e c.add a4, a5
20021720 lui a5, 0x20201
20021724 lw a5, 0x668(a5)
20021728 c.mv s1, a0
2002172a c.li a0, 6
2002172c lw s4, 8(a4)
20021730 c.mv s2, a1
20021732 c.mv s3, a2
20021734 c.jalr a5
20021736 c.mv s0, a0
20021738 c.bnez a0, 0xdc
2002173a lbu a0, 0x72(s4)
2002173e addi a5, zero, 0xff
20021742 bne a0, a5, 0x40
20021746 lui a5, 0x20201
2002174a lw a5, 0x6b8(a5)
2002174e addi a0, zero, 0x40
20021752 c.li a1, 0
20021754 c.li a4, 0
20021756 addi a3, zero, 0x246
2002175a c.li a2, 3
2002175c c.jalr a5
2002175e lui a5, 0x20202
20021762 lw a5, 0x340(a5)
20021766 c.lui a1, 1
20021768 addi a1, a1, -0x800
2002176c c.li a0, 1
2002176e c.jalr a5
20021770 c.lwsp ra, 0x5c(sp)
20021772 c.mv a0, s0
20021774 c.lwsp s0, 0x58(sp)
20021776 c.lwsp s1, 0x54(sp)
20021778 c.lwsp s2, 0x50(sp)
2002177a c.lwsp s3, 0x4c(sp)
2002177c c.lwsp s4, 0x48(sp)
2002177e c.addi16sp sp, 0x60
20021780 c.jr ra
20021782 lui a5, 0x20202
20021786 lw a5, -0x4f4(a5)
2002178a c.addi4spn a2, sp, 8
2002178c c.addi4spn a1, sp, 0x1c
2002178e c.jalr a5
20021790 c.bnez a0, 0x1c
20021792 lui a5, 0x20201
20021796 lw a5, 0x6b8(a5)
2002179a c.li a4, 0
2002179c addi a3, zero, 0x247
200217a0 c.li a2, 3
200217a2 addi a0, zero, 0x40
200217a6 c.li a1, 0
200217a8 c.jalr a5
200217aa c.j -0x3a
200217ac lhu a5, 0x1c(sp)
200217b0 c.swsp a5, 0x34(sp)
200217b2 c.swsp s3, 0x10(sp)
200217b4 sb s1, 0x14(sp)
200217b8 c.swsp s2, 0x18(sp)
200217ba lbu a4, 1(s4)
200217be c.li a5, 0x14
200217c0 c.beqz a4, 4
200217c2 c.li a5, 0x1c
200217c4 c.lwsp a4, 8(sp)
200217c6 c.slli a5, 1