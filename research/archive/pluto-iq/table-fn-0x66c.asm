200121a6 c.addi16sp sp, -0x30
200121a8 c.swsp s0, 0x28(sp)
200121aa c.swsp s1, 0x24(sp)
200121ac c.swsp s2, 0x20(sp)
200121ae c.swsp s3, 0x1c(sp)
200121b0 c.mv s1, a0
200121b2 c.swsp ra, 0x2c(sp)
200121b4 c.mv s0, a1
200121b6 c.li a0, 1
200121b8 addi s3, zero, 0x7f
200121bc lui s2, 0x20202
200121c0 c.beqz s0, 0x10
200121c2 lw a5, -0x24(s2)
200121c6 bltu s3, s0, 0x1c
200121ca c.mv a1, s0
200121cc c.mv a0, s1
200121ce c.jalr a5
200121d0 c.lwsp ra, 0x2c(sp)
200121d2 c.lwsp s0, 0x28(sp)
200121d4 c.lwsp s1, 0x24(sp)
200121d6 c.lwsp s2, 0x20(sp)
200121d8 c.lwsp s3, 0x1c(sp)
200121da andi a0, a0, 0xff
200121de c.addi16sp sp, 0x30
200121e0 c.jr ra
200121e2 c.mv a0, s1
200121e4 addi a1, zero, 0x80
200121e8 c.swsp a2, 0xc(sp)
200121ea c.jalr a5
200121ec c.lwsp a2, 0xc(sp)
200121ee addi s0, s0, -0x80
200121f2 addi s1, s1, 0x80
200121f6 addi a2, a2, 0x80
200121fa c.j -0x3a
200121fc c.addi sp, -0x10
200121fe c.swsp s0, 8(sp)
20012200 c.swsp s1, 4(sp)
20012202 c.swsp s2, 0(sp)
20012204 c.swsp ra, 0xc(sp)
20012206 c.mv s0, a0
20012208 addi s1, zero, 0x3e8
2001220c lui s2, 0x20201
20012210 c.addi s1, -1
20012212 c.bnez s1, 0x10
20012214 c.li a0, 0
20012216 c.lwsp ra, 0xc(sp)
20012218 c.lwsp s0, 8(sp)
2001221a c.lwsp s1, 4(sp)
2001221c c.lwsp s2, 0(sp)
2001221e c.addi sp, 0x10
20012220 c.jr ra
20012222 lw a5, 0x748(s2)
20012226 c.mv a0, s0
20012228 c.jalr a5
2001222a c.mv a4, a0
2001222c bltz a0, -0x1c
20012230 c.lui a5, 0xffff6
20012232 addi a5, a5, -0x33c
20012236 c.add a5, s0
20012238 c.andi a5, -0x11
2001223a c.beqz a5, 0x10
2001223c c.lui a5, 0xa
2001223e c.andi s0, -5
20012240 addi a5, a5, 0x340
20012244 c.li a0, 1
20012246 bne s0, a5, -0x30
2001224a lui a0, 0x60000
2001224e c.and a4, a0
20012250 seqz a0, a4
20012254 c.j -0x3e
20012256 c.addi16sp sp, -0x30
20012258 c.swsp s0, 0x28(sp)
2001225a c.swsp s2, 0x20(sp)
2001225c c.swsp ra, 0x2c(sp)
2001225e c.swsp s1, 0x24(sp)
20012260 c.swsp s3, 0x1c(sp)
20012262 c.swsp s4, 0x18(sp)
20012264 c.swsp s5, 0x14(sp)
20012266 c.swsp s6, 0x10(sp)
20012268 c.li a5, 1
2001226a c.mv s2, a0
2001226c c.mv s0, a2
2001226e beq a1, a5, 0x4e
20012272 slli s4, a0, 0x18
20012276 c.li s1, 8
20012278 srai s4, s4, 0x18
2001227c lui s5, 0x20201
20012280 c.li s6, 1
20012282 c.li s3, 0x10
20012284 c.mv a5, s1
20012286 bgez s4, 0xc
2001228a addi a5, s1, 1
2001228e andi a5, a5, 0xff
20012292 c.swsp a5, 8(sp)
20012294 c.srli a5, 1
20012296 c.andi a5, 3
20012298 c.sub a5, s0
2001229a seqz a5, a5
2001229e sb a5, 0xc(sp)
200122a2 lw a5, 0x7a8(s5)
200122a6 c.addi4spn a1, sp, 8
200122a8 c.mv a0, s2
200122aa c.jalr a5
200122ac bne a0, s6, 0x5c
200122b0 c.addi s1, 2
200122b2 andi s1, s1, 0xff
200122b6 bne s1, s3, -0x32
200122ba c.j 0x72
200122bc snez s0, a2
200122c0 c.mv s3, a1
200122c2 lui a5, 0x20201
200122c6 c.slli s0, 0x18
200122c8 lui a1, 0x90040
200122cc c.or s0, a0
200122ce lw a5, 0x73c(a5)