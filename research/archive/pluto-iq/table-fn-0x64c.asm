20017022 lui a5, 0x20201
20017026 lw a5, 0x668(a5)
2001702a c.addi sp, -0x10
2001702c c.swsp s0, 8(sp)
2001702e c.swsp ra, 0xc(sp)
20017030 c.swsp s1, 4(sp)
20017032 c.swsp s2, 0(sp)
20017034 c.mv s0, a0
20017036 c.li a0, 0
20017038 c.jalr a5
2001703a c.bnez a0, 0x10
2001703c c.li a0, 4
2001703e c.lwsp ra, 0xc(sp)
20017040 c.lwsp s0, 8(sp)
20017042 c.lwsp s1, 4(sp)
20017044 c.lwsp s2, 0(sp)
20017046 c.addi sp, 0x10
20017048 c.jr ra
2001704a lui a5, 0x20202
2001704e lw a5, -0x380(a5)
20017052 lbu a0, 0(s0)
20017056 c.jalr a5
20017058 addi a5, zero, 0xff
2001705c c.mv s1, a0
2001705e beq a0, a5, -0x22
20017062 c.lw a5, 0(s0)
20017064 srli s2, a5, 8
20017068 c.srli a5, 0x12
2001706a andi s0, a5, 0x3ff
2001706e lui a5, 0x20201
20017072 lw a5, 0x12c(a5)
20017076 andi s2, s2, 0x3ff
2001707a c.jalr a5
2001707c lui a5, 0x20203
20017080 lw a5, 0x584(a5)
20017084 slli a3, s1, 2
20017088 c.mv a4, a0
2001708a c.lw a5, 0x20(a5)
2001708c lui a2, 0x20201
20017090 c.add a5, a3
20017092 c.lw a5, 8(a5)
20017094 c.lw a3, 0x7c(a5)
20017096 c.lw a5, 0(a3)
20017098 andi a1, a5, 4
2001709c c.bnez a1, 0xa
2001709e lw a5, 0x130(a2)
200170a2 c.jalr a5
200170a4 c.j -0x68
200170a6 c.srli a5, 3
200170a8 lui a1, 0x20208
200170ac c.andi a5, 3
200170ae addi a1, a1, 0x61c
200170b2 c.add a5, a1
200170b4 lbu a5, 0(a5)
200170b8 bltu a5, s2, 8
200170bc bgeu a5, s0, 0x14
200170c0 lbu a5, 6(a3)
200170c4 c.beqz a5, 0x12
200170c6 lw a5, 0x130(a2)
200170ca c.mv a0, a4
200170cc c.jalr a5
200170ce c.j 0x28
200170d0 sb zero, 6(a3)
200170d4 c.j -0xe
200170d6 c.li a5, 1
200170d8 sb a5, 6(a3)
200170dc lw a5, 0x130(a2)
200170e0 c.mv a0, a4
200170e2 c.jalr a5
200170e4 lui a5, 0x20201
200170e8 lw a5, 0x658(a5)
200170ec c.li a3, 0
200170ee c.li a2, 0
200170f0 c.li a1, 2
200170f2 c.mv a0, s1
200170f4 c.jalr a5
200170f6 c.li a0, 0
200170f8 c.j -0xba
200170fa lui a5, 0x20201
200170fe lw a5, 0x668(a5)
20017102 c.addi sp, -0x10
20017104 c.swsp s0, 8(sp)
20017106 c.swsp s1, 4(sp)
20017108 c.swsp ra, 0xc(sp)
2001710a c.mv s0, a0
2001710c c.li a0, 0
2001710e c.mv s1, a1
20017110 c.jalr a5
20017112 c.beqz a0, 0x90
20017114 lui a5, 0x20201
20017118 lw a5, 0x12c(a5)
2001711c c.jalr a5
2001711e lui a5, 0x20203
20017122 lw a5, 0x584(a5)
20017126 slli a4, s0, 2
2001712a c.mv a1, a0
2001712c c.lw a5, 0x20(a5)
2001712e lui a2, 0x20201
20017132 c.add a5, a4
20017134 c.lw a5, 8(a5)
20017136 c.lw a4, 0x7c(a5)
20017138 c.lw a3, 0(a4)
2001713a andi a5, a3, 2
2001713e c.bnez a5, 0x10
20017140 lw a5, 0x130(a2)
20017144 c.lwsp s0, 8(sp)
20017146 c.lwsp ra, 0xc(sp)
20017148 c.lwsp s1, 4(sp)
2001714a c.addi sp, 0x10
2001714c c.jr a5