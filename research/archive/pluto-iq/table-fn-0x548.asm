20027e8a c.lw a5, 0(a0)
20027e8c sw zero, 0x10(a0)
20027e90 sw zero, 0x14(a0)
20027e94 c.sw a5, 8(a0)
20027e96 c.lw a5, 4(a0)
20027e98 c.sw a5, 0xc(a0)
20027e9a c.jr ra
20027e9c c.addi sp, -0x10
20027e9e c.swsp s2, 0(sp)
20027ea0 lui s2, 0x20201
20027ea4 lw a5, 0x550(s2)
20027ea8 c.swsp ra, 0xc(sp)
20027eaa c.swsp s0, 8(sp)
20027eac c.swsp s1, 4(sp)
20027eae c.mv s0, a0
20027eb0 c.mv a0, a1
20027eb2 c.mv s1, a1
20027eb4 c.jalr a5
20027eb6 lw a5, 0x550(s2)
20027eba c.sw a0, 0(s0)
20027ebc addi a0, s1, 4
20027ec0 c.jalr a5
20027ec2 c.sw a0, 4(s0)
20027ec4 lui a5, 0x20201
20027ec8 c.mv a0, s0
20027eca c.lwsp s0, 8(sp)
20027ecc c.lwsp ra, 0xc(sp)
20027ece c.lwsp s1, 4(sp)
20027ed0 c.lwsp s2, 0(sp)
20027ed2 lw a5, 0x548(a5)
20027ed6 c.addi sp, 0x10
20027ed8 c.jr a5
20027eda c.lw a4, 0x14(a0)
20027edc c.li a3, 3
20027ede slli a5, a4, 3
20027ee2 sll a5, a1, a5
20027ee6 c.lw a1, 0x10(a0)
20027ee8 c.addi a4, 1
20027eea c.sw a4, 0x14(a0)
20027eec c.or a5, a1
20027eee c.sw a5, 0x10(a0)
20027ef0 bgeu a3, a4, 0x62
20027ef4 c.lw a1, 8(a0)
20027ef6 lui a2, 0xff010
20027efa addi a2, a2, -0x100
20027efe c.xor a5, a1
20027f00 slli a3, a5, 0x11
20027f04 srli a4, a5, 0xf
20027f08 c.or a4, a3
20027f0a c.lw a3, 0xc(a0)
20027f0c lui a1, 0xff0
20027f10 addi a1, a1, 0xff
20027f14 c.xor a3, a4
20027f16 c.add a5, a3
20027f18 slli a4, a5, 8
20027f1c c.and a4, a2
20027f1e srli a2, a5, 8
20027f22 c.and a2, a1
20027f24 c.or a4, a2
20027f26 c.xor a4, a3
20027f28 c.add a5, a4
20027f2a srli a2, a5, 0x1d
20027f2e slli a3, a5, 3
20027f32 c.or a3, a2
20027f34 c.xor a3, a4
20027f36 c.add a5, a3
20027f38 srli a4, a5, 2
20027f3c slli a2, a5, 0x1e
20027f40 c.or a4, a2
20027f42 c.xor a4, a3
20027f44 c.add a5, a4
20027f46 c.sw a4, 0xc(a0)
20027f48 c.sw a5, 8(a0)
20027f4a sw zero, 0x14(a0)
20027f4e sw zero, 0x10(a0)
20027f52 c.jr ra
20027f54 c.addi sp, -0x20
20027f56 c.swsp s0, 0x18(sp)
20027f58 c.swsp s1, 0x14(sp)
20027f5a c.swsp s2, 0x10(sp)
20027f5c c.swsp s3, 0xc(sp)
20027f5e c.swsp ra, 0x1c(sp)
20027f60 c.mv s2, a0
20027f62 c.mv s0, a1
20027f64 add s1, a1, a2
20027f68 lui s3, 0x20201
20027f6c bne s0, s1, 0x12
20027f70 c.lwsp ra, 0x1c(sp)
20027f72 c.lwsp s0, 0x18(sp)
20027f74 c.lwsp s1, 0x14(sp)
20027f76 c.lwsp s2, 0x10(sp)
20027f78 c.lwsp s3, 0xc(sp)
20027f7a c.addi16sp sp, 0x20
20027f7c c.jr ra
20027f7e lbu a1, 0(s0)
20027f82 lw a5, 0x540(s3)
20027f86 c.mv a0, s2
20027f88 c.addi s0, 1
20027f8a c.jalr a5
20027f8c c.j -0x20
20027f8e c.addi sp, -0x10
20027f90 c.swsp s1, 4(sp)
20027f92 lui s1, 0x20201
20027f96 lw a5, 0x540(s1)
20027f9a c.swsp ra, 0xc(sp)
20027f9c c.swsp s0, 8(sp)
20027f9e c.swsp s2, 0(sp)
20027fa0 c.mv s2, a1
20027fa2 addi a1, zero, 0x5a
20027fa6 c.mv s0, a0
20027fa8 c.jalr a5
20027faa lw a5, 0x540(s1)
20027fae c.li a1, 0
20027fb0 c.mv a0, s0
20027fb2 c.jalr a5
20027fb4 .byte 0x83, 0xa7