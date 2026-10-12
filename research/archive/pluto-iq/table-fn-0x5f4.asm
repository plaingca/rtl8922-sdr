2000ec96 c.addi16sp sp, -0x30
2000ec98 c.swsp s4, 0x18(sp)
2000ec9a lui s4, 0x20201
2000ec9e lw a5, 0x668(s4)
2000eca2 c.swsp s0, 0x28(sp)
2000eca4 c.swsp s1, 0x24(sp)
2000eca6 c.swsp s2, 0x20(sp)
2000eca8 c.swsp s3, 0x1c(sp)
2000ecaa c.swsp ra, 0x2c(sp)
2000ecac c.swsp s5, 0x14(sp)
2000ecae c.swsp s6, 0x10(sp)
2000ecb0 c.swsp s7, 0xc(sp)
2000ecb2 c.swsp s8, 8(sp)
2000ecb4 c.mv s3, a0
2000ecb6 c.li a0, 1
2000ecb8 c.mv s0, a1
2000ecba c.mv s1, a2
2000ecbc c.mv s2, a3
2000ecbe c.jalr a5
2000ecc0 c.beqz a0, 0x4a
2000ecc2 slli a4, s0, 1
2000ecc6 c.add a4, s1
2000ecc8 addi a3, zero, 0x28
2000eccc mul a4, a4, a3
2000ecd0 lui a5, 0x20202
2000ecd4 lw a5, 0x538(a5)
2000ecd8 c.add a5, a4
2000ecda c.add a5, s2
2000ecdc lbu a4, 4(a5)
2000ece0 c.li a5, 1
2000ece2 bne a4, a5, 0x4c
2000ece6 lui a5, 0x20201
2000ecea lw t1, 0x6b8(a5)
2000ecee c.lui a0, 1
2000ecf0 addi a0, a0, -0x800
2000ecf4 c.mv a7, s2
2000ecf6 c.mv a6, s1
2000ecf8 c.mv a5, s0
2000ecfa c.li a4, 3
2000ecfc addi a3, zero, 0x22f
2000ed00 c.li a2, 2
2000ed02 c.li a1, 0
2000ed04 c.jalr t1
2000ed06 c.li a0, 0xc
2000ed08 c.j 0xe
2000ed0a lw a5, 0x668(s4)
2000ed0e c.li a0, 3
2000ed10 c.jalr a5
2000ed12 c.bnez a0, -0x50
2000ed14 c.li a0, 0x10
2000ed16 c.lwsp ra, 0x2c(sp)
2000ed18 c.lwsp s0, 0x28(sp)
2000ed1a c.lwsp s1, 0x24(sp)
2000ed1c c.lwsp s2, 0x20(sp)
2000ed1e c.lwsp s3, 0x1c(sp)
2000ed20 c.lwsp s4, 0x18(sp)
2000ed22 c.lwsp s5, 0x14(sp)
2000ed24 c.lwsp s6, 0x10(sp)
2000ed26 c.lwsp s7, 0xc(sp)
2000ed28 c.lwsp s8, 8(sp)
2000ed2a c.addi16sp sp, 0x30
2000ed2c c.jr ra
2000ed2e bnez s3, 0x22
2000ed32 lui a5, 0x20201
2000ed36 lw a5, 0x6b8(a5)
2000ed3a c.lui a0, 1
2000ed3c addi a0, a0, -0x800
2000ed40 c.li a4, 0
2000ed42 addi a3, zero, 0x230
2000ed46 c.li a2, 2
2000ed48 c.li a1, 0
2000ed4a c.jalr a5
2000ed4c c.li a0, 0xe
2000ed4e c.j -0x38
2000ed50 lui s7, 0x20201
2000ed54 lw a5, 0x614(s7)
2000ed58 c.li a3, 4
2000ed5a c.mv a2, s2
2000ed5c c.mv a1, s1
2000ed5e c.mv a0, s0
2000ed60 lui s4, 0xefeff
2000ed64 c.jalr a5
2000ed66 c.addi s4, -0x11
2000ed68 c.mv s8, a0
2000ed6a bne a0, s4, 8
2000ed6e c.li a0, 0x11
2000ed70 c.j -0x5a
2000ed72 lui s6, 0x20201
2000ed76 lw a5, 0x748(s6)
2000ed7a lui s5, 0x20201
2000ed7e c.jalr a5
2000ed80 lw a5, 0x73c(s5)
2000ed84 lw a1, 4(s3)
2000ed88 c.mv a0, s8
2000ed8a c.jalr a5
2000ed8c lw a5, 0x614(s7)
2000ed90 c.li a3, 5
2000ed92 c.mv a2, s2
2000ed94 c.mv a1, s1
2000ed96 c.mv a0, s0
2000ed98 c.jalr a5
2000ed9a c.mv s8, a0
2000ed9c beq a0, s4, -0x2e
2000eda0 lw a5, 0x748(s6)
2000eda4 c.jalr a5
2000eda6 lw a5, 0x73c(s5)
2000edaa lw a1, 8(s3)
2000edae c.mv a0, s8
2000edb0 c.jalr a5
2000edb2 lw a5, 0x614(s7)
2000edb6 c.li a3, 6
2000edb8 c.mv a2, s2
2000edba c.mv a1, s1
2000edbc c.mv a0, s0
2000edbe c.jalr a5
2000edc0 c.mv s8, a0