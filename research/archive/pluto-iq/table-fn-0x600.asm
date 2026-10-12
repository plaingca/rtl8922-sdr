2000e74e c.addi16sp sp, -0x50
2000e750 c.swsp s0, 0x48(sp)
2000e752 lui s0, 0x20201
2000e756 lw a5, 0x668(s0)
2000e75a c.swsp s1, 0x44(sp)
2000e75c c.swsp ra, 0x4c(sp)
2000e75e c.swsp s2, 0x40(sp)
2000e760 c.swsp s3, 0x3c(sp)
2000e762 c.swsp s4, 0x38(sp)
2000e764 c.swsp s5, 0x34(sp)
2000e766 c.swsp s6, 0x30(sp)
2000e768 c.swsp s7, 0x2c(sp)
2000e76a c.swsp s8, 0x28(sp)
2000e76c c.swsp s9, 0x24(sp)
2000e76e c.swsp s10, 0x20(sp)
2000e770 c.swsp s11, 0x1c(sp)
2000e772 c.mv s1, a0
2000e774 c.li a0, 1
2000e776 c.swsp a1, 4(sp)
2000e778 c.jalr a5
2000e77a c.beqz a0, 0x72
2000e77c slli s3, s1, 1
2000e780 addi s5, zero, 0x28
2000e784 c.li a5, 0xc
2000e786 mul s5, s3, s5
2000e78a lui s6, 0x20202
2000e78e lui s4, 0xefeff
2000e792 c.li s2, 0
2000e794 addi s6, s6, 0x538
2000e798 lui s7, 0x20201
2000e79c c.addi s4, -0x11
2000e79e mul s3, s3, a5
2000e7a2 lw s10, 0(s6)
2000e7a6 c.add s10, s5
2000e7a8 lw a5, 0(s10)
2000e7ac andi a5, a5, 0xe0
2000e7b0 c.beqz a5, 0xb8
2000e7b2 lw s0, 4(s6)
2000e7b6 c.li s8, 0
2000e7b8 c.li s11, 1
2000e7ba c.add s0, s3
2000e7bc addi s9, s0, 8
2000e7c0 add a5, s10, s8
2000e7c4 lbu a5, 4(a5)
2000e7c8 andi a2, s8, 0xff
2000e7cc bne a5, s11, 0x94
2000e7d0 c.lwsp a5, 4(sp)
2000e7d2 c.bnez a5, 0xa4
2000e7d4 lw a5, 0x614(s7)
2000e7d8 c.li a3, 7
2000e7da c.mv a1, s2
2000e7dc c.mv a0, s1
2000e7de c.swsp a2, 8(sp)
2000e7e0 c.jalr a5
2000e7e2 c.lwsp a2, 8(sp)
2000e7e4 bne a0, s4, 0x3a
2000e7e8 c.li a0, 0x11
2000e7ea c.j 0xe
2000e7ec lw a5, 0x668(s0)
2000e7f0 c.li a0, 3
2000e7f2 c.jalr a5
2000e7f4 c.bnez a0, -0x78
2000e7f6 c.li a0, 0x10
2000e7f8 c.lwsp ra, 0x4c(sp)
2000e7fa c.lwsp s0, 0x48(sp)
2000e7fc c.lwsp s1, 0x44(sp)
2000e7fe c.lwsp s2, 0x40(sp)
2000e800 c.lwsp s3, 0x3c(sp)
2000e802 c.lwsp s4, 0x38(sp)
2000e804 c.lwsp s5, 0x34(sp)
2000e806 c.lwsp s6, 0x30(sp)
2000e808 c.lwsp s7, 0x2c(sp)
2000e80a c.lwsp s8, 0x28(sp)
2000e80c c.lwsp s9, 0x24(sp)
2000e80e c.lwsp s10, 0x20(sp)
2000e810 c.lwsp s11, 0x1c(sp)
2000e812 c.addi16sp sp, 0x50
2000e814 c.jr ra
2000e816 c.li s2, 1
2000e818 c.j -0x76
2000e81a c.li s8, 1
2000e81c c.j -0x5c
2000e81e lui a5, 0x20201
2000e822 lw a4, 0x744(a5)
2000e826 c.swsp a2, 0xc(sp)
2000e828 c.swsp a0, 8(sp)
2000e82a c.jalr a4
2000e82c lui a5, 0x20201
2000e830 lw a4, 0x738(a5)
2000e834 c.lwsp a5, 8(sp)
2000e836 andi a1, a0, 0xff
2000e83a sh a0, 0(s9)
2000e83e c.mv a0, a5
2000e840 c.jalr a4
2000e842 lw a5, 0x614(s7)
2000e846 c.lwsp a2, 0xc(sp)
2000e848 c.li a3, 0xa
2000e84a c.mv a1, s2
2000e84c c.mv a0, s1
2000e84e c.jalr a5
2000e850 beq a0, s4, -0x68
2000e854 lui a5, 0x20201
2000e858 lw a5, 0x748(a5)
2000e85c c.jalr a5
2000e85e c.sw a0, 0(s0)
2000e860 c.addi s9, 2
2000e862 c.addi s0, 4
2000e864 bne s8, s11, -0x4a
2000e868 addi s5, s5, 0x28
2000e86c c.addi s3, 0xc
2000e86e beqz s2, -0x58
2000e872 c.li a0, 0
2000e874 c.j -0x7c
2000e876 c.lwsp a5, 4(sp)
2000e878 .byte 0xe3, 0x94