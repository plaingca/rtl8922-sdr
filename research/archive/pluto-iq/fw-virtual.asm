
fw 0x20100820
20100802 c.addi4spn s0, sp, 0x44
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
20100826 addi a0, s2, 0x40
2010082a c.jalr a5
2010082c lw a5, 0x738(s0)
20100830 addi a0, s1, -0x70e
20100834 c.li a1, 0x1c
20100836 c.jalr a5
20100838 lw a4, 8(s3)
2010083c lui a5, 0x20201
20100840 lw a5, 0x178(a5)
20100844 c.lw s1, 0xc(a4)
20100846 lui a0, 0x20212
2010084a lui a4, 0x2012f
2010084e addi a4, a4, -0x5cc
20100852 c.li a3, 1
20100854 c.li a2, 1
20100856 addi a1, zero, 0x64
2010085a addi a0, a0, -0x4f8
2010085e c.jalr a5
20100860 lw a5, 8(s3)
20100864 c.sw a0, 0(s1)
20100866 c.lw a5, 0xc(a5)
20100868 c.lw s1, 0(a5)
2010086a c.beqz s1, 0x40
2010086c lui a5, 0x20201
20100870 lw s2, 0x174(a5)
20100874 lui a5, 0x20201
20100878 lw a5, 0x22c(a5)
2010087c c.jalr a5
2010087e c.mv a2, a0
20100880 c.li a4, 0
20100882 c.li a3, 0
20100884 c.li a1, 1
20100886 c.mv a0, s1
20100888 c.jalr s2
2010088a c.li a5, 1
2010088c beq a0, a5, 0x1e
20100890 lui a5, 0x20201
20100894 lw a5, 0x6a8(a5)
20100898 lui a3, 0x40000
2010089c c.li a4, 0
2010089e addi a3, a3, 0x163
201008a2 c.li a2, 2
201008a4 c.li a0, 2
201008a6 c.li a1, 0
201008a8 c.jalr a5
201008aa lui a5, 0x20202
201008ae lw a5, -0xb0(a5)
201008b2 c.lui a0, 2
201008b4 c.li a1, 0

fw 0x2010de2c
2010de0e c.li a5, 0
2010de10 c.j -0x1be
2010de12 c.li a4, 0
2010de14 c.j -0x1a0
2010de16 c.li a5, 0
2010de18 c.j -0x17e
2010de1a c.li a4, 0
2010de1c c.j -0x15e
2010de1e c.li a5, 0
2010de20 c.j -0x13c
2010de22 c.li a2, 0
2010de24 c.j -0x11e
2010de26 c.li a5, 0
2010de28 c.j -0xfe
2010de2a c.lw a5, 4(s0)
2010de2c lui a4, 0x8000
2010de30 c.or a5, a4
2010de32 c.sw a5, 4(s0)
2010de34 lw ra, 0x20c(sp)
2010de38 lw s0, 0x208(sp)
2010de3c lw s1, 0x204(sp)
2010de40 lw s2, 0x200(sp)
2010de44 lw s3, 0x1fc(sp)
2010de48 lw s4, 0x1f8(sp)
2010de4c lw s5, 0x1f4(sp)
2010de50 lw s6, 0x1f0(sp)
2010de54 lw s7, 0x1ec(sp)
2010de58 lw s8, 0x1e8(sp)
2010de5c lw s9, 0x1e4(sp)
2010de60 lw s10, 0x1e0(sp)
2010de64 lw s11, 0x1dc(sp)
2010de68 addi sp, sp, 0x210
2010de6c c.jr ra
2010de6e c.addi16sp sp, -0xe0
2010de70 c.swsp s9, 0xb4(sp)
2010de72 c.lwsp s9, 0xe8(sp)
2010de74 c.swsp s7, 0xbc(sp)
2010de76 c.swsp a5, 0x24(sp)
2010de78 lw s7, 4(s9)
2010de7c c.swsp s1, 0xd4(sp)
2010de7e c.swsp s5, 0xc4(sp)
2010de80 andi a5, s7, 1
2010de84 c.swsp a5, 0x28(sp)
2010de86 lw a5, 0(s9)
2010de8a c.swsp a4, 0x20(sp)
2010de8c c.swsp a7, 0x38(sp)
2010de8e c.srli a5, 8
2010de90 c.swsp ra, 0xdc(sp)
2010de92 c.swsp s0, 0xd8(sp)
2010de94 c.swsp s2, 0xd0(sp)
2010de96 c.swsp s3, 0xcc(sp)
2010de98 c.swsp s4, 0xc8(sp)
2010de9a c.swsp s6, 0xc0(sp)
2010de9c c.swsp s8, 0xb8(sp)
2010de9e c.swsp s10, 0xb0(sp)
2010dea0 c.swsp s11, 0xac(sp)
2010dea2 c.swsp a2, 0x2c(sp)
2010dea4 c.swsp a3, 0x30(sp)
2010dea6 c.swsp a6, 0x34(sp)
2010dea8 c.andi a5, 0x1f
2010deaa c.li a4, 0x10
2010deac lbu a7, 0xe0(sp)
2010deb0 c.mv s5, a0
2010deb2 c.mv s1, a1
2010deb4 c.li t4, 0x10
2010deb6 bltu a4, a5, 6
2010deba c.mv t4, a5
2010debc c.addi4spn a4, sp, 0x60
2010debe andi s6, t4, 0xff

fw 0x2010e28c
2010e26e c.mv s3, a3
2010e270 c.swsp a5, 0xc(sp)
2010e272 jal -0x80a0
2010e276 lui a5, 0x2020c
2010e27a lw a5, 0x378(a5)
2010e27e c.li a0, 2
2010e280 c.slli s0, 1
2010e282 c.jalr a5
2010e284 addi a5, s0, 0x10
2010e288 add s0, a5, sp
2010e28c lui a2, 0x10000
2010e290 lhu a0, -4(s0)
2010e294 addi a2, a2, -0x100
2010e298 c.slli s1, 8
2010e29a c.and s1, a2
2010e29c andi a2, s2, 0xff
2010e2a0 c.or a2, s1
2010e2a2 c.li a1, -1
2010e2a4 c.li a3, 0
2010e2a6 c.jal -0xc6
2010e2a8 c.lwsp s0, 0x28(sp)
2010e2aa c.lwsp ra, 0x2c(sp)
2010e2ac c.lwsp s1, 0x24(sp)
2010e2ae c.lwsp s2, 0x20(sp)
2010e2b0 c.mv a1, s3
2010e2b2 c.lwsp s3, 0x1c(sp)
2010e2b4 c.li a0, 0
2010e2b6 c.addi16sp sp, 0x30
2010e2b8 j -0x80e6
2010e2bc c.addi sp, -0x10
2010e2be c.swsp s1, 4(sp)
2010e2c0 c.mv s1, a1
2010e2c2 c.mv a1, a2
2010e2c4 c.swsp s0, 8(sp)
2010e2c6 c.swsp ra, 0xc(sp)
2010e2c8 c.mv s0, a0
2010e2ca c.jal -0x12c
2010e2cc lui a5, 0x20201
2010e2d0 c.add a0, s0
2010e2d2 c.lwsp s0, 8(sp)
2010e2d4 c.lwsp ra, 0xc(sp)
2010e2d6 lw a5, 0x78(a5)
2010e2da c.mv a1, s1
2010e2dc c.lwsp s1, 4(sp)
2010e2de c.addi sp, 0x10
2010e2e0 c.jr a5
2010e2e2 c.addi sp, -0x10
2010e2e4 c.lui a5, 0xe
2010e2e6 c.swsp a5, 8(sp)
2010e2e8 c.lui a5, 0xf
2010e2ea c.swsp a5, 0xc(sp)
2010e2ec c.li a5, 1
2010e2ee bltu a5, a0, 0x24
2010e2f2 slli a5, a0, 2
2010e2f6 c.addi a5, 0x10
2010e2f8 c.add a5, sp
2010e2fa lw a0, -8(a5)
2010e2fe slli a4, a1, 2
2010e302 andi a4, a4, 0x3fc
2010e306 lui a1, 0x100
2010e30a c.addi a1, -1
2010e30c c.add a0, a4
2010e30e c.addi sp, 0x10
2010e310 c.j -0x54
2010e312 c.li a0, -1
2010e314 c.addi sp, 0x10
2010e316 c.jr ra
2010e318 lui a5, 0x2b003
2010e31c c.addi16sp sp, -0x40
2010e31e addi a5, a5, -0x600

fw 0x2010e70c
2010e6ee jal -0x851c
2010e6f2 lw a5, 0x378(s7)
2010e6f6 c.li a0, 3
2010e6f8 c.slli s3, 8
2010e6fa c.jalr a5
2010e6fc slli a5, s2, 1
2010e700 c.addi4spn a4, sp, 0x10
2010e702 addi a5, a5, 0xf0
2010e706 c.add a5, a4
2010e708 lhu a0, -0xf0(a5)
2010e70c lui a2, 0x10000
2010e710 addi a2, a2, -0x100
2010e714 and s3, s3, a2
2010e718 andi a2, s6, 0xff
2010e71c or a2, s3, a2
2010e720 c.li a3, 0
2010e722 c.li a1, -1
2010e724 addi a0, a0, 0xe0
2010e728 c.jal -0x548
2010e72a c.mv a1, s1
2010e72c c.li a0, 0
2010e72e jal -0x855c
2010e732 addi s3, zero, 0xff
2010e736 c.addi s0, -1
2010e738 andi s0, s0, 0xff
2010e73c bne s0, s3, 0x76
2010e740 c.li s0, 3
2010e742 addi s3, zero, 0xff
2010e746 c.addi s0, -1
2010e748 andi s0, s0, 0xff
2010e74c bne s0, s3, 0x84
2010e750 c.li a0, 5
2010e752 mul s2, s2, a0
2010e756 c.li s0, 4
2010e758 addi s3, zero, 0xff
2010e75c c.addi s0, -1
2010e75e andi s0, s0, 0xff
2010e762 bne s0, s3, 0x8c
2010e766 c.mv a1, s1
2010e768 c.li a0, 1
2010e76a jal -0x8598
2010e76e c.mv a0, s4
2010e770 c.li a3, 0
2010e772 c.li a2, 0
2010e774 c.li a1, 8
2010e776 c.jal -0x596
2010e778 c.li a0, 1
2010e77a lw ra, 0x13c(sp)
2010e77e lw s0, 0x138(sp)
2010e782 lw s1, 0x134(sp)
2010e786 lw s2, 0x130(sp)
2010e78a lw s3, 0x12c(sp)
2010e78e lw s4, 0x128(sp)
2010e792 lw s5, 0x124(sp)
2010e796 lw s6, 0x120(sp)
2010e79a lw s7, 0x11c(sp)
2010e79e lw s8, 0x118(sp)

fw 0x2010f152
2010f134 lw a5, 0x384(s1)
2010f138 c.swsp a0, 0xc(sp)
2010f13a c.lui a0, 8
2010f13c addi a0, a0, -0x4ac
2010f140 c.jalr a5
2010f142 c.mv t1, s0
2010f144 c.lwsp s0, 0x28(sp)
2010f146 c.lwsp a6, 0xc(sp)
2010f148 c.lwsp ra, 0x2c(sp)
2010f14a c.lwsp s1, 0x24(sp)
2010f14c c.lwsp s2, 0x20(sp)
2010f14e c.lwsp s3, 0x1c(sp)
2010f150 c.mv a7, a0
2010f152 lui a5, 0x10000
2010f156 lui a3, 0x51000
2010f15a c.lui a0, 1
2010f15c c.addi a5, 3
2010f15e c.li a4, 3
2010f160 addi a3, a3, 0x42
2010f164 c.li a2, 2
2010f166 addi a0, a0, -0x800
2010f16a c.li a1, 0
2010f16c c.addi16sp sp, 0x30
2010f16e c.jr t1
2010f170 lw s3, 0x2f4(a5)
2010f174 lw a5, 0x384(s1)
2010f178 c.lui s2, 7
2010f17a addi a0, s2, -0x4ac
2010f17e c.jalr a5
2010f180 lw a5, 0x384(s1)
2010f184 c.swsp a0, 0xc(sp)
2010f186 c.lui a0, 8
2010f188 addi a0, a0, -0x4ac
2010f18c c.jalr a5
2010f18e c.lwsp a6, 0xc(sp)
2010f190 c.mv a7, a0
2010f192 lui a5, 0x10000
2010f196 lui a3, 0x51000
2010f19a c.lui a0, 1
2010f19c c.addi a5, 6
2010f19e c.li a4, 3
2010f1a0 addi a3, a3, 0x42
2010f1a4 c.li a2, 2
2010f1a6 addi a0, a0, -0x800
2010f1aa c.li a1, 0
2010f1ac c.jalr s3
2010f1ae c.mv a3, s0
2010f1b0 addi a0, s2, -0x4ac
2010f1b4 c.li a2, 3
2010f1b6 c.li a1, 0xf
2010f1b8 jal -0xfd8
2010f1bc c.mv a3, s0
2010f1be c.lwsp s0, 0x28(sp)
2010f1c0 c.lwsp ra, 0x2c(sp)
2010f1c2 c.lwsp s1, 0x24(sp)
2010f1c4 c.lwsp s3, 0x1c(sp)
2010f1c6 addi a0, s2, -0x4b0
2010f1ca c.lwsp s2, 0x20(sp)
2010f1cc c.li a2, 3
2010f1ce lui a1, 0x3c
2010f1d2 c.addi16sp sp, 0x30
2010f1d4 j -0xff4
2010f1d8 c.lwsp ra, 0x2c(sp)
2010f1da c.lwsp s0, 0x28(sp)
2010f1dc c.lwsp s1, 0x24(sp)
2010f1de c.lwsp s2, 0x20(sp)
2010f1e0 c.lwsp s3, 0x1c(sp)
2010f1e2 c.addi16sp sp, 0x30
2010f1e4 c.jr ra
2010f1e6 c.addi16sp sp, -0x60

fw 0x2010f192
2010f174 lw a5, 0x384(s1)
2010f178 c.lui s2, 7
2010f17a addi a0, s2, -0x4ac
2010f17e c.jalr a5
2010f180 lw a5, 0x384(s1)
2010f184 c.swsp a0, 0xc(sp)
2010f186 c.lui a0, 8
2010f188 addi a0, a0, -0x4ac
2010f18c c.jalr a5
2010f18e c.lwsp a6, 0xc(sp)
2010f190 c.mv a7, a0
2010f192 lui a5, 0x10000
2010f196 lui a3, 0x51000
2010f19a c.lui a0, 1
2010f19c c.addi a5, 6
2010f19e c.li a4, 3
2010f1a0 addi a3, a3, 0x42
2010f1a4 c.li a2, 2
2010f1a6 addi a0, a0, -0x800
2010f1aa c.li a1, 0
2010f1ac c.jalr s3
2010f1ae c.mv a3, s0
2010f1b0 addi a0, s2, -0x4ac
2010f1b4 c.li a2, 3
2010f1b6 c.li a1, 0xf
2010f1b8 jal -0xfd8
2010f1bc c.mv a3, s0
2010f1be c.lwsp s0, 0x28(sp)
2010f1c0 c.lwsp ra, 0x2c(sp)
2010f1c2 c.lwsp s1, 0x24(sp)
2010f1c4 c.lwsp s3, 0x1c(sp)
2010f1c6 addi a0, s2, -0x4b0
2010f1ca c.lwsp s2, 0x20(sp)
2010f1cc c.li a2, 3
2010f1ce lui a1, 0x3c
2010f1d2 c.addi16sp sp, 0x30
2010f1d4 j -0xff4
2010f1d8 c.lwsp ra, 0x2c(sp)
2010f1da c.lwsp s0, 0x28(sp)
2010f1dc c.lwsp s1, 0x24(sp)
2010f1de c.lwsp s2, 0x20(sp)
2010f1e0 c.lwsp s3, 0x1c(sp)
2010f1e2 c.addi16sp sp, 0x30
2010f1e4 c.jr ra
2010f1e6 c.addi16sp sp, -0x60
2010f1e8 c.swsp s1, 0x54(sp)
2010f1ea c.swsp s2, 0x50(sp)
2010f1ec lui s1, 0x2020c
2010f1f0 c.lui s2, 8
2010f1f2 c.swsp s0, 0x58(sp)
2010f1f4 c.swsp s3, 0x4c(sp)
2010f1f6 c.swsp s4, 0x48(sp)
2010f1f8 c.swsp s5, 0x44(sp)
2010f1fa c.swsp ra, 0x5c(sp)
2010f1fc c.swsp s6, 0x40(sp)
2010f1fe c.swsp s7, 0x3c(sp)
2010f200 c.mv s3, a0
2010f202 c.swsp zero, 0x20(sp)
2010f204 c.swsp zero, 0x24(sp)
2010f206 c.swsp zero, 0x28(sp)
2010f208 c.swsp zero, 0x2c(sp)
2010f20a addi s4, sp, 0x20
2010f20e addi s5, s2, 0x10
2010f212 c.mv s0, s1
2010f214 lw a5, 0x384(s1)
2010f218 c.mv a0, s2
2010f21a c.addi s2, 4
2010f21c c.jalr a5
2010f21e sw a0, 0(s4)
2010f222 c.addi s4, 4
2010f224 bne s2, s5, -0x10

fw 0x2010f24c
2010f22e bne a7, a5, 0x192
2010f232 c.lwsp a5, 0x28(sp)
2010f234 bne a7, a5, 0x18c
2010f238 c.lwsp a5, 0x2c(sp)
2010f23a bne a7, a5, 0x186
2010f23e lui s2, 0x2020c
2010f242 lw t1, 0x2f4(s2)
2010f246 c.swsp a7, 4(sp)
2010f248 c.swsp a7, 0(sp)
2010f24a c.mv a6, a7
2010f24c lui s6, 0x10000
2010f250 beqz s3, 0x186
2010f254 lui s5, 0x51000
2010f258 c.lui a0, 1
2010f25a c.li a4, 5
2010f25c addi a3, s5, 0x44
2010f260 c.li a2, 2
2010f262 c.li a1, 0
2010f264 addi a5, s6, 1
2010f268 addi a0, a0, -0x800
2010f26c c.jalr t1
2010f26e lw s7, 0x2f4(s2)
2010f272 lw a5, 0x384(s1)
2010f276 c.lui s4, 1
2010f278 addi a0, s4, -0x3a0
2010f27c c.jalr a5
2010f27e lw a5, 0x384(s1)
2010f282 c.swsp a0, 0x18(sp)
2010f284 addi a0, s4, -0x394
2010f288 c.jalr a5
2010f28a lw a5, 0x384(s1)
2010f28e c.swsp a0, 0x14(sp)
2010f290 addi a0, zero, 0x700
2010f294 c.jalr a5
2010f296 lw a5, 0x384(s1)
2010f29a c.mv s3, a0
2010f29c addi a0, s4, 0x700
2010f2a0 c.jalr a5
2010f2a2 lw a5, 0x384(s1)
2010f2a6 c.mv s4, a0
2010f2a8 addi a0, zero, 0x44
2010f2ac c.jalr a5
2010f2ae c.lwsp a7, 0x14(sp)
2010f2b0 c.lwsp a6, 0x18(sp)
2010f2b2 c.swsp a0, 8(sp)
2010f2b4 c.swsp s4, 4(sp)
2010f2b6 c.swsp s3, 0(sp)
2010f2b8 addi a5, s6, 2
2010f2bc c.lui a0, 1
2010f2be addi a3, s5, 0x45
2010f2c2 c.li a2, 2
2010f2c4 c.li a1, 0
2010f2c6 c.li a4, 6
2010f2c8 addi a0, a0, -0x800
2010f2cc c.jalr s7
2010f2ce lw s4, 0x2f4(s2)
2010f2d2 lw a5, 0x384(s0)
2010f2d6 c.lui s1, 0x17
2010f2d8 addi a0, s1, -0x344
2010f2dc c.jalr a5
2010f2de lw a4, 0x384(s0)

fw 0x20116bc4
20116ba6 c.li a2, 2
20116ba8 c.li a1, 1
20116baa c.mv a0, s1
20116bac addi s4, s4, -0x548
20116bb0 jal 0x57f0
20116bb4 c.add s4, s0
20116bb6 c.li a2, 1
20116bb8 lui a1, 0x40000
20116bbc c.mv a0, s4
20116bbe jal 0x53d6
20116bc2 c.li a2, 1
20116bc4 lui a1, 0x10000
20116bc8 addi a0, zero, 0x30c
20116bcc jal 0x53c8
20116bd0 c.li a2, 0
20116bd2 lui a1, 0x80000
20116bd6 addi a0, zero, 0x32c
20116bda jal 0x53ba
20116bde addi a0, zero, 0x64
20116be2 jal 0x53a8
20116be6 c.add s0, s2
20116be8 c.lui s2, 0xc
20116bea addi a0, s2, 0x18
20116bee addi a2, zero, 0x5b
20116bf2 lui a1, 0xff0
20116bf6 c.add a0, s0
20116bf8 jal 0x539c
20116bfc addi a0, s2, 0x38
20116c00 addi a2, zero, 0x5b
20116c04 lui a1, 0xff0
20116c08 c.add a0, s0
20116c0a jal 0x538a
20116c0e slli a4, s1, 1
20116c12 c.add a4, s3
20116c14 lbu a5, 0x36e(a4)
20116c18 lbu a2, 0x372(a4)
20116c1c addi s6, s2, 4
20116c20 c.slli a5, 8
20116c22 c.add s6, s0
20116c24 c.or a2, a5
20116c26 lui a1, 0x3ff00
20116c2a c.mv a0, s6
20116c2c c.swsp a2, 0xc(sp)
20116c2e jal 0x5366
20116c32 c.lwsp a2, 0xc(sp)
20116c34 addi a0, s2, 0x24
20116c38 lui a1, 0x3ff00
20116c3c c.add a0, s0
20116c3e jal 0x5356
20116c42 c.mv a0, s1
20116c44 jal -0xe04
20116c48 c.li a2, 1
20116c4a c.li a1, 1
20116c4c c.mv a0, s6
20116c4e jal 0x5346
20116c52 addi a0, s2, 0x40
20116c56 c.lui s7, 2
20116c58 .byte 0x93, 0x86

fw 0x2011c950
2011c932 c.lw s0, 0x30(s1)
2011c934 c.j -0xa4
2011c936 j 0x25b8
2011c93a j 0x260a
2011c93e j 0x281e
2011c942 lui a5, 0x2020d
2011c946 lw a5, 0xdc(a5)
2011c94a c.addi sp, -0x10
2011c94c c.swsp ra, 0xc(sp)
2011c94e c.li a0, 0
2011c950 lui a1, 0x10000
2011c954 c.jalr a5
2011c956 c.lwsp ra, 0xc(sp)
2011c958 c.li a0, 2
2011c95a c.addi sp, 0x10
2011c95c c.jr ra
2011c95e lui a5, 0x2020d
2011c962 lw a5, 0xf4(a5)
2011c966 c.addi16sp sp, -0x50
2011c968 c.swsp ra, 0x4c(sp)
2011c96a c.swsp s0, 0x48(sp)
2011c96c c.swsp s1, 0x44(sp)
2011c96e c.swsp s3, 0x3c(sp)
2011c970 c.swsp s5, 0x34(sp)
2011c972 c.swsp s2, 0x40(sp)
2011c974 c.swsp s4, 0x38(sp)
2011c976 c.swsp s6, 0x30(sp)
2011c978 c.swsp s7, 0x2c(sp)
2011c97a c.swsp s8, 0x28(sp)
2011c97c c.swsp s9, 0x24(sp)
2011c97e c.swsp s10, 0x20(sp)
2011c980 c.swsp s11, 0x1c(sp)
2011c982 c.mv s5, a0
2011c984 addi s3, a0, 8
2011c988 c.jalr a5
2011c98a lbu a5, 1(s5)
2011c98e lui s1, 0x2020d
2011c992 c.mv s0, a0
2011c994 sb a5, 0x434(a0)
2011c998 lw a5, 0xc4(s1)
2011c99c c.lui a0, 0xe
2011c99e addi a0, a0, 0x30
2011c9a2 c.jalr a5
2011c9a4 lbu a4, 1(s5)
2011c9a8 c.swsp a0, 4(sp)
2011c9aa c.li a5, 0xa
2011c9ac bne a4, a5, 0x52
2011c9b0 c.mv a1, s3
2011c9b2 c.mv a0, s0
2011c9b4 jal 0x2926
2011c9b8 c.mv s7, a0
2011c9ba c.lui s4, 2
2011c9bc addi s8, s4, 0x3f4
2011c9c0 lui s10, 0x2020d
2011c9c4 c.lui s2, 0xe
2011c9c6 c.add s8, s0
2011c9c8 c.li s9, 0
2011c9ca c.li s6, 0
2011c9cc addi s10, s10, 0x3c8
2011c9d0 addi s2, s2, 0x30
2011c9d4 c.add s4, s0
2011c9d6 addi s11, s7, -1
2011c9da bne s9, s7, 0x2c
2011c9de c.lwsp ra, 0x4c(sp)
2011c9e0 c.lwsp s0, 0x48(sp)
2011c9e2 c.lwsp s1, 0x44(sp)
2011c9e4 c.lwsp s2, 0x40(sp)

fw 0x2011cc4a
2011cc2c lw a4, 0xc4(s1)
2011cc30 sb a0, 0x432(s0)
2011cc34 c.mv a0, s2
2011cc36 c.jalr a4
2011cc38 c.lwsp a5, 8(sp)
2011cc3a c.sub a0, a5
2011cc3c sw a0, 0x4e0(s4)
2011cc40 c.j -0x16c
2011cc42 lui a5, 0x2020d
2011cc46 lw a5, 0xdc(a5)
2011cc4a lui a1, 0x10000
2011cc4e c.li a0, 0
2011cc50 c.jalr a5
2011cc52 c.li s6, 2
2011cc54 c.j -0x1e8
2011cc56 c.lw a5, 0(a0)
2011cc58 c.li a4, 0xa
2011cc5a c.srli a5, 2
2011cc5c andi a5, a5, 0x3f
2011cc60 beq a5, a4, 0x3c
2011cc64 bltu a4, a5, 0x16
2011cc68 addi a5, a5, 0x38
2011cc6c andi a5, a5, 0x3f
2011cc70 c.li a4, 1
2011cc72 bltu a4, a5, 0xe
2011cc76 c.li a0, 0
2011cc78 c.jr ra
2011cc7a c.li a4, 0xb
2011cc7c beq a5, a4, 0x22
2011cc80 lui a5, 0x2020d
2011cc84 lw a5, 0xdc(a5)
2011cc88 c.addi sp, -0x10
2011cc8a c.swsp ra, 0xc(sp)
2011cc8c c.li a0, 0
2011cc8e lui a1, 0x10000
2011cc92 c.jalr a5
2011cc94 c.lwsp ra, 0xc(sp)
2011cc96 c.li a0, 2
2011cc98 c.addi sp, 0x10
2011cc9a c.jr ra
2011cc9c c.j -0x394
2011cc9e c.j -0x340
2011cca0 lui a5, 0x2020d
2011cca4 lw a5, 0xf4(a5)
2011cca8 c.addi sp, -0x10
2011ccaa c.swsp ra, 0xc(sp)
2011ccac c.swsp s0, 8(sp)
2011ccae c.swsp s1, 4(sp)
2011ccb0 c.swsp s2, 0(sp)
2011ccb2 c.jalr a5
2011ccb4 c.mv s0, a0
2011ccb6 c.lui a0, 0xf
2011ccb8 addi a1, zero, 0x1ff
2011ccbc addi a0, a0, -0x1f4
2011ccc0 jal -0xd22
2011ccc4 slli a3, a0, 0x10
2011ccc8 andi a0, a0, 0x100
2011cccc c.srai a3, 0x10
2011ccce c.beqz a0, 6
2011ccd0 ori a3, a3, -0x200
2011ccd4 c.lui s2, 3
2011ccd6 add s1, s0, s2
2011ccda lw a4, -0x170(s1)
2011ccde c.lui a5, 1

fw 0x2011cc8e
2011cc70 c.li a4, 1
2011cc72 bltu a4, a5, 0xe
2011cc76 c.li a0, 0
2011cc78 c.jr ra
2011cc7a c.li a4, 0xb
2011cc7c beq a5, a4, 0x22
2011cc80 lui a5, 0x2020d
2011cc84 lw a5, 0xdc(a5)
2011cc88 c.addi sp, -0x10
2011cc8a c.swsp ra, 0xc(sp)
2011cc8c c.li a0, 0
2011cc8e lui a1, 0x10000
2011cc92 c.jalr a5
2011cc94 c.lwsp ra, 0xc(sp)
2011cc96 c.li a0, 2
2011cc98 c.addi sp, 0x10
2011cc9a c.jr ra
2011cc9c c.j -0x394
2011cc9e c.j -0x340
2011cca0 lui a5, 0x2020d
2011cca4 lw a5, 0xf4(a5)
2011cca8 c.addi sp, -0x10
2011ccaa c.swsp ra, 0xc(sp)
2011ccac c.swsp s0, 8(sp)
2011ccae c.swsp s1, 4(sp)
2011ccb0 c.swsp s2, 0(sp)
2011ccb2 c.jalr a5
2011ccb4 c.mv s0, a0
2011ccb6 c.lui a0, 0xf
2011ccb8 addi a1, zero, 0x1ff
2011ccbc addi a0, a0, -0x1f4
2011ccc0 jal -0xd22
2011ccc4 slli a3, a0, 0x10
2011ccc8 andi a0, a0, 0x100
2011cccc c.srai a3, 0x10
2011ccce c.beqz a0, 6
2011ccd0 ori a3, a3, -0x200
2011ccd4 c.lui s2, 3
2011ccd6 add s1, s0, s2
2011ccda lw a4, -0x170(s1)
2011ccde c.lui a5, 1
2011cce0 addi a5, a5, 0x748
2011cce4 c.add a5, a4
2011cce6 c.slli a5, 1
2011cce8 c.add a5, s0
2011ccea sh a3, 4(a5)
2011ccee addi a5, a4, 1
2011ccf2 c.li a3, 0x12
2011ccf4 sw a5, -0x170(s1)
2011ccf8 bgeu a3, a4, 0x30
2011ccfc c.mv a0, s0
2011ccfe c.li a1, 9
2011cd00 jal -0xa88
2011cd04 addi a0, s2, -0x16c
2011cd08 lui a5, 0x2020d
2011cd0c c.add a0, s0
2011cd0e c.lwsp s0, 8(sp)
2011cd10 c.lwsp ra, 0xc(sp)
2011cd12 c.lwsp s2, 0(sp)
2011cd14 sw zero, -0x170(s1)
2011cd18 lw a5, 0xe8(a5)
2011cd1c c.lwsp s1, 4(sp)
2011cd1e addi a2, zero, 0x28
2011cd22 c.li a1, 0

fw 0x2011f926
2011f908 c.slli a1, 2
2011f90a addi a4, a5, -0x800
2011f90e addi a5, a5, -0x600
2011f912 c.swsp a3, 0x14(sp)
2011f914 c.swsp a4, 0x38(sp)
2011f916 addi a3, zero, 0x200
2011f91a c.addi4spn a4, sp, 0x10
2011f91c c.swsp a5, 0x3c(sp)
2011f91e addi a5, a1, 0x30
2011f922 c.swsp a3, 0x18(sp)
2011f924 c.swsp s2, 0x50(sp)
2011f926 lui a3, 0x8000
2011f92a add s2, a5, a4
2011f92e c.swsp a3, 0x1c(sp)
2011f930 c.swsp s0, 0x58(sp)
2011f932 c.mv s0, a0
2011f934 lw a0, -0x30(s2)
2011f938 lw a1, -0x28(s2)
2011f93c c.lui a3, 1
2011f93e c.swsp s5, 0x44(sp)
2011f940 addi a3, a3, -0x400
2011f944 slli s5, a2, 8
2011f948 or a0, s5, a0
2011f94c c.swsp s1, 0x54(sp)
2011f94e c.swsp a3, 0x20(sp)
2011f950 c.mv s1, a2
2011f952 lui a3, 0x30000
2011f956 c.li a2, 1
2011f958 c.swsp ra, 0x5c(sp)
2011f95a c.swsp a3, 0x24(sp)
2011f95c c.swsp s3, 0x4c(sp)
2011f95e c.swsp s4, 0x48(sp)
2011f960 c.swsp a0, 0xc(sp)
2011f962 jal -0x39ce
2011f966 lw a1, -0x20(s2)
2011f96a c.lwsp a0, 0xc(sp)
2011f96c c.li a2, 0
2011f96e c.lui s4, 2
2011f970 jal -0x39dc
2011f974 add a5, s0, s1
2011f978 c.add a5, s4
2011f97a lbu a2, 0x1d6(a5)
2011f97e lw a0, -0x18(s2)
2011f982 lw a1, -0x10(s2)
2011f986 addi s4, s4, 0x1d8
2011f98a c.srli a2, 1
2011f98c or a0, s5, a0
2011f990 c.add s0, s4
2011f992 jal -0x39fe
2011f996 c.slli s1, 0xc
2011f998 c.li s3, 0
2011f99a addi s4, zero, 0x80
2011f99e lbu a5, 0(s0)
2011f9a2 lbu a2, 1(s0)
2011f9a6 lw a0, -8(s2)
2011f9aa c.slli a5, 0x18
2011f9ac c.slli a2, 0x10
2011f9ae c.or a5, a2
2011f9b0 lbu a2, 3(s0)
2011f9b4 c.or a0, s1
2011f9b6 c.add a0, s3
2011f9b8 c.or a5, a2
2011f9ba .byte 0x03, 0x46

fw 0x20120b14
20120af6 addi a0, s1, 0xd4
20120afa lui a2, 0x130
20120afe c.li a1, -1
20120b00 jal -0x4b6c
20120b04 c.lui s2, 1
20120b06 c.li a2, 3
20120b08 addi a1, s2, -0x100
20120b0c addi a0, s1, 0xe4
20120b10 jal -0x4b7c
20120b14 lui s3, 0x10000
20120b18 addi a1, s3, -1
20120b1c addi a0, s1, 0xfc
20120b20 jal -0x4b82
20120b24 c.li a2, 0x11
20120b26 mul s4, s4, a2
20120b2a andi a5, a0, 0x7f
20120b2e c.li a2, 4
20120b30 addi a1, s2, -0x100
20120b34 c.add s0, s4
20120b36 sb a5, 0x3e0(s0)
20120b3a srli a5, a0, 7
20120b3e andi a5, a5, 0x7f
20120b42 sb a5, 0x3e1(s0)
20120b46 srli a5, a0, 0xe
20120b4a c.srli a0, 0x15
20120b4c andi a5, a5, 0x7f
20120b50 andi a0, a0, 0x7f
20120b54 sb a5, 0x3e2(s0)
20120b58 sb a0, 0x3e3(s0)
20120b5c addi a0, s1, 0xe4
20120b60 jal -0x4bcc
20120b64 addi a1, s3, -1
20120b68 addi a0, s1, 0xfc
20120b6c jal -0x4bce
20120b70 andi a5, a0, 0x7f
20120b74 sb a5, 0x3e4(s0)
20120b78 srli a5, a0, 7
20120b7c andi a5, a5, 0x7f
20120b80 sb a5, 0x3e5(s0)
20120b84 srli a5, a0, 0xe
20120b88 c.srli a0, 0x15
20120b8a andi a5, a5, 0x7f
20120b8e andi a0, a0, 0x7f
20120b92 sb a5, 0x3e6(s0)
20120b96 sb a0, 0x3e7(s0)
20120b9a c.li a2, 5
20120b9c addi a1, s2, -0x100
20120ba0 addi a0, s1, 0xe4
20120ba4 jal -0x4c10
20120ba8 .byte 0x93, 0x85

fw 0x20120de4
20120dc6 addi a0, s1, 0xd4
20120dca lui a2, 0x130
20120dce c.li a1, -1
20120dd0 jal -0x4e3c
20120dd4 c.lui s2, 1
20120dd6 c.li a2, 3
20120dd8 addi a1, s2, -0x100
20120ddc addi a0, s1, 0xe4
20120de0 jal -0x4e4c
20120de4 lui s3, 0x10000
20120de8 addi a1, s3, -1
20120dec addi a0, s1, 0xfc
20120df0 jal -0x4e52
20120df4 c.li a2, 0x11
20120df6 mul s4, s4, a2
20120dfa andi a5, a0, 0x7f
20120dfe c.li a2, 4
20120e00 addi a1, s2, -0x100
20120e04 c.add s0, s4
20120e06 sb a5, 0x3e0(s0)
20120e0a srli a5, a0, 7
20120e0e andi a5, a5, 0x7f
20120e12 sb a5, 0x3e1(s0)
20120e16 srli a5, a0, 0xe
20120e1a c.srli a0, 0x15
20120e1c andi a5, a5, 0x7f
20120e20 andi a0, a0, 0x7f
20120e24 sb a5, 0x3e2(s0)
20120e28 sb a0, 0x3e3(s0)
20120e2c addi a0, s1, 0xe4
20120e30 jal -0x4e9c
20120e34 addi a1, s3, -1
20120e38 addi a0, s1, 0xfc
20120e3c jal -0x4e9e
20120e40 andi a5, a0, 0x7f
20120e44 sb a5, 0x3e4(s0)
20120e48 srli a5, a0, 7
20120e4c andi a5, a5, 0x7f
20120e50 sb a5, 0x3e5(s0)
20120e54 srli a5, a0, 0xe
20120e58 c.srli a0, 0x15
20120e5a andi a5, a5, 0x7f
20120e5e andi a0, a0, 0x7f
20120e62 sb a5, 0x3e6(s0)
20120e66 sb a0, 0x3e7(s0)
20120e6a c.li a2, 5
20120e6c addi a1, s2, -0x100
20120e70 addi a0, s1, 0xe4
20120e74 jal -0x4ee0
20120e78 .byte 0x93, 0x85

fw 0x20121174
20121156 addi a0, s1, 0xd4
2012115a lui a2, 0x130
2012115e c.li a1, -1
20121160 jal -0x51cc
20121164 c.lui s2, 1
20121166 c.li a2, 3
20121168 addi a1, s2, -0x100
2012116c addi a0, s1, 0xe4
20121170 jal -0x51dc
20121174 lui s3, 0x10000
20121178 addi a1, s3, -1
2012117c addi a0, s1, 0xfc
20121180 jal -0x51e2
20121184 c.li a2, 0x11
20121186 mul s4, s4, a2
2012118a andi a5, a0, 0x7f
2012118e c.li a2, 4
20121190 addi a1, s2, -0x100
20121194 c.add s0, s4
20121196 sb a5, 0x402(s0)
2012119a srli a5, a0, 7
2012119e andi a5, a5, 0x7f
201211a2 sb a5, 0x403(s0)
201211a6 srli a5, a0, 0xe
201211aa c.srli a0, 0x15
201211ac andi a5, a5, 0x7f
201211b0 andi a0, a0, 0x7f
201211b4 sb a5, 0x404(s0)
201211b8 sb a0, 0x405(s0)
201211bc addi a0, s1, 0xe4
201211c0 jal -0x522c
201211c4 addi a1, s3, -1
201211c8 addi a0, s1, 0xfc
201211cc jal -0x522e
201211d0 andi a5, a0, 0x7f
201211d4 sb a5, 0x406(s0)
201211d8 srli a5, a0, 7
201211dc andi a5, a5, 0x7f
201211e0 sb a5, 0x407(s0)
201211e4 srli a5, a0, 0xe
201211e8 c.srli a0, 0x15
201211ea andi a5, a5, 0x7f
201211ee andi a0, a0, 0x7f
201211f2 sb a5, 0x408(s0)
201211f6 sb a0, 0x409(s0)
201211fa c.li a2, 5
201211fc addi a1, s2, -0x100
20121200 addi a0, s1, 0xe4
20121204 jal -0x5270
20121208 .byte 0x93, 0x85

fw 0x20121412
201213f4 addi a0, s1, 0xd4
201213f8 lui a2, 0x130
201213fc c.li a1, -1
201213fe jal -0x546a
20121402 c.lui s2, 1
20121404 c.li a2, 3
20121406 addi a1, s2, -0x100
2012140a addi a0, s1, 0xe4
2012140e jal -0x547a
20121412 lui s3, 0x10000
20121416 addi a1, s3, -1
2012141a addi a0, s1, 0xfc
2012141e jal -0x5480
20121422 c.li a2, 0x11
20121424 mul s4, s4, a2
20121428 andi a5, a0, 0x7f
2012142c c.li a2, 4
2012142e addi a1, s2, -0x100
20121432 c.add s0, s4
20121434 sb a5, 0x402(s0)
20121438 srli a5, a0, 7
2012143c andi a5, a5, 0x7f
20121440 sb a5, 0x403(s0)
20121444 srli a5, a0, 0xe
20121448 c.srli a0, 0x15
2012144a andi a5, a5, 0x7f
2012144e andi a0, a0, 0x7f
20121452 sb a5, 0x404(s0)
20121456 sb a0, 0x405(s0)
2012145a addi a0, s1, 0xe4
2012145e jal -0x54ca
20121462 addi a1, s3, -1
20121466 addi a0, s1, 0xfc
2012146a jal -0x54cc
2012146e andi a5, a0, 0x7f
20121472 sb a5, 0x406(s0)
20121476 srli a5, a0, 7
2012147a andi a5, a5, 0x7f
2012147e sb a5, 0x407(s0)
20121482 srli a5, a0, 0xe
20121486 c.srli a0, 0x15
20121488 andi a5, a5, 0x7f
2012148c andi a0, a0, 0x7f
20121490 sb a5, 0x408(s0)
20121494 sb a0, 0x409(s0)
20121498 c.li a2, 5
2012149a addi a1, s2, -0x100
2012149e addi a0, s1, 0xe4
201214a2 jal -0x550e
201214a6 .byte 0x93, 0x85

fw 0x20127674
20127656 .byte 0x04, 0x90
20127658 bltz a0, 8
2012765c c.li a0, 1
2012765e c.j -0x4a
20127660 lui a5, 0x20201
20127664 lw a5, 0x768(a5)
20127668 c.mv a0, s4
2012766a c.jalr a5
2012766c c.swsp a0, 0xc(sp)
2012766e c.li a5, 1
20127670 bne a0, a5, -0x5e
20127674 lui a5, 0x10000
20127678 c.addi a5, -1
2012767a c.lui s4, 0x10
2012767c c.li s11, 4
2012767e lui s6, 0x20202
20127682 lui s7, 0x20201
20127686 c.swsp a5, 0x18(sp)
20127688 c.addi s4, -1
2012768a c.addi s2, -1
2012768c beqz s2, -0x7a
20127690 c.lwsp a5, 0x14(sp)
20127692 c.mv a0, s5
20127694 lw a5, 0x740(a5)
20127698 c.jalr a5
2012769a slli a5, a0, 0x18
2012769e c.srai a5, 0x18
201276a0 bgez a5, -0x44
201276a4 andi s8, a0, 0x20
201276a8 beqz s8, 0xe
201276ac lw a5, 0x2d0(s6)
201276b0 c.mv a0, s3
201276b2 c.jalr a5
201276b4 c.j -0x2a
201276b6 c.andi a0, 0x1f
201276b8 addi a5, a0, -8
201276bc andi a5, a5, 0xff
201276c0 bgeu s11, a5, -0x64
201276c4 c.li a5, 0x12
201276c6 beq a0, a5, -0x6a
201276ca lw a5, 0x2d0(s6)
201276ce c.mv a0, s3
201276d0 c.li s9, 0
201276d2 c.jalr a5
201276d4 lw a5, 0x748(s7)
201276d8 c.mv a0, s0
201276da c.jalr a5
201276dc c.lwsp a5, 0x18(sp)
201276de slli a1, s9, 0x1c
201276e2 c.and a0, a5
201276e4 lui a5, 0x20201
201276e8 lw a5, 0x73c(a5)
201276ec c.or a1, a0
201276ee c.mv a0, s0
201276f0 c.jalr a5
201276f2 lw a5, 0x748(s7)
201276f6 c.lwsp a0, 0x10(sp)
201276f8 c.jalr a5
201276fa lw a2, 0x748(s7)
201276fe c.swsp a0, 0x1c(sp)
20127700 c.mv a0, s10
20127702 c.jalr a2
20127704 c.lwsp a5, 0x1c(sp)
20127706 c.li a3, 3
20127708 .byte 0x33, 0xf6

fw 0x2012e7b0
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
2012e844 .byte 0xb7, 0x17

fw 0x2012e8c0
2012e8a2 c.fld fs0, 0x40(s0)
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

fw 0x2012e8de
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
2012e972 .byte 0xb7, 0x17

fw 0x2012ea0a
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

fw 0x20137268
2013724a c.fld fs0, 0x40(s0)
2013724c lw a5, 0x584(a5)
20137250 c.addi sp, -0x20
20137252 c.swsp s0, 0x18(sp)
20137254 c.swsp ra, 0x1c(sp)
20137256 c.lw s0, 4(a5)
20137258 c.jal -0x2e
2013725a c.li a5, 1
2013725c beq a0, a5, 0x14
20137260 lui a5, 0x20202
20137264 lw a5, 0x340(a5)
20137268 lui a1, 0x8000
2013726c c.li a0, 1
2013726e c.jalr a5
20137270 lui a5, 0x20201
20137274 lw a5, 0x290(a5)
20137278 c.lw a0, 0(s0)
2013727a c.li a3, -1
2013727c c.li a2, 0x10
2013727e c.mv a1, sp
20137280 c.jalr a5
20137282 c.li a5, 0x10
20137284 bne a0, a5, 0x1a
20137288 lui a5, 0x20202
2013728c lw a5, -0x3f0(a5)
20137290 c.mv a0, sp
20137292 c.jalr a5
20137294 c.lwsp ra, 0x1c(sp)
20137296 c.lwsp s0, 0x18(sp)
20137298 c.li a0, 1
2013729a c.addi16sp sp, 0x20
2013729c c.jr ra
2013729e lui a5, 0x20202
201372a2 lw a5, 0x340(a5)
201372a6 c.lui a1, 0x10
201372a8 c.li a0, 1
201372aa c.jalr a5
201372ac c.j -0x18
201372ae lui a5, 0x20201
201372b2 c.addi sp, -0x20
201372b4 lw a5, 0x410(a5)
201372b8 c.swsp s0, 0x18(sp)
201372ba lui a1, 0xf2090
201372be lui s0, 0x20203
201372c2 c.swsp s1, 0x14(sp)
201372c4 addi s0, s0, 0x580
201372c8 c.swsp ra, 0x1c(sp)
201372ca c.li a2, 3
201372cc c.addi a1, 3
201372ce c.li a0, 0x10
201372d0 c.lw s1, 4(s0)
201372d2 c.jalr a5
201372d4 c.lw a5, 4(s0)
201372d6 c.sw a0, 0(s1)
201372d8 c.lw s1, 0(a5)
201372da c.bnez s1, 0x26
201372dc c.li a5, 6
201372de sb a5, 0(sp)
201372e2 lui a5, 0x20211
201372e6 addi a5, a5, 0x704
201372ea c.swsp a5, 4(sp)
201372ec addi a5, zero, 0xd0
201372f0 c.swsp a5, 8(sp)
201372f2 lui a5, 0x20202
201372f6 lw a5, 0x348(a5)
201372fa c.mv a0, sp
201372fc c.jalr a5

fw 0x201375e2
201375c4 c.jr ra
201375c6 lui a5, 0x20202
201375ca lw a5, -0x40c(a5)
201375ce c.j -0x4e
201375d0 lui a5, 0x20202
201375d4 lw a5, -0x408(a5)
201375d8 c.j -0x58
201375da lui a5, 0x20202
201375de lw a5, 0x340(a5)
201375e2 lui a1, 0x8000
201375e6 c.li a0, 0
201375e8 c.jalr a5
201375ea c.li s0, 1
201375ec c.j -0x66
201375ee c.lwsp a1, 4(sp)
201375f0 c.beqz a1, -0x4a
201375f2 sb s2, 0xa(sp)
201375f6 sh s2, 8(sp)
201375fa c.li a5, 0xc
201375fc sh a5, 0xc(sp)
20137600 c.lw a5, 0(s1)
20137602 c.addi4spn a0, sp, 8
20137604 andi a4, a5, 3
20137608 c.lw a5, 0(a1)
2013760a c.andi a5, -4
2013760c c.or a5, a4
2013760e c.sw a5, 0(a1)
20137610 c.lw a4, 0(s1)
20137612 andi a5, a5, -0xfd
20137616 andi a4, a4, 0xfc
2013761a c.or a5, a4
2013761c c.sw a5, 0(a1)
2013761e lbu a5, 1(s1)
20137622 sb s0, 2(a1)
20137626 sb a5, 1(a1)
2013762a lbu a5, 3(s1)
2013762e sb a5, 3(a1)
20137632 lui a5, 0x20201
20137636 lw a5, 0x6d0(a5)
2013763a c.jalr a5
2013763c c.beqz a0, 0x12
2013763e lui a5, 0x20202
20137642 lw a5, 0x340(a5)
20137646 lui a1, 0x200
2013764a c.li a0, 1
2013764c c.jalr a5
2013764e c.li s2, 1
20137650 c.j -0x98
20137652 c.lw a5, 4(a0)
20137654 c.addi sp, -0x20
20137656 c.lui a2, 4
20137658 c.swsp s1, 0x14(sp)
2013765a addi s1, a2, -1
2013765e c.and a5, s1
20137660 c.slli a5, 0x10
20137662 c.swsp ra, 0x1c(sp)
20137664 c.swsp s0, 0x18(sp)
20137666 c.srli a5, 0x10
20137668 c.li a4, 7
2013766a bltu a4, a5, 0x10
2013766e c.li a0, 4
20137670 c.lwsp ra, 0x1c(sp)
20137672 c.lwsp s0, 0x18(sp)
20137674 c.lwsp s1, 0x14(sp)
20137676 c.addi16sp sp, 0x20

fw 0x201377b2
20137794 lw a5, 0x340(a5)
20137798 c.li a1, 0x10
2013779a c.li a0, 0
2013779c c.jalr a5
2013779e c.lwsp ra, 0x3c(sp)
201377a0 c.lwsp s0, 0x38(sp)
201377a2 c.lwsp s1, 0x34(sp)
201377a4 c.lwsp s2, 0x30(sp)
201377a6 c.lwsp s3, 0x2c(sp)
201377a8 c.addi16sp sp, 0x40
201377aa c.jr ra
201377ac c.lwsp s1, 4(sp)
201377ae addi s0, zero, 0x64
201377b2 lui s3, 0x8000
201377b6 lui s2, 0x20202
201377ba c.mv a3, s1
201377bc c.li a2, 1
201377be addi a1, zero, 0x33
201377c2 addi a0, zero, 0x33
201377c6 jal -0x13c72
201377ca c.bnez a0, 0x48
201377cc addi a5, zero, 0x33
201377d0 c.sw a5, 0(s1)
201377d2 lui a5, 0x20201
201377d6 lw a5, 0x6d0(a5)
201377da c.lwsp a1, 4(sp)
201377dc c.addi4spn a0, sp, 8
201377de c.jalr a5
201377e0 c.beqz a0, -0x42
201377e2 c.li a5, 2
201377e4 sb a5, 0x10(sp)
201377e8 lui a5, 0x20211
201377ec addi a5, a5, 0x720
201377f0 c.swsp a5, 0x14(sp)
201377f2 addi a5, zero, 0x1c6
201377f6 c.swsp a5, 0x18(sp)
201377f8 lui a5, 0x20202
201377fc lw a5, 0x348(a5)
20137800 c.addi4spn a0, sp, 0x10
20137802 c.jalr a5
20137804 lui a5, 0x20202
20137808 lw a5, 0x340(a5)
2013780c lui a1, 0x100
20137810 c.j -0x76
20137812 c.lw a5, 0(s1)
20137814 and a5, s3, a5
20137818 c.beqz a5, 8
2013781a sw zero, 0(s1)
2013781e c.j -0x4c
20137820 lw a5, 0x2d0(s2)
20137824 c.addi s0, -1
20137826 addi a0, zero, 0x32
2013782a andi s0, s0, 0xff
2013782e c.jalr a5
20137830 c.bnez s0, -0x76
20137832 c.j -0x60
20137834 c.lw a5, 0(a0)
20137836 lhu a0, 0(a5)
2013783a c.lui a5, 0xfffff
2013783c addi a5, a5, -0x525
20137840 c.add a0, a5
20137842 seqz a0, a0
20137846 c.jr ra

fw 0x2013b6d4
2013b6b6 c.fsw fa4, 0x7c(a5)
2013b6b8 c.and a1, a0
2013b6ba lui a6, 0xf1000
2013b6be or a1, a1, s3
2013b6c2 c.addi a6, -1
2013b6c4 and a6, a1, a6
2013b6c8 slli a1, s0, 0x18
2013b6cc or a1, a1, a6
2013b6d0 beq s6, s2, 0x32
2013b6d4 lui s0, 0x8000
2013b6d8 c.or a1, s0
2013b6da lw a5, 0(s4)
2013b6de c.li a4, 1
2013b6e0 c.andi a5, 0xf
2013b6e2 beq a5, a4, 0x2a
2013b6e6 c.li a4, 2
2013b6e8 beq a5, a4, 0x3a
2013b6ec lui s0, 0x40000
2013b6f0 c.beqz a5, 0x20
2013b6f2 lui a3, 0x40000
2013b6f6 lw a5, 0x6a8(s5)
2013b6fa c.li a4, 0
2013b6fc addi a3, a3, 0x4f5
2013b700 c.j -0xa8
2013b702 lui s0, 0xf8000
2013b706 c.addi s0, -1
2013b708 c.and a1, s0
2013b70a c.j -0x30
2013b70c lui s0, 0x10000
2013b710 c.or a1, s0
2013b712 lui a5, 0x20201
2013b716 lw a5, 0x73c(a5)
2013b71a c.mv a0, s1
2013b71c c.jalr a5
2013b71e c.li a0, 0
2013b720 c.j -0xbc
2013b722 lui s0, 0xf0000
2013b726 c.addi s0, -1
2013b728 c.and a1, s0
2013b72a c.j -0x18
2013b72c lbu a5, 1(a0)
2013b730 c.li a4, 8
2013b732 bltu a4, a5, 0x38
2013b736 lui a4, 0x20211
2013b73a c.slli a5, 2
2013b73c addi a4, a4, -0x140
2013b740 c.add a5, a4
2013b742 c.lw a5, 0(a5)
2013b744 c.addi a0, 8
2013b746 c.jr a5
2013b748 j -0x1296
2013b74c j -0x117a
2013b750 j -0xf90
2013b754 j -0xd16
2013b758 j -0xb62
2013b75c j -0xace
2013b760 j -0x8ae
2013b764 j -0x85a
2013b768 c.j -0x1a6

fw 0x2013b70c
2013b6ee c.lw s0, 0(s0)
2013b6f0 c.beqz a5, 0x20
2013b6f2 lui a3, 0x40000
2013b6f6 lw a5, 0x6a8(s5)
2013b6fa c.li a4, 0
2013b6fc addi a3, a3, 0x4f5
2013b700 c.j -0xa8
2013b702 lui s0, 0xf8000
2013b706 c.addi s0, -1
2013b708 c.and a1, s0
2013b70a c.j -0x30
2013b70c lui s0, 0x10000
2013b710 c.or a1, s0
2013b712 lui a5, 0x20201
2013b716 lw a5, 0x73c(a5)
2013b71a c.mv a0, s1
2013b71c c.jalr a5
2013b71e c.li a0, 0
2013b720 c.j -0xbc
2013b722 lui s0, 0xf0000
2013b726 c.addi s0, -1
2013b728 c.and a1, s0
2013b72a c.j -0x18
2013b72c lbu a5, 1(a0)
2013b730 c.li a4, 8
2013b732 bltu a4, a5, 0x38
2013b736 lui a4, 0x20211
2013b73a c.slli a5, 2
2013b73c addi a4, a4, -0x140
2013b740 c.add a5, a4
2013b742 c.lw a5, 0(a5)
2013b744 c.addi a0, 8
2013b746 c.jr a5
2013b748 j -0x1296
2013b74c j -0x117a
2013b750 j -0xf90
2013b754 j -0xd16
2013b758 j -0xb62
2013b75c j -0xace
2013b760 j -0x8ae
2013b764 j -0x85a
2013b768 c.j -0x1a6
2013b76a lui a5, 0x20202
2013b76e lw a5, 0x340(a5)
2013b772 c.addi sp, -0x10
2013b774 c.swsp ra, 0xc(sp)
2013b776 c.li a0, 0
2013b778 lui a1, 0x20000
2013b77c c.jalr a5
2013b77e c.lwsp ra, 0xc(sp)
2013b780 c.li a0, 4
2013b782 c.addi sp, 0x10
2013b784 c.jr ra
2013b786 c.addi16sp sp, -0x40
2013b788 c.swsp ra, 0x3c(sp)
2013b78a c.swsp s0, 0x38(sp)
2013b78c c.swsp s1, 0x34(sp)
2013b78e c.swsp s2, 0x30(sp)
2013b790 c.swsp s3, 0x2c(sp)
2013b792 c.swsp s4, 0x28(sp)
2013b794 c.swsp s5, 0x24(sp)
2013b796 c.swsp s6, 0x20(sp)
2013b798 c.swsp s7, 0x1c(sp)
2013b79a c.swsp s8, 0x18(sp)
2013b79c c.swsp s9, 0x14(sp)
2013b79e c.bnez a0, 0x3a
2013b7a0 .byte 0xb7, 0x17

fw 0x2013c66c
2013c64e c.li a0, 0x18
2013c650 c.j -0xd6
2013c652 addi a5, a5, 0x700
2013c656 c.li a0, 0x1a
2013c658 beq s0, a5, -0xde
2013c65c c.lui a5, 9
2013c65e addi a5, a5, -0x800
2013c662 c.li a0, 0
2013c664 bne s0, a5, -0xea
2013c668 c.li a0, 0x1b
2013c66a c.j -0xf0
2013c66c lui a0, 0x10000
2013c670 c.and a0, a4
2013c672 seqz a0, a0
2013c676 c.addi a0, 8
2013c678 c.j -0xfe
2013c67a c.li a0, 0xf
2013c67c c.j -0x102
2013c67e c.lw a5, 0(a0)
2013c680 c.addi sp, -0x10
2013c682 c.swsp s0, 8(sp)
2013c684 c.swsp ra, 0xc(sp)
2013c686 c.mv s0, a1
2013c688 addi a4, a0, 0x18
2013c68c bgez a5, 8
2013c690 addi a4, a0, 0x28
2013c694 c.lw a5, 4(a4)
2013c696 addi a3, a4, 0x28
2013c69a c.sw a4, 4(s0)
2013c69c c.srli a5, 0x14
2013c69e c.andi a5, 0xf
2013c6a0 c.addi a5, 1
2013c6a2 sb a5, 0(s0)
2013c6a6 c.li a2, 1
2013c6a8 c.sw a3, 8(s0)
2013c6aa bne a5, a2, 0xc
2013c6ae c.lwsp ra, 0xc(sp)
2013c6b0 c.lwsp s0, 8(sp)
2013c6b2 c.addi sp, 0x10
2013c6b4 c.jr ra
2013c6b6 addi a4, a4, 0x48
2013c6ba c.sw a4, 0xc(s0)
2013c6bc c.li a4, 2
2013c6be beq a5, a4, -0x10
2013c6c2 lui a5, 0x20202
2013c6c6 lw a5, 0x100(a5)
2013c6ca addi a1, a0, -4
2013c6ce c.mv a0, a1
2013c6d0 c.jalr a5
2013c6d2 lbu a4, 0(s0)
2013c6d6 c.addi a0, 4
2013c6d8 c.addi s0, 0x10
2013c6da c.li a5, 2
2013c6dc bgeu a5, a4, -0x2e
2013c6e0 c.addi a5, 1
2013c6e2 c.sw a0, 0(s0)
2013c6e4 andi a5, a5, 0xff
2013c6e8 addi a0, a0, 0x20
2013c6ec c.addi s0, 4
2013c6ee c.j -0x12
2013c6f0 c.lw a0, 4(a0)
2013c6f2 c.addi16sp sp, -0x60
2013c6f4 c.addi4spn a1, sp, 8
2013c6f6 c.swsp ra, 0x5c(sp)
2013c6f8 c.jal -0x7a
2013c6fa c.addi4spn a0, sp, 8
2013c6fc jal -0x276f0
2013c700 c.addi4spn a0, sp, 8

fw 0x2013cc72
2013cc54 lw t1, 0x6a8(a5)
2013cc58 lbu a7, 1(s0)
2013cc5c lw a6, 8(s0)
2013cc60 lbu a5, 0x14(s0)
2013cc64 lui a3, 0x40000
2013cc68 c.li a4, 3
2013cc6a addi a3, a3, 0x43f
2013cc6e c.li a2, 2
2013cc70 c.li a1, 0
2013cc72 lui a0, 0x10000
2013cc76 c.jalr t1
2013cc78 lui a5, 0x20201
2013cc7c lw a5, 0x12c(a5)
2013cc80 c.jalr a5
2013cc82 c.lw a5, 4(s1)
2013cc84 c.lui a3, 0x10
2013cc86 c.mv s0, a0
2013cc88 c.lw a5, 0x48(a5)
2013cc8a c.li a0, 2
2013cc8c c.li a1, 0
2013cc8e c.lw a4, 0x28(a5)
2013cc90 c.lw a5, 0x10(a4)
2013cc92 c.or a5, a3
2013cc94 c.sw a5, 0x10(a4)
2013cc96 jal -0xf3c6
2013cc9a lui a5, 0x20201
2013cc9e lw a5, 0x130(a5)
2013cca2 c.mv a0, s0
2013cca4 c.jalr a5
2013cca6 c.lwsp ra, 0xc(sp)
2013cca8 c.lwsp s0, 8(sp)
2013ccaa c.lwsp s1, 4(sp)
2013ccac c.li a0, 1
2013ccae c.addi sp, 0x10
2013ccb0 c.jr ra
2013ccb2 c.andi a5, 2
2013ccb4 lbu a2, 0x14(s0)
2013ccb8 c.beqz a5, 0xa
2013ccba c.mv a1, a2
2013ccbc jal -0x1ea84
2013ccc0 c.j -0x1a
2013ccc2 c.lw a3, 8(s0)
2013ccc4 lbu a1, 1(s0)
2013ccc8 jal -0x1ec66
2013cccc c.j -0x26
2013ccce lui a4, 0x20212
2013ccd2 addi a5, a4, 0x754
2013ccd6 slli a3, a0, 2
2013ccda c.addi16sp sp, -0x30
2013ccdc c.add a5, a3
2013ccde c.swsp s0, 0x28(sp)
2013cce0 c.lw s0, 0x44(a5)
2013cce2 c.swsp ra, 0x2c(sp)
2013cce4 c.swsp s1, 0x24(sp)
2013cce6 c.swsp s2, 0x20(sp)
2013cce8 c.swsp s3, 0x1c(sp)
2013ccea c.swsp s4, 0x18(sp)
2013ccec c.swsp s5, 0x14(sp)
2013ccee c.swsp s6, 0x10(sp)
2013ccf0 c.swsp s7, 0xc(sp)
2013ccf2 lbu a5, 0(s0)
2013ccf6 c.beqz a5, 0x38
2013ccf8 lbu a5, 0xd0(s0)
2013ccfc c.beqz a5, 0x32
2013ccfe lui s4, 0x20202
2013cd02 lw a5, -0x50(s4)
2013cd06 c.mv s1, a0

fw 0x2013d93c
2013d91e c.lwsp ra, 0x90(sp)
2013d920 lui s3, 0xf2080
2013d924 addi a1, s3, 0x11
2013d928 c.li a0, 0x18
2013d92a c.jalr a5
2013d92c c.mv s0, a0
2013d92e c.bnez a0, 0x44
2013d930 lui a5, 0x20201
2013d934 lw a5, 0x6a8(a5)
2013d938 lui a3, 0x40000
2013d93c lui a0, 0x10000
2013d940 c.li a4, 0
2013d942 addi a3, a3, 0x373
2013d946 c.li a2, 2
2013d948 c.li a1, 0
2013d94a c.jalr a5
2013d94c c.li a5, 6
2013d94e sb a5, 4(sp)
2013d952 lui a5, 0x20211
2013d956 addi a5, a5, 0x790
2013d95a c.swsp a5, 8(sp)
2013d95c c.lui a5, 1
2013d95e addi a5, a5, -0x376
2013d962 c.swsp a5, 0xc(sp)
2013d964 lui a5, 0x20202
2013d968 lw a5, 0x348(a5)
2013d96c c.addi4spn a0, sp, 4
2013d96e c.jalr a5
2013d970 c.j 0x6a
2013d972 c.li a2, 0x18
2013d974 c.li a1, 0
2013d976 jal 0x6df0
2013d97a lw a5, 0x40c(s4)
2013d97e addi a1, s3, 0x11
2013d982 addi a0, zero, 0x20
2013d986 c.jalr a5
2013d988 c.sw a0, 8(s0)
2013d98a c.bnez a0, 0x62
2013d98c lui a5, 0x20201
2013d990 lw a5, 0x408(a5)
2013d994 c.mv a0, s0
2013d996 c.li s0, 0
2013d998 c.jalr a5
2013d99a lui a5, 0x20201
2013d99e lw a5, 0x6a8(a5)
2013d9a2 lui a3, 0x40000
2013d9a6 c.li a4, 0
2013d9a8 addi a3, a3, 0x373
2013d9ac c.li a2, 2
2013d9ae lui a0, 0x10000
2013d9b2 c.li a1, 0
2013d9b4 c.jalr a5
2013d9b6 c.li a5, 6
2013d9b8 sb a5, 4(sp)
2013d9bc lui a5, 0x20211
2013d9c0 addi a5, a5, 0x790
2013d9c4 c.swsp a5, 8(sp)
2013d9c6 c.lui a5, 1
2013d9c8 addi a5, a5, -0x36c
2013d9cc c.swsp a5, 0xc(sp)
2013d9ce lui a5, 0x20202

fw 0x2013d9ae
2013d990 lw a5, 0x408(a5)
2013d994 c.mv a0, s0
2013d996 c.li s0, 0
2013d998 c.jalr a5
2013d99a lui a5, 0x20201
2013d99e lw a5, 0x6a8(a5)
2013d9a2 lui a3, 0x40000
2013d9a6 c.li a4, 0
2013d9a8 addi a3, a3, 0x373
2013d9ac c.li a2, 2
2013d9ae lui a0, 0x10000
2013d9b2 c.li a1, 0
2013d9b4 c.jalr a5
2013d9b6 c.li a5, 6
2013d9b8 sb a5, 4(sp)
2013d9bc lui a5, 0x20211
2013d9c0 addi a5, a5, 0x790
2013d9c4 c.swsp a5, 8(sp)
2013d9c6 c.lui a5, 1
2013d9c8 addi a5, a5, -0x36c
2013d9cc c.swsp a5, 0xc(sp)
2013d9ce lui a5, 0x20202
2013d9d2 lw a5, 0x348(a5)
2013d9d6 c.addi4spn a0, sp, 4
2013d9d8 c.jalr a5
2013d9da c.lwsp ra, 0x4c(sp)
2013d9dc c.mv a0, s0
2013d9de c.lwsp s0, 0x48(sp)
2013d9e0 c.lwsp s1, 0x44(sp)
2013d9e2 c.lwsp s2, 0x40(sp)
2013d9e4 c.lwsp s3, 0x3c(sp)
2013d9e6 c.lwsp s4, 0x38(sp)
2013d9e8 c.addi16sp sp, 0x50
2013d9ea c.jr ra
2013d9ec c.mv a1, s2
2013d9ee addi a2, zero, 0x20
2013d9f2 jal 0x6d6a
2013d9f6 c.lw a5, 0x14(s0)
2013d9f8 lui a4, 0xff800
2013d9fc c.addi a4, -1
2013d9fe c.and a5, a4
2013da00 c.sw a5, 0x14(s0)
2013da02 addi a5, s0, 0xc
2013da06 c.sw a5, 0xc(s0)
2013da08 c.sw a5, 0x10(s0)
2013da0a lui a5, 0x20201
2013da0e lw a5, 0x12c(a5)
2013da12 c.jalr a5
2013da14 lui a5, 0x20202
2013da18 lw a5, 0x240(a5)
2013da1c c.mv s2, a0
2013da1e addi a1, s1, 8
2013da22 c.mv a0, s0
2013da24 c.jalr a5
2013da26 lbu a5, 6(s1)
2013da2a c.mv a0, s2
2013da2c c.addi a5, 1
2013da2e sb a5, 6(s1)
2013da32 lbu a5, 5(s1)
2013da36 c.addi a5, 1
2013da38 sb a5, 5(s1)
2013da3c lui a5, 0x20201
2013da40 lw a5, 0x130(a5)

fw 0x2013dac6
2013daa8 bltu a4, s4, 0x66
2013daac lui a5, 0x20201
2013dab0 lw a7, 0x6a8(a5)
2013dab4 lui a3, 0x40000
2013dab8 addi a6, zero, 0x20
2013dabc c.mv a5, s4
2013dabe c.li a4, 2
2013dac0 addi a3, a3, 0x371
2013dac4 c.li a2, 2
2013dac6 lui a0, 0x10000
2013daca c.li a1, 0
2013dacc c.jalr a7
2013dace c.j 0x16
2013dad0 add a3, s2, a4
2013dad4 lbu a3, 0x40(a3)
2013dad8 c.slli a3, 2
2013dada c.add a3, a2
2013dadc c.lw a3, 0x44(a3)
2013dade lbu a3, 0(a3)
2013dae2 c.beqz a3, 0x24
2013dae4 ori a0, s0, 4
2013dae8 c.lwsp ra, 0x4c(sp)
2013daea c.lwsp s0, 0x48(sp)
2013daec c.lwsp s1, 0x44(sp)
2013daee c.lwsp s2, 0x40(sp)
2013daf0 c.lwsp s3, 0x3c(sp)
2013daf2 c.lwsp s4, 0x38(sp)
2013daf4 c.lwsp s5, 0x34(sp)
2013daf6 c.lwsp s6, 0x30(sp)
2013daf8 c.lwsp s7, 0x2c(sp)
2013dafa c.lwsp s8, 0x28(sp)
2013dafc c.lwsp s9, 0x24(sp)
2013dafe c.lwsp s10, 0x20(sp)
2013db00 c.lwsp s11, 0x1c(sp)
2013db02 c.addi16sp sp, 0x50
2013db04 c.jr ra
2013db06 c.addi a4, 1
2013db08 andi a4, a4, 0xff
2013db0c c.j -0x7a
2013db0e lbu s6, 0(s3)
2013db12 bnez s6, 0x22
2013db16 lui a5, 0x20201
2013db1a lw a5, 0x6a8(a5)
2013db1e lui a3, 0x40000
2013db22 c.li a4, 0
2013db24 addi a3, a3, 0x372
2013db28 c.li a2, 2
2013db2a lui a0, 0x10000
2013db2e c.li a1, 0
2013db30 c.jalr a5
2013db32 c.j -0x4e
2013db34 c.srli a5, 0x11
2013db36 c.andi a5, 1
2013db38 c.bnez a5, 6
2013db3a c.mv a0, s2
2013db3c c.jal -0x478
2013db3e lui s7, 0xf2080
2013db42 addi s8, s2, 0x4c
2013db46 c.li s11, 0
2013db48 lui s9, 0x20201
2013db4c c.addi s7, 0xa
2013db4e c.li s10, -1
2013db50 lw a4, 0(s8)
2013db54 c.bnez a4, 0x6c
2013db56 lw a4, 0x40c(s9)
2013db5a c.mv a1, s7

fw 0x2013db2a
2013db0c c.j -0x7a
2013db0e lbu s6, 0(s3)
2013db12 bnez s6, 0x22
2013db16 lui a5, 0x20201
2013db1a lw a5, 0x6a8(a5)
2013db1e lui a3, 0x40000
2013db22 c.li a4, 0
2013db24 addi a3, a3, 0x372
2013db28 c.li a2, 2
2013db2a lui a0, 0x10000
2013db2e c.li a1, 0
2013db30 c.jalr a5
2013db32 c.j -0x4e
2013db34 c.srli a5, 0x11
2013db36 c.andi a5, 1
2013db38 c.bnez a5, 6
2013db3a c.mv a0, s2
2013db3c c.jal -0x478
2013db3e lui s7, 0xf2080
2013db42 addi s8, s2, 0x4c
2013db46 c.li s11, 0
2013db48 lui s9, 0x20201
2013db4c c.addi s7, 0xa
2013db4e c.li s10, -1
2013db50 lw a4, 0(s8)
2013db54 c.bnez a4, 0x6c
2013db56 lw a4, 0x40c(s9)
2013db5a c.mv a1, s7
2013db5c c.li a0, 0x14
2013db5e c.jalr a4
2013db60 c.mv s1, a0
2013db62 c.bnez a0, 0x42
2013db64 lui a5, 0x20201
2013db68 lw a5, 0x6a8(a5)
2013db6c lui a3, 0x40000
2013db70 c.li a4, 0
2013db72 addi a3, a3, 0x373
2013db76 c.li a2, 2
2013db78 lui a0, 0x10000
2013db7c c.li a1, 0
2013db7e c.jalr a5
2013db80 c.li a5, 6
2013db82 sb a5, 0(sp)
2013db86 lui a5, 0x20211
2013db8a addi a5, a5, 0x790
2013db8e c.swsp a5, 4(sp)
2013db90 addi a5, zero, 0x1fa
2013db94 c.swsp a5, 8(sp)
2013db96 lui a5, 0x20202
2013db9a lw a5, 0x348(a5)
2013db9e c.mv a0, sp
2013dba0 c.jalr a5
2013dba2 c.j -0xbe
2013dba4 c.li a2, 0x14
2013dba6 c.li a1, 0
2013dba8 jal 0x6bbe
2013dbac addi a4, s1, 8
2013dbb0 sw s11, 0(s1)
2013dbb4 sb s10, 4(s1)
2013dbb8 c.sw a4, 8(s1)
2013dbba c.sw a4, 0xc(s1)
2013dbbc sw s1, 0(s8)

fw 0x2013db78
2013db5a c.mv a1, s7
2013db5c c.li a0, 0x14
2013db5e c.jalr a4
2013db60 c.mv s1, a0
2013db62 c.bnez a0, 0x42
2013db64 lui a5, 0x20201
2013db68 lw a5, 0x6a8(a5)
2013db6c lui a3, 0x40000
2013db70 c.li a4, 0
2013db72 addi a3, a3, 0x373
2013db76 c.li a2, 2
2013db78 lui a0, 0x10000
2013db7c c.li a1, 0
2013db7e c.jalr a5
2013db80 c.li a5, 6
2013db82 sb a5, 0(sp)
2013db86 lui a5, 0x20211
2013db8a addi a5, a5, 0x790
2013db8e c.swsp a5, 4(sp)
2013db90 addi a5, zero, 0x1fa
2013db94 c.swsp a5, 8(sp)
2013db96 lui a5, 0x20202
2013db9a lw a5, 0x348(a5)
2013db9e c.mv a0, sp
2013dba0 c.jalr a5
2013dba2 c.j -0xbe
2013dba4 c.li a2, 0x14
2013dba6 c.li a1, 0
2013dba8 jal 0x6bbe
2013dbac addi a4, s1, 8
2013dbb0 sw s11, 0(s1)
2013dbb4 sb s10, 4(s1)
2013dbb8 c.sw a4, 8(s1)
2013dbba c.sw a4, 0xc(s1)
2013dbbc sw s1, 0(s8)
2013dbc0 c.addi s11, 1
2013dbc2 c.li a5, 6
2013dbc4 c.addi s8, 4
2013dbc6 bne s11, a5, -0x76
2013dbca c.addi s3, 4
2013dbcc lui s7, 0x80
2013dbd0 c.li s8, 1
2013dbd2 c.li s9, 2
2013dbd4 lui s10, 0x100
2013dbd8 c.li s11, 4
2013dbda lw s1, 4(s3)
2013dbde and a5, s1, s7
2013dbe2 c.bnez a5, 0x6a
2013dbe4 srli a5, s1, 3
2013dbe8 c.andi a5, 3
2013dbea beq a5, s8, 0x10
2013dbee beq a5, s9, 0x52
2013dbf2 bnez a5, -0x10e
2013dbf6 c.li s1, 1
2013dbf8 c.j 0xc
2013dbfa andi s1, s1, 0x20
2013dbfe snez s1, s1
2013dc02 c.addi s1, 2
2013dc04 lbu a5, 7(s3)
2013dc08 c.bnez a5, 6
2013dc0a sb s11, 7(s3)

fw 0x2013dd5e
2013dd40 .byte 0xc7, 0x40
2013dd42 lui a1, 0xf2080
2013dd46 c.addi a1, 0x12
2013dd48 addi a0, zero, 0x30
2013dd4c c.jalr a5
2013dd4e c.mv s0, a0
2013dd50 c.bnez a0, 0x50
2013dd52 lui a5, 0x20201
2013dd56 lw a5, 0x6a8(a5)
2013dd5a lui a3, 0x40000
2013dd5e lui a0, 0x10000
2013dd62 c.li a4, 0
2013dd64 addi a3, a3, 0x373
2013dd68 c.li a2, 2
2013dd6a c.li a1, 0
2013dd6c c.jalr a5
2013dd6e c.li a5, 6
2013dd70 sb a5, 0(sp)
2013dd74 lui a5, 0x20211
2013dd78 addi a5, a5, 0x790
2013dd7c c.swsp a5, 4(sp)
2013dd7e c.lui a5, 1
2013dd80 addi a5, a5, -0x31b
2013dd84 c.swsp a5, 8(sp)
2013dd86 lui a5, 0x20202
2013dd8a lw a5, 0x348(a5)
2013dd8e c.mv a0, sp
2013dd90 c.jalr a5
2013dd92 c.lwsp ra, 0x1c(sp)
2013dd94 c.mv a0, s0
2013dd96 c.lwsp s0, 0x18(sp)
2013dd98 c.lwsp s1, 0x14(sp)
2013dd9a c.lwsp s2, 0x10(sp)
2013dd9c c.addi16sp sp, 0x20
2013dd9e c.jr ra
2013dda0 c.mv a1, s1
2013dda2 addi a2, zero, 0x30
2013dda6 jal 0x69b6
2013ddaa lui a5, 0x20201
2013ddae lw a5, 0x12c(a5)
2013ddb2 c.jalr a5
2013ddb4 lui a5, 0x20202
2013ddb8 lw a5, 0x240(a5)
2013ddbc c.mv s1, a0
2013ddbe sb zero, 0x2d(s0)
2013ddc2 c.mv a0, s0
2013ddc4 addi a1, s2, 0xc
2013ddc8 c.jalr a5
2013ddca lui a5, 0x20201
2013ddce lw a5, 0x130(a5)
2013ddd2 c.mv a0, s1
2013ddd4 c.j -0x44
2013ddd6 c.addi16sp sp, -0x40
2013ddd8 c.swsp s4, 0x28(sp)
2013ddda lui s4, 0x20201
2013ddde c.swsp s1, 0x34(sp)
2013dde0 c.mv s1, a5
2013dde2 lw a5, 0x12c(s4)
2013dde6 c.swsp s0, 0x38(sp)
2013dde8 c.swsp s2, 0x30(sp)
2013ddea c.swsp s3, 0x2c(sp)
2013ddec c.swsp s5, 0x24(sp)
2013ddee c.mv s3, a0
2013ddf0 c.swsp s7, 0x1c(sp)
2013ddf2 c.swsp s8, 0x18(sp)

fw 0x2013de3c
2013de1e lw a5, 0x40c(a5)
2013de22 lui a1, 0xf2080
2013de26 c.addi a1, 0x13
2013de28 c.li a0, 0x14
2013de2a c.jalr a5
2013de2c c.mv s0, a0
2013de2e c.bnez a0, 0x7e
2013de30 lui a5, 0x20201
2013de34 lw a5, 0x6a8(a5)
2013de38 lui a3, 0x40000
2013de3c lui a0, 0x10000
2013de40 c.li a4, 0
2013de42 addi a3, a3, 0x373
2013de46 c.li a2, 2
2013de48 c.li a1, 0
2013de4a c.jalr a5
2013de4c c.li a5, 6
2013de4e sb a5, 0(sp)
2013de52 lui a5, 0x20211
2013de56 addi a5, a5, 0x790
2013de5a c.swsp a5, 4(sp)
2013de5c c.lui a5, 1
2013de5e addi a5, a5, -0x2f0
2013de62 c.swsp a5, 8(sp)
2013de64 lui a5, 0x20202
2013de68 lw a5, 0x348(a5)
2013de6c c.mv a0, sp
2013de6e c.j 0x36
2013de70 lhu a5, 0x10(s0)
2013de74 bne a5, s9, 0x34
2013de78 lbu a5, 0xb(s0)
2013de7c c.andi a5, 3
2013de7e bne a5, s2, 0x2a
2013de82 lbu a5, 8(s0)
2013de86 bne a5, s8, 0x22
2013de8a lbu a5, 0xf(s0)
2013de8e bne a5, s5, 0x1a
2013de92 c.lw a5, 0xc(s0)
2013de94 c.srli a5, 0x14
2013de96 c.andi a5, 7
2013de98 bne a5, s1, 0x10
2013de9c lui a5, 0x20201
2013dea0 lw a5, 0x130(a5)
2013dea4 c.jalr a5
2013dea6 c.j 0x66
2013dea8 c.lw s0, 0(s0)
2013deaa c.j -0x9e
2013deac c.li a2, 0x14
2013deae c.li a1, 0
2013deb0 jal 0x68b6
2013deb4 sb s8, 8(s0)
2013deb8 c.lw a5, 8(s0)
2013deba lui a4, 0xfd000
2013debe c.addi a4, -1
2013dec0 andi s2, s2, 3
2013dec4 c.and a5, a4
2013dec6 c.slli s2, 0x18
2013dec8 or s2, a5, s2
2013decc c.lw a5, 0xc(s0)
2013dece lui a4, 0xff900

fw 0x2013f010
2013eff2 lw t1, 0x6a8(a5)
2013eff6 lw a5, 0x14(s2)
2013effa lui a3, 0x40000
2013effe c.swsp s1, 0(sp)
2013f000 c.srli a5, 0x1b
2013f002 c.mv a7, s5
2013f004 c.mv a6, s3
2013f006 c.andi a5, 3
2013f008 c.li a4, 4
2013f00a addi a3, a3, 0x402
2013f00e c.li a2, 2
2013f010 lui a0, 0x10000
2013f014 c.li a1, 0
2013f016 c.jalr t1
2013f018 c.lwsp ra, 0x5c(sp)
2013f01a c.lwsp s0, 0x58(sp)
2013f01c c.lwsp s1, 0x54(sp)
2013f01e c.lwsp s2, 0x50(sp)
2013f020 c.lwsp s3, 0x4c(sp)
2013f022 c.lwsp s5, 0x44(sp)
2013f024 c.lwsp s6, 0x40(sp)
2013f026 c.mv a0, s4
2013f028 c.lwsp s4, 0x48(sp)
2013f02a c.addi16sp sp, 0x60
2013f02c c.jr ra
2013f02e c.beqz a4, 0xc
2013f030 lui a5, 0x20151
2013f034 addi a5, a5, 0x2e4
2013f038 c.j -0xc8
2013f03a lui a5, 0x20151
2013f03e addi a5, a5, 0x37c
2013f042 c.j -0xd2
2013f044 c.li a5, 2
2013f046 bne a1, a5, 0x20
2013f04a c.addi a2, -1
2013f04c c.srai a2, 2
2013f04e srli a5, a2, 3
2013f052 c.andi a5, 0x1c
2013f054 c.add a5, a0
2013f056 c.lw a5, 0x2c(a5)
2013f058 c.li a0, 1
2013f05a sll a0, a0, a2
2013f05e c.and a0, a5
2013f060 snez a0, a0
2013f064 c.jr ra
2013f066 c.li a0, 0
2013f068 c.jr ra
2013f06a c.addi16sp sp, -0xc0
2013f06c c.swsp s3, 0xac(sp)
2013f06e c.swsp s5, 0xa4(sp)
2013f070 c.swsp s6, 0xa0(sp)
2013f072 c.mv s3, a1
2013f074 c.mv s6, a0
2013f076 c.li a1, 0
2013f078 c.mv s5, a2
2013f07a c.addi4spn a0, sp, 0x30
2013f07c addi a2, zero, 0x20
2013f080 c.swsp ra, 0xbc(sp)
2013f082 c.swsp s0, 0xb8(sp)
2013f084 c.swsp s1, 0xb4(sp)
2013f086 c.swsp s2, 0xb0(sp)
2013f088 c.swsp s4, 0xa8(sp)
2013f08a c.swsp s7, 0x9c(sp)
2013f08c c.swsp s8, 0x98(sp)
2013f08e c.swsp s9, 0x94(sp)
2013f090 c.swsp s10, 0x90(sp)
2013f092 c.swsp s11, 0x8c(sp)
2013f094 c.swsp zero, 0xc(sp)
2013f096 c.swsp zero, 0x10(sp)
2013f098 jal 0x56ce
2013f09c addi a2, zero, 0x30
2013f0a0 c.li a1, 0
2013f0a2 c.addi4spn a0, sp, 0x50
2013f0a4 .byte 0xef, 0x50

fw 0x2013f6b0
2013f692 lw a0, 0xd4(s2)
2013f696 c.bnez a0, 0x30
2013f698 lbu a6, 0(s0)
2013f69c lui a5, 0x20201
2013f6a0 lw a7, 0x6a8(a5)
2013f6a4 c.li a5, 0
2013f6a6 lui a3, 0x40000
2013f6aa c.li a4, 2
2013f6ac addi a3, a3, 0x36d
2013f6b0 lui a0, 0x10000
2013f6b4 c.li a2, 2
2013f6b6 c.li a1, 0
2013f6b8 c.jalr a7
2013f6ba lw a5, 0x130(s5)
2013f6be c.mv a0, s3
2013f6c0 c.jalr a5
2013f6c2 c.li a0, 4
2013f6c4 c.j 0xb0
2013f6c6 c.li a2, 0
2013f6c8 c.addi4spn a1, sp, 4
2013f6ca sb s1, 0x18(sp)
2013f6ce c.jal -0x1da
2013f6d0 lbu a5, 4(sp)
2013f6d4 lbu a6, 0(s0)
2013f6d8 bne a5, a6, 0x10
2013f6dc c.lw a4, 0(s0)
2013f6de c.lwsp a3, 0xc(sp)
2013f6e0 c.srli a4, 8
2013f6e2 c.andi a4, 3
2013f6e4 beq a3, a4, 0xe
2013f6e8 lui a4, 0x20201
2013f6ec lw a7, 0x6a8(a4)
2013f6f0 c.j -0x4a
2013f6f2 lbu a6, 0x100(s2)
2013f6f6 addi a5, zero, 0xff
2013f6fa beq a6, a5, 0x1a
2013f6fe lui a5, 0x20201
2013f702 lui a3, 0x40000
2013f706 lw a7, 0x6a8(a5)
2013f70a c.li a4, 2
2013f70c c.mv a5, s1
2013f70e addi a3, a3, 0x40b
2013f712 c.j -0x62
2013f714 lui s0, 0x20202
2013f718 lw a5, -0x84(s0)
2013f71c lui a2, 0x20141
2013f720 sw s4, 0x114(s2)
2013f724 addi a2, a2, 0x48
2013f728 c.li a1, 5
2013f72a c.mv a0, s1
2013f72c c.jalr a5
2013f72e lw a5, -0x84(s0)
2013f732 lui s0, 0x20143
2013f736 addi a2, s0, -0x626
2013f73a c.li a1, 5
2013f73c c.mv a0, s1
2013f73e c.jalr a5
2013f740 lui a5, 0x20202
2013f744 .byte 0x03, 0xa9

fw 0x2013f7ec
2013f7ce c.addi4spn s1, sp, 8
2013f7d0 c.andi a5, 3
2013f7d2 bgeu t4, a5, 0x24
2013f7d6 lui a4, 0x20201
2013f7da lw a7, 0x6a8(a4)
2013f7de c.li a6, 2
2013f7e0 lui a3, 0x40000
2013f7e4 c.li a4, 2
2013f7e6 addi a3, a3, 0x36b
2013f7ea c.li a2, 2
2013f7ec lui a0, 0x10000
2013f7f0 c.li a1, 0
2013f7f2 c.jalr a7
2013f7f4 c.j -0x132
2013f7f6 slli a4, a5, 2
2013f7fa c.add a4, a7
2013f7fc c.lw a4, 0x44(a4)
2013f7fe lbu a3, 0(a4)
2013f802 c.beqz a3, 0x26
2013f804 lbu a3, 0xd0(a4)
2013f808 c.beqz a3, 0x20
2013f80a lbu t0, 0x19(a4)
2013f80e addi a1, a4, 0x6c
2013f812 c.li a2, 0
2013f814 bne t0, a2, 0x32
2013f818 lbu a5, 3(s0)
2013f81c c.addi a6, 1
2013f81e andi a6, a6, 0xff
2013f822 c.slli a5, 2
2013f824 c.add s1, a5
2013f826 c.j -0x68
2013f828 lui a4, 0x20201
2013f82c lw a6, 0x6a8(a4)
2013f830 lui a3, 0x40000
2013f834 c.li a4, 1
2013f836 addi a3, a3, 0x36c
2013f83a c.li a2, 2
2013f83c lui a0, 0x10000
2013f840 c.li a1, 0
2013f842 c.jalr a6
2013f844 c.j -0x182
2013f846 c.lw a5, 0(a1)
2013f848 c.beqz a5, 0x54
2013f84a lhu a3, 0(a5)
2013f84e lhu a4, 0(s1)
2013f852 bne a3, a4, 0x4a
2013f856 c.lw a4, 0(s1)
2013f858 c.lw a3, 0(a5)
2013f85a c.xor a3, a4
2013f85c and a4, a3, t5
2013f860 c.bnez a4, 0x3c
2013f862 lbu t2, 6(a5)
2013f866 lbu a4, 6(s1)
2013f86a bne t2, a4, 0x32
2013f86e c.lw a4, 4(a5)
2013f870 lw t2, 4(s1)
2013f874 and a3, a3, t6
2013f878 xor a4, a4, t2
2013f87c and a4, a4, t1
2013f880 c.or a4, a3

fw 0x2013f83c
2013f81e andi a6, a6, 0xff
2013f822 c.slli a5, 2
2013f824 c.add s1, a5
2013f826 c.j -0x68
2013f828 lui a4, 0x20201
2013f82c lw a6, 0x6a8(a4)
2013f830 lui a3, 0x40000
2013f834 c.li a4, 1
2013f836 addi a3, a3, 0x36c
2013f83a c.li a2, 2
2013f83c lui a0, 0x10000
2013f840 c.li a1, 0
2013f842 c.jalr a6
2013f844 c.j -0x182
2013f846 c.lw a5, 0(a1)
2013f848 c.beqz a5, 0x54
2013f84a lhu a3, 0(a5)
2013f84e lhu a4, 0(s1)
2013f852 bne a3, a4, 0x4a
2013f856 c.lw a4, 0(s1)
2013f858 c.lw a3, 0(a5)
2013f85a c.xor a3, a4
2013f85c and a4, a3, t5
2013f860 c.bnez a4, 0x3c
2013f862 lbu t2, 6(a5)
2013f866 lbu a4, 6(s1)
2013f86a bne t2, a4, 0x32
2013f86e c.lw a4, 4(a5)
2013f870 lw t2, 4(s1)
2013f874 and a3, a3, t6
2013f878 xor a4, a4, t2
2013f87c and a4, a4, t1
2013f880 c.or a4, a3
2013f882 c.bnez a4, 0x1a
2013f884 lbu a4, 3(s1)
2013f888 sb a4, 3(a5)
2013f88c lhu a4, 0x10(s1)
2013f890 sh a4, 0x10(a5)
2013f894 lbu a4, 9(s1)
2013f898 sb a4, 9(a5)
2013f89c c.addi a2, 1
2013f89e andi a2, a2, 0xff
2013f8a2 c.addi a1, 0x18
2013f8a4 c.j -0x90
2013f8a6 lbu a3, 3(s0)
2013f8aa c.li a5, 4
2013f8ac c.li a0, 4
2013f8ae bgeu a5, a3, -0x13a
2013f8b2 lhu s1, 6(s0)
2013f8b6 c.andi s1, 3
2013f8b8 bgeu a4, s1, 0x12
2013f8bc lui a5, 0x20201
2013f8c0 lw a7, 0x6a8(a5)
2013f8c4 c.li a6, 2
2013f8c6 c.mv a5, s1
2013f8c8 c.j -0xe8
2013f8ca lui a5, 0x20212
2013f8ce addi a4, a5, 0x754

fw 0x201400ae
20140090 c.jal -0x63c
20140092 lui a5, 0x20201
20140096 lw t1, 0x6a8(a5)
2014009a lbu a7, 3(s0)
2014009e lui a3, 0x40000
201400a2 c.mv a6, s6
201400a4 c.mv a5, s3
201400a6 c.li a4, 3
201400a8 addi a3, a3, 0x3f5
201400ac c.li a2, 2
201400ae lui a0, 0x10000
201400b2 c.li a1, 0
201400b4 c.jalr t1
201400b6 c.j -0x132
201400b8 lw a5, 0x12c(s5)
201400bc c.jalr a5
201400be lw a5, 4(s4)
201400c2 addi a3, zero, 0xff
201400c6 c.mv s5, a0
201400c8 c.lw a5, 0x48(a5)
201400ca c.lw a4, 0x28(a5)
201400cc lbu a5, 5(a4)
201400d0 beq a5, a3, -0x86
201400d4 c.addi a5, 1
201400d6 sb a5, 5(a4)
201400da c.j -0x90
201400dc lw a5, 0x12c(s5)
201400e0 c.jalr a5
201400e2 lw a5, 4(s4)
201400e6 addi a3, zero, 0xff
201400ea c.mv s5, a0
201400ec c.lw a5, 0x48(a5)
201400ee c.lw a4, 0x28(a5)
201400f0 lbu a5, 6(a4)
201400f4 beq a5, a3, -0xaa
201400f8 c.addi a5, 1
201400fa sb a5, 6(a4)
201400fe c.j -0xb4
20140100 c.lwsp ra, 0x2c(sp)
20140102 c.lwsp s0, 0x28(sp)
20140104 c.lwsp s1, 0x24(sp)
20140106 c.lwsp s2, 0x20(sp)
20140108 c.lwsp s3, 0x1c(sp)
2014010a c.lwsp s4, 0x18(sp)
2014010c c.lwsp s5, 0x14(sp)
2014010e c.lwsp s6, 0x10(sp)
20140110 c.lwsp s7, 0xc(sp)
20140112 c.lwsp s8, 8(sp)
20140114 c.addi16sp sp, 0x30
20140116 c.jr ra
20140118 c.addi16sp sp, -0x30
2014011a c.swsp s1, 0x24(sp)
2014011c lw s1, 0xd4(a0)
20140120 c.swsp ra, 0x2c(sp)
20140122 c.swsp s0, 0x28(sp)
20140124 c.swsp s2, 0x20(sp)
20140126 c.swsp s3, 0x1c(sp)
20140128 c.swsp s4, 0x18(sp)
2014012a c.swsp s5, 0x14(sp)
2014012c c.swsp s6, 0x10(sp)
2014012e c.swsp s7, 0xc(sp)
20140130 c.swsp s8, 8(sp)
20140132 c.swsp s9, 4(sp)
20140134 beqz s1, 0x2ae
20140138 c.lw a5, 0x14(s1)
2014013a lui s9, 0x800
2014013e c.mv s0, a0
20140140 and a0, a5, s9

fw 0x201405f6
201405d8 lbu a4, 7(s3)
201405dc lw a7, 0x6a8(s10)
201405e0 sw a5, 0(s3)
201405e4 lhu a5, 0x1a(sp)
201405e8 c.andi a4, -8
201405ea lui a3, 0x40000
201405ee sh a5, 4(s3)
201405f2 lbu a5, 8(s0)
201405f6 lui a0, 0x10000
201405fa c.li a1, 0
201405fc sra a5, a5, s4
20140600 c.andi a5, 1
20140602 c.slli a5, 1
20140604 c.or a5, a4
20140606 sb a5, 7(s3)
2014060a lbu a6, 0x42(s1)
2014060e c.mv a5, s2
20140610 sb s5, 8(s3)
20140614 sb a6, 6(s3)
20140618 c.li a4, 2
2014061a addi a3, a3, 0x403
2014061e c.li a2, 2
20140620 c.jalr a7
20140622 c.mv a1, s3
20140624 c.mv a0, s1
20140626 jal -0x1742
2014062a c.bnez a0, -0xd2
2014062c lbu a5, 0x119(s1)
20140630 c.addi a5, 1
20140632 sb a5, 0x119(s1)
20140636 c.j -0xde
20140638 sb zero, 0x42(s1)
2014063c c.j -0x9a
2014063e c.addi sp, -0x20
20140640 c.swsp s1, 0x14(sp)
20140642 lw s1, 0xd4(a0)
20140646 c.swsp s0, 0x18(sp)
20140648 c.swsp ra, 0x1c(sp)
2014064a c.swsp s2, 0x10(sp)
2014064c c.swsp s3, 0xc(sp)
2014064e c.swsp s4, 8(sp)
20140650 c.swsp s5, 4(sp)
20140652 c.swsp s6, 0(sp)
20140654 c.lw s0, 0x14(a0)
20140656 c.beqz s1, 0x1c
20140658 c.lw a5, 0x14(s1)
2014065a lui s5, 0x800
2014065e c.srli s0, 0x1b
20140660 and a5, s5, a5
20140664 c.mv s2, a0
20140666 c.mv s4, a1
20140668 c.mv s3, a2
2014066a c.andi s0, 3
2014066c c.bnez a5, 0x1a
2014066e c.lw s1, 8(s1)
20140670 c.bnez s1, 0x9c
20140672 c.lwsp ra, 0x1c(sp)
20140674 c.lwsp s0, 0x18(sp)
20140676 c.lwsp s1, 0x14(sp)
20140678 c.lwsp s2, 0x10(sp)
2014067a c.lwsp s3, 0xc(sp)
2014067c c.lwsp s4, 8(sp)
2014067e c.lwsp s5, 4(sp)
20140680 c.lwsp s6, 0(sp)
20140682 c.addi16sp sp, 0x20
20140684 c.jr ra
20140686 lw s6, 8(s1)
2014068a .byte 0xe3, 0x04

fw 0x20140862
20140844 c.jalr a5
20140846 lui a5, 0x20201
2014084a lw a7, 0x6a8(a5)
2014084e c.lui a6, 1
20140850 addi a6, a6, 0x1af
20140854 lui a3, 0x40000
20140858 c.mv a5, s5
2014085a c.li a4, 2
2014085c addi a3, a3, 0x401
20140860 c.li a2, 2
20140862 lui a0, 0x10000
20140866 c.li a1, 0
20140868 c.jalr a7
2014086a lw a4, 4(s6)
2014086e lbu a6, 0x42(s1)
20140872 c.mv a5, s5
20140874 c.srli a4, 0xb
20140876 c.andi a4, 1
20140878 c.li a7, 0
2014087a c.mv a2, s8
2014087c c.mv a3, s7
2014087e c.li a1, 2
20140880 c.li a0, 2
20140882 jal -0xe2e
20140886 lbu a5, 0x119(s1)
2014088a addi a4, zero, 0xff
2014088e beq a5, a4, 0x1a2
20140892 c.addi a5, 1
20140894 sb a5, 0x119(s1)
20140898 c.j 0x198
2014089a lbu s2, 0x24(a0)
2014089e c.j -0xfc
201408a0 lbu s2, 0x25(a0)
201408a4 c.j -0x102
201408a6 sb zero, 0x42(s1)
201408aa c.j -0xd2
201408ac c.lwsp a0, 0x3c(sp)
201408ae addi a4, zero, 0x40
201408b2 lui s9, 0x20201
201408b6 lhu a5, 0(a0)
201408ba andi a5, a5, 0xfc
201408be bne a5, a4, 0xe
201408c2 lbu a5, 1(a0)
201408c6 andi a5, a5, 0x40
201408ca c.beqz a5, 0x56
201408cc lw a5, 0x408(s9)
201408d0 c.jalr a5
201408d2 lui a5, 0x20201
201408d6 lw a5, 0x12c(a5)
201408da c.jalr a5
201408dc lui a5, 0x20203
201408e0 lw a5, 0x584(a5)
201408e4 addi a3, zero, 0xff
201408e8 c.mv s0, a0
201408ea c.lw a5, 0x48(a5)
201408ec c.lw a4, 0x28(a5)
201408ee lbu a5, 8(a4)
201408f2 beq a5, a3, 0xa
201408f6 c.addi a5, 1

fw 0x20140b76
20140b58 .byte 0xe7, 0x12
20140b5a bltu a4, a5, 0xd8
20140b5e lui a4, 0x20201
20140b62 c.bnez a5, 0xe4
20140b64 lw a7, 0x6a8(a4)
20140b68 lui a3, 0x40000
20140b6c c.mv a5, s5
20140b6e c.li a4, 2
20140b70 addi a3, a3, 0x440
20140b74 c.li a2, 2
20140b76 lui a0, 0x10000
20140b7a c.li a1, 0
20140b7c c.jalr a7
20140b7e c.j 0xba
20140b80 c.li a5, 3
20140b82 c.lwsp a1, 0x3c(sp)
20140b84 beq a4, a5, 0x94
20140b88 lw a5, 0x408(s9)
20140b8c c.mv a0, a1
20140b8e c.jalr a5
20140b90 lw a5, 0x408(s9)
20140b94 c.mv a0, s3
20140b96 c.j -0x168
20140b98 lbu a2, 0x2c(s0)
20140b9c addi a4, s4, 2
20140ba0 andi s11, a4, 0xff
20140ba4 c.add a5, s3
20140ba6 sb a2, 0(a5)
20140baa addi a1, s0, 0xc
20140bae add a0, s3, s11
20140bb2 c.swsp a4, 0x2c(sp)
20140bb4 jal 0x3ba8
20140bb8 lhu a2, 0x3a(sp)
20140bbc lbu a0, 0x2c(s0)
20140bc0 c.lwsp a1, 0x3c(sp)
20140bc2 c.lwsp a4, 0x2c(sp)
20140bc4 c.addi a2, -2
20140bc6 c.add a0, s11
20140bc8 andi a0, a0, 0xff
20140bcc sub a2, a2, s4
20140bd0 c.add a1, a4
20140bd2 c.add a0, s3
20140bd4 c.j -0x13c
20140bd6 lui a1, 0x2020e
20140bda add a0, s3, a5
20140bde c.li a2, 5
20140be0 addi a1, a1, 0x4fc
20140be4 jal 0x3b78
20140be8 addi a0, s4, 6
20140bec andi a0, a0, 0xff
20140bf0 c.li a2, 4
20140bf2 addi a1, s0, 0xc
20140bf6 c.add a0, s3
20140bf8 jal 0x3b64
20140bfc lhu a2, 0x3a(sp)
20140c00 c.lwsp a1, 0x3c(sp)
20140c02 addi a5, s4, 2
20140c06 c.addi a2, -2
20140c08 addi a0, s4, 0xa

fw 0x20140c58
20140c3a c.mv a0, s1
20140c3c jal -0x1d58
20140c40 beqz a0, -0x3d6
20140c44 c.j -0x214
20140c46 lw a7, 0x6a8(a4)
20140c4a lui s2, 0x40000
20140c4e c.mv a5, s5
20140c50 addi a3, s2, 0x441
20140c54 c.li a4, 2
20140c56 c.li a2, 2
20140c58 lui a0, 0x10000
20140c5c c.li a1, 0
20140c5e c.jalr a7
20140c60 lui a5, 0x20201
20140c64 lw a6, 0x6a4(a5)
20140c68 lbu a4, 0x2c(s0)
20140c6c addi a5, s0, 0xc
20140c70 addi a3, s2, 0x442
20140c74 c.li a2, 2
20140c76 lui a0, 0x10000
20140c7a c.li a1, 0
20140c7c c.jalr a6
20140c7e c.j -0x46
20140c80 lui a5, 0x20201
20140c84 lw t1, 0x6a8(a5)
20140c88 lbu a5, 0xf(s0)
20140c8c lui a3, 0x40000
20140c90 c.li a4, 6
20140c92 c.swsp a5, 8(sp)
20140c94 lbu a5, 0xe(s0)
20140c98 addi a3, a3, 0x444
20140c9c c.li a2, 2
20140c9e c.swsp a5, 4(sp)
20140ca0 lbu a5, 0xd(s0)
20140ca4 lui a0, 0x10000
20140ca8 c.li a1, 0
20140caa c.swsp a5, 0(sp)
20140cac lbu a7, 0xc(s0)
20140cb0 c.mv a5, s5
20140cb2 c.jalr t1
20140cb4 c.j -0x7c
20140cb6 lui a5, 0x20201
20140cba lw t1, 0x6a8(a5)
20140cbe lbu a5, 0x11(s0)
20140cc2 lui a3, 0x40000
20140cc6 c.li a4, 8
20140cc8 c.swsp a5, 0x10(sp)
20140cca lbu a5, 0x10(s0)
20140cce addi a3, a3, 0x443
20140cd2 c.li a2, 2
20140cd4 c.swsp a5, 0xc(sp)
20140cd6 lbu a5, 0xf(s0)
20140cda lui a0, 0x10000
20140cde c.li a1, 0
20140ce0 c.swsp a5, 8(sp)
20140ce2 lbu a5, 0xe(s0)
20140ce6 c.swsp a5, 4(sp)
20140ce8 lbu a5, 0xd(s0)
20140cec c.swsp a5, 0(sp)

fw 0x20140c76
20140c58 lui a0, 0x10000
20140c5c c.li a1, 0
20140c5e c.jalr a7
20140c60 lui a5, 0x20201
20140c64 lw a6, 0x6a4(a5)
20140c68 lbu a4, 0x2c(s0)
20140c6c addi a5, s0, 0xc
20140c70 addi a3, s2, 0x442
20140c74 c.li a2, 2
20140c76 lui a0, 0x10000
20140c7a c.li a1, 0
20140c7c c.jalr a6
20140c7e c.j -0x46
20140c80 lui a5, 0x20201
20140c84 lw t1, 0x6a8(a5)
20140c88 lbu a5, 0xf(s0)
20140c8c lui a3, 0x40000
20140c90 c.li a4, 6
20140c92 c.swsp a5, 8(sp)
20140c94 lbu a5, 0xe(s0)
20140c98 addi a3, a3, 0x444
20140c9c c.li a2, 2
20140c9e c.swsp a5, 4(sp)
20140ca0 lbu a5, 0xd(s0)
20140ca4 lui a0, 0x10000
20140ca8 c.li a1, 0
20140caa c.swsp a5, 0(sp)
20140cac lbu a7, 0xc(s0)
20140cb0 c.mv a5, s5
20140cb2 c.jalr t1
20140cb4 c.j -0x7c
20140cb6 lui a5, 0x20201
20140cba lw t1, 0x6a8(a5)
20140cbe lbu a5, 0x11(s0)
20140cc2 lui a3, 0x40000
20140cc6 c.li a4, 8
20140cc8 c.swsp a5, 0x10(sp)
20140cca lbu a5, 0x10(s0)
20140cce addi a3, a3, 0x443
20140cd2 c.li a2, 2
20140cd4 c.swsp a5, 0xc(sp)
20140cd6 lbu a5, 0xf(s0)
20140cda lui a0, 0x10000
20140cde c.li a1, 0
20140ce0 c.swsp a5, 8(sp)
20140ce2 lbu a5, 0xe(s0)
20140ce6 c.swsp a5, 4(sp)
20140ce8 lbu a5, 0xd(s0)
20140cec c.swsp a5, 0(sp)
20140cee lbu a7, 0xc(s0)
20140cf2 c.mv a5, s5
20140cf4 c.jalr t1
20140cf6 c.j -0xbe
20140cf8 c.jr ra
20140cfa c.addi16sp sp, -0x70
20140cfc c.swsp s1, 0x64(sp)
20140cfe lw s1, 0xd4(a0)
20140d02 c.swsp s0, 0x68(sp)
20140d04 addi a2, zero, 0x30
20140d08 c.mv s0, a0
20140d0a c.li a1, 0

fw 0x20140ca4
20140c86 .byte 0x87, 0x6a
20140c88 lbu a5, 0xf(s0)
20140c8c lui a3, 0x40000
20140c90 c.li a4, 6
20140c92 c.swsp a5, 8(sp)
20140c94 lbu a5, 0xe(s0)
20140c98 addi a3, a3, 0x444
20140c9c c.li a2, 2
20140c9e c.swsp a5, 4(sp)
20140ca0 lbu a5, 0xd(s0)
20140ca4 lui a0, 0x10000
20140ca8 c.li a1, 0
20140caa c.swsp a5, 0(sp)
20140cac lbu a7, 0xc(s0)
20140cb0 c.mv a5, s5
20140cb2 c.jalr t1
20140cb4 c.j -0x7c
20140cb6 lui a5, 0x20201
20140cba lw t1, 0x6a8(a5)
20140cbe lbu a5, 0x11(s0)
20140cc2 lui a3, 0x40000
20140cc6 c.li a4, 8
20140cc8 c.swsp a5, 0x10(sp)
20140cca lbu a5, 0x10(s0)
20140cce addi a3, a3, 0x443
20140cd2 c.li a2, 2
20140cd4 c.swsp a5, 0xc(sp)
20140cd6 lbu a5, 0xf(s0)
20140cda lui a0, 0x10000
20140cde c.li a1, 0
20140ce0 c.swsp a5, 8(sp)
20140ce2 lbu a5, 0xe(s0)
20140ce6 c.swsp a5, 4(sp)
20140ce8 lbu a5, 0xd(s0)
20140cec c.swsp a5, 0(sp)
20140cee lbu a7, 0xc(s0)
20140cf2 c.mv a5, s5
20140cf4 c.jalr t1
20140cf6 c.j -0xbe
20140cf8 c.jr ra
20140cfa c.addi16sp sp, -0x70
20140cfc c.swsp s1, 0x64(sp)
20140cfe lw s1, 0xd4(a0)
20140d02 c.swsp s0, 0x68(sp)
20140d04 addi a2, zero, 0x30
20140d08 c.mv s0, a0
20140d0a c.li a1, 0
20140d0c c.addi4spn a0, sp, 0x10
20140d0e c.swsp ra, 0x6c(sp)
20140d10 c.swsp s2, 0x60(sp)
20140d12 c.swsp s3, 0x5c(sp)
20140d14 c.swsp s4, 0x58(sp)
20140d16 c.swsp s5, 0x54(sp)
20140d18 c.swsp s6, 0x50(sp)
20140d1a c.swsp s7, 0x4c(sp)
20140d1c jal 0x3a4a
20140d20 sb zero, 0xd(sp)
20140d24 sb zero, 0xe(sp)
20140d28 sb zero, 0xf(sp)
20140d2c c.li a0, 0
20140d2e c.beqz s1, 0x56
20140d30 c.lw a4, 0x14(s1)
20140d32 lui a5, 0x800
20140d36 c.li a0, 0
20140d38 c.and a5, a4

fw 0x20140cda
20140cbc .byte 0x87, 0x6a
20140cbe lbu a5, 0x11(s0)
20140cc2 lui a3, 0x40000
20140cc6 c.li a4, 8
20140cc8 c.swsp a5, 0x10(sp)
20140cca lbu a5, 0x10(s0)
20140cce addi a3, a3, 0x443
20140cd2 c.li a2, 2
20140cd4 c.swsp a5, 0xc(sp)
20140cd6 lbu a5, 0xf(s0)
20140cda lui a0, 0x10000
20140cde c.li a1, 0
20140ce0 c.swsp a5, 8(sp)
20140ce2 lbu a5, 0xe(s0)
20140ce6 c.swsp a5, 4(sp)
20140ce8 lbu a5, 0xd(s0)
20140cec c.swsp a5, 0(sp)
20140cee lbu a7, 0xc(s0)
20140cf2 c.mv a5, s5
20140cf4 c.jalr t1
20140cf6 c.j -0xbe
20140cf8 c.jr ra
20140cfa c.addi16sp sp, -0x70
20140cfc c.swsp s1, 0x64(sp)
20140cfe lw s1, 0xd4(a0)
20140d02 c.swsp s0, 0x68(sp)
20140d04 addi a2, zero, 0x30
20140d08 c.mv s0, a0
20140d0a c.li a1, 0
20140d0c c.addi4spn a0, sp, 0x10
20140d0e c.swsp ra, 0x6c(sp)
20140d10 c.swsp s2, 0x60(sp)
20140d12 c.swsp s3, 0x5c(sp)
20140d14 c.swsp s4, 0x58(sp)
20140d16 c.swsp s5, 0x54(sp)
20140d18 c.swsp s6, 0x50(sp)
20140d1a c.swsp s7, 0x4c(sp)
20140d1c jal 0x3a4a
20140d20 sb zero, 0xd(sp)
20140d24 sb zero, 0xe(sp)
20140d28 sb zero, 0xf(sp)
20140d2c c.li a0, 0
20140d2e c.beqz s1, 0x56
20140d30 c.lw a4, 0x14(s1)
20140d32 lui a5, 0x800
20140d36 c.li a0, 0
20140d38 c.and a5, a4
20140d3a c.bnez a5, 0x4a
20140d3c lw s2, 8(s1)
20140d40 c.lui a4, 4
20140d42 lw a5, 4(s2)
20140d46 c.and a4, a5
20140d48 c.beqz a4, 0x3c
20140d4a lui a4, 0x600
20140d4e c.and a4, a5
20140d50 lui a3, 0x400
20140d54 beq a4, a3, 0x30
20140d58 lui a3, 0x200
20140d5c bne a4, a3, 0xa
20140d60 lbu a0, 0x129(s0)
20140d64 c.beqz a0, 0x20
20140d66 andi a4, a5, 0x18
20140d6a c.li s4, 0x10
20140d6c addi s3, s1, 0xc

fw 0x20141160
20141142 lui a5, 0x20201
20141146 lw t1, 0x6a8(a5)
2014114a srli a6, a6, 0xf
2014114e lui a3, 0x40000
20141152 andi a6, a6, 7
20141156 c.li a4, 4
20141158 addi a3, a3, 0x406
2014115c c.mv a5, s3
2014115e c.li a2, 2
20141160 lui a0, 0x10000
20141164 c.li a1, 0
20141166 c.swsp s7, 0(sp)
20141168 c.jalr t1
2014116a lui a5, 0x20202
2014116e lw a5, -0x84(a5)
20141172 lui s2, 0x20143
20141176 addi a2, s2, -0x626
2014117a c.li a1, 5
2014117c c.mv a0, s0
2014117e c.jalr a5
20141180 lui a5, 0x20201
20141184 lw a5, 0x12c(a5)
20141188 c.jalr a5
2014118a lw s4, -0x80(s4)
2014118e lw a5, -0x50(s9)
20141192 c.mv s1, a0
20141194 c.mv a0, s0
20141196 c.jalr a5
20141198 addi a2, a0, 0x400
2014119c sltu a3, a2, a0
201411a0 c.mv a5, s3
201411a2 c.add a3, a1
201411a4 addi a4, s2, -0x626
201411a8 c.li a1, 5
201411aa c.mv a0, s0
201411ac c.jalr s4
201411ae lui a5, 0x20201
201411b2 lw a5, 0x130(a5)
201411b6 c.mv a0, s1
201411b8 c.jalr a5
201411ba c.lwsp ra, 0xcc(sp)
201411bc c.lwsp s0, 0xc8(sp)
201411be c.lwsp s1, 0xc4(sp)
201411c0 c.lwsp s2, 0xc0(sp)
201411c2 c.lwsp s3, 0xbc(sp)
201411c4 c.lwsp s4, 0xb8(sp)
201411c6 c.lwsp s5, 0xb4(sp)
201411c8 c.lwsp s6, 0xb0(sp)
201411ca c.lwsp s7, 0xac(sp)
201411cc c.lwsp s8, 0xa8(sp)
201411ce c.lwsp s9, 0xa4(sp)
201411d0 c.lwsp s10, 0xa0(sp)
201411d2 c.addi16sp sp, 0xd0
201411d4 c.jr ra
201411d6 c.mv a0, s0
201411d8 jal -0x2a16
201411dc andi s7, a0, 0xff
201411e0 c.j -0xe6
201411e2 lbu s7, 0x1b8(s2)
201411e6 c.j -0xec
201411e8 c.li s8, 0
201411ea c.li s7, 0
201411ec c.j -0xf2
201411ee sb s7, 0x12b(s2)
201411f2 c.mv a0, s2
201411f4 c.jal -0x4fa

fw 0x201416d2
201416b4 c.addi4spn s0, sp, 0x194
201416b6 c.lwsp a5, 0x14(sp)
201416b8 c.lw a4, 4(s1)
201416ba lui a3, 0x40000
201416be sw a5, 0(s4)
201416c2 lhu a5, 0x12(sp)
201416c6 c.srli a4, 9
201416c8 c.andi a4, 4
201416ca sh a5, 4(s4)
201416ce lhu a5, 0xa(s1)
201416d2 lui a0, 0x10000
201416d6 c.li a1, 0
201416d8 sra a5, a5, s6
201416dc c.andi a5, 1
201416de c.slli a5, 1
201416e0 c.or a5, a4
201416e2 lbu a4, 7(s4)
201416e6 addi a3, a3, 0x404
201416ea c.li a2, 2
201416ec c.andi a4, -7
201416ee c.or a5, a4
201416f0 sb a5, 7(s4)
201416f4 lbu a6, 0x42(s0)
201416f8 c.li a4, 2
201416fa sb a6, 6(s4)
201416fe lbu a5, 3(s0)
20141702 sb a5, 8(s4)
20141706 lui a5, 0x20201
2014170a lw a7, 0x6a8(a5)
2014170e c.mv a5, s3
20141710 c.jalr a7
20141712 c.mv a1, s4
20141714 c.mv a0, s0
20141716 jal -0x2832
2014171a bnez a0, -0x152
2014171e c.lw a4, 4(s1)
20141720 lbu a6, 0x42(s0)
20141724 c.mv a5, s3
20141726 c.srli a4, 0xb
20141728 c.li a7, 0
2014172a c.andi a4, 1
2014172c c.mv a2, s2
2014172e c.mv a3, s5
20141730 c.li a1, 2
20141732 c.li a0, 2
20141734 jal -0x1ce0
20141738 lbu a5, 0x119(s0)
2014173c c.addi a5, 1
2014173e sb a5, 0x119(s0)
20141742 c.j -0x17a
20141744 sb zero, 0x42(s0)
20141748 c.j -0xe4
2014174a c.lui a2, 5
2014174c c.add a2, s2
2014174e sltu a3, a2, s2
20141752 c.add a3, s5
20141754 c.j -0x162
20141756 c.jr ra
20141758 c.lw a5, 0x14(a0)
2014175a lbu a4, 0(a1)
2014175e andi a3, a5, 0xc
20141762 c.bnez a3, 0x16
20141764 c.srli a5, 0x1b
20141766 c.li a3, 1

fw 0x2014189c
2014187e c.li a5, 0x14
20141880 c.swsp a5, 8(sp)
20141882 lui a3, 0x40000
20141886 c.li a5, 4
20141888 c.swsp a5, 0(sp)
2014188a c.swsp s10, 4(sp)
2014188c c.mv a7, s9
2014188e addi a6, zero, 0x28
20141892 c.mv a5, s1
20141894 c.li a4, 6
20141896 addi a3, a3, 0x431
2014189a c.li a2, 2
2014189c lui a0, 0x10000
201418a0 c.li a1, 0
201418a2 slli s0, s3, 6
201418a6 c.jalr t1
201418a8 ori s0, s0, 1
201418ac c.addi16sp sp, 0x190
201418ae lw ra, 0x7ec(sp)
201418b2 c.mv a0, s0
201418b4 lw s1, 0x7e4(sp)
201418b8 lw s0, 0x7e8(sp)
201418bc lw s2, 0x7e0(sp)
201418c0 lw s3, 0x7dc(sp)
201418c4 lw s4, 0x7d8(sp)
201418c8 lw s5, 0x7d4(sp)
201418cc lw s6, 0x7d0(sp)
201418d0 lw s7, 0x7cc(sp)
201418d4 lw s8, 0x7c8(sp)
201418d8 lw s9, 0x7c4(sp)
201418dc lw s10, 0x7c0(sp)
201418e0 lw s11, 0x7bc(sp)
201418e4 addi sp, sp, 0x7f0
201418e8 c.jr ra
201418ea c.li a3, 1
201418ec bgeu a3, s3, 0xe
201418f0 slli s0, s3, 6
201418f4 ori s0, s0, 2
201418f8 c.j -0x4c
201418fa srli a4, a6, 2
201418fe c.mv s11, a0
20141900 andi s6, a6, 3
20141904 c.andi a4, 3
20141906 addi s5, s5, 0x754
2014190a beqz s3, 0x24
2014190e c.bnez a0, 0x6c
20141910 lui a5, 0x20201
20141914 lw a5, 0x6a8(a5)
20141918 lui a3, 0x40000
2014191c c.li a4, 0
2014191e addi a3, a3, 0x374
20141922 c.li a2, 2
20141924 lui a0, 0x10000
20141928 c.li a1, 0
2014192a c.jalr a5
2014192c c.j -0x3c
2014192e c.bnez a0, 0x4c
20141930 .byte 0x63, 0x12

fw 0x20141924
20141906 addi s5, s5, 0x754
2014190a beqz s3, 0x24
2014190e c.bnez a0, 0x6c
20141910 lui a5, 0x20201
20141914 lw a5, 0x6a8(a5)
20141918 lui a3, 0x40000
2014191c c.li a4, 0
2014191e addi a3, a3, 0x374
20141922 c.li a2, 2
20141924 lui a0, 0x10000
20141928 c.li a1, 0
2014192a c.jalr a5
2014192c c.j -0x3c
2014192e c.bnez a0, 0x4c
20141930 bne a4, a3, 0x24
20141934 lui a5, 0x20201
20141938 lw a5, 0x6a8(a5)
2014193c lui a3, 0x40000
20141940 c.li a4, 0
20141942 addi a3, a3, 0x408
20141946 c.li a2, 2
20141948 lui a0, 0x10000
2014194c c.li a1, 0
2014194e c.jalr a5
20141950 c.li s0, 3
20141952 c.j -0xa6
20141954 beq a5, a3, 0xc4
20141958 lui a4, 0x20201
2014195c lw a7, 0x6a8(a4)
20141960 addi a6, zero, 0x281
20141964 lui a3, 0x40000
20141968 c.li a4, 2
2014196a addi a3, a3, 0x409
2014196e c.li a2, 2
20141970 lui a0, 0x10000
20141974 c.li a1, 0
20141976 c.jalr a7
20141978 c.j -0x28
2014197a c.li a3, 1
2014197c bne a5, a3, 0x30
20141980 lui a5, 0x20201
20141984 lw a7, 0x6a8(a5)
20141988 addi a6, zero, 0x286
2014198c c.li a5, 1
2014198e lui a3, 0x40000
20141992 c.li a4, 2
20141994 addi a3, a3, 0x409
20141998 c.li a2, 2
2014199a lui a0, 0x10000
2014199e c.li a1, 0
201419a0 slli s0, s3, 6
201419a4 c.jalr a7
201419a6 ori s0, s0, 3
201419aa c.j -0xfe
201419ac c.lui a3, 1
201419ae c.bnez a4, 0x56
201419b0 bnez s3, 0x20
201419b4 addi a2, a3, 2
201419b8 .byte 0x63, 0x80

fw 0x20141948
2014192a c.jalr a5
2014192c c.j -0x3c
2014192e c.bnez a0, 0x4c
20141930 bne a4, a3, 0x24
20141934 lui a5, 0x20201
20141938 lw a5, 0x6a8(a5)
2014193c lui a3, 0x40000
20141940 c.li a4, 0
20141942 addi a3, a3, 0x408
20141946 c.li a2, 2
20141948 lui a0, 0x10000
2014194c c.li a1, 0
2014194e c.jalr a5
20141950 c.li s0, 3
20141952 c.j -0xa6
20141954 beq a5, a3, 0xc4
20141958 lui a4, 0x20201
2014195c lw a7, 0x6a8(a4)
20141960 addi a6, zero, 0x281
20141964 lui a3, 0x40000
20141968 c.li a4, 2
2014196a addi a3, a3, 0x409
2014196e c.li a2, 2
20141970 lui a0, 0x10000
20141974 c.li a1, 0
20141976 c.jalr a7
20141978 c.j -0x28
2014197a c.li a3, 1
2014197c bne a5, a3, 0x30
20141980 lui a5, 0x20201
20141984 lw a7, 0x6a8(a5)
20141988 addi a6, zero, 0x286
2014198c c.li a5, 1
2014198e lui a3, 0x40000
20141992 c.li a4, 2
20141994 addi a3, a3, 0x409
20141998 c.li a2, 2
2014199a lui a0, 0x10000
2014199e c.li a1, 0
201419a0 slli s0, s3, 6
201419a4 c.jalr a7
201419a6 ori s0, s0, 3
201419aa c.j -0xfe
201419ac c.lui a3, 1
201419ae c.bnez a4, 0x56
201419b0 bnez s3, 0x20
201419b4 addi a2, a3, 2
201419b8 beq a5, a2, 0x60
201419bc c.addi a3, 0x11
201419be beq a5, a3, 0x5a
201419c2 lui a4, 0x20201
201419c6 lw a7, 0x6a8(a4)
201419ca addi a6, zero, 0x28c
201419ce c.j -0x6a
201419d0 addi a2, a3, 0x20
201419d4 beq a5, a2, 0x44
201419d8 c.addi a3, 0x11
201419da beq a5, a3, 0x3e

fw 0x20141970
20141952 c.j -0xa6
20141954 beq a5, a3, 0xc4
20141958 lui a4, 0x20201
2014195c lw a7, 0x6a8(a4)
20141960 addi a6, zero, 0x281
20141964 lui a3, 0x40000
20141968 c.li a4, 2
2014196a addi a3, a3, 0x409
2014196e c.li a2, 2
20141970 lui a0, 0x10000
20141974 c.li a1, 0
20141976 c.jalr a7
20141978 c.j -0x28
2014197a c.li a3, 1
2014197c bne a5, a3, 0x30
20141980 lui a5, 0x20201
20141984 lw a7, 0x6a8(a5)
20141988 addi a6, zero, 0x286
2014198c c.li a5, 1
2014198e lui a3, 0x40000
20141992 c.li a4, 2
20141994 addi a3, a3, 0x409
20141998 c.li a2, 2
2014199a lui a0, 0x10000
2014199e c.li a1, 0
201419a0 slli s0, s3, 6
201419a4 c.jalr a7
201419a6 ori s0, s0, 3
201419aa c.j -0xfe
201419ac c.lui a3, 1
201419ae c.bnez a4, 0x56
201419b0 bnez s3, 0x20
201419b4 addi a2, a3, 2
201419b8 beq a5, a2, 0x60
201419bc c.addi a3, 0x11
201419be beq a5, a3, 0x5a
201419c2 lui a4, 0x20201
201419c6 lw a7, 0x6a8(a4)
201419ca addi a6, zero, 0x28c
201419ce c.j -0x6a
201419d0 addi a2, a3, 0x20
201419d4 beq a5, a2, 0x44
201419d8 c.addi a3, 0x11
201419da beq a5, a3, 0x3e
201419de lui a4, 0x20201
201419e2 lw a7, 0x6a8(a4)
201419e6 lui a3, 0x40000
201419ea addi a6, zero, 0x292
201419ee c.li a4, 2
201419f0 addi a3, a3, 0x409
201419f4 c.li a2, 2
201419f6 lui a0, 0x10000
201419fa c.li a1, 0
201419fc c.jalr a7
201419fe addi s0, zero, 0x43
20141a02 c.j -0x156
20141a04 c.addi a3, 0x11

fw 0x2014199a
2014197c bne a5, a3, 0x30
20141980 lui a5, 0x20201
20141984 lw a7, 0x6a8(a5)
20141988 addi a6, zero, 0x286
2014198c c.li a5, 1
2014198e lui a3, 0x40000
20141992 c.li a4, 2
20141994 addi a3, a3, 0x409
20141998 c.li a2, 2
2014199a lui a0, 0x10000
2014199e c.li a1, 0
201419a0 slli s0, s3, 6
201419a4 c.jalr a7
201419a6 ori s0, s0, 3
201419aa c.j -0xfe
201419ac c.lui a3, 1
201419ae c.bnez a4, 0x56
201419b0 bnez s3, 0x20
201419b4 addi a2, a3, 2
201419b8 beq a5, a2, 0x60
201419bc c.addi a3, 0x11
201419be beq a5, a3, 0x5a
201419c2 lui a4, 0x20201
201419c6 lw a7, 0x6a8(a4)
201419ca addi a6, zero, 0x28c
201419ce c.j -0x6a
201419d0 addi a2, a3, 0x20
201419d4 beq a5, a2, 0x44
201419d8 c.addi a3, 0x11
201419da beq a5, a3, 0x3e
201419de lui a4, 0x20201
201419e2 lw a7, 0x6a8(a4)
201419e6 lui a3, 0x40000
201419ea addi a6, zero, 0x292
201419ee c.li a4, 2
201419f0 addi a3, a3, 0x409
201419f4 c.li a2, 2
201419f6 lui a0, 0x10000
201419fa c.li a1, 0
201419fc c.jalr a7
201419fe addi s0, zero, 0x43
20141a02 c.j -0x156
20141a04 c.addi a3, 0x11
20141a06 beq a5, a3, 0x12
20141a0a lui a4, 0x20201
20141a0e lw a7, 0x6a8(a4)
20141a12 addi a6, zero, 0x297
20141a16 c.j -0x88
20141a18 c.addi a4, -1
20141a1a seqz a4, a4
20141a1e snez a5, s7
20141a22 slli s0, s3, 6
20141a26 beq a4, a5, 0x26
20141a2a lui a5, 0x20201
20141a2e .byte 0x83, 0xa7

fw 0x201419f6
201419d8 c.addi a3, 0x11
201419da beq a5, a3, 0x3e
201419de lui a4, 0x20201
201419e2 lw a7, 0x6a8(a4)
201419e6 lui a3, 0x40000
201419ea addi a6, zero, 0x292
201419ee c.li a4, 2
201419f0 addi a3, a3, 0x409
201419f4 c.li a2, 2
201419f6 lui a0, 0x10000
201419fa c.li a1, 0
201419fc c.jalr a7
201419fe addi s0, zero, 0x43
20141a02 c.j -0x156
20141a04 c.addi a3, 0x11
20141a06 beq a5, a3, 0x12
20141a0a lui a4, 0x20201
20141a0e lw a7, 0x6a8(a4)
20141a12 addi a6, zero, 0x297
20141a16 c.j -0x88
20141a18 c.addi a4, -1
20141a1a seqz a4, a4
20141a1e snez a5, s7
20141a22 slli s0, s3, 6
20141a26 beq a4, a5, 0x26
20141a2a lui a5, 0x20201
20141a2e lw a5, 0x6a8(a5)
20141a32 lui a3, 0x40000
20141a36 c.li a4, 0
20141a38 addi a3, a3, 0x40a
20141a3c c.li a2, 2
20141a3e lui a0, 0x10000
20141a42 c.li a1, 0
20141a44 c.jalr a5
20141a46 ori s0, s0, 4
20141a4a c.j -0x19e
20141a4c c.li a5, 3
20141a4e bne s6, a5, 0x2e
20141a52 lbu a5, 1(s2)
20141a56 beqz a5, -0x1aa
20141a5a lui a5, 0x20202
20141a5e lw a5, -0x50(a5)
20141a62 c.mv a0, s3
20141a64 c.jalr a5
20141a66 c.mv a2, a0
20141a68 c.mv a3, a1
20141a6a c.li a7, 0
20141a6c c.li a6, 0
20141a6e c.mv a5, s3
20141a70 c.li a4, 1
20141a72 c.li a1, 0
20141a74 c.li a0, 6
20141a76 jal -0x2022
20141a7a c.j -0x1ce
20141a7c bnez s6, 0xf2
20141a80 c.lui s3, 0xfffff
20141a82 c.lui a5, 1
20141a84 addi a1, s3, 0x6f3
20141a88 addi a5, a5, -0x6e0

fw 0x20141a3e
20141a20 c.addi4spn a2, sp, 0x8c
20141a22 slli s0, s3, 6
20141a26 beq a4, a5, 0x26
20141a2a lui a5, 0x20201
20141a2e lw a5, 0x6a8(a5)
20141a32 lui a3, 0x40000
20141a36 c.li a4, 0
20141a38 addi a3, a3, 0x40a
20141a3c c.li a2, 2
20141a3e lui a0, 0x10000
20141a42 c.li a1, 0
20141a44 c.jalr a5
20141a46 ori s0, s0, 4
20141a4a c.j -0x19e
20141a4c c.li a5, 3
20141a4e bne s6, a5, 0x2e
20141a52 lbu a5, 1(s2)
20141a56 beqz a5, -0x1aa
20141a5a lui a5, 0x20202
20141a5e lw a5, -0x50(a5)
20141a62 c.mv a0, s3
20141a64 c.jalr a5
20141a66 c.mv a2, a0
20141a68 c.mv a3, a1
20141a6a c.li a7, 0
20141a6c c.li a6, 0
20141a6e c.mv a5, s3
20141a70 c.li a4, 1
20141a72 c.li a1, 0
20141a74 c.li a0, 6
20141a76 jal -0x2022
20141a7a c.j -0x1ce
20141a7c bnez s6, 0xf2
20141a80 c.lui s3, 0xfffff
20141a82 c.lui a5, 1
20141a84 addi a1, s3, 0x6f3
20141a88 addi a5, a5, -0x6e0
20141a8c c.add a5, a1
20141a8e c.addi4spn a4, sp, 0x20
20141a90 add a1, a5, a4
20141a94 c.mv a0, s2
20141a96 c.jal -0x33e
20141a98 lbu a4, 0(s2)
20141a9c c.li a5, 1
20141a9e bne a4, a5, 0xa
20141aa2 lbu a5, 0xd0(s2)
20141aa6 c.bnez a5, 0x48
20141aa8 c.lui a4, 1
20141aaa c.lui a5, 0xfffff
20141aac addi a4, a4, -0x6e0
20141ab0 c.add a4, a5
20141ab2 c.addi4spn a5, sp, 0x20
20141ab4 c.add a5, a4
20141ab6 c.swsp a5, 0x10(sp)
20141ab8 lbu a5, 0x6f3(a5)
20141abc c.andi a5, 1
20141abe c.beqz a5, 0xa
20141ac0 lw a5, 0x44(s5)
20141ac4 sb zero, 0(a5)
20141ac8 c.lui a4, 1
20141aca c.lui a5, 0xfffff
20141acc addi a4, a4, -0x6e0
20141ad0 c.add a4, a5
20141ad2 c.addi4spn a5, sp, 0x20

fw 0x20141b8c
20141b6e lbu a4, 0(s2)
20141b72 c.li a5, 1
20141b74 bne a4, a5, 0x26
20141b78 lui a5, 0x20201
20141b7c lw a5, 0x6a8(a5)
20141b80 lui a3, 0x40000
20141b84 c.li a4, 0
20141b86 addi a3, a3, 0x375
20141b8a c.li a2, 2
20141b8c lui a0, 0x10000
20141b90 c.li a1, 0
20141b92 c.jalr a5
20141b94 ori s0, s0, 5
20141b98 c.j -0x2ec
20141b9a addi a5, s2, 0x64
20141b9e addi s8, s2, 0x4c
20141ba2 c.swsp a5, 0x10(sp)
20141ba4 c.mv a5, s8
20141ba6 c.lw a4, 0(a5)
20141ba8 c.beqz a4, 0xc
20141baa addi a3, a4, 8
20141bae c.lw a4, 8(a4)
20141bb0 bne a4, a3, 0x6e4
20141bb4 c.lwsp a4, 0x10(sp)
20141bb6 c.addi a5, 4
20141bb8 bne a5, a4, -0x12
20141bbc lui a5, 0x20201
20141bc0 lw a5, 0x6a8(a5)
20141bc4 lui a3, 0x40000
20141bc8 c.li a4, 0
20141bca addi a3, a3, 0x376
20141bce c.li a2, 2
20141bd0 lui a0, 0x10000
20141bd4 c.li a1, 0
20141bd6 c.jalr a5
20141bd8 ori s0, s0, 6
20141bdc c.j -0x330
20141bde sb a0, 3(s2)
20141be2 c.li a5, 0
20141be4 c.li a3, 0x18
20141be6 lui a2, 0x20201
20141bea lbu a4, 0x19(s2)
20141bee bltu a5, a4, 0x218
20141bf2 sb zero, 0x19(s2)
20141bf6 c.li a5, 0
20141bf8 lbu a4, 0x3c(s2)
20141bfc c.beqz a4, 0xa
20141bfe lbu a4, 0x3f(s2)
20141c02 bltu a5, a4, 0x22e
20141c06 c.lui a5, 0xfffff
20141c08 c.lui a2, 1
20141c0a addi a4, a5, 0x6f8
20141c0e addi a3, a2, -0x6e0
20141c12 addi a5, a5, 0x6f4
20141c16 addi a2, a2, -0x6e0
20141c1a c.add a3, a4
20141c1c c.add a2, a5
20141c1e c.addi4spn a4, sp, 0x20
20141c20 c.addi4spn a5, sp, 0x20

fw 0x20141bd0
20141bb2 .byte 0xd7, 0x6e
20141bb4 c.lwsp a4, 0x10(sp)
20141bb6 c.addi a5, 4
20141bb8 bne a5, a4, -0x12
20141bbc lui a5, 0x20201
20141bc0 lw a5, 0x6a8(a5)
20141bc4 lui a3, 0x40000
20141bc8 c.li a4, 0
20141bca addi a3, a3, 0x376
20141bce c.li a2, 2
20141bd0 lui a0, 0x10000
20141bd4 c.li a1, 0
20141bd6 c.jalr a5
20141bd8 ori s0, s0, 6
20141bdc c.j -0x330
20141bde sb a0, 3(s2)
20141be2 c.li a5, 0
20141be4 c.li a3, 0x18
20141be6 lui a2, 0x20201
20141bea lbu a4, 0x19(s2)
20141bee bltu a5, a4, 0x218
20141bf2 sb zero, 0x19(s2)
20141bf6 c.li a5, 0
20141bf8 lbu a4, 0x3c(s2)
20141bfc c.beqz a4, 0xa
20141bfe lbu a4, 0x3f(s2)
20141c02 bltu a5, a4, 0x22e
20141c06 c.lui a5, 0xfffff
20141c08 c.lui a2, 1
20141c0a addi a4, a5, 0x6f8
20141c0e addi a3, a2, -0x6e0
20141c12 addi a5, a5, 0x6f4
20141c16 addi a2, a2, -0x6e0
20141c1a c.add a3, a4
20141c1c c.add a2, a5
20141c1e c.addi4spn a4, sp, 0x20
20141c20 c.addi4spn a5, sp, 0x20
20141c22 c.add a4, a3
20141c24 c.add s1, s4
20141c26 c.li a3, 0
20141c28 c.add a5, a2
20141c2a andi a2, a3, 0xff
20141c2e bltu a2, s7, 0x26a
20141c32 addi a2, zero, 0x28
20141c36 c.mv a1, s4
20141c38 sb zero, 5(s4)
20141c3c addi a0, s2, 0x14
20141c40 jal 0x2b1c
20141c44 c.li a5, 1
20141c46 sh a5, 0x3c(s2)
20141c4a sb s7, 0x3f(s2)
20141c4e c.mv a0, s3
20141c50 jal -0x3a64
20141c54 c.lui a5, 0xfffff
20141c56 c.lui a4, 1
20141c58 addi a5, a5, 0x6f4
20141c5c addi a4, a4, -0x6e0
20141c60 c.add a4, a5
20141c62 c.addi4spn a5, sp, 0x20
20141c64 c.add a5, a4

fw 0x20141ecc
20141eae c.swsp ra, 0x18(sp)
20141eb0 beqz a7, 0x26
20141eb4 bnez s11, 0x22
20141eb8 lui a5, 0x20201
20141ebc lw a5, 0x6a8(a5)
20141ec0 lui a3, 0x40000
20141ec4 c.li a4, 0
20141ec6 addi a3, a3, 0x374
20141eca c.li a2, 2
20141ecc lui a0, 0x10000
20141ed0 c.li a1, 0
20141ed2 c.jalr a5
20141ed4 c.j -0x5e0
20141ed6 c.swsp a5, 0x24(sp)
20141ed8 c.lwsp a5, 0x18(sp)
20141eda c.srli a1, 2
20141edc c.andi a1, 7
20141ede lw a2, -0x37c(a5)
20141ee2 c.swsp a3, 0x20(sp)
20141ee4 c.swsp a4, 0x1c(sp)
20141ee6 c.jalr a2
20141ee8 addi a6, zero, 0xff
20141eec c.lwsp a4, 0x1c(sp)
20141eee c.lwsp a3, 0x20(sp)
20141ef0 c.lwsp a5, 0x24(sp)
20141ef2 bne a0, a6, 0x1a
20141ef6 lui a5, 0x20201
20141efa lw a7, 0x6a8(a5)
20141efe c.lw a5, 0(s1)
20141f00 srli a6, a5, 2
20141f04 andi a6, a6, 7
20141f08 c.andi a5, 3
20141f0a c.j 0x3bc
20141f0c add a2, a5, a3
20141f10 sb a0, 0(a2)
20141f14 c.lw a2, 0(s1)
20141f16 c.addi a3, 1
20141f18 c.add s1, s9
20141f1a c.sw a2, 0(a4)
20141f1c c.addi a4, 4
20141f1e c.j -0x2f4
20141f20 addi a5, sp, -0x6c0
20141f24 slli a7, s11, 2
20141f28 c.add a7, a5
20141f2a lw t1, 0x6f8(a7)
20141f2e c.swsp a7, 0x28(sp)
20141f30 andi t1, t1, 3
20141f34 slli a5, t1, 2
20141f38 c.add a5, s5
20141f3a lw s9, 0x44(a5)
20141f3e c.swsp t1, 0x24(sp)
20141f40 c.mv a0, s9
20141f42 jal -0x487e
20141f46 c.mv a0, s9
20141f48 jal -0x3dc2
20141f4c addi a2, zero, 0x1c0
20141f50 c.mv a1, s2
20141f52 c.mv a0, s9
20141f54 jal 0x2808
20141f58 c.lwsp a5, 0x18(sp)
20141f5a addi a3, s9, 0xc8
20141f5e addi a4, s9, 0x80

fw 0x201420a6
20142088 lw a2, 0x40c(a5)
2014208c c.lwsp a1, 0x18(sp)
2014208e c.li a0, 0x14
20142090 c.jalr a2
20142092 c.lwsp a3, 0x24(sp)
20142094 c.lwsp a5, 0x20(sp)
20142096 c.sw a0, 0x6c(a3)
20142098 c.bnez a0, 0x4e
2014209a lui a5, 0x20201
2014209e lw a5, 0x6a8(a5)
201420a2 lui a3, 0x40000
201420a6 lui a0, 0x10000
201420aa c.li a4, 0
201420ac addi a3, a3, 0x373
201420b0 c.li a2, 2
201420b2 c.li a1, 0
201420b4 c.jalr a5
201420b6 c.li a5, 6
201420b8 sb a5, 0x640(sp)
201420bc lui a5, 0x20211
201420c0 addi a5, a5, 0x790
201420c4 sw a5, 0x644(sp)
201420c8 addi a5, zero, 0x348
201420cc sw a5, 0x648(sp)
201420d0 lui a5, 0x20202
201420d4 lw a5, 0x348(a5)
201420d8 addi a0, sp, 0x640
201420dc c.jalr a5
201420de ori s0, s0, 8
201420e2 j -0x836
201420e6 c.li a4, 0x18
201420e8 mul a5, a5, a4
201420ec c.li a2, 0x14
201420ee c.mv a1, s1
201420f0 c.add a5, s11
201420f2 c.lw a0, 0x6c(a5)
201420f4 c.swsp a5, 0x20(sp)
201420f6 jal 0x2666
201420fa c.lwsp a5, 0x20(sp)
201420fc lui a4, 0xff600
20142100 c.lw a3, 0x78(a5)
20142102 c.and a3, a4
20142104 c.lwsp a4, 0x1c(sp)
20142106 c.or a3, a4
20142108 c.sw a3, 0x78(a5)
2014210a lbu a5, 0x19(s11)
2014210e addi a3, a5, 1
20142112 sb a3, 0x19(s11)
20142116 lbu a3, 0x1f(s11)
2014211a bne a3, s9, 8
2014211e sb a5, 0x1f(s11)
20142122 addi a6, s9, 1
20142126 c.add s1, s10
20142128 andi s9, a6, 0xff
2014212c c.j -0x494
2014212e mul a0, s5, a3
20142132 lbu a2, 0(s1)
20142136 addi s11, s1, 1
2014213a .byte 0x93, 0x07

fw 0x201422d2
201422b4 c.swsp a5, 0x18(sp)
201422b6 c.lwsp a6, 0x1c(sp)
201422b8 bne a0, a4, -0x6da
201422bc lui a5, 0x20201
201422c0 lw a7, 0x6a8(a5)
201422c4 c.mv a5, s3
201422c6 lui a3, 0x40000
201422ca c.li a4, 2
201422cc addi a3, a3, 0x378
201422d0 c.li a2, 2
201422d2 lui a0, 0x10000
201422d6 c.li a1, 0
201422d8 c.jalr a7
201422da ori s0, s0, 7
201422de j -0xa32
201422e2 c.addi16sp sp, -0x40
201422e4 c.swsp s0, 0x38(sp)
201422e6 c.swsp s2, 0x30(sp)
201422e8 c.swsp s3, 0x2c(sp)
201422ea c.swsp s5, 0x24(sp)
201422ec c.swsp ra, 0x3c(sp)
201422ee c.swsp s1, 0x34(sp)
201422f0 c.swsp s4, 0x28(sp)
201422f2 c.swsp s6, 0x20(sp)
201422f4 sb zero, 0(a3)
201422f8 lbu a5, 0x103(a0)
201422fc c.mv s3, a2
201422fe c.mv s5, a1
20142300 c.mv a2, a0
20142302 c.mv s0, a0
20142304 c.mv a1, s3
20142306 c.mv a0, s5
20142308 c.mv s2, a3
2014230a sb a5, 0xf(sp)
2014230e sb zero, 0xe(sp)
20142312 jal -0x2e1e
20142316 lbu a4, 0x14(s3)
2014231a c.li a5, 1
2014231c sll a5, a5, a4
20142320 lbu a4, 0(s2)
20142324 c.or a5, a4
20142326 andi a5, a5, 0xff
2014232a sb a5, 0(s2)
2014232e lw a3, 0x10(s3)
20142332 c.lui a4, 1
20142334 addi a2, a4, 2
20142338 bne a3, a2, 0x66
2014233c ori a5, a5, 2
20142340 sb a5, 0(s2)
20142344 addi a1, sp, 0xe
20142348 c.mv a0, s0
2014234a jal -0xbf2
2014234e beqz a0, 0x12c
20142352 lbu s4, 0(s2)
20142356 lbu a5, 0xe(sp)
2014235a and a5, s4, a5
2014235e beq s4, a5, 0x4e
20142362 c.li a5, 7
20142364 sb a5, 0x10(sp)

fw 0x20142540
20142522 c.add a5, s1
20142524 c.lw a4, 0x6c(a5)
20142526 c.add s3, s1
20142528 c.bnez a4, 0x24
2014252a lui a5, 0x20201
2014252e lw a7, 0x6a8(a5)
20142532 lui a3, 0x40000
20142536 c.mv a5, s2
20142538 c.li a4, 2
2014253a addi a3, a3, 0x40c
2014253e c.li a2, 2
20142540 lui a0, 0x10000
20142544 c.li a1, 0
20142546 c.jalr a7
20142548 c.li s0, 0
2014254a c.j -0x46
2014254c lw a4, 0xd4(s1)
20142550 c.li s0, 1
20142552 beq a4, s3, -0x4e
20142556 sb a6, 0x78(a5)
2014255a c.li a1, 1
2014255c c.mv a0, s2
2014255e sw s3, 0xd4(s1)
20142562 jal -0x40a4
20142566 c.lwsp a5, 0x2c(sp)
20142568 addi a3, sp, 0x13
2014256c c.addi4spn a2, sp, 0x14
2014256e ori a5, a5, 4
20142572 c.mv a1, s3
20142574 c.mv a0, s1
20142576 sb s2, 0x28(sp)
2014257a c.swsp a5, 0x2c(sp)
2014257c c.jal -0x29a
2014257e c.mv s0, a0
20142580 c.bnez a0, 0x22
20142582 lui a5, 0x20201
20142586 lw a6, 0x6a8(a5)
2014258a lui a3, 0x40000
2014258e c.mv a5, s2
20142590 c.li a4, 1
20142592 addi a3, a3, 0x40d
20142596 c.li a2, 2
20142598 lui a0, 0x10000
2014259c c.li a1, 0
2014259e c.jalr a6
201425a0 c.j -0x9c
201425a2 c.addi4spn a0, sp, 0x14
201425a4 jal -0x4238
201425a8 c.mv s0, a0
201425aa c.beqz a0, -0xa6
201425ac c.mv a1, s5
201425ae c.mv a2, s4
201425b0 c.mv a0, s1
201425b2 jal -0x21cc
201425b6 c.li s0, 1
201425b8 c.j -0xb4
201425ba lui a5, 0x20212
201425be c.addi16sp sp, -0x30
201425c0 slli a4, a1, 2
201425c4 addi a5, a5, 0x754
201425c8 c.add a5, a4
201425ca c.swsp s2, 0x20(sp)
201425cc lui s2, 0x20202
201425d0 c.swsp s0, 0x28(sp)
201425d2 c.lw s0, 0x44(a5)
201425d4 .byte 0x83, 0x27

fw 0x20142598
2014257a c.swsp a5, 0x2c(sp)
2014257c c.jal -0x29a
2014257e c.mv s0, a0
20142580 c.bnez a0, 0x22
20142582 lui a5, 0x20201
20142586 lw a6, 0x6a8(a5)
2014258a lui a3, 0x40000
2014258e c.mv a5, s2
20142590 c.li a4, 1
20142592 addi a3, a3, 0x40d
20142596 c.li a2, 2
20142598 lui a0, 0x10000
2014259c c.li a1, 0
2014259e c.jalr a6
201425a0 c.j -0x9c
201425a2 c.addi4spn a0, sp, 0x14
201425a4 jal -0x4238
201425a8 c.mv s0, a0
201425aa c.beqz a0, -0xa6
201425ac c.mv a1, s5
201425ae c.mv a2, s4
201425b0 c.mv a0, s1
201425b2 jal -0x21cc
201425b6 c.li s0, 1
201425b8 c.j -0xb4
201425ba lui a5, 0x20212
201425be c.addi16sp sp, -0x30
201425c0 slli a4, a1, 2
201425c4 addi a5, a5, 0x754
201425c8 c.add a5, a4
201425ca c.swsp s2, 0x20(sp)
201425cc lui s2, 0x20202
201425d0 c.swsp s0, 0x28(sp)
201425d2 c.lw s0, 0x44(a5)
201425d4 lw a5, -0x84(s2)
201425d8 c.swsp s1, 0x24(sp)
201425da lui a2, 0x20141
201425de c.mv s1, a1
201425e0 c.swsp ra, 0x2c(sp)
201425e2 c.swsp s6, 0x10(sp)
201425e4 addi a2, a2, 0x48
201425e8 c.li a1, 5
201425ea c.swsp s3, 0x1c(sp)
201425ec c.swsp s4, 0x18(sp)
201425ee c.swsp s5, 0x14(sp)
201425f0 c.swsp s7, 0xc(sp)
201425f2 c.mv s6, a0
201425f4 c.mv a0, s1
201425f6 c.jalr a5
201425f8 lw a5, -0x84(s2)
201425fc lui a2, 0x20143
20142600 addi a2, a2, -0x118
20142604 c.li a1, 5
20142606 c.mv a0, s1
20142608 c.jalr a5
2014260a lw a5, -0x84(s2)
2014260e lui a2, 0x20143
20142612 addi a2, a2, -0x626
20142616 c.li a1, 5
20142618 c.mv a0, s1
2014261a c.jalr a5
2014261c lw a5, -0x84(s2)
20142620 lui a2, 0x20143
20142624 addi a2, a2, -0x22e
20142628 c.li a1, 5
2014262a c.mv a0, s1
2014262c c.jalr a5

fw 0x20144bee
20144bd0 c.beqz s0, 4
20144bd2 c.addi s0, -1
20144bd4 lui s6, 0x20201
20144bd8 lui s2, 0xb8840
20144bdc lw a5, 0x758(s6)
20144be0 slli s1, a0, 6
20144be4 addi s3, s2, 8
20144be8 c.add s3, s1
20144bea c.mv a0, s3
20144bec c.jalr a5
20144bee lui s4, 0x10000
20144bf2 lui s5, 0x20201
20144bf6 lw a5, 0x74c(s5)
20144bfa addi a1, s4, -1
20144bfe c.and a1, a0
20144c00 c.slli s0, 0x1c
20144c02 c.or a1, s0
20144c04 c.mv a0, s3
20144c06 c.jalr a5
20144c08 lw a5, 0x758(s6)
20144c0c c.addi s2, 0xc
20144c0e c.add s1, s2
20144c10 c.mv a0, s1
20144c12 c.jalr a5
20144c14 c.lwsp s0, 0x18(sp)
20144c16 lw a5, 0x74c(s5)
20144c1a c.lwsp ra, 0x1c(sp)
20144c1c c.lwsp s2, 0x10(sp)
20144c1e c.lwsp s3, 0xc(sp)
20144c20 c.lwsp s5, 4(sp)
20144c22 c.lwsp s6, 0(sp)
20144c24 or a1, a0, s4
20144c28 c.lwsp s4, 8(sp)
20144c2a c.mv a0, s1
20144c2c c.lwsp s1, 0x14(sp)
20144c2e c.addi16sp sp, 0x20
20144c30 c.jr a5
20144c32 j -0x4d6
20144c36 j -0x4d0
20144c3a c.addi16sp sp, -0x30
20144c3c c.swsp a5, 0x24(sp)
20144c3e c.addi4spn a5, sp, 0x24
20144c40 c.swsp ra, 0x1c(sp)
20144c42 c.swsp a6, 0x28(sp)
20144c44 c.swsp a7, 0x2c(sp)
20144c46 c.swsp a5, 0xc(sp)
20144c48 jal -0x13e48
20144c4c c.lwsp ra, 0x1c(sp)
20144c4e c.addi16sp sp, 0x30
20144c50 c.jr ra
20144c52 c.addi16sp sp, -0x30
20144c54 c.swsp a5, 0x24(sp)
20144c56 c.addi4spn a5, sp, 0x24
20144c58 c.swsp ra, 0x1c(sp)
20144c5a c.swsp a6, 0x28(sp)
20144c5c c.swsp a7, 0x2c(sp)
20144c5e c.swsp a5, 0xc(sp)
20144c60 jal -0x13cf6
20144c64 c.lwsp ra, 0x1c(sp)
20144c66 c.addi16sp sp, 0x30
20144c68 c.jr ra
20144c6a c.addi sp, -0x20
20144c6c c.swsp s1, 0x14(sp)
20144c6e c.swsp s3, 0xc(sp)
20144c70 c.swsp ra, 0x1c(sp)
20144c72 c.swsp s0, 0x18(sp)
20144c74 c.swsp s2, 0x10(sp)
20144c76 lbu s2, 0(a0)
20144c7a c.li a5, 7
20144c7c c.mv s1, a0
20144c7e addi s3, zero, 0x60
20144c82 .byte 0x63, 0xe4

fw 0x2014697a
2014695c lui a5, 0x20204
20146960 addi a0, a0, -0x70e
20146964 sw a4, 0x5d0(a5)
20146968 lui a5, 0x20201
2014696c lw a5, 0x738(a5)
20146970 c.jalr a5
20146972 lui a5, 0x20201
20146976 lw a5, 0x6a8(a5)
2014697a lui a0, 0x8000
2014697e c.li a4, 0
20146980 addi a3, zero, 0x28b
20146984 c.li a2, 2
20146986 c.li a1, 0
20146988 c.jalr a5
2014698a lui a5, 0x20203
2014698e sb zero, -0x6e8(a5)
20146992 lui a5, 0x20201
20146996 lw a5, 0xb8(a5)
2014699a c.jalr a5
2014699c lui a5, 0x20201
201469a0 lw a5, 0xf8(a5)
201469a4 c.jalr a5
201469a6 c.lwsp ra, 0xc(sp)
201469a8 c.li a0, 0
201469aa c.addi sp, 0x10
201469ac c.jr ra
201469ae c.addi sp, -0x20
201469b0 c.swsp zero, 0xc(sp)
201469b2 lui a5, 0x20201
201469b6 lw a5, 0x218(a5)
201469ba c.swsp ra, 0x1c(sp)
201469bc c.swsp s0, 0x18(sp)
201469be c.jalr a5
201469c0 c.beqz a0, 0xc
201469c2 lui a5, 0x20201
201469c6 lw a5, 0x214(a5)
201469ca c.jalr a5
201469cc c.jal -0x11a
201469ce lui s0, 0x20201
201469d2 lw a5, 0x73c(s0)
201469d6 c.li a1, 0
201469d8 c.lui a0, 7
201469da c.jalr a5
201469dc lui a5, 0x20212
201469e0 lw a5, 0x7a8(a5)
201469e4 c.lui a0, 7
201469e6 c.slli a5, 4
201469e8 c.srli a5, 4
201469ea c.swsp a5, 0xc(sp)
201469ec lw a5, 0x73c(s0)
201469f0 c.lwsp a1, 0xc(sp)
201469f2 c.jalr a5
201469f4 c.lwsp a5, 0xc(sp)
201469f6 lui a4, 0xb0000
201469fa c.lwsp ra, 0x1c(sp)
201469fc c.or a5, a4
201469fe c.swsp a5, 0xc(sp)
20146a00 lw a5, 0x73c(s0)
20146a04 c.lwsp s0, 0x18(sp)
20146a06 c.lwsp a1, 0xc(sp)
20146a08 c.lui a0, 7
20146a0a c.addi16sp sp, 0x20
20146a0c c.jr a5
20146a0e .byte 0xb7, 0x37

fw 0x201476ba
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
20147744 lw a5, 0x73c(s2)
20147748 c.mv a1, s1
2014774a addi a0, zero, 0x1f4
2014774e c.jalr a5

fw 0x201476d6
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

fw 0x2014b306
2014b2e8 lui a1, 0x80000
2014b2ec c.beqz a5, 6
2014b2ee lui a1, 0xc0000
2014b2f2 lbu a5, 0xa(sp)
2014b2f6 c.or a1, a0
2014b2f8 c.beqz a5, 8
2014b2fa lui a5, 0x20000
2014b2fe c.or a1, a5
2014b300 lbu a5, 9(sp)
2014b304 c.beqz a5, 8
2014b306 lui a5, 0x10000
2014b30a c.or a1, a5
2014b30c lbu a5, 8(sp)
2014b310 c.beqz a5, 8
2014b312 lui a5, 0x8000
2014b316 c.or a1, a5
2014b318 lui a0, 0xf9000
2014b31c c.addi a0, -1
2014b31e lw a5, 0x73c(s3)
2014b322 c.and a1, a0
2014b324 c.slli s0, 0x18
2014b326 c.or a1, s0
2014b328 c.lui s0, 0x12
2014b32a addi a0, s0, -0x760
2014b32e c.jalr a5
2014b330 lui a5, 0x20201
2014b334 lbu a1, 4(sp)
2014b338 lw a5, 0x734(a5)
2014b33c addi a0, s0, -0x760
2014b340 c.jalr a5
2014b342 lw a5, 0x748(s1)
2014b346 addi a0, s0, -0x75c
2014b34a c.jalr a5
2014b34c lw a4, 0x73c(s3)
2014b350 lui a1, 0xf000f
2014b354 lui a5, 0xa701
2014b358 addi a5, a5, -0x58f
2014b35c c.and a1, a0
2014b35e c.or a1, a5
2014b360 addi a0, s0, -0x75c
2014b364 c.jalr a4
2014b366 lw a5, 0x73c(s3)
2014b36a c.lui a0, 8
2014b36c c.li a1, 0
2014b36e addi a0, a0, 0x454
2014b372 c.jalr a5
2014b374 lbu a5, 0xb(sp)
2014b378 c.beqz a5, 0x12
2014b37a lhu a0, 4(sp)
2014b37e lui a4, 0x20210
2014b382 c.li a1, 6
2014b384 sb a5, -0x352(a4)
2014b388 c.jal -0x1fc
2014b38a c.lwsp ra, 0x2c(sp)
2014b38c c.lwsp s0, 0x28(sp)
2014b38e c.lwsp s1, 0x24(sp)
2014b390 c.lwsp s3, 0x1c(sp)
2014b392 c.mv a0, s2
2014b394 c.lwsp s2, 0x20(sp)
2014b396 c.addi16sp sp, 0x30
2014b398 c.jr ra
2014b39a .byte 0x83, 0xa7

fw 0x2014b312
2014b2f4 c.addi ra, 8
2014b2f6 c.or a1, a0
2014b2f8 c.beqz a5, 8
2014b2fa lui a5, 0x20000
2014b2fe c.or a1, a5
2014b300 lbu a5, 9(sp)
2014b304 c.beqz a5, 8
2014b306 lui a5, 0x10000
2014b30a c.or a1, a5
2014b30c lbu a5, 8(sp)
2014b310 c.beqz a5, 8
2014b312 lui a5, 0x8000
2014b316 c.or a1, a5
2014b318 lui a0, 0xf9000
2014b31c c.addi a0, -1
2014b31e lw a5, 0x73c(s3)
2014b322 c.and a1, a0
2014b324 c.slli s0, 0x18
2014b326 c.or a1, s0
2014b328 c.lui s0, 0x12
2014b32a addi a0, s0, -0x760
2014b32e c.jalr a5
2014b330 lui a5, 0x20201
2014b334 lbu a1, 4(sp)
2014b338 lw a5, 0x734(a5)
2014b33c addi a0, s0, -0x760
2014b340 c.jalr a5
2014b342 lw a5, 0x748(s1)
2014b346 addi a0, s0, -0x75c
2014b34a c.jalr a5
2014b34c lw a4, 0x73c(s3)
2014b350 lui a1, 0xf000f
2014b354 lui a5, 0xa701
2014b358 addi a5, a5, -0x58f
2014b35c c.and a1, a0
2014b35e c.or a1, a5
2014b360 addi a0, s0, -0x75c
2014b364 c.jalr a4
2014b366 lw a5, 0x73c(s3)
2014b36a c.lui a0, 8
2014b36c c.li a1, 0
2014b36e addi a0, a0, 0x454
2014b372 c.jalr a5
2014b374 lbu a5, 0xb(sp)
2014b378 c.beqz a5, 0x12
2014b37a lhu a0, 4(sp)
2014b37e lui a4, 0x20210
2014b382 c.li a1, 6
2014b384 sb a5, -0x352(a4)
2014b388 c.jal -0x1fc
2014b38a c.lwsp ra, 0x2c(sp)
2014b38c c.lwsp s0, 0x28(sp)
2014b38e c.lwsp s1, 0x24(sp)
2014b390 c.lwsp s3, 0x1c(sp)
2014b392 c.mv a0, s2
2014b394 c.lwsp s2, 0x20(sp)
2014b396 c.addi16sp sp, 0x30
2014b398 c.jr ra
2014b39a lw a5, 0x748(s1)
2014b39e c.lui s0, 0x11
2014b3a0 addi a0, s0, 0x280
2014b3a4 c.jalr a5
2014b3a6 .byte 0x83, 0xa7

fw 0x2014bb52
2014bb34 c.lwsp s3, 0x4c(sp)
2014bb36 c.lwsp s4, 0x48(sp)
2014bb38 c.lwsp s5, 0x44(sp)
2014bb3a c.lwsp s6, 0x40(sp)
2014bb3c c.lwsp s7, 0x3c(sp)
2014bb3e c.lwsp s8, 0x38(sp)
2014bb40 c.addi16sp sp, 0x60
2014bb42 c.jr ra
2014bb44 lui a1, 0x20000
2014bb48 c.or a0, a1
2014bb4a lbu a5, 0x25(sp)
2014bb4e beqz a5, 0x114
2014bb52 lui a1, 0x10000
2014bb56 c.or a0, a1
2014bb58 lbu a5, 0x24(sp)
2014bb5c beqz a5, 0x110
2014bb60 lui a1, 0x8000
2014bb64 c.or a1, a0
2014bb66 lui s6, 0x20201
2014bb6a lw a5, 0x73c(s6)
2014bb6e c.mv a0, s0
2014bb70 c.lui s0, 0x11
2014bb72 c.jalr a5
2014bb74 lw a5, 0x748(s1)
2014bb78 addi a0, s0, 0x2b4
2014bb7c addi s7, zero, 0x201
2014bb80 c.jalr a5
2014bb82 lw a5, 0x73c(s6)
2014bb86 slli a1, a0, 0x10
2014bb8a c.srli a1, 0x10
2014bb8c addi a0, s0, 0x2b4
2014bb90 c.jalr a5
2014bb92 lw a5, 0x748(s1)
2014bb96 addi a0, s0, 0x280
2014bb9a lui s3, 0x800
2014bb9e c.jalr a5
2014bba0 lw a5, 0x73c(s6)
2014bba4 lui a1, 0x800
2014bba8 c.or a1, a0
2014bbaa addi a0, s0, 0x280
2014bbae c.jalr a5
2014bbb0 addi s0, s0, 0x280
2014bbb4 lui s8, 0x20202
2014bbb8 c.addi s7, -1
2014bbba beqz s7, 0x12
2014bbbe lw a5, 0x748(s1)
2014bbc2 c.mv a0, s0
2014bbc4 c.jalr a5
2014bbc6 and a0, a0, s3
2014bbca c.bnez a0, 0xac
2014bbcc c.li a5, 5
2014bbce bne s4, a5, 0x82
2014bbd2 lui s3, 0x20201
2014bbd6 lw a5, 0x734(s3)
2014bbda lui s0, 0x188
2014bbde addi a0, s0, -0x780
2014bbe2 addi a1, zero, 0x35
2014bbe6 c.jalr a5

fw 0x2014bb60
2014bb42 c.jr ra
2014bb44 lui a1, 0x20000
2014bb48 c.or a0, a1
2014bb4a lbu a5, 0x25(sp)
2014bb4e beqz a5, 0x114
2014bb52 lui a1, 0x10000
2014bb56 c.or a0, a1
2014bb58 lbu a5, 0x24(sp)
2014bb5c beqz a5, 0x110
2014bb60 lui a1, 0x8000
2014bb64 c.or a1, a0
2014bb66 lui s6, 0x20201
2014bb6a lw a5, 0x73c(s6)
2014bb6e c.mv a0, s0
2014bb70 c.lui s0, 0x11
2014bb72 c.jalr a5
2014bb74 lw a5, 0x748(s1)
2014bb78 addi a0, s0, 0x2b4
2014bb7c addi s7, zero, 0x201
2014bb80 c.jalr a5
2014bb82 lw a5, 0x73c(s6)
2014bb86 slli a1, a0, 0x10
2014bb8a c.srli a1, 0x10
2014bb8c addi a0, s0, 0x2b4
2014bb90 c.jalr a5
2014bb92 lw a5, 0x748(s1)
2014bb96 addi a0, s0, 0x280
2014bb9a lui s3, 0x800
2014bb9e c.jalr a5
2014bba0 lw a5, 0x73c(s6)
2014bba4 lui a1, 0x800
2014bba8 c.or a1, a0
2014bbaa addi a0, s0, 0x280
2014bbae c.jalr a5
2014bbb0 addi s0, s0, 0x280
2014bbb4 lui s8, 0x20202
2014bbb8 c.addi s7, -1
2014bbba beqz s7, 0x12
2014bbbe lw a5, 0x748(s1)
2014bbc2 c.mv a0, s0
2014bbc4 c.jalr a5
2014bbc6 and a0, a0, s3
2014bbca c.bnez a0, 0xac
2014bbcc c.li a5, 5
2014bbce bne s4, a5, 0x82
2014bbd2 lui s3, 0x20201
2014bbd6 lw a5, 0x734(s3)
2014bbda lui s0, 0x188
2014bbde addi a0, s0, -0x780
2014bbe2 addi a1, zero, 0x35
2014bbe6 c.jalr a5
2014bbe8 lw a5, 0x734(s3)
2014bbec addi a1, zero, 0x2d
2014bbf0 addi a0, s0, -0x770
2014bbf4 c.jalr a5

fw 0x2015165e
20151640 c.addi4spn a3, sp, 0x144
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
201516ee c.sw a5, 0x1c(s0)
201516f0 c.lw a5, 0x20(s0)
201516f2 .byte 0x37, 0x07

fw 0x20151704
201516e6 sb zero, 0xb(s0)
201516ea c.and a4, a3
201516ec c.or a5, a4
201516ee c.sw a5, 0x1c(s0)
201516f0 c.lw a5, 0x20(s0)
201516f2 lui a4, 0xffc10
201516f6 addi a4, a4, -0x71
201516fa c.and a5, a4
201516fc c.lui a4, 0x10
201516fe c.or a5, a4
20151700 c.sw a5, 0x20(s0)
20151702 c.lw a5, 0x24(s0)
20151704 lui a4, 0x10000
20151708 addi a4, a4, -0x401
2015170c c.and a5, a4
2015170e lui a4, 0xa0000
20151712 addi a4, a4, 0x400
20151716 c.or a5, a4
20151718 c.sw a5, 0x24(s0)
2015171a lhu a5, 0x2a(s0)
2015171e c.lui a4, 8
20151720 c.addi a4, -3
20151722 c.and a5, a4
20151724 ori a5, a5, 2
20151728 sh a5, 0x2a(s0)
2015172c c.li a5, 0x18
2015172e sb a5, 0x2c(s0)
20151732 c.j -0x122
20151734 c.lw a4, 0(s0)
20151736 lui a3, 0xf0ff0
2015173a addi a3, a3, 0x7ff
2015173e srli a5, a4, 0x18
20151742 c.addi a5, 2
20151744 c.andi a5, 0xf
20151746 c.slli a5, 0x18
20151748 c.lui s1, 6
2015174a c.and a4, a3
2015174c c.or a5, s1
2015174e c.or a5, a4
20151750 c.lw a4, 0x24(s0)
20151752 c.sw a5, 0(s0)
20151754 lui a5, 0xa0000
20151758 c.slli a4, 4
2015175a c.srli a4, 4
2015175c c.or a4, a5
2015175e c.sw a4, 0x24(s0)
20151760 addi a3, sp, 0xf
20151764 c.li a2, 0
20151766 c.li a1, 0
20151768 c.li a0, 0
2015176a jal -0x26824
2015176e lbu a3, 0xf(sp)
20151772 c.lui a4, 0xffff1
20151774 addi a2, zero, 0xf0
20151778 c.lw a5, 4(s0)
2015177a c.addi a4, -1
2015177c bne a3, a2, 0x22
20151780 c.and a5, a4
20151782 c.sw a5, 4(s0)
20151784 lhu a5, 0x28(s0)
20151788 andi a5, a5, -0x200
2015178c sh a5, 0x28(s0)
20151790 c.lw a5, 0x20(s0)
20151792 sb zero, 0xb(s0)
20151796 andi a5, a5, -0x71

fw 0x201529e2
201529c4 c.lwsp s5, 4(sp)
201529c6 c.lwsp s6, 0(sp)
201529c8 c.addi16sp sp, 0x20
201529ca c.jr ra
201529cc c.li a5, 1
201529ce addi s1, s1, 0x7b4
201529d2 lui s2, 0x20201
201529d6 bne a0, a5, 0x70
201529da lw a5, 0x748(s2)
201529de addi a0, zero, 0x74
201529e2 lui s4, 0x8000
201529e6 c.jalr a5
201529e8 lui a1, 0x1000
201529ec c.or a1, a0
201529ee lui a5, 0x20201
201529f2 lw a5, 0x73c(a5)
201529f6 addi a0, zero, 0x74
201529fa c.li s3, 0
201529fc c.jalr a5
201529fe lui s5, 0x4000
20152a02 lui s6, 0x20202
20152a06 lw a5, 0x748(s2)
20152a0a addi a0, zero, 0x74
20152a0e c.jalr a5
20152a10 and s0, a0, s5
20152a14 c.bnez s0, 0x48
20152a16 lui s3, 0x8000
20152a1a lui s5, 0x20202
20152a1e lw a5, 0x748(s2)
20152a22 addi a0, zero, 0x74
20152a26 c.jalr a5
20152a28 and a0, a0, s3
20152a2c beq a0, s4, -0x76
20152a30 c.lw a5, 0(s1)
20152a32 lhu a5, 0xea(a5)
20152a36 bltu a5, s0, 0x30
20152a3a lw a5, 0x2d0(s5)
20152a3e c.li a0, 1
20152a40 c.addi s0, 1
20152a42 c.jalr a5
20152a44 c.j -0x26
20152a46 lw a5, 0x748(s2)
20152a4a addi a0, zero, 0x74
20152a4e c.li s4, 0
20152a50 c.jalr a5
20152a52 lui a1, 0xff000
20152a56 c.addi a1, -1
20152a58 c.and a1, a0
20152a5a c.j -0x6c
20152a5c c.lw a5, 0(s1)
20152a5e lhu a5, 0xea(a5)
20152a62 bgeu a5, s3, 8
20152a66 c.li a0, 0
20152a68 c.j -0xb0
20152a6a lw a5, 0x2d0(s6)
20152a6e c.li a0, 1
20152a70 c.addi s3, 1
20152a72 c.jalr a5
20152a74 c.j -0x6e
20152a76 c.addi sp, -0x20

fw 0x20152a16
201529f8 c.addi4spn s0, sp, 0x384
201529fa c.li s3, 0
201529fc c.jalr a5
201529fe lui s5, 0x4000
20152a02 lui s6, 0x20202
20152a06 lw a5, 0x748(s2)
20152a0a addi a0, zero, 0x74
20152a0e c.jalr a5
20152a10 and s0, a0, s5
20152a14 c.bnez s0, 0x48
20152a16 lui s3, 0x8000
20152a1a lui s5, 0x20202
20152a1e lw a5, 0x748(s2)
20152a22 addi a0, zero, 0x74
20152a26 c.jalr a5
20152a28 and a0, a0, s3
20152a2c beq a0, s4, -0x76
20152a30 c.lw a5, 0(s1)
20152a32 lhu a5, 0xea(a5)
20152a36 bltu a5, s0, 0x30
20152a3a lw a5, 0x2d0(s5)
20152a3e c.li a0, 1
20152a40 c.addi s0, 1
20152a42 c.jalr a5
20152a44 c.j -0x26
20152a46 lw a5, 0x748(s2)
20152a4a addi a0, zero, 0x74
20152a4e c.li s4, 0
20152a50 c.jalr a5
20152a52 lui a1, 0xff000
20152a56 c.addi a1, -1
20152a58 c.and a1, a0
20152a5a c.j -0x6c
20152a5c c.lw a5, 0(s1)
20152a5e lhu a5, 0xea(a5)
20152a62 bgeu a5, s3, 8
20152a66 c.li a0, 0
20152a68 c.j -0xb0
20152a6a lw a5, 0x2d0(s6)
20152a6e c.li a0, 1
20152a70 c.addi s3, 1
20152a72 c.jalr a5
20152a74 c.j -0x6e
20152a76 c.addi sp, -0x20
20152a78 c.swsp s0, 0x18(sp)
20152a7a c.swsp ra, 0x1c(sp)
20152a7c c.swsp s1, 0x14(sp)
20152a7e c.swsp s2, 0x10(sp)
20152a80 c.swsp s3, 0xc(sp)
20152a82 c.swsp s4, 8(sp)
20152a84 c.swsp s5, 4(sp)
20152a86 c.swsp s6, 0(sp)
20152a88 c.mv s0, a0
20152a8a c.beqz a0, 0x8a
20152a8c c.li a5, 1
20152a8e bne a0, a5, 0x92
20152a92 lui s2, 0x20
20152a96 lui s1, 0x2000
20152a9a c.li s5, 0x1f
20152a9c lui s4, 0x20201
20152aa0 lui s3, 0x20201
20152aa4 lw s6, 0x73c(s4)
20152aa8 lw a5, 0x748(s3)

fw 0x20152e4c
20152e2e c.addi4spn s1, sp, 0x184
20152e30 c.jalr a5
20152e32 sw a0, 0x18(s2)
20152e36 lui s1, 0x20202
20152e3a lui s2, 0x20202
20152e3e addi s2, s2, 0x5a4
20152e42 addi s1, s1, 0x680
20152e46 c.li s3, 0
20152e48 addi s4, s4, 0x7b4
20152e4c lui s7, 0x10000
20152e50 c.li s6, 8
20152e52 lw a5, 0x748(s0)
20152e56 lhu a0, 0(s2)
20152e5a c.jalr a5
20152e5c and a0, a0, s7
20152e60 c.beqz a0, 0x1c
20152e62 lw a5, 0x748(s0)
20152e66 lhu a0, 0(s1)
20152e6a lw s5, 0(s4)
20152e6e c.jalr a5
20152e70 addi a5, s3, 4
20152e74 c.slli a5, 2
20152e76 c.add s5, a5
20152e78 sw a0, 0xc(s5)
20152e7c c.addi s3, 1
20152e7e c.addi s2, 2
20152e80 c.addi s1, 2
20152e82 bne s3, s6, -0x30
20152e86 c.lwsp ra, 0x2c(sp)
20152e88 c.lwsp s0, 0x28(sp)
20152e8a c.lwsp s1, 0x24(sp)
20152e8c c.lwsp s2, 0x20(sp)
20152e8e c.lwsp s3, 0x1c(sp)
20152e90 c.lwsp s4, 0x18(sp)
20152e92 c.lwsp s5, 0x14(sp)
20152e94 c.lwsp s6, 0x10(sp)
20152e96 c.lwsp s7, 0xc(sp)
20152e98 c.addi16sp sp, 0x30
20152e9a c.jr ra
20152e9c c.addi sp, -0x20
20152e9e lui a5, 0x20210
20152ea2 c.swsp s1, 0x14(sp)
20152ea4 lw s1, 0x7b4(a5)
20152ea8 addi a5, zero, 0x54
20152eac mul a5, a0, a5
20152eb0 lui a4, 0x20202
20152eb4 c.swsp s3, 0xc(sp)
20152eb6 addi a4, a4, 0x678
20152eba slli s3, a0, 2
20152ebe c.add a4, s3
20152ec0 c.swsp s2, 0x10(sp)
20152ec2 lui s2, 0x20201
20152ec6 lw a3, 0x73c(s2)
20152eca c.swsp s0, 0x18(sp)
20152ecc c.add s1, a5
20152ece c.lw a1, 0x3c(s1)
20152ed0 c.mv s0, a0
20152ed2 c.lw a0, 0(a4)
20152ed4 c.swsp ra, 0x1c(sp)
20152ed6 c.swsp s4, 8(sp)
20152ed8 c.swsp s5, 4(sp)
20152eda c.swsp s6, 0(sp)
20152edc c.jalr a3
20152ede lui a5, 0x20202

fw 0x201530ae
20153090 c.lw a1, 0x18(a4)
20153092 lui s1, 0x20202
20153096 lui s0, 0x20202
2015309a c.jalr a5
2015309c addi s1, s1, 0x5a4
201530a0 addi s0, s0, 0x680
201530a4 c.li s3, 0
201530a6 addi s6, s6, 0x7b4
201530aa lui s8, 0x20201
201530ae lui s9, 0x10000
201530b2 c.li s7, 8
201530b4 lw a5, 0x748(s8)
201530b8 lhu a0, 0(s1)
201530bc c.jalr a5
201530be and a0, a0, s9
201530c2 c.beqz a0, 0x1a
201530c4 lw a5, 0(s6)
201530c8 addi a4, s3, 4
201530cc c.slli a4, 2
201530ce c.add a5, a4
201530d0 lw a3, 0x73c(s2)
201530d4 c.lw a1, 0xc(a5)
201530d6 lhu a0, 0(s0)
201530da c.jalr a3
201530dc c.addi s3, 1
201530de c.addi s1, 2
201530e0 c.addi s0, 2
201530e2 bne s3, s7, -0x2e
201530e6 lw a5, 0x744(s4)
201530ea c.lui s0, 8
201530ec addi a0, s0, -0x7f0
201530f0 c.jalr a5
201530f2 andi a1, a0, -0x101
201530f6 lw a5, 0x738(s5)
201530fa c.slli a1, 0x10
201530fc c.srli a1, 0x10
201530fe addi a0, s0, -0x7f0
20153102 c.jalr a5
20153104 c.li s1, 1
20153106 c.j -0xfc
20153108 c.addi sp, -0x20
2015310a c.swsp s1, 0x14(sp)
2015310c lui s1, 0x20210
20153110 c.swsp s0, 0x18(sp)
20153112 c.swsp s5, 4(sp)
20153114 lui s0, 0x20201
20153118 addi s5, s1, 0x7b4
2015311c lw a5, 0x748(s0)
20153120 c.swsp s2, 0x10(sp)
20153122 lw s2, 8(s5)
20153126 c.swsp s4, 8(sp)
20153128 c.lui s4, 8
2015312a c.swsp ra, 0x1c(sp)
2015312c c.swsp s3, 0xc(sp)
2015312e addi a0, s4, 0x400
20153132 c.lui s3, 2
20153134 c.jalr a5
20153136 c.add s2, s3
20153138 sw a0, -0x38(s2)
2015313c lw a5, 0x748(s0)
20153140 lw s2, 8(s5)

fw 0x2015444e
20154430 addi a0, s2, 0x124
20154434 c.jalr a5
20154436 andi s0, s0, 0x3ff
2015443a srli a0, s0, 5
2015443e c.or s0, a0
20154440 lui a4, 0x20000
20154444 c.andi s0, 0x1f
20154446 c.and a4, s1
20154448 c.mv a5, s0
2015444a c.bnez a4, 4
2015444c c.li a5, 0
2015444e lui a0, 0x10000
20154452 c.and s1, a0
20154454 c.beqz s1, 6
20154456 c.slli s0, 5
20154458 c.or a5, s0
2015445a lui a4, 0x20210
2015445e lw a4, 0x7b4(a4)
20154462 c.lwsp ra, 0xc(sp)
20154464 c.lwsp s0, 8(sp)
20154466 lhu a3, 0x12(a4)
2015446a c.lwsp s1, 4(sp)
2015446c c.lwsp s2, 0(sp)
2015446e c.or a5, a3
20154470 sh a5, 0x12(a4)
20154474 c.addi sp, 0x10
20154476 c.jr ra
20154478 lui a5, 0x2020e
2015447c lw a5, 0x52c(a5)
20154480 slli a4, a0, 2
20154484 c.addi sp, -0x10
20154486 c.add a5, a4
20154488 c.swsp s0, 8(sp)
2015448a c.lw s0, 0(a5)
2015448c c.swsp ra, 0xc(sp)
2015448e lbu a5, 0x10(s0)
20154492 ori a5, a5, 4
20154496 sb a5, 0x10(s0)
2015449a lui a5, 0x20202
2015449e lw a5, -0x694(a5)
201544a2 c.jalr a5
201544a4 lbu a5, 0x10(s0)
201544a8 c.lwsp ra, 0xc(sp)
201544aa c.andi a5, -5
201544ac sb a5, 0x10(s0)
201544b0 c.lwsp s0, 8(sp)
201544b2 c.addi sp, 0x10
201544b4 c.jr ra
201544b6 lui a5, 0x2020e
201544ba lw a4, 0x52c(a5)
201544be slli a5, a0, 2
201544c2 c.addi sp, -0x10
201544c4 c.add a5, a4
201544c6 c.swsp s0, 8(sp)
201544c8 c.lw s0, 0(a5)
201544ca c.swsp ra, 0xc(sp)
201544cc lbu a3, 0x55(s0)
201544d0 lbu a5, 0x10(s0)
201544d4 c.andi a3, 2
201544d6 ori a5, a5, 4
201544da c.beqz a3, 0xa
201544dc lbu a3, 0x5a(s0)
201544e0 c.andi a3, 2
201544e2 c.beqz a3, 0x26

fw 0x20155d48
20155d2a c.fld fs0, 0x40(s0)
20155d2c c.mv a1, s0
20155d2e c.lwsp s0, 8(sp)
20155d30 c.lwsp ra, 0xc(sp)
20155d32 lw a5, 0x73c(a5)
20155d36 addi a0, zero, 0x10c
20155d3a c.addi sp, 0x10
20155d3c c.jr a5
20155d3e c.addi16sp sp, -0x30
20155d40 c.swsp s1, 0x24(sp)
20155d42 c.swsp s2, 0x20(sp)
20155d44 c.lui s1, 8
20155d46 c.swsp s3, 0x1c(sp)
20155d48 lui s2, 0x10000
20155d4c lui s3, 0x3f0
20155d50 c.swsp s0, 0x28(sp)
20155d52 c.swsp s4, 0x18(sp)
20155d54 c.swsp s5, 0x14(sp)
20155d56 c.swsp s6, 0x10(sp)
20155d58 c.swsp s7, 0xc(sp)
20155d5a c.swsp ra, 0x2c(sp)
20155d5c c.li s0, 2
20155d5e lui s4, 0x20201
20155d62 addi s6, s1, 0x430
20155d66 c.addi s2, -1
20155d68 addi s7, s1, 0x434
20155d6c addi s3, s3, 0x3f
20155d70 c.li s5, 1
20155d72 lw a5, 0x748(s4)
20155d76 c.mv a0, s6
20155d78 c.jalr a5
20155d7a and a5, a0, s2
20155d7e c.mv a1, a0
20155d80 beq a5, s2, 0x24
20155d84 addi a0, s1, 0x430
20155d88 c.jal -0x7c
20155d8a c.li s0, 0
20155d8c c.lwsp ra, 0x2c(sp)
20155d8e c.mv a0, s0
20155d90 c.lwsp s0, 0x28(sp)
20155d92 c.lwsp s1, 0x24(sp)
20155d94 c.lwsp s2, 0x20(sp)
20155d96 c.lwsp s3, 0x1c(sp)
20155d98 c.lwsp s4, 0x18(sp)
20155d9a c.lwsp s5, 0x14(sp)
20155d9c c.lwsp s6, 0x10(sp)
20155d9e c.lwsp s7, 0xc(sp)
20155da0 c.addi16sp sp, 0x30
20155da2 c.jr ra
20155da4 lw a5, 0x748(s4)
20155da8 c.mv a0, s7
20155daa c.jalr a5
20155dac and a5, a0, s3
20155db0 c.mv a1, a0
20155db2 beq a5, s3, 0xa
20155db6 addi a0, s1, 0x434
20155dba c.j -0x32
20155dbc beq s0, s5, -0x30
20155dc0 c.li s0, 1
20155dc2 c.j -0x50
20155dc4 lui a5, 0x20210
20155dc8 c.addi16sp sp, -0x30
20155dca addi a4, a5, 0x7b4
20155dce c.swsp s1, 0x24(sp)
20155dd0 c.lw s1, 0xc(a4)
20155dd2 c.swsp s0, 0x28(sp)
20155dd4 c.swsp s2, 0x20(sp)
20155dd6 c.swsp s3, 0x1c(sp)
20155dd8 c.swsp s4, 0x18(sp)
20155dda c.swsp ra, 0x2c(sp)
20155ddc .byte 0x13, 0x89

fw 0x2015750a
201574ec c.mv s0, a0
201574ee lui a1, 0x30000
201574f2 addi a0, s3, 0x124
201574f6 c.jalr a5
201574f8 andi a5, s1, 0x1f
201574fc c.beqz a5, 0x2c
201574fe lui a1, 0x20000
20157502 c.or a1, s0
20157504 c.srli s1, 5
20157506 c.andi s1, 0x1f
20157508 c.beqz s1, 0x2a
2015750a lui a0, 0x10000
2015750e c.or a1, a0
20157510 c.lwsp s0, 0x18(sp)
20157512 lw a5, 0x73c(s2)
20157516 c.lwsp ra, 0x1c(sp)
20157518 c.lwsp s1, 0x14(sp)
2015751a c.lwsp s2, 0x10(sp)
2015751c c.lwsp s3, 0xc(sp)
2015751e c.lui a0, 0xa
20157520 addi a0, a0, 0x120
20157524 c.addi16sp sp, 0x20
20157526 c.jr a5
20157528 lui a1, 0xe0000
2015752c c.addi a1, -1
2015752e c.and a1, s0
20157530 c.j -0x2c
20157532 lui a0, 0xf0000
20157536 c.addi a0, -1
20157538 c.and a1, a0
2015753a c.j -0x2a
2015753c lui a5, 0x2020e
20157540 lw a5, 0x52c(a5)
20157544 c.slli a0, 2
20157546 c.addi sp, -0x10
20157548 c.add a5, a0
2015754a c.lw a5, 0(a5)
2015754c c.swsp s1, 4(sp)
2015754e c.swsp s2, 0(sp)
20157550 c.swsp ra, 0xc(sp)
20157552 c.swsp s0, 8(sp)
20157554 lbu s0, 1(a5)
20157558 c.li s1, 5
2015755a c.lui a0, 0xa
2015755c mul s0, s0, s1
20157560 lbu s1, 2(a5)
20157564 lui a5, 0x20201
20157568 lw a5, 0x744(a5)
2015756c addi a0, a0, -0x5ec
20157570 c.mv s2, a1
20157572 c.jalr a5
20157574 c.li a5, 1
20157576 c.add s0, s1
20157578 andi s0, s0, 0xff
2015757c sra a4, a0, s0
20157580 c.andi a4, 1
20157582 bne s2, a5, 0x6a
20157586 c.bnez a4, 0x7a
20157588 sll s0, s2, s0
2015758c c.or s0, a0
2015758e c.slli s0, 0x10
20157590 c.lui a5, 8
20157592 c.srli s0, 0x10
20157594 c.or s0, a5
20157596 lui a5, 0x20201
2015759a lw a5, 0x738(a5)
2015759e c.lui s2, 0xa