20019064 lui a5, 0x20201
20019068 lw a5, 0x668(a5)
2001906c c.addi sp, -0x20
2001906e c.swsp s1, 0x14(sp)
20019070 c.swsp ra, 0x1c(sp)
20019072 c.swsp s0, 0x18(sp)
20019074 c.mv s1, a0
20019076 c.li a0, 1
20019078 c.jalr a5
2001907a beqz a0, 0x114
2001907e c.bnez s1, 0x26
20019080 lui a5, 0x20201
20019084 lw a5, 0x6b8(a5)
20019088 lui a0, 0x200
2001908c c.li a4, 0
2001908e addi a3, zero, 0x25f
20019092 c.li a2, 2
20019094 c.li a1, 0
20019096 c.jalr a5
20019098 c.li a0, 0xd
2001909a c.lwsp ra, 0x1c(sp)
2001909c c.lwsp s0, 0x18(sp)
2001909e c.lwsp s1, 0x14(sp)
200190a0 c.addi16sp sp, 0x20
200190a2 c.jr ra
200190a4 c.lw a2, 0(s1)
200190a6 lui a5, 0x20203
200190aa c.li s0, 0xc
200190ac srli a6, a2, 8
200190b0 andi a6, a6, 0xf
200190b4 lw a4, 0x584(a5)
200190b8 mul a5, a6, s0
200190bc c.srli a2, 0xc
200190be c.lw s0, 0x3c(a4)
200190c0 c.andi a2, 0xf
200190c2 c.add s0, a5
200190c4 lbu a4, 4(s0)
200190c8 c.lw a1, 0(s0)
200190ca sra a4, a4, a2
200190ce srli a5, a1, 4
200190d2 c.andi a4, 1
200190d4 c.andi a5, 1
200190d6 c.beqz a4, 0x9a
200190d8 lui a4, 0x20201
200190dc lw a4, 0x5f8(a4)
200190e0 c.li a3, 0
200190e2 c.andi a1, 0xf
200190e4 c.mv a0, a5
200190e6 c.jalr a4
200190e8 lw a7, 0(s1)
200190ec c.beqz a0, 0x38
200190ee lw a6, 0(s0)
200190f2 lui a5, 0x20201
200190f6 lw t1, 0x6b8(a5)
200190fa srli a7, a7, 0xc
200190fe srli a5, a6, 4
20019102 c.swsp a0, 4(sp)
20019104 c.swsp zero, 0(sp)
20019106 lui a0, 0x200
2001910a andi a7, a7, 0xf
2001910e andi a6, a6, 0xf
20019112 c.andi a5, 1
20019114 c.li a4, 5
20019116 addi a3, zero, 0x261
2001911a c.li a2, 2
2001911c c.li a1, 0
2001911e c.jalr t1
20019120 c.li a0, 7
20019122 c.j -0x88
20019124 srli a7, a7, 0xc
20019128 lbu a4, 4(s0)
2001912c andi a7, a7, 0xf
20019130 c.li a5, 1
20019132 sll a5, a5, a7
20019136 not a5, a5
2001913a c.and a5, a4
2001913c sb a5, 4(s0)
20019140 c.bnez a5, -0xa6
20019142 lui a5, 0x20201
20019146 lw a7, 0x6b8(a5)
2001914a lw a6, 0(s1)
2001914e c.lw a5, 0(s0)
20019150 lui a0, 0x200
20019154 srli a6, a6, 8
20019158 c.srli a5, 4
2001915a andi a6, a6, 0xf
2001915e c.andi a5, 1
20019160 c.li a4, 2
20019162 addi a3, zero, 0x264
20019166 c.li a2, 2
20019168 c.li a1, 0
2001916a c.jalr a7
2001916c c.li a0, 0xb
2001916e c.j -0xd4
20019170 lui a4, 0x20201
20019174 lw t1, 0x6b8(a4)
20019178 c.mv a7, a2
2001917a lui a0, 0x200
2001917e c.li a4, 3
20019180 addi a3, zero, 0x263
20019184 c.li a2, 2
20019186 c.li a1, 0
20019188 c.jalr t1
2001918a c.li a0, 0xa
2001918c c.j -0xf2
2001918e c.li a0, 0x10