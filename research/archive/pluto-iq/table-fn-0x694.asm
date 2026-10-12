20015bee lui a5, 0x20201
20015bf2 lw a5, 0x12c(a5)
20015bf6 c.addi16sp sp, -0x30
20015bf8 c.swsp s0, 0x28(sp)
20015bfa c.swsp s1, 0x24(sp)
20015bfc c.swsp s5, 0x14(sp)
20015bfe c.swsp s6, 0x10(sp)
20015c00 c.swsp s7, 0xc(sp)
20015c02 c.swsp s8, 8(sp)
20015c04 c.swsp ra, 0x2c(sp)
20015c06 c.swsp s2, 0x20(sp)
20015c08 c.swsp s3, 0x1c(sp)
20015c0a c.swsp s4, 0x18(sp)
20015c0c c.jalr a5
20015c0e lui s0, 0x20205
20015c12 c.mv s5, a0
20015c14 c.li s1, 0
20015c16 addi s0, s0, -0x1d8
20015c1a lui s6, 0x20202
20015c1e lui s7, 0x20205
20015c22 lui s8, 0x20202
20015c26 lbu a5, 0x19(s0)
20015c2a bltu s1, a5, 0x62
20015c2e lhu a5, 0x1a(s0)
20015c32 sb zero, 0x18(s0)
20015c36 c.beqz a5, 0x30
20015c38 lui a4, 0x20201
20015c3c lw a6, 0x6b8(a4)
20015c40 lui s1, 0x20202
20015c44 addi s1, s1, 0x798
20015c48 addi a5, a5, 0x1ff
20015c4c c.srli a5, 9
20015c4e sb zero, 0x180(s1)
20015c52 c.li a4, 1
20015c54 addi a3, zero, 0x224
20015c58 c.li a2, 2
20015c5a c.lui a0, 1
20015c5c c.li a1, 0
20015c5e c.jalr a6
20015c60 c.li a5, 1
20015c62 sb a5, 0x180(s1)
20015c66 sh zero, 0x1a(s0)
20015c6a lui a5, 0x20201
20015c6e c.lwsp s0, 0x28(sp)
20015c70 c.lwsp ra, 0x2c(sp)
20015c72 c.lwsp s1, 0x24(sp)
20015c74 c.lwsp s2, 0x20(sp)
20015c76 c.lwsp s3, 0x1c(sp)
20015c78 c.lwsp s4, 0x18(sp)
20015c7a c.lwsp s6, 0x10(sp)
20015c7c c.lwsp s7, 0xc(sp)
20015c7e c.lwsp s8, 8(sp)
20015c80 lw a5, 0x130(a5)
20015c84 c.mv a0, s5
20015c86 c.lwsp s5, 0x14(sp)
20015c88 c.addi16sp sp, 0x30
20015c8a c.jr a5
20015c8c c.lw a5, 0x20(s0)
20015c8e slli s2, s1, 3
20015c92 c.add s2, a5
20015c94 lhu s3, 0(s2)
20015c98 beqz s3, 0x4c
20015c9c lbu a5, 0(s0)
20015ca0 lw s4, 4(s2)
20015ca4 c.andi a5, 2
20015ca6 c.beqz a5, 0x12
20015ca8 lw a5, 0x2b4(s7)
20015cac c.bnez a5, 0xc
20015cae lw a5, -0x4b4(s8)
20015cb2 c.mv a1, s4
20015cb4 c.mv a0, s3
20015cb6 c.jalr a5
20015cb8 lbu a5, 0(s0)
20015cbc c.andi a5, 1
20015cbe c.beqz a5, 0x14
20015cc0 lw a5, -0xa0(s6)
20015cc4 lbu a0, 0(s4)
20015cc8 c.addi s3, -1
20015cca c.addi s4, 1
20015ccc c.jalr a5
20015cce bnez s3, -0xe
20015cd2 lw a0, 4(s2)
20015cd6 sh zero, 0(s2)
20015cda addi a2, zero, 0x200
20015cde c.li a1, 0
20015ce0 jal 0x19506
20015ce4 c.addi s1, 1
20015ce6 andi s1, s1, 0xff
20015cea c.j -0xc4
20015cec lui a5, 0x20203
20015cf0 lw a5, 0x588(a5)
20015cf4 c.addi sp, -0x10
20015cf6 c.swsp ra, 0xc(sp)
20015cf8 c.lw a4, 8(a5)
20015cfa c.lw a5, 4(a5)
20015cfc c.li a3, 1
20015cfe c.swsp s0, 8(sp)
20015d00 c.swsp s1, 4(sp)
20015d02 c.swsp s2, 0(sp)
20015d04 sb a3, 0xd(a5)
20015d08 lui a5, 0x20201
20015d0c lw a5, 0x244(a5)
20015d10 c.mv s1, a0
20015d12 c.lw a0, 0x28(a4)
20015d14 lui s2, 0x20201
20015d18 c.jalr a5