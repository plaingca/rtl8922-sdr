2000e8bc c.addi16sp sp, -0x30
2000e8be c.swsp s3, 0x1c(sp)
2000e8c0 lui s3, 0x20201
2000e8c4 lw a5, 0x668(s3)
2000e8c8 c.swsp s0, 0x28(sp)
2000e8ca c.swsp s1, 0x24(sp)
2000e8cc c.swsp s2, 0x20(sp)
2000e8ce c.swsp ra, 0x2c(sp)
2000e8d0 c.swsp s4, 0x18(sp)
2000e8d2 c.swsp s5, 0x14(sp)
2000e8d4 c.swsp s6, 0x10(sp)
2000e8d6 c.swsp s7, 0xc(sp)
2000e8d8 c.mv s0, a0
2000e8da c.li a0, 1
2000e8dc c.mv s1, a1
2000e8de c.mv s2, a2
2000e8e0 c.jalr a5
2000e8e2 c.beqz a0, 0x28
2000e8e4 c.li a5, 1
2000e8e6 bgeu a5, s0, 0x46
2000e8ea lui a5, 0x20201
2000e8ee lw a6, 0x6b8(a5)
2000e8f2 c.lui a0, 1
2000e8f4 addi a0, a0, -0x800
2000e8f8 c.mv a5, s0
2000e8fa c.li a4, 1
2000e8fc addi a3, zero, 0x229
2000e900 c.li a2, 2
2000e902 c.li a1, 0
2000e904 c.jalr a6
2000e906 c.li a0, 9
2000e908 c.j 0xe
2000e90a lw a5, 0x668(s3)
2000e90e c.li a0, 3
2000e910 c.jalr a5
2000e912 c.bnez a0, -0x2e
2000e914 c.li a0, 0x10
2000e916 c.lwsp ra, 0x2c(sp)
2000e918 c.lwsp s0, 0x28(sp)
2000e91a c.lwsp s1, 0x24(sp)
2000e91c c.lwsp s2, 0x20(sp)
2000e91e c.lwsp s3, 0x1c(sp)
2000e920 c.lwsp s4, 0x18(sp)
2000e922 c.lwsp s5, 0x14(sp)
2000e924 c.lwsp s6, 0x10(sp)
2000e926 c.lwsp s7, 0xc(sp)
2000e928 c.addi16sp sp, 0x30
2000e92a c.jr ra
2000e92c slli s6, s0, 1
2000e930 c.add s6, s1
2000e932 addi a5, zero, 0x28
2000e936 mul a5, s6, a5
2000e93a lui a4, 0x20202
2000e93e lw s6, 0x538(a4)
2000e942 c.add s6, a5
2000e944 lw a5, 0(s6)
2000e948 andi a5, a5, 0xc0
2000e94c beqz s2, 0x28
2000e950 c.beqz a5, 0x48
2000e952 lui a5, 0x20201
2000e956 lw a7, 0x6b8(a5)
2000e95a c.lui a0, 1
2000e95c addi a0, a0, -0x800
2000e960 c.mv a6, s1
2000e962 c.mv a5, s0
2000e964 c.li a4, 2
2000e966 addi a3, zero, 0x225
2000e96a c.li a2, 2
2000e96c c.li a1, 0
2000e96e c.jalr a7
2000e970 c.li a0, 1
2000e972 c.j -0x5c
2000e974 c.bnez a5, 0x24
2000e976 lui a5, 0x20201
2000e97a lw a7, 0x6b8(a5)
2000e97e c.lui a0, 1
2000e980 addi a0, a0, -0x800
2000e984 c.mv a6, s1
2000e986 c.mv a5, s0
2000e988 c.li a4, 2
2000e98a addi a3, zero, 0x226
2000e98e c.li a2, 2
2000e990 c.li a1, 0
2000e992 c.jalr a7
2000e994 c.li a0, 2
2000e996 c.j -0x80
2000e998 lui s7, 0x20201
2000e99c lw a5, 0x614(s7)
2000e9a0 c.li a3, 0
2000e9a2 c.li a2, 0
2000e9a4 c.mv a1, s1
2000e9a6 c.mv a0, s0
2000e9a8 lui s5, 0xefeff
2000e9ac c.jalr a5
2000e9ae c.addi s5, -0x11
2000e9b0 c.mv s4, a0
2000e9b2 bne a0, s5, 8
2000e9b6 c.li a0, 0x11
2000e9b8 c.j -0xa2
2000e9ba lui a5, 0x20201
2000e9be lw a5, 0x748(a5)
2000e9c2 c.jalr a5
2000e9c4 c.mv s3, a0
2000e9c6 andi a5, a0, 1
2000e9ca beqz s2, 0x28
2000e9ce c.beqz a5, 0xa0
2000e9d0 lui a5, 0x20201
2000e9d4 lw a7, 0x6b8(a5)
2000e9d8 c.lui a0, 1
2000e9da addi a0, a0, -0x800
2000e9de c.mv a6, s1
2000e9e0 c.mv a5, s0
2000e9e2 c.li a4, 2
2000e9e4 addi a3, zero, 0x227