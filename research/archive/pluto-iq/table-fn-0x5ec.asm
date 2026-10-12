2000f256 c.addi sp, -0x20
2000f258 c.swsp s2, 0x10(sp)
2000f25a lui s2, 0x20201
2000f25e lw a5, 0x668(s2)
2000f262 c.swsp s0, 0x18(sp)
2000f264 c.swsp s1, 0x14(sp)
2000f266 c.swsp ra, 0x1c(sp)
2000f268 c.mv s1, a0
2000f26a c.li a0, 1
2000f26c c.mv s0, a1
2000f26e c.jalr a5
2000f270 c.beqz a0, 0x22
2000f272 slli a5, s1, 1
2000f276 addi a4, zero, 0x28
2000f27a c.add a5, s0
2000f27c mul a5, a5, a4
2000f280 lui a4, 0x20202
2000f284 lw a4, 0x538(a4)
2000f288 c.add a5, a4
2000f28a c.lw a3, 0x14(a5)
2000f28c c.bnez a3, 0x1e
2000f28e c.li a0, 0
2000f290 c.j 0xe
2000f292 lw a5, 0x668(s2)
2000f296 c.li a0, 3
2000f298 c.jalr a5
2000f29a c.bnez a0, -0x28
2000f29c c.li a0, 0x10
2000f29e c.lwsp ra, 0x1c(sp)
2000f2a0 c.lwsp s0, 0x18(sp)
2000f2a2 c.lwsp s1, 0x14(sp)
2000f2a4 c.lwsp s2, 0x10(sp)
2000f2a6 c.addi16sp sp, 0x20
2000f2a8 c.jr ra
2000f2aa lhu a4, 8(sp)
2000f2ae c.andi s0, 7
2000f2b0 c.andi s1, 3
2000f2b2 c.lw a5, 0x24(a5)
2000f2b4 ori s1, s1, 0x60
2000f2b8 c.slli s0, 2
2000f2ba c.or s0, s1
2000f2bc andi a4, a4, -0x200
2000f2c0 c.or s0, a4
2000f2c2 sh s0, 8(sp)
2000f2c6 c.swsp a5, 0xc(sp)
2000f2c8 c.addi4spn a0, sp, 8
2000f2ca c.jalr a3
2000f2cc c.j -0x3e
2000f2ce c.addi sp, -0x20
2000f2d0 c.swsp s2, 0x10(sp)
2000f2d2 lui s2, 0x20201
2000f2d6 lw a5, 0x668(s2)
2000f2da c.swsp s0, 0x18(sp)
2000f2dc c.swsp s1, 0x14(sp)
2000f2de c.swsp ra, 0x1c(sp)
2000f2e0 c.mv s1, a0
2000f2e2 c.li a0, 1
2000f2e4 c.mv s0, a1
2000f2e6 c.jalr a5
2000f2e8 c.beqz a0, 0x26
2000f2ea slli a5, s1, 1
2000f2ee c.add a5, s0
2000f2f0 addi a4, zero, 0x28
2000f2f4 mul a4, a5, a4
2000f2f8 lui a5, 0x20202
2000f2fc lw a5, 0x538(a5)
2000f300 c.add a5, a4
2000f302 c.lw a3, 0x10(a5)
2000f304 sb zero, 6(a5)
2000f308 c.bnez a3, 0x1e
2000f30a c.li a0, 0
2000f30c c.j 0xe
2000f30e lw a5, 0x668(s2)
2000f312 c.li a0, 3
2000f314 c.jalr a5
2000f316 c.bnez a0, -0x2c
2000f318 c.li a0, 0x10
2000f31a c.lwsp ra, 0x1c(sp)
2000f31c c.lwsp s0, 0x18(sp)
2000f31e c.lwsp s1, 0x14(sp)
2000f320 c.lwsp s2, 0x10(sp)
2000f322 c.addi16sp sp, 0x20
2000f324 c.jr ra
2000f326 lhu a4, 8(sp)
2000f32a c.andi s0, 7
2000f32c c.andi s1, 3
2000f32e c.lw a5, 0x24(a5)
2000f330 ori s1, s1, 0x40
2000f334 c.slli s0, 2
2000f336 c.or s0, s1
2000f338 andi a4, a4, -0x200
2000f33c c.or s0, a4
2000f33e sh s0, 8(sp)
2000f342 c.swsp a5, 0xc(sp)
2000f344 c.addi4spn a0, sp, 8
2000f346 c.jalr a3
2000f348 c.j -0x3e
2000f34a c.addi sp, -0x20
2000f34c c.swsp s2, 0x10(sp)
2000f34e lui s2, 0x20201
2000f352 lw a5, 0x668(s2)
2000f356 c.swsp s0, 0x18(sp)
2000f358 c.swsp s1, 0x14(sp)
2000f35a c.swsp ra, 0x1c(sp)
2000f35c c.mv s1, a0
2000f35e c.li a0, 1
2000f360 c.mv s0, a1
2000f362 c.jalr a5
2000f364 c.beqz a0, 0x22
2000f366 slli a5, s1, 1
2000f36a addi a4, zero, 0x28
2000f36e c.add a5, s0
2000f370 mul a5, a5, a4
2000f374 lui a4, 0x20202
2000f378 lw a4, 0x538(a4)
2000f37c c.add a5, a4
2000f37e c.lw a3, 0xc(a5)
2000f380 c.bnez a3, 0x1e