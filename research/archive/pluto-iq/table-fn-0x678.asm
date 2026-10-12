2001cbde c.addi16sp sp, -0x40
2001cbe0 c.swsp s1, 0x34(sp)
2001cbe2 c.li s1, 0x14
2001cbe4 mul s1, a0, s1
2001cbe8 lui a5, 0x20203
2001cbec addi a5, a5, 0x580
2001cbf0 c.lw a4, 8(a5)
2001cbf2 c.swsp s6, 0x20(sp)
2001cbf4 c.swsp s5, 0x24(sp)
2001cbf6 lw s6, 8(a4)
2001cbfa c.lw a4, 0xc(a5)
2001cbfc lui s5, 0x20203
2001cc00 addi s5, s5, -0x438
2001cc04 add a5, s1, a2
2001cc08 c.lw s1, 0x18(a4)
2001cc0a c.swsp s0, 0x38(sp)
2001cc0c c.swsp s2, 0x30(sp)
2001cc0e c.swsp s3, 0x2c(sp)
2001cc10 c.swsp s4, 0x28(sp)
2001cc12 c.swsp s7, 0x1c(sp)
2001cc14 c.swsp s8, 0x18(sp)
2001cc16 c.swsp s9, 0x14(sp)
2001cc18 c.swsp s10, 0x10(sp)
2001cc1a c.swsp ra, 0x3c(sp)
2001cc1c c.mv s3, a0
2001cc1e c.mv s4, a1
2001cc20 c.mv s0, a2
2001cc22 c.swsp zero, 8(sp)
2001cc24 c.add s1, a5
2001cc26 c.li s2, 0
2001cc28 c.li s9, 0xf
2001cc2a lui s7, 0x20201
2001cc2e lui s8, 0x20202
2001cc32 addi s10, s5, 0x10
2001cc36 bltu s9, s0, 0x9e
2001cc3a add a5, s5, s2
2001cc3e c.lw a5, 0(a5)
2001cc40 and a5, s4, a5
2001cc44 c.beqz a5, 0x3a
2001cc46 c.li a5, 1
2001cc48 sb a5, 0xc(sp)
2001cc4c sb s3, 0xd(sp)
2001cc50 sb zero, 0xe(sp)
2001cc54 sb s0, 0xf(sp)
2001cc58 sb zero, 0x410(s1)
2001cc5c lw a5, 0x294(s7)
2001cc60 lw a0, 0x34(s6)
2001cc64 c.addi4spn a3, sp, 8
2001cc66 c.li a2, 4
2001cc68 c.addi4spn a1, sp, 0xc
2001cc6a c.jalr a5
2001cc6c c.li a5, 4
2001cc6e beq a0, a5, 0x10
2001cc72 lw a5, 0x340(s8)
2001cc76 lui a1, 0x4000
2001cc7a c.li a0, 0
2001cc7c c.jalr a5
2001cc7e add a5, s10, s2
2001cc82 c.lw a5, 0(a5)
2001cc84 and a5, s4, a5
2001cc88 c.beqz a5, 0x3c
2001cc8a c.li a5, 2
2001cc8c sb a5, 0xc(sp)
2001cc90 sb s3, 0xd(sp)
2001cc94 sb zero, 0xe(sp)
2001cc98 sb s0, 0xf(sp)
2001cc9c c.li a5, 1
2001cc9e sb a5, 0x410(s1)
2001cca2 lw a5, 0x294(s7)
2001cca6 lw a0, 0x34(s6)
2001ccaa c.addi4spn a3, sp, 8
2001ccac c.li a2, 4
2001ccae c.addi4spn a1, sp, 0xc
2001ccb0 c.jalr a5
2001ccb2 c.li a5, 4
2001ccb4 beq a0, a5, 0x10
2001ccb8 lw a5, 0x340(s8)
2001ccbc lui a1, 0x4000
2001ccc0 c.li a0, 0
2001ccc2 c.jalr a5
2001ccc4 c.addi s0, 1
2001ccc6 c.addi s2, 4
2001ccc8 c.li a5, 0x10
2001ccca andi s0, s0, 0xff
2001ccce c.addi s1, 1
2001ccd0 bne s2, a5, -0x9a
2001ccd4 c.lwsp ra, 0x3c(sp)
2001ccd6 c.lwsp s0, 0x38(sp)
2001ccd8 c.lwsp s1, 0x34(sp)
2001ccda c.lwsp s2, 0x30(sp)
2001ccdc c.lwsp s3, 0x2c(sp)
2001ccde c.lwsp s4, 0x28(sp)
2001cce0 c.lwsp s5, 0x24(sp)
2001cce2 c.lwsp s6, 0x20(sp)
2001cce4 c.lwsp s7, 0x1c(sp)
2001cce6 c.lwsp s8, 0x18(sp)
2001cce8 c.lwsp s9, 0x14(sp)
2001ccea c.lwsp s10, 0x10(sp)
2001ccec c.addi16sp sp, 0x40
2001ccee c.jr ra
2001ccf0 c.lui a5, 0x10
2001ccf2 c.addi16sp sp, -0x30
2001ccf4 addi a5, a5, 0x154
2001ccf8 c.swsp a5, 8(sp)
2001ccfa c.swsp s3, 0x1c(sp)
2001ccfc c.lui a5, 0x14
2001ccfe lui s3, 0x20203
2001cd02 addi a5, a5, 0x154
2001cd06 addi s3, s3, 0x580