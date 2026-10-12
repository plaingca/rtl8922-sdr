20019192 lui a5, 0x20201
20019196 lw a5, 0x668(a5)
2001919a c.addi sp, -0x20
2001919c c.swsp s0, 0x18(sp)
2001919e c.swsp s2, 0x10(sp)
200191a0 c.swsp ra, 0x1c(sp)
200191a2 c.swsp s1, 0x14(sp)
200191a4 c.mv s2, a0
200191a6 c.li a0, 1
200191a8 c.jalr a5
200191aa c.li s0, 0x10
200191ac c.beqz a0, 0x20
200191ae bnez s2, 0x2c
200191b2 lui a5, 0x20201
200191b6 lw a5, 0x6b8(a5)
200191ba c.li a4, 0
200191bc addi a3, zero, 0x25f
200191c0 c.li a2, 2
200191c2 lui a0, 0x200
200191c6 c.li a1, 0
200191c8 c.jalr a5
200191ca c.li s0, 0xd
200191cc c.lwsp ra, 0x1c(sp)
200191ce c.mv a0, s0
200191d0 c.lwsp s0, 0x18(sp)
200191d2 c.lwsp s1, 0x14(sp)
200191d4 c.lwsp s2, 0x10(sp)
200191d6 c.addi16sp sp, 0x20
200191d8 c.jr ra
200191da lui a5, 0x20203
200191de lw a4, 0x584(a5)
200191e2 lw a5, 0(s2)
200191e6 c.li a3, 0xc
200191e8 c.lw s1, 0x3c(a4)
200191ea c.srli a5, 8
200191ec c.andi a5, 0xf
200191ee mul a5, a5, a3
200191f2 c.li a2, 0
200191f4 c.add s1, a5
200191f6 c.lw a1, 0(s1)
200191f8 lui a5, 0x20201
200191fc lw a5, 0x5fc(a5)
20019200 srli a0, a1, 4
20019204 c.andi a0, 1
20019206 c.andi a1, 0xf
20019208 c.jalr a5
2001920a c.beqz a0, 0x30
2001920c lw a6, 0(s1)
20019210 lui a5, 0x20201
20019214 lw t1, 0x6b8(a5)
20019218 srli a5, a6, 4
2001921c c.swsp a0, 0(sp)
2001921e c.li a7, 0
20019220 andi a6, a6, 0xf
20019224 c.andi a5, 1
20019226 c.li a4, 4
20019228 addi a3, zero, 0x260
2001922c c.li a2, 2
2001922e lui a0, 0x200
20019232 c.li a1, 0
20019234 c.jalr t1
20019236 c.li s0, 6
20019238 c.j -0x6c
2001923a lui a5, 0x20201
2001923e lw a5, 0x63c(a5)
20019242 c.mv a0, s1
20019244 c.jalr a5
20019246 c.mv s0, a0
20019248 c.beqz a0, 0x26
2001924a lui a5, 0x20201
2001924e lw a7, 0x6b8(a5)
20019252 lw a5, 0(s2)
20019256 c.mv a6, a0
20019258 c.li a4, 2
2001925a c.srli a5, 8
2001925c c.andi a5, 0xf
2001925e addi a3, zero, 0x26f
20019262 c.li a2, 2
20019264 lui a0, 0x200
20019268 c.li a1, 0
2001926a c.jalr a7
2001926c c.j -0xa0
2001926e lui a5, 0x20201
20019272 lw a5, 0x640(a5)
20019276 c.mv a0, s1
20019278 c.jalr a5
2001927a c.j -0xae
2001927c lui a5, 0x20201
20019280 lw a5, 0x668(a5)
20019284 c.addi sp, -0x10
20019286 c.swsp s0, 8(sp)
20019288 c.swsp ra, 0xc(sp)
2001928a c.mv s0, a0
2001928c c.li a0, 1
2001928e c.jalr a5
20019290 beqz a0, 0x1a4
20019294 c.bnez s0, 0x26
20019296 lui a5, 0x20201
2001929a lw a5, 0x6b8(a5)
2001929e c.li a4, 0
200192a0 addi a3, zero, 0x265
200192a4 c.li a2, 2
200192a6 lui a0, 0x200
200192aa c.li a1, 0
200192ac c.jalr a5
200192ae c.li s0, 0xd
200192b0 c.lwsp ra, 0xc(sp)
200192b2 c.mv a0, s0
200192b4 c.lwsp s0, 8(sp)
200192b6 c.addi sp, 0x10
200192b8 c.jr ra
200192ba c.lw a4, 8(s0)
200192bc c.li a3, 3