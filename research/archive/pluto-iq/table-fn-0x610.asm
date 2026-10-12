2000e56c c.addi sp, -0x20
2000e56e c.swsp s0, 0x18(sp)
2000e570 lui s0, 0x20201
2000e574 lw a5, 0x668(s0)
2000e578 c.swsp ra, 0x1c(sp)
2000e57a c.swsp s1, 0x14(sp)
2000e57c c.li a0, 1
2000e57e c.jalr a5
2000e580 c.beqz a0, 0x44
2000e582 lui s1, 0x20201
2000e586 lw a5, 0x40c(s1)
2000e58a lui a1, 0x72100
2000e58e addi a0, zero, 0xa0
2000e592 lui s0, 0x20202
2000e596 c.jalr a5
2000e598 addi s0, s0, 0x538
2000e59c c.sw a0, 0(s0)
2000e59e c.bnez a0, 0x3a
2000e5a0 c.li a5, 6
2000e5a2 sb a5, 0(sp)
2000e5a6 lui a5, 0x20209
2000e5aa addi a5, a5, -0x500
2000e5ae c.swsp a5, 4(sp)
2000e5b0 addi a5, zero, 0xb4
2000e5b4 c.swsp a5, 8(sp)
2000e5b6 lui a5, 0x20202
2000e5ba lw a5, 0x348(a5)
2000e5be c.mv a0, sp
2000e5c0 c.jalr a5
2000e5c2 c.j 0
2000e5c4 lw a5, 0x668(s0)
2000e5c8 c.li a0, 3
2000e5ca c.jalr a5
2000e5cc c.bnez a0, -0x4a
2000e5ce c.lwsp ra, 0x1c(sp)
2000e5d0 c.lwsp s0, 0x18(sp)
2000e5d2 c.lwsp s1, 0x14(sp)
2000e5d4 c.addi16sp sp, 0x20
2000e5d6 c.jr ra
2000e5d8 lw a5, 0x40c(s1)
2000e5dc lui a1, 0x72100
2000e5e0 addi a0, zero, 0x30
2000e5e4 c.jalr a5
2000e5e6 c.sw a0, 4(s0)
2000e5e8 c.bnez a0, 0x26
2000e5ea c.li a5, 6
2000e5ec sb a5, 0(sp)
2000e5f0 lui a5, 0x20209
2000e5f4 addi a5, a5, -0x500
2000e5f8 c.swsp a5, 4(sp)
2000e5fa addi a5, zero, 0xbc
2000e5fe c.swsp a5, 8(sp)
2000e600 lui a5, 0x20202
2000e604 lw a5, 0x348(a5)
2000e608 c.mv a0, sp
2000e60a c.jalr a5
2000e60c c.j 0
2000e60e c.lwsp s0, 0x18(sp)
2000e610 lui a5, 0x20201
2000e614 c.lwsp ra, 0x1c(sp)
2000e616 c.lwsp s1, 0x14(sp)
2000e618 lw a5, 0x608(a5)
2000e61c c.addi16sp sp, 0x20
2000e61e c.jr a5
2000e620 c.addi sp, -0x10
2000e622 c.swsp s2, 0(sp)
2000e624 lui s2, 0x20201
2000e628 lw a5, 0x668(s2)
2000e62c c.swsp s0, 8(sp)
2000e62e c.swsp s1, 4(sp)
2000e630 c.swsp ra, 0xc(sp)
2000e632 c.mv s0, a0
2000e634 c.li a0, 1
2000e636 c.mv s1, a1
2000e638 c.jalr a5
2000e63a c.beqz a0, 0x3e
2000e63c c.slli s0, 1
2000e63e addi a1, zero, 0x28
2000e642 c.add s0, s1
2000e644 mul s0, s0, a1
2000e648 lui a5, 0x20202
2000e64c lw a5, 0x538(a5)
2000e650 addi a2, zero, 0x28
2000e654 c.li a1, 0
2000e656 c.add s0, a5
2000e658 c.mv a0, s0
2000e65a jal 0x20b8c
2000e65e lbu a5, 0(s0)
2000e662 c.andi a5, -0x20
2000e664 ori a5, a5, 0x16
2000e668 sb a5, 0(s0)
2000e66c c.lwsp ra, 0xc(sp)
2000e66e c.lwsp s0, 8(sp)
2000e670 c.lwsp s1, 4(sp)
2000e672 c.lwsp s2, 0(sp)
2000e674 c.addi sp, 0x10
2000e676 c.jr ra
2000e678 lw a5, 0x668(s2)
2000e67c c.li a0, 3
2000e67e c.jalr a5
2000e680 c.bnez a0, -0x44
2000e682 c.j -0x16
2000e684 c.addi sp, -0x10
2000e686 c.swsp s0, 8(sp)
2000e688 lui s0, 0x20201
2000e68c lw a5, 0x668(s0)
2000e690 c.swsp ra, 0xc(sp)
2000e692 c.li a0, 1
2000e694 c.jalr a5
2000e696 c.beqz a0, 0x34