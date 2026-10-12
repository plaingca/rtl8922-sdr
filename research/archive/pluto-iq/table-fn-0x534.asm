20028006 lui a5, 0x20203
2002800a lw a5, 0x584(a5)
2002800e c.lw a5, 0x2c(a5)
20028010 c.lw a0, 0x24(a5)
20028012 c.srli a0, 3
20028014 c.andi a0, 1
20028016 c.jr ra
20028018 lui a5, 0x20201
2002801c lw a5, 0x580(a5)
20028020 c.addi sp, -0x20
20028022 c.swsp ra, 0x1c(sp)
20028024 sh zero, 0xe(sp)
20028028 addi a0, sp, 0xe
2002802c c.jalr a5
2002802e lhu a3, 0xe(sp)
20028032 c.lui a4, 1
20028034 c.addi a4, -1
20028036 beq a3, a4, 0xe
2002803a seqz a0, a0
2002803e c.lwsp ra, 0x1c(sp)
20028040 c.addi16sp sp, 0x20
20028042 c.jr ra
20028044 c.li a0, 0
20028046 c.j -8
20028048 lui a5, 0x20203
2002804c lw a5, 0x58c(a5)
20028050 c.addi16sp sp, -0x30
20028052 c.swsp s4, 0x18(sp)
20028054 lw s4, 0(a5)
20028058 c.lw a5, 0xc(a0)
2002805a c.swsp s0, 0x28(sp)
2002805c c.swsp s2, 0x20(sp)
2002805e c.swsp s3, 0x1c(sp)
20028060 c.swsp s5, 0x14(sp)
20028062 c.swsp ra, 0x2c(sp)
20028064 c.swsp s1, 0x24(sp)
20028066 c.swsp s6, 0x10(sp)
20028068 c.swsp s7, 0xc(sp)
2002806a andi a5, a5, 0x400
2002806e c.mv s2, a0
20028070 c.mv s0, a1
20028072 c.mv s5, a2
20028074 lui s3, 0x20201
20028078 c.bnez a5, 0x38
2002807a addi s1, a1, 4
2002807e addi s6, a1, 0xa
20028082 addi s7, zero, 0xff
20028086 lw a5, 0x760(s3)
2002808a c.mv a0, s1
2002808c c.jalr a5
2002808e beq a0, s7, 0x1c
20028092 c.li a0, 0
20028094 c.lwsp ra, 0x2c(sp)
20028096 c.lwsp s0, 0x28(sp)
20028098 c.lwsp s1, 0x24(sp)
2002809a c.lwsp s2, 0x20(sp)
2002809c c.lwsp s3, 0x1c(sp)
2002809e c.lwsp s4, 0x18(sp)
200280a0 c.lwsp s5, 0x14(sp)
200280a2 c.lwsp s6, 0x10(sp)
200280a4 c.lwsp s7, 0xc(sp)
200280a6 c.addi16sp sp, 0x30
200280a8 c.jr ra
200280aa c.addi s1, 1
200280ac bne s1, s6, -0x26
200280b0 c.add s0, s5
200280b2 addi s1, s0, 0x24
200280b6 addi s5, zero, 0xff
200280ba addi s0, s0, 0x2a
200280be lw a5, 0x760(s3)
200280c2 c.mv a0, s1
200280c4 c.jalr a5
200280c6 bne a0, s5, -0x34
200280ca c.addi s1, 1
200280cc bne s0, s1, -0xe
200280d0 c.li s1, 0
200280d2 c.li s6, 6
200280d4 addi s5, zero, 0x60
200280d8 lw a5, 0x760(s3)
200280dc add a0, s1, s0
200280e0 c.jalr a5
200280e2 andi a4, s1, 0xff
200280e6 remu a4, a4, s6
200280ea c.mv a5, a0
200280ec c.add a4, s4
200280ee lbu a6, 1(a4)
200280f2 beq a0, a6, 0x1c
200280f6 lui a4, 0x20201
200280fa lw a7, 0x6b8(a4)
200280fe addi a3, zero, 0x249
20028102 c.li a4, 2
20028104 c.li a2, 2
20028106 c.lui a0, 2
20028108 c.li a1, 0
2002810a c.jalr a7
2002810c c.j -0x7a
2002810e c.addi s1, 1
20028110 bne s1, s5, -0x38
20028114 lui a5, 0x20201
20028118 lw t1, 0x6b8(a5)
2002811c lw a5, 0x1c(s2)
20028120 c.lui a0, 2
20028122 c.li a4, 3
20028124 srli a7, a5, 7
20028128 srli a6, a5, 5
2002812c c.srli a5, 6
2002812e andi a7, a7, 1