2000f4b4 c.addi sp, -0x20
2000f4b6 c.swsp s2, 0x10(sp)
2000f4b8 lui s2, 0x20201
2000f4bc lw a5, 0x668(s2)
2000f4c0 c.swsp s0, 0x18(sp)
2000f4c2 c.swsp s1, 0x14(sp)
2000f4c4 c.swsp ra, 0x1c(sp)
2000f4c6 c.mv s0, a0
2000f4c8 c.li a0, 1
2000f4ca c.mv s1, a1
2000f4cc c.jalr a5
2000f4ce c.beqz a0, 0x22
2000f4d0 slli a5, s0, 1
2000f4d4 addi a4, zero, 0x28
2000f4d8 c.add a5, s1
2000f4da mul a5, a5, a4
2000f4de lui a4, 0x20202
2000f4e2 lw a4, 0x538(a4)
2000f4e6 c.add a5, a4
2000f4e8 c.lw a3, 0x1c(a5)
2000f4ea c.bnez a3, 0x1e
2000f4ec c.li a0, 0
2000f4ee c.j 0xe
2000f4f0 lw a5, 0x668(s2)
2000f4f4 c.li a0, 3
2000f4f6 c.jalr a5
2000f4f8 c.bnez a0, -0x28
2000f4fa c.li a0, 0x10
2000f4fc c.lwsp ra, 0x1c(sp)
2000f4fe c.lwsp s0, 0x18(sp)
2000f500 c.lwsp s1, 0x14(sp)
2000f502 c.lwsp s2, 0x10(sp)
2000f504 c.addi16sp sp, 0x20
2000f506 c.jr ra
2000f508 lhu a4, 8(sp)
2000f50c c.andi s1, 7
2000f50e c.slli s1, 2
2000f510 c.andi s0, 3
2000f512 c.lw a5, 0x24(a5)
2000f514 c.or s0, s1
2000f516 andi a4, a4, -0x200
2000f51a ori s0, s0, 0xa0
2000f51e c.or s0, a4
2000f520 sh s0, 8(sp)
2000f524 c.swsp a5, 0xc(sp)
2000f526 c.addi4spn a0, sp, 8
2000f528 c.jalr a3
2000f52a c.j -0x3e
2000f52c lui a5, 0x20202
2000f530 lw a5, -0x37c(a5)
2000f534 c.addi sp, -0x10
2000f536 c.swsp ra, 0xc(sp)
2000f538 c.jalr a5
2000f53a addi a4, zero, 0xff
2000f53e beq a0, a4, 0x2a
2000f542 lui a4, 0x20203
2000f546 lw a4, 0x584(a4)
2000f54a slli a5, a0, 2
2000f54e c.lw a4, 0x20(a4)
2000f550 c.add a5, a4
2000f552 c.lw a5, 8(a5)
2000f554 lbu a5, 3(a5)
2000f558 c.bnez a5, 0x10
2000f55a lui a5, 0x20202
2000f55e c.lwsp ra, 0xc(sp)
2000f560 lw a5, -0x63c(a5)
2000f564 c.addi sp, 0x10
2000f566 c.jr a5
2000f568 c.lwsp ra, 0xc(sp)
2000f56a c.addi sp, 0x10
2000f56c c.jr ra
2000f56e lui a5, 0x20201
2000f572 c.addi sp, -0x10
2000f574 lw a7, 0x6b8(a5)
2000f578 c.swsp s0, 8(sp)
2000f57a c.mv a5, a0
2000f57c c.mv s0, a0
2000f57e c.lui a0, 1
2000f580 c.mv a6, a1
2000f582 c.li a4, 2
2000f584 c.swsp ra, 0xc(sp)
2000f586 c.swsp s1, 4(sp)
2000f588 addi a3, zero, 0x126
2000f58c c.mv s1, a1
2000f58e c.li a2, 5
2000f590 addi a0, a0, -0x800
2000f594 c.li a1, 0
2000f596 c.jalr a7
2000f598 lui a5, 0x20202
2000f59c lw a5, -0x37c(a5)
2000f5a0 c.mv a1, s1
2000f5a2 c.mv a0, s0
2000f5a4 c.jalr a5
2000f5a6 addi a4, zero, 0xff
2000f5aa beq a0, a4, 0x2e
2000f5ae lui a4, 0x20203
2000f5b2 lw a4, 0x584(a4)
2000f5b6 slli a5, a0, 2
2000f5ba c.lw a4, 0x20(a4)
2000f5bc c.add a5, a4
2000f5be c.lw a5, 8(a5)
2000f5c0 lbu a5, 3(a5)
2000f5c4 c.bnez a5, 0x14
2000f5c6 c.lwsp s0, 8(sp)
2000f5c8 lui a5, 0x20202
2000f5cc c.lwsp ra, 0xc(sp)
2000f5ce c.lwsp s1, 4(sp)
2000f5d0 lw a5, -0x640(a5)
2000f5d4 c.addi sp, 0x10
2000f5d6 c.jr a5
2000f5d8 c.lwsp ra, 0xc(sp)
2000f5da c.lwsp s0, 8(sp)
2000f5dc c.lwsp s1, 4(sp)
2000f5de c.addi sp, 0x10