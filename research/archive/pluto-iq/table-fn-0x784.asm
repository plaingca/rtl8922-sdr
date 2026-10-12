20012b72 lui a5, 0x20201
20012b76 c.addi sp, -0x10
20012b78 lw a5, 0x73c(a5)
20012b7c c.swsp s1, 4(sp)
20012b7e c.swsp s2, 0(sp)
20012b80 c.mv s1, a1
20012b82 c.lui s2, 0xa
20012b84 lui a1, 0xa8000
20012b88 c.or a1, a0
20012b8a c.swsp ra, 0xc(sp)
20012b8c addi a0, s2, 0x34c
20012b90 c.swsp s0, 8(sp)
20012b92 c.jalr a5
20012b94 lui a5, 0x20201
20012b98 lw a5, 0x7b8(a5)
20012b9c addi a0, s2, 0x34c
20012ba0 c.jalr a5
20012ba2 c.li a5, 1
20012ba4 beq a0, a5, 0x2a
20012ba8 lui a5, 0x20201
20012bac lw a5, 0x6b8(a5)
20012bb0 c.li a4, 0
20012bb2 addi a3, zero, 0x10e
20012bb6 c.li a2, 2
20012bb8 c.li a0, 8
20012bba c.li a1, 0
20012bbc c.jalr a5
20012bbe c.li s0, 0
20012bc0 c.lwsp ra, 0xc(sp)
20012bc2 c.mv a0, s0
20012bc4 c.lwsp s0, 8(sp)
20012bc6 c.lwsp s1, 4(sp)
20012bc8 c.lwsp s2, 0(sp)
20012bca c.addi sp, 0x10
20012bcc c.jr ra
20012bce lui a5, 0x20201
20012bd2 lw a5, 0x748(a5)
20012bd6 c.mv s0, a0
20012bd8 addi a0, s2, 0x34c
20012bdc c.jalr a5
20012bde c.slli a0, 9
20012be0 c.srli a0, 0x11
20012be2 c.sw a0, 0(s1)
20012be4 c.j -0x24
20012be6 lui a5, 0x20201
20012bea lw a4, 0x73c(a5)
20012bee lui a5, 0x4000
20012bf2 addi a5, a5, -0x100
20012bf6 c.slli a1, 8
20012bf8 c.addi sp, -0x10
20012bfa c.and a1, a5
20012bfc c.swsp s0, 8(sp)
20012bfe lui a5, 0xac000
20012c02 c.or a1, a0
20012c04 c.lui s0, 0xa
20012c06 c.or a1, a5
20012c08 c.swsp ra, 0xc(sp)
20012c0a addi a0, s0, 0x34c
20012c0e c.jalr a4
20012c10 lui a5, 0x20201
20012c14 lw a5, 0x7b8(a5)
20012c18 addi a0, s0, 0x34c
20012c1c c.jalr a5
20012c1e c.li a5, 1
20012c20 beq a0, a5, 0x1c
20012c24 lui a5, 0x20201
20012c28 lw a5, 0x6b8(a5)
20012c2c c.li a0, 8
20012c2e c.li a4, 0
20012c30 addi a3, zero, 0x10f
20012c34 c.li a2, 2
20012c36 c.li a1, 0
20012c38 c.jalr a5
20012c3a c.li a0, 0
20012c3c c.lwsp ra, 0xc(sp)
20012c3e c.lwsp s0, 8(sp)
20012c40 c.addi sp, 0x10
20012c42 c.jr ra
20012c44 c.addi sp, -0x20
20012c46 c.swsp s1, 0x14(sp)
20012c48 c.swsp s2, 0x10(sp)
20012c4a lui s1, 0x20201
20012c4e lui s2, 0x20201
20012c52 c.swsp s4, 8(sp)
20012c54 lw s4, 0x73c(s2)
20012c58 lw a5, 0x748(s1)
20012c5c c.swsp s0, 0x18(sp)
20012c5e c.lui s0, 0x10
20012c60 c.swsp ra, 0x1c(sp)
20012c62 c.swsp s3, 0xc(sp)
20012c64 addi a0, s0, 0x344
20012c68 c.jalr a5
20012c6a c.lui s3, 8
20012c6c or a1, a0, s3
20012c70 addi a0, s0, 0x344
20012c74 c.jalr s4
20012c76 lw s4, 0x73c(s2)
20012c7a lw a5, 0x748(s1)
20012c7e addi a0, s0, 0x344
20012c82 c.jalr a5
20012c84 ori a1, a0, 0x100
20012c88 addi a0, s0, 0x344
20012c8c c.jalr s4
20012c8e lui a5, 0x20203
20012c92 lw a5, 0x588(a5)
20012c96 c.lw a5, 4(a5)
20012c98 lbu a4, 0xa(a5)
20012c9c c.li a5, 1