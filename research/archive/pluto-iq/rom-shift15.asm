
SHIFT 0x20027bde
20027bb0 c.bnez a0, 0x22
20027bb2 lui a5, 0x20201
20027bb6 lw a5, 0x734(a5)
20027bba c.lui a0, 8
20027bbc c.li a1, 2
20027bbe addi a0, a0, 0x15e
20027bc2 c.jalr a5
20027bc4 lui a5, 0x20201
20027bc8 lw a5, 0x264(a5)
20027bcc c.li a0, 0
20027bce c.jalr a5
20027bd0 c.j -0x7a
20027bd2 lhu a0, 0xe(sp)
20027bd6 lui a5, 0x7ff8
20027bda addi a1, zero, 0x28
20027bde c.slli a0, 0xf
20027be0 c.and a0, a5
20027be2 lui a5, 0xa8000
20027be6 c.or a0, a5
20027be8 c.lw a5, 0(a0)
20027bea bltz a5, 6
20027bee c.li a1, 0x18
20027bf0 and a2, a5, s3
20027bf4 srli a4, a5, 0xe
20027bf8 c.srli a5, 0xd
20027bfa andi a4, a4, 0x30
20027bfe c.andi a5, 6
20027c00 c.add a5, a4
20027c02 lw a3, 0x568(s8)
20027c06 c.add a5, a0
20027c08 c.slli a2, 0x10
20027c0a c.add a1, a5
20027c0c c.srli a2, 0x10
20027c0e c.jalr a3
20027c10 lbu a5, 0(s6)
20027c14 c.andi a5, 1
20027c16 c.bnez a5, -0x64
20027c18 lw a5, 0x748(s0)
20027c1c c.mv a0, s1
20027c1e c.jalr a5
20027c20 and a0, a0, s5
20027c24 c.beqz a0, -0x72
20027c26 lw a5, 0x578(s9)
20027c2a lhu a0, 0xe(sp)
20027c2e c.jalr a5
20027c30 lw a5, 0x580(s2)
20027c34 addi a0, sp, 0xe
20027c38 c.jalr a5
20027c3a c.j -0xa0
20027c3c lui a5, 0x20203

SHIFT 0x200452f8
200452da c.jal 0
200452dc c.swsp t2, 0x34(sp)
200452de c.jal 0
200452e0 c.sw a3, 0x30(a2)
200452e2 c.jal 0
200452e4 c.slli s3, 9
200452e6 c.fld fs0, 0(s0)
200452e8 c.slli s8, 0x1c
200452ea c.fld fs0, 0(s0)
200452ec c.slli tp, 0x19
200452ee c.fld fs0, 0(s0)
200452f0 c.addi4spn a3, sp, 0x2d4
200452f2 c.fld fs0, 0(s0)
200452f4 c.addi4spn a2, sp, 0x298
200452f6 c.fld fs0, 0(s0)
200452f8 c.slli s9, 0xf
200452fa c.fld fs0, 0(s0)
200452fc c.slli a5, 5
200452fe c.fld fs0, 0(s0)
20045300 c.swsp t2, 0x2c(sp)
20045302 c.jal 0
20045304 c.swsp s1, 0xe8(sp)
20045306 c.jal 0
20045308 c.addi4spn a0, sp, 0x1bc
2004530a c.fld fs0, 0(s0)
2004530c c.addi4spn a1, sp, 0x170
2004530e c.fld fs0, 0(s0)
20045310 c.addi4spn a1, sp, 0x134
20045312 c.fld fs0, 0(s0)
20045314 c.addi4spn a3, sp, 0x3ec
20045316 c.fld fs0, 0(s0)
20045318 c.slli a4, 0x37
2004531a c.fld fs0, 0(s0)
2004531c c.addi4spn a3, sp, 0x1f8
2004531e c.fld fs0, 0(s0)
20045320 c.slli a3, 0x22
20045322 c.fld fs0, 0(s0)
20045324 c.addi4spn s1, sp, 0x2a0
20045326 c.fld fs0, 0(s0)
20045328 c.slli t2, 0x34
2004532a c.fld fs0, 0(s0)
2004532c c.slli tp, 0x2c
2004532e c.fld fs0, 0(s0)
20045330 c.addi4spn a0, sp, 0xe4
20045332 c.fld fs0, 0(s0)
20045334 c.addi4spn a3, sp, 0xac
20045336 c.fld fs0, 0(s0)
20045338 c.slli t5, 6
2004533a c.fld fs0, 0(s0)
2004533c c.addi4spn a4, sp, 0x31c