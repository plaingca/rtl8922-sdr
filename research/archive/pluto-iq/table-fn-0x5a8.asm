20010460 c.addi16sp sp, -0x30
20010462 c.swsp s4, 0x18(sp)
20010464 lui a5, 0x20201
20010468 lui s4, 0x20201
2001046c c.swsp s0, 0x28(sp)
2001046e lw s0, 0x73c(a5)
20010472 lw a5, 0x748(s4)
20010476 c.swsp s5, 0x14(sp)
20010478 lui s5, 0x20203
2001047c c.swsp ra, 0x2c(sp)
2001047e c.swsp s6, 0x10(sp)
20010480 c.swsp s1, 0x24(sp)
20010482 c.swsp s2, 0x20(sp)
20010484 c.swsp s3, 0x1c(sp)
20010486 c.swsp s7, 0xc(sp)
20010488 c.swsp s8, 8(sp)
2001048a c.swsp s9, 4(sp)
2001048c c.swsp s10, 0(sp)
2001048e c.mv s6, a0
20010490 sb zero, -0x6e8(s5)
20010494 addi a0, zero, 0x1f0
20010498 c.jalr a5
2001049a lui a1, 0xff000
2001049e addi a1, a1, 0xff
200104a2 c.lui a5, 1
200104a4 addi a5, a5, 0x400
200104a8 c.and a1, a0
200104aa c.or a1, a5
200104ac addi a0, zero, 0x1f0
200104b0 c.jalr s0
200104b2 csrr a5, mepc
200104b6 lui s3, 0x20204
200104ba sw a5, 0x5e8(s3)
200104be csrr a3, mtval
200104c2 lui a4, 0x20204
200104c6 addi a4, a4, 0x540
200104ca sw a3, 0x80(a4)
200104ce csrr a3, mstatus
200104d2 c.sw a3, 0x7c(a4)
200104d4 csrr a3, mcause
200104d8 lui s1, 0x20201
200104dc lw a6, 0x6b8(s1)
200104e0 c.li a2, 2
200104e2 c.li a1, 0
200104e4 sw a3, 0x84(a4)
200104e8 c.lui a0, 1
200104ea addi a3, zero, 0x116
200104ee c.li a4, 1
200104f0 c.jalr a6
200104f2 lui s2, 0x20201
200104f6 lw a5, 0x758(s2)
200104fa lui s8, 0xb8005
200104fe addi a0, s8, 0x130
20010502 c.jalr a5
20010504 lw a5, 0x758(s2)
20010508 c.mv s0, a0
2001050a addi a0, s8, 0x100
2001050e c.jalr a5
20010510 lw a5, 0x758(s2)
20010514 c.mv s7, a0
20010516 addi a0, s8, 0x108
2001051a c.jalr a5
2001051c andi s0, s0, 0xff
20010520 addi a3, zero, 0x22
20010524 bltu a3, s0, 0x2a
20010528 addi a3, zero, 0x20
2001052c c.mv a5, a0
2001052e bltu a3, s0, 0x5e
20010532 c.li a3, 1
20010534 beq s0, a3, 0x58
20010538 lw a6, 0x6b8(s1)
2001053c c.mv a5, s0
2001053e c.li a4, 1
20010540 addi a3, zero, 0x118
20010544 c.li a2, 2
20010546 c.lui a0, 1
20010548 c.li a1, 0
2001054a c.jalr a6
2001054c c.j 0xc
2001054e addi a5, s0, -0x38
20010552 c.li a3, 4
20010554 bltu a3, a5, -0x1c
20010558 c.li s9, 9
2001055a c.li s0, 0
2001055c lw a5, 0x758(s2)
20010560 lui a0, 0xb8005
20010564 addi a0, a0, 0x200
20010568 c.jalr a5
2001056a andi a5, s7, 0xff
2001056e addi a4, a5, -1
20010572 c.li a3, 8
20010574 lui s7, 0x20201
20010578 bltu a3, a4, 0x2e0
2001057c lui a3, 0x20208
20010580 c.slli a4, 2
20010582 addi a3, a3, 0x6dc
20010586 c.add a4, a3
20010588 c.lw a4, 0(a4)
2001058a c.jr a4