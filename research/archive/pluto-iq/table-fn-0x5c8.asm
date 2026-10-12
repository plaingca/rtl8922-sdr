2002243c lui a5, 0x20202
20022440 lw a5, 0x160(a5)
20022444 c.addi sp, -0x10
20022446 c.swsp ra, 0xc(sp)
20022448 c.li a2, 0
2002244a c.jalr a5
2002244c c.beqz a0, 0x16
2002244e lui a5, 0x20202
20022452 c.lwsp ra, 0xc(sp)
20022454 lw a5, 0x340(a5)
20022458 addi a1, zero, 0x20
2002245c c.li a0, 2
2002245e c.addi sp, 0x10
20022460 c.jr a5
20022462 c.lwsp ra, 0xc(sp)
20022464 c.addi sp, 0x10
20022466 c.jr ra
20022468 lui a5, 0x20203
2002246c lw a5, 0x584(a5)
20022470 c.addi16sp sp, -0x90
20022472 c.swsp ra, 0x8c(sp)
20022474 c.lw a4, 0x20(a5)
20022476 c.swsp s0, 0x88(sp)
20022478 lbu a3, 0(a0)
2002247c c.lw a4, 0(a4)
2002247e c.li a5, 1
20022480 sll a5, a5, a3
20022484 c.swsp zero, 0x18(sp)
20022486 c.swsp zero, 0x1c(sp)
20022488 c.swsp zero, 0x20(sp)
2002248a c.swsp zero, 0x24(sp)
2002248c c.swsp zero, 0x28(sp)
2002248e c.swsp zero, 0xc(sp)
20022490 c.swsp zero, 0x10(sp)
20022492 c.swsp zero, 0x14(sp)
20022494 c.and a5, a4
20022496 c.bnez a5, 0xe
20022498 addi a0, zero, 0x502
2002249c c.lwsp ra, 0x8c(sp)
2002249e c.lwsp s0, 0x88(sp)
200224a0 c.addi16sp sp, 0x90
200224a2 c.jr ra
200224a4 lhu a5, 2(a0)
200224a8 addi a4, zero, 0x28
200224ac c.mv s0, a0
200224ae andi a5, a5, 0x6e
200224b2 addi a0, zero, 0x602
200224b6 bne a5, a4, -0x1a
200224ba lui a5, 0x20202
200224be lw a5, 0x164(a5)
200224c2 c.li a3, 0
200224c4 c.addi4spn a2, sp, 4
200224c6 addi a1, zero, 0x50
200224ca c.li a0, 1
200224cc c.jalr a5
200224ce c.beqz a0, 0x2c
200224d0 lui a5, 0x20202
200224d4 lw a5, 0x340(a5)
200224d8 lui a1, 0x2000
200224dc c.li a0, 0
200224de c.jalr a5
200224e0 lhu a5, 2(s0)
200224e4 c.andi a5, 1
200224e6 c.beqz a5, 0xe
200224e8 lui a5, 0x20201
200224ec lw a5, 0x408(a5)
200224f0 c.lw a0, 4(s0)
200224f2 c.jalr a5
200224f4 addi a0, zero, 0x102
200224f8 c.j -0x5c
200224fa c.lwsp a5, 4(sp)
200224fc c.bnez a5, 0x1c
200224fe lhu a5, 2(s0)
20022502 c.andi a5, 1
20022504 c.beqz a5, 0xe
20022506 lui a5, 0x20201
2002250a lw a5, 0x408(a5)
2002250e c.lw a0, 4(s0)
20022510 c.jalr a5
20022512 addi a0, zero, 0x202
20022516 c.j -0x7a
20022518 lui a5, 0x20202
2002251c lw a5, 0x168(a5)
20022520 c.li a2, 0
20022522 c.addi4spn a1, sp, 8
20022524 c.li a0, 1
20022526 c.jalr a5
20022528 c.beqz a0, 0x3e
2002252a lui a5, 0x20202
2002252e lw a5, 0x340(a5)
20022532 lui a1, 0x2000
20022536 c.li a0, 0
20022538 c.jalr a5
2002253a lui a5, 0x20201
2002253e lw a5, 0x5cc(a5)
20022542 c.lwsp a2, 4(sp)
20022544 addi a1, zero, 0x50
20022548 c.li a0, 1
2002254a c.jalr a5
2002254c lhu a5, 2(s0)
20022550 c.andi a5, 1
20022552 c.beqz a5, 0xe
20022554 lui a5, 0x20201
20022558 lw a5, 0x408(a5)
2002255c c.lw a0, 4(s0)
2002255e c.jalr a5
20022560 addi a0, zero, 0x302
20022564 c.j -0xc8
20022566 c.lwsp a5, 8(sp)