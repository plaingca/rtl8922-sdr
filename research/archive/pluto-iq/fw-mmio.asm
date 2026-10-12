
BASE 0x20100790 0xb8003
20100784 lw a5, 8(s3)
20100788 c.li a2, 4
2010078a c.li a1, 0
2010078c c.lw a0, 0xc(a5)
2010078e c.lui s1, 8
20100790 lui s2, 0xb8003
20100794 jal 0x43fd2
20100798 lui a5, 0x20202
2010079c lw a5, 0x18(a5)
201007a0 c.jalr a5
201007a2 lui a5, 0x20202
201007a6 lw a5, -0x4cc(a5)
201007aa c.jalr a5
201007ac lw a5, 0x738(s0)
201007b0 c.li a1, 0x18
201007b2 addi a0, s1, -0x70e
201007b6 c.jalr a5
201007b8 lui a5, 0x20202
201007bc lw a5, -0x3b0(a5)
201007c0 c.li a0, 0
201007c2 c.jalr a5
201007c4 lw a5, 0x738(s0)
201007c8 addi a0, s1, -0x70e
201007cc c.li a1, 0x19
201007ce c.jalr a5
201007d0 lui a5, 0x20202
201007d4 lw a5, -0x4c(a5)
201007d8 c.jalr a5
201007da lw a5, 0x738(s0)
201007de addi a0, s1, -0x70e
201007e2 c.li a1, 0x1a
201007e4 c.jalr a5
201007e6 lui a5, 0x20202
201007ea lw a5, -0x78(a5)
201007ee c.jalr a5
201007f0 lw a5, 0x738(s0)
201007f4 addi a0, s1, -0x70e
201007f8 c.li a1, 0x1b
201007fa c.jalr a5
201007fc lw a5, 0x73c(s4)
20100800 lui a1, 0xc0c
20100804 addi a0, zero, 0x1d0
20100808 c.jalr a5
2010080a lui a5, 0x20201
2010080e lw a5, 0x758(a5)
20100812 addi a0, s2, 0x40
20100816 c.jalr a5
20100818 lui a5, 0x20201
2010081c lw a5, 0x74c(a5)
20100820 lui a1, 0x8000
20100824 c.or a1, a0

BASE 0x20121996 0xb8006
2012198a bne a0, s2, 0xa2
2012198e lui a5, 0x20201
20121992 lw a5, 0x758(a5)
20121996 lui a0, 0xb8006
2012199a c.jalr a5
2012199c lui a5, 0x20201
201219a0 lw a5, 0x74c(a5)
201219a4 ori a1, a0, 0x10
201219a8 lui a0, 0xb8006
201219ac c.jalr a5
201219ae lui a5, 0x20202
201219b2 lw a5, 0x19c(a5)
201219b6 c.li a0, 0
201219b8 c.jalr a5
201219ba c.mv s0, a0
201219bc bne a0, s1, 0x70
201219c0 lui a5, 0x20202
201219c4 lw a5, 0x140(a5)
201219c8 c.li a0, 0
201219ca c.jalr a5
201219cc c.beqz a0, 0x12
201219ce lui a5, 0x20202
201219d2 lw a5, 0x340(a5)
201219d6 lui a1, 0x1000
201219da c.li a0, 0
201219dc c.jalr a5
201219de lui a5, 0x20202
201219e2 lw a5, 0x198(a5)
201219e6 c.li a1, 0
201219e8 c.li a0, 0
201219ea c.jalr a5
201219ec c.li a5, 1
201219ee c.mv s0, a0
201219f0 bne a0, a5, 0x3c
201219f4 lui a5, 0x20201
201219f8 lw s2, 0x738(a5)
201219fc lui a5, 0x20201
20121a00 lw a5, 0x744(a5)
20121a04 c.lui s1, 8
20121a06 addi a0, s1, 0x400
20121a0a c.jalr a5
20121a0c andi a1, a0, -0x201
20121a10 c.slli a1, 0x10
20121a12 c.srli a1, 0x10
20121a14 addi a0, s1, 0x400
20121a18 c.jalr s2
20121a1a lui a5, 0x20202
20121a1e lw a5, 0x1a8(a5)
20121a22 c.jalr a5
20121a24 lui a5, 0x2020e
20121a28 sb zero, -0x24c(a5)

BASE 0x201219a8 0xb8006
2012199c lui a5, 0x20201
201219a0 lw a5, 0x74c(a5)
201219a4 ori a1, a0, 0x10
201219a8 lui a0, 0xb8006
201219ac c.jalr a5
201219ae lui a5, 0x20202
201219b2 lw a5, 0x19c(a5)
201219b6 c.li a0, 0
201219b8 c.jalr a5
201219ba c.mv s0, a0
201219bc bne a0, s1, 0x70
201219c0 lui a5, 0x20202
201219c4 lw a5, 0x140(a5)
201219c8 c.li a0, 0
201219ca c.jalr a5
201219cc c.beqz a0, 0x12
201219ce lui a5, 0x20202
201219d2 lw a5, 0x340(a5)
201219d6 lui a1, 0x1000
201219da c.li a0, 0
201219dc c.jalr a5
201219de lui a5, 0x20202
201219e2 lw a5, 0x198(a5)
201219e6 c.li a1, 0
201219e8 c.li a0, 0
201219ea c.jalr a5
201219ec c.li a5, 1
201219ee c.mv s0, a0
201219f0 bne a0, a5, 0x3c
201219f4 lui a5, 0x20201
201219f8 lw s2, 0x738(a5)
201219fc lui a5, 0x20201
20121a00 lw a5, 0x744(a5)
20121a04 c.lui s1, 8
20121a06 addi a0, s1, 0x400
20121a0a c.jalr a5
20121a0c andi a1, a0, -0x201
20121a10 c.slli a1, 0x10
20121a12 c.srli a1, 0x10
20121a14 addi a0, s1, 0x400
20121a18 c.jalr s2
20121a1a lui a5, 0x20202
20121a1e lw a5, 0x1a8(a5)
20121a22 c.jalr a5
20121a24 lui a5, 0x2020e
20121a28 sb zero, -0x24c(a5)
20121a2c c.lwsp ra, 0xc(sp)
20121a2e c.mv a0, s0
20121a30 c.lwsp s0, 8(sp)
20121a32 c.lwsp s1, 4(sp)
20121a34 c.lwsp s2, 0(sp)
20121a36 c.addi sp, 0x10
20121a38 c.jr ra
20121a3a c.addi16sp sp, -0x40
20121a3c c.swsp s2, 0x30(sp)

BASE 0x20121b6e 0xb8006
20121b62 bne a0, s3, -0x58
20121b66 lui a5, 0x20201
20121b6a lw a5, 0x758(a5)
20121b6e lui a0, 0xb8006
20121b72 c.jalr a5
20121b74 lui a5, 0x20201
20121b78 lui a1, 0xfff00
20121b7c lw a4, 0x74c(a5)
20121b80 c.addi a1, -1
20121b82 c.lui a5, 3
20121b84 addi a5, a5, -0x800
20121b88 c.and a1, a0
20121b8a c.or a1, a5
20121b8c lui a0, 0xb8006
20121b90 c.jalr a4
20121b92 c.li a0, 2
20121b94 jal 0x4254
20121b98 c.mv s1, a0
20121b9a bne a0, s0, -0x90
20121b9e lw a5, 0x744(s2)
20121ba2 c.lui s0, 0xb
20121ba4 addi a0, s0, 0x50
20121ba8 lui s4, 0x20201
20121bac c.jalr a5
20121bae lw a5, 0x748(s4)
20121bb2 c.mv s5, a0
20121bb4 addi a0, s0, 0x160
20121bb8 lui s3, 0x20201
20121bbc c.jalr a5
20121bbe lw a5, 0x73c(s3)
20121bc2 c.addi s5, -1
20121bc4 or a1, s5, a0
20121bc8 addi a0, s0, 0x160
20121bcc c.jalr a5
20121bce lw a5, 0x744(s2)
20121bd2 addi a0, s0, 0x52
20121bd6 c.jalr a5
20121bd8 lw a5, 0x748(s4)
20121bdc c.mv s5, a0
20121bde addi a0, s0, 0x164
20121be2 c.jalr a5
20121be4 lw a5, 0x73c(s3)
20121be8 c.addi s5, -1
20121bea or a1, s5, a0
20121bee addi a0, s0, 0x164
20121bf2 c.jalr a5
20121bf4 lw a5, 0x744(s2)
20121bf8 addi a0, s0, 0x54
20121bfc c.jalr a5
20121bfe lw a5, 0x748(s4)
20121c02 c.mv s5, a0

BASE 0x20121b8c 0xb8006
20121b80 c.addi a1, -1
20121b82 c.lui a5, 3
20121b84 addi a5, a5, -0x800
20121b88 c.and a1, a0
20121b8a c.or a1, a5
20121b8c lui a0, 0xb8006
20121b90 c.jalr a4
20121b92 c.li a0, 2
20121b94 jal 0x4254
20121b98 c.mv s1, a0
20121b9a bne a0, s0, -0x90
20121b9e lw a5, 0x744(s2)
20121ba2 c.lui s0, 0xb
20121ba4 addi a0, s0, 0x50
20121ba8 lui s4, 0x20201
20121bac c.jalr a5
20121bae lw a5, 0x748(s4)
20121bb2 c.mv s5, a0
20121bb4 addi a0, s0, 0x160
20121bb8 lui s3, 0x20201
20121bbc c.jalr a5
20121bbe lw a5, 0x73c(s3)
20121bc2 c.addi s5, -1
20121bc4 or a1, s5, a0
20121bc8 addi a0, s0, 0x160
20121bcc c.jalr a5
20121bce lw a5, 0x744(s2)
20121bd2 addi a0, s0, 0x52
20121bd6 c.jalr a5
20121bd8 lw a5, 0x748(s4)
20121bdc c.mv s5, a0
20121bde addi a0, s0, 0x164
20121be2 c.jalr a5
20121be4 lw a5, 0x73c(s3)
20121be8 c.addi s5, -1
20121bea or a1, s5, a0
20121bee addi a0, s0, 0x164
20121bf2 c.jalr a5
20121bf4 lw a5, 0x744(s2)
20121bf8 addi a0, s0, 0x54
20121bfc c.jalr a5
20121bfe lw a5, 0x748(s4)
20121c02 c.mv s5, a0
20121c04 addi a0, s0, 0x168
20121c08 c.jalr a5
20121c0a lw a5, 0x73c(s3)
20121c0e c.addi s5, -1
20121c10 or a1, s5, a0
20121c14 addi a0, s0, 0x168
20121c18 c.jalr a5
20121c1a lw a5, 0x744(s2)
20121c1e addi a0, s0, 0x56

BASE 0x20122198 0xb8006
2012218c sb a4, -0x24c(a5)
20122190 lui a5, 0x20201
20122194 lw a5, 0x758(a5)
20122198 lui a0, 0xb8006
2012219c c.jalr a5
2012219e lui a5, 0x20201
201221a2 lui a1, 0xfff00
201221a6 lw a4, 0x74c(a5)
201221aa c.addi a1, -1
201221ac c.lui a5, 3
201221ae addi a5, a5, -0x800
201221b2 c.and a1, a0
201221b4 c.or a1, a5
201221b6 lui a0, 0xb8006
201221ba c.jalr a4
201221bc lw a5, 0x748(s0)
201221c0 c.lui s0, 9
201221c2 addi a0, s0, -0x6ec
201221c6 c.jalr a5
201221c8 c.lui a5, 0xfffe0
201221ca c.addi a5, -1
201221cc and a1, a0, a5
201221d0 addi a0, s0, -0x6ec
201221d4 c.lwsp s0, 0x18(sp)
201221d6 lw a4, 0x73c(s1)
201221da c.lwsp ra, 0x1c(sp)
201221dc c.lwsp s1, 0x14(sp)
201221de c.lwsp s2, 0x10(sp)
201221e0 c.lwsp s3, 0xc(sp)
201221e2 c.addi16sp sp, 0x20
201221e4 c.jr a4
201221e6 c.bnez a0, 6
201221e8 c.li a0, 0
201221ea c.jr ra
201221ec c.addi sp, -0x20
201221ee c.swsp s1, 0x14(sp)
201221f0 c.swsp ra, 0x1c(sp)
201221f2 c.swsp s0, 0x18(sp)
201221f4 c.swsp s2, 0x10(sp)
201221f6 c.swsp s3, 0xc(sp)
201221f8 c.swsp s4, 8(sp)
201221fa c.swsp s5, 4(sp)
201221fc c.swsp s6, 0(sp)
201221fe c.mv s1, a1
20122200 c.beqz a1, 0x7e
20122202 lui a5, 0x20202
20122206 lw a5, 0xfc(a5)
2012220a c.mv s3, a0
2012220c c.mv a0, a1
2012220e c.jalr a5
20122210 c.bnez a0, 0x68
20122212 lui a5, 0x20201
20122216 lw a5, 0x748(a5)
2012221a c.lui a0, 9
2012221c addi a0, a0, -0x6f4
20122220 c.jalr a5
20122222 c.andi a0, 1
20122224 c.li a5, 0x18
20122226 c.beqz a0, 4
20122228 c.li a5, 0
2012222a lw s2, 0(s1)

BASE 0x201221b6 0xb8006
201221aa c.addi a1, -1
201221ac c.lui a5, 3
201221ae addi a5, a5, -0x800
201221b2 c.and a1, a0
201221b4 c.or a1, a5
201221b6 lui a0, 0xb8006
201221ba c.jalr a4
201221bc lw a5, 0x748(s0)
201221c0 c.lui s0, 9
201221c2 addi a0, s0, -0x6ec
201221c6 c.jalr a5
201221c8 c.lui a5, 0xfffe0
201221ca c.addi a5, -1
201221cc and a1, a0, a5
201221d0 addi a0, s0, -0x6ec
201221d4 c.lwsp s0, 0x18(sp)
201221d6 lw a4, 0x73c(s1)
201221da c.lwsp ra, 0x1c(sp)
201221dc c.lwsp s1, 0x14(sp)
201221de c.lwsp s2, 0x10(sp)
201221e0 c.lwsp s3, 0xc(sp)
201221e2 c.addi16sp sp, 0x20
201221e4 c.jr a4
201221e6 c.bnez a0, 6
201221e8 c.li a0, 0
201221ea c.jr ra
201221ec c.addi sp, -0x20
201221ee c.swsp s1, 0x14(sp)
201221f0 c.swsp ra, 0x1c(sp)
201221f2 c.swsp s0, 0x18(sp)
201221f4 c.swsp s2, 0x10(sp)
201221f6 c.swsp s3, 0xc(sp)
201221f8 c.swsp s4, 8(sp)
201221fa c.swsp s5, 4(sp)
201221fc c.swsp s6, 0(sp)
201221fe c.mv s1, a1
20122200 c.beqz a1, 0x7e
20122202 lui a5, 0x20202
20122206 lw a5, 0xfc(a5)
2012220a c.mv s3, a0
2012220c c.mv a0, a1
2012220e c.jalr a5
20122210 c.bnez a0, 0x68
20122212 lui a5, 0x20201
20122216 lw a5, 0x748(a5)
2012221a c.lui a0, 9
2012221c addi a0, a0, -0x6f4
20122220 c.jalr a5
20122222 c.andi a0, 1
20122224 c.li a5, 0x18
20122226 c.beqz a0, 4
20122228 c.li a5, 0
2012222a lw s2, 0(s1)
2012222e c.lui s5, 4
20122230 c.addi s5, -1
20122232 and s2, s2, s5
20122236 c.slli s2, 0x10
20122238 srli s2, s2, 0x10
2012223c c.addi s2, -4
2012223e sub s2, s2, a5
20122242 addi a1, s1, 4
20122246 c.add a1, a5
20122248 c.mv a2, s2
2012224a c.mv a0, s3

BASE 0x201225a2 0xb8006
20122596 beq s0, s4, 8
2012259a addi a5, zero, 0x400
2012259e lw a4, 0x758(s3)
201225a2 lui a0, 0xb8006
201225a6 c.add a0, a5
201225a8 c.jalr a4
201225aa srli a5, a0, 0x10
201225ae andi a5, a5, 0x1ff
201225b2 andi a0, a0, 0x1ff
201225b6 bne a5, a0, 0x18
201225ba lbu a4, 0x3ee(s2)
201225be sll a5, s1, s0
201225c2 c.or a5, a4
201225c4 sb a5, 0x3ee(s2)
201225c8 lw a5, 0xf4(s5)
201225cc c.jalr a5
201225ce c.addi s0, 1
201225d0 c.li a5, 3
201225d2 bne s0, a5, -0x48
201225d6 c.lwsp ra, 0x1c(sp)
201225d8 c.lwsp s0, 0x18(sp)
201225da c.lwsp s1, 0x14(sp)
201225dc c.lwsp s2, 0x10(sp)
201225de c.lwsp s3, 0xc(sp)
201225e0 c.lwsp s4, 8(sp)
201225e2 c.lwsp s5, 4(sp)
201225e4 c.addi16sp sp, 0x20
201225e6 c.jr ra
201225e8 c.jr ra
201225ea lui a5, 0x20202
201225ee lw a5, 0xd8(a5)
201225f2 c.addi sp, -0x10
201225f4 c.swsp ra, 0xc(sp)
201225f6 c.jalr a5
201225f8 lui a5, 0x20202
201225fc sb zero, 0x3ee(a5)
20122600 lui a2, 0x20202
20122604 c.li a5, 0
20122606 lw a4, 0x44c(a2)
2012260a lbu a3, 9(a4)
2012260e bltu a5, a3, 0xa
20122612 c.lwsp ra, 0xc(sp)
20122614 c.addi sp, 0x10
20122616 c.jr ra
20122618 c.lw a4, 0(a4)
2012261a c.add a4, a5
2012261c c.addi a5, 1
2012261e sb zero, 0(a4)
20122622 andi a5, a5, 0xff
20122626 c.j -0x20
20122628 c.addi16sp sp, -0x30
2012262a c.swsp s1, 0x24(sp)
2012262c lui s1, 0x20201
20122630 lw a5, 0x758(s1)
20122634 c.swsp ra, 0x2c(sp)
20122636 c.swsp s0, 0x28(sp)

BASE 0x20122644 0xb8006
20122638 c.swsp s2, 0x20(sp)
2012263a c.swsp s3, 0x1c(sp)
2012263c c.swsp s4, 0x18(sp)
2012263e c.swsp s5, 0x14(sp)
20122640 c.swsp s6, 0x10(sp)
20122642 c.swsp s7, 0xc(sp)
20122644 lui a0, 0xb8006
20122648 c.jalr a5
2012264a lui a5, 0x20201
2012264e c.lui a1, 0xffffd
20122650 lw a4, 0x74c(a5)
20122654 addi a1, a1, 0x7ff
20122658 lui a5, 0x100
2012265c c.and a1, a0
2012265e c.addi a5, 0x10
20122660 lui s2, 0xb8006
20122664 c.or a1, a5
20122666 lui a0, 0xb8006
2012266a c.lui s0, 0x18
2012266c addi s3, s2, 0x100
20122670 c.jalr a4
20122672 addi s0, s0, 0x6a0
20122676 c.lui s4, 0x10
20122678 lui s5, 0x20201
2012267c addi s2, s2, 0x504
20122680 c.lui s6, 1
20122682 lui s7, 0x20202
20122686 c.addi s0, -1
20122688 c.beqz s0, 0x22
2012268a lw a5, 0x758(s1)
2012268e c.mv a0, s3
20122690 c.jalr a5
20122692 and a0, a0, s4
20122696 c.beqz a0, 0x36
20122698 lw a5, 0x75c(s5)
2012269c c.mv a0, s2
2012269e c.jalr a5
201226a0 and a0, a0, s6
201226a4 c.slli a0, 0x10
201226a6 c.srli a0, 0x10
201226a8 c.beqz a0, 0x1a
201226aa c.li a0, 0
201226ac c.lwsp ra, 0x2c(sp)
201226ae c.lwsp s0, 0x28(sp)
201226b0 c.lwsp s1, 0x24(sp)
201226b2 c.lwsp s2, 0x20(sp)
201226b4 c.lwsp s3, 0x1c(sp)
201226b6 c.lwsp s4, 0x18(sp)
201226b8 c.lwsp s5, 0x14(sp)
201226ba c.lwsp s6, 0x10(sp)
201226bc c.lwsp s7, 0xc(sp)
201226be c.addi16sp sp, 0x30
201226c0 c.jr ra
201226c2 lw a5, 0x2d0(s7)
201226c6 c.li a0, 1
201226c8 c.jalr a5
201226ca c.j -0x44
201226cc lui a5, 0x20202
201226d0 lw a5, 0x140(a5)
201226d4 c.li a0, 0
201226d6 c.jalr a5
201226d8 c.beqz a0, 0x12

BASE 0x20122660 0xb8006
20122654 addi a1, a1, 0x7ff
20122658 lui a5, 0x100
2012265c c.and a1, a0
2012265e c.addi a5, 0x10
20122660 lui s2, 0xb8006
20122664 c.or a1, a5
20122666 lui a0, 0xb8006
2012266a c.lui s0, 0x18
2012266c addi s3, s2, 0x100
20122670 c.jalr a4
20122672 addi s0, s0, 0x6a0
20122676 c.lui s4, 0x10
20122678 lui s5, 0x20201
2012267c addi s2, s2, 0x504
20122680 c.lui s6, 1
20122682 lui s7, 0x20202
20122686 c.addi s0, -1
20122688 c.beqz s0, 0x22
2012268a lw a5, 0x758(s1)
2012268e c.mv a0, s3
20122690 c.jalr a5
20122692 and a0, a0, s4
20122696 c.beqz a0, 0x36
20122698 lw a5, 0x75c(s5)
2012269c c.mv a0, s2
2012269e c.jalr a5
201226a0 and a0, a0, s6
201226a4 c.slli a0, 0x10
201226a6 c.srli a0, 0x10
201226a8 c.beqz a0, 0x1a
201226aa c.li a0, 0
201226ac c.lwsp ra, 0x2c(sp)
201226ae c.lwsp s0, 0x28(sp)
201226b0 c.lwsp s1, 0x24(sp)
201226b2 c.lwsp s2, 0x20(sp)
201226b4 c.lwsp s3, 0x1c(sp)
201226b6 c.lwsp s4, 0x18(sp)
201226b8 c.lwsp s5, 0x14(sp)
201226ba c.lwsp s6, 0x10(sp)
201226bc c.lwsp s7, 0xc(sp)
201226be c.addi16sp sp, 0x30
201226c0 c.jr ra
201226c2 lw a5, 0x2d0(s7)
201226c6 c.li a0, 1
201226c8 c.jalr a5
201226ca c.j -0x44
201226cc lui a5, 0x20202
201226d0 lw a5, 0x140(a5)
201226d4 c.li a0, 0
201226d6 c.jalr a5
201226d8 c.beqz a0, 0x12
201226da lui a5, 0x20202
201226de lw a5, 0x340(a5)
201226e2 lui a1, 0x1000
201226e6 c.li a0, 0
201226e8 c.jalr a5
201226ea c.jal -0x674
201226ec c.jal -0x102
201226ee lui a5, 0x20202
201226f2 lw a5, 0x1a8(a5)

BASE 0x20122666 0xb8006
2012265a .byte 0x10, 0x00
2012265c c.and a1, a0
2012265e c.addi a5, 0x10
20122660 lui s2, 0xb8006
20122664 c.or a1, a5
20122666 lui a0, 0xb8006
2012266a c.lui s0, 0x18
2012266c addi s3, s2, 0x100
20122670 c.jalr a4
20122672 addi s0, s0, 0x6a0
20122676 c.lui s4, 0x10
20122678 lui s5, 0x20201
2012267c addi s2, s2, 0x504
20122680 c.lui s6, 1
20122682 lui s7, 0x20202
20122686 c.addi s0, -1
20122688 c.beqz s0, 0x22
2012268a lw a5, 0x758(s1)
2012268e c.mv a0, s3
20122690 c.jalr a5
20122692 and a0, a0, s4
20122696 c.beqz a0, 0x36
20122698 lw a5, 0x75c(s5)
2012269c c.mv a0, s2
2012269e c.jalr a5
201226a0 and a0, a0, s6
201226a4 c.slli a0, 0x10
201226a6 c.srli a0, 0x10
201226a8 c.beqz a0, 0x1a
201226aa c.li a0, 0
201226ac c.lwsp ra, 0x2c(sp)
201226ae c.lwsp s0, 0x28(sp)
201226b0 c.lwsp s1, 0x24(sp)
201226b2 c.lwsp s2, 0x20(sp)
201226b4 c.lwsp s3, 0x1c(sp)
201226b6 c.lwsp s4, 0x18(sp)
201226b8 c.lwsp s5, 0x14(sp)
201226ba c.lwsp s6, 0x10(sp)
201226bc c.lwsp s7, 0xc(sp)
201226be c.addi16sp sp, 0x30
201226c0 c.jr ra
201226c2 lw a5, 0x2d0(s7)
201226c6 c.li a0, 1
201226c8 c.jalr a5
201226ca c.j -0x44
201226cc lui a5, 0x20202
201226d0 lw a5, 0x140(a5)
201226d4 c.li a0, 0
201226d6 c.jalr a5
201226d8 c.beqz a0, 0x12
201226da lui a5, 0x20202
201226de lw a5, 0x340(a5)
201226e2 lui a1, 0x1000
201226e6 c.li a0, 0
201226e8 c.jalr a5
201226ea c.jal -0x674
201226ec c.jal -0x102
201226ee lui a5, 0x20202
201226f2 lw a5, 0x1a8(a5)
201226f6 c.jalr a5
201226f8 c.li a0, 1
201226fa c.j -0x4e

BASE 0x20122af2 0xb8006
20122ae6 c.beqz a1, -0x60
20122ae8 c.jalr a5
20122aea lui a5, 0x20202
20122aee lw a5, 0x124(a5)
20122af2 lui s2, 0xb8006
20122af6 c.li s5, 1
20122af8 c.jalr a5
20122afa lui a4, 0x20202
20122afe lw a4, 0x418(a4)
20122b02 lui a5, 0x20201
20122b06 lw a5, 0x2b0(a5)
20122b0a c.lw a0, 0(a4)
20122b0c c.li a2, 1
20122b0e c.li a1, 0
20122b10 c.slli a0, 2
20122b12 c.jalr a5
20122b14 lui a5, 0x20202
20122b18 sw a0, 0x41c(a5)
20122b1c lui a5, 0x20202
20122b20 lw a5, 0x1cc(a5)
20122b24 c.li s6, 2
20122b26 lui s4, 0xb8006
20122b2a c.jalr a5
20122b2c lui a5, 0x20202
20122b30 lw a5, 0x1c8(a5)
20122b34 c.jalr a5
20122b36 lui a5, 0x20201
20122b3a lw a5, 0x758(a5)
20122b3e addi a0, s2, 0x508
20122b42 c.jalr a5
20122b44 lw a5, 0x74c(s1)
20122b48 ori a1, a0, 4
20122b4c addi a0, s2, 0x508
20122b50 c.jalr a5
20122b52 lw a5, 0x74c(s1)
20122b56 addi a0, s2, 0x100
20122b5a c.lui a1, 1
20122b5c c.jalr a5
20122b5e lui a5, 0x20202
20122b62 lw a5, 0x1b8(a5)
20122b66 c.li s2, 3
20122b68 c.jalr a5
20122b6a addi a0, zero, 0x404
20122b6e beq s0, s5, 0x10
20122b72 addi a0, zero, 0x408
20122b76 beq s0, s6, 8
20122b7a addi a0, zero, 0x400
20122b7e lw a5, 0x3f0(s3)
20122b82 slli a3, s0, 1
20122b86 .byte 0x03, 0xa7

BASE 0x20122b26 0xb8006
20122b1a .byte 0xa7, 0x40
20122b1c lui a5, 0x20202
20122b20 lw a5, 0x1cc(a5)
20122b24 c.li s6, 2
20122b26 lui s4, 0xb8006
20122b2a c.jalr a5
20122b2c lui a5, 0x20202
20122b30 lw a5, 0x1c8(a5)
20122b34 c.jalr a5
20122b36 lui a5, 0x20201
20122b3a lw a5, 0x758(a5)
20122b3e addi a0, s2, 0x508
20122b42 c.jalr a5
20122b44 lw a5, 0x74c(s1)
20122b48 ori a1, a0, 4
20122b4c addi a0, s2, 0x508
20122b50 c.jalr a5
20122b52 lw a5, 0x74c(s1)
20122b56 addi a0, s2, 0x100
20122b5a c.lui a1, 1
20122b5c c.jalr a5
20122b5e lui a5, 0x20202
20122b62 lw a5, 0x1b8(a5)
20122b66 c.li s2, 3
20122b68 c.jalr a5
20122b6a addi a0, zero, 0x404
20122b6e beq s0, s5, 0x10
20122b72 addi a0, zero, 0x408
20122b76 beq s0, s6, 8
20122b7a addi a0, zero, 0x400
20122b7e lw a5, 0x3f0(s3)
20122b82 slli a3, s0, 1
20122b86 lw a4, 0x74c(s1)
20122b8a c.add a5, a3
20122b8c lhu a1, 4(a5)
20122b90 c.add a0, s4
20122b92 c.addi s0, 1
20122b94 c.addi a1, -1
20122b96 andi a1, a1, 0x1ff
20122b9a c.jalr a4
20122b9c bne s0, s2, -0x32
20122ba0 lui a5, 0x2020e
20122ba4 c.li a4, 1
20122ba6 sb a4, -0x24c(a5)
20122baa c.j -0x3b4
20122bac c.mv a5, a0
20122bae c.mv a0, a1
20122bb0 c.beqz a5, 0x1e
20122bb2 c.li a4, 1
20122bb4 beq a5, a4, 0xb0
20122bb8 lui a5, 0x20202

BASE 0x20122d50 0xb8006
20122d44 mul a5, a0, a5
20122d48 addi s1, s1, 0x3f4
20122d4c lui s6, 0x20201
20122d50 lui s2, 0xb8006
20122d54 slli s3, a0, 2
20122d58 addi s2, s2, 0x600
20122d5c c.add s2, s3
20122d5e sb a0, 7(s1)
20122d62 c.mv s0, a0
20122d64 c.mv a0, s2
20122d66 c.add a5, s1
20122d68 lbu a4, 9(a5)
20122d6c c.addi a4, 1
20122d6e sb a4, 9(a5)
20122d72 lw a5, 0x758(s6)
20122d76 c.jalr a5
20122d78 lui a5, 0x20000
20122d7c bgeu a0, a5, 0x44
20122d80 lw a5, 0x758(s6)
20122d84 c.mv a0, s2
20122d86 c.jalr a5
20122d88 lui a5, 0xa0000
20122d8c or s5, a0, a5
20122d90 c.j 0x3a
20122d92 c.andi a5, -2
20122d94 sb a5, 0x20(a4)
20122d98 lbu a5, 3(a4)
20122d9c c.addi a5, 1
20122d9e sb a5, 3(a4)
20122da2 c.lwsp ra, 0x6c(sp)
20122da4 c.lwsp s0, 0x68(sp)
20122da6 c.lwsp s1, 0x64(sp)
20122da8 c.lwsp s2, 0x60(sp)
20122daa c.lwsp s3, 0x5c(sp)
20122dac c.lwsp s4, 0x58(sp)
20122dae c.lwsp s5, 0x54(sp)
20122db0 c.lwsp s6, 0x50(sp)
20122db2 c.lwsp s7, 0x4c(sp)
20122db4 c.lwsp s8, 0x48(sp)
20122db6 c.lwsp s9, 0x44(sp)
20122db8 c.lwsp s10, 0x40(sp)
20122dba c.lwsp s11, 0x3c(sp)
20122dbc c.addi16sp sp, 0x70
20122dbe c.jr ra
20122dc0 lw a5, 0x758(s6)
20122dc4 c.mv a0, s2
20122dc6 c.jalr a5
20122dc8 c.mv s5, a0
20122dca lui s4, 0xb8006
20122dce lw a5, 0x758(s6)
20122dd2 addi s4, s4, 0x400
20122dd6 c.add s4, s3
20122dd8 c.mv a0, s4
20122dda c.jalr a5
20122ddc lui s7, 0x20203
20122de0 addi a5, s7, 0x5b4
20122de4 c.add a5, s3

BASE 0x20122dca 0xb8006
20122dbe c.jr ra
20122dc0 lw a5, 0x758(s6)
20122dc4 c.mv a0, s2
20122dc6 c.jalr a5
20122dc8 c.mv s5, a0
20122dca lui s4, 0xb8006
20122dce lw a5, 0x758(s6)
20122dd2 addi s4, s4, 0x400
20122dd6 c.add s4, s3
20122dd8 c.mv a0, s4
20122dda c.jalr a5
20122ddc lui s7, 0x20203
20122de0 addi a5, s7, 0x5b4
20122de4 c.add a5, s3
20122de6 c.lw a4, 0(a5)
20122de8 c.srli a0, 0x10
20122dea andi a0, a0, 0x1ff
20122dee slli s2, a4, 3
20122df2 c.add s2, s5
20122df4 addi s7, s7, 0x5b4
20122df8 beq a4, a0, -0x56
20122dfc andi a2, a4, 0xff
20122e00 andi a5, a0, 0xff
20122e04 bgeu a4, a0, 0x86
20122e08 c.sub a5, a2
20122e0a lui s8, 0x20202
20122e0e andi a5, a5, 0xff
20122e12 addi s8, s8, 0x478
20122e16 c.swsp a5, 0xc(sp)
20122e18 c.li s10, 0
20122e1a c.add s8, s3
20122e1c c.swsp s9, 0x18(sp)
20122e1e c.lwsp a5, 0xc(sp)
20122e20 beq s10, a5, 0x5e
20122e24 lui a5, 0x20202
20122e28 lw a5, 0x118(a5)
20122e2c c.mv a0, s0
20122e2e c.jalr a5
20122e30 c.bnez a0, 0x72
20122e32 lui a5, 0x20201
20122e36 lw a5, 0x6b8(a5)
20122e3a c.li a4, 0
20122e3c addi a3, zero, 0x1b5
20122e40 c.li a2, 2
20122e42 c.lui a0, 1
20122e44 c.li a1, 0
20122e46 c.jalr a5
20122e48 lui a5, 0x20202
20122e4c lw a5, 0x340(a5)
20122e50 c.li a0, 2
20122e52 lui a1, 0x80
20122e56 c.jalr a5
20122e58 c.li a0, 5
20122e5a mul s0, s0, a0
20122e5e .byte 0xb7, 0x27

BASE 0x20123086 0xb8006
2012307a c.swsp s3, 0x3c(sp)
2012307c lui s3, 0x20201
20123080 lw a5, 0x758(s3)
20123084 c.swsp s1, 0x44(sp)
20123086 lui s1, 0xb8006
2012308a c.swsp s0, 0x48(sp)
2012308c c.swsp s2, 0x40(sp)
2012308e c.swsp s4, 0x38(sp)
20123090 c.swsp ra, 0x4c(sp)
20123092 c.swsp s5, 0x34(sp)
20123094 c.swsp s6, 0x30(sp)
20123096 c.swsp s7, 0x2c(sp)
20123098 c.swsp s8, 0x28(sp)
2012309a c.swsp s9, 0x24(sp)
2012309c c.mv s0, a0
2012309e c.swsp zero, 0x1c(sp)
201230a0 addi a0, s1, 0x700
201230a4 c.mv s4, a1
201230a6 lui s2, 0x20201
201230aa c.jalr a5
201230ac lw a5, 0x74c(s2)
201230b0 andi a1, a0, -4
201230b4 addi a0, s1, 0x700
201230b8 c.jalr a5
201230ba c.beqz s0, 0xf4
201230bc lui s5, 0x20201
201230c0 lw a5, 0x748(s5)
201230c4 c.lui s1, 9
201230c6 addi a0, s1, 0x48
201230ca c.jalr a5
201230cc lw a5, 0x748(s5)
201230d0 c.mv s0, a0
201230d2 addi a0, s1, 8
201230d6 c.jalr a5
201230d8 c.slli s0, 0x14
201230da c.srli s0, 0x14
201230dc c.andi a0, 3
201230de sll s0, s0, a0
201230e2 c.li a5, 0x1f
201230e4 bltu a5, s0, 0x26
201230e8 c.li a5, 7
201230ea sb a5, 0x10(sp)
201230ee lui a5, 0x20211
201230f2 addi a5, a5, 0x43c
201230f6 c.swsp a5, 0x14(sp)
201230f8 addi a5, zero, 0x4d7
201230fc c.swsp a5, 0x18(sp)
201230fe lui a5, 0x20202
20123102 lw a5, 0x348(a5)
20123106 c.addi4spn a0, sp, 0x10
20123108 c.jalr a5
2012310a lw a5, 0x758(s3)
2012310e lui s1, 0xb8006
20123112 addi a0, s1, 0x704
20123116 c.jalr a5
20123118 lw a5, 0x74c(s2)

BASE 0x2012310e 0xb8006
20123102 lw a5, 0x348(a5)
20123106 c.addi4spn a0, sp, 0x10
20123108 c.jalr a5
2012310a lw a5, 0x758(s3)
2012310e lui s1, 0xb8006
20123112 addi a0, s1, 0x704
20123116 c.jalr a5
20123118 lw a5, 0x74c(s2)
2012311c andi a1, a0, -0x40
20123120 ori a1, a1, 0x20
20123124 addi a0, s1, 0x704
20123128 c.jalr a5
2012312a lw a5, 0x758(s3)
2012312e addi a0, s1, 0x710
20123132 c.slli s0, 0x10
20123134 c.jalr a5
20123136 lui a1, 0xe0010
2012313a lui a4, 0x1fff0
2012313e lw a5, 0x74c(s2)
20123142 c.addi a1, -1
20123144 c.and s0, a4
20123146 c.and a1, a0
20123148 c.or a1, s0
2012314a addi a0, s1, 0x710
2012314e c.jalr a5
20123150 lw a5, 0x748(s5)
20123154 c.lui s0, 9
20123156 addi a0, s0, -0x3bc
2012315a c.jalr a5
2012315c lw a5, 0x748(s5)
20123160 c.mv s1, a0
20123162 addi a0, s0, -0x3f8
20123166 c.jalr a5
20123168 lui s8, 0x20201
2012316c slli s0, s1, 0x14
20123170 lw a5, 0x668(s8)
20123174 c.andi a0, 3
20123176 c.srli s0, 0x14
20123178 sll s0, s0, a0
2012317c c.li a0, 5
2012317e c.jalr a5
20123180 c.bnez a0, 0xa8
20123182 beqz s0, 0x16c
20123186 c.li a5, 1
20123188 bne s0, a5, 0x170
2012318c c.li a5, 7
2012318e sb a5, 0x10(sp)
20123192 lui a5, 0x20211
20123196 addi a5, a5, 0x43c
2012319a c.swsp a5, 0x14(sp)
2012319c addi a5, zero, 0x4fc
201231a0 c.swsp a5, 0x18(sp)
201231a2 .byte 0xb7, 0x27

BASE 0x2012323a 0xb8006
2012322e c.mv s1, s0
20123230 c.li s7, 0xe
20123232 c.li s9, 0xe
20123234 c.li s6, 0xe
20123236 lw a5, 0x758(s3)
2012323a lui s3, 0xb8006
2012323e addi a0, s3, 0x704
20123242 c.jalr a5
20123244 lui a1, 0xffc10
20123248 lw a5, 0x74c(s2)
2012324c c.addi a1, -1
2012324e c.and a1, a0
20123250 c.slli s7, 0x10
20123252 or a1, s7, a1
20123256 addi a0, s3, 0x704
2012325a c.jalr a5
2012325c lw a5, 0x74c(s2)
20123260 slli a1, s0, 0x10
20123264 lui s7, 0x1fff0
20123268 and a1, a1, s7
2012326c andi s6, s6, 0x3f
20123270 addi a0, s3, 0x714
20123274 or a1, s6, a1
20123278 c.jalr a5
2012327a lw a5, 0x668(s8)
2012327e c.li a0, 5
20123280 c.jalr a5
20123282 c.beqz a0, 0x18
20123284 slli a1, s1, 0x10
20123288 lw a5, 0x74c(s2)
2012328c and a1, a1, s7
20123290 or a1, a1, s9
20123294 addi a0, s3, 0x718
20123298 c.jalr a5
2012329a lw a5, 0x74c(s2)
2012329e lui s1, 0xb8006
201232a2 slli a1, s0, 0x13
201232a6 c.srli a1, 0x13
201232a8 addi a0, s1, 0x750
201232ac c.swsp a1, 0xc(sp)
201232ae c.jalr a5
201232b0 lw a5, 0x74c(s2)
201232b4 c.lwsp a1, 0xc(sp)
201232b6 addi a0, s1, 0x754
201232ba c.jalr a5
201232bc bnez s4, -0xf4
201232c0 lw a5, 0x74c(s2)
201232c4 c.li a1, 0
201232c6 addi a0, s1, 0x770
201232ca c.jalr a5
201232cc lw a5, 0x74c(s2)

BASE 0x2012329e 0xb8006
20123292 c.addi gp, 5
20123294 addi a0, s3, 0x718
20123298 c.jalr a5
2012329a lw a5, 0x74c(s2)
2012329e lui s1, 0xb8006
201232a2 slli a1, s0, 0x13
201232a6 c.srli a1, 0x13
201232a8 addi a0, s1, 0x750
201232ac c.swsp a1, 0xc(sp)
201232ae c.jalr a5
201232b0 lw a5, 0x74c(s2)
201232b4 c.lwsp a1, 0xc(sp)
201232b6 addi a0, s1, 0x754
201232ba c.jalr a5
201232bc bnez s4, -0xf4
201232c0 lw a5, 0x74c(s2)
201232c4 c.li a1, 0
201232c6 addi a0, s1, 0x770
201232ca c.jalr a5
201232cc lw a5, 0x74c(s2)
201232d0 c.li a1, 0
201232d2 addi a0, s1, 0x774
201232d6 c.jalr a5
201232d8 c.li a1, 0
201232da lw a5, 0x74c(s2)
201232de lui a0, 0xb8006
201232e2 ori a1, a1, 3
201232e6 addi a0, a0, 0x700
201232ea c.jalr a5
201232ec c.j -0x13e
201232ee c.li s6, 0
201232f0 c.li s7, 2
201232f2 c.li s1, 0
201232f4 c.li s9, 0
201232f6 c.j -0xc0
201232f8 c.mv s6, s0
201232fa c.j -0xa
201232fc c.li a5, 2
201232fe bltu a5, a0, 0x9c
20123302 lui a4, 0x20202
20123306 lw a5, 0x3f0(a4)
2012330a slli a3, a0, 2
2012330e c.addi16sp sp, -0x30
20123310 c.add a5, a3
20123312 c.swsp s5, 0x14(sp)
20123314 lw s5, 0xc(a5)
20123318 lui a5, 0x20212
2012331c addi a5, a5, -0x298
20123320 c.add a5, a0
20123322 c.swsp s7, 0xc(sp)
20123324 lbu s7, 0(a5)
20123328 c.swsp s4, 0x18(sp)
2012332a lui s4, 0x20000
2012332e c.swsp s0, 0x28(sp)
20123330 c.swsp s2, 0x20(sp)
20123332 c.swsp s3, 0x1c(sp)

BASE 0x201232de 0xb8006
201232d2 addi a0, s1, 0x774
201232d6 c.jalr a5
201232d8 c.li a1, 0
201232da lw a5, 0x74c(s2)
201232de lui a0, 0xb8006
201232e2 ori a1, a1, 3
201232e6 addi a0, a0, 0x700
201232ea c.jalr a5
201232ec c.j -0x13e
201232ee c.li s6, 0
201232f0 c.li s7, 2
201232f2 c.li s1, 0
201232f4 c.li s9, 0
201232f6 c.j -0xc0
201232f8 c.mv s6, s0
201232fa c.j -0xa
201232fc c.li a5, 2
201232fe bltu a5, a0, 0x9c
20123302 lui a4, 0x20202
20123306 lw a5, 0x3f0(a4)
2012330a slli a3, a0, 2
2012330e c.addi16sp sp, -0x30
20123310 c.add a5, a3
20123312 c.swsp s5, 0x14(sp)
20123314 lw s5, 0xc(a5)
20123318 lui a5, 0x20212
2012331c addi a5, a5, -0x298
20123320 c.add a5, a0
20123322 c.swsp s7, 0xc(sp)
20123324 lbu s7, 0(a5)
20123328 c.swsp s4, 0x18(sp)
2012332a lui s4, 0x20000
2012332e c.swsp s0, 0x28(sp)
20123330 c.swsp s2, 0x20(sp)
20123332 c.swsp s3, 0x1c(sp)
20123334 c.swsp s6, 0x10(sp)
20123336 c.swsp ra, 0x2c(sp)
20123338 c.swsp s1, 0x24(sp)
2012333a c.mv s0, a0
2012333c c.li s2, 0
2012333e c.mv s3, a4
20123340 lui s6, 0x20202
20123344 c.addi s4, -1
20123346 lw a5, 0x3f0(s3)
2012334a slli a4, s0, 1
2012334e slli s1, s2, 3
20123352 c.add a5, a4
20123354 lhu a5, 4(a5)
20123358 c.add s1, s5
2012335a bltu s2, a5, 0x1a
2012335e c.lwsp ra, 0x2c(sp)
20123360 c.lwsp s0, 0x28(sp)
20123362 c.lwsp s1, 0x24(sp)
20123364 c.lwsp s2, 0x20(sp)
20123366 c.lwsp s3, 0x1c(sp)
20123368 c.lwsp s4, 0x18(sp)
2012336a c.lwsp s5, 0x14(sp)
2012336c c.lwsp s6, 0x10(sp)
2012336e c.lwsp s7, 0xc(sp)
20123370 c.addi16sp sp, 0x30
20123372 c.jr ra

BASE 0x20123942 0xb8006
20123936 addi s0, zero, 0x40
2012393a lui a5, 0x20201
2012393e lw a5, 0x758(a5)
20123942 lui s1, 0xb8006
20123946 addi a0, s1, 0x500
2012394a c.jalr a5
2012394c lui a1, 0xff010
20123950 lui a5, 0x20201
20123954 c.addi a1, -1
20123956 lw a5, 0x74c(a5)
2012395a c.and a1, a0
2012395c c.slli s0, 0x10
2012395e c.or a1, s0
20123960 addi a0, s1, 0x500
20123964 c.jalr a5
20123966 c.li a0, 1
20123968 c.j -0xa0
2012396a addi s0, zero, 0x5b
2012396e c.j -0x34
20123970 addi s0, zero, 0x76
20123974 c.j -0x3a
20123976 addi s0, zero, 0x80
2012397a c.j -0x40
2012397c c.li s0, 0
2012397e c.j -0x44
20123980 addi a4, zero, 0xa1
20123984 c.lui a0, 0x15
20123986 bne a5, a4, 6
2012398a c.lui a0, 0x11
2012398c lui a5, 0x20201
20123990 lw a5, 0x738(a5)
20123994 addi a0, a0, -0x70c
20123998 ori a1, a1, 0x100
2012399c c.jalr a5
2012399e c.j -0x38
201239a0 addi a4, zero, 0xa6
201239a4 c.lui a0, 0x15
201239a6 bne a5, a4, 6
201239aa c.lui a0, 0x11
201239ac addi a0, a0, 0x4fc
201239b0 lui a5, 0x20201
201239b4 lw a5, 0x734(a5)
201239b8 c.jalr a5
201239ba c.j -0x54
201239bc addi a4, zero, 0xa7
201239c0 c.lui a0, 0x15
201239c2 bne a5, a4, 6
201239c6 c.lui a0, 0x11
201239c8 addi a0, a0, 0xf4
201239cc c.j -0x1c
201239ce c.li a0, 0
201239d0 c.j -0x108
201239d2 lui a5, 0x20201
201239d6 .byte 0x83, 0xa7

BASE 0x20126c04 0xb8008
20126bf8 c.fld fs0, 0x20(s0)
20126bfa c.srli a3, 0xe
20126bfc bltu a1, a5, 8
20126c00 c.slli a1, 3
20126c02 c.srli a1, 3
20126c04 lui a5, 0xb8008
20126c08 c.sw a1, 0(a5)
20126c0a lui a5, 0x30000
20126c0e bltu a2, a5, 8
20126c12 c.slli a2, 3
20126c14 c.srli a2, 3
20126c16 lui a5, 0xb8008
20126c1a c.sw a2, 4(a5)
20126c1c lui a4, 0x80000
20126c20 c.sw a3, 8(a5)
20126c22 c.or a3, a4
20126c24 c.sw a3, 8(a5)
20126c26 c.li a0, 1
20126c28 c.jr ra
20126c2a c.li a5, 1
20126c2c bne a0, a5, 0x38
20126c30 c.slli a3, 0xe
20126c32 lui a5, 0x30000
20126c36 c.srli a3, 0xe
20126c38 bltu a1, a5, 8
20126c3c c.slli a1, 3
20126c3e c.srli a1, 3
20126c40 lui a5, 0xb8008
20126c44 c.sw a1, 0x10(a5)
20126c46 lui a5, 0x30000
20126c4a bltu a2, a5, 8
20126c4e c.slli a2, 3
20126c50 c.srli a2, 3
20126c52 lui a5, 0xb8008
20126c56 c.sw a2, 0x14(a5)
20126c58 lui a4, 0x80000
20126c5c c.sw a3, 0x18(a5)
20126c5e c.or a3, a4
20126c60 c.sw a3, 0x18(a5)
20126c62 c.jr ra
20126c64 lui a5, 0x20202
20126c68 lw a5, 0x340(a5)
20126c6c c.addi sp, -0x10
20126c6e c.swsp ra, 0xc(sp)
20126c70 c.li a0, 1
20126c72 lui a1, 0x40
20126c76 c.jalr a5
20126c78 c.lwsp ra, 0xc(sp)
20126c7a c.li a0, 0
20126c7c c.addi sp, 0x10
20126c7e c.jr ra
20126c80 c.bnez a0, 0x18
20126c82 lui a4, 0xb8008
20126c86 c.lw a5, 8(a4)
20126c88 bltz a5, -2
20126c8c lw a5, 0xe8(a4)
20126c90 c.andi a5, 1
20126c92 c.bnez a5, -0xc
20126c94 c.li a0, 1
20126c96 c.jr ra
20126c98 c.li a5, 1

BASE 0x20126c16 0xb8008
20126c0a lui a5, 0x30000
20126c0e bltu a2, a5, 8
20126c12 c.slli a2, 3
20126c14 c.srli a2, 3
20126c16 lui a5, 0xb8008
20126c1a c.sw a2, 4(a5)
20126c1c lui a4, 0x80000
20126c20 c.sw a3, 8(a5)
20126c22 c.or a3, a4
20126c24 c.sw a3, 8(a5)
20126c26 c.li a0, 1
20126c28 c.jr ra
20126c2a c.li a5, 1
20126c2c bne a0, a5, 0x38
20126c30 c.slli a3, 0xe
20126c32 lui a5, 0x30000
20126c36 c.srli a3, 0xe
20126c38 bltu a1, a5, 8
20126c3c c.slli a1, 3
20126c3e c.srli a1, 3
20126c40 lui a5, 0xb8008
20126c44 c.sw a1, 0x10(a5)
20126c46 lui a5, 0x30000
20126c4a bltu a2, a5, 8
20126c4e c.slli a2, 3
20126c50 c.srli a2, 3
20126c52 lui a5, 0xb8008
20126c56 c.sw a2, 0x14(a5)
20126c58 lui a4, 0x80000
20126c5c c.sw a3, 0x18(a5)
20126c5e c.or a3, a4
20126c60 c.sw a3, 0x18(a5)
20126c62 c.jr ra
20126c64 lui a5, 0x20202
20126c68 lw a5, 0x340(a5)
20126c6c c.addi sp, -0x10
20126c6e c.swsp ra, 0xc(sp)
20126c70 c.li a0, 1
20126c72 lui a1, 0x40
20126c76 c.jalr a5
20126c78 c.lwsp ra, 0xc(sp)
20126c7a c.li a0, 0
20126c7c c.addi sp, 0x10
20126c7e c.jr ra
20126c80 c.bnez a0, 0x18
20126c82 lui a4, 0xb8008
20126c86 c.lw a5, 8(a4)
20126c88 bltz a5, -2
20126c8c lw a5, 0xe8(a4)
20126c90 c.andi a5, 1
20126c92 c.bnez a5, -0xc
20126c94 c.li a0, 1
20126c96 c.jr ra
20126c98 c.li a5, 1
20126c9a bne a0, a5, 0x18
20126c9e lui a4, 0xb8008
20126ca2 c.lw a5, 0x18(a4)
20126ca4 bltz a5, -2
20126ca8 lw a5, 0xe8(a4)

BASE 0x20126c40 0xb8008
20126c34 c.fld fs0, 0x20(s0)
20126c36 c.srli a3, 0xe
20126c38 bltu a1, a5, 8
20126c3c c.slli a1, 3
20126c3e c.srli a1, 3
20126c40 lui a5, 0xb8008
20126c44 c.sw a1, 0x10(a5)
20126c46 lui a5, 0x30000
20126c4a bltu a2, a5, 8
20126c4e c.slli a2, 3
20126c50 c.srli a2, 3
20126c52 lui a5, 0xb8008
20126c56 c.sw a2, 0x14(a5)
20126c58 lui a4, 0x80000
20126c5c c.sw a3, 0x18(a5)
20126c5e c.or a3, a4
20126c60 c.sw a3, 0x18(a5)
20126c62 c.jr ra
20126c64 lui a5, 0x20202
20126c68 lw a5, 0x340(a5)
20126c6c c.addi sp, -0x10
20126c6e c.swsp ra, 0xc(sp)
20126c70 c.li a0, 1
20126c72 lui a1, 0x40
20126c76 c.jalr a5
20126c78 c.lwsp ra, 0xc(sp)
20126c7a c.li a0, 0
20126c7c c.addi sp, 0x10
20126c7e c.jr ra
20126c80 c.bnez a0, 0x18
20126c82 lui a4, 0xb8008
20126c86 c.lw a5, 8(a4)
20126c88 bltz a5, -2
20126c8c lw a5, 0xe8(a4)
20126c90 c.andi a5, 1
20126c92 c.bnez a5, -0xc
20126c94 c.li a0, 1
20126c96 c.jr ra
20126c98 c.li a5, 1
20126c9a bne a0, a5, 0x18
20126c9e lui a4, 0xb8008
20126ca2 c.lw a5, 0x18(a4)
20126ca4 bltz a5, -2
20126ca8 lw a5, 0xe8(a4)
20126cac c.andi a5, 2
20126cae c.bnez a5, -0xc
20126cb0 c.jr ra
20126cb2 c.li a0, 0
20126cb4 c.jr ra
20126cb6 c.addi sp, -0x10
20126cb8 lui a5, 0x20201
20126cbc c.swsp s0, 8(sp)
20126cbe lw s0, 0x73c(a5)
20126cc2 lui a5, 0x20201
20126cc6 lw a5, 0x748(a5)
20126cca c.swsp ra, 0xc(sp)
20126ccc addi a0, zero, 0x88
20126cd0 c.jalr a5
20126cd2 c.mv a5, s0
20126cd4 c.lwsp s0, 8(sp)

BASE 0x20126c52 0xb8008
20126c46 lui a5, 0x30000
20126c4a bltu a2, a5, 8
20126c4e c.slli a2, 3
20126c50 c.srli a2, 3
20126c52 lui a5, 0xb8008
20126c56 c.sw a2, 0x14(a5)
20126c58 lui a4, 0x80000
20126c5c c.sw a3, 0x18(a5)
20126c5e c.or a3, a4
20126c60 c.sw a3, 0x18(a5)
20126c62 c.jr ra
20126c64 lui a5, 0x20202
20126c68 lw a5, 0x340(a5)
20126c6c c.addi sp, -0x10
20126c6e c.swsp ra, 0xc(sp)
20126c70 c.li a0, 1
20126c72 lui a1, 0x40
20126c76 c.jalr a5
20126c78 c.lwsp ra, 0xc(sp)
20126c7a c.li a0, 0
20126c7c c.addi sp, 0x10
20126c7e c.jr ra
20126c80 c.bnez a0, 0x18
20126c82 lui a4, 0xb8008
20126c86 c.lw a5, 8(a4)
20126c88 bltz a5, -2
20126c8c lw a5, 0xe8(a4)
20126c90 c.andi a5, 1
20126c92 c.bnez a5, -0xc
20126c94 c.li a0, 1
20126c96 c.jr ra
20126c98 c.li a5, 1
20126c9a bne a0, a5, 0x18
20126c9e lui a4, 0xb8008
20126ca2 c.lw a5, 0x18(a4)
20126ca4 bltz a5, -2
20126ca8 lw a5, 0xe8(a4)
20126cac c.andi a5, 2
20126cae c.bnez a5, -0xc
20126cb0 c.jr ra
20126cb2 c.li a0, 0
20126cb4 c.jr ra
20126cb6 c.addi sp, -0x10
20126cb8 lui a5, 0x20201
20126cbc c.swsp s0, 8(sp)
20126cbe lw s0, 0x73c(a5)
20126cc2 lui a5, 0x20201
20126cc6 lw a5, 0x748(a5)
20126cca c.swsp ra, 0xc(sp)
20126ccc addi a0, zero, 0x88
20126cd0 c.jalr a5
20126cd2 c.mv a5, s0
20126cd4 c.lwsp s0, 8(sp)
20126cd6 c.lwsp ra, 0xc(sp)
20126cd8 ori a1, a0, 0x40
20126cdc addi a0, zero, 0x88
20126ce0 c.addi sp, 0x10
20126ce2 c.jr a5
20126ce4 c.addi sp, -0x10
20126ce6 c.swsp s0, 8(sp)

BASE 0x20126c82 0xb8008
20126c76 c.jalr a5
20126c78 c.lwsp ra, 0xc(sp)
20126c7a c.li a0, 0
20126c7c c.addi sp, 0x10
20126c7e c.jr ra
20126c80 c.bnez a0, 0x18
20126c82 lui a4, 0xb8008
20126c86 c.lw a5, 8(a4)
20126c88 bltz a5, -2
20126c8c lw a5, 0xe8(a4)
20126c90 c.andi a5, 1
20126c92 c.bnez a5, -0xc
20126c94 c.li a0, 1
20126c96 c.jr ra
20126c98 c.li a5, 1
20126c9a bne a0, a5, 0x18
20126c9e lui a4, 0xb8008
20126ca2 c.lw a5, 0x18(a4)
20126ca4 bltz a5, -2
20126ca8 lw a5, 0xe8(a4)
20126cac c.andi a5, 2
20126cae c.bnez a5, -0xc
20126cb0 c.jr ra
20126cb2 c.li a0, 0
20126cb4 c.jr ra
20126cb6 c.addi sp, -0x10
20126cb8 lui a5, 0x20201
20126cbc c.swsp s0, 8(sp)
20126cbe lw s0, 0x73c(a5)
20126cc2 lui a5, 0x20201
20126cc6 lw a5, 0x748(a5)
20126cca c.swsp ra, 0xc(sp)
20126ccc addi a0, zero, 0x88
20126cd0 c.jalr a5
20126cd2 c.mv a5, s0
20126cd4 c.lwsp s0, 8(sp)
20126cd6 c.lwsp ra, 0xc(sp)
20126cd8 ori a1, a0, 0x40
20126cdc addi a0, zero, 0x88
20126ce0 c.addi sp, 0x10
20126ce2 c.jr a5
20126ce4 c.addi sp, -0x10
20126ce6 c.swsp s0, 8(sp)
20126ce8 lui s0, 0xb8008
20126cec c.swsp s1, 4(sp)
20126cee c.swsp ra, 0xc(sp)
20126cf0 lui s1, 0x20201
20126cf4 addi s0, s0, 0xe8
20126cf8 lw a5, 0x758(s1)
20126cfc c.mv a0, s0
20126cfe c.jalr a5
20126d00 andi a0, a0, 0x3f
20126d04 c.bnez a0, -0xc
20126d06 lui a5, 0x20201
20126d0a lw s0, 0x73c(a5)
20126d0e lui a5, 0x20201
20126d12 lw a5, 0x748(a5)
20126d16 .byte 0x13, 0x05

BASE 0x20126c9e 0xb8008
20126c92 c.bnez a5, -0xc
20126c94 c.li a0, 1
20126c96 c.jr ra
20126c98 c.li a5, 1
20126c9a bne a0, a5, 0x18
20126c9e lui a4, 0xb8008
20126ca2 c.lw a5, 0x18(a4)
20126ca4 bltz a5, -2
20126ca8 lw a5, 0xe8(a4)
20126cac c.andi a5, 2
20126cae c.bnez a5, -0xc
20126cb0 c.jr ra
20126cb2 c.li a0, 0
20126cb4 c.jr ra
20126cb6 c.addi sp, -0x10
20126cb8 lui a5, 0x20201
20126cbc c.swsp s0, 8(sp)
20126cbe lw s0, 0x73c(a5)
20126cc2 lui a5, 0x20201
20126cc6 lw a5, 0x748(a5)
20126cca c.swsp ra, 0xc(sp)
20126ccc addi a0, zero, 0x88
20126cd0 c.jalr a5
20126cd2 c.mv a5, s0
20126cd4 c.lwsp s0, 8(sp)
20126cd6 c.lwsp ra, 0xc(sp)
20126cd8 ori a1, a0, 0x40
20126cdc addi a0, zero, 0x88
20126ce0 c.addi sp, 0x10
20126ce2 c.jr a5
20126ce4 c.addi sp, -0x10
20126ce6 c.swsp s0, 8(sp)
20126ce8 lui s0, 0xb8008
20126cec c.swsp s1, 4(sp)
20126cee c.swsp ra, 0xc(sp)
20126cf0 lui s1, 0x20201
20126cf4 addi s0, s0, 0xe8
20126cf8 lw a5, 0x758(s1)
20126cfc c.mv a0, s0
20126cfe c.jalr a5
20126d00 andi a0, a0, 0x3f
20126d04 c.bnez a0, -0xc
20126d06 lui a5, 0x20201
20126d0a lw s0, 0x73c(a5)
20126d0e lui a5, 0x20201
20126d12 lw a5, 0x748(a5)
20126d16 addi a0, zero, 0x88
20126d1a c.jalr a5
20126d1c c.mv a5, s0
20126d1e c.lwsp s0, 8(sp)
20126d20 c.lwsp ra, 0xc(sp)
20126d22 c.lwsp s1, 4(sp)
20126d24 andi a1, a0, -0x41
20126d28 addi a0, zero, 0x88
20126d2c c.addi sp, 0x10
20126d2e c.jr a5
20126d30 c.lw a5, 0(a0)
20126d32 .byte 0x37, 0x27

BASE 0x20126ce8 0xb8008
20126cdc addi a0, zero, 0x88
20126ce0 c.addi sp, 0x10
20126ce2 c.jr a5
20126ce4 c.addi sp, -0x10
20126ce6 c.swsp s0, 8(sp)
20126ce8 lui s0, 0xb8008
20126cec c.swsp s1, 4(sp)
20126cee c.swsp ra, 0xc(sp)
20126cf0 lui s1, 0x20201
20126cf4 addi s0, s0, 0xe8
20126cf8 lw a5, 0x758(s1)
20126cfc c.mv a0, s0
20126cfe c.jalr a5
20126d00 andi a0, a0, 0x3f
20126d04 c.bnez a0, -0xc
20126d06 lui a5, 0x20201
20126d0a lw s0, 0x73c(a5)
20126d0e lui a5, 0x20201
20126d12 lw a5, 0x748(a5)
20126d16 addi a0, zero, 0x88
20126d1a c.jalr a5
20126d1c c.mv a5, s0
20126d1e c.lwsp s0, 8(sp)
20126d20 c.lwsp ra, 0xc(sp)
20126d22 c.lwsp s1, 4(sp)
20126d24 andi a1, a0, -0x41
20126d28 addi a0, zero, 0x88
20126d2c c.addi sp, 0x10
20126d2e c.jr a5
20126d30 c.lw a5, 0(a0)
20126d32 lui a4, 0x20202
20126d36 c.li a0, 0
20126d38 c.andi a5, 1
20126d3a sb a5, 0x534(a4)
20126d3e c.jr ra
20126d40 c.slli a1, 8
20126d42 c.or a1, a0
20126d44 c.slli a3, 0x1c
20126d46 lui a5, 0x20201
20126d4a c.or a1, a3
20126d4c c.slli a2, 0x10
20126d4e lw a5, 0x73c(a5)
20126d52 c.addi sp, -0x10
20126d54 c.or a1, a2
20126d56 lui a4, 0x80000
20126d5a c.swsp s0, 8(sp)
20126d5c c.swsp s1, 4(sp)
20126d5e c.swsp s2, 0(sp)
20126d60 c.swsp ra, 0xc(sp)
20126d62 c.or a1, a4
20126d64 addi a0, zero, 0x270
20126d68 c.jalr a5
20126d6a addi s0, zero, 0x3e9
20126d6e lui s1, 0x20201
20126d72 lui s2, 0x20202
20126d76 lw a5, 0x748(s1)
20126d7a addi a0, zero, 0x270

BASE 0x201272aa 0xb8006
2012729e c.fswsp fa7, 0xe4(sp)
201272a0 addi a4, a4, 0x2c4
201272a4 c.add a5, a3
201272a6 c.add a2, a3
201272a8 c.li a1, 3
201272aa lui a6, 0xb8006
201272ae c.li a7, 4
201272b0 lui t1, 0xb8005
201272b4 c.li t3, 1
201272b6 lui a0, 0xb8600
201272ba c.li t4, 2
201272bc c.lw a3, 4(a4)
201272be beq a3, a1, 0x2e
201272c2 bltu a1, a3, 0x16
201272c6 beq a3, t3, 0x1c
201272ca beq a3, t4, 0x18
201272ce c.addi a5, 4
201272d0 c.addi a4, 8
201272d2 bne a5, a2, -0x16
201272d6 c.jr ra
201272d8 bne a3, a7, -0xa
201272dc c.lw a3, 0(a4)
201272de c.add a3, t1
201272e0 c.j 6
201272e2 c.lw a3, 0(a4)
201272e4 c.add a3, a0
201272e6 c.lw a3, 0(a3)
201272e8 c.sw a3, 0(a5)
201272ea c.j -0x1c
201272ec c.lw a3, 0(a4)
201272ee c.add a3, a6
201272f0 c.j -0xa
201272f2 lw a3, 0x7bc(a5)
201272f6 c.lui a2, 2
201272f8 addi a5, a2, -0x7c
201272fc lui a4, 0x20210
20127300 addi a2, a2, -0x38
20127304 addi a4, a4, 0x23c
20127308 c.add a5, a3
2012730a c.add a2, a3
2012730c c.li a1, 3
2012730e lui a6, 0xb8006
20127312 c.li a7, 4
20127314 lui t1, 0xb8005
20127318 c.li t3, 1
2012731a lui a0, 0xb8600
2012731e c.li t4, 2
20127320 c.lw a3, 4(a4)
20127322 beq a3, a1, 0x2e
20127326 bltu a1, a3, 0x16
2012732a beq a3, t3, 0x1c
2012732e beq a3, t4, 0x18
20127332 c.addi a5, 4
20127334 c.addi a4, 8
20127336 bne a5, a2, -0x16
2012733a c.jr ra
2012733c bne a3, a7, -0xa

BASE 0x201272b0 0xb8005
201272a4 c.add a5, a3
201272a6 c.add a2, a3
201272a8 c.li a1, 3
201272aa lui a6, 0xb8006
201272ae c.li a7, 4
201272b0 lui t1, 0xb8005
201272b4 c.li t3, 1
201272b6 lui a0, 0xb8600
201272ba c.li t4, 2
201272bc c.lw a3, 4(a4)
201272be beq a3, a1, 0x2e
201272c2 bltu a1, a3, 0x16
201272c6 beq a3, t3, 0x1c
201272ca beq a3, t4, 0x18
201272ce c.addi a5, 4
201272d0 c.addi a4, 8
201272d2 bne a5, a2, -0x16
201272d6 c.jr ra
201272d8 bne a3, a7, -0xa
201272dc c.lw a3, 0(a4)
201272de c.add a3, t1
201272e0 c.j 6
201272e2 c.lw a3, 0(a4)
201272e4 c.add a3, a0
201272e6 c.lw a3, 0(a3)
201272e8 c.sw a3, 0(a5)
201272ea c.j -0x1c
201272ec c.lw a3, 0(a4)
201272ee c.add a3, a6
201272f0 c.j -0xa
201272f2 lw a3, 0x7bc(a5)
201272f6 c.lui a2, 2
201272f8 addi a5, a2, -0x7c
201272fc lui a4, 0x20210
20127300 addi a2, a2, -0x38
20127304 addi a4, a4, 0x23c
20127308 c.add a5, a3
2012730a c.add a2, a3
2012730c c.li a1, 3
2012730e lui a6, 0xb8006
20127312 c.li a7, 4
20127314 lui t1, 0xb8005
20127318 c.li t3, 1
2012731a lui a0, 0xb8600
2012731e c.li t4, 2
20127320 c.lw a3, 4(a4)
20127322 beq a3, a1, 0x2e
20127326 bltu a1, a3, 0x16
2012732a beq a3, t3, 0x1c
2012732e beq a3, t4, 0x18
20127332 c.addi a5, 4
20127334 c.addi a4, 8
20127336 bne a5, a2, -0x16
2012733a c.jr ra
2012733c bne a3, a7, -0xa
20127340 c.lw a3, 0(a4)
20127342 c.add a3, t1
20127344 c.j 6

BASE 0x2012730e 0xb8006
20127302 c.fswsp ft1, 0x78(sp)
20127304 addi a4, a4, 0x23c
20127308 c.add a5, a3
2012730a c.add a2, a3
2012730c c.li a1, 3
2012730e lui a6, 0xb8006
20127312 c.li a7, 4
20127314 lui t1, 0xb8005
20127318 c.li t3, 1
2012731a lui a0, 0xb8600
2012731e c.li t4, 2
20127320 c.lw a3, 4(a4)
20127322 beq a3, a1, 0x2e
20127326 bltu a1, a3, 0x16
2012732a beq a3, t3, 0x1c
2012732e beq a3, t4, 0x18
20127332 c.addi a5, 4
20127334 c.addi a4, 8
20127336 bne a5, a2, -0x16
2012733a c.jr ra
2012733c bne a3, a7, -0xa
20127340 c.lw a3, 0(a4)
20127342 c.add a3, t1
20127344 c.j 6
20127346 c.lw a3, 0(a4)
20127348 c.add a3, a0
2012734a c.lw a3, 0(a3)
2012734c c.sw a3, 0(a5)
2012734e c.j -0x1c
20127350 c.lw a3, 0(a4)
20127352 c.add a3, a6
20127354 c.j -0xa
20127356 c.addi a0, -1
20127358 c.li a5, 4
2012735a bltu a5, a0, 0x166
2012735e lui a5, 0x20211
20127362 addi a5, a5, -0x608
20127366 c.slli a0, 2
20127368 c.add a0, a5
2012736a c.lw a4, 0(a0)
2012736c lui a5, 0x20210
20127370 c.jr a4
20127372 lw a5, 0x7bc(a5)
20127376 lui a4, 0x20210
2012737a slli a3, a1, 2
2012737e addi a4, a4, 0x5ec
20127382 addi a1, a1, 0x7cc
20127386 c.add a4, a3
20127388 c.slli a1, 2
2012738a c.lw a3, 0(a4)
2012738c c.add a1, a5
2012738e c.lw a5, 0xc(a1)
20127390 lui a4, 0xb8600
20127394 c.add a4, a3
20127396 c.sw a5, 0(a4)
20127398 c.jr ra
2012739a lw a7, 0x7bc(a5)
2012739e lui a0, 0x20210
201273a2 .byte 0x93, 0x07

BASE 0x20127314 0xb8005
20127308 c.add a5, a3
2012730a c.add a2, a3
2012730c c.li a1, 3
2012730e lui a6, 0xb8006
20127312 c.li a7, 4
20127314 lui t1, 0xb8005
20127318 c.li t3, 1
2012731a lui a0, 0xb8600
2012731e c.li t4, 2
20127320 c.lw a3, 4(a4)
20127322 beq a3, a1, 0x2e
20127326 bltu a1, a3, 0x16
2012732a beq a3, t3, 0x1c
2012732e beq a3, t4, 0x18
20127332 c.addi a5, 4
20127334 c.addi a4, 8
20127336 bne a5, a2, -0x16
2012733a c.jr ra
2012733c bne a3, a7, -0xa
20127340 c.lw a3, 0(a4)
20127342 c.add a3, t1
20127344 c.j 6
20127346 c.lw a3, 0(a4)
20127348 c.add a3, a0
2012734a c.lw a3, 0(a3)
2012734c c.sw a3, 0(a5)
2012734e c.j -0x1c
20127350 c.lw a3, 0(a4)
20127352 c.add a3, a6
20127354 c.j -0xa
20127356 c.addi a0, -1
20127358 c.li a5, 4
2012735a bltu a5, a0, 0x166
2012735e lui a5, 0x20211
20127362 addi a5, a5, -0x608
20127366 c.slli a0, 2
20127368 c.add a0, a5
2012736a c.lw a4, 0(a0)
2012736c lui a5, 0x20210
20127370 c.jr a4
20127372 lw a5, 0x7bc(a5)
20127376 lui a4, 0x20210
2012737a slli a3, a1, 2
2012737e addi a4, a4, 0x5ec
20127382 addi a1, a1, 0x7cc
20127386 c.add a4, a3
20127388 c.slli a1, 2
2012738a c.lw a3, 0(a4)
2012738c c.add a1, a5
2012738e c.lw a5, 0xc(a1)
20127390 lui a4, 0xb8600
20127394 c.add a4, a3
20127396 c.sw a5, 0(a4)
20127398 c.jr ra
2012739a lw a7, 0x7bc(a5)
2012739e lui a0, 0x20210
201273a2 addi a5, zero, 0x30
201273a6 c.lui a2, 2
201273a8 .byte 0xb3, 0x85

BASE 0x2012742c 0xb8006
20127420 c.fswsp fa7, 0xe4(sp)
20127422 addi a4, a4, 0x2c4
20127426 c.add a5, a3
20127428 c.add a2, a3
2012742a c.li a1, 3
2012742c lui a6, 0xb8006
20127430 c.li a7, 4
20127432 lui t1, 0xb8005
20127436 c.li t3, 1
20127438 lui a0, 0xb8600
2012743c c.li t4, 2
2012743e c.lw a3, 4(a4)
20127440 beq a3, a1, 0x32
20127444 bltu a1, a3, 0x16
20127448 beq a3, t3, 0x1c
2012744c beq a3, t4, 0x18
20127450 c.addi a5, 4
20127452 c.addi a4, 8
20127454 bne a5, a2, -0x16
20127458 c.jr ra
2012745a bne a3, a7, -0xa
2012745e c.lw a3, 0(a4)
20127460 c.add a3, t1
20127462 c.j 6
20127464 c.lw a3, 0(a4)
20127466 c.add a3, a0
20127468 lw t5, 0(a5)
2012746c sw t5, 0(a3)
20127470 c.j -0x20
20127472 c.lw a3, 0(a4)
20127474 c.add a3, a6
20127476 c.j -0xe
20127478 lw a3, 0x7bc(a5)
2012747c c.lui a2, 2
2012747e addi a5, a2, -0x7c
20127482 lui a4, 0x20210
20127486 addi a2, a2, -0x38
2012748a addi a4, a4, 0x23c
2012748e c.add a5, a3
20127490 c.add a2, a3
20127492 c.li a1, 3
20127494 lui a6, 0xb8006
20127498 c.li a7, 4
2012749a lui t1, 0xb8005
2012749e c.li t3, 1
201274a0 lui a0, 0xb8600
201274a4 c.li t4, 2
201274a6 c.lw a3, 4(a4)
201274a8 beq a3, a1, 0x32
201274ac bltu a1, a3, 0x16
201274b0 beq a3, t3, 0x1c
201274b4 beq a3, t4, 0x18
201274b8 c.addi a5, 4
201274ba c.addi a4, 8
201274bc bne a5, a2, -0x16
201274c0 c.jr ra

BASE 0x20127432 0xb8005
20127426 c.add a5, a3
20127428 c.add a2, a3
2012742a c.li a1, 3
2012742c lui a6, 0xb8006
20127430 c.li a7, 4
20127432 lui t1, 0xb8005
20127436 c.li t3, 1
20127438 lui a0, 0xb8600
2012743c c.li t4, 2
2012743e c.lw a3, 4(a4)
20127440 beq a3, a1, 0x32
20127444 bltu a1, a3, 0x16
20127448 beq a3, t3, 0x1c
2012744c beq a3, t4, 0x18
20127450 c.addi a5, 4
20127452 c.addi a4, 8
20127454 bne a5, a2, -0x16
20127458 c.jr ra
2012745a bne a3, a7, -0xa
2012745e c.lw a3, 0(a4)
20127460 c.add a3, t1
20127462 c.j 6
20127464 c.lw a3, 0(a4)
20127466 c.add a3, a0
20127468 lw t5, 0(a5)
2012746c sw t5, 0(a3)
20127470 c.j -0x20
20127472 c.lw a3, 0(a4)
20127474 c.add a3, a6
20127476 c.j -0xe
20127478 lw a3, 0x7bc(a5)
2012747c c.lui a2, 2
2012747e addi a5, a2, -0x7c
20127482 lui a4, 0x20210
20127486 addi a2, a2, -0x38
2012748a addi a4, a4, 0x23c
2012748e c.add a5, a3
20127490 c.add a2, a3
20127492 c.li a1, 3
20127494 lui a6, 0xb8006
20127498 c.li a7, 4
2012749a lui t1, 0xb8005
2012749e c.li t3, 1
201274a0 lui a0, 0xb8600
201274a4 c.li t4, 2
201274a6 c.lw a3, 4(a4)
201274a8 beq a3, a1, 0x32
201274ac bltu a1, a3, 0x16
201274b0 beq a3, t3, 0x1c
201274b4 beq a3, t4, 0x18
201274b8 c.addi a5, 4
201274ba c.addi a4, 8
201274bc bne a5, a2, -0x16
201274c0 c.jr ra
201274c2 bne a3, a7, -0xa
201274c6 c.lw a3, 0(a4)

BASE 0x20127494 0xb8006
20127488 c.fswsp ft1, 0x78(sp)
2012748a addi a4, a4, 0x23c
2012748e c.add a5, a3
20127490 c.add a2, a3
20127492 c.li a1, 3
20127494 lui a6, 0xb8006
20127498 c.li a7, 4
2012749a lui t1, 0xb8005
2012749e c.li t3, 1
201274a0 lui a0, 0xb8600
201274a4 c.li t4, 2
201274a6 c.lw a3, 4(a4)
201274a8 beq a3, a1, 0x32
201274ac bltu a1, a3, 0x16
201274b0 beq a3, t3, 0x1c
201274b4 beq a3, t4, 0x18
201274b8 c.addi a5, 4
201274ba c.addi a4, 8
201274bc bne a5, a2, -0x16
201274c0 c.jr ra
201274c2 bne a3, a7, -0xa
201274c6 c.lw a3, 0(a4)
201274c8 c.add a3, t1
201274ca c.j 6
201274cc c.lw a3, 0(a4)
201274ce c.add a3, a0
201274d0 lw t5, 0(a5)
201274d4 sw t5, 0(a3)
201274d8 c.j -0x20
201274da c.lw a3, 0(a4)
201274dc c.add a3, a6
201274de c.j -0xe
201274e0 csrr a5, 1985
201274e4 andi a5, a5, 0x100
201274e8 c.bnez a5, 0x1e
201274ea c.addi sp, -0x10
201274ec c.swsp ra, 0xc(sp)
201274ee csrrsi a5, 1984, 2
201274f2 jal -0x27382
201274f6 addi a5, zero, 0x100
201274fa csrrs a5, 1985, a5
201274fe c.lwsp ra, 0xc(sp)
20127500 c.addi sp, 0x10
20127502 j -0x27392
20127506 c.jr ra
20127508 c.addi sp, -0x10
2012750a c.swsp ra, 0xc(sp)
2012750c addi a5, zero, 0x100
20127510 csrrc a5, 1985, a5
20127514 jal -0x273a4
20127518 csrrsi a5, 1984, 8
2012751c c.lwsp ra, 0xc(sp)
2012751e c.addi sp, 0x10
20127520 j -0x273b0
20127524 csrrsi a5, 1984, 2
20127528 .byte 0x6f, 0x80

BASE 0x2012749a 0xb8005
2012748e c.add a5, a3
20127490 c.add a2, a3
20127492 c.li a1, 3
20127494 lui a6, 0xb8006
20127498 c.li a7, 4
2012749a lui t1, 0xb8005
2012749e c.li t3, 1
201274a0 lui a0, 0xb8600
201274a4 c.li t4, 2
201274a6 c.lw a3, 4(a4)
201274a8 beq a3, a1, 0x32
201274ac bltu a1, a3, 0x16
201274b0 beq a3, t3, 0x1c
201274b4 beq a3, t4, 0x18
201274b8 c.addi a5, 4
201274ba c.addi a4, 8
201274bc bne a5, a2, -0x16
201274c0 c.jr ra
201274c2 bne a3, a7, -0xa
201274c6 c.lw a3, 0(a4)
201274c8 c.add a3, t1
201274ca c.j 6
201274cc c.lw a3, 0(a4)
201274ce c.add a3, a0
201274d0 lw t5, 0(a5)
201274d4 sw t5, 0(a3)
201274d8 c.j -0x20
201274da c.lw a3, 0(a4)
201274dc c.add a3, a6
201274de c.j -0xe
201274e0 csrr a5, 1985
201274e4 andi a5, a5, 0x100
201274e8 c.bnez a5, 0x1e
201274ea c.addi sp, -0x10
201274ec c.swsp ra, 0xc(sp)
201274ee csrrsi a5, 1984, 2
201274f2 jal -0x27382
201274f6 addi a5, zero, 0x100
201274fa csrrs a5, 1985, a5
201274fe c.lwsp ra, 0xc(sp)
20127500 c.addi sp, 0x10
20127502 j -0x27392
20127506 c.jr ra
20127508 c.addi sp, -0x10
2012750a c.swsp ra, 0xc(sp)
2012750c addi a5, zero, 0x100
20127510 csrrc a5, 1985, a5
20127514 jal -0x273a4
20127518 csrrsi a5, 1984, 8
2012751c c.lwsp ra, 0xc(sp)
2012751e c.addi sp, 0x10
20127520 j -0x273b0
20127524 csrrsi a5, 1984, 2
20127528 j -0x273b8
2012752c csrrsi a5, 1984, 4

BASE 0x2012ba68 0xb8004
2012ba5c c.flw fs1, 0x2c(s1)
2012ba5e lw a5, 0x758(s4)
2012ba62 c.swsp ra, 0x5c(sp)
2012ba64 c.swsp s0, 0x58(sp)
2012ba66 c.swsp s3, 0x4c(sp)
2012ba68 lui s0, 0xb8004
2012ba6c c.swsp s5, 0x44(sp)
2012ba6e c.swsp s2, 0x50(sp)
2012ba70 c.swsp s7, 0x3c(sp)
2012ba72 c.swsp s8, 0x38(sp)
2012ba74 c.swsp s9, 0x34(sp)
2012ba76 c.swsp s10, 0x30(sp)
2012ba78 c.swsp s11, 0x2c(sp)
2012ba7a lbu s2, 0x20(a0)
2012ba7e lw s3, 0x10(a0)
2012ba82 c.mv s5, a0
2012ba84 addi a0, s0, 0x11c
2012ba88 c.jalr a5
2012ba8a c.lui a1, 0xffff0
2012ba8c c.and a1, a0
2012ba8e addi a0, s0, 0x11c
2012ba92 c.jalr s6
2012ba94 lw s6, 0x74c(s1)
2012ba98 lw a5, 0x758(s4)
2012ba9c addi a0, s0, 0x118
2012baa0 c.jalr a5
2012baa2 c.lui a1, 0xfffff
2012baa4 c.and a1, a0
2012baa6 addi a0, s0, 0x118
2012baaa c.jalr s6
2012baac lw s6, 0x74c(s1)
2012bab0 lw a5, 0x758(s4)
2012bab4 addi a0, s0, 0x120
2012bab8 c.jalr a5
2012baba c.lui a1, 0x10
2012babc c.or a1, a0
2012babe addi a0, s0, 0x120
2012bac2 c.jalr s6
2012bac4 c.li a5, 1
2012bac6 bne s2, a5, 0x15e
2012baca lbu s0, 1(s3)
2012bace c.li a4, 3
2012bad0 mul a6, a4, s0
2012bad4 slli a5, s0, 1
2012bad8 lui s6, 0xb8004
2012badc c.mv s9, a4
2012bade c.swsp a5, 8(sp)
2012bae0 c.li a7, 0
2012bae2 c.li s7, 0
2012bae4 c.li s3, 0
2012bae6 c.li a3, 0
2012bae8 addi s6, s6, 0x11c
2012baec slli s10, a6, 1
2012baf0 lw a5, 0x74c(s1)
2012baf4 lui a4, 0xb8004
2012baf8 c.mv a1, s9
2012bafa addi a0, a4, 0x14

BASE 0x2012bad8 0xb8004
2012bacc c.nop 
2012bace c.li a4, 3
2012bad0 mul a6, a4, s0
2012bad4 slli a5, s0, 1
2012bad8 lui s6, 0xb8004
2012badc c.mv s9, a4
2012bade c.swsp a5, 8(sp)
2012bae0 c.li a7, 0
2012bae2 c.li s7, 0
2012bae4 c.li s3, 0
2012bae6 c.li a3, 0
2012bae8 addi s6, s6, 0x11c
2012baec slli s10, a6, 1
2012baf0 lw a5, 0x74c(s1)
2012baf4 lui a4, 0xb8004
2012baf8 c.mv a1, s9
2012bafa addi a0, a4, 0x14
2012bafe c.swsp a7, 0x10(sp)
2012bb00 c.swsp a3, 0xc(sp)
2012bb02 c.jalr a5
2012bb04 lw a5, 0x758(s4)
2012bb08 c.mv a0, s6
2012bb0a andi s8, s9, 0xff
2012bb0e c.jalr a5
2012bb10 c.lui a1, 0xffff0
2012bb12 c.lwsp a7, 0x10(sp)
2012bb14 c.lwsp a3, 0xc(sp)
2012bb16 c.and a1, a0
2012bb18 or a1, s10, a1
2012bb1c c.li a2, 0
2012bb1e c.li s11, 0
2012bb20 lw t5, 0x74c(s1)
2012bb24 slli a0, a2, 0xc
2012bb28 andi t1, a2, 0xff
2012bb2c c.or a1, a0
2012bb2e c.mv a0, s6
2012bb30 c.swsp a7, 0x1c(sp)
2012bb32 c.swsp a3, 0x18(sp)
2012bb34 c.swsp t1, 0x14(sp)
2012bb36 c.swsp a2, 0x10(sp)
2012bb38 c.swsp a1, 0xc(sp)
2012bb3a c.jalr t5
2012bb3c c.jal -0x142
2012bb3e c.lwsp a1, 0xc(sp)
2012bb40 c.lwsp a2, 0x10(sp)
2012bb42 c.lwsp t1, 0x14(sp)
2012bb44 c.lwsp a3, 0x18(sp)
2012bb46 c.lwsp a7, 0x1c(sp)
2012bb48 c.li t3, 0x10
2012bb4a c.li t4, 0xf
2012bb4c c.bnez a0, 0xf0
2012bb4e beqz a7, 0x11e
2012bb52 c.li a5, 0xf
2012bb54 bne a2, a5, 0x18
2012bb58 sub a0, a2, a3
2012bb5c bge s11, a0, 0x10
2012bb60 sub a5, t4, a3
2012bb64 andi s11, a5, 0xff
2012bb68 c.mv s3, a3
2012bb6a c.li s7, 0xf
2012bb6c c.addi a2, 1

BASE 0x2012baf4 0xb8004
2012bae8 addi s6, s6, 0x11c
2012baec slli s10, a6, 1
2012baf0 lw a5, 0x74c(s1)
2012baf4 lui a4, 0xb8004
2012baf8 c.mv a1, s9
2012bafa addi a0, a4, 0x14
2012bafe c.swsp a7, 0x10(sp)
2012bb00 c.swsp a3, 0xc(sp)
2012bb02 c.jalr a5
2012bb04 lw a5, 0x758(s4)
2012bb08 c.mv a0, s6
2012bb0a andi s8, s9, 0xff
2012bb0e c.jalr a5
2012bb10 c.lui a1, 0xffff0
2012bb12 c.lwsp a7, 0x10(sp)
2012bb14 c.lwsp a3, 0xc(sp)
2012bb16 c.and a1, a0
2012bb18 or a1, s10, a1
2012bb1c c.li a2, 0
2012bb1e c.li s11, 0
2012bb20 lw t5, 0x74c(s1)
2012bb24 slli a0, a2, 0xc
2012bb28 andi t1, a2, 0xff
2012bb2c c.or a1, a0
2012bb2e c.mv a0, s6
2012bb30 c.swsp a7, 0x1c(sp)
2012bb32 c.swsp a3, 0x18(sp)
2012bb34 c.swsp t1, 0x14(sp)
2012bb36 c.swsp a2, 0x10(sp)
2012bb38 c.swsp a1, 0xc(sp)
2012bb3a c.jalr t5
2012bb3c c.jal -0x142
2012bb3e c.lwsp a1, 0xc(sp)
2012bb40 c.lwsp a2, 0x10(sp)
2012bb42 c.lwsp t1, 0x14(sp)
2012bb44 c.lwsp a3, 0x18(sp)
2012bb46 c.lwsp a7, 0x1c(sp)
2012bb48 c.li t3, 0x10
2012bb4a c.li t4, 0xf
2012bb4c c.bnez a0, 0xf0
2012bb4e beqz a7, 0x11e
2012bb52 c.li a5, 0xf
2012bb54 bne a2, a5, 0x18
2012bb58 sub a0, a2, a3
2012bb5c bge s11, a0, 0x10
2012bb60 sub a5, t4, a3
2012bb64 andi s11, a5, 0xff
2012bb68 c.mv s3, a3
2012bb6a c.li s7, 0xf
2012bb6c c.addi a2, 1
2012bb6e bne a2, t3, -0x4e
2012bb72 bnez s11, 0x10
2012bb76 c.lwsp a5, 8(sp)
2012bb78 c.li a2, 4
2012bb7a c.add s10, a5
2012bb7c bne s9, a2, 0xbc
2012bb80 c.li s8, 5
2012bb82 lw s10, 0x74c(s1)
2012bb86 lw a4, 0x758(s4)

BASE 0x2012bb8a 0xb8004
2012bb7e c.addi4spn a1, sp, 0x154
2012bb80 c.li s8, 5
2012bb82 lw s10, 0x74c(s1)
2012bb86 lw a4, 0x758(s4)
2012bb8a lui s6, 0xb8004
2012bb8e addi a0, s6, 0x120
2012bb92 c.jalr a4
2012bb94 c.lui s9, 0xffff0
2012bb96 addi a1, s9, -1
2012bb9a c.and a1, a0
2012bb9c addi a0, s6, 0x120
2012bba0 c.jalr s10
2012bba2 c.li s10, 1
2012bba4 beqz s11, 0x60
2012bba8 mul s0, s8, s0
2012bbac lw a5, 0x758(s4)
2012bbb0 addi a0, s6, 0x11c
2012bbb4 c.add s3, s7
2012bbb6 c.jalr a5
2012bbb8 srai s3, s3, 1
2012bbbc lw a5, 0x74c(s1)
2012bbc0 slli a1, s3, 0xc
2012bbc4 and a0, a0, s9
2012bbc8 c.slli s2, 2
2012bbca c.slli s0, 1
2012bbcc c.or a1, s0
2012bbce c.or a1, a0
2012bbd0 addi a0, s6, 0x11c
2012bbd4 c.jalr a5
2012bbd6 lw a5, 0x758(s4)
2012bbda addi a0, s6, 0x118
2012bbde c.add s2, s5
2012bbe0 c.jalr a5
2012bbe2 lw a5, 0x74c(s1)
2012bbe6 c.lui a1, 0xfffff
2012bbe8 c.and a1, a0
2012bbea c.or a1, s0
2012bbec addi a0, s6, 0x118
2012bbf0 c.jalr a5
2012bbf2 sb s10, 3(s2)
2012bbf6 sb s8, 0(s2)
2012bbfa sb s3, 1(s2)
2012bbfe sb s10, 0x24(s5)
2012bc02 c.li s10, 0
2012bc04 c.lwsp ra, 0x5c(sp)
2012bc06 c.lwsp s0, 0x58(sp)
2012bc08 c.lwsp s1, 0x54(sp)
2012bc0a c.lwsp s2, 0x50(sp)
2012bc0c c.lwsp s3, 0x4c(sp)
2012bc0e c.lwsp s4, 0x48(sp)
2012bc10 c.lwsp s5, 0x44(sp)
2012bc12 c.lwsp s6, 0x40(sp)
2012bc14 c.lwsp s7, 0x3c(sp)
2012bc16 c.lwsp s8, 0x38(sp)
2012bc18 c.lwsp s9, 0x34(sp)
2012bc1a c.lwsp s11, 0x2c(sp)
2012bc1c c.mv a0, s10
2012bc1e c.lwsp s10, 0x30(sp)

BASE 0x2012bc76 0xb8004
2012bc6a c.j -0xfe
2012bc6c c.mv a3, t1
2012bc6e c.li a7, 1
2012bc70 c.j -0x104
2012bc72 c.addi sp, -0x20
2012bc74 c.swsp s0, 0x18(sp)
2012bc76 lui s0, 0xb8004
2012bc7a c.swsp s1, 0x14(sp)
2012bc7c c.swsp s2, 0x10(sp)
2012bc7e c.swsp ra, 0x1c(sp)
2012bc80 sb zero, 0xf(sp)
2012bc84 lui s2, 0x20201
2012bc88 addi s0, s0, 0x28
2012bc8c c.li s1, 1
2012bc8e lw a5, 0x758(s2)
2012bc92 c.mv a0, s0
2012bc94 c.jalr a5
2012bc96 c.andi a0, 1
2012bc98 sb a0, 0xf(sp)
2012bc9c lbu a5, 0xf(sp)
2012bca0 andi a5, a5, 0xff
2012bca4 beq a5, s1, -0x16
2012bca8 c.lwsp ra, 0x1c(sp)
2012bcaa c.lwsp s0, 0x18(sp)
2012bcac c.lwsp s1, 0x14(sp)
2012bcae c.lwsp s2, 0x10(sp)
2012bcb0 c.addi16sp sp, 0x20
2012bcb2 c.jr ra
2012bcb4 c.addi sp, -0x20
2012bcb6 c.swsp s0, 0x18(sp)
2012bcb8 lui s0, 0xb8004
2012bcbc c.swsp s1, 0x14(sp)
2012bcbe c.swsp s2, 0x10(sp)
2012bcc0 c.swsp ra, 0x1c(sp)
2012bcc2 sb zero, 0xf(sp)
2012bcc6 lui s2, 0x20201
2012bcca c.addi s0, 8
2012bccc c.li s1, 1
2012bcce lw a5, 0x758(s2)
2012bcd2 c.mv a0, s0
2012bcd4 c.jalr a5
2012bcd6 c.andi a0, 1
2012bcd8 sb a0, 0xf(sp)
2012bcdc lbu a5, 0xf(sp)
2012bce0 andi a5, a5, 0xff
2012bce4 beq a5, s1, -0x16
2012bce8 c.lwsp ra, 0x1c(sp)
2012bcea c.lwsp s0, 0x18(sp)
2012bcec c.lwsp s1, 0x14(sp)
2012bcee c.lwsp s2, 0x10(sp)
2012bcf0 c.addi16sp sp, 0x20
2012bcf2 c.jr ra
2012bcf4 c.addi sp, -0x20
2012bcf6 c.swsp s4, 8(sp)
2012bcf8 lui s4, 0x20201
2012bcfc lw a5, 0x758(s4)
2012bd00 c.swsp s0, 0x18(sp)
2012bd02 lui s0, 0xb8004
2012bd06 c.swsp ra, 0x1c(sp)
2012bd08 c.swsp s1, 0x14(sp)
2012bd0a c.swsp s2, 0x10(sp)

BASE 0x2012bcb8 0xb8004
2012bcac c.lwsp s1, 0x14(sp)
2012bcae c.lwsp s2, 0x10(sp)
2012bcb0 c.addi16sp sp, 0x20
2012bcb2 c.jr ra
2012bcb4 c.addi sp, -0x20
2012bcb6 c.swsp s0, 0x18(sp)
2012bcb8 lui s0, 0xb8004
2012bcbc c.swsp s1, 0x14(sp)
2012bcbe c.swsp s2, 0x10(sp)
2012bcc0 c.swsp ra, 0x1c(sp)
2012bcc2 sb zero, 0xf(sp)
2012bcc6 lui s2, 0x20201
2012bcca c.addi s0, 8
2012bccc c.li s1, 1
2012bcce lw a5, 0x758(s2)
2012bcd2 c.mv a0, s0
2012bcd4 c.jalr a5
2012bcd6 c.andi a0, 1
2012bcd8 sb a0, 0xf(sp)
2012bcdc lbu a5, 0xf(sp)
2012bce0 andi a5, a5, 0xff
2012bce4 beq a5, s1, -0x16
2012bce8 c.lwsp ra, 0x1c(sp)
2012bcea c.lwsp s0, 0x18(sp)
2012bcec c.lwsp s1, 0x14(sp)
2012bcee c.lwsp s2, 0x10(sp)
2012bcf0 c.addi16sp sp, 0x20
2012bcf2 c.jr ra
2012bcf4 c.addi sp, -0x20
2012bcf6 c.swsp s4, 8(sp)
2012bcf8 lui s4, 0x20201
2012bcfc lw a5, 0x758(s4)
2012bd00 c.swsp s0, 0x18(sp)
2012bd02 lui s0, 0xb8004
2012bd06 c.swsp ra, 0x1c(sp)
2012bd08 c.swsp s1, 0x14(sp)
2012bd0a c.swsp s2, 0x10(sp)
2012bd0c c.swsp s3, 0xc(sp)
2012bd0e c.mv s1, a0
2012bd10 addi a0, s0, 0x11c
2012bd14 c.jalr a5
2012bd16 lui s2, 0x20201
2012bd1a lw a5, 0x74c(s2)
2012bd1e c.lui s3, 0xfffff
2012bd20 and a1, a0, s3
2012bd24 c.or a1, s1
2012bd26 addi a0, s0, 0x11c
2012bd2a c.jalr a5
2012bd2c lw a5, 0x758(s4)
2012bd30 addi a0, s0, 0x118
2012bd34 c.jalr a5
2012bd36 and a1, a0, s3
2012bd3a addi a0, s0, 0x118
2012bd3e c.lwsp s0, 0x18(sp)
2012bd40 lw a5, 0x74c(s2)
2012bd44 c.lwsp ra, 0x1c(sp)
2012bd46 c.lwsp s2, 0x10(sp)
2012bd48 c.lwsp s3, 0xc(sp)
2012bd4a c.lwsp s4, 8(sp)
2012bd4c c.or a1, s1

BASE 0x2012bd02 0xb8004
2012bcf6 c.swsp s4, 8(sp)
2012bcf8 lui s4, 0x20201
2012bcfc lw a5, 0x758(s4)
2012bd00 c.swsp s0, 0x18(sp)
2012bd02 lui s0, 0xb8004
2012bd06 c.swsp ra, 0x1c(sp)
2012bd08 c.swsp s1, 0x14(sp)
2012bd0a c.swsp s2, 0x10(sp)
2012bd0c c.swsp s3, 0xc(sp)
2012bd0e c.mv s1, a0
2012bd10 addi a0, s0, 0x11c
2012bd14 c.jalr a5
2012bd16 lui s2, 0x20201
2012bd1a lw a5, 0x74c(s2)
2012bd1e c.lui s3, 0xfffff
2012bd20 and a1, a0, s3
2012bd24 c.or a1, s1
2012bd26 addi a0, s0, 0x11c
2012bd2a c.jalr a5
2012bd2c lw a5, 0x758(s4)
2012bd30 addi a0, s0, 0x118
2012bd34 c.jalr a5
2012bd36 and a1, a0, s3
2012bd3a addi a0, s0, 0x118
2012bd3e c.lwsp s0, 0x18(sp)
2012bd40 lw a5, 0x74c(s2)
2012bd44 c.lwsp ra, 0x1c(sp)
2012bd46 c.lwsp s2, 0x10(sp)
2012bd48 c.lwsp s3, 0xc(sp)
2012bd4a c.lwsp s4, 8(sp)
2012bd4c c.or a1, s1
2012bd4e c.lwsp s1, 0x14(sp)
2012bd50 c.addi16sp sp, 0x20
2012bd52 c.jr a5
2012bd54 lui a5, 0x20201
2012bd58 c.addi sp, -0x10
2012bd5a lw a5, 0x758(a5)
2012bd5e c.swsp s1, 4(sp)
2012bd60 lui s1, 0xb8004
2012bd64 c.swsp s0, 8(sp)
2012bd66 c.swsp ra, 0xc(sp)
2012bd68 c.mv s0, a0
2012bd6a addi a0, s1, 0x11c
2012bd6e c.jalr a5
2012bd70 c.lui a1, 0xffff1
2012bd72 c.addi a1, -1
2012bd74 c.and a1, a0
2012bd76 c.slli s0, 0xc
2012bd78 lui a5, 0x20201
2012bd7c c.or a1, s0
2012bd7e c.lwsp s0, 8(sp)
2012bd80 c.lwsp ra, 0xc(sp)
2012bd82 lw a5, 0x74c(a5)
2012bd86 addi a0, s1, 0x11c
2012bd8a c.lwsp s1, 4(sp)
2012bd8c c.addi sp, 0x10
2012bd8e c.jr a5
2012bd90 lui a5, 0x20201
2012bd94 lw a5, 0x758(a5)

BASE 0x2012bd60 0xb8004
2012bd54 lui a5, 0x20201
2012bd58 c.addi sp, -0x10
2012bd5a lw a5, 0x758(a5)
2012bd5e c.swsp s1, 4(sp)
2012bd60 lui s1, 0xb8004
2012bd64 c.swsp s0, 8(sp)
2012bd66 c.swsp ra, 0xc(sp)
2012bd68 c.mv s0, a0
2012bd6a addi a0, s1, 0x11c
2012bd6e c.jalr a5
2012bd70 c.lui a1, 0xffff1
2012bd72 c.addi a1, -1
2012bd74 c.and a1, a0
2012bd76 c.slli s0, 0xc
2012bd78 lui a5, 0x20201
2012bd7c c.or a1, s0
2012bd7e c.lwsp s0, 8(sp)
2012bd80 c.lwsp ra, 0xc(sp)
2012bd82 lw a5, 0x74c(a5)
2012bd86 addi a0, s1, 0x11c
2012bd8a c.lwsp s1, 4(sp)
2012bd8c c.addi sp, 0x10
2012bd8e c.jr a5
2012bd90 lui a5, 0x20201
2012bd94 lw a5, 0x758(a5)
2012bd98 c.addi sp, -0x10
2012bd9a c.swsp s0, 8(sp)
2012bd9c c.swsp ra, 0xc(sp)
2012bd9e c.mv s0, a0
2012bda0 lui a0, 0xb8004
2012bda4 c.jalr a5
2012bda6 lui a5, 0x20201
2012bdaa lbu a4, 0x22(s0)
2012bdae lw a3, 0x74c(a5)
2012bdb2 lbu a5, 0x21(s0)
2012bdb6 c.slli a4, 0x10
2012bdb8 lui a1, 0xffc10
2012bdbc c.slli a5, 0x14
2012bdbe c.or a5, a4
2012bdc0 lbu a4, 0x23(s0)
2012bdc4 c.lwsp s0, 8(sp)
2012bdc6 c.lwsp ra, 0xc(sp)
2012bdc8 c.addi a1, -1
2012bdca c.slli a4, 0x12
2012bdcc c.and a1, a0
2012bdce c.or a5, a4
2012bdd0 c.or a1, a5
2012bdd2 lui a0, 0xb8004
2012bdd6 c.addi sp, 0x10
2012bdd8 c.jr a3
2012bdda c.addi sp, -0x10
2012bddc c.swsp s0, 8(sp)
2012bdde c.swsp ra, 0xc(sp)
2012bde0 c.swsp s1, 4(sp)
2012bde2 lbu a4, 0x20(a0)
2012bde6 c.li a3, 1
2012bde8 c.lw a5, 0xc(a0)
2012bdea c.mv s0, a0
2012bdec beq a4, a3, 0x60
2012bdf0 c.li a3, 2
2012bdf2 beq a4, a3, 0x6c

BASE 0x2012bda0 0xb8004
2012bd94 lw a5, 0x758(a5)
2012bd98 c.addi sp, -0x10
2012bd9a c.swsp s0, 8(sp)
2012bd9c c.swsp ra, 0xc(sp)
2012bd9e c.mv s0, a0
2012bda0 lui a0, 0xb8004
2012bda4 c.jalr a5
2012bda6 lui a5, 0x20201
2012bdaa lbu a4, 0x22(s0)
2012bdae lw a3, 0x74c(a5)
2012bdb2 lbu a5, 0x21(s0)
2012bdb6 c.slli a4, 0x10
2012bdb8 lui a1, 0xffc10
2012bdbc c.slli a5, 0x14
2012bdbe c.or a5, a4
2012bdc0 lbu a4, 0x23(s0)
2012bdc4 c.lwsp s0, 8(sp)
2012bdc6 c.lwsp ra, 0xc(sp)
2012bdc8 c.addi a1, -1
2012bdca c.slli a4, 0x12
2012bdcc c.and a1, a0
2012bdce c.or a5, a4
2012bdd0 c.or a1, a5
2012bdd2 lui a0, 0xb8004
2012bdd6 c.addi sp, 0x10
2012bdd8 c.jr a3
2012bdda c.addi sp, -0x10
2012bddc c.swsp s0, 8(sp)
2012bdde c.swsp ra, 0xc(sp)
2012bde0 c.swsp s1, 4(sp)
2012bde2 lbu a4, 0x20(a0)
2012bde6 c.li a3, 1
2012bde8 c.lw a5, 0xc(a0)
2012bdea c.mv s0, a0
2012bdec beq a4, a3, 0x60
2012bdf0 c.li a3, 2
2012bdf2 beq a4, a3, 0x6c
2012bdf6 c.bnez a4, 0x12
2012bdf8 sb zero, 0x21(a0)
2012bdfc sh zero, 0x22(a0)
2012be00 lbu a5, 0xf(a5)
2012be04 sb a5, 0x18(s0)
2012be08 c.mv a0, s0
2012be0a c.jal -0x7a
2012be0c c.li a5, 3
2012be0e sb a5, 0x1f(s0)
2012be12 lui a5, 0x20201
2012be16 lw a5, 0x758(a5)
2012be1a lui s1, 0xb8004
2012be1e addi a0, s1, 0x118
2012be22 c.jalr a5
2012be24 lui a5, 0x20201
2012be28 lw a4, 0x74c(a5)
2012be2c lbu a5, 0x1f(s0)
2012be30 c.lui a1, 1
2012be32 addi a3, a1, -1

BASE 0x2012bdd2 0xb8004
2012bdc6 c.lwsp ra, 0xc(sp)
2012bdc8 c.addi a1, -1
2012bdca c.slli a4, 0x12
2012bdcc c.and a1, a0
2012bdce c.or a5, a4
2012bdd0 c.or a1, a5
2012bdd2 lui a0, 0xb8004
2012bdd6 c.addi sp, 0x10
2012bdd8 c.jr a3
2012bdda c.addi sp, -0x10
2012bddc c.swsp s0, 8(sp)
2012bdde c.swsp ra, 0xc(sp)
2012bde0 c.swsp s1, 4(sp)
2012bde2 lbu a4, 0x20(a0)
2012bde6 c.li a3, 1
2012bde8 c.lw a5, 0xc(a0)
2012bdea c.mv s0, a0
2012bdec beq a4, a3, 0x60
2012bdf0 c.li a3, 2
2012bdf2 beq a4, a3, 0x6c
2012bdf6 c.bnez a4, 0x12
2012bdf8 sb zero, 0x21(a0)
2012bdfc sh zero, 0x22(a0)
2012be00 lbu a5, 0xf(a5)
2012be04 sb a5, 0x18(s0)
2012be08 c.mv a0, s0
2012be0a c.jal -0x7a
2012be0c c.li a5, 3
2012be0e sb a5, 0x1f(s0)
2012be12 lui a5, 0x20201
2012be16 lw a5, 0x758(a5)
2012be1a lui s1, 0xb8004
2012be1e addi a0, s1, 0x118
2012be22 c.jalr a5
2012be24 lui a5, 0x20201
2012be28 lw a4, 0x74c(a5)
2012be2c lbu a5, 0x1f(s0)
2012be30 c.lui a1, 1
2012be32 addi a3, a1, -1
2012be36 c.lwsp s0, 8(sp)
2012be38 c.and a0, a3
2012be3a c.slli a5, 0x10
2012be3c c.lwsp ra, 0xc(sp)
2012be3e c.or a5, a0
2012be40 addi a0, s1, 0x118
2012be44 c.lwsp s1, 4(sp)
2012be46 c.or a1, a5
2012be48 c.addi sp, 0x10
2012be4a c.jr a4
2012be4c addi a4, zero, 0x101
2012be50 sb zero, 0x21(a0)
2012be54 sh a4, 0x22(a0)
2012be58 lbu a5, 0x11(a5)
2012be5c c.j -0x58
2012be5e addi a4, zero, 0x202
2012be62 sb zero, 0x21(a0)
2012be66 .byte 0x23, 0x11

BASE 0x2012be1a 0xb8004
2012be0e sb a5, 0x1f(s0)
2012be12 lui a5, 0x20201
2012be16 lw a5, 0x758(a5)
2012be1a lui s1, 0xb8004
2012be1e addi a0, s1, 0x118
2012be22 c.jalr a5
2012be24 lui a5, 0x20201
2012be28 lw a4, 0x74c(a5)
2012be2c lbu a5, 0x1f(s0)
2012be30 c.lui a1, 1
2012be32 addi a3, a1, -1
2012be36 c.lwsp s0, 8(sp)
2012be38 c.and a0, a3
2012be3a c.slli a5, 0x10
2012be3c c.lwsp ra, 0xc(sp)
2012be3e c.or a5, a0
2012be40 addi a0, s1, 0x118
2012be44 c.lwsp s1, 4(sp)
2012be46 c.or a1, a5
2012be48 c.addi sp, 0x10
2012be4a c.jr a4
2012be4c addi a4, zero, 0x101
2012be50 sb zero, 0x21(a0)
2012be54 sh a4, 0x22(a0)
2012be58 lbu a5, 0x11(a5)
2012be5c c.j -0x58
2012be5e addi a4, zero, 0x202
2012be62 sb zero, 0x21(a0)
2012be66 sh a4, 0x22(a0)
2012be6a lbu a5, 0x12(a5)
2012be6e c.j -0x6a
2012be70 lui a5, 0x20201
2012be74 lw a5, 0x758(a5)
2012be78 c.addi sp, -0x10
2012be7a c.swsp s0, 8(sp)
2012be7c c.swsp ra, 0xc(sp)
2012be7e c.mv s0, a0
2012be80 lui a0, 0xb8004
2012be84 c.jalr a5
2012be86 andi a1, a0, -0x301
2012be8a c.slli s0, 8
2012be8c lui a5, 0x20201
2012be90 c.or a1, s0
2012be92 c.lwsp s0, 8(sp)
2012be94 c.lwsp ra, 0xc(sp)
2012be96 lw a5, 0x74c(a5)
2012be9a lui a0, 0xb8004
2012be9e c.addi sp, 0x10
2012bea0 c.jr a5
2012bea2 lui a5, 0x20201
2012bea6 c.addi sp, -0x10
2012bea8 lw a5, 0x758(a5)
2012beac c.swsp s1, 4(sp)
2012beae .byte 0xb7, 0x44

BASE 0x2012be80 0xb8004
2012be74 lw a5, 0x758(a5)
2012be78 c.addi sp, -0x10
2012be7a c.swsp s0, 8(sp)
2012be7c c.swsp ra, 0xc(sp)
2012be7e c.mv s0, a0
2012be80 lui a0, 0xb8004
2012be84 c.jalr a5
2012be86 andi a1, a0, -0x301
2012be8a c.slli s0, 8
2012be8c lui a5, 0x20201
2012be90 c.or a1, s0
2012be92 c.lwsp s0, 8(sp)
2012be94 c.lwsp ra, 0xc(sp)
2012be96 lw a5, 0x74c(a5)
2012be9a lui a0, 0xb8004
2012be9e c.addi sp, 0x10
2012bea0 c.jr a5
2012bea2 lui a5, 0x20201
2012bea6 c.addi sp, -0x10
2012bea8 lw a5, 0x758(a5)
2012beac c.swsp s1, 4(sp)
2012beae lui s1, 0xb8004
2012beb2 c.swsp s0, 8(sp)
2012beb4 c.swsp ra, 0xc(sp)
2012beb6 c.mv s0, a0
2012beb8 addi a0, s1, 0x11c
2012bebc c.jalr a5
2012bebe lui a1, 0xfff10
2012bec2 c.addi a1, -1
2012bec4 c.and a1, a0
2012bec6 c.slli s0, 0x10
2012bec8 lui a5, 0x20201
2012becc c.or a1, s0
2012bece c.lwsp s0, 8(sp)
2012bed0 c.lwsp ra, 0xc(sp)
2012bed2 lw a5, 0x74c(a5)
2012bed6 addi a0, s1, 0x11c
2012beda c.lwsp s1, 4(sp)
2012bedc c.addi sp, 0x10
2012bede c.jr a5
2012bee0 lui a5, 0x20201
2012bee4 c.addi sp, -0x10
2012bee6 lw a5, 0x758(a5)
2012beea c.swsp s1, 4(sp)
2012beec lui s1, 0xb8004
2012bef0 c.swsp s0, 8(sp)
2012bef2 c.swsp ra, 0xc(sp)
2012bef4 c.mv s0, a0
2012bef6 addi a0, s1, 0x118
2012befa c.jalr a5
2012befc lui a1, 0xfff10
2012bf00 c.addi a1, -1
2012bf02 c.and a1, a0
2012bf04 c.slli s0, 0x10
2012bf06 lui a5, 0x20201
2012bf0a c.or a1, s0
2012bf0c c.lwsp s0, 8(sp)
2012bf0e c.lwsp ra, 0xc(sp)
2012bf10 lw a5, 0x74c(a5)
2012bf14 .byte 0x13, 0x85

BASE 0x2012be9a 0xb8004
2012be8e c.fld fs0, 0x40(s0)
2012be90 c.or a1, s0
2012be92 c.lwsp s0, 8(sp)
2012be94 c.lwsp ra, 0xc(sp)
2012be96 lw a5, 0x74c(a5)
2012be9a lui a0, 0xb8004
2012be9e c.addi sp, 0x10
2012bea0 c.jr a5
2012bea2 lui a5, 0x20201
2012bea6 c.addi sp, -0x10
2012bea8 lw a5, 0x758(a5)
2012beac c.swsp s1, 4(sp)
2012beae lui s1, 0xb8004
2012beb2 c.swsp s0, 8(sp)
2012beb4 c.swsp ra, 0xc(sp)
2012beb6 c.mv s0, a0
2012beb8 addi a0, s1, 0x11c
2012bebc c.jalr a5
2012bebe lui a1, 0xfff10
2012bec2 c.addi a1, -1
2012bec4 c.and a1, a0
2012bec6 c.slli s0, 0x10
2012bec8 lui a5, 0x20201
2012becc c.or a1, s0
2012bece c.lwsp s0, 8(sp)
2012bed0 c.lwsp ra, 0xc(sp)
2012bed2 lw a5, 0x74c(a5)
2012bed6 addi a0, s1, 0x11c
2012beda c.lwsp s1, 4(sp)
2012bedc c.addi sp, 0x10
2012bede c.jr a5
2012bee0 lui a5, 0x20201
2012bee4 c.addi sp, -0x10
2012bee6 lw a5, 0x758(a5)
2012beea c.swsp s1, 4(sp)
2012beec lui s1, 0xb8004
2012bef0 c.swsp s0, 8(sp)
2012bef2 c.swsp ra, 0xc(sp)
2012bef4 c.mv s0, a0
2012bef6 addi a0, s1, 0x118
2012befa c.jalr a5
2012befc lui a1, 0xfff10
2012bf00 c.addi a1, -1
2012bf02 c.and a1, a0
2012bf04 c.slli s0, 0x10
2012bf06 lui a5, 0x20201
2012bf0a c.or a1, s0
2012bf0c c.lwsp s0, 8(sp)
2012bf0e c.lwsp ra, 0xc(sp)
2012bf10 lw a5, 0x74c(a5)
2012bf14 addi a0, s1, 0x118
2012bf18 c.lwsp s1, 4(sp)
2012bf1a c.addi sp, 0x10
2012bf1c c.jr a5
2012bf1e c.addi16sp sp, -0x30
2012bf20 c.swsp s1, 0x24(sp)
2012bf22 lui s1, 0x20201
2012bf26 lw a5, 0x758(s1)
2012bf2a c.swsp ra, 0x2c(sp)
2012bf2c c.swsp s0, 0x28(sp)
2012bf2e c.swsp s2, 0x20(sp)

BASE 0x2012beae 0xb8004
2012bea2 lui a5, 0x20201
2012bea6 c.addi sp, -0x10
2012bea8 lw a5, 0x758(a5)
2012beac c.swsp s1, 4(sp)
2012beae lui s1, 0xb8004
2012beb2 c.swsp s0, 8(sp)
2012beb4 c.swsp ra, 0xc(sp)
2012beb6 c.mv s0, a0
2012beb8 addi a0, s1, 0x11c
2012bebc c.jalr a5
2012bebe lui a1, 0xfff10
2012bec2 c.addi a1, -1
2012bec4 c.and a1, a0
2012bec6 c.slli s0, 0x10
2012bec8 lui a5, 0x20201
2012becc c.or a1, s0
2012bece c.lwsp s0, 8(sp)
2012bed0 c.lwsp ra, 0xc(sp)
2012bed2 lw a5, 0x74c(a5)
2012bed6 addi a0, s1, 0x11c
2012beda c.lwsp s1, 4(sp)
2012bedc c.addi sp, 0x10
2012bede c.jr a5
2012bee0 lui a5, 0x20201
2012bee4 c.addi sp, -0x10
2012bee6 lw a5, 0x758(a5)
2012beea c.swsp s1, 4(sp)
2012beec lui s1, 0xb8004
2012bef0 c.swsp s0, 8(sp)
2012bef2 c.swsp ra, 0xc(sp)
2012bef4 c.mv s0, a0
2012bef6 addi a0, s1, 0x118
2012befa c.jalr a5
2012befc lui a1, 0xfff10
2012bf00 c.addi a1, -1
2012bf02 c.and a1, a0
2012bf04 c.slli s0, 0x10
2012bf06 lui a5, 0x20201
2012bf0a c.or a1, s0
2012bf0c c.lwsp s0, 8(sp)
2012bf0e c.lwsp ra, 0xc(sp)
2012bf10 lw a5, 0x74c(a5)
2012bf14 addi a0, s1, 0x118
2012bf18 c.lwsp s1, 4(sp)
2012bf1a c.addi sp, 0x10
2012bf1c c.jr a5
2012bf1e c.addi16sp sp, -0x30
2012bf20 c.swsp s1, 0x24(sp)
2012bf22 lui s1, 0x20201
2012bf26 lw a5, 0x758(s1)
2012bf2a c.swsp ra, 0x2c(sp)
2012bf2c c.swsp s0, 0x28(sp)
2012bf2e c.swsp s2, 0x20(sp)
2012bf30 c.swsp s3, 0x1c(sp)
2012bf32 c.swsp s4, 0x18(sp)
2012bf34 c.swsp s5, 0x14(sp)
2012bf36 c.swsp s6, 0x10(sp)
2012bf38 c.swsp s7, 0xc(sp)
2012bf3a c.swsp s8, 8(sp)
2012bf3c c.swsp s9, 4(sp)
2012bf3e c.swsp s10, 0(sp)
2012bf40 c.mv s6, a0
2012bf42 .byte 0x37, 0x45

BASE 0x2012beec 0xb8004
2012bee0 lui a5, 0x20201
2012bee4 c.addi sp, -0x10
2012bee6 lw a5, 0x758(a5)
2012beea c.swsp s1, 4(sp)
2012beec lui s1, 0xb8004
2012bef0 c.swsp s0, 8(sp)
2012bef2 c.swsp ra, 0xc(sp)
2012bef4 c.mv s0, a0
2012bef6 addi a0, s1, 0x118
2012befa c.jalr a5
2012befc lui a1, 0xfff10
2012bf00 c.addi a1, -1
2012bf02 c.and a1, a0
2012bf04 c.slli s0, 0x10
2012bf06 lui a5, 0x20201
2012bf0a c.or a1, s0
2012bf0c c.lwsp s0, 8(sp)
2012bf0e c.lwsp ra, 0xc(sp)
2012bf10 lw a5, 0x74c(a5)
2012bf14 addi a0, s1, 0x118
2012bf18 c.lwsp s1, 4(sp)
2012bf1a c.addi sp, 0x10
2012bf1c c.jr a5
2012bf1e c.addi16sp sp, -0x30
2012bf20 c.swsp s1, 0x24(sp)
2012bf22 lui s1, 0x20201
2012bf26 lw a5, 0x758(s1)
2012bf2a c.swsp ra, 0x2c(sp)
2012bf2c c.swsp s0, 0x28(sp)
2012bf2e c.swsp s2, 0x20(sp)
2012bf30 c.swsp s3, 0x1c(sp)
2012bf32 c.swsp s4, 0x18(sp)
2012bf34 c.swsp s5, 0x14(sp)
2012bf36 c.swsp s6, 0x10(sp)
2012bf38 c.swsp s7, 0xc(sp)
2012bf3a c.swsp s8, 8(sp)
2012bf3c c.swsp s9, 4(sp)
2012bf3e c.swsp s10, 0(sp)
2012bf40 c.mv s6, a0
2012bf42 lui a0, 0xb8004
2012bf46 c.mv s5, a2
2012bf48 c.mv s2, a3
2012bf4a c.mv s10, a1
2012bf4c c.jalr a5
2012bf4e lw a5, 0x758(s1)
2012bf52 lui s0, 0xb8004
2012bf56 c.mv s3, a0
2012bf58 addi a0, s0, 0x14
2012bf5c c.jalr a5
2012bf5e lw a5, 0x758(s1)
2012bf62 c.mv s8, a0
2012bf64 addi a0, s0, 0x118
2012bf68 c.jalr a5
2012bf6a lw a5, 0x758(s1)
2012bf6e c.mv s7, a0
2012bf70 addi a0, s0, 0x11c
2012bf74 c.jalr a5
2012bf76 srli s4, a0, 0xc
2012bf7a c.jal -0x308
2012bf7c lui a0, 0xffc10
2012bf80 .byte 0x13, 0x05

BASE 0x2012bf42 0xb8004
2012bf36 c.swsp s6, 0x10(sp)
2012bf38 c.swsp s7, 0xc(sp)
2012bf3a c.swsp s8, 8(sp)
2012bf3c c.swsp s9, 4(sp)
2012bf3e c.swsp s10, 0(sp)
2012bf40 c.mv s6, a0
2012bf42 lui a0, 0xb8004
2012bf46 c.mv s5, a2
2012bf48 c.mv s2, a3
2012bf4a c.mv s10, a1
2012bf4c c.jalr a5
2012bf4e lw a5, 0x758(s1)
2012bf52 lui s0, 0xb8004
2012bf56 c.mv s3, a0
2012bf58 addi a0, s0, 0x14
2012bf5c c.jalr a5
2012bf5e lw a5, 0x758(s1)
2012bf62 c.mv s8, a0
2012bf64 addi a0, s0, 0x118
2012bf68 c.jalr a5
2012bf6a lw a5, 0x758(s1)
2012bf6e c.mv s7, a0
2012bf70 addi a0, s0, 0x11c
2012bf74 c.jalr a5
2012bf76 srli s4, a0, 0xc
2012bf7a c.jal -0x308
2012bf7c lui a0, 0xffc10
2012bf80 addi a0, a0, -0x301
2012bf84 and a0, s3, a0
2012bf88 lui s3, 0x20201
2012bf8c lw a5, 0x74c(s3)
2012bf90 ori a1, a0, 0x300
2012bf94 lui a0, 0xb8004
2012bf98 c.jalr a5
2012bf9a lw a5, 0x74c(s3)
2012bf9e c.li a1, 4
2012bfa0 addi a0, s0, 0x14
2012bfa4 c.jalr a5
2012bfa6 c.li a0, 2
2012bfa8 c.jal -0x254
2012bfaa lw a5, 0x74c(s3)
2012bfae addi a0, s0, 0x118
2012bfb2 c.lui a1, 1
2012bfb4 c.jalr a5
2012bfb6 lui s9, 0x20201
2012bfba lw a5, 0x754(s9)
2012bfbe addi a0, s0, 0x60
2012bfc2 c.mv a1, s10
2012bfc4 andi s4, s4, 0xf
2012bfc8 c.jalr a5
2012bfca c.add s5, s2
2012bfcc addi s0, s0, 0x60
2012bfd0 bne s2, s5, 0x5e
2012bfd4 lw s2, 0x74c(s3)

BASE 0x2012bf52 0xb8004
2012bf46 c.mv s5, a2
2012bf48 c.mv s2, a3
2012bf4a c.mv s10, a1
2012bf4c c.jalr a5
2012bf4e lw a5, 0x758(s1)
2012bf52 lui s0, 0xb8004
2012bf56 c.mv s3, a0
2012bf58 addi a0, s0, 0x14
2012bf5c c.jalr a5
2012bf5e lw a5, 0x758(s1)
2012bf62 c.mv s8, a0
2012bf64 addi a0, s0, 0x118
2012bf68 c.jalr a5
2012bf6a lw a5, 0x758(s1)
2012bf6e c.mv s7, a0
2012bf70 addi a0, s0, 0x11c
2012bf74 c.jalr a5
2012bf76 srli s4, a0, 0xc
2012bf7a c.jal -0x308
2012bf7c lui a0, 0xffc10
2012bf80 addi a0, a0, -0x301
2012bf84 and a0, s3, a0
2012bf88 lui s3, 0x20201
2012bf8c lw a5, 0x74c(s3)
2012bf90 ori a1, a0, 0x300
2012bf94 lui a0, 0xb8004
2012bf98 c.jalr a5
2012bf9a lw a5, 0x74c(s3)
2012bf9e c.li a1, 4
2012bfa0 addi a0, s0, 0x14
2012bfa4 c.jalr a5
2012bfa6 c.li a0, 2
2012bfa8 c.jal -0x254
2012bfaa lw a5, 0x74c(s3)
2012bfae addi a0, s0, 0x118
2012bfb2 c.lui a1, 1
2012bfb4 c.jalr a5
2012bfb6 lui s9, 0x20201
2012bfba lw a5, 0x754(s9)
2012bfbe addi a0, s0, 0x60
2012bfc2 c.mv a1, s10
2012bfc4 andi s4, s4, 0xf
2012bfc8 c.jalr a5
2012bfca c.add s5, s2
2012bfcc addi s0, s0, 0x60
2012bfd0 bne s2, s5, 0x5e
2012bfd4 lw s2, 0x74c(s3)
2012bfd8 lw a5, 0x758(s1)
2012bfdc lui s0, 0xb8004
2012bfe0 addi a0, s0, 8
2012bfe4 c.jalr a5
2012bfe6 .byte 0x93, 0x65

BASE 0x2012bf94 0xb8004
2012bf88 lui s3, 0x20201
2012bf8c lw a5, 0x74c(s3)
2012bf90 ori a1, a0, 0x300
2012bf94 lui a0, 0xb8004
2012bf98 c.jalr a5
2012bf9a lw a5, 0x74c(s3)
2012bf9e c.li a1, 4
2012bfa0 addi a0, s0, 0x14
2012bfa4 c.jalr a5
2012bfa6 c.li a0, 2
2012bfa8 c.jal -0x254
2012bfaa lw a5, 0x74c(s3)
2012bfae addi a0, s0, 0x118
2012bfb2 c.lui a1, 1
2012bfb4 c.jalr a5
2012bfb6 lui s9, 0x20201
2012bfba lw a5, 0x754(s9)
2012bfbe addi a0, s0, 0x60
2012bfc2 c.mv a1, s10
2012bfc4 andi s4, s4, 0xf
2012bfc8 c.jalr a5
2012bfca c.add s5, s2
2012bfcc addi s0, s0, 0x60
2012bfd0 bne s2, s5, 0x5e
2012bfd4 lw s2, 0x74c(s3)
2012bfd8 lw a5, 0x758(s1)
2012bfdc lui s0, 0xb8004
2012bfe0 addi a0, s0, 8
2012bfe4 c.jalr a5
2012bfe6 ori a1, a0, 1
2012bfea addi a0, s0, 8
2012bfee c.jalr s2
2012bff0 c.jal -0x33c
2012bff2 lw a5, 0x74c(s3)
2012bff6 andi a1, s8, 0xff
2012bffa addi a0, s0, 0x14
2012bffe c.jalr a5
2012c000 lw a5, 0x74c(s3)
2012c004 c.mv a1, s7
2012c006 addi a0, s0, 0x118
2012c00a c.jalr a5
2012c00c c.mv a0, s4
2012c00e c.jal -0x2ba
2012c010 c.lwsp s0, 0x28(sp)
2012c012 c.lwsp ra, 0x2c(sp)
2012c014 c.lwsp s1, 0x24(sp)
2012c016 c.lwsp s2, 0x20(sp)
2012c018 c.lwsp s3, 0x1c(sp)
2012c01a c.lwsp s4, 0x18(sp)
2012c01c c.lwsp s5, 0x14(sp)
2012c01e c.lwsp s7, 0xc(sp)
2012c020 c.lwsp s8, 8(sp)
2012c022 c.lwsp s9, 4(sp)
2012c024 c.lwsp s10, 0(sp)
2012c026 c.mv a0, s6
2012c028 c.lwsp s6, 0x10(sp)

BASE 0x2012bfdc 0xb8004
2012bfd0 bne s2, s5, 0x5e
2012bfd4 lw s2, 0x74c(s3)
2012bfd8 lw a5, 0x758(s1)
2012bfdc lui s0, 0xb8004
2012bfe0 addi a0, s0, 8
2012bfe4 c.jalr a5
2012bfe6 ori a1, a0, 1
2012bfea addi a0, s0, 8
2012bfee c.jalr s2
2012bff0 c.jal -0x33c
2012bff2 lw a5, 0x74c(s3)
2012bff6 andi a1, s8, 0xff
2012bffa addi a0, s0, 0x14
2012bffe c.jalr a5
2012c000 lw a5, 0x74c(s3)
2012c004 c.mv a1, s7
2012c006 addi a0, s0, 0x118
2012c00a c.jalr a5
2012c00c c.mv a0, s4
2012c00e c.jal -0x2ba
2012c010 c.lwsp s0, 0x28(sp)
2012c012 c.lwsp ra, 0x2c(sp)
2012c014 c.lwsp s1, 0x24(sp)
2012c016 c.lwsp s2, 0x20(sp)
2012c018 c.lwsp s3, 0x1c(sp)
2012c01a c.lwsp s4, 0x18(sp)
2012c01c c.lwsp s5, 0x14(sp)
2012c01e c.lwsp s7, 0xc(sp)
2012c020 c.lwsp s8, 8(sp)
2012c022 c.lwsp s9, 4(sp)
2012c024 c.lwsp s10, 0(sp)
2012c026 c.mv a0, s6
2012c028 c.lwsp s6, 0x10(sp)
2012c02a c.addi16sp sp, 0x30
2012c02c c.j -0x29c
2012c02e lbu a1, 0(s2)
2012c032 lw a5, 0x754(s9)
2012c036 c.mv a0, s0
2012c038 c.addi s2, 1
2012c03a c.jalr a5
2012c03c c.j -0x6c
2012c03e c.addi16sp sp, -0x30
2012c040 c.swsp s5, 0x14(sp)
2012c042 lui s5, 0x20201
2012c046 lw a5, 0x758(s5)
2012c04a c.swsp ra, 0x2c(sp)
2012c04c c.swsp s0, 0x28(sp)
2012c04e c.swsp s1, 0x24(sp)
2012c050 c.swsp s2, 0x20(sp)
2012c052 c.swsp s3, 0x1c(sp)
2012c054 c.swsp s4, 0x18(sp)
2012c056 c.swsp s6, 0x10(sp)
2012c058 c.swsp s7, 0xc(sp)
2012c05a c.swsp s8, 8(sp)
2012c05c c.swsp s9, 4(sp)
2012c05e c.mv s6, a0
2012c060 lui a0, 0xb8004
2012c064 c.mv s3, a2
2012c066 c.mv s1, a3
2012c068 c.mv s8, a1
2012c06a c.jalr a5
2012c06c lw a5, 0x758(s5)
2012c070 .byte 0x37, 0x49

BASE 0x2012c060 0xb8004
2012c054 c.swsp s4, 0x18(sp)
2012c056 c.swsp s6, 0x10(sp)
2012c058 c.swsp s7, 0xc(sp)
2012c05a c.swsp s8, 8(sp)
2012c05c c.swsp s9, 4(sp)
2012c05e c.mv s6, a0
2012c060 lui a0, 0xb8004
2012c064 c.mv s3, a2
2012c066 c.mv s1, a3
2012c068 c.mv s8, a1
2012c06a c.jalr a5
2012c06c lw a5, 0x758(s5)
2012c070 lui s2, 0xb8004
2012c074 c.mv s4, a0
2012c076 addi a0, s2, 0x118
2012c07a c.jalr a5
2012c07c lui s0, 0x20201
2012c080 lw a5, 0x74c(s0)
2012c084 lui s9, 0xc0000
2012c088 or a1, s4, s9
2012c08c c.mv s7, a0
2012c08e lui a0, 0xb8004
2012c092 c.jalr a5
2012c094 lui a1, 0xffc10
2012c098 lw a5, 0x74c(s0)
2012c09c addi a1, a1, -0x301
2012c0a0 and a1, s4, a1
2012c0a4 or a1, a1, s9
2012c0a8 lui a0, 0xb8004
2012c0ac c.jalr a5
2012c0ae lw a5, 0x74c(s0)
2012c0b2 addi a0, s2, 4
2012c0b6 c.li a1, 0
2012c0b8 c.jalr a5
2012c0ba lw a5, 0x74c(s0)
2012c0be c.mv a1, s3
2012c0c0 addi a0, s2, 0x130
2012c0c4 c.jalr a5
2012c0c6 lw a5, 0x74c(s0)
2012c0ca addi a0, s2, 0x118
2012c0ce c.lui a1, 1
2012c0d0 c.jalr a5
2012c0d2 lui s4, 0x20201
2012c0d6 lw a5, 0x754(s4)
2012c0da addi a0, s2, 0x60
2012c0de c.mv a1, s8
2012c0e0 c.jalr a5
2012c0e2 c.add s3, s1
2012c0e4 addi s2, s2, 0x60
2012c0e8 bne s1, s3, 0x4a
2012c0ec lw s2, 0x74c(s0)
2012c0f0 lw a5, 0x758(s5)
2012c0f4 .byte 0xb7, 0x44

BASE 0x2012c070 0xb8004
2012c064 c.mv s3, a2
2012c066 c.mv s1, a3
2012c068 c.mv s8, a1
2012c06a c.jalr a5
2012c06c lw a5, 0x758(s5)
2012c070 lui s2, 0xb8004
2012c074 c.mv s4, a0
2012c076 addi a0, s2, 0x118
2012c07a c.jalr a5
2012c07c lui s0, 0x20201
2012c080 lw a5, 0x74c(s0)
2012c084 lui s9, 0xc0000
2012c088 or a1, s4, s9
2012c08c c.mv s7, a0
2012c08e lui a0, 0xb8004
2012c092 c.jalr a5
2012c094 lui a1, 0xffc10
2012c098 lw a5, 0x74c(s0)
2012c09c addi a1, a1, -0x301
2012c0a0 and a1, s4, a1
2012c0a4 or a1, a1, s9
2012c0a8 lui a0, 0xb8004
2012c0ac c.jalr a5
2012c0ae lw a5, 0x74c(s0)
2012c0b2 addi a0, s2, 4
2012c0b6 c.li a1, 0
2012c0b8 c.jalr a5
2012c0ba lw a5, 0x74c(s0)
2012c0be c.mv a1, s3
2012c0c0 addi a0, s2, 0x130
2012c0c4 c.jalr a5
2012c0c6 lw a5, 0x74c(s0)
2012c0ca addi a0, s2, 0x118
2012c0ce c.lui a1, 1
2012c0d0 c.jalr a5
2012c0d2 lui s4, 0x20201
2012c0d6 lw a5, 0x754(s4)
2012c0da addi a0, s2, 0x60
2012c0de c.mv a1, s8
2012c0e0 c.jalr a5
2012c0e2 c.add s3, s1
2012c0e4 addi s2, s2, 0x60
2012c0e8 bne s1, s3, 0x4a
2012c0ec lw s2, 0x74c(s0)
2012c0f0 lw a5, 0x758(s5)
2012c0f4 lui s1, 0xb8004
2012c0f8 addi a0, s1, 8
2012c0fc c.jalr a5
2012c0fe ori a1, a0, 1
2012c102 addi a0, s1, 8

BASE 0x2012c08e 0xb8004
2012c082 c.flw fs1, 0x2c(s1)
2012c084 lui s9, 0xc0000
2012c088 or a1, s4, s9
2012c08c c.mv s7, a0
2012c08e lui a0, 0xb8004
2012c092 c.jalr a5
2012c094 lui a1, 0xffc10
2012c098 lw a5, 0x74c(s0)
2012c09c addi a1, a1, -0x301
2012c0a0 and a1, s4, a1
2012c0a4 or a1, a1, s9
2012c0a8 lui a0, 0xb8004
2012c0ac c.jalr a5
2012c0ae lw a5, 0x74c(s0)
2012c0b2 addi a0, s2, 4
2012c0b6 c.li a1, 0
2012c0b8 c.jalr a5
2012c0ba lw a5, 0x74c(s0)
2012c0be c.mv a1, s3
2012c0c0 addi a0, s2, 0x130
2012c0c4 c.jalr a5
2012c0c6 lw a5, 0x74c(s0)
2012c0ca addi a0, s2, 0x118
2012c0ce c.lui a1, 1
2012c0d0 c.jalr a5
2012c0d2 lui s4, 0x20201
2012c0d6 lw a5, 0x754(s4)
2012c0da addi a0, s2, 0x60
2012c0de c.mv a1, s8
2012c0e0 c.jalr a5
2012c0e2 c.add s3, s1
2012c0e4 addi s2, s2, 0x60
2012c0e8 bne s1, s3, 0x4a
2012c0ec lw s2, 0x74c(s0)
2012c0f0 lw a5, 0x758(s5)
2012c0f4 lui s1, 0xb8004
2012c0f8 addi a0, s1, 8
2012c0fc c.jalr a5
2012c0fe ori a1, a0, 1
2012c102 addi a0, s1, 8
2012c106 c.jalr s2
2012c108 c.jal -0x496
2012c10a lw a5, 0x74c(s0)
2012c10e addi a0, s1, 0x118
2012c112 c.mv a1, s7
2012c114 c.jalr a5
2012c116 c.lwsp s0, 0x28(sp)
2012c118 c.lwsp ra, 0x2c(sp)
2012c11a c.lwsp s1, 0x24(sp)
2012c11c c.lwsp s2, 0x20(sp)
2012c11e c.lwsp s3, 0x1c(sp)
2012c120 c.lwsp s4, 0x18(sp)
2012c122 c.lwsp s5, 0x14(sp)

BASE 0x2012c0a8 0xb8004
2012c09c addi a1, a1, -0x301
2012c0a0 and a1, s4, a1
2012c0a4 or a1, a1, s9
2012c0a8 lui a0, 0xb8004
2012c0ac c.jalr a5
2012c0ae lw a5, 0x74c(s0)
2012c0b2 addi a0, s2, 4
2012c0b6 c.li a1, 0
2012c0b8 c.jalr a5
2012c0ba lw a5, 0x74c(s0)
2012c0be c.mv a1, s3
2012c0c0 addi a0, s2, 0x130
2012c0c4 c.jalr a5
2012c0c6 lw a5, 0x74c(s0)
2012c0ca addi a0, s2, 0x118
2012c0ce c.lui a1, 1
2012c0d0 c.jalr a5
2012c0d2 lui s4, 0x20201
2012c0d6 lw a5, 0x754(s4)
2012c0da addi a0, s2, 0x60
2012c0de c.mv a1, s8
2012c0e0 c.jalr a5
2012c0e2 c.add s3, s1
2012c0e4 addi s2, s2, 0x60
2012c0e8 bne s1, s3, 0x4a
2012c0ec lw s2, 0x74c(s0)
2012c0f0 lw a5, 0x758(s5)
2012c0f4 lui s1, 0xb8004
2012c0f8 addi a0, s1, 8
2012c0fc c.jalr a5
2012c0fe ori a1, a0, 1
2012c102 addi a0, s1, 8
2012c106 c.jalr s2
2012c108 c.jal -0x496
2012c10a lw a5, 0x74c(s0)
2012c10e addi a0, s1, 0x118
2012c112 c.mv a1, s7
2012c114 c.jalr a5
2012c116 c.lwsp s0, 0x28(sp)
2012c118 c.lwsp ra, 0x2c(sp)
2012c11a c.lwsp s1, 0x24(sp)
2012c11c c.lwsp s2, 0x20(sp)
2012c11e c.lwsp s3, 0x1c(sp)
2012c120 c.lwsp s4, 0x18(sp)
2012c122 c.lwsp s5, 0x14(sp)
2012c124 c.lwsp s7, 0xc(sp)
2012c126 c.lwsp s8, 8(sp)
2012c128 c.lwsp s9, 4(sp)
2012c12a c.mv a0, s6
2012c12c c.lwsp s6, 0x10(sp)
2012c12e c.addi16sp sp, 0x30
2012c130 c.j -0x3a0
2012c132 lbu a1, 0(s1)
2012c136 lw a5, 0x754(s4)
2012c13a c.mv a0, s2
2012c13c c.addi s1, 1

BASE 0x2012c0f4 0xb8004
2012c0e8 bne s1, s3, 0x4a
2012c0ec lw s2, 0x74c(s0)
2012c0f0 lw a5, 0x758(s5)
2012c0f4 lui s1, 0xb8004
2012c0f8 addi a0, s1, 8
2012c0fc c.jalr a5
2012c0fe ori a1, a0, 1
2012c102 addi a0, s1, 8
2012c106 c.jalr s2
2012c108 c.jal -0x496
2012c10a lw a5, 0x74c(s0)
2012c10e addi a0, s1, 0x118
2012c112 c.mv a1, s7
2012c114 c.jalr a5
2012c116 c.lwsp s0, 0x28(sp)
2012c118 c.lwsp ra, 0x2c(sp)
2012c11a c.lwsp s1, 0x24(sp)
2012c11c c.lwsp s2, 0x20(sp)
2012c11e c.lwsp s3, 0x1c(sp)
2012c120 c.lwsp s4, 0x18(sp)
2012c122 c.lwsp s5, 0x14(sp)
2012c124 c.lwsp s7, 0xc(sp)
2012c126 c.lwsp s8, 8(sp)
2012c128 c.lwsp s9, 4(sp)
2012c12a c.mv a0, s6
2012c12c c.lwsp s6, 0x10(sp)
2012c12e c.addi16sp sp, 0x30
2012c130 c.j -0x3a0
2012c132 lbu a1, 0(s1)
2012c136 lw a5, 0x754(s4)
2012c13a c.mv a0, s2
2012c13c c.addi s1, 1
2012c13e c.jalr a5
2012c140 c.j -0x58
2012c142 lui a5, 0x2020e
2012c146 c.addi sp, -0x20
2012c148 addi a5, a5, 0x1d4
2012c14c addi a4, a5, 0x10
2012c150 c.swsp ra, 0x1c(sp)
2012c152 c.swsp s0, 0x18(sp)
2012c154 c.swsp s1, 0x14(sp)
2012c156 c.swsp s2, 0x10(sp)
2012c158 c.swsp s3, 0xc(sp)
2012c15a c.swsp s4, 8(sp)
2012c15c addi a5, a5, 0x30
2012c160 c.sw a5, 0x10(a0)
2012c162 lui a5, 0x20201
2012c166 lw a5, 0x758(a5)
2012c16a c.sw a4, 0xc(a0)
2012c16c c.mv s0, a0
2012c16e lui a0, 0xb8004
2012c172 c.jalr a5
2012c174 lui s1, 0x20201
2012c178 lw a5, 0x74c(s1)
2012c17c lui a1, 0xc0000
2012c180 c.or a1, a0
2012c182 lui a0, 0xb8004
2012c186 c.jalr a5
2012c188 .byte 0x83, 0xa7

BASE 0x2012c16e 0xb8004
2012c162 lui a5, 0x20201
2012c166 lw a5, 0x758(a5)
2012c16a c.sw a4, 0xc(a0)
2012c16c c.mv s0, a0
2012c16e lui a0, 0xb8004
2012c172 c.jalr a5
2012c174 lui s1, 0x20201
2012c178 lw a5, 0x74c(s1)
2012c17c lui a1, 0xc0000
2012c180 c.or a1, a0
2012c182 lui a0, 0xb8004
2012c186 c.jalr a5
2012c188 lw a5, 0x74c(s1)
2012c18c lui s2, 0xb8004
2012c190 c.li a1, 3
2012c192 addi a0, s2, 4
2012c196 c.jalr a5
2012c198 lw a5, 0x74c(s1)
2012c19c c.li a1, 0
2012c19e addi a0, s2, 0x130
2012c1a2 c.jalr a5
2012c1a4 c.li a3, 0
2012c1a6 c.li a2, 0
2012c1a8 addi a1, zero, 0x9f
2012c1ac c.mv a0, s0
2012c1ae c.jal -0x290
2012c1b0 lui s4, 0x20201
2012c1b4 lw a5, 0x760(s4)
2012c1b8 addi a0, s2, 0x60
2012c1bc c.jalr a5
2012c1be lw a5, 0x760(s4)
2012c1c2 c.mv s1, a0
2012c1c4 addi a0, s2, 0x60
2012c1c8 c.jalr a5
2012c1ca lw a5, 0x760(s4)
2012c1ce c.mv s3, a0
2012c1d0 addi a0, s2, 0x60
2012c1d4 c.jalr a5
2012c1d6 addi a5, s1, -1
2012c1da andi a5, a5, 0xff
2012c1de addi a4, zero, 0xfd
2012c1e2 bltu a4, a5, 0xba
2012c1e6 c.li a5, 1
2012c1e8 sll a4, a5, a0
2012c1ec c.sw a4, 0x14(s0)
2012c1ee sb s1, 0x1a(s0)
2012c1f2 sb s3, 0x1b(s0)
2012c1f6 sb a0, 0x1c(s0)
2012c1fa addi a4, zero, 0x68
2012c1fe beq s1, a4, 0x92
2012c202 .byte 0x63, 0x6b

BASE 0x2012c182 0xb8004
2012c176 c.fld fs0, 0x40(s0)
2012c178 lw a5, 0x74c(s1)
2012c17c lui a1, 0xc0000
2012c180 c.or a1, a0
2012c182 lui a0, 0xb8004
2012c186 c.jalr a5
2012c188 lw a5, 0x74c(s1)
2012c18c lui s2, 0xb8004
2012c190 c.li a1, 3
2012c192 addi a0, s2, 4
2012c196 c.jalr a5
2012c198 lw a5, 0x74c(s1)
2012c19c c.li a1, 0
2012c19e addi a0, s2, 0x130
2012c1a2 c.jalr a5
2012c1a4 c.li a3, 0
2012c1a6 c.li a2, 0
2012c1a8 addi a1, zero, 0x9f
2012c1ac c.mv a0, s0
2012c1ae c.jal -0x290
2012c1b0 lui s4, 0x20201
2012c1b4 lw a5, 0x760(s4)
2012c1b8 addi a0, s2, 0x60
2012c1bc c.jalr a5
2012c1be lw a5, 0x760(s4)
2012c1c2 c.mv s1, a0
2012c1c4 addi a0, s2, 0x60
2012c1c8 c.jalr a5
2012c1ca lw a5, 0x760(s4)
2012c1ce c.mv s3, a0
2012c1d0 addi a0, s2, 0x60
2012c1d4 c.jalr a5
2012c1d6 addi a5, s1, -1
2012c1da andi a5, a5, 0xff
2012c1de addi a4, zero, 0xfd
2012c1e2 bltu a4, a5, 0xba
2012c1e6 c.li a5, 1
2012c1e8 sll a4, a5, a0
2012c1ec c.sw a4, 0x14(s0)
2012c1ee sb s1, 0x1a(s0)
2012c1f2 sb s3, 0x1b(s0)
2012c1f6 sb a0, 0x1c(s0)
2012c1fa addi a4, zero, 0x68
2012c1fe beq s1, a4, 0x92
2012c202 bltu a4, s1, 0x36
2012c206 addi a5, zero, 0x20
2012c20a beq s1, a5, 0x6c
2012c20e bltu a5, s1, 0x16
2012c212 c.li a5, 0xb
2012c214 beq s1, a5, 0x78

BASE 0x2012c18c 0xb8004
2012c180 c.or a1, a0
2012c182 lui a0, 0xb8004
2012c186 c.jalr a5
2012c188 lw a5, 0x74c(s1)
2012c18c lui s2, 0xb8004
2012c190 c.li a1, 3
2012c192 addi a0, s2, 4
2012c196 c.jalr a5
2012c198 lw a5, 0x74c(s1)
2012c19c c.li a1, 0
2012c19e addi a0, s2, 0x130
2012c1a2 c.jalr a5
2012c1a4 c.li a3, 0
2012c1a6 c.li a2, 0
2012c1a8 addi a1, zero, 0x9f
2012c1ac c.mv a0, s0
2012c1ae c.jal -0x290
2012c1b0 lui s4, 0x20201
2012c1b4 lw a5, 0x760(s4)
2012c1b8 addi a0, s2, 0x60
2012c1bc c.jalr a5
2012c1be lw a5, 0x760(s4)
2012c1c2 c.mv s1, a0
2012c1c4 addi a0, s2, 0x60
2012c1c8 c.jalr a5
2012c1ca lw a5, 0x760(s4)
2012c1ce c.mv s3, a0
2012c1d0 addi a0, s2, 0x60
2012c1d4 c.jalr a5
2012c1d6 addi a5, s1, -1
2012c1da andi a5, a5, 0xff
2012c1de addi a4, zero, 0xfd
2012c1e2 bltu a4, a5, 0xba
2012c1e6 c.li a5, 1
2012c1e8 sll a4, a5, a0
2012c1ec c.sw a4, 0x14(s0)
2012c1ee sb s1, 0x1a(s0)
2012c1f2 sb s3, 0x1b(s0)
2012c1f6 sb a0, 0x1c(s0)
2012c1fa addi a4, zero, 0x68
2012c1fe beq s1, a4, 0x92
2012c202 bltu a4, s1, 0x36
2012c206 addi a5, zero, 0x20
2012c20a beq s1, a5, 0x6c
2012c20e bltu a5, s1, 0x16
2012c212 c.li a5, 0xb
2012c214 beq s1, a5, 0x78
2012c218 c.li a5, 0x1c
2012c21a beq s1, a5, 0x60
2012c21e sb zero, 0x1d(s0)

BASE 0x2012c2b6 0xb8004
2012c2aa c.swsp ra, 0x1c(sp)
2012c2ac c.swsp s0, 0x18(sp)
2012c2ae c.swsp s1, 0x14(sp)
2012c2b0 c.swsp s2, 0x10(sp)
2012c2b2 c.swsp s3, 0xc(sp)
2012c2b4 c.mv s1, a0
2012c2b6 lui a0, 0xb8004
2012c2ba c.mv s2, a1
2012c2bc lui s3, 0x20201
2012c2c0 c.jalr a5
2012c2c2 lw a5, 0x74c(s3)
2012c2c6 lui a1, 0xc0000
2012c2ca c.or a1, a0
2012c2cc lui a0, 0xb8004
2012c2d0 c.jalr a5
2012c2d2 lw a5, 0x74c(s3)
2012c2d6 lui s0, 0xb8004
2012c2da addi a0, s0, 4
2012c2de c.li a1, 1
2012c2e0 c.jalr a5
2012c2e2 lw a5, 0x74c(s3)
2012c2e6 addi a0, s0, 0x130
2012c2ea c.li a1, 0
2012c2ec c.jalr a5
2012c2ee c.mv a0, s1
2012c2f0 c.mv a1, s2
2012c2f2 c.li a3, 0
2012c2f4 c.li a2, 0
2012c2f6 c.jal -0x3d8
2012c2f8 lui a5, 0x20201
2012c2fc addi a0, s0, 0x60
2012c300 c.lwsp s0, 0x18(sp)
2012c302 c.lwsp ra, 0x1c(sp)
2012c304 c.lwsp s1, 0x14(sp)
2012c306 c.lwsp s2, 0x10(sp)
2012c308 c.lwsp s3, 0xc(sp)
2012c30a lw a5, 0x760(a5)
2012c30e c.addi16sp sp, 0x20
2012c310 c.jr a5
2012c312 lui a5, 0x20201
2012c316 lw a5, 0x758(a5)
2012c31a c.addi16sp sp, -0x30
2012c31c c.swsp ra, 0x2c(sp)
2012c31e c.swsp s0, 0x28(sp)
2012c320 c.swsp s1, 0x24(sp)
2012c322 c.swsp s2, 0x20(sp)
2012c324 c.swsp s3, 0x1c(sp)
2012c326 sb a2, 0xf(sp)
2012c32a c.mv s1, a0
2012c32c lui a0, 0xb8004
2012c330 c.mv s2, a1
2012c332 lui s3, 0x20201
2012c336 c.jalr a5
2012c338 lw a5, 0x74c(s3)
2012c33c lui a1, 0xc0000
2012c340 c.or a1, a0
2012c342 lui a0, 0xb8004
2012c346 c.jalr a5
2012c348 lw a5, 0x74c(s3)

BASE 0x2012c2cc 0xb8004
2012c2c0 c.jalr a5
2012c2c2 lw a5, 0x74c(s3)
2012c2c6 lui a1, 0xc0000
2012c2ca c.or a1, a0
2012c2cc lui a0, 0xb8004
2012c2d0 c.jalr a5
2012c2d2 lw a5, 0x74c(s3)
2012c2d6 lui s0, 0xb8004
2012c2da addi a0, s0, 4
2012c2de c.li a1, 1
2012c2e0 c.jalr a5
2012c2e2 lw a5, 0x74c(s3)
2012c2e6 addi a0, s0, 0x130
2012c2ea c.li a1, 0
2012c2ec c.jalr a5
2012c2ee c.mv a0, s1
2012c2f0 c.mv a1, s2
2012c2f2 c.li a3, 0
2012c2f4 c.li a2, 0
2012c2f6 c.jal -0x3d8
2012c2f8 lui a5, 0x20201
2012c2fc addi a0, s0, 0x60
2012c300 c.lwsp s0, 0x18(sp)
2012c302 c.lwsp ra, 0x1c(sp)
2012c304 c.lwsp s1, 0x14(sp)
2012c306 c.lwsp s2, 0x10(sp)
2012c308 c.lwsp s3, 0xc(sp)
2012c30a lw a5, 0x760(a5)
2012c30e c.addi16sp sp, 0x20
2012c310 c.jr a5
2012c312 lui a5, 0x20201
2012c316 lw a5, 0x758(a5)
2012c31a c.addi16sp sp, -0x30
2012c31c c.swsp ra, 0x2c(sp)
2012c31e c.swsp s0, 0x28(sp)
2012c320 c.swsp s1, 0x24(sp)
2012c322 c.swsp s2, 0x20(sp)
2012c324 c.swsp s3, 0x1c(sp)
2012c326 sb a2, 0xf(sp)
2012c32a c.mv s1, a0
2012c32c lui a0, 0xb8004
2012c330 c.mv s2, a1
2012c332 lui s3, 0x20201
2012c336 c.jalr a5
2012c338 lw a5, 0x74c(s3)
2012c33c lui a1, 0xc0000
2012c340 c.or a1, a0
2012c342 lui a0, 0xb8004
2012c346 c.jalr a5
2012c348 lw a5, 0x74c(s3)
2012c34c lui s0, 0xb8004
2012c350 addi a0, s0, 4
2012c354 c.li a1, 1
2012c356 c.jalr a5
2012c358 lw a5, 0x74c(s3)
2012c35c addi a0, s0, 0x130
2012c360 c.li a1, 0

BASE 0x2012c2d6 0xb8004
2012c2ca c.or a1, a0
2012c2cc lui a0, 0xb8004
2012c2d0 c.jalr a5
2012c2d2 lw a5, 0x74c(s3)
2012c2d6 lui s0, 0xb8004
2012c2da addi a0, s0, 4
2012c2de c.li a1, 1
2012c2e0 c.jalr a5
2012c2e2 lw a5, 0x74c(s3)
2012c2e6 addi a0, s0, 0x130
2012c2ea c.li a1, 0
2012c2ec c.jalr a5
2012c2ee c.mv a0, s1
2012c2f0 c.mv a1, s2
2012c2f2 c.li a3, 0
2012c2f4 c.li a2, 0
2012c2f6 c.jal -0x3d8
2012c2f8 lui a5, 0x20201
2012c2fc addi a0, s0, 0x60
2012c300 c.lwsp s0, 0x18(sp)
2012c302 c.lwsp ra, 0x1c(sp)
2012c304 c.lwsp s1, 0x14(sp)
2012c306 c.lwsp s2, 0x10(sp)
2012c308 c.lwsp s3, 0xc(sp)
2012c30a lw a5, 0x760(a5)
2012c30e c.addi16sp sp, 0x20
2012c310 c.jr a5
2012c312 lui a5, 0x20201
2012c316 lw a5, 0x758(a5)
2012c31a c.addi16sp sp, -0x30
2012c31c c.swsp ra, 0x2c(sp)
2012c31e c.swsp s0, 0x28(sp)
2012c320 c.swsp s1, 0x24(sp)
2012c322 c.swsp s2, 0x20(sp)
2012c324 c.swsp s3, 0x1c(sp)
2012c326 sb a2, 0xf(sp)
2012c32a c.mv s1, a0
2012c32c lui a0, 0xb8004
2012c330 c.mv s2, a1
2012c332 lui s3, 0x20201
2012c336 c.jalr a5
2012c338 lw a5, 0x74c(s3)
2012c33c lui a1, 0xc0000
2012c340 c.or a1, a0
2012c342 lui a0, 0xb8004
2012c346 c.jalr a5
2012c348 lw a5, 0x74c(s3)
2012c34c lui s0, 0xb8004
2012c350 addi a0, s0, 4
2012c354 c.li a1, 1
2012c356 c.jalr a5
2012c358 lw a5, 0x74c(s3)
2012c35c addi a0, s0, 0x130
2012c360 c.li a1, 0
2012c362 c.jalr a5
2012c364 addi a3, sp, 0xf
2012c368 c.mv a1, s2
2012c36a c.mv a0, s1

BASE 0x2012c32c 0xb8004
2012c320 c.swsp s1, 0x24(sp)
2012c322 c.swsp s2, 0x20(sp)
2012c324 c.swsp s3, 0x1c(sp)
2012c326 sb a2, 0xf(sp)
2012c32a c.mv s1, a0
2012c32c lui a0, 0xb8004
2012c330 c.mv s2, a1
2012c332 lui s3, 0x20201
2012c336 c.jalr a5
2012c338 lw a5, 0x74c(s3)
2012c33c lui a1, 0xc0000
2012c340 c.or a1, a0
2012c342 lui a0, 0xb8004
2012c346 c.jalr a5
2012c348 lw a5, 0x74c(s3)
2012c34c lui s0, 0xb8004
2012c350 addi a0, s0, 4
2012c354 c.li a1, 1
2012c356 c.jalr a5
2012c358 lw a5, 0x74c(s3)
2012c35c addi a0, s0, 0x130
2012c360 c.li a1, 0
2012c362 c.jalr a5
2012c364 addi a3, sp, 0xf
2012c368 c.mv a1, s2
2012c36a c.mv a0, s1
2012c36c c.li a2, 1
2012c36e c.jal -0x450
2012c370 lui a5, 0x20201
2012c374 lw a5, 0x760(a5)
2012c378 addi a0, s0, 0x60
2012c37c c.jalr a5
2012c37e c.lwsp ra, 0x2c(sp)
2012c380 c.lwsp s0, 0x28(sp)
2012c382 c.lwsp s1, 0x24(sp)
2012c384 c.lwsp s2, 0x20(sp)
2012c386 c.lwsp s3, 0x1c(sp)
2012c388 c.addi16sp sp, 0x30
2012c38a c.jr ra
2012c38c lui a5, 0x20201
2012c390 lw a5, 0x758(a5)
2012c394 c.addi sp, -0x20
2012c396 c.swsp ra, 0x1c(sp)
2012c398 c.swsp s0, 0x18(sp)
2012c39a c.swsp s1, 0x14(sp)
2012c39c c.swsp s2, 0x10(sp)
2012c39e c.swsp s3, 0xc(sp)
2012c3a0 c.mv s0, a0
2012c3a2 lw s3, 0xc(a0)
2012c3a6 lui a0, 0xb8004
2012c3aa c.jalr a5
2012c3ac lui s2, 0x20201
2012c3b0 lw a5, 0x74c(s2)
2012c3b4 lui a1, 0xc0000
2012c3b8 c.or a1, a0
2012c3ba lui a0, 0xb8004
2012c3be c.jalr a5
2012c3c0 .byte 0x83, 0x27

BASE 0x2012c342 0xb8004
2012c336 c.jalr a5
2012c338 lw a5, 0x74c(s3)
2012c33c lui a1, 0xc0000
2012c340 c.or a1, a0
2012c342 lui a0, 0xb8004
2012c346 c.jalr a5
2012c348 lw a5, 0x74c(s3)
2012c34c lui s0, 0xb8004
2012c350 addi a0, s0, 4
2012c354 c.li a1, 1
2012c356 c.jalr a5
2012c358 lw a5, 0x74c(s3)
2012c35c addi a0, s0, 0x130
2012c360 c.li a1, 0
2012c362 c.jalr a5
2012c364 addi a3, sp, 0xf
2012c368 c.mv a1, s2
2012c36a c.mv a0, s1
2012c36c c.li a2, 1
2012c36e c.jal -0x450
2012c370 lui a5, 0x20201
2012c374 lw a5, 0x760(a5)
2012c378 addi a0, s0, 0x60
2012c37c c.jalr a5
2012c37e c.lwsp ra, 0x2c(sp)
2012c380 c.lwsp s0, 0x28(sp)
2012c382 c.lwsp s1, 0x24(sp)
2012c384 c.lwsp s2, 0x20(sp)
2012c386 c.lwsp s3, 0x1c(sp)
2012c388 c.addi16sp sp, 0x30
2012c38a c.jr ra
2012c38c lui a5, 0x20201
2012c390 lw a5, 0x758(a5)
2012c394 c.addi sp, -0x20
2012c396 c.swsp ra, 0x1c(sp)
2012c398 c.swsp s0, 0x18(sp)
2012c39a c.swsp s1, 0x14(sp)
2012c39c c.swsp s2, 0x10(sp)
2012c39e c.swsp s3, 0xc(sp)
2012c3a0 c.mv s0, a0
2012c3a2 lw s3, 0xc(a0)
2012c3a6 lui a0, 0xb8004
2012c3aa c.jalr a5
2012c3ac lui s2, 0x20201
2012c3b0 lw a5, 0x74c(s2)
2012c3b4 lui a1, 0xc0000
2012c3b8 c.or a1, a0
2012c3ba lui a0, 0xb8004
2012c3be c.jalr a5
2012c3c0 lw a5, 0x74c(s2)
2012c3c4 lui s1, 0xb8004
2012c3c8 addi a0, s1, 4
2012c3cc c.li a1, 1
2012c3ce c.jalr a5
2012c3d0 lw a5, 0x74c(s2)
2012c3d4 addi a0, s1, 0x130

BASE 0x2012c34c 0xb8004
2012c340 c.or a1, a0
2012c342 lui a0, 0xb8004
2012c346 c.jalr a5
2012c348 lw a5, 0x74c(s3)
2012c34c lui s0, 0xb8004
2012c350 addi a0, s0, 4
2012c354 c.li a1, 1
2012c356 c.jalr a5
2012c358 lw a5, 0x74c(s3)
2012c35c addi a0, s0, 0x130
2012c360 c.li a1, 0
2012c362 c.jalr a5
2012c364 addi a3, sp, 0xf
2012c368 c.mv a1, s2
2012c36a c.mv a0, s1
2012c36c c.li a2, 1
2012c36e c.jal -0x450
2012c370 lui a5, 0x20201
2012c374 lw a5, 0x760(a5)
2012c378 addi a0, s0, 0x60
2012c37c c.jalr a5
2012c37e c.lwsp ra, 0x2c(sp)
2012c380 c.lwsp s0, 0x28(sp)
2012c382 c.lwsp s1, 0x24(sp)
2012c384 c.lwsp s2, 0x20(sp)
2012c386 c.lwsp s3, 0x1c(sp)
2012c388 c.addi16sp sp, 0x30
2012c38a c.jr ra
2012c38c lui a5, 0x20201
2012c390 lw a5, 0x758(a5)
2012c394 c.addi sp, -0x20
2012c396 c.swsp ra, 0x1c(sp)
2012c398 c.swsp s0, 0x18(sp)
2012c39a c.swsp s1, 0x14(sp)
2012c39c c.swsp s2, 0x10(sp)
2012c39e c.swsp s3, 0xc(sp)
2012c3a0 c.mv s0, a0
2012c3a2 lw s3, 0xc(a0)
2012c3a6 lui a0, 0xb8004
2012c3aa c.jalr a5
2012c3ac lui s2, 0x20201
2012c3b0 lw a5, 0x74c(s2)
2012c3b4 lui a1, 0xc0000
2012c3b8 c.or a1, a0
2012c3ba lui a0, 0xb8004
2012c3be c.jalr a5
2012c3c0 lw a5, 0x74c(s2)
2012c3c4 lui s1, 0xb8004
2012c3c8 addi a0, s1, 4
2012c3cc c.li a1, 1
2012c3ce c.jalr a5
2012c3d0 lw a5, 0x74c(s2)
2012c3d4 addi a0, s1, 0x130
2012c3d8 c.li a1, 0
2012c3da c.jalr a5
2012c3dc lbu a1, 8(s3)
2012c3e0 c.mv a0, s0

BASE 0x2012c3a6 0xb8004
2012c39a c.swsp s1, 0x14(sp)
2012c39c c.swsp s2, 0x10(sp)
2012c39e c.swsp s3, 0xc(sp)
2012c3a0 c.mv s0, a0
2012c3a2 lw s3, 0xc(a0)
2012c3a6 lui a0, 0xb8004
2012c3aa c.jalr a5
2012c3ac lui s2, 0x20201
2012c3b0 lw a5, 0x74c(s2)
2012c3b4 lui a1, 0xc0000
2012c3b8 c.or a1, a0
2012c3ba lui a0, 0xb8004
2012c3be c.jalr a5
2012c3c0 lw a5, 0x74c(s2)
2012c3c4 lui s1, 0xb8004
2012c3c8 addi a0, s1, 4
2012c3cc c.li a1, 1
2012c3ce c.jalr a5
2012c3d0 lw a5, 0x74c(s2)
2012c3d4 addi a0, s1, 0x130
2012c3d8 c.li a1, 0
2012c3da c.jalr a5
2012c3dc lbu a1, 8(s3)
2012c3e0 c.mv a0, s0
2012c3e2 c.li a3, 0
2012c3e4 c.li a2, 0
2012c3e6 c.jal -0x4c8
2012c3e8 lui a5, 0x20201
2012c3ec c.lwsp s0, 0x18(sp)
2012c3ee c.lwsp ra, 0x1c(sp)
2012c3f0 c.lwsp s2, 0x10(sp)
2012c3f2 c.lwsp s3, 0xc(sp)
2012c3f4 lw a5, 0x760(a5)
2012c3f8 addi a0, s1, 0x60
2012c3fc c.lwsp s1, 0x14(sp)
2012c3fe c.addi16sp sp, 0x20
2012c400 c.jr a5
2012c402 c.addi sp, -0x10
2012c404 c.swsp s0, 8(sp)
2012c406 c.swsp s1, 4(sp)
2012c408 c.swsp ra, 0xc(sp)
2012c40a lbu a4, 0x1d(a0)
2012c40e c.li a5, 4
2012c410 c.lw s1, 0xc(a0)
2012c412 c.mv s0, a0
2012c414 bne a4, a5, 0x1e
2012c418 lbu a1, 4(s1)
2012c41c c.mv a0, s0
2012c41e c.jal -0x17e
2012c420 c.slli a0, 0x18
2012c422 c.srai a0, 0x18
2012c424 bgez a0, -0xc
2012c428 c.lwsp ra, 0xc(sp)
2012c42a c.lwsp s0, 8(sp)
2012c42c c.lwsp s1, 4(sp)
2012c42e c.addi sp, 0x10
2012c430 c.jr ra
2012c432 lbu a1, 2(s1)
2012c436 c.mv a0, s0
2012c438 c.jal -0x198
2012c43a c.andi a0, 1

BASE 0x2012c3ba 0xb8004
2012c3ae c.fld fs0, 0x40(s0)
2012c3b0 lw a5, 0x74c(s2)
2012c3b4 lui a1, 0xc0000
2012c3b8 c.or a1, a0
2012c3ba lui a0, 0xb8004
2012c3be c.jalr a5
2012c3c0 lw a5, 0x74c(s2)
2012c3c4 lui s1, 0xb8004
2012c3c8 addi a0, s1, 4
2012c3cc c.li a1, 1
2012c3ce c.jalr a5
2012c3d0 lw a5, 0x74c(s2)
2012c3d4 addi a0, s1, 0x130
2012c3d8 c.li a1, 0
2012c3da c.jalr a5
2012c3dc lbu a1, 8(s3)
2012c3e0 c.mv a0, s0
2012c3e2 c.li a3, 0
2012c3e4 c.li a2, 0
2012c3e6 c.jal -0x4c8
2012c3e8 lui a5, 0x20201
2012c3ec c.lwsp s0, 0x18(sp)
2012c3ee c.lwsp ra, 0x1c(sp)
2012c3f0 c.lwsp s2, 0x10(sp)
2012c3f2 c.lwsp s3, 0xc(sp)
2012c3f4 lw a5, 0x760(a5)
2012c3f8 addi a0, s1, 0x60
2012c3fc c.lwsp s1, 0x14(sp)
2012c3fe c.addi16sp sp, 0x20
2012c400 c.jr a5
2012c402 c.addi sp, -0x10
2012c404 c.swsp s0, 8(sp)
2012c406 c.swsp s1, 4(sp)
2012c408 c.swsp ra, 0xc(sp)
2012c40a lbu a4, 0x1d(a0)
2012c40e c.li a5, 4
2012c410 c.lw s1, 0xc(a0)
2012c412 c.mv s0, a0
2012c414 bne a4, a5, 0x1e
2012c418 lbu a1, 4(s1)
2012c41c c.mv a0, s0
2012c41e c.jal -0x17e
2012c420 c.slli a0, 0x18
2012c422 c.srai a0, 0x18
2012c424 bgez a0, -0xc
2012c428 c.lwsp ra, 0xc(sp)
2012c42a c.lwsp s0, 8(sp)
2012c42c c.lwsp s1, 4(sp)
2012c42e c.addi sp, 0x10
2012c430 c.jr ra
2012c432 lbu a1, 2(s1)
2012c436 c.mv a0, s0
2012c438 c.jal -0x198
2012c43a c.andi a0, 1
2012c43c c.bnez a0, -0xa
2012c43e c.j -0x16
2012c440 c.addi16sp sp, -0x30
2012c442 c.swsp s5, 0x14(sp)
2012c444 lui s5, 0x20201
2012c448 lw a5, 0x758(s5)
2012c44c c.swsp ra, 0x2c(sp)
2012c44e c.swsp s0, 0x28(sp)

BASE 0x2012c3c4 0xb8004
2012c3b8 c.or a1, a0
2012c3ba lui a0, 0xb8004
2012c3be c.jalr a5
2012c3c0 lw a5, 0x74c(s2)
2012c3c4 lui s1, 0xb8004
2012c3c8 addi a0, s1, 4
2012c3cc c.li a1, 1
2012c3ce c.jalr a5
2012c3d0 lw a5, 0x74c(s2)
2012c3d4 addi a0, s1, 0x130
2012c3d8 c.li a1, 0
2012c3da c.jalr a5
2012c3dc lbu a1, 8(s3)
2012c3e0 c.mv a0, s0
2012c3e2 c.li a3, 0
2012c3e4 c.li a2, 0
2012c3e6 c.jal -0x4c8
2012c3e8 lui a5, 0x20201
2012c3ec c.lwsp s0, 0x18(sp)
2012c3ee c.lwsp ra, 0x1c(sp)
2012c3f0 c.lwsp s2, 0x10(sp)
2012c3f2 c.lwsp s3, 0xc(sp)
2012c3f4 lw a5, 0x760(a5)
2012c3f8 addi a0, s1, 0x60
2012c3fc c.lwsp s1, 0x14(sp)
2012c3fe c.addi16sp sp, 0x20
2012c400 c.jr a5
2012c402 c.addi sp, -0x10
2012c404 c.swsp s0, 8(sp)
2012c406 c.swsp s1, 4(sp)
2012c408 c.swsp ra, 0xc(sp)
2012c40a lbu a4, 0x1d(a0)
2012c40e c.li a5, 4
2012c410 c.lw s1, 0xc(a0)
2012c412 c.mv s0, a0
2012c414 bne a4, a5, 0x1e
2012c418 lbu a1, 4(s1)
2012c41c c.mv a0, s0
2012c41e c.jal -0x17e
2012c420 c.slli a0, 0x18
2012c422 c.srai a0, 0x18
2012c424 bgez a0, -0xc
2012c428 c.lwsp ra, 0xc(sp)
2012c42a c.lwsp s0, 8(sp)
2012c42c c.lwsp s1, 4(sp)
2012c42e c.addi sp, 0x10
2012c430 c.jr ra
2012c432 lbu a1, 2(s1)
2012c436 c.mv a0, s0
2012c438 c.jal -0x198
2012c43a c.andi a0, 1
2012c43c c.bnez a0, -0xa
2012c43e c.j -0x16
2012c440 c.addi16sp sp, -0x30
2012c442 c.swsp s5, 0x14(sp)
2012c444 lui s5, 0x20201
2012c448 lw a5, 0x758(s5)
2012c44c c.swsp ra, 0x2c(sp)
2012c44e c.swsp s0, 0x28(sp)
2012c450 c.swsp s1, 0x24(sp)
2012c452 c.swsp s2, 0x20(sp)
2012c454 c.swsp s3, 0x1c(sp)
2012c456 c.swsp s4, 0x18(sp)
2012c458 c.swsp s6, 0x10(sp)

BASE 0x2012c462 0xb8004
2012c456 c.swsp s4, 0x18(sp)
2012c458 c.swsp s6, 0x10(sp)
2012c45a c.swsp s7, 0xc(sp)
2012c45c c.swsp s8, 8(sp)
2012c45e c.swsp s9, 4(sp)
2012c460 c.mv s6, a0
2012c462 lui a0, 0xb8004
2012c466 c.mv s3, a2
2012c468 c.mv s1, a3
2012c46a c.mv s8, a1
2012c46c c.jalr a5
2012c46e lw a5, 0x758(s5)
2012c472 lui s2, 0xb8004
2012c476 c.mv s4, a0
2012c478 addi a0, s2, 0x118
2012c47c c.jalr a5
2012c47e lui s0, 0x20201
2012c482 lw a5, 0x74c(s0)
2012c486 lui s9, 0xc0000
2012c48a or a1, s4, s9
2012c48e c.mv s7, a0
2012c490 lui a0, 0xb8004
2012c494 c.jalr a5
2012c496 lui a1, 0xffc10
2012c49a lw a5, 0x74c(s0)
2012c49e addi a1, a1, -0x301
2012c4a2 and a1, s4, a1
2012c4a6 or a1, a1, s9
2012c4aa lui a0, 0xb8004
2012c4ae c.jalr a5
2012c4b0 lw a5, 0x74c(s0)
2012c4b4 addi a0, s2, 4
2012c4b8 c.li a1, 0
2012c4ba c.jalr a5
2012c4bc lw a5, 0x74c(s0)
2012c4c0 c.mv a1, s3
2012c4c2 addi a0, s2, 0x130
2012c4c6 c.jalr a5
2012c4c8 lw a5, 0x74c(s0)
2012c4cc addi a0, s2, 0x118
2012c4d0 c.lui a1, 1
2012c4d2 c.jalr a5
2012c4d4 lui s4, 0x20201
2012c4d8 lw a5, 0x754(s4)
2012c4dc addi a0, s2, 0x60
2012c4e0 c.mv a1, s8
2012c4e2 c.jalr a5
2012c4e4 c.add s3, s1
2012c4e6 addi s2, s2, 0x60
2012c4ea bne s1, s3, 0x50
2012c4ee lw s2, 0x74c(s0)
2012c4f2 lw a5, 0x758(s5)
2012c4f6 .byte 0xb7, 0x44

BASE 0x2012c472 0xb8004
2012c466 c.mv s3, a2
2012c468 c.mv s1, a3
2012c46a c.mv s8, a1
2012c46c c.jalr a5
2012c46e lw a5, 0x758(s5)
2012c472 lui s2, 0xb8004
2012c476 c.mv s4, a0
2012c478 addi a0, s2, 0x118
2012c47c c.jalr a5
2012c47e lui s0, 0x20201
2012c482 lw a5, 0x74c(s0)
2012c486 lui s9, 0xc0000
2012c48a or a1, s4, s9
2012c48e c.mv s7, a0
2012c490 lui a0, 0xb8004
2012c494 c.jalr a5
2012c496 lui a1, 0xffc10
2012c49a lw a5, 0x74c(s0)
2012c49e addi a1, a1, -0x301
2012c4a2 and a1, s4, a1
2012c4a6 or a1, a1, s9
2012c4aa lui a0, 0xb8004
2012c4ae c.jalr a5
2012c4b0 lw a5, 0x74c(s0)
2012c4b4 addi a0, s2, 4
2012c4b8 c.li a1, 0
2012c4ba c.jalr a5
2012c4bc lw a5, 0x74c(s0)
2012c4c0 c.mv a1, s3
2012c4c2 addi a0, s2, 0x130
2012c4c6 c.jalr a5
2012c4c8 lw a5, 0x74c(s0)
2012c4cc addi a0, s2, 0x118
2012c4d0 c.lui a1, 1
2012c4d2 c.jalr a5
2012c4d4 lui s4, 0x20201
2012c4d8 lw a5, 0x754(s4)
2012c4dc addi a0, s2, 0x60
2012c4e0 c.mv a1, s8
2012c4e2 c.jalr a5
2012c4e4 c.add s3, s1
2012c4e6 addi s2, s2, 0x60
2012c4ea bne s1, s3, 0x50
2012c4ee lw s2, 0x74c(s0)
2012c4f2 lw a5, 0x758(s5)
2012c4f6 lui s1, 0xb8004
2012c4fa addi a0, s1, 8
2012c4fe c.jalr a5
2012c500 ori a1, a0, 1
2012c504 addi a0, s1, 8

BASE 0x2012c490 0xb8004
2012c484 c.flw fs1, 0x2c(s1)
2012c486 lui s9, 0xc0000
2012c48a or a1, s4, s9
2012c48e c.mv s7, a0
2012c490 lui a0, 0xb8004
2012c494 c.jalr a5
2012c496 lui a1, 0xffc10
2012c49a lw a5, 0x74c(s0)
2012c49e addi a1, a1, -0x301
2012c4a2 and a1, s4, a1
2012c4a6 or a1, a1, s9
2012c4aa lui a0, 0xb8004
2012c4ae c.jalr a5
2012c4b0 lw a5, 0x74c(s0)
2012c4b4 addi a0, s2, 4
2012c4b8 c.li a1, 0
2012c4ba c.jalr a5
2012c4bc lw a5, 0x74c(s0)
2012c4c0 c.mv a1, s3
2012c4c2 addi a0, s2, 0x130
2012c4c6 c.jalr a5
2012c4c8 lw a5, 0x74c(s0)
2012c4cc addi a0, s2, 0x118
2012c4d0 c.lui a1, 1
2012c4d2 c.jalr a5
2012c4d4 lui s4, 0x20201
2012c4d8 lw a5, 0x754(s4)
2012c4dc addi a0, s2, 0x60
2012c4e0 c.mv a1, s8
2012c4e2 c.jalr a5
2012c4e4 c.add s3, s1
2012c4e6 addi s2, s2, 0x60
2012c4ea bne s1, s3, 0x50
2012c4ee lw s2, 0x74c(s0)
2012c4f2 lw a5, 0x758(s5)
2012c4f6 lui s1, 0xb8004
2012c4fa addi a0, s1, 8
2012c4fe c.jalr a5
2012c500 ori a1, a0, 1
2012c504 addi a0, s1, 8
2012c508 c.jalr s2
2012c50a jal -0x898
2012c50e c.mv a0, s6
2012c510 c.jal -0x10e
2012c512 lw a5, 0x74c(s0)
2012c516 addi a0, s1, 0x118
2012c51a c.mv a1, s7
2012c51c c.jalr a5
2012c51e c.lwsp s0, 0x28(sp)
2012c520 c.lwsp ra, 0x2c(sp)
2012c522 c.lwsp s1, 0x24(sp)
2012c524 c.lwsp s2, 0x20(sp)

BASE 0x2012c4aa 0xb8004
2012c49e addi a1, a1, -0x301
2012c4a2 and a1, s4, a1
2012c4a6 or a1, a1, s9
2012c4aa lui a0, 0xb8004
2012c4ae c.jalr a5
2012c4b0 lw a5, 0x74c(s0)
2012c4b4 addi a0, s2, 4
2012c4b8 c.li a1, 0
2012c4ba c.jalr a5
2012c4bc lw a5, 0x74c(s0)
2012c4c0 c.mv a1, s3
2012c4c2 addi a0, s2, 0x130
2012c4c6 c.jalr a5
2012c4c8 lw a5, 0x74c(s0)
2012c4cc addi a0, s2, 0x118
2012c4d0 c.lui a1, 1
2012c4d2 c.jalr a5
2012c4d4 lui s4, 0x20201
2012c4d8 lw a5, 0x754(s4)
2012c4dc addi a0, s2, 0x60
2012c4e0 c.mv a1, s8
2012c4e2 c.jalr a5
2012c4e4 c.add s3, s1
2012c4e6 addi s2, s2, 0x60
2012c4ea bne s1, s3, 0x50
2012c4ee lw s2, 0x74c(s0)
2012c4f2 lw a5, 0x758(s5)
2012c4f6 lui s1, 0xb8004
2012c4fa addi a0, s1, 8
2012c4fe c.jalr a5
2012c500 ori a1, a0, 1
2012c504 addi a0, s1, 8
2012c508 c.jalr s2
2012c50a jal -0x898
2012c50e c.mv a0, s6
2012c510 c.jal -0x10e
2012c512 lw a5, 0x74c(s0)
2012c516 addi a0, s1, 0x118
2012c51a c.mv a1, s7
2012c51c c.jalr a5
2012c51e c.lwsp s0, 0x28(sp)
2012c520 c.lwsp ra, 0x2c(sp)
2012c522 c.lwsp s1, 0x24(sp)
2012c524 c.lwsp s2, 0x20(sp)
2012c526 c.lwsp s3, 0x1c(sp)
2012c528 c.lwsp s4, 0x18(sp)
2012c52a c.lwsp s5, 0x14(sp)
2012c52c c.lwsp s7, 0xc(sp)
2012c52e c.lwsp s8, 8(sp)
2012c530 c.lwsp s9, 4(sp)
2012c532 c.mv a0, s6
2012c534 c.lwsp s6, 0x10(sp)
2012c536 c.addi16sp sp, 0x30
2012c538 c.j -0x7a8
2012c53a lbu a1, 0(s1)
2012c53e .byte 0x83, 0x27

BASE 0x2012c4f6 0xb8004
2012c4ea bne s1, s3, 0x50
2012c4ee lw s2, 0x74c(s0)
2012c4f2 lw a5, 0x758(s5)
2012c4f6 lui s1, 0xb8004
2012c4fa addi a0, s1, 8
2012c4fe c.jalr a5
2012c500 ori a1, a0, 1
2012c504 addi a0, s1, 8
2012c508 c.jalr s2
2012c50a jal -0x898
2012c50e c.mv a0, s6
2012c510 c.jal -0x10e
2012c512 lw a5, 0x74c(s0)
2012c516 addi a0, s1, 0x118
2012c51a c.mv a1, s7
2012c51c c.jalr a5
2012c51e c.lwsp s0, 0x28(sp)
2012c520 c.lwsp ra, 0x2c(sp)
2012c522 c.lwsp s1, 0x24(sp)
2012c524 c.lwsp s2, 0x20(sp)
2012c526 c.lwsp s3, 0x1c(sp)
2012c528 c.lwsp s4, 0x18(sp)
2012c52a c.lwsp s5, 0x14(sp)
2012c52c c.lwsp s7, 0xc(sp)
2012c52e c.lwsp s8, 8(sp)
2012c530 c.lwsp s9, 4(sp)
2012c532 c.mv a0, s6
2012c534 c.lwsp s6, 0x10(sp)
2012c536 c.addi16sp sp, 0x30
2012c538 c.j -0x7a8
2012c53a lbu a1, 0(s1)
2012c53e lw a5, 0x754(s4)
2012c542 c.mv a0, s2
2012c544 c.addi s1, 1
2012c546 c.jalr a5
2012c548 c.j -0x5e
2012c54a c.addi sp, -0x10
2012c54c c.swsp s0, 8(sp)
2012c54e c.swsp s1, 4(sp)
2012c550 c.swsp ra, 0xc(sp)
2012c552 c.lw s1, 0xc(a0)
2012c554 c.mv s0, a0
2012c556 c.jal -0x154
2012c558 lbu a1, 0(s1)
2012c55c c.li a3, 0
2012c55e c.li a2, 0
2012c560 c.mv a0, s0
2012c562 c.jal -0x122
2012c564 lbu a1, 2(s1)
2012c568 c.mv a0, s0
2012c56a c.jal -0x2ca
2012c56c c.andi a0, 2
2012c56e c.beqz a0, -0x16
2012c570 c.lwsp ra, 0xc(sp)
2012c572 c.lwsp s0, 8(sp)
2012c574 c.lwsp s1, 4(sp)
2012c576 c.addi sp, 0x10
2012c578 c.jr ra
2012c57a c.addi sp, -0x20
2012c57c c.swsp ra, 0x1c(sp)
2012c57e c.swsp s0, 0x18(sp)
2012c580 c.swsp a1, 8(sp)
2012c582 c.mv s0, a0
2012c584 sb a2, 0xf(sp)
2012c588 c.jal -0x3e
2012c58a c.lwsp a1, 8(sp)

BASE 0x2012c832 0xb8004
2012c826 c.lui s1, 0xffff2
2012c828 c.swsp s0, 0x18(sp)
2012c82a c.swsp s1, 0x14(sp)
2012c82c c.swsp s3, 0xc(sp)
2012c82e c.swsp ra, 0x1c(sp)
2012c830 c.swsp s4, 8(sp)
2012c832 lui s0, 0xb8004
2012c836 lw s3, 0xc(a0)
2012c83a lbu s4, 0x20(a0)
2012c83e c.mv s1, a0
2012c840 c.li a1, 0
2012c842 addi a0, s0, 0x120
2012c846 c.jalr a5
2012c848 c.li a5, 1
2012c84a beq s4, a5, 0x36
2012c84e c.li a5, 2
2012c850 beq s4, a5, 0x4a
2012c854 bnez s4, 0x12
2012c858 lw a5, 0x74c(s2)
2012c85c lbu a1, 0x10(s3)
2012c860 addi a0, s0, 0xe0
2012c864 c.jalr a5
2012c866 c.lwsp s0, 0x18(sp)
2012c868 c.li a5, 3
2012c86a c.lwsp ra, 0x1c(sp)
2012c86c c.lwsp s2, 0x10(sp)
2012c86e c.lwsp s3, 0xc(sp)
2012c870 c.lwsp s4, 8(sp)
2012c872 sb a5, 0x1f(s1)
2012c876 c.lwsp s1, 0x14(sp)
2012c878 c.li a0, 3
2012c87a c.addi16sp sp, 0x20
2012c87c j -0x9da
2012c880 lw a5, 0x74c(s2)
2012c884 lbu a1, 0x11(s3)
2012c888 addi a0, s0, 0xe8
2012c88c c.jalr a5
2012c88e lw a5, 0x74c(s2)
2012c892 c.li a1, 4
2012c894 addi a0, s0, 0x120
2012c898 c.j -0x34
2012c89a lui a5, 0x20201
2012c89e lw a5, 0x758(a5)
2012c8a2 addi a0, s0, 0xf0
2012c8a6 c.jalr a5
2012c8a8 lbu a1, 0x12(s3)
2012c8ac lw a4, 0x74c(s2)
2012c8b0 lui a5, 0xff010
2012c8b4 addi a5, a5, -0x100
2012c8b8 c.or a1, a5
2012c8ba addi a0, s0, 0xf0
2012c8be c.jalr a4
2012c8c0 lw a5, 0x74c(s2)
2012c8c4 c.lui a1, 1
2012c8c6 .byte 0x13, 0x05

BASE 0x2012c9a8 0xb8004
2012c99c c.mv a0, s0
2012c99e c.jal -0xc8
2012c9a0 lui s3, 0x20201
2012c9a4 lw a5, 0x74c(s3)
2012c9a8 lui s2, 0xb8004
2012c9ac c.li a1, 0
2012c9ae addi a0, s2, 0x120
2012c9b2 c.jalr a5
2012c9b4 sb zero, 0x20(s0)
2012c9b8 lbu a5, 0xf(s4)
2012c9bc c.li a0, 3
2012c9be sb a5, 0x18(s0)
2012c9c2 c.li a5, 3
2012c9c4 sb a5, 0x1f(s0)
2012c9c8 jal -0xb26
2012c9cc c.li a0, 3
2012c9ce jal -0xaee
2012c9d2 lw a5, 0x74c(s3)
2012c9d6 lbu a1, 0(s1)
2012c9da addi a0, s2, 0x14
2012c9de c.jalr a5
2012c9e0 c.li a0, 0
2012c9e2 jal -0xcee
2012c9e6 c.lwsp s0, 0x28(sp)
2012c9e8 lbu a0, 1(s1)
2012c9ec c.lwsp ra, 0x2c(sp)
2012c9ee c.lwsp s1, 0x24(sp)
2012c9f0 c.lwsp s2, 0x20(sp)
2012c9f2 c.lwsp s3, 0x1c(sp)
2012c9f4 c.lwsp s4, 0x18(sp)
2012c9f6 c.addi16sp sp, 0x30
2012c9f8 j -0xca4
2012c9fc c.addi sp, -0x20
2012c9fe c.swsp s0, 0x18(sp)
2012ca00 lui s0, 0x20212
2012ca04 c.swsp ra, 0x1c(sp)
2012ca06 c.swsp s1, 0x14(sp)
2012ca08 c.swsp s2, 0x10(sp)
2012ca0a c.swsp s3, 0xc(sp)
2012ca0c c.swsp s4, 8(sp)
2012ca0e lui s1, 0x20201
2012ca12 addi a5, s0, 0x51c
2012ca16 lui s2, 0x20201
2012ca1a lw s3, 0x73c(s2)
2012ca1e sb a0, 0x20(a5)
2012ca22 lw a5, 0x748(s1)
2012ca26 addi a0, zero, 0x40
2012ca2a lui s4, 0x20201
2012ca2e c.jalr a5
2012ca30 lui a1, 0x80
2012ca34 c.or a1, a0
2012ca36 addi a0, zero, 0x40
2012ca3a c.jalr s3
2012ca3c .byte 0x03, 0x29

BASE 0x2012ca48 0xb8004
2012ca3c lw s2, 0x73c(s2)
2012ca40 lw a5, 0x748(s1)
2012ca44 addi a0, zero, 0x88
2012ca48 lui s3, 0xb8004
2012ca4c c.jalr a5
2012ca4e ori a1, a0, 0x100
2012ca52 addi a0, zero, 0x88
2012ca56 c.jalr s2
2012ca58 addi s1, s3, 0x28
2012ca5c addi s2, s0, 0x51c
2012ca60 lw a5, 0x758(s4)
2012ca64 c.mv a0, s1
2012ca66 c.jalr a5
2012ca68 andi a0, a0, 0x80
2012ca6c c.beqz a0, -0xc
2012ca6e lui s1, 0x20201
2012ca72 lw a5, 0x74c(s1)
2012ca76 c.li a1, 0
2012ca78 addi a0, s3, 8
2012ca7c c.jalr a5
2012ca7e lw a5, 0x74c(s1)
2012ca82 c.li a1, 0
2012ca84 lui a0, 0xb8004
2012ca88 c.jalr a5
2012ca8a lw a5, 0x74c(s1)
2012ca8e c.li a1, 1
2012ca90 addi a0, s3, 0x10
2012ca94 c.jalr a5
2012ca96 lw a5, 0x74c(s1)
2012ca9a c.li a1, 0
2012ca9c addi a0, s3, 0x4c
2012caa0 c.jalr a5
2012caa2 lw a5, 0x74c(s1)
2012caa6 c.li a1, 0
2012caa8 addi a0, s3, 0x2c
2012caac c.jalr a5
2012caae lw a5, 0x74c(s1)
2012cab2 c.li a1, 0
2012cab4 addi a0, s3, 0x120
2012cab8 c.jalr a5
2012caba lbu a5, 3(s2)
2012cabe c.bnez a5, 0xe
2012cac0 addi a5, zero, 0x204
2012cac4 sh a5, 0(s2)
2012cac8 sb zero, 2(s2)
2012cacc lw a5, 0x74c(s1)
2012cad0 lbu a1, 0(s2)
2012cad4 lui a0, 0xb8004
2012cad8 c.addi a0, 0x14
2012cada c.jalr a5
2012cadc .byte 0x03, 0x45

BASE 0x2012ca84 0xb8004
2012ca78 addi a0, s3, 8
2012ca7c c.jalr a5
2012ca7e lw a5, 0x74c(s1)
2012ca82 c.li a1, 0
2012ca84 lui a0, 0xb8004
2012ca88 c.jalr a5
2012ca8a lw a5, 0x74c(s1)
2012ca8e c.li a1, 1
2012ca90 addi a0, s3, 0x10
2012ca94 c.jalr a5
2012ca96 lw a5, 0x74c(s1)
2012ca9a c.li a1, 0
2012ca9c addi a0, s3, 0x4c
2012caa0 c.jalr a5
2012caa2 lw a5, 0x74c(s1)
2012caa6 c.li a1, 0
2012caa8 addi a0, s3, 0x2c
2012caac c.jalr a5
2012caae lw a5, 0x74c(s1)
2012cab2 c.li a1, 0
2012cab4 addi a0, s3, 0x120
2012cab8 c.jalr a5
2012caba lbu a5, 3(s2)
2012cabe c.bnez a5, 0xe
2012cac0 addi a5, zero, 0x204
2012cac4 sh a5, 0(s2)
2012cac8 sb zero, 2(s2)
2012cacc lw a5, 0x74c(s1)
2012cad0 lbu a1, 0(s2)
2012cad4 lui a0, 0xb8004
2012cad8 c.addi a0, 0x14
2012cada c.jalr a5
2012cadc lbu a0, 1(s2)
2012cae0 jal -0xd8c
2012cae4 c.li a0, 0
2012cae6 jal -0xdf2
2012caea addi a0, s0, 0x51c
2012caee jal -0x9ac
2012caf2 addi a0, s0, 0x51c
2012caf6 c.jal -0x2da
2012caf8 jal -0x55f0
2012cafc addi a0, s0, 0x51c
2012cb00 jal -0x10b6
2012cb04 c.beqz a0, 0x1a
2012cb06 lui a5, 0x20201
2012cb0a lw a5, 0x114(a5)
2012cb0e lui a0, 0x20211
2012cb12 addi a0, a0, 0x4f8
2012cb16 c.jalr a5
2012cb18 .byte 0x13, 0x05

BASE 0x2012cad4 0xb8004
2012cac8 sb zero, 2(s2)
2012cacc lw a5, 0x74c(s1)
2012cad0 lbu a1, 0(s2)
2012cad4 lui a0, 0xb8004
2012cad8 c.addi a0, 0x14
2012cada c.jalr a5
2012cadc lbu a0, 1(s2)
2012cae0 jal -0xd8c
2012cae4 c.li a0, 0
2012cae6 jal -0xdf2
2012caea addi a0, s0, 0x51c
2012caee jal -0x9ac
2012caf2 addi a0, s0, 0x51c
2012caf6 c.jal -0x2da
2012caf8 jal -0x55f0
2012cafc addi a0, s0, 0x51c
2012cb00 jal -0x10b6
2012cb04 c.beqz a0, 0x1a
2012cb06 lui a5, 0x20201
2012cb0a lw a5, 0x114(a5)
2012cb0e lui a0, 0x20211
2012cb12 addi a0, a0, 0x4f8
2012cb16 c.jalr a5
2012cb18 addi a0, s0, 0x51c
2012cb1c c.jal -0x1be
2012cb1e jal -0x563e
2012cb22 addi a0, s0, 0x51c
2012cb26 jal -0xd4c
2012cb2a lui a5, 0x20203
2012cb2e lw a5, 0x580(a5)
2012cb32 c.lw a4, 0x18(a5)
2012cb34 lw a5, 0x14(s2)
2012cb38 c.sw a5, 0x10(a4)
2012cb3a lbu a5, 0x24(s2)
2012cb3e andi a3, a5, 1
2012cb42 lbu a5, 0(a4)
2012cb46 c.andi a5, -2
2012cb48 c.or a5, a3
2012cb4a sb a5, 0(a4)
2012cb4e lbu a5, 0x1d(s2)
2012cb52 sb a5, 4(a4)
2012cb56 c.lwsp ra, 0x1c(sp)
2012cb58 c.lwsp s0, 0x18(sp)
2012cb5a c.lwsp s1, 0x14(sp)
2012cb5c c.lwsp s2, 0x10(sp)
2012cb5e c.lwsp s3, 0xc(sp)
2012cb60 c.lwsp s4, 8(sp)
2012cb62 c.addi16sp sp, 0x20
2012cb64 c.jr ra
2012cb66 c.lw a5, 0xc(a0)
2012cb68 c.addi sp, -0x20

BASE 0x2012cba0 0xb8004
2012cb94 lui a5, 0x20201
2012cb98 lbu a1, 0(s0)
2012cb9c lw a5, 0x74c(a5)
2012cba0 lui a0, 0xb8004
2012cba4 c.addi a0, 0x14
2012cba6 c.jalr a5
2012cba8 c.li a0, 0
2012cbaa jal -0xeb6
2012cbae lbu a0, 1(s0)
2012cbb2 c.lwsp s0, 0x18(sp)
2012cbb4 c.lwsp ra, 0x1c(sp)
2012cbb6 c.addi16sp sp, 0x20
2012cbb8 j -0xe64
2012cbbc c.addi sp, -0x10
2012cbbe c.swsp s1, 4(sp)
2012cbc0 c.lw s1, 0xc(a0)
2012cbc2 c.swsp s0, 8(sp)
2012cbc4 c.swsp ra, 0xc(sp)
2012cbc6 c.mv s0, a0
2012cbc8 c.jal -0x7c6
2012cbca c.mv a0, s0
2012cbcc c.lwsp s0, 8(sp)
2012cbce lbu a1, 0x14(s1)
2012cbd2 c.lwsp ra, 0xc(sp)
2012cbd4 c.lwsp s1, 4(sp)
2012cbd6 c.li a3, 0
2012cbd8 c.li a2, 0
2012cbda c.addi sp, 0x10
2012cbdc j -0xb9e
2012cbe0 c.addi sp, -0x10
2012cbe2 c.swsp s1, 4(sp)
2012cbe4 c.lw s1, 0xc(a0)
2012cbe6 c.swsp ra, 0xc(sp)
2012cbe8 c.swsp s0, 8(sp)
2012cbea lbu a1, 0x16(s1)
2012cbee c.li a3, 0
2012cbf0 c.li a2, 0
2012cbf2 c.mv s0, a0
2012cbf4 jal -0xbb6
2012cbf8 lbu a1, 0(s1)
2012cbfc c.li a3, 0
2012cbfe c.li a2, 0
2012cc00 c.mv a0, s0
2012cc02 jal -0xbc4
2012cc06 lbu a1, 2(s1)
2012cc0a c.mv a0, s0
2012cc0c jal -0x96c
2012cc10 c.andi a0, 2
2012cc12 c.beqz a0, 0x12
2012cc14 lbu a1, 1(s1)
2012cc18 c.mv a0, s0
2012cc1a c.li a3, 0
2012cc1c c.li a2, 0
2012cc1e jal -0xbe0
2012cc22 c.li a0, 1
2012cc24 c.lwsp ra, 0xc(sp)
2012cc26 c.lwsp s0, 8(sp)
2012cc28 c.lwsp s1, 4(sp)
2012cc2a c.addi sp, 0x10
2012cc2c c.jr ra
2012cc2e c.addi16sp sp, -0x40
2012cc30 c.swsp s0, 0x38(sp)
2012cc32 c.swsp s1, 0x34(sp)
2012cc34 c.swsp s2, 0x30(sp)

BASE 0x2012cd70 0xb8004
2012cd64 c.addi t1, -8
2012cd66 sw s11, 0x11c(sp)
2012cd6a c.mv s6, a0
2012cd6c lw s11, 0xc(a0)
2012cd70 lui a0, 0xb8004
2012cd74 sw s0, 0x148(sp)
2012cd78 sw s1, 0x144(sp)
2012cd7c sw s2, 0x140(sp)
2012cd80 sw s3, 0x13c(sp)
2012cd84 sw s4, 0x138(sp)
2012cd88 sw s7, 0x12c(sp)
2012cd8c sw s8, 0x128(sp)
2012cd90 sw ra, 0x14c(sp)
2012cd94 sw s10, 0x120(sp)
2012cd98 addi a0, a0, 0x118
2012cd9c c.mv s0, a3
2012cd9e c.mv s1, a1
2012cda0 c.mv s2, a2
2012cda2 andi s4, a3, 0xff
2012cda6 andi s3, a2, 0xff
2012cdaa c.jalr a5
2012cdac srli s7, s0, 0x18
2012cdb0 addi a5, zero, 0x24
2012cdb4 andi s5, s5, 0xff
2012cdb8 c.mv s8, a0
2012cdba bne s7, a5, 0xc
2012cdbe c.addi4spn a2, sp, 0x10
2012cdc0 c.mv a1, s2
2012cdc2 c.mv a0, s1
2012cdc4 c.jal -0x196
2012cdc6 lbu s10, 0x1f(s6)
2012cdca beqz s3, 0x1b4
2012cdce addi a5, zero, 0xff
2012cdd2 bltu a5, s1, 0xc
2012cdd6 add a4, s3, s1
2012cdda bgeu a5, a4, 0xc
2012cdde addi s1, zero, 0x100
2012cde2 sub s1, s1, s3
2012cde6 c.mv a0, s6
2012cde8 jal -0x89e
2012cdec lw a5, 0x758(s9)
2012cdf0 lui a0, 0xb8004
2012cdf4 lui s3, 0x20201
2012cdf8 c.jalr a5
2012cdfa lw a3, 0x74c(s3)
2012cdfe lui a4, 0xc0000
2012ce02 or a1, a0, a4

BASE 0x2012cdf0 0xb8004
2012cde4 c.lw a3, 0x40(a0)
2012cde6 c.mv a0, s6
2012cde8 jal -0x89e
2012cdec lw a5, 0x758(s9)
2012cdf0 lui a0, 0xb8004
2012cdf4 lui s3, 0x20201
2012cdf8 c.jalr a5
2012cdfa lw a3, 0x74c(s3)
2012cdfe lui a4, 0xc0000
2012ce02 or a1, a0, a4
2012ce06 c.swsp a0, 4(sp)
2012ce08 lui a0, 0xb8004
2012ce0c c.jalr a3
2012ce0e c.lwsp a5, 4(sp)
2012ce10 lui a1, 0xffc10
2012ce14 addi a1, a1, -0x301
2012ce18 c.and a1, a5
2012ce1a lw a5, 0x74c(s3)
2012ce1e lui a4, 0xc0000
2012ce22 c.or a1, a4
2012ce24 lui a0, 0xb8004
2012ce28 c.jalr a5
2012ce2a lw a4, 0x74c(s3)
2012ce2e slli a5, s10, 0x10
2012ce32 c.lui a1, 1
2012ce34 lui a0, 0xb8004
2012ce38 c.or a1, a5
2012ce3a addi a0, a0, 0x118
2012ce3e c.jalr a4
2012ce40 addi a5, zero, 0x24
2012ce44 bne s7, a5, 6
2012ce48 c.addi4spn s0, sp, 0x10
2012ce4a lw a5, 0x74c(s3)
2012ce4e lui s7, 0xb8004
2012ce52 c.li a1, 0
2012ce54 addi a0, s7, 4
2012ce58 c.jalr a5
2012ce5a lw a5, 0x74c(s3)
2012ce5e c.mv a1, s1
2012ce60 addi a0, s7, 0x130
2012ce64 c.jalr a5
2012ce66 lw a5, 0x74c(s3)
2012ce6a c.li a1, 1
2012ce6c addi a0, s7, 8
2012ce70 c.jalr a5
2012ce72 c.lui a4, 0x10
2012ce74 srli a5, s2, 0x10
2012ce78 c.slli a5, 8
2012ce7a addi a1, a4, -1
2012ce7e and a4, a5, a1
2012ce82 c.li a3, 3
2012ce84 .byte 0xb7, 0x05

BASE 0x2012ce08 0xb8004
2012cdfc c.lui s1, 0xffff2
2012cdfe lui a4, 0xc0000
2012ce02 or a1, a0, a4
2012ce06 c.swsp a0, 4(sp)
2012ce08 lui a0, 0xb8004
2012ce0c c.jalr a3
2012ce0e c.lwsp a5, 4(sp)
2012ce10 lui a1, 0xffc10
2012ce14 addi a1, a1, -0x301
2012ce18 c.and a1, a5
2012ce1a lw a5, 0x74c(s3)
2012ce1e lui a4, 0xc0000
2012ce22 c.or a1, a4
2012ce24 lui a0, 0xb8004
2012ce28 c.jalr a5
2012ce2a lw a4, 0x74c(s3)
2012ce2e slli a5, s10, 0x10
2012ce32 c.lui a1, 1
2012ce34 lui a0, 0xb8004
2012ce38 c.or a1, a5
2012ce3a addi a0, a0, 0x118
2012ce3e c.jalr a4
2012ce40 addi a5, zero, 0x24
2012ce44 bne s7, a5, 6
2012ce48 c.addi4spn s0, sp, 0x10
2012ce4a lw a5, 0x74c(s3)
2012ce4e lui s7, 0xb8004
2012ce52 c.li a1, 0
2012ce54 addi a0, s7, 4
2012ce58 c.jalr a5
2012ce5a lw a5, 0x74c(s3)
2012ce5e c.mv a1, s1
2012ce60 addi a0, s7, 0x130
2012ce64 c.jalr a5
2012ce66 lw a5, 0x74c(s3)
2012ce6a c.li a1, 1
2012ce6c addi a0, s7, 8
2012ce70 c.jalr a5
2012ce72 c.lui a4, 0x10
2012ce74 srli a5, s2, 0x10
2012ce78 c.slli a5, 8
2012ce7a addi a1, a4, -1
2012ce7e and a4, a5, a1
2012ce82 c.li a3, 3
2012ce84 lui a1, 0xff0
2012ce88 slli a5, s2, 8
2012ce8c c.and a5, a1
2012ce8e slli a2, s2, 0x18
2012ce92 lbu a1, 0x13(s11)
2012ce96 bne s10, a3, 0xf6
2012ce9a lw a3, 0x74c(s3)

BASE 0x2012ce24 0xb8004
2012ce18 c.and a1, a5
2012ce1a lw a5, 0x74c(s3)
2012ce1e lui a4, 0xc0000
2012ce22 c.or a1, a4
2012ce24 lui a0, 0xb8004
2012ce28 c.jalr a5
2012ce2a lw a4, 0x74c(s3)
2012ce2e slli a5, s10, 0x10
2012ce32 c.lui a1, 1
2012ce34 lui a0, 0xb8004
2012ce38 c.or a1, a5
2012ce3a addi a0, a0, 0x118
2012ce3e c.jalr a4
2012ce40 addi a5, zero, 0x24
2012ce44 bne s7, a5, 6
2012ce48 c.addi4spn s0, sp, 0x10
2012ce4a lw a5, 0x74c(s3)
2012ce4e lui s7, 0xb8004
2012ce52 c.li a1, 0
2012ce54 addi a0, s7, 4
2012ce58 c.jalr a5
2012ce5a lw a5, 0x74c(s3)
2012ce5e c.mv a1, s1
2012ce60 addi a0, s7, 0x130
2012ce64 c.jalr a5
2012ce66 lw a5, 0x74c(s3)
2012ce6a c.li a1, 1
2012ce6c addi a0, s7, 8
2012ce70 c.jalr a5
2012ce72 c.lui a4, 0x10
2012ce74 srli a5, s2, 0x10
2012ce78 c.slli a5, 8
2012ce7a addi a1, a4, -1
2012ce7e and a4, a5, a1
2012ce82 c.li a3, 3
2012ce84 lui a1, 0xff0
2012ce88 slli a5, s2, 8
2012ce8c c.and a5, a1
2012ce8e slli a2, s2, 0x18
2012ce92 lbu a1, 0x13(s11)
2012ce96 bne s10, a3, 0xf6
2012ce9a lw a3, 0x74c(s3)
2012ce9e c.or a5, a4
2012cea0 c.or a5, a2
2012cea2 c.or a1, a5
2012cea4 addi a0, s7, 0x60
2012cea8 c.jalr a3
2012ceaa c.li a5, 4
2012ceac beq s5, a5, 0x38
2012ceb0 lui s7, 0xb8004
2012ceb4 c.add s5, s0
2012ceb6 c.mv s2, s0
2012ceb8 .byte 0x37, 0x1d

BASE 0x2012ce34 0xb8004
2012ce28 c.jalr a5
2012ce2a lw a4, 0x74c(s3)
2012ce2e slli a5, s10, 0x10
2012ce32 c.lui a1, 1
2012ce34 lui a0, 0xb8004
2012ce38 c.or a1, a5
2012ce3a addi a0, a0, 0x118
2012ce3e c.jalr a4
2012ce40 addi a5, zero, 0x24
2012ce44 bne s7, a5, 6
2012ce48 c.addi4spn s0, sp, 0x10
2012ce4a lw a5, 0x74c(s3)
2012ce4e lui s7, 0xb8004
2012ce52 c.li a1, 0
2012ce54 addi a0, s7, 4
2012ce58 c.jalr a5
2012ce5a lw a5, 0x74c(s3)
2012ce5e c.mv a1, s1
2012ce60 addi a0, s7, 0x130
2012ce64 c.jalr a5
2012ce66 lw a5, 0x74c(s3)
2012ce6a c.li a1, 1
2012ce6c addi a0, s7, 8
2012ce70 c.jalr a5
2012ce72 c.lui a4, 0x10
2012ce74 srli a5, s2, 0x10
2012ce78 c.slli a5, 8
2012ce7a addi a1, a4, -1
2012ce7e and a4, a5, a1
2012ce82 c.li a3, 3
2012ce84 lui a1, 0xff0
2012ce88 slli a5, s2, 8
2012ce8c c.and a5, a1
2012ce8e slli a2, s2, 0x18
2012ce92 lbu a1, 0x13(s11)
2012ce96 bne s10, a3, 0xf6
2012ce9a lw a3, 0x74c(s3)
2012ce9e c.or a5, a4
2012cea0 c.or a5, a2
2012cea2 c.or a1, a5
2012cea4 addi a0, s7, 0x60
2012cea8 c.jalr a3
2012ceaa c.li a5, 4
2012ceac beq s5, a5, 0x38
2012ceb0 lui s7, 0xb8004
2012ceb4 c.add s5, s0
2012ceb6 c.mv s2, s0
2012ceb8 lui s10, 0x20201
2012cebc addi s7, s7, 0x60
2012cec0 lbu a1, 0(s2)
2012cec4 lw a5, 0x754(s10)
2012cec8 c.mv a0, s7

BASE 0x2012ce4e 0xb8004
2012ce42 c.addi4spn s0, sp, 0x104
2012ce44 bne s7, a5, 6
2012ce48 c.addi4spn s0, sp, 0x10
2012ce4a lw a5, 0x74c(s3)
2012ce4e lui s7, 0xb8004
2012ce52 c.li a1, 0
2012ce54 addi a0, s7, 4
2012ce58 c.jalr a5
2012ce5a lw a5, 0x74c(s3)
2012ce5e c.mv a1, s1
2012ce60 addi a0, s7, 0x130
2012ce64 c.jalr a5
2012ce66 lw a5, 0x74c(s3)
2012ce6a c.li a1, 1
2012ce6c addi a0, s7, 8
2012ce70 c.jalr a5
2012ce72 c.lui a4, 0x10
2012ce74 srli a5, s2, 0x10
2012ce78 c.slli a5, 8
2012ce7a addi a1, a4, -1
2012ce7e and a4, a5, a1
2012ce82 c.li a3, 3
2012ce84 lui a1, 0xff0
2012ce88 slli a5, s2, 8
2012ce8c c.and a5, a1
2012ce8e slli a2, s2, 0x18
2012ce92 lbu a1, 0x13(s11)
2012ce96 bne s10, a3, 0xf6
2012ce9a lw a3, 0x74c(s3)
2012ce9e c.or a5, a4
2012cea0 c.or a5, a2
2012cea2 c.or a1, a5
2012cea4 addi a0, s7, 0x60
2012cea8 c.jalr a3
2012ceaa c.li a5, 4
2012ceac beq s5, a5, 0x38
2012ceb0 lui s7, 0xb8004
2012ceb4 c.add s5, s0
2012ceb6 c.mv s2, s0
2012ceb8 lui s10, 0x20201
2012cebc addi s7, s7, 0x60
2012cec0 lbu a1, 0(s2)
2012cec4 lw a5, 0x754(s10)
2012cec8 c.mv a0, s7
2012ceca c.addi s2, 1
2012cecc c.jalr a5
2012cece bne s5, s2, -0xe
2012ced2 not s4, s4
2012ced6 andi s4, s4, 3
2012ceda not a5, s4
2012cede c.addi s4, 1
2012cee0 c.add s1, a5
2012cee2 c.add s0, s4

BASE 0x2012ceb0 0xb8004
2012cea4 addi a0, s7, 0x60
2012cea8 c.jalr a3
2012ceaa c.li a5, 4
2012ceac beq s5, a5, 0x38
2012ceb0 lui s7, 0xb8004
2012ceb4 c.add s5, s0
2012ceb6 c.mv s2, s0
2012ceb8 lui s10, 0x20201
2012cebc addi s7, s7, 0x60
2012cec0 lbu a1, 0(s2)
2012cec4 lw a5, 0x754(s10)
2012cec8 c.mv a0, s7
2012ceca c.addi s2, 1
2012cecc c.jalr a5
2012cece bne s5, s2, -0xe
2012ced2 not s4, s4
2012ced6 andi s4, s4, 3
2012ceda not a5, s4
2012cede c.addi s4, 1
2012cee0 c.add s1, a5
2012cee2 c.add s0, s4
2012cee4 lui s2, 0xb8004
2012cee8 c.mv s4, s0
2012ceea add s5, s0, s1
2012ceee addi s7, s2, 0x20
2012cef2 addi s10, zero, 0x80
2012cef6 c.li s11, 0x10
2012cef8 sub a4, s5, s4
2012cefc c.li a5, 3
2012cefe bltu a5, a4, 0xb6
2012cf02 srli a1, s1, 2
2012cf06 c.li a5, -4
2012cf08 mul a1, a1, a5
2012cf0c andi a3, s1, -4
2012cf10 c.add s0, a3
2012cf12 lui s2, 0xb8004
2012cf16 lui s4, 0x20201
2012cf1a addi s2, s2, 0x60
2012cf1e c.add s1, a1
2012cf20 c.add s1, s0
2012cf22 bne s0, s1, 0xb8
2012cf26 jal -0x12b4
2012cf2a c.mv a0, s6
2012cf2c jal -0xb2a
2012cf30 c.mv a0, s6
2012cf32 jal -0x11a2
2012cf36 lw a5, 0x74c(s3)
2012cf3a lui a0, 0xb8004
2012cf3e c.mv a1, s8
2012cf40 addi a0, a0, 0x118
2012cf44 c.jalr a5

BASE 0x2012cee4 0xb8004
2012ced8 .byte 0x3a, 0x00
2012ceda not a5, s4
2012cede c.addi s4, 1
2012cee0 c.add s1, a5
2012cee2 c.add s0, s4
2012cee4 lui s2, 0xb8004
2012cee8 c.mv s4, s0
2012ceea add s5, s0, s1
2012ceee addi s7, s2, 0x20
2012cef2 addi s10, zero, 0x80
2012cef6 c.li s11, 0x10
2012cef8 sub a4, s5, s4
2012cefc c.li a5, 3
2012cefe bltu a5, a4, 0xb6
2012cf02 srli a1, s1, 2
2012cf06 c.li a5, -4
2012cf08 mul a1, a1, a5
2012cf0c andi a3, s1, -4
2012cf10 c.add s0, a3
2012cf12 lui s2, 0xb8004
2012cf16 lui s4, 0x20201
2012cf1a addi s2, s2, 0x60
2012cf1e c.add s1, a1
2012cf20 c.add s1, s0
2012cf22 bne s0, s1, 0xb8
2012cf26 jal -0x12b4
2012cf2a c.mv a0, s6
2012cf2c jal -0xb2a
2012cf30 c.mv a0, s6
2012cf32 jal -0x11a2
2012cf36 lw a5, 0x74c(s3)
2012cf3a lui a0, 0xb8004
2012cf3e c.mv a1, s8
2012cf40 addi a0, a0, 0x118
2012cf44 c.jalr a5
2012cf46 lw ra, 0x14c(sp)
2012cf4a lw s0, 0x148(sp)
2012cf4e lw s1, 0x144(sp)
2012cf52 lw s2, 0x140(sp)
2012cf56 lw s3, 0x13c(sp)
2012cf5a lw s4, 0x138(sp)
2012cf5e lw s5, 0x134(sp)
2012cf62 lw s6, 0x130(sp)
2012cf66 lw s7, 0x12c(sp)
2012cf6a lw s8, 0x128(sp)
2012cf6e lw s9, 0x124(sp)
2012cf72 lw s10, 0x120(sp)
2012cf76 lw s11, 0x11c(sp)

BASE 0x2012cf12 0xb8004
2012cf06 c.li a5, -4
2012cf08 mul a1, a1, a5
2012cf0c andi a3, s1, -4
2012cf10 c.add s0, a3
2012cf12 lui s2, 0xb8004
2012cf16 lui s4, 0x20201
2012cf1a addi s2, s2, 0x60
2012cf1e c.add s1, a1
2012cf20 c.add s1, s0
2012cf22 bne s0, s1, 0xb8
2012cf26 jal -0x12b4
2012cf2a c.mv a0, s6
2012cf2c jal -0xb2a
2012cf30 c.mv a0, s6
2012cf32 jal -0x11a2
2012cf36 lw a5, 0x74c(s3)
2012cf3a lui a0, 0xb8004
2012cf3e c.mv a1, s8
2012cf40 addi a0, a0, 0x118
2012cf44 c.jalr a5
2012cf46 lw ra, 0x14c(sp)
2012cf4a lw s0, 0x148(sp)
2012cf4e lw s1, 0x144(sp)
2012cf52 lw s2, 0x140(sp)
2012cf56 lw s3, 0x13c(sp)
2012cf5a lw s4, 0x138(sp)
2012cf5e lw s5, 0x134(sp)
2012cf62 lw s6, 0x130(sp)
2012cf66 lw s7, 0x12c(sp)
2012cf6a lw s8, 0x128(sp)
2012cf6e lw s9, 0x124(sp)
2012cf72 lw s10, 0x120(sp)
2012cf76 lw s11, 0x11c(sp)
2012cf7a c.addi16sp sp, 0x150
2012cf7c c.jr ra
2012cf7e addi a5, zero, 0x100
2012cf82 bgeu a5, s1, -0x19c
2012cf86 addi s1, zero, 0x100
2012cf8a c.j -0x1a4
2012cf8c lui a3, 0x20201
2012cf90 lw a3, 0x754(a3)
2012cf94 addi a0, s7, 0x60
2012cf98 c.swsp a5, 0xc(sp)
2012cf9a c.swsp a2, 8(sp)
2012cf9c c.swsp a4, 4(sp)
2012cf9e c.jalr a3
2012cfa0 c.lwsp a2, 8(sp)
2012cfa2 c.lwsp a4, 4(sp)
2012cfa4 srli a1, s2, 0x18

BASE 0x2012cf3a 0xb8004
2012cf2e jal s10, -0x537ac
2012cf32 jal -0x11a2
2012cf36 lw a5, 0x74c(s3)
2012cf3a lui a0, 0xb8004
2012cf3e c.mv a1, s8
2012cf40 addi a0, a0, 0x118
2012cf44 c.jalr a5
2012cf46 lw ra, 0x14c(sp)
2012cf4a lw s0, 0x148(sp)
2012cf4e lw s1, 0x144(sp)
2012cf52 lw s2, 0x140(sp)
2012cf56 lw s3, 0x13c(sp)
2012cf5a lw s4, 0x138(sp)
2012cf5e lw s5, 0x134(sp)
2012cf62 lw s6, 0x130(sp)
2012cf66 lw s7, 0x12c(sp)
2012cf6a lw s8, 0x128(sp)
2012cf6e lw s9, 0x124(sp)
2012cf72 lw s10, 0x120(sp)
2012cf76 lw s11, 0x11c(sp)
2012cf7a c.addi16sp sp, 0x150
2012cf7c c.jr ra
2012cf7e addi a5, zero, 0x100
2012cf82 bgeu a5, s1, -0x19c
2012cf86 addi s1, zero, 0x100
2012cf8a c.j -0x1a4
2012cf8c lui a3, 0x20201
2012cf90 lw a3, 0x754(a3)
2012cf94 addi a0, s7, 0x60
2012cf98 c.swsp a5, 0xc(sp)
2012cf9a c.swsp a2, 8(sp)
2012cf9c c.swsp a4, 4(sp)
2012cf9e c.jalr a3
2012cfa0 c.lwsp a2, 8(sp)
2012cfa2 c.lwsp a4, 4(sp)
2012cfa4 srli a1, s2, 0x18
2012cfa8 c.or a1, a2
2012cfaa lw a3, 0x74c(s3)
2012cfae c.lwsp a5, 0xc(sp)
2012cfb0 c.or a1, a4
2012cfb2 c.j -0x110
2012cfb4 lw a3, 0x758(s9)
2012cfb8 c.mv a0, s7
2012cfba c.swsp a4, 4(sp)
2012cfbc c.jalr a3
2012cfbe sub a0, s10, a0
2012cfc2 c.lwsp a4, 4(sp)
2012cfc4 bgeu s11, a0, -0xc8
2012cfc8 lw a1, 0(s4)
2012cfcc lw a4, 0x74c(s3)

BASE 0x2012ea52 0xb8003
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
2012eae6 .byte 0x63, 0xe6

BASE 0x2012ea78 0xb8003
2012ea6c c.addi t0, 0x1e
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
2012eafc c.jalr a5
2012eafe c.li a5, 1
2012eb00 c.lwsp ra, 0xc(sp)
2012eb02 sll a5, a5, s0
2012eb06 c.lwsp s0, 8(sp)
2012eb08 c.and a0, a5
2012eb0a snez a0, a0

BASE 0x20130c30 0xb8005
20130c24 .byte 0x07, 0x90
20130c26 lui a5, 0x20201
20130c2a lw a5, 0x758(a5)
20130c2e c.addi sp, -0x20
20130c30 lui a0, 0xb8005
20130c34 c.swsp ra, 0x1c(sp)
20130c36 c.swsp s0, 0x18(sp)
20130c38 c.swsp s1, 0x14(sp)
20130c3a c.swsp s2, 0x10(sp)
20130c3c c.swsp s3, 0xc(sp)
20130c3e c.swsp s4, 8(sp)
20130c40 c.swsp s5, 4(sp)
20130c42 c.swsp s6, 0(sp)
20130c44 addi a0, a0, 0x130
20130c48 c.jalr a5
20130c4a andi a0, a0, 0xff
20130c4e c.beqz a0, 0xe
20130c50 lui a5, 0x20201
20130c54 lw a5, 0x5a8(a5)
20130c58 c.li a0, 1
20130c5a c.jalr a5
20130c5c lui s2, 0x20204
20130c60 addi s4, s2, 0x540
20130c64 lw a5, 0x84(s4)
20130c68 lui s0, 0x20000
20130c6c lui s1, 0x20204
20130c70 c.or s0, a5
20130c72 lw a5, -0x480(s1)
20130c76 lui s5, 0x20204
20130c7a c.bnez a5, 0x96
20130c7c lui s3, 0x20201
20130c80 lw a5, 0x73c(s3)
20130c84 c.mv a1, s0
20130c86 addi a0, zero, 0x16c
20130c8a c.jalr a5
20130c8c lui a5, 0x20201
20130c90 lw s6, 0x73c(s3)
20130c94 lw a5, 0x748(a5)
20130c98 addi a0, zero, 0x1f0
20130c9c c.jalr a5
20130c9e lui a1, 0xff000
20130ca2 addi a1, a1, 0xff
20130ca6 c.lui a5, 1
20130ca8 addi a5, a5, 0x300
20130cac c.and a1, a0
20130cae c.or a1, a5
20130cb0 addi a0, zero, 0x1f0
20130cb4 c.jalr s6
20130cb6 lw a5, 0x73c(s3)
20130cba lw a1, 0x80(s4)
20130cbe addi a0, zero, 0x1f4
20130cc2 c.jalr a5
20130cc4 .byte 0x83, 0xa7

BASE 0x201317ec 0xb8003
201317e0 .byte 0x87, 0x74
201317e2 c.lui a0, 9
201317e4 c.swsp s0, 4(sp)
201317e6 addi a0, a0, 0x110
201317ea c.jalr a5
201317ec lui s5, 0xb8003
201317f0 c.lui s0, 1
201317f2 c.mv s3, a0
201317f4 c.li s4, 0xb
201317f6 lui s8, 0x20201
201317fa addi s5, s5, 0x6c
201317fe lui s7, 0x20202
20131802 c.addi s0, -1
20131804 lui s9, 0x20202
20131808 c.addi s4, -1
2013180a bnez s4, 8
2013180e c.li a5, 2
20131810 c.j 0x32
20131812 lw a5, 0x758(s8)
20131816 c.mv a0, s5
20131818 c.jalr a5
2013181a lui a5, 0x20000
2013181e c.and a0, a5
20131820 c.bnez a0, 0x26
20131822 lw a5, -0x39c(s7)
20131826 c.addi4spn a0, sp, 4
20131828 c.jalr a5
2013182a c.bnez a0, 0x16
2013182c c.lwsp a5, 0xc(sp)
2013182e c.and a5, s0
20131830 bgeu a5, s2, 0x16
20131834 addi a0, sp, 2
20131838 c.jal -0x116
2013183a c.li a4, 1
2013183c beq a0, a4, 0x3c
20131840 c.li a5, 3
20131842 sb a5, 0(s1)
20131846 lui a5, 0x20201
2013184a lw a5, 0x73c(a5)
2013184e lui a1, 0x80000
20131852 c.lui a0, 9
20131854 or a1, s3, a1
20131858 addi a0, a0, 0x110
2013185c c.jalr a5
2013185e c.lwsp ra, 0x3c(sp)
20131860 c.lwsp s0, 0x38(sp)
20131862 c.lwsp s1, 0x34(sp)
20131864 c.lwsp s2, 0x30(sp)
20131866 c.lwsp s3, 0x2c(sp)
20131868 c.lwsp s4, 0x28(sp)
2013186a c.lwsp s5, 0x24(sp)
2013186c c.lwsp s6, 0x20(sp)
2013186e c.lwsp s7, 0x1c(sp)
20131870 c.lwsp s8, 0x18(sp)
20131872 c.lwsp s9, 0x14(sp)
20131874 c.addi16sp sp, 0x40
20131876 c.jr ra
20131878 lbu s6, 2(sp)
2013187c bne s6, a0, 0x2c
20131880 .byte 0x83, 0xa7

BASE 0x201318e6 0xb8007
201318da ori a5, a5, 8
201318de sb a5, 3(a3)
201318e2 lw a5, 0x758(s2)
201318e6 lui s0, 0xb8007
201318ea addi a0, s0, -0x700
201318ee lw s3, 4(a4)
201318f2 c.jalr a5
201318f4 c.lw a4, 0xc(s1)
201318f6 lw a5, 0x758(s2)
201318fa sw a0, 0x1c(s3)
201318fe c.lw a4, 0x30(a4)
20131900 addi a0, s0, -0x700
20131904 c.lw s1, 4(a4)
20131906 c.jalr a5
20131908 c.li a1, 0
2013190a c.sw a0, 0x20(s1)
2013190c lui s1, 0x20201
20131910 lw a5, 0x74c(s1)
20131914 addi a0, s0, -0x700
20131918 c.jalr a5
2013191a addi a0, s0, -0x700
2013191e c.lwsp s0, 0x18(sp)
20131920 lw a5, 0x74c(s1)
20131924 c.lwsp ra, 0x1c(sp)
20131926 c.lwsp s1, 0x14(sp)
20131928 c.lwsp s2, 0x10(sp)
2013192a c.lwsp s3, 0xc(sp)
2013192c c.li a1, 0
2013192e c.addi16sp sp, 0x20
20131930 c.jr a5
20131932 c.li a5, 1
20131934 bne a0, a5, 0x48
20131938 lui s0, 0x20203
2013193c addi s0, s0, 0x580
20131940 c.lw a4, 0xc(s0)
20131942 lui s2, 0x20201
20131946 lw a5, 0x74c(s2)
2013194a c.lw a4, 0x30(a4)
2013194c lui s1, 0xb8007
20131950 addi a0, s1, -0x700
20131954 c.lw a4, 4(a4)
20131956 c.lw a1, 0x1c(a4)
20131958 c.jalr a5
2013195a c.lw a4, 0xc(s0)
2013195c lw a5, 0x74c(s2)
20131960 addi a0, s1, -0x700
20131964 c.lw a4, 0x30(a4)
20131966 c.lw a4, 4(a4)
20131968 c.lw a1, 0x20(a4)
2013196a c.jalr a5
2013196c c.lw a5, 0xc(s0)
2013196e c.lw a5, 0x30(a5)
20131970 c.lw a4, 0(a5)
20131972 lbu a5, 3(a4)
20131976 c.andi a5, -9
20131978 sb a5, 3(a4)

BASE 0x2013194c 0xb8007
20131940 c.lw a4, 0xc(s0)
20131942 lui s2, 0x20201
20131946 lw a5, 0x74c(s2)
2013194a c.lw a4, 0x30(a4)
2013194c lui s1, 0xb8007
20131950 addi a0, s1, -0x700
20131954 c.lw a4, 4(a4)
20131956 c.lw a1, 0x1c(a4)
20131958 c.jalr a5
2013195a c.lw a4, 0xc(s0)
2013195c lw a5, 0x74c(s2)
20131960 addi a0, s1, -0x700
20131964 c.lw a4, 0x30(a4)
20131966 c.lw a4, 4(a4)
20131968 c.lw a1, 0x20(a4)
2013196a c.jalr a5
2013196c c.lw a5, 0xc(s0)
2013196e c.lw a5, 0x30(a5)
20131970 c.lw a4, 0(a5)
20131972 lbu a5, 3(a4)
20131976 c.andi a5, -9
20131978 sb a5, 3(a4)
2013197c c.lwsp ra, 0x1c(sp)
2013197e c.lwsp s0, 0x18(sp)
20131980 c.lwsp s1, 0x14(sp)
20131982 c.lwsp s2, 0x10(sp)
20131984 c.lwsp s3, 0xc(sp)
20131986 c.addi16sp sp, 0x20
20131988 c.jr ra
2013198a lui a5, 0x20201
2013198e c.addi sp, -0x10
20131990 lw a5, 0x740(a5)
20131994 c.swsp s1, 4(sp)
20131996 c.lui s1, 8
20131998 c.swsp s0, 8(sp)
2013199a c.swsp ra, 0xc(sp)
2013199c c.mv s0, a0
2013199e addi a0, s1, 0x427
201319a2 c.jalr a5
201319a4 c.andi a0, 0xf
201319a6 c.slli s0, 4
201319a8 c.or s0, a0
201319aa lui a5, 0x20201
201319ae andi a1, s0, 0xff
201319b2 c.lwsp s0, 8(sp)
201319b4 c.lwsp ra, 0xc(sp)
201319b6 lw a5, 0x734(a5)
201319ba addi a0, s1, 0x427
201319be c.lwsp s1, 4(sp)
201319c0 c.addi sp, 0x10
201319c2 c.jr a5
201319c4 lui a5, 0x20201
201319c8 lw a5, 0x734(a5)
201319cc c.mv a1, a0
201319ce c.lui a0, 8
201319d0 addi a0, a0, 0x426
201319d4 c.jr a5
201319d6 c.addi sp, -0x10
201319d8 c.swsp s1, 4(sp)
201319da lui s1, 0x20201
201319de lw a5, 0x73c(s1)

BASE 0x20132702 0xb8006
201326f6 c.srli a0, 0x32
201326f8 c.jalr a5
201326fa lui a5, 0x20201
201326fe lw a5, 0x758(a5)
20132702 lui a0, 0xb8006
20132706 c.jalr a5
20132708 c.lui a5, 0xffffd
2013270a lui a4, 0x20201
2013270e lw a4, 0x74c(a4)
20132712 addi a5, a5, 0x7ff
20132716 c.and a5, a0
20132718 lui a1, 0x100
2013271c c.or a1, a5
2013271e lui a0, 0xb8006
20132722 c.jalr a4
20132724 lw a5, 0x748(s0)
20132728 c.lui a0, 8
2013272a addi a0, a0, 0x524
2013272e c.jalr a5
20132730 c.lui a5, 4
20132732 c.and a5, a0
20132734 c.beqz a5, 8
20132736 c.li a0, 0
20132738 jal -0xc950
2013273c c.mv a0, s1
2013273e lui s3, 0x20203
20132742 addi s3, s3, 0x580
20132746 c.jal -0x41e
20132748 lw a4, 0xc(s3)
2013274c lw a5, 0x748(s0)
20132750 c.lui s4, 0x11
20132752 c.lw a4, 0x30(a4)
20132754 addi a0, s4, 0x424
20132758 c.lw s1, 4(a4)
2013275a c.jalr a5
2013275c lw a4, 0xc(s3)
20132760 lw a5, 0x748(s0)
20132764 c.sw a0, 0x24(s1)
20132766 c.lw a4, 0x30(a4)
20132768 addi a0, s4, 0x428
2013276c c.lw s1, 4(a4)
2013276e c.jalr a5
20132770 lw a4, 0xc(s3)
20132774 lw a5, 0x748(s0)
20132778 c.sw a0, 0x28(s1)
2013277a c.lw a4, 0x30(a4)
2013277c addi a0, s4, 0x42c
20132780 c.lw s1, 4(a4)
20132782 c.jalr a5
20132784 lw a4, 0xc(s3)
20132788 lw a5, 0x748(s0)
2013278c c.sw a0, 0x2c(s1)
2013278e c.lw a4, 0x30(a4)
20132790 c.lui s1, 0xe
20132792 addi a0, s1, 0x100
20132796 .byte 0x03, 0x2b

BASE 0x2013271e 0xb8006
20132712 addi a5, a5, 0x7ff
20132716 c.and a5, a0
20132718 lui a1, 0x100
2013271c c.or a1, a5
2013271e lui a0, 0xb8006
20132722 c.jalr a4
20132724 lw a5, 0x748(s0)
20132728 c.lui a0, 8
2013272a addi a0, a0, 0x524
2013272e c.jalr a5
20132730 c.lui a5, 4
20132732 c.and a5, a0
20132734 c.beqz a5, 8
20132736 c.li a0, 0
20132738 jal -0xc950
2013273c c.mv a0, s1
2013273e lui s3, 0x20203
20132742 addi s3, s3, 0x580
20132746 c.jal -0x41e
20132748 lw a4, 0xc(s3)
2013274c lw a5, 0x748(s0)
20132750 c.lui s4, 0x11
20132752 c.lw a4, 0x30(a4)
20132754 addi a0, s4, 0x424
20132758 c.lw s1, 4(a4)
2013275a c.jalr a5
2013275c lw a4, 0xc(s3)
20132760 lw a5, 0x748(s0)
20132764 c.sw a0, 0x24(s1)
20132766 c.lw a4, 0x30(a4)
20132768 addi a0, s4, 0x428
2013276c c.lw s1, 4(a4)
2013276e c.jalr a5
20132770 lw a4, 0xc(s3)
20132774 lw a5, 0x748(s0)
20132778 c.sw a0, 0x28(s1)
2013277a c.lw a4, 0x30(a4)
2013277c addi a0, s4, 0x42c
20132780 c.lw s1, 4(a4)
20132782 c.jalr a5
20132784 lw a4, 0xc(s3)
20132788 lw a5, 0x748(s0)
2013278c c.sw a0, 0x2c(s1)
2013278e c.lw a4, 0x30(a4)
20132790 c.lui s1, 0xe
20132792 addi a0, s1, 0x100
20132796 lw s6, 4(a4)
2013279a c.jalr a5
2013279c lw a4, 0xc(s3)
201327a0 lw a5, 0x748(s0)
201327a4 sw a0, 0x30(s6)
201327a8 c.lw a4, 0x30(a4)
201327aa addi a0, s1, 0x104
201327ae lw s6, 4(a4)
201327b2 c.jalr a5

BASE 0x2013317a 0xb8003
2013316e c.andi s1, 0x12
20133170 c.jalr a5
20133172 lui a5, 0x20201
20133176 lw a5, 0x74c(a5)
2013317a lui a0, 0xb8003
2013317e lui a1, 0xe0000
20133182 addi a0, a0, 0x60
20133186 c.jalr a5
20133188 lw a5, 0x748(s0)
2013318c addi a0, s2, -0x5dc
20133190 c.jalr a5
20133192 lw a5, 0x73c(s3)
20133196 c.mv a1, a0
20133198 addi a0, s2, -0x5dc
2013319c c.jalr a5
2013319e c.li a0, 1
201331a0 jal -0x18f0
201331a4 c.mv a0, s7
201331a6 jal -0x181c
201331aa c.lw a4, 0(s1)
201331ac lw a5, 0x734(s8)
201331b0 c.lui a0, 8
201331b2 c.lw a4, 0x24(a4)
201331b4 addi a0, a0, 0x426
201331b8 lbu a1, 2(a4)
201331bc c.jalr a5
201331be lui a5, 0x20212
201331c2 lw a5, 0x750(a5)
201331c6 c.bnez a5, 0x1e
201331c8 lui a5, 0x20202
201331cc lw a5, 0x144(a5)
201331d0 c.li a0, 0
201331d2 c.jalr a5
201331d4 c.beqz a0, 0x10
201331d6 lui a5, 0x20202
201331da lw a5, 0x340(a5)
201331de c.lui a1, 2
201331e0 c.li a0, 2
201331e2 c.jalr a5
201331e4 jal 0x2acf0
201331e8 c.lw a5, 0xc(s1)
201331ea c.li a4, 1
201331ec c.li a0, 0
201331ee c.lw a5, 0x18(a5)
201331f0 sb a4, 0x438(a5)
201331f4 jal 0x21670
201331f8 lui a5, 0x20202
201331fc lw a5, -0x720(a5)
20133200 c.jalr a5
20133202 c.lw a4, 0xc(s1)
20133204 lw a5, 0x748(s0)
20133208 c.lui a0, 0xe
2013320a c.lw a4, 0x30(a4)
2013320c addi a0, a0, 0x30

BASE 0x20133a56 0xb8003
20133a4a c.andi s1, 0x11
20133a4c c.jalr a5
20133a4e lui a5, 0x20201
20133a52 lw a5, 0x74c(a5)
20133a56 lui a0, 0xb8003
20133a5a lui a1, 0xc0000
20133a5e addi a0, a0, 0x60
20133a62 c.jalr a5
20133a64 lbu a5, 0x3f(sp)
20133a68 c.li a4, 1
20133a6a bne a5, a4, 0x31a
20133a6e c.li a5, 0xf
20133a70 bne s3, a5, 6
20133a74 c.li s3, 4
20133a76 andi a0, s3, 0xff
20133a7a jal -0x20f0
20133a7e beqz s7, 0x1c
20133a82 lw a6, 0x6a8(s8)
20133a86 lui a3, 0x40000
20133a8a c.mv a5, s3
20133a8c c.li a4, 1
20133a8e addi a3, a3, 0x101
20133a92 c.li a2, 2
20133a94 c.lui a0, 1
20133a96 c.li a1, 0
20133a98 c.jalr a6
20133a9a lbu a5, 0x3f(sp)
20133a9e c.li a4, 1
20133aa0 andi a5, a5, 0xfd
20133aa4 beq a5, a4, 8
20133aa8 bne s7, a4, 0x2ec
20133aac c.lwsp a0, 0x10(sp)
20133aae jal -0x20ea
20133ab2 c.lui a0, 1
20133ab4 addi a0, a0, -0x667
20133ab8 jal -0x1024
20133abc c.lwsp ra, 0x7c(sp)
20133abe c.lwsp s0, 0x78(sp)
20133ac0 c.lwsp s1, 0x74(sp)
20133ac2 c.lwsp s2, 0x70(sp)
20133ac4 c.lwsp s3, 0x6c(sp)
20133ac6 c.lwsp s4, 0x68(sp)
20133ac8 c.lwsp s5, 0x64(sp)
20133aca c.lwsp s6, 0x60(sp)
20133acc c.lwsp s7, 0x5c(sp)
20133ace c.lwsp s8, 0x58(sp)
20133ad0 c.lwsp s9, 0x54(sp)
20133ad2 c.lwsp s10, 0x50(sp)
20133ad4 c.lwsp s11, 0x4c(sp)
20133ad6 c.addi16sp sp, 0x80
20133ad8 c.jr ra
20133ada c.li a1, 0
20133adc addi a5, a1, -1
20133ae0 c.slli a5, 0x10
20133ae2 c.srli a5, 0x10
20133ae4 c.li a4, 0x11
20133ae6 bltu a4, a5, 0xe
20133aea c.lwsp a4, 0x20(sp)

BASE 0x20144894 0xb8003
20144888 .byte 0x47, 0x73
2014488a c.jr a5
2014488c lui a5, 0x20201
20144890 lw a5, 0x74c(a5)
20144894 lui a4, 0xb8003
20144898 c.add a0, a4
2014489a c.jr a5
2014489c lui a5, 0x20201
201448a0 lw a5, 0x758(a5)
201448a4 lui a4, 0xb8620
201448a8 c.add a0, a4
201448aa c.jr a5
201448ac lui a5, 0x20201
201448b0 lw a5, 0x75c(a5)
201448b4 lui a4, 0xb8620
201448b8 c.add a0, a4
201448ba c.jr a5
201448bc lui a5, 0x20201
201448c0 lw a5, 0x760(a5)
201448c4 lui a4, 0xb8620
201448c8 c.add a0, a4
201448ca c.jr a5
201448cc lui a5, 0x20202
201448d0 lw a5, 0x164(a5)
201448d4 c.jr a5
201448d6 lui a5, 0x20201
201448da lw a5, 0x6d0(a5)
201448de c.jr a5
201448e0 lui a5, 0x20201
201448e4 lw a5, 0x284(a5)
201448e8 c.jr a5
201448ea lui a5, 0x20201
201448ee lw a5, 0x280(a5)
201448f2 c.jr a5
201448f4 lui a5, 0x20201
201448f8 lw a5, 0x290(a5)
201448fc c.jr a5
201448fe lui a5, 0x20203
20144902 lw a0, 0x594(a5)
20144906 c.jr ra
20144908 j -0x1cb38
2014490c lui a5, 0x20201
20144910 lw a5, 0x298(a5)
20144914 c.jr a5
20144916 lui a5, 0x20201
2014491a lw a5, 0x144(a5)
2014491e c.jr a5
20144920 lui a5, 0x20201
20144924 lw a5, 0x178(a5)
20144928 c.jr a5

BASE 0x20144dae 0xb8003
20144da2 c.jr a5
20144da4 lui a5, 0x20201
20144da8 lw a5, 0x760(a5)
20144dac c.addi sp, -0x10
20144dae lui a0, 0xb8003
20144db2 c.swsp ra, 0xc(sp)
20144db4 c.addi a0, 8
20144db6 c.jalr a5
20144db8 c.lwsp ra, 0xc(sp)
20144dba not a0, a0
20144dbe c.andi a0, 1
20144dc0 c.addi sp, 0x10
20144dc2 c.jr ra
20144dc4 c.addi sp, -0x10
20144dc6 lui a5, 0x20201
20144dca c.swsp s1, 4(sp)
20144dcc lw s1, 0x754(a5)
20144dd0 lui a5, 0x20201
20144dd4 lw a5, 0x760(a5)
20144dd8 c.swsp s0, 8(sp)
20144dda lui s0, 0xb8003
20144dde c.swsp ra, 0xc(sp)
20144de0 addi a0, s0, 8
20144de4 c.jalr a5
20144de6 ori a1, a0, 1
20144dea addi a0, s0, 8
20144dee c.lwsp s0, 8(sp)
20144df0 c.lwsp ra, 0xc(sp)
20144df2 c.mv a5, s1
20144df4 c.lwsp s1, 4(sp)
20144df6 andi a1, a1, 0xff
20144dfa c.addi sp, 0x10
20144dfc c.jr a5
20144dfe lui a5, 0x20201
20144e02 lw a5, 0x754(a5)
20144e06 lui a0, 0xb8003
20144e0a addi a1, zero, 0x80
20144e0e c.addi a0, 8
20144e10 c.jr a5
20144e12 lui a5, 0x20201
20144e16 lw a5, 0x74c(a5)
20144e1a c.mv a1, a0
20144e1c lui a0, 0xb8003
20144e20 c.jr a5
20144e22 lui a5, 0x20201
20144e26 lw a5, 0x74c(a5)
20144e2a c.mv a1, a0
20144e2c lui a0, 0xb8003
20144e30 c.addi a0, 4
20144e32 c.jr a5
20144e34 lui a5, 0x20201
20144e38 lw a5, 0x73c(a5)
20144e3c c.li a1, 0
20144e3e c.bnez a0, 0xa
20144e40 lui a1, 0x17fd

BASE 0x20144dda 0xb8003
20144dce .byte 0x47, 0x75
20144dd0 lui a5, 0x20201
20144dd4 lw a5, 0x760(a5)
20144dd8 c.swsp s0, 8(sp)
20144dda lui s0, 0xb8003
20144dde c.swsp ra, 0xc(sp)
20144de0 addi a0, s0, 8
20144de4 c.jalr a5
20144de6 ori a1, a0, 1
20144dea addi a0, s0, 8
20144dee c.lwsp s0, 8(sp)
20144df0 c.lwsp ra, 0xc(sp)
20144df2 c.mv a5, s1
20144df4 c.lwsp s1, 4(sp)
20144df6 andi a1, a1, 0xff
20144dfa c.addi sp, 0x10
20144dfc c.jr a5
20144dfe lui a5, 0x20201
20144e02 lw a5, 0x754(a5)
20144e06 lui a0, 0xb8003
20144e0a addi a1, zero, 0x80
20144e0e c.addi a0, 8
20144e10 c.jr a5
20144e12 lui a5, 0x20201
20144e16 lw a5, 0x74c(a5)
20144e1a c.mv a1, a0
20144e1c lui a0, 0xb8003
20144e20 c.jr a5
20144e22 lui a5, 0x20201
20144e26 lw a5, 0x74c(a5)
20144e2a c.mv a1, a0
20144e2c lui a0, 0xb8003
20144e30 c.addi a0, 4
20144e32 c.jr a5
20144e34 lui a5, 0x20201
20144e38 lw a5, 0x73c(a5)
20144e3c c.li a1, 0
20144e3e c.bnez a0, 0xa
20144e40 lui a1, 0x17fd
20144e44 addi a1, a1, 0x775
20144e48 c.lui a0, 0xe
20144e4a addi a0, a0, 0x348
20144e4e c.jr a5
20144e50 c.addi sp, -0x10
20144e52 lui a4, 0x20201
20144e56 lui a5, 0x20201
20144e5a c.swsp s1, 4(sp)
20144e5c lw s1, 0x734(a4)
20144e60 lw a5, 0x740(a5)
20144e64 c.swsp s0, 8(sp)
20144e66 c.swsp ra, 0xc(sp)
20144e68 c.lui s0, 0xe
20144e6a c.bnez a0, 0x1c
20144e6c addi a0, s0, 0x300

BASE 0x20144e06 0xb8003
20144dfa c.addi sp, 0x10
20144dfc c.jr a5
20144dfe lui a5, 0x20201
20144e02 lw a5, 0x754(a5)
20144e06 lui a0, 0xb8003
20144e0a addi a1, zero, 0x80
20144e0e c.addi a0, 8
20144e10 c.jr a5
20144e12 lui a5, 0x20201
20144e16 lw a5, 0x74c(a5)
20144e1a c.mv a1, a0
20144e1c lui a0, 0xb8003
20144e20 c.jr a5
20144e22 lui a5, 0x20201
20144e26 lw a5, 0x74c(a5)
20144e2a c.mv a1, a0
20144e2c lui a0, 0xb8003
20144e30 c.addi a0, 4
20144e32 c.jr a5
20144e34 lui a5, 0x20201
20144e38 lw a5, 0x73c(a5)
20144e3c c.li a1, 0
20144e3e c.bnez a0, 0xa
20144e40 lui a1, 0x17fd
20144e44 addi a1, a1, 0x775
20144e48 c.lui a0, 0xe
20144e4a addi a0, a0, 0x348
20144e4e c.jr a5
20144e50 c.addi sp, -0x10
20144e52 lui a4, 0x20201
20144e56 lui a5, 0x20201
20144e5a c.swsp s1, 4(sp)
20144e5c lw s1, 0x734(a4)
20144e60 lw a5, 0x740(a5)
20144e64 c.swsp s0, 8(sp)
20144e66 c.swsp ra, 0xc(sp)
20144e68 c.lui s0, 0xe
20144e6a c.bnez a0, 0x1c
20144e6c addi a0, s0, 0x300
20144e70 c.jalr a5
20144e72 andi a1, a0, 0xfe
20144e76 addi a0, s0, 0x300
20144e7a c.lwsp s0, 8(sp)
20144e7c c.lwsp ra, 0xc(sp)
20144e7e c.mv a5, s1
20144e80 c.lwsp s1, 4(sp)
20144e82 c.addi sp, 0x10
20144e84 c.jr a5
20144e86 addi a0, s0, 0x300
20144e8a c.jalr a5
20144e8c ori a1, a0, 1
20144e90 andi a1, a1, 0xff
20144e94 c.j -0x1e
20144e96 c.addi16sp sp, -0x30
20144e98 c.swsp s2, 0x20(sp)
20144e9a c.swsp ra, 0x2c(sp)

BASE 0x20144e1c 0xb8003
20144e10 c.jr a5
20144e12 lui a5, 0x20201
20144e16 lw a5, 0x74c(a5)
20144e1a c.mv a1, a0
20144e1c lui a0, 0xb8003
20144e20 c.jr a5
20144e22 lui a5, 0x20201
20144e26 lw a5, 0x74c(a5)
20144e2a c.mv a1, a0
20144e2c lui a0, 0xb8003
20144e30 c.addi a0, 4
20144e32 c.jr a5
20144e34 lui a5, 0x20201
20144e38 lw a5, 0x73c(a5)
20144e3c c.li a1, 0
20144e3e c.bnez a0, 0xa
20144e40 lui a1, 0x17fd
20144e44 addi a1, a1, 0x775
20144e48 c.lui a0, 0xe
20144e4a addi a0, a0, 0x348
20144e4e c.jr a5
20144e50 c.addi sp, -0x10
20144e52 lui a4, 0x20201
20144e56 lui a5, 0x20201
20144e5a c.swsp s1, 4(sp)
20144e5c lw s1, 0x734(a4)
20144e60 lw a5, 0x740(a5)
20144e64 c.swsp s0, 8(sp)
20144e66 c.swsp ra, 0xc(sp)
20144e68 c.lui s0, 0xe
20144e6a c.bnez a0, 0x1c
20144e6c addi a0, s0, 0x300
20144e70 c.jalr a5
20144e72 andi a1, a0, 0xfe
20144e76 addi a0, s0, 0x300
20144e7a c.lwsp s0, 8(sp)
20144e7c c.lwsp ra, 0xc(sp)
20144e7e c.mv a5, s1
20144e80 c.lwsp s1, 4(sp)
20144e82 c.addi sp, 0x10
20144e84 c.jr a5
20144e86 addi a0, s0, 0x300
20144e8a c.jalr a5
20144e8c ori a1, a0, 1
20144e90 andi a1, a1, 0xff
20144e94 c.j -0x1e
20144e96 c.addi16sp sp, -0x30
20144e98 c.swsp s2, 0x20(sp)
20144e9a c.swsp ra, 0x2c(sp)
20144e9c c.swsp s0, 0x28(sp)
20144e9e c.swsp s1, 0x24(sp)
20144ea0 c.swsp s3, 0x1c(sp)
20144ea2 c.swsp s4, 0x18(sp)
20144ea4 c.swsp s5, 0x14(sp)
20144ea6 c.swsp s6, 0x10(sp)
20144ea8 c.swsp s7, 0xc(sp)
20144eaa lbu a5, 0(a0)
20144eae c.li a4, 0xd
20144eb0 c.mv s2, a0

BASE 0x20144e2c 0xb8003
20144e20 c.jr a5
20144e22 lui a5, 0x20201
20144e26 lw a5, 0x74c(a5)
20144e2a c.mv a1, a0
20144e2c lui a0, 0xb8003
20144e30 c.addi a0, 4
20144e32 c.jr a5
20144e34 lui a5, 0x20201
20144e38 lw a5, 0x73c(a5)
20144e3c c.li a1, 0
20144e3e c.bnez a0, 0xa
20144e40 lui a1, 0x17fd
20144e44 addi a1, a1, 0x775
20144e48 c.lui a0, 0xe
20144e4a addi a0, a0, 0x348
20144e4e c.jr a5
20144e50 c.addi sp, -0x10
20144e52 lui a4, 0x20201
20144e56 lui a5, 0x20201
20144e5a c.swsp s1, 4(sp)
20144e5c lw s1, 0x734(a4)
20144e60 lw a5, 0x740(a5)
20144e64 c.swsp s0, 8(sp)
20144e66 c.swsp ra, 0xc(sp)
20144e68 c.lui s0, 0xe
20144e6a c.bnez a0, 0x1c
20144e6c addi a0, s0, 0x300
20144e70 c.jalr a5
20144e72 andi a1, a0, 0xfe
20144e76 addi a0, s0, 0x300
20144e7a c.lwsp s0, 8(sp)
20144e7c c.lwsp ra, 0xc(sp)
20144e7e c.mv a5, s1
20144e80 c.lwsp s1, 4(sp)
20144e82 c.addi sp, 0x10
20144e84 c.jr a5
20144e86 addi a0, s0, 0x300
20144e8a c.jalr a5
20144e8c ori a1, a0, 1
20144e90 andi a1, a1, 0xff
20144e94 c.j -0x1e
20144e96 c.addi16sp sp, -0x30
20144e98 c.swsp s2, 0x20(sp)
20144e9a c.swsp ra, 0x2c(sp)
20144e9c c.swsp s0, 0x28(sp)
20144e9e c.swsp s1, 0x24(sp)
20144ea0 c.swsp s3, 0x1c(sp)
20144ea2 c.swsp s4, 0x18(sp)
20144ea4 c.swsp s5, 0x14(sp)
20144ea6 c.swsp s6, 0x10(sp)
20144ea8 c.swsp s7, 0xc(sp)
20144eaa lbu a5, 0(a0)
20144eae c.li a4, 0xd
20144eb0 c.mv s2, a0
20144eb2 bltu a4, a5, 0x80
20144eb6 c.li a4, 0xb
20144eb8 bltu a4, a5, 0x84
20144ebc c.li a4, 1
20144ebe c.li s1, 6
20144ec0 .byte 0x63, 0x73

BASE 0x2014518e 0xb8003
20145182 c.jr a5
20145184 lui a5, 0x20201
20145188 lw a5, 0x760(a5)
2014518c c.addi sp, -0x10
2014518e lui a0, 0xb8003
20145192 c.swsp ra, 0xc(sp)
20145194 c.addi a0, 0x18
20145196 c.jalr a5
20145198 c.lwsp ra, 0xc(sp)
2014519a c.addi sp, 0x10
2014519c c.jr ra
2014519e lui a5, 0x20201
201451a2 lw a5, 0x754(a5)
201451a6 c.mv a1, a0
201451a8 lui a0, 0xb8003
201451ac c.addi a0, 0x18
201451ae c.jr a5
201451b0 c.li a5, 7
201451b2 bltu a5, a0, 0x20
201451b6 lui a5, 0x20201
201451ba lw a4, 0x760(a5)
201451be lui a5, 0xb8003
201451c2 c.addi sp, -0x10
201451c4 c.addi a5, 0x10
201451c6 c.swsp ra, 0xc(sp)
201451c8 c.add a0, a5
201451ca c.jalr a4
201451cc c.lwsp ra, 0xc(sp)
201451ce c.addi sp, 0x10
201451d0 c.jr ra
201451d2 c.li a0, 0
201451d4 c.jr ra
201451d6 c.addi sp, -0x10
201451d8 c.swsp s1, 4(sp)
201451da lui s1, 0x20201
201451de lw a5, 0x760(s1)
201451e2 c.swsp s0, 8(sp)
201451e4 lui s0, 0xb8003
201451e8 c.swsp ra, 0xc(sp)
201451ea c.swsp s2, 0(sp)
201451ec addi a0, s0, 0x18
201451f0 c.jalr a5
201451f2 c.andi a0, 1
201451f4 c.beqz a0, 0x2e
201451f6 lui a5, 0x20201
201451fa lw s2, 0x754(a5)
201451fe lw a5, 0x760(s1)
20145202 addi a0, s0, 0x18
20145206 c.jalr a5
20145208 ori a1, a0, 1
2014520c addi a0, s0, 0x18
20145210 c.lwsp s0, 8(sp)
20145212 c.lwsp ra, 0xc(sp)
20145214 c.lwsp s1, 4(sp)
20145216 c.mv a5, s2
20145218 c.lwsp s2, 0(sp)
2014521a andi a1, a1, 0xff
2014521e c.addi sp, 0x10
20145220 c.jr a5
20145222 c.lwsp ra, 0xc(sp)

BASE 0x201451a8 0xb8003
2014519c c.jr ra
2014519e lui a5, 0x20201
201451a2 lw a5, 0x754(a5)
201451a6 c.mv a1, a0
201451a8 lui a0, 0xb8003
201451ac c.addi a0, 0x18
201451ae c.jr a5
201451b0 c.li a5, 7
201451b2 bltu a5, a0, 0x20
201451b6 lui a5, 0x20201
201451ba lw a4, 0x760(a5)
201451be lui a5, 0xb8003
201451c2 c.addi sp, -0x10
201451c4 c.addi a5, 0x10
201451c6 c.swsp ra, 0xc(sp)
201451c8 c.add a0, a5
201451ca c.jalr a4
201451cc c.lwsp ra, 0xc(sp)
201451ce c.addi sp, 0x10
201451d0 c.jr ra
201451d2 c.li a0, 0
201451d4 c.jr ra
201451d6 c.addi sp, -0x10
201451d8 c.swsp s1, 4(sp)
201451da lui s1, 0x20201
201451de lw a5, 0x760(s1)
201451e2 c.swsp s0, 8(sp)
201451e4 lui s0, 0xb8003
201451e8 c.swsp ra, 0xc(sp)
201451ea c.swsp s2, 0(sp)
201451ec addi a0, s0, 0x18
201451f0 c.jalr a5
201451f2 c.andi a0, 1
201451f4 c.beqz a0, 0x2e
201451f6 lui a5, 0x20201
201451fa lw s2, 0x754(a5)
201451fe lw a5, 0x760(s1)
20145202 addi a0, s0, 0x18
20145206 c.jalr a5
20145208 ori a1, a0, 1
2014520c addi a0, s0, 0x18
20145210 c.lwsp s0, 8(sp)
20145212 c.lwsp ra, 0xc(sp)
20145214 c.lwsp s1, 4(sp)
20145216 c.mv a5, s2
20145218 c.lwsp s2, 0(sp)
2014521a andi a1, a1, 0xff
2014521e c.addi sp, 0x10
20145220 c.jr a5
20145222 c.lwsp ra, 0xc(sp)
20145224 c.lwsp s0, 8(sp)
20145226 c.lwsp s1, 4(sp)
20145228 c.lwsp s2, 0(sp)
2014522a c.addi sp, 0x10
2014522c c.jr ra
2014522e lui a5, 0x20201
20145232 lw a5, 0x738(a5)
20145236 c.jr a5
20145238 lui a5, 0x20205
2014523c .byte 0x03, 0xa7

BASE 0x201451be 0xb8003
201451b2 bltu a5, a0, 0x20
201451b6 lui a5, 0x20201
201451ba lw a4, 0x760(a5)
201451be lui a5, 0xb8003
201451c2 c.addi sp, -0x10
201451c4 c.addi a5, 0x10
201451c6 c.swsp ra, 0xc(sp)
201451c8 c.add a0, a5
201451ca c.jalr a4
201451cc c.lwsp ra, 0xc(sp)
201451ce c.addi sp, 0x10
201451d0 c.jr ra
201451d2 c.li a0, 0
201451d4 c.jr ra
201451d6 c.addi sp, -0x10
201451d8 c.swsp s1, 4(sp)
201451da lui s1, 0x20201
201451de lw a5, 0x760(s1)
201451e2 c.swsp s0, 8(sp)
201451e4 lui s0, 0xb8003
201451e8 c.swsp ra, 0xc(sp)
201451ea c.swsp s2, 0(sp)
201451ec addi a0, s0, 0x18
201451f0 c.jalr a5
201451f2 c.andi a0, 1
201451f4 c.beqz a0, 0x2e
201451f6 lui a5, 0x20201
201451fa lw s2, 0x754(a5)
201451fe lw a5, 0x760(s1)
20145202 addi a0, s0, 0x18
20145206 c.jalr a5
20145208 ori a1, a0, 1
2014520c addi a0, s0, 0x18
20145210 c.lwsp s0, 8(sp)
20145212 c.lwsp ra, 0xc(sp)
20145214 c.lwsp s1, 4(sp)
20145216 c.mv a5, s2
20145218 c.lwsp s2, 0(sp)
2014521a andi a1, a1, 0xff
2014521e c.addi sp, 0x10
20145220 c.jr a5
20145222 c.lwsp ra, 0xc(sp)
20145224 c.lwsp s0, 8(sp)
20145226 c.lwsp s1, 4(sp)
20145228 c.lwsp s2, 0(sp)
2014522a c.addi sp, 0x10
2014522c c.jr ra
2014522e lui a5, 0x20201
20145232 lw a5, 0x738(a5)
20145236 c.jr a5
20145238 lui a5, 0x20205
2014523c lw a4, 0x614(a5)
20145240 lui a5, 0x20205
20145244 sw a4, 0x63c(a5)
20145248 lui a5, 0x20205
2014524c lw a4, 0x610(a5)
20145250 lui a5, 0x20205

BASE 0x201451e4 0xb8003
201451d8 c.swsp s1, 4(sp)
201451da lui s1, 0x20201
201451de lw a5, 0x760(s1)
201451e2 c.swsp s0, 8(sp)
201451e4 lui s0, 0xb8003
201451e8 c.swsp ra, 0xc(sp)
201451ea c.swsp s2, 0(sp)
201451ec addi a0, s0, 0x18
201451f0 c.jalr a5
201451f2 c.andi a0, 1
201451f4 c.beqz a0, 0x2e
201451f6 lui a5, 0x20201
201451fa lw s2, 0x754(a5)
201451fe lw a5, 0x760(s1)
20145202 addi a0, s0, 0x18
20145206 c.jalr a5
20145208 ori a1, a0, 1
2014520c addi a0, s0, 0x18
20145210 c.lwsp s0, 8(sp)
20145212 c.lwsp ra, 0xc(sp)
20145214 c.lwsp s1, 4(sp)
20145216 c.mv a5, s2
20145218 c.lwsp s2, 0(sp)
2014521a andi a1, a1, 0xff
2014521e c.addi sp, 0x10
20145220 c.jr a5
20145222 c.lwsp ra, 0xc(sp)
20145224 c.lwsp s0, 8(sp)
20145226 c.lwsp s1, 4(sp)
20145228 c.lwsp s2, 0(sp)
2014522a c.addi sp, 0x10
2014522c c.jr ra
2014522e lui a5, 0x20201
20145232 lw a5, 0x738(a5)
20145236 c.jr a5
20145238 lui a5, 0x20205
2014523c lw a4, 0x614(a5)
20145240 lui a5, 0x20205
20145244 sw a4, 0x63c(a5)
20145248 lui a5, 0x20205
2014524c lw a4, 0x610(a5)
20145250 lui a5, 0x20205
20145254 sw a4, 0x638(a5)
20145258 lui a5, 0x20205
2014525c lw a4, 0x60c(a5)
20145260 lui a5, 0x20205
20145264 sw a4, 0x634(a5)
20145268 lui a5, 0x20205
2014526c lw a4, 0x608(a5)
20145270 lui a5, 0x20205
20145274 sw a4, 0x630(a5)
20145278 .byte 0xb7, 0x57

BASE 0x201475cc 0xb8003
201475c0 c.addi a4, 1
201475c2 lui s1, 0x20201
201475c6 c.sw a4, 0x10(a5)
201475c8 lw a5, 0x758(s1)
201475cc lui s0, 0xb8003
201475d0 addi a0, s0, 0x6c
201475d4 c.jalr a5
201475d6 c.andi a0, 3
201475d8 c.swsp a0, 8(sp)
201475da lw a5, 0x758(s1)
201475de addi a0, s0, 0x78
201475e2 c.jalr a5
201475e4 c.swsp a0, 0xc(sp)
201475e6 c.lwsp a5, 0xc(sp)
201475e8 andi a5, a5, 0x100
201475ec c.beqz a5, 0xc
201475ee lui a5, 0x20202
201475f2 lw a5, 0xe4(a5)
201475f6 c.jalr a5
201475f8 c.lwsp a5, 8(sp)
201475fa c.andi a5, 1
201475fc c.beqz a5, 0x42
201475fe lui a5, 0x20201
20147602 lw a5, 0x684(a5)
20147606 c.li a0, 0x14
20147608 c.jalr a5
2014760a lui a5, 0x20201
2014760e lw a5, 0x760(a5)
20147612 lui a0, 0xb8002
20147616 c.addi a0, 8
20147618 c.jalr a5
2014761a c.andi a0, 0xf
2014761c sb a0, 7(sp)
20147620 lbu a5, 7(sp)
20147624 c.li a4, 4
20147626 andi a5, a5, 0xff
2014762a bne a5, a4, 0x28
2014762e lui s0, 0x20202
20147632 lui s1, 0x20202
20147636 lw a5, -0x94(s0)
2014763a c.jalr a5
2014763c c.bnez a0, 0xe
2014763e c.lwsp ra, 0x1c(sp)
20147640 c.lwsp s0, 0x18(sp)
20147642 c.lwsp a5, 8(sp)
20147644 c.lwsp s1, 0x14(sp)
20147646 c.addi16sp sp, 0x20
20147648 c.jr ra
2014764a lw a5, -0xa8(s1)
2014764e c.jalr a5
20147650 c.j -0x1a
20147652 lui a5, 0x20202
20147656 lw a5, 0x340(a5)
2014765a c.lui a1, 2
2014765c c.li a0, 0
2014765e c.jalr a5
20147660 c.j -0x22

BASE 0x20147612 0xb8002
20147606 c.li a0, 0x14
20147608 c.jalr a5
2014760a lui a5, 0x20201
2014760e lw a5, 0x760(a5)
20147612 lui a0, 0xb8002
20147616 c.addi a0, 8
20147618 c.jalr a5
2014761a c.andi a0, 0xf
2014761c sb a0, 7(sp)
20147620 lbu a5, 7(sp)
20147624 c.li a4, 4
20147626 andi a5, a5, 0xff
2014762a bne a5, a4, 0x28
2014762e lui s0, 0x20202
20147632 lui s1, 0x20202
20147636 lw a5, -0x94(s0)
2014763a c.jalr a5
2014763c c.bnez a0, 0xe
2014763e c.lwsp ra, 0x1c(sp)
20147640 c.lwsp s0, 0x18(sp)
20147642 c.lwsp a5, 8(sp)
20147644 c.lwsp s1, 0x14(sp)
20147646 c.addi16sp sp, 0x20
20147648 c.jr ra
2014764a lw a5, -0xa8(s1)
2014764e c.jalr a5
20147650 c.j -0x1a
20147652 lui a5, 0x20202
20147656 lw a5, 0x340(a5)
2014765a c.lui a1, 2
2014765c c.li a0, 0
2014765e c.jalr a5
20147660 c.j -0x22
20147662 c.addi sp, -0x20
20147664 c.swsp s0, 0x18(sp)
20147666 lui s0, 0x20201
2014766a lw a5, 0x758(s0)
2014766e lui a0, 0xb8003
20147672 c.swsp ra, 0x1c(sp)
20147674 c.swsp s1, 0x14(sp)
20147676 c.swsp s2, 0x10(sp)
20147678 addi a0, a0, 0x60
2014767c c.jalr a5
2014767e lui a5, 0x20212
20147682 addi a5, a5, 0x55c
20147686 c.lw a4, 0xc(a5)
20147688 c.srli a0, 0x1d
2014768a c.swsp a0, 0xc(sp)
2014768c c.addi a4, 1
2014768e c.sw a4, 0xc(a5)
20147690 c.lwsp a5, 0xc(sp)
20147692 c.beqz a5, 0x1a
20147694 lui a5, 0x20201
20147698 lw a5, 0x684(a5)
2014769c c.li a0, 0x13
2014769e c.jalr a5
201476a0 lui a5, 0x20202
201476a4 lw a5, -0x4d8(a5)

BASE 0x2014766e 0xb8003
20147662 c.addi sp, -0x20
20147664 c.swsp s0, 0x18(sp)
20147666 lui s0, 0x20201
2014766a lw a5, 0x758(s0)
2014766e lui a0, 0xb8003
20147672 c.swsp ra, 0x1c(sp)
20147674 c.swsp s1, 0x14(sp)
20147676 c.swsp s2, 0x10(sp)
20147678 addi a0, a0, 0x60
2014767c c.jalr a5
2014767e lui a5, 0x20212
20147682 addi a5, a5, 0x55c
20147686 c.lw a4, 0xc(a5)
20147688 c.srli a0, 0x1d
2014768a c.swsp a0, 0xc(sp)
2014768c c.addi a4, 1
2014768e c.sw a4, 0xc(a5)
20147690 c.lwsp a5, 0xc(sp)
20147692 c.beqz a5, 0x1a
20147694 lui a5, 0x20201
20147698 lw a5, 0x684(a5)
2014769c c.li a0, 0x13
2014769e c.jalr a5
201476a0 lui a5, 0x20202
201476a4 lw a5, -0x4d8(a5)
201476a8 c.lwsp a0, 0xc(sp)
201476aa c.jalr a5
201476ac lw a5, 0x758(s0)
201476b0 lui s2, 0xb8003
201476b4 addi a0, s2, 0x60
201476b8 c.jalr a5
201476ba lui a5, 0x10000
201476be c.and a0, a5
201476c0 c.beqz a0, 0x4c
201476c2 lw a5, 0x758(s0)
201476c6 addi a0, s2, 0x3c
201476ca c.jalr a5
201476cc lui a5, 0x20201
201476d0 lw a5, 0x74c(a5)
201476d4 c.mv s1, a0
201476d6 lui a1, 0x10000
201476da addi a0, s2, 0x60
201476de c.jalr a5
201476e0 lui s2, 0x20201
201476e4 lw a5, 0x73c(s2)
201476e8 c.mv a1, s1
201476ea addi a0, zero, 0x1f4
201476ee c.jalr a5
201476f0 lui a5, 0x20201
201476f4 lw a5, 0x748(a5)
201476f8 addi a0, zero, 0x1f0
201476fc c.jalr a5
201476fe lw a5, 0x73c(s2)
20147702 .byte 0x93, 0x65

BASE 0x201476b0 0xb8003
201476a4 lw a5, -0x4d8(a5)
201476a8 c.lwsp a0, 0xc(sp)
201476aa c.jalr a5
201476ac lw a5, 0x758(s0)
201476b0 lui s2, 0xb8003
201476b4 addi a0, s2, 0x60
201476b8 c.jalr a5
201476ba lui a5, 0x10000
201476be c.and a0, a5
201476c0 c.beqz a0, 0x4c
201476c2 lw a5, 0x758(s0)
201476c6 addi a0, s2, 0x3c
201476ca c.jalr a5
201476cc lui a5, 0x20201
201476d0 lw a5, 0x74c(a5)
201476d4 c.mv s1, a0
201476d6 lui a1, 0x10000
201476da addi a0, s2, 0x60
201476de c.jalr a5
201476e0 lui s2, 0x20201
201476e4 lw a5, 0x73c(s2)
201476e8 c.mv a1, s1
201476ea addi a0, zero, 0x1f4
201476ee c.jalr a5
201476f0 lui a5, 0x20201
201476f4 lw a5, 0x748(a5)
201476f8 addi a0, zero, 0x1f0
201476fc c.jalr a5
201476fe lw a5, 0x73c(s2)
20147702 ori a1, a0, 8
20147706 addi a0, zero, 0x1f0
2014770a c.jalr a5
2014770c lw a5, 0x758(s0)
20147710 lui s2, 0xb8003
20147714 addi a0, s2, 0x60
20147718 c.jalr a5
2014771a lui a5, 0x800
2014771e c.and a0, a5
20147720 c.beqz a0, 0x4c
20147722 lw a5, 0x758(s0)
20147726 addi a0, s2, 0x8c
2014772a c.jalr a5
2014772c lui a5, 0x20201
20147730 lw a5, 0x74c(a5)
20147734 c.mv s1, a0
20147736 lui a1, 0x800
2014773a addi a0, s2, 0x60
2014773e c.jalr a5
20147740 lui s2, 0x20201
20147744 .byte 0x83, 0x27

BASE 0x20147710 0xb8003
20147704 c.addi ra, 1
20147706 addi a0, zero, 0x1f0
2014770a c.jalr a5
2014770c lw a5, 0x758(s0)
20147710 lui s2, 0xb8003
20147714 addi a0, s2, 0x60
20147718 c.jalr a5
2014771a lui a5, 0x800
2014771e c.and a0, a5
20147720 c.beqz a0, 0x4c
20147722 lw a5, 0x758(s0)
20147726 addi a0, s2, 0x8c
2014772a c.jalr a5
2014772c lui a5, 0x20201
20147730 lw a5, 0x74c(a5)
20147734 c.mv s1, a0
20147736 lui a1, 0x800
2014773a addi a0, s2, 0x60
2014773e c.jalr a5
20147740 lui s2, 0x20201
20147744 lw a5, 0x73c(s2)
20147748 c.mv a1, s1
2014774a addi a0, zero, 0x1f4
2014774e c.jalr a5
20147750 lui a5, 0x20201
20147754 lw a5, 0x748(a5)
20147758 addi a0, zero, 0x1f0
2014775c c.jalr a5
2014775e lw a5, 0x73c(s2)
20147762 ori a1, a0, 8
20147766 addi a0, zero, 0x1f0
2014776a c.jalr a5
2014776c lw a5, 0x758(s0)
20147770 lui s0, 0xb8003
20147774 addi a0, s0, 0x60
20147778 c.jalr a5
2014777a lui a5, 0x400
2014777e c.and a0, a5
20147780 c.beqz a0, 0x3e
20147782 lui a5, 0x20201
20147786 lw a5, 0x74c(a5)
2014778a lui a1, 0x400
2014778e addi a0, s0, 0x60
20147792 c.jalr a5
20147794 lui a5, 0x20201
20147798 lw a5, 0x748(a5)
2014779c addi a0, zero, 0x1f0
201477a0 c.jalr a5
201477a2 lui a5, 0x20201

BASE 0x20147770 0xb8003
20147764 c.addi ra, 1
20147766 addi a0, zero, 0x1f0
2014776a c.jalr a5
2014776c lw a5, 0x758(s0)
20147770 lui s0, 0xb8003
20147774 addi a0, s0, 0x60
20147778 c.jalr a5
2014777a lui a5, 0x400
2014777e c.and a0, a5
20147780 c.beqz a0, 0x3e
20147782 lui a5, 0x20201
20147786 lw a5, 0x74c(a5)
2014778a lui a1, 0x400
2014778e addi a0, s0, 0x60
20147792 c.jalr a5
20147794 lui a5, 0x20201
20147798 lw a5, 0x748(a5)
2014779c addi a0, zero, 0x1f0
201477a0 c.jalr a5
201477a2 lui a5, 0x20201
201477a6 c.lwsp s0, 0x18(sp)
201477a8 c.lwsp ra, 0x1c(sp)
201477aa c.lwsp s1, 0x14(sp)
201477ac c.lwsp s2, 0x10(sp)
201477ae lw a5, 0x73c(a5)
201477b2 ori a1, a0, 8
201477b6 addi a0, zero, 0x1f0
201477ba c.addi16sp sp, 0x20
201477bc c.jr a5
201477be c.lwsp ra, 0x1c(sp)
201477c0 c.lwsp s0, 0x18(sp)
201477c2 c.lwsp s1, 0x14(sp)
201477c4 c.lwsp s2, 0x10(sp)
201477c6 c.addi16sp sp, 0x20
201477c8 c.jr ra
201477ca lui a1, 0x2020e
201477ce lui a0, 0x20203
201477d2 addi a2, zero, 0x100
201477d6 addi a1, a1, 0x530
201477da addi a0, a0, -0x538
201477de j -0x3082
201477e2 lui a5, 0x20201
201477e6 c.addi sp, -0x10
201477e8 lw a5, 0x748(a5)
201477ec c.swsp s0, 8(sp)
201477ee c.lui s0, 1
201477f0 c.swsp ra, 0xc(sp)
201477f2 addi a0, s0, -0x400
201477f6 c.jalr a5
201477f8 lui a5, 0x20201
201477fc lw a4, 0x73c(a5)
20147800 lui a5, 0xfff90
20147804 c.addi a5, -1