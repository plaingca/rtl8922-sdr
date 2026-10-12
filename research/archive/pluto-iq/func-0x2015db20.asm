2015db20 c.jr ra
2015db22 c.jr ra
2015db24 c.jr ra
2015db26 c.jr ra
2015db28 c.jr ra
2015db2a c.jr ra
2015db2c c.jr ra
2015db2e c.li a0, 1
2015db30 c.jr ra
2015db32 c.jr ra
2015db34 c.jr ra
2015db36 c.li a0, 1
2015db38 c.jr ra
2015db3a c.jr ra
2015db3c c.jr ra
2015db3e c.li a0, 0
2015db40 c.jr ra
2015db42 c.li a0, 1
2015db44 c.jr ra
2015db46 c.li a0, 1
2015db48 c.jr ra
2015db4a c.jr ra
2015db4c c.li a0, 1
2015db4e c.jr ra
2015db50 c.li a0, 1
2015db52 c.jr ra
2015db54 c.li a0, 1
2015db56 c.jr ra
2015db58 c.li a0, 1
2015db5a c.jr ra
2015db5c lui a5, 0x20203
2015db60 lw a5, 0x58c(a5)
2015db64 c.addi16sp sp, -0x30
2015db66 c.swsp s1, 0x24(sp)
2015db68 c.lw s1, 0x18(a5)
2015db6a c.lw a5, 0x10(a1)
2015db6c c.swsp s0, 0x28(sp)
2015db6e c.swsp s2, 0x20(sp)
2015db70 srli a4, a5, 8
2015db74 c.andi a4, 7
2015db76 c.swsp ra, 0x2c(sp)
2015db78 c.swsp s3, 0x1c(sp)
2015db7a c.swsp s4, 0x18(sp)
2015db7c c.mv s0, a0
2015db7e addi s2, a4, 0xf
2015db82 c.bnez a4, 8
2015db84 andi a3, a5, 0xf
2015db88 c.mv s2, a3
2015db8a c.srli a5, 0xc
2015db8c c.andi a5, 0xf
2015db8e c.li a4, 0xa
2015db90 bltu a4, a5, 0xe6
2015db94 lui a4, 0x20211
2015db98 c.slli a5, 2
2015db9a addi a4, a4, 0x174
2015db9e c.add a5, a4
2015dba0 c.lw a5, 0(a5)
2015dba2 c.jr a5
2015dba4 c.li a5, 6
2015dba6 addi a4, zero, 0x78
2015dbaa mul a4, s0, a4
2015dbae c.lui a2, 0xfffff
2015dbb0 addi a2, a2, 0xff
2015dbb4 mul a5, s2, a5
2015dbb8 c.add a5, a4
2015dbba c.add a5, s1
2015dbbc lhu a4, 0x324(a5)
2015dbc0 srli a3, a4, 8
2015dbc4 c.addi a3, 1
2015dbc6 c.andi a3, 0xf
2015dbc8 c.slli a3, 8
2015dbca c.and a4, a2
2015dbcc c.or a4, a3
2015dbce c.j 0x2a
2015dbd0 c.li a5, 6
2015dbd2 addi a4, zero, 0x78
2015dbd6 mul a4, s0, a4
2015dbda mul a5, s2, a5
2015dbde c.add a5, a4
2015dbe0 c.add a5, s1
2015dbe2 lhu a4, 0x320(a5)
2015dbe6 addi a3, a4, 1
2015dbea c.andi a3, 0xf
2015dbec c.andi a4, -0x10
2015dbee c.or a4, a3
2015dbf0 sh a4, 0x320(a5)
2015dbf4 lhu a4, 0x324(a5)
2015dbf8 c.lui a3, 1
2015dbfa c.add a4, a3
2015dbfc c.j 0x76
2015dbfe c.li a5, 6
2015dc00 addi a4, zero, 0x78
2015dc04 mul a4, s0, a4
2015dc08 mul a5, s2, a5
2015dc0c c.add a5, a4
2015dc0e c.add a5, s1
2015dc10 lhu a3, 0x320(a5)
2015dc14 srli a4, a3, 4
2015dc18 c.addi a4, 1
2015dc1a c.andi a4, 0xf
2015dc1c c.slli a4, 4
2015dc1e andi a3, a3, -0xf1
2015dc22 c.j -0x34
2015dc24 c.li a5, 6
2015dc26 addi a4, zero, 0x78
2015dc2a mul a4, s0, a4
2015dc2e c.lui a2, 0xfffff
2015dc30 addi a2, a2, 0xff
2015dc34 mul a5, s2, a5
2015dc38 c.add a5, a4
2015dc3a c.add a5, s1
2015dc3c lhu a3, 0x320(a5)
2015dc40 srli a4, a3, 8
2015dc44 c.addi a4, 1
2015dc46 c.andi a4, 0xf
2015dc48 c.slli a4, 8
2015dc4a c.and a3, a2