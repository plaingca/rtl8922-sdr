20011e6c c.addi16sp sp, -0x60
20011e6e c.swsp s6, 0x40(sp)
20011e70 c.swsp s8, 0x38(sp)
20011e72 add s6, a0, a1
20011e76 c.lui s8, 0xfffff
20011e78 and a5, s6, s8
20011e7c c.swsp s5, 0x44(sp)
20011e7e and s5, a0, s8
20011e82 c.swsp a5, 0(sp)
20011e84 sub a5, a0, s5
20011e88 c.swsp s0, 0x58(sp)
20011e8a c.swsp s1, 0x54(sp)
20011e8c c.swsp s2, 0x50(sp)
20011e8e c.swsp ra, 0x5c(sp)
20011e90 c.swsp s3, 0x4c(sp)
20011e92 c.swsp s4, 0x48(sp)
20011e94 c.swsp s7, 0x3c(sp)
20011e96 c.swsp s9, 0x34(sp)
20011e98 c.swsp s10, 0x30(sp)
20011e9a c.swsp s11, 0x2c(sp)
20011e9c c.swsp a5, 4(sp)
20011e9e c.mv s0, a0
20011ea0 c.mv s1, a1
20011ea2 c.mv s2, a2
20011ea4 beq a0, s5, 0x118
20011ea8 lui a5, 0x20201
20011eac lw a5, 0x40c(a5)
20011eb0 lui a1, 0x71000
20011eb4 c.addi a1, 5
20011eb6 c.lui a0, 1
20011eb8 c.jalr a5
20011eba c.mv s3, a0
20011ebc c.bnez a0, 0x52
20011ebe c.li a5, 6
20011ec0 sb a5, 0x10(sp)
20011ec4 lui a5, 0x20209
20011ec8 addi a5, a5, -0x4d0
20011ecc c.swsp a5, 0x14(sp)
20011ece addi a5, zero, 0x3e5
20011ed2 c.swsp a5, 0x18(sp)
20011ed4 lui a5, 0x20202
20011ed8 lw a5, 0x348(a5)
20011edc c.addi4spn a0, sp, 0x10
20011ede c.jalr a5
20011ee0 lui a5, 0x20202
20011ee4 lw a5, 0x340(a5)
20011ee8 c.li a1, 0x10
20011eea c.li a0, 0
20011eec c.jalr a5
20011eee c.li a0, 0
20011ef0 c.lwsp ra, 0x5c(sp)
20011ef2 c.lwsp s0, 0x58(sp)
20011ef4 c.lwsp s1, 0x54(sp)
20011ef6 c.lwsp s2, 0x50(sp)
20011ef8 c.lwsp s3, 0x4c(sp)
20011efa c.lwsp s4, 0x48(sp)
20011efc c.lwsp s5, 0x44(sp)
20011efe c.lwsp s6, 0x40(sp)
20011f00 c.lwsp s7, 0x3c(sp)
20011f02 c.lwsp s8, 0x38(sp)
20011f04 c.lwsp s9, 0x34(sp)
20011f06 c.lwsp s10, 0x30(sp)
20011f08 c.lwsp s11, 0x2c(sp)
20011f0a c.addi16sp sp, 0x60
20011f0c c.jr ra
20011f0e c.lui a2, 1
20011f10 c.li a1, 0
20011f12 jal 0x1d2d4
20011f16 c.mv s4, s5
20011f18 c.mv s10, s3
20011f1a c.li s8, 1
20011f1c addi s9, zero, 0x7f
20011f20 lui s7, 0x20202
20011f24 bltu s4, s0, 0x6a
20011f28 c.lui s11, 1
20011f2a addi s7, s11, -1
20011f2e and s7, s6, s7
20011f32 beqz s7, 0x15c
20011f36 lui a4, 0x20201
20011f3a lw a4, 0x40c(a4)
20011f3e lui a1, 0x71000
20011f42 c.addi a1, 5
20011f44 c.lui a0, 1
20011f46 c.jalr a4
20011f48 c.mv s4, a0
20011f4a c.bnez a0, 0x78
20011f4c c.li a5, 6
20011f4e sb a5, 0x10(sp)
20011f52 lui a5, 0x20209
20011f56 addi a5, a5, -0x4d0
20011f5a c.swsp a5, 0x14(sp)
20011f5c addi a5, zero, 0x3fe
20011f60 c.swsp a5, 0x18(sp)
20011f62 lui a5, 0x20202
20011f66 lw a5, 0x348(a5)
20011f6a c.addi4spn a0, sp, 0x10
20011f6c c.jalr a5
20011f6e lui a5, 0x20202
20011f72 lw a5, 0x340(a5)
20011f76 c.li a1, 0x10
20011f78 c.li a0, 0
20011f7a c.jalr a5
20011f7c beqz s3, -0x8e
20011f80 lui a5, 0x20201
20011f84 lw a5, 0x408(a5)
20011f88 c.mv a0, s3
20011f8a c.jalr a5
20011f8c c.j -0x9e
20011f8e lw a5, -0x24(s7)
20011f92 sub s11, s0, s4
20011f96 c.mv a2, s10