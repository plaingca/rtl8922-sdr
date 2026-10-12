
TYPE 0x200125ee
200125d0 c.li a4, 0
200125d2 addi a3, zero, 0x106
200125d6 c.li a2, 2
200125d8 c.li a0, 8
200125da c.li a1, 0
200125dc c.jalr a5
200125de c.li s0, 0
200125e0 c.lwsp ra, 0xc(sp)
200125e2 c.mv a0, s0
200125e4 c.lwsp s0, 8(sp)
200125e6 c.lwsp s1, 4(sp)
200125e8 c.lwsp s2, 0(sp)
200125ea c.addi sp, 0x10
200125ec c.jr ra
200125ee lui a1, 0x3000
200125f2 c.slli a2, 0x18
200125f4 c.and a2, a1
200125f6 c.or a0, a2
200125f8 lui a1, 0x80000
200125fc c.j -0x56
200125fe lui a5, 0x20201
20012602 lw a5, 0x748(a5)
20012606 addi a0, s2, 0x34c
2001260a c.jalr a5
2001260c c.srli a0, 8
2001260e c.andi a0, 0xf
20012610 sb a0, 0(s1)
20012614 c.j -0x34
20012616 lui a5, 0x20201
2001261a c.addi sp, -0x10
2001261c lw a5, 0x73c(a5)
20012620 c.swsp ra, 0xc(sp)
20012622 c.li a4, 1
20012624 c.slli a3, 8
20012626 bne a1, a4, 0x4a
2001262a or a1, a3, a0
2001262e lui a4, 0x84800
20012632 c.lui a0, 0xa
20012634 c.or a1, a4
20012636 addi a0, a0, 0x34c
2001263a c.jalr a5
2001263c lui a5, 0x20201
20012640 lw a5, 0x7b8(a5)
20012644 c.lui a0, 0xa
20012646 addi a0, a0, 0x34c
2001264a c.jalr a5
2001264c c.li a5, 1
2001264e beq a0, a5, 0x1c
20012652 lui a5, 0x20201
20012656 lw a5, 0x6b8(a5)
2001265a c.li a0, 8
2001265c c.li a4, 0
2001265e addi a3, zero, 0x106
20012662 c.li a2, 2
20012664 c.li a1, 0

TYPE 0x20012672
20012654 c.fld fs0, 0x40(s0)
20012656 lw a5, 0x6b8(a5)
2001265a c.li a0, 8
2001265c c.li a4, 0
2001265e addi a3, zero, 0x106
20012662 c.li a2, 2
20012664 c.li a1, 0
20012666 c.jalr a5
20012668 c.li a0, 0
2001266a c.lwsp ra, 0xc(sp)
2001266c c.addi sp, 0x10
2001266e c.jr ra
20012670 c.slli a2, 0x18
20012672 lui a1, 0x3000
20012676 c.and a1, a2
20012678 c.or a1, a0
2001267a c.or a1, a3
2001267c lui a4, 0x84000
20012680 c.j -0x4e
20012682 lui a5, 0x20201
20012686 c.addi sp, -0x10
20012688 lw a5, 0x73c(a5)
2001268c c.swsp s1, 4(sp)
2001268e c.swsp ra, 0xc(sp)
20012690 c.swsp s0, 8(sp)
20012692 c.swsp s2, 0(sp)
20012694 c.li a4, 1
20012696 c.mv s1, a3
20012698 bne a1, a4, 0x50
2001269c lui a1, 0x88800
200126a0 c.or a1, a0
200126a2 c.lui a0, 0xa
200126a4 addi a0, a0, 0x34c
200126a8 c.jalr a5
200126aa lui a5, 0x20201
200126ae lw a5, 0x7b8(a5)
200126b2 c.lui s2, 0xa
200126b4 addi a0, s2, 0x34c
200126b8 c.jalr a5
200126ba c.li a5, 1
200126bc c.mv s0, a0
200126be beq a0, a5, 0x3a
200126c2 lui a5, 0x20201
200126c6 lw a5, 0x6b8(a5)
200126ca c.li a4, 0
200126cc addi a3, zero, 0x106
200126d0 c.li a2, 2
200126d2 c.li a0, 8
200126d4 c.li a1, 0
200126d6 c.jalr a5
200126d8 c.li s0, 0
200126da c.lwsp ra, 0xc(sp)
200126dc c.mv a0, s0
200126de c.lwsp s0, 8(sp)
200126e0 c.lwsp s1, 4(sp)
200126e2 c.lwsp s2, 0(sp)
200126e4 c.addi sp, 0x10
200126e6 c.jr ra
200126e8 .byte 0xb7, 0x05

TYPE 0x200126e8
200126ca c.li a4, 0
200126cc addi a3, zero, 0x106
200126d0 c.li a2, 2
200126d2 c.li a0, 8
200126d4 c.li a1, 0
200126d6 c.jalr a5
200126d8 c.li s0, 0
200126da c.lwsp ra, 0xc(sp)
200126dc c.mv a0, s0
200126de c.lwsp s0, 8(sp)
200126e0 c.lwsp s1, 4(sp)
200126e2 c.lwsp s2, 0(sp)
200126e4 c.addi sp, 0x10
200126e6 c.jr ra
200126e8 lui a1, 0x3000
200126ec c.slli a2, 0x18
200126ee c.and a2, a1
200126f0 c.or a0, a2
200126f2 lui a1, 0x88000
200126f6 c.j -0x56
200126f8 lui a5, 0x20201
200126fc lw a5, 0x748(a5)
20012700 addi a0, s2, 0x34c
20012704 c.jalr a5
20012706 c.srli a0, 8
20012708 andi a0, a0, 0x1ff
2001270c sh a0, 0(s1)
20012710 c.j -0x36
20012712 lui a5, 0x20201
20012716 c.addi sp, -0x10
20012718 lw a5, 0x73c(a5)
2001271c c.swsp ra, 0xc(sp)
2001271e c.li a4, 1
20012720 c.slli a3, 8
20012722 bne a1, a4, 0x4a
20012726 or a1, a3, a0
2001272a lui a4, 0x8c800
2001272e c.lui a0, 0xa
20012730 c.or a1, a4
20012732 addi a0, a0, 0x34c
20012736 c.jalr a5
20012738 lui a5, 0x20201
2001273c lw a5, 0x7b8(a5)
20012740 c.lui a0, 0xa
20012742 addi a0, a0, 0x34c
20012746 c.jalr a5
20012748 c.li a5, 1
2001274a beq a0, a5, 0x1c
2001274e lui a5, 0x20201
20012752 lw a5, 0x6b8(a5)
20012756 c.li a0, 8
20012758 c.li a4, 0
2001275a addi a3, zero, 0x106
2001275e c.li a2, 2

TYPE 0x2001276e
20012750 c.fld fs0, 0x40(s0)
20012752 lw a5, 0x6b8(a5)
20012756 c.li a0, 8
20012758 c.li a4, 0
2001275a addi a3, zero, 0x106
2001275e c.li a2, 2
20012760 c.li a1, 0
20012762 c.jalr a5
20012764 c.li a0, 0
20012766 c.lwsp ra, 0xc(sp)
20012768 c.addi sp, 0x10
2001276a c.jr ra
2001276c c.slli a2, 0x18
2001276e lui a1, 0x3000
20012772 c.and a1, a2
20012774 c.or a1, a0
20012776 c.or a1, a3
20012778 lui a4, 0x8c000
2001277c c.j -0x4e
2001277e lui a5, 0x20201
20012782 c.addi sp, -0x20
20012784 lw a5, 0x73c(a5)
20012788 c.swsp s1, 0x14(sp)
2001278a c.swsp s3, 0xc(sp)
2001278c c.mv s1, a1
2001278e c.lui s3, 0xa
20012790 lui a1, 0xb0000
20012794 c.or a1, a0
20012796 c.swsp ra, 0x1c(sp)
20012798 c.swsp s2, 0x10(sp)
2001279a addi a0, s3, 0x34c
2001279e c.swsp s0, 0x18(sp)
200127a0 c.mv s2, a2
200127a2 c.jalr a5
200127a4 lui a5, 0x20201
200127a8 lw a5, 0x7b8(a5)
200127ac addi a0, s3, 0x34c
200127b0 c.jalr a5
200127b2 c.li a5, 1
200127b4 beq a0, a5, 0x2c
200127b8 lui a5, 0x20201
200127bc lw a5, 0x6b8(a5)
200127c0 c.li a4, 0
200127c2 addi a3, zero, 0x107
200127c6 c.li a2, 2
200127c8 c.li a0, 8
200127ca c.li a1, 0
200127cc c.jalr a5
200127ce c.li s0, 0
200127d0 c.lwsp ra, 0x1c(sp)
200127d2 c.mv a0, s0
200127d4 c.lwsp s0, 0x18(sp)
200127d6 c.lwsp s1, 0x14(sp)
200127d8 c.lwsp s2, 0x10(sp)
200127da c.lwsp s3, 0xc(sp)
200127dc c.addi16sp sp, 0x20
200127de c.jr ra
200127e0 lui a5, 0x20201
200127e4 .byte 0x83, 0xa7

TYPE 0x20012806
200127e8 c.mv s0, a0
200127ea addi a0, s3, 0x34c
200127ee c.jalr a5
200127f0 slli a5, a0, 9
200127f4 c.srli a5, 0x11
200127f6 sh a5, 0(s2)
200127fa srli a5, a0, 0x18
200127fe c.andi a5, 3
20012800 sb a5, 0(s1)
20012804 c.j -0x34
20012806 lui a4, 0x3000
2001280a c.slli a1, 0x18
2001280c c.and a1, a4
2001280e lui a5, 0x20201
20012812 c.addi sp, -0x10
20012814 c.slli a2, 8
20012816 lw a5, 0x73c(a5)
2001281a c.or a1, a0
2001281c c.or a1, a2
2001281e lui a4, 0xb4000
20012822 c.swsp s0, 8(sp)
20012824 c.lui s0, 0xa
20012826 c.swsp ra, 0xc(sp)
20012828 c.or a1, a4
2001282a addi a0, s0, 0x34c
2001282e c.jalr a5
20012830 lui a5, 0x20201
20012834 lw a5, 0x7b8(a5)
20012838 addi a0, s0, 0x34c
2001283c c.jalr a5
2001283e c.li a5, 1
20012840 beq a0, a5, 0x1c
20012844 lui a5, 0x20201
20012848 lw a5, 0x6b8(a5)
2001284c c.li a0, 8
2001284e c.li a4, 0
20012850 addi a3, zero, 0x108
20012854 c.li a2, 2
20012856 c.li a1, 0
20012858 c.jalr a5
2001285a c.li a0, 0
2001285c c.lwsp ra, 0xc(sp)
2001285e c.lwsp s0, 8(sp)
20012860 c.addi sp, 0x10
20012862 c.jr ra
20012864 lui a5, 0x20201
20012868 c.addi sp, -0x20
2001286a lw a5, 0x73c(a5)
2001286e c.swsp s2, 0x10(sp)
20012870 c.swsp s3, 0xc(sp)
20012872 c.mv s2, a1
20012874 c.lui s3, 0xa
20012876 lui a1, 0xa0000
2001287a c.or a1, a0
2001287c c.swsp ra, 0x1c(sp)

TYPE 0x2001417a
2001415c c.li a1, 0
2001415e jal 0x1b088
20014162 c.lw a4, 0(s0)
20014164 lhu a5, 4(s1)
20014168 lbu a3, 0(s1)
2001416c lw a6, 0(a4)
20014170 c.slli a5, 0x12
20014172 sb a3, 0x19(a4)
20014176 srli a0, a5, 0x12
2001417a lui a1, 0xa000
2001417e lbu a3, 1(s1)
20014182 lbu a2, 2(s1)
20014186 or a5, a0, a1
2001418a lui a1, 0x40f30
2001418e and a1, a1, a6
20014192 c.or a5, a1
20014194 c.sw a5, 0(a4)
20014196 c.slli a3, 2
20014198 c.lw a5, 0x1c(a4)
2001419a c.andi a2, 3
2001419c c.or a3, a2
2001419e sb a3, 0x18(a4)
200141a2 c.lui a3, 0xffffc
200141a4 c.and a5, a3
200141a6 c.or a5, a0
200141a8 c.sw a5, 0x1c(a4)
200141aa c.lw a5, 0x18(a4)
200141ac lui a3, 0xfff10
200141b0 c.addi a3, -1
200141b2 c.and a5, a3
200141b4 c.lui a3, 0x10
200141b6 c.or a5, a3
200141b8 c.sw a5, 0x18(a4)
200141ba lbu a5, 5(s0)
200141be c.lwsp ra, 0xc(sp)
200141c0 c.lwsp s0, 8(sp)
200141c2 sb a5, 0x1b(a4)
200141c6 c.lwsp s1, 4(sp)
200141c8 c.li a0, 0
200141ca c.addi sp, 0x10
200141cc c.jr ra
200141ce c.addi sp, -0x10
200141d0 c.swsp s0, 8(sp)
200141d2 c.swsp ra, 0xc(sp)
200141d4 addi a5, zero, 0x20
200141d8 c.sw a5, 4(a0)
200141da lui a5, 0x20202
200141de lw a5, 0x164(a5)
200141e2 c.mv s0, a0
200141e4 c.mv a2, a0
200141e6 c.li a3, 0
200141e8 addi a1, zero, 0x20
200141ec c.li a0, 0
200141ee c.jalr a5
200141f0 c.beqz a0, 0x1a