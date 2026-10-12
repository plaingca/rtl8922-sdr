2002747a lui a5, 0x20201
2002747e lw a5, 0x1b4(a5)
20027482 c.addi sp, -0x10
20027484 c.swsp s0, 8(sp)
20027486 c.swsp ra, 0xc(sp)
20027488 c.mv s0, a0
2002748a c.jalr a5
2002748c lui a5, 0x20203
20027490 lw a5, 0x584(a5)
20027494 slli a0, s0, 2
20027498 c.lw a5, 0x20(a5)
2002749a c.add a0, a5
2002749c c.lw a5, 8(a0)
2002749e sw zero, 0x4c(a5)
200274a2 sw zero, 0x50(a5)
200274a6 sb zero, 0x27(a5)
200274aa c.lwsp s0, 8(sp)
200274ac lui a5, 0x20201
200274b0 c.lwsp ra, 0xc(sp)
200274b2 lw a5, 0x1b0(a5)
200274b6 c.addi sp, 0x10
200274b8 c.jr a5
200274ba lui a5, 0x20201
200274be lw a5, 0x1b4(a5)
200274c2 c.addi16sp sp, -0x30
200274c4 c.swsp ra, 0x2c(sp)
200274c6 c.swsp s1, 0x24(sp)
200274c8 c.swsp s2, 0x20(sp)
200274ca c.swsp s5, 0x14(sp)
200274cc c.swsp s6, 0x10(sp)
200274ce c.swsp s7, 0xc(sp)
200274d0 c.swsp s0, 0x28(sp)
200274d2 c.swsp s3, 0x1c(sp)
200274d4 c.swsp s4, 0x18(sp)
200274d6 c.mv s2, a0
200274d8 c.mv s6, a1
200274da c.mv s1, a2
200274dc c.jalr a5
200274de lui a5, 0x20203
200274e2 lw a5, 0x584(a5)
200274e6 slli a4, s2, 2
200274ea c.mv a0, s2
200274ec c.lw a5, 0x20(a5)
200274ee lui s5, 0x20201
200274f2 c.add a5, a4
200274f4 lw s7, 8(a5)
200274f8 lui a5, 0x20202
200274fc lw a5, -0x6a0(a5)
20027500 c.jalr a5
20027502 c.bnez a0, 0xc
20027504 lw a5, 0x1b0(s5)
20027508 c.li s0, 1
2002750a c.jalr a5
2002750c c.j 0x7e
2002750e c.li s3, 1
20027510 add s4, s7, s6
20027514 bne s1, s3, 0x4c
20027518 lui a5, 0x20201
2002751c lw t1, 0x6b8(a5)
20027520 c.lui a0, 1
20027522 c.mv a5, s2
20027524 c.li a7, 1
20027526 c.mv a6, s6
20027528 c.li a4, 3
2002752a addi a3, zero, 0x221
2002752e c.li a2, 5
20027530 addi a0, a0, -0x800
20027534 c.li a1, 0
20027536 c.jalr t1
20027538 lbu s3, 0x27(s7)
2002753c sll s1, s1, s6
20027540 or s1, s1, s3
20027544 sb s1, 0x27(s7)
20027548 lbu a5, 0x4c(s4)
2002754c c.addi a5, 1
2002754e sb a5, 0x4c(s4)
20027552 lui a5, 0x20202
20027556 lw a5, -0x654(a5)
2002755a c.mv a0, s2
2002755c c.jalr a5
2002755e c.j -0x5a
20027560 lbu s0, 0x4c(s4)
20027564 c.bnez s0, 0x3e
20027566 lw a5, 0x1b0(s5)
2002756a c.jalr a5
2002756c lui a5, 0x20201
20027570 lw a7, 0x6b8(a5)
20027574 c.lui a0, 1
20027576 c.mv a6, s6
20027578 c.mv a5, s2
2002757a c.li a4, 2
2002757c addi a3, zero, 0x222
20027580 c.li a2, 2
20027582 addi a0, a0, -0x800
20027586 c.li a1, 0
20027588 c.jalr a7
2002758a c.lwsp ra, 0x2c(sp)
2002758c c.mv a0, s0
2002758e c.lwsp s0, 0x28(sp)
20027590 c.lwsp s1, 0x24(sp)
20027592 c.lwsp s2, 0x20(sp)
20027594 c.lwsp s3, 0x1c(sp)
20027596 c.lwsp s4, 0x18(sp)
20027598 c.lwsp s5, 0x14(sp)
2002759a c.lwsp s6, 0x10(sp)
2002759c c.lwsp s7, 0xc(sp)
2002759e c.addi16sp sp, 0x30
200275a0 c.jr ra
200275a2 c.addi s0, -1
200275a4 .byte 0x13, 0x74