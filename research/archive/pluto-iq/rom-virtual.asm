
rom 0x2000066a
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
20000690 c.lwsp s1, 0x14(sp)
20000692 c.lwsp s2, 0x10(sp)
20000694 c.lwsp s3, 0xc(sp)
20000696 c.lwsp s4, 8(sp)
20000698 lw a5, 0xc4(a5)
2000069c lui a0, 0x20209
200006a0 c.li a1, 0x1e
200006a2 addi a0, a0, 0x248
200006a6 c.addi16sp sp, 0x20
200006a8 c.jr a5
200006aa c.lwsp ra, 0x1c(sp)
200006ac c.lwsp s0, 0x18(sp)
200006ae c.lwsp s1, 0x14(sp)
200006b0 c.lwsp s2, 0x10(sp)
200006b2 c.lwsp s3, 0xc(sp)
200006b4 c.lwsp s4, 8(sp)
200006b6 c.addi16sp sp, 0x20
200006b8 c.jr ra
200006ba j 0x1bc16
200006be c.addi16sp sp, -0x30
200006c0 c.swsp s4, 0x18(sp)
200006c2 lui s4, 0x24000
200006c6 lhu a1, 0x16(s4)
200006ca c.swsp s3, 0x1c(sp)
200006cc c.swsp s7, 0xc(sp)
200006ce lui s3, 0x20205
200006d2 lui s7, 0x20000
200006d6 c.swsp s2, 0x20(sp)
200006d8 c.swsp s5, 0x14(sp)
200006da c.swsp s8, 8(sp)
200006dc c.swsp ra, 0x2c(sp)
200006de c.swsp s0, 0x28(sp)
200006e0 c.swsp s1, 0x24(sp)
200006e2 c.swsp s6, 0x10(sp)
200006e4 c.add s4, a1
200006e6 c.li s2, 0
200006e8 addi s3, s3, -0x1b0
200006ec c.addi s7, -1
200006ee lui s8, 0x20202
200006f2 lui s5, 0x20202
200006f6 lbu a5, 9(s3)
200006fa bltu s2, a5, 0x1c
200006fe c.lwsp ra, 0x2c(sp)

rom 0x2000083c
2000081e lui ra, 0x8a130
20000822 .byte 0x07, 0xe5
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
200008c6 c.lwsp ra, 0x3c(sp)
200008c8 c.lwsp s1, 0x34(sp)
200008ca c.lwsp s2, 0x30(sp)
200008cc c.lwsp s3, 0x2c(sp)
200008ce c.lwsp s4, 0x28(sp)
200008d0 c.lwsp s5, 0x24(sp)

rom 0x20000878
2000085a c.addi sp, 1
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
200008c6 c.lwsp ra, 0x3c(sp)
200008c8 c.lwsp s1, 0x34(sp)
200008ca c.lwsp s2, 0x30(sp)
200008cc c.lwsp s3, 0x2c(sp)
200008ce c.lwsp s4, 0x28(sp)
200008d0 c.lwsp s5, 0x24(sp)
200008d2 c.lwsp s6, 0x20(sp)
200008d4 c.lwsp s7, 0x1c(sp)
200008d6 addi a0, zero, 0x1e0
200008da c.addi16sp sp, 0x40
200008dc c.jr a5
200008de lw a5, 0x6b8(s1)
200008e2 c.li a4, 0
200008e4 addi a3, zero, 0xdd
200008e8 c.li a2, 5
200008ea c.li a0, 2
200008ec c.li a1, 0
200008ee c.jalr a5
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
2000090c .byte 0x13, 0x75

rom 0x200008ba
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
200008c6 c.lwsp ra, 0x3c(sp)
200008c8 c.lwsp s1, 0x34(sp)
200008ca c.lwsp s2, 0x30(sp)
200008cc c.lwsp s3, 0x2c(sp)
200008ce c.lwsp s4, 0x28(sp)
200008d0 c.lwsp s5, 0x24(sp)
200008d2 c.lwsp s6, 0x20(sp)
200008d4 c.lwsp s7, 0x1c(sp)
200008d6 addi a0, zero, 0x1e0
200008da c.addi16sp sp, 0x40
200008dc c.jr a5
200008de lw a5, 0x6b8(s1)
200008e2 c.li a4, 0
200008e4 addi a3, zero, 0xdd
200008e8 c.li a2, 5
200008ea c.li a0, 2
200008ec c.li a1, 0
200008ee c.jalr a5
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

rom 0x20000ad4
20000ab6 lw a5, 0x308(a5)
20000aba c.jalr a5
20000abc c.bnez a0, 0x4c
20000abe lw s0, 0x73c(s7)
20000ac2 lw a5, 0x748(s6)
20000ac6 addi a0, zero, 0x1e0
20000aca c.jalr a5
20000acc lui a1, 0xc4000
20000ad0 c.addi a1, -1
20000ad2 c.and a0, a1
20000ad4 lui a1, 0x10000
20000ad8 c.or a1, a0
20000ada addi a0, zero, 0x1e0
20000ade c.jalr s0
20000ae0 lui a5, 0x20201
20000ae4 lw a5, 0x738(a5)
20000ae8 c.lui a0, 8
20000aea c.li a1, 0xb
20000aec addi a0, a0, -0x70e
20000af0 c.jalr a5
20000af2 lui a5, 0x20201
20000af6 lw a5, 0xc4(a5)
20000afa lui a0, 0x20209
20000afe addi a1, zero, 0x244
20000b02 addi a0, a0, 0x260
20000b06 c.jalr a5
20000b08 c.jal -0x216
20000b0a c.slli a0, 0x10
20000b0c c.srli a0, 0x10
20000b0e c.jal -0x1a4
20000b10 lw a5, 0x748(s6)
20000b14 addi a0, zero, 0x1e0
20000b18 c.jalr a5
20000b1a lui a1, 0xc4000
20000b1e c.lwsp s0, 0x48(sp)
20000b20 lw a5, 0x73c(s7)
20000b24 c.lwsp ra, 0x4c(sp)
20000b26 c.lwsp s1, 0x44(sp)
20000b28 c.lwsp s2, 0x40(sp)
20000b2a c.lwsp s3, 0x3c(sp)
20000b2c c.lwsp s4, 0x38(sp)
20000b2e c.lwsp s5, 0x34(sp)
20000b30 c.lwsp s6, 0x30(sp)
20000b32 c.lwsp s7, 0x2c(sp)
20000b34 c.lwsp s8, 0x28(sp)
20000b36 c.lwsp s9, 0x24(sp)
20000b38 c.lwsp s10, 0x20(sp)
20000b3a c.lwsp s11, 0x1c(sp)
20000b3c c.addi a1, -2
20000b3e c.and a0, a1
20000b40 lui a1, 0x8000
20000b44 c.or a1, a0
20000b46 addi a0, zero, 0x1e0
20000b4a c.addi16sp sp, 0x50
20000b4c c.jr a5
20000b4e slli a2, a1, 4
20000b52 c.add a2, a7
20000b54 lbu a4, 5(a2)
20000b58 lbu a3, 4(a2)
20000b5c c.slli a4, 8
20000b5e c.or a3, a4
20000b60 lbu a4, 6(a2)
20000b64 c.slli a4, 0x10
20000b66 c.or a4, a3
20000b68 c.bnez a4, 6

rom 0x20000b40
20000b22 fnmsub.s ft7, fa2, fa1, fs0
20000b26 c.lwsp s1, 0x44(sp)
20000b28 c.lwsp s2, 0x40(sp)
20000b2a c.lwsp s3, 0x3c(sp)
20000b2c c.lwsp s4, 0x38(sp)
20000b2e c.lwsp s5, 0x34(sp)
20000b30 c.lwsp s6, 0x30(sp)
20000b32 c.lwsp s7, 0x2c(sp)
20000b34 c.lwsp s8, 0x28(sp)
20000b36 c.lwsp s9, 0x24(sp)
20000b38 c.lwsp s10, 0x20(sp)
20000b3a c.lwsp s11, 0x1c(sp)
20000b3c c.addi a1, -2
20000b3e c.and a0, a1
20000b40 lui a1, 0x8000
20000b44 c.or a1, a0
20000b46 addi a0, zero, 0x1e0
20000b4a c.addi16sp sp, 0x50
20000b4c c.jr a5
20000b4e slli a2, a1, 4
20000b52 c.add a2, a7
20000b54 lbu a4, 5(a2)
20000b58 lbu a3, 4(a2)
20000b5c c.slli a4, 8
20000b5e c.or a3, a4
20000b60 lbu a4, 6(a2)
20000b64 c.slli a4, 0x10
20000b66 c.or a4, a3
20000b68 c.bnez a4, 6
20000b6a c.addi a1, 1
20000b6c c.j -0x18c
20000b6e bltu a4, a0, 0xe
20000b72 c.sub a4, a0
20000b74 c.addi a5, 1
20000b76 c.slli a5, 0x10
20000b78 c.srli a5, 0x10
20000b7a c.j -0x12
20000b7c c.li a4, 0
20000b7e c.j -0xa
20000b80 lw a5, 0x6b8(s5)
20000b84 c.li a4, 0
20000b86 addi a3, zero, 0xf8
20000b8a c.li a2, 5
20000b8c c.li a0, 2
20000b8e c.li a1, 0
20000b90 c.jalr a5
20000b92 c.j -0x176
20000b94 lw a3, 4(s2)
20000b98 slli a5, s4, 4
20000b9c c.add a5, a3
20000b9e lbu a3, 1(a5)
20000ba2 lbu s0, 0(a5)
20000ba6 lbu s1, 5(a5)
20000baa c.slli a3, 8
20000bac c.or a3, s0
20000bae lbu s0, 2(a5)
20000bb2 c.slli s1, 8
20000bb4 lbu a2, 9(a5)
20000bb8 c.slli s0, 0x10
20000bba c.or a3, s0
20000bbc lbu s0, 3(a5)
20000bc0 c.slli s0, 0x18
20000bc2 c.or s0, a3
20000bc4 lbu a3, 4(a5)
20000bc8 c.or a3, s1
20000bca lbu s1, 6(a5)
20000bce c.slli s1, 0x10
20000bd0 c.or s1, a3
20000bd2 lbu a3, 0xa(a5)

rom 0x20001384
20001366 slli a1, a0, 0x11
2000136a c.srli a1, 0x11
2000136c addi a0, zero, 0x1d0
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
20001410 lui a5, 0x20202
20001414 lw a5, -0x3b0(a5)
20001418 c.li a0, 0

rom 0x20001394
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
20001410 lui a5, 0x20202
20001414 lw a5, -0x3b0(a5)
20001418 c.li a0, 0
2000141a c.jalr a5
2000141c lw a5, 0x738(s0)
20001420 addi a0, s1, -0x70e
20001424 c.li a1, 0x19
20001426 c.jalr a5
20001428 .byte 0xb7, 0x27

rom 0x20001b22
20001b04 c.li a2, 5
20001b06 c.li a1, 0
20001b08 c.li a0, 2
20001b0a c.jalr a6
20001b0c lw s0, 0x73c(s2)
20001b10 lw a5, 0x748(s1)
20001b14 addi a0, zero, 0x1e0
20001b18 c.jalr a5
20001b1a lui a1, 0xc4000
20001b1e c.addi a1, -1
20001b20 c.and a0, a1
20001b22 lui a1, 0x10000
20001b26 c.or a1, a0
20001b28 addi a0, zero, 0x1e0
20001b2c c.jalr s0
20001b2e lui a5, 0x20201
20001b32 lw a5, 0x738(a5)
20001b36 c.lui a0, 8
20001b38 c.li a1, 0xb
20001b3a addi a0, a0, -0x70e
20001b3e c.jalr a5
20001b40 lui a5, 0x20201
20001b44 lw a5, 0xc4(a5)
20001b48 lui a0, 0x20209
20001b4c addi a1, zero, 0x386
20001b50 addi a0, a0, 0x270
20001b54 c.jalr a5
20001b56 c.lwsp ra, 0x1c(sp)
20001b58 c.lwsp s0, 0x18(sp)
20001b5a c.lwsp s1, 0x14(sp)
20001b5c c.lwsp s2, 0x10(sp)
20001b5e c.lwsp s3, 0xc(sp)
20001b60 c.lwsp s4, 8(sp)
20001b62 c.li a0, 1
20001b64 c.addi16sp sp, 0x20
20001b66 c.jr ra
20001b68 lui a5, 0x20201
20001b6c lw a5, 0x748(a5)
20001b70 c.addi sp, -0x10
20001b72 c.lui a0, 9
20001b74 c.swsp ra, 0xc(sp)
20001b76 addi a0, a0, -0x6e8
20001b7a c.jalr a5
20001b7c lui a4, 0x20201
20001b80 lw a6, 0x6b8(a4)
20001b84 srli a5, a0, 0x10
20001b88 c.beqz a5, 0x18
20001b8a c.li a0, 2
20001b8c c.li a4, 1
20001b8e addi a3, zero, 0xeb
20001b92 c.li a2, 5
20001b94 c.li a1, 0
20001b96 c.jalr a6
20001b98 c.li a0, 0
20001b9a c.lwsp ra, 0xc(sp)
20001b9c c.addi sp, 0x10
20001b9e c.jr ra
20001ba0 c.li a0, 2
20001ba2 c.li a5, 0
20001ba4 c.li a4, 0
20001ba6 addi a3, zero, 0xec
20001baa c.li a2, 5
20001bac c.li a1, 0
20001bae c.jalr a6
20001bb0 c.li a0, 1
20001bb2 c.j -0x18
20001bb4 c.jr ra
20001bb6 c.mv a5, a0

rom 0x20002e22
20002e04 beq a5, a4, 0x76
20002e08 lui a4, 0x800
20002e0c c.li a0, 0x17
20002e0e beq a5, a4, 0x6c
20002e12 lui a4, 0x200
20002e16 addi a0, zero, 0xff
20002e1a bne a5, a4, 0x60
20002e1e c.li a0, 0x15
20002e20 c.jr ra
20002e22 lui a4, 0x10000
20002e26 c.li a0, 0x1c
20002e28 beq a5, a4, 0x52
20002e2c bltu a4, a5, 0x28
20002e30 lui a4, 0x4000
20002e34 c.li a0, 0x1a
20002e36 beq a5, a4, 0x44
20002e3a lui a4, 0x8000
20002e3e c.li a0, 0x1b
20002e40 beq a5, a4, 0x3a
20002e44 lui a4, 0x2000
20002e48 addi a0, zero, 0xff
20002e4c bne a5, a4, 0x2e
20002e50 c.li a0, 0x19
20002e52 c.jr ra
20002e54 lui a4, 0x40000
20002e58 c.li a0, 0x1e
20002e5a beq a5, a4, 0x20
20002e5e lui a4, 0x80000
20002e62 c.li a0, 0x1f
20002e64 beq a5, a4, 0x16
20002e68 lui a4, 0x20000
20002e6c addi a0, zero, 0xff
20002e70 bne a5, a4, 0xa
20002e74 c.li a0, 0x1d
20002e76 c.jr ra
20002e78 c.li a0, 0x10
20002e7a c.jr ra
20002e7c lui a5, 0x20201
20002e80 lw a5, 0x12c(a5)
20002e84 c.addi sp, -0x20
20002e86 c.swsp s1, 0x14(sp)
20002e88 c.swsp s2, 0x10(sp)
20002e8a c.swsp ra, 0x1c(sp)
20002e8c c.swsp s0, 0x18(sp)
20002e8e c.swsp s3, 0xc(sp)
20002e90 c.swsp s4, 8(sp)
20002e92 c.swsp s5, 4(sp)
20002e94 c.swsp s6, 0(sp)
20002e96 c.mv s1, a0
20002e98 c.jalr a5
20002e9a c.li a5, 1
20002e9c c.mv s2, a0
20002e9e beq s1, a5, 0x8e
20002ea2 c.li a5, 2
20002ea4 beq s1, a5, 0xd4
20002ea8 bnez s1, 0x14e
20002eac lui s3, 0x20202
20002eb0 addi a5, s3, 0x3e4
20002eb4 c.lw a5, 0x34(a5)
20002eb6 .byte 0x93, 0x89

rom 0x20002e3a
20002e1c jalr a3, a0, 0x455
20002e20 c.jr ra
20002e22 lui a4, 0x10000
20002e26 c.li a0, 0x1c
20002e28 beq a5, a4, 0x52
20002e2c bltu a4, a5, 0x28
20002e30 lui a4, 0x4000
20002e34 c.li a0, 0x1a
20002e36 beq a5, a4, 0x44
20002e3a lui a4, 0x8000
20002e3e c.li a0, 0x1b
20002e40 beq a5, a4, 0x3a
20002e44 lui a4, 0x2000
20002e48 addi a0, zero, 0xff
20002e4c bne a5, a4, 0x2e
20002e50 c.li a0, 0x19
20002e52 c.jr ra
20002e54 lui a4, 0x40000
20002e58 c.li a0, 0x1e
20002e5a beq a5, a4, 0x20
20002e5e lui a4, 0x80000
20002e62 c.li a0, 0x1f
20002e64 beq a5, a4, 0x16
20002e68 lui a4, 0x20000
20002e6c addi a0, zero, 0xff
20002e70 bne a5, a4, 0xa
20002e74 c.li a0, 0x1d
20002e76 c.jr ra
20002e78 c.li a0, 0x10
20002e7a c.jr ra
20002e7c lui a5, 0x20201
20002e80 lw a5, 0x12c(a5)
20002e84 c.addi sp, -0x20
20002e86 c.swsp s1, 0x14(sp)
20002e88 c.swsp s2, 0x10(sp)
20002e8a c.swsp ra, 0x1c(sp)
20002e8c c.swsp s0, 0x18(sp)
20002e8e c.swsp s3, 0xc(sp)
20002e90 c.swsp s4, 8(sp)
20002e92 c.swsp s5, 4(sp)
20002e94 c.swsp s6, 0(sp)
20002e96 c.mv s1, a0
20002e98 c.jalr a5
20002e9a c.li a5, 1
20002e9c c.mv s2, a0
20002e9e beq s1, a5, 0x8e
20002ea2 c.li a5, 2
20002ea4 beq s1, a5, 0xd4
20002ea8 bnez s1, 0x14e
20002eac lui s3, 0x20202
20002eb0 addi a5, s3, 0x3e4
20002eb4 c.lw a5, 0x34(a5)
20002eb6 addi s3, s3, 0x3e4
20002eba lui s5, 0x20202
20002ebe lw s4, 4(a5)
20002ec2 addi s6, zero, 0xff
20002ec6 lw a5, 0x34(s3)
20002eca c.lw a4, 0x10(a5)
20002ecc bltu s1, a4, 0x14

rom 0x200089ac
2000898e c.lwsp s1, 0x34(sp)
20008990 c.lwsp s2, 0x30(sp)
20008992 c.lwsp s3, 0x2c(sp)
20008994 c.lwsp s4, 0x28(sp)
20008996 c.lwsp s5, 0x24(sp)
20008998 c.lwsp s7, 0x1c(sp)
2000899a c.lwsp s8, 0x18(sp)
2000899c c.mv a0, s6
2000899e c.lwsp s6, 0x20(sp)
200089a0 c.addi16sp sp, 0x40
200089a2 c.jr ra
200089a4 c.slli s1, 0xe
200089a6 c.srli s1, 0xe
200089a8 bnez s8, 0xa
200089ac lui a5, 0x10000
200089b0 c.or s1, a5
200089b2 beqz s7, 0xa
200089b6 lui a5, 0x20000
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

rom 0x2000a000
20009fe2 c.li s2, 0
20009fe4 c.mv a5, s4
20009fe6 beqz s3, 0x6c
20009fea addi s6, s0, 0x320
20009fee c.mv a2, s3
20009ff0 c.mv a1, s1
20009ff2 c.mv a0, s6
20009ff4 jal 0x251e8
20009ff8 bltu s3, s4, 0xc
20009ffc c.lw a5, 0x60(s0)
20009ffe c.bnez a5, 6
2000a000 lui s7, 0x10000
2000a004 lui a1, 0xf0004
2000a008 slli a5, s3, 0x12
2000a00c c.addi a1, -1
2000a00e c.srli a5, 4
2000a010 and a1, s7, a1
2000a014 or s7, a1, a5
2000a018 lbu a5, 2(s0)
2000a01c c.beqz a5, 0x20
2000a01e lui a5, 0x20202
2000a022 lw a5, -0x3c8(a5)
2000a026 lui a2, 0x20209
2000a02a c.li a1, 5
2000a02c addi a0, zero, 0x100
2000a030 addi a2, a2, -0x624
2000a034 c.jalr a5
2000a036 c.mv a1, s3
2000a038 c.mv a0, s6
2000a03a c.jal -0x5c8
2000a03c lui a5, 0x20202
2000a040 lw a5, -0xe0(a5)
2000a044 c.mv a2, s6
2000a046 c.mv a1, s7
2000a048 c.mv a0, s0
2000a04a c.jalr a5
2000a04c c.add s1, s3
2000a04e sub a5, s4, s3
2000a052 c.lui s3, 4
2000a054 addi s6, s3, -0x20
2000a058 lui s7, 0x20202
2000a05c bltu s6, a5, 0x1ee
2000a060 bgeu s2, a5, 0x310
2000a064 sub s6, a5, s2
2000a068 andi a4, s6, 0x1f
2000a06c beqz a4, 0x1f8
2000a070 lui a4, 0x20201
2000a074 lw a7, 0x6b8(a4)
2000a078 addi a0, zero, 0x100
2000a07c c.mv a6, s2
2000a07e c.li a4, 2
2000a080 addi a3, zero, 0x16f
2000a084 c.li a2, 3
2000a086 c.li a1, 0
2000a088 c.jalr a7
2000a08a c.li a0, -0x16
2000a08c c.lwsp ra, 0x4c(sp)
2000a08e c.lwsp s0, 0x48(sp)
2000a090 c.lwsp s1, 0x44(sp)
2000a092 c.lwsp s2, 0x40(sp)
2000a094 c.lwsp s3, 0x3c(sp)

rom 0x2000a0de
2000a0c0 c.addi4spn s1, sp, 0x2c4
2000a0c2 bne a4, a5, 0xf2
2000a0c6 c.add s10, s7
2000a0c8 neg a5, s11
2000a0cc andi a4, a5, 0x1f
2000a0d0 c.mv a5, a4
2000a0d2 blt a4, s10, 0xe8
2000a0d6 slli a5, s10, 0x18
2000a0da c.srai a5, 0x18
2000a0dc c.li s9, 0
2000a0de lui a1, 0x28000
2000a0e2 c.beqz a5, 0x3a
2000a0e4 c.li a4, 1
2000a0e6 sb a4, 0x7c(s0)
2000a0ea andi a4, a5, 0xff
2000a0ee c.or a1, a4
2000a0f0 blt a5, s10, 0xe
2000a0f4 bnez s8, 0xa
2000a0f8 lui a4, 0x10000
2000a0fc c.or a1, a4
2000a0fe lui a4, 0x20202
2000a102 lw a4, -0xd8(a4)
2000a106 addi a2, s0, 0x360
2000a10a c.mv a0, s0
2000a10c c.swsp a5, 0xc(sp)
2000a10e c.jalr a4
2000a110 c.lwsp a5, 0xc(sp)
2000a112 lui a1, 0x8000
2000a116 sub s10, s10, a5
2000a11a c.add s11, a5
2000a11c blez s10, 0x50
2000a120 sub a5, s10, s9
2000a124 c.slli a5, 8
2000a126 lui a4, 0xff000
2000a12a c.srli a5, 8
2000a12c c.and a1, a4
2000a12e c.or a1, a5
2000a130 lui a6, 0x20202
2000a134 c.li a5, 1
2000a136 beqz s9, 0xa2
2000a13a sb a5, 0x7d(s0)
2000a13e bge s9, s10, 0x12
2000a142 lw a5, -0xd8(a6)
2000a146 c.mv a2, s11
2000a148 c.mv a0, s0
2000a14a c.jalr a5
2000a14c lui a6, 0x20202
2000a150 lw a4, -0xd8(a6)
2000a154 lui a1, 0x8000
2000a158 seqz a5, s8
2000a15c c.slli a5, 0x1c
2000a15e or a1, a1, s9
2000a162 addi a2, s0, 0x380
2000a166 c.or a1, a5
2000a168 c.mv a0, s0
2000a16a c.jalr a4
2000a16c beqz s8, -0x246
2000a170 andi a4, s6, 0x7f

rom 0x2000a0f8
2000a0da c.srai a5, 0x18
2000a0dc c.li s9, 0
2000a0de lui a1, 0x28000
2000a0e2 c.beqz a5, 0x3a
2000a0e4 c.li a4, 1
2000a0e6 sb a4, 0x7c(s0)
2000a0ea andi a4, a5, 0xff
2000a0ee c.or a1, a4
2000a0f0 blt a5, s10, 0xe
2000a0f4 bnez s8, 0xa
2000a0f8 lui a4, 0x10000
2000a0fc c.or a1, a4
2000a0fe lui a4, 0x20202
2000a102 lw a4, -0xd8(a4)
2000a106 addi a2, s0, 0x360
2000a10a c.mv a0, s0
2000a10c c.swsp a5, 0xc(sp)
2000a10e c.jalr a4
2000a110 c.lwsp a5, 0xc(sp)
2000a112 lui a1, 0x8000
2000a116 sub s10, s10, a5
2000a11a c.add s11, a5
2000a11c blez s10, 0x50
2000a120 sub a5, s10, s9
2000a124 c.slli a5, 8
2000a126 lui a4, 0xff000
2000a12a c.srli a5, 8
2000a12c c.and a1, a4
2000a12e c.or a1, a5
2000a130 lui a6, 0x20202
2000a134 c.li a5, 1
2000a136 beqz s9, 0xa2
2000a13a sb a5, 0x7d(s0)
2000a13e bge s9, s10, 0x12
2000a142 lw a5, -0xd8(a6)
2000a146 c.mv a2, s11
2000a148 c.mv a0, s0
2000a14a c.jalr a5
2000a14c lui a6, 0x20202
2000a150 lw a4, -0xd8(a6)
2000a154 lui a1, 0x8000
2000a158 seqz a5, s8
2000a15c c.slli a5, 0x1c
2000a15e or a1, a1, s9
2000a162 addi a2, s0, 0x380
2000a166 c.or a1, a5
2000a168 c.mv a0, s0
2000a16a c.jalr a4
2000a16c beqz s8, -0x246
2000a170 andi a4, s6, 0x7f
2000a174 addi a3, zero, 0x26
2000a178 andi s6, s6, 0x7e
2000a17c c.li a5, 0
2000a17e beq s6, a3, 0x76
2000a182 addi a3, a4, -0x2b
2000a186 c.li a2, 1
2000a188 bgeu a2, a3, 0x6c
2000a18c .byte 0x93, 0x06

rom 0x2000a112
2000a0f4 bnez s8, 0xa
2000a0f8 lui a4, 0x10000
2000a0fc c.or a1, a4
2000a0fe lui a4, 0x20202
2000a102 lw a4, -0xd8(a4)
2000a106 addi a2, s0, 0x360
2000a10a c.mv a0, s0
2000a10c c.swsp a5, 0xc(sp)
2000a10e c.jalr a4
2000a110 c.lwsp a5, 0xc(sp)
2000a112 lui a1, 0x8000
2000a116 sub s10, s10, a5
2000a11a c.add s11, a5
2000a11c blez s10, 0x50
2000a120 sub a5, s10, s9
2000a124 c.slli a5, 8
2000a126 lui a4, 0xff000
2000a12a c.srli a5, 8
2000a12c c.and a1, a4
2000a12e c.or a1, a5
2000a130 lui a6, 0x20202
2000a134 c.li a5, 1
2000a136 beqz s9, 0xa2
2000a13a sb a5, 0x7d(s0)
2000a13e bge s9, s10, 0x12
2000a142 lw a5, -0xd8(a6)
2000a146 c.mv a2, s11
2000a148 c.mv a0, s0
2000a14a c.jalr a5
2000a14c lui a6, 0x20202
2000a150 lw a4, -0xd8(a6)
2000a154 lui a1, 0x8000
2000a158 seqz a5, s8
2000a15c c.slli a5, 0x1c
2000a15e or a1, a1, s9
2000a162 addi a2, s0, 0x380
2000a166 c.or a1, a5
2000a168 c.mv a0, s0
2000a16a c.jalr a4
2000a16c beqz s8, -0x246
2000a170 andi a4, s6, 0x7f
2000a174 addi a3, zero, 0x26
2000a178 andi s6, s6, 0x7e
2000a17c c.li a5, 0
2000a17e beq s6, a3, 0x76
2000a182 addi a3, a4, -0x2b
2000a186 c.li a2, 1
2000a188 bgeu a2, a3, 0x6c
2000a18c addi a3, zero, 0x50
2000a190 beq a4, a3, 0x64
2000a194 c.li a4, 0x10
2000a196 andi a5, a5, -0x100
2000a19a c.or a5, a4
2000a19c lui a4, 0x20202
2000a1a0 lw a4, -0xd8(a4)
2000a1a4 lui a1, 0x10000

rom 0x2000a154
2000a136 beqz s9, 0xa2
2000a13a sb a5, 0x7d(s0)
2000a13e bge s9, s10, 0x12
2000a142 lw a5, -0xd8(a6)
2000a146 c.mv a2, s11
2000a148 c.mv a0, s0
2000a14a c.jalr a5
2000a14c lui a6, 0x20202
2000a150 lw a4, -0xd8(a6)
2000a154 lui a1, 0x8000
2000a158 seqz a5, s8
2000a15c c.slli a5, 0x1c
2000a15e or a1, a1, s9
2000a162 addi a2, s0, 0x380
2000a166 c.or a1, a5
2000a168 c.mv a0, s0
2000a16a c.jalr a4
2000a16c beqz s8, -0x246
2000a170 andi a4, s6, 0x7f
2000a174 addi a3, zero, 0x26
2000a178 andi s6, s6, 0x7e
2000a17c c.li a5, 0
2000a17e beq s6, a3, 0x76
2000a182 addi a3, a4, -0x2b
2000a186 c.li a2, 1
2000a188 bgeu a2, a3, 0x6c
2000a18c addi a3, zero, 0x50
2000a190 beq a4, a3, 0x64
2000a194 c.li a4, 0x10
2000a196 andi a5, a5, -0x100
2000a19a c.or a5, a4
2000a19c lui a4, 0x20202
2000a1a0 lw a4, -0xd8(a4)
2000a1a4 lui a1, 0x10000
2000a1a8 addi a2, s0, 0x300
2000a1ac c.or a1, a5
2000a1ae c.mv a0, s0
2000a1b0 c.jalr a4
2000a1b2 c.j -0x28c
2000a1b4 c.lw a5, 0x60(s0)
2000a1b6 c.add s10, a5
2000a1b8 c.j -0xf0
2000a1ba addi a4, s10, -1
2000a1be c.add a4, s11
2000a1c0 c.andi a4, 0x1f
2000a1c2 c.addi a4, 1
2000a1c4 addi a2, zero, 0x20
2000a1c8 c.li s9, 0
2000a1ca beq a4, a2, -0xec
2000a1ce slli s9, a4, 0x18
2000a1d2 srai s9, s9, 0x18
2000a1d6 c.j -0xf8
2000a1d8 beqz s8, 0xa
2000a1dc srli a5, a1, 0x1c
2000a1e0 c.andi a5, 1
2000a1e2 lui a4, 0xf0000
2000a1e6 c.addi a4, -1
2000a1e8 c.and a1, a4

rom 0x2000a1a4
2000a186 c.li a2, 1
2000a188 bgeu a2, a3, 0x6c
2000a18c addi a3, zero, 0x50
2000a190 beq a4, a3, 0x64
2000a194 c.li a4, 0x10
2000a196 andi a5, a5, -0x100
2000a19a c.or a5, a4
2000a19c lui a4, 0x20202
2000a1a0 lw a4, -0xd8(a4)
2000a1a4 lui a1, 0x10000
2000a1a8 addi a2, s0, 0x300
2000a1ac c.or a1, a5
2000a1ae c.mv a0, s0
2000a1b0 c.jalr a4
2000a1b2 c.j -0x28c
2000a1b4 c.lw a5, 0x60(s0)
2000a1b6 c.add s10, a5
2000a1b8 c.j -0xf0
2000a1ba addi a4, s10, -1
2000a1be c.add a4, s11
2000a1c0 c.andi a4, 0x1f
2000a1c2 c.addi a4, 1
2000a1c4 addi a2, zero, 0x20
2000a1c8 c.li s9, 0
2000a1ca beq a4, a2, -0xec
2000a1ce slli s9, a4, 0x18
2000a1d2 srai s9, s9, 0x18
2000a1d6 c.j -0xf8
2000a1d8 beqz s8, 0xa
2000a1dc srli a5, a1, 0x1c
2000a1e0 c.andi a5, 1
2000a1e2 lui a4, 0xf0000
2000a1e6 c.addi a4, -1
2000a1e8 c.and a1, a4
2000a1ea c.slli a5, 0x1c
2000a1ec lw a4, -0xd8(a6)
2000a1f0 c.mv a2, s11
2000a1f2 c.j -0x8c
2000a1f4 addi a3, zero, 0x50
2000a1f8 lui a5, 0x20000
2000a1fc bne a4, a3, -0x68
2000a200 c.li a4, 8
2000a202 c.j -0x6c
2000a204 lbu a5, 2(s0)
2000a208 c.beqz a5, 0x1a
2000a20a lw a5, -0x3c8(s8)
2000a20e c.li a1, 5
2000a210 addi a0, zero, 0x100
2000a214 addi a2, s9, -0x658
2000a218 c.jalr a5
2000a21a c.li a1, 0x10
2000a21c c.mv a0, s2
2000a21e jal -0x7ac
2000a222 lw a5, -0xe0(s10)
2000a226 c.mv a2, s2
2000a228 c.lui a1, 1
2000a22a c.mv a0, s0
2000a22c c.jalr a5
2000a22e c.addi s2, 0x10
2000a230 c.addi s3, -0x10
2000a232 c.li s7, 0
2000a234 c.j -0x2ea
2000a236 add s2, s1, s4

rom 0x2000a308
2000a2ea lw a5, -0xe0(a5)
2000a2ee c.mv a2, s1
2000a2f0 c.mv a1, s2
2000a2f2 c.mv a0, s0
2000a2f4 c.jalr a5
2000a2f6 lw s2, 0x60(s0)
2000a2fa beqz s2, 0x4e
2000a2fe lui a5, 0xfffc
2000a302 slli s1, s2, 0xe
2000a306 c.and s1, a5
2000a308 lui a5, 0x10000
2000a30c c.or s1, a5
2000a30e lbu a5, 2(s0)
2000a312 c.beqz a5, 0x26
2000a314 lui a5, 0x20202
2000a318 lw a5, -0x3c8(a5)
2000a31c lui a2, 0x20209
2000a320 c.li a1, 5
2000a322 addi a0, zero, 0x100
2000a326 addi a2, a2, -0x594
2000a32a c.jalr a5
2000a32c slli a1, s2, 0x12
2000a330 c.srli a1, 0x12
2000a332 c.mv a0, s5
2000a334 jal -0x8c2
2000a338 lui a5, 0x20202
2000a33c lw a5, -0xe0(a5)
2000a340 c.mv a2, s5
2000a342 c.mv a1, s1
2000a344 c.mv a0, s0
2000a346 c.jalr a5
2000a348 lui a5, 0x20202
2000a34c c.mv a0, s0
2000a34e c.lwsp s0, 0x48(sp)
2000a350 c.lwsp ra, 0x4c(sp)
2000a352 c.lwsp s1, 0x44(sp)
2000a354 c.lwsp s2, 0x40(sp)
2000a356 c.lwsp s3, 0x3c(sp)
2000a358 c.lwsp s4, 0x38(sp)
2000a35a c.lwsp s5, 0x34(sp)
2000a35c c.lwsp s6, 0x30(sp)
2000a35e c.lwsp s7, 0x2c(sp)
2000a360 c.lwsp s8, 0x28(sp)
2000a362 c.lwsp s9, 0x24(sp)
2000a364 c.lwsp s10, 0x20(sp)
2000a366 c.lwsp s11, 0x1c(sp)
2000a368 lw a5, -0xf0(a5)
2000a36c c.addi16sp sp, 0x50
2000a36e c.jr a5
2000a370 bgeu a5, s2, -0xcc
2000a374 c.j -0x304
2000a376 beqz s2, -0x80
2000a37a addi s3, s0, 0x340
2000a37e c.mv a1, s1
2000a380 c.mv a2, s2
2000a382 c.mv a0, s3
2000a384 jal 0x24e58
2000a388 c.lw s1, 0x60(s0)
2000a38a slli a5, s2, 0xe
2000a38e seqz s1, s1
2000a392 c.slli s1, 0x1c
2000a394 c.or s1, a5
2000a396 lbu a5, 2(s0)
2000a39a c.beqz a5, 0x22
2000a39c .byte 0xb7, 0x27

rom 0x20010648
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
200106ca lui a4, 0x18620
200106ce c.li a5, 9
200106d0 bltu a0, a4, 6
200106d4 c.li a5, 0xa
200106d6 c.slli s0, 8
200106d8 c.slli s9, 4
200106da andi s0, s0, 0x700

rom 0x20010652
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
200106ca lui a4, 0x18620
200106ce c.li a5, 9
200106d0 bltu a0, a4, 6
200106d4 c.li a5, 0xa
200106d6 c.slli s0, 8
200106d8 c.slli s9, 4
200106da andi s0, s0, 0x700
200106de or s0, s0, s9
200106e2 c.or s0, a5
200106e4 lui a5, 0x20201

rom 0x2001067a
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
200106ca lui a4, 0x18620
200106ce c.li a5, 9
200106d0 bltu a0, a4, 6
200106d4 c.li a5, 0xa
200106d6 c.slli s0, 8
200106d8 c.slli s9, 4
200106da andi s0, s0, 0x700
200106de or s0, s0, s9
200106e2 c.or s0, a5
200106e4 lui a5, 0x20201
200106e8 lw a2, 0x5e8(s3)
200106ec lw a5, 0x598(a5)
200106f0 c.lui s9, 2
200106f2 or s9, s0, s9
200106f6 c.mv a1, s8
200106f8 c.mv a0, s9
200106fa c.jalr a5
200106fc lw a5, 0x74c(s7)
20010700 lui s7, 0xb8005
20010704 c.li a1, 1
20010706 addi a0, s7, 0x13c
2001070a c.jalr a5
2001070c lw a5, 0x758(s2)

rom 0x20010a12
200109f4 addi a0, zero, 0x1f0
200109f8 c.slli s1, 8
200109fa c.jalr a5
200109fc lui a1, 0xff000
20010a00 addi a1, a1, 0xff
20010a04 c.and a1, a0
20010a06 c.or a1, s1
20010a08 addi a0, zero, 0x1f0
20010a0c c.jalr s3
20010a0e lw a5, 0x73c(s0)
20010a12 lui a1, 0x10000
20010a16 c.lwsp s0, 0x28(sp)
20010a18 c.lwsp ra, 0x2c(sp)
20010a1a c.lwsp s1, 0x24(sp)
20010a1c c.lwsp s3, 0x1c(sp)
20010a1e c.lwsp s4, 0x18(sp)
20010a20 or a1, s2, a1
20010a24 c.lwsp s2, 0x20(sp)
20010a26 addi a0, zero, 0x16c
20010a2a c.addi16sp sp, 0x30
20010a2c c.jr a5
20010a2e lui s0, 0x20203
20010a32 lw a1, -0x6d8(s0)
20010a36 addi a5, zero, 0x40
20010a3a c.swsp a1, 0xc(sp)
20010a3c bgeu a5, a1, 0x64
20010a40 lui s2, 0x20201
20010a44 lui a5, 0x20201
20010a48 lw s3, 0x118(a5)
20010a4c lw a5, 0x744(s2)
20010a50 lui s1, 0x20203
20010a54 addi a0, zero, 0x1f0
20010a58 lw s4, -0x6d4(s1)
20010a5c c.jalr a5
20010a5e lw a5, 0x744(s2)
20010a62 c.swsp a0, 8(sp)
20010a64 addi a0, zero, 0x1f4
20010a68 c.jalr a5
20010a6a lw a5, 0x744(s2)
20010a6e c.swsp a0, 4(sp)
20010a70 addi a0, zero, 0x1f8
20010a74 c.jalr a5
20010a76 c.lwsp a4, 4(sp)
20010a78 c.lwsp a3, 8(sp)
20010a7a c.lwsp a1, 0xc(sp)
20010a7c lui a2, 0x20209
20010a80 c.mv a5, a0
20010a82 addi a2, a2, -0x4f0
20010a86 c.mv a0, s4
20010a88 c.jalr s3
20010a8a lw a5, -0x6d4(s1)
20010a8e c.add a5, a0
20010a90 sw a5, -0x6d4(s1)
20010a94 lw a5, -0x6d8(s0)
20010a98 sub a0, a5, a0
20010a9c sw a0, -0x6d8(s0)
20010aa0 c.lwsp ra, 0x2c(sp)
20010aa2 c.lwsp s0, 0x28(sp)
20010aa4 c.lwsp s1, 0x24(sp)
20010aa6 c.lwsp s2, 0x20(sp)

rom 0x200126f2
200126d4 c.li a1, 0
200126d6 c.jalr a5
200126d8 c.li s0, 0
200126da c.lwsp ra, 0xc(sp)
200126dc c.mv a0, s0
200126de c.lwsp s0, 8(sp)
200126e0 c.lwsp s1, 4(sp)
200126e2 c.lwsp s2, 0(sp)
200126e4 c.addi sp, 0x10
200126e6 c.jr ra
200126e8 lui a1, 0x3000
200126ec c.slli a2, 0x18
200126ee c.and a2, a1
200126f0 c.or a0, a2
200126f2 lui a1, 0x88000
200126f6 c.j -0x56
200126f8 lui a5, 0x20201
200126fc lw a5, 0x748(a5)
20012700 addi a0, s2, 0x34c
20012704 c.jalr a5
20012706 c.srli a0, 8
20012708 andi a0, a0, 0x1ff
2001270c sh a0, 0(s1)
20012710 c.j -0x36
20012712 lui a5, 0x20201
20012716 c.addi sp, -0x10
20012718 lw a5, 0x73c(a5)
2001271c c.swsp ra, 0xc(sp)
2001271e c.li a4, 1
20012720 c.slli a3, 8
20012722 bne a1, a4, 0x4a
20012726 or a1, a3, a0
2001272a lui a4, 0x8c800
2001272e c.lui a0, 0xa
20012730 c.or a1, a4
20012732 addi a0, a0, 0x34c
20012736 c.jalr a5
20012738 lui a5, 0x20201
2001273c lw a5, 0x7b8(a5)
20012740 c.lui a0, 0xa
20012742 addi a0, a0, 0x34c
20012746 c.jalr a5
20012748 c.li a5, 1
2001274a beq a0, a5, 0x1c
2001274e lui a5, 0x20201
20012752 lw a5, 0x6b8(a5)
20012756 c.li a0, 8
20012758 c.li a4, 0
2001275a addi a3, zero, 0x106
2001275e c.li a2, 2
20012760 c.li a1, 0
20012762 c.jalr a5
20012764 c.li a0, 0
20012766 c.lwsp ra, 0xc(sp)
20012768 c.addi sp, 0x10
2001276a c.jr ra
2001276c c.slli a2, 0x18
2001276e lui a1, 0x3000
20012772 c.and a1, a2
20012774 c.or a1, a0
20012776 c.or a1, a3
20012778 lui a4, 0x8c000
2001277c c.j -0x4e
2001277e lui a5, 0x20201
20012782 c.addi sp, -0x20
20012784 lw a5, 0x73c(a5)

rom 0x20012fa8
20012f8a addi s3, s3, 0x544
20012f8e c.jalr a5
20012f90 slli a3, s0, 4
20012f94 c.srli a3, 4
20012f96 lui a1, 0xa0000
20012f9a beqz s4, 8
20012f9e lui a1, 0xe0000
20012fa2 c.or a1, a3
20012fa4 beqz s7, 0xa
20012fa8 lui a5, 0x10000
20012fac c.or a1, a5
20012fae lw a5, 0(s2)
20012fb2 c.add s3, s1
20012fb4 lhu a0, 0x60(s3)
20012fb8 c.lw a5, 0x14(a5)
20012fba c.add a5, s9
20012fbc sw s6, 0(a5)
20012fc0 sw s5, 4(a5)
20012fc4 sb s4, 8(a5)
20012fc8 lw a5, 0x73c(s8)
20012fcc c.jalr a5
20012fce c.li a0, 1
20012fd0 c.j -0x106
20012fd2 c.addi16sp sp, -0x40
20012fd4 c.swsp s5, 0x24(sp)
20012fd6 c.swsp ra, 0x3c(sp)
20012fd8 c.mv s5, a5
20012fda c.swsp s0, 0x38(sp)
20012fdc c.swsp s1, 0x34(sp)
20012fde c.swsp s2, 0x30(sp)
20012fe0 c.swsp s3, 0x2c(sp)
20012fe2 c.swsp s4, 0x28(sp)
20012fe4 c.swsp s6, 0x20(sp)
20012fe6 c.swsp s7, 0x1c(sp)
20012fe8 c.swsp s8, 0x18(sp)
20012fea c.swsp s9, 0x14(sp)
20012fec c.li a5, 1
20012fee bgeu a5, a1, 0x20
20012ff2 c.li a0, 0
20012ff4 c.lwsp ra, 0x3c(sp)
20012ff6 c.lwsp s0, 0x38(sp)
20012ff8 c.lwsp s1, 0x34(sp)
20012ffa c.lwsp s2, 0x30(sp)
20012ffc c.lwsp s3, 0x2c(sp)
20012ffe c.lwsp s4, 0x28(sp)
20013000 c.lwsp s5, 0x24(sp)
20013002 c.lwsp s6, 0x20(sp)
20013004 c.lwsp s7, 0x1c(sp)
20013006 c.lwsp s8, 0x18(sp)
20013008 c.lwsp s9, 0x14(sp)
2001300a c.addi16sp sp, 0x40
2001300c c.jr ra
2001300e addi a5, a0, -2
20013012 c.mv s6, a4
20013014 andi a5, a5, 0xff
20013018 c.li a4, 5
2001301a c.mv s1, a0
2001301c bltu a4, a5, -0x2a
20013020 lui s2, 0x20203
20013024 lw s3, 0x580(s2)
20013028 c.mv s4, a1
2001302a c.mv s7, a2
2001302c lw a5, 0x14(s3)
20013030 c.mv s0, a3
20013032 addi s2, s2, 0x580
20013036 c.bnez a5, 0x54
20013038 lui a5, 0x20201
2001303c .byte 0x83, 0xa7

rom 0x200130ba
2001309c c.fld fs0, 0x40(s0)
2001309e addi a5, s3, 0x544
200130a2 c.slli s1, 1
200130a4 c.add a5, s1
200130a6 lui s8, 0x20201
200130aa lw a4, 0x73c(s8)
200130ae lhu a0, 0x60(a5)
200130b2 c.li a1, 0
200130b4 addi s3, s3, 0x544
200130b8 c.jalr a4
200130ba lui a1, 0x10000
200130be c.addi a1, -1
200130c0 slli a3, s0, 0xa
200130c4 c.and a3, a1
200130c6 lui a1, 0xa0000
200130ca beqz s4, 8
200130ce lui a1, 0xe0000
200130d2 c.or a1, a3
200130d4 beqz s7, 0xa
200130d8 lui a5, 0x10000
200130dc c.or a1, a5
200130de lw a5, 0(s2)
200130e2 c.add s3, s1
200130e4 lhu a0, 0x60(s3)
200130e8 c.lw a3, 0x14(a5)
200130ea lw a5, 0x73c(s8)
200130ee c.add a3, s9
200130f0 sw s6, 0(a3)
200130f4 sw s5, 4(a3)
200130f8 sb s4, 8(a3)
200130fc c.jalr a5
200130fe c.li a0, 1
20013100 c.j -0x10c
20013102 c.addi16sp sp, -0x40
20013104 c.swsp s5, 0x24(sp)
20013106 c.mv s5, a5
20013108 addi a5, a0, -2
2001310c c.swsp s6, 0x20(sp)
2001310e c.swsp ra, 0x3c(sp)
20013110 c.mv s6, a4
20013112 c.swsp s0, 0x38(sp)
20013114 c.swsp s1, 0x34(sp)
20013116 c.swsp s2, 0x30(sp)
20013118 c.swsp s3, 0x2c(sp)
2001311a c.swsp s4, 0x28(sp)
2001311c c.swsp s7, 0x1c(sp)
2001311e c.swsp s8, 0x18(sp)
20013120 c.swsp s9, 0x14(sp)
20013122 andi a5, a5, 0xff
20013126 c.li a4, 5
20013128 bgeu a4, a5, 0x20
2001312c c.li a0, 0
2001312e c.lwsp ra, 0x3c(sp)
20013130 c.lwsp s0, 0x38(sp)
20013132 c.lwsp s1, 0x34(sp)
20013134 c.lwsp s2, 0x30(sp)
20013136 c.lwsp s3, 0x2c(sp)
20013138 c.lwsp s4, 0x28(sp)
2001313a c.lwsp s5, 0x24(sp)
2001313c c.lwsp s6, 0x20(sp)
2001313e c.lwsp s7, 0x1c(sp)
20013140 c.lwsp s8, 0x18(sp)
20013142 c.lwsp s9, 0x14(sp)
20013144 c.addi16sp sp, 0x40
20013146 c.jr ra
20013148 c.li a5, 1
2001314a c.mv s4, a1
2001314c bltu a5, a1, -0x20

rom 0x200130d8
200130ba lui a1, 0x10000
200130be c.addi a1, -1
200130c0 slli a3, s0, 0xa
200130c4 c.and a3, a1
200130c6 lui a1, 0xa0000
200130ca beqz s4, 8
200130ce lui a1, 0xe0000
200130d2 c.or a1, a3
200130d4 beqz s7, 0xa
200130d8 lui a5, 0x10000
200130dc c.or a1, a5
200130de lw a5, 0(s2)
200130e2 c.add s3, s1
200130e4 lhu a0, 0x60(s3)
200130e8 c.lw a3, 0x14(a5)
200130ea lw a5, 0x73c(s8)
200130ee c.add a3, s9
200130f0 sw s6, 0(a3)
200130f4 sw s5, 4(a3)
200130f8 sb s4, 8(a3)
200130fc c.jalr a5
200130fe c.li a0, 1
20013100 c.j -0x10c
20013102 c.addi16sp sp, -0x40
20013104 c.swsp s5, 0x24(sp)
20013106 c.mv s5, a5
20013108 addi a5, a0, -2
2001310c c.swsp s6, 0x20(sp)
2001310e c.swsp ra, 0x3c(sp)
20013110 c.mv s6, a4
20013112 c.swsp s0, 0x38(sp)
20013114 c.swsp s1, 0x34(sp)
20013116 c.swsp s2, 0x30(sp)
20013118 c.swsp s3, 0x2c(sp)
2001311a c.swsp s4, 0x28(sp)
2001311c c.swsp s7, 0x1c(sp)
2001311e c.swsp s8, 0x18(sp)
20013120 c.swsp s9, 0x14(sp)
20013122 andi a5, a5, 0xff
20013126 c.li a4, 5
20013128 bgeu a4, a5, 0x20
2001312c c.li a0, 0
2001312e c.lwsp ra, 0x3c(sp)
20013130 c.lwsp s0, 0x38(sp)
20013132 c.lwsp s1, 0x34(sp)
20013134 c.lwsp s2, 0x30(sp)
20013136 c.lwsp s3, 0x2c(sp)
20013138 c.lwsp s4, 0x28(sp)
2001313a c.lwsp s5, 0x24(sp)
2001313c c.lwsp s6, 0x20(sp)
2001313e c.lwsp s7, 0x1c(sp)
20013140 c.lwsp s8, 0x18(sp)
20013142 c.lwsp s9, 0x14(sp)
20013144 c.addi16sp sp, 0x40
20013146 c.jr ra
20013148 c.li a5, 1
2001314a c.mv s4, a1
2001314c bltu a5, a1, -0x20
20013150 lui s2, 0x20203
20013154 lw s3, 0x580(s2)
20013158 c.mv s1, a0
2001315a c.mv s7, a2
2001315c lw a5, 0x14(s3)
20013160 c.mv s0, a3
20013162 addi s2, s2, 0x580
20013166 c.bnez a5, 0x54
20013168 lui a5, 0x20201
2001316c .byte 0x83, 0xa7

rom 0x20013206
200131e8 c.jalr a4
200131ea lui a1, 0xff00
200131ee slli a3, s0, 0x14
200131f2 c.and a3, a1
200131f4 lui a1, 0xa0000
200131f8 beqz s4, 8
200131fc lui a1, 0xe0000
20013200 c.or a1, a3
20013202 beqz s7, 0xa
20013206 lui a5, 0x10000
2001320a c.or a1, a5
2001320c lw a5, 0(s2)
20013210 c.add s3, s1
20013212 lhu a0, 0x60(s3)
20013216 c.lw a3, 0x14(a5)
20013218 lw a5, 0x73c(s8)
2001321c c.add a3, s9
2001321e sw s6, 0(a3)
20013222 sw s5, 4(a3)
20013226 sb s4, 8(a3)
2001322a c.jalr a5
2001322c c.li a0, 1
2001322e c.j -0x100
20013230 addi a5, a0, -2
20013234 andi a5, a5, 0xff
20013238 c.li a4, 5
2001323a bltu a4, a5, 0x50
2001323e lui a5, 0x20201
20013242 lw a4, 0x73c(a5)
20013246 lui a5, 0x20202
2001324a slli a3, a0, 1
2001324e addi a5, a5, 0x544
20013252 c.addi sp, -0x10
20013254 c.add a5, a3
20013256 c.swsp s0, 8(sp)
20013258 c.mv s0, a0
2001325a lhu a0, 0x60(a5)
2001325e c.swsp ra, 0xc(sp)
20013260 c.li a1, 0
20013262 c.jalr a4
20013264 lui a5, 0x20203
20013268 lw a5, 0x580(a5)
2001326c c.slli s0, 4
2001326e c.lwsp ra, 0xc(sp)
20013270 c.lw a0, 0x14(a5)
20013272 c.li a5, 2
20013274 c.add s0, a0
20013276 sw zero, 0(s0)
2001327a sw zero, 4(s0)
2001327e sb a5, 8(s0)
20013282 c.lwsp s0, 8(sp)
20013284 c.li a0, 1
20013286 c.addi sp, 0x10
20013288 c.jr ra
2001328a c.li a0, 0
2001328c c.jr ra
2001328e c.addi16sp sp, -0x60
20013290 c.swsp s1, 0x54(sp)
20013292 c.swsp s3, 0x4c(sp)
20013294 c.swsp s4, 0x48(sp)
20013296 lui s3, 0x71030
2001329a .byte 0x37, 0x9a

rom 0x20017df0
20017dd2 c.li a0, 0
20017dd4 lui a1, 0x20000
20017dd8 c.jalr a5
20017dda c.li a0, 3
20017ddc c.j -0x18
20017dde c.li a0, 0
20017de0 c.jr ra
20017de2 lui a5, 0x20202
20017de6 lw a5, 0x340(a5)
20017dea c.addi sp, -0x10
20017dec c.swsp ra, 0xc(sp)
20017dee c.li a0, 0
20017df0 lui a1, 0x10000
20017df4 c.jalr a5
20017df6 c.lwsp ra, 0xc(sp)
20017df8 c.li a0, 2
20017dfa c.addi sp, 0x10
20017dfc c.jr ra
20017dfe lbu a5, 1(a0)
20017e02 c.addi sp, -0x10
20017e04 c.swsp ra, 0xc(sp)
20017e06 c.bnez a5, 0x14
20017e08 lui a5, 0x20202
20017e0c lw a5, -0x404(a5)
20017e10 c.jalr a5
20017e12 c.li a0, 0
20017e14 c.lwsp ra, 0xc(sp)
20017e16 c.addi sp, 0x10
20017e18 c.jr ra
20017e1a lui a5, 0x20202
20017e1e lw a5, 0x340(a5)
20017e22 c.li a0, 0
20017e24 lui a1, 0x20000
20017e28 c.jalr a5
20017e2a c.li a0, 3
20017e2c c.j -0x18
20017e2e lbu a5, 1(a0)
20017e32 c.addi sp, -0x10
20017e34 c.swsp ra, 0xc(sp)
20017e36 c.bnez a5, 0x14
20017e38 lui a5, 0x20202
20017e3c lw a5, -0x5a0(a5)
20017e40 c.jalr a5
20017e42 c.li a0, 0
20017e44 c.lwsp ra, 0xc(sp)
20017e46 c.addi sp, 0x10
20017e48 c.jr ra
20017e4a lui a5, 0x20202
20017e4e lw a5, 0x340(a5)
20017e52 c.li a0, 0
20017e54 lui a1, 0x20000
20017e58 c.jalr a5
20017e5a c.li a0, 3
20017e5c c.j -0x18
20017e5e lbu a4, 1(a0)
20017e62 c.addi sp, -0x10
20017e64 c.swsp ra, 0xc(sp)
20017e66 c.li a5, 0x10
20017e68 bgeu a5, a4, 0x1c
20017e6c lui a5, 0x20202
20017e70 lw a5, 0x340(a5)
20017e74 c.li a0, 0
20017e76 lui a1, 0x20000
20017e7a c.jalr a5
20017e7c c.li a0, 3
20017e7e c.lwsp ra, 0xc(sp)
20017e80 c.addi sp, 0x10
20017e82 c.jr ra
20017e84 .byte 0xb7, 0x27

rom 0x20017fb8
20017f9a c.li a4, 0x17
20017f9c bltu a4, a5, 0xe
20017fa0 lui a5, 0x20201
20017fa4 lw a5, 0x88(a5)
20017fa8 c.j -0x20
20017faa lui a5, 0x20202
20017fae lw a5, 0x340(a5)
20017fb2 c.addi sp, -0x10
20017fb4 c.swsp ra, 0xc(sp)
20017fb6 c.li a0, 0
20017fb8 lui a1, 0x10000
20017fbc c.jalr a5
20017fbe c.lwsp ra, 0xc(sp)
20017fc0 c.li a0, 2
20017fc2 c.addi sp, 0x10
20017fc4 c.jr ra
20017fc6 lui a5, 0x20201
20017fca lw a5, 0x6b8(a5)
20017fce c.addi sp, -0x20
20017fd0 c.swsp ra, 0x1c(sp)
20017fd2 c.swsp s0, 0x18(sp)
20017fd4 c.li a4, 0
20017fd6 c.mv s0, a0
20017fd8 addi a3, zero, 0x32
20017fdc c.li a2, 4
20017fde c.li a0, 0x10
20017fe0 c.li a1, 0
20017fe2 c.jalr a5
20017fe4 c.lw a5, 4(s0)
20017fe6 c.addi4spn a0, sp, 8
20017fe8 sh zero, 8(sp)
20017fec c.slli a5, 0x12
20017fee c.srli a5, 0x12
20017ff0 sh a5, 0xc(sp)
20017ff4 lui a5, 0x20202
20017ff8 lw a5, -0x49c(a5)
20017ffc sb zero, 0xa(sp)
20018000 addi a1, s0, 8
20018004 c.jalr a5
20018006 c.lwsp ra, 0x1c(sp)
20018008 c.lwsp s0, 0x18(sp)
2001800a c.li a0, 0
2001800c c.addi16sp sp, 0x20
2001800e c.jr ra
20018010 c.lw a5, 0(a0)
20018012 c.li a4, 1
20018014 c.srli a5, 2
20018016 andi a5, a5, 0x3f
2001801a beq a5, a4, 0x16
2001801e c.li a4, 2
20018020 beq a5, a4, 0x1a
20018024 c.bnez a5, 0x20
20018026 lui a5, 0x20202
2001802a lw a5, -0x450(a5)
2001802e c.jr a5
20018030 lui a5, 0x20202
20018034 lw a5, -0x454(a5)
20018038 c.j -0xa
2001803a lui a5, 0x20202
2001803e lw a5, -0x458(a5)
20018042 c.j -0x14
20018044 lui a5, 0x20202
20018048 lw a5, -0x448(a5)
2001804c c.j -0x1e

rom 0x20018106
200180e8 lui a5, 0x20202
200180ec lw a5, -0x40c(a5)
200180f0 c.j -0x66
200180f2 lui a5, 0x20202
200180f6 lw a5, -0x408(a5)
200180fa c.j -0x70
200180fc lui a5, 0x20202
20018100 lw a5, 0x340(a5)
20018104 c.li a0, 0
20018106 lui a1, 0x8000
2001810a c.jalr a5
2001810c c.li a0, 1
2001810e c.j -0x80
20018110 lui a5, 0x20201
20018114 lw a5, 0x40c(a5)
20018118 c.addi sp, -0x20
2001811a lui a1, 0x72090
2001811e c.swsp ra, 0x1c(sp)
20018120 c.swsp s0, 0x18(sp)
20018122 c.swsp s1, 0x14(sp)
20018124 c.addi a1, 1
20018126 c.li a0, 0x18
20018128 c.jalr a5
2001812a c.bnez a0, 0x2e
2001812c c.li a5, 6
2001812e sb a5, 0(sp)
20018132 lui a5, 0x20209
20018136 addi a5, a5, -0x2a0
2001813a c.swsp a5, 4(sp)
2001813c addi a5, zero, 0x2d5
20018140 c.swsp a5, 8(sp)
20018142 lui a5, 0x20202
20018146 lw a5, 0x348(a5)
2001814a c.mv a0, sp
2001814c c.jalr a5
2001814e c.lwsp ra, 0x1c(sp)
20018150 c.lwsp s0, 0x18(sp)
20018152 c.lwsp s1, 0x14(sp)
20018154 c.addi16sp sp, 0x20
20018156 c.jr ra
20018158 lui a5, 0x20201
2001815c lw a5, 0x314(a5)
20018160 c.mv s0, a0
20018162 c.li a0, 1
20018164 c.jalr a5
20018166 lui a5, 0x20201
2001816a lw a5, 0x2b0(a5)
2001816e c.sw a0, 0xc(s0)
20018170 c.li a2, 1
20018172 c.li a1, 0
20018174 addi a0, zero, 0x180
20018178 c.jalr a5
2001817a lui a5, 0x20203
2001817e lw a5, 0x584(a5)
20018182 c.sw a0, 0(s0)
20018184 sw zero, 4(s0)
20018188 c.sw s0, 8(a5)
2001818a lui a5, 0x20201
2001818e lw s1, 0x73c(a5)
20018192 lui a5, 0x20201
20018196 lw a5, 0x748(a5)
2001819a c.lui s0, 9

rom 0x2001bc92
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
2001bd1e c.mv s2, a0
2001bd20 addi a0, s1, 0x60
2001bd24 c.jalr a5
2001bd26 .byte 0xb3, 0x65

rom 0x2001d8c2
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
2001d928 addi a0, zero, 0x1e0
2001d92c c.jalr s3
2001d92e lui a5, 0x20201
2001d932 lui a0, 0x20209
2001d936 lw a5, 0xc4(a5)
2001d93a addi a1, zero, 0x368
2001d93e addi a0, a0, 0x270
2001d942 c.j -0x266
2001d944 slli a5, a0, 4
2001d948 c.add a5, t1
2001d94a lbu a1, 7(a5)
2001d94e andi a4, a1, 0x20
2001d952 c.bnez a4, 6
2001d954 c.addi a0, 1
2001d956 c.j -0x19c

rom 0x20023d5c
20023d3e c.beqz a0, 0xe
20023d40 c.addi s5, 4
20023d42 addi s4, s4, 0x54
20023d46 c.addi s3, 4
20023d48 bne s0, s9, -0x70
20023d4c lui s3, 0x20202
20023d50 lui s4, 0x20202
20023d54 c.addi s2, 0x1c
20023d56 c.li s0, 0
20023d58 addi s3, s3, 0x5a4
20023d5c lui s6, 0x10000
20023d60 addi s4, s4, 0x680
20023d64 c.li s5, 0x10
20023d66 add a4, s0, s3
20023d6a lw a5, 0x748(s1)
20023d6e lhu a0, 0(a4)
20023d72 c.jalr a5
20023d74 and a0, a0, s6
20023d78 c.beqz a0, 0x14
20023d7a add a4, s0, s4
20023d7e lw a5, 0x748(s1)
20023d82 lhu a0, 0(a4)
20023d86 c.jalr a5
20023d88 sw a0, 0(s2)
20023d8c c.addi s0, 2
20023d8e c.addi s2, 4
20023d90 bne s0, s5, -0x2a
20023d94 c.lwsp ra, 0x4c(sp)
20023d96 c.lwsp s0, 0x48(sp)
20023d98 c.lwsp s1, 0x44(sp)
20023d9a c.lwsp s2, 0x40(sp)
20023d9c c.lwsp s3, 0x3c(sp)
20023d9e c.lwsp s4, 0x38(sp)
20023da0 c.lwsp s5, 0x34(sp)
20023da2 c.lwsp s6, 0x30(sp)
20023da4 c.lwsp s7, 0x2c(sp)
20023da6 c.lwsp s8, 0x28(sp)
20023da8 c.lwsp s9, 0x24(sp)
20023daa c.lwsp s10, 0x20(sp)
20023dac c.lwsp s11, 0x1c(sp)
20023dae c.addi16sp sp, 0x50
20023db0 c.jr ra
20023db2 lui a5, 0x20203
20023db6 lw a5, 0x584(a5)
20023dba c.addi16sp sp, -0x50
20023dbc c.swsp s5, 0x34(sp)
20023dbe lui s5, 0x20201
20023dc2 c.swsp s1, 0x44(sp)
20023dc4 c.lw s1, 0x24(a5)
20023dc6 lw a5, 0x744(s5)
20023dca c.swsp s2, 0x40(sp)
20023dcc c.lui s2, 8
20023dce c.swsp ra, 0x4c(sp)
20023dd0 c.swsp s0, 0x48(sp)
20023dd2 c.swsp s3, 0x3c(sp)
20023dd4 c.swsp s4, 0x38(sp)
20023dd6 c.swsp s6, 0x30(sp)
20023dd8 c.swsp s7, 0x2c(sp)
20023dda addi a0, s2, -0x7f0
20023dde c.swsp s8, 0x28(sp)
20023de0 c.swsp s9, 0x24(sp)
20023de2 c.swsp s10, 0x20(sp)
20023de4 c.swsp s11, 0x1c(sp)
20023de6 c.jalr a5
20023de8 lui s6, 0x20201
20023dec lw a5, 0x738(s6)
20023df0 .byte 0x93, 0x65

rom 0x20023f10
20023ef2 c.slli a1, 0x10
20023ef4 addi a0, s2, -0x7f0
20023ef8 c.srli a1, 0x10
20023efa lui s3, 0x20202
20023efe lui s4, 0x20202
20023f02 c.jalr a5
20023f04 c.addi s1, 0x1c
20023f06 c.li s2, 0
20023f08 lui s8, 0x20201
20023f0c addi s3, s3, 0x5a4
20023f10 lui s9, 0x10000
20023f14 addi s4, s4, 0x680
20023f18 c.li s7, 0x10
20023f1a add a4, s2, s3
20023f1e lw a5, 0x748(s8)
20023f22 lhu a0, 0(a4)
20023f26 c.jalr a5
20023f28 and a0, a0, s9
20023f2c c.beqz a0, 0x12
20023f2e add a5, s2, s4
20023f32 lw a4, 0x73c(s0)
20023f36 c.lw a1, 0(s1)
20023f38 lhu a0, 0(a5)
20023f3c c.jalr a4
20023f3e c.addi s2, 2
20023f40 c.addi s1, 4
20023f42 bne s2, s7, -0x28
20023f46 lw a5, 0x744(s5)
20023f4a c.lui s0, 8
20023f4c addi a0, s0, -0x7f0
20023f50 c.jalr a5
20023f52 andi a1, a0, -0x301
20023f56 lw a5, 0x738(s6)
20023f5a c.slli a1, 0x10
20023f5c addi a0, s0, -0x7f0
20023f60 c.srli a1, 0x10
20023f62 c.jalr a5
20023f64 c.li s0, 1
20023f66 c.j -0x12c
20023f68 lui s0, 0x20201
20023f6c lw a5, 0x73c(s0)
20023f70 c.lw a1, 0x14(s1)
20023f72 c.lui s2, 0xe
20023f74 addi a0, s2, 0x30
20023f78 c.jalr a5
20023f7a lw a5, 0x73c(s0)
20023f7e c.lw a1, 0x18(s1)
20023f80 addi a0, s2, 0x34
20023f84 lui s4, 0x20202
20023f88 c.jalr a5
20023f8a lui s2, 0x20202
20023f8e lui s9, 0x20202
20023f92 lui s8, 0x20202
20023f96 lui s7, 0x20202
20023f9a addi s4, s4, 0x678
20023f9e c.mv s3, s1
20023fa0 addi s2, s2, 0x670
20023fa4 c.li a5, 0

rom 0x200246fc
200246de c.swsp s3, 0xc(sp)
200246e0 c.swsp s4, 8(sp)
200246e2 c.swsp s5, 4(sp)
200246e4 c.li a5, 1
200246e6 lui s0, 0x20201
200246ea bne a0, a5, 0x5e
200246ee lw a5, 0x748(s0)
200246f2 addi a0, zero, 0x74
200246f6 lui s3, 0x80000
200246fa c.jalr a5
200246fc lui a1, 0x10000
20024700 c.or a1, a0
20024702 lui a5, 0x20201
20024706 lw a5, 0x73c(a5)
2002470a addi a0, zero, 0x74
2002470e lui s2, 0x20203
20024712 c.jalr a5
20024714 c.li s1, 0
20024716 lui s4, 0x80000
2002471a addi s2, s2, 0x580
2002471e lui s5, 0x20202
20024722 lw a5, 0x748(s0)
20024726 addi a0, zero, 0x74
2002472a c.jalr a5
2002472c and a0, a0, s4
20024730 bne a0, s3, 0x2e
20024734 c.li a0, 1
20024736 c.lwsp ra, 0x1c(sp)
20024738 c.lwsp s0, 0x18(sp)
2002473a c.lwsp s1, 0x14(sp)
2002473c c.lwsp s2, 0x10(sp)
2002473e c.lwsp s3, 0xc(sp)
20024740 c.lwsp s4, 8(sp)
20024742 c.lwsp s5, 4(sp)
20024744 c.addi16sp sp, 0x20
20024746 c.jr ra
20024748 lw a5, 0x748(s0)
2002474c addi a0, zero, 0x74
20024750 c.li s3, 0
20024752 c.jalr a5
20024754 lui a1, 0xf0000
20024758 c.addi a1, -1
2002475a c.and a1, a0
2002475c c.j -0x5a
2002475e lw a5, 4(s2)
20024762 c.lw a5, 0x24(a5)
20024764 lhu a5, 0xe8(a5)
20024768 bltu a5, s1, 0x10
2002476c lw a5, 0x2d0(s5)
20024770 c.li a0, 1
20024772 c.addi s1, 1
20024774 c.jalr a5
20024776 c.j -0x54
20024778 c.li a0, 0
2002477a c.j -0x44
2002477c c.addi sp, -0x20
2002477e c.swsp s0, 0x18(sp)
20024780 c.swsp ra, 0x1c(sp)
20024782 c.swsp s1, 0x14(sp)
20024784 c.swsp s2, 0x10(sp)
20024786 c.swsp s3, 0xc(sp)
20024788 c.swsp s4, 8(sp)
2002478a c.swsp s5, 4(sp)
2002478c c.li a5, 1
2002478e lui s0, 0x20201

rom 0x2002479e
20024780 c.swsp ra, 0x1c(sp)
20024782 c.swsp s1, 0x14(sp)
20024784 c.swsp s2, 0x10(sp)
20024786 c.swsp s3, 0xc(sp)
20024788 c.swsp s4, 8(sp)
2002478a c.swsp s5, 4(sp)
2002478c c.li a5, 1
2002478e lui s0, 0x20201
20024792 bne a0, a5, 0x72
20024796 lw a5, 0x748(s0)
2002479a addi a0, zero, 0x74
2002479e lui s3, 0x8000
200247a2 c.jalr a5
200247a4 lui a1, 0x1000
200247a8 c.or a1, a0
200247aa lui a5, 0x20201
200247ae lw a5, 0x73c(a5)
200247b2 addi a0, zero, 0x74
200247b6 lui s2, 0x20203
200247ba c.jalr a5
200247bc c.li s1, 0
200247be lui s4, 0x4000
200247c2 addi s2, s2, 0x580
200247c6 lui s5, 0x20202
200247ca lw a5, 0x748(s0)
200247ce addi a0, zero, 0x74
200247d2 c.jalr a5
200247d4 and a0, a0, s4
200247d8 c.bnez a0, 0x42
200247da lw a5, 0x748(s0)
200247de addi a0, zero, 0x74
200247e2 c.jalr a5
200247e4 lui a5, 0x8000
200247e8 c.and a0, a5
200247ea sub a0, a0, s3
200247ee seqz a0, a0
200247f2 c.lwsp ra, 0x1c(sp)
200247f4 c.lwsp s0, 0x18(sp)
200247f6 c.lwsp s1, 0x14(sp)
200247f8 c.lwsp s2, 0x10(sp)
200247fa c.lwsp s3, 0xc(sp)
200247fc c.lwsp s4, 8(sp)
200247fe c.lwsp s5, 4(sp)
20024800 c.addi16sp sp, 0x20
20024802 c.jr ra
20024804 lw a5, 0x748(s0)
20024808 addi a0, zero, 0x74
2002480c c.li s3, 0
2002480e c.jalr a5
20024810 lui a1, 0xff000
20024814 c.addi a1, -1
20024816 c.and a1, a0
20024818 c.j -0x6e
2002481a lw a5, 4(s2)
2002481e c.lw a5, 0x24(a5)
20024820 lhu a5, 0xea(a5)
20024824 bltu a5, s1, 0x10
20024828 lw a5, 0x2d0(s5)
2002482c c.li a0, 1
2002482e c.addi s1, 1
20024830 c.jalr a5
20024832 c.j -0x68

rom 0x200247e4
200247c6 lui s5, 0x20202
200247ca lw a5, 0x748(s0)
200247ce addi a0, zero, 0x74
200247d2 c.jalr a5
200247d4 and a0, a0, s4
200247d8 c.bnez a0, 0x42
200247da lw a5, 0x748(s0)
200247de addi a0, zero, 0x74
200247e2 c.jalr a5
200247e4 lui a5, 0x8000
200247e8 c.and a0, a5
200247ea sub a0, a0, s3
200247ee seqz a0, a0
200247f2 c.lwsp ra, 0x1c(sp)
200247f4 c.lwsp s0, 0x18(sp)
200247f6 c.lwsp s1, 0x14(sp)
200247f8 c.lwsp s2, 0x10(sp)
200247fa c.lwsp s3, 0xc(sp)
200247fc c.lwsp s4, 8(sp)
200247fe c.lwsp s5, 4(sp)
20024800 c.addi16sp sp, 0x20
20024802 c.jr ra
20024804 lw a5, 0x748(s0)
20024808 addi a0, zero, 0x74
2002480c c.li s3, 0
2002480e c.jalr a5
20024810 lui a1, 0xff000
20024814 c.addi a1, -1
20024816 c.and a1, a0
20024818 c.j -0x6e
2002481a lw a5, 4(s2)
2002481e c.lw a5, 0x24(a5)
20024820 lhu a5, 0xea(a5)
20024824 bltu a5, s1, 0x10
20024828 lw a5, 0x2d0(s5)
2002482c c.li a0, 1
2002482e c.addi s1, 1
20024830 c.jalr a5
20024832 c.j -0x68
20024834 c.li a0, 0
20024836 c.j -0x44
20024838 c.addi sp, -0x20
2002483a c.swsp s0, 0x18(sp)
2002483c c.swsp ra, 0x1c(sp)
2002483e c.li s0, 1
20024840 c.beqz a0, 0x2e
20024842 c.li a5, 1
20024844 c.li s0, 2
20024846 beq a0, a5, 0x28
2002484a c.li a5, 0x19
2002484c sb a5, 0(sp)
20024850 lui a5, 0x20209
20024854 addi a5, a5, 0x360
20024858 c.swsp a5, 4(sp)
2002485a addi a5, zero, 0x4e8
2002485e c.swsp a5, 8(sp)
20024860 lui a5, 0x20202
20024864 lw a5, 0x348(a5)
20024868 c.mv a0, sp
2002486a c.li s0, 0
2002486c c.jalr a5
2002486e lui a5, 0x20201
20024872 lw a5, 0x740(a5)
20024876 c.lui a0, 8
20024878 .byte 0x13, 0x05

rom 0x20029674
20029656 c.j -0xfe
20029658 lui a4, 0x20201
2002965c lw t1, 0x6b8(a4)
20029660 c.addi sp, -0x20
20029662 c.mv a5, a0
20029664 c.swsp a2, 0(sp)
20029666 c.mv a7, a3
20029668 c.mv a6, a1
2002966a c.swsp ra, 0x1c(sp)
2002966c c.li a4, 4
2002966e addi a3, zero, 0x288
20029672 c.li a2, 2
20029674 lui a0, 0x8000
20029678 c.li a1, 0
2002967a c.jalr t1
2002967c c.j 0
2002967e lui a5, 0x20204
20029682 addi a5, a5, 0x540
20029686 lw a4, 0x8c(a5)
2002968a c.addi a4, 1
2002968c sw a4, 0x8c(a5)
20029690 c.jr ra
20029692 lui a5, 0x20204
20029696 lw a5, 0x5d0(a5)
2002969a c.beqz a5, 0x22
2002969c lui a5, 0x20201
200296a0 lw a5, 0xc4(a5)
200296a4 c.addi sp, -0x10
200296a6 lui a0, 0x20209
200296aa c.swsp ra, 0xc(sp)
200296ac addi a1, zero, 0x43c
200296b0 addi a0, a0, -0x1c8
200296b4 c.jalr a5
200296b6 csrci mstatus, 8
200296ba c.j 0
200296bc csrci mstatus, 8
200296c0 c.j 0
200296c2 c.addi sp, -0x20
200296c4 lui a5, 0x20204
200296c8 lui a4, 0x42
200296cc c.swsp ra, 0x1c(sp)
200296ce c.swsp s0, 0x18(sp)
200296d0 c.swsp s1, 0x14(sp)
200296d2 addi a4, a4, -0x76d
200296d6 lui s0, 0x20201
200296da addi a5, a5, 0x540
200296de c.swsp zero, 0xc(sp)
200296e0 addi s1, zero, 0x3e8
200296e4 sw a4, 0x98(a5)
200296e8 sw s1, 0x94(a5)
200296ec sw zero, 0x9c(a5)
200296f0 lw a5, 0x73c(s0)
200296f4 c.li a1, 0
200296f6 c.lui a0, 7
200296f8 c.jalr a5
200296fa lw a5, 0x73c(s0)
200296fe c.lui a0, 7
20029700 c.li a1, 0
20029702 c.addi a0, 4
20029704 c.jalr a5
20029706 c.swsp s1, 0xc(sp)
20029708 .byte 0x83, 0x27

rom 0x200298dc
200298be lui a5, 0x20204
200298c2 addi a0, a0, -0x70e
200298c6 sw a4, 0x5d0(a5)
200298ca lui a5, 0x20201
200298ce lw a5, 0x738(a5)
200298d2 c.jalr a5
200298d4 lui a5, 0x20201
200298d8 lw a5, 0x6b8(a5)
200298dc lui a0, 0x8000
200298e0 addi a3, zero, 0x28b
200298e4 c.li a2, 2
200298e6 c.li a1, 0
200298e8 c.li a4, 0
200298ea c.jalr a5
200298ec c.li a4, 1
200298ee lui a5, 0x20203
200298f2 sb a4, -0x6e8(a5)
200298f6 lui a5, 0x20201
200298fa lw a5, 0xb8(a5)
200298fe c.jalr a5
20029900 lui a5, 0x20201
20029904 lw a5, 0xf8(a5)
20029908 c.jalr a5
2002990a c.lwsp ra, 0xc(sp)
2002990c c.li a0, 0
2002990e c.addi sp, 0x10
20029910 c.jr ra
20029912 c.addi sp, -0x20
20029914 c.swsp zero, 0xc(sp)
20029916 lui a5, 0x20201
2002991a lw a5, 0x218(a5)
2002991e c.swsp ra, 0x1c(sp)
20029920 c.swsp s0, 0x18(sp)
20029922 c.swsp s1, 0x14(sp)
20029924 c.jalr a5
20029926 c.beqz a0, 0xc
20029928 lui a5, 0x20201
2002992c lw a5, 0x214(a5)
20029930 c.jalr a5
20029932 lui a5, 0x20201
20029936 lw a5, 0x100(a5)
2002993a lui a1, 0x20203
2002993e lui a0, 0x20204
20029942 c.li a2, 0x14
20029944 addi a1, a1, 0x3f8
20029948 addi a0, a0, 0x610
2002994c c.jalr a5
2002994e c.beqz a0, 0x18
20029950 lui a5, 0x20201
20029954 lw a5, 0xc4(a5)
20029958 lui a0, 0x20209
2002995c addi a1, zero, 0x53b
20029960 addi a0, a0, -0x1c8
20029964 c.jalr a5
20029966 lui s0, 0x20204
2002996a addi s0, s0, 0x540
2002996e addi a5, zero, 0x3e8

rom 0x200299f2
200299d4 c.jr ra
200299d6 c.addi sp, -0x20
200299d8 c.swsp s1, 0x14(sp)
200299da lui s1, 0x20201
200299de lw a5, 0x6b8(s1)
200299e2 c.swsp s0, 0x18(sp)
200299e4 c.swsp s2, 0x10(sp)
200299e6 c.swsp s3, 0xc(sp)
200299e8 c.swsp ra, 0x1c(sp)
200299ea c.li a4, 0
200299ec addi a3, zero, 0x28c
200299f0 c.li a2, 2
200299f2 lui a0, 0x8000
200299f6 c.li a1, 0
200299f8 c.jalr a5
200299fa c.li s0, 0
200299fc lui s3, 0x20201
20029a00 c.li s2, 4
20029a02 lw a5, 0x404(s3)
20029a06 c.mv a0, s0
20029a08 c.jalr a5
20029a0a lw a7, 0x6b8(s1)
20029a0e c.mv a6, a0
20029a10 c.mv a5, s0
20029a12 c.li a4, 2
20029a14 addi a3, zero, 0x28d
20029a18 c.li a2, 2
20029a1a lui a0, 0x8000
20029a1e c.li a1, 0
20029a20 c.addi s0, 1
20029a22 c.jalr a7
20029a24 bne s0, s2, -0x22
20029a28 c.lwsp s0, 0x18(sp)
20029a2a lui a5, 0x20201
20029a2e c.lwsp ra, 0x1c(sp)
20029a30 c.lwsp s1, 0x14(sp)
20029a32 c.lwsp s2, 0x10(sp)
20029a34 c.lwsp s3, 0xc(sp)
20029a36 lw a5, 0xc4(a5)
20029a3a lui a0, 0x20209
20029a3e addi a1, zero, 0x579
20029a42 addi a0, a0, -0x1c8
20029a46 c.addi16sp sp, 0x20
20029a48 c.jr a5
20029a4a c.jr ra
20029a4c lui a5, 0x20201
20029a50 lw a5, 0xc4(a5)
20029a54 lui a0, 0x20209
20029a58 addi a1, zero, 0x594
20029a5c addi a0, a0, -0x1c8
20029a60 c.jr a5
20029a62 c.jr ra
20029a64 c.nop 
20029a66 c.jr ra
20029a68 lui a5, 0x20203
20029a6c addi a5, a5, -0x6d8
20029a70 c.lw a5, 8(a5)
20029a72 c.bnez a5, 0x18
20029a74 lui a5, 0x20201
20029a78 lw a5, 0x1b4(a5)
20029a7c c.addi sp, -0x10
20029a7e c.swsp ra, 0xc(sp)
20029a80 c.jalr a5
20029a82 c.lwsp ra, 0xc(sp)
20029a84 c.li a0, 1
20029a86 c.addi sp, 0x10

rom 0x20029a1a
200299fc lui s3, 0x20201
20029a00 c.li s2, 4
20029a02 lw a5, 0x404(s3)
20029a06 c.mv a0, s0
20029a08 c.jalr a5
20029a0a lw a7, 0x6b8(s1)
20029a0e c.mv a6, a0
20029a10 c.mv a5, s0
20029a12 c.li a4, 2
20029a14 addi a3, zero, 0x28d
20029a18 c.li a2, 2
20029a1a lui a0, 0x8000
20029a1e c.li a1, 0
20029a20 c.addi s0, 1
20029a22 c.jalr a7
20029a24 bne s0, s2, -0x22
20029a28 c.lwsp s0, 0x18(sp)
20029a2a lui a5, 0x20201
20029a2e c.lwsp ra, 0x1c(sp)
20029a30 c.lwsp s1, 0x14(sp)
20029a32 c.lwsp s2, 0x10(sp)
20029a34 c.lwsp s3, 0xc(sp)
20029a36 lw a5, 0xc4(a5)
20029a3a lui a0, 0x20209
20029a3e addi a1, zero, 0x579
20029a42 addi a0, a0, -0x1c8
20029a46 c.addi16sp sp, 0x20
20029a48 c.jr a5
20029a4a c.jr ra
20029a4c lui a5, 0x20201
20029a50 lw a5, 0xc4(a5)
20029a54 lui a0, 0x20209
20029a58 addi a1, zero, 0x594
20029a5c addi a0, a0, -0x1c8
20029a60 c.jr a5
20029a62 c.jr ra
20029a64 c.nop 
20029a66 c.jr ra
20029a68 lui a5, 0x20203
20029a6c addi a5, a5, -0x6d8
20029a70 c.lw a5, 8(a5)
20029a72 c.bnez a5, 0x18
20029a74 lui a5, 0x20201
20029a78 lw a5, 0x1b4(a5)
20029a7c c.addi sp, -0x10
20029a7e c.swsp ra, 0xc(sp)
20029a80 c.jalr a5
20029a82 c.lwsp ra, 0xc(sp)
20029a84 c.li a0, 1
20029a86 c.addi sp, 0x10
20029a88 c.jr ra
20029a8a c.li a0, 0
20029a8c c.jr ra
20029a8e lui a5, 0x20203
20029a92 addi a5, a5, -0x6d8
20029a96 c.lw a5, 8(a5)
20029a98 c.bnez a5, 0xc
20029a9a lui a5, 0x20201
20029a9e lw a5, 0x1b0(a5)
20029aa2 c.jr a5
20029aa4 c.jr ra
20029aa6 c.addi sp, -0x20
20029aa8 c.swsp s1, 0x14(sp)
20029aaa c.swsp zero, 0xc(sp)
20029aac lui s1, 0x20201