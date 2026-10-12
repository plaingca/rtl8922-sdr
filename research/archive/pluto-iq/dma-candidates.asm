
TABLE 0x8c8 0x201514fa
201514fa c.addi16sp sp, -0x30
201514fc c.li a5, -0x10
201514fe sb a5, 0xf(sp)
20151502 lui a5, 0x20203
20151506 lw a5, 0x584(a5)
2015150a c.swsp ra, 0x2c(sp)
2015150c c.swsp s0, 0x28(sp)
2015150e c.swsp s1, 0x24(sp)
20151510 c.swsp s2, 0x20(sp)
20151512 c.swsp s3, 0x1c(sp)
20151514 c.swsp s4, 0x18(sp)
20151516 lbu a4, 0(a1)
2015151a c.lw a5, 0x20(a5)
2015151c lui s4, 0x20201
20151520 c.slli a4, 2
20151522 c.add a5, a4
20151524 lw s3, 8(a5)
20151528 c.mv s0, a0
2015152a lw a5, 0x760(s4)
2015152e c.lw a0, 4(a1)
20151530 c.mv s2, a1
20151532 c.jalr a5
20151534 c.jal -0x50
20151536 c.mv s1, a0
20151538 lbu a0, 0(s3)
2015153c lw a4, 0x760(s4)
20151540 lui a5, 0xb8800
20151544 c.addi a5, 0xb
20151546 c.slli a0, 6
20151548 c.add a0, a5
2015154a c.jalr a4
2015154c andi a0, a0, 0x20
20151550 c.beqz a0, 4
20151552 c.addi s1, 8
20151554 lbu a5, 0(s3)
20151558 lui a2, 0x60500
2015155c addi a2, a2, -0x1fd
20151560 sb a5, 0xb(s0)
20151564 lw a5, 0(s2)
20151568 lui a1, 0x9fb00
2015156c lw a3, 8(s2)
20151570 c.srli a5, 0x14
20151572 andi a4, a5, 0x3f
20151576 srli a5, s1, 1
2015157a c.lui s1, 0x10
2015157c c.addi s1, -1
2015157e c.slli a5, 0xb
20151580 c.and a5, s1
20151582 lui s1, 0x40410
20151586 addi s1, s1, 0x201
2015158a c.or a5, s1
2015158c c.and a5, a2
2015158e c.lw a2, 0(s0)
20151590 addi a1, a1, 0x1fc
20151594 c.and a2, a1
20151596 c.or a5, a2
20151598 c.sw a5, 0(s0)
2015159a slli a5, a4, 0x11
2015159e slli a4, a3, 0x12
201515a2 c.lw a3, 8(s0)
201515a4 c.srli a4, 0x12
201515a6 c.or a5, a4
201515a8 lui a4, 0xff81c
201515ac c.and a4, a3
201515ae c.or a5, a4
201515b0 c.lw a4, 0x18(s0)
201515b2 c.lui a3, 0xfffff
201515b4 addi a3, a3, 0x7ff
201515b8 c.and a4, a3
201515ba c.sw a5, 8(s0)
201515bc lbu a5, 2(s3)
201515c0 c.sw a4, 0x18(s0)
201515c2 lhu a4, 0x1e(s0)
201515c6 c.lui a3, 7
201515c8 c.andi a5, 7
201515ca c.and a4, a3
201515cc c.lui a3, 0xffff8
201515ce c.addi a3, 4
201515d0 c.or a4, a3
201515d2 sh a4, 0x1e(s0)
201515d6 c.slli a5, 4
201515d8 lui a4, 0x480
201515dc c.or a5, a4
201515de c.lw a4, 0x20(s0)
201515e0 lui a3, 0xff810
201515e4 addi a3, a3, -0x71
201515e8 c.and a4, a3
201515ea c.or a5, a4
201515ec c.sw a5, 0x20(s0)
201515ee lbu a5, 1(s2)
201515f2 c.li a4, 0x12
201515f4 bltu a4, a5, 0x1c
201515f8 lui a4, 0x20211
201515fc c.slli a5, 2
201515fe addi a4, a4, 0x21c
20151602 c.add a5, a4
20151604 c.lw a5, 0(a5)
20151606 c.jr a5
20151608 c.lw a5, 0x2c(s0)
2015160a c.lui a4, 2
2015160c c.or a5, a4
2015160e c.sw a5, 0x2c(s0)
20151610 c.lwsp ra, 0x2c(sp)
20151612 c.lwsp s0, 0x28(sp)
20151614 c.lwsp s1, 0x24(sp)
20151616 c.lwsp s2, 0x20(sp)
20151618 c.lwsp s3, 0x1c(sp)
2015161a c.lwsp s4, 0x18(sp)
2015161c c.addi16sp sp, 0x30
2015161e c.jr ra
20151620 c.lw a5, 0x2c(s0)
20151622 c.lui a4, 4
20151624 c.j -0x18
20151626 c.lw a5, 0x24(s0)
20151628 ori a5, a5, 0x400
2015162c c.sw a5, 0x24(s0)
2015162e c.j -0x1e
20151630 lbu a5, 0x2d(s0)
20151634 ori a5, a5, 0x50
20151638 sb a5, 0x2d(s0)
2015163c c.j -0x2c
2015163e lbu a5, 0x2d(s0)
20151642 ori a5, a5, 0x30
20151646 c.j -0xe
20151648 c.lw a5, 0x18(s0)
2015164a c.lui a4, 1
2015164c addi a4, a4, -0x800
20151650 c.or a5, a4
20151652 c.sw a5, 0x18(s0)
20151654 c.j -0x44
20151656 c.lw a5, 0x1c(s0)
20151658 lui a3, 0x90000
2015165c c.addi a3, -1
2015165e lui a4, 0x10000
20151662 c.and a5, a3
20151664 c.or a5, a4
20151666 c.lw a4, 0x20(s0)
20151668 lui a2, 0xffc10
2015166c c.addi a2, -1
2015166e c.and a4, a2
20151670 c.lui a2, 0x10
20151672 c.or a4, a2
20151674 c.sw a4, 0x20(s0)
20151676 c.lw a4, 0x24(s0)
20151678 lui a2, 0x80000
2015167c c.sw a5, 0x1c(s0)
2015167e ori a4, a4, 0x400
20151682 c.sw a4, 0x24(s0)
20151684 c.lw a4, 0x28(s0)
20151686 c.or a4, a2
20151688 c.sw a4, 0x28(s0)
2015168a c.li a4, 8
2015168c sb a4, 0x2c(s0)
20151690 lw a4, 0(s2)
20151694 c.li a2, 1
20151696 c.srli a4, 0x1a
20151698 bgeu a2, a4, 0x2a
2015169c c.and a5, a3
2015169e c.sw a5, 0x1c(s0)
201516a0 c.lw a5, 0x24(s0)
201516a2 lui a4, 0xa0000
201516a6 c.slli a5, 4
201516a8 c.srli a5, 4
201516aa c.or a5, a4
201516ac c.sw a5, 0x24(s0)
201516ae addi a5, zero, 0x24
201516b2 sh a5, 0x36(s0)
201516b6 c.lw a5, 0x28(s0)
201516b8 lui a4, 0x20
201516bc c.or a5, a4
201516be c.sw a5, 0x28(s0)
201516c0 c.j 0xd0
201516c2 c.lw a5, 0x2c(s0)
201516c4 lui a4, 0x2000
201516c8 c.or a5, a4
201516ca c.sw a5, 0x2c(s0)
201516cc c.j -0x2c
201516ce lw a5, 0(s2)
201516d2 lui a4, 0x3204
201516d6 lui a3, 0x80002
201516da c.srli a5, 0x1a
201516dc c.andi a5, 7
201516de c.slli a5, 0x1c
201516e0 c.or a5, a4
201516e2 c.lw a4, 0x1c(s0)
201516e4 c.addi a3, -1
201516e6 sb zero, 0xb(s0)
201516ea c.and a4, a3
201516ec c.or a5, a4

TABLE 0x9fc 0x200177de
200177de lui a5, 0x20201
200177e2 c.addi sp, -0x10
200177e4 lw a5, 0x73c(a5)
200177e8 c.swsp s1, 4(sp)
200177ea c.swsp s2, 0(sp)
200177ec c.lui s1, 0xa
200177ee lui s2, 0x80000
200177f2 c.swsp ra, 0xc(sp)
200177f4 c.swsp s0, 8(sp)
200177f6 addi a1, s2, 3
200177fa addi a0, s1, -0x300
200177fe c.jalr a5
20017800 lui s0, 0x20201
20017804 lw a6, 0x6b8(s0)
20017808 addi a5, s2, 3
2001780c c.li a4, 1
2001780e c.li a3, 0x1f
20017810 c.li a2, 5
20017812 c.li a0, 1
20017814 c.li a1, 0
20017816 c.jalr a6
20017818 lw a5, 0x6b8(s0)
2001781c c.li a4, 0
2001781e addi a3, zero, 0x20
20017822 c.li a2, 5
20017824 c.li a1, 0
20017826 c.li a0, 1
20017828 c.jalr a5
2001782a lui a5, 0x20201
2001782e lw s0, 0x6b8(s0)
20017832 lw a5, 0x748(a5)
20017836 addi a0, s1, -0x300
2001783a c.jalr a5
2001783c c.mv a6, s0
2001783e c.lwsp s0, 8(sp)
20017840 c.lwsp ra, 0xc(sp)
20017842 c.lwsp s1, 4(sp)
20017844 c.lwsp s2, 0(sp)
20017846 c.mv a5, a0
20017848 c.li a4, 1
2001784a addi a3, zero, 0x21
2001784e c.li a2, 5
20017850 c.li a0, 1
20017852 c.li a1, 0
20017854 c.addi sp, 0x10
20017856 c.jr a6
20017858 c.addi sp, -0x20
2001785a c.swsp s0, 0x18(sp)
2001785c lui s0, 0x20201
20017860 lw a5, 0x6b8(s0)
20017864 c.swsp ra, 0x1c(sp)
20017866 c.swsp s1, 0x14(sp)
20017868 c.swsp s2, 0x10(sp)
2001786a c.mv s1, a0
2001786c c.swsp s3, 0xc(sp)
2001786e c.li a4, 0
20017870 addi a3, zero, 0x22
20017874 c.li a2, 5
20017876 c.li a0, 4
20017878 c.li a1, 0
2001787a c.jalr a5
2001787c lbu a5, 8(s1)
20017880 lbu a6, 9(s1)
20017884 lw t1, 0x6b8(s0)
20017888 lbu a7, 0xa(s1)
2001788c slli s2, a5, 5
20017890 c.li a4, 3
20017892 addi a3, zero, 0x23
20017896 c.li a2, 5
20017898 c.li a0, 4
2001789a c.li a1, 0
2001789c c.add s2, a6
2001789e c.jalr t1
200178a0 lui a5, 0xb8824
200178a4 c.li s0, 0
200178a6 lui s3, 0x20201
200178aa c.add s2, a5
200178ac lbu a5, 0xa(s1)
200178b0 bltu s0, a5, 0x12
200178b4 c.lwsp ra, 0x1c(sp)
200178b6 c.lwsp s0, 0x18(sp)
200178b8 c.lwsp s1, 0x14(sp)
200178ba c.lwsp s2, 0x10(sp)
200178bc c.lwsp s3, 0xc(sp)
200178be c.addi16sp sp, 0x20
200178c0 c.jr ra
200178c2 add a4, s1, s0
200178c6 lw a5, 0x74c(s3)
200178ca c.lw a1, 0xc(a4)
200178cc add a0, s2, s0
200178d0 c.addi s0, 4
200178d2 c.slli s0, 0x10
200178d4 c.jalr a5
200178d6 c.srli s0, 0x10
200178d8 c.j -0x2c
200178da c.addi sp, -0x20
200178dc c.swsp s1, 0x14(sp)
200178de c.lw s1, 0xc(a0)
200178e0 c.swsp s3, 0xc(sp)
200178e2 lui s3, 0x20201
200178e6 lw a6, 0x6b8(s3)
200178ea c.srli s1, 0x1c
200178ec c.swsp ra, 0x1c(sp)
200178ee c.swsp s0, 0x18(sp)
200178f0 c.swsp s2, 0x10(sp)
200178f2 c.swsp s4, 8(sp)
200178f4 c.mv s0, a0
200178f6 c.li a4, 1
200178f8 addi a3, zero, 0x25
200178fc c.li a2, 5
200178fe c.mv a5, s1
20017900 c.li a0, 1
20017902 c.li a1, 0
20017904 c.jalr a6
20017906 c.lw a5, 0xc(s0)
20017908 lui s4, 0x20201
2001790c c.lw a1, 8(s0)
2001790e c.slli a5, 4
20017910 c.srli a5, 4
20017912 c.sw a5, 0xc(s0)
20017914 lw a5, 0x74c(s4)
20017918 c.slli s1, 6
2001791a lui s2, 0xb8859
2001791e add a0, s1, s2
20017922 c.jalr a5
20017924 lw a5, 0x74c(s4)
20017928 c.lw a1, 0xc(s0)
2001792a addi a0, s2, 4
2001792e c.add a0, s1
20017930 c.jalr a5
20017932 lw a6, 0xc(s0)
20017936 c.lw a5, 8(s0)
20017938 c.lwsp s0, 0x18(sp)
2001793a lw a7, 0x6b8(s3)
2001793e c.lwsp ra, 0x1c(sp)
20017940 c.lwsp s1, 0x14(sp)
20017942 c.lwsp s2, 0x10(sp)
20017944 c.lwsp s3, 0xc(sp)
20017946 c.lwsp s4, 8(sp)
20017948 c.li a4, 2
2001794a addi a3, zero, 0x26
2001794e c.li a2, 5
20017950 c.li a0, 1
20017952 c.li a1, 0
20017954 c.addi16sp sp, 0x20
20017956 c.jr a7
20017958 c.li a0, 1
2001795a c.jr ra
2001795c c.li a0, 1
2001795e c.jr ra
20017960 c.addi16sp sp, -0x40
20017962 c.swsp ra, 0x3c(sp)
20017964 c.swsp s0, 0x38(sp)
20017966 c.swsp s1, 0x34(sp)
20017968 c.swsp s2, 0x30(sp)
2001796a c.swsp s3, 0x2c(sp)
2001796c c.swsp s4, 0x28(sp)
2001796e c.swsp s5, 0x24(sp)
20017970 c.swsp s7, 0x1c(sp)
20017972 c.swsp s8, 0x18(sp)
20017974 c.addi4spn s0, sp, 0x40
20017976 c.swsp s6, 0x20(sp)
20017978 c.swsp s9, 0x14(sp)
2001797a c.swsp s10, 0x10(sp)
2001797c c.swsp s11, 0xc(sp)
2001797e c.lw s1, 8(a0)
20017980 lui s3, 0x20201
20017984 lw a6, 0x6b8(s3)
20017988 srli s8, s1, 7
2001798c andi s1, s1, 0x7f
20017990 c.mv s2, a2
20017992 c.mv s7, a0
20017994 c.mv s5, a1
20017996 c.mv a5, s1
20017998 c.li a4, 1
2001799a addi a3, zero, 0x27
2001799e c.li a2, 5
200179a0 addi a0, zero, 0x40
200179a4 c.li a1, 0
200179a6 c.jalr a6
200179a8 addi a5, s2, 0xf
200179ac c.andi a5, -0x10
200179ae sub sp, sp, a5
200179b2 c.mv s4, sp
200179b4 c.mv a2, s2
200179b6 sub sp, sp, a5
200179ba add a1, s7, s5
200179be c.mv a0, s4
200179c0 jal 0x1781c
200179c4 add a1, s2, s5
200179c8 andi s8, s8, 1
200179cc c.mv a2, s2
200179ce c.add a1, s7
200179d0 c.mv a0, sp

TABLE 0xcdc 0x201233b0
201233b0 c.addi16sp sp, -0x50
201233b2 c.swsp s2, 0x40(sp)
201233b4 c.swsp s3, 0x3c(sp)
201233b6 c.swsp ra, 0x4c(sp)
201233b8 c.swsp s0, 0x48(sp)
201233ba c.swsp s1, 0x44(sp)
201233bc c.swsp s4, 0x38(sp)
201233be c.swsp s5, 0x34(sp)
201233c0 c.swsp s6, 0x30(sp)
201233c2 c.swsp s7, 0x2c(sp)
201233c4 c.swsp s8, 0x28(sp)
201233c6 c.swsp s9, 0x24(sp)
201233c8 c.swsp s10, 0x20(sp)
201233ca c.swsp s11, 0x1c(sp)
201233cc lbu s0, 0(a1)
201233d0 c.mv s3, a0
201233d2 c.mv s2, a1
201233d4 beqz s0, 0x286
201233d8 c.li a5, 1
201233da c.li a0, 1
201233dc bne s0, a5, 0x260
201233e0 c.lui s1, 0xa
201233e2 addi s6, s1, -0x7a0
201233e6 addi s7, s1, -0x7a4
201233ea addi s8, s1, -0x7a8
201233ee addi s9, s1, -0x7ac
201233f2 c.li s10, 3
201233f4 addi s1, s1, -0x7b0
201233f8 lhu s4, 4(s2)
201233fc lhu a5, 6(s2)
20123400 c.lui a1, 1
20123402 c.addi a1, -1
20123404 and s4, a1, s4
20123408 lui s5, 0x20202
2012340c c.and a1, a5
2012340e c.slli s4, 0x10
20123410 lw a5, -0x308(s5)
20123414 or s4, s4, a1
20123418 c.mv a1, s4
2012341a c.mv a0, s7
2012341c c.jalr a5
2012341e c.li a5, 1
20123420 bgeu a5, s3, 0x2a
20123424 lui a5, 0x2020e
20123428 addi a5, a5, -0x228
2012342c add a4, a5, s0
20123430 lbu a4, 0(a4)
20123434 c.li a3, 0x14
20123436 mul a4, a4, a3
2012343a addi a3, zero, 0xc8
2012343e mul a3, s0, a3
20123442 c.add a4, a3
20123444 c.add a5, a4
20123446 sw s4, 0x10(a5)
2012344a lbu a1, 0xa(s2)
2012344e lbu s4, 8(s2)
20123452 lw a5, -0x308(s5)
20123456 c.slli a1, 0xc
20123458 andi s4, s4, 7
2012345c or a1, a1, s4
20123460 lbu s4, 9(s2)
20123464 c.mv a0, s9
20123466 andi s4, s4, 0x3f
2012346a c.slli s4, 4
2012346c or s4, s4, a1
20123470 c.mv a1, s4
20123472 c.jalr a5
20123474 c.li a5, 1
20123476 bgeu a5, s3, 0x2a
2012347a lui a5, 0x2020e
2012347e addi a5, a5, -0x228
20123482 add a4, a5, s0
20123486 lbu a4, 0(a4)
2012348a c.li a3, 0x14
2012348c mul a4, a4, a3
20123490 addi a3, zero, 0xc8
20123494 mul a3, s0, a3
20123498 c.add a4, a3
2012349a c.add a5, a4
2012349c sw s4, 8(a5)
201234a0 lbu a1, 0xd(s2)
201234a4 lbu s4, 0xb(s2)
201234a8 lw a5, -0x308(s5)
201234ac c.slli a1, 0xc
201234ae andi s4, s4, 7
201234b2 or a1, a1, s4
201234b6 lbu s4, 0xc(s2)
201234ba c.mv a0, s8
201234bc andi s4, s4, 0x3f
201234c0 c.slli s4, 4
201234c2 or s4, s4, a1
201234c6 c.mv a1, s4
201234c8 c.jalr a5
201234ca c.li a5, 1
201234cc bgeu a5, s3, 0x2a
201234d0 lui a5, 0x2020e
201234d4 addi a5, a5, -0x228
201234d8 add a4, a5, s0
201234dc lbu a4, 0(a4)
201234e0 c.li a3, 0x14
201234e2 mul a4, a4, a3
201234e6 addi a3, zero, 0xc8
201234ea mul a3, s0, a3
201234ee c.add a4, a3
201234f0 c.add a5, a4
201234f2 sw s4, 0xc(a5)
201234f6 lbu a1, 2(s2)
201234fa lw a4, -0x308(s5)
201234fe andi a5, s3, 0xf
20123502 c.slli a5, 0x18
20123504 c.or a1, a5
20123506 c.mv a0, s1
20123508 c.jalr a4
2012350a lui s4, 0x20202
2012350e lw a5, -0x314(s4)
20123512 c.mv a0, s1
20123514 lui s11, 0x80000
20123518 c.jalr a5
2012351a lw a5, -0x308(s5)
2012351e or s11, a0, s11
20123522 c.mv a1, s11
20123524 c.mv a0, s1
20123526 c.jalr a5
20123528 c.li a5, 1
2012352a bgeu a5, s3, 0x2e
2012352e lui a5, 0x2020e
20123532 addi a5, a5, -0x228
20123536 add a4, a5, s0
2012353a lbu a4, 0(a4)
2012353e c.li a3, 0x14
20123540 mul a4, a4, a3
20123544 addi a3, zero, 0xc8
20123548 mul a3, s0, a3
2012354c c.add a4, a3
2012354e c.add a5, a4
20123550 c.li a4, -1
20123552 sw s11, 4(a5)
20123556 c.sw a4, 0x14(a5)
20123558 addi s5, zero, 0x64
2012355c lui s11, 0x20202
20123560 lw a5, -0x314(s4)
20123564 c.mv a0, s6
20123566 c.jalr a5
20123568 c.mv a5, a0
2012356a bltz a0, 0x16
2012356e lw a4, 0x2d0(s11)
20123572 c.swsp a0, 0xc(sp)
20123574 c.li a0, 0xa
20123576 c.jalr a4
20123578 c.addi s5, -1
2012357a c.lwsp a5, 0xc(sp)
2012357c bnez s5, -0x1c
20123580 c.li a4, 1
20123582 bgeu a4, s3, 0x9c
20123586 lw a4, -0x314(s4)
2012358a c.mv a0, s1
2012358c lui s1, 0x2020e
20123590 addi s1, s1, -0x228
20123594 c.swsp a5, 0xc(sp)
20123596 c.add s0, s1
20123598 c.jalr a4
2012359a lbu a4, 0(s0)
2012359e addi a3, zero, 0xc8
201235a2 c.li s11, 0x14

TABLE 0xce4 0x20007268
20007268 lui a5, 0x20201
2000726c lw a5, 0x740(a5)
20007270 c.jr a5
20007272 c.addi sp, -0x20
20007274 c.swsp s0, 0x18(sp)
20007276 c.swsp ra, 0x1c(sp)
20007278 c.swsp s1, 0x14(sp)
2000727a c.swsp s2, 0x10(sp)
2000727c c.swsp s3, 0xc(sp)
2000727e c.swsp s4, 8(sp)
20007280 lbu a5, 0(a0)
20007284 c.mv s0, a0
20007286 c.beqz a5, 0x5e
20007288 c.li a4, 1
2000728a c.li a0, 1
2000728c bne a5, a4, 0x48
20007290 c.lui a5, 0xa
20007292 addi s2, a5, -0x7bc
20007296 addi a0, a5, -0x7c0
2000729a lhu a1, 2(s0)
2000729e lui a5, 0x20202
200072a2 lw a5, -0x308(a5)
200072a6 lui a4, 0x80000
200072aa c.or a1, a4
200072ac c.jalr a5
200072ae addi s1, zero, 0x64
200072b2 lui s4, 0x20202
200072b6 lui s3, 0x20202
200072ba lw a5, -0x314(s4)
200072be c.mv a0, s2
200072c0 c.jalr a5
200072c2 bltz a0, 0x2e
200072c6 lw a5, 0x2d0(s3)
200072ca c.li a0, 0xa
200072cc c.addi s1, -1
200072ce c.jalr a5
200072d0 c.bnez s1, -0x16
200072d2 c.li a0, 2
200072d4 c.lwsp ra, 0x1c(sp)
200072d6 c.lwsp s0, 0x18(sp)
200072d8 c.lwsp s1, 0x14(sp)
200072da c.lwsp s2, 0x10(sp)
200072dc c.lwsp s3, 0xc(sp)
200072de c.lwsp s4, 8(sp)
200072e0 c.addi16sp sp, 0x20
200072e2 c.jr ra
200072e4 c.lui a5, 0xa
200072e6 addi s2, a5, -0x7fc
200072ea addi a0, a5, -0x800
200072ee c.j -0x54
200072f0 c.lui a4, 1
200072f2 c.addi a4, -1
200072f4 and a5, a0, a4
200072f8 c.slli a5, 0x10
200072fa c.srli a5, 0x10
200072fc sh a5, 4(s0)
20007300 c.li a0, 0
20007302 bne a5, a4, -0x2e
20007306 c.li a0, 3
20007308 c.j -0x34
2000730a c.addi sp, -0x20
2000730c c.swsp s0, 0x18(sp)
2000730e c.swsp s2, 0x10(sp)
20007310 c.swsp ra, 0x1c(sp)
20007312 c.swsp s1, 0x14(sp)
20007314 c.swsp s3, 0xc(sp)
20007316 c.swsp s4, 8(sp)
20007318 c.swsp s5, 4(sp)
2000731a c.swsp s6, 0(sp)
2000731c lbu a5, 0(a1)
20007320 c.mv s2, a0
20007322 c.mv s0, a1
20007324 c.beqz a5, 0xd8
20007326 c.li a4, 1
20007328 c.li a0, 1
2000732a bne a5, a4, 0xbe
2000732e c.lui s1, 0xa
20007330 addi s3, s1, -0x7a0
20007334 addi a0, s1, -0x7a4
20007338 addi s5, s1, -0x7a8
2000733c addi s6, s1, -0x7ac
20007340 addi s1, s1, -0x7b0
20007344 lhu a1, 4(s0)
20007348 lhu a3, 6(s0)
2000734c c.lui a5, 1
2000734e lui s4, 0x20202
20007352 c.addi a5, -1
20007354 lw a4, -0x308(s4)
20007358 c.and a1, a5
2000735a c.slli a1, 0x10
2000735c c.and a5, a3
2000735e c.or a1, a5
20007360 c.jalr a4
20007362 lbu a5, 0xa(s0)
20007366 lbu a1, 8(s0)
2000736a lw a4, -0x308(s4)
2000736e c.slli a5, 0xc
20007370 c.andi a1, 7
20007372 c.or a5, a1
20007374 lbu a1, 9(s0)
20007378 c.mv a0, s6
2000737a andi a1, a1, 0x3f
2000737e c.slli a1, 4
20007380 c.or a1, a5
20007382 c.jalr a4
20007384 lbu a5, 0xd(s0)
20007388 lbu a1, 0xb(s0)
2000738c lw a4, -0x308(s4)
20007390 c.slli a5, 0xc
20007392 c.andi a1, 7
20007394 c.or a5, a1
20007396 lbu a1, 0xc(s0)
2000739a c.mv a0, s5
2000739c lui s5, 0x20202
200073a0 andi a1, a1, 0x3f
200073a4 c.slli a1, 4
200073a6 c.or a1, a5
200073a8 c.jalr a4
200073aa lbu a1, 2(s0)
200073ae andi a5, s2, 0xf
200073b2 lw a4, -0x308(s4)
200073b6 c.slli a5, 0x18
200073b8 c.or a5, a1
200073ba lui a1, 0x80000
200073be c.mv a0, s1
200073c0 c.or a1, a5
200073c2 c.jalr a4
200073c4 addi s1, zero, 0x64
200073c8 lui s4, 0x20202
200073cc lw a5, -0x314(s5)
200073d0 c.mv a0, s3
200073d2 c.jalr a5
200073d4 c.mv a5, a0
200073d6 bltz a0, 0x5a
200073da lw a5, 0x2d0(s4)
200073de c.li a0, 0xa
200073e0 c.addi s1, -1
200073e2 c.jalr a5
200073e4 c.bnez s1, -0x18
200073e6 c.li a0, 2
200073e8 c.lwsp ra, 0x1c(sp)
200073ea c.lwsp s0, 0x18(sp)
200073ec c.lwsp s1, 0x14(sp)
200073ee c.lwsp s2, 0x10(sp)
200073f0 c.lwsp s3, 0xc(sp)
200073f2 c.lwsp s4, 8(sp)
200073f4 c.lwsp s5, 4(sp)
200073f6 c.lwsp s6, 0(sp)
200073f8 c.addi16sp sp, 0x20
200073fa c.jr ra
200073fc c.lui s1, 0xa
200073fe addi s3, s1, -0x7e0
20007402 addi a0, s1, -0x7e4
20007406 addi s5, s1, -0x7e8
2000740a addi s6, s1, -0x7ec
2000740e addi s1, s1, -0x7f0
20007412 c.j -0xce
20007414 c.li a0, 0
20007416 bnez s2, -0x2e
2000741a c.lui a0, 1
2000741c c.addi a0, -1
2000741e and a4, a5, a0
20007422 c.srli a5, 0x10
20007424 c.and a5, a0
20007426 sh a4, 0xe(s0)
2000742a sh a5, 0x10(s0)
2000742e c.j 0x18
20007430 addi a4, s2, -1
20007434 andi a4, a4, 0xff
20007438 c.li a3, 1
2000743a bltu a3, a4, -0x26
2000743e c.slli a5, 0x14
20007440 c.srli a5, 0x14
20007442 sh a5, 0xe(s0)
20007446 c.li a0, 0
20007448 c.j -0x60
2000744a c.addi16sp sp, -0x40
2000744c c.swsp s3, 0x2c(sp)
2000744e c.swsp s6, 0x20(sp)
20007450 c.lui s3, 1
20007452 lui s6, 0x20202
20007456 c.swsp s1, 0x34(sp)
20007458 c.swsp s2, 0x30(sp)
2000745a c.swsp s4, 0x28(sp)

TABLE 0xce8 0x2000725e
2000725e lui a5, 0x20201
20007262 lw a5, 0x744(a5)
20007266 c.jr a5
20007268 lui a5, 0x20201
2000726c lw a5, 0x740(a5)
20007270 c.jr a5
20007272 c.addi sp, -0x20
20007274 c.swsp s0, 0x18(sp)
20007276 c.swsp ra, 0x1c(sp)
20007278 c.swsp s1, 0x14(sp)
2000727a c.swsp s2, 0x10(sp)
2000727c c.swsp s3, 0xc(sp)
2000727e c.swsp s4, 8(sp)
20007280 lbu a5, 0(a0)
20007284 c.mv s0, a0
20007286 c.beqz a5, 0x5e
20007288 c.li a4, 1
2000728a c.li a0, 1
2000728c bne a5, a4, 0x48
20007290 c.lui a5, 0xa
20007292 addi s2, a5, -0x7bc
20007296 addi a0, a5, -0x7c0
2000729a lhu a1, 2(s0)
2000729e lui a5, 0x20202
200072a2 lw a5, -0x308(a5)
200072a6 lui a4, 0x80000
200072aa c.or a1, a4
200072ac c.jalr a5
200072ae addi s1, zero, 0x64
200072b2 lui s4, 0x20202
200072b6 lui s3, 0x20202
200072ba lw a5, -0x314(s4)
200072be c.mv a0, s2
200072c0 c.jalr a5
200072c2 bltz a0, 0x2e
200072c6 lw a5, 0x2d0(s3)
200072ca c.li a0, 0xa
200072cc c.addi s1, -1
200072ce c.jalr a5
200072d0 c.bnez s1, -0x16
200072d2 c.li a0, 2
200072d4 c.lwsp ra, 0x1c(sp)
200072d6 c.lwsp s0, 0x18(sp)
200072d8 c.lwsp s1, 0x14(sp)
200072da c.lwsp s2, 0x10(sp)
200072dc c.lwsp s3, 0xc(sp)
200072de c.lwsp s4, 8(sp)
200072e0 c.addi16sp sp, 0x20
200072e2 c.jr ra
200072e4 c.lui a5, 0xa
200072e6 addi s2, a5, -0x7fc
200072ea addi a0, a5, -0x800
200072ee c.j -0x54
200072f0 c.lui a4, 1
200072f2 c.addi a4, -1
200072f4 and a5, a0, a4
200072f8 c.slli a5, 0x10
200072fa c.srli a5, 0x10
200072fc sh a5, 4(s0)
20007300 c.li a0, 0
20007302 bne a5, a4, -0x2e
20007306 c.li a0, 3
20007308 c.j -0x34
2000730a c.addi sp, -0x20
2000730c c.swsp s0, 0x18(sp)
2000730e c.swsp s2, 0x10(sp)
20007310 c.swsp ra, 0x1c(sp)
20007312 c.swsp s1, 0x14(sp)
20007314 c.swsp s3, 0xc(sp)
20007316 c.swsp s4, 8(sp)
20007318 c.swsp s5, 4(sp)
2000731a c.swsp s6, 0(sp)
2000731c lbu a5, 0(a1)
20007320 c.mv s2, a0
20007322 c.mv s0, a1
20007324 c.beqz a5, 0xd8
20007326 c.li a4, 1
20007328 c.li a0, 1
2000732a bne a5, a4, 0xbe
2000732e c.lui s1, 0xa
20007330 addi s3, s1, -0x7a0
20007334 addi a0, s1, -0x7a4
20007338 addi s5, s1, -0x7a8
2000733c addi s6, s1, -0x7ac
20007340 addi s1, s1, -0x7b0
20007344 lhu a1, 4(s0)
20007348 lhu a3, 6(s0)
2000734c c.lui a5, 1
2000734e lui s4, 0x20202
20007352 c.addi a5, -1
20007354 lw a4, -0x308(s4)
20007358 c.and a1, a5
2000735a c.slli a1, 0x10
2000735c c.and a5, a3
2000735e c.or a1, a5
20007360 c.jalr a4
20007362 lbu a5, 0xa(s0)
20007366 lbu a1, 8(s0)
2000736a lw a4, -0x308(s4)
2000736e c.slli a5, 0xc
20007370 c.andi a1, 7
20007372 c.or a5, a1
20007374 lbu a1, 9(s0)
20007378 c.mv a0, s6
2000737a andi a1, a1, 0x3f
2000737e c.slli a1, 4
20007380 c.or a1, a5
20007382 c.jalr a4
20007384 lbu a5, 0xd(s0)
20007388 lbu a1, 0xb(s0)
2000738c lw a4, -0x308(s4)
20007390 c.slli a5, 0xc
20007392 c.andi a1, 7
20007394 c.or a5, a1
20007396 lbu a1, 0xc(s0)
2000739a c.mv a0, s5
2000739c lui s5, 0x20202
200073a0 andi a1, a1, 0x3f
200073a4 c.slli a1, 4
200073a6 c.or a1, a5
200073a8 c.jalr a4
200073aa lbu a1, 2(s0)
200073ae andi a5, s2, 0xf
200073b2 lw a4, -0x308(s4)
200073b6 c.slli a5, 0x18
200073b8 c.or a5, a1
200073ba lui a1, 0x80000
200073be c.mv a0, s1
200073c0 c.or a1, a5
200073c2 c.jalr a4
200073c4 addi s1, zero, 0x64
200073c8 lui s4, 0x20202
200073cc lw a5, -0x314(s5)
200073d0 c.mv a0, s3
200073d2 c.jalr a5
200073d4 c.mv a5, a0
200073d6 bltz a0, 0x5a
200073da lw a5, 0x2d0(s4)
200073de c.li a0, 0xa
200073e0 c.addi s1, -1
200073e2 c.jalr a5
200073e4 c.bnez s1, -0x18
200073e6 c.li a0, 2
200073e8 c.lwsp ra, 0x1c(sp)
200073ea c.lwsp s0, 0x18(sp)
200073ec c.lwsp s1, 0x14(sp)
200073ee c.lwsp s2, 0x10(sp)
200073f0 c.lwsp s3, 0xc(sp)
200073f2 c.lwsp s4, 8(sp)
200073f4 c.lwsp s5, 4(sp)
200073f6 c.lwsp s6, 0(sp)
200073f8 c.addi16sp sp, 0x20
200073fa c.jr ra
200073fc c.lui s1, 0xa
200073fe addi s3, s1, -0x7e0
20007402 addi a0, s1, -0x7e4
20007406 addi s5, s1, -0x7e8
2000740a addi s6, s1, -0x7ec
2000740e addi s1, s1, -0x7f0
20007412 c.j -0xce
20007414 c.li a0, 0
20007416 bnez s2, -0x2e
2000741a c.lui a0, 1
2000741c c.addi a0, -1
2000741e and a4, a5, a0
20007422 c.srli a5, 0x10
20007424 c.and a5, a0
20007426 sh a4, 0xe(s0)
2000742a sh a5, 0x10(s0)
2000742e c.j 0x18
20007430 addi a4, s2, -1
20007434 andi a4, a4, 0xff
20007438 c.li a3, 1
2000743a bltu a3, a4, -0x26
2000743e c.slli a5, 0x14
20007440 c.srli a5, 0x14
20007442 sh a5, 0xe(s0)
20007446 c.li a0, 0
20007448 c.j -0x60
2000744a c.addi16sp sp, -0x40
2000744c c.swsp s3, 0x2c(sp)
2000744e c.swsp s6, 0x20(sp)
20007450 c.lui s3, 1

TABLE 0xcec 0x20007254
20007254 lui a5, 0x20201
20007258 lw a5, 0x748(a5)
2000725c c.jr a5
2000725e lui a5, 0x20201
20007262 lw a5, 0x744(a5)
20007266 c.jr a5
20007268 lui a5, 0x20201
2000726c lw a5, 0x740(a5)
20007270 c.jr a5
20007272 c.addi sp, -0x20
20007274 c.swsp s0, 0x18(sp)
20007276 c.swsp ra, 0x1c(sp)
20007278 c.swsp s1, 0x14(sp)
2000727a c.swsp s2, 0x10(sp)
2000727c c.swsp s3, 0xc(sp)
2000727e c.swsp s4, 8(sp)
20007280 lbu a5, 0(a0)
20007284 c.mv s0, a0
20007286 c.beqz a5, 0x5e
20007288 c.li a4, 1
2000728a c.li a0, 1
2000728c bne a5, a4, 0x48
20007290 c.lui a5, 0xa
20007292 addi s2, a5, -0x7bc
20007296 addi a0, a5, -0x7c0
2000729a lhu a1, 2(s0)
2000729e lui a5, 0x20202
200072a2 lw a5, -0x308(a5)
200072a6 lui a4, 0x80000
200072aa c.or a1, a4
200072ac c.jalr a5
200072ae addi s1, zero, 0x64
200072b2 lui s4, 0x20202
200072b6 lui s3, 0x20202
200072ba lw a5, -0x314(s4)
200072be c.mv a0, s2
200072c0 c.jalr a5
200072c2 bltz a0, 0x2e
200072c6 lw a5, 0x2d0(s3)
200072ca c.li a0, 0xa
200072cc c.addi s1, -1
200072ce c.jalr a5
200072d0 c.bnez s1, -0x16
200072d2 c.li a0, 2
200072d4 c.lwsp ra, 0x1c(sp)
200072d6 c.lwsp s0, 0x18(sp)
200072d8 c.lwsp s1, 0x14(sp)
200072da c.lwsp s2, 0x10(sp)
200072dc c.lwsp s3, 0xc(sp)
200072de c.lwsp s4, 8(sp)
200072e0 c.addi16sp sp, 0x20
200072e2 c.jr ra
200072e4 c.lui a5, 0xa
200072e6 addi s2, a5, -0x7fc
200072ea addi a0, a5, -0x800
200072ee c.j -0x54
200072f0 c.lui a4, 1
200072f2 c.addi a4, -1
200072f4 and a5, a0, a4
200072f8 c.slli a5, 0x10
200072fa c.srli a5, 0x10
200072fc sh a5, 4(s0)
20007300 c.li a0, 0
20007302 bne a5, a4, -0x2e
20007306 c.li a0, 3
20007308 c.j -0x34
2000730a c.addi sp, -0x20
2000730c c.swsp s0, 0x18(sp)
2000730e c.swsp s2, 0x10(sp)
20007310 c.swsp ra, 0x1c(sp)
20007312 c.swsp s1, 0x14(sp)
20007314 c.swsp s3, 0xc(sp)
20007316 c.swsp s4, 8(sp)
20007318 c.swsp s5, 4(sp)
2000731a c.swsp s6, 0(sp)
2000731c lbu a5, 0(a1)
20007320 c.mv s2, a0
20007322 c.mv s0, a1
20007324 c.beqz a5, 0xd8
20007326 c.li a4, 1
20007328 c.li a0, 1
2000732a bne a5, a4, 0xbe
2000732e c.lui s1, 0xa
20007330 addi s3, s1, -0x7a0
20007334 addi a0, s1, -0x7a4
20007338 addi s5, s1, -0x7a8
2000733c addi s6, s1, -0x7ac
20007340 addi s1, s1, -0x7b0
20007344 lhu a1, 4(s0)
20007348 lhu a3, 6(s0)
2000734c c.lui a5, 1
2000734e lui s4, 0x20202
20007352 c.addi a5, -1
20007354 lw a4, -0x308(s4)
20007358 c.and a1, a5
2000735a c.slli a1, 0x10
2000735c c.and a5, a3
2000735e c.or a1, a5
20007360 c.jalr a4
20007362 lbu a5, 0xa(s0)
20007366 lbu a1, 8(s0)
2000736a lw a4, -0x308(s4)
2000736e c.slli a5, 0xc
20007370 c.andi a1, 7
20007372 c.or a5, a1
20007374 lbu a1, 9(s0)
20007378 c.mv a0, s6
2000737a andi a1, a1, 0x3f
2000737e c.slli a1, 4
20007380 c.or a1, a5
20007382 c.jalr a4
20007384 lbu a5, 0xd(s0)
20007388 lbu a1, 0xb(s0)
2000738c lw a4, -0x308(s4)
20007390 c.slli a5, 0xc
20007392 c.andi a1, 7
20007394 c.or a5, a1
20007396 lbu a1, 0xc(s0)
2000739a c.mv a0, s5
2000739c lui s5, 0x20202
200073a0 andi a1, a1, 0x3f
200073a4 c.slli a1, 4
200073a6 c.or a1, a5
200073a8 c.jalr a4
200073aa lbu a1, 2(s0)
200073ae andi a5, s2, 0xf
200073b2 lw a4, -0x308(s4)
200073b6 c.slli a5, 0x18
200073b8 c.or a5, a1
200073ba lui a1, 0x80000
200073be c.mv a0, s1
200073c0 c.or a1, a5
200073c2 c.jalr a4
200073c4 addi s1, zero, 0x64
200073c8 lui s4, 0x20202
200073cc lw a5, -0x314(s5)
200073d0 c.mv a0, s3
200073d2 c.jalr a5
200073d4 c.mv a5, a0
200073d6 bltz a0, 0x5a
200073da lw a5, 0x2d0(s4)
200073de c.li a0, 0xa
200073e0 c.addi s1, -1
200073e2 c.jalr a5
200073e4 c.bnez s1, -0x18
200073e6 c.li a0, 2
200073e8 c.lwsp ra, 0x1c(sp)
200073ea c.lwsp s0, 0x18(sp)
200073ec c.lwsp s1, 0x14(sp)
200073ee c.lwsp s2, 0x10(sp)
200073f0 c.lwsp s3, 0xc(sp)
200073f2 c.lwsp s4, 8(sp)
200073f4 c.lwsp s5, 4(sp)
200073f6 c.lwsp s6, 0(sp)
200073f8 c.addi16sp sp, 0x20
200073fa c.jr ra
200073fc c.lui s1, 0xa
200073fe addi s3, s1, -0x7e0
20007402 addi a0, s1, -0x7e4
20007406 addi s5, s1, -0x7e8
2000740a addi s6, s1, -0x7ec
2000740e addi s1, s1, -0x7f0
20007412 c.j -0xce
20007414 c.li a0, 0
20007416 bnez s2, -0x2e
2000741a c.lui a0, 1
2000741c c.addi a0, -1
2000741e and a4, a5, a0
20007422 c.srli a5, 0x10
20007424 c.and a5, a0
20007426 sh a4, 0xe(s0)
2000742a sh a5, 0x10(s0)
2000742e c.j 0x18
20007430 addi a4, s2, -1
20007434 andi a4, a4, 0xff
20007438 c.li a3, 1
2000743a bltu a3, a4, -0x26
2000743e c.slli a5, 0x14
20007440 c.srli a5, 0x14
20007442 sh a5, 0xe(s0)
20007446 c.li a0, 0

TABLE 0xcf0 0x2000724a
2000724a lui a5, 0x20201
2000724e lw a5, 0x734(a5)
20007252 c.jr a5
20007254 lui a5, 0x20201
20007258 lw a5, 0x748(a5)
2000725c c.jr a5
2000725e lui a5, 0x20201
20007262 lw a5, 0x744(a5)
20007266 c.jr a5
20007268 lui a5, 0x20201
2000726c lw a5, 0x740(a5)
20007270 c.jr a5
20007272 c.addi sp, -0x20
20007274 c.swsp s0, 0x18(sp)
20007276 c.swsp ra, 0x1c(sp)
20007278 c.swsp s1, 0x14(sp)
2000727a c.swsp s2, 0x10(sp)
2000727c c.swsp s3, 0xc(sp)
2000727e c.swsp s4, 8(sp)
20007280 lbu a5, 0(a0)
20007284 c.mv s0, a0
20007286 c.beqz a5, 0x5e
20007288 c.li a4, 1
2000728a c.li a0, 1
2000728c bne a5, a4, 0x48
20007290 c.lui a5, 0xa
20007292 addi s2, a5, -0x7bc
20007296 addi a0, a5, -0x7c0
2000729a lhu a1, 2(s0)
2000729e lui a5, 0x20202
200072a2 lw a5, -0x308(a5)
200072a6 lui a4, 0x80000
200072aa c.or a1, a4
200072ac c.jalr a5
200072ae addi s1, zero, 0x64
200072b2 lui s4, 0x20202
200072b6 lui s3, 0x20202
200072ba lw a5, -0x314(s4)
200072be c.mv a0, s2
200072c0 c.jalr a5
200072c2 bltz a0, 0x2e
200072c6 lw a5, 0x2d0(s3)
200072ca c.li a0, 0xa
200072cc c.addi s1, -1
200072ce c.jalr a5
200072d0 c.bnez s1, -0x16
200072d2 c.li a0, 2
200072d4 c.lwsp ra, 0x1c(sp)
200072d6 c.lwsp s0, 0x18(sp)
200072d8 c.lwsp s1, 0x14(sp)
200072da c.lwsp s2, 0x10(sp)
200072dc c.lwsp s3, 0xc(sp)
200072de c.lwsp s4, 8(sp)
200072e0 c.addi16sp sp, 0x20
200072e2 c.jr ra
200072e4 c.lui a5, 0xa
200072e6 addi s2, a5, -0x7fc
200072ea addi a0, a5, -0x800
200072ee c.j -0x54
200072f0 c.lui a4, 1
200072f2 c.addi a4, -1
200072f4 and a5, a0, a4
200072f8 c.slli a5, 0x10
200072fa c.srli a5, 0x10
200072fc sh a5, 4(s0)
20007300 c.li a0, 0
20007302 bne a5, a4, -0x2e
20007306 c.li a0, 3
20007308 c.j -0x34
2000730a c.addi sp, -0x20
2000730c c.swsp s0, 0x18(sp)
2000730e c.swsp s2, 0x10(sp)
20007310 c.swsp ra, 0x1c(sp)
20007312 c.swsp s1, 0x14(sp)
20007314 c.swsp s3, 0xc(sp)
20007316 c.swsp s4, 8(sp)
20007318 c.swsp s5, 4(sp)
2000731a c.swsp s6, 0(sp)
2000731c lbu a5, 0(a1)
20007320 c.mv s2, a0
20007322 c.mv s0, a1
20007324 c.beqz a5, 0xd8
20007326 c.li a4, 1
20007328 c.li a0, 1
2000732a bne a5, a4, 0xbe
2000732e c.lui s1, 0xa
20007330 addi s3, s1, -0x7a0
20007334 addi a0, s1, -0x7a4
20007338 addi s5, s1, -0x7a8
2000733c addi s6, s1, -0x7ac
20007340 addi s1, s1, -0x7b0
20007344 lhu a1, 4(s0)
20007348 lhu a3, 6(s0)
2000734c c.lui a5, 1
2000734e lui s4, 0x20202
20007352 c.addi a5, -1
20007354 lw a4, -0x308(s4)
20007358 c.and a1, a5
2000735a c.slli a1, 0x10
2000735c c.and a5, a3
2000735e c.or a1, a5
20007360 c.jalr a4
20007362 lbu a5, 0xa(s0)
20007366 lbu a1, 8(s0)
2000736a lw a4, -0x308(s4)
2000736e c.slli a5, 0xc
20007370 c.andi a1, 7
20007372 c.or a5, a1
20007374 lbu a1, 9(s0)
20007378 c.mv a0, s6
2000737a andi a1, a1, 0x3f
2000737e c.slli a1, 4
20007380 c.or a1, a5
20007382 c.jalr a4
20007384 lbu a5, 0xd(s0)
20007388 lbu a1, 0xb(s0)
2000738c lw a4, -0x308(s4)
20007390 c.slli a5, 0xc
20007392 c.andi a1, 7
20007394 c.or a5, a1
20007396 lbu a1, 0xc(s0)
2000739a c.mv a0, s5
2000739c lui s5, 0x20202
200073a0 andi a1, a1, 0x3f
200073a4 c.slli a1, 4
200073a6 c.or a1, a5
200073a8 c.jalr a4
200073aa lbu a1, 2(s0)
200073ae andi a5, s2, 0xf
200073b2 lw a4, -0x308(s4)
200073b6 c.slli a5, 0x18
200073b8 c.or a5, a1
200073ba lui a1, 0x80000
200073be c.mv a0, s1
200073c0 c.or a1, a5
200073c2 c.jalr a4
200073c4 addi s1, zero, 0x64
200073c8 lui s4, 0x20202
200073cc lw a5, -0x314(s5)
200073d0 c.mv a0, s3
200073d2 c.jalr a5
200073d4 c.mv a5, a0
200073d6 bltz a0, 0x5a
200073da lw a5, 0x2d0(s4)
200073de c.li a0, 0xa
200073e0 c.addi s1, -1
200073e2 c.jalr a5
200073e4 c.bnez s1, -0x18
200073e6 c.li a0, 2
200073e8 c.lwsp ra, 0x1c(sp)
200073ea c.lwsp s0, 0x18(sp)
200073ec c.lwsp s1, 0x14(sp)
200073ee c.lwsp s2, 0x10(sp)
200073f0 c.lwsp s3, 0xc(sp)
200073f2 c.lwsp s4, 8(sp)
200073f4 c.lwsp s5, 4(sp)
200073f6 c.lwsp s6, 0(sp)
200073f8 c.addi16sp sp, 0x20
200073fa c.jr ra
200073fc c.lui s1, 0xa
200073fe addi s3, s1, -0x7e0
20007402 addi a0, s1, -0x7e4
20007406 addi s5, s1, -0x7e8
2000740a addi s6, s1, -0x7ec
2000740e addi s1, s1, -0x7f0
20007412 c.j -0xce
20007414 c.li a0, 0
20007416 bnez s2, -0x2e
2000741a c.lui a0, 1
2000741c c.addi a0, -1
2000741e and a4, a5, a0
20007422 c.srli a5, 0x10
20007424 c.and a5, a0
20007426 sh a4, 0xe(s0)
2000742a sh a5, 0x10(s0)
2000742e c.j 0x18
20007430 addi a4, s2, -1
20007434 andi a4, a4, 0xff
20007438 c.li a3, 1
2000743a bltu a3, a4, -0x26

TABLE 0xcf4 0x20007240
20007240 lui a5, 0x20201
20007244 lw a5, 0x738(a5)
20007248 c.jr a5
2000724a lui a5, 0x20201
2000724e lw a5, 0x734(a5)
20007252 c.jr a5
20007254 lui a5, 0x20201
20007258 lw a5, 0x748(a5)
2000725c c.jr a5
2000725e lui a5, 0x20201
20007262 lw a5, 0x744(a5)
20007266 c.jr a5
20007268 lui a5, 0x20201
2000726c lw a5, 0x740(a5)
20007270 c.jr a5
20007272 c.addi sp, -0x20
20007274 c.swsp s0, 0x18(sp)
20007276 c.swsp ra, 0x1c(sp)
20007278 c.swsp s1, 0x14(sp)
2000727a c.swsp s2, 0x10(sp)
2000727c c.swsp s3, 0xc(sp)
2000727e c.swsp s4, 8(sp)
20007280 lbu a5, 0(a0)
20007284 c.mv s0, a0
20007286 c.beqz a5, 0x5e
20007288 c.li a4, 1
2000728a c.li a0, 1
2000728c bne a5, a4, 0x48
20007290 c.lui a5, 0xa
20007292 addi s2, a5, -0x7bc
20007296 addi a0, a5, -0x7c0
2000729a lhu a1, 2(s0)
2000729e lui a5, 0x20202
200072a2 lw a5, -0x308(a5)
200072a6 lui a4, 0x80000
200072aa c.or a1, a4
200072ac c.jalr a5
200072ae addi s1, zero, 0x64
200072b2 lui s4, 0x20202
200072b6 lui s3, 0x20202
200072ba lw a5, -0x314(s4)
200072be c.mv a0, s2
200072c0 c.jalr a5
200072c2 bltz a0, 0x2e
200072c6 lw a5, 0x2d0(s3)
200072ca c.li a0, 0xa
200072cc c.addi s1, -1
200072ce c.jalr a5
200072d0 c.bnez s1, -0x16
200072d2 c.li a0, 2
200072d4 c.lwsp ra, 0x1c(sp)
200072d6 c.lwsp s0, 0x18(sp)
200072d8 c.lwsp s1, 0x14(sp)
200072da c.lwsp s2, 0x10(sp)
200072dc c.lwsp s3, 0xc(sp)
200072de c.lwsp s4, 8(sp)
200072e0 c.addi16sp sp, 0x20
200072e2 c.jr ra
200072e4 c.lui a5, 0xa
200072e6 addi s2, a5, -0x7fc
200072ea addi a0, a5, -0x800
200072ee c.j -0x54
200072f0 c.lui a4, 1
200072f2 c.addi a4, -1
200072f4 and a5, a0, a4
200072f8 c.slli a5, 0x10
200072fa c.srli a5, 0x10
200072fc sh a5, 4(s0)
20007300 c.li a0, 0
20007302 bne a5, a4, -0x2e
20007306 c.li a0, 3
20007308 c.j -0x34
2000730a c.addi sp, -0x20
2000730c c.swsp s0, 0x18(sp)
2000730e c.swsp s2, 0x10(sp)
20007310 c.swsp ra, 0x1c(sp)
20007312 c.swsp s1, 0x14(sp)
20007314 c.swsp s3, 0xc(sp)
20007316 c.swsp s4, 8(sp)
20007318 c.swsp s5, 4(sp)
2000731a c.swsp s6, 0(sp)
2000731c lbu a5, 0(a1)
20007320 c.mv s2, a0
20007322 c.mv s0, a1
20007324 c.beqz a5, 0xd8
20007326 c.li a4, 1
20007328 c.li a0, 1
2000732a bne a5, a4, 0xbe
2000732e c.lui s1, 0xa
20007330 addi s3, s1, -0x7a0
20007334 addi a0, s1, -0x7a4
20007338 addi s5, s1, -0x7a8
2000733c addi s6, s1, -0x7ac
20007340 addi s1, s1, -0x7b0
20007344 lhu a1, 4(s0)
20007348 lhu a3, 6(s0)
2000734c c.lui a5, 1
2000734e lui s4, 0x20202
20007352 c.addi a5, -1
20007354 lw a4, -0x308(s4)
20007358 c.and a1, a5
2000735a c.slli a1, 0x10
2000735c c.and a5, a3
2000735e c.or a1, a5
20007360 c.jalr a4
20007362 lbu a5, 0xa(s0)
20007366 lbu a1, 8(s0)
2000736a lw a4, -0x308(s4)
2000736e c.slli a5, 0xc
20007370 c.andi a1, 7
20007372 c.or a5, a1
20007374 lbu a1, 9(s0)
20007378 c.mv a0, s6
2000737a andi a1, a1, 0x3f
2000737e c.slli a1, 4
20007380 c.or a1, a5
20007382 c.jalr a4
20007384 lbu a5, 0xd(s0)
20007388 lbu a1, 0xb(s0)
2000738c lw a4, -0x308(s4)
20007390 c.slli a5, 0xc
20007392 c.andi a1, 7
20007394 c.or a5, a1
20007396 lbu a1, 0xc(s0)
2000739a c.mv a0, s5
2000739c lui s5, 0x20202
200073a0 andi a1, a1, 0x3f
200073a4 c.slli a1, 4
200073a6 c.or a1, a5
200073a8 c.jalr a4
200073aa lbu a1, 2(s0)
200073ae andi a5, s2, 0xf
200073b2 lw a4, -0x308(s4)
200073b6 c.slli a5, 0x18
200073b8 c.or a5, a1
200073ba lui a1, 0x80000
200073be c.mv a0, s1
200073c0 c.or a1, a5
200073c2 c.jalr a4
200073c4 addi s1, zero, 0x64
200073c8 lui s4, 0x20202
200073cc lw a5, -0x314(s5)
200073d0 c.mv a0, s3
200073d2 c.jalr a5
200073d4 c.mv a5, a0
200073d6 bltz a0, 0x5a
200073da lw a5, 0x2d0(s4)
200073de c.li a0, 0xa
200073e0 c.addi s1, -1
200073e2 c.jalr a5
200073e4 c.bnez s1, -0x18
200073e6 c.li a0, 2
200073e8 c.lwsp ra, 0x1c(sp)
200073ea c.lwsp s0, 0x18(sp)
200073ec c.lwsp s1, 0x14(sp)
200073ee c.lwsp s2, 0x10(sp)
200073f0 c.lwsp s3, 0xc(sp)
200073f2 c.lwsp s4, 8(sp)
200073f4 c.lwsp s5, 4(sp)
200073f6 c.lwsp s6, 0(sp)
200073f8 c.addi16sp sp, 0x20
200073fa c.jr ra
200073fc c.lui s1, 0xa
200073fe addi s3, s1, -0x7e0
20007402 addi a0, s1, -0x7e4
20007406 addi s5, s1, -0x7e8
2000740a addi s6, s1, -0x7ec
2000740e addi s1, s1, -0x7f0
20007412 c.j -0xce
20007414 c.li a0, 0
20007416 bnez s2, -0x2e
2000741a c.lui a0, 1
2000741c c.addi a0, -1
2000741e and a4, a5, a0
20007422 c.srli a5, 0x10
20007424 c.and a5, a0
20007426 sh a4, 0xe(s0)
2000742a sh a5, 0x10(s0)
2000742e c.j 0x18
20007430 addi a4, s2, -1

TABLE 0xcf8 0x20007236
20007236 lui a5, 0x20201
2000723a lw a5, 0x73c(a5)
2000723e c.jr a5
20007240 lui a5, 0x20201
20007244 lw a5, 0x738(a5)
20007248 c.jr a5
2000724a lui a5, 0x20201
2000724e lw a5, 0x734(a5)
20007252 c.jr a5
20007254 lui a5, 0x20201
20007258 lw a5, 0x748(a5)
2000725c c.jr a5
2000725e lui a5, 0x20201
20007262 lw a5, 0x744(a5)
20007266 c.jr a5
20007268 lui a5, 0x20201
2000726c lw a5, 0x740(a5)
20007270 c.jr a5
20007272 c.addi sp, -0x20
20007274 c.swsp s0, 0x18(sp)
20007276 c.swsp ra, 0x1c(sp)
20007278 c.swsp s1, 0x14(sp)
2000727a c.swsp s2, 0x10(sp)
2000727c c.swsp s3, 0xc(sp)
2000727e c.swsp s4, 8(sp)
20007280 lbu a5, 0(a0)
20007284 c.mv s0, a0
20007286 c.beqz a5, 0x5e
20007288 c.li a4, 1
2000728a c.li a0, 1
2000728c bne a5, a4, 0x48
20007290 c.lui a5, 0xa
20007292 addi s2, a5, -0x7bc
20007296 addi a0, a5, -0x7c0
2000729a lhu a1, 2(s0)
2000729e lui a5, 0x20202
200072a2 lw a5, -0x308(a5)
200072a6 lui a4, 0x80000
200072aa c.or a1, a4
200072ac c.jalr a5
200072ae addi s1, zero, 0x64
200072b2 lui s4, 0x20202
200072b6 lui s3, 0x20202
200072ba lw a5, -0x314(s4)
200072be c.mv a0, s2
200072c0 c.jalr a5
200072c2 bltz a0, 0x2e
200072c6 lw a5, 0x2d0(s3)
200072ca c.li a0, 0xa
200072cc c.addi s1, -1
200072ce c.jalr a5
200072d0 c.bnez s1, -0x16
200072d2 c.li a0, 2
200072d4 c.lwsp ra, 0x1c(sp)
200072d6 c.lwsp s0, 0x18(sp)
200072d8 c.lwsp s1, 0x14(sp)
200072da c.lwsp s2, 0x10(sp)
200072dc c.lwsp s3, 0xc(sp)
200072de c.lwsp s4, 8(sp)
200072e0 c.addi16sp sp, 0x20
200072e2 c.jr ra
200072e4 c.lui a5, 0xa
200072e6 addi s2, a5, -0x7fc
200072ea addi a0, a5, -0x800
200072ee c.j -0x54
200072f0 c.lui a4, 1
200072f2 c.addi a4, -1
200072f4 and a5, a0, a4
200072f8 c.slli a5, 0x10
200072fa c.srli a5, 0x10
200072fc sh a5, 4(s0)
20007300 c.li a0, 0
20007302 bne a5, a4, -0x2e
20007306 c.li a0, 3
20007308 c.j -0x34
2000730a c.addi sp, -0x20
2000730c c.swsp s0, 0x18(sp)
2000730e c.swsp s2, 0x10(sp)
20007310 c.swsp ra, 0x1c(sp)
20007312 c.swsp s1, 0x14(sp)
20007314 c.swsp s3, 0xc(sp)
20007316 c.swsp s4, 8(sp)
20007318 c.swsp s5, 4(sp)
2000731a c.swsp s6, 0(sp)
2000731c lbu a5, 0(a1)
20007320 c.mv s2, a0
20007322 c.mv s0, a1
20007324 c.beqz a5, 0xd8
20007326 c.li a4, 1
20007328 c.li a0, 1
2000732a bne a5, a4, 0xbe
2000732e c.lui s1, 0xa
20007330 addi s3, s1, -0x7a0
20007334 addi a0, s1, -0x7a4
20007338 addi s5, s1, -0x7a8
2000733c addi s6, s1, -0x7ac
20007340 addi s1, s1, -0x7b0
20007344 lhu a1, 4(s0)
20007348 lhu a3, 6(s0)
2000734c c.lui a5, 1
2000734e lui s4, 0x20202
20007352 c.addi a5, -1
20007354 lw a4, -0x308(s4)
20007358 c.and a1, a5
2000735a c.slli a1, 0x10
2000735c c.and a5, a3
2000735e c.or a1, a5
20007360 c.jalr a4
20007362 lbu a5, 0xa(s0)
20007366 lbu a1, 8(s0)
2000736a lw a4, -0x308(s4)
2000736e c.slli a5, 0xc
20007370 c.andi a1, 7
20007372 c.or a5, a1
20007374 lbu a1, 9(s0)
20007378 c.mv a0, s6
2000737a andi a1, a1, 0x3f
2000737e c.slli a1, 4
20007380 c.or a1, a5
20007382 c.jalr a4
20007384 lbu a5, 0xd(s0)
20007388 lbu a1, 0xb(s0)
2000738c lw a4, -0x308(s4)
20007390 c.slli a5, 0xc
20007392 c.andi a1, 7
20007394 c.or a5, a1
20007396 lbu a1, 0xc(s0)
2000739a c.mv a0, s5
2000739c lui s5, 0x20202
200073a0 andi a1, a1, 0x3f
200073a4 c.slli a1, 4
200073a6 c.or a1, a5
200073a8 c.jalr a4
200073aa lbu a1, 2(s0)
200073ae andi a5, s2, 0xf
200073b2 lw a4, -0x308(s4)
200073b6 c.slli a5, 0x18
200073b8 c.or a5, a1
200073ba lui a1, 0x80000
200073be c.mv a0, s1
200073c0 c.or a1, a5
200073c2 c.jalr a4
200073c4 addi s1, zero, 0x64
200073c8 lui s4, 0x20202
200073cc lw a5, -0x314(s5)
200073d0 c.mv a0, s3
200073d2 c.jalr a5
200073d4 c.mv a5, a0
200073d6 bltz a0, 0x5a
200073da lw a5, 0x2d0(s4)
200073de c.li a0, 0xa
200073e0 c.addi s1, -1
200073e2 c.jalr a5
200073e4 c.bnez s1, -0x18
200073e6 c.li a0, 2
200073e8 c.lwsp ra, 0x1c(sp)
200073ea c.lwsp s0, 0x18(sp)
200073ec c.lwsp s1, 0x14(sp)
200073ee c.lwsp s2, 0x10(sp)
200073f0 c.lwsp s3, 0xc(sp)
200073f2 c.lwsp s4, 8(sp)
200073f4 c.lwsp s5, 4(sp)
200073f6 c.lwsp s6, 0(sp)
200073f8 c.addi16sp sp, 0x20
200073fa c.jr ra
200073fc c.lui s1, 0xa
200073fe addi s3, s1, -0x7e0
20007402 addi a0, s1, -0x7e4
20007406 addi s5, s1, -0x7e8
2000740a addi s6, s1, -0x7ec
2000740e addi s1, s1, -0x7f0
20007412 c.j -0xce
20007414 c.li a0, 0
20007416 bnez s2, -0x2e
2000741a c.lui a0, 1
2000741c c.addi a0, -1
2000741e and a4, a5, a0
20007422 c.srli a5, 0x10
20007424 c.and a5, a0
20007426 sh a4, 0xe(s0)

TABLE 0xf90 0x2012e908
2012e908 c.addi16sp sp, -0x40
2012e90a c.swsp s4, 0x28(sp)
2012e90c c.mv s4, a5
2012e90e addi a5, a0, -2
2012e912 c.swsp s5, 0x24(sp)
2012e914 c.swsp ra, 0x3c(sp)
2012e916 c.mv s5, a4
2012e918 c.swsp s0, 0x38(sp)
2012e91a c.swsp s1, 0x34(sp)
2012e91c c.swsp s2, 0x30(sp)
2012e91e c.swsp s3, 0x2c(sp)
2012e920 c.swsp s6, 0x20(sp)
2012e922 c.swsp s7, 0x1c(sp)
2012e924 c.swsp s8, 0x18(sp)
2012e926 c.swsp s9, 0x14(sp)
2012e928 andi a5, a5, 0xff
2012e92c c.li a4, 5
2012e92e bgeu a4, a5, 0x20
2012e932 c.li a0, 0
2012e934 c.lwsp ra, 0x3c(sp)
2012e936 c.lwsp s0, 0x38(sp)
2012e938 c.lwsp s1, 0x34(sp)
2012e93a c.lwsp s2, 0x30(sp)
2012e93c c.lwsp s3, 0x2c(sp)
2012e93e c.lwsp s4, 0x28(sp)
2012e940 c.lwsp s5, 0x24(sp)
2012e942 c.lwsp s6, 0x20(sp)
2012e944 c.lwsp s7, 0x1c(sp)
2012e946 c.lwsp s8, 0x18(sp)
2012e948 c.lwsp s9, 0x14(sp)
2012e94a c.addi16sp sp, 0x40
2012e94c c.jr ra
2012e94e c.li a5, 1
2012e950 c.mv s3, a1
2012e952 bltu a5, a1, -0x20
2012e956 lui s6, 0x20203
2012e95a addi s1, s6, 0x580
2012e95e lw s8, 0(s1)
2012e962 c.mv s2, a0
2012e964 c.mv s7, a2
2012e966 lw a5, 0x14(s8)
2012e96a c.mv s0, a3
2012e96c addi s6, s6, 0x580
2012e970 c.bnez a5, 0x4e
2012e972 lui a5, 0x20201
2012e976 lw a5, 0x40c(a5)
2012e97a lui a1, 0xf1030
2012e97e c.addi a1, 2
2012e980 addi a0, zero, 0x80
2012e984 c.jalr a5
2012e986 c.lw a5, 0(s1)
2012e988 sw a0, 0x14(s8)
2012e98c c.lw a0, 0x14(a5)
2012e98e c.bnez a0, 0x26
2012e990 c.li a5, 6
2012e992 sb a5, 0(sp)
2012e996 lui a5, 0x20211
2012e99a addi a5, a5, 0x53c
2012e99e c.swsp a5, 4(sp)
2012e9a0 addi a5, zero, 0x2b2
2012e9a4 c.swsp a5, 8(sp)
2012e9a6 lui a5, 0x20202
2012e9aa lw a5, 0x348(a5)
2012e9ae c.mv a0, sp
2012e9b0 c.jalr a5
2012e9b2 c.j -0x80
2012e9b4 addi a2, zero, 0x80
2012e9b8 c.li a1, 0
2012e9ba jal 0x15dac
2012e9be lw a5, 0(s6)
2012e9c2 slli s9, s2, 4
2012e9c6 c.lw a5, 0x14(a5)
2012e9c8 c.add a5, s9
2012e9ca c.lw a5, 0(a5)
2012e9cc c.bnez a5, -0x9a
2012e9ce lui s1, 0x20202
2012e9d2 addi a5, s1, 0x5a4
2012e9d6 c.slli s2, 1
2012e9d8 c.add a5, s2
2012e9da lui s8, 0x20201
2012e9de lw a4, 0x73c(s8)
2012e9e2 lhu a0, 0(a5)
2012e9e6 c.li a1, 0
2012e9e8 addi s1, s1, 0x5a4
2012e9ec c.jalr a4
2012e9ee lui a1, 0xff00
2012e9f2 slli a3, s0, 0x14
2012e9f6 c.and a3, a1
2012e9f8 lui a1, 0xa0000
2012e9fc beqz s3, 8
2012ea00 lui a1, 0xe0000
2012ea04 c.or a1, a3
2012ea06 beqz s7, 0xa
2012ea0a lui a5, 0x10000
2012ea0e c.or a1, a5
2012ea10 lw a5, 0(s6)
2012ea14 c.add s1, s2
2012ea16 lhu a0, 0(s1)
2012ea1a c.lw a3, 0x14(a5)
2012ea1c lw a5, 0x73c(s8)
2012ea20 c.add a3, s9
2012ea22 sw s5, 0(a3)
2012ea26 sw s4, 4(a3)
2012ea2a sb s3, 8(a3)
2012ea2e c.jalr a5
2012ea30 c.li a0, 1
2012ea32 c.j -0xfe
2012ea34 lui a5, 0x20202
2012ea38 lw a5, -0xb4(a5)
2012ea3c c.lui a0, 2
2012ea3e addi a0, a0, -0x17c
2012ea42 c.jr a5
2012ea44 c.addi sp, -0x20
2012ea46 c.swsp s1, 0x14(sp)
2012ea48 lui s1, 0x20201
2012ea4c lw a5, 0x74c(s1)
2012ea50 c.swsp s3, 0xc(sp)
2012ea52 lui s3, 0xb8003
2012ea56 c.swsp s0, 0x18(sp)
2012ea58 c.swsp s2, 0x10(sp)
2012ea5a c.swsp ra, 0x1c(sp)
2012ea5c c.mv s2, a1
2012ea5e c.mv s0, a0
2012ea60 c.mv a1, a0
2012ea62 addi a0, s3, 0x40
2012ea66 c.jalr a5
2012ea68 c.li a5, 1
2012ea6a beq s2, a5, 0x3a
2012ea6e c.li a5, 2
2012ea70 beq s2, a5, 0x48
2012ea74 lw a5, 0x74c(s1)
2012ea78 lui s2, 0xb8003
2012ea7c lui a1, 0x80000
2012ea80 c.or a1, s0
2012ea82 addi a0, s2, 0x40
2012ea86 c.jalr a5
2012ea88 lui a1, 0x80010
2012ea8c c.or a1, s0
2012ea8e c.lwsp s0, 0x18(sp)
2012ea90 lw a5, 0x74c(s1)
2012ea94 c.lwsp ra, 0x1c(sp)
2012ea96 c.lwsp s1, 0x14(sp)
2012ea98 c.lwsp s3, 0xc(sp)
2012ea9a addi a0, s2, 0x40
2012ea9e c.lwsp s2, 0x10(sp)
2012eaa0 c.addi16sp sp, 0x20
2012eaa2 c.jr a5
2012eaa4 lui a5, 0x20000
2012eaa8 c.or s0, a5
2012eaaa lw a5, 0x74c(s1)
2012eaae c.mv a1, s0
2012eab0 addi a0, s3, 0x40
2012eab4 c.jalr a5
2012eab6 c.j -0x42
2012eab8 lui a5, 0x20201
2012eabc lw a5, 0x748(a5)
2012eac0 addi a0, zero, 0x170
2012eac4 c.jalr a5
2012eac6 lui a5, 0x20201
2012eaca ori a1, a0, 0x600
2012eace lw a5, 0x73c(a5)
2012ead2 addi a0, zero, 0x170
2012ead6 c.j -0x22
2012ead8 c.addi sp, -0x10
2012eada c.swsp s0, 8(sp)
2012eadc c.swsp ra, 0xc(sp)
2012eade andi s0, a0, 0x1f
2012eae2 c.li a5, 3
2012eae4 c.srli a0, 5
2012eae6 bltu a5, a0, 0x2c
2012eaea c.lui a4, 0xa
2012eaec c.slli a0, 2
2012eaee addi a4, a4, 0x3b0
2012eaf2 c.add a0, a4
2012eaf4 lui a5, 0x20201
2012eaf8 lw a5, 0x748(a5)

TABLE 0xf94 0x2012e7da
2012e7da c.addi16sp sp, -0x40
2012e7dc c.swsp s4, 0x28(sp)
2012e7de c.swsp ra, 0x3c(sp)
2012e7e0 c.mv s4, a5
2012e7e2 c.swsp s0, 0x38(sp)
2012e7e4 c.swsp s1, 0x34(sp)
2012e7e6 c.swsp s2, 0x30(sp)
2012e7e8 c.swsp s3, 0x2c(sp)
2012e7ea c.swsp s5, 0x24(sp)
2012e7ec c.swsp s6, 0x20(sp)
2012e7ee c.swsp s7, 0x1c(sp)
2012e7f0 c.swsp s8, 0x18(sp)
2012e7f2 c.swsp s9, 0x14(sp)
2012e7f4 c.li a5, 1
2012e7f6 bgeu a5, a1, 0x20
2012e7fa c.li a0, 0
2012e7fc c.lwsp ra, 0x3c(sp)
2012e7fe c.lwsp s0, 0x38(sp)
2012e800 c.lwsp s1, 0x34(sp)
2012e802 c.lwsp s2, 0x30(sp)
2012e804 c.lwsp s3, 0x2c(sp)
2012e806 c.lwsp s4, 0x28(sp)
2012e808 c.lwsp s5, 0x24(sp)
2012e80a c.lwsp s6, 0x20(sp)
2012e80c c.lwsp s7, 0x1c(sp)
2012e80e c.lwsp s8, 0x18(sp)
2012e810 c.lwsp s9, 0x14(sp)
2012e812 c.addi16sp sp, 0x40
2012e814 c.jr ra
2012e816 addi a5, a0, -2
2012e81a c.mv s5, a4
2012e81c andi a5, a5, 0xff
2012e820 c.li a4, 5
2012e822 c.mv s2, a0
2012e824 bltu a4, a5, -0x2a
2012e828 lui s6, 0x20203
2012e82c addi s1, s6, 0x580
2012e830 lw s8, 0(s1)
2012e834 c.mv s3, a1
2012e836 c.mv s7, a2
2012e838 lw a5, 0x14(s8)
2012e83c c.mv s0, a3
2012e83e addi s6, s6, 0x580
2012e842 c.bnez a5, 0x4e
2012e844 lui a5, 0x20201
2012e848 lw a5, 0x40c(a5)
2012e84c lui a1, 0xf1030
2012e850 c.addi a1, 3
2012e852 addi a0, zero, 0x80
2012e856 c.jalr a5
2012e858 c.lw a5, 0(s1)
2012e85a sw a0, 0x14(s8)
2012e85e c.lw a0, 0x14(a5)
2012e860 c.bnez a0, 0x26
2012e862 c.li a5, 6
2012e864 sb a5, 0(sp)
2012e868 lui a5, 0x20211
2012e86c addi a5, a5, 0x53c
2012e870 c.swsp a5, 4(sp)
2012e872 addi a5, zero, 0x270
2012e876 c.swsp a5, 8(sp)
2012e878 lui a5, 0x20202
2012e87c lw a5, 0x348(a5)
2012e880 c.mv a0, sp
2012e882 c.jalr a5
2012e884 c.j -0x8a
2012e886 addi a2, zero, 0x80
2012e88a c.li a1, 0
2012e88c jal 0x15eda
2012e890 lw a5, 0(s6)
2012e894 slli s9, s2, 4
2012e898 c.lw a5, 0x14(a5)
2012e89a c.add a5, s9
2012e89c c.lw a5, 0(a5)
2012e89e c.bnez a5, -0xa4
2012e8a0 lui s1, 0x20202
2012e8a4 addi a5, s1, 0x5a4
2012e8a8 c.slli s2, 1
2012e8aa c.add a5, s2
2012e8ac lui s8, 0x20201
2012e8b0 lw a4, 0x73c(s8)
2012e8b4 lhu a0, 0(a5)
2012e8b8 c.li a1, 0
2012e8ba addi s1, s1, 0x5a4
2012e8be c.jalr a4
2012e8c0 lui a1, 0x10000
2012e8c4 c.addi a1, -1
2012e8c6 slli a3, s0, 0xa
2012e8ca c.and a3, a1
2012e8cc lui a1, 0xa0000
2012e8d0 beqz s3, 8
2012e8d4 lui a1, 0xe0000
2012e8d8 c.or a1, a3
2012e8da beqz s7, 0xa
2012e8de lui a5, 0x10000
2012e8e2 c.or a1, a5
2012e8e4 lw a5, 0(s6)
2012e8e8 c.add s1, s2
2012e8ea lhu a0, 0(s1)
2012e8ee c.lw a3, 0x14(a5)
2012e8f0 lw a5, 0x73c(s8)
2012e8f4 c.add a3, s9
2012e8f6 sw s5, 0(a3)
2012e8fa sw s4, 4(a3)
2012e8fe sb s3, 8(a3)
2012e902 c.jalr a5
2012e904 c.li a0, 1
2012e906 c.j -0x10a
2012e908 c.addi16sp sp, -0x40
2012e90a c.swsp s4, 0x28(sp)
2012e90c c.mv s4, a5
2012e90e addi a5, a0, -2
2012e912 c.swsp s5, 0x24(sp)
2012e914 c.swsp ra, 0x3c(sp)
2012e916 c.mv s5, a4
2012e918 c.swsp s0, 0x38(sp)
2012e91a c.swsp s1, 0x34(sp)
2012e91c c.swsp s2, 0x30(sp)
2012e91e c.swsp s3, 0x2c(sp)
2012e920 c.swsp s6, 0x20(sp)
2012e922 c.swsp s7, 0x1c(sp)
2012e924 c.swsp s8, 0x18(sp)
2012e926 c.swsp s9, 0x14(sp)
2012e928 andi a5, a5, 0xff
2012e92c c.li a4, 5
2012e92e bgeu a4, a5, 0x20
2012e932 c.li a0, 0
2012e934 c.lwsp ra, 0x3c(sp)
2012e936 c.lwsp s0, 0x38(sp)
2012e938 c.lwsp s1, 0x34(sp)
2012e93a c.lwsp s2, 0x30(sp)
2012e93c c.lwsp s3, 0x2c(sp)
2012e93e c.lwsp s4, 0x28(sp)
2012e940 c.lwsp s5, 0x24(sp)
2012e942 c.lwsp s6, 0x20(sp)
2012e944 c.lwsp s7, 0x1c(sp)
2012e946 c.lwsp s8, 0x18(sp)
2012e948 c.lwsp s9, 0x14(sp)
2012e94a c.addi16sp sp, 0x40
2012e94c c.jr ra
2012e94e c.li a5, 1
2012e950 c.mv s3, a1
2012e952 bltu a5, a1, -0x20
2012e956 lui s6, 0x20203
2012e95a addi s1, s6, 0x580
2012e95e lw s8, 0(s1)
2012e962 c.mv s2, a0
2012e964 c.mv s7, a2
2012e966 lw a5, 0x14(s8)
2012e96a c.mv s0, a3
2012e96c addi s6, s6, 0x580
2012e970 c.bnez a5, 0x4e
2012e972 lui a5, 0x20201
2012e976 lw a5, 0x40c(a5)
2012e97a lui a1, 0xf1030
2012e97e c.addi a1, 2
2012e980 addi a0, zero, 0x80
2012e984 c.jalr a5
2012e986 c.lw a5, 0(s1)
2012e988 sw a0, 0x14(s8)
2012e98c c.lw a0, 0x14(a5)
2012e98e c.bnez a0, 0x26
2012e990 c.li a5, 6
2012e992 sb a5, 0(sp)
2012e996 lui a5, 0x20211
2012e99a addi a5, a5, 0x53c
2012e99e c.swsp a5, 4(sp)
2012e9a0 addi a5, zero, 0x2b2
2012e9a4 c.swsp a5, 8(sp)
2012e9a6 lui a5, 0x20202
2012e9aa lw a5, 0x348(a5)
2012e9ae c.mv a0, sp
2012e9b0 c.jalr a5
2012e9b2 c.j -0x80
2012e9b4 addi a2, zero, 0x80
2012e9b8 c.li a1, 0
2012e9ba jal 0x15dac
2012e9be lw a5, 0(s6)
2012e9c2 slli s9, s2, 4
2012e9c6 c.lw a5, 0x14(a5)
2012e9c8 c.add a5, s9
2012e9ca c.lw a5, 0(a5)
2012e9cc c.bnez a5, -0x9a

TABLE 0xf98 0x2012e6b0
2012e6b0 c.addi16sp sp, -0x40
2012e6b2 c.swsp s5, 0x24(sp)
2012e6b4 c.swsp ra, 0x3c(sp)
2012e6b6 c.mv s5, a5
2012e6b8 c.swsp s0, 0x38(sp)
2012e6ba c.swsp s1, 0x34(sp)
2012e6bc c.swsp s2, 0x30(sp)
2012e6be c.swsp s3, 0x2c(sp)
2012e6c0 c.swsp s4, 0x28(sp)
2012e6c2 c.swsp s6, 0x20(sp)
2012e6c4 c.swsp s7, 0x1c(sp)
2012e6c6 c.swsp s8, 0x18(sp)
2012e6c8 c.swsp s9, 0x14(sp)
2012e6ca c.li a5, 1
2012e6cc bgeu a5, a1, 0x20
2012e6d0 c.li a0, 0
2012e6d2 c.lwsp ra, 0x3c(sp)
2012e6d4 c.lwsp s0, 0x38(sp)
2012e6d6 c.lwsp s1, 0x34(sp)
2012e6d8 c.lwsp s2, 0x30(sp)
2012e6da c.lwsp s3, 0x2c(sp)
2012e6dc c.lwsp s4, 0x28(sp)
2012e6de c.lwsp s5, 0x24(sp)
2012e6e0 c.lwsp s6, 0x20(sp)
2012e6e2 c.lwsp s7, 0x1c(sp)
2012e6e4 c.lwsp s8, 0x18(sp)
2012e6e6 c.lwsp s9, 0x14(sp)
2012e6e8 c.addi16sp sp, 0x40
2012e6ea c.jr ra
2012e6ec addi a5, a0, -2
2012e6f0 c.mv s6, a4
2012e6f2 andi a5, a5, 0xff
2012e6f6 c.li a4, 5
2012e6f8 c.mv s1, a0
2012e6fa bltu a4, a5, -0x2a
2012e6fe lui s4, 0x20203
2012e702 addi s2, s4, 0x580
2012e706 lw s8, 0(s2)
2012e70a c.mv s3, a1
2012e70c c.mv s7, a2
2012e70e lw a5, 0x14(s8)
2012e712 c.mv s0, a3
2012e714 addi s4, s4, 0x580
2012e718 c.bnez a5, 0x50
2012e71a lui a5, 0x20201
2012e71e lw a5, 0x40c(a5)
2012e722 lui a1, 0xf1030
2012e726 c.addi a1, 4
2012e728 addi a0, zero, 0x80
2012e72c c.jalr a5
2012e72e lw a5, 0(s2)
2012e732 sw a0, 0x14(s8)
2012e736 c.lw a0, 0x14(a5)
2012e738 c.bnez a0, 0x26
2012e73a c.li a5, 6
2012e73c sb a5, 0(sp)
2012e740 lui a5, 0x20211
2012e744 addi a5, a5, 0x53c
2012e748 c.swsp a5, 4(sp)
2012e74a addi a5, zero, 0x232
2012e74e c.swsp a5, 8(sp)
2012e750 lui a5, 0x20202
2012e754 lw a5, 0x348(a5)
2012e758 c.mv a0, sp
2012e75a c.jalr a5
2012e75c c.j -0x8c
2012e75e addi a2, zero, 0x80
2012e762 c.li a1, 0
2012e764 jal 0x16002
2012e768 lw a5, 0(s4)
2012e76c slli s9, s1, 4
2012e770 c.lw a4, 0x14(a5)
2012e772 c.add a4, s9
2012e774 c.lw a5, 0(a4)
2012e776 c.bnez a5, -0xa6
2012e778 lui s2, 0x20202
2012e77c addi a4, s2, 0x5a4
2012e780 c.slli s1, 1
2012e782 c.add a4, s1
2012e784 lui s8, 0x20201
2012e788 lw a5, 0x73c(s8)
2012e78c lhu a0, 0(a4)
2012e790 c.li a1, 0
2012e792 addi s2, s2, 0x5a4
2012e796 c.jalr a5
2012e798 slli a3, s0, 4
2012e79c c.srli a3, 4
2012e79e lui a1, 0xa0000
2012e7a2 beqz s3, 8
2012e7a6 lui a1, 0xe0000
2012e7aa c.or a1, a3
2012e7ac beqz s7, 0xa
2012e7b0 lui a5, 0x10000
2012e7b4 c.or a1, a5
2012e7b6 lw a5, 0(s4)
2012e7ba c.add s2, s1
2012e7bc lhu a0, 0(s2)
2012e7c0 c.lw a5, 0x14(a5)
2012e7c2 c.add a5, s9
2012e7c4 sw s6, 0(a5)
2012e7c8 sw s5, 4(a5)
2012e7cc sb s3, 8(a5)
2012e7d0 lw a5, 0x73c(s8)
2012e7d4 c.jalr a5
2012e7d6 c.li a0, 1
2012e7d8 c.j -0x106
2012e7da c.addi16sp sp, -0x40
2012e7dc c.swsp s4, 0x28(sp)
2012e7de c.swsp ra, 0x3c(sp)
2012e7e0 c.mv s4, a5
2012e7e2 c.swsp s0, 0x38(sp)
2012e7e4 c.swsp s1, 0x34(sp)
2012e7e6 c.swsp s2, 0x30(sp)
2012e7e8 c.swsp s3, 0x2c(sp)
2012e7ea c.swsp s5, 0x24(sp)
2012e7ec c.swsp s6, 0x20(sp)
2012e7ee c.swsp s7, 0x1c(sp)
2012e7f0 c.swsp s8, 0x18(sp)
2012e7f2 c.swsp s9, 0x14(sp)
2012e7f4 c.li a5, 1
2012e7f6 bgeu a5, a1, 0x20
2012e7fa c.li a0, 0
2012e7fc c.lwsp ra, 0x3c(sp)
2012e7fe c.lwsp s0, 0x38(sp)
2012e800 c.lwsp s1, 0x34(sp)
2012e802 c.lwsp s2, 0x30(sp)
2012e804 c.lwsp s3, 0x2c(sp)
2012e806 c.lwsp s4, 0x28(sp)
2012e808 c.lwsp s5, 0x24(sp)
2012e80a c.lwsp s6, 0x20(sp)
2012e80c c.lwsp s7, 0x1c(sp)
2012e80e c.lwsp s8, 0x18(sp)
2012e810 c.lwsp s9, 0x14(sp)
2012e812 c.addi16sp sp, 0x40
2012e814 c.jr ra
2012e816 addi a5, a0, -2
2012e81a c.mv s5, a4
2012e81c andi a5, a5, 0xff
2012e820 c.li a4, 5
2012e822 c.mv s2, a0
2012e824 bltu a4, a5, -0x2a
2012e828 lui s6, 0x20203
2012e82c addi s1, s6, 0x580
2012e830 lw s8, 0(s1)
2012e834 c.mv s3, a1
2012e836 c.mv s7, a2
2012e838 lw a5, 0x14(s8)
2012e83c c.mv s0, a3
2012e83e addi s6, s6, 0x580
2012e842 c.bnez a5, 0x4e
2012e844 lui a5, 0x20201
2012e848 lw a5, 0x40c(a5)
2012e84c lui a1, 0xf1030
2012e850 c.addi a1, 3
2012e852 addi a0, zero, 0x80
2012e856 c.jalr a5
2012e858 c.lw a5, 0(s1)
2012e85a sw a0, 0x14(s8)
2012e85e c.lw a0, 0x14(a5)
2012e860 c.bnez a0, 0x26
2012e862 c.li a5, 6
2012e864 sb a5, 0(sp)
2012e868 lui a5, 0x20211
2012e86c addi a5, a5, 0x53c
2012e870 c.swsp a5, 4(sp)
2012e872 addi a5, zero, 0x270
2012e876 c.swsp a5, 8(sp)
2012e878 lui a5, 0x20202
2012e87c lw a5, 0x348(a5)
2012e880 c.mv a0, sp
2012e882 c.jalr a5
2012e884 c.j -0x8a
2012e886 addi a2, zero, 0x80
2012e88a c.li a1, 0
2012e88c jal 0x15eda
2012e890 lw a5, 0(s6)
2012e894 slli s9, s2, 4
2012e898 c.lw a5, 0x14(a5)
2012e89a c.add a5, s9
2012e89c c.lw a5, 0(a5)
2012e89e c.bnez a5, -0xa4
2012e8a0 lui s1, 0x20202

TABLE 0xf9c 0x20012e70
20012e70 lui a5, 0x20201
20012e74 lw a5, 0x748(a5)
20012e78 c.addi sp, -0x20
20012e7a c.swsp ra, 0x1c(sp)
20012e7c addi a0, zero, 0x6c
20012e80 c.jalr a5
20012e82 c.andi a0, 3
20012e84 c.swsp a0, 0xc(sp)
20012e86 c.lwsp a5, 0xc(sp)
20012e88 c.li a4, 1
20012e8a addi a0, zero, 0x50
20012e8e c.andi a5, 3
20012e90 beq a5, a4, 0x12
20012e94 c.li a4, 2
20012e96 addi a0, zero, 0xa0
20012e9a bne a5, a4, 8
20012e9e addi a0, zero, 0x28
20012ea2 c.lwsp ra, 0x1c(sp)
20012ea4 c.addi16sp sp, 0x20
20012ea6 c.jr ra
20012ea8 c.addi16sp sp, -0x40
20012eaa c.swsp s5, 0x24(sp)
20012eac c.swsp ra, 0x3c(sp)
20012eae c.mv s5, a5
20012eb0 c.swsp s0, 0x38(sp)
20012eb2 c.swsp s1, 0x34(sp)
20012eb4 c.swsp s2, 0x30(sp)
20012eb6 c.swsp s3, 0x2c(sp)
20012eb8 c.swsp s4, 0x28(sp)
20012eba c.swsp s6, 0x20(sp)
20012ebc c.swsp s7, 0x1c(sp)
20012ebe c.swsp s8, 0x18(sp)
20012ec0 c.swsp s9, 0x14(sp)
20012ec2 c.li a5, 1
20012ec4 bgeu a5, a1, 0x20
20012ec8 c.li a0, 0
20012eca c.lwsp ra, 0x3c(sp)
20012ecc c.lwsp s0, 0x38(sp)
20012ece c.lwsp s1, 0x34(sp)
20012ed0 c.lwsp s2, 0x30(sp)
20012ed2 c.lwsp s3, 0x2c(sp)
20012ed4 c.lwsp s4, 0x28(sp)
20012ed6 c.lwsp s5, 0x24(sp)
20012ed8 c.lwsp s6, 0x20(sp)
20012eda c.lwsp s7, 0x1c(sp)
20012edc c.lwsp s8, 0x18(sp)
20012ede c.lwsp s9, 0x14(sp)
20012ee0 c.addi16sp sp, 0x40
20012ee2 c.jr ra
20012ee4 addi a5, a0, -2
20012ee8 c.mv s6, a4
20012eea andi a5, a5, 0xff
20012eee c.li a4, 5
20012ef0 c.mv s1, a0
20012ef2 bltu a4, a5, -0x2a
20012ef6 lui s2, 0x20203
20012efa lw s3, 0x580(s2)
20012efe c.mv s4, a1
20012f00 c.mv s7, a2
20012f02 lw a5, 0x14(s3)
20012f06 c.mv s0, a3
20012f08 addi s2, s2, 0x580
20012f0c c.bnez a5, 0x54
20012f0e lui a5, 0x20201
20012f12 lw a5, 0x40c(a5)
20012f16 lui a1, 0x71030
20012f1a c.addi a1, 4
20012f1c addi a0, zero, 0x80
20012f20 c.jalr a5
20012f22 lw a5, 0(s2)
20012f26 sw a0, 0x14(s3)
20012f2a c.lw a5, 0x14(a5)
20012f2c c.bnez a5, 0x24
20012f2e c.li a5, 6
20012f30 sb a5, 0(sp)
20012f34 lui a5, 0x20209
20012f38 addi a5, a5, -0x4c0
20012f3c c.swsp a5, 4(sp)
20012f3e addi a5, zero, 0x10c
20012f42 c.swsp a5, 8(sp)
20012f44 lui a5, 0x20202
20012f48 lw a5, 0x348(a5)
20012f4c c.mv a0, sp
20012f4e c.jalr a5
20012f50 lw a5, 0(s2)
20012f54 addi a2, zero, 0x80
20012f58 c.li a1, 0
20012f5a c.lw a0, 0x14(a5)
20012f5c jal 0x1c28a
20012f60 lw a5, 0(s2)
20012f64 slli s9, s1, 4
20012f68 c.lw a4, 0x14(a5)
20012f6a c.add a4, s9
20012f6c c.lw a5, 0(a4)
20012f6e c.bnez a5, -0xa6
20012f70 lui s3, 0x20202
20012f74 addi a4, s3, 0x544
20012f78 c.slli s1, 1
20012f7a c.add a4, s1
20012f7c lui s8, 0x20201
20012f80 lw a5, 0x73c(s8)
20012f84 lhu a0, 0x60(a4)
20012f88 c.li a1, 0
20012f8a addi s3, s3, 0x544
20012f8e c.jalr a5
20012f90 slli a3, s0, 4
20012f94 c.srli a3, 4
20012f96 lui a1, 0xa0000
20012f9a beqz s4, 8
20012f9e lui a1, 0xe0000
20012fa2 c.or a1, a3
20012fa4 beqz s7, 0xa
20012fa8 lui a5, 0x10000
20012fac c.or a1, a5
20012fae lw a5, 0(s2)
20012fb2 c.add s3, s1
20012fb4 lhu a0, 0x60(s3)
20012fb8 c.lw a5, 0x14(a5)
20012fba c.add a5, s9
20012fbc sw s6, 0(a5)
20012fc0 sw s5, 4(a5)
20012fc4 sb s4, 8(a5)
20012fc8 lw a5, 0x73c(s8)
20012fcc c.jalr a5
20012fce c.li a0, 1
20012fd0 c.j -0x106
20012fd2 c.addi16sp sp, -0x40
20012fd4 c.swsp s5, 0x24(sp)
20012fd6 c.swsp ra, 0x3c(sp)
20012fd8 c.mv s5, a5
20012fda c.swsp s0, 0x38(sp)
20012fdc c.swsp s1, 0x34(sp)
20012fde c.swsp s2, 0x30(sp)
20012fe0 c.swsp s3, 0x2c(sp)
20012fe2 c.swsp s4, 0x28(sp)
20012fe4 c.swsp s6, 0x20(sp)
20012fe6 c.swsp s7, 0x1c(sp)
20012fe8 c.swsp s8, 0x18(sp)
20012fea c.swsp s9, 0x14(sp)
20012fec c.li a5, 1
20012fee bgeu a5, a1, 0x20
20012ff2 c.li a0, 0
20012ff4 c.lwsp ra, 0x3c(sp)
20012ff6 c.lwsp s0, 0x38(sp)
20012ff8 c.lwsp s1, 0x34(sp)
20012ffa c.lwsp s2, 0x30(sp)
20012ffc c.lwsp s3, 0x2c(sp)
20012ffe c.lwsp s4, 0x28(sp)
20013000 c.lwsp s5, 0x24(sp)
20013002 c.lwsp s6, 0x20(sp)
20013004 c.lwsp s7, 0x1c(sp)
20013006 c.lwsp s8, 0x18(sp)
20013008 c.lwsp s9, 0x14(sp)
2001300a c.addi16sp sp, 0x40
2001300c c.jr ra
2001300e addi a5, a0, -2
20013012 c.mv s6, a4
20013014 andi a5, a5, 0xff
20013018 c.li a4, 5
2001301a c.mv s1, a0
2001301c bltu a4, a5, -0x2a
20013020 lui s2, 0x20203
20013024 lw s3, 0x580(s2)
20013028 c.mv s4, a1
2001302a c.mv s7, a2
2001302c lw a5, 0x14(s3)
20013030 c.mv s0, a3
20013032 addi s2, s2, 0x580
20013036 c.bnez a5, 0x54
20013038 lui a5, 0x20201
2001303c lw a5, 0x40c(a5)
20013040 lui a1, 0x71030
20013044 c.addi a1, 3
20013046 addi a0, zero, 0x80
2001304a c.jalr a5
2001304c lw a5, 0(s2)
20013050 sw a0, 0x14(s3)
20013054 c.lw a5, 0x14(a5)
20013056 c.bnez a5, 0x24
20013058 c.li a5, 6
2001305a sb a5, 0(sp)
2001305e lui a5, 0x20209
20013062 .byte 0x93, 0x87

TABLE 0xfa0 0x20012e2e
20012e2e lui a5, 0x20201
20012e32 lw a5, 0x748(a5)
20012e36 c.addi sp, -0x20
20012e38 c.swsp ra, 0x1c(sp)
20012e3a addi a0, zero, 0x6c
20012e3e c.jalr a5
20012e40 c.srli a0, 8
20012e42 c.andi a0, 3
20012e44 sb a0, 0xf(sp)
20012e48 lbu a5, 0xf(sp)
20012e4c c.li a4, 2
20012e4e addi a0, zero, 0xd5
20012e52 c.addi a5, -1
20012e54 andi a5, a5, 0xff
20012e58 bltu a4, a5, 0x12
20012e5c lui a4, 0x20208
20012e60 addi a4, a4, 0x618
20012e64 c.add a5, a4
20012e66 lbu a0, 0(a5)
20012e6a c.lwsp ra, 0x1c(sp)
20012e6c c.addi16sp sp, 0x20
20012e6e c.jr ra
20012e70 lui a5, 0x20201
20012e74 lw a5, 0x748(a5)
20012e78 c.addi sp, -0x20
20012e7a c.swsp ra, 0x1c(sp)
20012e7c addi a0, zero, 0x6c
20012e80 c.jalr a5
20012e82 c.andi a0, 3
20012e84 c.swsp a0, 0xc(sp)
20012e86 c.lwsp a5, 0xc(sp)
20012e88 c.li a4, 1
20012e8a addi a0, zero, 0x50
20012e8e c.andi a5, 3
20012e90 beq a5, a4, 0x12
20012e94 c.li a4, 2
20012e96 addi a0, zero, 0xa0
20012e9a bne a5, a4, 8
20012e9e addi a0, zero, 0x28
20012ea2 c.lwsp ra, 0x1c(sp)
20012ea4 c.addi16sp sp, 0x20
20012ea6 c.jr ra
20012ea8 c.addi16sp sp, -0x40
20012eaa c.swsp s5, 0x24(sp)
20012eac c.swsp ra, 0x3c(sp)
20012eae c.mv s5, a5
20012eb0 c.swsp s0, 0x38(sp)
20012eb2 c.swsp s1, 0x34(sp)
20012eb4 c.swsp s2, 0x30(sp)
20012eb6 c.swsp s3, 0x2c(sp)
20012eb8 c.swsp s4, 0x28(sp)
20012eba c.swsp s6, 0x20(sp)
20012ebc c.swsp s7, 0x1c(sp)
20012ebe c.swsp s8, 0x18(sp)
20012ec0 c.swsp s9, 0x14(sp)
20012ec2 c.li a5, 1
20012ec4 bgeu a5, a1, 0x20
20012ec8 c.li a0, 0
20012eca c.lwsp ra, 0x3c(sp)
20012ecc c.lwsp s0, 0x38(sp)
20012ece c.lwsp s1, 0x34(sp)
20012ed0 c.lwsp s2, 0x30(sp)
20012ed2 c.lwsp s3, 0x2c(sp)
20012ed4 c.lwsp s4, 0x28(sp)
20012ed6 c.lwsp s5, 0x24(sp)
20012ed8 c.lwsp s6, 0x20(sp)
20012eda c.lwsp s7, 0x1c(sp)
20012edc c.lwsp s8, 0x18(sp)
20012ede c.lwsp s9, 0x14(sp)
20012ee0 c.addi16sp sp, 0x40
20012ee2 c.jr ra
20012ee4 addi a5, a0, -2
20012ee8 c.mv s6, a4
20012eea andi a5, a5, 0xff
20012eee c.li a4, 5
20012ef0 c.mv s1, a0
20012ef2 bltu a4, a5, -0x2a
20012ef6 lui s2, 0x20203
20012efa lw s3, 0x580(s2)
20012efe c.mv s4, a1
20012f00 c.mv s7, a2
20012f02 lw a5, 0x14(s3)
20012f06 c.mv s0, a3
20012f08 addi s2, s2, 0x580
20012f0c c.bnez a5, 0x54
20012f0e lui a5, 0x20201
20012f12 lw a5, 0x40c(a5)
20012f16 lui a1, 0x71030
20012f1a c.addi a1, 4
20012f1c addi a0, zero, 0x80
20012f20 c.jalr a5
20012f22 lw a5, 0(s2)
20012f26 sw a0, 0x14(s3)
20012f2a c.lw a5, 0x14(a5)
20012f2c c.bnez a5, 0x24
20012f2e c.li a5, 6
20012f30 sb a5, 0(sp)
20012f34 lui a5, 0x20209
20012f38 addi a5, a5, -0x4c0
20012f3c c.swsp a5, 4(sp)
20012f3e addi a5, zero, 0x10c
20012f42 c.swsp a5, 8(sp)
20012f44 lui a5, 0x20202
20012f48 lw a5, 0x348(a5)
20012f4c c.mv a0, sp
20012f4e c.jalr a5
20012f50 lw a5, 0(s2)
20012f54 addi a2, zero, 0x80
20012f58 c.li a1, 0
20012f5a c.lw a0, 0x14(a5)
20012f5c jal 0x1c28a
20012f60 lw a5, 0(s2)
20012f64 slli s9, s1, 4
20012f68 c.lw a4, 0x14(a5)
20012f6a c.add a4, s9
20012f6c c.lw a5, 0(a4)
20012f6e c.bnez a5, -0xa6
20012f70 lui s3, 0x20202
20012f74 addi a4, s3, 0x544
20012f78 c.slli s1, 1
20012f7a c.add a4, s1
20012f7c lui s8, 0x20201
20012f80 lw a5, 0x73c(s8)
20012f84 lhu a0, 0x60(a4)
20012f88 c.li a1, 0
20012f8a addi s3, s3, 0x544
20012f8e c.jalr a5
20012f90 slli a3, s0, 4
20012f94 c.srli a3, 4
20012f96 lui a1, 0xa0000
20012f9a beqz s4, 8
20012f9e lui a1, 0xe0000
20012fa2 c.or a1, a3
20012fa4 beqz s7, 0xa
20012fa8 lui a5, 0x10000
20012fac c.or a1, a5
20012fae lw a5, 0(s2)
20012fb2 c.add s3, s1
20012fb4 lhu a0, 0x60(s3)
20012fb8 c.lw a5, 0x14(a5)
20012fba c.add a5, s9
20012fbc sw s6, 0(a5)
20012fc0 sw s5, 4(a5)
20012fc4 sb s4, 8(a5)
20012fc8 lw a5, 0x73c(s8)
20012fcc c.jalr a5
20012fce c.li a0, 1
20012fd0 c.j -0x106
20012fd2 c.addi16sp sp, -0x40
20012fd4 c.swsp s5, 0x24(sp)
20012fd6 c.swsp ra, 0x3c(sp)
20012fd8 c.mv s5, a5
20012fda c.swsp s0, 0x38(sp)
20012fdc c.swsp s1, 0x34(sp)
20012fde c.swsp s2, 0x30(sp)
20012fe0 c.swsp s3, 0x2c(sp)
20012fe2 c.swsp s4, 0x28(sp)
20012fe4 c.swsp s6, 0x20(sp)
20012fe6 c.swsp s7, 0x1c(sp)
20012fe8 c.swsp s8, 0x18(sp)
20012fea c.swsp s9, 0x14(sp)
20012fec c.li a5, 1
20012fee bgeu a5, a1, 0x20
20012ff2 c.li a0, 0
20012ff4 c.lwsp ra, 0x3c(sp)
20012ff6 c.lwsp s0, 0x38(sp)
20012ff8 c.lwsp s1, 0x34(sp)
20012ffa c.lwsp s2, 0x30(sp)
20012ffc c.lwsp s3, 0x2c(sp)
20012ffe c.lwsp s4, 0x28(sp)
20013000 c.lwsp s5, 0x24(sp)
20013002 c.lwsp s6, 0x20(sp)
20013004 c.lwsp s7, 0x1c(sp)
20013006 c.lwsp s8, 0x18(sp)
20013008 c.lwsp s9, 0x14(sp)
2001300a c.addi16sp sp, 0x40
2001300c c.jr ra
2001300e addi a5, a0, -2
20013012 c.mv s6, a4
20013014 andi a5, a5, 0xff
20013018 c.li a4, 5
2001301a c.mv s1, a0
2001301c bltu a4, a5, -0x2a
20013020 .byte 0x37, 0x39

TABLE 0xfa4 0x20012dc6
20012dc6 c.addi16sp sp, -0x40
20012dc8 c.swsp s0, 0x38(sp)
20012dca c.swsp s1, 0x34(sp)
20012dcc c.swsp ra, 0x3c(sp)
20012dce c.swsp s2, 0x30(sp)
20012dd0 c.swsp s3, 0x2c(sp)
20012dd2 c.li a5, 1
20012dd4 c.mv s0, a0
20012dd6 c.mv s1, a2
20012dd8 bne a0, a5, 0x16
20012ddc lui a5, 0x20203
20012de0 lw a5, 0x588(a5)
20012de4 c.li a0, 0
20012de6 c.lw a5, 4(a5)
20012de8 lbu a5, 0xa(a5)
20012dec c.beqz a5, 0x34
20012dee lui s3, 0x20202
20012df2 lw a5, -0x58(s3)
20012df6 c.li a2, 1
20012df8 c.mv a0, s0
20012dfa c.swsp a1, 0xc(sp)
20012dfc c.jalr a5
20012dfe lw a5, -0x58(s3)
20012e02 c.lwsp a1, 0xc(sp)
20012e04 c.mv s2, a0
20012e06 c.li a2, 0
20012e08 c.mv a0, s0
20012e0a c.jalr a5
20012e0c lui a5, 0x20202
20012e10 lw a5, 0x2d8(a5)
20012e14 c.swsp a0, 0x18(sp)
20012e16 c.swsp s2, 0x1c(sp)
20012e18 c.li a2, 0
20012e1a c.mv a1, s1
20012e1c c.addi4spn a0, sp, 0x18
20012e1e c.jalr a5
20012e20 c.lwsp ra, 0x3c(sp)
20012e22 c.lwsp s0, 0x38(sp)
20012e24 c.lwsp s1, 0x34(sp)
20012e26 c.lwsp s2, 0x30(sp)
20012e28 c.lwsp s3, 0x2c(sp)
20012e2a c.addi16sp sp, 0x40
20012e2c c.jr ra
20012e2e lui a5, 0x20201
20012e32 lw a5, 0x748(a5)
20012e36 c.addi sp, -0x20
20012e38 c.swsp ra, 0x1c(sp)
20012e3a addi a0, zero, 0x6c
20012e3e c.jalr a5
20012e40 c.srli a0, 8
20012e42 c.andi a0, 3
20012e44 sb a0, 0xf(sp)
20012e48 lbu a5, 0xf(sp)
20012e4c c.li a4, 2
20012e4e addi a0, zero, 0xd5
20012e52 c.addi a5, -1
20012e54 andi a5, a5, 0xff
20012e58 bltu a4, a5, 0x12
20012e5c lui a4, 0x20208
20012e60 addi a4, a4, 0x618
20012e64 c.add a5, a4
20012e66 lbu a0, 0(a5)
20012e6a c.lwsp ra, 0x1c(sp)
20012e6c c.addi16sp sp, 0x20
20012e6e c.jr ra
20012e70 lui a5, 0x20201
20012e74 lw a5, 0x748(a5)
20012e78 c.addi sp, -0x20
20012e7a c.swsp ra, 0x1c(sp)
20012e7c addi a0, zero, 0x6c
20012e80 c.jalr a5
20012e82 c.andi a0, 3
20012e84 c.swsp a0, 0xc(sp)
20012e86 c.lwsp a5, 0xc(sp)
20012e88 c.li a4, 1
20012e8a addi a0, zero, 0x50
20012e8e c.andi a5, 3
20012e90 beq a5, a4, 0x12
20012e94 c.li a4, 2
20012e96 addi a0, zero, 0xa0
20012e9a bne a5, a4, 8
20012e9e addi a0, zero, 0x28
20012ea2 c.lwsp ra, 0x1c(sp)
20012ea4 c.addi16sp sp, 0x20
20012ea6 c.jr ra
20012ea8 c.addi16sp sp, -0x40
20012eaa c.swsp s5, 0x24(sp)
20012eac c.swsp ra, 0x3c(sp)
20012eae c.mv s5, a5
20012eb0 c.swsp s0, 0x38(sp)
20012eb2 c.swsp s1, 0x34(sp)
20012eb4 c.swsp s2, 0x30(sp)
20012eb6 c.swsp s3, 0x2c(sp)
20012eb8 c.swsp s4, 0x28(sp)
20012eba c.swsp s6, 0x20(sp)
20012ebc c.swsp s7, 0x1c(sp)
20012ebe c.swsp s8, 0x18(sp)
20012ec0 c.swsp s9, 0x14(sp)
20012ec2 c.li a5, 1
20012ec4 bgeu a5, a1, 0x20
20012ec8 c.li a0, 0
20012eca c.lwsp ra, 0x3c(sp)
20012ecc c.lwsp s0, 0x38(sp)
20012ece c.lwsp s1, 0x34(sp)
20012ed0 c.lwsp s2, 0x30(sp)
20012ed2 c.lwsp s3, 0x2c(sp)
20012ed4 c.lwsp s4, 0x28(sp)
20012ed6 c.lwsp s5, 0x24(sp)
20012ed8 c.lwsp s6, 0x20(sp)
20012eda c.lwsp s7, 0x1c(sp)
20012edc c.lwsp s8, 0x18(sp)
20012ede c.lwsp s9, 0x14(sp)
20012ee0 c.addi16sp sp, 0x40
20012ee2 c.jr ra
20012ee4 addi a5, a0, -2
20012ee8 c.mv s6, a4
20012eea andi a5, a5, 0xff
20012eee c.li a4, 5
20012ef0 c.mv s1, a0
20012ef2 bltu a4, a5, -0x2a
20012ef6 lui s2, 0x20203
20012efa lw s3, 0x580(s2)
20012efe c.mv s4, a1
20012f00 c.mv s7, a2
20012f02 lw a5, 0x14(s3)
20012f06 c.mv s0, a3
20012f08 addi s2, s2, 0x580
20012f0c c.bnez a5, 0x54
20012f0e lui a5, 0x20201
20012f12 lw a5, 0x40c(a5)
20012f16 lui a1, 0x71030
20012f1a c.addi a1, 4
20012f1c addi a0, zero, 0x80
20012f20 c.jalr a5
20012f22 lw a5, 0(s2)
20012f26 sw a0, 0x14(s3)
20012f2a c.lw a5, 0x14(a5)
20012f2c c.bnez a5, 0x24
20012f2e c.li a5, 6
20012f30 sb a5, 0(sp)
20012f34 lui a5, 0x20209
20012f38 addi a5, a5, -0x4c0
20012f3c c.swsp a5, 4(sp)
20012f3e addi a5, zero, 0x10c
20012f42 c.swsp a5, 8(sp)
20012f44 lui a5, 0x20202
20012f48 lw a5, 0x348(a5)
20012f4c c.mv a0, sp
20012f4e c.jalr a5
20012f50 lw a5, 0(s2)
20012f54 addi a2, zero, 0x80
20012f58 c.li a1, 0
20012f5a c.lw a0, 0x14(a5)
20012f5c jal 0x1c28a
20012f60 lw a5, 0(s2)
20012f64 slli s9, s1, 4
20012f68 c.lw a4, 0x14(a5)
20012f6a c.add a4, s9
20012f6c c.lw a5, 0(a4)
20012f6e c.bnez a5, -0xa6
20012f70 lui s3, 0x20202
20012f74 addi a4, s3, 0x544
20012f78 c.slli s1, 1
20012f7a c.add a4, s1
20012f7c lui s8, 0x20201
20012f80 lw a5, 0x73c(s8)
20012f84 lhu a0, 0x60(a4)
20012f88 c.li a1, 0
20012f8a addi s3, s3, 0x544
20012f8e c.jalr a5
20012f90 slli a3, s0, 4
20012f94 c.srli a3, 4
20012f96 lui a1, 0xa0000
20012f9a beqz s4, 8
20012f9e lui a1, 0xe0000
20012fa2 c.or a1, a3
20012fa4 beqz s7, 0xa
20012fa8 lui a5, 0x10000
20012fac c.or a1, a5
20012fae lw a5, 0(s2)
20012fb2 c.add s3, s1
20012fb4 lhu a0, 0x60(s3)
20012fb8 c.lw a5, 0x14(a5)