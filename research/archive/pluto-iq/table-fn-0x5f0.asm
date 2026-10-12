2000ee08 c.addi16sp sp, -0x30
2000ee0a c.swsp s1, 0x24(sp)
2000ee0c lui s1, 0x20201
2000ee10 lw a5, 0x668(s1)
2000ee14 c.swsp s0, 0x28(sp)
2000ee16 c.swsp ra, 0x2c(sp)
2000ee18 c.swsp s2, 0x20(sp)
2000ee1a c.swsp s3, 0x1c(sp)
2000ee1c c.swsp s4, 0x18(sp)
2000ee1e c.swsp s5, 0x14(sp)
2000ee20 c.swsp s6, 0x10(sp)
2000ee22 c.swsp s7, 0xc(sp)
2000ee24 c.swsp s8, 8(sp)
2000ee26 c.swsp s9, 4(sp)
2000ee28 c.swsp s10, 0(sp)
2000ee2a c.mv s0, a0
2000ee2c c.li a0, 1
2000ee2e c.jalr a5
2000ee30 c.beqz a0, 0x22
2000ee32 c.bnez s0, 0x48
2000ee34 lui a5, 0x20201
2000ee38 lw a5, 0x6b8(a5)
2000ee3c c.lui a0, 1
2000ee3e addi a0, a0, -0x800
2000ee42 c.li a4, 0
2000ee44 addi a3, zero, 0x230
2000ee48 c.li a2, 2
2000ee4a c.li a1, 0
2000ee4c c.jalr a5
2000ee4e c.li a0, 0xe
2000ee50 c.j 0xe
2000ee52 lw a5, 0x668(s1)
2000ee56 c.li a0, 3
2000ee58 c.jalr a5
2000ee5a c.bnez a0, -0x28
2000ee5c c.li a0, 0x10
2000ee5e c.lwsp ra, 0x2c(sp)
2000ee60 c.lwsp s0, 0x28(sp)
2000ee62 c.lwsp s1, 0x24(sp)
2000ee64 c.lwsp s2, 0x20(sp)
2000ee66 c.lwsp s3, 0x1c(sp)
2000ee68 c.lwsp s4, 0x18(sp)
2000ee6a c.lwsp s5, 0x14(sp)
2000ee6c c.lwsp s6, 0x10(sp)
2000ee6e c.lwsp s7, 0xc(sp)
2000ee70 c.lwsp s8, 8(sp)
2000ee72 c.lwsp s9, 4(sp)
2000ee74 c.lwsp s10, 0(sp)
2000ee76 c.addi16sp sp, 0x30
2000ee78 c.jr ra
2000ee7a c.lw a0, 4(s0)
2000ee7c c.li a4, 4
2000ee7e srli a5, a0, 9
2000ee82 c.andi a5, 7
2000ee84 bgeu a4, a5, 0x22
2000ee88 lui a4, 0x20201
2000ee8c lw a6, 0x6b8(a4)
2000ee90 c.lui a0, 1
2000ee92 addi a0, a0, -0x800
2000ee96 c.li a4, 1
2000ee98 addi a3, zero, 0x231
2000ee9c c.li a2, 2
2000ee9e c.li a1, 0
2000eea0 c.jalr a6
2000eea2 c.li a0, 0xa
2000eea4 c.j -0x46
2000eea6 lui a5, 0x20201
2000eeaa lw a5, 0x604(a5)
2000eeae c.srli a0, 8
2000eeb0 c.andi a0, 1
2000eeb2 c.jalr a5
2000eeb4 lbu a5, 5(s0)
2000eeb8 andi s2, a0, 0xf
2000eebc slli a4, s2, 4
2000eec0 c.andi a5, 0xf
2000eec2 c.or a5, a4
2000eec4 sb a5, 5(s0)
2000eec8 c.li a5, 1
2000eeca bgeu a5, s2, 0x22
2000eece lui a5, 0x20201
2000eed2 lw a5, 0x6b8(a5)
2000eed6 c.lui a0, 1
2000eed8 addi a0, a0, -0x800
2000eedc c.li a4, 0
2000eede addi a3, zero, 0x232
2000eee2 c.li a2, 2
2000eee4 c.li a1, 0
2000eee6 c.jalr a5
2000eee8 c.li a0, 0xb
2000eeea c.j -0x8c
2000eeec c.lw s1, 4(s0)
2000eeee lui a5, 0x20202
2000eef2 lui s4, 0x20201
2000eef6 lw s3, 0x538(a5)
2000eefa c.srli s1, 8
2000eefc lw a5, 0x614(s4)
2000ef00 c.andi s1, 1
2000ef02 c.li a3, 0
2000ef04 c.li a2, 0
2000ef06 c.mv a1, s2
2000ef08 c.mv a0, s1
2000ef0a c.jalr a5
2000ef0c lui a5, 0xefeff
2000ef10 c.addi a5, -0x11
2000ef12 c.mv s7, a0
2000ef14 bne a0, a5, 8
2000ef18 c.li a0, 0x11
2000ef1a c.j -0xbc
2000ef1c lui s5, 0x20201
2000ef20 lw a5, 0x748(s5)
2000ef24 c.jalr a5
2000ef26 andi a5, a0, 1
2000ef2a c.beqz a5, 0x20
2000ef2c lui a5, 0x20201
2000ef30 lw a5, 0x6b8(a5)