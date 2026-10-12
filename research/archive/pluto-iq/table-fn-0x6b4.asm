200152f0 c.addi16sp sp, -0x40
200152f2 c.swsp s2, 0x20(sp)
200152f4 lui s2, 0x20205
200152f8 addi s2, s2, -0x1d8
200152fc c.swsp s0, 0x28(sp)
200152fe c.swsp a5, 0x34(sp)
20015300 c.mv s0, a4
20015302 lw a5, 8(s2)
20015306 lw a4, 0xc(s2)
2001530a c.swsp ra, 0x2c(sp)
2001530c c.and a5, a0
2001530e c.and a4, a1
20015310 c.swsp s1, 0x24(sp)
20015312 c.swsp s3, 0x1c(sp)
20015314 c.swsp a6, 0x38(sp)
20015316 c.swsp a7, 0x3c(sp)
20015318 c.or a5, a4
2001531a c.beqz a5, 0xd2
2001531c lbu a5, 1(s2)
20015320 bltu a5, a2, 0xcc
20015324 lui a5, 0x20201
20015328 lw a5, 0x12c(a5)
2001532c c.mv s1, a3
2001532e c.jalr a5
20015330 lw a1, 0x10(s2)
20015334 addi a5, zero, -0x5b
20015338 c.mv s3, a0
2001533a sb a5, 0(a1)
2001533e sb a5, 1(a1)
20015342 snez a5, s0
20015346 c.slli a5, 1
20015348 ori a5, a5, 0x18
2001534c sb a5, 2(a1)
20015350 addi a5, zero, 0x5a
20015354 sb a5, 3(a1)
20015358 srli a5, s1, 8
2001535c sb a5, 5(a1)
20015360 srli a5, s1, 0x10
20015364 sb s1, 4(a1)
20015368 sb a5, 6(a1)
2001536c c.srli s1, 0x18
2001536e c.li a5, -1
20015370 sb a5, 9(a1)
20015374 sb a5, 0xa(a1)
20015378 sb s1, 7(a1)
2001537c sb s0, 8(a1)
20015380 addi a5, a1, 0xb
20015384 c.beqz s0, 0x44
20015386 addi a3, s0, -1
2001538a c.addi4spn a4, sp, 0x34
2001538c andi a3, a3, 0xff
20015390 addi a5, a1, 0xc
20015394 sb s0, 0xb(a1)
20015398 c.swsp a4, 0xc(sp)
2001539a c.addi a3, 1
2001539c addi a0, zero, 0xff
200153a0 lw t1, 0(a4)
200153a4 c.li a2, 0
200153a6 c.addi a4, 4
200153a8 add a6, t1, a2
200153ac lbu a7, 0(a6)
200153b0 add a6, a5, a2
200153b4 c.addi a2, 1
200153b6 sb a7, 0(a6)
200153ba andi a6, a2, 0xff
200153be bltu a6, s0, -0x16
200153c2 c.add a5, a3
200153c4 beq s0, a0, -0x24
200153c8 sb zero, 0(a5)
200153cc c.addi a5, 1
200153ce sub a0, a5, a1
200153d2 lui a5, 0x20201
200153d6 lw a5, 0x698(a5)
200153da sb a0, 8(a1)
200153de c.jalr a5
200153e0 lui a5, 0x20201
200153e4 lw a5, 0x130(a5)
200153e8 c.mv a0, s3
200153ea c.jalr a5
200153ec c.lwsp ra, 0x2c(sp)
200153ee c.lwsp s0, 0x28(sp)
200153f0 c.lwsp s1, 0x24(sp)
200153f2 c.lwsp s2, 0x20(sp)
200153f4 c.lwsp s3, 0x1c(sp)
200153f6 c.addi16sp sp, 0x40
200153f8 c.jr ra
200153fa c.addi16sp sp, -0x40
200153fc c.swsp s2, 0x20(sp)
200153fe lui s2, 0x20205
20015402 addi s2, s2, -0x1d8
20015406 c.swsp s0, 0x28(sp)
20015408 c.swsp a5, 0x34(sp)
2001540a c.mv s0, a4
2001540c lw a5, 8(s2)
20015410 lw a4, 0xc(s2)
20015414 c.swsp ra, 0x2c(sp)
20015416 c.and a5, a0
20015418 c.and a4, a1
2001541a c.swsp s1, 0x24(sp)