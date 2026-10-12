2000ea8a c.addi16sp sp, -0x40
2000ea8c c.swsp s2, 0x30(sp)
2000ea8e lui s2, 0x20201
2000ea92 lw a4, 0x668(s2)
2000ea96 c.swsp s0, 0x38(sp)
2000ea98 c.swsp s1, 0x34(sp)
2000ea9a c.swsp s3, 0x2c(sp)
2000ea9c c.swsp a0, 0xc(sp)
2000ea9e c.swsp ra, 0x3c(sp)
2000eaa0 c.swsp s4, 0x28(sp)
2000eaa2 c.swsp s5, 0x24(sp)
2000eaa4 c.swsp s6, 0x20(sp)
2000eaa6 c.swsp s7, 0x1c(sp)
2000eaa8 c.swsp s8, 0x18(sp)
2000eaaa c.li a0, 1
2000eaac c.mv s1, a1
2000eaae c.mv s0, a2
2000eab0 c.mv s3, a3
2000eab2 c.jalr a4
2000eab4 c.lwsp a5, 0xc(sp)
2000eab6 c.beqz a0, 0x26
2000eab8 c.li a3, 1
2000eaba bgeu a3, a5, 0x4a
2000eabe lui a4, 0x20201
2000eac2 lw a6, 0x6b8(a4)
2000eac6 c.lui a0, 1
2000eac8 addi a0, a0, -0x800
2000eacc c.li a4, 1
2000eace addi a3, zero, 0x229
2000ead2 c.li a2, 2
2000ead4 c.li a1, 0
2000ead6 c.jalr a6
2000ead8 c.li a0, 9
2000eada c.j 0x12
2000eadc lw a4, 0x668(s2)
2000eae0 c.li a0, 3
2000eae2 c.swsp a5, 0xc(sp)
2000eae4 c.jalr a4
2000eae6 c.lwsp a5, 0xc(sp)
2000eae8 c.bnez a0, -0x30
2000eaea c.li a0, 0x10
2000eaec c.lwsp ra, 0x3c(sp)
2000eaee c.lwsp s0, 0x38(sp)
2000eaf0 c.lwsp s1, 0x34(sp)
2000eaf2 c.lwsp s2, 0x30(sp)
2000eaf4 c.lwsp s3, 0x2c(sp)
2000eaf6 c.lwsp s4, 0x28(sp)
2000eaf8 c.lwsp s5, 0x24(sp)
2000eafa c.lwsp s6, 0x20(sp)
2000eafc c.lwsp s7, 0x1c(sp)
2000eafe c.lwsp s8, 0x18(sp)
2000eb00 c.addi16sp sp, 0x40
2000eb02 c.jr ra
2000eb04 slli s2, a5, 1
2000eb08 c.add s2, s1
2000eb0a addi a4, zero, 0x28
2000eb0e mul a4, s2, a4
2000eb12 lui a2, 0x20202
2000eb16 lw s2, 0x538(a2)
2000eb1a c.add s2, a4
2000eb1c beqz s3, 0x5c
2000eb20 lw a4, 0(s2)
2000eb24 andi a4, a4, 0xc0
2000eb28 c.bnez a4, 0x22
2000eb2a lui a4, 0x20201
2000eb2e lw a7, 0x6b8(a4)
2000eb32 c.lui a0, 1
2000eb34 addi a0, a0, -0x800
2000eb38 c.mv a6, s1
2000eb3a c.li a4, 2
2000eb3c addi a3, zero, 0x22a
2000eb40 c.li a2, 2
2000eb42 c.li a1, 0
2000eb44 c.jalr a7
2000eb46 c.li a0, 0xd
2000eb48 c.j -0x5c
2000eb4a add a4, s2, s0
2000eb4e lbu a4, 4(a4)
2000eb52 bne a4, a3, 0x52
2000eb56 lui a4, 0x20201
2000eb5a lw t1, 0x6b8(a4)
2000eb5e c.lui a0, 1
2000eb60 addi a0, a0, -0x800
2000eb64 c.mv a7, s0
2000eb66 c.mv a6, s1
2000eb68 c.li a4, 3
2000eb6a addi a3, zero, 0x22b
2000eb6e c.li a2, 2
2000eb70 c.li a1, 0
2000eb72 c.jalr t1
2000eb74 c.li a0, 5
2000eb76 c.j -0x8a
2000eb78 add a4, s2, s0
2000eb7c lbu a4, 4(a4)
2000eb80 c.bnez a4, 0x24
2000eb82 lui a4, 0x20201
2000eb86 lw t1, 0x6b8(a4)
2000eb8a c.lui a0, 1
2000eb8c addi a0, a0, -0x800
2000eb90 c.mv a7, s0
2000eb92 c.mv a6, s1
2000eb94 c.li a4, 3
2000eb96 addi a3, zero, 0x22c
2000eb9a c.li a2, 2
2000eb9c c.li a1, 0
2000eb9e c.jalr t1
2000eba0 c.li a0, 6
2000eba2 c.j -0xb6
2000eba4 lui s8, 0x20201
2000eba8 lw a4, 0x614(s8)
2000ebac c.mv a0, a5
2000ebae c.li a3, 0
2000ebb0 c.li a2, 0
2000ebb2 c.mv a1, s1
2000ebb4 .byte 0xb7, 0xfb