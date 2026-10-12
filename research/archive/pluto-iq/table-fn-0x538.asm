20027f8e c.addi sp, -0x10
20027f90 c.swsp s1, 4(sp)
20027f92 lui s1, 0x20201
20027f96 lw a5, 0x540(s1)
20027f9a c.swsp ra, 0xc(sp)
20027f9c c.swsp s0, 8(sp)
20027f9e c.swsp s2, 0(sp)
20027fa0 c.mv s2, a1
20027fa2 addi a1, zero, 0x5a
20027fa6 c.mv s0, a0
20027fa8 c.jalr a5
20027faa lw a5, 0x540(s1)
20027fae c.li a1, 0
20027fb0 c.mv a0, s0
20027fb2 c.jalr a5
20027fb4 lw a5, 0x540(s1)
20027fb8 c.li a1, 0
20027fba c.mv a0, s0
20027fbc c.jalr a5
20027fbe lw a5, 0x540(s1)
20027fc2 c.li a1, 0
20027fc4 c.mv a0, s0
20027fc6 c.jalr a5
20027fc8 lw a5, 0x540(s1)
20027fcc c.li a1, 0
20027fce c.mv a0, s0
20027fd0 c.jalr a5
20027fd2 c.lw a5, 0x14(s0)
20027fd4 c.bnez a5, -0xc
20027fd6 lui s1, 0x20201
20027fda lw a5, 0x54c(s1)
20027fde c.lw a1, 8(s0)
20027fe0 c.mv a0, s2
20027fe2 c.jalr a5
20027fe4 lw a5, 0x54c(s1)
20027fe8 c.lw a1, 0xc(s0)
20027fea addi a0, s2, 4
20027fee c.jalr a5
20027ff0 lui a5, 0x20201
20027ff4 c.mv a0, s0
20027ff6 c.lwsp s0, 8(sp)
20027ff8 c.lwsp ra, 0xc(sp)
20027ffa c.lwsp s1, 4(sp)
20027ffc c.lwsp s2, 0(sp)
20027ffe lw a5, 0x548(a5)
20028002 c.addi sp, 0x10
20028004 c.jr a5
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