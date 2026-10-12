20012a6e c.addi16sp sp, -0x30
20012a70 c.swsp s6, 0x10(sp)
20012a72 c.lui s6, 0xa
20012a74 c.swsp s0, 0x28(sp)
20012a76 c.swsp s1, 0x24(sp)
20012a78 c.swsp s2, 0x20(sp)
20012a7a c.swsp s3, 0x1c(sp)
20012a7c c.swsp s4, 0x18(sp)
20012a7e c.swsp s5, 0x14(sp)
20012a80 c.swsp s7, 0xc(sp)
20012a82 c.swsp s8, 8(sp)
20012a84 c.swsp s9, 4(sp)
20012a86 c.swsp ra, 0x2c(sp)
20012a88 c.mv s2, a0
20012a8a c.mv s1, a1
20012a8c c.mv s3, a2
20012a8e c.li s0, 0
20012a90 lui s5, 0x20201
20012a94 lui s4, 0x20201
20012a98 lui s8, 0x82000
20012a9c addi s7, s6, 0x378
20012aa0 lui s9, 0x20201
20012aa4 lbu a4, 0x21(s1)
20012aa8 c.li a5, 2
20012aaa c.bnez a4, 4
20012aac c.li a5, 8
20012aae bltu s0, a5, 0x58
20012ab2 lw a5, 0x73c(s5)
20012ab6 lui a1, 0x80000
20012aba or a1, s2, a1
20012abe c.lui s2, 0xa
20012ac0 addi a0, s2, 0x378
20012ac4 c.jalr a5
20012ac6 lw a5, 0x7b8(s4)
20012aca addi a0, s2, 0x378
20012ace c.jalr a5
20012ad0 c.li a5, 1
20012ad2 c.mv s0, a0
20012ad4 bne a0, a5, 0x54
20012ad8 lui a5, 0x20201
20012adc lw a5, 0x748(a5)
20012ae0 addi a0, s2, 0x37c
20012ae4 c.jalr a5
20012ae6 srli a5, a0, 0xb
20012aea c.andi a5, 1
20012aec sb a5, 0(s3)
20012af0 srli a5, a0, 0xa
20012af4 c.andi a5, 1
20012af6 sb a5, 0x21(s1)
20012afa srli a5, a0, 8
20012afe c.andi a5, 3
20012b00 sb a5, 0x20(s1)
20012b04 c.j 0x3c
20012b06 lw a5, 0x73c(s5)
20012b0a slli a1, s0, 0x10
20012b0e or a1, a1, s2
20012b12 or a1, a1, s8
20012b16 c.mv a0, s7
20012b18 c.jalr a5
20012b1a lw a5, 0x7b8(s4)
20012b1e c.mv a0, s7
20012b20 c.jalr a5
20012b22 c.li a5, 1
20012b24 beq a0, a5, 0x38
20012b28 lui a5, 0x20201
20012b2c lw a5, 0x6b8(a5)
20012b30 c.li a4, 0
20012b32 addi a3, zero, 0x10d
20012b36 c.li a2, 2
20012b38 c.li a0, 8
20012b3a c.li a1, 0
20012b3c c.jalr a5
20012b3e c.li s0, 0
20012b40 c.lwsp ra, 0x2c(sp)
20012b42 c.mv a0, s0
20012b44 c.lwsp s0, 0x28(sp)
20012b46 c.lwsp s1, 0x24(sp)
20012b48 c.lwsp s2, 0x20(sp)
20012b4a c.lwsp s3, 0x1c(sp)
20012b4c c.lwsp s4, 0x18(sp)
20012b4e c.lwsp s5, 0x14(sp)
20012b50 c.lwsp s6, 0x10(sp)
20012b52 c.lwsp s7, 0xc(sp)
20012b54 c.lwsp s8, 8(sp)
20012b56 c.lwsp s9, 4(sp)
20012b58 c.addi16sp sp, 0x30
20012b5a c.jr ra
20012b5c lw a5, 0x748(s9)
20012b60 addi a0, s6, 0x37c
20012b64 c.jalr a5
20012b66 slli a5, s0, 2
20012b6a c.add a5, s1
20012b6c c.sw a0, 0(a5)
20012b6e c.addi s0, 1
20012b70 c.j -0xcc
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
20012b98 .byte 0x83, 0xa7