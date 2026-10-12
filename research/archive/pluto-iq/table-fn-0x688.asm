2001c15a lui a5, 0x20203
2001c15e lw a5, 0x5a4(a5)
2001c162 c.beqz a5, 0xe
2001c164 c.lw a0, 0(a5)
2001c166 addi a2, zero, 0x7c
2001c16a c.li a1, 0
2001c16c j 0x1307a
2001c170 c.jr ra
2001c172 lui a5, 0x20203
2001c176 lw a5, 0x5a4(a5)
2001c17a c.beqz a5, 0xe
2001c17c c.lw a5, 0(a5)
2001c17e c.slli a0, 2
2001c180 c.add a0, a5
2001c182 c.lw a5, 0(a0)
2001c184 c.addi a5, 1
2001c186 c.sw a5, 0(a0)
2001c188 c.jr ra
2001c18a lui a5, 0x20203
2001c18e addi a5, a5, -0x538
2001c192 c.add a5, a0
2001c194 lbu a0, 0(a5)
2001c198 c.jr ra
2001c19a c.jr ra
2001c19c c.addi sp, -0x20
2001c19e c.swsp s1, 0x14(sp)
2001c1a0 lui s1, 0x20201
2001c1a4 lw a5, 0x748(s1)
2001c1a8 c.swsp s0, 0x18(sp)
2001c1aa c.lui s0, 8
2001c1ac c.swsp s2, 0x10(sp)
2001c1ae c.swsp ra, 0x1c(sp)
2001c1b0 c.swsp s3, 0xc(sp)
2001c1b2 c.swsp s4, 8(sp)
2001c1b4 c.swsp s5, 4(sp)
2001c1b6 c.swsp s6, 0(sp)
2001c1b8 c.mv s2, a0
2001c1ba addi a0, s0, 0x400
2001c1be c.jalr a5
2001c1c0 andi a0, a0, 0x200
2001c1c4 c.beqz a0, 0xe0
2001c1c6 lw a5, 0x748(s1)
2001c1ca c.lui s4, 9
2001c1cc addi a0, s4, -0x6ec
2001c1d0 c.jalr a5
2001c1d2 lui s3, 0x20201
2001c1d6 lw a5, 0x73c(s3)
2001c1da lui a1, 0x20
2001c1de c.or a1, a0
2001c1e0 addi a0, s4, -0x6ec
2001c1e4 c.jalr a5
2001c1e6 beqz s2, 0x1e
2001c1ea lw s2, 0x73c(s3)
2001c1ee lw a5, 0x748(s1)
2001c1f2 addi a0, s0, 0x400
2001c1f6 c.jalr a5
2001c1f8 lui a1, 0x80000
2001c1fc c.or a1, a0
2001c1fe addi a0, s0, 0x400
2001c202 c.jalr s2
2001c204 lui s0, 0x20201
2001c208 lw a5, 0x74c(s0)
2001c20c lui a1, 0x100
2001c210 lui a0, 0xb8006
2001c214 lui s2, 0xb8006
2001c218 c.jalr a5
2001c21a addi s1, zero, 0x7d1
2001c21e lui s3, 0x20201
2001c222 addi s4, s2, 0x100
2001c226 c.lui s5, 0x10
2001c228 lui s6, 0x20202
2001c22c c.addi s1, -1
2001c22e c.bnez s1, 0x1c
2001c230 lui a5, 0x20201
2001c234 lw a5, 0x6b8(a5)
2001c238 c.lui a0, 1
2001c23a c.li a4, 0
2001c23c addi a3, zero, 0xf6
2001c240 c.li a2, 2
2001c242 c.li a1, 0
2001c244 c.jalr a5
2001c246 c.li a0, 0
2001c248 c.j 0x5e
2001c24a lw a5, 0x758(s3)
2001c24e c.mv a0, s4
2001c250 c.jalr a5
2001c252 and a0, a0, s5
2001c256 c.beqz a0, 0x64
2001c258 lw a5, 0x2d0(s6)
2001c25c c.li a0, 1
2001c25e c.jalr a5
2001c260 c.j -0x34
2001c262 lw a5, 0x74c(s0)
2001c266 c.li a1, 3
2001c268 addi a0, s2, 0x43c
2001c26c c.jalr a5
2001c26e lw a5, 0x74c(s0)
2001c272 lui a0, 0xb8006
2001c276 c.li a1, 7
2001c278 addi a0, a0, 0x440
2001c27c c.jalr a5
2001c27e lui a5, 0x20201
2001c282 lw s1, 0x738(a5)