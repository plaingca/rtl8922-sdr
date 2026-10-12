20016d88 lui a5, 0x20202
20016d8c lw a5, 0x164(a5)
20016d90 c.addi16sp sp, -0x30
20016d92 c.swsp s0, 0x28(sp)
20016d94 c.swsp s1, 0x24(sp)
20016d96 c.swsp s2, 0x20(sp)
20016d98 c.swsp s3, 0x1c(sp)
20016d9a c.swsp ra, 0x2c(sp)
20016d9c c.mv s1, a0
20016d9e c.mv s2, a1
20016da0 c.mv s3, a2
20016da2 c.mv s0, a3
20016da4 c.swsp zero, 4(sp)
20016da6 c.li a3, 0
20016da8 c.addi4spn a2, sp, 4
20016daa c.li a1, 4
20016dac c.li a0, 0
20016dae c.jalr a5
20016db0 andi a0, a0, 0xff
20016db4 c.bnez a0, 0x6c
20016db6 lui a5, 0x20203
20016dba lw a5, 0x584(a5)
20016dbe c.slli s1, 2
20016dc0 c.lwsp a1, 4(sp)
20016dc2 c.lw a0, 0x20(a5)
20016dc4 c.add s1, a0
20016dc6 c.lw a5, 8(s1)
20016dc8 lbu a5, 0(a5)
20016dcc sb a5, 0(a1)
20016dd0 andi a5, s2, 3
20016dd4 slli a4, a5, 8
20016dd8 c.lw a5, 0(a1)
20016dda andi a5, a5, -0x301
20016dde c.or a5, a4
20016de0 c.sw a5, 0(a1)
20016de2 c.li a4, 1
20016de4 bne s2, a4, 0x18
20016de8 c.lui a4, 0xfffff
20016dea c.andi s0, 3
20016dec addi a4, a4, 0x3ff
20016df0 c.slli s0, 0xa
20016df2 c.and a5, a4
20016df4 c.or a5, s0
20016df6 c.sw a5, 0(a1)
20016df8 sb s3, 2(a1)
20016dfc addi a5, zero, 0x10d
20016e00 sh a5, 8(sp)
20016e04 c.li a5, 1
20016e06 sb a5, 0xa(sp)
20016e0a c.li a5, 0xc
20016e0c sh a5, 0xc(sp)
20016e10 lui a5, 0x20201
20016e14 lw a5, 0x6d0(a5)
20016e18 c.addi4spn a0, sp, 8
20016e1a c.jalr a5
20016e1c andi a0, a0, 0xff
20016e20 c.lwsp ra, 0x2c(sp)
20016e22 c.lwsp s0, 0x28(sp)
20016e24 c.lwsp s1, 0x24(sp)
20016e26 c.lwsp s2, 0x20(sp)
20016e28 c.lwsp s3, 0x1c(sp)
20016e2a c.addi16sp sp, 0x30
20016e2c c.jr ra
20016e2e lui a5, 0x20201
20016e32 lw a5, 0x668(a5)
20016e36 c.addi sp, -0x10
20016e38 c.swsp s0, 8(sp)
20016e3a c.swsp ra, 0xc(sp)
20016e3c c.swsp s1, 4(sp)
20016e3e c.swsp s2, 0(sp)
20016e40 c.mv s0, a0
20016e42 c.li a0, 0
20016e44 c.jalr a5
20016e46 c.bnez a0, 0x10
20016e48 c.li a0, 4
20016e4a c.lwsp ra, 0xc(sp)
20016e4c c.lwsp s0, 8(sp)
20016e4e c.lwsp s1, 4(sp)
20016e50 c.lwsp s2, 0(sp)
20016e52 c.addi sp, 0x10
20016e54 c.jr ra
20016e56 lui a5, 0x20202
20016e5a lw a5, -0x380(a5)
20016e5e lbu a0, 3(s0)
20016e62 c.jalr a5
20016e64 addi a5, zero, 0xff
20016e68 beq a0, a5, -0x20
20016e6c lui a5, 0x20203
20016e70 lw a5, 0x584(a5)
20016e74 c.lw a4, 0x20(a5)
20016e76 slli a5, a0, 2
20016e7a add a0, a4, a5
20016e7e c.lw a5, 8(a0)
20016e80 lw s2, 0x7c(a5)
20016e84 lui a5, 0x20201
20016e88 lw a5, 0x12c(a5)
20016e8c c.jalr a5
20016e8e c.mv s1, a0
20016e90 c.li a2, 8
20016e92 c.li a1, 0
20016e94 c.mv a0, s2
20016e96 jal 0x18350
20016e9a c.li a2, 4
20016e9c c.mv a1, s0
20016e9e c.mv a0, s2
20016ea0 jal 0x1833c
20016ea4 lui a5, 0x20201
20016ea8 lw a5, 0x130(a5)
20016eac c.mv a0, s1
20016eae c.jalr a5
20016eb0 c.li a0, 0
20016eb2 c.j -0x68