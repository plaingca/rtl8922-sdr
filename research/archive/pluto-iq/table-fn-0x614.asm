2000e302 c.addi16sp sp, -0x30
2000e304 c.swsp s4, 0x18(sp)
2000e306 lui s4, 0x20201
2000e30a lw a5, 0x668(s4)
2000e30e c.swsp s0, 0x28(sp)
2000e310 c.swsp s1, 0x24(sp)
2000e312 c.swsp s2, 0x20(sp)
2000e314 c.swsp s3, 0x1c(sp)
2000e316 c.swsp ra, 0x2c(sp)
2000e318 c.mv s0, a0
2000e31a c.li a0, 1
2000e31c c.mv s2, a1
2000e31e c.mv s1, a2
2000e320 c.mv s3, a3
2000e322 c.jalr a5
2000e324 c.beqz a0, 0x2c
2000e326 c.swsp zero, 0xc(sp)
2000e328 c.li a5, 1
2000e32a bgeu a5, s0, 0x38
2000e32e c.li a5, 7
2000e330 sb a5, 0(sp)
2000e334 lui a5, 0x20209
2000e338 addi a5, a5, -0x500
2000e33c c.swsp a5, 4(sp)
2000e33e c.li a5, 0x17
2000e340 c.swsp a5, 8(sp)
2000e342 lui a5, 0x20202
2000e346 lw a5, 0x348(a5)
2000e34a c.mv a0, sp
2000e34c c.jalr a5
2000e34e c.j 0xc
2000e350 lw a5, 0x668(s4)
2000e354 c.li a0, 3
2000e356 c.jalr a5
2000e358 c.bnez a0, -0x32
2000e35a lui a0, 0xefeff
2000e35e c.addi a0, -0x11
2000e360 c.j 0x1da
2000e362 bgeu a5, s2, 0x18
2000e366 c.li a5, 7
2000e368 sb a5, 0(sp)
2000e36c lui a5, 0x20209
2000e370 addi a5, a5, -0x500
2000e374 c.swsp a5, 4(sp)
2000e376 c.li a5, 0x1c
2000e378 c.j -0x38
2000e37a bgeu a5, s1, 0x1a
2000e37e c.li a5, 7
2000e380 sb a5, 0(sp)
2000e384 lui a5, 0x20209
2000e388 addi a5, a5, -0x500
2000e38c c.swsp a5, 4(sp)
2000e38e addi a5, zero, 0x21
2000e392 c.j -0x52
2000e394 c.li a5, 0xa
2000e396 bltu a5, s3, 0x1c0
2000e39a lui a3, 0x20208
2000e39e c.slli s3, 2
2000e3a0 addi a3, a3, 0x694
2000e3a4 c.add s3, a3
2000e3a6 lw a5, 0(s3)
2000e3aa c.jr a5
2000e3ac bnez s2, 0x10
2000e3b0 c.lui a0, 0x14
2000e3b2 c.bnez s0, 4
2000e3b4 c.lui a0, 0x10
2000e3b6 addi a0, a0, 0x200
2000e3ba c.j 0x180
2000e3bc c.lui a0, 0x14
2000e3be c.bnez s0, 4
2000e3c0 c.lui a0, 0x10
2000e3c2 addi a0, a0, 0x240
2000e3c6 c.j 0x174
2000e3c8 bnez s2, 0x10
2000e3cc c.lui a0, 0x14
2000e3ce c.bnez s0, 4
2000e3d0 c.lui a0, 0x10
2000e3d2 addi a0, a0, 0x206
2000e3d6 c.j 0x164
2000e3d8 c.lui a0, 0x14
2000e3da c.bnez s0, 4
2000e3dc c.lui a0, 0x10
2000e3de addi a0, a0, 0x246
2000e3e2 c.j 0x158
2000e3e4 bnez s2, 0x10
2000e3e8 c.lui a0, 0x14
2000e3ea c.bnez s0, 4
2000e3ec c.lui a0, 0x10
2000e3ee addi a0, a0, 0x208
2000e3f2 c.j 0x148
2000e3f4 c.lui a0, 0x14
2000e3f6 c.bnez s0, 4
2000e3f8 c.lui a0, 0x10
2000e3fa addi a0, a0, 0x248
2000e3fe c.j 0x13c
2000e400 bnez s2, 0x10
2000e404 c.lui a0, 0x14
2000e406 c.bnez s0, 4
2000e408 c.lui a0, 0x10
2000e40a addi a0, a0, 0x20c
2000e40e c.j 0x12c
2000e410 c.lui a0, 0x14
2000e412 c.bnez s0, 4
2000e414 c.lui a0, 0x10
2000e416 addi a0, a0, 0x24c
2000e41a c.j 0x120
2000e41c bnez s2, 0x1e
2000e420 c.bnez s1, 0xe
2000e422 c.lui a0, 0x14
2000e424 c.bnez s0, 4
2000e426 c.lui a0, 0x10
2000e428 addi a0, a0, 0x210
2000e42c c.j 0x10e