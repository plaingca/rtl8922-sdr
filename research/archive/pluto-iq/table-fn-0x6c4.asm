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
200140ec addi a1, zero, 0xb2
200140f0 lui a0, 0x20209
200140f4 addi a0, a0, -0x364
200140f8 c.jalr a5
200140fa c.lwsp ra, 0x3c(sp)
200140fc c.lwsp s0, 0x38(sp)
200140fe c.lwsp s1, 0x34(sp)
20014100 c.lwsp s2, 0x30(sp)
20014102 c.li a0, 0
20014104 c.addi16sp sp, 0x40
20014106 c.jr ra
20014108 lui a5, 0x20201
2001410c lw a5, 0xb0(a5)
20014110 c.jalr a5
20014112 c.andi a0, 8
20014114 c.beqz a0, -0xa6
20014116 lui a5, 0x20201
2001411a lw a5, 0x300(a5)
2001411e c.j -0xa8
20014120 lui a5, 0x20201
20014124 lw a5, 0xb0(a5)
20014128 c.jalr a5
2001412a c.andi a0, 8
2001412c c.beqz a0, -0x5c
2001412e lui a5, 0x20201
20014132 lw a5, 0x30c(a5)
20014136 c.li a3, 1
20014138 c.li a2, 0
2001413a c.j -0x5e
2001413c lui a5, 0x20201
20014140 lw a5, 0xc4(a5)
20014144 addi a1, zero, 0xb5
20014148 c.j -0x58
2001414a c.addi sp, -0x10
2001414c c.swsp s0, 8(sp)
2001414e c.swsp s1, 4(sp)
20014150 c.swsp ra, 0xc(sp)
20014152 c.mv s0, a1
20014154 c.mv s1, a0
20014156 lbu a2, 4(a1)
2001415a c.lw a0, 0(s0)
2001415c c.li a1, 0
2001415e jal 0x1b088
20014162 c.lw a4, 0(s0)
20014164 lhu a5, 4(s1)
20014168 lbu a3, 0(s1)
2001416c lw a6, 0(a4)
20014170 c.slli a5, 0x12
20014172 .byte 0xa3, 0x0c