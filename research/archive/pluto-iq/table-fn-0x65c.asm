2001948a lui a5, 0x20201
2001948e lw a5, 0x12c(a5)
20019492 c.addi16sp sp, -0x30
20019494 c.swsp s0, 0x28(sp)
20019496 c.swsp s2, 0x20(sp)
20019498 c.swsp ra, 0x2c(sp)
2001949a c.swsp s1, 0x24(sp)
2001949c c.swsp s3, 0x1c(sp)
2001949e c.swsp zero, 4(sp)
200194a0 c.jalr a5
200194a2 lui s0, 0x20204
200194a6 lw a5, 0x428(s0)
200194aa lui s2, 0x20201
200194ae lbu a4, 0x22(a5)
200194b2 c.bnez a4, 0x16
200194b4 lw a5, 0x130(s2)
200194b8 c.jalr a5
200194ba c.lwsp ra, 0x2c(sp)
200194bc c.lwsp s0, 0x28(sp)
200194be c.lwsp s1, 0x24(sp)
200194c0 c.lwsp s2, 0x20(sp)
200194c2 c.lwsp s3, 0x1c(sp)
200194c4 c.addi16sp sp, 0x30
200194c6 c.jr ra
200194c8 lbu a4, 0x20(a5)
200194cc c.mv s1, a0
200194ce c.li a3, 0
200194d0 c.slli a4, 2
200194d2 c.add a5, a4
200194d4 lw s3, 0(a5)
200194d8 addi a5, zero, 0x102
200194dc sh a5, 8(sp)
200194e0 c.li a5, 1
200194e2 sb a5, 0xa(sp)
200194e6 c.li a5, 0xc
200194e8 sh a5, 0xc(sp)
200194ec lui a5, 0x20202
200194f0 lw a5, 0x164(a5)
200194f4 c.addi4spn a2, sp, 4
200194f6 c.li a1, 4
200194f8 c.li a0, 0
200194fa addi s0, s0, 0x428
200194fe c.jalr a5
20019500 c.beqz a0, 0x2c
20019502 lui a5, 0x20201
20019506 lw a5, 0x6b8(a5)
2001950a c.li a4, 0
2001950c addi a3, zero, 0x272
20019510 c.li a2, 2
20019512 lui a0, 0x2000
20019516 c.li a1, 0
20019518 c.jalr a5
2001951a lbu a5, 4(s0)
2001951e c.addi a5, -1
20019520 sb a5, 4(s0)
20019524 lw a5, 0x130(s2)
20019528 c.mv a0, s1
2001952a c.j -0x72
2001952c c.lwsp a0, 4(sp)
2001952e c.beqz a0, 0x1a
20019530 c.mv a1, s3
20019532 c.li a2, 4
20019534 jal 0x15ca8
20019538 lui a5, 0x20201
2001953c lw a5, 0x6d0(a5)
20019540 c.lwsp a1, 4(sp)
20019542 c.addi4spn a0, sp, 8
20019544 c.jalr a5
20019546 c.bnez a0, -0x44
20019548 lui a5, 0x20201
2001954c lw a3, 0x408(a5)
20019550 c.lw a5, 0(s0)
20019552 lbu a4, 0x20(a5)
20019556 c.slli a4, 2
20019558 c.add a5, a4
2001955a c.lw a0, 0(a5)
2001955c c.jalr a3
2001955e c.lw a4, 0(s0)
20019560 lbu a5, 0x20(a4)
20019564 c.addi a5, 1
20019566 c.andi a5, 7
20019568 sb a5, 0x20(a4)
2001956c lbu a5, 0x22(a4)
20019570 c.addi a5, -1
20019572 andi a5, a5, 0xff
20019576 sb a5, 0x22(a4)
2001957a c.beqz a5, 6
2001957c c.li a5, 0xa
2001957e c.j -0x5e
20019580 lui a5, 0x20201
20019584 lw a5, 0x174(a5)
20019588 c.lw a0, 8(s0)
2001958a c.li a4, 0
2001958c c.li a3, 0
2001958e c.li a2, 0
20019590 c.li a1, 3
20019592 c.jalr a5
20019594 c.j -0x70
20019596 c.addi16sp sp, -0x50
20019598 c.swsp s5, 0x34(sp)
2001959a lui s5, 0x20201
2001959e lw a5, 0x40c(s5)
200195a2 c.swsp s0, 0x48(sp)
200195a4 c.mv s0, a1
200195a6 lui a1, 0xf2080
200195aa c.swsp s2, 0x40(sp)
200195ac c.swsp ra, 0x4c(sp)
200195ae c.swsp s1, 0x44(sp)
200195b0 c.swsp s3, 0x3c(sp)
200195b2 c.swsp s4, 0x38(sp)
200195b4 c.swsp s6, 0x30(sp)