20126f5c c.lui a5, 0x10
20126f5e c.mv a1, a0
20126f60 bgeu a0, a5, 0x14
20126f64 lui a5, 0x20201
20126f68 lw a5, 0x758(a5)
20126f6c lui a0, 0xb8600
20126f70 c.add a0, a1
20126f72 c.jr a5
20126f74 c.addi sp, -0x10
20126f76 c.swsp ra, 0xc(sp)
20126f78 c.lui a5, 0x14
20126f7a bgeu a0, a5, 0x22
20126f7e lui a5, 0x20205
20126f82 lbu a5, -0x1e7(a5)
20126f86 c.beqz a5, 0x36
20126f88 lui a5, 0x20201
20126f8c lui a0, 0xb8600
20126f90 c.lwsp ra, 0xc(sp)
20126f92 lw a5, 0x758(a5)
20126f96 c.add a0, a1
20126f98 c.addi sp, 0x10
20126f9a c.j -0x28
20126f9c c.lui a5, 0x18
20126f9e bgeu a0, a5, 0xe
20126fa2 lui a5, 0x20205
20126fa6 lbu a5, -0x1e6(a5)
20126faa c.j -0x24
20126fac c.lui a5, 0x1c
20126fae bgeu a0, a5, 0xe
20126fb2 lui a5, 0x20205
20126fb6 lbu a5, -0x1e5(a5)
20126fba c.j -0x34
20126fbc lui a5, 0x20201
20126fc0 lw a5, 0x73c(a5)
20126fc4 addi a0, zero, 0x180
20126fc8 c.jalr a5
20126fca c.lwsp ra, 0xc(sp)
20126fcc lui a0, 0xeaeaf
20126fd0 addi a0, a0, -0x516
20126fd4 c.addi sp, 0x10
20126fd6 c.jr ra
20126fd8 c.lui a5, 0x10
20126fda c.mv a1, a0
20126fdc bgeu a0, a5, 0x14
20126fe0 lui a5, 0x20201
20126fe4 lw a5, 0x75c(a5)
20126fe8 lui a0, 0xb8600
20126fec c.add a0, a1
20126fee c.jr a5
20126ff0 c.addi sp, -0x10
20126ff2 c.swsp ra, 0xc(sp)
20126ff4 c.lui a5, 0x14
20126ff6 bgeu a0, a5, 0x22
20126ffa lui a5, 0x20205
20126ffe lbu a5, -0x1e7(a5)
20127002 c.beqz a5, 0x36
20127004 lui a5, 0x20201
20127008 lui a0, 0xb8600
2012700c c.lwsp ra, 0xc(sp)
2012700e lw a5, 0x75c(a5)
20127012 c.add a0, a1
20127014 c.addi sp, 0x10
20127016 c.j -0x28
20127018 c.lui a5, 0x18
2012701a bgeu a0, a5, 0xe
2012701e lui a5, 0x20205
20127022 lbu a5, -0x1e6(a5)
20127026 c.j -0x24
20127028 c.lui a5, 0x1c
2012702a bgeu a0, a5, 0xe
2012702e lui a5, 0x20205
20127032 lbu a5, -0x1e5(a5)
20127036 c.j -0x34
20127038 lui a5, 0x20201
2012703c lw a5, 0x73c(a5)
20127040 addi a0, zero, 0x180
20127044 c.jalr a5
20127046 c.lwsp ra, 0xc(sp)
20127048 c.lui a0, 0xf
2012704a addi a0, a0, -0x516
2012704e c.addi sp, 0x10
20127050 c.jr ra
20127052 c.lui a5, 0x10
20127054 c.mv a1, a0
20127056 bgeu a0, a5, 0x14
2012705a lui a5, 0x20201
2012705e .byte 0x83, 0xa7