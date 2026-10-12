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
20015a72 lui a5, 0x20201
20015a76 lw a5, 0x6a0(a5)
20015a7a sw zero, 0x20(s0)
20015a7e c.mv a1, s5
20015a80 c.mv a0, s3
20015a82 c.jalr a5
20015a84 snez s1, s1
20015a88 lui a5, 0x20203
20015a8c sb s1, -0x6e8(a5)
20015a90 c.lwsp s0, 0x18(sp)
20015a92 lui a5, 0x20201
20015a96 c.lwsp ra, 0x1c(sp)
20015a98 c.lwsp s1, 0x14(sp)
20015a9a c.lwsp s2, 0x10(sp)
20015a9c c.lwsp s3, 0xc(sp)
20015a9e c.lwsp s5, 4(sp)
20015aa0 c.lwsp s6, 0(sp)
20015aa2 lw a5, 0x130(a5)
20015aa6 c.mv a0, s4
20015aa8 c.lwsp s4, 8(sp)
20015aaa c.addi16sp sp, 0x20
20015aac c.jr a5
20015aae slli a5, s2, 3
20015ab2 c.add a5, a0
20015ab4 c.lw a0, 4(a5)
20015ab6 c.beqz a0, 8
20015ab8 lw a5, 0x408(s6)
20015abc c.jalr a5
20015abe c.addi s2, 1
20015ac0 c.j -0x62
20015ac2 c.addi16sp sp, -0x30
20015ac4 lui a4, 0x20205
20015ac8 c.swsp ra, 0x2c(sp)
20015aca c.swsp s0, 0x28(sp)
20015acc c.swsp s1, 0x24(sp)
20015ace c.swsp s2, 0x20(sp)
20015ad0 addi a5, a4, -0x1d8
20015ad4 lbu a3, 0(a5)
20015ad8 c.swsp zero, 0x1c(sp)
20015ada andi a6, a3, 3
20015ade bnez a6, 8
20015ae2 c.li s0, 0
20015ae4 c.j 0x90
20015ae6 addi s0, a4, -0x1d8
20015aea lui a4, 0x20203
20015aee lbu a4, -0x6e8(a4)
20015af2 c.mv a2, a0
20015af4 c.mv s1, a1
20015af6 c.bnez a4, 0x40
20015af8 c.andi a3, 2
20015afa c.beqz a3, 0x1a
20015afc lui a5, 0x20205
20015b00 lw a5, 0x2b4(a5)
20015b04 c.bnez a5, 0x10
20015b06 lui a5, 0x20202
20015b0a lw a5, -0x4b4(a5)
20015b0e c.swsp a0, 0xc(sp)
20015b10 c.jalr a5
20015b12 c.lwsp a2, 0xc(sp)
20015b14 lbu a5, 0(s0)
20015b18 c.andi a5, 1
20015b1a c.beqz a5, -0x38
20015b1c add s0, s1, a2
20015b20 lui s2, 0x20202
20015b24 beq s1, s0, -0x42
20015b28 lw a5, -0xa0(s2)
20015b2c lbu a0, 0(s1)
20015b30 c.addi s1, 1
20015b32 c.jalr a5
20015b34 c.j -0x10
20015b36 lbu a4, 0x18(a5)
20015b3a c.lw a1, 0x20(a5)
20015b3c slli s2, a0, 0x10
20015b40 slli s0, a4, 3
20015b44 c.add s0, a1
20015b46 .byte 0x83, 0x56