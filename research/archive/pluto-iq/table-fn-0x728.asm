20002236 c.addi sp, -0x20
20002238 c.swsp s0, 0x18(sp)
2000223a lui s0, 0x20201
2000223e c.swsp s1, 0x14(sp)
20002240 c.swsp s2, 0x10(sp)
20002242 c.swsp s3, 0xc(sp)
20002244 c.swsp ra, 0x1c(sp)
20002246 mv s0, s0
2000224a c.li s1, 0x10
2000224c lui s3, 0x20201
20002250 addi s2, zero, 0x20
20002254 c.lw a1, 0(s0)
20002256 lw a5, 0x730(s3)
2000225a c.mv a0, s1
2000225c c.addi s1, 1
2000225e c.jalr a5
20002260 c.addi s0, 4
20002262 bne s1, s2, -0xe
20002266 c.lwsp s0, 0x18(sp)
20002268 lui a5, 0x20201
2000226c c.lwsp ra, 0x1c(sp)
2000226e c.lwsp s1, 0x14(sp)
20002270 c.lwsp s2, 0x10(sp)
20002272 c.lwsp s3, 0xc(sp)
20002274 lw a5, 0x738(a5)
20002278 c.lui a0, 8
2000227a addi a1, zero, 0x2a
2000227e addi a0, a0, -0x70e
20002282 c.addi16sp sp, 0x20
20002284 c.jr a5
20002286 lui a0, 0x20202
2000228a c.li a2, 9
2000228c c.li a1, 0
2000228e addi a0, a0, 0x3e4
20002292 j 0x2cf54
20002296 andi a5, a0, 7
2000229a c.beqz a5, 4
2000229c c.addi a0, 4
2000229e c.jr ra
200022a0 c.addi16sp sp, -0x30
200022a2 c.swsp s1, 0x24(sp)
200022a4 lui s1, 0x20202
200022a8 c.swsp s0, 0x28(sp)
200022aa c.swsp s2, 0x20(sp)
200022ac addi a5, s1, 0x3e4
200022b0 c.swsp ra, 0x2c(sp)
200022b2 c.swsp s3, 0x1c(sp)
200022b4 c.swsp s4, 0x18(sp)
200022b6 c.swsp s5, 0x14(sp)
200022b8 c.swsp s6, 0x10(sp)
200022ba c.li a4, 5
200022bc lui s2, 0x20201
200022c0 sb a4, 9(a5)
200022c4 sb zero, 0xa(a5)
200022c8 lw a5, 0x748(s2)
200022cc c.lui s0, 8
200022ce addi a0, s0, 0x400
200022d2 c.jalr a5
200022d4 andi a0, a0, 0x200
200022d8 addi s1, s1, 0x3e4
200022dc c.bnez a0, 0x1e
200022de lui a5, 0x20201
200022e2 lw s3, 0x73c(a5)
200022e6 lw a5, 0x748(s2)
200022ea addi a0, s0, 0x400
200022ee c.jalr a5
200022f0 ori a1, a0, 0x200
200022f4 addi a0, s0, 0x400
200022f8 c.jalr s3
200022fa lui a5, 0x20202
200022fe lw a5, 0x18c(a5)
20002302 lui s2, 0x20201
20002306 lui s3, 0x20203
2000230a c.jalr a5
2000230c lw a5, 0x410(s2)
20002310 addi s0, s3, 0x580
20002314 c.li a2, 0
20002316 lui a1, 0xf1050
2000231a addi a0, zero, 0x220
2000231e lw s4, 0(s0)
20002322 c.jalr a5
20002324 c.lw a5, 0(s0)
20002326 sw a0, 0(s4)
2000232a addi s3, s3, 0x580
2000232e c.lw a5, 0(a5)
20002330 c.bnez a5, 0x38
20002332 c.li a5, 6
20002334 sb a5, 0(sp)
20002338 lui a5, 0x20209
2000233c addi a5, a5, -0x690
20002340 c.swsp a5, 4(sp)
20002342 addi a5, zero, 0x48
20002346 c.swsp a5, 8(sp)
20002348 lui a5, 0x20202
2000234c lw a5, 0x348(a5)
20002350 c.mv a0, sp
20002352 c.jalr a5
20002354 c.lwsp ra, 0x2c(sp)
20002356 c.lwsp s0, 0x28(sp)
20002358 c.lwsp s1, 0x24(sp)
2000235a c.lwsp s2, 0x20(sp)
2000235c c.lwsp s3, 0x1c(sp)
2000235e c.lwsp s4, 0x18(sp)
20002360 c.lwsp s5, 0x14(sp)