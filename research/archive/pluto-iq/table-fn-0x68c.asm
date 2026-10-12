2001bfe8 c.addi16sp sp, -0x50
2001bfea c.swsp s3, 0x3c(sp)
2001bfec c.swsp ra, 0x4c(sp)
2001bfee c.swsp s0, 0x48(sp)
2001bff0 c.swsp s1, 0x44(sp)
2001bff2 c.swsp s2, 0x40(sp)
2001bff4 c.swsp s4, 0x38(sp)
2001bff6 c.swsp s5, 0x34(sp)
2001bff8 c.swsp s6, 0x30(sp)
2001bffa c.swsp s7, 0x2c(sp)
2001bffc c.swsp s8, 0x28(sp)
2001bffe c.swsp s9, 0x24(sp)
2001c000 c.swsp s10, 0x20(sp)
2001c002 c.swsp s11, 0x1c(sp)
2001c004 c.mv s3, a0
2001c006 c.beqz a1, 0xbc
2001c008 lui s2, 0x20201
2001c00c lw a5, 0x6b8(s2)
2001c010 c.li a4, 0
2001c012 addi a3, zero, 0xc5
2001c016 c.li a2, 2
2001c018 lui a0, 0x800
2001c01c c.li a1, 0
2001c01e c.jalr a5
2001c020 lw a5, 0x6b8(s2)
2001c024 c.li a4, 0
2001c026 addi a3, zero, 0xc6
2001c02a c.li a2, 2
2001c02c lui a0, 0x800
2001c030 c.li a1, 0
2001c032 lui s0, 0x20203
2001c036 lui s4, 0x20203
2001c03a c.jalr a5
2001c03c addi s0, s0, -0x5b4
2001c040 c.li s1, 0
2001c042 c.li s8, 0x15
2001c044 lui s5, 0x20201
2001c048 lui s6, 0x20201
2001c04c addi s4, s4, 0x580
2001c050 c.li s9, 0x16
2001c052 c.li s7, 0x1f
2001c054 slli s10, s1, 2
2001c058 bgeu s8, s1, 0xb4
2001c05c bne s1, s9, 0x18
2001c060 lw a5, 0x6b8(s2)
2001c064 c.li a4, 0
2001c066 addi a3, zero, 0xc6
2001c06a c.li a2, 2
2001c06c lui a0, 0x800
2001c070 c.li a1, 0
2001c072 c.jalr a5
2001c074 lw s11, 0x6b4(s5)
2001c078 c.lw a0, 0(s0)
2001c07a lw a5, 0x10c(s6)
2001c07e c.jalr a5
2001c080 c.lw a5, 0(s0)
2001c082 andi a4, a0, 0xff
2001c086 addi a3, zero, 0xc7
2001c08a c.li a2, 2
2001c08c lui a0, 0x800
2001c090 c.li a1, 0
2001c092 c.jalr s11
2001c094 lw a5, 0x24(s4)
2001c098 lw t1, 0x6b8(s2)
2001c09c c.li a4, 3
2001c09e c.lw a5, 0(a5)
2001c0a0 addi a3, zero, 0xc8
2001c0a4 c.li a2, 2
2001c0a6 c.add a5, s10
2001c0a8 lw a7, 0xf8(a5)
2001c0ac lw a6, 0x7c(a5)
2001c0b0 c.lw a5, 0(a5)
2001c0b2 lui a0, 0x800
2001c0b6 c.li a1, 0
2001c0b8 c.jalr t1
2001c0ba c.addi s1, 1
2001c0bc c.addi s0, 4
2001c0be bne s1, s7, -0x6a
2001c0c2 beqz s3, 0x2a
2001c0c6 lui s0, 0x20203
2001c0ca addi s0, s0, 0x580
2001c0ce c.lw a5, 0x24(s0)
2001c0d0 addi a2, zero, 0x174
2001c0d4 c.mv a0, s3
2001c0d6 c.lw a1, 0(a5)
2001c0d8 jal 0x13104
2001c0dc c.lw a5, 0x24(s0)
2001c0de addi a2, zero, 0x110
2001c0e2 addi a0, s3, 0x174
2001c0e6 c.lw a1, 4(a5)
2001c0e8 jal 0x130f4
2001c0ec c.lwsp ra, 0x4c(sp)
2001c0ee c.lwsp s0, 0x48(sp)
2001c0f0 c.lwsp s1, 0x44(sp)
2001c0f2 c.lwsp s2, 0x40(sp)
2001c0f4 c.lwsp s3, 0x3c(sp)
2001c0f6 c.lwsp s4, 0x38(sp)
2001c0f8 c.lwsp s5, 0x34(sp)
2001c0fa c.lwsp s6, 0x30(sp)
2001c0fc c.lwsp s7, 0x2c(sp)
2001c0fe c.lwsp s8, 0x28(sp)
2001c100 c.lwsp s9, 0x24(sp)
2001c102 c.lwsp s10, 0x20(sp)
2001c104 c.lwsp s11, 0x1c(sp)
2001c106 c.li a0, 0
2001c108 c.addi16sp sp, 0x50
2001c10a c.jr ra
2001c10c lw s11, 0x6b4(s5)
2001c110 c.lw a0, 0(s0)
2001c112 .byte 0x83, 0x27