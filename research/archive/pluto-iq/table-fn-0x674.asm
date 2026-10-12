20011bae c.addi16sp sp, -0x60
20011bb0 c.swsp s7, 0x3c(sp)
20011bb2 c.lui s7, 0xfffff
20011bb4 c.swsp s3, 0x4c(sp)
20011bb6 and s3, a0, s7
20011bba sub a5, a0, s3
20011bbe c.swsp s4, 0x48(sp)
20011bc0 c.swsp s5, 0x44(sp)
20011bc2 add s4, a0, a1
20011bc6 c.swsp ra, 0x5c(sp)
20011bc8 c.swsp s0, 0x58(sp)
20011bca c.swsp s1, 0x54(sp)
20011bcc c.swsp s2, 0x50(sp)
20011bce c.swsp s6, 0x40(sp)
20011bd0 c.swsp s8, 0x38(sp)
20011bd2 c.swsp s9, 0x34(sp)
20011bd4 c.swsp s10, 0x30(sp)
20011bd6 c.swsp s11, 0x2c(sp)
20011bd8 c.swsp a5, 4(sp)
20011bda c.mv s5, a0
20011bdc and s7, s4, s7
20011be0 beq a0, s3, 0x118
20011be4 lui a5, 0x20201
20011be8 lw a5, 0x40c(a5)
20011bec lui a1, 0x71000
20011bf0 c.addi a1, 6
20011bf2 c.lui a0, 1
20011bf4 c.jalr a5
20011bf6 c.mv s2, a0
20011bf8 c.bnez a0, 0x52
20011bfa c.li a5, 6
20011bfc sb a5, 0x10(sp)
20011c00 lui a5, 0x20209
20011c04 addi a5, a5, -0x4d0
20011c08 c.swsp a5, 0x14(sp)
20011c0a addi a5, zero, 0x36b
20011c0e c.swsp a5, 0x18(sp)
20011c10 lui a5, 0x20202
20011c14 lw a5, 0x348(a5)
20011c18 c.addi4spn a0, sp, 0x10
20011c1a c.jalr a5
20011c1c lui a5, 0x20202
20011c20 lw a5, 0x340(a5)
20011c24 c.li a1, 0x10
20011c26 c.li a0, 0
20011c28 c.jalr a5
20011c2a c.li a0, 0
20011c2c c.lwsp ra, 0x5c(sp)
20011c2e c.lwsp s0, 0x58(sp)
20011c30 c.lwsp s1, 0x54(sp)
20011c32 c.lwsp s2, 0x50(sp)
20011c34 c.lwsp s3, 0x4c(sp)
20011c36 c.lwsp s4, 0x48(sp)
20011c38 c.lwsp s5, 0x44(sp)
20011c3a c.lwsp s6, 0x40(sp)
20011c3c c.lwsp s7, 0x3c(sp)
20011c3e c.lwsp s8, 0x38(sp)
20011c40 c.lwsp s9, 0x34(sp)
20011c42 c.lwsp s10, 0x30(sp)
20011c44 c.lwsp s11, 0x2c(sp)
20011c46 c.addi16sp sp, 0x60
20011c48 c.jr ra
20011c4a c.lui a2, 1
20011c4c c.li a1, 0
20011c4e jal 0x1d598
20011c52 c.mv s1, s3
20011c54 c.mv s6, s2
20011c56 c.li s0, 1
20011c58 addi s11, zero, 0x7f
20011c5c lui s10, 0x20202
20011c60 bltu s1, s5, 0x6a
20011c64 c.lui s10, 1
20011c66 addi s6, s10, -1
20011c6a and s6, s4, s6
20011c6e beqz s6, 0x116
20011c72 lui a5, 0x20201
20011c76 lw a5, 0x40c(a5)
20011c7a lui a1, 0x71000
20011c7e c.addi a1, 6
20011c80 c.lui a0, 1
20011c82 c.jalr a5
20011c84 c.mv s1, a0
20011c86 c.bnez a0, 0x78
20011c88 c.li a5, 6
20011c8a sb a5, 0x10(sp)
20011c8e lui a5, 0x20209
20011c92 addi a5, a5, -0x4d0
20011c96 c.swsp a5, 0x14(sp)
20011c98 addi a5, zero, 0x384
20011c9c c.swsp a5, 0x18(sp)
20011c9e lui a5, 0x20202
20011ca2 lw a5, 0x348(a5)
20011ca6 c.addi4spn a0, sp, 0x10
20011ca8 c.jalr a5
20011caa lui a5, 0x20202
20011cae lw a5, 0x340(a5)
20011cb2 c.li a1, 0x10
20011cb4 c.li a0, 0
20011cb6 c.jalr a5
20011cb8 beqz s2, -0x8e
20011cbc lui a5, 0x20201
20011cc0 lw a5, 0x408(a5)
20011cc4 c.mv a0, s2
20011cc6 c.jalr a5
20011cc8 c.j -0x9e
20011cca lw a5, -0x24(s10)
20011cce sub s8, s5, s1
20011cd2 c.mv a2, s6
20011cd4 bltu s11, s8, 0x14
20011cd8 c.mv a1, s8