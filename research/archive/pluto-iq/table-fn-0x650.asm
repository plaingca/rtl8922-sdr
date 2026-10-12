20016eb4 lui a5, 0x20201
20016eb8 lw a5, 0x668(a5)
20016ebc c.addi16sp sp, -0x40
20016ebe c.swsp s0, 0x38(sp)
20016ec0 c.swsp ra, 0x3c(sp)
20016ec2 c.swsp s1, 0x34(sp)
20016ec4 c.swsp s2, 0x30(sp)
20016ec6 c.swsp s3, 0x2c(sp)
20016ec8 c.mv s0, a0
20016eca c.li a0, 0
20016ecc c.jalr a5
20016ece c.bnez a0, 0x12
20016ed0 c.li a0, 4
20016ed2 c.lwsp ra, 0x3c(sp)
20016ed4 c.lwsp s0, 0x38(sp)
20016ed6 c.lwsp s1, 0x34(sp)
20016ed8 c.lwsp s2, 0x30(sp)
20016eda c.lwsp s3, 0x2c(sp)
20016edc c.addi16sp sp, 0x40
20016ede c.jr ra
20016ee0 lui a5, 0x20202
20016ee4 lw a5, -0x380(a5)
20016ee8 lbu a0, 0(s0)
20016eec c.jalr a5
20016eee addi a5, zero, 0xff
20016ef2 c.mv s2, a0
20016ef4 beq a0, a5, -0x24
20016ef8 lbu s3, 1(s0)
20016efc lui a5, 0x20201
20016f00 lw a5, 0x40c(a5)
20016f04 lui a1, 0x72080
20016f08 c.addi a1, 0xb
20016f0a c.mv a0, s3
20016f0c c.jalr a5
20016f0e c.mv s1, a0
20016f10 c.bnez a0, 0x36
20016f12 c.li a5, 6
20016f14 sb a5, 0x10(sp)
20016f18 lui a5, 0x20209
20016f1c addi a5, a5, -0x2cc
20016f20 c.swsp a5, 0x14(sp)
20016f22 addi a5, zero, 0x1a0
20016f26 c.swsp a5, 0x18(sp)
20016f28 lui a5, 0x20202
20016f2c lw a5, 0x348(a5)
20016f30 c.addi4spn a0, sp, 0x10
20016f32 c.swsp zero, 0x1c(sp)
20016f34 c.jalr a5
20016f36 lui a5, 0x20202
20016f3a lw a5, 0x340(a5)
20016f3e c.li a1, 0x10
20016f40 c.li a0, 0
20016f42 c.jalr a5
20016f44 c.j -0x74
20016f46 addi a1, s0, 4
20016f4a c.mv a2, s3
20016f4c jal 0x18290
20016f50 lui a5, 0x20201
20016f54 lw a5, 0x12c(a5)
20016f58 c.jalr a5
20016f5a lui a5, 0x20203
20016f5e lw a5, 0x584(a5)
20016f62 slli a4, s2, 2
20016f66 c.mv a7, a0
20016f68 c.lw a5, 0x20(a5)
20016f6a c.add a5, a4
20016f6c c.lw a5, 8(a5)
20016f6e c.lw a1, 0x7c(a5)
20016f70 c.lw a5, 0(a1)
20016f72 andi a4, a5, 1
20016f76 c.bnez a4, 0x1a
20016f78 lui a5, 0x20201
20016f7c lw a5, 0x130(a5)
20016f80 c.jalr a5
20016f82 lui a5, 0x20201
20016f86 lw a5, 0x408(a5)
20016f8a c.mv a0, s1
20016f8c c.jalr a5
20016f8e c.j -0xbe
20016f90 c.srli a5, 0xc
20016f92 andi a4, a5, 0xf
20016f96 lbu a0, 2(a1)
20016f9a lbu a5, 4(a1)
20016f9e c.li a6, 0
20016fa0 c.li s0, 0
20016fa2 c.li a3, 0
20016fa4 c.li t1, 3
20016fa6 andi a2, a6, 0xff
20016faa bltu a2, s3, 0x38
20016fae sb a5, 4(a1)
20016fb2 lui a5, 0x20201
20016fb6 lw a5, 0x130(a5)
20016fba c.mv a0, a7
20016fbc c.swsp a3, 0xc(sp)
20016fbe c.jalr a5
20016fc0 lui a5, 0x20201
20016fc4 lw a5, 0x408(a5)
20016fc8 c.mv a0, s1
20016fca c.jalr a5
20016fcc lui a5, 0x20201
20016fd0 lw a5, 0x658(a5)
20016fd4 c.lwsp a3, 0xc(sp)
20016fd6 c.mv a2, s0
20016fd8 c.li a1, 1
20016fda c.mv a0, s2
20016fdc c.jalr a5
20016fde c.li a0, 0