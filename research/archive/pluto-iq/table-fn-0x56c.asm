20027c64 lui a5, 0x20203
20027c68 lw a0, 0x28c(a5)
20027c6c c.beqz a0, 0x12
20027c6e lui a5, 0x20201
20027c72 lw a5, 0x190(a5)
20027c76 c.li a3, 0
20027c78 c.li a2, 4
20027c7a c.li a1, 0
20027c7c c.jr a5
20027c7e c.jr ra
20027c80 c.jr ra
20027c82 c.jr ra
20027c84 c.jr ra
20027c86 c.addi sp, -0x10
20027c88 c.swsp s0, 8(sp)
20027c8a c.swsp ra, 0xc(sp)
20027c8c andi a0, a0, 0x88
20027c90 addi a5, zero, 0x88
20027c94 c.li s0, 0
20027c96 bne a0, a5, 6
20027c9a c.li s0, 2
20027c9c andi a1, a1, 0x40
20027ca0 c.beqz a1, 0x10
20027ca2 lui a5, 0x20201
20027ca6 lw a5, 0x560(a5)
20027caa c.mv a0, a2
20027cac c.jalr a5
20027cae c.mv a1, a0
20027cb0 c.lwsp ra, 0xc(sp)
20027cb2 addi a0, s0, 0x18
20027cb6 c.lwsp s0, 8(sp)
20027cb8 c.add a0, a1
20027cba andi a0, a0, 0xff
20027cbe c.addi sp, 0x10
20027cc0 c.jr ra
20027cc2 lui a5, 0x20203
20027cc6 addi a5, a5, 0x580
20027cca c.lw a4, 0xc(a5)
20027ccc c.lw a5, 4(a5)
20027cce c.andi a0, 1
20027cd0 c.lw a4, 8(a4)
20027cd2 c.lw a5, 0x2c(a5)
20027cd4 c.bnez a0, 0x28
20027cd6 lbu a5, 0x26(a5)
20027cda sb a5, 0xad(a4)
20027cde c.li a4, 3
20027ce0 c.li a0, 8
20027ce2 beq a5, a4, 0x18
20027ce6 bltu a4, a5, 0x1c
20027cea c.addi a5, -1
20027cec andi a5, a5, 0xff
20027cf0 c.li a4, 1
20027cf2 c.li a0, 4
20027cf4 bgeu a4, a5, 6
20027cf8 c.li a0, 0
20027cfa c.jr ra
20027cfc lbu a5, 0x27(a5)
20027d00 c.j -0x26
20027d02 c.li a4, 6
20027d04 c.li a0, 8
20027d06 beq a5, a4, -0xc
20027d0a c.addi a5, -8
20027d0c andi a5, a5, 0xff
20027d10 c.li a4, 1
20027d12 c.j -0x1e
20027d14 lui a5, 0x20203
20027d18 lw a5, 0x58c(a5)
20027d1c c.addi sp, -0x20
20027d1e c.swsp s0, 0x18(sp)
20027d20 c.lw a5, 0(a5)
20027d22 c.swsp s1, 0x14(sp)
20027d24 c.swsp s2, 0x10(sp)
20027d26 c.swsp s3, 0xc(sp)
20027d28 c.swsp ra, 0x1c(sp)
20027d2a add s2, a1, a0
20027d2e sb zero, 0x17(a5)
20027d32 sw zero, 0x18(a5)
20027d36 sh zero, 0x1c(a5)
20027d3a sb zero, 0x1e(a5)
20027d3e sub s1, s2, a2
20027d42 addi s0, a5, 0x17
20027d46 lui s3, 0x20201
20027d4a bne s1, s2, 0x12
20027d4e c.lwsp ra, 0x1c(sp)
20027d50 c.lwsp s0, 0x18(sp)
20027d52 c.lwsp s1, 0x14(sp)
20027d54 c.lwsp s2, 0x10(sp)
20027d56 c.lwsp s3, 0xc(sp)
20027d58 c.addi16sp sp, 0x20
20027d5a c.jr ra
20027d5c lw a5, 0x760(s3)
20027d60 c.mv a0, s1
20027d62 c.addi s0, 1
20027d64 c.jalr a5
20027d66 sb a0, -1(s0)
20027d6a c.addi s1, 1
20027d6c c.j -0x22
20027d6e lui a5, 0x20203
20027d72 lw a5, 0x58c(a5)
20027d76 c.addi sp, -0x10
20027d78 c.swsp ra, 0xc(sp)
20027d7a c.lw a5, 0(a5)
20027d7c c.swsp s0, 8(sp)
20027d7e c.swsp s1, 4(sp)
20027d80 lbu a5, 0(a5)
20027d84 c.andi a5, 1
20027d86 c.bnez a5, 0x86
20027d88 andi s0, a1, 1
20027d8c c.beqz s0, 0x74
20027d8e c.lw a4, 0x1c(a0)