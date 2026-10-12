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
2012eafc c.jalr a5
2012eafe c.li a5, 1
2012eb00 c.lwsp ra, 0xc(sp)
2012eb02 sll a5, a5, s0
2012eb06 c.lwsp s0, 8(sp)
2012eb08 c.and a0, a5
2012eb0a snez a0, a0
2012eb0e c.addi sp, 0x10
2012eb10 c.jr ra
2012eb12 c.li a0, 0
2012eb14 c.j -0x20
2012eb16 c.addi sp, -0x10
2012eb18 c.swsp s0, 8(sp)
2012eb1a c.swsp ra, 0xc(sp)
2012eb1c andi s0, a0, 0x1f
2012eb20 c.li a5, 3
2012eb22 c.srli a0, 5
2012eb24 bltu a5, a0, 0x2c
2012eb28 c.lui a4, 0xe
2012eb2a c.slli a0, 2
2012eb2c addi a4, a4, 0x100
2012eb30 c.add a0, a4
2012eb32 lui a5, 0x20201
2012eb36 lw a5, 0x748(a5)
2012eb3a c.jalr a5
2012eb3c c.li a5, 1
2012eb3e c.lwsp ra, 0xc(sp)
2012eb40 sll a5, a5, s0
2012eb44 c.lwsp s0, 8(sp)
2012eb46 c.and a0, a5
2012eb48 snez a0, a0
2012eb4c c.addi sp, 0x10
2012eb4e c.jr ra
2012eb50 c.li a0, 0
2012eb52 c.j -0x20
2012eb54 c.addi sp, -0x20
2012eb56 c.swsp s0, 0x18(sp)
2012eb58 c.swsp ra, 0x1c(sp)
2012eb5a c.mv s0, a0
2012eb5c c.swsp a1, 0xc(sp)
2012eb5e c.swsp a2, 8(sp)
2012eb60 c.jal -0x4a
2012eb62 c.mv a2, a0
2012eb64 c.mv a0, s0
2012eb66 c.lwsp s0, 0x18(sp)
2012eb68 c.lwsp a3, 8(sp)
2012eb6a c.lwsp a1, 0xc(sp)
2012eb6c c.lwsp ra, 0x1c(sp)
2012eb6e c.addi16sp sp, 0x20
2012eb70 j -0x6efc
2012eb74 c.addi sp, -0x20
2012eb76 c.swsp s0, 0x18(sp)
2012eb78 c.swsp s1, 0x14(sp)
2012eb7a c.swsp ra, 0x1c(sp)
2012eb7c c.mv s1, a1
2012eb7e c.mv s0, a0
2012eb80 c.swsp a2, 0xc(sp)
2012eb82 c.jal -0xaa
2012eb84 c.mv a1, a0
2012eb86 c.mv a0, s0
2012eb88 c.lwsp s0, 0x18(sp)
2012eb8a c.lwsp a3, 0xc(sp)
2012eb8c c.lwsp ra, 0x1c(sp)
2012eb8e c.mv a2, s1
2012eb90 c.lwsp s1, 0x14(sp)
2012eb92 c.addi16sp sp, 0x20
2012eb94 j -0x6f20
2012eb98 lui a5, 0x20201
2012eb9c lw a5, 0x740(a5)
2012eba0 c.addi sp, -0x10
2012eba2 c.lui a0, 0x11
2012eba4 c.swsp ra, 0xc(sp)
2012eba6 addi a0, a0, -0x800
2012ebaa c.jalr a5
2012ebac c.lwsp ra, 0xc(sp)
2012ebae c.andi a0, 3
2012ebb0 snez a0, a0
2012ebb4 c.addi sp, 0x10
2012ebb6 c.jr ra
2012ebb8 c.addi sp, -0x10
2012ebba c.swsp s0, 8(sp)
2012ebbc c.swsp ra, 0xc(sp)
2012ebbe c.swsp s1, 4(sp)
2012ebc0 c.swsp s2, 0(sp)
2012ebc2 c.mv s0, a0
2012ebc4 c.jal -0x2c
2012ebc6 c.bnez a0, 0x30
2012ebc8 lui a5, 0x20201
2012ebcc lw a5, 0x73c(a5)
2012ebd0 lui a1, 0x80000
2012ebd4 c.or a1, s0
2012ebd6 c.lui s0, 0xa
2012ebd8 addi a0, s0, 0x348
2012ebdc c.jalr a5
2012ebde addi s1, zero, 0x12d
2012ebe2 lui s2, 0x20201
2012ebe6 addi s0, s0, 0x348
2012ebea lw a5, 0x748(s2)
2012ebee c.mv a0, s0
2012ebf0 c.jalr a5
2012ebf2 bltz a0, 0x10
2012ebf6 c.lwsp ra, 0xc(sp)
2012ebf8 c.lwsp s0, 8(sp)
2012ebfa c.lwsp s1, 4(sp)
2012ebfc c.lwsp s2, 0(sp)
2012ebfe c.addi sp, 0x10
2012ec00 c.jr ra
2012ec02 c.addi s1, -1
2012ec04 c.bnez s1, -0x1a
2012ec06 c.lwsp s0, 8(sp)
2012ec08 lui a5, 0x20201
2012ec0c c.lwsp ra, 0xc(sp)
2012ec0e c.lwsp s1, 4(sp)
2012ec10 c.lwsp s2, 0(sp)
2012ec12 lw a5, 0x6a8(a5)
2012ec16 lui a3, 0x40000
2012ec1a c.li a4, 0
2012ec1c addi a3, a3, 0xe1
2012ec20 c.li a2, 2
2012ec22 addi a0, zero, 0x40
2012ec26 c.li a1, 0
2012ec28 c.addi sp, 0x10
2012ec2a c.jr a5
2012ec2c c.addi16sp sp, -0x30
2012ec2e c.swsp s0, 0x28(sp)
2012ec30 c.mv s0, a0
2012ec32 c.li a0, 4
2012ec34 c.swsp s1, 0x24(sp)
2012ec36 c.swsp ra, 0x2c(sp)
2012ec38 c.swsp s2, 0x20(sp)
2012ec3a c.swsp s3, 0x1c(sp)
2012ec3c c.swsp s4, 0x18(sp)
2012ec3e jal -0xa4f2
2012ec42 c.lw a5, 8(s0)
2012ec44 andi s1, a5, 0x200
2012ec48 beqz s1, 0x100
2012ec4c lui a5, 0x20202
2012ec50 lw a5, 0x164(a5)
2012ec54 c.swsp zero, 4(sp)
2012ec56 c.li a3, 0
2012ec58 c.addi4spn a2, sp, 4
2012ec5a c.li a1, 4
2012ec5c c.li a0, 0
2012ec5e c.jalr a5
2012ec60 c.bnez a0, 0xa8
2012ec62 c.lwsp s2, 4(sp)
2012ec64 beqz s2, 0xa4
2012ec68 c.lw a5, 8(s0)
2012ec6a c.lui a0, 0x10
2012ec6c andi a4, a5, 0x100
2012ec70 lw a5, 0(s2)
2012ec74 andi a5, a5, -0x101
2012ec78 c.or a5, a4
2012ec7a sw a5, 0(s2)
2012ec7e c.lw a4, 8(s0)
2012ec80 andi a5, a5, -0xf1
2012ec84 andi a4, a4, 0xf0
2012ec88 c.or a5, a4
2012ec8a sw a5, 0(s2)
2012ec8e c.lw a5, 8(s0)
2012ec90 andi a5, a5, 0x100
2012ec94 c.beqz a5, 4
2012ec96 c.lui a0, 0x14
2012ec98 lui s1, 0x20201
2012ec9c lw a5, 0x748(s1)
2012eca0 addi a0, a0, 0xa0
2012eca4 c.jalr a5
2012eca6 srli a5, a0, 6
2012ecaa andi a4, a5, 1
2012ecae lw a5, 0(s2)
2012ecb2 addi a3, zero, 0x20
2012ecb6 c.andi a5, -0x10
2012ecb8 c.or a5, a4
2012ecba sw a5, 0(s2)
2012ecbe c.lw a5, 8(s0)
2012ecc0 andi a4, a5, 0xf0
2012ecc4 bne a4, a3, 0x48
2012ecc8 andi a5, a5, 0x100
2012eccc c.lui a0, 0x10
2012ecce c.beqz a5, 4
2012ecd0 c.lui a0, 0x14
2012ecd2 lw a5, 0x748(s1)
2012ecd6 addi a0, a0, 0x9c
2012ecda c.jalr a5
2012ecdc c.lui a5, 1
2012ecde addi a5, a5, -0x6fa
2012ece2 sh a0, 2(s2)
2012ece6 sh a5, 8(sp)
2012ecea c.li a5, 1
2012ecec sb a5, 0xa(sp)
2012ecf0 c.li a5, 0xc
2012ecf2 sh a5, 0xc(sp)
2012ecf6 lui a5, 0x20201
2012ecfa lw a5, 0x6d0(a5)
2012ecfe c.lwsp a1, 4(sp)
2012ed00 c.addi4spn a0, sp, 8
2012ed02 c.jalr a5
2012ed04 c.mv s1, a0
2012ed06 c.beqz a0, 0x30
2012ed08 c.li s1, 4
2012ed0a c.j 0x2c
2012ed0c addi a3, zero, 0x30
2012ed10 bne a4, a3, 0x1c
2012ed14 andi a5, a5, 0x100
2012ed18 c.lui a0, 0x10
2012ed1a c.beqz a5, 4
2012ed1c c.lui a0, 0x14
2012ed1e lw a5, 0x748(s1)
2012ed22 addi a0, a0, 0x9c
2012ed26 c.jalr a5
2012ed28 c.srli a0, 0x10
2012ed2a c.j -0x4e
2012ed2c addi a5, zero, 0x40
2012ed30 c.li s1, 5
2012ed32 beq a4, a5, -0xa
2012ed36 c.lwsp ra, 0x2c(sp)
2012ed38 c.lwsp s0, 0x28(sp)
2012ed3a c.lwsp s2, 0x20(sp)
2012ed3c c.lwsp s3, 0x1c(sp)
2012ed3e c.lwsp s4, 0x18(sp)
2012ed40 c.mv a0, s1
2012ed42 c.lwsp s1, 0x24(sp)
2012ed44 c.addi16sp sp, 0x30
2012ed46 c.jr ra
2012ed48 andi a5, a5, 0x100
2012ed4c c.lui s2, 0x10
2012ed4e c.beqz a5, 4
2012ed50 c.lui s2, 0x14
2012ed52 lui s3, 0x20201
2012ed56 lw a5, 0x748(s3)
2012ed5a addi s2, s2, 0xa0
2012ed5e c.mv a0, s2
2012ed60 c.jalr a5
2012ed62 c.lw a5, 8(s0)
2012ed64 andi a1, a0, -0x41
2012ed68 andi a4, a5, 0xf
2012ed6c c.beqz a4, 6
2012ed6e ori a1, a0, 0x40
2012ed72 andi a5, a5, 0xf0
2012ed76 addi a4, zero, 0x20
2012ed7a bne a5, a4, 0x3c
2012ed7e lui s4, 0x20201
2012ed82 lw a5, 0x73c(s4)
2012ed86 c.mv a0, s2
2012ed88 c.lui s2, 0x10
2012ed8a c.jalr a5
2012ed8c c.lw a5, 8(s0)
2012ed8e andi a5, a5, 0x100
2012ed92 c.beqz a5, 4
2012ed94 c.lui s2, 0x14
2012ed96 lw a5, 0x748(s3)
2012ed9a addi s2, s2, 0x9c
2012ed9e c.mv a0, s2
2012eda0 c.jalr a5
2012eda2 c.lui a1, 0xffff0
2012eda4 c.and a0, a1
2012eda6 lw a5, 0x73c(s4)
2012edaa lhu a1, 0xa(s0)
2012edae c.or a1, a0
2012edb0 c.mv a0, s2
2012edb2 c.jalr a5
2012edb4 c.j -0x7e
2012edb6 .byte 0x13, 0x07