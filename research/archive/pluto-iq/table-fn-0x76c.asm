2000e1e6 c.addi sp, -0x20
2000e1e8 c.swsp s1, 0x14(sp)
2000e1ea c.swsp s2, 0x10(sp)
2000e1ec c.swsp ra, 0x1c(sp)
2000e1ee c.swsp s0, 0x18(sp)
2000e1f0 c.swsp s3, 0xc(sp)
2000e1f2 c.swsp s4, 8(sp)
2000e1f4 c.mv s1, a0
2000e1f6 c.mv s2, a1
2000e1f8 c.beqz a2, 0x26
2000e1fa lui a5, 0x20203
2000e1fe lw a5, 0x588(a5)
2000e202 c.lui s0, 0x15
2000e204 c.lw a5, 4(a5)
2000e206 lbu a5, 0xa(a5)
2000e20a c.bnez a5, 0x16
2000e20c c.li a0, 0
2000e20e c.lwsp ra, 0x1c(sp)
2000e210 c.lwsp s0, 0x18(sp)
2000e212 c.lwsp s1, 0x14(sp)
2000e214 c.lwsp s2, 0x10(sp)
2000e216 c.lwsp s3, 0xc(sp)
2000e218 c.lwsp s4, 8(sp)
2000e21a c.addi16sp sp, 0x20
2000e21c c.jr ra
2000e21e c.lui s0, 0x11
2000e220 addi s0, s0, -0x714
2000e224 lui s3, 0x20201
2000e228 lui s4, 0x20202
2000e22c c.addi s1, -1
2000e22e c.beqz s1, -0x22
2000e230 lw a5, 0x740(s3)
2000e234 c.mv a0, s0
2000e236 c.jalr a5
2000e238 c.slli a0, 0x18
2000e23a c.srai a0, 0x18
2000e23c bgez a0, 0xe
2000e240 lw a5, 0x2d0(s4)
2000e244 c.mv a0, s2
2000e246 c.jalr a5
2000e248 c.j -0x1c
2000e24a c.li a0, 1
2000e24c c.j -0x3e
2000e24e c.addi sp, -0x20
2000e250 c.swsp s1, 0x14(sp)
2000e252 c.swsp s2, 0x10(sp)
2000e254 c.swsp s4, 8(sp)
2000e256 c.swsp s5, 4(sp)
2000e258 c.swsp ra, 0x1c(sp)
2000e25a c.swsp s0, 0x18(sp)
2000e25c c.swsp s3, 0xc(sp)
2000e25e c.mv s4, a0
2000e260 c.mv s1, a1
2000e262 c.mv s2, a2
2000e264 c.mv s5, a3
2000e266 c.beqz a3, 0x28
2000e268 lui a5, 0x20203
2000e26c lw a5, 0x588(a5)
2000e270 c.lui s0, 0x15
2000e272 c.lw a5, 4(a5)
2000e274 lbu a5, 0xa(a5)
2000e278 c.bnez a5, 0x18
2000e27a c.li a0, 0
2000e27c c.lwsp ra, 0x1c(sp)
2000e27e c.lwsp s0, 0x18(sp)
2000e280 c.lwsp s1, 0x14(sp)
2000e282 c.lwsp s2, 0x10(sp)
2000e284 c.lwsp s3, 0xc(sp)
2000e286 c.lwsp s4, 8(sp)
2000e288 c.lwsp s5, 4(sp)
2000e28a c.addi16sp sp, 0x20
2000e28c c.jr ra
2000e28e c.lui s0, 0x11
2000e290 lui s3, 0x20201
2000e294 lw a5, 0x740(s3)
2000e298 addi s0, s0, -0x714
2000e29c c.mv a0, s0
2000e29e c.jalr a5
2000e2a0 c.slli a0, 0x18
2000e2a2 c.srai a0, 0x18
2000e2a4 bltz a0, 8
2000e2a8 c.li a0, 1
2000e2aa c.j -0x2e
2000e2ac lui a5, 0x20201
2000e2b0 lw a5, 0x768(a5)
2000e2b4 c.mv a0, s5
2000e2b6 c.jalr a5
2000e2b8 c.li a4, 1
2000e2ba c.mv a5, a0
2000e2bc bne a0, a4, -0x42
2000e2c0 beqz s4, 0x36
2000e2c4 c.li a0, 0
2000e2c6 bne s4, a5, -0x4a
2000e2ca c.li s4, 8
2000e2cc lui s5, 0x20202
2000e2d0 c.addi s1, -1
2000e2d2 c.beqz s1, -0x58
2000e2d4 lw a5, 0x740(s3)
2000e2d8 c.mv a0, s0
2000e2da c.jalr a5
2000e2dc slli a5, a0, 0x18
2000e2e0 c.srai a5, 0x18
2000e2e2 bgez a5, -0x3a
2000e2e6 andi a5, a0, 0x20
2000e2ea c.beqz a5, 0x10
2000e2ec lw a5, 0x2d0(s5)
2000e2f0 c.mv a0, s2
2000e2f2 c.jalr a5
2000e2f4 c.j -0x24
2000e2f6 c.li s4, 0xb
2000e2f8 c.j -0x2c
2000e2fa c.andi a0, 0x1f
2000e2fc beq s4, a0, -0x10
2000e300 c.j -0x58
2000e302 c.addi16sp sp, -0x30
2000e304 c.swsp s4, 0x18(sp)
2000e306 lui s4, 0x20201
2000e30a lw a5, 0x668(s4)
2000e30e c.swsp s0, 0x28(sp)
2000e310 c.swsp s1, 0x24(sp)