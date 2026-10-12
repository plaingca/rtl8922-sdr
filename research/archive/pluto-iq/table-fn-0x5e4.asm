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
2000f3fa sb a4, 6(a5)
2000f3fe c.bnez a3, 0x1e
2000f400 c.li a0, 0
2000f402 c.j 0xe
2000f404 lw a5, 0x668(s2)
2000f408 c.li a0, 3
2000f40a c.jalr a5
2000f40c c.bnez a0, -0x2e
2000f40e c.li a0, 0x10
2000f410 c.lwsp ra, 0x1c(sp)
2000f412 c.lwsp s0, 0x18(sp)
2000f414 c.lwsp s1, 0x14(sp)
2000f416 c.lwsp s2, 0x10(sp)
2000f418 c.addi16sp sp, 0x20
2000f41a c.jr ra
2000f41c lhu a4, 8(sp)
2000f420 c.andi s0, 7
2000f422 c.lw a5, 0x24(a5)
2000f424 c.andi s1, 3
2000f426 c.slli s0, 2
2000f428 c.or s0, s1
2000f42a andi a4, a4, -0x200
2000f42e c.or s0, a4
2000f430 sh s0, 8(sp)
2000f434 c.swsp a5, 0xc(sp)
2000f436 c.addi4spn a0, sp, 8
2000f438 c.jalr a3
2000f43a c.j -0x3a
2000f43c c.addi sp, -0x20
2000f43e c.swsp s2, 0x10(sp)
2000f440 lui s2, 0x20201
2000f444 lw a5, 0x668(s2)
2000f448 c.swsp s0, 0x18(sp)
2000f44a c.swsp s1, 0x14(sp)
2000f44c c.swsp ra, 0x1c(sp)
2000f44e c.mv s0, a0
2000f450 c.li a0, 1
2000f452 c.mv s1, a1
2000f454 c.jalr a5
2000f456 c.beqz a0, 0x22
2000f458 slli a5, s0, 1
2000f45c addi a4, zero, 0x28
2000f460 c.add a5, s1
2000f462 mul a5, a5, a4
2000f466 lui a4, 0x20202
2000f46a lw a4, 0x538(a4)
2000f46e c.add a5, a4
2000f470 c.lw a3, 0x18(a5)
2000f472 c.bnez a3, 0x1e
2000f474 c.li a0, 0