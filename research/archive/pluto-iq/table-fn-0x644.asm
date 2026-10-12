20018daa lui a5, 0x20201
20018dae lw a5, 0x668(a5)
20018db2 c.addi16sp sp, -0x30
20018db4 c.swsp ra, 0x2c(sp)
20018db6 c.swsp s0, 0x28(sp)
20018db8 c.swsp s1, 0x24(sp)
20018dba c.swsp s2, 0x20(sp)
20018dbc c.swsp s3, 0x1c(sp)
20018dbe c.swsp s4, 0x18(sp)
20018dc0 c.swsp s5, 0x14(sp)
20018dc2 c.li a0, 1
20018dc4 c.jalr a5
20018dc6 c.beqz a0, 0xb2
20018dc8 lui s1, 0x20201
20018dcc lw a5, 0x40c(s1)
20018dd0 lui s0, 0x20203
20018dd4 addi s2, s0, 0x580
20018dd8 c.swsp zero, 0xc(sp)
20018dda lui a1, 0xf20d0
20018dde addi a0, zero, 0x30
20018de2 lw s3, 4(s2)
20018de6 c.jalr a5
20018de8 lw a5, 4(s2)
20018dec sw a0, 0x3c(s3)
20018df0 c.mv s3, s1
20018df2 c.lw a0, 0x3c(a5)
20018df4 addi s1, s0, 0x580
20018df8 c.bnez a0, 0x24
20018dfa c.li a5, 6
20018dfc sb a5, 0(sp)
20018e00 lui a5, 0x20209
20018e04 addi a5, a5, -0x28c
20018e08 c.swsp a5, 4(sp)
20018e0a c.li a5, 0x15
20018e0c c.swsp a5, 8(sp)
20018e0e lui a5, 0x20202
20018e12 lw a5, 0x348(a5)
20018e16 c.mv a0, sp
20018e18 c.jalr a5
20018e1a c.j 0
20018e1c addi a2, zero, 0x30
20018e20 c.li a1, 0
20018e22 jal 0x163c4
20018e26 c.li s0, 0
20018e28 c.li s5, 8
20018e2a addi s4, zero, 0x30
20018e2e c.lw a5, 4(s1)
20018e30 lui a1, 0xf20d0
20018e34 addi a0, zero, 0x40
20018e38 lw s2, 0x3c(a5)
20018e3c lw a5, 0x40c(s3)
20018e40 c.add s2, s0
20018e42 sb s5, 5(s2)
20018e46 c.jalr a5
20018e48 sw a0, 8(s2)
20018e4c c.bnez a0, 0x26
20018e4e c.li a5, 6
20018e50 sb a5, 0(sp)
20018e54 lui a5, 0x20209
20018e58 addi a5, a5, -0x28c
20018e5c c.swsp a5, 4(sp)
20018e5e addi a5, zero, 0x22
20018e62 c.swsp a5, 8(sp)
20018e64 lui a5, 0x20202
20018e68 lw a5, 0x348(a5)
20018e6c c.mv a0, sp
20018e6e c.jalr a5
20018e70 c.j 0
20018e72 c.addi s0, 0xc
20018e74 bne s0, s4, -0x46
20018e78 c.lwsp ra, 0x2c(sp)
20018e7a c.lwsp s0, 0x28(sp)
20018e7c c.lwsp s1, 0x24(sp)
20018e7e c.lwsp s2, 0x20(sp)
20018e80 c.lwsp s3, 0x1c(sp)
20018e82 c.lwsp s4, 0x18(sp)
20018e84 c.lwsp s5, 0x14(sp)
20018e86 c.addi16sp sp, 0x30
20018e88 c.jr ra
20018e8a lui a5, 0x20201
20018e8e lw a5, 0x668(a5)
20018e92 c.addi sp, -0x10
20018e94 c.swsp s0, 8(sp)
20018e96 c.swsp ra, 0xc(sp)
20018e98 c.mv s0, a0
20018e9a c.li a0, 1
20018e9c c.jalr a5
20018e9e c.beqz a0, 0x2e
20018ea0 lhu a5, 0(s0)
20018ea4 lbu a2, 5(s0)
20018ea8 c.lw a0, 8(s0)
20018eaa andi a5, a5, -0x101
20018eae sh a5, 0(s0)
20018eb2 sb zero, 4(s0)
20018eb6 sb zero, 6(s0)
20018eba c.lwsp s0, 8(sp)
20018ebc c.lwsp ra, 0xc(sp)
20018ebe c.slli a2, 3
20018ec0 andi a2, a2, 0xf8
20018ec4 c.li a1, 0
20018ec6 c.addi sp, 0x10
20018ec8 j 0x1631e
20018ecc c.lwsp ra, 0xc(sp)
20018ece c.lwsp s0, 8(sp)
20018ed0 c.addi sp, 0x10
20018ed2 c.jr ra
20018ed4 .byte 0xb7, 0x17