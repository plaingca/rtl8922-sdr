20010b40 c.jr ra
20010b42 c.jr ra
20010b44 c.jr ra
20010b46 c.lui a5, 0x10
20010b48 c.addi a5, -0x10
20010b4a c.and a0, a5
20010b4c c.lui a5, 0xffffe
20010b4e c.addi a5, -0x10
20010b50 c.add a0, a5
20010b52 seqz a0, a0
20010b56 c.jr ra
20010b58 c.addi sp, -0x20
20010b5a c.swsp s0, 0x18(sp)
20010b5c c.swsp s1, 0x14(sp)
20010b5e lui s0, 0x20201
20010b62 lui s1, 0x20201
20010b66 c.swsp s2, 0x10(sp)
20010b68 lw s2, 0x73c(s1)
20010b6c lw a5, 0x748(s0)
20010b70 c.swsp ra, 0x1c(sp)
20010b72 c.swsp s3, 0xc(sp)
20010b74 addi a0, zero, 0x40
20010b78 c.jalr a5
20010b7a lui a1, 0x80
20010b7e c.or a1, a0
20010b80 addi a0, zero, 0x40
20010b84 c.jalr s2
20010b86 lw s1, 0x73c(s1)
20010b8a lw a5, 0x748(s0)
20010b8e addi a0, zero, 0x88
20010b92 lui s0, 0xb8004
20010b96 c.jalr a5
20010b98 ori a1, a0, 0x100
20010b9c addi a0, zero, 0x88
20010ba0 c.jalr s1
20010ba2 lui s2, 0x20201
20010ba6 addi s1, s0, 0x28
20010baa lw a5, 0x758(s2)
20010bae c.mv a0, s1
20010bb0 c.jalr a5
20010bb2 andi a0, a0, 0x80
20010bb6 c.beqz a0, -0xc
20010bb8 lui s1, 0x20201
20010bbc lw s3, 0x74c(s1)
20010bc0 lw a5, 0x758(s2)
20010bc4 addi a0, s0, 8
20010bc8 c.jalr a5
20010bca andi a1, a0, -2
20010bce addi a0, s0, 8
20010bd2 c.jalr s3
20010bd4 lw a5, 0x74c(s1)
20010bd8 addi a0, s0, 0x14
20010bdc c.li a1, 4
20010bde c.jalr a5
20010be0 lw a5, 0x74c(s1)
20010be4 addi a0, s0, 0x114
20010be8 c.li a1, 4
20010bea c.jalr a5
20010bec lw a5, 0x74c(s1)
20010bf0 c.li a1, 0
20010bf2 addi a0, s0, 0x120
20010bf6 c.jalr a5
20010bf8 lw s3, 0x74c(s1)
20010bfc lw a5, 0x758(s2)
20010c00 addi a0, s0, 0x11c
20010c04 c.jalr a5
20010c06 lui a1, 0x30
20010c0a c.or a1, a0
20010c0c addi a0, s0, 0x11c
20010c10 c.jalr s3
20010c12 lw a5, 0x74c(s1)
20010c16 c.li a1, 0
20010c18 addi a0, s0, 0x2c
20010c1c c.jalr a5
20010c1e lw s1, 0x74c(s1)
20010c22 lw a5, 0x758(s2)
20010c26 addi a0, s0, 8
20010c2a c.jalr a5
20010c2c ori a1, a0, 1
20010c30 addi a0, s0, 8
20010c34 c.jalr s1
20010c36 lui s0, 0x20205
20010c3a c.li a2, 0x14
20010c3c c.li a1, 0
20010c3e addi a0, s0, -0x1a0
20010c42 jal 0x1e5a4
20010c46 lui a5, 0x20202
20010c4a lw a5, 0x10(a5)
20010c4e c.jalr a5
20010c50 addi a5, s0, -0x1a0
20010c54 c.lw a3, 0xc(a5)
20010c56 lui a4, 0x1000
20010c5a bgeu a4, a3, 0x1a
20010c5e lbu a4, 8(a5)
20010c62 c.bnez a4, 0x12
20010c64 lbu a4, 0xa(a5)
20010c68 lbu a3, 5(a5)