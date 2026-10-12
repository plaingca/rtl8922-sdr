
TYPE 0x20107c3e
20107c20 srli a0, a1, 3
20107c24 c.andi a0, 4
20107c26 c.jr ra
20107c28 c.li a0, 1
20107c2a c.jr ra
20107c2c c.mv a5, a0
20107c2e c.beqz a0, 0x4c
20107c30 c.li a4, 2
20107c32 bne a0, a4, 0x20
20107c36 andi a3, a3, 0x20
20107c3a c.li a0, 0
20107c3c c.beqz a3, 0x40
20107c3e lui a0, 0x3000
20107c42 c.and a1, a0
20107c44 andi a2, a2, 0xc0
20107c48 c.or a1, a2
20107c4a snez a0, a1
20107c4e c.slli a0, 9
20107c50 c.jr ra
20107c52 c.li a4, 1
20107c54 c.li a0, 0
20107c56 bne a5, a4, 0x26
20107c5a andi a5, a3, 0x20
20107c5e c.beqz a5, 0xe
20107c60 lui a0, 0x3c00
20107c64 c.and a1, a0
20107c66 andi a2, a2, 0xf0
20107c6a c.j -0x22
20107c6c c.andi a3, 0x10
20107c6e c.beqz a3, 0xe
20107c70 lui a0, 0xc00
20107c74 c.and a1, a0
20107c76 c.andi a2, 0xc
20107c78 c.j -0x30
20107c7a c.li a0, 1
20107c7c c.jr ra
20107c7e lui a5, 0x2020c
20107c82 lw a5, 0x3b8(a5)
20107c86 c.addi16sp sp, -0x30
20107c88 c.swsp ra, 0x2c(sp)
20107c8a c.swsp s0, 0x28(sp)
20107c8c c.swsp s1, 0x24(sp)
20107c8e c.swsp s2, 0x20(sp)
20107c90 c.swsp s3, 0x1c(sp)
20107c92 c.swsp s4, 0x18(sp)
20107c94 c.swsp s5, 0x14(sp)
20107c96 c.swsp s6, 0x10(sp)
20107c98 c.mv s3, a2
20107c9a c.mv s5, a3
20107c9c c.swsp a4, 8(sp)
20107c9e c.swsp a1, 0xc(sp)
20107ca0 c.mv s2, a0
20107ca2 c.jalr a5
20107ca4 lui a5, 0x2020c
20107ca8 lw a5, 0x3b4(a5)
20107cac c.mv s6, a0
20107cae c.jalr a5
20107cb0 lui a5, 0x2020c
20107cb4 .byte 0x83, 0xa7

TYPE 0x201165a4
20116586 c.mv a0, s1
20116588 jal 0x5a16
2011658c slli a1, s4, 2
20116590 c.add s0, a1
20116592 sb a0, 0x35a(s0)
20116596 addi a1, zero, 0xff
2011659a c.mv a0, s1
2011659c jal 0x5a02
201165a0 sb a0, 0x362(s0)
201165a4 lui a1, 0x3000
201165a8 c.mv a0, s1
201165aa jal 0x59f4
201165ae sb a0, 0x35b(s0)
201165b2 lui a1, 0xff0
201165b6 c.mv a0, s1
201165b8 jal 0x59e6
201165bc c.li a2, 8
201165be sb a0, 0x363(s0)
201165c2 lui a1, 0xf000
201165c6 c.mv a0, s5
201165c8 jal 0x59cc
201165cc addi a1, zero, 0x300
201165d0 c.mv a0, s1
201165d2 jal 0x59cc
201165d6 sb a0, 0x35c(s0)
201165da addi a1, zero, 0xff
201165de c.mv a0, s1
201165e0 jal 0x59be
201165e4 sb a0, 0x364(s0)
201165e8 lui a1, 0x3000
201165ec c.mv a0, s1
201165ee jal 0x59b0
201165f2 sb a0, 0x35d(s0)
201165f6 lui a1, 0xff0
201165fa c.mv a0, s1
201165fc jal 0x59a2
20116600 sb a0, 0x365(s0)
20116604 c.li a2, 5
20116606 c.mv a0, s2
20116608 c.lui a1, 0xf
2011660a jal 0x598a
2011660e lbu a5, 0x35a(s0)
20116612 lbu a2, 0x362(s0)
20116616 c.lui s1, 0xc
20116618 addi s2, s1, 0x460

TYPE 0x201165e8
201165ca c.addi4spn a2, sp, 0x274
201165cc addi a1, zero, 0x300
201165d0 c.mv a0, s1
201165d2 jal 0x59cc
201165d6 sb a0, 0x35c(s0)
201165da addi a1, zero, 0xff
201165de c.mv a0, s1
201165e0 jal 0x59be
201165e4 sb a0, 0x364(s0)
201165e8 lui a1, 0x3000
201165ec c.mv a0, s1
201165ee jal 0x59b0
201165f2 sb a0, 0x35d(s0)
201165f6 lui a1, 0xff0
201165fa c.mv a0, s1
201165fc jal 0x59a2
20116600 sb a0, 0x365(s0)
20116604 c.li a2, 5
20116606 c.mv a0, s2
20116608 c.lui a1, 0xf
2011660a jal 0x598a
2011660e lbu a5, 0x35a(s0)
20116612 lbu a2, 0x362(s0)
20116616 c.lui s1, 0xc
20116618 addi s2, s1, 0x460
2011661c c.add s2, s6
2011661e c.slli a5, 8
20116620 c.or a2, a5
20116622 c.mv a0, s2
20116624 lui a1, 0xffc00
20116628 jal 0x596c
2011662c lbu a5, 0x35b(s0)
20116630 lbu a2, 0x363(s0)
20116634 addi s1, s1, 0x464
20116638 c.add s1, s6
2011663a c.slli a5, 8
2011663c c.or a2, a5
2011663e c.mv a0, s1
20116640 lui a1, 0xffc00
20116644 jal 0x5950
20116648 lbu a5, 0x35c(s0)
2011664c lbu a2, 0x364(s0)
20116650 c.mv a0, s2
20116652 c.slli a5, 8
20116654 c.or a2, a5
20116656 lui a1, 0x3ff
2011665a jal 0x593a
2011665e .byte 0x83, 0x47

TYPE 0x20118df8
20118dda c.addi4spn s0, sp, 8
20118ddc c.mv a0, s0
20118dde jal 0x31b6
20118de2 c.li a2, 2
20118de4 lui a1, 0xf0
20118de8 c.mv a0, s0
20118dea jal 0x31aa
20118dee c.lui a0, 0xe
20118df0 addi a0, a0, 0x414
20118df4 c.add a0, s3
20118df6 c.li a2, 0
20118df8 lui a1, 0x3000
20118dfc c.swsp a0, 0xc(sp)
20118dfe jal 0x3196
20118e02 c.li a2, 0
20118e04 c.lwsp a0, 0xc(sp)
20118e06 lui a1, 0x30000
20118e0a jal 0x318a
20118e0e c.li a2, 1
20118e10 lui a1, 0x200
20118e14 c.mv a0, s0
20118e16 jal 0x317e
20118e1a addi a0, s2, -0x548
20118e1e c.li a2, 1
20118e20 lui a1, 0x40000
20118e24 c.add a0, s3
20118e26 jal 0x316e
20118e2a c.li a2, 3
20118e2c lui a1, 0xff000
20118e30 addi a0, zero, 0x30c
20118e34 jal 0x3160
20118e38 c.lui a2, 0xa
20118e3a addi a2, a2, 0x49
20118e3e c.lui a1, 0xffff0
20118e40 addi a0, zero, 0x32c
20118e44 jal 0x3150
20118e48 c.j 0xe
20118e4a addi a2, zero, 0x202
20118e4e c.j -0xa2
20118e50 c.li a4, 3
20118e52 beq a5, a4, 0xb4
20118e56 bnez s1, 0xec
20118e5a c.lui a0, 1
20118e5c addi a2, a0, 0x101
20118e60 c.lui a1, 0xffff0
20118e62 c.lwsp s0, 0x28(sp)
20118e64 c.lwsp ra, 0x2c(sp)
20118e66 c.lwsp s1, 0x24(sp)
20118e68 c.lwsp s2, 0x20(sp)
20118e6a c.lwsp s3, 0x1c(sp)
20118e6c addi a0, a0, 0xfc

TYPE 0x20118e9a
20118e7c c.addi4spn s0, sp, 8
20118e7e c.mv a0, s0
20118e80 jal 0x3114
20118e84 c.li a2, 3
20118e86 lui a1, 0xf0
20118e8a c.mv a0, s0
20118e8c jal 0x3108
20118e90 c.lui a0, 0xe
20118e92 addi a0, a0, 0x414
20118e96 c.add a0, s3
20118e98 c.li a2, 1
20118e9a lui a1, 0x3000
20118e9e c.swsp a0, 0xc(sp)
20118ea0 jal 0x30f4
20118ea4 c.li a2, 1
20118ea6 c.j -0xa2
20118ea8 c.lui s3, 3
20118eaa slli s0, s1, 8
20118eae addi s2, s3, -0x560
20118eb2 c.add s2, s0
20118eb4 c.li a2, 0
20118eb6 lui a1, 0x200
20118eba c.mv a0, s2
20118ebc jal 0x30d8
20118ec0 c.li a2, 4
20118ec2 lui a1, 0xf0
20118ec6 c.mv a0, s2
20118ec8 jal 0x30cc
20118ecc c.lui a0, 0xe
20118ece addi a0, a0, 0x414
20118ed2 c.add a0, s0
20118ed4 c.li a2, 2
20118ed6 lui a1, 0x3000
20118eda c.swsp a0, 0xc(sp)
20118edc jal 0x30b8
20118ee0 c.li a2, 1
20118ee2 c.lwsp a0, 0xc(sp)
20118ee4 lui a1, 0x30000
20118ee8 jal 0x30ac
20118eec c.li a2, 1
20118eee lui a1, 0x200
20118ef2 c.mv a0, s2
20118ef4 jal 0x30a0
20118ef8 addi a0, s3, -0x548
20118efc c.li a2, 1
20118efe lui a1, 0x40000
20118f02 c.add a0, s0
20118f04 c.j -0xde
20118f06 c.lui s3, 3
20118f08 slli s0, s1, 8
20118f0c addi s2, s3, -0x560
20118f10 c.add s2, s0

TYPE 0x20118ed6
20118eb8 c.addi4spn s0, sp, 8
20118eba c.mv a0, s2
20118ebc jal 0x30d8
20118ec0 c.li a2, 4
20118ec2 lui a1, 0xf0
20118ec6 c.mv a0, s2
20118ec8 jal 0x30cc
20118ecc c.lui a0, 0xe
20118ece addi a0, a0, 0x414
20118ed2 c.add a0, s0
20118ed4 c.li a2, 2
20118ed6 lui a1, 0x3000
20118eda c.swsp a0, 0xc(sp)
20118edc jal 0x30b8
20118ee0 c.li a2, 1
20118ee2 c.lwsp a0, 0xc(sp)
20118ee4 lui a1, 0x30000
20118ee8 jal 0x30ac
20118eec c.li a2, 1
20118eee lui a1, 0x200
20118ef2 c.mv a0, s2
20118ef4 jal 0x30a0
20118ef8 addi a0, s3, -0x548
20118efc c.li a2, 1
20118efe lui a1, 0x40000
20118f02 c.add a0, s0
20118f04 c.j -0xde
20118f06 c.lui s3, 3
20118f08 slli s0, s1, 8
20118f0c addi s2, s3, -0x560
20118f10 c.add s2, s0
20118f12 c.li a2, 0
20118f14 lui a1, 0x200
20118f18 c.mv a0, s2
20118f1a jal 0x307a
20118f1e c.li a2, 4
20118f20 lui a1, 0xf0
20118f24 c.mv a0, s2
20118f26 jal 0x306e
20118f2a c.lui a0, 0xe
20118f2c addi a0, a0, 0x414
20118f30 c.add a0, s0
20118f32 c.li a2, 2
20118f34 lui a1, 0x3000
20118f38 c.swsp a0, 0xc(sp)
20118f3a jal 0x305a
20118f3e c.li a2, 2
20118f40 c.j -0x5e
20118f42 c.lui a2, 2
20118f44 addi a2, a2, 0x202
20118f48 c.lui a1, 0xffff0
20118f4a c.lui a0, 1
20118f4c c.j -0xea

TYPE 0x20118f34
20118f16 c.addi4spn s0, sp, 8
20118f18 c.mv a0, s2
20118f1a jal 0x307a
20118f1e c.li a2, 4
20118f20 lui a1, 0xf0
20118f24 c.mv a0, s2
20118f26 jal 0x306e
20118f2a c.lui a0, 0xe
20118f2c addi a0, a0, 0x414
20118f30 c.add a0, s0
20118f32 c.li a2, 2
20118f34 lui a1, 0x3000
20118f38 c.swsp a0, 0xc(sp)
20118f3a jal 0x305a
20118f3e c.li a2, 2
20118f40 c.j -0x5e
20118f42 c.lui a2, 2
20118f44 addi a2, a2, 0x202
20118f48 c.lui a1, 0xffff0
20118f4a c.lui a0, 1
20118f4c c.j -0xea
20118f4e c.addi sp, -0x20
20118f50 c.swsp s1, 0x14(sp)
20118f52 c.swsp s2, 0x10(sp)
20118f54 c.swsp s3, 0xc(sp)
20118f56 c.swsp ra, 0x1c(sp)
20118f58 c.swsp s0, 0x18(sp)
20118f5a c.swsp s4, 8(sp)
20118f5c add a5, a0, a2
20118f60 lbu a5, 0x269(a5)
20118f64 c.mv s2, a0
20118f66 c.mv s3, a1
20118f68 c.mv s1, a2
20118f6a c.beqz a5, 0x34
20118f6c c.addi a5, -1
20118f6e andi a5, a5, 0xff
20118f72 c.li a4, 1
20118f74 bgeu a4, a5, 0xb0
20118f78 c.lui a0, 3
20118f7a c.add s2, a0
20118f7c lbu a5, -0x705(s2)
20118f80 c.beqz a5, 0xce
20118f82 c.li a3, 0
20118f84 c.li a2, 2
20118f86 c.li a1, 0
20118f88 andi a0, s1, 0xff
20118f8c c.lwsp s0, 0x18(sp)
20118f8e c.lwsp ra, 0x1c(sp)
20118f90 c.lwsp s1, 0x14(sp)
20118f92 c.lwsp s2, 0x10(sp)
20118f94 c.lwsp s3, 0xc(sp)
20118f96 c.lwsp s4, 8(sp)
20118f98 c.addi16sp sp, 0x20
20118f9a j 0x300e
20118f9e andi s0, a2, 0xff
20118fa2 c.li a3, 0
20118fa4 lui a2, 0x80
20118fa8 addi a1, zero, 0x51

TYPE 0x2011c464
2011c446 c.swsp a0, 0xc(sp)
2011c448 c.jal -0x4b4
2011c44a c.li a5, 7
2011c44c bltu a5, s0, 0x50
2011c450 lui a1, 0x2020d
2011c454 c.slli s0, 2
2011c456 addi a1, a1, 0x134
2011c45a c.add s0, a1
2011c45c c.lw a5, 0(s0)
2011c45e c.lwsp a0, 0xc(sp)
2011c460 c.jr a5
2011c462 c.li a2, 0
2011c464 lui a1, 0x3000
2011c468 c.swsp a0, 0xc(sp)
2011c46a c.jal -0x4d6
2011c46c c.li a2, 0
2011c46e c.lwsp s0, 0x18(sp)
2011c470 c.lwsp a0, 0xc(sp)
2011c472 c.lwsp ra, 0x1c(sp)
2011c474 lui a1, 0x30000
2011c478 c.addi16sp sp, 0x20
2011c47a c.j -0x4e6
2011c47c c.li a2, 1
2011c47e lui a1, 0x3000
2011c482 c.swsp a0, 0xc(sp)
2011c484 c.jal -0x4f0
2011c486 c.li a2, 1
2011c488 c.j -0x1a
2011c48a c.li a2, 2
2011c48c c.j -0xe
2011c48e c.li a2, 2
2011c490 lui a1, 0x3000
2011c494 c.swsp a0, 0xc(sp)
2011c496 c.jal -0x502
2011c498 c.li a2, 2
2011c49a c.j -0x2c
2011c49c c.lwsp ra, 0x1c(sp)
2011c49e c.lwsp s0, 0x18(sp)
2011c4a0 c.addi16sp sp, 0x20
2011c4a2 c.jr ra
2011c4a4 c.addi sp, -0x20
2011c4a6 c.swsp s0, 0x18(sp)
2011c4a8 c.swsp s1, 0x14(sp)
2011c4aa c.swsp s2, 0x10(sp)
2011c4ac c.swsp s3, 0xc(sp)
2011c4ae c.swsp s4, 8(sp)
2011c4b0 c.swsp ra, 0x1c(sp)
2011c4b2 c.mv s1, a0
2011c4b4 c.mv s2, a1
2011c4b6 c.mv s0, a2
2011c4b8 c.mv s4, a3
2011c4ba c.li s3, 0
2011c4bc c.li a0, 1
2011c4be beq s3, s4, 0x14
2011c4c2 c.jal -0x538
2011c4c4 c.mv a1, s2
2011c4c6 c.mv a0, s1
2011c4c8 c.addi s3, 1
2011c4ca c.jal -0x52c
2011c4cc bne a0, s0, -0x10
2011c4d0 c.li a0, 0
2011c4d2 c.lwsp ra, 0x1c(sp)
2011c4d4 c.lwsp s0, 0x18(sp)
2011c4d6 c.lwsp s1, 0x14(sp)
2011c4d8 c.lwsp s2, 0x10(sp)
2011c4da c.lwsp s3, 0xc(sp)

TYPE 0x2011c47e
2011c460 c.jr a5
2011c462 c.li a2, 0
2011c464 lui a1, 0x3000
2011c468 c.swsp a0, 0xc(sp)
2011c46a c.jal -0x4d6
2011c46c c.li a2, 0
2011c46e c.lwsp s0, 0x18(sp)
2011c470 c.lwsp a0, 0xc(sp)
2011c472 c.lwsp ra, 0x1c(sp)
2011c474 lui a1, 0x30000
2011c478 c.addi16sp sp, 0x20
2011c47a c.j -0x4e6
2011c47c c.li a2, 1
2011c47e lui a1, 0x3000
2011c482 c.swsp a0, 0xc(sp)
2011c484 c.jal -0x4f0
2011c486 c.li a2, 1
2011c488 c.j -0x1a
2011c48a c.li a2, 2
2011c48c c.j -0xe
2011c48e c.li a2, 2
2011c490 lui a1, 0x3000
2011c494 c.swsp a0, 0xc(sp)
2011c496 c.jal -0x502
2011c498 c.li a2, 2
2011c49a c.j -0x2c
2011c49c c.lwsp ra, 0x1c(sp)
2011c49e c.lwsp s0, 0x18(sp)
2011c4a0 c.addi16sp sp, 0x20
2011c4a2 c.jr ra
2011c4a4 c.addi sp, -0x20
2011c4a6 c.swsp s0, 0x18(sp)
2011c4a8 c.swsp s1, 0x14(sp)
2011c4aa c.swsp s2, 0x10(sp)
2011c4ac c.swsp s3, 0xc(sp)
2011c4ae c.swsp s4, 8(sp)
2011c4b0 c.swsp ra, 0x1c(sp)
2011c4b2 c.mv s1, a0
2011c4b4 c.mv s2, a1
2011c4b6 c.mv s0, a2
2011c4b8 c.mv s4, a3
2011c4ba c.li s3, 0
2011c4bc c.li a0, 1
2011c4be beq s3, s4, 0x14
2011c4c2 c.jal -0x538
2011c4c4 c.mv a1, s2
2011c4c6 c.mv a0, s1
2011c4c8 c.addi s3, 1
2011c4ca c.jal -0x52c
2011c4cc bne a0, s0, -0x10
2011c4d0 c.li a0, 0
2011c4d2 c.lwsp ra, 0x1c(sp)
2011c4d4 c.lwsp s0, 0x18(sp)
2011c4d6 c.lwsp s1, 0x14(sp)
2011c4d8 c.lwsp s2, 0x10(sp)
2011c4da c.lwsp s3, 0xc(sp)
2011c4dc c.lwsp s4, 8(sp)
2011c4de c.addi16sp sp, 0x20
2011c4e0 c.jr ra
2011c4e2 c.addi sp, -0x20
2011c4e4 c.swsp s0, 0x18(sp)
2011c4e6 c.swsp s1, 0x14(sp)
2011c4e8 c.swsp s2, 0x10(sp)
2011c4ea c.swsp s3, 0xc(sp)
2011c4ec c.swsp s4, 8(sp)
2011c4ee c.swsp s5, 4(sp)
2011c4f0 c.swsp ra, 0x1c(sp)
2011c4f2 c.mv s1, a0
2011c4f4 c.mv s2, a1

TYPE 0x2011c490
2011c472 c.lwsp ra, 0x1c(sp)
2011c474 lui a1, 0x30000
2011c478 c.addi16sp sp, 0x20
2011c47a c.j -0x4e6
2011c47c c.li a2, 1
2011c47e lui a1, 0x3000
2011c482 c.swsp a0, 0xc(sp)
2011c484 c.jal -0x4f0
2011c486 c.li a2, 1
2011c488 c.j -0x1a
2011c48a c.li a2, 2
2011c48c c.j -0xe
2011c48e c.li a2, 2
2011c490 lui a1, 0x3000
2011c494 c.swsp a0, 0xc(sp)
2011c496 c.jal -0x502
2011c498 c.li a2, 2
2011c49a c.j -0x2c
2011c49c c.lwsp ra, 0x1c(sp)
2011c49e c.lwsp s0, 0x18(sp)
2011c4a0 c.addi16sp sp, 0x20
2011c4a2 c.jr ra
2011c4a4 c.addi sp, -0x20
2011c4a6 c.swsp s0, 0x18(sp)
2011c4a8 c.swsp s1, 0x14(sp)
2011c4aa c.swsp s2, 0x10(sp)
2011c4ac c.swsp s3, 0xc(sp)
2011c4ae c.swsp s4, 8(sp)
2011c4b0 c.swsp ra, 0x1c(sp)
2011c4b2 c.mv s1, a0
2011c4b4 c.mv s2, a1
2011c4b6 c.mv s0, a2
2011c4b8 c.mv s4, a3
2011c4ba c.li s3, 0
2011c4bc c.li a0, 1
2011c4be beq s3, s4, 0x14
2011c4c2 c.jal -0x538
2011c4c4 c.mv a1, s2
2011c4c6 c.mv a0, s1
2011c4c8 c.addi s3, 1
2011c4ca c.jal -0x52c
2011c4cc bne a0, s0, -0x10
2011c4d0 c.li a0, 0
2011c4d2 c.lwsp ra, 0x1c(sp)
2011c4d4 c.lwsp s0, 0x18(sp)
2011c4d6 c.lwsp s1, 0x14(sp)
2011c4d8 c.lwsp s2, 0x10(sp)
2011c4da c.lwsp s3, 0xc(sp)
2011c4dc c.lwsp s4, 8(sp)
2011c4de c.addi16sp sp, 0x20
2011c4e0 c.jr ra
2011c4e2 c.addi sp, -0x20
2011c4e4 c.swsp s0, 0x18(sp)
2011c4e6 c.swsp s1, 0x14(sp)
2011c4e8 c.swsp s2, 0x10(sp)
2011c4ea c.swsp s3, 0xc(sp)
2011c4ec c.swsp s4, 8(sp)
2011c4ee c.swsp s5, 4(sp)
2011c4f0 c.swsp ra, 0x1c(sp)
2011c4f2 c.mv s1, a0
2011c4f4 c.mv s2, a1
2011c4f6 c.mv s3, a2
2011c4f8 c.mv s0, a3
2011c4fa c.mv s5, a4
2011c4fc c.li s4, 0
2011c4fe c.li a0, 1
2011c500 beq s4, s5, 0x18
2011c504 c.jal -0x57a
2011c506 c.mv a2, s3

TYPE 0x20125c00
20125be2 bltz a0, -0x2c
20125be6 lui a5, 0x20201
20125bea lw s0, 0x73c(a5)
20125bee lw a5, 0x748(s1)
20125bf2 c.lui a0, 0xb
20125bf4 c.addi s2, 0x1c
20125bf6 c.jalr a5
20125bf8 andi a1, a0, -0x31
20125bfc c.lui a0, 0xb
20125bfe c.jalr s0
20125c00 lui s3, 0x3000
20125c04 addi s0, zero, 0x32
20125c08 lui s4, 0x20202
20125c0c lw a5, 0x748(s1)
20125c10 c.mv a0, s2
20125c12 c.jalr a5
20125c14 and a5, a0, s3
20125c18 bne a5, s3, 8
20125c1c bgez a0, -0x8e
20125c20 lw a5, 0x2d0(s4)
20125c24 c.addi s0, -1
20125c26 c.li a0, 1
20125c28 andi s0, s0, 0xff
20125c2c c.jalr a5
20125c2e c.bnez s0, -0x22
20125c30 c.j -0x7a
20125c32 lui a5, 0x20201
20125c36 c.addi sp, -0x20
20125c38 lw a5, 0x40c(a5)
20125c3c c.swsp s0, 0x18(sp)
20125c3e lui s0, 0x20203
20125c42 c.swsp s1, 0x14(sp)
20125c44 addi s0, s0, 0x580
20125c48 c.swsp ra, 0x1c(sp)
20125c4a lui a1, 0xf2120
20125c4e c.li a0, 0x10
20125c50 c.lw s1, 0(s0)
20125c52 c.jalr a5
20125c54 c.lw a5, 0(s0)
20125c56 c.sw a0, 0x2c(s1)
20125c58 c.lw a0, 0x2c(a5)
20125c5a c.bnez a0, 0x26
20125c5c c.li a5, 6
20125c5e sb a5, 0(sp)
20125c62 lui a5, 0x20211
20125c66 addi a5, a5, 0x4a8
20125c6a c.swsp a5, 4(sp)
20125c6c addi a5, zero, 0x7d
20125c70 c.swsp a5, 8(sp)
20125c72 lui a5, 0x20202
20125c76 .byte 0x83, 0xa7

TYPE 0x2012d8e4
2012d8c6 c.jalr a5
2012d8c8 c.lwsp ra, 0xc(sp)
2012d8ca c.li a0, 3
2012d8cc c.addi sp, 0x10
2012d8ce c.jr ra
2012d8d0 c.bnez a1, 0x12
2012d8d2 lui a5, 0x20203
2012d8d6 lw a5, 0x584(a5)
2012d8da c.lw a4, 0x48(a5)
2012d8dc c.lw a5, 4(a4)
2012d8de c.or a0, a5
2012d8e0 c.sw a0, 4(a4)
2012d8e2 c.jr ra
2012d8e4 lui a4, 0x3000
2012d8e8 c.slli a1, 0x18
2012d8ea c.and a1, a4
2012d8ec lui a5, 0x20201
2012d8f0 c.addi sp, -0x10
2012d8f2 c.slli a2, 8
2012d8f4 lw a5, 0x73c(a5)
2012d8f8 c.or a1, a0
2012d8fa c.swsp s0, 8(sp)
2012d8fc c.or a1, a2
2012d8fe lui a4, 0x9c000
2012d902 c.lui s0, 0xa
2012d904 c.swsp ra, 0xc(sp)
2012d906 addi a0, s0, 0x34c
2012d90a c.or a1, a4
2012d90c c.jalr a5
2012d90e lui a5, 0x20201
2012d912 lw a5, 0x7b8(a5)
2012d916 addi a0, s0, 0x34c
2012d91a c.jalr a5
2012d91c c.lwsp ra, 0xc(sp)
2012d91e c.lwsp s0, 8(sp)
2012d920 c.addi a0, -1
2012d922 seqz a0, a0
2012d926 c.addi sp, 0x10
2012d928 c.jr ra
2012d92a lui a5, 0x20201
2012d92e lw a5, 0x12c(a5)
2012d932 c.addi16sp sp, -0x40
2012d934 c.swsp s0, 0x38(sp)
2012d936 c.swsp s2, 0x30(sp)
2012d938 c.swsp s4, 0x28(sp)
2012d93a c.swsp s5, 0x24(sp)
2012d93c c.swsp ra, 0x3c(sp)
2012d93e c.swsp s1, 0x34(sp)
2012d940 c.swsp s3, 0x2c(sp)
2012d942 c.swsp s6, 0x20(sp)
2012d944 c.swsp s7, 0x1c(sp)
2012d946 c.swsp s8, 0x18(sp)
2012d948 c.swsp s9, 0x14(sp)
2012d94a c.swsp s10, 0x10(sp)
2012d94c c.swsp s11, 0xc(sp)
2012d94e c.mv s4, a0
2012d950 lui s0, 0x20203
2012d954 c.jalr a5
2012d956 lw a5, 0x580(s0)
2012d95a .byte 0x13, 0x19

TYPE 0x20130450
20130432 c.li a1, 0
20130434 jal 0x14332
20130438 c.lw a4, 0(s1)
2013043a lhu a5, 4(s0)
2013043e lbu a3, 0(s0)
20130442 lw a6, 0(a4)
20130446 c.slli a5, 0x12
20130448 sb a3, 0x19(a4)
2013044c srli a0, a5, 0x12
20130450 lui a1, 0xa000
20130454 lbu a3, 1(s0)
20130458 lbu a2, 2(s0)
2013045c or a5, a0, a1
20130460 lui a1, 0x40f30
20130464 and a1, a1, a6
20130468 c.or a5, a1
2013046a c.sw a5, 0(a4)
2013046c c.slli a3, 2
2013046e c.lw a5, 0x1c(a4)
20130470 c.andi a2, 3
20130472 c.or a3, a2
20130474 sb a3, 0x18(a4)
20130478 c.lui a3, 0xffffc
2013047a c.and a5, a3
2013047c c.or a5, a0
2013047e c.sw a5, 0x1c(a4)
20130480 c.lw a5, 0x18(a4)
20130482 lui a3, 0xfff10
20130486 c.addi a3, -1
20130488 c.and a5, a3
2013048a c.lui a3, 0x10
2013048c c.or a5, a3
2013048e c.sw a5, 0x18(a4)
20130490 lbu a5, 5(s1)
20130494 c.lwsp ra, 0xc(sp)
20130496 c.lwsp s0, 8(sp)
20130498 sb a5, 0x1b(a4)
2013049c c.lwsp s1, 4(sp)
2013049e c.li a0, 0
201304a0 c.addi sp, 0x10
201304a2 c.jr ra
201304a4 c.li a0, 7
201304a6 c.jr ra
201304a8 bgtz a0, 0x1e
201304ac c.li a0, 0
201304ae c.jr ra
201304b0 c.li a0, 0
201304b2 c.lwsp ra, 0x2c(sp)
201304b4 c.lwsp s0, 0x28(sp)
201304b6 c.lwsp s1, 0x24(sp)
201304b8 c.lwsp s2, 0x20(sp)
201304ba c.lwsp s3, 0x1c(sp)
201304bc c.lwsp s4, 0x18(sp)
201304be c.lwsp s5, 0x14(sp)
201304c0 c.lwsp s6, 0x10(sp)
201304c2 c.addi16sp sp, 0x30
201304c4 c.jr ra
201304c6 c.lw a0, 0(a1)

TYPE 0x2015008e
20150070 c.bnez a4, -0xc4
20150072 c.addi s6, 2
20150074 c.add s5, s6
20150076 c.j -0xce
20150078 c.li a5, 0xd
2015007a c.li a4, 1
2015007c c.j -0x8c
2015007e c.bnez a4, -0x7a
20150080 lbu a2, 0x37(s0)
20150084 c.addi a2, 1
20150086 sb a2, 0x37(s0)
2015008a c.j -0x86
2015008c c.beqz a4, 8
2015008e lui a4, 0x3000
20150092 c.j -0x6a
20150094 lui a4, 0xfd000
20150098 c.addi a4, -1
2015009a c.and a5, a4
2015009c lui a4, 0x2000
201500a0 c.j -0x78
201500a2 c.lw a4, 4(s0)
201500a4 c.beqz a4, -0x4e
201500a6 lbu a4, 0x38(s0)
201500aa andi a3, a4, 1
201500ae c.beqz a3, -0x58
201500b0 c.andi a4, -2
201500b2 sb a4, 0x38(s0)
201500b6 c.j -0x60
201500b8 addi a4, zero, 0x48
201500bc mul a0, a0, a4
201500c0 lui a5, 0x20203
201500c4 lw a5, 0x58c(a5)
201500c8 c.lw a5, 0x18(a5)
201500ca c.add a0, a5
201500cc lbu a5, 0x715(a0)
201500d0 bne a5, a1, 0x14
201500d4 lw a5, 0x724(a0)
201500d8 c.beqz a5, 0xc
201500da lbu a5, 0x748(a0)
201500de c.addi a5, 1
201500e0 sb a5, 0x748(a0)
201500e4 c.jr ra
201500e6 lui a5, 0x20203
201500ea addi a5, a5, 0x580
201500ee c.lw a4, 4(a5)
201500f0 c.slli a0, 2
201500f2 c.addi sp, -0x20
201500f4 c.lw a4, 0x20(a4)
201500f6 c.swsp s2, 0x10(sp)
201500f8 c.lw a5, 0xc(a5)
201500fa c.add a4, a0
201500fc c.lw a4, 8(a4)
201500fe c.swsp ra, 0x1c(sp)
20150100 c.swsp s0, 0x18(sp)
20150102 c.swsp s1, 0x14(sp)
20150104 c.swsp s3, 0xc(sp)

TYPE 0x20150d30
20150d12 c.bnez a5, 0x30
20150d14 lui a5, 0x20201
20150d18 lw a5, 0x748(a5)
20150d1c c.lui s1, 0xa
20150d1e addi a0, s1, -0x3cc
20150d22 c.jalr a5
20150d24 lui a5, 0x20201
20150d28 lw a4, 0x73c(a5)
20150d2c lui a1, 0xff0
20150d30 lui a5, 0x3000
20150d34 c.and a1, a0
20150d36 addi a5, a5, 0x303
20150d3a c.or a1, a5
20150d3c addi a0, s1, -0x3cc
20150d40 c.jalr a4
20150d42 addi a5, zero, 0x48
20150d46 mul a5, s0, a5
20150d4a c.add a5, s3
20150d4c lbu a4, 0x74c(a5)
20150d50 sw s2, 0x71c(a5)
20150d54 ori a4, a4, 1
20150d58 sb a4, 0x74c(a5)
20150d5c addi a0, zero, 0x48
20150d60 mul s0, s0, a0
20150d64 add s1, s3, s0
20150d68 lw a5, 0x724(s1)
20150d6c c.beqz a5, 0x4e
20150d6e lw a4, 0x72c(s1)
20150d72 addi a5, a5, -0x40
20150d76 sub a4, s2, a4
20150d7a bltu a4, a5, 0x40
20150d7e addi s0, s0, 0x714
20150d82 add a0, s3, s0
20150d86 jal -0xb18
20150d8a c.mv a5, a0
20150d8c c.beqz a0, 0x2a
20150d8e c.lwsp s0, 0x18(sp)
20150d90 lui a4, 0x20201
20150d94 lw a6, 0x6a8(a4)
20150d98 c.lwsp ra, 0x1c(sp)
20150d9a c.lwsp s1, 0x14(sp)
20150d9c c.lwsp s2, 0x10(sp)
20150d9e c.lwsp s3, 0xc(sp)
20150da0 lui a3, 0x40000
20150da4 c.li a4, 1
20150da6 .byte 0x93, 0x86