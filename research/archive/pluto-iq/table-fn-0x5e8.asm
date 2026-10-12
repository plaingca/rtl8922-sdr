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
2000f382 c.li a0, 0
2000f384 c.j 0xe
2000f386 lw a5, 0x668(s2)
2000f38a c.li a0, 3
2000f38c c.jalr a5
2000f38e c.bnez a0, -0x28
2000f390 c.li a0, 0x10
2000f392 c.lwsp ra, 0x1c(sp)
2000f394 c.lwsp s0, 0x18(sp)
2000f396 c.lwsp s1, 0x14(sp)
2000f398 c.lwsp s2, 0x10(sp)
2000f39a c.addi16sp sp, 0x20
2000f39c c.jr ra
2000f39e lhu a4, 8(sp)
2000f3a2 c.andi s0, 7
2000f3a4 c.andi s1, 3
2000f3a6 c.lw a5, 0x24(a5)
2000f3a8 ori s1, s1, 0x20
2000f3ac c.slli s0, 2
2000f3ae c.or s0, s1
2000f3b0 andi a4, a4, -0x200
2000f3b4 c.or s0, a4
2000f3b6 sh s0, 8(sp)
2000f3ba c.swsp a5, 0xc(sp)
2000f3bc c.addi4spn a0, sp, 8
2000f3be c.jalr a3
2000f3c0 c.j -0x3e
2000f3c2 c.addi sp, -0x20
2000f3c4 c.swsp s2, 0x10(sp)
2000f3c6 lui s2, 0x20201
2000f3ca lw a5, 0x668(s2)
2000f3ce c.swsp s0, 0x18(sp)
2000f3d0 c.swsp s1, 0x14(sp)
2000f3d2 c.swsp ra, 0x1c(sp)
2000f3d4 c.mv s1, a0
2000f3d6 c.li a0, 1
2000f3d8 c.mv s0, a1
2000f3da c.jalr a5
2000f3dc c.beqz a0, 0x28
2000f3de slli a5, s1, 1
2000f3e2 c.add a5, s0
2000f3e4 addi a4, zero, 0x28
2000f3e8 mul a4, a5, a4
2000f3ec lui a5, 0x20202
2000f3f0 lw a5, 0x538(a5)
2000f3f4 c.add a5, a4
2000f3f6 c.lw a3, 8(a5)
2000f3f8 c.li a4, 1