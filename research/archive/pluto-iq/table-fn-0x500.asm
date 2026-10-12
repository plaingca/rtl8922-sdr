200207a8 lui a5, 0x20203
200207ac addi a5, a5, 0x580
200207b0 c.lw a4, 0xc(a5)
200207b2 c.lw a5, 4(a5)
200207b4 c.addi16sp sp, -0x90
200207b6 c.swsp s2, 0x80(sp)
200207b8 lw s2, 0x2c(a5)
200207bc lui a5, 0x20201
200207c0 lw a5, 0x504(a5)
200207c4 c.swsp s0, 0x88(sp)
200207c6 c.mv s0, a1
200207c8 sh zero, 0x2c(sp)
200207cc c.swsp zero, 0x30(sp)
200207ce c.swsp zero, 0x34(sp)
200207d0 c.swsp zero, 0x38(sp)
200207d2 c.swsp zero, 0x3c(sp)
200207d4 c.swsp zero, 0x40(sp)
200207d6 c.swsp zero, 0x44(sp)
200207d8 c.swsp zero, 0x48(sp)
200207da c.swsp zero, 0x4c(sp)
200207dc c.swsp s3, 0x7c(sp)
200207de c.swsp s6, 0x70(sp)
200207e0 c.swsp s8, 0x68(sp)
200207e2 c.swsp a0, 8(sp)
200207e4 c.swsp zero, 0x28(sp)
200207e6 c.swsp ra, 0x8c(sp)
200207e8 c.swsp s1, 0x84(sp)
200207ea c.swsp s4, 0x78(sp)
200207ec c.swsp s5, 0x74(sp)
200207ee c.swsp s7, 0x6c(sp)
200207f0 c.swsp s9, 0x64(sp)
200207f2 c.swsp s10, 0x60(sp)
200207f4 c.swsp s11, 0x5c(sp)
200207f6 c.mv a1, a2
200207f8 c.mv a0, s0
200207fa lw s8, 8(a4)
200207fe lw s6, 0(a4)
20020802 c.mv s3, a2
20020804 c.jalr a5
20020806 c.li a5, 1
20020808 beq a0, a5, 0x26
2002080c c.li s7, 0
2002080e c.lwsp ra, 0x8c(sp)
20020810 c.lwsp s0, 0x88(sp)
20020812 c.lwsp s1, 0x84(sp)
20020814 c.lwsp s2, 0x80(sp)
20020816 c.lwsp s3, 0x7c(sp)
20020818 c.lwsp s4, 0x78(sp)
2002081a c.lwsp s5, 0x74(sp)
2002081c c.lwsp s6, 0x70(sp)
2002081e c.lwsp s8, 0x68(sp)
20020820 c.lwsp s9, 0x64(sp)
20020822 c.lwsp s10, 0x60(sp)
20020824 c.lwsp s11, 0x5c(sp)
20020826 c.mv a0, s7
20020828 c.lwsp s7, 0x6c(sp)
2002082a c.addi16sp sp, 0x90
2002082c c.jr ra
2002082e lui s1, 0x20201
20020832 lw a5, 0x760(s1)
20020836 c.add s0, s3
20020838 c.mv s4, a0
2002083a addi a0, s0, 0xe
2002083e c.jalr a5
20020840 addi a5, zero, 0x3a
20020844 bne a0, a5, -0x38
20020848 lw a5, 0x760(s1)
2002084c addi a0, s0, 0x30
20020850 c.jalr a5
20020852 addi a5, zero, 0x87
20020856 bne a0, a5, -0x4a
2002085a addi s5, sp, 0x40
2002085e addi s3, s0, 0x38
20020862 addi s7, s0, 0x48
20020866 c.mv s9, s5
20020868 lw a5, 0x760(s1)
2002086c c.mv a0, s3
2002086e c.addi s3, 1
20020870 c.jalr a5
20020872 sb a0, 0(s5)
20020876 c.addi s5, 1
20020878 bne s3, s7, -0x10
2002087c addi a5, s0, 0x50
20020880 c.swsp a5, 0x10(sp)
20020882 addi a5, s0, 0x20
20020886 c.mv s5, s8
20020888 c.li s10, 0
2002088a c.swsp a5, 0x14(sp)
2002088c addi s7, zero, 0x38
20020890 mul a5, s10, s7
20020894 c.swsp a5, 0xc(sp)
20020896 add s11, s8, a5
2002089a lw a5, 0x14(s11)
2002089e c.andi a5, 1
200208a0 c.bnez a5, 6
200208a2 c.mv s7, s4
200208a4 c.j -0x96
200208a6 addi a5, s5, 0x16
200208aa c.swsp a5, 4(sp)
200208ac c.li s3, 0
200208ae lbu a5, 0x15(s5)
200208b2 bltu s3, a5, 0x10
200208b6 addi s5, s5, 0x38
200208ba bnez s10, -0x18
200208be c.li s10, 1
200208c0 c.j -0x34
200208c2 c.lwsp a5, 0xc(sp)
200208c4 slli a4, s3, 4
200208c8 c.mv s7, s4
200208ca c.add a4, a5
200208cc c.add a4, s8
200208ce c.li a3, 0
200208d0 c.li a2, 0x10
200208d2 .byte 0xb3, 0x85