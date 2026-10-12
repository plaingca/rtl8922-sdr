200151d6 c.addi16sp sp, -0x40
200151d8 c.swsp s2, 0x20(sp)
200151da lui s2, 0x20205
200151de addi s2, s2, -0x1d8
200151e2 c.swsp s0, 0x28(sp)
200151e4 c.swsp a5, 0x34(sp)
200151e6 c.mv s0, a4
200151e8 lw a5, 8(s2)
200151ec lw a4, 0xc(s2)
200151f0 c.swsp ra, 0x2c(sp)
200151f2 c.and a5, a0
200151f4 c.and a4, a1
200151f6 c.swsp s1, 0x24(sp)
200151f8 c.swsp s3, 0x1c(sp)
200151fa c.swsp a6, 0x38(sp)
200151fc c.swsp a7, 0x3c(sp)
200151fe c.or a5, a4
20015200 c.beqz a5, 0x82
20015202 lbu a5, 1(s2)
20015206 bltu a5, a2, 0x7c
2001520a lui a5, 0x20201
2001520e lw a5, 0x12c(a5)
20015212 c.mv s1, a3
20015214 c.jalr a5
20015216 lw a1, 0x10(s2)
2001521a addi a5, zero, -0x5b
2001521e c.mv s3, a0
20015220 sb a5, 0(a1)
20015224 sb a5, 1(a1)
20015228 snez a5, s0
2001522c c.slli a5, 1
2001522e ori a5, a5, 0x1c
20015232 sb a5, 2(a1)
20015236 addi a5, zero, 0x5a
2001523a sb a5, 3(a1)
2001523e srli a5, s1, 8
20015242 sb a5, 5(a1)
20015246 srli a5, s1, 0x10
2001524a sb s1, 4(a1)
2001524e sb a5, 6(a1)
20015252 c.srli s1, 0x18
20015254 c.li a5, -1
20015256 sb s1, 7(a1)
2001525a sb s0, 8(a1)
2001525e sb a5, 9(a1)
20015262 sb a5, 0xa(a1)
20015266 addi a4, a1, 0xb
2001526a c.beqz s0, 0x62
2001526c sb s0, 0xb(a1)
20015270 addi a5, zero, 0x20
20015274 bgeu a5, s0, 0x1c
20015278 lui a5, 0x20201
2001527c lw a5, 0x130(a5)
20015280 c.jalr a5
20015282 c.lwsp ra, 0x2c(sp)
20015284 c.lwsp s0, 0x28(sp)
20015286 c.lwsp s1, 0x24(sp)
20015288 c.lwsp s2, 0x20(sp)
2001528a c.lwsp s3, 0x1c(sp)
2001528c c.addi16sp sp, 0x40
2001528e c.jr ra
20015290 addi a5, a1, 0xc
20015294 c.addi4spn a2, sp, 0x34
20015296 c.swsp a2, 0xc(sp)
20015298 c.mv a4, a5
2001529a c.li a6, 0
2001529c c.lw a3, 0(a2)
2001529e c.addi a4, 4
200152a0 c.addi a6, 1
200152a2 srli a0, a3, 8
200152a6 sb a0, -3(a4)
200152aa srli a0, a3, 0x10
200152ae sb a3, -4(a4)
200152b2 sb a0, -2(a4)
200152b6 c.srli a3, 0x18
200152b8 sb a3, -1(a4)
200152bc andi a6, a6, 0xff
200152c0 c.addi a2, 4
200152c2 bne s0, a6, -0x26
200152c6 slli a4, s0, 2
200152ca c.add a4, a5
200152cc sb zero, 0(a4)
200152d0 lui a5, 0x20201
200152d4 lw a5, 0x698(a5)
200152d8 c.addi a4, 1
200152da sub a0, a4, a1
200152de sb a0, 8(a1)
200152e2 c.jalr a5
200152e4 lui a5, 0x20201
200152e8 lw a5, 0x130(a5)
200152ec c.mv a0, s3
200152ee c.j -0x6e
200152f0 c.addi16sp sp, -0x40
200152f2 c.swsp s2, 0x20(sp)
200152f4 lui s2, 0x20205
200152f8 addi s2, s2, -0x1d8
200152fc c.swsp s0, 0x28(sp)
200152fe c.swsp a5, 0x34(sp)
20015300 c.mv s0, a4