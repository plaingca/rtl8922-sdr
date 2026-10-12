200204f4 c.jr ra
200204f6 c.jr ra
200204f8 c.jr ra
200204fa c.jr ra
200204fc c.jr ra
200204fe c.jr ra
20020500 lui a5, 0x20201
20020504 lw a5, 0x7d4(a5)
20020508 c.jr a5
2002050a lui a5, 0x20203
2002050e lw a5, 0x58c(a5)
20020512 c.addi16sp sp, -0x40
20020514 c.swsp s1, 0x34(sp)
20020516 c.lw s1, 8(a5)
20020518 lui a5, 0x20202
2002051c lw a5, -0x4f4(a5)
20020520 c.swsp ra, 0x3c(sp)
20020522 c.swsp s0, 0x38(sp)
20020524 c.swsp s2, 0x30(sp)
20020526 c.swsp s3, 0x2c(sp)
20020528 c.swsp s4, 0x28(sp)
2002052a c.swsp s5, 0x24(sp)
2002052c c.swsp s6, 0x20(sp)
2002052e c.addi4spn a2, sp, 0x1c
20020530 addi a1, sp, 0x1a
20020534 c.jalr a5
20020536 c.beqz a0, 0x84
20020538 c.lwsp s0, 0x1c(sp)
2002053a lui s3, 0x20201
2002053e lui a5, 0x20201
20020542 lw s4, 0x564(a5)
20020546 lw a5, 0x760(s3)
2002054a c.mv a0, s0
2002054c addi s6, s0, 0x10
20020550 c.jalr a5
20020552 lw a5, 0x760(s3)
20020556 c.mv s2, a0
20020558 addi a0, s0, 1
2002055c c.jalr a5
2002055e lw a5, 0x760(s3)
20020562 c.swsp a0, 0xc(sp)
20020564 addi a0, s0, 4
20020568 c.jalr a5
2002056a c.lwsp a1, 0xc(sp)
2002056c c.mv a2, a0
2002056e c.mv a0, s2
20020570 c.jalr s4
20020572 c.mv s4, a0
20020574 c.li s2, 0
20020576 c.li s5, 6
20020578 lw a5, 0x760(s3)
2002057c add a0, s6, s2
20020580 c.jalr a5
20020582 add a5, s1, s2
20020586 sb a0, 0(a5)
2002058a c.addi s2, 1
2002058c bne s2, s5, -0x14
20020590 c.addi s0, 0x16
20020592 addi s2, s1, 6
20020596 c.add s0, s4
20020598 c.addi s1, 0xa
2002059a lw a5, 0x760(s3)
2002059e c.mv a0, s0
200205a0 c.addi s2, 1
200205a2 c.jalr a5
200205a4 sb a0, -1(s2)
200205a8 c.addi s0, 1
200205aa bne s2, s1, -0x10
200205ae lui a5, 0x20201
200205b2 lw a5, 0x408(a5)
200205b6 c.lwsp a0, 0x1c(sp)
200205b8 c.jalr a5
200205ba c.lwsp ra, 0x3c(sp)
200205bc c.lwsp s0, 0x38(sp)
200205be c.lwsp s1, 0x34(sp)
200205c0 c.lwsp s2, 0x30(sp)
200205c2 c.lwsp s3, 0x2c(sp)
200205c4 c.lwsp s4, 0x28(sp)
200205c6 c.lwsp s5, 0x24(sp)
200205c8 c.lwsp s6, 0x20(sp)
200205ca c.addi16sp sp, 0x40
200205cc c.jr ra
200205ce lui a5, 0x20203
200205d2 addi a5, a5, 0x580
200205d6 c.lw a4, 0xc(a5)
200205d8 c.lw a5, 4(a5)
200205da c.addi16sp sp, -0x50
200205dc c.swsp s1, 0x44(sp)
200205de lui s1, 0x20201
200205e2 c.swsp s4, 0x38(sp)
200205e4 lw s4, 0x2c(a5)
200205e8 lw a5, 0x760(s1)
200205ec c.swsp s0, 0x48(sp)
200205ee add s0, a1, a2
200205f2 sh zero, 0x1c(sp)
200205f6 c.swsp s2, 0x40(sp)
200205f8 c.swsp s3, 0x3c(sp)
200205fa c.swsp s5, 0x34(sp)
200205fc c.swsp s6, 0x30(sp)
200205fe c.swsp zero, 0x18(sp)
20020600 c.swsp zero, 8(sp)
20020602 c.swsp ra, 0x4c(sp)
20020604 c.swsp s7, 0x2c(sp)
20020606 c.swsp s8, 0x28(sp)
20020608 c.swsp s9, 0x24(sp)
2002060a c.swsp s10, 0x20(sp)
2002060c c.mv s6, a0
2002060e addi a0, s0, 6
20020612 lw s3, 0(a4)
20020616 lw s5, 8(a4)
2002061a c.mv s2, a1
2002061c c.swsp zero, 0xc(sp)
2002061e c.jalr a5