
PACKET 0x20121cb8
20121c90 c.swsp s4, 0x38(sp)
20121c92 lw s4, 4(a1)
20121c96 c.swsp s0, 0x48(sp)
20121c98 c.swsp ra, 0x4c(sp)
20121c9a c.swsp s1, 0x44(sp)
20121c9c c.swsp s2, 0x40(sp)
20121c9e c.swsp s3, 0x3c(sp)
20121ca0 c.swsp s5, 0x34(sp)
20121ca2 c.swsp s6, 0x30(sp)
20121ca4 c.swsp s7, 0x2c(sp)
20121ca6 c.swsp s8, 0x28(sp)
20121ca8 c.swsp s9, 0x24(sp)
20121caa c.swsp s10, 0x20(sp)
20121cac c.swsp s11, 0x1c(sp)
20121cae lui a5, 0x20000
20121cb2 c.mv s0, a0
20121cb4 bgeu s4, a5, 0xc
20121cb8 lui a5, 0xa0000
20121cbc or s4, s4, a5
20121cc0 lw s1, 0(s4)
20121cc4 c.li a5, 4
20121cc6 slli s6, s1, 0x12
20121cca srli s6, s6, 0x12
20121cce bgeu a5, s6, 0xae
20121cd2 lui s5, 0x20202
20121cd6 addi s7, s5, 0x420
20121cda slli s2, s0, 2
20121cde c.srli s1, 0xe
20121ce0 c.add s7, s2
20121ce2 lui s3, 0x2020e
20121ce6 c.andi s1, 1
20121ce8 c.li s9, 1
20121cea lw s8, 0(s7)
20121cee addi s5, s5, 0x420
20121cf2 addi s3, s3, -0x24c
20121cf6 bne s1, s9, 0x1b8
20121cfa andi s11, s0, 0xff
20121cfe lui a4, 0x20202
20121d02 beq s8, s1, 0x10
20121d06 lui s10, 0xadadb
20121d0a addi s10, s10, -0x253
20121d0e bne s8, s10, 0x12e
20121d12 add a5, s3, s2
20121d16 c.li s1, 1
20121d18 c.sw s1, 4(a5)
20121d1a lui a5, 0x20202
20121d1e addi a5, a5, 0x454
20121d22 c.add a5, s2
20121d24 sw s4, 0(a5)
20121d28 lw a5, 0x10c(a4)
20121d2c c.mv a2, s4
20121d2e c.mv a1, s4
20121d30 c.mv a0, s11
20121d32 c.jalr a5
20121d34 c.bnez a0, 0x8a
20121d36 c.li a5, 0xe
20121d38 sb a5, 0(sp)
20121d3c lui a5, 0x20211
20121d40 addi a5, a5, 0x43c
20121d44 c.swsp a5, 4(sp)
20121d46 c.swsp zero, 0xc(sp)
20121d48 addi a5, zero, 0x160
20121d4c c.swsp a5, 8(sp)
20121d4e lui a5, 0x20202
20121d52 lw a5, 0x348(a5)
20121d56 c.mv a0, sp

PACKET 0x20122d88
20122d60 c.addi4spn s1, sp, 0x48
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

PACKET 0x20122ee0
20122eb8 lui a5, 0x20202
20122ebc addi a5, a5, 0x438
20122ec0 c.swsp a5, 0x10(sp)
20122ec2 c.add a5, s11
20122ec4 c.swsp a5, 0x14(sp)
20122ec6 c.add s9, s1
20122ec8 lui a5, 0x20202
20122ecc lbu a5, 0x3ed(a5)
20122ed0 bgeu t1, a5, 0x114
20122ed4 lw a5, 4(s2)
20122ed8 lui a4, 0x20000
20122edc bgeu a5, a4, 0xa
20122ee0 lui a4, 0xa0000
20122ee4 c.or a5, a4
20122ee6 lhu a6, 2(a5)
20122eea c.lwsp a5, 0x14(sp)
20122eec c.slli a6, 0x13
20122eee lhu a7, 0(a5)
20122ef2 srli a6, a6, 0x13
20122ef6 bne a6, a7, 0x106
20122efa lui a5, 0x20202
20122efe lw a5, 0x1f8(a5)
20122f02 c.mv a1, s2
20122f04 c.mv a0, s0
20122f06 c.jalr a5
20122f08 c.li a5, 1
20122f0a beq a0, a5, 0x2c
20122f0e lui a5, 0x20201
20122f12 lw a5, 0x6b8(a5)
20122f16 c.li a4, 0
20122f18 addi a3, zero, 0x1b9
20122f1c c.li a2, 2
20122f1e c.lui a0, 1
20122f20 c.li a1, 0
20122f22 c.jalr a5
20122f24 lui a5, 0x20202
20122f28 lw a5, 0x340(a5)
20122f2c lui a1, 0x40
20122f30 c.li a0, 2
20122f32 c.jalr a5
20122f34 c.j -0xb6
20122f36 lui a5, 0x20202
20122f3a lw a5, 0x120(a5)
20122f3e c.mv a0, s0
20122f40 c.jalr a5
20122f42 lw a5, 0(s2)
20122f46 c.lui a4, 0xffffc
20122f48 c.and a5, a4
20122f4a c.lwsp a4, 0x18(sp)
20122f4c c.or a5, a4
20122f4e sw a5, 0(s2)
20122f52 lui a5, 0x30000
20122f56 bltu a0, a5, 8
20122f5a c.slli a0, 3
20122f5c c.srli a0, 3
20122f5e c.lwsp a5, 0x10(sp)
20122f60 sw a0, 4(s2)
20122f64 c.lui a3, 2
20122f66 add a4, a5, s11
20122f6a lhu a5, 0(a4)
20122f6e c.addi a5, 1
20122f70 c.slli a5, 0x10
20122f72 c.srli a5, 0x10
20122f74 bgeu a5, a3, 0x84
20122f78 sh a5, 0(a4)
20122f7c add a5, s7, s3

PACKET 0x2012e79e
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

PACKET 0x2012e8cc
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

PACKET 0x2012e9f8
2012e9d0 c.fld fs0, 0x40(s0)
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

PACKET 0x201516a2
2015167a .byte 0x00, 0x80
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

PACKET 0x2015170e
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
2015179a c.sw a5, 0x20(s0)
2015179c c.j -0x18c
2015179e c.and a5, a4
201517a0 c.or a5, s1
201517a2 sb a3, 0x28(s0)
201517a6 c.sw a5, 4(s0)
201517a8 c.lw a5, 0x28(s0)
201517aa ori a5, a5, 0x100

PACKET 0x20151754
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
2015179a c.sw a5, 0x20(s0)
2015179c c.j -0x18c
2015179e c.and a5, a4
201517a0 c.or a5, s1
201517a2 sb a3, 0x28(s0)
201517a6 c.sw a5, 4(s0)
201517a8 c.lw a5, 0x28(s0)
201517aa ori a5, a5, 0x100
201517ae c.j -0xf0
201517b0 c.lw a5, 4(s0)
201517b2 c.lui a4, 0xffff1
201517b4 c.addi a4, -1
201517b6 c.and a5, a4
201517b8 c.sw a5, 4(s0)
201517ba c.lw a5, 0x20(s0)
201517bc lui a4, 0xb0000
201517c0 sb zero, 0xb(s0)
201517c4 andi a5, a5, -0x71
201517c8 c.sw a5, 0x20(s0)
201517ca c.lw a5, 0x24(s0)
201517cc c.slli a5, 4
201517ce c.srli a5, 4
201517d0 c.or a5, a4
201517d2 c.sw a5, 0x24(s0)
201517d4 lhu a5, 0x28(s0)
201517d8 andi a5, a5, -0x200
201517dc sh a5, 0x28(s0)
201517e0 c.j -0x1d0
201517e2 lui a5, 0x20203
201517e6 lw a5, 0x584(a5)
201517ea c.addi16sp sp, -0x60
201517ec c.swsp ra, 0x5c(sp)
201517ee c.lw a4, 0x20(a5)
201517f0 c.li a5, 1
201517f2 .byte 0xb3, 0x97

PACKET 0x20157dd6
20157dae c.lwsp s2, 0x30(sp)
20157db0 c.lwsp s3, 0x2c(sp)
20157db2 c.lwsp s4, 0x28(sp)
20157db4 c.addi16sp sp, 0x40
20157db6 c.jr ra
20157db8 c.li a5, 0x12
20157dba lui s0, 0x20202
20157dbe sb a5, 0x15(sp)
20157dc2 lw a5, -0x324(s0)
20157dc6 c.addi4spn a1, sp, 0xc
20157dc8 c.li a0, 0
20157dca c.jalr a5
20157dcc c.bnez a0, 0x70
20157dce c.lui s1, 1
20157dd0 c.addi s1, -1
20157dd2 lui s3, 0x7ff8
20157dd6 lui s4, 0xa0000
20157dda lhu a4, 0x1a(sp)
20157dde bne a4, s1, 0x74
20157de2 c.li s0, 1
20157de4 c.j -0x3e
20157de6 c.li a5, 0x14
20157de8 c.j -0x2e
20157dea c.li a4, 1
20157dec bne s0, a4, 0x3a
20157df0 c.li a4, 4
20157df2 sb a4, 0x14(sp)
20157df6 c.beqz a1, 0x28
20157df8 beq a1, s0, 0x2a
20157dfc lui a4, 0x20201
20157e00 lui a3, 0x40000
20157e04 lw a6, 0x6a8(a4)
20157e08 addi a3, a3, 0x4b4
20157e0c c.li a4, 1
20157e0e c.lui a0, 1
20157e10 c.li a2, 2
20157e12 addi a0, a0, -0x800
20157e16 c.li a1, 0
20157e18 c.jalr a6
20157e1a c.li s0, 0
20157e1c c.j -0x76
20157e1e c.li a5, 0x1a
20157e20 c.j -0x66
20157e22 c.li a5, 0x1c
20157e24 c.j -0x6a
20157e26 lui a5, 0x20201
20157e2a lui a3, 0x40000
20157e2e lw a6, 0x6a8(a5)
20157e32 c.li a4, 1
20157e34 c.mv a5, s0
20157e36 addi a3, a3, 0x4b5
20157e3a c.j -0x2c
20157e3c lui a5, 0x20201
20157e40 lw a6, 0x6a8(a5)
20157e44 c.li a5, 0
20157e46 lui a3, 0x40000
20157e4a c.li a4, 1
20157e4c addi a3, a3, 0x4b6
20157e50 c.j -0x42
20157e52 slli a5, a4, 0xf
20157e56 and a5, a5, s3
20157e5a or a5, a5, s4
20157e5e lbu a5, 0xb(a5)
20157e62 beq a5, s2, -0x48
20157e66 lw a5, -0x324(s0)
20157e6a sh a4, 0x10(sp)
20157e6e c.addi4spn a1, sp, 0xc
20157e70 c.li a0, 1
20157e72 c.jalr a5
20157e74 c.beqz a0, -0x9a

PACKET 0x2015a0ac
2015a084 c.addi ra, 0x18
2015a086 c.mv s0, a0
2015a088 c.bnez s1, 0x4a
2015a08a sb zero, 0x15(sp)
2015a08e lui s2, 0x20202
2015a092 lw a5, -0x324(s2)
2015a096 c.addi4spn a1, sp, 0xc
2015a098 c.li a0, 0
2015a09a c.jalr a5
2015a09c andi a0, a0, 0xff
2015a0a0 bnez a0, 0xf2
2015a0a4 c.lui s3, 1
2015a0a6 c.addi s3, -1
2015a0a8 lui s6, 0x7ff8
2015a0ac lui s7, 0xa8000
2015a0b0 c.li s8, 3
2015a0b2 lui s9, 0x3f000
2015a0b6 addi s10, zero, 0x80
2015a0ba lhu a1, 0x1a(sp)
2015a0be bne a1, s3, 0x4a
2015a0c2 lui a5, 0x20201
2015a0c6 lw a5, 0x130(a5)
2015a0ca c.mv a0, s0
2015a0cc c.li s11, 1
2015a0ce c.jalr a5
2015a0d0 c.j 0x18
2015a0d2 bne s1, a5, 0xa
2015a0d6 sb s1, 0x15(sp)
2015a0da c.j -0x4c
2015a0dc lui a5, 0x20201
2015a0e0 lw a5, 0x130(a5)
2015a0e4 c.jalr a5
2015a0e6 c.li s11, 0
2015a0e8 c.lwsp ra, 0x5c(sp)
2015a0ea c.lwsp s0, 0x58(sp)
2015a0ec c.lwsp s1, 0x54(sp)
2015a0ee c.lwsp s2, 0x50(sp)
2015a0f0 c.lwsp s3, 0x4c(sp)
2015a0f2 c.lwsp s4, 0x48(sp)
2015a0f4 c.lwsp s5, 0x44(sp)
2015a0f6 c.lwsp s6, 0x40(sp)
2015a0f8 c.lwsp s7, 0x3c(sp)
2015a0fa c.lwsp s8, 0x38(sp)
2015a0fc c.lwsp s9, 0x34(sp)
2015a0fe c.lwsp s10, 0x30(sp)
2015a100 c.mv a0, s11
2015a102 c.lwsp s11, 0x2c(sp)
2015a104 c.addi16sp sp, 0x60
2015a106 c.jr ra
2015a108 slli a5, a1, 0xf
2015a10c and a5, a5, s6
2015a110 or a2, a5, s7
2015a114 c.lw a3, 0(a2)
2015a116 sb s8, 6(a2)
2015a11a and a5, a3, s9
2015a11e c.bnez a5, 0x52
2015a120 addi a6, zero, 0x28
2015a124 bltz a3, 6
2015a128 c.li a6, 0x18
2015a12a srli a0, a3, 0xf
2015a12e srli a4, a3, 0x13
2015a132 c.andi a4, 0x18
2015a134 andi a5, a0, 0x18
2015a138 c.add a5, a4
2015a13a andi a4, a0, 0x60
2015a13e c.add a5, a4
2015a140 c.srli a3, 0xd
2015a142 c.add a5, a6
2015a144 c.andi a3, 6
2015a146 c.add a5, a2
2015a148 c.add a5, a3
2015a14a .byte 0x83, 0xd7

PACKET 0x2015e518
2015e4f0 c.jalr a4
2015e4f2 c.beqz a0, 0x22
2015e4f4 lui a5, 0x20201
2015e4f8 lw a5, 0x130(a5)
2015e4fc c.mv a0, s9
2015e4fe c.jalr a5
2015e500 lui a5, 0x20201
2015e504 lui a3, 0x40000
2015e508 lw a5, 0x6a8(a5)
2015e50c c.li a4, 0
2015e50e addi a3, a3, 0x203
2015e512 c.j -0x232
2015e514 lhu a0, 0x38(sp)
2015e518 lui s10, 0xa8000
2015e51c c.mv a2, s6
2015e51e c.slli a0, 0xf
2015e520 or a0, a0, s10
2015e524 addi a1, s11, 0x80
2015e528 c.addi a0, 0x18
2015e52a jal -0x19dce
2015e52e lhu s7, 0x38(sp)
2015e532 c.li a2, 0x18
2015e534 c.li a1, 0
2015e536 c.slli s7, 0xf
2015e538 or s7, s7, s10
2015e53c c.mv a0, s7
2015e53e jal -0x19dd8
2015e542 lhu a4, 0x38(sp)
2015e546 sw s6, 0x10(s7)
2015e54a sh a4, 0x140(s1)
2015e54e c.j -0x22c
2015e550 c.li a5, 1
2015e552 bne s4, a5, 0x12
2015e556 c.lui s0, 0x10
2015e558 beqz s2, 6
2015e55c c.lui s0, 0x14
2015e55e addi s0, s0, 0x440
2015e562 c.j -0x164
2015e564 c.li a5, 2
2015e566 bne s4, a5, 0x12
2015e56a c.lui s0, 0x10
2015e56c beqz s2, 6
2015e570 c.lui s0, 0x14
2015e572 addi s0, s0, 0x480
2015e576 c.j -0x178
2015e578 c.li a5, 3
2015e57a bne s4, a5, 0x12
2015e57e c.lui s0, 0x10
2015e580 beqz s2, 6
2015e584 c.lui s0, 0x14
2015e586 addi s0, s0, 0x4c0
2015e58a c.j -0x18c
2015e58c c.lui s0, 0x10
2015e58e beqz s2, 6
2015e592 c.lui s0, 0x14
2015e594 addi s0, s0, 0x500
2015e598 c.j -0x19a
2015e59a c.addi sp, -0x20
2015e59c c.swsp s4, 8(sp)
2015e59e c.swsp s5, 4(sp)
2015e5a0 c.swsp ra, 0x1c(sp)
2015e5a2 c.swsp s0, 0x18(sp)
2015e5a4 c.swsp s1, 0x14(sp)
2015e5a6 c.swsp s2, 0x10(sp)
2015e5a8 c.swsp s3, 0xc(sp)
2015e5aa c.swsp s6, 0(sp)
2015e5ac c.mv s4, a3
2015e5ae c.mv s5, a4
2015e5b0 c.bnez a2, 0x9a
2015e5b2 c.li a5, 4
2015e5b4 bltu a5, a1, 0x14c

PACKET 0x2015e8c4
2015e89c c.li a1, 0
2015e89e c.jalr a6
2015e8a0 c.li a0, 1
2015e8a2 c.lwsp ra, 0x8c(sp)
2015e8a4 c.lwsp s0, 0x88(sp)
2015e8a6 c.lwsp s1, 0x84(sp)
2015e8a8 c.lwsp s2, 0x80(sp)
2015e8aa c.lwsp s3, 0x7c(sp)
2015e8ac c.lwsp s4, 0x78(sp)
2015e8ae c.lwsp s5, 0x74(sp)
2015e8b0 c.lwsp s6, 0x70(sp)
2015e8b2 c.lwsp s7, 0x6c(sp)
2015e8b4 c.lwsp s8, 0x68(sp)
2015e8b6 c.lwsp s9, 0x64(sp)
2015e8b8 c.lwsp s10, 0x60(sp)
2015e8ba c.lwsp s11, 0x5c(sp)
2015e8bc c.addi16sp sp, 0x90
2015e8be c.jr ra
2015e8c0 lhu a5, 0x28(sp)
2015e8c4 lui a3, 0xa0000
2015e8c8 lhu a2, 0x26(sp)
2015e8cc c.slli a5, 0xf
2015e8ce c.or a5, a3
2015e8d0 c.swsp a5, 0x14(sp)
2015e8d2 c.lwsp a0, 0x14(sp)
2015e8d4 c.li a1, 0
2015e8d6 jal -0x1a170
2015e8da c.lwsp a5, 0x14(sp)
2015e8dc lhu a6, 0x230(s2)
2015e8e0 addi a5, a5, 0x48
2015e8e4 c.swsp a5, 0x18(sp)
2015e8e6 c.li a5, 0x14
2015e8e8 mul a5, s0, a5
2015e8ec c.add a5, s1
2015e8ee c.add a5, s6
2015e8f0 lbu a7, 0x5aa(a5)
2015e8f4 beqz a7, 0x1a
2015e8f8 lbu a3, 0x5fa(a5)
2015e8fc c.li a5, 1
2015e8fe bne a3, a5, 0x10
2015e902 addi a5, a6, 0x10
2015e906 slli a6, a5, 0x10
2015e90a srli a6, a6, 0x10
2015e90e c.li a5, 0x14
2015e910 mul a5, s0, a5
2015e914 c.lwsp a2, 0x14(sp)
2015e916 c.lw a3, 0(a2)
2015e918 c.andi a3, -4
2015e91a c.add a5, s1
2015e91c c.add a5, s6
2015e91e lbu a5, 0x78(a5)
2015e922 andi a1, a5, 3
2015e926 c.or a3, a1
2015e928 c.sw a3, 0(a2)
2015e92a c.lwsp a2, 0x14(sp)
2015e92c andi a3, a5, 0xc
2015e930 c.lui a1, 0xffffc
2015e932 c.lw a5, 0(a2)
2015e934 c.andi a5, -0x1d
2015e936 c.or a5, a3
2015e938 c.sw a5, 0(a2)
2015e93a c.lwsp a3, 0x14(sp)
2015e93c c.lw a5, 0(a3)
2015e93e andi a5, a5, -0x81
2015e942 c.sw a5, 0(a3)
2015e944 c.lwsp a3, 0x14(sp)
2015e946 c.lw a5, 0(a3)
2015e948 ori a5, a5, 0x200
2015e94c c.sw a5, 0(a3)
2015e94e c.lwsp a2, 0x14(sp)
2015e950 lui a3, 0xa0000
2015e954 c.addi a3, -1
2015e956 c.lw a5, 0(a2)
2015e958 c.and a5, a3
2015e95a lui a3, 0x40000
2015e95e c.or a5, a3
2015e960 c.sw a5, 0(a2)
2015e962 c.lwsp a3, 0x14(sp)

PACKET 0x2015e950
2015e928 c.sw a3, 0(a2)
2015e92a c.lwsp a2, 0x14(sp)
2015e92c andi a3, a5, 0xc
2015e930 c.lui a1, 0xffffc
2015e932 c.lw a5, 0(a2)
2015e934 c.andi a5, -0x1d
2015e936 c.or a5, a3
2015e938 c.sw a5, 0(a2)
2015e93a c.lwsp a3, 0x14(sp)
2015e93c c.lw a5, 0(a3)
2015e93e andi a5, a5, -0x81
2015e942 c.sw a5, 0(a3)
2015e944 c.lwsp a3, 0x14(sp)
2015e946 c.lw a5, 0(a3)
2015e948 ori a5, a5, 0x200
2015e94c c.sw a5, 0(a3)
2015e94e c.lwsp a2, 0x14(sp)
2015e950 lui a3, 0xa0000
2015e954 c.addi a3, -1
2015e956 c.lw a5, 0(a2)
2015e958 c.and a5, a3
2015e95a lui a3, 0x40000
2015e95e c.or a5, a3
2015e960 c.sw a5, 0(a2)
2015e962 c.lwsp a3, 0x14(sp)
2015e964 lui a2, 0x400
2015e968 c.lw a5, 0(a3)
2015e96a c.or a5, a2
2015e96c c.sw a5, 0(a3)
2015e96e c.lwsp a2, 0x14(sp)
2015e970 slli a5, a6, 0x12
2015e974 srli a3, a5, 0x12
2015e978 c.lw a5, 8(a2)
2015e97a c.and a5, a1
2015e97c c.or a5, a3
2015e97e c.sw a5, 8(a2)
2015e980 c.li a5, 0x18
2015e982 c.bnez s0, 4
2015e984 c.li a5, 0x10
2015e986 c.li s8, 0x14
2015e988 mul s8, s0, s8
2015e98c c.lwsp a1, 0x14(sp)
2015e98e slli a3, a5, 0x11
2015e992 lui a2, 0xff820
2015e996 c.lw a5, 8(a1)
2015e998 c.addi a2, -1
2015e99a c.and a5, a2
2015e99c c.or a5, a3
2015e99e c.sw a5, 8(a1)
2015e9a0 c.add s8, s1
2015e9a2 c.add s8, s6
2015e9a4 c.lwsp a5, 0x14(sp)
2015e9a6 lbu a0, 0x50(s8)
2015e9aa c.lwsp a2, 0x14(sp)
2015e9ac sb a0, 0xb(a5)
2015e9b0 andi a5, s4, 7
2015e9b4 slli a3, a5, 4
2015e9b8 c.lw a5, 0x20(a2)
2015e9ba andi a5, a5, -0x71
2015e9be c.or a5, a3
2015e9c0 c.sw a5, 0x20(a2)
2015e9c2 c.lwsp a2, 0x14(sp)
2015e9c4 andi a5, s5, 0xf
2015e9c8 c.lw a3, 0x20(a2)
2015e9ca c.andi a3, -0x10
2015e9cc c.or a5, a3
2015e9ce c.sw a5, 0x20(a2)
2015e9d0 c.lwsp a3, 0x14(sp)
2015e9d2 lui a2, 0x80000
2015e9d6 c.lw a5, 0x1c(a3)
2015e9d8 c.or a5, a2
2015e9da c.sw a5, 0x1c(a3)
2015e9dc lhu a5, 0x280(s2)
2015e9e0 c.lwsp a1, 0x14(sp)
2015e9e2 lui a2, 0xf0010
2015e9e6 andi a5, a5, 0x1ff
2015e9ea slli a3, a5, 0x10
2015e9ee c.lw a5, 0x1c(a1)

PACKET 0x2015ebaa
2015eb82 sh a5, 0x43a(s2)
2015eb86 c.li a5, 0x14
2015eb88 mul a5, s0, a5
2015eb8c c.add a5, s1
2015eb8e c.add a5, s6
2015eb90 lbu a4, 0x28(a5)
2015eb94 c.addi a4, 1
2015eb96 c.andi a4, 1
2015eb98 sb a4, 0x28(a5)
2015eb9c sh zero, 0x230(s2)
2015eba0 c.j 0xda
2015eba2 bne a0, a3, -0x2c8
2015eba6 lhu a5, 0x43a(s2)
2015ebaa lui a3, 0xa0000
2015ebae c.slli a5, 0xf
2015ebb0 c.or a5, a3
2015ebb2 c.swsp a5, 0x14(sp)
2015ebb4 c.j -0x2da
2015ebb6 bne a5, a7, -0x116
2015ebba c.lwsp a5, 0x14(sp)
2015ebbc c.lwsp a2, 0x14(sp)
2015ebbe c.lui a3, 0xffff1
2015ebc0 sb zero, 0x28(a5)
2015ebc4 c.lw a5, 4(a2)
2015ebc6 c.addi a3, -1
2015ebc8 c.and a5, a3
2015ebca c.j -0x12c
2015ebcc c.slli a5, 0x10
2015ebce c.srli a5, 0x10
2015ebd0 c.j -0xe6
2015ebd2 c.lwsp a2, 0x14(sp)
2015ebd4 lui a3, 0xf1000
2015ebd8 c.addi a3, -1
2015ebda c.lw a5, 0(a2)
2015ebdc c.lui a0, 0xffff8
2015ebde c.and a5, a3
2015ebe0 c.sw a5, 0(a2)
2015ebe2 c.lwsp a3, 0x14(sp)
2015ebe4 c.lw a5, 0(a3)
2015ebe6 ori a5, a5, 0x400
2015ebea c.sw a5, 0(a3)
2015ebec c.li a5, 0xf
2015ebee mul a5, s0, a5
2015ebf2 addi a3, s5, -1
2015ebf6 c.lwsp a1, 0x14(sp)
2015ebf8 c.add a5, a3
2015ebfa c.slli a5, 2
2015ebfc c.add a5, s3
2015ebfe addi a5, a5, 0xa0
2015ec02 c.slli a5, 1
2015ec04 c.add a5, s1
2015ec06 lhu a5, 0(a5)
2015ec0a slli a3, a5, 0x11
2015ec0e srli a2, a3, 0x11
2015ec12 c.lw a3, 0x40(a1)
2015ec14 c.and a3, a0
2015ec16 c.or a3, a2
2015ec18 c.sw a3, 0x40(a1)
2015ec1a c.lwsp a1, 0x14(sp)
2015ec1c c.lui a2, 0xfffff
2015ec1e addi a2, a2, 0x7f
2015ec22 c.lw a3, 4(a1)
2015ec24 c.and a3, a2
2015ec26 c.lui a2, 1
2015ec28 addi a2, a2, -0x800
2015ec2c c.or a3, a2
2015ec2e c.sw a3, 4(a1)
2015ec30 c.lwsp a0, 0x14(sp)
2015ec32 andi a3, a5, 0xf
2015ec36 slli a2, a3, 0x14
2015ec3a c.lw a3, 4(a0)
2015ec3c lui a1, 0xff100
2015ec40 c.addi a1, -1
2015ec42 c.and a3, a1
2015ec44 c.or a3, a2
2015ec46 c.sw a3, 4(a0)
2015ec48 c.lwsp a0, 0x14(sp)

PACKET 0x2015efaa
2015ef82 c.mv a1, s4
2015ef84 c.mv a0, s0
2015ef86 andi a4, a4, -0x41
2015ef8a sb a4, 0(a5)
2015ef8e jal -0x1112
2015ef92 sh zero, 0x4e2(s2)
2015ef96 lhu a1, 0x43a(s2)
2015ef9a c.mv a0, s0
2015ef9c jal -0xf60
2015efa0 c.li a5, 1
2015efa2 bne a0, a5, 0x5e8
2015efa6 lhu a5, 0x43a(s2)
2015efaa lui a4, 0xa0000
2015efae c.slli a5, 0xf
2015efb0 c.or a5, a4
2015efb2 c.swsp a5, 0x14(sp)
2015efb4 c.lwsp a5, 0x14(sp)
2015efb6 c.lw a5, 0(a5)
2015efb8 c.andi a5, 3
2015efba c.bnez a5, 0x32
2015efbc slli a5, s7, 1
2015efc0 c.add s9, a5
2015efc2 lhu a5, 0x50(s9)
2015efc6 c.lui a4, 1
2015efc8 c.addi a5, 1
2015efca c.slli a5, 0x10
2015efcc c.srli a5, 0x10
2015efce beq a5, a4, 0x4dc
2015efd2 sh a5, 0x50(s9)
2015efd6 lhu a5, 0x50(s9)
2015efda c.lwsp a3, 0x14(sp)
2015efdc c.lui a2, 0xfffff
2015efde c.slli a5, 0x14
2015efe0 srli a4, a5, 0x14
2015efe4 c.lw a5, 0xc(a3)
2015efe6 c.and a5, a2
2015efe8 c.or a5, a4
2015efea c.sw a5, 0xc(a3)
2015efec c.li a5, 0x14
2015efee mul a5, s0, a5
2015eff2 c.add a5, s1
2015eff4 c.add a5, s6
2015eff6 lbu a4, 0x5aa(a5)
2015effa c.li a5, 1
2015effc bne a4, a5, 0x58e
2015f000 addi a1, s7, 0x19d
2015f004 addi s11, s7, 0x311
2015f008 c.slli a1, 2
2015f00a c.slli s11, 1
2015f00c lhu a5, 0x532(s2)
2015f010 c.add a1, s1
2015f012 c.add s11, s1
2015f014 bnez s5, 0x49c
2015f018 c.li s9, 5
2015f01a mul s9, s0, s9
2015f01e c.addi a5, -6
2015f020 c.li a2, 4
2015f022 c.add s9, s4
2015f024 c.slli s9, 2
2015f026 c.add s9, s8
2015f028 c.slli s9, 2
2015f02a c.add s9, s1
2015f02c lw a0, 0xa0(s9)
2015f030 c.add a0, a5
2015f032 jal -0x1a8d6
2015f036 lhu a5, 0x532(s2)
2015f03a lw a0, 0xa0(s9)
2015f03e c.addi a5, -2
2015f040 c.add a0, a5
2015f042 c.li a2, 2
2015f044 c.mv a1, s11
2015f046 jal -0x1a8ea

PACKET 0x2015f172
2015f14a c.addi a4, -1
2015f14c c.j -0x26c
2015f14e beqz t2, 0x33e
2015f152 beqz t5, 0x32e
2015f156 c.li a4, 0xf
2015f158 mul a4, s0, a4
2015f15c addi t0, s5, -1
2015f160 c.add a4, t0
2015f162 c.slli a4, 2
2015f164 c.add a4, a5
2015f166 addi a4, a4, 0xa0
2015f16a c.slli a4, 1
2015f16c c.add a4, s1
2015f16e lhu a4, 0(a4)
2015f172 lui t0, 0xa8000
2015f176 c.slli a4, 0xf
2015f178 or a4, a4, t0
2015f17c srli t0, t3, 1
2015f180 c.add a4, t0
2015f182 lbu t0, 0x18(a4)
2015f186 beqz t4, 0x300
2015f18a c.li a4, 0xf
2015f18c mul a4, s0, a4
2015f190 addi t2, s5, -1
2015f194 srli t6, t6, 1
2015f198 c.add a4, t2
2015f19a c.slli a4, 2
2015f19c c.add a4, a5
2015f19e addi a4, a4, 0xa0
2015f1a2 c.slli a4, 1
2015f1a4 c.add a4, s1
2015f1a6 lhu a4, 0(a4)
2015f1aa lui t2, 0xa8000
2015f1ae c.slli a4, 0xf
2015f1b0 or a4, a4, t2
2015f1b4 c.add t6, a4
2015f1b6 lbu a4, 0x18(t6)
2015f1ba c.mv s3, t0
2015f1bc bgeu a4, t0, 6
2015f1c0 c.mv s3, a4
2015f1c2 c.slli s3, 0x10
2015f1c4 srli s3, s3, 0x10
2015f1c8 c.li a4, 1
2015f1ca bgeu a4, s3, 0xc
2015f1ce c.addi s3, -1
2015f1d0 c.slli s3, 0x10
2015f1d2 srli s3, s3, 0x10
2015f1d6 beqz t5, 0x34
2015f1da c.li a4, 0xf
2015f1dc mul a4, s0, a4
2015f1e0 addi t5, s5, -1
2015f1e4 srli t3, t3, 1
2015f1e8 c.add a4, t5
2015f1ea c.slli a4, 2
2015f1ec c.add a4, a5
2015f1ee addi a4, a4, 0xa0
2015f1f2 c.slli a4, 1
2015f1f4 c.add a4, s1
2015f1f6 lhu a4, 0(a4)
2015f1fa lui t5, 0xa8000
2015f1fe c.slli a4, 0xf
2015f200 or a4, a4, t5
2015f204 c.add t3, a4
2015f206 sb s3, 0x18(t3)
2015f20a beqz t4, 0x42
2015f20e c.li a4, 0xf
2015f210 .byte 0x33, 0x07

PACKET 0x2015f1aa
2015f182 lbu t0, 0x18(a4)
2015f186 beqz t4, 0x300
2015f18a c.li a4, 0xf
2015f18c mul a4, s0, a4
2015f190 addi t2, s5, -1
2015f194 srli t6, t6, 1
2015f198 c.add a4, t2
2015f19a c.slli a4, 2
2015f19c c.add a4, a5
2015f19e addi a4, a4, 0xa0
2015f1a2 c.slli a4, 1
2015f1a4 c.add a4, s1
2015f1a6 lhu a4, 0(a4)
2015f1aa lui t2, 0xa8000
2015f1ae c.slli a4, 0xf
2015f1b0 or a4, a4, t2
2015f1b4 c.add t6, a4
2015f1b6 lbu a4, 0x18(t6)
2015f1ba c.mv s3, t0
2015f1bc bgeu a4, t0, 6
2015f1c0 c.mv s3, a4
2015f1c2 c.slli s3, 0x10
2015f1c4 srli s3, s3, 0x10
2015f1c8 c.li a4, 1
2015f1ca bgeu a4, s3, 0xc
2015f1ce c.addi s3, -1
2015f1d0 c.slli s3, 0x10
2015f1d2 srli s3, s3, 0x10
2015f1d6 beqz t5, 0x34
2015f1da c.li a4, 0xf
2015f1dc mul a4, s0, a4
2015f1e0 addi t5, s5, -1
2015f1e4 srli t3, t3, 1
2015f1e8 c.add a4, t5
2015f1ea c.slli a4, 2
2015f1ec c.add a4, a5
2015f1ee addi a4, a4, 0xa0
2015f1f2 c.slli a4, 1
2015f1f4 c.add a4, s1
2015f1f6 lhu a4, 0(a4)
2015f1fa lui t5, 0xa8000
2015f1fe c.slli a4, 0xf
2015f200 or a4, a4, t5
2015f204 c.add t3, a4
2015f206 sb s3, 0x18(t3)
2015f20a beqz t4, 0x42
2015f20e c.li a4, 0xf
2015f210 mul a4, s0, a4
2015f214 addi t3, s5, -1
2015f218 c.add a4, t3
2015f21a c.slli a4, 2
2015f21c c.add a4, a5
2015f21e addi a4, a4, 0xa0
2015f222 c.slli a4, 1
2015f224 c.add a4, s1
2015f226 lhu a4, 0(a4)
2015f22a lui t3, 0xa8000
2015f22e c.slli a4, 0xf
2015f230 or t3, a4, t3
2015f234 c.li a4, 0x14
2015f236 mul a4, s0, a4
2015f23a c.add a4, s6
2015f23c c.slli a4, 1
2015f23e c.add a4, s9
2015f240 lhu a4, 0(a4)
2015f244 c.srli a4, 1
2015f246 c.add a4, t3
2015f248 .byte 0x23, 0x0c

PACKET 0x2015f1fa
2015f1d2 srli s3, s3, 0x10
2015f1d6 beqz t5, 0x34
2015f1da c.li a4, 0xf
2015f1dc mul a4, s0, a4
2015f1e0 addi t5, s5, -1
2015f1e4 srli t3, t3, 1
2015f1e8 c.add a4, t5
2015f1ea c.slli a4, 2
2015f1ec c.add a4, a5
2015f1ee addi a4, a4, 0xa0
2015f1f2 c.slli a4, 1
2015f1f4 c.add a4, s1
2015f1f6 lhu a4, 0(a4)
2015f1fa lui t5, 0xa8000
2015f1fe c.slli a4, 0xf
2015f200 or a4, a4, t5
2015f204 c.add t3, a4
2015f206 sb s3, 0x18(t3)
2015f20a beqz t4, 0x42
2015f20e c.li a4, 0xf
2015f210 mul a4, s0, a4
2015f214 addi t3, s5, -1
2015f218 c.add a4, t3
2015f21a c.slli a4, 2
2015f21c c.add a4, a5
2015f21e addi a4, a4, 0xa0
2015f222 c.slli a4, 1
2015f224 c.add a4, s1
2015f226 lhu a4, 0(a4)
2015f22a lui t3, 0xa8000
2015f22e c.slli a4, 0xf
2015f230 or t3, a4, t3
2015f234 c.li a4, 0x14
2015f236 mul a4, s0, a4
2015f23a c.add a4, s6
2015f23c c.slli a4, 1
2015f23e c.add a4, s9
2015f240 lhu a4, 0(a4)
2015f244 c.srli a4, 1
2015f246 c.add a4, t3
2015f248 sb s3, 0x18(a4)
2015f24c c.beqz a3, 0xf2
2015f24e beqz t1, 0x244
2015f252 c.li a4, 0xf
2015f254 mul a4, s0, a4
2015f258 addi a3, s5, -1
2015f25c c.add a4, a3
2015f25e c.slli a4, 2
2015f260 c.add a4, a5
2015f262 addi a4, a4, 0xa0
2015f266 c.slli a4, 1
2015f268 c.add a4, s1
2015f26a lhu a4, 0(a4)
2015f26e lui a3, 0xa8000
2015f272 c.slli a4, 0xf
2015f274 c.or a4, a3
2015f276 lhu a3, 0x492(s2)
2015f27a c.srli a3, 1
2015f27c c.add a4, a3
2015f27e lbu t3, 0x18(a4)
2015f282 beqz a7, 0x216
2015f286 c.li a4, 0xf
2015f288 mul a4, s0, a4
2015f28c addi a3, s5, -1
2015f290 c.add a4, a3
2015f292 c.slli a4, 2
2015f294 c.add a4, a5
2015f296 addi a4, a4, 0xa0

PACKET 0x2015f22a
2015f202 jalr gp, s4, -0x61d
2015f206 sb s3, 0x18(t3)
2015f20a beqz t4, 0x42
2015f20e c.li a4, 0xf
2015f210 mul a4, s0, a4
2015f214 addi t3, s5, -1
2015f218 c.add a4, t3
2015f21a c.slli a4, 2
2015f21c c.add a4, a5
2015f21e addi a4, a4, 0xa0
2015f222 c.slli a4, 1
2015f224 c.add a4, s1
2015f226 lhu a4, 0(a4)
2015f22a lui t3, 0xa8000
2015f22e c.slli a4, 0xf
2015f230 or t3, a4, t3
2015f234 c.li a4, 0x14
2015f236 mul a4, s0, a4
2015f23a c.add a4, s6
2015f23c c.slli a4, 1
2015f23e c.add a4, s9
2015f240 lhu a4, 0(a4)
2015f244 c.srli a4, 1
2015f246 c.add a4, t3
2015f248 sb s3, 0x18(a4)
2015f24c c.beqz a3, 0xf2
2015f24e beqz t1, 0x244
2015f252 c.li a4, 0xf
2015f254 mul a4, s0, a4
2015f258 addi a3, s5, -1
2015f25c c.add a4, a3
2015f25e c.slli a4, 2
2015f260 c.add a4, a5
2015f262 addi a4, a4, 0xa0
2015f266 c.slli a4, 1
2015f268 c.add a4, s1
2015f26a lhu a4, 0(a4)
2015f26e lui a3, 0xa8000
2015f272 c.slli a4, 0xf
2015f274 c.or a4, a3
2015f276 lhu a3, 0x492(s2)
2015f27a c.srli a3, 1
2015f27c c.add a4, a3
2015f27e lbu t3, 0x18(a4)
2015f282 beqz a7, 0x216
2015f286 c.li a4, 0xf
2015f288 mul a4, s0, a4
2015f28c addi a3, s5, -1
2015f290 c.add a4, a3
2015f292 c.slli a4, 2
2015f294 c.add a4, a5
2015f296 addi a4, a4, 0xa0
2015f29a c.slli a4, 1
2015f29c c.add a4, s1
2015f29e lhu a4, 0(a4)
2015f2a2 lui a3, 0xa8000
2015f2a6 c.slli a4, 0xf
2015f2a8 c.or a4, a3
2015f2aa lhu a3, 0x7c0(s2)
2015f2ae c.srli a3, 1
2015f2b0 c.add a4, a3
2015f2b2 lbu a4, 0x18(a4)
2015f2b6 c.mv a3, t3
2015f2b8 bgeu a4, t3, 6
2015f2bc c.mv a3, a4
2015f2be c.slli a3, 0x10
2015f2c0 c.srli a3, 0x10
2015f2c2 c.li a4, 1
2015f2c4 bgeu a4, a3, 0xa
2015f2c8 c.addi a3, -1

PACKET 0x2015f26e
2015f246 c.add a4, t3
2015f248 sb s3, 0x18(a4)
2015f24c c.beqz a3, 0xf2
2015f24e beqz t1, 0x244
2015f252 c.li a4, 0xf
2015f254 mul a4, s0, a4
2015f258 addi a3, s5, -1
2015f25c c.add a4, a3
2015f25e c.slli a4, 2
2015f260 c.add a4, a5
2015f262 addi a4, a4, 0xa0
2015f266 c.slli a4, 1
2015f268 c.add a4, s1
2015f26a lhu a4, 0(a4)
2015f26e lui a3, 0xa8000
2015f272 c.slli a4, 0xf
2015f274 c.or a4, a3
2015f276 lhu a3, 0x492(s2)
2015f27a c.srli a3, 1
2015f27c c.add a4, a3
2015f27e lbu t3, 0x18(a4)
2015f282 beqz a7, 0x216
2015f286 c.li a4, 0xf
2015f288 mul a4, s0, a4
2015f28c addi a3, s5, -1
2015f290 c.add a4, a3
2015f292 c.slli a4, 2
2015f294 c.add a4, a5
2015f296 addi a4, a4, 0xa0
2015f29a c.slli a4, 1
2015f29c c.add a4, s1
2015f29e lhu a4, 0(a4)
2015f2a2 lui a3, 0xa8000
2015f2a6 c.slli a4, 0xf
2015f2a8 c.or a4, a3
2015f2aa lhu a3, 0x7c0(s2)
2015f2ae c.srli a3, 1
2015f2b0 c.add a4, a3
2015f2b2 lbu a4, 0x18(a4)
2015f2b6 c.mv a3, t3
2015f2b8 bgeu a4, t3, 6
2015f2bc c.mv a3, a4
2015f2be c.slli a3, 0x10
2015f2c0 c.srli a3, 0x10
2015f2c2 c.li a4, 1
2015f2c4 bgeu a4, a3, 0xa
2015f2c8 c.addi a3, -1
2015f2ca c.slli a3, 0x10
2015f2cc c.srli a3, 0x10
2015f2ce beqz t1, 0x38
2015f2d2 c.li a4, 0xf
2015f2d4 mul a4, s0, a4
2015f2d8 addi t1, s5, -1
2015f2dc c.add a4, t1
2015f2de c.slli a4, 2
2015f2e0 c.add a4, a5
2015f2e2 addi a4, a4, 0xa0
2015f2e6 c.slli a4, 1
2015f2e8 c.add a4, s1
2015f2ea lhu a4, 0(a4)
2015f2ee lui t1, 0xa8000
2015f2f2 c.slli a4, 0xf
2015f2f4 or a4, a4, t1
2015f2f8 lhu t1, 0x492(s2)
2015f2fc srli t1, t1, 1
2015f300 c.add a4, t1
2015f302 sb a3, 0x18(a4)
2015f306 beqz a7, 0x38
2015f30a c.li a4, 0xf
2015f30c .byte 0x33, 0x07

PACKET 0x2015f2a2
2015f27a c.srli a3, 1
2015f27c c.add a4, a3
2015f27e lbu t3, 0x18(a4)
2015f282 beqz a7, 0x216
2015f286 c.li a4, 0xf
2015f288 mul a4, s0, a4
2015f28c addi a3, s5, -1
2015f290 c.add a4, a3
2015f292 c.slli a4, 2
2015f294 c.add a4, a5
2015f296 addi a4, a4, 0xa0
2015f29a c.slli a4, 1
2015f29c c.add a4, s1
2015f29e lhu a4, 0(a4)
2015f2a2 lui a3, 0xa8000
2015f2a6 c.slli a4, 0xf
2015f2a8 c.or a4, a3
2015f2aa lhu a3, 0x7c0(s2)
2015f2ae c.srli a3, 1
2015f2b0 c.add a4, a3
2015f2b2 lbu a4, 0x18(a4)
2015f2b6 c.mv a3, t3
2015f2b8 bgeu a4, t3, 6
2015f2bc c.mv a3, a4
2015f2be c.slli a3, 0x10
2015f2c0 c.srli a3, 0x10
2015f2c2 c.li a4, 1
2015f2c4 bgeu a4, a3, 0xa
2015f2c8 c.addi a3, -1
2015f2ca c.slli a3, 0x10
2015f2cc c.srli a3, 0x10
2015f2ce beqz t1, 0x38
2015f2d2 c.li a4, 0xf
2015f2d4 mul a4, s0, a4
2015f2d8 addi t1, s5, -1
2015f2dc c.add a4, t1
2015f2de c.slli a4, 2
2015f2e0 c.add a4, a5
2015f2e2 addi a4, a4, 0xa0
2015f2e6 c.slli a4, 1
2015f2e8 c.add a4, s1
2015f2ea lhu a4, 0(a4)
2015f2ee lui t1, 0xa8000
2015f2f2 c.slli a4, 0xf
2015f2f4 or a4, a4, t1
2015f2f8 lhu t1, 0x492(s2)
2015f2fc srli t1, t1, 1
2015f300 c.add a4, t1
2015f302 sb a3, 0x18(a4)
2015f306 beqz a7, 0x38
2015f30a c.li a4, 0xf
2015f30c mul a4, s0, a4
2015f310 addi a7, s5, -1
2015f314 c.add a4, a7
2015f316 c.slli a4, 2
2015f318 c.add a4, a5
2015f31a addi a4, a4, 0xa0
2015f31e c.slli a4, 1
2015f320 c.add a4, s1
2015f322 lhu a4, 0(a4)
2015f326 lui a7, 0xa8000
2015f32a c.slli a4, 0xf
2015f32c or a4, a4, a7
2015f330 lhu a7, 0x7c0(s2)
2015f334 srli a7, a7, 1
2015f338 c.add a4, a7
2015f33a sb a3, 0x18(a4)
2015f33e beqz a6, 0xf8

PACKET 0x2015f2ee
2015f2c6 .byte 0xd7, 0x00
2015f2c8 c.addi a3, -1
2015f2ca c.slli a3, 0x10
2015f2cc c.srli a3, 0x10
2015f2ce beqz t1, 0x38
2015f2d2 c.li a4, 0xf
2015f2d4 mul a4, s0, a4
2015f2d8 addi t1, s5, -1
2015f2dc c.add a4, t1
2015f2de c.slli a4, 2
2015f2e0 c.add a4, a5
2015f2e2 addi a4, a4, 0xa0
2015f2e6 c.slli a4, 1
2015f2e8 c.add a4, s1
2015f2ea lhu a4, 0(a4)
2015f2ee lui t1, 0xa8000
2015f2f2 c.slli a4, 0xf
2015f2f4 or a4, a4, t1
2015f2f8 lhu t1, 0x492(s2)
2015f2fc srli t1, t1, 1
2015f300 c.add a4, t1
2015f302 sb a3, 0x18(a4)
2015f306 beqz a7, 0x38
2015f30a c.li a4, 0xf
2015f30c mul a4, s0, a4
2015f310 addi a7, s5, -1
2015f314 c.add a4, a7
2015f316 c.slli a4, 2
2015f318 c.add a4, a5
2015f31a addi a4, a4, 0xa0
2015f31e c.slli a4, 1
2015f320 c.add a4, s1
2015f322 lhu a4, 0(a4)
2015f326 lui a7, 0xa8000
2015f32a c.slli a4, 0xf
2015f32c or a4, a4, a7
2015f330 lhu a7, 0x7c0(s2)
2015f334 srli a7, a7, 1
2015f338 c.add a4, a7
2015f33a sb a3, 0x18(a4)
2015f33e beqz a6, 0xf8
2015f342 beqz a0, 0x15c
2015f346 c.li a4, 0xf
2015f348 mul a4, s0, a4
2015f34c addi a3, s5, -1
2015f350 c.add a4, a3
2015f352 c.slli a4, 2
2015f354 c.add a4, a5
2015f356 addi a4, a4, 0xa0
2015f35a c.slli a4, 1
2015f35c c.add a4, s1
2015f35e lhu a4, 0(a4)
2015f362 lui a3, 0xa8000
2015f366 c.slli a4, 0xf
2015f368 c.or a4, a3
2015f36a c.lui a3, 1
2015f36c c.add a3, s2
2015f36e lhu a3, -0x7f0(a3)
2015f372 c.srli a3, 1
2015f374 c.add a4, a3
2015f376 lbu a6, 0x18(a4)
2015f37a beqz a1, 0x12a
2015f37e c.li a4, 0xf
2015f380 mul a4, s0, a4
2015f384 addi a3, s5, -1
2015f388 c.add a4, a3
2015f38a c.slli a4, 2
2015f38c c.add a4, a5

PACKET 0x2015f326
2015f2fe addi zero, s4, -0x68f
2015f302 sb a3, 0x18(a4)
2015f306 beqz a7, 0x38
2015f30a c.li a4, 0xf
2015f30c mul a4, s0, a4
2015f310 addi a7, s5, -1
2015f314 c.add a4, a7
2015f316 c.slli a4, 2
2015f318 c.add a4, a5
2015f31a addi a4, a4, 0xa0
2015f31e c.slli a4, 1
2015f320 c.add a4, s1
2015f322 lhu a4, 0(a4)
2015f326 lui a7, 0xa8000
2015f32a c.slli a4, 0xf
2015f32c or a4, a4, a7
2015f330 lhu a7, 0x7c0(s2)
2015f334 srli a7, a7, 1
2015f338 c.add a4, a7
2015f33a sb a3, 0x18(a4)
2015f33e beqz a6, 0xf8
2015f342 beqz a0, 0x15c
2015f346 c.li a4, 0xf
2015f348 mul a4, s0, a4
2015f34c addi a3, s5, -1
2015f350 c.add a4, a3
2015f352 c.slli a4, 2
2015f354 c.add a4, a5
2015f356 addi a4, a4, 0xa0
2015f35a c.slli a4, 1
2015f35c c.add a4, s1
2015f35e lhu a4, 0(a4)
2015f362 lui a3, 0xa8000
2015f366 c.slli a4, 0xf
2015f368 c.or a4, a3
2015f36a c.lui a3, 1
2015f36c c.add a3, s2
2015f36e lhu a3, -0x7f0(a3)
2015f372 c.srli a3, 1
2015f374 c.add a4, a3
2015f376 lbu a6, 0x18(a4)
2015f37a beqz a1, 0x12a
2015f37e c.li a4, 0xf
2015f380 mul a4, s0, a4
2015f384 addi a3, s5, -1
2015f388 c.add a4, a3
2015f38a c.slli a4, 2
2015f38c c.add a4, a5
2015f38e addi a4, a4, 0xa0
2015f392 c.slli a4, 1
2015f394 c.add a4, s1
2015f396 lhu a4, 0(a4)
2015f39a lui a3, 0xa8000
2015f39e c.slli a4, 0xf
2015f3a0 c.or a4, a3
2015f3a2 c.lui a3, 1
2015f3a4 c.add a3, s2
2015f3a6 lhu a3, -0x7a0(a3)
2015f3aa c.srli a3, 1
2015f3ac c.add a4, a3
2015f3ae lbu a4, 0x18(a4)
2015f3b2 c.mv a3, a6
2015f3b4 bgeu a4, a6, 6
2015f3b8 c.mv a3, a4
2015f3ba c.slli a3, 0x10
2015f3bc c.srli a3, 0x10
2015f3be c.li a4, 1
2015f3c0 bgeu a4, a3, 0xa
2015f3c4 c.addi a3, -1

PACKET 0x2015f362
2015f33a sb a3, 0x18(a4)
2015f33e beqz a6, 0xf8
2015f342 beqz a0, 0x15c
2015f346 c.li a4, 0xf
2015f348 mul a4, s0, a4
2015f34c addi a3, s5, -1
2015f350 c.add a4, a3
2015f352 c.slli a4, 2
2015f354 c.add a4, a5
2015f356 addi a4, a4, 0xa0
2015f35a c.slli a4, 1
2015f35c c.add a4, s1
2015f35e lhu a4, 0(a4)
2015f362 lui a3, 0xa8000
2015f366 c.slli a4, 0xf
2015f368 c.or a4, a3
2015f36a c.lui a3, 1
2015f36c c.add a3, s2
2015f36e lhu a3, -0x7f0(a3)
2015f372 c.srli a3, 1
2015f374 c.add a4, a3
2015f376 lbu a6, 0x18(a4)
2015f37a beqz a1, 0x12a
2015f37e c.li a4, 0xf
2015f380 mul a4, s0, a4
2015f384 addi a3, s5, -1
2015f388 c.add a4, a3
2015f38a c.slli a4, 2
2015f38c c.add a4, a5
2015f38e addi a4, a4, 0xa0
2015f392 c.slli a4, 1
2015f394 c.add a4, s1
2015f396 lhu a4, 0(a4)
2015f39a lui a3, 0xa8000
2015f39e c.slli a4, 0xf
2015f3a0 c.or a4, a3
2015f3a2 c.lui a3, 1
2015f3a4 c.add a3, s2
2015f3a6 lhu a3, -0x7a0(a3)
2015f3aa c.srli a3, 1
2015f3ac c.add a4, a3
2015f3ae lbu a4, 0x18(a4)
2015f3b2 c.mv a3, a6
2015f3b4 bgeu a4, a6, 6
2015f3b8 c.mv a3, a4
2015f3ba c.slli a3, 0x10
2015f3bc c.srli a3, 0x10
2015f3be c.li a4, 1
2015f3c0 bgeu a4, a3, 0xa
2015f3c4 c.addi a3, -1
2015f3c6 c.slli a3, 0x10
2015f3c8 c.srli a3, 0x10
2015f3ca c.beqz a0, 0x36
2015f3cc c.li a4, 0xf
2015f3ce mul a4, s0, a4
2015f3d2 addi a0, s5, -1
2015f3d6 c.add a4, a0
2015f3d8 c.slli a4, 2
2015f3da c.add a4, a5
2015f3dc addi a4, a4, 0xa0
2015f3e0 c.slli a4, 1
2015f3e2 c.add a4, s1
2015f3e4 lhu a4, 0(a4)
2015f3e8 lui a0, 0xa8000
2015f3ec c.slli a4, 0xf
2015f3ee c.or a4, a0
2015f3f0 c.lui a0, 1
2015f3f2 c.add a0, s2
2015f3f4 lhu a0, -0x7f0(a0)
2015f3f8 c.srli a0, 1
2015f3fa c.add a4, a0
2015f3fc sb a3, 0x18(a4)
2015f400 c.beqz a1, 0x36

PACKET 0x2015f39a
2015f372 c.srli a3, 1
2015f374 c.add a4, a3
2015f376 lbu a6, 0x18(a4)
2015f37a beqz a1, 0x12a
2015f37e c.li a4, 0xf
2015f380 mul a4, s0, a4
2015f384 addi a3, s5, -1
2015f388 c.add a4, a3
2015f38a c.slli a4, 2
2015f38c c.add a4, a5
2015f38e addi a4, a4, 0xa0
2015f392 c.slli a4, 1
2015f394 c.add a4, s1
2015f396 lhu a4, 0(a4)
2015f39a lui a3, 0xa8000
2015f39e c.slli a4, 0xf
2015f3a0 c.or a4, a3
2015f3a2 c.lui a3, 1
2015f3a4 c.add a3, s2
2015f3a6 lhu a3, -0x7a0(a3)
2015f3aa c.srli a3, 1
2015f3ac c.add a4, a3
2015f3ae lbu a4, 0x18(a4)
2015f3b2 c.mv a3, a6
2015f3b4 bgeu a4, a6, 6
2015f3b8 c.mv a3, a4
2015f3ba c.slli a3, 0x10
2015f3bc c.srli a3, 0x10
2015f3be c.li a4, 1
2015f3c0 bgeu a4, a3, 0xa
2015f3c4 c.addi a3, -1
2015f3c6 c.slli a3, 0x10
2015f3c8 c.srli a3, 0x10
2015f3ca c.beqz a0, 0x36
2015f3cc c.li a4, 0xf
2015f3ce mul a4, s0, a4
2015f3d2 addi a0, s5, -1
2015f3d6 c.add a4, a0
2015f3d8 c.slli a4, 2
2015f3da c.add a4, a5
2015f3dc addi a4, a4, 0xa0
2015f3e0 c.slli a4, 1
2015f3e2 c.add a4, s1
2015f3e4 lhu a4, 0(a4)
2015f3e8 lui a0, 0xa8000
2015f3ec c.slli a4, 0xf
2015f3ee c.or a4, a0
2015f3f0 c.lui a0, 1
2015f3f2 c.add a0, s2
2015f3f4 lhu a0, -0x7f0(a0)
2015f3f8 c.srli a0, 1
2015f3fa c.add a4, a0
2015f3fc sb a3, 0x18(a4)
2015f400 c.beqz a1, 0x36
2015f402 c.li a4, 0xf
2015f404 mul a4, s0, a4
2015f408 addi a1, s5, -1
2015f40c c.add a4, a1
2015f40e c.slli a4, 2
2015f410 c.add a4, a5
2015f412 addi a4, a4, 0xa0
2015f416 c.slli a4, 1
2015f418 c.add a4, s1
2015f41a lhu a4, 0(a4)
2015f41e lui a1, 0xa8000
2015f422 c.slli a4, 0xf
2015f424 c.or a4, a1
2015f426 c.lui a1, 1
2015f428 c.add a1, s2
2015f42a lhu a1, -0x7a0(a1)
2015f42e c.srli a1, 1
2015f430 c.add a4, a1
2015f432 sb a3, 0x18(a4)
2015f436 beqz a2, -0x4a0

PACKET 0x2015f3e8
2015f3c0 bgeu a4, a3, 0xa
2015f3c4 c.addi a3, -1
2015f3c6 c.slli a3, 0x10
2015f3c8 c.srli a3, 0x10
2015f3ca c.beqz a0, 0x36
2015f3cc c.li a4, 0xf
2015f3ce mul a4, s0, a4
2015f3d2 addi a0, s5, -1
2015f3d6 c.add a4, a0
2015f3d8 c.slli a4, 2
2015f3da c.add a4, a5
2015f3dc addi a4, a4, 0xa0
2015f3e0 c.slli a4, 1
2015f3e2 c.add a4, s1
2015f3e4 lhu a4, 0(a4)
2015f3e8 lui a0, 0xa8000
2015f3ec c.slli a4, 0xf
2015f3ee c.or a4, a0
2015f3f0 c.lui a0, 1
2015f3f2 c.add a0, s2
2015f3f4 lhu a0, -0x7f0(a0)
2015f3f8 c.srli a0, 1
2015f3fa c.add a4, a0
2015f3fc sb a3, 0x18(a4)
2015f400 c.beqz a1, 0x36
2015f402 c.li a4, 0xf
2015f404 mul a4, s0, a4
2015f408 addi a1, s5, -1
2015f40c c.add a4, a1
2015f40e c.slli a4, 2
2015f410 c.add a4, a5
2015f412 addi a4, a4, 0xa0
2015f416 c.slli a4, 1
2015f418 c.add a4, s1
2015f41a lhu a4, 0(a4)
2015f41e lui a1, 0xa8000
2015f422 c.slli a4, 0xf
2015f424 c.or a4, a1
2015f426 c.lui a1, 1
2015f428 c.add a1, s2
2015f42a lhu a1, -0x7a0(a1)
2015f42e c.srli a1, 1
2015f430 c.add a4, a1
2015f432 sb a3, 0x18(a4)
2015f436 beqz a2, -0x4a0
2015f43a c.addi4spn a4, sp, 0x20
2015f43c c.addi4spn a3, sp, 0x1c
2015f43e c.mv a2, s5
2015f440 c.mv a1, s4
2015f442 c.mv a0, s0
2015f444 c.swsp a5, 8(sp)
2015f446 jal -0xeac
2015f44a c.lwsp a4, 0x20(sp)
2015f44c c.lwsp a5, 8(sp)
2015f44e bnez a4, -0x4b8
2015f452 c.li a4, 0xf
2015f454 mul a4, s0, a4
2015f458 addi a3, s5, -1
2015f45c c.add a4, a3
2015f45e c.slli a4, 2
2015f460 c.add a5, a4
2015f462 addi a5, a5, 0xa0
2015f466 c.slli a5, 1
2015f468 c.add a5, s1
2015f46a lhu a5, 0(a5)
2015f46e lui a4, 0xa8000
2015f472 c.slli a5, 0xf
2015f474 c.or a5, a4
2015f476 lhu a4, 0x4e2(s2)
2015f47a c.srli a4, 2
2015f47c c.addi a4, 0x18
2015f47e c.j -0x502
2015f480 c.lui t0, 0x10
2015f482 c.addi t0, -1
2015f484 c.j -0x2fe
2015f486 c.lui a4, 0x10

PACKET 0x2015f41e
2015f3f6 c.srli a0, 1
2015f3f8 c.srli a0, 1
2015f3fa c.add a4, a0
2015f3fc sb a3, 0x18(a4)
2015f400 c.beqz a1, 0x36
2015f402 c.li a4, 0xf
2015f404 mul a4, s0, a4
2015f408 addi a1, s5, -1
2015f40c c.add a4, a1
2015f40e c.slli a4, 2
2015f410 c.add a4, a5
2015f412 addi a4, a4, 0xa0
2015f416 c.slli a4, 1
2015f418 c.add a4, s1
2015f41a lhu a4, 0(a4)
2015f41e lui a1, 0xa8000
2015f422 c.slli a4, 0xf
2015f424 c.or a4, a1
2015f426 c.lui a1, 1
2015f428 c.add a1, s2
2015f42a lhu a1, -0x7a0(a1)
2015f42e c.srli a1, 1
2015f430 c.add a4, a1
2015f432 sb a3, 0x18(a4)
2015f436 beqz a2, -0x4a0
2015f43a c.addi4spn a4, sp, 0x20
2015f43c c.addi4spn a3, sp, 0x1c
2015f43e c.mv a2, s5
2015f440 c.mv a1, s4
2015f442 c.mv a0, s0
2015f444 c.swsp a5, 8(sp)
2015f446 jal -0xeac
2015f44a c.lwsp a4, 0x20(sp)
2015f44c c.lwsp a5, 8(sp)
2015f44e bnez a4, -0x4b8
2015f452 c.li a4, 0xf
2015f454 mul a4, s0, a4
2015f458 addi a3, s5, -1
2015f45c c.add a4, a3
2015f45e c.slli a4, 2
2015f460 c.add a5, a4
2015f462 addi a5, a5, 0xa0
2015f466 c.slli a5, 1
2015f468 c.add a5, s1
2015f46a lhu a5, 0(a5)
2015f46e lui a4, 0xa8000
2015f472 c.slli a5, 0xf
2015f474 c.or a5, a4
2015f476 lhu a4, 0x4e2(s2)
2015f47a c.srli a4, 2
2015f47c c.addi a4, 0x18
2015f47e c.j -0x502
2015f480 c.lui t0, 0x10
2015f482 c.addi t0, -1
2015f484 c.j -0x2fe
2015f486 c.lui a4, 0x10
2015f488 c.addi a4, -1
2015f48a c.j -0x2d0
2015f48c c.lui s3, 0x10
2015f48e c.addi s3, -1
2015f490 c.j -0x244
2015f492 c.lui t3, 0x10
2015f494 c.addi t3, -1
2015f496 c.j -0x214
2015f498 c.lui a4, 0x10
2015f49a c.addi a4, -1
2015f49c c.j -0x1e6
2015f49e c.lui a6, 0x10
2015f4a0 c.addi a6, -1
2015f4a2 c.j -0x128
2015f4a4 c.lui a4, 0x10
2015f4a6 c.addi a4, -1
2015f4a8 c.j -0xf6
2015f4aa sh zero, 0x50(s9)
2015f4ae c.j -0x4d8
2015f4b0 c.li s9, 0xf
2015f4b2 mul s9, s0, s9
2015f4b6 addi a4, s5, -1
2015f4ba lui a3, 0xa8000

PACKET 0x2015f46e
2015f446 jal -0xeac
2015f44a c.lwsp a4, 0x20(sp)
2015f44c c.lwsp a5, 8(sp)
2015f44e bnez a4, -0x4b8
2015f452 c.li a4, 0xf
2015f454 mul a4, s0, a4
2015f458 addi a3, s5, -1
2015f45c c.add a4, a3
2015f45e c.slli a4, 2
2015f460 c.add a5, a4
2015f462 addi a5, a5, 0xa0
2015f466 c.slli a5, 1
2015f468 c.add a5, s1
2015f46a lhu a5, 0(a5)
2015f46e lui a4, 0xa8000
2015f472 c.slli a5, 0xf
2015f474 c.or a5, a4
2015f476 lhu a4, 0x4e2(s2)
2015f47a c.srli a4, 2
2015f47c c.addi a4, 0x18
2015f47e c.j -0x502
2015f480 c.lui t0, 0x10
2015f482 c.addi t0, -1
2015f484 c.j -0x2fe
2015f486 c.lui a4, 0x10
2015f488 c.addi a4, -1
2015f48a c.j -0x2d0
2015f48c c.lui s3, 0x10
2015f48e c.addi s3, -1
2015f490 c.j -0x244
2015f492 c.lui t3, 0x10
2015f494 c.addi t3, -1
2015f496 c.j -0x214
2015f498 c.lui a4, 0x10
2015f49a c.addi a4, -1
2015f49c c.j -0x1e6
2015f49e c.lui a6, 0x10
2015f4a0 c.addi a6, -1
2015f4a2 c.j -0x128
2015f4a4 c.lui a4, 0x10
2015f4a6 c.addi a4, -1
2015f4a8 c.j -0xf6
2015f4aa sh zero, 0x50(s9)
2015f4ae c.j -0x4d8
2015f4b0 c.li s9, 0xf
2015f4b2 mul s9, s0, s9
2015f4b6 addi a4, s5, -1
2015f4ba lui a3, 0xa8000
2015f4be addi a0, a5, 0x12
2015f4c2 c.li a2, 4
2015f4c4 c.add s9, a4
2015f4c6 c.slli s9, 2
2015f4c8 c.add s9, s8
2015f4ca c.slli s9, 1
2015f4cc c.add s9, s1
2015f4ce lhu a4, 0x140(s9)
2015f4d2 c.slli a4, 0xf
2015f4d4 c.or a4, a3
2015f4d6 c.add a0, a4
2015f4d8 jal -0x1ad7c
2015f4dc lhu a5, 0x140(s9)
2015f4e0 lhu a0, 0x532(s2)
2015f4e4 lui a3, 0xa8000
2015f4e8 c.slli a5, 0xf
2015f4ea c.or a5, a3
2015f4ec c.addi a0, 0x16
2015f4ee c.j -0x4ae
2015f4f0 c.lwsp a4, 0x1c(sp)
2015f4f2 c.lwsp a5, 0x20(sp)
2015f4f4 c.add a5, a4
2015f4f6 c.addi a5, -1
2015f4f8 remu a5, a5, a4
2015f4fc bnez a5, -0x43a
2015f500 lbu a5, 0(s5)
2015f504 lw a4, 0xa0(s8)
2015f508 andi a5, a5, 0x3f
2015f50c c.addi a5, 0x1c

PACKET 0x2015f4ba
2015f492 c.lui t3, 0x10
2015f494 c.addi t3, -1
2015f496 c.j -0x214
2015f498 c.lui a4, 0x10
2015f49a c.addi a4, -1
2015f49c c.j -0x1e6
2015f49e c.lui a6, 0x10
2015f4a0 c.addi a6, -1
2015f4a2 c.j -0x128
2015f4a4 c.lui a4, 0x10
2015f4a6 c.addi a4, -1
2015f4a8 c.j -0xf6
2015f4aa sh zero, 0x50(s9)
2015f4ae c.j -0x4d8
2015f4b0 c.li s9, 0xf
2015f4b2 mul s9, s0, s9
2015f4b6 addi a4, s5, -1
2015f4ba lui a3, 0xa8000
2015f4be addi a0, a5, 0x12
2015f4c2 c.li a2, 4
2015f4c4 c.add s9, a4
2015f4c6 c.slli s9, 2
2015f4c8 c.add s9, s8
2015f4ca c.slli s9, 1
2015f4cc c.add s9, s1
2015f4ce lhu a4, 0x140(s9)
2015f4d2 c.slli a4, 0xf
2015f4d4 c.or a4, a3
2015f4d6 c.add a0, a4
2015f4d8 jal -0x1ad7c
2015f4dc lhu a5, 0x140(s9)
2015f4e0 lhu a0, 0x532(s2)
2015f4e4 lui a3, 0xa8000
2015f4e8 c.slli a5, 0xf
2015f4ea c.or a5, a3
2015f4ec c.addi a0, 0x16
2015f4ee c.j -0x4ae
2015f4f0 c.lwsp a4, 0x1c(sp)
2015f4f2 c.lwsp a5, 0x20(sp)
2015f4f4 c.add a5, a4
2015f4f6 c.addi a5, -1
2015f4f8 remu a5, a5, a4
2015f4fc bnez a5, -0x43a
2015f500 lbu a5, 0(s5)
2015f504 lw a4, 0xa0(s8)
2015f508 andi a5, a5, 0x3f
2015f50c c.addi a5, 0x1c
2015f50e c.add a5, a4
2015f510 lbu a4, 0(a5)
2015f514 ori a4, a4, 1
2015f518 c.j -0x45a
2015f51a c.li a2, 0x10
2015f51c c.li a1, 0
2015f51e jal -0x1adb8
2015f522 lhu a5, 0x532(s2)
2015f526 lw a0, 0xa0(s8)
2015f52a c.li a2, 0x10
2015f52c c.mv a1, s4
2015f52e c.add a0, a5
2015f530 jal -0x1add4
2015f534 lhu a1, 0x532(s2)
2015f538 lbu a3, 0x13(sp)
2015f53c lw a0, 0xa0(s8)
2015f540 c.li a4, 0
2015f542 c.mv a2, s4
2015f544 c.addi a1, 0x10
2015f546 jal -0x1cbe
2015f54a lhu a5, 0x532(s2)
2015f54e lw a0, 0xa0(s8)
2015f552 c.li a2, 0x10
2015f554 c.mv a1, s4
2015f556 c.add a0, a5
2015f558 .byte 0xef, 0x50

PACKET 0x2015f4e4
2015f4bc c.fsd fs0, 0x10(s0)
2015f4be addi a0, a5, 0x12
2015f4c2 c.li a2, 4
2015f4c4 c.add s9, a4
2015f4c6 c.slli s9, 2
2015f4c8 c.add s9, s8
2015f4ca c.slli s9, 1
2015f4cc c.add s9, s1
2015f4ce lhu a4, 0x140(s9)
2015f4d2 c.slli a4, 0xf
2015f4d4 c.or a4, a3
2015f4d6 c.add a0, a4
2015f4d8 jal -0x1ad7c
2015f4dc lhu a5, 0x140(s9)
2015f4e0 lhu a0, 0x532(s2)
2015f4e4 lui a3, 0xa8000
2015f4e8 c.slli a5, 0xf
2015f4ea c.or a5, a3
2015f4ec c.addi a0, 0x16
2015f4ee c.j -0x4ae
2015f4f0 c.lwsp a4, 0x1c(sp)
2015f4f2 c.lwsp a5, 0x20(sp)
2015f4f4 c.add a5, a4
2015f4f6 c.addi a5, -1
2015f4f8 remu a5, a5, a4
2015f4fc bnez a5, -0x43a
2015f500 lbu a5, 0(s5)
2015f504 lw a4, 0xa0(s8)
2015f508 andi a5, a5, 0x3f
2015f50c c.addi a5, 0x1c
2015f50e c.add a5, a4
2015f510 lbu a4, 0(a5)
2015f514 ori a4, a4, 1
2015f518 c.j -0x45a
2015f51a c.li a2, 0x10
2015f51c c.li a1, 0
2015f51e jal -0x1adb8
2015f522 lhu a5, 0x532(s2)
2015f526 lw a0, 0xa0(s8)
2015f52a c.li a2, 0x10
2015f52c c.mv a1, s4
2015f52e c.add a0, a5
2015f530 jal -0x1add4
2015f534 lhu a1, 0x532(s2)
2015f538 lbu a3, 0x13(sp)
2015f53c lw a0, 0xa0(s8)
2015f540 c.li a4, 0
2015f542 c.mv a2, s4
2015f544 c.addi a1, 0x10
2015f546 jal -0x1cbe
2015f54a lhu a5, 0x532(s2)
2015f54e lw a0, 0xa0(s8)
2015f552 c.li a2, 0x10
2015f554 c.mv a1, s4
2015f556 c.add a0, a5
2015f558 jal -0x1adfc
2015f55c lui a5, 0x20201
2015f560 lw a5, 0x408(a5)
2015f564 c.mv a0, s4
2015f566 c.jalr a5
2015f568 c.slli s7, 2
2015f56a c.add s1, s7
2015f56c lw a5, 0x674(s1)
2015f570 c.li a4, -1
2015f572 bne a5, a4, 0x46
2015f576 sw zero, 0x674(s1)
2015f57a lhu a5, 0x622(s2)
2015f57e c.lui a4, 0x10
2015f580 c.addi a4, -1
2015f582 .byte 0x63, 0x97