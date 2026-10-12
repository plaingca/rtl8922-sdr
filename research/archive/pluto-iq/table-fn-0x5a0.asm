2001097c c.addi16sp sp, -0x30
2001097e c.swsp ra, 0x2c(sp)
20010980 c.swsp s0, 0x28(sp)
20010982 c.swsp s1, 0x24(sp)
20010984 c.swsp s2, 0x20(sp)
20010986 c.swsp s3, 0x1c(sp)
20010988 c.swsp s4, 0x18(sp)
2001098a c.bnez a0, 0xa4
2001098c lui s0, 0x20201
20010990 lw a5, 0x73c(s0)
20010994 c.mv s2, a1
20010996 addi a0, zero, 0x16c
2001099a c.li a1, 0
2001099c c.mv s1, a2
2001099e c.jalr a5
200109a0 lw a5, 0x73c(s0)
200109a4 c.mv a1, s1
200109a6 addi a0, zero, 0x1f4
200109aa c.jalr a5
200109ac lui a4, 0x20204
200109b0 lw a5, 0x73c(s0)
200109b4 lw a1, 0x5e8(a4)
200109b8 addi a0, zero, 0x1f8
200109bc c.li s1, 0x15
200109be c.jalr a5
200109c0 c.lui a5, 0x10
200109c2 c.addi a5, -0x10
200109c4 c.lui a4, 2
200109c6 and a5, s2, a5
200109ca addi a3, a4, 0x20
200109ce beq a5, a3, 0x1a
200109d2 addi a3, a4, 0x10
200109d6 c.li s1, 0x14
200109d8 beq a5, a3, 0x10
200109dc addi a4, a4, 0x210
200109e0 c.li s1, 0x16
200109e2 beq a5, a4, 6
200109e6 c.li s1, 0x17
200109e8 lui a5, 0x20201
200109ec lw s3, 0x73c(s0)
200109f0 lw a5, 0x748(a5)
200109f4 addi a0, zero, 0x1f0
200109f8 c.slli s1, 8
200109fa c.jalr a5
200109fc lui a1, 0xff000
20010a00 addi a1, a1, 0xff
20010a04 c.and a1, a0
20010a06 c.or a1, s1
20010a08 addi a0, zero, 0x1f0
20010a0c c.jalr s3
20010a0e lw a5, 0x73c(s0)
20010a12 lui a1, 0x10000
20010a16 c.lwsp s0, 0x28(sp)
20010a18 c.lwsp ra, 0x2c(sp)
20010a1a c.lwsp s1, 0x24(sp)
20010a1c c.lwsp s3, 0x1c(sp)
20010a1e c.lwsp s4, 0x18(sp)
20010a20 or a1, s2, a1
20010a24 c.lwsp s2, 0x20(sp)
20010a26 addi a0, zero, 0x16c
20010a2a c.addi16sp sp, 0x30
20010a2c c.jr a5
20010a2e lui s0, 0x20203
20010a32 lw a1, -0x6d8(s0)
20010a36 addi a5, zero, 0x40
20010a3a c.swsp a1, 0xc(sp)
20010a3c bgeu a5, a1, 0x64
20010a40 lui s2, 0x20201
20010a44 lui a5, 0x20201
20010a48 lw s3, 0x118(a5)
20010a4c lw a5, 0x744(s2)
20010a50 lui s1, 0x20203
20010a54 addi a0, zero, 0x1f0
20010a58 lw s4, -0x6d4(s1)
20010a5c c.jalr a5
20010a5e lw a5, 0x744(s2)
20010a62 c.swsp a0, 8(sp)
20010a64 addi a0, zero, 0x1f4
20010a68 c.jalr a5
20010a6a lw a5, 0x744(s2)
20010a6e c.swsp a0, 4(sp)
20010a70 addi a0, zero, 0x1f8
20010a74 c.jalr a5
20010a76 c.lwsp a4, 4(sp)
20010a78 c.lwsp a3, 8(sp)
20010a7a c.lwsp a1, 0xc(sp)
20010a7c lui a2, 0x20209
20010a80 c.mv a5, a0
20010a82 addi a2, a2, -0x4f0
20010a86 c.mv a0, s4
20010a88 c.jalr s3
20010a8a lw a5, -0x6d4(s1)
20010a8e c.add a5, a0
20010a90 sw a5, -0x6d4(s1)
20010a94 lw a5, -0x6d8(s0)
20010a98 sub a0, a5, a0
20010a9c sw a0, -0x6d8(s0)
20010aa0 c.lwsp ra, 0x2c(sp)
20010aa2 c.lwsp s0, 0x28(sp)
20010aa4 c.lwsp s1, 0x24(sp)
20010aa6 c.lwsp s2, 0x20(sp)