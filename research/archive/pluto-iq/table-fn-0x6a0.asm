20015948 c.addi16sp sp, -0x40
2001594a c.swsp s3, 0x2c(sp)
2001594c lui s3, 0x20201
20015950 c.swsp s2, 0x30(sp)
20015952 lw a5, 0x40c(s3)
20015956 lui s2, 0x20205
2001595a c.swsp s0, 0x38(sp)
2001595c c.swsp s1, 0x34(sp)
2001595e c.swsp s4, 0x28(sp)
20015960 c.swsp ra, 0x3c(sp)
20015962 c.swsp s5, 0x24(sp)
20015964 addi s1, s2, -0x1d8
20015968 slli a2, a0, 3
2001596c lui s4, 0x31020
20015970 sb a0, 0x19(s1)
20015974 sh a1, 0x1c(s1)
20015978 c.mv s0, a0
2001597a sb zero, 0x18(s1)
2001597e c.mv a0, a2
20015980 sh zero, 0x1a(s1)
20015984 addi a1, s4, 0x12
20015988 c.swsp a2, 0xc(sp)
2001598a c.jalr a5
2001598c c.sw a0, 0x20(s1)
2001598e c.lwsp a2, 0xc(sp)
20015990 c.bnez a0, 0x36
20015992 c.li a5, 6
20015994 sb a5, 0x10(sp)
20015998 lui a5, 0x20209
2001599c addi a5, a5, -0x2e0
200159a0 c.swsp a5, 0x14(sp)
200159a2 addi a5, zero, 0x277
200159a6 c.swsp a5, 0x18(sp)
200159a8 lui a5, 0x20202
200159ac lw a5, 0x348(a5)
200159b0 c.addi4spn a0, sp, 0x10
200159b2 c.jalr a5
200159b4 c.lwsp ra, 0x3c(sp)
200159b6 c.lwsp s0, 0x38(sp)
200159b8 c.lwsp s1, 0x34(sp)
200159ba c.lwsp s2, 0x30(sp)
200159bc c.lwsp s3, 0x2c(sp)
200159be c.lwsp s4, 0x28(sp)
200159c0 c.lwsp s5, 0x24(sp)
200159c2 c.addi16sp sp, 0x40
200159c4 c.jr ra
200159c6 c.li a1, 0
200159c8 addi s2, s2, -0x1d8
200159cc jal 0x1981a
200159d0 c.li s1, 0
200159d2 c.addi s4, 0x12
200159d4 bgeu s1, s0, -0x20
200159d8 lw a5, 0x20(s2)
200159dc slli s5, s1, 3
200159e0 c.mv a1, s4
200159e2 c.add s5, a5
200159e4 lw a5, 0x40c(s3)
200159e8 sh zero, 0(s5)
200159ec addi a0, zero, 0x200
200159f0 c.jalr a5
200159f2 sw a0, 4(s5)
200159f6 c.bnez a0, 0x18
200159f8 c.li a5, 6
200159fa sb a5, 0x10(sp)
200159fe lui a5, 0x20209
20015a02 addi a5, a5, -0x2e0
20015a06 c.swsp a5, 0x14(sp)
20015a08 addi a5, zero, 0x282
20015a0c c.j -0x66
20015a0e addi a2, zero, 0x200
20015a12 c.li a1, 0
20015a14 jal 0x197d2
20015a18 c.addi s1, 1
20015a1a c.j -0x46
20015a1c lui a5, 0x20201
20015a20 lw a5, 0x12c(a5)
20015a24 c.addi sp, -0x20
20015a26 c.swsp s0, 0x18(sp)
20015a28 c.swsp s1, 0x14(sp)
20015a2a c.swsp s3, 0xc(sp)
20015a2c c.swsp s4, 8(sp)
20015a2e c.swsp s5, 4(sp)
20015a30 c.swsp ra, 0x1c(sp)
20015a32 c.swsp s2, 0x10(sp)
20015a34 c.swsp s6, 0(sp)
20015a36 c.mv s3, a0
20015a38 c.mv s5, a1
20015a3a c.mv s1, a2
20015a3c lui s0, 0x20205
20015a40 c.jalr a5
20015a42 addi a5, s0, -0x1d8
20015a46 lbu a5, 0x19(a5)
20015a4a c.mv s4, a0
20015a4c beq a5, s3, 0x38
20015a50 addi s0, s0, -0x1d8
20015a54 c.lw a5, 0x20(s0)
20015a56 c.li s2, 0
20015a58 c.beqz a5, 0x1a
20015a5a lui s6, 0x20201
20015a5e lbu a5, 0x19(s0)
20015a62 c.lw a0, 0x20(s0)
20015a64 bltu s2, a5, 0x4a
20015a68 lui a5, 0x20201
20015a6c lw a5, 0x408(a5)
20015a70 c.jalr a5
20015a72 .byte 0xb7, 0x17