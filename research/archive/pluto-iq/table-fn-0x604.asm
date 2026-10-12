2000e6dc c.addi sp, -0x10
2000e6de c.swsp s1, 4(sp)
2000e6e0 lui s1, 0x20201
2000e6e4 lw a5, 0x668(s1)
2000e6e8 c.swsp s0, 8(sp)
2000e6ea c.swsp ra, 0xc(sp)
2000e6ec c.mv s0, a0
2000e6ee c.li a0, 1
2000e6f0 c.jalr a5
2000e6f2 c.beqz a0, 0x24
2000e6f4 lui a5, 0x20202
2000e6f8 slli a0, s0, 1
2000e6fc addi a2, zero, 0x28
2000e700 lw a3, 0x538(a5)
2000e704 mul a5, a0, a2
2000e708 c.add a5, a3
2000e70a c.lw a4, 0(a5)
2000e70c andi a4, a4, 0xe0
2000e710 c.bnez a4, 0x1c
2000e712 c.li a0, 0
2000e714 c.j 0x2c
2000e716 lw a5, 0x668(s1)
2000e71a c.li a0, 3
2000e71c c.jalr a5
2000e71e c.bnez a0, -0x2a
2000e720 c.li a0, 2
2000e722 c.lwsp ra, 0xc(sp)
2000e724 c.lwsp s0, 8(sp)
2000e726 c.lwsp s1, 4(sp)
2000e728 c.addi sp, 0x10
2000e72a c.jr ra
2000e72c c.addi a0, 1
2000e72e mul a0, a0, a2
2000e732 add a5, a3, a0
2000e736 c.lw a4, 0(a5)
2000e738 c.li a0, 1
2000e73a andi a4, a4, 0xe0
2000e73e c.bnez a4, -0x1e
2000e740 c.lw a4, 0(a5)
2000e742 andi a4, a4, -0xe1
2000e746 ori a4, a4, 0x20
2000e74a c.sw a4, 0(a5)
2000e74c c.j -0x2a
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