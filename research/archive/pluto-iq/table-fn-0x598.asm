20010ab2 c.addi sp, -0x20
20010ab4 c.swsp s3, 0xc(sp)
20010ab6 lui s3, 0x20201
20010aba lw a5, 0x460(s3)
20010abe c.swsp ra, 0x1c(sp)
20010ac0 c.swsp s0, 0x18(sp)
20010ac2 c.swsp s1, 0x14(sp)
20010ac4 c.swsp s2, 0x10(sp)
20010ac6 c.mv s1, a1
20010ac8 c.mv s0, a0
20010aca c.mv a1, a0
20010acc addi a0, zero, 0x30
20010ad0 c.mv s2, a2
20010ad2 c.jalr a5
20010ad4 lw a5, 0x460(s3)
20010ad8 c.mv a1, s1
20010ada addi a0, zero, 0x34
20010ade c.jalr a5
20010ae0 lw a5, 0x460(s3)
20010ae4 c.mv a1, s2
20010ae6 addi a0, zero, 0x38
20010aea c.jalr a5
20010aec lui a5, 0x20202
20010af0 lbu a5, 0x534(a5)
20010af4 c.bnez a5, 0x26
20010af6 lui a5, 0x20201
20010afa lw s3, 0x74c(a5)
20010afe lui a5, 0x20201
20010b02 lw a5, 0x758(a5)
20010b06 lui s2, 0xb8790
20010b0a addi a0, s2, -0x3fc
20010b0e c.jalr a5
20010b10 addi a1, a0, 1
20010b14 addi a0, s2, -0x3fc
20010b18 c.jalr s3
20010b1a lui a5, 0x20201
20010b1e lw a7, 0x6b8(a5)
20010b22 c.mv a5, s0
20010b24 c.lwsp s0, 0x18(sp)
20010b26 c.lwsp ra, 0x1c(sp)
20010b28 c.lwsp s2, 0x10(sp)
20010b2a c.lwsp s3, 0xc(sp)
20010b2c c.mv a6, s1
20010b2e c.lwsp s1, 0x14(sp)
20010b30 c.li a4, 2
20010b32 addi a3, zero, 0x122
20010b36 c.li a2, 2
20010b38 c.lui a0, 1
20010b3a c.li a1, 0
20010b3c c.addi16sp sp, 0x20
20010b3e c.jr a7
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