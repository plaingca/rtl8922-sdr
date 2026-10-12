
BASE 0x20000590 0xb8007
20000584 addi a0, zero, 0x1e0
20000588 c.jalr a4
2000058a c.jal 0x368
2000058c c.bnez a0, 0x36
2000058e c.li a0, 0x13
20000590 lui s0, 0xb8007
20000594 c.jal 0x3d6
20000596 lui s1, 0x20201
2000059a addi s0, s0, -0x6f8
2000059e lui s2, 0x20201
200005a2 lw a5, 0x758(s1)
200005a6 c.mv a0, s0
200005a8 c.jalr a5
200005aa beqz a0, -0x1a0
200005ae lw s3, 0x74c(s2)
200005b2 lw a5, 0x758(s1)
200005b6 c.mv a0, s0
200005b8 c.jalr a5
200005ba c.mv a1, a0
200005bc c.mv a0, s0
200005be c.jalr s3
200005c0 c.j -0x1e
200005c2 c.addi a0, -1
200005c4 c.j -0x34
200005c6 c.addi sp, -0x20
200005c8 c.swsp s2, 0x10(sp)
200005ca lui s2, 0x20201
200005ce lw a5, 0x6b8(s2)
200005d2 c.swsp ra, 0x1c(sp)
200005d4 c.li a4, 0
200005d6 addi a3, zero, 0xda
200005da c.li a2, 5
200005dc c.li a1, 0
200005de c.swsp s0, 0x18(sp)
200005e0 c.swsp s1, 0x14(sp)
200005e2 c.swsp s3, 0xc(sp)
200005e4 c.swsp s4, 8(sp)
200005e6 c.li a0, 2
200005e8 c.jalr a5
200005ea lui s1, 0x20201
200005ee lui s3, 0x20201
200005f2 lw s4, 0x74c(s3)
200005f6 lw a5, 0x758(s1)
200005fa lui s0, 0xb8008
200005fe addi a0, s0, 8
20000602 c.jalr a5
20000604 lui a1, 0x21000
20000608 c.or a1, a0
2000060a addi a0, s0, 8
2000060e c.jalr s4
20000610 lw s3, 0x74c(s3)
20000614 lw a5, 0x758(s1)
20000618 addi a0, s0, 0xec
2000061c c.jalr a5
2000061e ori a1, a0, 1
20000622 addi a0, s0, 0xec

BASE 0x200005fa 0xb8008
200005ee lui s3, 0x20201
200005f2 lw s4, 0x74c(s3)
200005f6 lw a5, 0x758(s1)
200005fa lui s0, 0xb8008
200005fe addi a0, s0, 8
20000602 c.jalr a5
20000604 lui a1, 0x21000
20000608 c.or a1, a0
2000060a addi a0, s0, 8
2000060e c.jalr s4
20000610 lw s3, 0x74c(s3)
20000614 lw a5, 0x758(s1)
20000618 addi a0, s0, 0xec
2000061c c.jalr a5
2000061e ori a1, a0, 1
20000622 addi a0, s0, 0xec
20000626 c.jalr s3
20000628 lw a5, 0x758(s1)
2000062c addi a0, s0, 0xf0
20000630 c.jalr a5
20000632 slli a5, a0, 0x10
20000636 c.srli a5, 0x10
20000638 c.beqz a5, 0x72
2000063a lw a6, 0x6b8(s2)
2000063e c.li a4, 1
20000640 addi a3, zero, 0xdb
20000644 c.li a2, 5
20000646 c.li a1, 0
20000648 c.li a0, 2
2000064a c.jalr a6
2000064c lui a5, 0x20201
20000650 lw a5, 0x748(a5)
20000654 addi a0, zero, 0x1e0
20000658 c.jalr a5
2000065a lui a1, 0xc4000
2000065e lui a5, 0x20201
20000662 lw a5, 0x73c(a5)
20000666 c.addi a1, -1
20000668 c.and a0, a1
2000066a lui a1, 0x10000
2000066e c.or a1, a0
20000670 addi a0, zero, 0x1e0
20000674 c.jalr a5
20000676 lui a5, 0x20201
2000067a lw a5, 0x738(a5)
2000067e c.lui a0, 8
20000680 c.li a1, 0xb
20000682 addi a0, a0, -0x70e
20000686 c.jalr a5
20000688 lui a5, 0x20201
2000068c c.lwsp s0, 0x18(sp)
2000068e c.lwsp ra, 0x1c(sp)

BASE 0x20000830 0xb8008
20000824 c.beqz a4, 0xba
20000826 c.jal -0x260
20000828 c.jal -0x16a
2000082a lbu a5, 0xb(s4)
2000082e c.beqz a5, 0x84
20000830 lui s4, 0xb8008
20000834 lui s5, 0x20201
20000838 addi s7, s4, 8
2000083c lui s6, 0x8000
20000840 lw a5, 0x758(s5)
20000844 c.mv a0, s7
20000846 c.jalr a5
20000848 and a0, a0, s6
2000084c c.bnez a0, -0xc
2000084e lw a5, 0x758(s5)
20000852 addi a0, s4, 0xf0
20000856 c.jalr a5
20000858 slli a5, a0, 0x10
2000085c c.srli a5, 0x10
2000085e c.beqz a5, 0x42
20000860 lw a6, 0x6b8(s1)
20000864 addi a3, zero, 0xde
20000868 c.li a2, 5
2000086a c.li a4, 1
2000086c c.li a0, 2
2000086e c.li a1, 0
20000870 c.swsp a5, 0xc(sp)
20000872 c.jalr a6
20000874 lw a4, 0x73c(s2)
20000878 lui s0, 0x10000
2000087c or s0, s3, s0
20000880 c.mv a1, s0
20000882 addi a0, zero, 0x1e0
20000886 c.jalr a4
20000888 lui a4, 0x20201
2000088c lw a4, 0xc4(a4)
20000890 lui a0, 0x20209
20000894 addi a1, zero, 0x76
20000898 addi a0, a0, 0x248
2000089c c.jalr a4
2000089e c.lwsp a5, 0xc(sp)
200008a0 lw a6, 0x6b8(s1)
200008a4 c.li a4, 0
200008a6 addi a3, zero, 0xdf
200008aa c.li a2, 5
200008ac c.li a0, 2
200008ae c.li a1, 0
200008b0 c.jalr a6
200008b2 lui a1, 0xc4000
200008b6 c.addi a1, -1
200008b8 c.and s0, a1
200008ba lui a1, 0x8000
200008be c.or a1, s0
200008c0 c.lwsp s0, 0x38(sp)
200008c2 lw a5, 0x73c(s2)

BASE 0x200008fc 0xb8006
200008f0 c.j -0xc8
200008f2 lui a5, 0x20201
200008f6 lw a5, 0x758(a5)
200008fa c.addi sp, -0x10
200008fc lui a0, 0xb8006
20000900 c.swsp ra, 0xc(sp)
20000902 addi a0, a0, 0x404
20000906 c.jalr a5
20000908 c.lwsp ra, 0xc(sp)
2000090a c.srli a0, 0x10
2000090c andi a0, a0, 0x1ff
20000910 c.addi sp, 0x10
20000912 c.jr ra
20000914 lui a5, 0x20201
20000918 lw a5, 0x758(a5)
2000091c c.addi sp, -0x10
2000091e lui a0, 0xb8006
20000922 c.swsp ra, 0xc(sp)
20000924 addi a0, a0, 0x404
20000928 c.jalr a5
2000092a c.lwsp ra, 0xc(sp)
2000092c andi a0, a0, 0x1ff
20000930 c.addi sp, 0x10
20000932 c.jr ra
20000934 c.addi sp, -0x10
20000936 c.swsp s0, 8(sp)
20000938 lui s0, 0xb8006
2000093c c.swsp s1, 4(sp)
2000093e c.swsp ra, 0xc(sp)
20000940 lui s1, 0x20201
20000944 addi s0, s0, 0x404
20000948 lw a5, 0x758(s1)
2000094c c.mv a0, s0
2000094e c.jalr a5
20000950 srli a5, a0, 0x10
20000954 andi a5, a5, 0x1ff
20000958 andi a0, a0, 0x1ff
2000095c bne a5, a0, -0x14
20000960 c.lwsp ra, 0xc(sp)
20000962 c.lwsp s0, 8(sp)
20000964 c.lwsp s1, 4(sp)
20000966 c.addi sp, 0x10
20000968 c.jr ra
2000096a lui a5, 0x20201
2000096e c.addi sp, -0x10
20000970 lw a5, 0x758(a5)
20000974 c.swsp s1, 4(sp)
20000976 lui s1, 0xb8006
2000097a c.swsp s0, 8(sp)
2000097c c.swsp ra, 0xc(sp)
2000097e c.mv s0, a0
20000980 addi a0, s1, 0x404
20000984 c.jalr a5
20000986 andi a1, a0, -0x200
2000098a andi s0, s0, 0x1ff
2000098e lui a5, 0x20201

BASE 0x2000091e 0xb8006
20000912 c.jr ra
20000914 lui a5, 0x20201
20000918 lw a5, 0x758(a5)
2000091c c.addi sp, -0x10
2000091e lui a0, 0xb8006
20000922 c.swsp ra, 0xc(sp)
20000924 addi a0, a0, 0x404
20000928 c.jalr a5
2000092a c.lwsp ra, 0xc(sp)
2000092c andi a0, a0, 0x1ff
20000930 c.addi sp, 0x10
20000932 c.jr ra
20000934 c.addi sp, -0x10
20000936 c.swsp s0, 8(sp)
20000938 lui s0, 0xb8006
2000093c c.swsp s1, 4(sp)
2000093e c.swsp ra, 0xc(sp)
20000940 lui s1, 0x20201
20000944 addi s0, s0, 0x404
20000948 lw a5, 0x758(s1)
2000094c c.mv a0, s0
2000094e c.jalr a5
20000950 srli a5, a0, 0x10
20000954 andi a5, a5, 0x1ff
20000958 andi a0, a0, 0x1ff
2000095c bne a5, a0, -0x14
20000960 c.lwsp ra, 0xc(sp)
20000962 c.lwsp s0, 8(sp)
20000964 c.lwsp s1, 4(sp)
20000966 c.addi sp, 0x10
20000968 c.jr ra
2000096a lui a5, 0x20201
2000096e c.addi sp, -0x10
20000970 lw a5, 0x758(a5)
20000974 c.swsp s1, 4(sp)
20000976 lui s1, 0xb8006
2000097a c.swsp s0, 8(sp)
2000097c c.swsp ra, 0xc(sp)
2000097e c.mv s0, a0
20000980 addi a0, s1, 0x404
20000984 c.jalr a5
20000986 andi a1, a0, -0x200
2000098a andi s0, s0, 0x1ff
2000098e lui a5, 0x20201
20000992 c.or a1, s0
20000994 c.lwsp s0, 8(sp)
20000996 c.lwsp ra, 0xc(sp)
20000998 lw a5, 0x74c(a5)
2000099c addi a0, s1, 0x404
200009a0 c.lwsp s1, 4(sp)
200009a2 c.addi sp, 0x10
200009a4 c.jr a5
200009a6 c.addi16sp sp, -0x50
200009a8 c.swsp s2, 0x40(sp)
200009aa c.swsp s3, 0x3c(sp)
200009ac lui s2, 0x20205
200009b0 c.swsp ra, 0x4c(sp)
200009b2 c.swsp s0, 0x48(sp)

BASE 0x20000938 0xb8006
2000092c andi a0, a0, 0x1ff
20000930 c.addi sp, 0x10
20000932 c.jr ra
20000934 c.addi sp, -0x10
20000936 c.swsp s0, 8(sp)
20000938 lui s0, 0xb8006
2000093c c.swsp s1, 4(sp)
2000093e c.swsp ra, 0xc(sp)
20000940 lui s1, 0x20201
20000944 addi s0, s0, 0x404
20000948 lw a5, 0x758(s1)
2000094c c.mv a0, s0
2000094e c.jalr a5
20000950 srli a5, a0, 0x10
20000954 andi a5, a5, 0x1ff
20000958 andi a0, a0, 0x1ff
2000095c bne a5, a0, -0x14
20000960 c.lwsp ra, 0xc(sp)
20000962 c.lwsp s0, 8(sp)
20000964 c.lwsp s1, 4(sp)
20000966 c.addi sp, 0x10
20000968 c.jr ra
2000096a lui a5, 0x20201
2000096e c.addi sp, -0x10
20000970 lw a5, 0x758(a5)
20000974 c.swsp s1, 4(sp)
20000976 lui s1, 0xb8006
2000097a c.swsp s0, 8(sp)
2000097c c.swsp ra, 0xc(sp)
2000097e c.mv s0, a0
20000980 addi a0, s1, 0x404
20000984 c.jalr a5
20000986 andi a1, a0, -0x200
2000098a andi s0, s0, 0x1ff
2000098e lui a5, 0x20201
20000992 c.or a1, s0
20000994 c.lwsp s0, 8(sp)
20000996 c.lwsp ra, 0xc(sp)
20000998 lw a5, 0x74c(a5)
2000099c addi a0, s1, 0x404
200009a0 c.lwsp s1, 4(sp)
200009a2 c.addi sp, 0x10
200009a4 c.jr a5
200009a6 c.addi16sp sp, -0x50
200009a8 c.swsp s2, 0x40(sp)
200009aa c.swsp s3, 0x3c(sp)
200009ac lui s2, 0x20205
200009b0 c.swsp ra, 0x4c(sp)
200009b2 c.swsp s0, 0x48(sp)
200009b4 c.swsp s1, 0x44(sp)
200009b6 c.swsp s4, 0x38(sp)
200009b8 c.swsp s5, 0x34(sp)
200009ba c.swsp s6, 0x30(sp)
200009bc c.swsp s7, 0x2c(sp)
200009be c.swsp s8, 0x28(sp)
200009c0 c.swsp s9, 0x24(sp)
200009c2 c.swsp s10, 0x20(sp)
200009c4 c.swsp s11, 0x1c(sp)
200009c6 c.jal -0xd4
200009c8 addi a5, s2, -0x1b0
200009cc .byte 0x03, 0xc8

BASE 0x20000976 0xb8006
2000096a lui a5, 0x20201
2000096e c.addi sp, -0x10
20000970 lw a5, 0x758(a5)
20000974 c.swsp s1, 4(sp)
20000976 lui s1, 0xb8006
2000097a c.swsp s0, 8(sp)
2000097c c.swsp ra, 0xc(sp)
2000097e c.mv s0, a0
20000980 addi a0, s1, 0x404
20000984 c.jalr a5
20000986 andi a1, a0, -0x200
2000098a andi s0, s0, 0x1ff
2000098e lui a5, 0x20201
20000992 c.or a1, s0
20000994 c.lwsp s0, 8(sp)
20000996 c.lwsp ra, 0xc(sp)
20000998 lw a5, 0x74c(a5)
2000099c addi a0, s1, 0x404
200009a0 c.lwsp s1, 4(sp)
200009a2 c.addi sp, 0x10
200009a4 c.jr a5
200009a6 c.addi16sp sp, -0x50
200009a8 c.swsp s2, 0x40(sp)
200009aa c.swsp s3, 0x3c(sp)
200009ac lui s2, 0x20205
200009b0 c.swsp ra, 0x4c(sp)
200009b2 c.swsp s0, 0x48(sp)
200009b4 c.swsp s1, 0x44(sp)
200009b6 c.swsp s4, 0x38(sp)
200009b8 c.swsp s5, 0x34(sp)
200009ba c.swsp s6, 0x30(sp)
200009bc c.swsp s7, 0x2c(sp)
200009be c.swsp s8, 0x28(sp)
200009c0 c.swsp s9, 0x24(sp)
200009c2 c.swsp s10, 0x20(sp)
200009c4 c.swsp s11, 0x1c(sp)
200009c6 c.jal -0xd4
200009c8 addi a5, s2, -0x1b0
200009cc lbu a6, 9(a5)
200009d0 lw a7, 4(a5)
200009d4 c.mv s3, a0
200009d6 c.li a1, 0
200009d8 c.lw a0, 0(a5)
200009da addi s2, s2, -0x1b0
200009de c.li a5, 0
200009e0 andi a4, a1, 0xff
200009e4 bltu a4, a6, 0x16a
200009e8 lui s5, 0x20201
200009ec lw a6, 0x6b8(s5)
200009f0 c.li a4, 1
200009f2 addi a3, zero, 0xf7
200009f6 c.li a2, 5
200009f8 c.li a0, 2
200009fa c.li a1, 0
200009fc c.jalr a6
200009fe lui a5, 0x20203
20000a02 lw a5, 0x5c0(a5)
20000a06 lbu a4, 0xb(s2)
20000a0a c.swsp a5, 4(sp)

BASE 0x20000c94 0xb8007
20000c88 lui a5, 0x20201
20000c8c lw a5, 0x73c(a5)
20000c90 ori a1, a0, 2
20000c94 lui s0, 0xb8007
20000c98 addi a0, zero, 0x1e0
20000c9c c.jalr a5
20000c9e lui s1, 0x20201
20000ca2 addi s0, s0, -0x6f8
20000ca6 lw a5, 0x75c(s1)
20000caa c.mv a0, s0
20000cac c.jalr a5
20000cae c.andi a0, 1
20000cb0 c.beqz a0, -0xa
20000cb2 c.lwsp s0, 8(sp)
20000cb4 c.lwsp ra, 0xc(sp)
20000cb6 c.lwsp s1, 4(sp)
20000cb8 c.addi sp, 0x10
20000cba j 0x1b764
20000cbe lui a5, 0x20201
20000cc2 lw a5, 0x6b8(a5)
20000cc6 c.addi sp, -0x10
20000cc8 c.swsp ra, 0xc(sp)
20000cca c.swsp s0, 8(sp)
20000ccc c.li a4, 0
20000cce addi a3, zero, 0xfc
20000cd2 c.li a2, 5
20000cd4 c.li a1, 0
20000cd6 c.li a0, 2
20000cd8 c.jalr a5
20000cda lui a5, 0x20201
20000cde lw s0, 0x73c(a5)
20000ce2 lui a5, 0x20201
20000ce6 lw a5, 0x748(a5)
20000cea addi a0, zero, 0x1e0
20000cee c.jalr a5
20000cf0 lui a1, 0xc4000
20000cf4 c.addi a1, -1
20000cf6 c.and a0, a1
20000cf8 lui a1, 0x4000
20000cfc c.or a1, a0
20000cfe addi a0, zero, 0x1e0
20000d02 c.jalr s0
20000d04 lui a5, 0x20202
20000d08 lw a5, 0x2e8(a5)
20000d0c c.jalr a5
20000d0e lui a5, 0x20201
20000d12 lw a5, 0x738(a5)
20000d16 c.lui a0, 8
20000d18 c.li a1, 8
20000d1a addi a0, a0, -0x70e
20000d1e c.jalr a5
20000d20 lui a5, 0x20202
20000d24 c.lwsp s0, 8(sp)
20000d26 c.lwsp ra, 0xc(sp)
20000d28 .byte 0x83, 0xa7

BASE 0x2000137a 0xb8003
2000136e c.addi4spn s0, sp, 0x2b0
20001370 c.jalr s0
20001372 lui s1, 0x20201
20001376 lw a5, 0x758(s1)
2000137a lui s0, 0xb8003
2000137e addi a0, s0, 0x60
20001382 c.jalr a5
20001384 lui a5, 0x10000
20001388 c.and a0, a5
2000138a c.beqz a0, 0x3e
2000138c lui a5, 0x20201
20001390 lw a5, 0x74c(a5)
20001394 lui a1, 0x10000
20001398 addi a0, s0, 0x60
2000139c c.jalr a5
2000139e lw a5, 0x758(s1)
200013a2 addi a0, s0, 0x3c
200013a6 c.jalr a5
200013a8 lui a4, 0x20201
200013ac c.lwsp s0, 8(sp)
200013ae lw a6, 0x6b8(a4)
200013b2 c.lwsp ra, 0xc(sp)
200013b4 c.lwsp s1, 4(sp)
200013b6 c.mv a5, a0
200013b8 c.li a4, 1
200013ba addi a3, zero, 0xe1
200013be c.li a2, 2
200013c0 c.li a0, 2
200013c2 c.li a1, 0
200013c4 c.addi sp, 0x10
200013c6 c.jr a6
200013c8 c.lwsp ra, 0xc(sp)
200013ca c.lwsp s0, 8(sp)
200013cc c.lwsp s1, 4(sp)
200013ce c.addi sp, 0x10
200013d0 c.jr ra
200013d2 c.addi sp, -0x20
200013d4 c.swsp s0, 0x18(sp)
200013d6 lui s0, 0x20201
200013da lw a5, 0x738(s0)
200013de c.swsp s1, 0x14(sp)
200013e0 c.lui s1, 8
200013e2 c.swsp ra, 0x1c(sp)
200013e4 c.li a1, 0x17
200013e6 addi a0, s1, -0x70e
200013ea c.swsp s2, 0x10(sp)
200013ec c.swsp s3, 0xc(sp)
200013ee c.jalr a5
200013f0 lui a5, 0x20202
200013f4 lw a5, 0x18(a5)
200013f8 c.jalr a5
200013fa lui a5, 0x20202
200013fe lw a5, -0x4cc(a5)
20001402 c.jalr a5
20001404 lw a5, 0x738(s0)
20001408 c.li a1, 0x18
2000140a addi a0, s1, -0x70e
2000140e c.jalr a5

BASE 0x20002636 0xb8006
2000262a c.jalr a5
2000262c lui a5, 0x20202
20002630 lw a5, 0x1cc(a5)
20002634 c.sw a0, 0x38(s1)
20002636 lui s4, 0xb8006
2000263a c.jalr a5
2000263c lui a5, 0x20202
20002640 lw a5, 0x1c8(a5)
20002644 c.li s3, 3
20002646 c.jalr a5
20002648 lui a5, 0x20202
2000264c lw a5, 0x1b8(a5)
20002650 c.jalr a5
20002652 addi a0, zero, 0x404
20002656 beq s0, s5, 0x10
2000265a addi a0, zero, 0x408
2000265e beq s0, s6, 8
20002662 addi a0, zero, 0x400
20002666 c.lw a5, 0xc(s1)
20002668 slli a3, s0, 1
2000266c lw a4, 0x74c(s2)
20002670 c.add a5, a3
20002672 lhu a1, 4(a5)
20002676 c.add a0, s4
20002678 c.addi s0, 1
2000267a c.addi a1, -1
2000267c andi a1, a1, 0x1ff
20002680 c.jalr a4
20002682 bne s0, s3, -0x30
20002686 c.j -0x332
20002688 lui a5, 0x20201
2000268c c.addi sp, -0x10
2000268e lw a5, 0x748(a5)
20002692 c.swsp s0, 8(sp)
20002694 c.mv s0, a0
20002696 c.lui a0, 9
20002698 c.swsp ra, 0xc(sp)
2000269a addi a0, a0, -0x6ec
2000269e c.jalr a5
200026a0 c.bnez s0, 0x22
200026a2 lui a1, 0x20
200026a6 c.or a1, a0
200026a8 lui a5, 0x20201
200026ac lw a5, 0x73c(a5)
200026b0 c.lui a0, 9
200026b2 addi a0, a0, -0x6ec
200026b6 c.jalr a5
200026b8 c.lwsp ra, 0xc(sp)
200026ba c.lwsp s0, 8(sp)
200026bc c.li a0, 1
200026be c.addi sp, 0x10
200026c0 c.jr ra
200026c2 c.lui a1, 0xfffe0
200026c4 c.addi a1, -1
200026c6 c.and a1, a0
200026c8 c.j -0x20
200026ca .byte 0xb7, 0x17

BASE 0x200026d8 0xb800e
200026cc c.fld fs0, 0x40(s0)
200026ce c.addi sp, -0x20
200026d0 lw a5, 0x758(a5)
200026d4 c.swsp s2, 0x10(sp)
200026d6 c.mv s2, a0
200026d8 lui a0, 0xb800e
200026dc c.swsp s0, 0x18(sp)
200026de c.swsp s1, 0x14(sp)
200026e0 c.swsp ra, 0x1c(sp)
200026e2 c.swsp s3, 0xc(sp)
200026e4 addi a0, a0, 0x400
200026e8 c.mv s1, a1
200026ea c.jalr a5
200026ec c.li a5, 1
200026ee c.mv s0, a0
200026f0 beq s1, a5, 0x62
200026f4 c.li a5, 2
200026f6 beq s1, a5, 0x2c
200026fa c.li a0, 0
200026fc c.bnez s1, 0x48
200026fe lui a5, 0x20201
20002702 lw s3, 0x73c(a5)
20002706 lui a5, 0x20201
2000270a lw a5, 0x748(a5)
2000270e c.lui s1, 8
20002710 addi a0, s1, 0x400
20002714 c.jalr a5
20002716 slli a1, a0, 1
2000271a c.srli a1, 1
2000271c addi a0, s1, 0x400
20002720 c.jalr s3
20002722 bnez s2, 0x50
20002726 c.lui a1, 0xffffd
20002728 addi a1, a1, 0x7ff
2000272c c.and s0, a1
2000272e lui a1, 0x100
20002732 lui a5, 0x20201
20002736 lw a5, 0x74c(a5)
2000273a lui a0, 0xb8006
2000273e c.or a1, s0
20002740 c.jalr a5
20002742 c.li a0, 1
20002744 c.lwsp ra, 0x1c(sp)
20002746 c.lwsp s0, 0x18(sp)
20002748 c.lwsp s1, 0x14(sp)
2000274a c.lwsp s2, 0x10(sp)
2000274c c.lwsp s3, 0xc(sp)
2000274e c.addi16sp sp, 0x20
20002750 c.jr ra
20002752 lui a5, 0x20201
20002756 lw s3, 0x73c(a5)
2000275a lui a5, 0x20201
2000275e lw a5, 0x748(a5)
20002762 c.lui s1, 8
20002764 addi a0, s1, 0x400
20002768 c.jalr a5
2000276a lui a1, 0x80000

BASE 0x2000273a 0xb8006
2000272e lui a1, 0x100
20002732 lui a5, 0x20201
20002736 lw a5, 0x74c(a5)
2000273a lui a0, 0xb8006
2000273e c.or a1, s0
20002740 c.jalr a5
20002742 c.li a0, 1
20002744 c.lwsp ra, 0x1c(sp)
20002746 c.lwsp s0, 0x18(sp)
20002748 c.lwsp s1, 0x14(sp)
2000274a c.lwsp s2, 0x10(sp)
2000274c c.lwsp s3, 0xc(sp)
2000274e c.addi16sp sp, 0x20
20002750 c.jr ra
20002752 lui a5, 0x20201
20002756 lw s3, 0x73c(a5)
2000275a lui a5, 0x20201
2000275e lw a5, 0x748(a5)
20002762 c.lui s1, 8
20002764 addi a0, s1, 0x400
20002768 c.jalr a5
2000276a lui a1, 0x80000
2000276e c.or a1, a0
20002770 c.j -0x54
20002772 lui a1, 0xfff00
20002776 c.addi a1, -1
20002778 c.and s0, a1
2000277a c.lui a1, 3
2000277c addi a1, a1, -0x800
20002780 c.j -0x4e
20002782 c.addi sp, -0x20
20002784 c.swsp s1, 0x14(sp)
20002786 c.swsp s2, 0x10(sp)
20002788 c.lui s1, 0x10
2000278a lui s2, 0xb8006
2000278e c.swsp s0, 0x18(sp)
20002790 c.swsp s3, 0xc(sp)
20002792 c.swsp s4, 8(sp)
20002794 c.swsp s5, 4(sp)
20002796 c.swsp ra, 0x1c(sp)
20002798 addi s0, zero, 0x7d0
2000279c lui s4, 0x20201
200027a0 addi s2, s2, 0x100
200027a4 c.addi s1, 3
200027a6 c.li s5, 3
200027a8 lui s3, 0x20202
200027ac lw a5, 0x758(s4)
200027b0 c.mv a0, s2
200027b2 c.jalr a5
200027b4 c.and a0, s1
200027b6 beq a0, s5, 0x24
200027ba lw a5, 0x2d0(s3)
200027be c.li a0, 1
200027c0 c.addi s0, -1
200027c2 c.jalr a5
200027c4 c.bnez s0, -0x18
200027c6 c.li a0, 0
200027c8 c.lwsp ra, 0x1c(sp)
200027ca c.lwsp s0, 0x18(sp)
200027cc c.lwsp s1, 0x14(sp)
200027ce c.lwsp s2, 0x10(sp)

BASE 0x2000278a 0xb8006
2000277e c.srli s0, 1
20002780 c.j -0x4e
20002782 c.addi sp, -0x20
20002784 c.swsp s1, 0x14(sp)
20002786 c.swsp s2, 0x10(sp)
20002788 c.lui s1, 0x10
2000278a lui s2, 0xb8006
2000278e c.swsp s0, 0x18(sp)
20002790 c.swsp s3, 0xc(sp)
20002792 c.swsp s4, 8(sp)
20002794 c.swsp s5, 4(sp)
20002796 c.swsp ra, 0x1c(sp)
20002798 addi s0, zero, 0x7d0
2000279c lui s4, 0x20201
200027a0 addi s2, s2, 0x100
200027a4 c.addi s1, 3
200027a6 c.li s5, 3
200027a8 lui s3, 0x20202
200027ac lw a5, 0x758(s4)
200027b0 c.mv a0, s2
200027b2 c.jalr a5
200027b4 c.and a0, s1
200027b6 beq a0, s5, 0x24
200027ba lw a5, 0x2d0(s3)
200027be c.li a0, 1
200027c0 c.addi s0, -1
200027c2 c.jalr a5
200027c4 c.bnez s0, -0x18
200027c6 c.li a0, 0
200027c8 c.lwsp ra, 0x1c(sp)
200027ca c.lwsp s0, 0x18(sp)
200027cc c.lwsp s1, 0x14(sp)
200027ce c.lwsp s2, 0x10(sp)
200027d0 c.lwsp s3, 0xc(sp)
200027d2 c.lwsp s4, 8(sp)
200027d4 c.lwsp s5, 4(sp)
200027d6 c.addi16sp sp, 0x20
200027d8 c.jr ra
200027da c.li a0, 1
200027dc c.j -0x14
200027de lui a5, 0x20201
200027e2 lw a5, 0x668(a5)
200027e6 c.addi sp, -0x10
200027e8 c.swsp s0, 8(sp)
200027ea c.swsp ra, 0xc(sp)
200027ec c.mv s0, a0
200027ee c.li a0, 5
200027f0 c.jalr a5
200027f2 c.li a5, 1
200027f4 c.bnez a0, 0x26
200027f6 bltu a5, s0, 0x34
200027fa lui a5, 0x20201
200027fe lw a5, 0x74c(a5)
20002802 c.li a1, 3
20002804 lui a0, 0xb8006
20002808 addi a0, a0, 0x43c
2000280c c.jalr a5
2000280e c.beqz s0, 0x22
20002810 c.lwsp ra, 0xc(sp)
20002812 c.lwsp s0, 8(sp)
20002814 c.li a0, 1
20002816 c.addi sp, 0x10
20002818 c.jr ra
2000281a bltu a5, s0, 0x10
2000281e .byte 0xb7, 0x17

BASE 0x20002804 0xb8006
200027f8 .byte 0x87, 0x02
200027fa lui a5, 0x20201
200027fe lw a5, 0x74c(a5)
20002802 c.li a1, 3
20002804 lui a0, 0xb8006
20002808 addi a0, a0, 0x43c
2000280c c.jalr a5
2000280e c.beqz s0, 0x22
20002810 c.lwsp ra, 0xc(sp)
20002812 c.lwsp s0, 8(sp)
20002814 c.li a0, 1
20002816 c.addi sp, 0x10
20002818 c.jr ra
2000281a bltu a5, s0, 0x10
2000281e lui a5, 0x20201
20002822 lw a5, 0x74c(a5)
20002826 c.li a1, 7
20002828 c.j -0x24
2000282a c.li a5, 2
2000282c bne s0, a5, -0x1c
20002830 lui a5, 0x20201
20002834 lw a5, 0x74c(a5)
20002838 lui a0, 0xb8006
2000283c c.li a1, 7
2000283e addi a0, a0, 0x440
20002842 c.jalr a5
20002844 c.j -0x34
20002846 lui a5, 0x20201
2000284a c.addi sp, -0x10
2000284c lw a5, 0x744(a5)
20002850 c.swsp s0, 8(sp)
20002852 c.mv s0, a0
20002854 c.lui a0, 8
20002856 c.swsp ra, 0xc(sp)
20002858 addi a0, a0, 0x400
2000285c c.jalr a5
2000285e andi a1, a0, -0x201
20002862 c.beqz s0, 0xa
20002864 ori a1, a0, 0x200
20002868 c.slli a1, 0x10
2000286a c.srli a1, 0x10
2000286c lui a5, 0x20201
20002870 lw a5, 0x738(a5)
20002874 c.slli a1, 0x10
20002876 c.lui a0, 8
20002878 addi a0, a0, 0x400
2000287c c.srli a1, 0x10
2000287e c.jalr a5
20002880 c.lwsp ra, 0xc(sp)
20002882 c.lwsp s0, 8(sp)
20002884 c.li a0, 1
20002886 c.addi sp, 0x10
20002888 c.jr ra
2000288a lui a5, 0x20202
2000288e c.lui a2, 0x10
20002890 addi a5, a5, 0x3e4
20002894 c.addi a2, 1
20002896 lui a4, 0xadadb

BASE 0x20002838 0xb8006
2000282c bne s0, a5, -0x1c
20002830 lui a5, 0x20201
20002834 lw a5, 0x74c(a5)
20002838 lui a0, 0xb8006
2000283c c.li a1, 7
2000283e addi a0, a0, 0x440
20002842 c.jalr a5
20002844 c.j -0x34
20002846 lui a5, 0x20201
2000284a c.addi sp, -0x10
2000284c lw a5, 0x744(a5)
20002850 c.swsp s0, 8(sp)
20002852 c.mv s0, a0
20002854 c.lui a0, 8
20002856 c.swsp ra, 0xc(sp)
20002858 addi a0, a0, 0x400
2000285c c.jalr a5
2000285e andi a1, a0, -0x201
20002862 c.beqz s0, 0xa
20002864 ori a1, a0, 0x200
20002868 c.slli a1, 0x10
2000286a c.srli a1, 0x10
2000286c lui a5, 0x20201
20002870 lw a5, 0x738(a5)
20002874 c.slli a1, 0x10
20002876 c.lui a0, 8
20002878 addi a0, a0, 0x400
2000287c c.srli a1, 0x10
2000287e c.jalr a5
20002880 c.lwsp ra, 0xc(sp)
20002882 c.lwsp s0, 8(sp)
20002884 c.li a0, 1
20002886 c.addi sp, 0x10
20002888 c.jr ra
2000288a lui a5, 0x20202
2000288e c.lui a2, 0x10
20002890 addi a5, a5, 0x3e4
20002894 c.addi a2, 1
20002896 lui a4, 0xadadb
2000289a lui a3, 0x20203
2000289e addi a4, a4, -0x253
200028a2 addi a3, a3, 0x5b4
200028a6 c.sw a2, 0x54(a5)
200028a8 c.li a2, 1
200028aa c.sw a4, 0x3c(a5)
200028ac c.sw a4, 0x48(a5)
200028ae sw zero, 0(a3)
200028b2 c.sw a4, 0x40(a5)
200028b4 c.sw a4, 0x4c(a5)
200028b6 sw zero, 4(a3)
200028ba sh a2, 0x58(a5)
200028be c.sw a4, 0x44(a5)
200028c0 c.sw a4, 0x50(a5)
200028c2 sw zero, 8(a3)
200028c6 c.jr ra
200028c8 lui a5, 0x20203
200028cc .byte 0x83, 0xa7

BASE 0x20002a12 0xb8006
20002a06 c.swsp s0, 0x18(sp)
20002a08 c.swsp s2, 0x10(sp)
20002a0a c.swsp s3, 0xc(sp)
20002a0c c.swsp s4, 8(sp)
20002a0e c.swsp s5, 4(sp)
20002a10 c.swsp s6, 0(sp)
20002a12 lui a0, 0xb8006
20002a16 c.jalr a5
20002a18 c.lui a1, 0xffffd
20002a1a lui a5, 0x20201
20002a1e lw a5, 0x74c(a5)
20002a22 addi a1, a1, 0x7ff
20002a26 c.and a1, a0
20002a28 ori a1, a1, 0x10
20002a2c lui a0, 0xb8006
20002a30 c.jalr a5
20002a32 lui a0, 0xb8006
20002a36 addi s3, a0, 0x100
20002a3a c.lui s2, 0x10
20002a3c lui s4, 0x20201
20002a40 addi s0, a0, 0x504
20002a44 c.lui s5, 1
20002a46 lui s6, 0x20202
20002a4a lw a5, 0x758(s1)
20002a4e c.mv a0, s3
20002a50 c.jalr a5
20002a52 and a0, a0, s2
20002a56 c.bnez a0, 0x22
20002a58 lui a5, 0x20202
20002a5c lw a5, 0x1a8(a5)
20002a60 c.jalr a5
20002a62 c.li a0, 1
20002a64 c.lwsp ra, 0x1c(sp)
20002a66 c.lwsp s0, 0x18(sp)
20002a68 c.lwsp s1, 0x14(sp)
20002a6a c.lwsp s2, 0x10(sp)
20002a6c c.lwsp s3, 0xc(sp)
20002a6e c.lwsp s4, 8(sp)
20002a70 c.lwsp s5, 4(sp)
20002a72 c.lwsp s6, 0(sp)
20002a74 c.addi16sp sp, 0x20
20002a76 c.jr ra
20002a78 lw a5, 0x75c(s4)
20002a7c c.mv a0, s0
20002a7e c.jalr a5
20002a80 and a0, a0, s5
20002a84 c.slli a0, 0x10
20002a86 c.srli a0, 0x10
20002a88 c.bnez a0, 0xc
20002a8a lw a5, 0x2d0(s6)
20002a8e c.li a0, 1
20002a90 c.jalr a5
20002a92 c.j -0x48
20002a94 c.li a0, 0
20002a96 c.j -0x32
20002a98 lui a5, 0x20202
20002a9c lw a5, 0x1a4(a5)
20002aa0 c.addi sp, -0x20
20002aa2 c.swsp ra, 0x1c(sp)
20002aa4 c.swsp s0, 0x18(sp)
20002aa6 c.swsp s1, 0x14(sp)

BASE 0x20002a2c 0xb8006
20002a20 .byte 0xc7, 0x74
20002a22 addi a1, a1, 0x7ff
20002a26 c.and a1, a0
20002a28 ori a1, a1, 0x10
20002a2c lui a0, 0xb8006
20002a30 c.jalr a5
20002a32 lui a0, 0xb8006
20002a36 addi s3, a0, 0x100
20002a3a c.lui s2, 0x10
20002a3c lui s4, 0x20201
20002a40 addi s0, a0, 0x504
20002a44 c.lui s5, 1
20002a46 lui s6, 0x20202
20002a4a lw a5, 0x758(s1)
20002a4e c.mv a0, s3
20002a50 c.jalr a5
20002a52 and a0, a0, s2
20002a56 c.bnez a0, 0x22
20002a58 lui a5, 0x20202
20002a5c lw a5, 0x1a8(a5)
20002a60 c.jalr a5
20002a62 c.li a0, 1
20002a64 c.lwsp ra, 0x1c(sp)
20002a66 c.lwsp s0, 0x18(sp)
20002a68 c.lwsp s1, 0x14(sp)
20002a6a c.lwsp s2, 0x10(sp)
20002a6c c.lwsp s3, 0xc(sp)
20002a6e c.lwsp s4, 8(sp)
20002a70 c.lwsp s5, 4(sp)
20002a72 c.lwsp s6, 0(sp)
20002a74 c.addi16sp sp, 0x20
20002a76 c.jr ra
20002a78 lw a5, 0x75c(s4)
20002a7c c.mv a0, s0
20002a7e c.jalr a5
20002a80 and a0, a0, s5
20002a84 c.slli a0, 0x10
20002a86 c.srli a0, 0x10
20002a88 c.bnez a0, 0xc
20002a8a lw a5, 0x2d0(s6)
20002a8e c.li a0, 1
20002a90 c.jalr a5
20002a92 c.j -0x48
20002a94 c.li a0, 0
20002a96 c.j -0x32
20002a98 lui a5, 0x20202
20002a9c lw a5, 0x1a4(a5)
20002aa0 c.addi sp, -0x20
20002aa2 c.swsp ra, 0x1c(sp)
20002aa4 c.swsp s0, 0x18(sp)
20002aa6 c.swsp s1, 0x14(sp)
20002aa8 c.swsp s2, 0x10(sp)
20002aaa c.swsp s3, 0xc(sp)
20002aac c.swsp s4, 8(sp)
20002aae c.li a1, 0
20002ab0 c.li a0, 0
20002ab2 c.jalr a5
20002ab4 c.li a5, 1
20002ab6 bne a0, a5, 0x30
20002aba lui s0, 0xb8006
20002abe addi s1, zero, 0x7d0

BASE 0x20002a32 0xb8006
20002a26 c.and a1, a0
20002a28 ori a1, a1, 0x10
20002a2c lui a0, 0xb8006
20002a30 c.jalr a5
20002a32 lui a0, 0xb8006
20002a36 addi s3, a0, 0x100
20002a3a c.lui s2, 0x10
20002a3c lui s4, 0x20201
20002a40 addi s0, a0, 0x504
20002a44 c.lui s5, 1
20002a46 lui s6, 0x20202
20002a4a lw a5, 0x758(s1)
20002a4e c.mv a0, s3
20002a50 c.jalr a5
20002a52 and a0, a0, s2
20002a56 c.bnez a0, 0x22
20002a58 lui a5, 0x20202
20002a5c lw a5, 0x1a8(a5)
20002a60 c.jalr a5
20002a62 c.li a0, 1
20002a64 c.lwsp ra, 0x1c(sp)
20002a66 c.lwsp s0, 0x18(sp)
20002a68 c.lwsp s1, 0x14(sp)
20002a6a c.lwsp s2, 0x10(sp)
20002a6c c.lwsp s3, 0xc(sp)
20002a6e c.lwsp s4, 8(sp)
20002a70 c.lwsp s5, 4(sp)
20002a72 c.lwsp s6, 0(sp)
20002a74 c.addi16sp sp, 0x20
20002a76 c.jr ra
20002a78 lw a5, 0x75c(s4)
20002a7c c.mv a0, s0
20002a7e c.jalr a5
20002a80 and a0, a0, s5
20002a84 c.slli a0, 0x10
20002a86 c.srli a0, 0x10
20002a88 c.bnez a0, 0xc
20002a8a lw a5, 0x2d0(s6)
20002a8e c.li a0, 1
20002a90 c.jalr a5
20002a92 c.j -0x48
20002a94 c.li a0, 0
20002a96 c.j -0x32
20002a98 lui a5, 0x20202
20002a9c lw a5, 0x1a4(a5)
20002aa0 c.addi sp, -0x20
20002aa2 c.swsp ra, 0x1c(sp)
20002aa4 c.swsp s0, 0x18(sp)
20002aa6 c.swsp s1, 0x14(sp)
20002aa8 c.swsp s2, 0x10(sp)
20002aaa c.swsp s3, 0xc(sp)
20002aac c.swsp s4, 8(sp)
20002aae c.li a1, 0
20002ab0 c.li a0, 0
20002ab2 c.jalr a5
20002ab4 c.li a5, 1
20002ab6 bne a0, a5, 0x30
20002aba lui s0, 0xb8006
20002abe addi s1, zero, 0x7d0
20002ac2 lui s3, 0x20201
20002ac6 .byte 0x13, 0x0a

BASE 0x20002aba 0xb8006
20002aae c.li a1, 0
20002ab0 c.li a0, 0
20002ab2 c.jalr a5
20002ab4 c.li a5, 1
20002ab6 bne a0, a5, 0x30
20002aba lui s0, 0xb8006
20002abe addi s1, zero, 0x7d0
20002ac2 lui s3, 0x20201
20002ac6 addi s4, s0, 0x104
20002aca lui s2, 0x20202
20002ace lw a5, 0x758(s3)
20002ad2 c.mv a0, s4
20002ad4 c.jalr a5
20002ad6 c.andi a0, 7
20002ad8 c.beqz a0, 0x20
20002ada lw a5, 0x2d0(s2)
20002ade c.li a0, 1
20002ae0 c.addi s1, -1
20002ae2 c.jalr a5
20002ae4 c.bnez s1, -0x16
20002ae6 c.li a0, 0
20002ae8 c.lwsp ra, 0x1c(sp)
20002aea c.lwsp s0, 0x18(sp)
20002aec c.lwsp s1, 0x14(sp)
20002aee c.lwsp s2, 0x10(sp)
20002af0 c.lwsp s3, 0xc(sp)
20002af2 c.lwsp s4, 8(sp)
20002af4 c.addi16sp sp, 0x20
20002af6 c.jr ra
20002af8 lui s1, 0x20201
20002afc lw a5, 0x750(s1)
20002b00 c.li a1, 0
20002b02 addi a0, s0, 0x300
20002b06 c.jalr a5
20002b08 lw a5, 0x750(s1)
20002b0c c.li a1, 0
20002b0e addi a0, s0, 0x302
20002b12 c.jalr a5
20002b14 lw a5, 0x750(s1)
20002b18 c.li a1, 0
20002b1a addi a0, s0, 0x304
20002b1e c.jalr a5
20002b20 lui a5, 0x20202
20002b24 lw a5, 0x198(a5)
20002b28 c.li a1, 0
20002b2a c.li a0, 2
20002b2c c.jalr a5
20002b2e c.addi a0, -1
20002b30 seqz a0, a0
20002b34 c.j -0x4c
20002b36 c.addi sp, -0x20
20002b38 c.swsp s0, 0x18(sp)
20002b3a c.swsp s1, 0x14(sp)
20002b3c lui s0, 0x20201
20002b40 lui s1, 0x20201
20002b44 c.swsp s3, 0xc(sp)
20002b46 lw s3, 0x73c(s1)
20002b4a lw a5, 0x748(s0)
20002b4e c.swsp s2, 0x10(sp)

BASE 0x20002b6c 0xb8006
20002b60 .byte 0x09, 0x40
20002b62 c.jalr s3
20002b64 lui a5, 0x20201
20002b68 lw a5, 0x758(a5)
20002b6c lui a0, 0xb8006
20002b70 c.jalr a5
20002b72 lui a5, 0x20201
20002b76 lui a1, 0xfff00
20002b7a lw a4, 0x74c(a5)
20002b7e c.addi a1, -1
20002b80 c.lui a5, 3
20002b82 addi a5, a5, -0x800
20002b86 c.and a1, a0
20002b88 c.or a1, a5
20002b8a lui a0, 0xb8006
20002b8e c.jalr a4
20002b90 lw a5, 0x748(s0)
20002b94 c.lui s0, 9
20002b96 addi a0, s0, -0x6ec
20002b9a c.jalr a5
20002b9c c.lui a5, 0xfffe0
20002b9e c.addi a5, -1
20002ba0 and a1, a0, a5
20002ba4 addi a0, s0, -0x6ec
20002ba8 c.lwsp s0, 0x18(sp)
20002baa lw a4, 0x73c(s1)
20002bae c.lwsp ra, 0x1c(sp)
20002bb0 c.lwsp s1, 0x14(sp)
20002bb2 c.lwsp s2, 0x10(sp)
20002bb4 c.lwsp s3, 0xc(sp)
20002bb6 c.addi16sp sp, 0x20
20002bb8 c.jr a4
20002bba c.addi16sp sp, -0x60
20002bbc c.swsp s4, 0x48(sp)
20002bbe lui s4, 0x20201
20002bc2 lw a5, 0x668(s4)
20002bc6 c.swsp ra, 0x5c(sp)
20002bc8 c.swsp s0, 0x58(sp)
20002bca c.swsp s1, 0x54(sp)
20002bcc c.swsp s5, 0x44(sp)
20002bce c.swsp s6, 0x40(sp)
20002bd0 c.swsp s7, 0x3c(sp)
20002bd2 c.swsp s8, 0x38(sp)
20002bd4 c.swsp s9, 0x34(sp)
20002bd6 c.swsp s10, 0x30(sp)
20002bd8 c.swsp s11, 0x2c(sp)
20002bda c.swsp s2, 0x50(sp)
20002bdc c.swsp s3, 0x4c(sp)
20002bde c.swsp zero, 0x1c(sp)
20002be0 c.li a0, 5
20002be2 c.jalr a5
20002be4 lui a5, 0x20201
20002be8 lw a5, 0x758(a5)
20002bec lui s5, 0xb8007
20002bf0 seqz s1, a0
20002bf4 addi a0, s5, -0x6f8
20002bf8 c.jalr a5
20002bfa andi a5, a0, 0x38
20002bfe c.swsp a5, 0xc(sp)
20002c00 .byte 0xb7, 0x17

BASE 0x20002b8a 0xb8006
20002b7e c.addi a1, -1
20002b80 c.lui a5, 3
20002b82 addi a5, a5, -0x800
20002b86 c.and a1, a0
20002b88 c.or a1, a5
20002b8a lui a0, 0xb8006
20002b8e c.jalr a4
20002b90 lw a5, 0x748(s0)
20002b94 c.lui s0, 9
20002b96 addi a0, s0, -0x6ec
20002b9a c.jalr a5
20002b9c c.lui a5, 0xfffe0
20002b9e c.addi a5, -1
20002ba0 and a1, a0, a5
20002ba4 addi a0, s0, -0x6ec
20002ba8 c.lwsp s0, 0x18(sp)
20002baa lw a4, 0x73c(s1)
20002bae c.lwsp ra, 0x1c(sp)
20002bb0 c.lwsp s1, 0x14(sp)
20002bb2 c.lwsp s2, 0x10(sp)
20002bb4 c.lwsp s3, 0xc(sp)
20002bb6 c.addi16sp sp, 0x20
20002bb8 c.jr a4
20002bba c.addi16sp sp, -0x60
20002bbc c.swsp s4, 0x48(sp)
20002bbe lui s4, 0x20201
20002bc2 lw a5, 0x668(s4)
20002bc6 c.swsp ra, 0x5c(sp)
20002bc8 c.swsp s0, 0x58(sp)
20002bca c.swsp s1, 0x54(sp)
20002bcc c.swsp s5, 0x44(sp)
20002bce c.swsp s6, 0x40(sp)
20002bd0 c.swsp s7, 0x3c(sp)
20002bd2 c.swsp s8, 0x38(sp)
20002bd4 c.swsp s9, 0x34(sp)
20002bd6 c.swsp s10, 0x30(sp)
20002bd8 c.swsp s11, 0x2c(sp)
20002bda c.swsp s2, 0x50(sp)
20002bdc c.swsp s3, 0x4c(sp)
20002bde c.swsp zero, 0x1c(sp)
20002be0 c.li a0, 5
20002be2 c.jalr a5
20002be4 lui a5, 0x20201
20002be8 lw a5, 0x758(a5)
20002bec lui s5, 0xb8007
20002bf0 seqz s1, a0
20002bf4 addi a0, s5, -0x6f8
20002bf8 c.jalr a5
20002bfa andi a5, a0, 0x38
20002bfe c.swsp a5, 0xc(sp)
20002c00 lui a5, 0x20201
20002c04 lw a5, 0x74c(a5)
20002c08 c.mv a1, a0
20002c0a c.mv s0, a0
20002c0c addi a0, s5, -0x6f8
20002c10 lui s5, 0x20203
20002c14 c.addi s1, 2
20002c16 c.jalr a5
20002c18 c.li s7, 0
20002c1a c.li s6, 1
20002c1c lui s8, 0x20202

BASE 0x20002bec 0xb8007
20002be0 c.li a0, 5
20002be2 c.jalr a5
20002be4 lui a5, 0x20201
20002be8 lw a5, 0x758(a5)
20002bec lui s5, 0xb8007
20002bf0 seqz s1, a0
20002bf4 addi a0, s5, -0x6f8
20002bf8 c.jalr a5
20002bfa andi a5, a0, 0x38
20002bfe c.swsp a5, 0xc(sp)
20002c00 lui a5, 0x20201
20002c04 lw a5, 0x74c(a5)
20002c08 c.mv a1, a0
20002c0a c.mv s0, a0
20002c0c addi a0, s5, -0x6f8
20002c10 lui s5, 0x20203
20002c14 c.addi s1, 2
20002c16 c.jalr a5
20002c18 c.li s7, 0
20002c1a c.li s6, 1
20002c1c lui s8, 0x20202
20002c20 lui s9, 0x20202
20002c24 lui s10, 0x20201
20002c28 addi s5, s5, 0x580
20002c2c lui s11, 0x20201
20002c30 lw a4, 0x668(s4)
20002c34 c.li a0, 5
20002c36 c.jalr a4
20002c38 c.bnez a0, 0x9e
20002c3a beqz s7, 0xa6
20002c3e beq s7, s6, 0xa8
20002c42 c.lwsp a5, 0xc(sp)
20002c44 and a4, s2, a5
20002c48 c.beqz a4, 0x36
20002c4a lw a4, 0x1f0(s8)
20002c4e c.mv a0, s7
20002c50 c.jalr a4
20002c52 bnez s7, 0x2c
20002c56 lw a4, -0x4b0(s9)
20002c5a c.jalr a4
20002c5c c.bnez a0, 0x22
20002c5e lw a4, 8(s5)
20002c62 lw a6, 0x18c(s10)
20002c66 c.li a3, 0
20002c68 c.lw a0, 8(a4)
20002c6a c.li a2, 1
20002c6c c.addi4spn a4, sp, 0x1c
20002c6e c.lw a0, 0x14(a0)
20002c70 c.mv a1, s3
20002c72 c.jalr a6
20002c74 c.lwsp a4, 0x1c(sp)
20002c76 c.beqz a4, 8
20002c78 lw a4, 0x214(s11)
20002c7c c.jalr a4
20002c7e c.addi s7, 1
20002c80 .byte 0xe3, 0x98

BASE 0x20003b9a 0xb8006
20003b8e c.li s4, 1
20003b90 c.li s5, 2
20003b92 lui s3, 0x20201
20003b96 addi s1, s1, 0x3e4
20003b9a lui s2, 0xb8006
20003b9e addi a0, zero, 0x404
20003ba2 beq s0, s4, 0x10
20003ba6 addi a0, zero, 0x408
20003baa beq s0, s5, 8
20003bae addi a0, zero, 0x400
20003bb2 c.lw a5, 0xc(s1)
20003bb4 slli a3, s0, 1
20003bb8 lw a4, 0x74c(s3)
20003bbc c.add a5, a3
20003bbe lhu a1, 4(a5)
20003bc2 c.add a0, s2
20003bc4 c.addi s0, 1
20003bc6 c.addi a1, -1
20003bc8 andi a1, a1, 0x1ff
20003bcc c.jalr a4
20003bce c.li a5, 3
20003bd0 bne s0, a5, -0x32
20003bd4 c.lwsp ra, 0x1c(sp)
20003bd6 c.lwsp s0, 0x18(sp)
20003bd8 c.lwsp s1, 0x14(sp)
20003bda c.lwsp s2, 0x10(sp)
20003bdc c.lwsp s3, 0xc(sp)
20003bde c.lwsp s4, 8(sp)
20003be0 c.lwsp s5, 4(sp)
20003be2 c.addi16sp sp, 0x20
20003be4 c.jr ra
20003be6 c.addi sp, -0x10
20003be8 c.swsp s1, 4(sp)
20003bea lui a5, 0x20201
20003bee lui s1, 0x20201
20003bf2 c.swsp s2, 0(sp)
20003bf4 lw s2, 0x74c(s1)
20003bf8 lw a5, 0x758(a5)
20003bfc c.swsp s0, 8(sp)
20003bfe lui s0, 0xb8003
20003c02 c.swsp ra, 0xc(sp)
20003c04 addi a0, s0, 0x78
20003c08 c.jalr a5
20003c0a ori a1, a0, 1
20003c0e addi a0, s0, 0x78
20003c12 c.jalr s2
20003c14 lw a5, 0x74c(s1)
20003c18 addi a0, s0, 0x74
20003c1c c.li a1, 1
20003c1e c.jalr a5
20003c20 lw a5, 0x74c(s1)
20003c24 lui a1, 0x80000
20003c28 addi a0, s0, 0x74
20003c2c c.addi a1, 1
20003c2e c.jalr a5

BASE 0x20003bfe 0xb8003
20003bf2 c.swsp s2, 0(sp)
20003bf4 lw s2, 0x74c(s1)
20003bf8 lw a5, 0x758(a5)
20003bfc c.swsp s0, 8(sp)
20003bfe lui s0, 0xb8003
20003c02 c.swsp ra, 0xc(sp)
20003c04 addi a0, s0, 0x78
20003c08 c.jalr a5
20003c0a ori a1, a0, 1
20003c0e addi a0, s0, 0x78
20003c12 c.jalr s2
20003c14 lw a5, 0x74c(s1)
20003c18 addi a0, s0, 0x74
20003c1c c.li a1, 1
20003c1e c.jalr a5
20003c20 lw a5, 0x74c(s1)
20003c24 lui a1, 0x80000
20003c28 addi a0, s0, 0x74
20003c2c c.addi a1, 1
20003c2e c.jalr a5
20003c30 addi a0, s0, 0x74
20003c34 c.lwsp s0, 8(sp)
20003c36 lw a5, 0x74c(s1)
20003c3a c.lwsp ra, 0xc(sp)
20003c3c c.lwsp s1, 4(sp)
20003c3e c.lwsp s2, 0(sp)
20003c40 lui a1, 0x80010
20003c44 c.addi a1, 1
20003c46 c.addi sp, 0x10
20003c48 c.jr a5
20003c4a c.li a5, 1
20003c4c c.mv a4, a0
20003c4e beq a0, a5, 0x2c
20003c52 c.li a5, 2
20003c54 beq a0, a5, 0x32
20003c58 c.li a0, 0
20003c5a c.bnez a4, 0x1e
20003c5c lui a3, 0x20202
20003c60 addi a3, a3, 0x3e4
20003c64 c.lw a5, 0x34(a3)
20003c66 c.lw a4, 4(a5)
20003c68 lbu a5, 0x6c(a3)
20003c6c c.li a0, 1
20003c6e c.sub a4, a5
20003c70 andi a5, a4, 0xff
20003c74 c.add a5, a1
20003c76 c.sw a2, 0(a5)
20003c78 c.jr ra
20003c7a lui a3, 0x20202
20003c7e addi a3, a3, 0x3e4
20003c82 c.lw a5, 0x5c(a3)
20003c84 c.j -0x1e
20003c86 lui a3, 0x20202
20003c8a addi a3, a3, 0x3e4
20003c8e c.lw a5, 0x60(a3)
20003c90 c.j -0x2a
20003c92 c.jr ra

BASE 0x200045e2 0xb8006
200045d6 mul a5, a0, a5
200045da addi s0, s0, 0x3e4
200045de lui s7, 0x20201
200045e2 lui s2, 0xb8006
200045e6 slli s3, a0, 2
200045ea addi s2, s2, 0x600
200045ee c.add s2, s3
200045f0 sb a0, 0x17(s0)
200045f4 c.mv s1, a0
200045f6 c.mv a0, s2
200045f8 c.add a5, s0
200045fa lbu a4, 0x19(a5)
200045fe c.addi a4, 1
20004600 sb a4, 0x19(a5)
20004604 lw a5, 0x758(s7)
20004608 c.jalr a5
2000460a lui a5, 0x20000
2000460e bgeu a0, a5, 0x44
20004612 lw a5, 0x758(s7)
20004616 c.mv a0, s2
20004618 c.jalr a5
2000461a lui a5, 0xa0000
2000461e or s6, a0, a5
20004622 c.j 0x3a
20004624 c.andi a5, -2
20004626 sb a5, 0x30(a4)
2000462a lbu a5, 0x13(a4)
2000462e c.addi a5, 1
20004630 sb a5, 0x13(a4)
20004634 c.lwsp ra, 0x5c(sp)
20004636 c.lwsp s0, 0x58(sp)
20004638 c.lwsp s1, 0x54(sp)
2000463a c.lwsp s2, 0x50(sp)
2000463c c.lwsp s3, 0x4c(sp)
2000463e c.lwsp s4, 0x48(sp)
20004640 c.lwsp s5, 0x44(sp)
20004642 c.lwsp s6, 0x40(sp)
20004644 c.lwsp s7, 0x3c(sp)
20004646 c.lwsp s8, 0x38(sp)
20004648 c.lwsp s9, 0x34(sp)
2000464a c.lwsp s10, 0x30(sp)
2000464c c.lwsp s11, 0x2c(sp)
2000464e c.addi16sp sp, 0x60
20004650 c.jr ra
20004652 lw a5, 0x758(s7)
20004656 c.mv a0, s2
20004658 c.jalr a5
2000465a c.mv s6, a0
2000465c lui s5, 0xb8006
20004660 lw a5, 0x758(s7)
20004664 addi s5, s5, 0x400
20004668 c.add s5, s3
2000466a c.mv a0, s5
2000466c c.jalr a5
2000466e lui s8, 0x20203
20004672 addi a5, s8, 0x5b4
20004676 c.add a5, s3

BASE 0x2000465c 0xb8006
20004650 c.jr ra
20004652 lw a5, 0x758(s7)
20004656 c.mv a0, s2
20004658 c.jalr a5
2000465a c.mv s6, a0
2000465c lui s5, 0xb8006
20004660 lw a5, 0x758(s7)
20004664 addi s5, s5, 0x400
20004668 c.add s5, s3
2000466a c.mv a0, s5
2000466c c.jalr a5
2000466e lui s8, 0x20203
20004672 addi a5, s8, 0x5b4
20004676 c.add a5, s3
20004678 c.lw a5, 0(a5)
2000467a c.srli a0, 0x10
2000467c andi a0, a0, 0x1ff
20004680 slli s2, a5, 3
20004684 c.add s2, s6
20004686 addi s8, s8, 0x5b4
2000468a beq a5, a0, -0x56
2000468e andi a3, a5, 0xff
20004692 andi s4, a0, 0xff
20004696 bgeu a5, a0, 0x82
2000469a sub s4, s4, a3
2000469e c.li s9, 5
200046a0 mul s9, s1, s9
200046a4 slli s11, s1, 1
200046a8 add a5, s0, s11
200046ac andi s4, s4, 0xff
200046b0 c.li s10, 0
200046b2 c.swsp a5, 8(sp)
200046b4 c.add s9, s0
200046b6 beq s10, s4, 0x56
200046ba lui a5, 0x20202
200046be lw a5, 0x118(a5)
200046c2 c.mv a0, s1
200046c4 c.jalr a5
200046c6 c.bnez a0, 0x64
200046c8 lui a5, 0x20201
200046cc lw a5, 0x6b8(a5)
200046d0 c.li a4, 0
200046d2 addi a3, zero, 0x1b5
200046d6 c.li a2, 2
200046d8 c.lui a0, 1
200046da c.li a1, 0
200046dc c.jalr a5
200046de lui a5, 0x20202
200046e2 lw a5, 0x340(a5)
200046e6 c.li a0, 2
200046e8 lui a1, 0x80
200046ec c.jalr a5
200046ee c.li a0, 5
200046f0 .byte 0xb3, 0x84

BASE 0x2000499a 0xb8007
2000498e lui s4, 0x20201
20004992 c.add a0, a5
20004994 lw a5, 0x758(s4)
20004998 c.swsp s3, 0xc(sp)
2000499a lui s3, 0xb8007
2000499e c.swsp ra, 0x1c(sp)
200049a0 c.swsp s0, 0x18(sp)
200049a2 c.swsp s1, 0x14(sp)
200049a4 lbu s0, 0(a0)
200049a8 c.swsp s2, 0x10(sp)
200049aa addi a0, s3, -0x6f8
200049ae c.mv s2, a1
200049b0 lui s1, 0x20201
200049b4 c.jalr a5
200049b6 lw a5, 0x74c(s1)
200049ba or a1, s0, a0
200049be addi a0, s3, -0x6f8
200049c2 c.jalr a5
200049c4 lw a5, 0x758(s4)
200049c8 addi a0, s3, -0x700
200049cc c.jalr a5
200049ce or a1, s0, a0
200049d2 bnez s2, 0xa
200049d6 not a1, s0
200049da c.and a1, a0
200049dc c.lwsp s0, 0x18(sp)
200049de lw a5, 0x74c(s1)
200049e2 c.lwsp ra, 0x1c(sp)
200049e4 c.lwsp s1, 0x14(sp)
200049e6 c.lwsp s2, 0x10(sp)
200049e8 c.lwsp s3, 0xc(sp)
200049ea c.lwsp s4, 8(sp)
200049ec lui a0, 0xb8007
200049f0 addi a0, a0, -0x700
200049f4 c.addi16sp sp, 0x20
200049f6 c.jr a5
200049f8 c.jr ra
200049fa c.jr ra
200049fc c.addi16sp sp, -0x30
200049fe c.swsp s4, 0x18(sp)
20004a00 c.swsp s8, 8(sp)
20004a02 lui s4, 0x20202
20004a06 lui s8, 0x20000
20004a0a c.swsp s0, 0x28(sp)
20004a0c c.swsp s1, 0x24(sp)
20004a0e c.swsp s5, 0x14(sp)
20004a10 c.swsp s6, 0x10(sp)
20004a12 c.swsp s7, 0xc(sp)
20004a14 c.swsp s10, 0(sp)
20004a16 c.swsp ra, 0x2c(sp)
20004a18 c.swsp s2, 0x20(sp)
20004a1a c.swsp s3, 0x1c(sp)
20004a1c c.swsp s9, 4(sp)
20004a1e c.li s0, 0
20004a20 addi s4, s4, 0x3e4
20004a24 c.li s10, 1
20004a26 c.addi s8, -1
20004a28 lui s1, 0x20201
20004a2c lui s7, 0x20202

BASE 0x200049ec 0xb8007
200049e0 c.flw fs1, 0x2c(s1)
200049e2 c.lwsp ra, 0x1c(sp)
200049e4 c.lwsp s1, 0x14(sp)
200049e6 c.lwsp s2, 0x10(sp)
200049e8 c.lwsp s3, 0xc(sp)
200049ea c.lwsp s4, 8(sp)
200049ec lui a0, 0xb8007
200049f0 addi a0, a0, -0x700
200049f4 c.addi16sp sp, 0x20
200049f6 c.jr a5
200049f8 c.jr ra
200049fa c.jr ra
200049fc c.addi16sp sp, -0x30
200049fe c.swsp s4, 0x18(sp)
20004a00 c.swsp s8, 8(sp)
20004a02 lui s4, 0x20202
20004a06 lui s8, 0x20000
20004a0a c.swsp s0, 0x28(sp)
20004a0c c.swsp s1, 0x24(sp)
20004a0e c.swsp s5, 0x14(sp)
20004a10 c.swsp s6, 0x10(sp)
20004a12 c.swsp s7, 0xc(sp)
20004a14 c.swsp s10, 0(sp)
20004a16 c.swsp ra, 0x2c(sp)
20004a18 c.swsp s2, 0x20(sp)
20004a1a c.swsp s3, 0x1c(sp)
20004a1c c.swsp s9, 4(sp)
20004a1e c.li s0, 0
20004a20 addi s4, s4, 0x3e4
20004a24 c.li s10, 1
20004a26 c.addi s8, -1
20004a28 lui s1, 0x20201
20004a2c lui s7, 0x20202
20004a30 lui s6, 0x20202
20004a34 lui s5, 0x20201
20004a38 lw a5, 0xc(s4)
20004a3c slli a4, s0, 2
20004a40 c.add a4, a5
20004a42 c.lw a1, 0xc(a4)
20004a44 slli a4, s0, 1
20004a48 c.add a5, a4
20004a4a lhu s9, 4(a5)
20004a4e beq s0, s10, 0x94
20004a52 c.li a5, 2
20004a54 beq s0, a5, 0x98
20004a58 addi s3, zero, 0x300
20004a5c addi a0, zero, 0x600
20004a60 lui a5, 0x30000
20004a64 bltu a1, a5, 8
20004a68 and a1, a1, s8
20004a6c lw a5, 0x74c(s1)
20004a70 lui s2, 0xb8006
20004a74 c.add a0, s2
20004a76 c.jalr a5
20004a78 lw a5, 0x74c(s1)
20004a7c c.li a1, 6
20004a7e addi a0, s2, 0x440

BASE 0x20004a70 0xb8006
20004a64 bltu a1, a5, 8
20004a68 and a1, a1, s8
20004a6c lw a5, 0x74c(s1)
20004a70 lui s2, 0xb8006
20004a74 c.add a0, s2
20004a76 c.jalr a5
20004a78 lw a5, 0x74c(s1)
20004a7c c.li a1, 6
20004a7e addi a0, s2, 0x440
20004a82 c.jalr a5
20004a84 lw a5, 0x1e4(s7)
20004a88 c.li a1, 1
20004a8a c.mv a0, s0
20004a8c c.jalr a5
20004a8e lw a5, 0x1e8(s6)
20004a92 c.mv a0, s0
20004a94 c.addi s0, 1
20004a96 c.jalr a5
20004a98 lw a5, 0x750(s5)
20004a9c andi a1, s9, 0x1ff
20004aa0 add a0, s3, s2
20004aa4 c.jalr a5
20004aa6 c.li a5, 3
20004aa8 bne s0, a5, -0x70
20004aac lui a5, 0x20201
20004ab0 lw a5, 0x758(a5)
20004ab4 lui a0, 0xb8006
20004ab8 c.jalr a5
20004aba c.lwsp s0, 0x28(sp)
20004abc lw a5, 0x74c(s1)
20004ac0 c.lwsp ra, 0x2c(sp)
20004ac2 c.lwsp s1, 0x24(sp)
20004ac4 c.lwsp s2, 0x20(sp)
20004ac6 c.lwsp s3, 0x1c(sp)
20004ac8 c.lwsp s4, 0x18(sp)
20004aca c.lwsp s5, 0x14(sp)
20004acc c.lwsp s6, 0x10(sp)
20004ace c.lwsp s7, 0xc(sp)
20004ad0 c.lwsp s8, 8(sp)
20004ad2 c.lwsp s9, 4(sp)
20004ad4 c.lwsp s10, 0(sp)
20004ad6 c.lui a1, 2
20004ad8 c.or a1, a0
20004ada lui a0, 0xb8006
20004ade c.addi16sp sp, 0x30
20004ae0 c.jr a5
20004ae2 addi s3, zero, 0x302
20004ae6 addi a0, zero, 0x604
20004aea c.j -0x8a
20004aec addi s3, zero, 0x304
20004af0 addi a0, zero, 0x608
20004af4 c.j -0x94
20004af6 c.addi16sp sp, -0x50
20004af8 c.swsp s1, 0x44(sp)
20004afa lui s1, 0x20202
20004afe c.swsp s0, 0x48(sp)
20004b00 addi s0, s1, 0x3e4
20004b04 .byte 0x83, 0x47

BASE 0x20004ab4 0xb8006
20004aa8 bne s0, a5, -0x70
20004aac lui a5, 0x20201
20004ab0 lw a5, 0x758(a5)
20004ab4 lui a0, 0xb8006
20004ab8 c.jalr a5
20004aba c.lwsp s0, 0x28(sp)
20004abc lw a5, 0x74c(s1)
20004ac0 c.lwsp ra, 0x2c(sp)
20004ac2 c.lwsp s1, 0x24(sp)
20004ac4 c.lwsp s2, 0x20(sp)
20004ac6 c.lwsp s3, 0x1c(sp)
20004ac8 c.lwsp s4, 0x18(sp)
20004aca c.lwsp s5, 0x14(sp)
20004acc c.lwsp s6, 0x10(sp)
20004ace c.lwsp s7, 0xc(sp)
20004ad0 c.lwsp s8, 8(sp)
20004ad2 c.lwsp s9, 4(sp)
20004ad4 c.lwsp s10, 0(sp)
20004ad6 c.lui a1, 2
20004ad8 c.or a1, a0
20004ada lui a0, 0xb8006
20004ade c.addi16sp sp, 0x30
20004ae0 c.jr a5
20004ae2 addi s3, zero, 0x302
20004ae6 addi a0, zero, 0x604
20004aea c.j -0x8a
20004aec addi s3, zero, 0x304
20004af0 addi a0, zero, 0x608
20004af4 c.j -0x94
20004af6 c.addi16sp sp, -0x50
20004af8 c.swsp s1, 0x44(sp)
20004afa lui s1, 0x20202
20004afe c.swsp s0, 0x48(sp)
20004b00 addi s0, s1, 0x3e4
20004b04 lbu a5, 0x30(s0)
20004b08 c.swsp s2, 0x40(sp)
20004b0a c.swsp ra, 0x4c(sp)
20004b0c c.swsp s3, 0x3c(sp)
20004b0e c.swsp s4, 0x38(sp)
20004b10 c.swsp s5, 0x34(sp)
20004b12 ori a5, a5, 2
20004b16 sb a5, 0x30(s0)
20004b1a lui a5, 0x20202
20004b1e lw a5, 0x17c(a5)
20004b22 c.mv s2, a0
20004b24 c.mv a1, a0
20004b26 c.addi4spn a2, sp, 8
20004b28 c.li a0, 0
20004b2a c.jalr a5
20004b2c c.beqz a0, 0x2c
20004b2e lbu a5, 0x30(s0)
20004b32 c.li a1, 8
20004b34 c.andi a5, -3
20004b36 sb a5, 0x30(s0)
20004b3a lui a5, 0x20202
20004b3e lw a5, 0x340(a5)
20004b42 c.li a0, 2
20004b44 c.jalr a5
20004b46 c.lwsp ra, 0x4c(sp)
20004b48 c.lwsp s0, 0x48(sp)

BASE 0x20004ada 0xb8006
20004ace c.lwsp s7, 0xc(sp)
20004ad0 c.lwsp s8, 8(sp)
20004ad2 c.lwsp s9, 4(sp)
20004ad4 c.lwsp s10, 0(sp)
20004ad6 c.lui a1, 2
20004ad8 c.or a1, a0
20004ada lui a0, 0xb8006
20004ade c.addi16sp sp, 0x30
20004ae0 c.jr a5
20004ae2 addi s3, zero, 0x302
20004ae6 addi a0, zero, 0x604
20004aea c.j -0x8a
20004aec addi s3, zero, 0x304
20004af0 addi a0, zero, 0x608
20004af4 c.j -0x94
20004af6 c.addi16sp sp, -0x50
20004af8 c.swsp s1, 0x44(sp)
20004afa lui s1, 0x20202
20004afe c.swsp s0, 0x48(sp)
20004b00 addi s0, s1, 0x3e4
20004b04 lbu a5, 0x30(s0)
20004b08 c.swsp s2, 0x40(sp)
20004b0a c.swsp ra, 0x4c(sp)
20004b0c c.swsp s3, 0x3c(sp)
20004b0e c.swsp s4, 0x38(sp)
20004b10 c.swsp s5, 0x34(sp)
20004b12 ori a5, a5, 2
20004b16 sb a5, 0x30(s0)
20004b1a lui a5, 0x20202
20004b1e lw a5, 0x17c(a5)
20004b22 c.mv s2, a0
20004b24 c.mv a1, a0
20004b26 c.addi4spn a2, sp, 8
20004b28 c.li a0, 0
20004b2a c.jalr a5
20004b2c c.beqz a0, 0x2c
20004b2e lbu a5, 0x30(s0)
20004b32 c.li a1, 8
20004b34 c.andi a5, -3
20004b36 sb a5, 0x30(s0)
20004b3a lui a5, 0x20202
20004b3e lw a5, 0x340(a5)
20004b42 c.li a0, 2
20004b44 c.jalr a5
20004b46 c.lwsp ra, 0x4c(sp)
20004b48 c.lwsp s0, 0x48(sp)
20004b4a c.lwsp s1, 0x44(sp)
20004b4c c.lwsp s2, 0x40(sp)
20004b4e c.lwsp s3, 0x3c(sp)
20004b50 c.lwsp s4, 0x38(sp)
20004b52 c.lwsp s5, 0x34(sp)
20004b54 c.addi16sp sp, 0x50
20004b56 c.jr ra
20004b58 addi s3, s2, 4
20004b5c addi s1, s1, 0x3e4
20004b60 slli a5, s3, 2
20004b64 c.add a5, s1
20004b66 lbu a4, 0x1b(a5)
20004b6a andi s4, s2, 0xff
20004b6e .byte 0x23, 0x8b

BASE 0x20004b82 0xb8006
20004b76 jalr ra, a4, 0x37b
20004b7a c.fld fs0, 0x40(s0)
20004b7c lw a5, 0x580(a5)
20004b80 c.lwsp a4, 0x10(sp)
20004b82 lui a0, 0xb8006
20004b86 c.lw a5, 0(a5)
20004b88 c.add a0, a4
20004b8a c.slli s2, 2
20004b8c lw s5, 0x214(a5)
20004b90 lui a5, 0x20201
20004b94 lw a5, 0x758(a5)
20004b98 c.add s2, s5
20004b9a c.jalr a5
20004b9c c.lwsp s0, 0x1c(sp)
20004b9e lw a2, 0(s2)
20004ba2 srl s0, a0, s0
20004ba6 c.lwsp a0, 0x20(sp)
20004ba8 c.and s0, a0
20004baa bltu s0, a2, 0x40
20004bae c.sub s0, a2
20004bb0 c.li a5, 3
20004bb2 bgeu s0, a5, 6
20004bb6 c.li s0, 3
20004bb8 lbu a4, 0x28(sp)
20004bbc c.li a5, 7
20004bbe c.addi s0, -3
20004bc0 bne a4, a5, 0x34
20004bc4 lhu a4, 0x26(sp)
20004bc8 add a5, a2, s0
20004bcc sub a3, a4, s0
20004bd0 bltu a2, a3, 0xa
20004bd4 c.sub a2, a4
20004bd6 add a5, a2, s0
20004bda sw a5, 0(s2)
20004bde lbu a5, 0x30(s1)
20004be2 c.andi a5, -3
20004be4 sb a5, 0x30(s1)
20004be8 c.j -0xa2
20004bea lhu a3, 0x26(sp)
20004bee c.sub a3, a2
20004bf0 c.add s0, a3
20004bf2 c.j -0x42
20004bf4 lui a5, 0x20202
20004bf8 lw a5, 0x14c(a5)
20004bfc c.li a4, 0
20004bfe c.mv a3, s0
20004c00 c.addi4spn a1, sp, 8
20004c02 c.mv a0, s4
20004c04 c.jalr a5
20004c06 c.beqz a0, 0x2a
20004c08 slli a5, s3, 2
20004c0c c.add a5, s1
20004c0e lbu a4, 0x1a(a5)
20004c12 addi a1, zero, 0x400
20004c16 c.addi a4, 1

BASE 0x20004efa 0xb8007
20004eee lbu s0, 0(s0)
20004ef2 lui s4, 0x20201
20004ef6 lw a5, 0x758(s4)
20004efa lui s3, 0xb8007
20004efe addi a0, s3, -0x6f8
20004f02 c.jalr a5
20004f04 lui s1, 0x20201
20004f08 lw a5, 0x74c(s1)
20004f0c or a1, s0, a0
20004f10 addi a0, s3, -0x6f8
20004f14 c.jalr a5
20004f16 lw a5, 0x758(s4)
20004f1a addi a0, s3, -0x700
20004f1e c.jalr a5
20004f20 or a1, s0, a0
20004f24 bnez s2, 0xa
20004f28 not a1, s0
20004f2c c.and a1, a0
20004f2e c.lwsp s0, 0x18(sp)
20004f30 lw a5, 0x74c(s1)
20004f34 c.lwsp ra, 0x1c(sp)
20004f36 c.lwsp s1, 0x14(sp)
20004f38 c.lwsp s2, 0x10(sp)
20004f3a c.lwsp s3, 0xc(sp)
20004f3c c.lwsp s4, 8(sp)
20004f3e lui a0, 0xb8007
20004f42 addi a0, a0, -0x700
20004f46 c.addi16sp sp, 0x20
20004f48 c.jr a5
20004f4a c.li s0, 8
20004f4c c.j -0x5a
20004f4e c.li s0, 0x10
20004f50 c.j -0x5e
20004f52 c.addi16sp sp, -0x60
20004f54 c.swsp ra, 0x5c(sp)
20004f56 c.swsp s0, 0x58(sp)
20004f58 c.swsp s1, 0x54(sp)
20004f5a c.swsp s2, 0x50(sp)
20004f5c c.swsp s3, 0x4c(sp)
20004f5e c.swsp s4, 0x48(sp)
20004f60 c.swsp s5, 0x44(sp)
20004f62 c.swsp s6, 0x40(sp)
20004f64 c.swsp s7, 0x3c(sp)
20004f66 c.bnez a0, 0x3c
20004f68 lui a5, 0x20202
20004f6c lw a5, 0x340(a5)
20004f70 lui a1, 0x1000
20004f74 c.jalr a5
20004f76 lui a5, 0x20201
20004f7a lw a5, 0x6b8(a5)
20004f7e c.li a4, 0
20004f80 addi a3, zero, 0x1be
20004f84 c.li a2, 2
20004f86 c.lui a0, 1
20004f88 c.li a1, 0
20004f8a c.jalr a5
20004f8c lui a5, 0x20202

BASE 0x20004f3e 0xb8007
20004f32 c.flw fs1, 0x2c(s1)
20004f34 c.lwsp ra, 0x1c(sp)
20004f36 c.lwsp s1, 0x14(sp)
20004f38 c.lwsp s2, 0x10(sp)
20004f3a c.lwsp s3, 0xc(sp)
20004f3c c.lwsp s4, 8(sp)
20004f3e lui a0, 0xb8007
20004f42 addi a0, a0, -0x700
20004f46 c.addi16sp sp, 0x20
20004f48 c.jr a5
20004f4a c.li s0, 8
20004f4c c.j -0x5a
20004f4e c.li s0, 0x10
20004f50 c.j -0x5e
20004f52 c.addi16sp sp, -0x60
20004f54 c.swsp ra, 0x5c(sp)
20004f56 c.swsp s0, 0x58(sp)
20004f58 c.swsp s1, 0x54(sp)
20004f5a c.swsp s2, 0x50(sp)
20004f5c c.swsp s3, 0x4c(sp)
20004f5e c.swsp s4, 0x48(sp)
20004f60 c.swsp s5, 0x44(sp)
20004f62 c.swsp s6, 0x40(sp)
20004f64 c.swsp s7, 0x3c(sp)
20004f66 c.bnez a0, 0x3c
20004f68 lui a5, 0x20202
20004f6c lw a5, 0x340(a5)
20004f70 lui a1, 0x1000
20004f74 c.jalr a5
20004f76 lui a5, 0x20201
20004f7a lw a5, 0x6b8(a5)
20004f7e c.li a4, 0
20004f80 addi a3, zero, 0x1be
20004f84 c.li a2, 2
20004f86 c.lui a0, 1
20004f88 c.li a1, 0
20004f8a c.jalr a5
20004f8c lui a5, 0x20202
20004f90 addi a5, a5, 0x3e4
20004f94 lbu a4, 0x12(a5)
20004f98 c.addi a4, 1
20004f9a sb a4, 0x12(a5)
20004f9e c.li s0, 1
20004fa0 c.j 0x40
20004fa2 lbu s0, 0x4c(a0)
20004fa6 c.li a5, 1
20004fa8 lbu s5, 0x4d(a0)
20004fac lw s3, 0x48(a0)
20004fb0 c.mv s1, a0
20004fb2 bne s0, a5, 0x46
20004fb6 bnez s3, 0x42
20004fba lui a5, 0x20202
20004fbe lw a5, 0x340(a5)
20004fc2 lui a1, 0x1000
20004fc6 c.li a0, 0
20004fc8 c.jalr a5
20004fca lui a5, 0x20201
20004fce lw a5, 0x6b8(a5)
20004fd2 c.li a4, 0

BASE 0x200050a2 0xb8006
20005096 c.lwsp a4, 0x10(sp)
20005098 lui a5, 0x20201
2000509c lw a5, 0x758(a5)
200050a0 c.mv s4, a0
200050a2 lui a0, 0xb8006
200050a6 c.add a0, a4
200050a8 sb s0, 0x18(s7)
200050ac c.jalr a5
200050ae lui a5, 0x20203
200050b2 lw a5, 0x580(a5)
200050b6 c.lwsp s2, 0x14(sp)
200050b8 slli a4, s0, 2
200050bc c.lw a5, 0(a5)
200050be srl s2, a0, s2
200050c2 c.lwsp a0, 0x18(sp)
200050c4 lw a5, 0x214(a5)
200050c8 and s2, s2, a0
200050cc c.add a5, a4
200050ce c.lw a4, 0(a5)
200050d0 sub a5, a4, s2
200050d4 bgeu a4, s2, 0xe
200050d8 lhu a5, 0x26(sp)
200050dc c.add a5, a4
200050de sub a5, a5, s2
200050e2 c.addi a5, -1
200050e4 lui s6, 0x20201
200050e8 bgeu a5, s5, 0x4e
200050ec lui a5, 0x20202
200050f0 lw a5, 0x134(a5)
200050f4 c.li a0, 0
200050f6 c.addi s0, 4
200050f8 c.jalr a5
200050fa lw a5, 0x130(s6)
200050fe c.mv a0, s4
20005100 c.slli s0, 2
20005102 c.jalr a5
20005104 c.add s0, s7
20005106 lbu a5, 0x18(s0)
2000510a lbu a4, 0x4c(s1)
2000510e c.addi a5, 1
20005110 sb a5, 0x18(s0)
20005114 c.li a5, 1
20005116 c.li s0, 2
20005118 bne a4, a5, -0x138
2000511c lw a5, 0(s3)
20005120 c.andi a5, 1
20005122 beqz a5, -0x142
20005126 lui a5, 0x20201
2000512a lw a5, 0x408(a5)
2000512e lw a0, 4(s3)
20005132 c.jalr a5
20005134 c.j -0x154
20005136 .byte 0x03, 0xc7

BASE 0x200051c8 0xb8006
200051bc lui a5, 0x20201
200051c0 lw a5, 0x750(a5)
200051c4 c.and a1, a4
200051c6 c.lwsp a4, 0x14(sp)
200051c8 lui a0, 0xb8006
200051cc c.li s0, 0
200051ce sll a1, a1, a4
200051d2 c.lwsp a4, 0x10(sp)
200051d4 c.slli a1, 0x10
200051d6 c.srli a1, 0x10
200051d8 c.add a0, a4
200051da c.jalr a5
200051dc lw a5, 0x130(s6)
200051e0 c.mv a0, s4
200051e2 c.jalr a5
200051e4 c.j -0x204
200051e6 lui a5, 0x20202
200051ea lw a5, 0x174(a5)
200051ee c.addi sp, -0x20
200051f0 c.swsp s0, 0x18(sp)
200051f2 c.swsp s1, 0x14(sp)
200051f4 c.swsp s2, 0x10(sp)
200051f6 c.swsp ra, 0x1c(sp)
200051f8 c.mv s2, a0
200051fa c.mv s0, a1
200051fc c.swsp zero, 0xc(sp)
200051fe c.li a2, 0
20005200 c.addi4spn a1, sp, 0xc
20005202 c.li a0, 1
20005204 c.jalr a5
20005206 c.mv s1, a0
20005208 c.bnez a0, 0x1c
2000520a c.lwsp a5, 0xc(sp)
2000520c lhu a4, 0x12(a5)
20005210 bltu s2, a4, 0x22
20005214 lui a5, 0x20202
20005218 lw a5, 0x340(a5)
2000521c c.li a1, 0x10
2000521e c.li a0, 2
20005220 c.jalr a5
20005222 c.li s1, 0xa
20005224 c.lwsp ra, 0x1c(sp)
20005226 c.lwsp s0, 0x18(sp)
20005228 c.lwsp s2, 0x10(sp)
2000522a c.mv a0, s1
2000522c c.lwsp s1, 0x14(sp)
2000522e c.addi16sp sp, 0x20
20005230 c.jr ra
20005232 lhu a1, 0x14(a5)
20005236 c.li a2, 0
20005238 c.li a0, 1
2000523a mul s2, a1, s2
2000523e c.lw a1, 0(a5)
20005240 c.add a1, s2
20005242 c.lw a5, 0(a1)
20005244 andi a4, a5, 1
20005248 c.lw a5, 0(s0)
2000524a c.andi a5, -2
2000524c c.or a5, a4
2000524e c.sw a5, 0(s0)
20005250 c.lw a5, 4(a1)
20005252 c.sw a5, 4(s0)
20005254 c.lw a5, 0xc(a1)
20005256 c.sw a5, 0xc(s0)
20005258 lbu a5, 0x10(a1)
2000525c .byte 0x23, 0x08

BASE 0x200054be 0xb8006
200054b2 c.swsp s10, 0x30(sp)
200054b4 c.li s2, 0
200054b6 lui s6, 0x20202
200054ba lui s7, 0x20201
200054be lui s8, 0xb8006
200054c2 lui s3, 0x20202
200054c6 lui s9, 0x20202
200054ca c.li s4, 1
200054cc lw a5, 0x17c(s6)
200054d0 c.addi4spn a2, sp, 8
200054d2 c.mv a1, s2
200054d4 c.li a0, 0
200054d6 andi s10, s2, 0xff
200054da c.jalr a5
200054dc c.beqz a0, 0x36
200054de lw a5, 0x340(s9)
200054e2 c.li a1, 8
200054e4 c.li a0, 2
200054e6 c.jalr a5
200054e8 bne s2, s4, 0x26
200054ec lui a5, 0x20202
200054f0 lw a5, 0x148(a5)
200054f4 c.li a1, 0
200054f6 c.li a0, 1
200054f8 c.jalr a5
200054fa c.mv s0, a0
200054fc c.beqz a0, 0x62
200054fe lui a5, 0x20202
20005502 c.lui a1, 1
20005504 lw a5, 0x340(a5)
20005508 addi a1, a1, -0x800
2000550c c.j 0x4e
2000550e c.li s2, 1
20005510 c.j -0x44
20005512 c.lwsp a0, 0x10(sp)
20005514 lw a5, 0x758(s7)
20005518 c.add a0, s8
2000551a c.jalr a5
2000551c c.lwsp s1, 0x14(sp)
2000551e slli a5, s2, 2
20005522 c.add a5, s5
20005524 srl s1, a0, s1
20005528 c.lwsp a0, 0x18(sp)
2000552a c.lw a2, 0(a5)
2000552c c.and s1, a0
2000552e sub a3, s1, a2
20005532 bgeu s1, a2, 0xc
20005536 lhu a3, 0x26(sp)
2000553a c.sub a3, a2
2000553c c.add a3, s1
2000553e lw a5, 0x14c(s3)
20005542 c.li a4, 0
20005544 c.addi4spn a1, sp, 8
20005546 c.mv a0, s10
20005548 c.jalr a5
2000554a c.mv s0, a0
2000554c c.beqz a0, 0x30
2000554e lui a5, 0x20202
20005552 .byte 0x83, 0xa7

BASE 0x200055f6 0xb8006
200055ea c.jr ra
200055ec c.lwsp a4, 0x10(sp)
200055ee lui a5, 0x20201
200055f2 lw a5, 0x758(a5)
200055f6 lui a0, 0xb8006
200055fa c.add a0, a4
200055fc c.jalr a5
200055fe c.lwsp a5, 0x14(sp)
20005600 c.lwsp a4, 0x18(sp)
20005602 srl a5, a0, a5
20005606 c.and a5, a4
20005608 c.sw a5, 0(s1)
2000560a c.lwsp a5, 0x1c(sp)
2000560c srl a0, a0, a5
20005610 c.lwsp a5, 0x20(sp)
20005612 c.and a0, a5
20005614 c.sw a0, 0(s0)
20005616 c.li a0, 1
20005618 c.j -0x38
2000561a lhu a5, 0(a0)
2000561e c.lui a4, 1
20005620 addi a4, a4, 0x700
20005624 c.and a5, a4
20005626 c.lui a4, 0xfffff
20005628 addi a4, a4, -0x300
2000562c c.add a5, a4
2000562e andi a5, a5, -0x101
20005632 c.addi16sp sp, -0x30
20005634 c.slli a5, 0x10
20005636 c.swsp s1, 0x24(sp)
20005638 c.swsp ra, 0x2c(sp)
2000563a c.swsp s0, 0x28(sp)
2000563c c.srli a5, 0x10
2000563e c.li s1, 0xb
20005640 c.bnez a5, 0x2e
20005642 c.mv s0, a0
20005644 lhu a0, 2(a0)
20005648 lui a5, 0x20202
2000564c lw a5, 0x150(a5)
20005650 c.slli a0, 0x11
20005652 c.li a2, 0
20005654 c.addi4spn a1, sp, 8
20005656 c.srli a0, 0x11
20005658 c.jalr a5
2000565a c.mv s1, a0
2000565c c.beqz a0, 0x1e
2000565e lui a5, 0x20202
20005662 lw a5, 0x340(a5)
20005666 addi a1, zero, 0x200
2000566a c.li a0, 2
2000566c c.jalr a5
2000566e c.lwsp ra, 0x2c(sp)
20005670 c.lwsp s0, 0x28(sp)
20005672 c.mv a0, s1
20005674 c.lwsp s1, 0x24(sp)
20005676 c.addi16sp sp, 0x30
20005678 c.jr ra
2000567a lbu a5, 0(s0)
2000567e sb zero, 0x12(sp)
20005682 sb a5, 0x10(sp)
20005686 lhu a5, 0(s0)
2000568a .byte 0x13, 0xd7

BASE 0x200056b2 0xb8006
200056a6 c.swsp s6, 0x30(sp)
200056a8 lui s6, 0x20201
200056ac lw a5, 0x758(s6)
200056b0 c.swsp s7, 0x2c(sp)
200056b2 lui s7, 0xb8006
200056b6 c.swsp s0, 0x48(sp)
200056b8 c.swsp s1, 0x44(sp)
200056ba c.swsp s4, 0x38(sp)
200056bc c.swsp ra, 0x4c(sp)
200056be c.swsp s2, 0x40(sp)
200056c0 c.swsp s3, 0x3c(sp)
200056c2 c.swsp s5, 0x34(sp)
200056c4 c.swsp s8, 0x28(sp)
200056c6 c.swsp s9, 0x24(sp)
200056c8 c.mv s0, a0
200056ca c.swsp zero, 0x1c(sp)
200056cc addi a0, s7, 0x700
200056d0 c.mv s4, a1
200056d2 lui s1, 0x20201
200056d6 c.jalr a5
200056d8 lw a5, 0x74c(s1)
200056dc andi a1, a0, -4
200056e0 addi a0, s7, 0x700
200056e4 c.jalr a5
200056e6 c.beqz s0, 0xd2
200056e8 lui s5, 0x20201
200056ec lw a5, 0x748(s5)
200056f0 c.lui s3, 9
200056f2 addi a0, s3, 0x48
200056f6 c.jalr a5
200056f8 lw a5, 0x748(s5)
200056fc c.mv s2, a0
200056fe c.lui s0, 1
20005700 addi a0, s3, 8
20005704 c.jalr a5
20005706 addi s8, s0, -1
2000570a andi a5, a0, 3
2000570e and s2, s2, s8
20005712 sll s2, s2, a5
20005716 lw a5, 0x758(s6)
2000571a addi a0, s7, 0x704
2000571e c.jalr a5
20005720 lw a5, 0x74c(s1)
20005724 andi a0, a0, -0x40
20005728 andi a1, s2, 0x3f
2000572c c.or a1, a0
2000572e addi a0, s7, 0x704
20005732 c.jalr a5
20005734 lw a5, 0x758(s6)
20005738 addi a0, s7, 0x710
2000573c c.jalr a5
2000573e lui a1, 0xe0010
20005742 lui a3, 0x1fff0
20005746 .byte 0x03, 0xa7

BASE 0x20005846 0xb8006
2000583a c.mv s2, s0
2000583c c.li s7, 0xe
2000583e c.li s9, 0xe
20005840 c.li s3, 0xe
20005842 lw a5, 0x758(s6)
20005846 lui s6, 0xb8006
2000584a addi a0, s6, 0x704
2000584e c.jalr a5
20005850 lui a1, 0xffc10
20005854 lw a5, 0x74c(s1)
20005858 c.addi a1, -1
2000585a c.and a1, a0
2000585c c.slli s7, 0x10
2000585e or a1, s7, a1
20005862 addi a0, s6, 0x704
20005866 c.jalr a5
20005868 lw a5, 0x74c(s1)
2000586c slli a1, s0, 0x10
20005870 lui s7, 0x1fff0
20005874 and a1, a1, s7
20005878 andi s3, s3, 0x3f
2000587c addi a0, s6, 0x714
20005880 or a1, s3, a1
20005884 c.jalr a5
20005886 lw a5, 0x668(s8)
2000588a c.li a0, 5
2000588c c.jalr a5
2000588e c.beqz a0, 0x16
20005890 c.slli s2, 0x10
20005892 lw a5, 0x74c(s1)
20005896 and s2, s2, s7
2000589a or a1, s2, s9
2000589e addi a0, s6, 0x718
200058a2 c.jalr a5
200058a4 lw a5, 0x74c(s1)
200058a8 lui s2, 0xb8006
200058ac slli a1, s0, 0x13
200058b0 c.srli a1, 0x13
200058b2 addi a0, s2, 0x750
200058b6 c.swsp a1, 0xc(sp)
200058b8 c.jalr a5
200058ba lw a5, 0x74c(s1)
200058be c.lwsp a1, 0xc(sp)
200058c0 addi a0, s2, 0x754
200058c4 c.jalr a5
200058c6 bnez s4, -0xf4
200058ca lw a5, 0x74c(s1)
200058ce c.li a1, 0
200058d0 addi a0, s2, 0x770
200058d4 c.jalr a5
200058d6 lw a5, 0x74c(s1)
200058da c.li a1, 0

BASE 0x200058a8 0xb8006
2000589c c.addi gp, 6
2000589e addi a0, s6, 0x718
200058a2 c.jalr a5
200058a4 lw a5, 0x74c(s1)
200058a8 lui s2, 0xb8006
200058ac slli a1, s0, 0x13
200058b0 c.srli a1, 0x13
200058b2 addi a0, s2, 0x750
200058b6 c.swsp a1, 0xc(sp)
200058b8 c.jalr a5
200058ba lw a5, 0x74c(s1)
200058be c.lwsp a1, 0xc(sp)
200058c0 addi a0, s2, 0x754
200058c4 c.jalr a5
200058c6 bnez s4, -0xf4
200058ca lw a5, 0x74c(s1)
200058ce c.li a1, 0
200058d0 addi a0, s2, 0x770
200058d4 c.jalr a5
200058d6 lw a5, 0x74c(s1)
200058da c.li a1, 0
200058dc addi a0, s2, 0x774
200058e0 c.jalr a5
200058e2 c.li a1, 0
200058e4 lw a5, 0x74c(s1)
200058e8 lui a0, 0xb8006
200058ec ori a1, a1, 3
200058f0 addi a0, a0, 0x700
200058f4 c.jalr a5
200058f6 c.j -0x13e
200058f8 c.li s3, 0
200058fa c.li s7, 2
200058fc c.li s2, 0
200058fe c.li s9, 0
20005900 c.j -0xbe
20005902 c.mv s3, s0
20005904 c.j -0xa
20005906 c.addi16sp sp, -0x50
20005908 c.swsp s8, 0x28(sp)
2000590a lui s8, 0x20201
2000590e lw a5, 0x668(s8)
20005912 c.swsp s1, 0x44(sp)
20005914 c.swsp s2, 0x40(sp)
20005916 c.swsp s3, 0x3c(sp)
20005918 c.swsp s7, 0x2c(sp)
2000591a c.swsp s9, 0x24(sp)
2000591c c.swsp s11, 0x1c(sp)
2000591e c.swsp ra, 0x4c(sp)
20005920 c.swsp s0, 0x48(sp)
20005922 c.swsp s4, 0x38(sp)
20005924 c.swsp s5, 0x34(sp)
20005926 c.swsp s6, 0x30(sp)
20005928 c.swsp s10, 0x20(sp)
2000592a c.li a0, 5
2000592c c.jalr a5
2000592e lui a5, 0x20000
20005932 seqz s3, a0
20005936 c.addi a5, -1
20005938 lui s7, 0xb8006
2000593c c.addi s3, 2

BASE 0x200058e8 0xb8006
200058dc addi a0, s2, 0x774
200058e0 c.jalr a5
200058e2 c.li a1, 0
200058e4 lw a5, 0x74c(s1)
200058e8 lui a0, 0xb8006
200058ec ori a1, a1, 3
200058f0 addi a0, a0, 0x700
200058f4 c.jalr a5
200058f6 c.j -0x13e
200058f8 c.li s3, 0
200058fa c.li s7, 2
200058fc c.li s2, 0
200058fe c.li s9, 0
20005900 c.j -0xbe
20005902 c.mv s3, s0
20005904 c.j -0xa
20005906 c.addi16sp sp, -0x50
20005908 c.swsp s8, 0x28(sp)
2000590a lui s8, 0x20201
2000590e lw a5, 0x668(s8)
20005912 c.swsp s1, 0x44(sp)
20005914 c.swsp s2, 0x40(sp)
20005916 c.swsp s3, 0x3c(sp)
20005918 c.swsp s7, 0x2c(sp)
2000591a c.swsp s9, 0x24(sp)
2000591c c.swsp s11, 0x1c(sp)
2000591e c.swsp ra, 0x4c(sp)
20005920 c.swsp s0, 0x48(sp)
20005922 c.swsp s4, 0x38(sp)
20005924 c.swsp s5, 0x34(sp)
20005926 c.swsp s6, 0x30(sp)
20005928 c.swsp s10, 0x20(sp)
2000592a c.li a0, 5
2000592c c.jalr a5
2000592e lui a5, 0x20000
20005932 seqz s3, a0
20005936 c.addi a5, -1
20005938 lui s7, 0xb8006
2000593c c.addi s3, 2
2000593e c.li s1, 0
20005940 lui s9, 0x20203
20005944 c.swsp a5, 0xc(sp)
20005946 lui s2, 0x20201
2000594a addi s11, s7, 4
2000594e lw a5, 0x668(s8)
20005952 c.li a0, 5
20005954 c.jalr a5
20005956 c.bnez a0, 0xf0
20005958 c.beqz s1, 0xc2
2000595a c.li a5, 1
2000595c beq s1, a5, 0xd2
20005960 lui a5, 0x30000
20005964 c.mv a1, s0
20005966 bltu s0, a5, 0xa
2000596a c.lwsp a5, 0xc(sp)
2000596c and a1, s0, a5
20005970 lw a5, 0x74c(s2)
20005974 add a0, s5, s7
20005978 c.jalr a5
2000597a lui a5, 0x20201

BASE 0x20005938 0xb8006
2000592c c.jalr a5
2000592e lui a5, 0x20000
20005932 seqz s3, a0
20005936 c.addi a5, -1
20005938 lui s7, 0xb8006
2000593c c.addi s3, 2
2000593e c.li s1, 0
20005940 lui s9, 0x20203
20005944 c.swsp a5, 0xc(sp)
20005946 lui s2, 0x20201
2000594a addi s11, s7, 4
2000594e lw a5, 0x668(s8)
20005952 c.li a0, 5
20005954 c.jalr a5
20005956 c.bnez a0, 0xf0
20005958 c.beqz s1, 0xc2
2000595a c.li a5, 1
2000595c beq s1, a5, 0xd2
20005960 lui a5, 0x30000
20005964 c.mv a1, s0
20005966 bltu s0, a5, 0xa
2000596a c.lwsp a5, 0xc(sp)
2000596c and a1, s0, a5
20005970 lw a5, 0x74c(s2)
20005974 add a0, s5, s7
20005978 c.jalr a5
2000597a lui a5, 0x20201
2000597e lw a5, 0x750(a5)
20005982 addi a1, zero, 0x20
20005986 add a0, s6, s7
2000598a c.jalr a5
2000598c lw a5, 0x668(s8)
20005990 c.li a0, 5
20005992 c.jalr a5
20005994 lw a5, 0x74c(s2)
20005998 c.li a1, 3
2000599a c.beqz a0, 4
2000599c c.li a1, 7
2000599e addi a0, s7, 0x43c
200059a2 c.jalr a5
200059a4 lui a5, 0x20202
200059a8 lw a5, 0x1d8(a5)
200059ac c.li a1, 1
200059ae c.mv a0, s1
200059b0 c.jalr a5
200059b2 lui s10, 0x20201
200059b6 lw a5, 0x758(s10)
200059ba c.mv a0, s11
200059bc c.addi s1, 1
200059be c.jalr a5
200059c0 lw a5, 0x74c(s2)
200059c4 not a1, s4
200059c8 c.and a1, a0
200059ca c.mv a0, s11
200059cc c.jalr a5

BASE 0x200059e4 0xb8006
200059d8 .byte 0x07, 0x1d
200059da c.li a1, 0
200059dc c.li a0, 1
200059de c.jalr a5
200059e0 lw a5, 0x758(s10)
200059e4 lui a0, 0xb8006
200059e8 c.jalr a5
200059ea c.lwsp s0, 0x48(sp)
200059ec lw a4, 0x74c(s2)
200059f0 c.lwsp ra, 0x4c(sp)
200059f2 c.lwsp s1, 0x44(sp)
200059f4 c.lwsp s2, 0x40(sp)
200059f6 c.lwsp s3, 0x3c(sp)
200059f8 c.lwsp s4, 0x38(sp)
200059fa c.lwsp s5, 0x34(sp)
200059fc c.lwsp s6, 0x30(sp)
200059fe c.lwsp s7, 0x2c(sp)
20005a00 c.lwsp s8, 0x28(sp)
20005a02 c.lwsp s9, 0x24(sp)
20005a04 c.lwsp s10, 0x20(sp)
20005a06 c.lwsp s11, 0x1c(sp)
20005a08 c.lui a5, 1
20005a0a addi a5, a5, -0x800
20005a0e or a1, a0, a5
20005a12 lui a0, 0xb8006
20005a16 c.addi16sp sp, 0x50
20005a18 c.jr a4
20005a1a lw a5, 0x580(s9)
20005a1e c.lw a5, 0(a5)
20005a20 c.lw s0, 0(a5)
20005a22 c.li s4, 1
20005a24 addi s6, zero, 0x320
20005a28 addi s5, zero, 0x620
20005a2c c.j -0xcc
20005a2e lw a5, 0x580(s9)
20005a32 c.lw a5, 0(a5)
20005a34 c.lw s0, 0(a5)
20005a36 c.li s4, 2
20005a38 addi s6, zero, 0x322
20005a3c addi s0, s0, 0x100
20005a40 addi s5, zero, 0x624
20005a44 c.j -0xe4
20005a46 lw a5, 0x580(s9)
20005a4a c.li a4, 1
20005a4c c.lw a5, 0(a5)
20005a4e beq s1, a4, -0x1a
20005a52 c.li a4, 2
20005a54 c.lw s0, 0(a5)
20005a56 bne s1, a4, -0x34
20005a5a addi s0, s0, 0x200
20005a5e c.li s4, 4
20005a60 addi s6, zero, 0x324
20005a64 addi s5, zero, 0x628
20005a68 c.j -0x108
20005a6a c.jr ra
20005a6c beqz a0, 0x122
20005a70 c.addi sp, -0x20
20005a72 c.swsp s0, 0x18(sp)
20005a74 c.swsp s3, 0xc(sp)
20005a76 c.swsp ra, 0x1c(sp)
20005a78 c.swsp s1, 0x14(sp)

BASE 0x20005a12 0xb8006
20005a06 c.lwsp s11, 0x1c(sp)
20005a08 c.lui a5, 1
20005a0a addi a5, a5, -0x800
20005a0e or a1, a0, a5
20005a12 lui a0, 0xb8006
20005a16 c.addi16sp sp, 0x50
20005a18 c.jr a4
20005a1a lw a5, 0x580(s9)
20005a1e c.lw a5, 0(a5)
20005a20 c.lw s0, 0(a5)
20005a22 c.li s4, 1
20005a24 addi s6, zero, 0x320
20005a28 addi s5, zero, 0x620
20005a2c c.j -0xcc
20005a2e lw a5, 0x580(s9)
20005a32 c.lw a5, 0(a5)
20005a34 c.lw s0, 0(a5)
20005a36 c.li s4, 2
20005a38 addi s6, zero, 0x322
20005a3c addi s0, s0, 0x100
20005a40 addi s5, zero, 0x624
20005a44 c.j -0xe4
20005a46 lw a5, 0x580(s9)
20005a4a c.li a4, 1
20005a4c c.lw a5, 0(a5)
20005a4e beq s1, a4, -0x1a
20005a52 c.li a4, 2
20005a54 c.lw s0, 0(a5)
20005a56 bne s1, a4, -0x34
20005a5a addi s0, s0, 0x200
20005a5e c.li s4, 4
20005a60 addi s6, zero, 0x324
20005a64 addi s5, zero, 0x628
20005a68 c.j -0x108
20005a6a c.jr ra
20005a6c beqz a0, 0x122
20005a70 c.addi sp, -0x20
20005a72 c.swsp s0, 0x18(sp)
20005a74 c.swsp s3, 0xc(sp)
20005a76 c.swsp ra, 0x1c(sp)
20005a78 c.swsp s1, 0x14(sp)
20005a7a c.swsp s2, 0x10(sp)
20005a7c c.swsp s4, 8(sp)
20005a7e c.swsp s5, 4(sp)
20005a80 c.swsp s6, 0(sp)
20005a82 c.mv s3, a0
20005a84 c.mv s0, a1
20005a86 c.li a0, 0
20005a88 c.beqz a1, 0xc6
20005a8a lui a5, 0x20202
20005a8e addi a4, a5, 0x3e4
20005a92 c.lw a3, 0x34(a4)
20005a94 addi a5, a5, 0x3e4
20005a98 c.lw a2, 8(a3)
20005a9a bltu a1, a2, 0x86
20005a9e c.lw a4, 0(a3)
20005aa0 c.lw a3, 4(a3)
20005aa2 mul a4, a4, a3
20005aa6 c.add a4, a2

BASE 0x20005c04 0xb8003
20005bf8 c.swsp s1, 4(sp)
20005bfa lui s1, 0x20201
20005bfe lw a5, 0x74c(s1)
20005c02 c.swsp s0, 8(sp)
20005c04 lui s0, 0xb8003
20005c08 c.swsp ra, 0xc(sp)
20005c0a addi a0, s0, 0x78
20005c0e addi a1, zero, 0x100
20005c12 c.jalr a5
20005c14 addi a0, s0, 0x74
20005c18 c.lwsp s0, 8(sp)
20005c1a lw a5, 0x74c(s1)
20005c1e c.lwsp ra, 0xc(sp)
20005c20 c.lwsp s1, 4(sp)
20005c22 c.li a1, 0
20005c24 c.addi sp, 0x10
20005c26 c.jr a5
20005c28 c.mv a3, a2
20005c2a c.li a5, 0
20005c2c c.li a7, 0
20005c2e slli a6, a7, 2
20005c32 bne a7, a0, 0xa
20005c36 c.add a2, a6
20005c38 c.bnez a5, 0x26
20005c3a c.jr ra
20005c3c c.lw a4, 0(a3)
20005c3e c.add a6, a1
20005c40 c.addi a7, 1
20005c42 sltu t1, a4, a5
20005c46 c.sub a4, a5
20005c48 c.sw a4, 0(a3)
20005c4a lw a6, 0(a6)
20005c4e sltu a5, a4, a6
20005c52 sub a4, a4, a6
20005c56 c.sw a4, 0(a3)
20005c58 c.add a5, t1
20005c5a c.addi a3, 4
20005c5c c.j -0x2e
20005c5e c.lw a4, 0(a2)
20005c60 sub a3, a4, a5
20005c64 c.sw a3, 0(a2)
20005c66 sltu a5, a4, a5
20005c6a c.addi a2, 4
20005c6c c.j -0x34
20005c6e c.addi sp, -0x20
20005c70 c.mv a7, a0
20005c72 c.swsp a1, 0xc(sp)
20005c74 c.swsp a2, 8(sp)
20005c76 c.swsp a3, 4(sp)
20005c78 c.swsp zero, 0x1c(sp)
20005c7a c.mv t1, a0
20005c7c c.li t3, 0xf
20005c7e bltu t3, t1, 0x176
20005c82 srli a0, a7, 4
20005c86 c.li a5, -0x10
20005c88 mul a0, a0, a5
20005c8c c.li a5, 7
20005c8e c.add a7, a0
20005c90 bgeu a5, a7, 0x144
20005c94 c.addi a7, -8
20005c96 c.lwsp a0, 0xc(sp)
20005c98 c.lwsp a1, 8(sp)

BASE 0x20008896 0xb8008
2000888a c.bnez a3, 0xfc
2000888c c.jr ra
2000888e c.jr ra
20008890 c.addi16sp sp, -0x30
20008892 c.swsp s1, 0x24(sp)
20008894 c.swsp s2, 0x20(sp)
20008896 lui s1, 0xb8008
2000889a lui s2, 0x20208
2000889e c.swsp s0, 0x28(sp)
200088a0 c.swsp s3, 0x1c(sp)
200088a2 c.swsp s4, 0x18(sp)
200088a4 c.swsp s5, 0x14(sp)
200088a6 c.swsp s6, 0x10(sp)
200088a8 c.swsp ra, 0x2c(sp)
200088aa c.li s0, -1
200088ac c.li a1, 1
200088ae lui s4, 0x20201
200088b2 addi s1, s1, 0xe4
200088b6 lui s5, 0x20201
200088ba c.li s3, 5
200088bc c.li s6, 4
200088be addi s2, s2, 0x610
200088c2 lw a5, 0x758(s4)
200088c6 c.mv a0, s1
200088c8 c.swsp a1, 0xc(sp)
200088ca c.jalr a5
200088cc c.lwsp a1, 0xc(sp)
200088ce c.and a0, a1
200088d0 c.beqz a0, 0xa
200088d2 lw a5, 0x74c(s5)
200088d6 c.mv a0, s1
200088d8 c.jalr a5
200088da c.addi s0, 1
200088dc bne s0, s3, 0x18
200088e0 c.lwsp ra, 0x2c(sp)
200088e2 c.lwsp s0, 0x28(sp)
200088e4 c.lwsp s1, 0x24(sp)
200088e6 c.lwsp s2, 0x20(sp)
200088e8 c.lwsp s3, 0x1c(sp)
200088ea c.lwsp s4, 0x18(sp)
200088ec c.lwsp s5, 0x14(sp)
200088ee c.lwsp s6, 0x10(sp)
200088f0 c.addi16sp sp, 0x30
200088f2 c.jr ra
200088f4 c.li a1, 1
200088f6 bltu s6, s0, -0x34
200088fa add a5, s0, s2
200088fe lbu a1, 0(a5)
20008902 c.j -0x40
20008904 c.addi16sp sp, -0x40
20008906 c.swsp s7, 0x1c(sp)
20008908 c.swsp ra, 0x3c(sp)
2000890a c.mv s7, a5
2000890c c.swsp s0, 0x38(sp)
2000890e c.swsp s1, 0x34(sp)
20008910 c.swsp s2, 0x30(sp)
20008912 c.swsp s3, 0x2c(sp)
20008914 c.swsp s4, 0x28(sp)
20008916 c.swsp s5, 0x24(sp)
20008918 c.swsp s6, 0x20(sp)
2000891a c.swsp s8, 0x18(sp)
2000891c c.li a5, 5
2000891e bltu a5, a0, 0x5a
20008922 lui s5, 0x20204
20008926 lbu a5, 0x5f4(s5)
2000892a c.mv s0, a0

BASE 0x200089c6 0xb8008
200089ba c.or s1, a5
200089bc lui s6, 0x20201
200089c0 lw a5, 0x74c(s6)
200089c4 c.slli s0, 4
200089c6 lui a0, 0xb8008
200089ca lui a4, 0x30000
200089ce c.add a0, s0
200089d0 bltu s2, a4, 0xa
200089d4 c.slli s2, 3
200089d6 srli s2, s2, 3
200089da c.mv a1, s2
200089dc c.jalr a5
200089de lui a5, 0xb8008
200089e2 c.addi a5, 4
200089e4 lw a4, 0x74c(s6)
200089e8 add a0, s0, a5
200089ec lui a5, 0x30000
200089f0 bltu s3, a5, 0xa
200089f4 c.slli s3, 3
200089f6 srli s3, s3, 3
200089fa c.mv a1, s3
200089fc c.jalr a4
200089fe lw a5, 0x74c(s6)
20008a02 lui a0, 0xb8008
20008a06 c.addi a0, 8
20008a08 c.add a0, s0
20008a0a c.mv a1, s1
20008a0c c.swsp a0, 0xc(sp)
20008a0e c.jalr a5
20008a10 lw a5, 0x74c(s6)
20008a14 c.lwsp a0, 0xc(sp)
20008a16 lui a1, 0x80000
20008a1a c.or a1, s1
20008a1c c.jalr a5
20008a1e lbu a5, 0x5f4(s5)
20008a22 c.li s6, 1
20008a24 c.j -0xbc
20008a26 c.li a5, 5
20008a28 bltu a5, a0, 0x5e
20008a2c lui a5, 0x20208
20008a30 addi a5, a5, 0x608
20008a34 c.addi sp, -0x20
20008a36 c.add a5, a0
20008a38 c.swsp s3, 0xc(sp)
20008a3a lbu s3, 0(a5)
20008a3e lui a5, 0xb8008
20008a42 c.swsp s1, 0x14(sp)
20008a44 addi a4, a5, 8
20008a48 slli s1, a0, 4
20008a4c c.swsp s0, 0x18(sp)
20008a4e c.swsp s2, 0x10(sp)
20008a50 c.swsp ra, 0x1c(sp)
20008a52 lui s2, 0x20201
20008a56 c.add s1, a4
20008a58 addi s0, a5, 0xe8

BASE 0x200089de 0xb8008
200089d2 c.addi ra, 0x1a
200089d4 c.slli s2, 3
200089d6 srli s2, s2, 3
200089da c.mv a1, s2
200089dc c.jalr a5
200089de lui a5, 0xb8008
200089e2 c.addi a5, 4
200089e4 lw a4, 0x74c(s6)
200089e8 add a0, s0, a5
200089ec lui a5, 0x30000
200089f0 bltu s3, a5, 0xa
200089f4 c.slli s3, 3
200089f6 srli s3, s3, 3
200089fa c.mv a1, s3
200089fc c.jalr a4
200089fe lw a5, 0x74c(s6)
20008a02 lui a0, 0xb8008
20008a06 c.addi a0, 8
20008a08 c.add a0, s0
20008a0a c.mv a1, s1
20008a0c c.swsp a0, 0xc(sp)
20008a0e c.jalr a5
20008a10 lw a5, 0x74c(s6)
20008a14 c.lwsp a0, 0xc(sp)
20008a16 lui a1, 0x80000
20008a1a c.or a1, s1
20008a1c c.jalr a5
20008a1e lbu a5, 0x5f4(s5)
20008a22 c.li s6, 1
20008a24 c.j -0xbc
20008a26 c.li a5, 5
20008a28 bltu a5, a0, 0x5e
20008a2c lui a5, 0x20208
20008a30 addi a5, a5, 0x608
20008a34 c.addi sp, -0x20
20008a36 c.add a5, a0
20008a38 c.swsp s3, 0xc(sp)
20008a3a lbu s3, 0(a5)
20008a3e lui a5, 0xb8008
20008a42 c.swsp s1, 0x14(sp)
20008a44 addi a4, a5, 8
20008a48 slli s1, a0, 4
20008a4c c.swsp s0, 0x18(sp)
20008a4e c.swsp s2, 0x10(sp)
20008a50 c.swsp ra, 0x1c(sp)
20008a52 lui s2, 0x20201
20008a56 c.add s1, a4
20008a58 addi s0, a5, 0xe8
20008a5c lw a5, 0x758(s2)
20008a60 c.mv a0, s1
20008a62 c.jalr a5
20008a64 bltz a0, -8
20008a68 lw a5, 0x758(s2)
20008a6c c.mv a0, s0
20008a6e c.jalr a5
20008a70 and a0, a0, s3

BASE 0x20008a02 0xb8008
200089f6 srli s3, s3, 3
200089fa c.mv a1, s3
200089fc c.jalr a4
200089fe lw a5, 0x74c(s6)
20008a02 lui a0, 0xb8008
20008a06 c.addi a0, 8
20008a08 c.add a0, s0
20008a0a c.mv a1, s1
20008a0c c.swsp a0, 0xc(sp)
20008a0e c.jalr a5
20008a10 lw a5, 0x74c(s6)
20008a14 c.lwsp a0, 0xc(sp)
20008a16 lui a1, 0x80000
20008a1a c.or a1, s1
20008a1c c.jalr a5
20008a1e lbu a5, 0x5f4(s5)
20008a22 c.li s6, 1
20008a24 c.j -0xbc
20008a26 c.li a5, 5
20008a28 bltu a5, a0, 0x5e
20008a2c lui a5, 0x20208
20008a30 addi a5, a5, 0x608
20008a34 c.addi sp, -0x20
20008a36 c.add a5, a0
20008a38 c.swsp s3, 0xc(sp)
20008a3a lbu s3, 0(a5)
20008a3e lui a5, 0xb8008
20008a42 c.swsp s1, 0x14(sp)
20008a44 addi a4, a5, 8
20008a48 slli s1, a0, 4
20008a4c c.swsp s0, 0x18(sp)
20008a4e c.swsp s2, 0x10(sp)
20008a50 c.swsp ra, 0x1c(sp)
20008a52 lui s2, 0x20201
20008a56 c.add s1, a4
20008a58 addi s0, a5, 0xe8
20008a5c lw a5, 0x758(s2)
20008a60 c.mv a0, s1
20008a62 c.jalr a5
20008a64 bltz a0, -8
20008a68 lw a5, 0x758(s2)
20008a6c c.mv a0, s0
20008a6e c.jalr a5
20008a70 and a0, a0, s3
20008a74 c.bnez a0, -0x18
20008a76 c.lwsp ra, 0x1c(sp)
20008a78 c.lwsp s0, 0x18(sp)
20008a7a c.lwsp s1, 0x14(sp)
20008a7c c.lwsp s2, 0x10(sp)
20008a7e c.lwsp s3, 0xc(sp)
20008a80 c.li a0, 1
20008a82 c.addi16sp sp, 0x20
20008a84 c.jr ra
20008a86 c.li a0, 0
20008a88 c.jr ra
20008a8a lui a5, 0x20201
20008a8e c.addi sp, -0x10
20008a90 lw a5, 0x758(a5)
20008a94 c.swsp s0, 8(sp)
20008a96 c.mv s0, a0

BASE 0x20008a3e 0xb8008
20008a32 .byte 0x87, 0x60
20008a34 c.addi sp, -0x20
20008a36 c.add a5, a0
20008a38 c.swsp s3, 0xc(sp)
20008a3a lbu s3, 0(a5)
20008a3e lui a5, 0xb8008
20008a42 c.swsp s1, 0x14(sp)
20008a44 addi a4, a5, 8
20008a48 slli s1, a0, 4
20008a4c c.swsp s0, 0x18(sp)
20008a4e c.swsp s2, 0x10(sp)
20008a50 c.swsp ra, 0x1c(sp)
20008a52 lui s2, 0x20201
20008a56 c.add s1, a4
20008a58 addi s0, a5, 0xe8
20008a5c lw a5, 0x758(s2)
20008a60 c.mv a0, s1
20008a62 c.jalr a5
20008a64 bltz a0, -8
20008a68 lw a5, 0x758(s2)
20008a6c c.mv a0, s0
20008a6e c.jalr a5
20008a70 and a0, a0, s3
20008a74 c.bnez a0, -0x18
20008a76 c.lwsp ra, 0x1c(sp)
20008a78 c.lwsp s0, 0x18(sp)
20008a7a c.lwsp s1, 0x14(sp)
20008a7c c.lwsp s2, 0x10(sp)
20008a7e c.lwsp s3, 0xc(sp)
20008a80 c.li a0, 1
20008a82 c.addi16sp sp, 0x20
20008a84 c.jr ra
20008a86 c.li a0, 0
20008a88 c.jr ra
20008a8a lui a5, 0x20201
20008a8e c.addi sp, -0x10
20008a90 lw a5, 0x758(a5)
20008a94 c.swsp s0, 8(sp)
20008a96 c.mv s0, a0
20008a98 lui a0, 0xb8008
20008a9c c.swsp ra, 0xc(sp)
20008a9e addi a0, a0, 0xe8
20008aa2 c.jalr a5
20008aa4 c.li a5, 1
20008aa6 c.lwsp ra, 0xc(sp)
20008aa8 sll a5, a5, s0
20008aac c.lwsp s0, 8(sp)
20008aae c.and a0, a5
20008ab0 seqz a0, a0
20008ab4 c.addi sp, 0x10
20008ab6 c.jr ra
20008ab8 c.addi sp, -0x10
20008aba lui a5, 0x20201
20008abe c.swsp s0, 8(sp)
20008ac0 lw s0, 0x73c(a5)
20008ac4 lui a5, 0x20201
20008ac8 lw a5, 0x748(a5)
20008acc c.swsp ra, 0xc(sp)
20008ace c.swsp s1, 4(sp)
20008ad0 c.swsp s2, 0(sp)
20008ad2 .byte 0x13, 0x05

BASE 0x20008a98 0xb8008
20008a8c c.fld fs0, 0x40(s0)
20008a8e c.addi sp, -0x10
20008a90 lw a5, 0x758(a5)
20008a94 c.swsp s0, 8(sp)
20008a96 c.mv s0, a0
20008a98 lui a0, 0xb8008
20008a9c c.swsp ra, 0xc(sp)
20008a9e addi a0, a0, 0xe8
20008aa2 c.jalr a5
20008aa4 c.li a5, 1
20008aa6 c.lwsp ra, 0xc(sp)
20008aa8 sll a5, a5, s0
20008aac c.lwsp s0, 8(sp)
20008aae c.and a0, a5
20008ab0 seqz a0, a0
20008ab4 c.addi sp, 0x10
20008ab6 c.jr ra
20008ab8 c.addi sp, -0x10
20008aba lui a5, 0x20201
20008abe c.swsp s0, 8(sp)
20008ac0 lw s0, 0x73c(a5)
20008ac4 lui a5, 0x20201
20008ac8 lw a5, 0x748(a5)
20008acc c.swsp ra, 0xc(sp)
20008ace c.swsp s1, 4(sp)
20008ad0 c.swsp s2, 0(sp)
20008ad2 addi a0, zero, 0x88
20008ad6 c.jalr a5
20008ad8 ori a1, a0, 0x40
20008adc addi a0, zero, 0x88
20008ae0 c.jalr s0
20008ae2 lui s0, 0xb8008
20008ae6 lui s2, 0x20201
20008aea addi s1, s0, 0xe8
20008aee lw a5, 0x758(s2)
20008af2 c.mv a0, s1
20008af4 c.jalr a5
20008af6 andi a0, a0, 0x3f
20008afa c.bnez a0, -0xc
20008afc lui s1, 0x20201
20008b00 lw a5, 0x74c(s1)
20008b04 c.lui a1, 7
20008b06 addi a0, s0, 0xfc
20008b0a addi a1, a1, 0x3f
20008b0e c.jalr a5
20008b10 lw a5, 0x74c(s1)
20008b14 addi a0, s0, 0xec
20008b18 c.li a1, 1
20008b1a c.jalr a5
20008b1c lw a5, 0x74c(s1)
20008b20 addi a0, s0, 0xe0
20008b24 c.li a1, 0
20008b26 c.jalr a5
20008b28 addi a0, s0, 0xe4
20008b2c c.lwsp s0, 8(sp)

BASE 0x20008ae2 0xb8008
20008ad6 c.jalr a5
20008ad8 ori a1, a0, 0x40
20008adc addi a0, zero, 0x88
20008ae0 c.jalr s0
20008ae2 lui s0, 0xb8008
20008ae6 lui s2, 0x20201
20008aea addi s1, s0, 0xe8
20008aee lw a5, 0x758(s2)
20008af2 c.mv a0, s1
20008af4 c.jalr a5
20008af6 andi a0, a0, 0x3f
20008afa c.bnez a0, -0xc
20008afc lui s1, 0x20201
20008b00 lw a5, 0x74c(s1)
20008b04 c.lui a1, 7
20008b06 addi a0, s0, 0xfc
20008b0a addi a1, a1, 0x3f
20008b0e c.jalr a5
20008b10 lw a5, 0x74c(s1)
20008b14 addi a0, s0, 0xec
20008b18 c.li a1, 1
20008b1a c.jalr a5
20008b1c lw a5, 0x74c(s1)
20008b20 addi a0, s0, 0xe0
20008b24 c.li a1, 0
20008b26 c.jalr a5
20008b28 addi a0, s0, 0xe4
20008b2c c.lwsp s0, 8(sp)
20008b2e lw a5, 0x74c(s1)
20008b32 c.lwsp ra, 0xc(sp)
20008b34 c.lwsp s1, 4(sp)
20008b36 c.lwsp s2, 0(sp)
20008b38 addi a1, zero, 0x3f
20008b3c c.addi sp, 0x10
20008b3e c.jr a5
20008b40 c.lui a4, 7
20008b42 c.addi16sp sp, -0x40
20008b44 addi a5, a4, 0x100
20008b48 c.swsp a5, 8(sp)
20008b4a c.lui a5, 8
20008b4c addi a3, a5, -0x800
20008b50 addi a4, a4, 0x104
20008b54 c.swsp a4, 0x14(sp)
20008b56 c.swsp a3, 0xc(sp)
20008b58 addi a4, a5, -0x7fc
20008b5c addi a3, a5, 0x500
20008b60 addi a5, a5, 0x504
20008b64 c.swsp a5, 0x1c(sp)
20008b66 lui a5, 0x20203
20008b6a c.swsp s2, 0x30(sp)
20008b6c lw a5, 0x580(a5)
20008b70 slli s2, a0, 2
20008b74 c.swsp a4, 0x18(sp)
20008b76 .byte 0x13, 0x07

BASE 0x2000993c 0xb8003
20009930 c.addi4spn s0, sp, 0x390
20009932 bltu a4, a3, 0xa
20009936 c.slli a0, 2
20009938 addi a5, a0, 0xf0
2000993c lui s0, 0xb8003
20009940 addi s1, zero, 0x1f4
20009944 lui s3, 0x20201
20009948 c.add s0, a5
2000994a c.li s4, -1
2000994c lui s2, 0x20202
20009950 lw a5, 0x758(s3)
20009954 c.mv a0, s0
20009956 c.jalr a5
20009958 beq a0, s4, 0x24
2000995c lw a5, 0x2d0(s2)
20009960 addi a0, zero, 0x64
20009964 c.addi s1, -1
20009966 c.jalr a5
20009968 c.bnez s1, -0x18
2000996a c.li a0, 0
2000996c c.lwsp ra, 0x1c(sp)
2000996e c.lwsp s0, 0x18(sp)
20009970 c.lwsp s1, 0x14(sp)
20009972 c.lwsp s2, 0x10(sp)
20009974 c.lwsp s3, 0xc(sp)
20009976 c.lwsp s4, 8(sp)
20009978 c.addi16sp sp, 0x20
2000997a c.jr ra
2000997c c.li a0, 1
2000997e c.j -0x12
20009980 addi a3, a0, -1
20009984 c.li a4, 2
20009986 addi a5, zero, 0xf0
2000998a bltu a4, a3, 0xa
2000998e c.slli a0, 2
20009990 addi a5, a0, 0xf0
20009994 lui a4, 0x20201
20009998 lw a4, 0x74c(a4)
2000999c lui a0, 0xb8003
200099a0 c.li a1, -1
200099a2 c.add a0, a5
200099a4 c.jr a4
200099a6 lui a5, 0x20203
200099aa sw zero, 0x600(a5)
200099ae c.li a0, 0
200099b0 c.jr ra
200099b2 lbu a5, 1(a0)
200099b6 c.bnez a5, 6
200099b8 c.li a0, 0
200099ba c.jr ra
200099bc lui a5, 0x989
200099c0 addi a5, a5, 0x680
200099c4 lui a3, 0x20203
200099c8 addi a4, a3, 0x600
200099cc c.lw a4, 0(a4)
200099ce c.bnez a4, -0x16
200099d0 c.addi a5, -1

BASE 0x2000999c 0xb8003
20009990 addi a5, a0, 0xf0
20009994 lui a4, 0x20201
20009998 lw a4, 0x74c(a4)
2000999c lui a0, 0xb8003
200099a0 c.li a1, -1
200099a2 c.add a0, a5
200099a4 c.jr a4
200099a6 lui a5, 0x20203
200099aa sw zero, 0x600(a5)
200099ae c.li a0, 0
200099b0 c.jr ra
200099b2 lbu a5, 1(a0)
200099b6 c.bnez a5, 6
200099b8 c.li a0, 0
200099ba c.jr ra
200099bc lui a5, 0x989
200099c0 addi a5, a5, 0x680
200099c4 lui a3, 0x20203
200099c8 addi a4, a3, 0x600
200099cc c.lw a4, 0(a4)
200099ce c.bnez a4, -0x16
200099d0 c.addi a5, -1
200099d2 c.bnez a5, -0xa
200099d4 c.addi16sp sp, -0x30
200099d6 c.swsp s0, 0x28(sp)
200099d8 lui s0, 0x20201
200099dc lw a5, 0x758(s0)
200099e0 c.swsp s1, 0x24(sp)
200099e2 lui s1, 0xb800c
200099e6 c.swsp ra, 0x2c(sp)
200099e8 c.swsp s2, 0x20(sp)
200099ea addi a0, s1, 0x10
200099ee c.jalr a5
200099f0 c.swsp a0, 0x1c(sp)
200099f2 lw a5, 0x758(s0)
200099f6 addi a0, s1, 0x1c
200099fa lui s2, 0x20201
200099fe c.jalr a5
20009a00 c.swsp a0, 0x18(sp)
20009a02 lw a5, 0x6b8(s2)
20009a06 c.li a4, 0
20009a08 addi a3, zero, 0x199
20009a0c c.li a2, 3
20009a0e addi a0, zero, 0x100
20009a12 c.li a1, 0
20009a14 c.jalr a5
20009a16 lw a7, 0x6b8(s2)
20009a1a c.lwsp a5, 0x1c(sp)
20009a1c c.lwsp a6, 0x18(sp)
20009a1e addi a3, zero, 0x19a
20009a22 c.li a2, 3
20009a24 c.li a1, 0
20009a26 c.li a4, 2
20009a28 addi a0, zero, 0x100
20009a2c c.jalr a7
20009a2e lui a5, 0x20201

BASE 0x200099e2 0xb800c
200099d6 c.swsp s0, 0x28(sp)
200099d8 lui s0, 0x20201
200099dc lw a5, 0x758(s0)
200099e0 c.swsp s1, 0x24(sp)
200099e2 lui s1, 0xb800c
200099e6 c.swsp ra, 0x2c(sp)
200099e8 c.swsp s2, 0x20(sp)
200099ea addi a0, s1, 0x10
200099ee c.jalr a5
200099f0 c.swsp a0, 0x1c(sp)
200099f2 lw a5, 0x758(s0)
200099f6 addi a0, s1, 0x1c
200099fa lui s2, 0x20201
200099fe c.jalr a5
20009a00 c.swsp a0, 0x18(sp)
20009a02 lw a5, 0x6b8(s2)
20009a06 c.li a4, 0
20009a08 addi a3, zero, 0x199
20009a0c c.li a2, 3
20009a0e addi a0, zero, 0x100
20009a12 c.li a1, 0
20009a14 c.jalr a5
20009a16 lw a7, 0x6b8(s2)
20009a1a c.lwsp a5, 0x1c(sp)
20009a1c c.lwsp a6, 0x18(sp)
20009a1e addi a3, zero, 0x19a
20009a22 c.li a2, 3
20009a24 c.li a1, 0
20009a26 c.li a4, 2
20009a28 addi a0, zero, 0x100
20009a2c c.jalr a7
20009a2e lui a5, 0x20201
20009a32 lw s2, 0x6b8(s2)
20009a36 lw a5, 0x75c(a5)
20009a3a addi a0, s1, 0x14
20009a3e c.jalr a5
20009a40 lw a4, 0x758(s0)
20009a44 c.swsp a0, 0xc(sp)
20009a46 lui a0, 0xb8003
20009a4a addi a0, a0, 0x5c
20009a4e c.jalr a4
20009a50 c.lwsp a5, 0xc(sp)
20009a52 c.mv a6, a0
20009a54 c.li a4, 2
20009a56 addi a0, zero, 0x100
20009a5a addi a3, zero, 0x19b
20009a5e c.li a2, 3
20009a60 c.li a1, 0
20009a62 c.jalr s2
20009a64 c.lwsp ra, 0x2c(sp)
20009a66 c.lwsp s0, 0x28(sp)
20009a68 c.lwsp s1, 0x24(sp)
20009a6a c.lwsp s2, 0x20(sp)
20009a6c c.li a0, -1
20009a6e c.addi16sp sp, 0x30
20009a70 c.jr ra
20009a72 c.addi16sp sp, -0x30
20009a74 c.swsp s0, 0x28(sp)
20009a76 .byte 0x37, 0x14

BASE 0x20009a46 0xb8003
20009a3a addi a0, s1, 0x14
20009a3e c.jalr a5
20009a40 lw a4, 0x758(s0)
20009a44 c.swsp a0, 0xc(sp)
20009a46 lui a0, 0xb8003
20009a4a addi a0, a0, 0x5c
20009a4e c.jalr a4
20009a50 c.lwsp a5, 0xc(sp)
20009a52 c.mv a6, a0
20009a54 c.li a4, 2
20009a56 addi a0, zero, 0x100
20009a5a addi a3, zero, 0x19b
20009a5e c.li a2, 3
20009a60 c.li a1, 0
20009a62 c.jalr s2
20009a64 c.lwsp ra, 0x2c(sp)
20009a66 c.lwsp s0, 0x28(sp)
20009a68 c.lwsp s1, 0x24(sp)
20009a6a c.lwsp s2, 0x20(sp)
20009a6c c.li a0, -1
20009a6e c.addi16sp sp, 0x30
20009a70 c.jr ra
20009a72 c.addi16sp sp, -0x30
20009a74 c.swsp s0, 0x28(sp)
20009a76 lui s0, 0x20201
20009a7a lw a5, 0x6b8(s0)
20009a7e c.swsp s1, 0x24(sp)
20009a80 c.swsp s2, 0x20(sp)
20009a82 c.swsp s4, 0x18(sp)
20009a84 c.swsp s6, 0x10(sp)
20009a86 c.swsp s7, 0xc(sp)
20009a88 c.swsp ra, 0x2c(sp)
20009a8a c.swsp s3, 0x1c(sp)
20009a8c c.swsp s5, 0x14(sp)
20009a8e c.swsp s8, 8(sp)
20009a90 c.mv s1, a0
20009a92 c.mv s2, a1
20009a94 c.li a4, 0
20009a96 addi a3, zero, 0x156
20009a9a c.li a2, 5
20009a9c addi a0, zero, 0x100
20009aa0 c.li a1, 0
20009aa2 c.jalr a5
20009aa4 c.li s4, 0
20009aa6 c.li s6, 0x10
20009aa8 addi s7, zero, 0x5e
20009aac bltu s4, s2, 0x1c
20009ab0 c.lwsp ra, 0x2c(sp)
20009ab2 c.lwsp s0, 0x28(sp)
20009ab4 c.lwsp s1, 0x24(sp)
20009ab6 c.lwsp s2, 0x20(sp)
20009ab8 c.lwsp s3, 0x1c(sp)
20009aba c.lwsp s4, 0x18(sp)
20009abc c.lwsp s5, 0x14(sp)
20009abe c.lwsp s6, 0x10(sp)
20009ac0 c.lwsp s7, 0xc(sp)
20009ac2 c.lwsp s8, 8(sp)
20009ac4 c.addi16sp sp, 0x30
20009ac6 c.jr ra
20009ac8 lw a6, 0x6b8(s0)
20009acc c.mv a5, s1
20009ace c.li a4, 1
20009ad0 addi a3, zero, 0x157
20009ad4 c.li a2, 5
20009ad6 addi a0, zero, 0x100
20009ada c.li a1, 0

BASE 0x2000a3ea 0xb800c
2000a3de c.fld fs0, 0x40(s0)
2000a3e0 c.addi sp, -0x10
2000a3e2 lw a5, 0x750(a5)
2000a3e6 c.swsp s0, 8(sp)
2000a3e8 c.lui a1, 4
2000a3ea lui s0, 0xb800c
2000a3ee c.swsp ra, 0xc(sp)
2000a3f0 c.addi a1, -1
2000a3f2 addi a0, s0, 0x1c
2000a3f6 c.jalr a5
2000a3f8 lui a5, 0x20201
2000a3fc lw a5, 0x758(a5)
2000a400 addi a0, s0, 0x10
2000a404 c.jalr a5
2000a406 lui a5, 0x20201
2000a40a ori a1, a0, 0x10
2000a40e addi a0, s0, 0x10
2000a412 c.lwsp s0, 8(sp)
2000a414 c.lwsp ra, 0xc(sp)
2000a416 lw a5, 0x74c(a5)
2000a41a c.addi sp, 0x10
2000a41c c.jr a5
2000a41e c.sw a1, 0x54(a0)
2000a420 c.sw a2, 0x5c(a0)
2000a422 c.sw a3, 0x64(a0)
2000a424 c.sw a4, 0x6c(a0)
2000a426 c.bnez a3, 0x42
2000a428 lbu a4, 0xc(a0)
2000a42c c.li a5, 1
2000a42e beq a4, a5, 0x14
2000a432 lbu a4, 0xd(a0)
2000a436 beq a4, a5, 0xc
2000a43a lbu a4, 0xe(a0)
2000a43e bne a4, a5, 0x1e
2000a442 c.andi a2, 7
2000a444 c.sw a2, 0x20(a0)
2000a446 neg a2, a2
2000a44a c.andi a2, 7
2000a44c c.andi a1, 0xf
2000a44e c.sw a1, 0x24(a0)
2000a450 neg a1, a1
2000a454 c.andi a1, 0xf
2000a456 c.sw a2, 0x60(a0)
2000a458 c.sw a1, 0x58(a0)
2000a45a c.jr ra
2000a45c c.andi a2, 0xf
2000a45e c.sw a2, 0x20(a0)
2000a460 neg a2, a2
2000a464 c.andi a2, 0xf
2000a466 c.j -0x1a
2000a468 c.andi a2, 0xf
2000a46a c.andi a1, 7
2000a46c c.andi a3, 7
2000a46e c.andi a4, 7
2000a470 c.sw a2, 0x20(a0)
2000a472 c.sw a1, 0x24(a0)
2000a474 neg a2, a2
2000a478 neg a1, a1
2000a47c c.sw a3, 0x28(a0)
2000a47e c.sw a4, 0x2c(a0)

BASE 0x2000a4fc 0xb800d
2000a4f0 c.beqz a0, 0x2c
2000a4f2 lui s2, 0x20201
2000a4f6 lw a5, 0x74c(s2)
2000a4fa c.lwsp a1, 0xc(sp)
2000a4fc lui s1, 0xb800d
2000a500 addi a0, s1, 4
2000a504 c.jalr a5
2000a506 c.mv a1, s0
2000a508 c.lwsp s0, 0x18(sp)
2000a50a lw a5, 0x74c(s2)
2000a50e c.lwsp ra, 0x1c(sp)
2000a510 c.lwsp s2, 0x10(sp)
2000a512 addi a0, s1, 8
2000a516 c.lwsp s1, 0x14(sp)
2000a518 c.addi16sp sp, 0x20
2000a51a c.jr a5
2000a51c lui a5, 0x20201
2000a520 lw s0, 0x6b8(a5)
2000a524 lw a5, -0xdc(s2)
2000a528 c.mv a0, s1
2000a52a c.jalr a5
2000a52c c.mv a6, s0
2000a52e c.lwsp s0, 0x18(sp)
2000a530 c.lwsp ra, 0x1c(sp)
2000a532 c.lwsp s1, 0x14(sp)
2000a534 c.lwsp s2, 0x10(sp)
2000a536 c.mv a5, a0
2000a538 c.li a4, 1
2000a53a addi a3, zero, 0x179
2000a53e c.li a2, 3
2000a540 addi a0, zero, 0x100
2000a544 c.li a1, 0
2000a546 c.addi16sp sp, 0x20
2000a548 c.jr a6
2000a54a lui a5, 0x20201
2000a54e lw a5, 0x758(a5)
2000a552 c.addi sp, -0x10
2000a554 c.swsp ra, 0xc(sp)
2000a556 lui a0, 0xb800d
2000a55a c.jalr a5
2000a55c c.lwsp ra, 0xc(sp)
2000a55e andi a0, a0, 0xff
2000a562 c.addi sp, 0x10
2000a564 c.jr ra
2000a566 c.addi sp, -0x20
2000a568 c.swsp s0, 0x18(sp)
2000a56a c.swsp s1, 0x14(sp)
2000a56c c.swsp s3, 0xc(sp)
2000a56e c.swsp ra, 0x1c(sp)
2000a570 c.swsp s2, 0x10(sp)
2000a572 c.swsp s4, 8(sp)
2000a574 c.swsp s5, 4(sp)
2000a576 lui a5, 0x30000
2000a57a c.mv s1, a0
2000a57c c.mv s3, a1
2000a57e c.mv s0, a2
2000a580 bltu a2, a5, 0xa
2000a584 slli s0, a2, 3
2000a588 c.srli s0, 3
2000a58a lui s2, 0x100
2000a58e lui s5, 0x20202

BASE 0x2000a556 0xb800d
2000a54a lui a5, 0x20201
2000a54e lw a5, 0x758(a5)
2000a552 c.addi sp, -0x10
2000a554 c.swsp ra, 0xc(sp)
2000a556 lui a0, 0xb800d
2000a55a c.jalr a5
2000a55c c.lwsp ra, 0xc(sp)
2000a55e andi a0, a0, 0xff
2000a562 c.addi sp, 0x10
2000a564 c.jr ra
2000a566 c.addi sp, -0x20
2000a568 c.swsp s0, 0x18(sp)
2000a56a c.swsp s1, 0x14(sp)
2000a56c c.swsp s3, 0xc(sp)
2000a56e c.swsp ra, 0x1c(sp)
2000a570 c.swsp s2, 0x10(sp)
2000a572 c.swsp s4, 8(sp)
2000a574 c.swsp s5, 4(sp)
2000a576 lui a5, 0x30000
2000a57a c.mv s1, a0
2000a57c c.mv s3, a1
2000a57e c.mv s0, a2
2000a580 bltu a2, a5, 0xa
2000a584 slli s0, a2, 3
2000a588 c.srli s0, 3
2000a58a lui s2, 0x100
2000a58e lui s5, 0x20202
2000a592 lui s4, 0x20201
2000a596 lw a5, -0xe4(s5)
2000a59a c.mv a0, s1
2000a59c c.jalr a5
2000a59e c.beqz a0, 0x32
2000a5a0 lui s2, 0x20201
2000a5a4 lw a5, 0x74c(s2)
2000a5a8 lui s1, 0xb800c
2000a5ac c.mv a1, s3
2000a5ae addi a0, s1, 4
2000a5b2 c.jalr a5
2000a5b4 c.mv a1, s0
2000a5b6 c.lwsp s0, 0x18(sp)
2000a5b8 lw a5, 0x74c(s2)
2000a5bc c.lwsp ra, 0x1c(sp)
2000a5be c.lwsp s2, 0x10(sp)
2000a5c0 c.lwsp s3, 0xc(sp)
2000a5c2 c.lwsp s4, 8(sp)
2000a5c4 c.lwsp s5, 4(sp)
2000a5c6 addi a0, s1, 8
2000a5ca c.lwsp s1, 0x14(sp)
2000a5cc c.addi16sp sp, 0x20
2000a5ce c.jr a5
2000a5d0 lw a5, 0x4c8(s1)
2000a5d4 c.beqz a5, 8
2000a5d6 c.mv a0, s1
2000a5d8 c.jalr a5
2000a5da c.j -0x44
2000a5dc lw a6, 0x6b8(s4)
2000a5e0 c.li a5, 0
2000a5e2 c.li a4, 1
2000a5e4 addi a3, zero, 0x17b
2000a5e8 c.li a2, 3
2000a5ea .byte 0x13, 0x05

BASE 0x2000a5a8 0xb800c
2000a59c c.jalr a5
2000a59e c.beqz a0, 0x32
2000a5a0 lui s2, 0x20201
2000a5a4 lw a5, 0x74c(s2)
2000a5a8 lui s1, 0xb800c
2000a5ac c.mv a1, s3
2000a5ae addi a0, s1, 4
2000a5b2 c.jalr a5
2000a5b4 c.mv a1, s0
2000a5b6 c.lwsp s0, 0x18(sp)
2000a5b8 lw a5, 0x74c(s2)
2000a5bc c.lwsp ra, 0x1c(sp)
2000a5be c.lwsp s2, 0x10(sp)
2000a5c0 c.lwsp s3, 0xc(sp)
2000a5c2 c.lwsp s4, 8(sp)
2000a5c4 c.lwsp s5, 4(sp)
2000a5c6 addi a0, s1, 8
2000a5ca c.lwsp s1, 0x14(sp)
2000a5cc c.addi16sp sp, 0x20
2000a5ce c.jr a5
2000a5d0 lw a5, 0x4c8(s1)
2000a5d4 c.beqz a5, 8
2000a5d6 c.mv a0, s1
2000a5d8 c.jalr a5
2000a5da c.j -0x44
2000a5dc lw a6, 0x6b8(s4)
2000a5e0 c.li a5, 0
2000a5e2 c.li a4, 1
2000a5e4 addi a3, zero, 0x17b
2000a5e8 c.li a2, 3
2000a5ea addi a0, zero, 0x100
2000a5ee c.li a1, 0
2000a5f0 c.addi s2, -1
2000a5f2 c.jalr a6
2000a5f4 bnez s2, -0x5e
2000a5f8 c.lwsp ra, 0x1c(sp)
2000a5fa c.lwsp s0, 0x18(sp)
2000a5fc c.lwsp s1, 0x14(sp)
2000a5fe c.lwsp s2, 0x10(sp)
2000a600 c.lwsp s3, 0xc(sp)
2000a602 c.lwsp s4, 8(sp)
2000a604 c.lwsp s5, 4(sp)
2000a606 c.addi16sp sp, 0x20
2000a608 c.jr ra
2000a60a lui a5, 0x20201
2000a60e lw a5, 0x758(a5)
2000a612 c.addi sp, -0x10
2000a614 c.swsp ra, 0xc(sp)
2000a616 lui a0, 0xb800c
2000a61a c.jalr a5
2000a61c c.lwsp ra, 0xc(sp)
2000a61e andi a0, a0, 0xff
2000a622 c.addi sp, 0x10
2000a624 c.jr ra
2000a626 c.lw a5, 0x64(a0)
2000a628 c.addi sp, -0x20
2000a62a c.swsp s0, 0x18(sp)
2000a62c c.swsp s2, 0x10(sp)
2000a62e c.swsp s3, 0xc(sp)
2000a630 c.swsp s4, 8(sp)
2000a632 c.swsp ra, 0x1c(sp)
2000a634 c.swsp s1, 0x14(sp)
2000a636 c.swsp s5, 4(sp)
2000a638 c.swsp s6, 0(sp)
2000a63a c.mv s0, a0
2000a63c c.mv s3, a1

BASE 0x2000a616 0xb800c
2000a60a lui a5, 0x20201
2000a60e lw a5, 0x758(a5)
2000a612 c.addi sp, -0x10
2000a614 c.swsp ra, 0xc(sp)
2000a616 lui a0, 0xb800c
2000a61a c.jalr a5
2000a61c c.lwsp ra, 0xc(sp)
2000a61e andi a0, a0, 0xff
2000a622 c.addi sp, 0x10
2000a624 c.jr ra
2000a626 c.lw a5, 0x64(a0)
2000a628 c.addi sp, -0x20
2000a62a c.swsp s0, 0x18(sp)
2000a62c c.swsp s2, 0x10(sp)
2000a62e c.swsp s3, 0xc(sp)
2000a630 c.swsp s4, 8(sp)
2000a632 c.swsp ra, 0x1c(sp)
2000a634 c.swsp s1, 0x14(sp)
2000a636 c.swsp s5, 4(sp)
2000a638 c.swsp s6, 0(sp)
2000a63a c.mv s0, a0
2000a63c c.mv s3, a1
2000a63e c.mv s4, a2
2000a640 lui s2, 0x23000
2000a644 c.bnez a5, 0x2a
2000a646 lbu a5, 0x3d(a0)
2000a64a c.beqz a5, 0x18
2000a64c lbu a5, 0x18(a0)
2000a650 lui s2, 0x23400
2000a654 addi a5, a5, -0x30
2000a658 andi a5, a5, 0xef
2000a65c c.bnez a5, 6
2000a65e lui s2, 0x23c00
2000a662 lui a5, 0x20202
2000a666 lw a5, -0xec(a5)
2000a66a c.mv a0, s0
2000a66c c.jalr a5
2000a66e lbu a5, 2(s0)
2000a672 addi s5, s0, 0x280
2000a676 c.beqz a5, 0x24
2000a678 lui a5, 0x20202
2000a67c lw a5, -0x3c8(a5)
2000a680 lui a2, 0x20209
2000a684 c.li a1, 5
2000a686 addi a0, zero, 0x100
2000a68a addi a2, a2, -0x580
2000a68e c.jalr a5
2000a690 addi a1, zero, 0x20
2000a694 c.mv a0, s5
2000a696 jal -0xc24
2000a69a lui s1, 0x20202
2000a69e lw a5, -0xe0(s1)
2000a6a2 c.mv a2, s5
2000a6a4 c.mv a1, s2
2000a6a6 c.mv a0, s0
2000a6a8 c.jalr a5
2000a6aa c.lw a4, 4(s0)

BASE 0x2000ac10 0xb800c
2000ac04 c.li s10, 1
2000ac06 c.beqz a5, 4
2000ac08 c.jr a5
2000ac0a c.addi16sp sp, -0x30
2000ac0c c.swsp s0, 0x28(sp)
2000ac0e c.swsp s1, 0x24(sp)
2000ac10 lui s0, 0xb800c
2000ac14 lui s1, 0xf4
2000ac18 c.swsp s2, 0x20(sp)
2000ac1a c.swsp s3, 0x1c(sp)
2000ac1c c.swsp s4, 0x18(sp)
2000ac1e c.swsp s5, 0x14(sp)
2000ac20 c.swsp ra, 0x2c(sp)
2000ac22 addi s1, s1, 0x240
2000ac26 lui s3, 0x20201
2000ac2a addi s4, s0, 0x10
2000ac2e lui s2, 0x20201
2000ac32 addi s5, s0, 0x1c
2000ac36 lw a5, 0x758(s3)
2000ac3a c.mv a0, s4
2000ac3c c.jalr a5
2000ac3e c.andi a0, 0x10
2000ac40 c.bnez a0, 0x9c
2000ac42 lw a5, 0x75c(s2)
2000ac46 c.mv a0, s5
2000ac48 c.jalr a5
2000ac4a c.swsp a0, 8(sp)
2000ac4c c.lwsp a5, 8(sp)
2000ac4e c.beqz a5, 0x30
2000ac50 lui a5, 0x20201
2000ac54 lw a6, 0x6b8(a5)
2000ac58 c.lwsp a5, 8(sp)
2000ac5a c.li a4, 1
2000ac5c addi a3, zero, 0x184
2000ac60 c.li a2, 3
2000ac62 addi a0, zero, 0x100
2000ac66 c.li a1, 0
2000ac68 c.jalr a6
2000ac6a c.li a0, -1
2000ac6c c.lwsp ra, 0x2c(sp)
2000ac6e c.lwsp s0, 0x28(sp)
2000ac70 c.lwsp s1, 0x24(sp)
2000ac72 c.lwsp s2, 0x20(sp)
2000ac74 c.lwsp s3, 0x1c(sp)
2000ac76 c.lwsp s4, 0x18(sp)
2000ac78 c.lwsp s5, 0x14(sp)
2000ac7a c.addi16sp sp, 0x30
2000ac7c c.jr ra
2000ac7e c.addi s1, -1
2000ac80 c.bnez s1, -0x4a
2000ac82 lw a5, 0x758(s3)
2000ac86 addi a0, s0, 0x10
2000ac8a lui s1, 0x20201
2000ac8e c.jalr a5
2000ac90 c.swsp a0, 0xc(sp)
2000ac92 lw a5, 0x75c(s2)
2000ac96 addi a0, s0, 0x1c
2000ac9a c.jalr a5
2000ac9c c.swsp a0, 8(sp)
2000ac9e lw a7, 0x6b8(s1)
2000aca2 c.lwsp a5, 0xc(sp)
2000aca4 c.lwsp a6, 8(sp)

BASE 0x2000dce2 0xb800c
2000dcd6 lui a5, 0x20201
2000dcda c.addi sp, -0x10
2000dcdc lw a5, 0x758(a5)
2000dce0 c.swsp s0, 8(sp)
2000dce2 lui s0, 0xb800c
2000dce6 c.swsp ra, 0xc(sp)
2000dce8 addi a0, s0, 0x10
2000dcec c.jalr a5
2000dcee lui a5, 0x20201
2000dcf2 lw a5, 0x74c(a5)
2000dcf6 ori a1, a0, 0x10
2000dcfa addi a0, s0, 0x10
2000dcfe c.jalr a5
2000dd00 c.lwsp ra, 0xc(sp)
2000dd02 c.lwsp s0, 8(sp)
2000dd04 lui a5, 0x20203
2000dd08 c.li a4, 1
2000dd0a sw a4, 0x600(a5)
2000dd0e c.addi sp, 0x10
2000dd10 c.jr ra
2000dd12 c.addi sp, -0x20
2000dd14 c.swsp s0, 0x18(sp)
2000dd16 lui s0, 0x20201
2000dd1a lw a5, 0x758(s0)
2000dd1e c.swsp ra, 0x1c(sp)
2000dd20 c.swsp s1, 0x14(sp)
2000dd22 c.swsp s2, 0x10(sp)
2000dd24 c.swsp s3, 0xc(sp)
2000dd26 c.swsp s4, 8(sp)
2000dd28 c.mv s3, a0
2000dd2a lui a0, 0xb800c
2000dd2e c.jalr a5
2000dd30 lui s2, 0x20201
2000dd34 lw a5, 0x74c(s2)
2000dd38 lui s4, 0x1000
2000dd3c or a1, a0, s4
2000dd40 lui a0, 0xb800c
2000dd44 c.jalr a5
2000dd46 lw a5, 0x758(s0)
2000dd4a lui s1, 0xb800c
2000dd4e addi a0, s1, 0x10
2000dd52 c.jalr a5
2000dd54 lw a5, 0x74c(s2)
2000dd58 ori a1, a0, 0x10
2000dd5c addi a0, s1, 0x10
2000dd60 c.jalr a5
2000dd62 lw a5, 0x758(s0)
2000dd66 lui a0, 0xb800d
2000dd6a c.jalr a5
2000dd6c lw a5, 0x74c(s2)
2000dd70 or a1, a0, s4
2000dd74 lui a0, 0xb800d

BASE 0x2000dd2a 0xb800c
2000dd1e c.swsp ra, 0x1c(sp)
2000dd20 c.swsp s1, 0x14(sp)
2000dd22 c.swsp s2, 0x10(sp)
2000dd24 c.swsp s3, 0xc(sp)
2000dd26 c.swsp s4, 8(sp)
2000dd28 c.mv s3, a0
2000dd2a lui a0, 0xb800c
2000dd2e c.jalr a5
2000dd30 lui s2, 0x20201
2000dd34 lw a5, 0x74c(s2)
2000dd38 lui s4, 0x1000
2000dd3c or a1, a0, s4
2000dd40 lui a0, 0xb800c
2000dd44 c.jalr a5
2000dd46 lw a5, 0x758(s0)
2000dd4a lui s1, 0xb800c
2000dd4e addi a0, s1, 0x10
2000dd52 c.jalr a5
2000dd54 lw a5, 0x74c(s2)
2000dd58 ori a1, a0, 0x10
2000dd5c addi a0, s1, 0x10
2000dd60 c.jalr a5
2000dd62 lw a5, 0x758(s0)
2000dd66 lui a0, 0xb800d
2000dd6a c.jalr a5
2000dd6c lw a5, 0x74c(s2)
2000dd70 or a1, a0, s4
2000dd74 lui a0, 0xb800d
2000dd78 c.jalr a5
2000dd7a lw a5, 0x758(s0)
2000dd7e addi a0, s1, 0x14
2000dd82 lui s0, 0x20203
2000dd86 c.jalr a5
2000dd88 addi s0, s0, 0x600
2000dd8c beqz s3, 0x38
2000dd90 lw a5, 0x74c(s2)
2000dd94 andi a1, a0, -2
2000dd98 ori a1, a1, 0x80
2000dd9c addi a0, s1, 0x14
2000dda0 c.jalr a5
2000dda2 c.li a5, 1
2000dda4 sb a5, 0x41(s0)
2000dda8 lui a5, 0x2000a
2000ddac addi a5, a5, -0x64e
2000ddb0 sw a5, 0x510(s0)
2000ddb4 c.lwsp ra, 0x1c(sp)
2000ddb6 c.lwsp s0, 0x18(sp)
2000ddb8 c.lwsp s1, 0x14(sp)
2000ddba c.lwsp s2, 0x10(sp)
2000ddbc c.lwsp s3, 0xc(sp)
2000ddbe c.lwsp s4, 8(sp)

BASE 0x2000dd40 0xb800c
2000dd34 lw a5, 0x74c(s2)
2000dd38 lui s4, 0x1000
2000dd3c or a1, a0, s4
2000dd40 lui a0, 0xb800c
2000dd44 c.jalr a5
2000dd46 lw a5, 0x758(s0)
2000dd4a lui s1, 0xb800c
2000dd4e addi a0, s1, 0x10
2000dd52 c.jalr a5
2000dd54 lw a5, 0x74c(s2)
2000dd58 ori a1, a0, 0x10
2000dd5c addi a0, s1, 0x10
2000dd60 c.jalr a5
2000dd62 lw a5, 0x758(s0)
2000dd66 lui a0, 0xb800d
2000dd6a c.jalr a5
2000dd6c lw a5, 0x74c(s2)
2000dd70 or a1, a0, s4
2000dd74 lui a0, 0xb800d
2000dd78 c.jalr a5
2000dd7a lw a5, 0x758(s0)
2000dd7e addi a0, s1, 0x14
2000dd82 lui s0, 0x20203
2000dd86 c.jalr a5
2000dd88 addi s0, s0, 0x600
2000dd8c beqz s3, 0x38
2000dd90 lw a5, 0x74c(s2)
2000dd94 andi a1, a0, -2
2000dd98 ori a1, a1, 0x80
2000dd9c addi a0, s1, 0x14
2000dda0 c.jalr a5
2000dda2 c.li a5, 1
2000dda4 sb a5, 0x41(s0)
2000dda8 lui a5, 0x2000a
2000ddac addi a5, a5, -0x64e
2000ddb0 sw a5, 0x510(s0)
2000ddb4 c.lwsp ra, 0x1c(sp)
2000ddb6 c.lwsp s0, 0x18(sp)
2000ddb8 c.lwsp s1, 0x14(sp)
2000ddba c.lwsp s2, 0x10(sp)
2000ddbc c.lwsp s3, 0xc(sp)
2000ddbe c.lwsp s4, 8(sp)
2000ddc0 c.addi16sp sp, 0x20
2000ddc2 c.jr ra
2000ddc4 lbu a5, 0x41(s0)
2000ddc8 c.beqz a5, 0x10
2000ddca lw a5, 0x74c(s2)
2000ddce ori a1, a0, 1
2000ddd2 addi a0, s1, 0x14

BASE 0x2000dd4a 0xb800c
2000dd3e c.addi sp, 0x11
2000dd40 lui a0, 0xb800c
2000dd44 c.jalr a5
2000dd46 lw a5, 0x758(s0)
2000dd4a lui s1, 0xb800c
2000dd4e addi a0, s1, 0x10
2000dd52 c.jalr a5
2000dd54 lw a5, 0x74c(s2)
2000dd58 ori a1, a0, 0x10
2000dd5c addi a0, s1, 0x10
2000dd60 c.jalr a5
2000dd62 lw a5, 0x758(s0)
2000dd66 lui a0, 0xb800d
2000dd6a c.jalr a5
2000dd6c lw a5, 0x74c(s2)
2000dd70 or a1, a0, s4
2000dd74 lui a0, 0xb800d
2000dd78 c.jalr a5
2000dd7a lw a5, 0x758(s0)
2000dd7e addi a0, s1, 0x14
2000dd82 lui s0, 0x20203
2000dd86 c.jalr a5
2000dd88 addi s0, s0, 0x600
2000dd8c beqz s3, 0x38
2000dd90 lw a5, 0x74c(s2)
2000dd94 andi a1, a0, -2
2000dd98 ori a1, a1, 0x80
2000dd9c addi a0, s1, 0x14
2000dda0 c.jalr a5
2000dda2 c.li a5, 1
2000dda4 sb a5, 0x41(s0)
2000dda8 lui a5, 0x2000a
2000ddac addi a5, a5, -0x64e
2000ddb0 sw a5, 0x510(s0)
2000ddb4 c.lwsp ra, 0x1c(sp)
2000ddb6 c.lwsp s0, 0x18(sp)
2000ddb8 c.lwsp s1, 0x14(sp)
2000ddba c.lwsp s2, 0x10(sp)
2000ddbc c.lwsp s3, 0xc(sp)
2000ddbe c.lwsp s4, 8(sp)
2000ddc0 c.addi16sp sp, 0x20
2000ddc2 c.jr ra
2000ddc4 lbu a5, 0x41(s0)
2000ddc8 c.beqz a5, 0x10
2000ddca lw a5, 0x74c(s2)
2000ddce ori a1, a0, 1
2000ddd2 addi a0, s1, 0x14
2000ddd6 c.jalr a5
2000ddd8 sb zero, 0x41(s0)
2000dddc sw zero, 0x510(s0)

BASE 0x2000dd66 0xb800d
2000dd5a c.addi sp, 1
2000dd5c addi a0, s1, 0x10
2000dd60 c.jalr a5
2000dd62 lw a5, 0x758(s0)
2000dd66 lui a0, 0xb800d
2000dd6a c.jalr a5
2000dd6c lw a5, 0x74c(s2)
2000dd70 or a1, a0, s4
2000dd74 lui a0, 0xb800d
2000dd78 c.jalr a5
2000dd7a lw a5, 0x758(s0)
2000dd7e addi a0, s1, 0x14
2000dd82 lui s0, 0x20203
2000dd86 c.jalr a5
2000dd88 addi s0, s0, 0x600
2000dd8c beqz s3, 0x38
2000dd90 lw a5, 0x74c(s2)
2000dd94 andi a1, a0, -2
2000dd98 ori a1, a1, 0x80
2000dd9c addi a0, s1, 0x14
2000dda0 c.jalr a5
2000dda2 c.li a5, 1
2000dda4 sb a5, 0x41(s0)
2000dda8 lui a5, 0x2000a
2000ddac addi a5, a5, -0x64e
2000ddb0 sw a5, 0x510(s0)
2000ddb4 c.lwsp ra, 0x1c(sp)
2000ddb6 c.lwsp s0, 0x18(sp)
2000ddb8 c.lwsp s1, 0x14(sp)
2000ddba c.lwsp s2, 0x10(sp)
2000ddbc c.lwsp s3, 0xc(sp)
2000ddbe c.lwsp s4, 8(sp)
2000ddc0 c.addi16sp sp, 0x20
2000ddc2 c.jr ra
2000ddc4 lbu a5, 0x41(s0)
2000ddc8 c.beqz a5, 0x10
2000ddca lw a5, 0x74c(s2)
2000ddce ori a1, a0, 1
2000ddd2 addi a0, s1, 0x14
2000ddd6 c.jalr a5
2000ddd8 sb zero, 0x41(s0)
2000dddc sw zero, 0x510(s0)
2000dde0 c.j -0x2c
2000dde2 c.addi sp, -0x10
2000dde4 c.swsp s1, 4(sp)
2000dde6 lui s1, 0x20201
2000ddea lw a5, 0x74c(s1)
2000ddee c.swsp s0, 8(sp)
2000ddf0 lui s0, 0xb800c
2000ddf4 c.swsp ra, 0xc(sp)
2000ddf6 c.swsp s2, 0(sp)
2000ddf8 c.li a1, 0
2000ddfa .byte 0x13, 0x05

BASE 0x2000dd74 0xb800d
2000dd68 c.fsd fs0, 0x30(s0)
2000dd6a c.jalr a5
2000dd6c lw a5, 0x74c(s2)
2000dd70 or a1, a0, s4
2000dd74 lui a0, 0xb800d
2000dd78 c.jalr a5
2000dd7a lw a5, 0x758(s0)
2000dd7e addi a0, s1, 0x14
2000dd82 lui s0, 0x20203
2000dd86 c.jalr a5
2000dd88 addi s0, s0, 0x600
2000dd8c beqz s3, 0x38
2000dd90 lw a5, 0x74c(s2)
2000dd94 andi a1, a0, -2
2000dd98 ori a1, a1, 0x80
2000dd9c addi a0, s1, 0x14
2000dda0 c.jalr a5
2000dda2 c.li a5, 1
2000dda4 sb a5, 0x41(s0)
2000dda8 lui a5, 0x2000a
2000ddac addi a5, a5, -0x64e
2000ddb0 sw a5, 0x510(s0)
2000ddb4 c.lwsp ra, 0x1c(sp)
2000ddb6 c.lwsp s0, 0x18(sp)
2000ddb8 c.lwsp s1, 0x14(sp)
2000ddba c.lwsp s2, 0x10(sp)
2000ddbc c.lwsp s3, 0xc(sp)
2000ddbe c.lwsp s4, 8(sp)
2000ddc0 c.addi16sp sp, 0x20
2000ddc2 c.jr ra
2000ddc4 lbu a5, 0x41(s0)
2000ddc8 c.beqz a5, 0x10
2000ddca lw a5, 0x74c(s2)
2000ddce ori a1, a0, 1
2000ddd2 addi a0, s1, 0x14
2000ddd6 c.jalr a5
2000ddd8 sb zero, 0x41(s0)
2000dddc sw zero, 0x510(s0)
2000dde0 c.j -0x2c
2000dde2 c.addi sp, -0x10
2000dde4 c.swsp s1, 4(sp)
2000dde6 lui s1, 0x20201
2000ddea lw a5, 0x74c(s1)
2000ddee c.swsp s0, 8(sp)
2000ddf0 lui s0, 0xb800c
2000ddf4 c.swsp ra, 0xc(sp)
2000ddf6 c.swsp s2, 0(sp)
2000ddf8 c.li a1, 0
2000ddfa addi a0, s0, 0x10
2000ddfe c.jalr a5
2000de00 lui s2, 0x20201
2000de04 lw a5, 0x758(s2)
2000de08 .byte 0x13, 0x05

BASE 0x2000ddf0 0xb800c
2000dde4 c.swsp s1, 4(sp)
2000dde6 lui s1, 0x20201
2000ddea lw a5, 0x74c(s1)
2000ddee c.swsp s0, 8(sp)
2000ddf0 lui s0, 0xb800c
2000ddf4 c.swsp ra, 0xc(sp)
2000ddf6 c.swsp s2, 0(sp)
2000ddf8 c.li a1, 0
2000ddfa addi a0, s0, 0x10
2000ddfe c.jalr a5
2000de00 lui s2, 0x20201
2000de04 lw a5, 0x758(s2)
2000de08 addi a0, s0, 0x10
2000de0c c.jalr a5
2000de0e lw a5, 0x74c(s1)
2000de12 ori a1, a0, 1
2000de16 addi a0, s0, 0x10
2000de1a c.jalr a5
2000de1c lw a5, 0x74c(s1)
2000de20 c.li a1, 0
2000de22 addi a0, s0, 0x30
2000de26 c.jalr a5
2000de28 lw a5, 0x758(s2)
2000de2c addi a0, s0, 0x30
2000de30 c.jalr a5
2000de32 lui a1, 0xffc10
2000de36 lw a4, 0x74c(s1)
2000de3a c.addi a1, -1
2000de3c lui a5, 0x100
2000de40 addi a5, a5, 0x61e
2000de44 c.and a1, a0
2000de46 c.or a1, a5
2000de48 addi a0, s0, 0x30
2000de4c c.jalr a4
2000de4e lw a5, 0x74c(s1)
2000de52 c.li a1, 0
2000de54 addi a0, s0, 0x18
2000de58 c.jalr a5
2000de5a lw a5, 0x758(s2)
2000de5e addi a0, s0, 0x18
2000de62 c.jalr a5
2000de64 lui a1, 0x1010
2000de68 c.or a1, a0
2000de6a addi a0, s0, 0x18
2000de6e c.lwsp s0, 8(sp)
2000de70 lw a5, 0x74c(s1)
2000de74 c.lwsp ra, 0xc(sp)
2000de76 c.lwsp s1, 4(sp)
2000de78 c.lwsp s2, 0(sp)
2000de7a c.addi sp, 0x10
2000de7c c.jr a5
2000de7e c.addi sp, -0x10
2000de80 lui a4, 0x20201
2000de84 .byte 0xb7, 0x17

BASE 0x200104fa 0xb8005
200104ee c.li a4, 1
200104f0 c.jalr a6
200104f2 lui s2, 0x20201
200104f6 lw a5, 0x758(s2)
200104fa lui s8, 0xb8005
200104fe addi a0, s8, 0x130
20010502 c.jalr a5
20010504 lw a5, 0x758(s2)
20010508 c.mv s0, a0
2001050a addi a0, s8, 0x100
2001050e c.jalr a5
20010510 lw a5, 0x758(s2)
20010514 c.mv s7, a0
20010516 addi a0, s8, 0x108
2001051a c.jalr a5
2001051c andi s0, s0, 0xff
20010520 addi a3, zero, 0x22
20010524 bltu a3, s0, 0x2a
20010528 addi a3, zero, 0x20
2001052c c.mv a5, a0
2001052e bltu a3, s0, 0x5e
20010532 c.li a3, 1
20010534 beq s0, a3, 0x58
20010538 lw a6, 0x6b8(s1)
2001053c c.mv a5, s0
2001053e c.li a4, 1
20010540 addi a3, zero, 0x118
20010544 c.li a2, 2
20010546 c.lui a0, 1
20010548 c.li a1, 0
2001054a c.jalr a6
2001054c c.j 0xc
2001054e addi a5, s0, -0x38
20010552 c.li a3, 4
20010554 bltu a3, a5, -0x1c
20010558 c.li s9, 9
2001055a c.li s0, 0
2001055c lw a5, 0x758(s2)
20010560 lui a0, 0xb8005
20010564 addi a0, a0, 0x200
20010568 c.jalr a5
2001056a andi a5, s7, 0xff
2001056e addi a4, a5, -1
20010572 c.li a3, 8
20010574 lui s7, 0x20201
20010578 bltu a3, a4, 0x2e0
2001057c lui a3, 0x20208
20010580 c.slli a4, 2
20010582 addi a3, a3, 0x6dc
20010586 c.add a4, a3
20010588 c.lw a4, 0(a4)
2001058a c.jr a4
2001058c c.li s9, 7
2001058e c.beqz a5, 0x56

BASE 0x20010560 0xb8005
20010554 bltu a3, a5, -0x1c
20010558 c.li s9, 9
2001055a c.li s0, 0
2001055c lw a5, 0x758(s2)
20010560 lui a0, 0xb8005
20010564 addi a0, a0, 0x200
20010568 c.jalr a5
2001056a andi a5, s7, 0xff
2001056e addi a4, a5, -1
20010572 c.li a3, 8
20010574 lui s7, 0x20201
20010578 bltu a3, a4, 0x2e0
2001057c lui a3, 0x20208
20010580 c.slli a4, 2
20010582 addi a3, a3, 0x6dc
20010586 c.add a4, a3
20010588 c.lw a4, 0(a4)
2001058a c.jr a4
2001058c c.li s9, 7
2001058e c.beqz a5, 0x56
20010590 addi a4, zero, 0x20
20010594 c.li s9, 1
20010596 beq a5, a4, 0x4e
2001059a andi a4, a5, 0xf0
2001059e addi a3, zero, 0x30
200105a2 c.li s9, 4
200105a4 beq a4, a3, 0x40
200105a8 c.li a3, 0x10
200105aa c.li s9, 3
200105ac beq a4, a3, 0x38
200105b0 addi a3, zero, 0x40
200105b4 c.li s9, 5
200105b6 beq a4, a3, 0x2e
200105ba andi a4, a5, 0xc0
200105be addi a3, zero, 0xc0
200105c2 c.li s9, 8
200105c4 beq a4, a3, 0x20
200105c8 andi a4, a5, 0xf
200105cc c.li s9, 2
200105ce c.bnez a4, 0x16
200105d0 lw a6, 0x6b8(s1)
200105d4 c.li a4, 1
200105d6 addi a3, zero, 0x117
200105da c.li a2, 2
200105dc c.lui a0, 1
200105de c.li a1, 0
200105e0 c.jalr a6
200105e2 c.li s9, 9
200105e4 c.li s0, 1
200105e6 c.j -0x8a
200105e8 lw a5, 0x6b8(s1)
200105ec c.li a4, 0
200105ee addi a3, zero, 0x119
200105f2 c.li a2, 2
200105f4 c.lui a0, 1

BASE 0x20010612 0xb8005
20010606 c.fsw fs0, 0x38(a4)
20010608 lw a5, 0x74c(s7)
2001060c c.addi s8, -1
2001060e and s8, a0, s8
20010612 lui s10, 0xb8005
20010616 c.mv a1, s8
20010618 addi a0, s10, 0x200
2001061c c.jalr a5
2001061e lw a5, 0x74c(s7)
20010622 lui a1, 0x1000
20010626 or a1, s8, a1
2001062a addi a0, s10, 0x200
2001062e c.jalr a5
20010630 lw a5, 0x758(s2)
20010634 lui a0, 0xb8005
20010638 addi a0, a0, 0x10c
2001063c c.jalr a5
2001063e c.li a4, 2
20010640 c.mv s8, a0
20010642 c.li a5, 0
20010644 bne s0, a4, 0x92
20010648 lui a4, 0x10000
2001064c c.addi a4, -2
2001064e bgeu a4, a0, 0x88
20010652 lui a4, 0x18002
20010656 c.li a5, 0xa
20010658 bltu a0, a4, 0x7e
2001065c lui a4, 0x18003
20010660 c.li a5, 1
20010662 bltu a0, a4, 0x74
20010666 lui a4, 0x18004
2001066a c.li a5, 2
2001066c bltu a0, a4, 0x6a
20010670 lui a4, 0x18006
20010674 c.li a5, 0xa
20010676 bltu a0, a4, 0x60
2001067a lui a4, 0x18007
2001067e c.li a5, 3
20010680 bltu a0, a4, 0x56
20010684 lui a4, 0x18008
20010688 c.li a5, 4
2001068a bltu a0, a4, 0x4c
2001068e lui a4, 0x1800c
20010692 c.li a5, 5
20010694 bltu a0, a4, 0x42
20010698 lui a4, 0x18010
2001069c c.li a5, 6
2001069e bltu a0, a4, 0x38
200106a2 lui a4, 0x18600
200106a6 c.li a5, 0xa

BASE 0x20010634 0xb8005
20010628 c.addi4spn a5, sp, 0x48
2001062a addi a0, s10, 0x200
2001062e c.jalr a5
20010630 lw a5, 0x758(s2)
20010634 lui a0, 0xb8005
20010638 addi a0, a0, 0x10c
2001063c c.jalr a5
2001063e c.li a4, 2
20010640 c.mv s8, a0
20010642 c.li a5, 0
20010644 bne s0, a4, 0x92
20010648 lui a4, 0x10000
2001064c c.addi a4, -2
2001064e bgeu a4, a0, 0x88
20010652 lui a4, 0x18002
20010656 c.li a5, 0xa
20010658 bltu a0, a4, 0x7e
2001065c lui a4, 0x18003
20010660 c.li a5, 1
20010662 bltu a0, a4, 0x74
20010666 lui a4, 0x18004
2001066a c.li a5, 2
2001066c bltu a0, a4, 0x6a
20010670 lui a4, 0x18006
20010674 c.li a5, 0xa
20010676 bltu a0, a4, 0x60
2001067a lui a4, 0x18007
2001067e c.li a5, 3
20010680 bltu a0, a4, 0x56
20010684 lui a4, 0x18008
20010688 c.li a5, 4
2001068a bltu a0, a4, 0x4c
2001068e lui a4, 0x1800c
20010692 c.li a5, 5
20010694 bltu a0, a4, 0x42
20010698 lui a4, 0x18010
2001069c c.li a5, 6
2001069e bltu a0, a4, 0x38
200106a2 lui a4, 0x18600
200106a6 c.li a5, 0xa
200106a8 bltu a0, a4, 0x2e
200106ac lui a4, 0x18601
200106b0 c.li a5, 7
200106b2 bltu a0, a4, 0x24
200106b6 lui a4, 0x18608
200106ba c.li a5, 0xa
200106bc bltu a0, a4, 0x1a
200106c0 lui a4, 0x1860c
200106c4 c.li a5, 8
200106c6 bltu a0, a4, 0x10

BASE 0x20010700 0xb8005
200106f4 c.addi4spn a3, sp, 0xc0
200106f6 c.mv a1, s8
200106f8 c.mv a0, s9
200106fa c.jalr a5
200106fc lw a5, 0x74c(s7)
20010700 lui s7, 0xb8005
20010704 c.li a1, 1
20010706 addi a0, s7, 0x13c
2001070a c.jalr a5
2001070c lw a5, 0x758(s2)
20010710 addi a0, s7, 0x130
20010714 c.jalr a5
20010716 andi a0, a0, 0xff
2001071a c.beqz a0, 0x14
2001071c lw a5, 0x6b8(s1)
20010720 c.li a4, 0
20010722 addi a3, zero, 0x121
20010726 c.li a2, 2
20010728 c.lui a0, 1
2001072a c.li a1, 0
2001072c c.jalr a5
2001072e lui s1, 0x20204
20010732 addi s1, s1, -0x480
20010736 lui a5, 0x20201
2001073a lw a5, 0x5a0(a5)
2001073e c.lw a0, 0(s1)
20010740 c.mv a2, s8
20010742 c.mv a1, s9
20010744 c.jalr a5
20010746 c.lw a5, 0(s1)
20010748 lui s2, 0x20201
2001074c addi a0, zero, 0x1f0
20010750 c.addi a5, 1
20010752 c.sw a5, 0(s1)
20010754 lw a5, 0x744(s2)
20010758 c.jalr a5
2001075a c.andi a0, 1
2001075c c.beqz a0, 0x10
2001075e lui a5, 0x20201
20010762 lw a5, 0x59c(a5)
20010766 lw a0, 0x5e8(s3)
2001076a c.jalr a5
2001076c c.lui a5, 2
2001076e andi a4, s0, 0x7f0
20010772 c.or a4, a5
20010774 c.addi a5, 0x10
20010776 c.li s1, 1
20010778 bne a4, a5, 0x18
2001077c lw a5, 0x744(s2)
20010780 addi a0, zero, 0x1f0
20010784 c.jalr a5
20010786 srli s1, a0, 1
2001078a xori s1, s1, 1
2001078e c.andi s1, 1
20010790 lui a5, 0x20201
20010794 .byte 0x83, 0xa7

BASE 0x20010908 0xb8005
200108fc lui a5, 0x20201
20010900 c.addi sp, -0x10
20010902 lw a5, 0x758(a5)
20010906 c.swsp s0, 8(sp)
20010908 lui s0, 0xb8005
2001090c c.swsp ra, 0xc(sp)
2001090e addi a0, s0, 0x200
20010912 c.jalr a5
20010914 lui a5, 0x20201
20010918 lw a4, 0x74c(a5)
2001091c c.lui a1, 0xfffff
2001091e lui a5, 0x7c7f1
20010922 c.and a1, a0
20010924 addi a5, a5, -0x5e0
20010928 addi a0, s0, 0x200
2001092c c.or a1, a5
2001092e c.jalr a4
20010930 c.lwsp ra, 0xc(sp)
20010932 c.lwsp s0, 8(sp)
20010934 c.li a0, 0
20010936 c.addi sp, 0x10
20010938 c.jr ra
2001093a c.li a5, 1
2001093c bne a0, a5, 0x3e
20010940 lui a5, 0x20201
20010944 lw a5, 0x528(a5)
20010948 c.addi sp, -0x10
2001094a c.swsp s0, 8(sp)
2001094c c.swsp s1, 4(sp)
2001094e c.swsp s2, 0(sp)
20010950 c.swsp ra, 0xc(sp)
20010952 addi a0, zero, 0x74
20010956 c.lui s0, 2
20010958 c.jalr a5
2001095a lui s2, 0x20202
2001095e lui s1, 0x20202
20010962 addi s0, s0, -0x17c
20010966 lw a5, 0x2d4(s2)
2001096a addi a0, zero, 0xc8
2001096e c.jalr a5
20010970 lw a5, -0xb4(s1)
20010974 c.mv a0, s0
20010976 c.jalr a5
20010978 c.j -0x12
2001097a c.j 0
2001097c c.addi16sp sp, -0x30
2001097e c.swsp ra, 0x2c(sp)
20010980 c.swsp s0, 0x28(sp)
20010982 c.swsp s1, 0x24(sp)
20010984 c.swsp s2, 0x20(sp)
20010986 c.swsp s3, 0x1c(sp)
20010988 c.swsp s4, 0x18(sp)
2001098a c.bnez a0, 0xa4
2001098c lui s0, 0x20201
20010990 lw a5, 0x73c(s0)
20010994 c.mv s2, a1
20010996 addi a0, zero, 0x16c
2001099a c.li a1, 0
2001099c c.mv s1, a2

BASE 0x20010b92 0xb8004
20010b86 lw s1, 0x73c(s1)
20010b8a lw a5, 0x748(s0)
20010b8e addi a0, zero, 0x88
20010b92 lui s0, 0xb8004
20010b96 c.jalr a5
20010b98 ori a1, a0, 0x100
20010b9c addi a0, zero, 0x88
20010ba0 c.jalr s1
20010ba2 lui s2, 0x20201
20010ba6 addi s1, s0, 0x28
20010baa lw a5, 0x758(s2)
20010bae c.mv a0, s1
20010bb0 c.jalr a5
20010bb2 andi a0, a0, 0x80
20010bb6 c.beqz a0, -0xc
20010bb8 lui s1, 0x20201
20010bbc lw s3, 0x74c(s1)
20010bc0 lw a5, 0x758(s2)
20010bc4 addi a0, s0, 8
20010bc8 c.jalr a5
20010bca andi a1, a0, -2
20010bce addi a0, s0, 8
20010bd2 c.jalr s3
20010bd4 lw a5, 0x74c(s1)
20010bd8 addi a0, s0, 0x14
20010bdc c.li a1, 4
20010bde c.jalr a5
20010be0 lw a5, 0x74c(s1)
20010be4 addi a0, s0, 0x114
20010be8 c.li a1, 4
20010bea c.jalr a5
20010bec lw a5, 0x74c(s1)
20010bf0 c.li a1, 0
20010bf2 addi a0, s0, 0x120
20010bf6 c.jalr a5
20010bf8 lw s3, 0x74c(s1)
20010bfc lw a5, 0x758(s2)
20010c00 addi a0, s0, 0x11c
20010c04 c.jalr a5
20010c06 lui a1, 0x30
20010c0a c.or a1, a0
20010c0c addi a0, s0, 0x11c
20010c10 c.jalr s3
20010c12 lw a5, 0x74c(s1)
20010c16 c.li a1, 0
20010c18 addi a0, s0, 0x2c
20010c1c c.jalr a5
20010c1e lw s1, 0x74c(s1)
20010c22 lw a5, 0x758(s2)
20010c26 .byte 0x13, 0x05

BASE 0x20010db4 0xb8004
20010da8 c.swsp s4, 8(sp)
20010daa lw s4, 0x74c(s1)
20010dae lw a5, 0x758(s2)
20010db2 c.swsp s0, 0x18(sp)
20010db4 lui s0, 0xb8004
20010db8 c.swsp ra, 0x1c(sp)
20010dba c.swsp s3, 0xc(sp)
20010dbc c.mv s3, a0
20010dbe addi a0, s0, 8
20010dc2 c.jalr a5
20010dc4 andi a1, a0, -2
20010dc8 addi a0, s0, 8
20010dcc c.jalr s4
20010dce lw s4, 0x74c(s1)
20010dd2 lw a5, 0x758(s2)
20010dd6 lui a0, 0xb8004
20010dda c.jalr a5
20010ddc ori a1, a0, 0x300
20010de0 lui a0, 0xb8004
20010de4 c.jalr s4
20010de6 lw s4, 0x74c(s1)
20010dea lw a5, 0x758(s2)
20010dee lui a0, 0xb8004
20010df2 c.jalr a5
20010df4 lui a1, 0xc0000
20010df8 c.or a1, a0
20010dfa lui a0, 0xb8004
20010dfe c.jalr s4
20010e00 lw a5, 0x74c(s1)
20010e04 c.li a1, 1
20010e06 addi a0, s0, 0x10
20010e0a c.jalr a5
20010e0c lw a5, 0x74c(s1)
20010e10 c.li a1, 1
20010e12 addi a0, s0, 4
20010e16 c.jalr a5
20010e18 lw a5, 0x74c(s1)
20010e1c c.li a1, 0
20010e1e addi a0, s0, 0x130
20010e22 c.jalr a5
20010e24 lw a5, 0x74c(s1)
20010e28 c.lui a1, 1
20010e2a addi a0, s0, 0x118
20010e2e c.jalr a5
20010e30 lui a5, 0x20201
20010e34 lw a5, 0x754(a5)
20010e38 c.mv a1, s3
20010e3a addi a0, s0, 0x60
20010e3e c.jalr a5
20010e40 lw s1, 0x74c(s1)
20010e44 lw a5, 0x758(s2)
20010e48 .byte 0x13, 0x05

BASE 0x20010dd6 0xb8004
20010dca c.addi4spn s1, sp, 0x40
20010dcc c.jalr s4
20010dce lw s4, 0x74c(s1)
20010dd2 lw a5, 0x758(s2)
20010dd6 lui a0, 0xb8004
20010dda c.jalr a5
20010ddc ori a1, a0, 0x300
20010de0 lui a0, 0xb8004
20010de4 c.jalr s4
20010de6 lw s4, 0x74c(s1)
20010dea lw a5, 0x758(s2)
20010dee lui a0, 0xb8004
20010df2 c.jalr a5
20010df4 lui a1, 0xc0000
20010df8 c.or a1, a0
20010dfa lui a0, 0xb8004
20010dfe c.jalr s4
20010e00 lw a5, 0x74c(s1)
20010e04 c.li a1, 1
20010e06 addi a0, s0, 0x10
20010e0a c.jalr a5
20010e0c lw a5, 0x74c(s1)
20010e10 c.li a1, 1
20010e12 addi a0, s0, 4
20010e16 c.jalr a5
20010e18 lw a5, 0x74c(s1)
20010e1c c.li a1, 0
20010e1e addi a0, s0, 0x130
20010e22 c.jalr a5
20010e24 lw a5, 0x74c(s1)
20010e28 c.lui a1, 1
20010e2a addi a0, s0, 0x118
20010e2e c.jalr a5
20010e30 lui a5, 0x20201
20010e34 lw a5, 0x754(a5)
20010e38 c.mv a1, s3
20010e3a addi a0, s0, 0x60
20010e3e c.jalr a5
20010e40 lw s1, 0x74c(s1)
20010e44 lw a5, 0x758(s2)
20010e48 addi a0, s0, 8
20010e4c c.jalr a5
20010e4e ori a1, a0, 1
20010e52 addi a0, s0, 8
20010e56 c.jalr s1
20010e58 addi s1, s0, 8
20010e5c lw a5, 0x758(s2)
20010e60 c.mv a0, s1
20010e62 c.jalr a5
20010e64 c.andi a0, 1
20010e66 c.bnez a0, -0xa
20010e68 lui a5, 0x20201

BASE 0x20010de0 0xb8004
20010dd4 c.lui a1, 0xfffe2
20010dd6 lui a0, 0xb8004
20010dda c.jalr a5
20010ddc ori a1, a0, 0x300
20010de0 lui a0, 0xb8004
20010de4 c.jalr s4
20010de6 lw s4, 0x74c(s1)
20010dea lw a5, 0x758(s2)
20010dee lui a0, 0xb8004
20010df2 c.jalr a5
20010df4 lui a1, 0xc0000
20010df8 c.or a1, a0
20010dfa lui a0, 0xb8004
20010dfe c.jalr s4
20010e00 lw a5, 0x74c(s1)
20010e04 c.li a1, 1
20010e06 addi a0, s0, 0x10
20010e0a c.jalr a5
20010e0c lw a5, 0x74c(s1)
20010e10 c.li a1, 1
20010e12 addi a0, s0, 4
20010e16 c.jalr a5
20010e18 lw a5, 0x74c(s1)
20010e1c c.li a1, 0
20010e1e addi a0, s0, 0x130
20010e22 c.jalr a5
20010e24 lw a5, 0x74c(s1)
20010e28 c.lui a1, 1
20010e2a addi a0, s0, 0x118
20010e2e c.jalr a5
20010e30 lui a5, 0x20201
20010e34 lw a5, 0x754(a5)
20010e38 c.mv a1, s3
20010e3a addi a0, s0, 0x60
20010e3e c.jalr a5
20010e40 lw s1, 0x74c(s1)
20010e44 lw a5, 0x758(s2)
20010e48 addi a0, s0, 8
20010e4c c.jalr a5
20010e4e ori a1, a0, 1
20010e52 addi a0, s0, 8
20010e56 c.jalr s1
20010e58 addi s1, s0, 8
20010e5c lw a5, 0x758(s2)
20010e60 c.mv a0, s1
20010e62 c.jalr a5
20010e64 c.andi a0, 1
20010e66 c.bnez a0, -0xa
20010e68 lui a5, 0x20201
20010e6c addi a0, s0, 0x60
20010e70 c.lwsp s0, 0x18(sp)
20010e72 c.lwsp ra, 0x1c(sp)
20010e74 c.lwsp s1, 0x14(sp)

BASE 0x20010dee 0xb8004
20010de2 c.fsd fs0, 0x30(s0)
20010de4 c.jalr s4
20010de6 lw s4, 0x74c(s1)
20010dea lw a5, 0x758(s2)
20010dee lui a0, 0xb8004
20010df2 c.jalr a5
20010df4 lui a1, 0xc0000
20010df8 c.or a1, a0
20010dfa lui a0, 0xb8004
20010dfe c.jalr s4
20010e00 lw a5, 0x74c(s1)
20010e04 c.li a1, 1
20010e06 addi a0, s0, 0x10
20010e0a c.jalr a5
20010e0c lw a5, 0x74c(s1)
20010e10 c.li a1, 1
20010e12 addi a0, s0, 4
20010e16 c.jalr a5
20010e18 lw a5, 0x74c(s1)
20010e1c c.li a1, 0
20010e1e addi a0, s0, 0x130
20010e22 c.jalr a5
20010e24 lw a5, 0x74c(s1)
20010e28 c.lui a1, 1
20010e2a addi a0, s0, 0x118
20010e2e c.jalr a5
20010e30 lui a5, 0x20201
20010e34 lw a5, 0x754(a5)
20010e38 c.mv a1, s3
20010e3a addi a0, s0, 0x60
20010e3e c.jalr a5
20010e40 lw s1, 0x74c(s1)
20010e44 lw a5, 0x758(s2)
20010e48 addi a0, s0, 8
20010e4c c.jalr a5
20010e4e ori a1, a0, 1
20010e52 addi a0, s0, 8
20010e56 c.jalr s1
20010e58 addi s1, s0, 8
20010e5c lw a5, 0x758(s2)
20010e60 c.mv a0, s1
20010e62 c.jalr a5
20010e64 c.andi a0, 1
20010e66 c.bnez a0, -0xa
20010e68 lui a5, 0x20201
20010e6c addi a0, s0, 0x60
20010e70 c.lwsp s0, 0x18(sp)
20010e72 c.lwsp ra, 0x1c(sp)
20010e74 c.lwsp s1, 0x14(sp)
20010e76 c.lwsp s2, 0x10(sp)
20010e78 c.lwsp s3, 0xc(sp)
20010e7a c.lwsp s4, 8(sp)
20010e7c lw a5, 0x760(a5)
20010e80 c.addi16sp sp, 0x20
20010e82 c.jr a5

BASE 0x20010dfa 0xb8004
20010dee lui a0, 0xb8004
20010df2 c.jalr a5
20010df4 lui a1, 0xc0000
20010df8 c.or a1, a0
20010dfa lui a0, 0xb8004
20010dfe c.jalr s4
20010e00 lw a5, 0x74c(s1)
20010e04 c.li a1, 1
20010e06 addi a0, s0, 0x10
20010e0a c.jalr a5
20010e0c lw a5, 0x74c(s1)
20010e10 c.li a1, 1
20010e12 addi a0, s0, 4
20010e16 c.jalr a5
20010e18 lw a5, 0x74c(s1)
20010e1c c.li a1, 0
20010e1e addi a0, s0, 0x130
20010e22 c.jalr a5
20010e24 lw a5, 0x74c(s1)
20010e28 c.lui a1, 1
20010e2a addi a0, s0, 0x118
20010e2e c.jalr a5
20010e30 lui a5, 0x20201
20010e34 lw a5, 0x754(a5)
20010e38 c.mv a1, s3
20010e3a addi a0, s0, 0x60
20010e3e c.jalr a5
20010e40 lw s1, 0x74c(s1)
20010e44 lw a5, 0x758(s2)
20010e48 addi a0, s0, 8
20010e4c c.jalr a5
20010e4e ori a1, a0, 1
20010e52 addi a0, s0, 8
20010e56 c.jalr s1
20010e58 addi s1, s0, 8
20010e5c lw a5, 0x758(s2)
20010e60 c.mv a0, s1
20010e62 c.jalr a5
20010e64 c.andi a0, 1
20010e66 c.bnez a0, -0xa
20010e68 lui a5, 0x20201
20010e6c addi a0, s0, 0x60
20010e70 c.lwsp s0, 0x18(sp)
20010e72 c.lwsp ra, 0x1c(sp)
20010e74 c.lwsp s1, 0x14(sp)
20010e76 c.lwsp s2, 0x10(sp)
20010e78 c.lwsp s3, 0xc(sp)
20010e7a c.lwsp s4, 8(sp)
20010e7c lw a5, 0x760(a5)
20010e80 c.addi16sp sp, 0x20
20010e82 c.jr a5
20010e84 c.addi sp, -0x20
20010e86 c.swsp s0, 0x18(sp)
20010e88 c.swsp s5, 4(sp)
20010e8a lui s0, 0x20201
20010e8e .byte 0xb7, 0x1a

BASE 0x20010e9e 0xb8004
20010e92 c.swsp s4, 8(sp)
20010e94 lw s4, 0x74c(s0)
20010e98 lw a5, 0x758(s5)
20010e9c c.swsp s1, 0x14(sp)
20010e9e lui s1, 0xb8004
20010ea2 c.swsp ra, 0x1c(sp)
20010ea4 c.swsp s2, 0x10(sp)
20010ea6 c.swsp s3, 0xc(sp)
20010ea8 c.swsp s6, 0(sp)
20010eaa c.mv s6, a0
20010eac addi a0, s1, 8
20010eb0 c.mv s2, a2
20010eb2 c.mv s3, a1
20010eb4 c.jalr a5
20010eb6 andi a1, a0, -2
20010eba addi a0, s1, 8
20010ebe c.jalr s4
20010ec0 lw s4, 0x74c(s0)
20010ec4 lw a5, 0x758(s5)
20010ec8 lui a0, 0xb8004
20010ecc c.jalr a5
20010ece andi a1, a0, -0x301
20010ed2 lui a0, 0xb8004
20010ed6 c.jalr s4
20010ed8 lw s4, 0x74c(s0)
20010edc lw a5, 0x758(s5)
20010ee0 lui a0, 0xb8004
20010ee4 c.jalr a5
20010ee6 lui a1, 0xc0000
20010eea c.or a1, a0
20010eec lui a0, 0xb8004
20010ef0 c.jalr s4
20010ef2 lw a5, 0x74c(s0)
20010ef6 addi a0, s1, 0x10
20010efa c.li a1, 1
20010efc c.jalr a5
20010efe lw a5, 0x74c(s0)
20010f02 addi a0, s1, 4
20010f06 c.li a1, 0
20010f08 c.jalr a5
20010f0a lw a5, 0x74c(s0)
20010f0e c.mv a1, s3
20010f10 addi a0, s1, 0x130
20010f14 c.jalr a5
20010f16 lw a5, 0x74c(s0)
20010f1a addi a0, s1, 0x118
20010f1e c.lui a1, 1
20010f20 c.jalr a5
20010f22 lui s4, 0x20201
20010f26 lw a5, 0x754(s4)
20010f2a addi a0, s1, 0x60
20010f2e c.mv a1, s6
20010f30 c.jalr a5
20010f32 c.add s3, s2

BASE 0x20010ec8 0xb8004
20010ebc c.addi4spn s1, sp, 0x40
20010ebe c.jalr s4
20010ec0 lw s4, 0x74c(s0)
20010ec4 lw a5, 0x758(s5)
20010ec8 lui a0, 0xb8004
20010ecc c.jalr a5
20010ece andi a1, a0, -0x301
20010ed2 lui a0, 0xb8004
20010ed6 c.jalr s4
20010ed8 lw s4, 0x74c(s0)
20010edc lw a5, 0x758(s5)
20010ee0 lui a0, 0xb8004
20010ee4 c.jalr a5
20010ee6 lui a1, 0xc0000
20010eea c.or a1, a0
20010eec lui a0, 0xb8004
20010ef0 c.jalr s4
20010ef2 lw a5, 0x74c(s0)
20010ef6 addi a0, s1, 0x10
20010efa c.li a1, 1
20010efc c.jalr a5
20010efe lw a5, 0x74c(s0)
20010f02 addi a0, s1, 4
20010f06 c.li a1, 0
20010f08 c.jalr a5
20010f0a lw a5, 0x74c(s0)
20010f0e c.mv a1, s3
20010f10 addi a0, s1, 0x130
20010f14 c.jalr a5
20010f16 lw a5, 0x74c(s0)
20010f1a addi a0, s1, 0x118
20010f1e c.lui a1, 1
20010f20 c.jalr a5
20010f22 lui s4, 0x20201
20010f26 lw a5, 0x754(s4)
20010f2a addi a0, s1, 0x60
20010f2e c.mv a1, s6
20010f30 c.jalr a5
20010f32 c.add s3, s2
20010f34 addi s1, s1, 0x60
20010f38 bne s2, s3, 0x42
20010f3c lw s1, 0x74c(s0)
20010f40 lw a5, 0x758(s5)
20010f44 lui s0, 0xb8004
20010f48 addi a0, s0, 8
20010f4c c.jalr a5
20010f4e ori a1, a0, 1
20010f52 addi a0, s0, 8
20010f56 c.jalr s1
20010f58 c.addi s0, 8
20010f5a lw a5, 0x758(s5)

BASE 0x20010ed2 0xb8004
20010ec6 c.flwsp fa1, 0xa0(sp)
20010ec8 lui a0, 0xb8004
20010ecc c.jalr a5
20010ece andi a1, a0, -0x301
20010ed2 lui a0, 0xb8004
20010ed6 c.jalr s4
20010ed8 lw s4, 0x74c(s0)
20010edc lw a5, 0x758(s5)
20010ee0 lui a0, 0xb8004
20010ee4 c.jalr a5
20010ee6 lui a1, 0xc0000
20010eea c.or a1, a0
20010eec lui a0, 0xb8004
20010ef0 c.jalr s4
20010ef2 lw a5, 0x74c(s0)
20010ef6 addi a0, s1, 0x10
20010efa c.li a1, 1
20010efc c.jalr a5
20010efe lw a5, 0x74c(s0)
20010f02 addi a0, s1, 4
20010f06 c.li a1, 0
20010f08 c.jalr a5
20010f0a lw a5, 0x74c(s0)
20010f0e c.mv a1, s3
20010f10 addi a0, s1, 0x130
20010f14 c.jalr a5
20010f16 lw a5, 0x74c(s0)
20010f1a addi a0, s1, 0x118
20010f1e c.lui a1, 1
20010f20 c.jalr a5
20010f22 lui s4, 0x20201
20010f26 lw a5, 0x754(s4)
20010f2a addi a0, s1, 0x60
20010f2e c.mv a1, s6
20010f30 c.jalr a5
20010f32 c.add s3, s2
20010f34 addi s1, s1, 0x60
20010f38 bne s2, s3, 0x42
20010f3c lw s1, 0x74c(s0)
20010f40 lw a5, 0x758(s5)
20010f44 lui s0, 0xb8004
20010f48 addi a0, s0, 8
20010f4c c.jalr a5
20010f4e ori a1, a0, 1
20010f52 addi a0, s0, 8
20010f56 c.jalr s1
20010f58 c.addi s0, 8
20010f5a lw a5, 0x758(s5)
20010f5e c.mv a0, s0
20010f60 c.jalr a5
20010f62 c.andi a0, 1
20010f64 c.bnez a0, -0xa
20010f66 c.lwsp ra, 0x1c(sp)

BASE 0x20010ee0 0xb8004
20010ed4 c.fsd fs0, 0x30(s0)
20010ed6 c.jalr s4
20010ed8 lw s4, 0x74c(s0)
20010edc lw a5, 0x758(s5)
20010ee0 lui a0, 0xb8004
20010ee4 c.jalr a5
20010ee6 lui a1, 0xc0000
20010eea c.or a1, a0
20010eec lui a0, 0xb8004
20010ef0 c.jalr s4
20010ef2 lw a5, 0x74c(s0)
20010ef6 addi a0, s1, 0x10
20010efa c.li a1, 1
20010efc c.jalr a5
20010efe lw a5, 0x74c(s0)
20010f02 addi a0, s1, 4
20010f06 c.li a1, 0
20010f08 c.jalr a5
20010f0a lw a5, 0x74c(s0)
20010f0e c.mv a1, s3
20010f10 addi a0, s1, 0x130
20010f14 c.jalr a5
20010f16 lw a5, 0x74c(s0)
20010f1a addi a0, s1, 0x118
20010f1e c.lui a1, 1
20010f20 c.jalr a5
20010f22 lui s4, 0x20201
20010f26 lw a5, 0x754(s4)
20010f2a addi a0, s1, 0x60
20010f2e c.mv a1, s6
20010f30 c.jalr a5
20010f32 c.add s3, s2
20010f34 addi s1, s1, 0x60
20010f38 bne s2, s3, 0x42
20010f3c lw s1, 0x74c(s0)
20010f40 lw a5, 0x758(s5)
20010f44 lui s0, 0xb8004
20010f48 addi a0, s0, 8
20010f4c c.jalr a5
20010f4e ori a1, a0, 1
20010f52 addi a0, s0, 8
20010f56 c.jalr s1
20010f58 c.addi s0, 8
20010f5a lw a5, 0x758(s5)
20010f5e c.mv a0, s0
20010f60 c.jalr a5
20010f62 c.andi a0, 1
20010f64 c.bnez a0, -0xa
20010f66 c.lwsp ra, 0x1c(sp)
20010f68 c.lwsp s0, 0x18(sp)
20010f6a c.lwsp s1, 0x14(sp)
20010f6c c.lwsp s2, 0x10(sp)
20010f6e c.lwsp s3, 0xc(sp)
20010f70 c.lwsp s4, 8(sp)
20010f72 c.lwsp s5, 4(sp)
20010f74 c.lwsp s6, 0(sp)

BASE 0x20010eec 0xb8004
20010ee0 lui a0, 0xb8004
20010ee4 c.jalr a5
20010ee6 lui a1, 0xc0000
20010eea c.or a1, a0
20010eec lui a0, 0xb8004
20010ef0 c.jalr s4
20010ef2 lw a5, 0x74c(s0)
20010ef6 addi a0, s1, 0x10
20010efa c.li a1, 1
20010efc c.jalr a5
20010efe lw a5, 0x74c(s0)
20010f02 addi a0, s1, 4
20010f06 c.li a1, 0
20010f08 c.jalr a5
20010f0a lw a5, 0x74c(s0)
20010f0e c.mv a1, s3
20010f10 addi a0, s1, 0x130
20010f14 c.jalr a5
20010f16 lw a5, 0x74c(s0)
20010f1a addi a0, s1, 0x118
20010f1e c.lui a1, 1
20010f20 c.jalr a5
20010f22 lui s4, 0x20201
20010f26 lw a5, 0x754(s4)
20010f2a addi a0, s1, 0x60
20010f2e c.mv a1, s6
20010f30 c.jalr a5
20010f32 c.add s3, s2
20010f34 addi s1, s1, 0x60
20010f38 bne s2, s3, 0x42
20010f3c lw s1, 0x74c(s0)
20010f40 lw a5, 0x758(s5)
20010f44 lui s0, 0xb8004
20010f48 addi a0, s0, 8
20010f4c c.jalr a5
20010f4e ori a1, a0, 1
20010f52 addi a0, s0, 8
20010f56 c.jalr s1
20010f58 c.addi s0, 8
20010f5a lw a5, 0x758(s5)
20010f5e c.mv a0, s0
20010f60 c.jalr a5
20010f62 c.andi a0, 1
20010f64 c.bnez a0, -0xa
20010f66 c.lwsp ra, 0x1c(sp)
20010f68 c.lwsp s0, 0x18(sp)
20010f6a c.lwsp s1, 0x14(sp)
20010f6c c.lwsp s2, 0x10(sp)
20010f6e c.lwsp s3, 0xc(sp)
20010f70 c.lwsp s4, 8(sp)
20010f72 c.lwsp s5, 4(sp)
20010f74 c.lwsp s6, 0(sp)
20010f76 c.addi16sp sp, 0x20
20010f78 c.jr ra
20010f7a lbu a1, 0(s2)
20010f7e lw a5, 0x754(s4)

BASE 0x20010f44 0xb8004
20010f38 bne s2, s3, 0x42
20010f3c lw s1, 0x74c(s0)
20010f40 lw a5, 0x758(s5)
20010f44 lui s0, 0xb8004
20010f48 addi a0, s0, 8
20010f4c c.jalr a5
20010f4e ori a1, a0, 1
20010f52 addi a0, s0, 8
20010f56 c.jalr s1
20010f58 c.addi s0, 8
20010f5a lw a5, 0x758(s5)
20010f5e c.mv a0, s0
20010f60 c.jalr a5
20010f62 c.andi a0, 1
20010f64 c.bnez a0, -0xa
20010f66 c.lwsp ra, 0x1c(sp)
20010f68 c.lwsp s0, 0x18(sp)
20010f6a c.lwsp s1, 0x14(sp)
20010f6c c.lwsp s2, 0x10(sp)
20010f6e c.lwsp s3, 0xc(sp)
20010f70 c.lwsp s4, 8(sp)
20010f72 c.lwsp s5, 4(sp)
20010f74 c.lwsp s6, 0(sp)
20010f76 c.addi16sp sp, 0x20
20010f78 c.jr ra
20010f7a lbu a1, 0(s2)
20010f7e lw a5, 0x754(s4)
20010f82 c.mv a0, s1
20010f84 c.addi s2, 1
20010f86 c.jalr a5
20010f88 c.j -0x50
20010f8a c.addi sp, -0x10
20010f8c c.swsp s0, 8(sp)
20010f8e c.swsp ra, 0xc(sp)
20010f90 lui s0, 0x20202
20010f94 lw a5, 0xc(s0)
20010f98 c.li a0, 5
20010f9a c.jalr a5
20010f9c c.andi a0, 1
20010f9e c.bnez a0, -0xa
20010fa0 c.lwsp ra, 0xc(sp)
20010fa2 c.lwsp s0, 8(sp)
20010fa4 c.addi sp, 0x10
20010fa6 c.jr ra
20010fa8 lui a5, 0x20202
20010fac lw a5, 0xc(a5)
20010fb0 c.li a0, 5
20010fb2 c.jr a5
20010fb4 lui a5, 0x20202
20010fb8 lw a5, 8(a5)
20010fbc c.addi sp, -0x20
20010fbe c.swsp ra, 0x1c(sp)
20010fc0 sb a0, 0xc(sp)
20010fc4 c.addi4spn a2, sp, 0xc
20010fc6 c.li a1, 1
20010fc8 c.li a0, 1
20010fca c.jalr a5
20010fcc lui a5, 0x20202
20010fd0 lw a5, 4(a5)
20010fd4 c.jalr a5
20010fd6 c.lwsp ra, 0x1c(sp)
20010fd8 c.addi16sp sp, 0x20

BASE 0x2001103a 0xb8004
2001102e c.swsp s3, 0xc(sp)
20011030 lw s3, 0x74c(s0)
20011034 lw a5, 0x758(s1)
20011038 c.swsp s2, 0x10(sp)
2001103a lui s2, 0xb8004
2001103e c.swsp ra, 0x1c(sp)
20011040 c.swsp s4, 8(sp)
20011042 addi a0, s2, 8
20011046 c.jalr a5
20011048 andi a1, a0, -2
2001104c addi a0, s2, 8
20011050 c.jalr s3
20011052 lw a5, 0x74c(s0)
20011056 c.li a1, 1
20011058 addi a0, s2, 0x10
2001105c c.jalr a5
2001105e lw a5, 0x74c(s0)
20011062 c.li a1, 3
20011064 addi a0, s2, 4
20011068 c.jalr a5
2001106a lw a5, 0x74c(s0)
2001106e c.li a1, 0
20011070 addi a0, s2, 0x130
20011074 c.jalr a5
20011076 addi s3, s2, 0x28
2001107a lui s4, 0x20201
2001107e lw a5, 0x758(s1)
20011082 c.mv a0, s3
20011084 c.jalr a5
20011086 c.andi a0, 1
20011088 c.bnez a0, 0xc8
2001108a lw s3, 0x74c(s0)
2001108e lw a5, 0x758(s1)
20011092 lui a0, 0xb8004
20011096 c.jalr a5
20011098 ori a1, a0, 0x300
2001109c lui a0, 0xb8004
200110a0 c.jalr s3
200110a2 lw s3, 0x74c(s0)
200110a6 lw a5, 0x758(s1)
200110aa lui a0, 0xb8004
200110ae c.jalr a5
200110b0 lui a1, 0xc0000
200110b4 c.or a1, a0
200110b6 lui a0, 0xb8004
200110ba c.jalr s3
200110bc lw a5, 0x74c(s0)
200110c0 addi a0, s2, 0x118
200110c4 c.lui a1, 1
200110c6 c.jalr a5
200110c8 lui a5, 0x20201
200110cc lw a5, 0x754(a5)

BASE 0x20011092 0xb8004
20011086 c.andi a0, 1
20011088 c.bnez a0, 0xc8
2001108a lw s3, 0x74c(s0)
2001108e lw a5, 0x758(s1)
20011092 lui a0, 0xb8004
20011096 c.jalr a5
20011098 ori a1, a0, 0x300
2001109c lui a0, 0xb8004
200110a0 c.jalr s3
200110a2 lw s3, 0x74c(s0)
200110a6 lw a5, 0x758(s1)
200110aa lui a0, 0xb8004
200110ae c.jalr a5
200110b0 lui a1, 0xc0000
200110b4 c.or a1, a0
200110b6 lui a0, 0xb8004
200110ba c.jalr s3
200110bc lw a5, 0x74c(s0)
200110c0 addi a0, s2, 0x118
200110c4 c.lui a1, 1
200110c6 c.jalr a5
200110c8 lui a5, 0x20201
200110cc lw a5, 0x754(a5)
200110d0 addi a1, zero, 0x9f
200110d4 addi a0, s2, 0x60
200110d8 c.jalr a5
200110da lw s0, 0x74c(s0)
200110de lw a5, 0x758(s1)
200110e2 addi a0, s2, 8
200110e6 lui s3, 0x20201
200110ea c.jalr a5
200110ec ori a1, a0, 1
200110f0 addi a0, s2, 8
200110f4 lui s2, 0xb8004
200110f8 c.jalr s0
200110fa addi s0, s2, 8
200110fe lw a5, 0x758(s1)
20011102 c.mv a0, s0
20011104 c.jalr a5
20011106 c.andi a0, 1
20011108 c.bnez a0, 0x5c
2001110a lui s1, 0x20201
2001110e lw a5, 0x760(s1)
20011112 addi a0, s2, 0x60
20011116 lui s0, 0x20205
2001111a c.jalr a5
2001111c lw a5, 0x760(s1)
20011120 addi s0, s0, -0x1a0
20011124 sb a0, 1(s0)

BASE 0x2001109c 0xb8004
20011090 c.flw fs1, 0x28(a1)
20011092 lui a0, 0xb8004
20011096 c.jalr a5
20011098 ori a1, a0, 0x300
2001109c lui a0, 0xb8004
200110a0 c.jalr s3
200110a2 lw s3, 0x74c(s0)
200110a6 lw a5, 0x758(s1)
200110aa lui a0, 0xb8004
200110ae c.jalr a5
200110b0 lui a1, 0xc0000
200110b4 c.or a1, a0
200110b6 lui a0, 0xb8004
200110ba c.jalr s3
200110bc lw a5, 0x74c(s0)
200110c0 addi a0, s2, 0x118
200110c4 c.lui a1, 1
200110c6 c.jalr a5
200110c8 lui a5, 0x20201
200110cc lw a5, 0x754(a5)
200110d0 addi a1, zero, 0x9f
200110d4 addi a0, s2, 0x60
200110d8 c.jalr a5
200110da lw s0, 0x74c(s0)
200110de lw a5, 0x758(s1)
200110e2 addi a0, s2, 8
200110e6 lui s3, 0x20201
200110ea c.jalr a5
200110ec ori a1, a0, 1
200110f0 addi a0, s2, 8
200110f4 lui s2, 0xb8004
200110f8 c.jalr s0
200110fa addi s0, s2, 8
200110fe lw a5, 0x758(s1)
20011102 c.mv a0, s0
20011104 c.jalr a5
20011106 c.andi a0, 1
20011108 c.bnez a0, 0x5c
2001110a lui s1, 0x20201
2001110e lw a5, 0x760(s1)
20011112 addi a0, s2, 0x60
20011116 lui s0, 0x20205
2001111a c.jalr a5
2001111c lw a5, 0x760(s1)
20011120 addi s0, s0, -0x1a0
20011124 sb a0, 1(s0)
20011128 addi a0, s2, 0x60
2001112c c.jalr a5
2001112e lw a5, 0x760(s1)

BASE 0x200110aa 0xb8004
2001109e c.fsd fs0, 0x30(s0)
200110a0 c.jalr s3
200110a2 lw s3, 0x74c(s0)
200110a6 lw a5, 0x758(s1)
200110aa lui a0, 0xb8004
200110ae c.jalr a5
200110b0 lui a1, 0xc0000
200110b4 c.or a1, a0
200110b6 lui a0, 0xb8004
200110ba c.jalr s3
200110bc lw a5, 0x74c(s0)
200110c0 addi a0, s2, 0x118
200110c4 c.lui a1, 1
200110c6 c.jalr a5
200110c8 lui a5, 0x20201
200110cc lw a5, 0x754(a5)
200110d0 addi a1, zero, 0x9f
200110d4 addi a0, s2, 0x60
200110d8 c.jalr a5
200110da lw s0, 0x74c(s0)
200110de lw a5, 0x758(s1)
200110e2 addi a0, s2, 8
200110e6 lui s3, 0x20201
200110ea c.jalr a5
200110ec ori a1, a0, 1
200110f0 addi a0, s2, 8
200110f4 lui s2, 0xb8004
200110f8 c.jalr s0
200110fa addi s0, s2, 8
200110fe lw a5, 0x758(s1)
20011102 c.mv a0, s0
20011104 c.jalr a5
20011106 c.andi a0, 1
20011108 c.bnez a0, 0x5c
2001110a lui s1, 0x20201
2001110e lw a5, 0x760(s1)
20011112 addi a0, s2, 0x60
20011116 lui s0, 0x20205
2001111a c.jalr a5
2001111c lw a5, 0x760(s1)
20011120 addi s0, s0, -0x1a0
20011124 sb a0, 1(s0)
20011128 addi a0, s2, 0x60
2001112c c.jalr a5
2001112e lw a5, 0x760(s1)
20011132 sb a0, 2(s0)
20011136 addi a0, s2, 0x60
2001113a c.jalr a5
2001113c sb a0, 3(s0)

BASE 0x200110b6 0xb8004
200110aa lui a0, 0xb8004
200110ae c.jalr a5
200110b0 lui a1, 0xc0000
200110b4 c.or a1, a0
200110b6 lui a0, 0xb8004
200110ba c.jalr s3
200110bc lw a5, 0x74c(s0)
200110c0 addi a0, s2, 0x118
200110c4 c.lui a1, 1
200110c6 c.jalr a5
200110c8 lui a5, 0x20201
200110cc lw a5, 0x754(a5)
200110d0 addi a1, zero, 0x9f
200110d4 addi a0, s2, 0x60
200110d8 c.jalr a5
200110da lw s0, 0x74c(s0)
200110de lw a5, 0x758(s1)
200110e2 addi a0, s2, 8
200110e6 lui s3, 0x20201
200110ea c.jalr a5
200110ec ori a1, a0, 1
200110f0 addi a0, s2, 8
200110f4 lui s2, 0xb8004
200110f8 c.jalr s0
200110fa addi s0, s2, 8
200110fe lw a5, 0x758(s1)
20011102 c.mv a0, s0
20011104 c.jalr a5
20011106 c.andi a0, 1
20011108 c.bnez a0, 0x5c
2001110a lui s1, 0x20201
2001110e lw a5, 0x760(s1)
20011112 addi a0, s2, 0x60
20011116 lui s0, 0x20205
2001111a c.jalr a5
2001111c lw a5, 0x760(s1)
20011120 addi s0, s0, -0x1a0
20011124 sb a0, 1(s0)
20011128 addi a0, s2, 0x60
2001112c c.jalr a5
2001112e lw a5, 0x760(s1)
20011132 sb a0, 2(s0)
20011136 addi a0, s2, 0x60
2001113a c.jalr a5
2001113c sb a0, 3(s0)
20011140 c.lwsp ra, 0x1c(sp)
20011142 c.lwsp s0, 0x18(sp)
20011144 c.lwsp s1, 0x14(sp)
20011146 c.lwsp s2, 0x10(sp)
20011148 c.lwsp s3, 0xc(sp)
2001114a c.lwsp s4, 8(sp)

BASE 0x200110f4 0xb8004
200110e8 c.fld fs0, 0x40(s0)
200110ea c.jalr a5
200110ec ori a1, a0, 1
200110f0 addi a0, s2, 8
200110f4 lui s2, 0xb8004
200110f8 c.jalr s0
200110fa addi s0, s2, 8
200110fe lw a5, 0x758(s1)
20011102 c.mv a0, s0
20011104 c.jalr a5
20011106 c.andi a0, 1
20011108 c.bnez a0, 0x5c
2001110a lui s1, 0x20201
2001110e lw a5, 0x760(s1)
20011112 addi a0, s2, 0x60
20011116 lui s0, 0x20205
2001111a c.jalr a5
2001111c lw a5, 0x760(s1)
20011120 addi s0, s0, -0x1a0
20011124 sb a0, 1(s0)
20011128 addi a0, s2, 0x60
2001112c c.jalr a5
2001112e lw a5, 0x760(s1)
20011132 sb a0, 2(s0)
20011136 addi a0, s2, 0x60
2001113a c.jalr a5
2001113c sb a0, 3(s0)
20011140 c.lwsp ra, 0x1c(sp)
20011142 c.lwsp s0, 0x18(sp)
20011144 c.lwsp s1, 0x14(sp)
20011146 c.lwsp s2, 0x10(sp)
20011148 c.lwsp s3, 0xc(sp)
2001114a c.lwsp s4, 8(sp)
2001114c c.addi16sp sp, 0x20
2001114e c.jr ra
20011150 lw a5, 0x6b8(s4)
20011154 c.li a4, 0
20011156 addi a3, zero, 0x143
2001115a c.li a2, 5
2001115c c.li a0, 8
2001115e c.li a1, 0
20011160 c.jalr a5
20011162 c.j -0xe4
20011164 lw a5, 0x6b8(s3)
20011168 c.li a4, 0
2001116a addi a3, zero, 0x144
2001116e c.li a2, 5
20011170 c.li a0, 8
20011172 c.li a1, 0
20011174 c.jalr a5
20011176 c.j -0x78
20011178 lui a5, 0x20202
2001117c lw a5, -8(a5)
20011180 c.addi sp, -0x10
20011182 c.swsp ra, 0xc(sp)
20011184 c.jalr a5
20011186 lui a5, 0x20202

BASE 0x200111d0 0xb8004
200111c4 c.fld fs0, 0x40(s0)
200111c6 c.jalr a5
200111c8 lw s4, 0x74c(s1)
200111cc lw a5, 0x758(s2)
200111d0 lui s0, 0xb8004
200111d4 addi a0, s0, 8
200111d8 c.jalr a5
200111da andi a1, a0, -2
200111de addi a0, s0, 8
200111e2 c.jalr s4
200111e4 lw s4, 0x74c(s1)
200111e8 lw a5, 0x758(s2)
200111ec lui a0, 0xb8004
200111f0 c.jalr a5
200111f2 andi a1, a0, -0x301
200111f6 lui a0, 0xb8004
200111fa c.jalr s4
200111fc lw s4, 0x74c(s1)
20011200 lw a5, 0x758(s2)
20011204 lui a0, 0xb8004
20011208 c.jalr a5
2001120a lui a1, 0xc0000
2001120e c.or a1, a0
20011210 lui a0, 0xb8004
20011214 c.jalr s4
20011216 lw a5, 0x74c(s1)
2001121a addi a0, s0, 4
2001121e c.li a1, 0
20011220 c.jalr a5
20011222 lw a5, 0x74c(s1)
20011226 addi a0, s0, 0x130
2001122a c.li a1, 0
2001122c c.jalr a5
2001122e lw a5, 0x74c(s1)
20011232 addi a0, s0, 0x10
20011236 c.li a1, 1
20011238 c.jalr a5
2001123a lw a5, 0x74c(s1)
2001123e addi a0, s0, 0x118
20011242 lui a1, 0x31
20011246 c.jalr a5
20011248 lui s4, 0x20201
2001124c lw a5, 0x754(s4)
20011250 addi a0, s0, 0x60
20011254 addi a1, zero, 0x52
20011258 c.jalr a5
2001125a lw a5, 0x754(s4)
2001125e srli a1, s3, 0x10
20011262 addi a0, s0, 0x60

BASE 0x200111ec 0xb8004
200111e0 c.addi4spn s1, sp, 0x40
200111e2 c.jalr s4
200111e4 lw s4, 0x74c(s1)
200111e8 lw a5, 0x758(s2)
200111ec lui a0, 0xb8004
200111f0 c.jalr a5
200111f2 andi a1, a0, -0x301
200111f6 lui a0, 0xb8004
200111fa c.jalr s4
200111fc lw s4, 0x74c(s1)
20011200 lw a5, 0x758(s2)
20011204 lui a0, 0xb8004
20011208 c.jalr a5
2001120a lui a1, 0xc0000
2001120e c.or a1, a0
20011210 lui a0, 0xb8004
20011214 c.jalr s4
20011216 lw a5, 0x74c(s1)
2001121a addi a0, s0, 4
2001121e c.li a1, 0
20011220 c.jalr a5
20011222 lw a5, 0x74c(s1)
20011226 addi a0, s0, 0x130
2001122a c.li a1, 0
2001122c c.jalr a5
2001122e lw a5, 0x74c(s1)
20011232 addi a0, s0, 0x10
20011236 c.li a1, 1
20011238 c.jalr a5
2001123a lw a5, 0x74c(s1)
2001123e addi a0, s0, 0x118
20011242 lui a1, 0x31
20011246 c.jalr a5
20011248 lui s4, 0x20201
2001124c lw a5, 0x754(s4)
20011250 addi a0, s0, 0x60
20011254 addi a1, zero, 0x52
20011258 c.jalr a5
2001125a lw a5, 0x754(s4)
2001125e srli a1, s3, 0x10
20011262 addi a0, s0, 0x60
20011266 andi a1, a1, 0xff
2001126a c.jalr a5
2001126c lw a5, 0x754(s4)
20011270 srli a1, s3, 8
20011274 addi a0, s0, 0x60
20011278 andi a1, a1, 0xff
2001127c c.jalr a5
2001127e lw a5, 0x754(s4)

BASE 0x200111f6 0xb8004
200111ea c.lui a1, 0xfffe2
200111ec lui a0, 0xb8004
200111f0 c.jalr a5
200111f2 andi a1, a0, -0x301
200111f6 lui a0, 0xb8004
200111fa c.jalr s4
200111fc lw s4, 0x74c(s1)
20011200 lw a5, 0x758(s2)
20011204 lui a0, 0xb8004
20011208 c.jalr a5
2001120a lui a1, 0xc0000
2001120e c.or a1, a0
20011210 lui a0, 0xb8004
20011214 c.jalr s4
20011216 lw a5, 0x74c(s1)
2001121a addi a0, s0, 4
2001121e c.li a1, 0
20011220 c.jalr a5
20011222 lw a5, 0x74c(s1)
20011226 addi a0, s0, 0x130
2001122a c.li a1, 0
2001122c c.jalr a5
2001122e lw a5, 0x74c(s1)
20011232 addi a0, s0, 0x10
20011236 c.li a1, 1
20011238 c.jalr a5
2001123a lw a5, 0x74c(s1)
2001123e addi a0, s0, 0x118
20011242 lui a1, 0x31
20011246 c.jalr a5
20011248 lui s4, 0x20201
2001124c lw a5, 0x754(s4)
20011250 addi a0, s0, 0x60
20011254 addi a1, zero, 0x52
20011258 c.jalr a5
2001125a lw a5, 0x754(s4)
2001125e srli a1, s3, 0x10
20011262 addi a0, s0, 0x60
20011266 andi a1, a1, 0xff
2001126a c.jalr a5
2001126c lw a5, 0x754(s4)
20011270 srli a1, s3, 8
20011274 addi a0, s0, 0x60
20011278 andi a1, a1, 0xff
2001127c c.jalr a5
2001127e lw a5, 0x754(s4)
20011282 andi a1, s3, 0xff
20011286 addi a0, s0, 0x60
2001128a c.jalr a5

BASE 0x20011204 0xb8004
200111f8 c.fsd fs0, 0x30(s0)
200111fa c.jalr s4
200111fc lw s4, 0x74c(s1)
20011200 lw a5, 0x758(s2)
20011204 lui a0, 0xb8004
20011208 c.jalr a5
2001120a lui a1, 0xc0000
2001120e c.or a1, a0
20011210 lui a0, 0xb8004
20011214 c.jalr s4
20011216 lw a5, 0x74c(s1)
2001121a addi a0, s0, 4
2001121e c.li a1, 0
20011220 c.jalr a5
20011222 lw a5, 0x74c(s1)
20011226 addi a0, s0, 0x130
2001122a c.li a1, 0
2001122c c.jalr a5
2001122e lw a5, 0x74c(s1)
20011232 addi a0, s0, 0x10
20011236 c.li a1, 1
20011238 c.jalr a5
2001123a lw a5, 0x74c(s1)
2001123e addi a0, s0, 0x118
20011242 lui a1, 0x31
20011246 c.jalr a5
20011248 lui s4, 0x20201
2001124c lw a5, 0x754(s4)
20011250 addi a0, s0, 0x60
20011254 addi a1, zero, 0x52
20011258 c.jalr a5
2001125a lw a5, 0x754(s4)
2001125e srli a1, s3, 0x10
20011262 addi a0, s0, 0x60
20011266 andi a1, a1, 0xff
2001126a c.jalr a5
2001126c lw a5, 0x754(s4)
20011270 srli a1, s3, 8
20011274 addi a0, s0, 0x60
20011278 andi a1, a1, 0xff
2001127c c.jalr a5
2001127e lw a5, 0x754(s4)
20011282 andi a1, s3, 0xff
20011286 addi a0, s0, 0x60
2001128a c.jalr a5
2001128c lw s1, 0x74c(s1)
20011290 lw a5, 0x758(s2)
20011294 addi a0, s0, 8
20011298 c.jalr a5

BASE 0x20011210 0xb8004
20011204 lui a0, 0xb8004
20011208 c.jalr a5
2001120a lui a1, 0xc0000
2001120e c.or a1, a0
20011210 lui a0, 0xb8004
20011214 c.jalr s4
20011216 lw a5, 0x74c(s1)
2001121a addi a0, s0, 4
2001121e c.li a1, 0
20011220 c.jalr a5
20011222 lw a5, 0x74c(s1)
20011226 addi a0, s0, 0x130
2001122a c.li a1, 0
2001122c c.jalr a5
2001122e lw a5, 0x74c(s1)
20011232 addi a0, s0, 0x10
20011236 c.li a1, 1
20011238 c.jalr a5
2001123a lw a5, 0x74c(s1)
2001123e addi a0, s0, 0x118
20011242 lui a1, 0x31
20011246 c.jalr a5
20011248 lui s4, 0x20201
2001124c lw a5, 0x754(s4)
20011250 addi a0, s0, 0x60
20011254 addi a1, zero, 0x52
20011258 c.jalr a5
2001125a lw a5, 0x754(s4)
2001125e srli a1, s3, 0x10
20011262 addi a0, s0, 0x60
20011266 andi a1, a1, 0xff
2001126a c.jalr a5
2001126c lw a5, 0x754(s4)
20011270 srli a1, s3, 8
20011274 addi a0, s0, 0x60
20011278 andi a1, a1, 0xff
2001127c c.jalr a5
2001127e lw a5, 0x754(s4)
20011282 andi a1, s3, 0xff
20011286 addi a0, s0, 0x60
2001128a c.jalr a5
2001128c lw s1, 0x74c(s1)
20011290 lw a5, 0x758(s2)
20011294 addi a0, s0, 8
20011298 c.jalr a5
2001129a ori a1, a0, 1
2001129e addi a0, s0, 8
200112a2 c.jalr s1
200112a4 c.addi s0, 8

BASE 0x200112fa 0xb8004
200112ee c.fld fs0, 0x40(s0)
200112f0 c.jalr a5
200112f2 lw s4, 0x754(s1)
200112f6 lw a5, 0x758(s2)
200112fa lui s0, 0xb8004
200112fe addi a0, s0, 8
20011302 c.jalr a5
20011304 andi a1, a0, 0xfe
20011308 addi a0, s0, 8
2001130c c.jalr s4
2001130e lui s4, 0x20201
20011312 lw s5, 0x74c(s4)
20011316 lw a5, 0x758(s2)
2001131a lui a0, 0xb8004
2001131e c.jalr a5
20011320 lui a1, 0x40000
20011324 addi a1, a1, -0x301
20011328 c.and a0, a1
2001132a lui a1, 0xc0000
2001132e c.or a1, a0
20011330 lui a0, 0xb8004
20011334 c.jalr s5
20011336 lw a5, 0x74c(s4)
2001133a addi a0, s0, 4
2001133e c.li a1, 0
20011340 c.jalr a5
20011342 lw a5, 0x74c(s4)
20011346 addi a0, s0, 0x130
2001134a c.li a1, 0
2001134c c.jalr a5
2001134e lw a5, 0x754(s1)
20011352 addi a0, s0, 0x10
20011356 c.li a1, 1
20011358 c.jalr a5
2001135a lw a5, 0x74c(s4)
2001135e addi a0, s0, 0x118
20011362 lui a1, 0x31
20011366 c.jalr a5
20011368 lw a5, 0x754(s1)
2001136c addi a0, s0, 0x60
20011370 addi a1, zero, 0x20
20011374 c.jalr a5
20011376 lw a5, 0x754(s1)
2001137a srli a1, s3, 0x10
2001137e addi a0, s0, 0x60
20011382 andi a1, a1, 0xff
20011386 c.jalr a5
20011388 lw a5, 0x754(s1)
2001138c srli a1, s3, 8

BASE 0x2001131a 0xb8004
2001130e lui s4, 0x20201
20011312 lw s5, 0x74c(s4)
20011316 lw a5, 0x758(s2)
2001131a lui a0, 0xb8004
2001131e c.jalr a5
20011320 lui a1, 0x40000
20011324 addi a1, a1, -0x301
20011328 c.and a0, a1
2001132a lui a1, 0xc0000
2001132e c.or a1, a0
20011330 lui a0, 0xb8004
20011334 c.jalr s5
20011336 lw a5, 0x74c(s4)
2001133a addi a0, s0, 4
2001133e c.li a1, 0
20011340 c.jalr a5
20011342 lw a5, 0x74c(s4)
20011346 addi a0, s0, 0x130
2001134a c.li a1, 0
2001134c c.jalr a5
2001134e lw a5, 0x754(s1)
20011352 addi a0, s0, 0x10
20011356 c.li a1, 1
20011358 c.jalr a5
2001135a lw a5, 0x74c(s4)
2001135e addi a0, s0, 0x118
20011362 lui a1, 0x31
20011366 c.jalr a5
20011368 lw a5, 0x754(s1)
2001136c addi a0, s0, 0x60
20011370 addi a1, zero, 0x20
20011374 c.jalr a5
20011376 lw a5, 0x754(s1)
2001137a srli a1, s3, 0x10
2001137e addi a0, s0, 0x60
20011382 andi a1, a1, 0xff
20011386 c.jalr a5
20011388 lw a5, 0x754(s1)
2001138c srli a1, s3, 8
20011390 addi a0, s0, 0x60
20011394 andi a1, a1, 0xff
20011398 c.jalr a5
2001139a lw a5, 0x754(s1)
2001139e andi a1, s3, 0xff
200113a2 addi a0, s0, 0x60
200113a6 c.jalr a5
200113a8 lw s1, 0x754(s1)
200113ac lw a5, 0x758(s2)

BASE 0x20011330 0xb8004
20011324 addi a1, a1, -0x301
20011328 c.and a0, a1
2001132a lui a1, 0xc0000
2001132e c.or a1, a0
20011330 lui a0, 0xb8004
20011334 c.jalr s5
20011336 lw a5, 0x74c(s4)
2001133a addi a0, s0, 4
2001133e c.li a1, 0
20011340 c.jalr a5
20011342 lw a5, 0x74c(s4)
20011346 addi a0, s0, 0x130
2001134a c.li a1, 0
2001134c c.jalr a5
2001134e lw a5, 0x754(s1)
20011352 addi a0, s0, 0x10
20011356 c.li a1, 1
20011358 c.jalr a5
2001135a lw a5, 0x74c(s4)
2001135e addi a0, s0, 0x118
20011362 lui a1, 0x31
20011366 c.jalr a5
20011368 lw a5, 0x754(s1)
2001136c addi a0, s0, 0x60
20011370 addi a1, zero, 0x20
20011374 c.jalr a5
20011376 lw a5, 0x754(s1)
2001137a srli a1, s3, 0x10
2001137e addi a0, s0, 0x60
20011382 andi a1, a1, 0xff
20011386 c.jalr a5
20011388 lw a5, 0x754(s1)
2001138c srli a1, s3, 8
20011390 addi a0, s0, 0x60
20011394 andi a1, a1, 0xff
20011398 c.jalr a5
2001139a lw a5, 0x754(s1)
2001139e andi a1, s3, 0xff
200113a2 addi a0, s0, 0x60
200113a6 c.jalr a5
200113a8 lw s1, 0x754(s1)
200113ac lw a5, 0x758(s2)
200113b0 addi a0, s0, 8
200113b4 c.jalr a5
200113b6 ori a1, a0, 1
200113ba andi a1, a1, 0xff
200113be addi a0, s0, 8
200113c2 c.jalr s1
200113c4 c.addi s0, 8

BASE 0x2001141e 0xb8004
20011412 c.fld fs0, 0x40(s0)
20011414 c.mv s1, a0
20011416 c.mv s3, a1
20011418 c.jalr a5
2001141a lw a5, 0x74c(s0)
2001141e lui s5, 0xb8004
20011422 c.li a1, 0
20011424 addi a0, s5, 8
20011428 c.jalr a5
2001142a lui s4, 0x20201
2001142e lw s6, 0x74c(s0)
20011432 lw a5, 0x758(s4)
20011436 lui a0, 0xb8004
2001143a addi s7, s5, 0x60
2001143e c.jalr a5
20011440 lui a1, 0x40000
20011444 addi a1, a1, -0x301
20011448 c.and a0, a1
2001144a lui a1, 0xc0000
2001144e c.or a1, a0
20011450 lui a0, 0xb8004
20011454 c.jalr s6
20011456 lw a5, 0x74c(s0)
2001145a c.li a1, 0
2001145c addi a0, s5, 4
20011460 c.jalr a5
20011462 lw a5, 0x74c(s0)
20011466 slli a1, s3, 8
2001146a c.srli a1, 8
2001146c addi a0, s5, 0x130
20011470 c.jalr a5
20011472 lw a5, 0x74c(s0)
20011476 c.li a1, 1
20011478 addi a0, s5, 0x10
2001147c c.jalr a5
2001147e lw a5, 0x74c(s0)
20011482 lui a1, 0x31
20011486 addi a0, s5, 0x118
2001148a c.jalr a5
2001148c srli a5, s1, 0x10
20011490 c.lui a0, 0x10
20011492 c.addi a0, -1
20011494 c.slli a5, 8
20011496 c.and a5, a0
20011498 lui a1, 0xff0
2001149c slli a0, s1, 8
200114a0 c.and a0, a1
200114a2 c.or a5, a0
200114a4 lw a4, 0x74c(s0)
200114a8 slli a0, s1, 0x18
200114ac c.or a0, a5
200114ae ori a1, a0, 2
200114b2 .byte 0x13, 0x85

BASE 0x20011436 0xb8004
2001142a lui s4, 0x20201
2001142e lw s6, 0x74c(s0)
20011432 lw a5, 0x758(s4)
20011436 lui a0, 0xb8004
2001143a addi s7, s5, 0x60
2001143e c.jalr a5
20011440 lui a1, 0x40000
20011444 addi a1, a1, -0x301
20011448 c.and a0, a1
2001144a lui a1, 0xc0000
2001144e c.or a1, a0
20011450 lui a0, 0xb8004
20011454 c.jalr s6
20011456 lw a5, 0x74c(s0)
2001145a c.li a1, 0
2001145c addi a0, s5, 4
20011460 c.jalr a5
20011462 lw a5, 0x74c(s0)
20011466 slli a1, s3, 8
2001146a c.srli a1, 8
2001146c addi a0, s5, 0x130
20011470 c.jalr a5
20011472 lw a5, 0x74c(s0)
20011476 c.li a1, 1
20011478 addi a0, s5, 0x10
2001147c c.jalr a5
2001147e lw a5, 0x74c(s0)
20011482 lui a1, 0x31
20011486 addi a0, s5, 0x118
2001148a c.jalr a5
2001148c srli a5, s1, 0x10
20011490 c.lui a0, 0x10
20011492 c.addi a0, -1
20011494 c.slli a5, 8
20011496 c.and a5, a0
20011498 lui a1, 0xff0
2001149c slli a0, s1, 8
200114a0 c.and a0, a1
200114a2 c.or a5, a0
200114a4 lw a4, 0x74c(s0)
200114a8 slli a0, s1, 0x18
200114ac c.or a0, a5
200114ae ori a1, a0, 2
200114b2 addi a0, s5, 0x60
200114b6 c.jalr a4
200114b8 addi s6, s2, 0xc
200114bc c.mv s1, s2
200114be lbu a1, 1(s1)
200114c2 lbu a5, 0(s1)
200114c6 lw a4, 0x74c(s0)
200114ca c.slli a1, 8

BASE 0x20011450 0xb8004
20011444 addi a1, a1, -0x301
20011448 c.and a0, a1
2001144a lui a1, 0xc0000
2001144e c.or a1, a0
20011450 lui a0, 0xb8004
20011454 c.jalr s6
20011456 lw a5, 0x74c(s0)
2001145a c.li a1, 0
2001145c addi a0, s5, 4
20011460 c.jalr a5
20011462 lw a5, 0x74c(s0)
20011466 slli a1, s3, 8
2001146a c.srli a1, 8
2001146c addi a0, s5, 0x130
20011470 c.jalr a5
20011472 lw a5, 0x74c(s0)
20011476 c.li a1, 1
20011478 addi a0, s5, 0x10
2001147c c.jalr a5
2001147e lw a5, 0x74c(s0)
20011482 lui a1, 0x31
20011486 addi a0, s5, 0x118
2001148a c.jalr a5
2001148c srli a5, s1, 0x10
20011490 c.lui a0, 0x10
20011492 c.addi a0, -1
20011494 c.slli a5, 8
20011496 c.and a5, a0
20011498 lui a1, 0xff0
2001149c slli a0, s1, 8
200114a0 c.and a0, a1
200114a2 c.or a5, a0
200114a4 lw a4, 0x74c(s0)
200114a8 slli a0, s1, 0x18
200114ac c.or a0, a5
200114ae ori a1, a0, 2
200114b2 addi a0, s5, 0x60
200114b6 c.jalr a4
200114b8 addi s6, s2, 0xc
200114bc c.mv s1, s2
200114be lbu a1, 1(s1)
200114c2 lbu a5, 0(s1)
200114c6 lw a4, 0x74c(s0)
200114ca c.slli a1, 8
200114cc c.or a1, a5
200114ce lbu a5, 2(s1)
200114d2 c.mv a0, s7
200114d4 c.addi s1, 4
200114d6 c.slli a5, 0x10
200114d8 c.or a5, a1
200114da lbu a1, -1(s1)
200114de c.slli a1, 0x18
200114e0 c.or a1, a5
200114e2 c.jalr a4
200114e4 .byte 0xe3, 0x1d

BASE 0x20011504 0xb8004
200114f8 c.jalr a5
200114fa ori a1, a0, 1
200114fe addi a0, s5, 8
20011502 c.jalr s1
20011504 lui a0, 0xb8004
20011508 c.li s1, 0xc
2001150a addi s6, a0, 0x20
2001150e c.li s8, 0x10
20011510 addi s5, a0, 0x60
20011514 bltu s1, s3, 0x3a
20011518 lui s0, 0xb8004
2001151c c.addi s0, 8
2001151e lw a5, 0x758(s4)
20011522 c.mv a0, s0
20011524 c.jalr a5
20011526 c.andi a0, 1
20011528 c.bnez a0, -0xa
2001152a lui a5, 0x20202
2001152e lw a5, 4(a5)
20011532 c.jalr a5
20011534 c.lwsp ra, 0x2c(sp)
20011536 c.lwsp s0, 0x28(sp)
20011538 c.lwsp s1, 0x24(sp)
2001153a c.lwsp s2, 0x20(sp)
2001153c c.lwsp s3, 0x1c(sp)
2001153e c.lwsp s4, 0x18(sp)
20011540 c.lwsp s5, 0x14(sp)
20011542 c.lwsp s6, 0x10(sp)
20011544 c.lwsp s7, 0xc(sp)
20011546 c.lwsp s8, 8(sp)
20011548 c.li a0, 1
2001154a c.addi16sp sp, 0x30
2001154c c.jr ra
2001154e lw a5, 0x758(s4)
20011552 c.mv a0, s6
20011554 c.jalr a5
20011556 sub a0, s7, a0
2001155a bgeu s8, a0, -0x46
2001155e add a4, s2, s1
20011562 lw a5, 0x74c(s0)
20011566 c.lw a1, 0(a4)
20011568 c.mv a0, s5
2001156a c.addi s1, 4
2001156c c.jalr a5
2001156e c.j -0x5a
20011570 c.addi16sp sp, -0x50
20011572 c.swsp s10, 0x20(sp)
20011574 lui s10, 0xc0000
20011578 c.swsp s0, 0x48(sp)
2001157a c.swsp s1, 0x44(sp)
2001157c c.swsp s2, 0x40(sp)
2001157e c.swsp s3, 0x3c(sp)
20011580 c.swsp s5, 0x34(sp)
20011582 c.swsp s6, 0x30(sp)
20011584 c.swsp s7, 0x2c(sp)
20011586 c.swsp s9, 0x24(sp)
20011588 c.swsp s11, 0x1c(sp)
2001158a c.swsp ra, 0x4c(sp)
2001158c c.swsp s4, 0x38(sp)
2001158e c.swsp s8, 0x28(sp)
20011590 c.mv s2, a0
20011592 c.mv s1, a1
20011594 c.mv s9, a2
20011596 c.li s5, 0
20011598 .byte 0xb7, 0x19

BASE 0x20011518 0xb8004
2001150c c.addi tp, 1
2001150e c.li s8, 0x10
20011510 addi s5, a0, 0x60
20011514 bltu s1, s3, 0x3a
20011518 lui s0, 0xb8004
2001151c c.addi s0, 8
2001151e lw a5, 0x758(s4)
20011522 c.mv a0, s0
20011524 c.jalr a5
20011526 c.andi a0, 1
20011528 c.bnez a0, -0xa
2001152a lui a5, 0x20202
2001152e lw a5, 4(a5)
20011532 c.jalr a5
20011534 c.lwsp ra, 0x2c(sp)
20011536 c.lwsp s0, 0x28(sp)
20011538 c.lwsp s1, 0x24(sp)
2001153a c.lwsp s2, 0x20(sp)
2001153c c.lwsp s3, 0x1c(sp)
2001153e c.lwsp s4, 0x18(sp)
20011540 c.lwsp s5, 0x14(sp)
20011542 c.lwsp s6, 0x10(sp)
20011544 c.lwsp s7, 0xc(sp)
20011546 c.lwsp s8, 8(sp)
20011548 c.li a0, 1
2001154a c.addi16sp sp, 0x30
2001154c c.jr ra
2001154e lw a5, 0x758(s4)
20011552 c.mv a0, s6
20011554 c.jalr a5
20011556 sub a0, s7, a0
2001155a bgeu s8, a0, -0x46
2001155e add a4, s2, s1
20011562 lw a5, 0x74c(s0)
20011566 c.lw a1, 0(a4)
20011568 c.mv a0, s5
2001156a c.addi s1, 4
2001156c c.jalr a5
2001156e c.j -0x5a
20011570 c.addi16sp sp, -0x50
20011572 c.swsp s10, 0x20(sp)
20011574 lui s10, 0xc0000
20011578 c.swsp s0, 0x48(sp)
2001157a c.swsp s1, 0x44(sp)
2001157c c.swsp s2, 0x40(sp)
2001157e c.swsp s3, 0x3c(sp)
20011580 c.swsp s5, 0x34(sp)
20011582 c.swsp s6, 0x30(sp)
20011584 c.swsp s7, 0x2c(sp)
20011586 c.swsp s9, 0x24(sp)
20011588 c.swsp s11, 0x1c(sp)
2001158a c.swsp ra, 0x4c(sp)
2001158c c.swsp s4, 0x38(sp)
2001158e c.swsp s8, 0x28(sp)
20011590 c.mv s2, a0
20011592 c.mv s1, a1
20011594 c.mv s9, a2
20011596 c.li s5, 0
20011598 lui s3, 0x20201
2001159c lui s6, 0x20201
200115a0 lui s0, 0xb8004
200115a4 addi s10, s10, 0x300
200115a8 lui s7, 0x20201
200115ac .byte 0xb7, 0x1d

BASE 0x200115a0 0xb8004
20011594 c.mv s9, a2
20011596 c.li s5, 0
20011598 lui s3, 0x20201
2001159c lui s6, 0x20201
200115a0 lui s0, 0xb8004
200115a4 addi s10, s10, 0x300
200115a8 lui s7, 0x20201
200115ac lui s11, 0x20201
200115b0 c.bnez s1, 0x22
200115b2 c.lwsp ra, 0x4c(sp)
200115b4 c.lwsp s0, 0x48(sp)
200115b6 c.lwsp s1, 0x44(sp)
200115b8 c.lwsp s2, 0x40(sp)
200115ba c.lwsp s3, 0x3c(sp)
200115bc c.lwsp s4, 0x38(sp)
200115be c.lwsp s5, 0x34(sp)
200115c0 c.lwsp s6, 0x30(sp)
200115c2 c.lwsp s7, 0x2c(sp)
200115c4 c.lwsp s8, 0x28(sp)
200115c6 c.lwsp s9, 0x24(sp)
200115c8 c.lwsp s10, 0x20(sp)
200115ca c.lwsp s11, 0x1c(sp)
200115cc c.li a0, 1
200115ce c.addi16sp sp, 0x50
200115d0 c.jr ra
200115d2 lw s4, 0x74c(s3)
200115d6 lw a5, 0x758(s6)
200115da addi a0, s0, 8
200115de c.jalr a5
200115e0 andi a1, a0, -2
200115e4 addi a0, s0, 8
200115e8 c.jalr s4
200115ea lw s4, 0x74c(s3)
200115ee lw a5, 0x758(s6)
200115f2 lui a0, 0xb8004
200115f6 c.jalr a5
200115f8 or a1, a0, s10
200115fc lui a0, 0xb8004
20011600 c.jalr s4
20011602 lw a5, 0x74c(s3)
20011606 c.li a1, 1
20011608 addi a0, s0, 0x10
2001160c c.jalr a5
2001160e c.li a5, 0x10
20011610 c.mv s4, s1
20011612 bgeu a5, s1, 6
20011616 c.li s4, 0x10
20011618 lw a5, 0x74c(s3)
2001161c c.mv a1, s4
2001161e addi a0, s0, 4
20011622 c.jalr a5
20011624 lw a5, 0x74c(s3)
20011628 c.li a1, 0
2001162a addi a0, s0, 0x130
2001162e c.jalr a5
20011630 lw a5, 0x74c(s3)
20011634 .byte 0xb7, 0x15

BASE 0x200115f2 0xb8004
200115e6 c.addi4spn s1, sp, 0x40
200115e8 c.jalr s4
200115ea lw s4, 0x74c(s3)
200115ee lw a5, 0x758(s6)
200115f2 lui a0, 0xb8004
200115f6 c.jalr a5
200115f8 or a1, a0, s10
200115fc lui a0, 0xb8004
20011600 c.jalr s4
20011602 lw a5, 0x74c(s3)
20011606 c.li a1, 1
20011608 addi a0, s0, 0x10
2001160c c.jalr a5
2001160e c.li a5, 0x10
20011610 c.mv s4, s1
20011612 bgeu a5, s1, 6
20011616 c.li s4, 0x10
20011618 lw a5, 0x74c(s3)
2001161c c.mv a1, s4
2001161e addi a0, s0, 4
20011622 c.jalr a5
20011624 lw a5, 0x74c(s3)
20011628 c.li a1, 0
2001162a addi a0, s0, 0x130
2001162e c.jalr a5
20011630 lw a5, 0x74c(s3)
20011634 lui a1, 0x31
20011638 addi a0, s0, 0x118
2001163c c.jalr a5
2001163e lw a5, 0x754(s7)
20011642 c.li a1, 3
20011644 addi a0, s0, 0x60
20011648 c.jalr a5
2001164a lw a5, 0x754(s7)
2001164e srli a1, s2, 0x10
20011652 andi a1, a1, 0xff
20011656 addi a0, s0, 0x60
2001165a c.jalr a5
2001165c lw a5, 0x754(s7)
20011660 srli a1, s2, 8
20011664 andi a1, a1, 0xff
20011668 addi a0, s0, 0x60
2001166c c.jalr a5
2001166e lw a5, 0x754(s7)
20011672 andi a1, s2, 0xff
20011676 addi a0, s0, 0x60
2001167a c.jalr a5
2001167c lw s8, 0x74c(s3)
20011680 lw a5, 0x758(s6)
20011684 addi a0, s0, 8

BASE 0x200115fc 0xb8004
200115f0 .byte 0x8b, 0x75
200115f2 lui a0, 0xb8004
200115f6 c.jalr a5
200115f8 or a1, a0, s10
200115fc lui a0, 0xb8004
20011600 c.jalr s4
20011602 lw a5, 0x74c(s3)
20011606 c.li a1, 1
20011608 addi a0, s0, 0x10
2001160c c.jalr a5
2001160e c.li a5, 0x10
20011610 c.mv s4, s1
20011612 bgeu a5, s1, 6
20011616 c.li s4, 0x10
20011618 lw a5, 0x74c(s3)
2001161c c.mv a1, s4
2001161e addi a0, s0, 4
20011622 c.jalr a5
20011624 lw a5, 0x74c(s3)
20011628 c.li a1, 0
2001162a addi a0, s0, 0x130
2001162e c.jalr a5
20011630 lw a5, 0x74c(s3)
20011634 lui a1, 0x31
20011638 addi a0, s0, 0x118
2001163c c.jalr a5
2001163e lw a5, 0x754(s7)
20011642 c.li a1, 3
20011644 addi a0, s0, 0x60
20011648 c.jalr a5
2001164a lw a5, 0x754(s7)
2001164e srli a1, s2, 0x10
20011652 andi a1, a1, 0xff
20011656 addi a0, s0, 0x60
2001165a c.jalr a5
2001165c lw a5, 0x754(s7)
20011660 srli a1, s2, 8
20011664 andi a1, a1, 0xff
20011668 addi a0, s0, 0x60
2001166c c.jalr a5
2001166e lw a5, 0x754(s7)
20011672 andi a1, s2, 0xff
20011676 addi a0, s0, 0x60
2001167a c.jalr a5
2001167c lw s8, 0x74c(s3)
20011680 lw a5, 0x758(s6)
20011684 addi a0, s0, 8
20011688 c.jalr a5
2001168a ori a1, a0, 1
2001168e addi a0, s0, 8

BASE 0x200116d2 0xb8004
200116c6 c.lui a2, 0xfffe3
200116c8 c.mv a0, a5
200116ca c.swsp a4, 0xc(sp)
200116cc c.jalr a3
200116ce add a3, s9, s8
200116d2 lui a5, 0xb8004
200116d6 c.lwsp a4, 0xc(sp)
200116d8 sb a0, 0(a3)
200116dc c.addi s8, 1
200116de addi a5, a5, 0x60
200116e2 c.j -0x34
200116e4 c.addi16sp sp, -0x30
200116e6 c.swsp s4, 0x18(sp)
200116e8 lui s4, 0x20202
200116ec lw a5, -8(s4)
200116f0 c.swsp ra, 0x2c(sp)
200116f2 c.swsp s0, 0x28(sp)
200116f4 c.swsp s1, 0x24(sp)
200116f6 c.swsp s2, 0x20(sp)
200116f8 c.swsp s3, 0x1c(sp)
200116fa c.swsp s5, 0x14(sp)
200116fc c.swsp s6, 0x10(sp)
200116fe c.swsp s7, 0xc(sp)
20011700 c.mv s5, a0
20011702 lui s6, 0x20202
20011706 c.jalr a5
20011708 lw a5, -4(s6)
2001170c c.li a0, 2
2001170e lui s2, 0x20201
20011712 c.jalr a5
20011714 lw a5, -8(s4)
20011718 lui s1, 0x20201
2001171c lui s0, 0xb8004
20011720 c.jalr a5
20011722 lw s3, 0x754(s2)
20011726 lw a5, 0x758(s1)
2001172a addi a0, s0, 8
2001172e c.jalr a5
20011730 andi a1, a0, 0xfe
20011734 addi a0, s0, 8
20011738 c.jalr s3
2001173a lui s3, 0x20201
2001173e lw s7, 0x74c(s3)
20011742 lw a5, 0x758(s1)
20011746 lui a0, 0xb8004
2001174a c.jalr a5
2001174c lui a1, 0x40000
20011750 addi a1, a1, -0x301
20011754 c.and a0, a1
20011756 lui a1, 0xc0000
2001175a c.or a1, a0
2001175c lui a0, 0xb8004
20011760 c.jalr s7
20011762 lw a5, 0x74c(s3)
20011766 .byte 0x13, 0x05

BASE 0x2001171c 0xb8004
20011710 c.fld fs0, 0x40(s0)
20011712 c.jalr a5
20011714 lw a5, -8(s4)
20011718 lui s1, 0x20201
2001171c lui s0, 0xb8004
20011720 c.jalr a5
20011722 lw s3, 0x754(s2)
20011726 lw a5, 0x758(s1)
2001172a addi a0, s0, 8
2001172e c.jalr a5
20011730 andi a1, a0, 0xfe
20011734 addi a0, s0, 8
20011738 c.jalr s3
2001173a lui s3, 0x20201
2001173e lw s7, 0x74c(s3)
20011742 lw a5, 0x758(s1)
20011746 lui a0, 0xb8004
2001174a c.jalr a5
2001174c lui a1, 0x40000
20011750 addi a1, a1, -0x301
20011754 c.and a0, a1
20011756 lui a1, 0xc0000
2001175a c.or a1, a0
2001175c lui a0, 0xb8004
20011760 c.jalr s7
20011762 lw a5, 0x74c(s3)
20011766 addi a0, s0, 4
2001176a c.li a1, 0
2001176c c.jalr a5
2001176e lw a5, 0x74c(s3)
20011772 addi a0, s0, 0x130
20011776 c.li a1, 0
20011778 c.jalr a5
2001177a lw a5, 0x754(s2)
2001177e addi a0, s0, 0x10
20011782 c.li a1, 1
20011784 c.jalr a5
20011786 lw a5, 0x74c(s3)
2001178a addi a0, s0, 0x118
2001178e c.lui a1, 1
20011790 c.jalr a5
20011792 lw a5, 0x754(s2)
20011796 addi a0, s0, 0x60
2001179a addi a1, zero, 0xc2
2001179e c.jalr a5
200117a0 lw a5, 0x754(s2)
200117a4 c.mv a1, s5
200117a6 addi a0, s0, 0x60
200117aa c.jalr a5
200117ac lw s2, 0x754(s2)
200117b0 .byte 0x83, 0xa7

BASE 0x20011746 0xb8004
2001173a lui s3, 0x20201
2001173e lw s7, 0x74c(s3)
20011742 lw a5, 0x758(s1)
20011746 lui a0, 0xb8004
2001174a c.jalr a5
2001174c lui a1, 0x40000
20011750 addi a1, a1, -0x301
20011754 c.and a0, a1
20011756 lui a1, 0xc0000
2001175a c.or a1, a0
2001175c lui a0, 0xb8004
20011760 c.jalr s7
20011762 lw a5, 0x74c(s3)
20011766 addi a0, s0, 4
2001176a c.li a1, 0
2001176c c.jalr a5
2001176e lw a5, 0x74c(s3)
20011772 addi a0, s0, 0x130
20011776 c.li a1, 0
20011778 c.jalr a5
2001177a lw a5, 0x754(s2)
2001177e addi a0, s0, 0x10
20011782 c.li a1, 1
20011784 c.jalr a5
20011786 lw a5, 0x74c(s3)
2001178a addi a0, s0, 0x118
2001178e c.lui a1, 1
20011790 c.jalr a5
20011792 lw a5, 0x754(s2)
20011796 addi a0, s0, 0x60
2001179a addi a1, zero, 0xc2
2001179e c.jalr a5
200117a0 lw a5, 0x754(s2)
200117a4 c.mv a1, s5
200117a6 addi a0, s0, 0x60
200117aa c.jalr a5
200117ac lw s2, 0x754(s2)
200117b0 lw a5, 0x758(s1)
200117b4 addi a0, s0, 8
200117b8 c.jalr a5
200117ba ori a1, a0, 1
200117be andi a1, a1, 0xff
200117c2 addi a0, s0, 8
200117c6 c.jalr s2
200117c8 c.addi s0, 8
200117ca lw a5, 0x758(s1)
200117ce c.mv a0, s0
200117d0 c.jalr a5
200117d2 c.andi a0, 1
200117d4 c.bnez a0, -0xa
200117d6 lui a5, 0x20202
200117da .byte 0x83, 0xa7

BASE 0x2001175c 0xb8004
20011750 addi a1, a1, -0x301
20011754 c.and a0, a1
20011756 lui a1, 0xc0000
2001175a c.or a1, a0
2001175c lui a0, 0xb8004
20011760 c.jalr s7
20011762 lw a5, 0x74c(s3)
20011766 addi a0, s0, 4
2001176a c.li a1, 0
2001176c c.jalr a5
2001176e lw a5, 0x74c(s3)
20011772 addi a0, s0, 0x130
20011776 c.li a1, 0
20011778 c.jalr a5
2001177a lw a5, 0x754(s2)
2001177e addi a0, s0, 0x10
20011782 c.li a1, 1
20011784 c.jalr a5
20011786 lw a5, 0x74c(s3)
2001178a addi a0, s0, 0x118
2001178e c.lui a1, 1
20011790 c.jalr a5
20011792 lw a5, 0x754(s2)
20011796 addi a0, s0, 0x60
2001179a addi a1, zero, 0xc2
2001179e c.jalr a5
200117a0 lw a5, 0x754(s2)
200117a4 c.mv a1, s5
200117a6 addi a0, s0, 0x60
200117aa c.jalr a5
200117ac lw s2, 0x754(s2)
200117b0 lw a5, 0x758(s1)
200117b4 addi a0, s0, 8
200117b8 c.jalr a5
200117ba ori a1, a0, 1
200117be andi a1, a1, 0xff
200117c2 addi a0, s0, 8
200117c6 c.jalr s2
200117c8 c.addi s0, 8
200117ca lw a5, 0x758(s1)
200117ce c.mv a0, s0
200117d0 c.jalr a5
200117d2 c.andi a0, 1
200117d4 c.bnez a0, -0xa
200117d6 lui a5, 0x20202
200117da lw a5, 4(a5)
200117de lui s0, 0x20202
200117e2 c.jalr a5
200117e4 lw a5, 0(s0)
200117e8 c.jalr a5
200117ea c.andi a0, 1
200117ec c.bnez a0, -8
200117ee lw a5, -8(s4)

BASE 0x20011864 0xb8004
20011858 c.fld fs0, 0x40(s0)
2001185a c.jalr a5
2001185c lw a5, -8(s4)
20011860 lui s1, 0x20201
20011864 lui s0, 0xb8004
20011868 c.jalr a5
2001186a lw s3, 0x754(s2)
2001186e lw a5, 0x758(s1)
20011872 addi a0, s0, 8
20011876 c.jalr a5
20011878 andi a1, a0, 0xfe
2001187c addi a0, s0, 8
20011880 c.jalr s3
20011882 lui s3, 0x20201
20011886 lw s7, 0x74c(s3)
2001188a lw a5, 0x758(s1)
2001188e lui a0, 0xb8004
20011892 c.jalr a5
20011894 lui a1, 0x40000
20011898 addi a1, a1, -0x301
2001189c c.and a0, a1
2001189e lui a1, 0xc0000
200118a2 c.or a1, a0
200118a4 lui a0, 0xb8004
200118a8 c.jalr s7
200118aa lw a5, 0x74c(s3)
200118ae addi a0, s0, 4
200118b2 c.li a1, 0
200118b4 c.jalr a5
200118b6 lw a5, 0x74c(s3)
200118ba addi a0, s0, 0x130
200118be c.li a1, 0
200118c0 c.jalr a5
200118c2 lw a5, 0x754(s2)
200118c6 addi a0, s0, 0x10
200118ca c.li a1, 1
200118cc c.jalr a5
200118ce lw a5, 0x74c(s3)
200118d2 addi a0, s0, 0x118
200118d6 c.lui a1, 1
200118d8 c.jalr a5
200118da lw a5, 0x754(s2)
200118de addi a0, s0, 0x60
200118e2 addi a1, zero, 0xc5
200118e6 c.jalr a5
200118e8 lw a5, 0x754(s2)
200118ec c.mv a1, s5
200118ee addi a0, s0, 0x60
200118f2 c.jalr a5
200118f4 lw s2, 0x754(s2)
200118f8 .byte 0x83, 0xa7

BASE 0x2001188e 0xb8004
20011882 lui s3, 0x20201
20011886 lw s7, 0x74c(s3)
2001188a lw a5, 0x758(s1)
2001188e lui a0, 0xb8004
20011892 c.jalr a5
20011894 lui a1, 0x40000
20011898 addi a1, a1, -0x301
2001189c c.and a0, a1
2001189e lui a1, 0xc0000
200118a2 c.or a1, a0
200118a4 lui a0, 0xb8004
200118a8 c.jalr s7
200118aa lw a5, 0x74c(s3)
200118ae addi a0, s0, 4
200118b2 c.li a1, 0
200118b4 c.jalr a5
200118b6 lw a5, 0x74c(s3)
200118ba addi a0, s0, 0x130
200118be c.li a1, 0
200118c0 c.jalr a5
200118c2 lw a5, 0x754(s2)
200118c6 addi a0, s0, 0x10
200118ca c.li a1, 1
200118cc c.jalr a5
200118ce lw a5, 0x74c(s3)
200118d2 addi a0, s0, 0x118
200118d6 c.lui a1, 1
200118d8 c.jalr a5
200118da lw a5, 0x754(s2)
200118de addi a0, s0, 0x60
200118e2 addi a1, zero, 0xc5
200118e6 c.jalr a5
200118e8 lw a5, 0x754(s2)
200118ec c.mv a1, s5
200118ee addi a0, s0, 0x60
200118f2 c.jalr a5
200118f4 lw s2, 0x754(s2)
200118f8 lw a5, 0x758(s1)
200118fc addi a0, s0, 8
20011900 c.jalr a5
20011902 ori a1, a0, 1
20011906 andi a1, a1, 0xff
2001190a addi a0, s0, 8
2001190e c.jalr s2
20011910 c.addi s0, 8
20011912 lw a5, 0x758(s1)
20011916 c.mv a0, s0
20011918 c.jalr a5
2001191a c.andi a0, 1
2001191c c.bnez a0, -0xa
2001191e lui a5, 0x20202
20011922 .byte 0x83, 0xa7

BASE 0x200118a4 0xb8004
20011898 addi a1, a1, -0x301
2001189c c.and a0, a1
2001189e lui a1, 0xc0000
200118a2 c.or a1, a0
200118a4 lui a0, 0xb8004
200118a8 c.jalr s7
200118aa lw a5, 0x74c(s3)
200118ae addi a0, s0, 4
200118b2 c.li a1, 0
200118b4 c.jalr a5
200118b6 lw a5, 0x74c(s3)
200118ba addi a0, s0, 0x130
200118be c.li a1, 0
200118c0 c.jalr a5
200118c2 lw a5, 0x754(s2)
200118c6 addi a0, s0, 0x10
200118ca c.li a1, 1
200118cc c.jalr a5
200118ce lw a5, 0x74c(s3)
200118d2 addi a0, s0, 0x118
200118d6 c.lui a1, 1
200118d8 c.jalr a5
200118da lw a5, 0x754(s2)
200118de addi a0, s0, 0x60
200118e2 addi a1, zero, 0xc5
200118e6 c.jalr a5
200118e8 lw a5, 0x754(s2)
200118ec c.mv a1, s5
200118ee addi a0, s0, 0x60
200118f2 c.jalr a5
200118f4 lw s2, 0x754(s2)
200118f8 lw a5, 0x758(s1)
200118fc addi a0, s0, 8
20011900 c.jalr a5
20011902 ori a1, a0, 1
20011906 andi a1, a1, 0xff
2001190a addi a0, s0, 8
2001190e c.jalr s2
20011910 c.addi s0, 8
20011912 lw a5, 0x758(s1)
20011916 c.mv a0, s0
20011918 c.jalr a5
2001191a c.andi a0, 1
2001191c c.bnez a0, -0xa
2001191e lui a5, 0x20202
20011922 lw a5, 4(a5)
20011926 lui s0, 0x20202
2001192a c.jalr a5
2001192c lw a5, 0(s0)
20011930 c.jalr a5
20011932 c.andi a0, 1
20011934 c.bnez a0, -8
20011936 lw a5, -8(s4)

BASE 0x200139f4 0xb8002
200139e8 c.addi4spn s0, sp, 0x50
200139ea lui s1, 0x20201
200139ee c.jalr a5
200139f0 lw a5, 0x754(s1)
200139f4 lui s0, 0xb8002
200139f8 addi a0, s0, 8
200139fc c.li a1, 1
200139fe c.jalr a5
20013a00 lw a5, 0x754(s1)
20013a04 addi a0, s0, 8
20013a08 c.li a1, 0
20013a0a c.jalr a5
20013a0c lw a5, 0x754(s1)
20013a10 addi a0, s0, 4
20013a14 c.li a1, 0
20013a16 c.jalr a5
20013a18 lw a5, 0x754(s1)
20013a1c addi a0, s0, 0xc
20013a20 addi a1, zero, 0x80
20013a24 c.jalr a5
20013a26 lui a5, 0x989
20013a2a addi a5, a5, 0x680
20013a2e divu a0, a5, s2
20013a32 c.swsp a0, 0xc(sp)
20013a34 c.lwsp a1, 0xc(sp)
20013a36 c.lwsp s2, 0xc(sp)
20013a38 lw a5, 0x754(s1)
20013a3c andi a1, a1, 0xff
20013a40 lui a0, 0xb8002
20013a44 c.jalr a5
20013a46 lw a5, 0x754(s1)
20013a4a srli a1, s2, 8
20013a4e andi a1, a1, 0xff
20013a52 addi a0, s0, 4
20013a56 c.jalr a5
20013a58 lui s2, 0x20201
20013a5c lw s3, 0x754(s1)
20013a60 lw a5, 0x760(s2)
20013a64 addi a0, s0, 0xc
20013a68 c.jalr a5
20013a6a andi a1, a0, 0x7f
20013a6e addi a0, s0, 0xc
20013a72 c.jalr s3
20013a74 lw a5, 0x754(s1)
20013a78 addi a0, s0, 0xc
20013a7c c.li a1, 3
20013a7e c.jalr a5
20013a80 lw a5, 0x754(s1)
20013a84 addi a0, s0, 8
20013a88 c.li a1, 3

BASE 0x20013a40 0xb8002
20013a34 c.lwsp a1, 0xc(sp)
20013a36 c.lwsp s2, 0xc(sp)
20013a38 lw a5, 0x754(s1)
20013a3c andi a1, a1, 0xff
20013a40 lui a0, 0xb8002
20013a44 c.jalr a5
20013a46 lw a5, 0x754(s1)
20013a4a srli a1, s2, 8
20013a4e andi a1, a1, 0xff
20013a52 addi a0, s0, 4
20013a56 c.jalr a5
20013a58 lui s2, 0x20201
20013a5c lw s3, 0x754(s1)
20013a60 lw a5, 0x760(s2)
20013a64 addi a0, s0, 0xc
20013a68 c.jalr a5
20013a6a andi a1, a0, 0x7f
20013a6e addi a0, s0, 0xc
20013a72 c.jalr s3
20013a74 lw a5, 0x754(s1)
20013a78 addi a0, s0, 0xc
20013a7c c.li a1, 3
20013a7e c.jalr a5
20013a80 lw a5, 0x754(s1)
20013a84 addi a0, s0, 8
20013a88 c.li a1, 3
20013a8a c.jalr a5
20013a8c c.addi s0, 0x14
20013a8e addi s3, zero, 0x60
20013a92 lw a5, 0x760(s2)
20013a96 c.mv a0, s0
20013a98 c.jalr a5
20013a9a andi a0, a0, 0x60
20013a9e bne a0, s3, -0xc
20013aa2 lui s0, 0xb8002
20013aa6 addi s3, s0, 0x14
20013aaa lw a5, 0x760(s2)
20013aae c.mv a0, s3
20013ab0 c.jalr a5
20013ab2 c.andi a0, 1
20013ab4 c.bnez a0, 0x5e
20013ab6 lw s1, 0x754(s1)
20013aba lw a5, 0x760(s2)
20013abe addi a0, s0, 4
20013ac2 c.jalr a5
20013ac4 ori a1, a0, 1
20013ac8 andi a1, a1, 0xff
20013acc addi a0, s0, 4
20013ad0 c.jalr s1
20013ad2 lui a0, 0x20202

BASE 0x20013aa2 0xb8002
20013a96 c.mv a0, s0
20013a98 c.jalr a5
20013a9a andi a0, a0, 0x60
20013a9e bne a0, s3, -0xc
20013aa2 lui s0, 0xb8002
20013aa6 addi s3, s0, 0x14
20013aaa lw a5, 0x760(s2)
20013aae c.mv a0, s3
20013ab0 c.jalr a5
20013ab2 c.andi a0, 1
20013ab4 c.bnez a0, 0x5e
20013ab6 lw s1, 0x754(s1)
20013aba lw a5, 0x760(s2)
20013abe addi a0, s0, 4
20013ac2 c.jalr a5
20013ac4 ori a1, a0, 1
20013ac8 andi a1, a1, 0xff
20013acc addi a0, s0, 4
20013ad0 c.jalr s1
20013ad2 lui a0, 0x20202
20013ad6 lui s1, 0x20205
20013ada addi s0, s1, -0x1e0
20013ade addi a5, a0, 0x690
20013ae2 addi a2, zero, 0x40
20013ae6 c.li a1, 0
20013ae8 addi a0, a0, 0x690
20013aec c.sw a5, 4(s0)
20013aee jal 0x1b6f8
20013af2 sb zero, 2(s0)
20013af6 c.lwsp ra, 0x2c(sp)
20013af8 c.lwsp s0, 0x28(sp)
20013afa c.li a5, 1
20013afc lui a4, 0x20203
20013b00 sh a5, -0x1e0(s1)
20013b04 sw a5, -0x6c4(a4)
20013b08 c.lwsp s1, 0x24(sp)
20013b0a c.lwsp s2, 0x20(sp)
20013b0c c.lwsp s3, 0x1c(sp)
20013b0e c.addi16sp sp, 0x30
20013b10 c.jr ra
20013b12 lw a5, 0x760(s2)
20013b16 lui a0, 0xb8002
20013b1a c.jalr a5
20013b1c c.swsp a0, 0xc(sp)
20013b1e c.j -0x74
20013b20 lui a5, 0x20201
20013b24 lw a5, 0x760(a5)
20013b28 c.addi sp, -0x10
20013b2a lui a0, 0xb8002
20013b2e c.swsp ra, 0xc(sp)
20013b30 c.addi a0, 0x14
20013b32 c.jalr a5
20013b34 c.lwsp ra, 0xc(sp)
20013b36 c.andi a0, 1

BASE 0x20013b16 0xb8002
20013b0a c.lwsp s2, 0x20(sp)
20013b0c c.lwsp s3, 0x1c(sp)
20013b0e c.addi16sp sp, 0x30
20013b10 c.jr ra
20013b12 lw a5, 0x760(s2)
20013b16 lui a0, 0xb8002
20013b1a c.jalr a5
20013b1c c.swsp a0, 0xc(sp)
20013b1e c.j -0x74
20013b20 lui a5, 0x20201
20013b24 lw a5, 0x760(a5)
20013b28 c.addi sp, -0x10
20013b2a lui a0, 0xb8002
20013b2e c.swsp ra, 0xc(sp)
20013b30 c.addi a0, 0x14
20013b32 c.jalr a5
20013b34 c.lwsp ra, 0xc(sp)
20013b36 c.andi a0, 1
20013b38 c.addi sp, 0x10
20013b3a c.jr ra
20013b3c c.addi sp, -0x20
20013b3e c.swsp s0, 0x18(sp)
20013b40 c.swsp ra, 0x1c(sp)
20013b42 lui s0, 0x20202
20013b46 lw a5, -0x94(s0)
20013b4a c.jalr a5
20013b4c c.beqz a0, -6
20013b4e lui a5, 0x20201
20013b52 lw a5, 0x760(a5)
20013b56 lui a0, 0xb8002
20013b5a c.jalr a5
20013b5c sb a0, 0xf(sp)
20013b60 lbu a0, 0xf(sp)
20013b64 c.lwsp ra, 0x1c(sp)
20013b66 c.lwsp s0, 0x18(sp)
20013b68 andi a0, a0, 0xff
20013b6c c.addi16sp sp, 0x20
20013b6e c.jr ra
20013b70 lui a5, 0x20203
20013b74 lw a5, 0x588(a5)
20013b78 c.addi sp, -0x20
20013b7a c.swsp s1, 0x14(sp)
20013b7c c.lw s1, 8(a5)
20013b7e lui a5, 0x20202
20013b82 lw a5, -0x98(a5)
20013b86 c.swsp s0, 0x18(sp)
20013b88 c.swsp ra, 0x1c(sp)
20013b8a c.swsp s2, 0x10(sp)
20013b8c c.swsp zero, 0xc(sp)
20013b8e c.jalr a5
20013b90 addi a5, a0, -0x20
20013b94 lui s0, 0x20205
20013b98 andi a5, a5, 0xff
20013b9c addi a3, zero, 0x5e
20013ba0 addi s0, s0, -0x1e0
20013ba4 bltu a3, a5, 0x2c
20013ba8 lbu a3, 1(s0)

BASE 0x20013b2a 0xb8002
20013b1e c.j -0x74
20013b20 lui a5, 0x20201
20013b24 lw a5, 0x760(a5)
20013b28 c.addi sp, -0x10
20013b2a lui a0, 0xb8002
20013b2e c.swsp ra, 0xc(sp)
20013b30 c.addi a0, 0x14
20013b32 c.jalr a5
20013b34 c.lwsp ra, 0xc(sp)
20013b36 c.andi a0, 1
20013b38 c.addi sp, 0x10
20013b3a c.jr ra
20013b3c c.addi sp, -0x20
20013b3e c.swsp s0, 0x18(sp)
20013b40 c.swsp ra, 0x1c(sp)
20013b42 lui s0, 0x20202
20013b46 lw a5, -0x94(s0)
20013b4a c.jalr a5
20013b4c c.beqz a0, -6
20013b4e lui a5, 0x20201
20013b52 lw a5, 0x760(a5)
20013b56 lui a0, 0xb8002
20013b5a c.jalr a5
20013b5c sb a0, 0xf(sp)
20013b60 lbu a0, 0xf(sp)
20013b64 c.lwsp ra, 0x1c(sp)
20013b66 c.lwsp s0, 0x18(sp)
20013b68 andi a0, a0, 0xff
20013b6c c.addi16sp sp, 0x20
20013b6e c.jr ra
20013b70 lui a5, 0x20203
20013b74 lw a5, 0x588(a5)
20013b78 c.addi sp, -0x20
20013b7a c.swsp s1, 0x14(sp)
20013b7c c.lw s1, 8(a5)
20013b7e lui a5, 0x20202
20013b82 lw a5, -0x98(a5)
20013b86 c.swsp s0, 0x18(sp)
20013b88 c.swsp ra, 0x1c(sp)
20013b8a c.swsp s2, 0x10(sp)
20013b8c c.swsp zero, 0xc(sp)
20013b8e c.jalr a5
20013b90 addi a5, a0, -0x20
20013b94 lui s0, 0x20205
20013b98 andi a5, a5, 0xff
20013b9c addi a3, zero, 0x5e
20013ba0 addi s0, s0, -0x1e0
20013ba4 bltu a3, a5, 0x2c
20013ba8 lbu a3, 1(s0)
20013bac c.lw a5, 4(s0)
20013bae addi a2, a3, 1
20013bb2 c.add a5, a3
20013bb4 sb a2, 1(s0)
20013bb8 sb a0, 0(a5)
20013bbc lui a5, 0x20202

BASE 0x20013b56 0xb8002
20013b4a c.jalr a5
20013b4c c.beqz a0, -6
20013b4e lui a5, 0x20201
20013b52 lw a5, 0x760(a5)
20013b56 lui a0, 0xb8002
20013b5a c.jalr a5
20013b5c sb a0, 0xf(sp)
20013b60 lbu a0, 0xf(sp)
20013b64 c.lwsp ra, 0x1c(sp)
20013b66 c.lwsp s0, 0x18(sp)
20013b68 andi a0, a0, 0xff
20013b6c c.addi16sp sp, 0x20
20013b6e c.jr ra
20013b70 lui a5, 0x20203
20013b74 lw a5, 0x588(a5)
20013b78 c.addi sp, -0x20
20013b7a c.swsp s1, 0x14(sp)
20013b7c c.lw s1, 8(a5)
20013b7e lui a5, 0x20202
20013b82 lw a5, -0x98(a5)
20013b86 c.swsp s0, 0x18(sp)
20013b88 c.swsp ra, 0x1c(sp)
20013b8a c.swsp s2, 0x10(sp)
20013b8c c.swsp zero, 0xc(sp)
20013b8e c.jalr a5
20013b90 addi a5, a0, -0x20
20013b94 lui s0, 0x20205
20013b98 andi a5, a5, 0xff
20013b9c addi a3, zero, 0x5e
20013ba0 addi s0, s0, -0x1e0
20013ba4 bltu a3, a5, 0x2c
20013ba8 lbu a3, 1(s0)
20013bac c.lw a5, 4(s0)
20013bae addi a2, a3, 1
20013bb2 c.add a5, a3
20013bb4 sb a2, 1(s0)
20013bb8 sb a0, 0(a5)
20013bbc lui a5, 0x20202
20013bc0 lw a5, -0xa0(a5)
20013bc4 c.jalr a5
20013bc6 lui a5, 0x20204
20013bca sb zero, -0x47c(a5)
20013bce c.j 0x4c
20013bd0 c.li a3, 0xd
20013bd2 lbu a5, 1(s0)
20013bd6 bne a0, a3, 0x6e
20013bda c.lw a4, 4(s0)
20013bdc addi a3, a5, 1
20013be0 sb a3, 1(s0)
20013be4 c.add a5, a4
20013be6 sb zero, 0(a5)
20013bea .byte 0x37, 0x29

BASE 0x20013cd2 0xb8002
20013cc6 c.j -0x102
20013cc8 lui a5, 0x20201
20013ccc lw a5, 0x760(a5)
20013cd0 c.addi sp, -0x10
20013cd2 lui a0, 0xb8002
20013cd6 c.swsp ra, 0xc(sp)
20013cd8 c.addi a0, 0x14
20013cda c.jalr a5
20013cdc c.lwsp ra, 0xc(sp)
20013cde c.srli a0, 5
20013ce0 c.andi a0, 1
20013ce2 c.addi sp, 0x10
20013ce4 c.jr ra
20013ce6 c.addi sp, -0x20
20013ce8 c.swsp s0, 0x18(sp)
20013cea c.swsp ra, 0x1c(sp)
20013cec c.mv a1, a0
20013cee lui s0, 0x20202
20013cf2 lw a5, -0x9c(s0)
20013cf6 c.swsp a1, 0xc(sp)
20013cf8 c.jalr a5
20013cfa c.lwsp a1, 0xc(sp)
20013cfc c.beqz a0, -0xa
20013cfe c.lwsp s0, 0x18(sp)
20013d00 lui a5, 0x20201
20013d04 c.lwsp ra, 0x1c(sp)
20013d06 lw a5, 0x754(a5)
20013d0a lui a0, 0xb8002
20013d0e c.addi16sp sp, 0x20
20013d10 c.jr a5
20013d12 lui a5, 0x20205
20013d16 lbu a5, -0x1e0(a5)
20013d1a c.beqz a5, 0x2a
20013d1c c.addi sp, -0x10
20013d1e c.swsp s0, 8(sp)
20013d20 c.swsp s1, 4(sp)
20013d22 c.swsp ra, 0xc(sp)
20013d24 c.mv s0, a0
20013d26 lui s1, 0x20202
20013d2a lbu a0, 0(s0)
20013d2e c.bnez a0, 0xc
20013d30 c.lwsp ra, 0xc(sp)
20013d32 c.lwsp s0, 8(sp)
20013d34 c.lwsp s1, 4(sp)
20013d36 c.addi sp, 0x10
20013d38 c.jr ra
20013d3a lw a5, -0xa0(s1)
20013d3e c.addi s0, 1
20013d40 c.jalr a5
20013d42 c.j -0x18
20013d44 c.jr ra
20013d46 lui a5, 0x20202
20013d4a lw a5, -0xb4(a5)
20013d4e c.addi sp, -0x10
20013d50 c.lui a0, 2
20013d52 c.swsp ra, 0xc(sp)
20013d54 c.swsp s0, 8(sp)
20013d56 c.swsp s1, 4(sp)
20013d58 c.swsp s2, 0(sp)
20013d5a addi a0, a0, -0x17c
20013d5e c.jalr a5
20013d60 lui s2, 0x20201
20013d64 lw a5, 0x758(s2)

BASE 0x20013d0a 0xb8002
20013cfe c.lwsp s0, 0x18(sp)
20013d00 lui a5, 0x20201
20013d04 c.lwsp ra, 0x1c(sp)
20013d06 lw a5, 0x754(a5)
20013d0a lui a0, 0xb8002
20013d0e c.addi16sp sp, 0x20
20013d10 c.jr a5
20013d12 lui a5, 0x20205
20013d16 lbu a5, -0x1e0(a5)
20013d1a c.beqz a5, 0x2a
20013d1c c.addi sp, -0x10
20013d1e c.swsp s0, 8(sp)
20013d20 c.swsp s1, 4(sp)
20013d22 c.swsp ra, 0xc(sp)
20013d24 c.mv s0, a0
20013d26 lui s1, 0x20202
20013d2a lbu a0, 0(s0)
20013d2e c.bnez a0, 0xc
20013d30 c.lwsp ra, 0xc(sp)
20013d32 c.lwsp s0, 8(sp)
20013d34 c.lwsp s1, 4(sp)
20013d36 c.addi sp, 0x10
20013d38 c.jr ra
20013d3a lw a5, -0xa0(s1)
20013d3e c.addi s0, 1
20013d40 c.jalr a5
20013d42 c.j -0x18
20013d44 c.jr ra
20013d46 lui a5, 0x20202
20013d4a lw a5, -0xb4(a5)
20013d4e c.addi sp, -0x10
20013d50 c.lui a0, 2
20013d52 c.swsp ra, 0xc(sp)
20013d54 c.swsp s0, 8(sp)
20013d56 c.swsp s1, 4(sp)
20013d58 c.swsp s2, 0(sp)
20013d5a addi a0, a0, -0x17c
20013d5e c.jalr a5
20013d60 lui s2, 0x20201
20013d64 lw a5, 0x758(s2)
20013d68 lui s0, 0xb8003
20013d6c addi a0, s0, 0x44
20013d70 c.jalr a5
20013d72 lui s1, 0x20201
20013d76 lw a5, 0x74c(s1)
20013d7a ori a1, a0, 0x100
20013d7e addi a0, s0, 0x44
20013d82 c.jalr a5
20013d84 lui a5, 0x20201
20013d88 lw a5, 0x73c(a5)
20013d8c lui a1, 0x400
20013d90 addi a0, zero, 0x1a4
20013d94 c.jalr a5
20013d96 lw a5, 0x758(s2)
20013d9a addi a0, s0, 0x40
20013d9e c.jalr a5

BASE 0x20013d68 0xb8003
20013d5c c.bnez s0, 0xb0
20013d5e c.jalr a5
20013d60 lui s2, 0x20201
20013d64 lw a5, 0x758(s2)
20013d68 lui s0, 0xb8003
20013d6c addi a0, s0, 0x44
20013d70 c.jalr a5
20013d72 lui s1, 0x20201
20013d76 lw a5, 0x74c(s1)
20013d7a ori a1, a0, 0x100
20013d7e addi a0, s0, 0x44
20013d82 c.jalr a5
20013d84 lui a5, 0x20201
20013d88 lw a5, 0x73c(a5)
20013d8c lui a1, 0x400
20013d90 addi a0, zero, 0x1a4
20013d94 c.jalr a5
20013d96 lw a5, 0x758(s2)
20013d9a addi a0, s0, 0x40
20013d9e c.jalr a5
20013da0 slli a1, a0, 1
20013da4 addi a0, s0, 0x40
20013da8 c.lwsp s0, 8(sp)
20013daa lw a5, 0x74c(s1)
20013dae c.lwsp ra, 0xc(sp)
20013db0 c.lwsp s1, 4(sp)
20013db2 c.lwsp s2, 0(sp)
20013db4 c.srli a1, 1
20013db6 c.addi sp, 0x10
20013db8 c.jr a5
20013dba c.addi sp, -0x10
20013dbc c.swsp s1, 4(sp)
20013dbe lui s1, 0x20201
20013dc2 lw a5, 0x74c(s1)
20013dc6 c.swsp s0, 8(sp)
20013dc8 c.swsp s2, 0(sp)
20013dca c.mv s0, a0
20013dcc c.mv s2, a1
20013dce c.mv a1, a0
20013dd0 lui a0, 0xb8003
20013dd4 c.swsp ra, 0xc(sp)
20013dd6 addi a0, a0, 0x40
20013dda c.jalr a5
20013ddc c.li a5, 1
20013dde bne s2, a5, 0xa
20013de2 lui a5, 0x20000
20013de6 c.or s0, a5
20013de8 lw a5, 0x74c(s1)
20013dec lui s2, 0xb8003
20013df0 c.mv a1, s0
20013df2 addi a0, s2, 0x40
20013df6 c.jalr a5
20013df8 lw a5, 0x74c(s1)
20013dfc .byte 0xb7, 0x05

BASE 0x20013dd0 0xb8003
20013dc4 c.flw fs1, 0x2c(s1)
20013dc6 c.swsp s0, 8(sp)
20013dc8 c.swsp s2, 0(sp)
20013dca c.mv s0, a0
20013dcc c.mv s2, a1
20013dce c.mv a1, a0
20013dd0 lui a0, 0xb8003
20013dd4 c.swsp ra, 0xc(sp)
20013dd6 addi a0, a0, 0x40
20013dda c.jalr a5
20013ddc c.li a5, 1
20013dde bne s2, a5, 0xa
20013de2 lui a5, 0x20000
20013de6 c.or s0, a5
20013de8 lw a5, 0x74c(s1)
20013dec lui s2, 0xb8003
20013df0 c.mv a1, s0
20013df2 addi a0, s2, 0x40
20013df6 c.jalr a5
20013df8 lw a5, 0x74c(s1)
20013dfc lui a1, 0x80000
20013e00 c.or a1, s0
20013e02 addi a0, s2, 0x40
20013e06 c.jalr a5
20013e08 lui a1, 0x80010
20013e0c c.or a1, s0
20013e0e c.lwsp s0, 8(sp)
20013e10 lw a5, 0x74c(s1)
20013e14 c.lwsp ra, 0xc(sp)
20013e16 c.lwsp s1, 4(sp)
20013e18 addi a0, s2, 0x40
20013e1c c.lwsp s2, 0(sp)
20013e1e c.addi sp, 0x10
20013e20 c.jr a5
20013e22 lui a5, 0x20201
20013e26 c.addi sp, -0x10
20013e28 lw a5, 0x758(a5)
20013e2c c.swsp s1, 4(sp)
20013e2e lui s1, 0xb8003
20013e32 c.swsp ra, 0xc(sp)
20013e34 c.swsp s0, 8(sp)
20013e36 c.swsp s2, 0(sp)
20013e38 c.mv s0, a0
20013e3a addi a0, s1, 0x40
20013e3e c.jalr a5
20013e40 lui s2, 0x20201
20013e44 c.lui a1, 0xffff0
20013e46 lw a5, 0x74c(s2)
20013e4a c.and a0, a1
20013e4c c.or s0, a0
20013e4e c.mv a1, s0
20013e50 addi a0, s1, 0x40
20013e54 c.jalr a5
20013e56 c.lui a1, 0x10
20013e58 c.or a1, s0
20013e5a c.lwsp s0, 8(sp)
20013e5c lw a5, 0x74c(s2)
20013e60 c.lwsp ra, 0xc(sp)
20013e62 c.lwsp s2, 0(sp)
20013e64 .byte 0x13, 0x85

BASE 0x20013dec 0xb8003
20013de0 c.addi ra, 0x1e
20013de2 lui a5, 0x20000
20013de6 c.or s0, a5
20013de8 lw a5, 0x74c(s1)
20013dec lui s2, 0xb8003
20013df0 c.mv a1, s0
20013df2 addi a0, s2, 0x40
20013df6 c.jalr a5
20013df8 lw a5, 0x74c(s1)
20013dfc lui a1, 0x80000
20013e00 c.or a1, s0
20013e02 addi a0, s2, 0x40
20013e06 c.jalr a5
20013e08 lui a1, 0x80010
20013e0c c.or a1, s0
20013e0e c.lwsp s0, 8(sp)
20013e10 lw a5, 0x74c(s1)
20013e14 c.lwsp ra, 0xc(sp)
20013e16 c.lwsp s1, 4(sp)
20013e18 addi a0, s2, 0x40
20013e1c c.lwsp s2, 0(sp)
20013e1e c.addi sp, 0x10
20013e20 c.jr a5
20013e22 lui a5, 0x20201
20013e26 c.addi sp, -0x10
20013e28 lw a5, 0x758(a5)
20013e2c c.swsp s1, 4(sp)
20013e2e lui s1, 0xb8003
20013e32 c.swsp ra, 0xc(sp)
20013e34 c.swsp s0, 8(sp)
20013e36 c.swsp s2, 0(sp)
20013e38 c.mv s0, a0
20013e3a addi a0, s1, 0x40
20013e3e c.jalr a5
20013e40 lui s2, 0x20201
20013e44 c.lui a1, 0xffff0
20013e46 lw a5, 0x74c(s2)
20013e4a c.and a0, a1
20013e4c c.or s0, a0
20013e4e c.mv a1, s0
20013e50 addi a0, s1, 0x40
20013e54 c.jalr a5
20013e56 c.lui a1, 0x10
20013e58 c.or a1, s0
20013e5a c.lwsp s0, 8(sp)
20013e5c lw a5, 0x74c(s2)
20013e60 c.lwsp ra, 0xc(sp)
20013e62 c.lwsp s2, 0(sp)
20013e64 addi a0, s1, 0x40
20013e68 c.lwsp s1, 4(sp)
20013e6a c.addi sp, 0x10
20013e6c c.jr a5
20013e6e lui a5, 0x20201
20013e72 lw a5, 0x40c(a5)
20013e76 c.addi sp, -0x20
20013e78 lui a1, 0x720a0
20013e7c c.swsp ra, 0x1c(sp)
20013e7e c.swsp s0, 0x18(sp)
20013e80 c.addi a1, 2

BASE 0x20013e2e 0xb8003
20013e22 lui a5, 0x20201
20013e26 c.addi sp, -0x10
20013e28 lw a5, 0x758(a5)
20013e2c c.swsp s1, 4(sp)
20013e2e lui s1, 0xb8003
20013e32 c.swsp ra, 0xc(sp)
20013e34 c.swsp s0, 8(sp)
20013e36 c.swsp s2, 0(sp)
20013e38 c.mv s0, a0
20013e3a addi a0, s1, 0x40
20013e3e c.jalr a5
20013e40 lui s2, 0x20201
20013e44 c.lui a1, 0xffff0
20013e46 lw a5, 0x74c(s2)
20013e4a c.and a0, a1
20013e4c c.or s0, a0
20013e4e c.mv a1, s0
20013e50 addi a0, s1, 0x40
20013e54 c.jalr a5
20013e56 c.lui a1, 0x10
20013e58 c.or a1, s0
20013e5a c.lwsp s0, 8(sp)
20013e5c lw a5, 0x74c(s2)
20013e60 c.lwsp ra, 0xc(sp)
20013e62 c.lwsp s2, 0(sp)
20013e64 addi a0, s1, 0x40
20013e68 c.lwsp s1, 4(sp)
20013e6a c.addi sp, 0x10
20013e6c c.jr a5
20013e6e lui a5, 0x20201
20013e72 lw a5, 0x40c(a5)
20013e76 c.addi sp, -0x20
20013e78 lui a1, 0x720a0
20013e7c c.swsp ra, 0x1c(sp)
20013e7e c.swsp s0, 0x18(sp)
20013e80 c.addi a1, 2
20013e82 c.li a0, 0x1c
20013e84 c.jalr a5
20013e86 c.bnez a0, 0x2a
20013e88 c.li a5, 6
20013e8a sb a5, 0(sp)
20013e8e lui a5, 0x20209
20013e92 addi a5, a5, -0x364
20013e96 c.swsp a5, 4(sp)
20013e98 c.li a5, 0x14
20013e9a c.swsp a5, 8(sp)
20013e9c lui a5, 0x20202
20013ea0 lw a5, 0x348(a5)
20013ea4 c.mv a0, sp
20013ea6 c.jalr a5
20013ea8 c.lwsp ra, 0x1c(sp)
20013eaa c.lwsp s0, 0x18(sp)
20013eac c.addi16sp sp, 0x20
20013eae c.jr ra
20013eb0 lui a5, 0x20201
20013eb4 lw a5, 0x318(a5)
20013eb8 c.mv s0, a0
20013eba c.li a2, 0
20013ebc addi a1, zero, 0x20
20013ec0 addi a0, zero, 0x55

BASE 0x20015e6a 0xb8006
20015e5e lui s2, 0x20201
20015e62 lw a5, 0x74c(s2)
20015e66 lui a1, 0x100
20015e6a lui a0, 0xb8006
20015e6e lui s4, 0xb8006
20015e72 c.lui s5, 0x10
20015e74 c.jalr a5
20015e76 addi s3, zero, 0x7d1
20015e7a lui s6, 0x20201
20015e7e addi s4, s4, 0x100
20015e82 c.addi s5, 3
20015e84 c.li s7, 3
20015e86 lui s8, 0x20202
20015e8a c.addi s3, -1
20015e8c c.slli s3, 0x10
20015e8e srli s3, s3, 0x10
20015e92 bnez s3, 0x130
20015e96 lui a5, 0x20201
20015e9a lw a5, 0x6b8(a5)
20015e9e c.lui a0, 1
20015ea0 c.li a4, 0
20015ea2 c.li a3, 5
20015ea4 c.li a2, 2
20015ea6 c.li a1, 0
20015ea8 c.jalr a5
20015eaa lui a5, 0x20202
20015eae lw a5, -0x4d4(a5)
20015eb2 c.lui a0, 1
20015eb4 c.addi a0, 0x10
20015eb6 c.jalr a5
20015eb8 lui a5, 0x20201
20015ebc lw a5, 0x668(a5)
20015ec0 c.li a0, 5
20015ec2 c.jalr a5
20015ec4 lw a5, 0x74c(s2)
20015ec8 c.li a1, 3
20015eca c.beqz a0, 4
20015ecc c.li a1, 7
20015ece lui a0, 0xb8006
20015ed2 addi a0, a0, 0x43c
20015ed6 c.jalr a5
20015ed8 lw a5, 0x74c(s2)
20015edc lui a0, 0xb8006
20015ee0 c.li a1, 7
20015ee2 addi a0, a0, 0x440
20015ee6 c.jalr a5
20015ee8 lw s4, 0x73c(s0)
20015eec lw a5, 0x748(s1)
20015ef0 c.lui s2, 8
20015ef2 addi a0, s2, 0x400
20015ef6 c.jalr a5
20015ef8 lui s3, 0x80000
20015efc or a1, a0, s3

BASE 0x20015e6e 0xb8006
20015e62 lw a5, 0x74c(s2)
20015e66 lui a1, 0x100
20015e6a lui a0, 0xb8006
20015e6e lui s4, 0xb8006
20015e72 c.lui s5, 0x10
20015e74 c.jalr a5
20015e76 addi s3, zero, 0x7d1
20015e7a lui s6, 0x20201
20015e7e addi s4, s4, 0x100
20015e82 c.addi s5, 3
20015e84 c.li s7, 3
20015e86 lui s8, 0x20202
20015e8a c.addi s3, -1
20015e8c c.slli s3, 0x10
20015e8e srli s3, s3, 0x10
20015e92 bnez s3, 0x130
20015e96 lui a5, 0x20201
20015e9a lw a5, 0x6b8(a5)
20015e9e c.lui a0, 1
20015ea0 c.li a4, 0
20015ea2 c.li a3, 5
20015ea4 c.li a2, 2
20015ea6 c.li a1, 0
20015ea8 c.jalr a5
20015eaa lui a5, 0x20202
20015eae lw a5, -0x4d4(a5)
20015eb2 c.lui a0, 1
20015eb4 c.addi a0, 0x10
20015eb6 c.jalr a5
20015eb8 lui a5, 0x20201
20015ebc lw a5, 0x668(a5)
20015ec0 c.li a0, 5
20015ec2 c.jalr a5
20015ec4 lw a5, 0x74c(s2)
20015ec8 c.li a1, 3
20015eca c.beqz a0, 4
20015ecc c.li a1, 7
20015ece lui a0, 0xb8006
20015ed2 addi a0, a0, 0x43c
20015ed6 c.jalr a5
20015ed8 lw a5, 0x74c(s2)
20015edc lui a0, 0xb8006
20015ee0 c.li a1, 7
20015ee2 addi a0, a0, 0x440
20015ee6 c.jalr a5
20015ee8 lw s4, 0x73c(s0)
20015eec lw a5, 0x748(s1)
20015ef0 c.lui s2, 8
20015ef2 addi a0, s2, 0x400
20015ef6 c.jalr a5
20015ef8 lui s3, 0x80000
20015efc or a1, a0, s3
20015f00 addi a0, s2, 0x400

BASE 0x20015ece 0xb8006
20015ec2 c.jalr a5
20015ec4 lw a5, 0x74c(s2)
20015ec8 c.li a1, 3
20015eca c.beqz a0, 4
20015ecc c.li a1, 7
20015ece lui a0, 0xb8006
20015ed2 addi a0, a0, 0x43c
20015ed6 c.jalr a5
20015ed8 lw a5, 0x74c(s2)
20015edc lui a0, 0xb8006
20015ee0 c.li a1, 7
20015ee2 addi a0, a0, 0x440
20015ee6 c.jalr a5
20015ee8 lw s4, 0x73c(s0)
20015eec lw a5, 0x748(s1)
20015ef0 c.lui s2, 8
20015ef2 addi a0, s2, 0x400
20015ef6 c.jalr a5
20015ef8 lui s3, 0x80000
20015efc or a1, a0, s3
20015f00 addi a0, s2, 0x400
20015f04 c.jalr s4
20015f06 lui a5, 0x20201
20015f0a lw s4, 0x738(a5)
20015f0e lui a5, 0x20201
20015f12 lw a5, 0x744(a5)
20015f16 addi a0, s2, 0x400
20015f1a c.jalr a5
20015f1c andi a1, a0, -0x201
20015f20 c.slli a1, 0x10
20015f22 c.srli a1, 0x10
20015f24 addi a0, s2, 0x400
20015f28 c.jalr s4
20015f2a lui a5, 0x20202
20015f2e c.li a4, 1
20015f30 addi a5, a5, 0x438
20015f34 sh a4, 0(a5)
20015f38 sh a4, 2(a5)
20015f3c sh a4, 4(a5)
20015f40 lw s4, 0x73c(s0)
20015f44 lw a5, 0x748(s1)
20015f48 c.lui a0, 0x10
20015f4a c.jalr a5
20015f4c or a1, a0, s3
20015f50 c.lui a0, 0x10
20015f52 c.jalr s4
20015f54 lw s4, 0x73c(s0)
20015f58 lw a5, 0x748(s1)
20015f5c c.lui a0, 0x14
20015f5e c.jalr a5
20015f60 or a1, a0, s3

BASE 0x20015edc 0xb8006
20015ed0 c.fsd fs0, 0x30(s0)
20015ed2 addi a0, a0, 0x43c
20015ed6 c.jalr a5
20015ed8 lw a5, 0x74c(s2)
20015edc lui a0, 0xb8006
20015ee0 c.li a1, 7
20015ee2 addi a0, a0, 0x440
20015ee6 c.jalr a5
20015ee8 lw s4, 0x73c(s0)
20015eec lw a5, 0x748(s1)
20015ef0 c.lui s2, 8
20015ef2 addi a0, s2, 0x400
20015ef6 c.jalr a5
20015ef8 lui s3, 0x80000
20015efc or a1, a0, s3
20015f00 addi a0, s2, 0x400
20015f04 c.jalr s4
20015f06 lui a5, 0x20201
20015f0a lw s4, 0x738(a5)
20015f0e lui a5, 0x20201
20015f12 lw a5, 0x744(a5)
20015f16 addi a0, s2, 0x400
20015f1a c.jalr a5
20015f1c andi a1, a0, -0x201
20015f20 c.slli a1, 0x10
20015f22 c.srli a1, 0x10
20015f24 addi a0, s2, 0x400
20015f28 c.jalr s4
20015f2a lui a5, 0x20202
20015f2e c.li a4, 1
20015f30 addi a5, a5, 0x438
20015f34 sh a4, 0(a5)
20015f38 sh a4, 2(a5)
20015f3c sh a4, 4(a5)
20015f40 lw s4, 0x73c(s0)
20015f44 lw a5, 0x748(s1)
20015f48 c.lui a0, 0x10
20015f4a c.jalr a5
20015f4c or a1, a0, s3
20015f50 c.lui a0, 0x10
20015f52 c.jalr s4
20015f54 lw s4, 0x73c(s0)
20015f58 lw a5, 0x748(s1)
20015f5c c.lui a0, 0x14
20015f5e c.jalr a5
20015f60 or a1, a0, s3
20015f64 c.lui a0, 0x14
20015f66 c.jalr s4
20015f68 lw s4, 0x73c(s0)
20015f6c lw a5, 0x748(s1)
20015f70 .byte 0x13, 0x05

BASE 0x20016040 0xb8006
20016034 c.srli a1, 0x10
20016036 addi a0, s1, 0x400
2001603a c.jalr s2
2001603c lw a5, 0x758(s3)
20016040 lui a0, 0xb8006
20016044 lui s2, 0x20201
20016048 c.jalr a5
2001604a lui a1, 0xfff00
2001604e lw a4, 0x74c(s2)
20016052 c.addi a1, -1
20016054 c.lui a5, 3
20016056 addi a5, a5, -0x800
2001605a c.and a1, a0
2001605c c.or a1, a5
2001605e lui a0, 0xb8006
20016062 c.jalr a4
20016064 lw s5, 0x73c(s0)
20016068 lw a5, 0x748(s4)
2001606c c.lui s1, 0xb
2001606e addi a0, s1, 0x794
20016072 c.jalr a5
20016074 c.mv a1, a0
20016076 addi a0, s1, 0x794
2001607a c.jalr s5
2001607c lw s5, 0x73c(s0)
20016080 lw a5, 0x748(s4)
20016084 addi a0, s1, 0x790
20016088 lui s6, 0x20202
2001608c c.jalr a5
2001608e c.mv a1, a0
20016090 addi a0, s1, 0x790
20016094 c.jalr s5
20016096 lw s5, 0x74c(s2)
2001609a lw a5, 0x758(s3)
2001609e lui s1, 0xb8006
200160a2 addi a0, s1, 0x750
200160a6 c.jalr a5
200160a8 c.mv a1, a0
200160aa addi a0, s1, 0x750
200160ae c.jalr s5
200160b0 lw s5, 0x74c(s2)
200160b4 lw a5, 0x758(s3)
200160b8 addi a0, s1, 0x754
200160bc c.jalr a5
200160be c.mv a1, a0
200160c0 addi a0, s1, 0x754
200160c4 c.jalr s5
200160c6 c.lui s5, 0xa
200160c8 addi s1, zero, 0x7d1
200160cc addi s5, s5, 0x310
200160d0 c.addi s1, -1
200160d2 c.slli s1, 0x10
200160d4 c.srli s1, 0x10

BASE 0x2001605e 0xb8006
20016052 c.addi a1, -1
20016054 c.lui a5, 3
20016056 addi a5, a5, -0x800
2001605a c.and a1, a0
2001605c c.or a1, a5
2001605e lui a0, 0xb8006
20016062 c.jalr a4
20016064 lw s5, 0x73c(s0)
20016068 lw a5, 0x748(s4)
2001606c c.lui s1, 0xb
2001606e addi a0, s1, 0x794
20016072 c.jalr a5
20016074 c.mv a1, a0
20016076 addi a0, s1, 0x794
2001607a c.jalr s5
2001607c lw s5, 0x73c(s0)
20016080 lw a5, 0x748(s4)
20016084 addi a0, s1, 0x790
20016088 lui s6, 0x20202
2001608c c.jalr a5
2001608e c.mv a1, a0
20016090 addi a0, s1, 0x790
20016094 c.jalr s5
20016096 lw s5, 0x74c(s2)
2001609a lw a5, 0x758(s3)
2001609e lui s1, 0xb8006
200160a2 addi a0, s1, 0x750
200160a6 c.jalr a5
200160a8 c.mv a1, a0
200160aa addi a0, s1, 0x750
200160ae c.jalr s5
200160b0 lw s5, 0x74c(s2)
200160b4 lw a5, 0x758(s3)
200160b8 addi a0, s1, 0x754
200160bc c.jalr a5
200160be c.mv a1, a0
200160c0 addi a0, s1, 0x754
200160c4 c.jalr s5
200160c6 c.lui s5, 0xa
200160c8 addi s1, zero, 0x7d1
200160cc addi s5, s5, 0x310
200160d0 c.addi s1, -1
200160d2 c.slli s1, 0x10
200160d4 c.srli s1, 0x10
200160d6 c.bnez s1, 0x36
200160d8 lui a5, 0x20201
200160dc lw a5, 0x6b8(a5)
200160e0 c.lui a0, 1
200160e2 c.li a4, 0
200160e4 c.li a3, 6
200160e6 c.li a2, 2
200160e8 c.li a1, 0
200160ea c.jalr a5
200160ec lui a5, 0x20202
200160f0 lw a5, -0x4d4(a5)

BASE 0x2001609e 0xb8006
20016092 c.flw fs1, 0x30(a0)
20016094 c.jalr s5
20016096 lw s5, 0x74c(s2)
2001609a lw a5, 0x758(s3)
2001609e lui s1, 0xb8006
200160a2 addi a0, s1, 0x750
200160a6 c.jalr a5
200160a8 c.mv a1, a0
200160aa addi a0, s1, 0x750
200160ae c.jalr s5
200160b0 lw s5, 0x74c(s2)
200160b4 lw a5, 0x758(s3)
200160b8 addi a0, s1, 0x754
200160bc c.jalr a5
200160be c.mv a1, a0
200160c0 addi a0, s1, 0x754
200160c4 c.jalr s5
200160c6 c.lui s5, 0xa
200160c8 addi s1, zero, 0x7d1
200160cc addi s5, s5, 0x310
200160d0 c.addi s1, -1
200160d2 c.slli s1, 0x10
200160d4 c.srli s1, 0x10
200160d6 c.bnez s1, 0x36
200160d8 lui a5, 0x20201
200160dc lw a5, 0x6b8(a5)
200160e0 c.lui a0, 1
200160e2 c.li a4, 0
200160e4 c.li a3, 6
200160e6 c.li a2, 2
200160e8 c.li a1, 0
200160ea c.jalr a5
200160ec lui a5, 0x20202
200160f0 lw a5, -0x4d4(a5)
200160f4 c.lui a0, 1
200160f6 c.addi a0, 0x10
200160f8 c.jalr a5
200160fa c.lui s5, 9
200160fc addi s1, zero, 0x7d1
20016100 addi s5, s5, -0x300
20016104 c.li s7, 3
20016106 lui s6, 0x20202
2001610a c.j 0x2e
2001610c lw a5, 0x748(s4)
20016110 c.mv a0, s5
20016112 c.jalr a5
20016114 bltz a0, -0x1a
20016118 lw a5, 0x2d0(s6)
2001611c c.li a0, 1
2001611e c.jalr a5
20016120 c.j -0x50
20016122 lw a5, 0x748(s4)
20016126 c.mv a0, s5
20016128 c.jalr a5
2001612a c.andi a0, 3
2001612c beq a0, s7, 0x36
20016130 lw a5, 0x2d0(s6)

BASE 0x200161e2 0xb8003
200161d6 c.li a1, -1
200161d8 addi a0, a0, 0x160
200161dc c.jalr a5
200161de lw a5, 0x758(s3)
200161e2 lui s0, 0xb8003
200161e6 addi a0, s0, 0x60
200161ea c.jalr a5
200161ec lw a5, 0x74c(s2)
200161f0 lui a1, 0xe0000
200161f4 c.and a1, a0
200161f6 addi a0, s0, 0x60
200161fa c.jalr a5
200161fc lui a5, 0x20202
20016200 c.lwsp s0, 0x28(sp)
20016202 c.lwsp ra, 0x2c(sp)
20016204 c.lwsp s1, 0x24(sp)
20016206 c.lwsp s2, 0x20(sp)
20016208 c.lwsp s3, 0x1c(sp)
2001620a c.lwsp s4, 0x18(sp)
2001620c c.lwsp s5, 0x14(sp)
2001620e c.lwsp s6, 0x10(sp)
20016210 c.lwsp s7, 0xc(sp)
20016212 lw a5, -0x4d4(a5)
20016216 c.lui a0, 1
20016218 c.addi a0, 2
2001621a c.addi16sp sp, 0x30
2001621c c.jr a5
2001621e c.addi16sp sp, -0x50
20016220 c.swsp s0, 0x48(sp)
20016222 lui s0, 0x20201
20016226 lw a5, 0x73c(s0)
2001622a c.swsp s1, 0x44(sp)
2001622c c.lui s1, 0xa
2001622e c.swsp ra, 0x4c(sp)
20016230 addi a0, s1, 0x3b0
20016234 c.swsp s2, 0x40(sp)
20016236 c.swsp s4, 0x38(sp)
20016238 c.li a1, -1
2001623a c.swsp s3, 0x3c(sp)
2001623c c.swsp s5, 0x34(sp)
2001623e c.swsp s6, 0x30(sp)
20016240 c.swsp s7, 0x2c(sp)
20016242 c.swsp s8, 0x28(sp)
20016244 c.swsp s9, 0x24(sp)
20016246 c.swsp s10, 0x20(sp)
20016248 c.swsp s11, 0x1c(sp)
2001624a c.jalr a5
2001624c lw a5, 0x73c(s0)
20016250 addi a0, s1, 0x3b4
20016254 c.li a1, -1
20016256 c.jalr a5
20016258 lw a5, 0x73c(s0)
2001625c addi a0, s1, 0x3b8
20016260 c.li a1, -1
20016262 c.jalr a5
20016264 lw a5, 0x73c(s0)
20016268 addi a0, s1, 0x3bc
2001626c c.li a1, -1
2001626e c.jalr a5
20016270 lui s1, 0x20201
20016274 lw a5, 0x738(s1)

BASE 0x20016950 0xb8003
20016944 c.li a0, 2
20016946 c.jalr a5
20016948 lui a5, 0x20202
2001694c lw a5, -0x4c8(a5)
20016950 lui s0, 0xb8003
20016954 c.jalr a5
20016956 lui a5, 0x20201
2001695a lw a5, 0x758(a5)
2001695e addi a0, s0, 0x60
20016962 c.jalr a5
20016964 lui a5, 0x20201
20016968 lw a5, 0x74c(a5)
2001696c lui a1, 0xc0000
20016970 c.and a1, a0
20016972 addi a0, s0, 0x60
20016976 c.jalr a5
20016978 lui a5, 0x20202
2001697c lw a5, -0x4d4(a5)
20016980 c.li a0, 3
20016982 c.j -0xb8
20016984 c.bnez a4, -0x3c
20016986 c.lwsp ra, 0xc(sp)
20016988 c.lwsp s0, 8(sp)
2001698a c.lwsp s1, 4(sp)
2001698c c.addi sp, 0x10
2001698e c.jr ra
20016990 c.addi16sp sp, -0x50
20016992 c.swsp s3, 0x3c(sp)
20016994 c.swsp s4, 0x38(sp)
20016996 c.swsp s5, 0x34(sp)
20016998 c.swsp ra, 0x4c(sp)
2001699a c.swsp s0, 0x48(sp)
2001699c c.swsp s1, 0x44(sp)
2001699e c.swsp s2, 0x40(sp)
200169a0 c.swsp s6, 0x30(sp)
200169a2 c.swsp s7, 0x2c(sp)
200169a4 c.swsp s8, 0x28(sp)
200169a6 c.swsp s9, 0x24(sp)
200169a8 c.swsp s10, 0x20(sp)
200169aa c.swsp s11, 0x1c(sp)
200169ac c.mv s3, a0
200169ae c.mv s5, a1
200169b0 c.mv a5, a0
200169b2 c.li s4, 0
200169b4 sub a4, a5, s3
200169b8 blt a4, s5, 0x6e
200169bc lui a5, 0x20201
200169c0 lw a5, 0x410(a5)
200169c4 lui a1, 0x72080
200169c8 c.li a2, 2
200169ca c.addi a1, 4
200169cc c.mv a0, s4
200169ce c.jalr a5
200169d0 c.mv s2, a0
200169d2 bnez a0, 0x116
200169d6 c.li a5, 6
200169d8 sb a5, 0(sp)
200169dc lui a5, 0x20209
200169e0 addi a5, a5, -0x2cc
200169e4 c.swsp a5, 4(sp)

BASE 0x2001aa96 0xb8003
2001aa8a .byte 0xe7, 0x62
2001aa8c c.jr ra
2001aa8e lui a5, 0x20201
2001aa92 lw a5, 0x760(a5)
2001aa96 lui a4, 0xb8003
2001aa9a c.add a0, a4
2001aa9c c.jr a5
2001aa9e lui a5, 0x20201
2001aaa2 lw a5, 0x754(a5)
2001aaa6 lui a4, 0xb8003
2001aaaa c.add a0, a4
2001aaac c.jr a5
2001aaae lui a5, 0x20202
2001aab2 lw a5, 0x2c(a5)
2001aab6 c.jr a5
2001aab8 lui a5, 0x20202
2001aabc lw a5, 0x3c(a5)
2001aac0 c.jr a5
2001aac2 c.jr ra
2001aac4 c.addi sp, -0x10
2001aac6 c.swsp s0, 8(sp)
2001aac8 c.swsp s1, 4(sp)
2001aaca c.swsp s2, 0(sp)
2001aacc c.swsp ra, 0xc(sp)
2001aace andi a5, a1, -2
2001aad2 lui a4, 0x30000
2001aad6 c.mv s0, a0
2001aad8 c.mv s2, a1
2001aada c.mv s1, a2
2001aadc bgeu a5, a4, 0x74
2001aae0 c.lui a1, 0xffffb
2001aae2 c.add a1, a5
2001aae4 lui a5, 0x30000
2001aae8 c.mv a2, s0
2001aaea bltu s0, a5, 0xa
2001aaee slli a2, s0, 3
2001aaf2 c.srli a2, 3
2001aaf4 lui a5, 0x20202
2001aaf8 lw a6, 0x6c(a5)
2001aafc c.li a4, 1
2001aafe c.lui a3, 5
2001ab00 c.li a5, 0
2001ab02 c.li a0, 0
2001ab04 c.jalr a6
2001ab06 lui a5, 0x20202
2001ab0a lw a5, 0x68(a5)
2001ab0e c.li a0, 0
2001ab10 andi s2, s2, 1
2001ab14 c.jalr a5
2001ab16 lui a5, 0x20202
2001ab1a lw a5, 0x2d0(a5)
2001ab1e addi a0, zero, 0x64
2001ab22 c.jalr a5
2001ab24 c.lui a5, 5
2001ab26 beqz s2, 0x44
2001ab2a .byte 0x13, 0x85

BASE 0x2001aaa6 0xb8003
2001aa9a c.add a0, a4
2001aa9c c.jr a5
2001aa9e lui a5, 0x20201
2001aaa2 lw a5, 0x754(a5)
2001aaa6 lui a4, 0xb8003
2001aaaa c.add a0, a4
2001aaac c.jr a5
2001aaae lui a5, 0x20202
2001aab2 lw a5, 0x2c(a5)
2001aab6 c.jr a5
2001aab8 lui a5, 0x20202
2001aabc lw a5, 0x3c(a5)
2001aac0 c.jr a5
2001aac2 c.jr ra
2001aac4 c.addi sp, -0x10
2001aac6 c.swsp s0, 8(sp)
2001aac8 c.swsp s1, 4(sp)
2001aaca c.swsp s2, 0(sp)
2001aacc c.swsp ra, 0xc(sp)
2001aace andi a5, a1, -2
2001aad2 lui a4, 0x30000
2001aad6 c.mv s0, a0
2001aad8 c.mv s2, a1
2001aada c.mv s1, a2
2001aadc bgeu a5, a4, 0x74
2001aae0 c.lui a1, 0xffffb
2001aae2 c.add a1, a5
2001aae4 lui a5, 0x30000
2001aae8 c.mv a2, s0
2001aaea bltu s0, a5, 0xa
2001aaee slli a2, s0, 3
2001aaf2 c.srli a2, 3
2001aaf4 lui a5, 0x20202
2001aaf8 lw a6, 0x6c(a5)
2001aafc c.li a4, 1
2001aafe c.lui a3, 5
2001ab00 c.li a5, 0
2001ab02 c.li a0, 0
2001ab04 c.jalr a6
2001ab06 lui a5, 0x20202
2001ab0a lw a5, 0x68(a5)
2001ab0e c.li a0, 0
2001ab10 andi s2, s2, 1
2001ab14 c.jalr a5
2001ab16 lui a5, 0x20202
2001ab1a lw a5, 0x2d0(a5)
2001ab1e addi a0, zero, 0x64
2001ab22 c.jalr a5
2001ab24 c.lui a5, 5
2001ab26 beqz s2, 0x44
2001ab2a addi a0, a5, -2
2001ab2e addi a4, zero, 0x63
2001ab32 add a5, s0, a0
2001ab36 lbu a3, 1(a5)
2001ab3a .byte 0x63, 0x90

BASE 0x2001b7c0 0xb8003
2001b7b4 c.j -0xe4
2001b7b6 lui a5, 0x20201
2001b7ba lw a5, 0x758(a5)
2001b7be c.addi sp, -0x20
2001b7c0 lui a0, 0xb8003
2001b7c4 c.swsp ra, 0x1c(sp)
2001b7c6 addi a0, a0, 0x4c
2001b7ca c.jalr a5
2001b7cc c.andi a0, 7
2001b7ce c.swsp a0, 0xc(sp)
2001b7d0 c.lwsp a5, 0xc(sp)
2001b7d2 c.andi a5, 1
2001b7d4 c.beqz a5, 0x1c
2001b7d6 lui a5, 0x20201
2001b7da lw a5, 0x684(a5)
2001b7de c.li a0, 0xc
2001b7e0 c.jalr a5
2001b7e2 lui a5, 0x20202
2001b7e6 c.lwsp ra, 0x1c(sp)
2001b7e8 lw a5, 0x270(a5)
2001b7ec c.addi16sp sp, 0x20
2001b7ee c.jr a5
2001b7f0 c.lwsp ra, 0x1c(sp)
2001b7f2 c.addi16sp sp, 0x20
2001b7f4 c.jr ra
2001b7f6 lui a5, 0x20201
2001b7fa lw a5, 0x758(a5)
2001b7fe c.addi sp, -0x20
2001b800 lui a0, 0xb8003
2001b804 c.swsp ra, 0x1c(sp)
2001b806 addi a0, a0, 0x68
2001b80a c.jalr a5
2001b80c c.swsp a0, 0xc(sp)
2001b80e c.lwsp a5, 0xc(sp)
2001b810 c.andi a5, 1
2001b812 c.beqz a5, 0x1c
2001b814 lui a5, 0x20201
2001b818 lw a5, 0x684(a5)
2001b81c c.li a0, 0x11
2001b81e c.jalr a5
2001b820 lui a5, 0x20202
2001b824 c.lwsp ra, 0x1c(sp)
2001b826 lw a5, 0x1ec(a5)
2001b82a c.addi16sp sp, 0x20
2001b82c c.jr a5
2001b82e c.lwsp ra, 0x1c(sp)
2001b830 c.addi16sp sp, 0x20
2001b832 c.jr ra
2001b834 lui a5, 0x20201
2001b838 lw a5, 0x684(a5)
2001b83c c.li a0, 0
2001b83e c.jr a5
2001b840 lui a5, 0x20201
2001b844 lw a5, 0x758(a5)
2001b848 c.addi sp, -0x20
2001b84a lui a0, 0xb8003
2001b84e c.swsp ra, 0x1c(sp)
2001b850 addi a0, a0, 0x50
2001b854 c.jalr a5

BASE 0x2001b800 0xb8003
2001b7f4 c.jr ra
2001b7f6 lui a5, 0x20201
2001b7fa lw a5, 0x758(a5)
2001b7fe c.addi sp, -0x20
2001b800 lui a0, 0xb8003
2001b804 c.swsp ra, 0x1c(sp)
2001b806 addi a0, a0, 0x68
2001b80a c.jalr a5
2001b80c c.swsp a0, 0xc(sp)
2001b80e c.lwsp a5, 0xc(sp)
2001b810 c.andi a5, 1
2001b812 c.beqz a5, 0x1c
2001b814 lui a5, 0x20201
2001b818 lw a5, 0x684(a5)
2001b81c c.li a0, 0x11
2001b81e c.jalr a5
2001b820 lui a5, 0x20202
2001b824 c.lwsp ra, 0x1c(sp)
2001b826 lw a5, 0x1ec(a5)
2001b82a c.addi16sp sp, 0x20
2001b82c c.jr a5
2001b82e c.lwsp ra, 0x1c(sp)
2001b830 c.addi16sp sp, 0x20
2001b832 c.jr ra
2001b834 lui a5, 0x20201
2001b838 lw a5, 0x684(a5)
2001b83c c.li a0, 0
2001b83e c.jr a5
2001b840 lui a5, 0x20201
2001b844 lw a5, 0x758(a5)
2001b848 c.addi sp, -0x20
2001b84a lui a0, 0xb8003
2001b84e c.swsp ra, 0x1c(sp)
2001b850 addi a0, a0, 0x50
2001b854 c.jalr a5
2001b856 lui a5, 0x20203
2001b85a lw a5, 0x588(a5)
2001b85e c.swsp a0, 0xc(sp)
2001b860 c.lw a5, 4(a5)
2001b862 lbu a5, 0xa(a5)
2001b866 beqz a5, 0x178
2001b86a c.lwsp a5, 0xc(sp)
2001b86c lui a4, 0x4000
2001b870 c.and a5, a4
2001b872 c.beqz a5, 0x1a
2001b874 lui a5, 0x20201
2001b878 lw a5, 0x684(a5)
2001b87c c.li a0, 0xb
2001b87e c.jalr a5
2001b880 lui a5, 0x20202
2001b884 lw a5, 0x26c(a5)
2001b888 c.li a0, 1
2001b88a c.jalr a5
2001b88c c.lwsp a5, 0xc(sp)
2001b88e lui a4, 0x2000
2001b892 c.and a5, a4
2001b894 c.beqz a5, 0x1a

BASE 0x2001b84a 0xb8003
2001b83e c.jr a5
2001b840 lui a5, 0x20201
2001b844 lw a5, 0x758(a5)
2001b848 c.addi sp, -0x20
2001b84a lui a0, 0xb8003
2001b84e c.swsp ra, 0x1c(sp)
2001b850 addi a0, a0, 0x50
2001b854 c.jalr a5
2001b856 lui a5, 0x20203
2001b85a lw a5, 0x588(a5)
2001b85e c.swsp a0, 0xc(sp)
2001b860 c.lw a5, 4(a5)
2001b862 lbu a5, 0xa(a5)
2001b866 beqz a5, 0x178
2001b86a c.lwsp a5, 0xc(sp)
2001b86c lui a4, 0x4000
2001b870 c.and a5, a4
2001b872 c.beqz a5, 0x1a
2001b874 lui a5, 0x20201
2001b878 lw a5, 0x684(a5)
2001b87c c.li a0, 0xb
2001b87e c.jalr a5
2001b880 lui a5, 0x20202
2001b884 lw a5, 0x26c(a5)
2001b888 c.li a0, 1
2001b88a c.jalr a5
2001b88c c.lwsp a5, 0xc(sp)
2001b88e lui a4, 0x2000
2001b892 c.and a5, a4
2001b894 c.beqz a5, 0x1a
2001b896 lui a5, 0x20201
2001b89a lw a5, 0x684(a5)
2001b89e c.li a0, 0xa
2001b8a0 c.jalr a5
2001b8a2 lui a5, 0x20202
2001b8a6 lw a5, 0x268(a5)
2001b8aa c.li a0, 1
2001b8ac c.jalr a5
2001b8ae c.lwsp a5, 0xc(sp)
2001b8b0 lui a4, 0x1000
2001b8b4 c.and a5, a4
2001b8b6 c.beqz a5, 0x1a
2001b8b8 lui a5, 0x20201
2001b8bc lw a5, 0x684(a5)
2001b8c0 c.li a0, 9
2001b8c2 c.jalr a5
2001b8c4 lui a5, 0x20202
2001b8c8 lw a5, 0x264(a5)
2001b8cc c.li a0, 1
2001b8ce c.jalr a5
2001b8d0 c.lwsp a5, 0xc(sp)
2001b8d2 lui a4, 0x800
2001b8d6 c.and a5, a4
2001b8d8 c.beqz a5, 0x1a
2001b8da lui a5, 0x20201
2001b8de .byte 0x83, 0xa7

BASE 0x2001bb48 0xb8003
2001bb3c c.jr ra
2001bb3e lui a5, 0x20201
2001bb42 lw a5, 0x758(a5)
2001bb46 c.addi sp, -0x20
2001bb48 lui a0, 0xb8003
2001bb4c c.swsp ra, 0x1c(sp)
2001bb4e addi a0, a0, 0x54
2001bb52 c.jalr a5
2001bb54 c.andi a0, 7
2001bb56 c.swsp a0, 0xc(sp)
2001bb58 c.lwsp a5, 0xc(sp)
2001bb5a c.andi a5, 4
2001bb5c c.beqz a5, 0x18
2001bb5e lui a5, 0x20201
2001bb62 lw a5, 0x684(a5)
2001bb66 c.li a0, 0xe
2001bb68 c.jalr a5
2001bb6a lui a5, 0x20202
2001bb6e lw a5, 0x27c(a5)
2001bb72 c.jalr a5
2001bb74 c.lwsp a5, 0xc(sp)
2001bb76 c.andi a5, 2
2001bb78 c.beqz a5, 0x1c
2001bb7a lui a5, 0x20201
2001bb7e lw a5, 0x684(a5)
2001bb82 c.li a0, 0xd
2001bb84 c.jalr a5
2001bb86 lui a5, 0x20202
2001bb8a c.lwsp ra, 0x1c(sp)
2001bb8c lw a5, 0x278(a5)
2001bb90 c.addi16sp sp, 0x20
2001bb92 c.jr a5
2001bb94 c.lwsp ra, 0x1c(sp)
2001bb96 c.addi16sp sp, 0x20
2001bb98 c.jr ra
2001bb9a lui a5, 0x20201
2001bb9e lw a5, 0x758(a5)
2001bba2 c.addi sp, -0x20
2001bba4 lui a0, 0xb8003
2001bba8 c.swsp ra, 0x1c(sp)
2001bbaa addi a0, a0, 0x58
2001bbae c.jalr a5
2001bbb0 c.swsp a0, 0xc(sp)
2001bbb2 c.lwsp a5, 0xc(sp)
2001bbb4 c.andi a5, 2
2001bbb6 c.beqz a5, 0xc
2001bbb8 lui a5, 0x20201
2001bbbc lw a5, 0x680(a5)
2001bbc0 c.jalr a5
2001bbc2 c.lwsp a5, 0xc(sp)
2001bbc4 c.andi a5, 1
2001bbc6 c.beqz a5, 0x1c
2001bbc8 lui a5, 0x20201
2001bbcc lw a5, 0x684(a5)
2001bbd0 c.li a0, 0xf
2001bbd2 c.jalr a5
2001bbd4 lui a5, 0x20202
2001bbd8 c.lwsp ra, 0x1c(sp)
2001bbda lw a5, 0x280(a5)

BASE 0x2001bba4 0xb8003
2001bb98 c.jr ra
2001bb9a lui a5, 0x20201
2001bb9e lw a5, 0x758(a5)
2001bba2 c.addi sp, -0x20
2001bba4 lui a0, 0xb8003
2001bba8 c.swsp ra, 0x1c(sp)
2001bbaa addi a0, a0, 0x58
2001bbae c.jalr a5
2001bbb0 c.swsp a0, 0xc(sp)
2001bbb2 c.lwsp a5, 0xc(sp)
2001bbb4 c.andi a5, 2
2001bbb6 c.beqz a5, 0xc
2001bbb8 lui a5, 0x20201
2001bbbc lw a5, 0x680(a5)
2001bbc0 c.jalr a5
2001bbc2 c.lwsp a5, 0xc(sp)
2001bbc4 c.andi a5, 1
2001bbc6 c.beqz a5, 0x1c
2001bbc8 lui a5, 0x20201
2001bbcc lw a5, 0x684(a5)
2001bbd0 c.li a0, 0xf
2001bbd2 c.jalr a5
2001bbd4 lui a5, 0x20202
2001bbd8 c.lwsp ra, 0x1c(sp)
2001bbda lw a5, 0x280(a5)
2001bbde c.addi16sp sp, 0x20
2001bbe0 c.jr a5
2001bbe2 c.lwsp ra, 0x1c(sp)
2001bbe4 c.addi16sp sp, 0x20
2001bbe6 c.jr ra
2001bbe8 lui a5, 0x20201
2001bbec lw a5, 0x758(a5)
2001bbf0 c.addi sp, -0x20
2001bbf2 lui a0, 0xb8003
2001bbf6 c.swsp ra, 0x1c(sp)
2001bbf8 addi a0, a0, 0x5c
2001bbfc c.jalr a5
2001bbfe c.andi a0, 7
2001bc00 c.swsp a0, 0xc(sp)
2001bc02 c.lwsp a5, 0xc(sp)
2001bc04 c.andi a5, 4
2001bc06 c.beqz a5, 0x18
2001bc08 lui a5, 0x20201
2001bc0c lw a5, 0x684(a5)
2001bc10 c.li a0, 0x10
2001bc12 c.jalr a5
2001bc14 lui a5, 0x20202
2001bc18 lw a5, -0x2d8(a5)
2001bc1c c.jalr a5
2001bc1e c.lwsp a5, 0xc(sp)
2001bc20 c.andi a5, 1
2001bc22 c.beqz a5, 0x1c
2001bc24 lui a5, 0x20201
2001bc28 lw a5, 0x684(a5)
2001bc2c c.li a0, 0x12
2001bc2e c.jalr a5
2001bc30 lui a5, 0x20202
2001bc34 c.lwsp ra, 0x1c(sp)
2001bc36 lw a5, 0x70(a5)

BASE 0x2001bbf2 0xb8003
2001bbe6 c.jr ra
2001bbe8 lui a5, 0x20201
2001bbec lw a5, 0x758(a5)
2001bbf0 c.addi sp, -0x20
2001bbf2 lui a0, 0xb8003
2001bbf6 c.swsp ra, 0x1c(sp)
2001bbf8 addi a0, a0, 0x5c
2001bbfc c.jalr a5
2001bbfe c.andi a0, 7
2001bc00 c.swsp a0, 0xc(sp)
2001bc02 c.lwsp a5, 0xc(sp)
2001bc04 c.andi a5, 4
2001bc06 c.beqz a5, 0x18
2001bc08 lui a5, 0x20201
2001bc0c lw a5, 0x684(a5)
2001bc10 c.li a0, 0x10
2001bc12 c.jalr a5
2001bc14 lui a5, 0x20202
2001bc18 lw a5, -0x2d8(a5)
2001bc1c c.jalr a5
2001bc1e c.lwsp a5, 0xc(sp)
2001bc20 c.andi a5, 1
2001bc22 c.beqz a5, 0x1c
2001bc24 lui a5, 0x20201
2001bc28 lw a5, 0x684(a5)
2001bc2c c.li a0, 0x12
2001bc2e c.jalr a5
2001bc30 lui a5, 0x20202
2001bc34 c.lwsp ra, 0x1c(sp)
2001bc36 lw a5, 0x70(a5)
2001bc3a c.addi16sp sp, 0x20
2001bc3c c.jr a5
2001bc3e c.lwsp ra, 0x1c(sp)
2001bc40 c.addi16sp sp, 0x20
2001bc42 c.jr ra
2001bc44 c.addi16sp sp, -0x30
2001bc46 c.swsp s0, 0x28(sp)
2001bc48 lui s0, 0x20201
2001bc4c lw a5, 0x758(s0)
2001bc50 lui a0, 0xb8003
2001bc54 c.swsp ra, 0x2c(sp)
2001bc56 c.swsp s1, 0x24(sp)
2001bc58 c.swsp s2, 0x20(sp)
2001bc5a c.swsp s3, 0x1c(sp)
2001bc5c c.swsp s4, 0x18(sp)
2001bc5e addi a0, a0, 0x60
2001bc62 c.jalr a5
2001bc64 c.srli a0, 0x1d
2001bc66 c.swsp a0, 0xc(sp)
2001bc68 c.lwsp a5, 0xc(sp)
2001bc6a c.beqz a5, 0x1a
2001bc6c lui a5, 0x20201
2001bc70 lw a5, 0x684(a5)
2001bc74 c.li a0, 0x13
2001bc76 c.jalr a5
2001bc78 lui a5, 0x20202
2001bc7c lw a5, -0x4d8(a5)
2001bc80 c.lwsp a0, 0xc(sp)
2001bc82 c.jalr a5
2001bc84 lw a5, 0x758(s0)

BASE 0x2001bc50 0xb8003
2001bc44 c.addi16sp sp, -0x30
2001bc46 c.swsp s0, 0x28(sp)
2001bc48 lui s0, 0x20201
2001bc4c lw a5, 0x758(s0)
2001bc50 lui a0, 0xb8003
2001bc54 c.swsp ra, 0x2c(sp)
2001bc56 c.swsp s1, 0x24(sp)
2001bc58 c.swsp s2, 0x20(sp)
2001bc5a c.swsp s3, 0x1c(sp)
2001bc5c c.swsp s4, 0x18(sp)
2001bc5e addi a0, a0, 0x60
2001bc62 c.jalr a5
2001bc64 c.srli a0, 0x1d
2001bc66 c.swsp a0, 0xc(sp)
2001bc68 c.lwsp a5, 0xc(sp)
2001bc6a c.beqz a5, 0x1a
2001bc6c lui a5, 0x20201
2001bc70 lw a5, 0x684(a5)
2001bc74 c.li a0, 0x13
2001bc76 c.jalr a5
2001bc78 lui a5, 0x20202
2001bc7c lw a5, -0x4d8(a5)
2001bc80 c.lwsp a0, 0xc(sp)
2001bc82 c.jalr a5
2001bc84 lw a5, 0x758(s0)
2001bc88 lui s1, 0xb8003
2001bc8c addi a0, s1, 0x60
2001bc90 c.jalr a5
2001bc92 lui s3, 0x10000
2001bc96 and a0, a0, s3
2001bc9a c.beqz a0, 0x56
2001bc9c lw a5, 0x758(s0)
2001bca0 addi a0, s1, 0x3c
2001bca4 c.jalr a5
2001bca6 lui a5, 0x20201
2001bcaa lw s4, 0x74c(a5)
2001bcae lw a5, 0x758(s0)
2001bcb2 c.mv s2, a0
2001bcb4 addi a0, s1, 0x60
2001bcb8 c.jalr a5
2001bcba or a1, a0, s3
2001bcbe addi a0, s1, 0x60
2001bcc2 c.jalr s4
2001bcc4 lui s1, 0x20201
2001bcc8 lw a5, 0x73c(s1)
2001bccc c.mv a1, s2
2001bcce addi a0, zero, 0x1f4
2001bcd2 c.jalr a5
2001bcd4 lui a5, 0x20201
2001bcd8 lw a5, 0x748(a5)
2001bcdc addi a0, zero, 0x1f0
2001bce0 c.jalr a5
2001bce2 lw a5, 0x73c(s1)

BASE 0x2001bc88 0xb8003
2001bc7c lw a5, -0x4d8(a5)
2001bc80 c.lwsp a0, 0xc(sp)
2001bc82 c.jalr a5
2001bc84 lw a5, 0x758(s0)
2001bc88 lui s1, 0xb8003
2001bc8c addi a0, s1, 0x60
2001bc90 c.jalr a5
2001bc92 lui s3, 0x10000
2001bc96 and a0, a0, s3
2001bc9a c.beqz a0, 0x56
2001bc9c lw a5, 0x758(s0)
2001bca0 addi a0, s1, 0x3c
2001bca4 c.jalr a5
2001bca6 lui a5, 0x20201
2001bcaa lw s4, 0x74c(a5)
2001bcae lw a5, 0x758(s0)
2001bcb2 c.mv s2, a0
2001bcb4 addi a0, s1, 0x60
2001bcb8 c.jalr a5
2001bcba or a1, a0, s3
2001bcbe addi a0, s1, 0x60
2001bcc2 c.jalr s4
2001bcc4 lui s1, 0x20201
2001bcc8 lw a5, 0x73c(s1)
2001bccc c.mv a1, s2
2001bcce addi a0, zero, 0x1f4
2001bcd2 c.jalr a5
2001bcd4 lui a5, 0x20201
2001bcd8 lw a5, 0x748(a5)
2001bcdc addi a0, zero, 0x1f0
2001bce0 c.jalr a5
2001bce2 lw a5, 0x73c(s1)
2001bce6 ori a1, a0, 8
2001bcea addi a0, zero, 0x1f0
2001bcee c.jalr a5
2001bcf0 lw a5, 0x758(s0)
2001bcf4 lui s1, 0xb8003
2001bcf8 addi a0, s1, 0x60
2001bcfc c.jalr a5
2001bcfe lui s3, 0x800
2001bd02 and a0, a0, s3
2001bd06 c.beqz a0, 0x64
2001bd08 lw a5, 0x758(s0)
2001bd0c addi a0, s1, 0x8c
2001bd10 c.jalr a5
2001bd12 lui a5, 0x20201
2001bd16 lw s4, 0x74c(a5)
2001bd1a lw a5, 0x758(s0)

BASE 0x2001bcf4 0xb8003
2001bce8 c.addi ra, 1
2001bcea addi a0, zero, 0x1f0
2001bcee c.jalr a5
2001bcf0 lw a5, 0x758(s0)
2001bcf4 lui s1, 0xb8003
2001bcf8 addi a0, s1, 0x60
2001bcfc c.jalr a5
2001bcfe lui s3, 0x800
2001bd02 and a0, a0, s3
2001bd06 c.beqz a0, 0x64
2001bd08 lw a5, 0x758(s0)
2001bd0c addi a0, s1, 0x8c
2001bd10 c.jalr a5
2001bd12 lui a5, 0x20201
2001bd16 lw s4, 0x74c(a5)
2001bd1a lw a5, 0x758(s0)
2001bd1e c.mv s2, a0
2001bd20 addi a0, s1, 0x60
2001bd24 c.jalr a5
2001bd26 or a1, a0, s3
2001bd2a addi a0, s1, 0x60
2001bd2e c.jalr s4
2001bd30 lui s0, 0x20201
2001bd34 lw a5, 0x73c(s0)
2001bd38 c.mv a1, s2
2001bd3a addi a0, zero, 0x1f4
2001bd3e c.jalr a5
2001bd40 lui a5, 0x20201
2001bd44 lw a5, 0x748(a5)
2001bd48 addi a0, zero, 0x1f0
2001bd4c c.jalr a5
2001bd4e lw a5, 0x73c(s0)
2001bd52 c.lwsp s0, 0x28(sp)
2001bd54 c.lwsp ra, 0x2c(sp)
2001bd56 c.lwsp s1, 0x24(sp)
2001bd58 c.lwsp s2, 0x20(sp)
2001bd5a c.lwsp s3, 0x1c(sp)
2001bd5c c.lwsp s4, 0x18(sp)
2001bd5e ori a1, a0, 8
2001bd62 addi a0, zero, 0x1f0
2001bd66 c.addi16sp sp, 0x30
2001bd68 c.jr a5
2001bd6a c.lwsp ra, 0x2c(sp)
2001bd6c c.lwsp s0, 0x28(sp)
2001bd6e c.lwsp s1, 0x24(sp)
2001bd70 c.lwsp s2, 0x20(sp)
2001bd72 c.lwsp s3, 0x1c(sp)
2001bd74 c.lwsp s4, 0x18(sp)
2001bd76 c.addi16sp sp, 0x30
2001bd78 c.jr ra
2001bd7a lui a5, 0x20201
2001bd7e lw a5, 0x758(a5)
2001bd82 c.addi sp, -0x20
2001bd84 lui a0, 0xb8003
2001bd88 c.swsp ra, 0x1c(sp)

BASE 0x2001bd84 0xb8003
2001bd78 c.jr ra
2001bd7a lui a5, 0x20201
2001bd7e lw a5, 0x758(a5)
2001bd82 c.addi sp, -0x20
2001bd84 lui a0, 0xb8003
2001bd88 c.swsp ra, 0x1c(sp)
2001bd8a c.swsp s0, 0x18(sp)
2001bd8c c.swsp s1, 0x14(sp)
2001bd8e addi a0, a0, 0x6c
2001bd92 c.jalr a5
2001bd94 c.andi a0, 3
2001bd96 c.swsp a0, 0xc(sp)
2001bd98 c.lwsp a5, 0xc(sp)
2001bd9a c.andi a5, 1
2001bd9c c.beqz a5, 0x42
2001bd9e lui a5, 0x20201
2001bda2 lw a5, 0x684(a5)
2001bda6 c.li a0, 0x14
2001bda8 c.jalr a5
2001bdaa lui a5, 0x20201
2001bdae lw a5, 0x760(a5)
2001bdb2 lui a0, 0xb8002
2001bdb6 c.addi a0, 8
2001bdb8 c.jalr a5
2001bdba c.andi a0, 0xf
2001bdbc sb a0, 0xb(sp)
2001bdc0 lbu a5, 0xb(sp)
2001bdc4 c.li a4, 4
2001bdc6 andi a5, a5, 0xff
2001bdca bne a5, a4, 0x28
2001bdce lui s0, 0x20202
2001bdd2 lui s1, 0x20202
2001bdd6 lw a5, -0x94(s0)
2001bdda c.jalr a5
2001bddc c.bnez a0, 0xe
2001bdde c.lwsp ra, 0x1c(sp)
2001bde0 c.lwsp s0, 0x18(sp)
2001bde2 c.lwsp a5, 0xc(sp)
2001bde4 c.lwsp s1, 0x14(sp)
2001bde6 c.addi16sp sp, 0x20
2001bde8 c.jr ra
2001bdea lw a5, -0xa8(s1)
2001bdee c.jalr a5
2001bdf0 c.j -0x1a
2001bdf2 lui a5, 0x20202
2001bdf6 lw a5, 0x340(a5)
2001bdfa c.lui a1, 2
2001bdfc c.li a0, 0
2001bdfe c.jalr a5
2001be00 c.j -0x22
2001be02 lui a5, 0x20201
2001be06 lw a5, 0xc4(a5)
2001be0a lui a0, 0x20209
2001be0e addi a1, zero, 0x127
2001be12 addi a0, a0, 0xf8
2001be16 c.jr a5
2001be18 .byte 0xb7, 0x37

BASE 0x2001bdb2 0xb8002
2001bda6 c.li a0, 0x14
2001bda8 c.jalr a5
2001bdaa lui a5, 0x20201
2001bdae lw a5, 0x760(a5)
2001bdb2 lui a0, 0xb8002
2001bdb6 c.addi a0, 8
2001bdb8 c.jalr a5
2001bdba c.andi a0, 0xf
2001bdbc sb a0, 0xb(sp)
2001bdc0 lbu a5, 0xb(sp)
2001bdc4 c.li a4, 4
2001bdc6 andi a5, a5, 0xff
2001bdca bne a5, a4, 0x28
2001bdce lui s0, 0x20202
2001bdd2 lui s1, 0x20202
2001bdd6 lw a5, -0x94(s0)
2001bdda c.jalr a5
2001bddc c.bnez a0, 0xe
2001bdde c.lwsp ra, 0x1c(sp)
2001bde0 c.lwsp s0, 0x18(sp)
2001bde2 c.lwsp a5, 0xc(sp)
2001bde4 c.lwsp s1, 0x14(sp)
2001bde6 c.addi16sp sp, 0x20
2001bde8 c.jr ra
2001bdea lw a5, -0xa8(s1)
2001bdee c.jalr a5
2001bdf0 c.j -0x1a
2001bdf2 lui a5, 0x20202
2001bdf6 lw a5, 0x340(a5)
2001bdfa c.lui a1, 2
2001bdfc c.li a0, 0
2001bdfe c.jalr a5
2001be00 c.j -0x22
2001be02 lui a5, 0x20201
2001be06 lw a5, 0xc4(a5)
2001be0a lui a0, 0x20209
2001be0e addi a1, zero, 0x127
2001be12 addi a0, a0, 0xf8
2001be16 c.jr a5
2001be18 lui a5, 0x20203
2001be1c lw a5, 0x588(a5)
2001be20 c.addi16sp sp, -0x30
2001be22 c.swsp s0, 0x28(sp)
2001be24 lui s0, 0x20201
2001be28 c.swsp s2, 0x20(sp)
2001be2a lw s2, 8(a5)
2001be2e lw a5, 0x758(s0)
2001be32 c.swsp s1, 0x24(sp)
2001be34 lui s1, 0xb8005
2001be38 c.swsp ra, 0x2c(sp)
2001be3a c.swsp s3, 0x1c(sp)
2001be3c c.swsp zero, 0xc(sp)
2001be3e addi a0, s1, 0x130
2001be42 c.jalr a5
2001be44 andi a0, a0, 0xff

BASE 0x2001be34 0xb8005
2001be28 c.swsp s2, 0x20(sp)
2001be2a lw s2, 8(a5)
2001be2e lw a5, 0x758(s0)
2001be32 c.swsp s1, 0x24(sp)
2001be34 lui s1, 0xb8005
2001be38 c.swsp ra, 0x2c(sp)
2001be3a c.swsp s3, 0x1c(sp)
2001be3c c.swsp zero, 0xc(sp)
2001be3e addi a0, s1, 0x130
2001be42 c.jalr a5
2001be44 andi a0, a0, 0xff
2001be48 addi a5, zero, 0x21
2001be4c bne a0, a5, 0x56
2001be50 lw a5, 0x758(s0)
2001be54 addi a0, s1, 0x100
2001be58 c.jalr a5
2001be5a andi a0, a0, 0xff
2001be5e c.li a5, 3
2001be60 bne a0, a5, 0x42
2001be64 lw a5, 0x758(s0)
2001be68 addi a0, s1, 0x200
2001be6c lui s3, 0x20201
2001be70 c.jalr a5
2001be72 c.swsp a0, 8(sp)
2001be74 c.lwsp a5, 8(sp)
2001be76 lui a4, 0xfe000
2001be7a c.addi a4, -1
2001be7c c.and a5, a4
2001be7e c.swsp a5, 8(sp)
2001be80 lw a5, 0x74c(s3)
2001be84 c.lwsp a1, 8(sp)
2001be86 addi a0, s1, 0x200
2001be8a c.jalr a5
2001be8c c.lwsp a5, 8(sp)
2001be8e lui a4, 0x2000
2001be92 addi a0, s1, 0x200
2001be96 c.or a5, a4
2001be98 c.swsp a5, 8(sp)
2001be9a lw a5, 0x74c(s3)
2001be9e c.lwsp a1, 8(sp)
2001bea0 c.jalr a5
2001bea2 lw a5, 0x758(s0)
2001bea6 lui a0, 0xb8003
2001beaa addi a0, a0, 0x64
2001beae c.jalr a5
2001beb0 c.swsp a0, 4(sp)
2001beb2 c.lwsp a5, 4(sp)
2001beb4 c.andi a5, 1
2001beb6 c.beqz a5, 0x2e
2001beb8 lui a5, 0x20201
2001bebc lw a5, 0x684(a5)
2001bec0 c.li a0, 0x15
2001bec2 c.jalr a5
2001bec4 lui a5, 0x20202
2001bec8 .byte 0x83, 0xa7

BASE 0x2001bea6 0xb8003
2001be9a lw a5, 0x74c(s3)
2001be9e c.lwsp a1, 8(sp)
2001bea0 c.jalr a5
2001bea2 lw a5, 0x758(s0)
2001bea6 lui a0, 0xb8003
2001beaa addi a0, a0, 0x64
2001beae c.jalr a5
2001beb0 c.swsp a0, 4(sp)
2001beb2 c.lwsp a5, 4(sp)
2001beb4 c.andi a5, 1
2001beb6 c.beqz a5, 0x2e
2001beb8 lui a5, 0x20201
2001bebc lw a5, 0x684(a5)
2001bec0 c.li a0, 0x15
2001bec2 c.jalr a5
2001bec4 lui a5, 0x20202
2001bec8 lw a5, 0x1c(a5)
2001becc c.jalr a5
2001bece lui a5, 0x20201
2001bed2 lw a5, 0x18c(a5)
2001bed6 lw a0, 8(s2)
2001beda c.addi4spn a4, sp, 0xc
2001bedc c.li a3, 0
2001bede c.li a2, 1
2001bee0 c.li a1, 2
2001bee2 c.jalr a5
2001bee4 c.lwsp a5, 0xc(sp)
2001bee6 c.beqz a5, 0xc
2001bee8 lui a5, 0x20201
2001beec lw a5, 0x214(a5)
2001bef0 c.jalr a5
2001bef2 c.lwsp ra, 0x2c(sp)
2001bef4 c.lwsp s0, 0x28(sp)
2001bef6 c.lwsp s1, 0x24(sp)
2001bef8 c.lwsp s2, 0x20(sp)
2001befa c.lwsp s3, 0x1c(sp)
2001befc c.addi16sp sp, 0x30
2001befe c.jr ra
2001bf00 c.addi16sp sp, -0x30
2001bf02 c.swsp s2, 0x20(sp)
2001bf04 lui s2, 0x20201
2001bf08 lw a5, 0x40c(s2)
2001bf0c c.swsp s1, 0x24(sp)
2001bf0e lui s1, 0x71020
2001bf12 c.swsp s0, 0x28(sp)
2001bf14 c.swsp ra, 0x2c(sp)
2001bf16 c.swsp s3, 0x1c(sp)
2001bf18 addi a1, s1, 7
2001bf1c c.li a0, 8
2001bf1e lui s0, 0x20203
2001bf22 c.jalr a5
2001bf24 addi s0, s0, 0x580
2001bf28 c.sw a0, 0x24(s0)
2001bf2a c.bnez a0, 0x32
2001bf2c c.li a5, 6
2001bf2e sb a5, 0(sp)
2001bf32 lui a5, 0x20209
2001bf36 addi a5, a5, 0x10c
2001bf3a c.swsp a5, 4(sp)

BASE 0x2001c210 0xb8006
2001c204 lui s0, 0x20201
2001c208 lw a5, 0x74c(s0)
2001c20c lui a1, 0x100
2001c210 lui a0, 0xb8006
2001c214 lui s2, 0xb8006
2001c218 c.jalr a5
2001c21a addi s1, zero, 0x7d1
2001c21e lui s3, 0x20201
2001c222 addi s4, s2, 0x100
2001c226 c.lui s5, 0x10
2001c228 lui s6, 0x20202
2001c22c c.addi s1, -1
2001c22e c.bnez s1, 0x1c
2001c230 lui a5, 0x20201
2001c234 lw a5, 0x6b8(a5)
2001c238 c.lui a0, 1
2001c23a c.li a4, 0
2001c23c addi a3, zero, 0xf6
2001c240 c.li a2, 2
2001c242 c.li a1, 0
2001c244 c.jalr a5
2001c246 c.li a0, 0
2001c248 c.j 0x5e
2001c24a lw a5, 0x758(s3)
2001c24e c.mv a0, s4
2001c250 c.jalr a5
2001c252 and a0, a0, s5
2001c256 c.beqz a0, 0x64
2001c258 lw a5, 0x2d0(s6)
2001c25c c.li a0, 1
2001c25e c.jalr a5
2001c260 c.j -0x34
2001c262 lw a5, 0x74c(s0)
2001c266 c.li a1, 3
2001c268 addi a0, s2, 0x43c
2001c26c c.jalr a5
2001c26e lw a5, 0x74c(s0)
2001c272 lui a0, 0xb8006
2001c276 c.li a1, 7
2001c278 addi a0, a0, 0x440
2001c27c c.jalr a5
2001c27e lui a5, 0x20201
2001c282 lw s1, 0x738(a5)
2001c286 lui a5, 0x20201
2001c28a lw a5, 0x744(a5)
2001c28e c.lui s0, 8
2001c290 addi a0, s0, 0x400
2001c294 c.jalr a5
2001c296 andi a1, a0, -0x201
2001c29a c.slli a1, 0x10
2001c29c c.srli a1, 0x10
2001c29e addi a0, s0, 0x400
2001c2a2 c.jalr s1
2001c2a4 c.li a0, 1

BASE 0x2001c214 0xb8006
2001c208 lw a5, 0x74c(s0)
2001c20c lui a1, 0x100
2001c210 lui a0, 0xb8006
2001c214 lui s2, 0xb8006
2001c218 c.jalr a5
2001c21a addi s1, zero, 0x7d1
2001c21e lui s3, 0x20201
2001c222 addi s4, s2, 0x100
2001c226 c.lui s5, 0x10
2001c228 lui s6, 0x20202
2001c22c c.addi s1, -1
2001c22e c.bnez s1, 0x1c
2001c230 lui a5, 0x20201
2001c234 lw a5, 0x6b8(a5)
2001c238 c.lui a0, 1
2001c23a c.li a4, 0
2001c23c addi a3, zero, 0xf6
2001c240 c.li a2, 2
2001c242 c.li a1, 0
2001c244 c.jalr a5
2001c246 c.li a0, 0
2001c248 c.j 0x5e
2001c24a lw a5, 0x758(s3)
2001c24e c.mv a0, s4
2001c250 c.jalr a5
2001c252 and a0, a0, s5
2001c256 c.beqz a0, 0x64
2001c258 lw a5, 0x2d0(s6)
2001c25c c.li a0, 1
2001c25e c.jalr a5
2001c260 c.j -0x34
2001c262 lw a5, 0x74c(s0)
2001c266 c.li a1, 3
2001c268 addi a0, s2, 0x43c
2001c26c c.jalr a5
2001c26e lw a5, 0x74c(s0)
2001c272 lui a0, 0xb8006
2001c276 c.li a1, 7
2001c278 addi a0, a0, 0x440
2001c27c c.jalr a5
2001c27e lui a5, 0x20201
2001c282 lw s1, 0x738(a5)
2001c286 lui a5, 0x20201
2001c28a lw a5, 0x744(a5)
2001c28e c.lui s0, 8
2001c290 addi a0, s0, 0x400
2001c294 c.jalr a5
2001c296 andi a1, a0, -0x201
2001c29a c.slli a1, 0x10
2001c29c c.srli a1, 0x10
2001c29e addi a0, s0, 0x400
2001c2a2 c.jalr s1
2001c2a4 c.li a0, 1
2001c2a6 c.lwsp ra, 0x1c(sp)
2001c2a8 c.lwsp s0, 0x18(sp)

BASE 0x2001c272 0xb8006
2001c266 c.li a1, 3
2001c268 addi a0, s2, 0x43c
2001c26c c.jalr a5
2001c26e lw a5, 0x74c(s0)
2001c272 lui a0, 0xb8006
2001c276 c.li a1, 7
2001c278 addi a0, a0, 0x440
2001c27c c.jalr a5
2001c27e lui a5, 0x20201
2001c282 lw s1, 0x738(a5)
2001c286 lui a5, 0x20201
2001c28a lw a5, 0x744(a5)
2001c28e c.lui s0, 8
2001c290 addi a0, s0, 0x400
2001c294 c.jalr a5
2001c296 andi a1, a0, -0x201
2001c29a c.slli a1, 0x10
2001c29c c.srli a1, 0x10
2001c29e addi a0, s0, 0x400
2001c2a2 c.jalr s1
2001c2a4 c.li a0, 1
2001c2a6 c.lwsp ra, 0x1c(sp)
2001c2a8 c.lwsp s0, 0x18(sp)
2001c2aa c.lwsp s1, 0x14(sp)
2001c2ac c.lwsp s2, 0x10(sp)
2001c2ae c.lwsp s3, 0xc(sp)
2001c2b0 c.lwsp s4, 8(sp)
2001c2b2 c.lwsp s5, 4(sp)
2001c2b4 c.lwsp s6, 0(sp)
2001c2b6 c.addi16sp sp, 0x20
2001c2b8 c.jr ra
2001c2ba lui a5, 0x20201
2001c2be lw a5, 0x668(a5)
2001c2c2 c.li a0, 5
2001c2c4 c.jalr a5
2001c2c6 c.beqz a0, -0x64
2001c2c8 lw a5, 0x74c(s0)
2001c2cc c.li a1, 7
2001c2ce c.j -0x66
2001c2d0 lbu a4, 0(a0)
2001c2d4 c.addi sp, -0x10
2001c2d6 c.swsp s1, 4(sp)
2001c2d8 lui s1, 0x20205
2001c2dc c.swsp s0, 8(sp)
2001c2de c.swsp ra, 0xc(sp)
2001c2e0 c.swsp s2, 0(sp)
2001c2e2 addi a5, s1, -0x1b0
2001c2e6 sb a4, 0xa(a5)
2001c2ea lbu a4, 0x19(a0)
2001c2ee lbu a3, 0x1c(a0)
2001c2f2 lui a1, 0x20205
2001c2f6 sb a4, 9(a5)
2001c2fa lbu a4, 0x1a(a0)
2001c2fe addi a1, a1, 0x78
2001c302 c.mv s0, a0
2001c304 c.srli a4, 4
2001c306 .byte 0x23, 0x84

BASE 0x2001c3ee 0xb8007
2001c3e2 lui a5, 0x20201
2001c3e6 c.addi sp, -0x10
2001c3e8 lw a5, 0x758(a5)
2001c3ec c.swsp s0, 8(sp)
2001c3ee lui s0, 0xb8007
2001c3f2 c.swsp ra, 0xc(sp)
2001c3f4 addi a0, s0, -0x6f8
2001c3f8 c.jalr a5
2001c3fa andi a5, a0, 1
2001c3fe addi a0, zero, 0xff
2001c402 c.beqz a5, 0x14
2001c404 lui a5, 0x20201
2001c408 lw a5, 0x74c(a5)
2001c40c addi a0, s0, -0x6f8
2001c410 c.li a1, 1
2001c412 c.jalr a5
2001c414 c.li a0, 0
2001c416 c.lwsp ra, 0xc(sp)
2001c418 c.lwsp s0, 8(sp)
2001c41a c.addi sp, 0x10
2001c41c c.jr ra
2001c41e c.addi16sp sp, -0x30
2001c420 c.swsp ra, 0x2c(sp)
2001c422 c.swsp s0, 0x28(sp)
2001c424 c.swsp s2, 0x20(sp)
2001c426 c.swsp s1, 0x24(sp)
2001c428 c.swsp s3, 0x1c(sp)
2001c42a c.swsp s4, 0x18(sp)
2001c42c c.swsp s5, 0x14(sp)
2001c42e c.swsp s6, 0x10(sp)
2001c430 c.swsp s7, 0xc(sp)
2001c432 lui s2, 0x20201
2001c436 c.jal -0x54
2001c438 lw a5, 0x758(s2)
2001c43c lui s0, 0xb8006
2001c440 addi a0, s0, 0x600
2001c444 c.jalr a5
2001c446 lui a5, 0x20000
2001c44a bltu a0, a5, 0x124
2001c44e lw a5, 0x758(s2)
2001c452 addi a0, s0, 0x600
2001c456 c.jalr a5
2001c458 c.mv s1, a0
2001c45a lui s4, 0xb8006
2001c45e c.lui s3, 2
2001c460 addi s4, s4, 0x400
2001c464 lui s6, 0x20000
2001c468 lui s7, 0xa0000
2001c46c lui s5, 0x20202
2001c470 c.addi s3, -1
2001c472 lw a5, 0x758(s2)
2001c476 c.mv a0, s4
2001c478 c.jalr a5
2001c47a srli a5, a0, 0x10
2001c47e andi a5, a5, 0x1ff
2001c482 .byte 0x13, 0x87

BASE 0x2001c43c 0xb8006
2001c430 c.swsp s7, 0xc(sp)
2001c432 lui s2, 0x20201
2001c436 c.jal -0x54
2001c438 lw a5, 0x758(s2)
2001c43c lui s0, 0xb8006
2001c440 addi a0, s0, 0x600
2001c444 c.jalr a5
2001c446 lui a5, 0x20000
2001c44a bltu a0, a5, 0x124
2001c44e lw a5, 0x758(s2)
2001c452 addi a0, s0, 0x600
2001c456 c.jalr a5
2001c458 c.mv s1, a0
2001c45a lui s4, 0xb8006
2001c45e c.lui s3, 2
2001c460 addi s4, s4, 0x400
2001c464 lui s6, 0x20000
2001c468 lui s7, 0xa0000
2001c46c lui s5, 0x20202
2001c470 c.addi s3, -1
2001c472 lw a5, 0x758(s2)
2001c476 c.mv a0, s4
2001c478 c.jalr a5
2001c47a srli a5, a0, 0x10
2001c47e andi a5, a5, 0x1ff
2001c482 addi a4, a5, -1
2001c486 c.slli a4, 3
2001c488 c.add a4, s1
2001c48a c.lw s0, 4(a4)
2001c48c andi a3, a0, 0x1ff
2001c490 bgeu s0, s6, 8
2001c494 or s0, s0, s7
2001c498 beq a3, a5, -0x26
2001c49c c.lw a5, 0(s0)
2001c49e addi a3, s5, 0x438
2001c4a2 lhu a2, 0(a3)
2001c4a6 srli a4, a5, 0x10
2001c4aa and a4, a4, s3
2001c4ae bne a4, a2, -0x3c
2001c4b2 c.addi a4, 1
2001c4b4 c.slli a5, 0x12
2001c4b6 sh a4, 0(a3)
2001c4ba c.srli a5, 0x12
2001c4bc c.li a4, 4
2001c4be bltu a4, a5, 0x1a
2001c4c2 lui a5, 0x20201
2001c4c6 lw a5, 0xc4(a5)
2001c4ca lui a0, 0x20209
2001c4ce addi a1, zero, 0xd9

BASE 0x2001c45a 0xb8006
2001c44e lw a5, 0x758(s2)
2001c452 addi a0, s0, 0x600
2001c456 c.jalr a5
2001c458 c.mv s1, a0
2001c45a lui s4, 0xb8006
2001c45e c.lui s3, 2
2001c460 addi s4, s4, 0x400
2001c464 lui s6, 0x20000
2001c468 lui s7, 0xa0000
2001c46c lui s5, 0x20202
2001c470 c.addi s3, -1
2001c472 lw a5, 0x758(s2)
2001c476 c.mv a0, s4
2001c478 c.jalr a5
2001c47a srli a5, a0, 0x10
2001c47e andi a5, a5, 0x1ff
2001c482 addi a4, a5, -1
2001c486 c.slli a4, 3
2001c488 c.add a4, s1
2001c48a c.lw s0, 4(a4)
2001c48c andi a3, a0, 0x1ff
2001c490 bgeu s0, s6, 8
2001c494 or s0, s0, s7
2001c498 beq a3, a5, -0x26
2001c49c c.lw a5, 0(s0)
2001c49e addi a3, s5, 0x438
2001c4a2 lhu a2, 0(a3)
2001c4a6 srli a4, a5, 0x10
2001c4aa and a4, a4, s3
2001c4ae bne a4, a2, -0x3c
2001c4b2 c.addi a4, 1
2001c4b4 c.slli a5, 0x12
2001c4b6 sh a4, 0(a3)
2001c4ba c.srli a5, 0x12
2001c4bc c.li a4, 4
2001c4be bltu a4, a5, 0x1a
2001c4c2 lui a5, 0x20201
2001c4c6 lw a5, 0xc4(a5)
2001c4ca lui a0, 0x20209
2001c4ce addi a1, zero, 0xd9
2001c4d2 addi a0, a0, 0x260
2001c4d6 c.jalr a5
2001c4d8 c.lw a4, 0(s0)
2001c4da c.lui a5, 4
2001c4dc c.and a5, a4
2001c4de c.bnez a5, 0x18
2001c4e0 lui a5, 0x20201
2001c4e4 lw a5, 0xc4(a5)
2001c4e8 lui a0, 0x20209
2001c4ec addi a1, zero, 0xdf

BASE 0x2001c5ae 0xb8006
2001c5a2 addi s1, s1, 0x78
2001c5a6 bltu a1, a4, 8
2001c5aa c.slli a1, 3
2001c5ac c.srli a1, 3
2001c5ae lui a0, 0xb8006
2001c5b2 addi a0, a0, 0x600
2001c5b6 c.jalr a5
2001c5b8 lui a4, 0x20203
2001c5bc lw a1, 0x5c0(a4)
2001c5c0 lw a5, 0x74c(s0)
2001c5c4 lui a4, 0x30000
2001c5c8 bltu a1, a4, 8
2001c5cc c.slli a1, 3
2001c5ce c.srli a1, 3
2001c5d0 lui s2, 0xb8006
2001c5d4 addi a0, s2, 0x604
2001c5d8 c.jalr a5
2001c5da lui s3, 0x20201
2001c5de lw a5, 0x750(s3)
2001c5e2 c.li a1, 0x14
2001c5e4 addi a0, s2, 0x300
2001c5e8 c.jalr a5
2001c5ea lw a5, 0x750(s3)
2001c5ee c.li a1, 0x14
2001c5f0 addi a0, s2, 0x302
2001c5f4 c.jalr a5
2001c5f6 c.lw a5, 4(s1)
2001c5f8 c.lw a4, 8(s1)
2001c5fa lui a2, 0x20000
2001c5fe addi a1, a5, 0xa0
2001c602 c.lui a0, 0xffffc
2001c604 lui a6, 0x30000
2001c608 c.addi a2, -1
2001c60a c.lw a3, 0(a5)
2001c60c c.and a3, a0
2001c60e ori a3, a3, 0x200
2001c612 c.sw a3, 0(a5)
2001c614 c.mv a3, a4
2001c616 bltu a4, a6, 8
2001c61a and a3, a4, a2
2001c61e c.sw a3, 4(a5)
2001c620 c.addi a5, 8
2001c622 addi a4, a4, 0x200
2001c626 bne a5, a1, -0x1c
2001c62a lui a5, 0x20201
2001c62e lw a5, 0x748(a5)
2001c632 c.lui s1, 9
2001c634 addi a0, s1, -0x6ec
2001c638 c.jalr a5
2001c63a lui a5, 0x20201
2001c63e lw a4, 0x73c(a5)
2001c642 c.lui a5, 0xfffe0

BASE 0x2001c5d0 0xb8006
2001c5c4 lui a4, 0x30000
2001c5c8 bltu a1, a4, 8
2001c5cc c.slli a1, 3
2001c5ce c.srli a1, 3
2001c5d0 lui s2, 0xb8006
2001c5d4 addi a0, s2, 0x604
2001c5d8 c.jalr a5
2001c5da lui s3, 0x20201
2001c5de lw a5, 0x750(s3)
2001c5e2 c.li a1, 0x14
2001c5e4 addi a0, s2, 0x300
2001c5e8 c.jalr a5
2001c5ea lw a5, 0x750(s3)
2001c5ee c.li a1, 0x14
2001c5f0 addi a0, s2, 0x302
2001c5f4 c.jalr a5
2001c5f6 c.lw a5, 4(s1)
2001c5f8 c.lw a4, 8(s1)
2001c5fa lui a2, 0x20000
2001c5fe addi a1, a5, 0xa0
2001c602 c.lui a0, 0xffffc
2001c604 lui a6, 0x30000
2001c608 c.addi a2, -1
2001c60a c.lw a3, 0(a5)
2001c60c c.and a3, a0
2001c60e ori a3, a3, 0x200
2001c612 c.sw a3, 0(a5)
2001c614 c.mv a3, a4
2001c616 bltu a4, a6, 8
2001c61a and a3, a4, a2
2001c61e c.sw a3, 4(a5)
2001c620 c.addi a5, 8
2001c622 addi a4, a4, 0x200
2001c626 bne a5, a1, -0x1c
2001c62a lui a5, 0x20201
2001c62e lw a5, 0x748(a5)
2001c632 c.lui s1, 9
2001c634 addi a0, s1, -0x6ec
2001c638 c.jalr a5
2001c63a lui a5, 0x20201
2001c63e lw a4, 0x73c(a5)
2001c642 c.lui a5, 0xfffe0
2001c644 c.addi a5, -1
2001c646 and a1, a0, a5
2001c64a addi a0, s1, -0x6ec
2001c64e c.jalr a4
2001c650 lui a5, 0x20201
2001c654 lw a5, 0x758(a5)
2001c658 lui a0, 0xb8006
2001c65c c.jalr a5
2001c65e lw a5, 0x74c(s0)
2001c662 c.lwsp s0, 0x18(sp)
2001c664 c.lwsp ra, 0x1c(sp)

BASE 0x2001c658 0xb8006
2001c64c .byte 0x44, 0x91
2001c64e c.jalr a4
2001c650 lui a5, 0x20201
2001c654 lw a5, 0x758(a5)
2001c658 lui a0, 0xb8006
2001c65c c.jalr a5
2001c65e lw a5, 0x74c(s0)
2001c662 c.lwsp s0, 0x18(sp)
2001c664 c.lwsp ra, 0x1c(sp)
2001c666 c.lwsp s1, 0x14(sp)
2001c668 c.lwsp s2, 0x10(sp)
2001c66a c.lwsp s3, 0xc(sp)
2001c66c c.lui a1, 2
2001c66e c.or a1, a0
2001c670 lui a0, 0xb8006
2001c674 c.addi16sp sp, 0x20
2001c676 c.jr a5
2001c678 c.addi sp, -0x20
2001c67a c.li a0, 0
2001c67c c.swsp ra, 0x1c(sp)
2001c67e c.swsp s0, 0x18(sp)
2001c680 c.swsp s1, 0x14(sp)
2001c682 c.swsp s2, 0x10(sp)
2001c684 c.swsp s3, 0xc(sp)
2001c686 c.swsp s4, 8(sp)
2001c688 c.swsp s5, 4(sp)
2001c68a lui s3, 0x20201
2001c68e c.jal -0x4f2
2001c690 lui s4, 0x20201
2001c694 lw s1, 0x73c(s3)
2001c698 lw a5, 0x748(s4)
2001c69c c.lui s0, 8
2001c69e addi a0, s0, 0x400
2001c6a2 c.jalr a5
2001c6a4 ori a1, a0, 0x200
2001c6a8 addi a0, s0, 0x400
2001c6ac c.jalr s1
2001c6ae lui s0, 0x20300
2001c6b2 c.lui a2, 4
2001c6b4 c.li a1, 0
2001c6b6 mv a0, s0
2001c6ba jal 0x12b2c
2001c6be lui a4, 0x20300
2001c6c2 lui a3, 0x20203
2001c6c6 addi a4, a4, 0xa0
2001c6ca lui a5, 0x20205
2001c6ce sw a4, 0x5c0(a3)
2001c6d2 addi a5, a5, 0x78
2001c6d6 mv s0, s0
2001c6da lui a4, 0x20300
2001c6de addi a4, a4, 0x1e0
2001c6e2 c.sw s0, 4(a5)
2001c6e4 lui s1, 0x20201
2001c6e8 lui s0, 0x20201
2001c6ec c.sw a4, 8(a5)

BASE 0x2001c670 0xb8006
2001c664 c.lwsp ra, 0x1c(sp)
2001c666 c.lwsp s1, 0x14(sp)
2001c668 c.lwsp s2, 0x10(sp)
2001c66a c.lwsp s3, 0xc(sp)
2001c66c c.lui a1, 2
2001c66e c.or a1, a0
2001c670 lui a0, 0xb8006
2001c674 c.addi16sp sp, 0x20
2001c676 c.jr a5
2001c678 c.addi sp, -0x20
2001c67a c.li a0, 0
2001c67c c.swsp ra, 0x1c(sp)
2001c67e c.swsp s0, 0x18(sp)
2001c680 c.swsp s1, 0x14(sp)
2001c682 c.swsp s2, 0x10(sp)
2001c684 c.swsp s3, 0xc(sp)
2001c686 c.swsp s4, 8(sp)
2001c688 c.swsp s5, 4(sp)
2001c68a lui s3, 0x20201
2001c68e c.jal -0x4f2
2001c690 lui s4, 0x20201
2001c694 lw s1, 0x73c(s3)
2001c698 lw a5, 0x748(s4)
2001c69c c.lui s0, 8
2001c69e addi a0, s0, 0x400
2001c6a2 c.jalr a5
2001c6a4 ori a1, a0, 0x200
2001c6a8 addi a0, s0, 0x400
2001c6ac c.jalr s1
2001c6ae lui s0, 0x20300
2001c6b2 c.lui a2, 4
2001c6b4 c.li a1, 0
2001c6b6 mv a0, s0
2001c6ba jal 0x12b2c
2001c6be lui a4, 0x20300
2001c6c2 lui a3, 0x20203
2001c6c6 addi a4, a4, 0xa0
2001c6ca lui a5, 0x20205
2001c6ce sw a4, 0x5c0(a3)
2001c6d2 addi a5, a5, 0x78
2001c6d6 mv s0, s0
2001c6da lui a4, 0x20300
2001c6de addi a4, a4, 0x1e0
2001c6e2 c.sw s0, 4(a5)
2001c6e4 lui s1, 0x20201
2001c6e8 lui s0, 0x20201
2001c6ec c.sw a4, 8(a5)
2001c6ee lw s5, 0x74c(s0)
2001c6f2 lw a5, 0x758(s1)
2001c6f6 lui s2, 0xb8007
2001c6fa addi a0, s2, -0x700
2001c6fe c.jalr a5
2001c700 andi a1, a0, -3
2001c704 .byte 0x13, 0x05

BASE 0x2001c6f6 0xb8007
2001c6ea c.fld fs0, 0x40(s0)
2001c6ec c.sw a4, 8(a5)
2001c6ee lw s5, 0x74c(s0)
2001c6f2 lw a5, 0x758(s1)
2001c6f6 lui s2, 0xb8007
2001c6fa addi a0, s2, -0x700
2001c6fe c.jalr a5
2001c700 andi a1, a0, -3
2001c704 addi a0, s2, -0x700
2001c708 c.jalr s5
2001c70a lui a5, 0x20201
2001c70e lw a5, 0x668(a5)
2001c712 c.li a0, 5
2001c714 c.jalr a5
2001c716 c.li a1, 7
2001c718 c.bnez a0, 4
2001c71a c.li a1, 3
2001c71c lw a5, 0x74c(s0)
2001c720 lui s2, 0xb8006
2001c724 addi a0, s2, 4
2001c728 c.jalr a5
2001c72a lw a5, 0x74c(s0)
2001c72e c.li a1, 7
2001c730 addi a0, s2, 0x440
2001c734 c.jalr a5
2001c736 lw a5, 0x758(s1)
2001c73a lui s5, 0xb8007
2001c73e addi a0, s5, -0x600
2001c742 c.jalr a5
2001c744 lw a4, 0x74c(s0)
2001c748 lui a5, 0xfffd0
2001c74c c.addi a5, -1
2001c74e and a1, a0, a5
2001c752 addi a0, s5, -0x600
2001c756 c.jalr a4
2001c758 c.jal -0x1d8
2001c75a lw a5, 0x758(s1)
2001c75e addi a0, s2, 0x400
2001c762 c.jalr a5
2001c764 lw a5, 0x74c(s0)
2001c768 andi a1, a0, -0x200
2001c76c ori a1, a1, 0x13
2001c770 addi a0, s2, 0x400
2001c774 c.jalr a5
2001c776 lw s5, 0x73c(s3)
2001c77a lw a5, 0x748(s4)
2001c77e c.lui s2, 9
2001c780 addi a0, s2, -0x6f4
2001c784 c.jalr a5
2001c786 ori a1, a0, 1
2001c78a .byte 0x13, 0x05

BASE 0x2001c720 0xb8006
2001c714 c.jalr a5
2001c716 c.li a1, 7
2001c718 c.bnez a0, 4
2001c71a c.li a1, 3
2001c71c lw a5, 0x74c(s0)
2001c720 lui s2, 0xb8006
2001c724 addi a0, s2, 4
2001c728 c.jalr a5
2001c72a lw a5, 0x74c(s0)
2001c72e c.li a1, 7
2001c730 addi a0, s2, 0x440
2001c734 c.jalr a5
2001c736 lw a5, 0x758(s1)
2001c73a lui s5, 0xb8007
2001c73e addi a0, s5, -0x600
2001c742 c.jalr a5
2001c744 lw a4, 0x74c(s0)
2001c748 lui a5, 0xfffd0
2001c74c c.addi a5, -1
2001c74e and a1, a0, a5
2001c752 addi a0, s5, -0x600
2001c756 c.jalr a4
2001c758 c.jal -0x1d8
2001c75a lw a5, 0x758(s1)
2001c75e addi a0, s2, 0x400
2001c762 c.jalr a5
2001c764 lw a5, 0x74c(s0)
2001c768 andi a1, a0, -0x200
2001c76c ori a1, a1, 0x13
2001c770 addi a0, s2, 0x400
2001c774 c.jalr a5
2001c776 lw s5, 0x73c(s3)
2001c77a lw a5, 0x748(s4)
2001c77e c.lui s2, 9
2001c780 addi a0, s2, -0x6f4
2001c784 c.jalr a5
2001c786 ori a1, a0, 1
2001c78a addi a0, s2, -0x6f4
2001c78e c.jalr s5
2001c790 lw a5, 0x748(s4)
2001c794 addi a0, s2, -0x7ec
2001c798 c.jalr a5
2001c79a lw a5, 0x73c(s3)
2001c79e andi a1, a0, -0x40
2001c7a2 ori a1, a1, 9
2001c7a6 addi a0, s2, -0x7ec
2001c7aa c.jalr a5
2001c7ac lw a5, 0x748(s4)
2001c7b0 addi a0, s2, -0x7f0
2001c7b4 c.jalr a5

BASE 0x2001c73a 0xb8007
2001c72e c.li a1, 7
2001c730 addi a0, s2, 0x440
2001c734 c.jalr a5
2001c736 lw a5, 0x758(s1)
2001c73a lui s5, 0xb8007
2001c73e addi a0, s5, -0x600
2001c742 c.jalr a5
2001c744 lw a4, 0x74c(s0)
2001c748 lui a5, 0xfffd0
2001c74c c.addi a5, -1
2001c74e and a1, a0, a5
2001c752 addi a0, s5, -0x600
2001c756 c.jalr a4
2001c758 c.jal -0x1d8
2001c75a lw a5, 0x758(s1)
2001c75e addi a0, s2, 0x400
2001c762 c.jalr a5
2001c764 lw a5, 0x74c(s0)
2001c768 andi a1, a0, -0x200
2001c76c ori a1, a1, 0x13
2001c770 addi a0, s2, 0x400
2001c774 c.jalr a5
2001c776 lw s5, 0x73c(s3)
2001c77a lw a5, 0x748(s4)
2001c77e c.lui s2, 9
2001c780 addi a0, s2, -0x6f4
2001c784 c.jalr a5
2001c786 ori a1, a0, 1
2001c78a addi a0, s2, -0x6f4
2001c78e c.jalr s5
2001c790 lw a5, 0x748(s4)
2001c794 addi a0, s2, -0x7ec
2001c798 c.jalr a5
2001c79a lw a5, 0x73c(s3)
2001c79e andi a1, a0, -0x40
2001c7a2 ori a1, a1, 9
2001c7a6 addi a0, s2, -0x7ec
2001c7aa c.jalr a5
2001c7ac lw a5, 0x748(s4)
2001c7b0 addi a0, s2, -0x7f0
2001c7b4 c.jalr a5
2001c7b6 lw a5, 0x73c(s3)
2001c7ba andi a1, a0, -0x40
2001c7be ori a1, a1, 8
2001c7c2 addi a0, s2, -0x7f0
2001c7c6 c.jalr a5
2001c7c8 lw s0, 0x74c(s0)
2001c7cc lw a5, 0x758(s1)

BASE 0x2001c7d0 0xb8006
2001c7c4 c.srli a0, 2
2001c7c6 c.jalr a5
2001c7c8 lw s0, 0x74c(s0)
2001c7cc lw a5, 0x758(s1)
2001c7d0 lui a0, 0xb8006
2001c7d4 c.jalr a5
2001c7d6 lui a5, 0xfff00
2001c7da c.addi a5, -1
2001c7dc and a1, a0, a5
2001c7e0 c.mv a5, s0
2001c7e2 c.lwsp s0, 0x18(sp)
2001c7e4 c.lwsp ra, 0x1c(sp)
2001c7e6 c.lwsp s1, 0x14(sp)
2001c7e8 c.lwsp s2, 0x10(sp)
2001c7ea c.lwsp s3, 0xc(sp)
2001c7ec c.lwsp s4, 8(sp)
2001c7ee c.lwsp s5, 4(sp)
2001c7f0 lui a0, 0xb8006
2001c7f4 c.addi16sp sp, 0x20
2001c7f6 c.jr a5
2001c7f8 c.sw a2, 0(a0)
2001c7fa c.sw a1, 4(a0)
2001c7fc c.sw a0, 0(a1)
2001c7fe c.sw a0, 4(a2)
2001c800 c.jr ra
2001c802 c.lw a5, 4(a1)
2001c804 c.sw a1, 0(a0)
2001c806 c.sw a5, 4(a0)
2001c808 c.sw a0, 0(a5)
2001c80a c.sw a0, 4(a1)
2001c80c c.jr ra
2001c80e c.lw a5, 0(a1)
2001c810 c.sw a1, 4(a0)
2001c812 c.sw a5, 0(a0)
2001c814 c.sw a0, 0(a1)
2001c816 c.sw a0, 4(a5)
2001c818 c.jr ra
2001c81a c.lw a5, 4(a0)
2001c81c c.lw a4, 0(a0)
2001c81e c.sw a5, 4(a4)
2001c820 c.sw a4, 0(a5)
2001c822 c.jr ra
2001c824 c.jr ra
2001c826 lui a5, 0x20202
2001c82a lw a5, -0x4d0(a5)
2001c82e c.addi sp, -0x20
2001c830 c.swsp ra, 0x1c(sp)
2001c832 c.swsp s0, 0x18(sp)
2001c834 c.addi4spn a0, sp, 0xc
2001c836 c.jalr a5
2001c838 c.beqz a0, 0x58
2001c83a c.lwsp a4, 0xc(sp)
2001c83c c.li a5, 1
2001c83e bne a4, a5, 0x22
2001c842 lui a5, 0x20203
2001c846 lw a5, 0x588(a5)
2001c84a c.lw a5, 4(a5)
2001c84c lbu a4, 0xd(a5)
2001c850 c.li a5, 2
2001c852 bne a4, a5, 0x3e
2001c856 lui a5, 0x20202
2001c85a lw a5, -0x4c0(a5)
2001c85e c.jalr a5
2001c860 c.lwsp a5, 0xc(sp)
2001c862 c.li a4, 2
2001c864 .byte 0x63, 0x96

BASE 0x2001c7f0 0xb8006
2001c7e4 c.lwsp ra, 0x1c(sp)
2001c7e6 c.lwsp s1, 0x14(sp)
2001c7e8 c.lwsp s2, 0x10(sp)
2001c7ea c.lwsp s3, 0xc(sp)
2001c7ec c.lwsp s4, 8(sp)
2001c7ee c.lwsp s5, 4(sp)
2001c7f0 lui a0, 0xb8006
2001c7f4 c.addi16sp sp, 0x20
2001c7f6 c.jr a5
2001c7f8 c.sw a2, 0(a0)
2001c7fa c.sw a1, 4(a0)
2001c7fc c.sw a0, 0(a1)
2001c7fe c.sw a0, 4(a2)
2001c800 c.jr ra
2001c802 c.lw a5, 4(a1)
2001c804 c.sw a1, 0(a0)
2001c806 c.sw a5, 4(a0)
2001c808 c.sw a0, 0(a5)
2001c80a c.sw a0, 4(a1)
2001c80c c.jr ra
2001c80e c.lw a5, 0(a1)
2001c810 c.sw a1, 4(a0)
2001c812 c.sw a5, 0(a0)
2001c814 c.sw a0, 0(a1)
2001c816 c.sw a0, 4(a5)
2001c818 c.jr ra
2001c81a c.lw a5, 4(a0)
2001c81c c.lw a4, 0(a0)
2001c81e c.sw a5, 4(a4)
2001c820 c.sw a4, 0(a5)
2001c822 c.jr ra
2001c824 c.jr ra
2001c826 lui a5, 0x20202
2001c82a lw a5, -0x4d0(a5)
2001c82e c.addi sp, -0x20
2001c830 c.swsp ra, 0x1c(sp)
2001c832 c.swsp s0, 0x18(sp)
2001c834 c.addi4spn a0, sp, 0xc
2001c836 c.jalr a5
2001c838 c.beqz a0, 0x58
2001c83a c.lwsp a4, 0xc(sp)
2001c83c c.li a5, 1
2001c83e bne a4, a5, 0x22
2001c842 lui a5, 0x20203
2001c846 lw a5, 0x588(a5)
2001c84a c.lw a5, 4(a5)
2001c84c lbu a4, 0xd(a5)
2001c850 c.li a5, 2
2001c852 bne a4, a5, 0x3e
2001c856 lui a5, 0x20202
2001c85a lw a5, -0x4c0(a5)
2001c85e c.jalr a5
2001c860 c.lwsp a5, 0xc(sp)
2001c862 c.li a4, 2
2001c864 bne a5, a4, 0x2c
2001c868 lui s0, 0x20203
2001c86c addi s0, s0, 0x580
2001c870 c.lw a4, 8(s0)
2001c872 c.lw a4, 4(a4)
2001c874 lbu a4, 0xd(a4)
2001c878 bne a4, a5, 0x18
2001c87c lui a5, 0x20202
2001c880 lw a5, -0x4c4(a5)
2001c884 c.jalr a5

BASE 0x2001d674 0xb8006
2001d668 c.mv a0, s2
2001d66a lui s4, 0x20201
2001d66e c.jalr a5
2001d670 lw a5, 0x74c(s4)
2001d674 lui a0, 0xb8006
2001d678 c.li a1, 2
2001d67a addi a0, a0, 0x440
2001d67e c.jalr a5
2001d680 lui s3, 0x20201
2001d684 lw s5, 0x74c(s4)
2001d688 lw a5, 0x758(s3)
2001d68c lui s2, 0xb8007
2001d690 addi a0, s2, -0x700
2001d694 c.jalr a5
2001d696 andi a1, a0, -3
2001d69a addi a0, s2, -0x700
2001d69e c.jalr s5
2001d6a0 lui s5, 0x20205
2001d6a4 addi a5, s5, -0x1b0
2001d6a8 lbu a0, 9(a5)
2001d6ac lw a6, 4(a5)
2001d6b0 c.lw a1, 0(a5)
2001d6b2 c.li a2, 0
2001d6b4 c.li s2, 0
2001d6b6 addi s5, s5, -0x1b0
2001d6ba andi a5, a2, 0xff
2001d6be bltu a5, a0, 0x5a
2001d6c2 bnez s2, 0x9a
2001d6c6 lw a5, 0x748(s0)
2001d6ca addi a0, zero, 0x1e0
2001d6ce c.jalr a5
2001d6d0 lw a5, 0x73c(s1)
2001d6d4 ori a1, a0, 1
2001d6d8 addi a0, zero, 0x1e0
2001d6dc c.jalr a5
2001d6de lw s1, 0x73c(s1)
2001d6e2 lw a5, 0x748(s0)
2001d6e6 addi a0, zero, 0x1e0
2001d6ea c.jalr a5
2001d6ec lui a1, 0xc4000
2001d6f0 c.lwsp s0, 0x28(sp)
2001d6f2 c.lwsp ra, 0x2c(sp)
2001d6f4 c.lwsp s2, 0x20(sp)
2001d6f6 c.lwsp s3, 0x1c(sp)
2001d6f8 c.lwsp s4, 0x18(sp)
2001d6fa c.lwsp s5, 0x14(sp)
2001d6fc c.lwsp s6, 0x10(sp)
2001d6fe c.lwsp s7, 0xc(sp)
2001d700 c.lwsp s8, 8(sp)
2001d702 c.addi a1, -1
2001d704 c.mv a5, s1
2001d706 c.lwsp s1, 0x24(sp)
2001d708 c.and a0, a1

BASE 0x2001d68c 0xb8007
2001d680 lui s3, 0x20201
2001d684 lw s5, 0x74c(s4)
2001d688 lw a5, 0x758(s3)
2001d68c lui s2, 0xb8007
2001d690 addi a0, s2, -0x700
2001d694 c.jalr a5
2001d696 andi a1, a0, -3
2001d69a addi a0, s2, -0x700
2001d69e c.jalr s5
2001d6a0 lui s5, 0x20205
2001d6a4 addi a5, s5, -0x1b0
2001d6a8 lbu a0, 9(a5)
2001d6ac lw a6, 4(a5)
2001d6b0 c.lw a1, 0(a5)
2001d6b2 c.li a2, 0
2001d6b4 c.li s2, 0
2001d6b6 addi s5, s5, -0x1b0
2001d6ba andi a5, a2, 0xff
2001d6be bltu a5, a0, 0x5a
2001d6c2 bnez s2, 0x9a
2001d6c6 lw a5, 0x748(s0)
2001d6ca addi a0, zero, 0x1e0
2001d6ce c.jalr a5
2001d6d0 lw a5, 0x73c(s1)
2001d6d4 ori a1, a0, 1
2001d6d8 addi a0, zero, 0x1e0
2001d6dc c.jalr a5
2001d6de lw s1, 0x73c(s1)
2001d6e2 lw a5, 0x748(s0)
2001d6e6 addi a0, zero, 0x1e0
2001d6ea c.jalr a5
2001d6ec lui a1, 0xc4000
2001d6f0 c.lwsp s0, 0x28(sp)
2001d6f2 c.lwsp ra, 0x2c(sp)
2001d6f4 c.lwsp s2, 0x20(sp)
2001d6f6 c.lwsp s3, 0x1c(sp)
2001d6f8 c.lwsp s4, 0x18(sp)
2001d6fa c.lwsp s5, 0x14(sp)
2001d6fc c.lwsp s6, 0x10(sp)
2001d6fe c.lwsp s7, 0xc(sp)
2001d700 c.lwsp s8, 8(sp)
2001d702 c.addi a1, -1
2001d704 c.mv a5, s1
2001d706 c.lwsp s1, 0x24(sp)
2001d708 c.and a0, a1
2001d70a lui a1, 0xc000
2001d70e c.or a1, a0
2001d710 addi a0, zero, 0x1e0
2001d714 c.addi16sp sp, 0x30
2001d716 c.jr a5
2001d718 slli a5, a2, 4
2001d71c c.add a5, a6
2001d71e lbu a4, 5(a5)

BASE 0x2001d76a 0xb8006
2001d75e c.fld fs0, 0x40(s0)
2001d760 lw a5, 0x750(a5)
2001d764 addi a1, s2, 1
2001d768 c.slli a1, 0x10
2001d76a lui a0, 0xb8006
2001d76e c.srli a1, 0x10
2001d770 addi a0, a0, 0x302
2001d774 c.jalr a5
2001d776 lui a5, 0x20203
2001d77a lw s6, 0x5c0(a5)
2001d77e lw a5, 0x74c(s4)
2001d782 lui a4, 0x30000
2001d786 c.mv a1, s6
2001d788 bltu s6, a4, 0xa
2001d78c slli a1, s6, 3
2001d790 c.srli a1, 3
2001d792 lui a0, 0xb8006
2001d796 addi a0, a0, 0x604
2001d79a c.jalr a5
2001d79c lbu t4, 9(s5)
2001d7a0 lw t1, 4(s5)
2001d7a4 lw t3, 0(s5)
2001d7a8 lui a6, 0x20000
2001d7ac c.lui a7, 4
2001d7ae c.li a0, 0
2001d7b0 lui t5, 0x30000
2001d7b4 c.addi a6, -1
2001d7b6 c.addi a7, -1
2001d7b8 c.lui t6, 0xffffc
2001d7ba andi a5, a0, 0xff
2001d7be bltu a5, t4, 0x186
2001d7c2 lbu a5, 7(t1)
2001d7c6 c.andi a5, 0x10
2001d7c8 c.beqz a5, 0x34
2001d7ca lw s8, 0x73c(s1)
2001d7ce lw a5, 0x748(s0)
2001d7d2 c.lui s7, 9
2001d7d4 addi a0, s7, -0x6e8
2001d7d8 c.jalr a5
2001d7da ori a1, a0, 2
2001d7de addi a0, s7, -0x6e8
2001d7e2 c.jalr s8
2001d7e4 lw s8, 0x73c(s1)
2001d7e8 lw a5, 0x748(s0)
2001d7ec addi a0, s7, -0x6e8
2001d7f0 c.jalr a5
2001d7f2 ori a1, a0, 1
2001d7f6 addi a0, s7, -0x6e8
2001d7fa c.jalr s8
2001d7fc lw a5, 0x748(s0)

BASE 0x2001d792 0xb8006
2001d786 c.mv a1, s6
2001d788 bltu s6, a4, 0xa
2001d78c slli a1, s6, 3
2001d790 c.srli a1, 3
2001d792 lui a0, 0xb8006
2001d796 addi a0, a0, 0x604
2001d79a c.jalr a5
2001d79c lbu t4, 9(s5)
2001d7a0 lw t1, 4(s5)
2001d7a4 lw t3, 0(s5)
2001d7a8 lui a6, 0x20000
2001d7ac c.lui a7, 4
2001d7ae c.li a0, 0
2001d7b0 lui t5, 0x30000
2001d7b4 c.addi a6, -1
2001d7b6 c.addi a7, -1
2001d7b8 c.lui t6, 0xffffc
2001d7ba andi a5, a0, 0xff
2001d7be bltu a5, t4, 0x186
2001d7c2 lbu a5, 7(t1)
2001d7c6 c.andi a5, 0x10
2001d7c8 c.beqz a5, 0x34
2001d7ca lw s8, 0x73c(s1)
2001d7ce lw a5, 0x748(s0)
2001d7d2 c.lui s7, 9
2001d7d4 addi a0, s7, -0x6e8
2001d7d8 c.jalr a5
2001d7da ori a1, a0, 2
2001d7de addi a0, s7, -0x6e8
2001d7e2 c.jalr s8
2001d7e4 lw s8, 0x73c(s1)
2001d7e8 lw a5, 0x748(s0)
2001d7ec addi a0, s7, -0x6e8
2001d7f0 c.jalr a5
2001d7f2 ori a1, a0, 1
2001d7f6 addi a0, s7, -0x6e8
2001d7fa c.jalr s8
2001d7fc lw a5, 0x748(s0)
2001d800 addi a0, zero, 0x1e0
2001d804 lui s8, 0xb8006
2001d808 c.jalr a5
2001d80a lw a5, 0x73c(s1)
2001d80e ori a1, a0, 1
2001d812 addi a0, zero, 0x1e0
2001d816 c.jalr a5
2001d818 lui a5, 0x20201
2001d81c lw a6, 0x6b8(a5)
2001d820 c.li a4, 1
2001d822 c.mv a5, s2
2001d824 addi a3, zero, 0xe8

BASE 0x2001d804 0xb8006
2001d7f8 .byte 0x8b, 0x91
2001d7fa c.jalr s8
2001d7fc lw a5, 0x748(s0)
2001d800 addi a0, zero, 0x1e0
2001d804 lui s8, 0xb8006
2001d808 c.jalr a5
2001d80a lw a5, 0x73c(s1)
2001d80e ori a1, a0, 1
2001d812 addi a0, zero, 0x1e0
2001d816 c.jalr a5
2001d818 lui a5, 0x20201
2001d81c lw a6, 0x6b8(a5)
2001d820 c.li a4, 1
2001d822 c.mv a5, s2
2001d824 addi a3, zero, 0xe8
2001d828 c.li a2, 4
2001d82a c.li a0, 2
2001d82c c.li a1, 0
2001d82e c.jalr a6
2001d830 addi s8, s8, 0x404
2001d834 lw a5, 0x758(s3)
2001d838 c.mv a0, s8
2001d83a c.jalr a5
2001d83c srli s7, a0, 0x10
2001d840 andi s7, s7, 0x1ff
2001d844 bne s2, s7, -0x10
2001d848 lw a5, 4(s5)
2001d84c lbu a5, 7(a5)
2001d850 c.andi a5, 0x10
2001d852 c.beqz a5, 0x24
2001d854 lui a5, 0x20202
2001d858 lw a5, 0x308(a5)
2001d85c c.jalr a5
2001d85e c.bnez a0, 0x18
2001d860 lui a5, 0x20201
2001d864 lw a5, 0xc4(a5)
2001d868 lui a0, 0x20209
2001d86c addi a1, zero, 0x34d
2001d870 addi a0, a0, 0x270
2001d874 c.jalr a5
2001d876 lw a5, 0x758(s3)
2001d87a lui s2, 0xb8006
2001d87e addi a0, s2, 0x404
2001d882 c.jalr a5
2001d884 lw a5, 0x74c(s4)
2001d888 andi a1, a0, -0x200
2001d88c or a1, s7, a1
2001d890 addi a0, s2, 0x404
2001d894 lui s2, 0xb8007
2001d898 c.jalr a5

BASE 0x2001d87a 0xb8006
2001d86e c.fld fa2, 0xa8(s1)
2001d870 addi a0, a0, 0x270
2001d874 c.jalr a5
2001d876 lw a5, 0x758(s3)
2001d87a lui s2, 0xb8006
2001d87e addi a0, s2, 0x404
2001d882 c.jalr a5
2001d884 lw a5, 0x74c(s4)
2001d888 andi a1, a0, -0x200
2001d88c or a1, s7, a1
2001d890 addi a0, s2, 0x404
2001d894 lui s2, 0xb8007
2001d898 c.jalr a5
2001d89a addi s2, s2, -0x6f8
2001d89e lw a5, 0x758(s3)
2001d8a2 c.mv a0, s2
2001d8a4 c.jalr a5
2001d8a6 bnez a0, 0x126
2001d8aa lw s3, 0x73c(s1)
2001d8ae lw a5, 0x748(s0)
2001d8b2 addi a0, zero, 0x1e0
2001d8b6 lui s2, 0xc4000
2001d8ba c.jalr a5
2001d8bc c.addi s2, -1
2001d8be and a0, a0, s2
2001d8c2 lui a1, 0x8000
2001d8c6 c.or a1, a0
2001d8c8 addi a0, zero, 0x1e0
2001d8cc c.jalr s3
2001d8ce lui a5, 0x20201
2001d8d2 lw a5, 0x408(a5)
2001d8d6 c.mv a0, s6
2001d8d8 c.jalr a5
2001d8da lw a5, 0x748(s0)
2001d8de c.lui a0, 1
2001d8e0 addi a0, a0, -0x400
2001d8e4 c.jalr a5
2001d8e6 c.andi a0, 1
2001d8e8 bnez a0, -0x20a
2001d8ec lw a5, 0x748(s0)
2001d8f0 addi a0, zero, 0x40
2001d8f4 c.jalr a5
2001d8f6 lui a5, 0x20
2001d8fa c.and a0, a5
2001d8fc bnez a0, -0x21e
2001d900 lui a5, 0x20202
2001d904 lw a5, 0x204(a5)
2001d908 c.jalr a5
2001d90a beqz a0, -0x22c
2001d90e .byte 0x83, 0xa9

BASE 0x2001d894 0xb8007
2001d888 andi a1, a0, -0x200
2001d88c or a1, s7, a1
2001d890 addi a0, s2, 0x404
2001d894 lui s2, 0xb8007
2001d898 c.jalr a5
2001d89a addi s2, s2, -0x6f8
2001d89e lw a5, 0x758(s3)
2001d8a2 c.mv a0, s2
2001d8a4 c.jalr a5
2001d8a6 bnez a0, 0x126
2001d8aa lw s3, 0x73c(s1)
2001d8ae lw a5, 0x748(s0)
2001d8b2 addi a0, zero, 0x1e0
2001d8b6 lui s2, 0xc4000
2001d8ba c.jalr a5
2001d8bc c.addi s2, -1
2001d8be and a0, a0, s2
2001d8c2 lui a1, 0x8000
2001d8c6 c.or a1, a0
2001d8c8 addi a0, zero, 0x1e0
2001d8cc c.jalr s3
2001d8ce lui a5, 0x20201
2001d8d2 lw a5, 0x408(a5)
2001d8d6 c.mv a0, s6
2001d8d8 c.jalr a5
2001d8da lw a5, 0x748(s0)
2001d8de c.lui a0, 1
2001d8e0 addi a0, a0, -0x400
2001d8e4 c.jalr a5
2001d8e6 c.andi a0, 1
2001d8e8 bnez a0, -0x20a
2001d8ec lw a5, 0x748(s0)
2001d8f0 addi a0, zero, 0x40
2001d8f4 c.jalr a5
2001d8f6 lui a5, 0x20
2001d8fa c.and a0, a5
2001d8fc bnez a0, -0x21e
2001d900 lui a5, 0x20202
2001d904 lw a5, 0x204(a5)
2001d908 c.jalr a5
2001d90a beqz a0, -0x22c
2001d90e lw s3, 0x73c(s1)
2001d912 lw a5, 0x748(s0)
2001d916 addi a0, zero, 0x1e0
2001d91a c.jalr a5
2001d91c and s2, a0, s2
2001d920 lui a1, 0x14000
2001d924 or a1, s2, a1
2001d928 .byte 0x13, 0x05

BASE 0x2002f706 0xb8002
2002f6fa lui s1, 0x12e3e
2002f6fe c.fsw fa4, 8(a0)
2002f700 sb t1, 0(a5)
2002f704 c.j -0x2de
2002f706 lui a4, 0xb8002
2002f70a lbu a5, 0x14(a4)
2002f70e andi a5, a5, 0x20
2002f712 c.beqz a5, -8
2002f714 sb a0, 0(a4)
2002f718 c.jr ra
2002f71a c.addi16sp sp, -0x40
2002f71c c.swsp a5, 0x34(sp)
2002f71e lui a5, 0x20201
2002f722 lw a5, 0x128(a5)
2002f726 c.swsp ra, 0x1c(sp)
2002f728 c.swsp a2, 0x28(sp)
2002f72a c.swsp a3, 0x2c(sp)
2002f72c c.addi4spn a2, sp, 0x28
2002f72e c.swsp a4, 0x30(sp)
2002f730 c.swsp a6, 0x38(sp)
2002f732 c.swsp a7, 0x3c(sp)
2002f734 c.swsp a2, 0xc(sp)
2002f736 c.jalr a5
2002f738 c.lwsp ra, 0x1c(sp)
2002f73a c.addi16sp sp, 0x40
2002f73c c.jr ra
2002f73e c.addi16sp sp, -0x40
2002f740 c.swsp a5, 0x34(sp)
2002f742 lui a5, 0x20201
2002f746 lw a5, 0x124(a5)
2002f74a c.swsp ra, 0x1c(sp)
2002f74c c.swsp a3, 0x2c(sp)
2002f74e c.swsp a4, 0x30(sp)
2002f750 c.addi4spn a3, sp, 0x2c
2002f752 c.swsp a6, 0x38(sp)
2002f754 c.swsp a7, 0x3c(sp)
2002f756 c.swsp a3, 0xc(sp)
2002f758 c.jalr a5
2002f75a c.lwsp ra, 0x1c(sp)
2002f75c c.addi16sp sp, 0x40
2002f75e c.jr ra
2002f760 c.addi16sp sp, -0x50
2002f762 c.swsp a5, 0x44(sp)
2002f764 lui a5, 0x20204
2002f768 lw a5, 0x5e0(a5)
2002f76c c.swsp a3, 0x3c(sp)
2002f76e c.addi4spn a3, sp, 0x34
2002f770 c.swsp s0, 0x28(sp)
2002f772 c.swsp ra, 0x2c(sp)
2002f774 c.swsp s1, 0x24(sp)
2002f776 c.swsp s2, 0x20(sp)
2002f778 c.swsp s3, 0x1c(sp)
2002f77a c.swsp s4, 0x18(sp)
2002f77c c.swsp s5, 0x14(sp)
2002f77e c.swsp a1, 0x34(sp)
2002f780 c.swsp a2, 0x38(sp)
2002f782 c.swsp a4, 0x40(sp)
2002f784 c.swsp a6, 0x48(sp)
2002f786 c.swsp a7, 0x4c(sp)
2002f788 c.swsp a3, 0xc(sp)
2002f78a c.li s0, 0
2002f78c c.beqz a5, 0x9c
2002f78e lui s2, 0x20204
2002f792 lw a4, 0x5e4(s2)
2002f796 c.li s0, 0
2002f798 c.beqz a4, 0x90
2002f79a .byte 0x83, 0xc7