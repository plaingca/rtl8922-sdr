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
20012990 c.slli a1, 8
20012992 andi a1, a1, 0x300
20012996 beqz s6, 0xbe
2001299a lw a4, 0x73c(s0)
2001299e c.beqz a5, 0xae
200129a0 c.lui a5, 1
200129a2 addi a5, a5, -0x400
200129a6 c.lui a0, 0xa
200129a8 c.or a1, a5
200129aa addi a0, a0, 0x37c
200129ae c.jalr a4
200129b0 lw a5, 0x73c(s0)
200129b4 lui a1, 0x81000
200129b8 c.lui s0, 0xa
200129ba or a1, s4, a1
200129be addi a0, s0, 0x378
200129c2 c.jalr a5
200129c4 lw a5, 0x7b8(s5)
200129c8 addi a0, s0, 0x378
200129cc c.jalr a5
200129ce c.li a5, 1
200129d0 bne a0, a5, 0x68
200129d4 c.lwsp ra, 0x2c(sp)
200129d6 c.lwsp s0, 0x28(sp)
200129d8 c.lwsp s1, 0x24(sp)
200129da c.lwsp s2, 0x20(sp)
200129dc c.lwsp s3, 0x1c(sp)
200129de c.lwsp s4, 0x18(sp)
200129e0 c.lwsp s5, 0x14(sp)
200129e2 c.lwsp s6, 0x10(sp)
200129e4 c.lwsp s7, 0xc(sp)
200129e6 c.lwsp s8, 8(sp)
200129e8 c.addi16sp sp, 0x30
200129ea c.jr ra
200129ec lui a5, 0x20201
200129f0 lw a5, 0x6b8(a5)
200129f4 c.li a4, 0
200129f6 addi a3, zero, 0x10b
200129fa c.li a0, 8
200129fc c.li a2, 2
200129fe c.li a1, 0
20012a00 c.jalr a5
20012a02 c.li a0, 0
20012a04 c.j -0x30
20012a06 slli a5, s2, 2
20012a0a c.add a5, s1
20012a0c lw a4, 0x73c(s0)
20012a10 c.lw a1, 0(a5)
20012a12 c.mv a0, s8
20012a14 c.jalr a4
20012a16 lw a5, 0x73c(s0)