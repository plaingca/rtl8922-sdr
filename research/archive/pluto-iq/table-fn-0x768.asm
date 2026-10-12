2000e05c c.mv a5, a0
2000e05e c.beqz a0, 0x12
2000e060 lui a4, 0x20203
2000e064 lw a4, 0x588(a4)
2000e068 c.lw a4, 4(a4)
2000e06a lbu a0, 0xa(a4)
2000e06e c.beqz a0, 0x36
2000e070 lui a4, 0x20201
2000e074 c.addi sp, -0x10
2000e076 lw a4, 0x748(a4)
2000e07a c.swsp ra, 0xc(sp)
2000e07c c.lui a0, 0x11
2000e07e c.beqz a5, 4
2000e080 c.lui a0, 0x15
2000e082 addi a0, a0, -0x7f8
2000e086 c.jalr a4
2000e088 lui a5, 0x20202
2000e08c lw a5, 0x2d0(a5)
2000e090 c.srli a0, 0x1a
2000e092 c.li a4, 9
2000e094 bgeu a0, a4, 6
2000e098 c.li a0, 9
2000e09a c.jalr a5
2000e09c c.lwsp ra, 0xc(sp)
2000e09e c.li a0, 1
2000e0a0 c.addi sp, 0x10
2000e0a2 c.jr ra
2000e0a4 c.jr ra
2000e0a6 c.addi16sp sp, -0x40
2000e0a8 c.swsp s1, 0x34(sp)
2000e0aa c.swsp s2, 0x30(sp)
2000e0ac c.swsp s3, 0x2c(sp)
2000e0ae c.swsp s6, 0x20(sp)
2000e0b0 c.swsp ra, 0x3c(sp)
2000e0b2 c.swsp s0, 0x38(sp)
2000e0b4 c.swsp s4, 0x28(sp)
2000e0b6 c.swsp s5, 0x24(sp)
2000e0b8 c.swsp s7, 0x1c(sp)
2000e0ba c.swsp s8, 0x18(sp)
2000e0bc c.swsp s9, 0x14(sp)
2000e0be c.swsp s10, 0x10(sp)
2000e0c0 c.swsp s11, 0xc(sp)
2000e0c2 c.mv s1, a0
2000e0c4 c.mv s2, a1
2000e0c6 c.mv s3, a2
2000e0c8 c.mv s6, a3
2000e0ca c.beqz a3, 0x34
2000e0cc lui a5, 0x20203
2000e0d0 lw a5, 0x588(a5)
2000e0d4 c.lui s0, 0x15
2000e0d6 c.lw a5, 4(a5)
2000e0d8 lbu a5, 0xa(a5)
2000e0dc c.bnez a5, 0x24
2000e0de c.li a0, 0
2000e0e0 c.lwsp ra, 0x3c(sp)
2000e0e2 c.lwsp s0, 0x38(sp)
2000e0e4 c.lwsp s1, 0x34(sp)
2000e0e6 c.lwsp s2, 0x30(sp)
2000e0e8 c.lwsp s3, 0x2c(sp)
2000e0ea c.lwsp s4, 0x28(sp)
2000e0ec c.lwsp s5, 0x24(sp)
2000e0ee c.lwsp s6, 0x20(sp)
2000e0f0 c.lwsp s7, 0x1c(sp)
2000e0f2 c.lwsp s8, 0x18(sp)
2000e0f4 c.lwsp s9, 0x14(sp)
2000e0f6 c.lwsp s10, 0x10(sp)
2000e0f8 c.lwsp s11, 0xc(sp)
2000e0fa c.addi16sp sp, 0x40
2000e0fc c.jr ra
2000e0fe c.lui s0, 0x11
2000e100 lui s4, 0x20201
2000e104 lw a5, 0x740(s4)
2000e108 addi s5, s0, -0x714
2000e10c c.mv a0, s5
2000e10e c.jalr a5
2000e110 c.slli a0, 0x18
2000e112 c.srai a0, 0x18
2000e114 addi s7, s0, -0x6f8
2000e118 addi s0, s0, -0x6f4
2000e11c bltz a0, 8
2000e120 c.li a0, 1
2000e122 c.j -0x42
2000e124 lui a5, 0x20201
2000e128 lw a5, 0x768(a5)
2000e12c c.mv a0, s6
2000e12e c.jalr a5
2000e130 c.li a5, 1
2000e132 bne a0, a5, -0x54
2000e136 c.li s9, 4
2000e138 c.li s10, 0x12
2000e13a lui s6, 0x20202
2000e13e lui s8, 0x20201
2000e142 c.addi s2, -1
2000e144 beqz s2, -0x66
2000e148 lw a5, 0x740(s4)
2000e14c c.mv a0, s5
2000e14e c.jalr a5
2000e150 slli a5, a0, 0x18
2000e154 c.srai a5, 0x18
2000e156 bgez a5, -0x36
2000e15a andi a5, a0, 0x20
2000e15e c.beqz a5, 0xc
2000e160 lw a5, 0x2d0(s6)
2000e164 c.mv a0, s3
2000e166 c.jalr a5
2000e168 c.j -0x26
2000e16a c.andi a0, 0x1f
2000e16c addi a5, a0, -8
2000e170 andi a5, a5, 0xff
2000e174 bgeu s9, a5, -0x54
2000e178 beq a0, s10, -0x58
2000e17c lw a5, 0x2d0(s6)
2000e180 c.mv a0, s3
2000e182 c.jalr a5
2000e184 lw a5, 0x748(s8)