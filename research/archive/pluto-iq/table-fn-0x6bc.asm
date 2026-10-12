20013fc0 lui a5, 0x20203
20013fc4 lw a5, 0x584(a5)
20013fc8 c.addi sp, -0x10
20013fca c.swsp s0, 8(sp)
20013fcc c.lw a5, 0xc(a5)
20013fce c.swsp ra, 0xc(sp)
20013fd0 c.lw s0, 8(a5)
20013fd2 lui a5, 0x20203
20013fd6 lw a5, -0x6d0(a5)
20013fda c.beqz a5, 0x14
20013fdc lui a5, 0x20201
20013fe0 lw a5, 0x2e4(a5)
20013fe4 c.mv a0, s0
20013fe6 c.lwsp s0, 8(sp)
20013fe8 c.lwsp ra, 0xc(sp)
20013fea c.addi sp, 0x10
20013fec c.jr a5
20013fee lui a5, 0x20201
20013ff2 lw a5, 0xb0(a5)
20013ff6 c.jalr a5
20013ff8 c.andi a0, 8
20013ffa c.beqz a0, -0x1e
20013ffc lui a5, 0x20201
20014000 lw a5, 0x2ec(a5)
20014004 c.j -0x20
20014006 c.lw a5, 4(a0)
20014008 c.addi16sp sp, -0x70
2001400a c.swsp ra, 0x6c(sp)
2001400c c.beqz a5, 0x1a
2001400e sh a5, 0x3c(sp)
20014012 c.lw a5, 0(a0)
20014014 c.lw a4, 0x14(a0)
20014016 c.swsp a5, 0xc(sp)
20014018 c.li a5, 1
2001401a c.beqz a4, 0xc
2001401c c.lw a5, 0x10(a0)
2001401e sh a4, 0x3e(sp)
20014022 c.swsp a5, 0x10(sp)
20014024 c.li a5, 2
20014026 sb a5, 0x59(sp)
2001402a c.li a5, 1
2001402c sb a5, 0x5a(sp)
20014030 lui a5, 0x20202
20014034 lw a5, 0x1d4(a5)
20014038 sb zero, 0x58(sp)
2001403c c.swsp zero, 0x54(sp)
2001403e c.addi4spn a0, sp, 0xc
20014040 c.jalr a5
20014042 c.lwsp ra, 0x6c(sp)
20014044 c.addi16sp sp, 0x70
20014046 c.jr ra
20014048 lui a5, 0x20203
2001404c lw a5, 0x584(a5)
20014050 c.addi16sp sp, -0x40
20014052 c.swsp s1, 0x34(sp)
20014054 lui s1, 0x20203
20014058 c.swsp s2, 0x30(sp)
2001405a lw s2, 0xc(a5)
2001405e lw a5, -0x6d0(s1)
20014062 c.swsp s0, 0x38(sp)
20014064 c.swsp ra, 0x3c(sp)
20014066 c.swsp zero, 0xc(sp)
20014068 lw s0, 8(s2)
2001406c c.beqz a5, 0x9c
2001406e lui a5, 0x20201
20014072 lw a5, 0x2f4(a5)
20014076 c.li a2, 0
20014078 c.addi4spn a1, sp, 0x10
2001407a c.mv a0, s0
2001407c c.jalr a5
2001407e c.beqz a0, 0xbe
20014080 lui a5, 0x20201
20014084 lw a5, 0x6c8(a5)
20014088 c.addi4spn a0, sp, 0x10
2001408a c.jalr a5
2001408c c.beqz a0, 0x6e
2001408e lbu a5, 0xd(s2)
20014092 c.addi a5, 1
20014094 sb a5, 0xd(s2)
20014098 lui a5, 0x20202
2001409c addi a5, a5, 0x3e4
200140a0 lbu a4, 7(a5)
200140a4 c.addi a4, 1
200140a6 sb a4, 7(a5)
200140aa lui a5, 0x20202
200140ae lbu a5, 0x534(a5)
200140b2 c.bnez a5, 0x18
200140b4 lui a5, 0x20201
200140b8 lw a5, 0x74c(a5)
200140bc lw a1, 0xc(s2)
200140c0 lui a0, 0xb8790
200140c4 addi a0, a0, -0x320
200140c8 c.jalr a5
200140ca lw a5, -0x6d0(s1)
200140ce c.beqz a5, 0x52
200140d0 lui a5, 0x20201
200140d4 lw a5, 0x308(a5)
200140d8 c.li a3, 1
200140da c.addi4spn a2, sp, 0xc
200140dc c.addi4spn a1, sp, 0x10
200140de c.mv a0, s0
200140e0 c.jalr a5
200140e2 c.bnez a0, 0x18
200140e4 lui a5, 0x20201
200140e8 lw a5, 0xc4(a5)