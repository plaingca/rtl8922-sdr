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
20012916 lw a5, 0x7b8(a5)
2001291a addi a0, s0, 0x34c
2001291e c.jalr a5
20012920 c.li a5, 1
20012922 beq a0, a5, 0x1c
20012926 lui a5, 0x20201
2001292a lw a5, 0x6b8(a5)
2001292e c.li a0, 8
20012930 c.li a4, 0
20012932 addi a3, zero, 0x10a
20012936 c.li a2, 2
20012938 c.li a1, 0
2001293a c.jalr a5
2001293c c.li a0, 0
2001293e c.lwsp ra, 0xc(sp)
20012940 c.lwsp s0, 8(sp)
20012942 c.addi sp, 0x10
20012944 c.jr ra
20012946 c.addi16sp sp, -0x30
20012948 c.swsp ra, 0x2c(sp)
2001294a c.swsp s0, 0x28(sp)
2001294c c.swsp s1, 0x24(sp)
2001294e c.swsp s2, 0x20(sp)
20012950 c.swsp s3, 0x1c(sp)
20012952 c.swsp s4, 0x18(sp)
20012954 c.swsp s5, 0x14(sp)
20012956 c.swsp s6, 0x10(sp)
20012958 c.swsp s7, 0xc(sp)
2001295a c.swsp s8, 8(sp)
2001295c c.beqz a1, 0x90
2001295e c.li s2, 0
20012960 c.beqz a2, 0x8c
20012962 c.lui s3, 0xa
20012964 addi s8, s3, 0x37c
20012968 c.mv s4, a0
2001296a c.mv s1, a1
2001296c c.mv s6, a3
2001296e lui s0, 0x20201
20012972 lui s5, 0x20201
20012976 lui s7, 0x83000
2001297a addi s3, s3, 0x378
2001297e lbu a5, 0x21(s1)
20012982 c.li a4, 2
20012984 c.bnez a5, 4
20012986 c.li a4, 8
20012988 bltu s2, a4, 0x7e
2001298c lbu a1, 0x20(s1)