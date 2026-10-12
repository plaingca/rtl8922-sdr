
PACKET 0x2000432e
20004306 c.addi16sp sp, -0x40
20004308 c.swsp s2, 0x30(sp)
2000430a lw s2, 4(a1)
2000430e c.swsp s0, 0x38(sp)
20004310 c.swsp ra, 0x3c(sp)
20004312 c.swsp s1, 0x34(sp)
20004314 c.swsp s3, 0x2c(sp)
20004316 c.swsp s4, 0x28(sp)
20004318 c.swsp s5, 0x24(sp)
2000431a c.swsp s6, 0x20(sp)
2000431c c.swsp s7, 0x1c(sp)
2000431e c.swsp s8, 0x18(sp)
20004320 c.swsp s9, 0x14(sp)
20004322 c.swsp s10, 0x10(sp)
20004324 lui a5, 0x20000
20004328 c.mv s0, a0
2000432a bgeu s2, a5, 0xc
2000432e lui a5, 0xa0000
20004332 or s2, s2, a5
20004336 lw s4, 0(s2)
2000433a lui s1, 0x20202
2000433e c.li a5, 4
20004340 slli s5, s4, 0x12
20004344 srli s5, s5, 0x12
20004348 addi s1, s1, 0x3e4
2000434c bgeu a5, s5, 0x92
20004350 slli s3, s0, 2
20004354 srli s4, s4, 0xe
20004358 add s6, s1, s3
2000435c andi s4, s4, 1
20004360 c.li a5, 1
20004362 lw s8, 0x3c(s6)
20004366 bne s4, a5, 0x150
2000436a andi s9, s0, 0xff
2000436e lui s10, 0x20202
20004372 beq s8, s4, 0x10
20004376 lui s7, 0xadadb
2000437a addi s7, s7, -0x253
2000437e bne s8, s7, 0xee
20004382 lw a5, 0x10c(s10)
20004386 add s4, s1, s3
2000438a sw s2, 0x70(s4)
2000438e c.mv a2, s2
20004390 c.mv a1, s2
20004392 c.mv a0, s9
20004394 c.jalr a5
20004396 c.bnez a0, 0x84
20004398 c.li a5, 0xe
2000439a sb a5, 0(sp)
2000439e lui a5, 0x20209
200043a2 addi a5, a5, -0x690
200043a6 c.swsp a5, 4(sp)
200043a8 c.lui a5, 1
200043aa c.swsp zero, 0xc(sp)
200043ac addi a5, a5, -0x7f0
200043b0 c.swsp a5, 8(sp)
200043b2 lui a5, 0x20202
200043b6 lw a5, 0x348(a5)
200043ba c.mv a0, sp
200043bc c.jalr a5
200043be c.li a5, 2
200043c0 c.lwsp ra, 0x3c(sp)
200043c2 c.lwsp s0, 0x38(sp)
200043c4 c.lwsp s1, 0x34(sp)
200043c6 c.lwsp s2, 0x30(sp)
200043c8 c.lwsp s3, 0x2c(sp)
200043ca c.lwsp s4, 0x28(sp)
200043cc c.lwsp s5, 0x24(sp)

PACKET 0x2000461a
200045f2 c.addi4spn s1, sp, 0x48
200045f4 c.mv s1, a0
200045f6 c.mv a0, s2
200045f8 c.add a5, s0
200045fa lbu a4, 0x19(a5)
200045fe c.addi a4, 1
20004600 sb a4, 0x19(a5)
20004604 lw a5, 0x758(s7)
20004608 c.jalr a5
2000460a lui a5, 0x20000
2000460e bgeu a0, a5, 0x44
20004612 lw a5, 0x758(s7)
20004616 c.mv a0, s2
20004618 c.jalr a5
2000461a lui a5, 0xa0000
2000461e or s6, a0, a5
20004622 c.j 0x3a
20004624 c.andi a5, -2
20004626 sb a5, 0x30(a4)
2000462a lbu a5, 0x13(a4)
2000462e c.addi a5, 1
20004630 sb a5, 0x13(a4)
20004634 c.lwsp ra, 0x5c(sp)
20004636 c.lwsp s0, 0x58(sp)
20004638 c.lwsp s1, 0x54(sp)
2000463a c.lwsp s2, 0x50(sp)
2000463c c.lwsp s3, 0x4c(sp)
2000463e c.lwsp s4, 0x48(sp)
20004640 c.lwsp s5, 0x44(sp)
20004642 c.lwsp s6, 0x40(sp)
20004644 c.lwsp s7, 0x3c(sp)
20004646 c.lwsp s8, 0x38(sp)
20004648 c.lwsp s9, 0x34(sp)
2000464a c.lwsp s10, 0x30(sp)
2000464c c.lwsp s11, 0x2c(sp)
2000464e c.addi16sp sp, 0x60
20004650 c.jr ra
20004652 lw a5, 0x758(s7)
20004656 c.mv a0, s2
20004658 c.jalr a5
2000465a c.mv s6, a0
2000465c lui s5, 0xb8006
20004660 lw a5, 0x758(s7)
20004664 addi s5, s5, 0x400
20004668 c.add s5, s3
2000466a c.mv a0, s5
2000466c c.jalr a5
2000466e lui s8, 0x20203
20004672 addi a5, s8, 0x5b4
20004676 c.add a5, s3
20004678 c.lw a5, 0(a5)
2000467a c.srli a0, 0x10
2000467c andi a0, a0, 0x1ff
20004680 slli s2, a5, 3
20004684 c.add s2, s6
20004686 addi s8, s8, 0x5b4
2000468a beq a5, a0, -0x56
2000468e andi a3, a5, 0xff
20004692 andi s4, a0, 0xff
20004696 bgeu a5, a0, 0x82
2000469a sub s4, s4, a3
2000469e c.li s9, 5
200046a0 mul s9, s1, s9
200046a4 slli s11, s1, 1
200046a8 add a5, s0, s11
200046ac andi s4, s4, 0xff
200046b0 c.li s10, 0
200046b2 c.swsp a5, 8(sp)
200046b4 c.add s9, s0
200046b6 beq s10, s4, 0x56

PACKET 0x20004758
20004730 fmsub.d fs2, ft2, fa6, fs0, rne
20004734 c.addi a5, 1
20004736 sw a5, 0x94(a4)
2000473a lui a5, 0x20209
2000473e addi a5, a5, -0x690
20004742 c.swsp a5, 4(sp)
20004744 lbu a5, 9(s0)
20004748 bgeu t1, a5, 0x108
2000474c lw a5, 4(s2)
20004750 lui a4, 0x20000
20004754 bgeu a5, a4, 0xa
20004758 lui a4, 0xa0000
2000475c c.or a5, a4
2000475e lhu a6, 2(a5)
20004762 c.lwsp a5, 8(sp)
20004764 c.slli a6, 0x13
20004766 lhu a7, 0x54(a5)
2000476a srli a6, a6, 0x13
2000476e bne a6, a7, 0xfa
20004772 lui a5, 0x20202
20004776 lw a5, 0x1f8(a5)
2000477a c.mv a1, s2
2000477c c.mv a0, s1
2000477e c.jalr a5
20004780 c.li a5, 1
20004782 beq a0, a5, 0x2c
20004786 lui a5, 0x20201
2000478a lw a5, 0x6b8(a5)
2000478e c.li a4, 0
20004790 addi a3, zero, 0x1b9
20004794 c.li a2, 2
20004796 c.lui a0, 1
20004798 c.li a1, 0
2000479a c.jalr a5
2000479c lui a5, 0x20202
200047a0 lw a5, 0x340(a5)
200047a4 lui a1, 0x40
200047a8 c.li a0, 2
200047aa c.jalr a5
200047ac c.j -0xa0
200047ae lui a5, 0x20202
200047b2 lw a5, 0x120(a5)
200047b6 c.mv a0, s1
200047b8 c.jalr a5
200047ba lw a5, 0(s2)
200047be c.lui a4, 0xffffc
200047c0 c.and a5, a4
200047c2 ori a5, a5, 0x84
200047c6 sw a5, 0(s2)
200047ca lui a5, 0x30000
200047ce bltu a0, a5, 8
200047d2 c.slli a0, 3
200047d4 c.srli a0, 3
200047d6 add a4, s0, s11
200047da lhu a5, 0x54(a4)
200047de sw a0, 4(s2)
200047e2 c.lui a3, 2
200047e4 c.addi a5, 1
200047e6 c.slli a5, 0x10
200047e8 c.srli a5, 0x10
200047ea bgeu a5, a3, 0x7a
200047ee sh a5, 0x54(a4)
200047f2 add a5, s8, s3
200047f6 c.lw a3, 0(a5)

PACKET 0x20004d18
20004cf0 c.beqz a0, 8
20004cf2 andi s0, a0, 0xff
20004cf6 c.j -0x72
20004cf8 c.lwsp a3, 0(sp)
20004cfa c.lw a0, 0x48(s1)
20004cfc lui a1, 0x40000
20004d00 c.lw a4, 0(a3)
20004d02 lhu a3, 0x16(a3)
20004d06 c.lw a5, 0(s1)
20004d08 sub a4, a0, a4
20004d0c srl a3, a4, a3
20004d10 lhu a4, 0x30(s1)
20004d14 addi a1, a1, 0x200
20004d18 lui a6, 0xa0000
20004d1c sltiu a4, a4, 0x41
20004d20 xori a4, a4, 1
20004d24 c.slli a4, 7
20004d26 c.or a4, a1
20004d28 lui a1, 0x60000
20004d2c addi a1, a1, 0x680
20004d30 c.and a4, a1
20004d32 c.lw a1, 0(a5)
20004d34 addi a6, a6, -0x681
20004d38 c.lw a2, 8(a5)
20004d3a and a1, a1, a6
20004d3e c.or a4, a1
20004d40 c.sw a4, 0(a5)
20004d42 c.lw a4, 4(a5)
20004d44 lui a1, 0x4000
20004d48 addi a6, a1, -1
20004d4c and a4, a4, a6
20004d50 c.or a4, a1
20004d52 c.lui a1, 8
20004d54 c.sw a4, 4(a5)
20004d56 addi a4, a1, -1
20004d5a lw a6, 0x40(a5)
20004d5e c.and a4, a3
20004d60 lui a3, 0x80010
20004d64 c.or a4, a1
20004d66 c.addi a3, -1
20004d68 c.and a4, a3
20004d6a lui a3, 0x7fff0
20004d6e and a3, a3, a6
20004d72 c.or a4, a3
20004d74 c.sw a4, 0x40(a5)
20004d76 c.lw a4, 0x44(a5)
20004d78 lui a3, 0x7fff8
20004d7c c.addi a3, -1
20004d7e c.and a4, a3
20004d80 c.sw a4, 0x44(a5)
20004d82 c.lui a3, 0xffff8
20004d84 andi a4, a2, 0x7ff
20004d88 c.or a4, a3
20004d8a lhu a3, 0x48(a5)
20004d8e addi a1, a1, -0x800
20004d92 lui a2, 0x30000
20004d96 c.and a1, a3
20004d98 c.lw a3, 4(a0)
20004d9a c.or a4, a1
20004d9c sh a4, 0x48(a5)
20004da0 sh a3, 0x4a(a5)
20004da4 srli a4, a3, 0x10
20004da8 bltu a3, a2, 8
20004dac c.slli a4, 0x13
20004dae c.srli a4, 0x13
20004db0 sh a4, 0x4c(a5)
20004db4 lw a5, 0(s2)

PACKET 0x200052fa
200052d2 c.lwsp ra, 0x2c(sp)
200052d4 c.lwsp s0, 0x28(sp)
200052d6 c.lwsp s2, 0x20(sp)
200052d8 c.lwsp s3, 0x1c(sp)
200052da c.lwsp s4, 0x18(sp)
200052dc c.lwsp s5, 0x14(sp)
200052de c.lwsp s6, 0x10(sp)
200052e0 c.lwsp s7, 0xc(sp)
200052e2 c.lwsp s8, 8(sp)
200052e4 c.lwsp s9, 4(sp)
200052e6 c.mv a0, s1
200052e8 c.lwsp s1, 0x24(sp)
200052ea c.addi16sp sp, 0x30
200052ec c.jr ra
200052ee beqz s2, -0x1e
200052f2 lw s5, 0(s3)
200052f6 lui s6, 0x20000
200052fa lui s8, 0xa0000
200052fe lui s7, 0x20202
20005302 c.li s9, 1
20005304 slli a5, s0, 3
20005308 c.add a5, s5
2000530a c.lw a2, 4(a5)
2000530c bgeu a2, s6, 8
20005310 or a2, a2, s8
20005314 lw a4, 0x15c(s7)
20005318 lhu a1, 0(a5)
2000531c c.li a3, 0
2000531e c.mv a0, s4
20005320 c.jalr a4
20005322 c.mv s1, a0
20005324 c.beqz a0, 0x14
20005326 lui a5, 0x20202
2000532a lw a5, 0x340(a5)
2000532e addi a1, zero, 0x20
20005332 c.li a0, 2
20005334 c.jalr a5
20005336 c.j -0x64
20005338 lhu a5, 0x1e(s3)
2000533c addi a4, a5, -1
20005340 bltu s0, a4, 0x12
20005344 sub a5, s9, a5
20005348 c.add s0, a5
2000534a c.addi s2, -1
2000534c bnez s2, -0x48
20005350 c.j -0x80
20005352 c.addi s0, 1
20005354 c.j -0xa
20005356 c.li a5, 1
20005358 bne a0, a5, 0x68
2000535c lui a5, 0x20202
20005360 lw a5, 0x174(a5)
20005364 c.addi sp, -0x20
20005366 c.swsp ra, 0x1c(sp)
20005368 c.swsp zero, 0xc(sp)
2000536a c.li a2, 0
2000536c c.addi4spn a1, sp, 0xc
2000536e c.jalr a5
20005370 c.bnez a0, 0x2a
20005372 c.lwsp a2, 0xc(sp)
20005374 c.li a5, 0
20005376 lhu a1, 0x12(a2)
2000537a slli a4, a5, 0x10
2000537e c.srli a4, 0x10
20005380 bltu a4, a1, 0x20
20005384 lui a5, 0x20203
20005388 lw a5, 0x580(a5)
2000538c c.lw a5, 0(a5)
2000538e lw a4, 0x214(a5)
20005392 c.lw a5, 8(a4)
20005394 ori a5, a5, 1
20005398 c.sw a5, 8(a4)

PACKET 0x200126f2
200126ca c.li a4, 0
200126cc addi a3, zero, 0x106
200126d0 c.li a2, 2
200126d2 c.li a0, 8
200126d4 c.li a1, 0
200126d6 c.jalr a5
200126d8 c.li s0, 0
200126da c.lwsp ra, 0xc(sp)
200126dc c.mv a0, s0
200126de c.lwsp s0, 8(sp)
200126e0 c.lwsp s1, 4(sp)
200126e2 c.lwsp s2, 0(sp)
200126e4 c.addi sp, 0x10
200126e6 c.jr ra
200126e8 lui a1, 0x3000
200126ec c.slli a2, 0x18
200126ee c.and a2, a1
200126f0 c.or a0, a2
200126f2 lui a1, 0x88000
200126f6 c.j -0x56
200126f8 lui a5, 0x20201
200126fc lw a5, 0x748(a5)
20012700 addi a0, s2, 0x34c
20012704 c.jalr a5
20012706 c.srli a0, 8
20012708 andi a0, a0, 0x1ff
2001270c sh a0, 0(s1)
20012710 c.j -0x36
20012712 lui a5, 0x20201
20012716 c.addi sp, -0x10
20012718 lw a5, 0x73c(a5)
2001271c c.swsp ra, 0xc(sp)
2001271e c.li a4, 1
20012720 c.slli a3, 8
20012722 bne a1, a4, 0x4a
20012726 or a1, a3, a0
2001272a lui a4, 0x8c800
2001272e c.lui a0, 0xa
20012730 c.or a1, a4
20012732 addi a0, a0, 0x34c
20012736 c.jalr a5
20012738 lui a5, 0x20201
2001273c lw a5, 0x7b8(a5)
20012740 c.lui a0, 0xa
20012742 addi a0, a0, 0x34c
20012746 c.jalr a5
20012748 c.li a5, 1
2001274a beq a0, a5, 0x1c
2001274e lui a5, 0x20201
20012752 lw a5, 0x6b8(a5)
20012756 c.li a0, 8
20012758 c.li a4, 0
2001275a addi a3, zero, 0x106
2001275e c.li a2, 2
20012760 c.li a1, 0
20012762 c.jalr a5
20012764 c.li a0, 0
20012766 c.lwsp ra, 0xc(sp)
20012768 c.addi sp, 0x10
2001276a c.jr ra
2001276c c.slli a2, 0x18
2001276e lui a1, 0x3000
20012772 c.and a1, a2
20012774 c.or a1, a0
20012776 c.or a1, a3
20012778 lui a4, 0x8c000
2001277c c.j -0x4e
2001277e lui a5, 0x20201
20012782 c.addi sp, -0x20
20012784 lw a5, 0x73c(a5)
20012788 c.swsp s1, 0x14(sp)
2001278a c.swsp s3, 0xc(sp)
2001278c c.mv s1, a1
2001278e c.lui s3, 0xa
20012790 .byte 0xb7, 0x05

PACKET 0x20012876
2001284e c.li a4, 0
20012850 addi a3, zero, 0x108
20012854 c.li a2, 2
20012856 c.li a1, 0
20012858 c.jalr a5
2001285a c.li a0, 0
2001285c c.lwsp ra, 0xc(sp)
2001285e c.lwsp s0, 8(sp)
20012860 c.addi sp, 0x10
20012862 c.jr ra
20012864 lui a5, 0x20201
20012868 c.addi sp, -0x20
2001286a lw a5, 0x73c(a5)
2001286e c.swsp s2, 0x10(sp)
20012870 c.swsp s3, 0xc(sp)
20012872 c.mv s2, a1
20012874 c.lui s3, 0xa
20012876 lui a1, 0xa0000
2001287a c.or a1, a0
2001287c c.swsp ra, 0x1c(sp)
2001287e c.swsp s1, 0x14(sp)
20012880 addi a0, s3, 0x34c
20012884 c.swsp s0, 0x18(sp)
20012886 c.mv s1, a2
20012888 c.jalr a5
2001288a lui a5, 0x20201
2001288e lw a5, 0x7b8(a5)
20012892 addi a0, s3, 0x34c
20012896 c.jalr a5
20012898 c.li a5, 1
2001289a beq a0, a5, 0x2c
2001289e lui a5, 0x20201
200128a2 lw a5, 0x6b8(a5)
200128a6 c.li a4, 0
200128a8 addi a3, zero, 0x109
200128ac c.li a2, 2
200128ae c.li a0, 8
200128b0 c.li a1, 0
200128b2 c.jalr a5
200128b4 c.li s0, 0
200128b6 c.lwsp ra, 0x1c(sp)
200128b8 c.mv a0, s0
200128ba c.lwsp s0, 0x18(sp)
200128bc c.lwsp s1, 0x14(sp)
200128be c.lwsp s2, 0x10(sp)
200128c0 c.lwsp s3, 0xc(sp)
200128c2 c.addi16sp sp, 0x20
200128c4 c.jr ra
200128c6 lui a5, 0x20201
200128ca lw a5, 0x748(a5)
200128ce c.mv s0, a0
200128d0 addi a0, s3, 0x34c
200128d4 c.jalr a5
200128d6 srli a5, a0, 8
200128da andi a4, a5, 3
200128de c.andi a5, 1
200128e0 sb a5, 0(s2)
200128e4 srli a5, a4, 1
200128e8 sb a5, 0(s1)
200128ec c.j -0x36
200128ee c.slli a2, 1
200128f0 c.or a1, a2
200128f2 lui a5, 0x20201
200128f6 c.addi sp, -0x10
200128f8 lw a5, 0x73c(a5)
200128fc c.slli a1, 8
200128fe lui a4, 0xa4000
20012902 c.swsp s0, 8(sp)
20012904 c.or a1, a0
20012906 c.lui s0, 0xa
20012908 c.swsp ra, 0xc(sp)
2001290a c.or a1, a4
2001290c addi a0, s0, 0x34c
20012910 c.jalr a5
20012912 lui a5, 0x20201

PACKET 0x20012b84
20012b5c lw a5, 0x748(s9)
20012b60 addi a0, s6, 0x37c
20012b64 c.jalr a5
20012b66 slli a5, s0, 2
20012b6a c.add a5, s1
20012b6c c.sw a0, 0(a5)
20012b6e c.addi s0, 1
20012b70 c.j -0xcc
20012b72 lui a5, 0x20201
20012b76 c.addi sp, -0x10
20012b78 lw a5, 0x73c(a5)
20012b7c c.swsp s1, 4(sp)
20012b7e c.swsp s2, 0(sp)
20012b80 c.mv s1, a1
20012b82 c.lui s2, 0xa
20012b84 lui a1, 0xa8000
20012b88 c.or a1, a0
20012b8a c.swsp ra, 0xc(sp)
20012b8c addi a0, s2, 0x34c
20012b90 c.swsp s0, 8(sp)
20012b92 c.jalr a5
20012b94 lui a5, 0x20201
20012b98 lw a5, 0x7b8(a5)
20012b9c addi a0, s2, 0x34c
20012ba0 c.jalr a5
20012ba2 c.li a5, 1
20012ba4 beq a0, a5, 0x2a
20012ba8 lui a5, 0x20201
20012bac lw a5, 0x6b8(a5)
20012bb0 c.li a4, 0
20012bb2 addi a3, zero, 0x10e
20012bb6 c.li a2, 2
20012bb8 c.li a0, 8
20012bba c.li a1, 0
20012bbc c.jalr a5
20012bbe c.li s0, 0
20012bc0 c.lwsp ra, 0xc(sp)
20012bc2 c.mv a0, s0
20012bc4 c.lwsp s0, 8(sp)
20012bc6 c.lwsp s1, 4(sp)
20012bc8 c.lwsp s2, 0(sp)
20012bca c.addi sp, 0x10
20012bcc c.jr ra
20012bce lui a5, 0x20201
20012bd2 lw a5, 0x748(a5)
20012bd6 c.mv s0, a0
20012bd8 addi a0, s2, 0x34c
20012bdc c.jalr a5
20012bde c.slli a0, 9
20012be0 c.srli a0, 0x11
20012be2 c.sw a0, 0(s1)
20012be4 c.j -0x24
20012be6 lui a5, 0x20201
20012bea lw a4, 0x73c(a5)
20012bee lui a5, 0x4000
20012bf2 addi a5, a5, -0x100
20012bf6 c.slli a1, 8
20012bf8 c.addi sp, -0x10
20012bfa c.and a1, a5
20012bfc c.swsp s0, 8(sp)
20012bfe lui a5, 0xac000
20012c02 c.or a1, a0
20012c04 c.lui s0, 0xa
20012c06 c.or a1, a5
20012c08 c.swsp ra, 0xc(sp)
20012c0a addi a0, s0, 0x34c
20012c0e c.jalr a4
20012c10 lui a5, 0x20201
20012c14 lw a5, 0x7b8(a5)
20012c18 addi a0, s0, 0x34c
20012c1c c.jalr a5
20012c1e c.li a5, 1
20012c20 beq a0, a5, 0x1c

PACKET 0x20012f96
20012f6e c.bnez a5, -0xa6
20012f70 lui s3, 0x20202
20012f74 addi a4, s3, 0x544
20012f78 c.slli s1, 1
20012f7a c.add a4, s1
20012f7c lui s8, 0x20201
20012f80 lw a5, 0x73c(s8)
20012f84 lhu a0, 0x60(a4)
20012f88 c.li a1, 0
20012f8a addi s3, s3, 0x544
20012f8e c.jalr a5
20012f90 slli a3, s0, 4
20012f94 c.srli a3, 4
20012f96 lui a1, 0xa0000
20012f9a beqz s4, 8
20012f9e lui a1, 0xe0000
20012fa2 c.or a1, a3
20012fa4 beqz s7, 0xa
20012fa8 lui a5, 0x10000
20012fac c.or a1, a5
20012fae lw a5, 0(s2)
20012fb2 c.add s3, s1
20012fb4 lhu a0, 0x60(s3)
20012fb8 c.lw a5, 0x14(a5)
20012fba c.add a5, s9
20012fbc sw s6, 0(a5)
20012fc0 sw s5, 4(a5)
20012fc4 sb s4, 8(a5)
20012fc8 lw a5, 0x73c(s8)
20012fcc c.jalr a5
20012fce c.li a0, 1
20012fd0 c.j -0x106
20012fd2 c.addi16sp sp, -0x40
20012fd4 c.swsp s5, 0x24(sp)
20012fd6 c.swsp ra, 0x3c(sp)
20012fd8 c.mv s5, a5
20012fda c.swsp s0, 0x38(sp)
20012fdc c.swsp s1, 0x34(sp)
20012fde c.swsp s2, 0x30(sp)
20012fe0 c.swsp s3, 0x2c(sp)
20012fe2 c.swsp s4, 0x28(sp)
20012fe4 c.swsp s6, 0x20(sp)
20012fe6 c.swsp s7, 0x1c(sp)
20012fe8 c.swsp s8, 0x18(sp)
20012fea c.swsp s9, 0x14(sp)
20012fec c.li a5, 1
20012fee bgeu a5, a1, 0x20
20012ff2 c.li a0, 0
20012ff4 c.lwsp ra, 0x3c(sp)
20012ff6 c.lwsp s0, 0x38(sp)
20012ff8 c.lwsp s1, 0x34(sp)
20012ffa c.lwsp s2, 0x30(sp)
20012ffc c.lwsp s3, 0x2c(sp)
20012ffe c.lwsp s4, 0x28(sp)
20013000 c.lwsp s5, 0x24(sp)
20013002 c.lwsp s6, 0x20(sp)
20013004 c.lwsp s7, 0x1c(sp)
20013006 c.lwsp s8, 0x18(sp)
20013008 c.lwsp s9, 0x14(sp)
2001300a c.addi16sp sp, 0x40
2001300c c.jr ra
2001300e addi a5, a0, -2
20013012 c.mv s6, a4
20013014 andi a5, a5, 0xff
20013018 c.li a4, 5
2001301a c.mv s1, a0
2001301c bltu a4, a5, -0x2a
20013020 lui s2, 0x20203
20013024 lw s3, 0x580(s2)
20013028 c.mv s4, a1
2001302a c.mv s7, a2
2001302c lw a5, 0x14(s3)
20013030 c.mv s0, a3
20013032 addi s2, s2, 0x580

PACKET 0x200130c6
2001309e addi a5, s3, 0x544
200130a2 c.slli s1, 1
200130a4 c.add a5, s1
200130a6 lui s8, 0x20201
200130aa lw a4, 0x73c(s8)
200130ae lhu a0, 0x60(a5)
200130b2 c.li a1, 0
200130b4 addi s3, s3, 0x544
200130b8 c.jalr a4
200130ba lui a1, 0x10000
200130be c.addi a1, -1
200130c0 slli a3, s0, 0xa
200130c4 c.and a3, a1
200130c6 lui a1, 0xa0000
200130ca beqz s4, 8
200130ce lui a1, 0xe0000
200130d2 c.or a1, a3
200130d4 beqz s7, 0xa
200130d8 lui a5, 0x10000
200130dc c.or a1, a5
200130de lw a5, 0(s2)
200130e2 c.add s3, s1
200130e4 lhu a0, 0x60(s3)
200130e8 c.lw a3, 0x14(a5)
200130ea lw a5, 0x73c(s8)
200130ee c.add a3, s9
200130f0 sw s6, 0(a3)
200130f4 sw s5, 4(a3)
200130f8 sb s4, 8(a3)
200130fc c.jalr a5
200130fe c.li a0, 1
20013100 c.j -0x10c
20013102 c.addi16sp sp, -0x40
20013104 c.swsp s5, 0x24(sp)
20013106 c.mv s5, a5
20013108 addi a5, a0, -2
2001310c c.swsp s6, 0x20(sp)
2001310e c.swsp ra, 0x3c(sp)
20013110 c.mv s6, a4
20013112 c.swsp s0, 0x38(sp)
20013114 c.swsp s1, 0x34(sp)
20013116 c.swsp s2, 0x30(sp)
20013118 c.swsp s3, 0x2c(sp)
2001311a c.swsp s4, 0x28(sp)
2001311c c.swsp s7, 0x1c(sp)
2001311e c.swsp s8, 0x18(sp)
20013120 c.swsp s9, 0x14(sp)
20013122 andi a5, a5, 0xff
20013126 c.li a4, 5
20013128 bgeu a4, a5, 0x20
2001312c c.li a0, 0
2001312e c.lwsp ra, 0x3c(sp)
20013130 c.lwsp s0, 0x38(sp)
20013132 c.lwsp s1, 0x34(sp)
20013134 c.lwsp s2, 0x30(sp)
20013136 c.lwsp s3, 0x2c(sp)
20013138 c.lwsp s4, 0x28(sp)
2001313a c.lwsp s5, 0x24(sp)
2001313c c.lwsp s6, 0x20(sp)
2001313e c.lwsp s7, 0x1c(sp)
20013140 c.lwsp s8, 0x18(sp)
20013142 c.lwsp s9, 0x14(sp)
20013144 c.addi16sp sp, 0x40
20013146 c.jr ra
20013148 c.li a5, 1
2001314a c.mv s4, a1
2001314c bltu a5, a1, -0x20
20013150 lui s2, 0x20203
20013154 lw s3, 0x580(s2)
20013158 c.mv s1, a0
2001315a c.mv s7, a2
2001315c lw a5, 0x14(s3)
20013160 c.mv s0, a3
20013162 addi s2, s2, 0x580

PACKET 0x200131f4
200131cc c.fld fs0, 0x40(s0)
200131ce addi a5, s3, 0x544
200131d2 c.slli s1, 1
200131d4 c.add a5, s1
200131d6 lui s8, 0x20201
200131da lw a4, 0x73c(s8)
200131de lhu a0, 0x60(a5)
200131e2 c.li a1, 0
200131e4 addi s3, s3, 0x544
200131e8 c.jalr a4
200131ea lui a1, 0xff00
200131ee slli a3, s0, 0x14
200131f2 c.and a3, a1
200131f4 lui a1, 0xa0000
200131f8 beqz s4, 8
200131fc lui a1, 0xe0000
20013200 c.or a1, a3
20013202 beqz s7, 0xa
20013206 lui a5, 0x10000
2001320a c.or a1, a5
2001320c lw a5, 0(s2)
20013210 c.add s3, s1
20013212 lhu a0, 0x60(s3)
20013216 c.lw a3, 0x14(a5)
20013218 lw a5, 0x73c(s8)
2001321c c.add a3, s9
2001321e sw s6, 0(a3)
20013222 sw s5, 4(a3)
20013226 sb s4, 8(a3)
2001322a c.jalr a5
2001322c c.li a0, 1
2001322e c.j -0x100
20013230 addi a5, a0, -2
20013234 andi a5, a5, 0xff
20013238 c.li a4, 5
2001323a bltu a4, a5, 0x50
2001323e lui a5, 0x20201
20013242 lw a4, 0x73c(a5)
20013246 lui a5, 0x20202
2001324a slli a3, a0, 1
2001324e addi a5, a5, 0x544
20013252 c.addi sp, -0x10
20013254 c.add a5, a3
20013256 c.swsp s0, 8(sp)
20013258 c.mv s0, a0
2001325a lhu a0, 0x60(a5)
2001325e c.swsp ra, 0xc(sp)
20013260 c.li a1, 0
20013262 c.jalr a4
20013264 lui a5, 0x20203
20013268 lw a5, 0x580(a5)
2001326c c.slli s0, 4
2001326e c.lwsp ra, 0xc(sp)
20013270 c.lw a0, 0x14(a5)
20013272 c.li a5, 2
20013274 c.add s0, a0
20013276 sw zero, 0(s0)
2001327a sw zero, 4(s0)
2001327e sb a5, 8(s0)
20013282 c.lwsp s0, 8(sp)
20013284 c.li a0, 1
20013286 c.addi sp, 0x10
20013288 c.jr ra
2001328a c.li a0, 0
2001328c c.jr ra
2001328e c.addi16sp sp, -0x60
20013290 c.swsp s1, 0x54(sp)
20013292 c.swsp s3, 0x4c(sp)

PACKET 0x2001c468
2001c440 addi a0, s0, 0x600
2001c444 c.jalr a5
2001c446 lui a5, 0x20000
2001c44a bltu a0, a5, 0x124
2001c44e lw a5, 0x758(s2)
2001c452 addi a0, s0, 0x600
2001c456 c.jalr a5
2001c458 c.mv s1, a0
2001c45a lui s4, 0xb8006
2001c45e c.lui s3, 2
2001c460 addi s4, s4, 0x400
2001c464 lui s6, 0x20000
2001c468 lui s7, 0xa0000
2001c46c lui s5, 0x20202
2001c470 c.addi s3, -1
2001c472 lw a5, 0x758(s2)
2001c476 c.mv a0, s4
2001c478 c.jalr a5
2001c47a srli a5, a0, 0x10
2001c47e andi a5, a5, 0x1ff
2001c482 addi a4, a5, -1
2001c486 c.slli a4, 3
2001c488 c.add a4, s1
2001c48a c.lw s0, 4(a4)
2001c48c andi a3, a0, 0x1ff
2001c490 bgeu s0, s6, 8
2001c494 or s0, s0, s7
2001c498 beq a3, a5, -0x26
2001c49c c.lw a5, 0(s0)
2001c49e addi a3, s5, 0x438
2001c4a2 lhu a2, 0(a3)
2001c4a6 srli a4, a5, 0x10
2001c4aa and a4, a4, s3
2001c4ae bne a4, a2, -0x3c
2001c4b2 c.addi a4, 1
2001c4b4 c.slli a5, 0x12
2001c4b6 sh a4, 0(a3)
2001c4ba c.srli a5, 0x12
2001c4bc c.li a4, 4
2001c4be bltu a4, a5, 0x1a
2001c4c2 lui a5, 0x20201
2001c4c6 lw a5, 0xc4(a5)
2001c4ca lui a0, 0x20209
2001c4ce addi a1, zero, 0xd9
2001c4d2 addi a0, a0, 0x260
2001c4d6 c.jalr a5
2001c4d8 c.lw a4, 0(s0)
2001c4da c.lui a5, 4
2001c4dc c.and a5, a4
2001c4de c.bnez a5, 0x18
2001c4e0 lui a5, 0x20201
2001c4e4 lw a5, 0xc4(a5)
2001c4e8 lui a0, 0x20209
2001c4ec addi a1, zero, 0xdf
2001c4f0 addi a0, a0, 0x260
2001c4f4 c.jalr a5
2001c4f6 lui a5, 0x20201
2001c4fa lw a5, 0x748(a5)
2001c4fe c.lui a0, 9
2001c500 addi a0, a0, -0x6f4
2001c504 c.jalr a5
2001c506 c.andi a0, 1

PACKET 0x2001c576
2001c54e addi a0, a0, 0x260
2001c552 c.jalr a5
2001c554 addi a0, s0, 8
2001c558 c.lwsp s0, 0x28(sp)
2001c55a c.lwsp ra, 0x2c(sp)
2001c55c c.lwsp s1, 0x24(sp)
2001c55e c.lwsp s2, 0x20(sp)
2001c560 c.lwsp s3, 0x1c(sp)
2001c562 c.lwsp s4, 0x18(sp)
2001c564 c.lwsp s5, 0x14(sp)
2001c566 c.lwsp s6, 0x10(sp)
2001c568 c.lwsp s7, 0xc(sp)
2001c56a c.addi16sp sp, 0x30
2001c56c c.j -0x29c
2001c56e lw a5, 0x758(s2)
2001c572 addi a0, s0, 0x600
2001c576 lui s1, 0xa0000
2001c57a c.jalr a5
2001c57c c.or s1, a0
2001c57e c.j -0x124
2001c580 c.addi sp, -0x20
2001c582 c.swsp s1, 0x14(sp)
2001c584 lui s1, 0x20205
2001c588 addi a4, s1, 0x78
2001c58c c.lw a1, 4(a4)
2001c58e c.swsp s0, 0x18(sp)
2001c590 lui s0, 0x20201
2001c594 lw a5, 0x74c(s0)
2001c598 c.swsp ra, 0x1c(sp)
2001c59a c.swsp s2, 0x10(sp)
2001c59c c.swsp s3, 0xc(sp)
2001c59e lui a4, 0x30000
2001c5a2 addi s1, s1, 0x78
2001c5a6 bltu a1, a4, 8
2001c5aa c.slli a1, 3
2001c5ac c.srli a1, 3
2001c5ae lui a0, 0xb8006
2001c5b2 addi a0, a0, 0x600
2001c5b6 c.jalr a5
2001c5b8 lui a4, 0x20203
2001c5bc lw a1, 0x5c0(a4)
2001c5c0 lw a5, 0x74c(s0)
2001c5c4 lui a4, 0x30000
2001c5c8 bltu a1, a4, 8
2001c5cc c.slli a1, 3
2001c5ce c.srli a1, 3
2001c5d0 lui s2, 0xb8006
2001c5d4 addi a0, s2, 0x604
2001c5d8 c.jalr a5
2001c5da lui s3, 0x20201
2001c5de lw a5, 0x750(s3)
2001c5e2 c.li a1, 0x14
2001c5e4 addi a0, s2, 0x300
2001c5e8 c.jalr a5
2001c5ea lw a5, 0x750(s3)
2001c5ee c.li a1, 0x14
2001c5f0 addi a0, s2, 0x302
2001c5f4 c.jalr a5
2001c5f6 c.lw a5, 4(s1)
2001c5f8 c.lw a4, 8(s1)
2001c5fa lui a2, 0x20000
2001c5fe addi a1, a5, 0xa0
2001c602 c.lui a0, 0xffffc
2001c604 lui a6, 0x30000
2001c608 c.addi a2, -1
2001c60a c.lw a3, 0(a5)
2001c60c c.and a3, a0
2001c60e ori a3, a3, 0x200
2001c612 c.sw a3, 0(a5)
2001c614 c.mv a3, a4

PACKET 0x20027be2
20027bba c.lui a0, 8
20027bbc c.li a1, 2
20027bbe addi a0, a0, 0x15e
20027bc2 c.jalr a5
20027bc4 lui a5, 0x20201
20027bc8 lw a5, 0x264(a5)
20027bcc c.li a0, 0
20027bce c.jalr a5
20027bd0 c.j -0x7a
20027bd2 lhu a0, 0xe(sp)
20027bd6 lui a5, 0x7ff8
20027bda addi a1, zero, 0x28
20027bde c.slli a0, 0xf
20027be0 c.and a0, a5
20027be2 lui a5, 0xa8000
20027be6 c.or a0, a5
20027be8 c.lw a5, 0(a0)
20027bea bltz a5, 6
20027bee c.li a1, 0x18
20027bf0 and a2, a5, s3
20027bf4 srli a4, a5, 0xe
20027bf8 c.srli a5, 0xd
20027bfa andi a4, a4, 0x30
20027bfe c.andi a5, 6
20027c00 c.add a5, a4
20027c02 lw a3, 0x568(s8)
20027c06 c.add a5, a0
20027c08 c.slli a2, 0x10
20027c0a c.add a1, a5
20027c0c c.srli a2, 0x10
20027c0e c.jalr a3
20027c10 lbu a5, 0(s6)
20027c14 c.andi a5, 1
20027c16 c.bnez a5, -0x64
20027c18 lw a5, 0x748(s0)
20027c1c c.mv a0, s1
20027c1e c.jalr a5
20027c20 and a0, a0, s5
20027c24 c.beqz a0, -0x72
20027c26 lw a5, 0x578(s9)
20027c2a lhu a0, 0xe(sp)
20027c2e c.jalr a5
20027c30 lw a5, 0x580(s2)
20027c34 addi a0, sp, 0xe
20027c38 c.jalr a5
20027c3a c.j -0xa0
20027c3c lui a5, 0x20203
20027c40 lw a0, 0x28c(a5)
20027c44 c.addi sp, -0x20
20027c46 c.swsp ra, 0x1c(sp)
20027c48 c.swsp zero, 0xc(sp)
20027c4a c.beqz a0, 0x14
20027c4c lui a5, 0x20201
20027c50 lw a5, 0x18c(a5)
20027c54 c.addi4spn a4, sp, 0xc
20027c56 c.li a3, 0
20027c58 c.li a2, 4
20027c5a c.li a1, 0
20027c5c c.jalr a5
20027c5e c.lwsp ra, 0x1c(sp)
20027c60 c.addi16sp sp, 0x20
20027c62 c.jr ra
20027c64 lui a5, 0x20203
20027c68 lw a0, 0x28c(a5)
20027c6c c.beqz a0, 0x12
20027c6e lui a5, 0x20201
20027c72 lw a5, 0x190(a5)
20027c76 c.li a3, 0
20027c78 c.li a2, 4
20027c7a c.li a1, 0
20027c7c c.jr a5
20027c7e c.jr ra
20027c80 c.jr ra