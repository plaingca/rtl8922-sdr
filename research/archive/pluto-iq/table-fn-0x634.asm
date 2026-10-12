20018ed4 lui a5, 0x20201
20018ed8 lw a5, 0x668(a5)
20018edc c.addi16sp sp, -0x30
20018ede c.swsp s1, 0x24(sp)
20018ee0 c.swsp ra, 0x2c(sp)
20018ee2 c.swsp s0, 0x28(sp)
20018ee4 c.mv s1, a0
20018ee6 c.li a0, 1
20018ee8 c.jalr a5
20018eea beqz a0, 0x176
20018eee c.bnez s1, 0x26
20018ef0 lui a5, 0x20201
20018ef4 lw a5, 0x6b8(a5)
20018ef8 lui a0, 0x200
20018efc c.li a4, 0
20018efe addi a3, zero, 0x25f
20018f02 c.li a2, 2
20018f04 c.li a1, 0
20018f06 c.jalr a5
20018f08 c.li a0, 0xd
20018f0a c.lwsp ra, 0x2c(sp)
20018f0c c.lwsp s0, 0x28(sp)
20018f0e c.lwsp s1, 0x24(sp)
20018f10 c.addi16sp sp, 0x30
20018f12 c.jr ra
20018f14 c.lw a2, 0(s1)
20018f16 lui a5, 0x20203
20018f1a lw a4, 0x584(a5)
20018f1e srli s0, a2, 8
20018f22 c.andi s0, 0xf
20018f24 c.li a5, 0xc
20018f26 mul a5, s0, a5
20018f2a c.lw s0, 0x3c(a4)
20018f2c c.srli a2, 0xc
20018f2e c.andi a2, 0xf
20018f30 c.add s0, a5
20018f32 lbu a5, 4(s0)
20018f36 sra a5, a5, a2
20018f3a c.andi a5, 1
20018f3c c.beqz a5, 0x72
20018f3e c.lw a1, 0(s0)
20018f40 lui a5, 0x20201
20018f44 lw a5, 0x5f8(a5)
20018f48 srli a0, a1, 4
20018f4c c.li a3, 0
20018f4e c.andi a1, 0xf
20018f50 c.andi a0, 1
20018f52 c.jalr a5
20018f54 lw a7, 0(s1)
20018f58 c.beqz a0, 0x38
20018f5a lw a6, 0(s0)
20018f5e lui a5, 0x20201
20018f62 lw t1, 0x6b8(a5)
20018f66 srli a7, a7, 0xc
20018f6a srli a5, a6, 4
20018f6e c.swsp a0, 4(sp)
20018f70 c.swsp zero, 0(sp)
20018f72 lui a0, 0x200
20018f76 andi a7, a7, 0xf
20018f7a andi a6, a6, 0xf
20018f7e c.andi a5, 1
20018f80 c.li a4, 5
20018f82 addi a3, zero, 0x261
20018f86 c.li a2, 2
20018f88 c.li a1, 0
20018f8a c.jalr t1
20018f8c c.li a0, 7
20018f8e c.j -0x84
20018f90 srli a7, a7, 0xc
20018f94 c.li a5, 1
20018f96 andi a7, a7, 0xf
20018f9a sll a7, a5, a7
20018f9e lbu a5, 4(s0)
20018fa2 not a7, a7
20018fa6 and a7, a7, a5
20018faa sb a7, 4(s0)
20018fae c.lwsp a5, 0x10(sp)
20018fb0 c.lw a3, 0(s1)
20018fb2 c.addi4spn a0, sp, 0x10
20018fb4 ori a5, a5, 1
20018fb8 c.swsp a5, 0x10(sp)
20018fba c.lw a5, 0xc(s1)
20018fbc c.lw a2, 0(s0)
20018fbe c.srli a3, 0xc
20018fc0 c.swsp a5, 0x14(sp)
20018fc2 c.lw a5, 8(s1)
20018fc4 srli a1, a2, 4
20018fc8 c.andi a3, 0xf
20018fca c.swsp a5, 0x18(sp)
20018fcc c.lw a5, 4(s1)
20018fce c.andi a2, 0xf
20018fd0 c.andi a1, 1
20018fd2 c.swsp a5, 0x1c(sp)
20018fd4 lbu a5, 0x10(s1)
20018fd8 sb a5, 0x11(sp)
20018fdc lui a5, 0x20201
20018fe0 lw a5, 0x5f4(a5)
20018fe4 c.jalr a5
20018fe6 c.mv a5, a0
20018fe8 c.beqz a0, 0x1e
20018fea lui a4, 0x20201
20018fee lw a6, 0x6b8(a4)
20018ff2 lui a0, 0x200
20018ff6 c.li a4, 1
20018ff8 addi a3, zero, 0x262
20018ffc c.li a2, 2
20018ffe c.li a1, 0