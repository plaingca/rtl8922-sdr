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
20015b46 lhu a3, 0(s0)
20015b4a srli s2, s2, 0x10
20015b4e c.add a3, a0
20015b50 addi a0, zero, 0x200
20015b54 bgeu a0, a3, 0x36
20015b58 addi s0, a4, 1
20015b5c lbu a4, 0x19(a5)
20015b60 andi s0, s0, 0xff
20015b64 bltu s0, a4, 0x1e
20015b68 lhu a4, 0x1a(a5)
20015b6c c.li s0, 2
20015b6e c.add s2, a4
20015b70 sh s2, 0x1a(a5)
20015b74 c.lwsp ra, 0x2c(sp)
20015b76 c.mv a0, s0
20015b78 c.lwsp s0, 0x28(sp)
20015b7a c.lwsp s1, 0x24(sp)
20015b7c c.lwsp s2, 0x20(sp)
20015b7e c.addi16sp sp, 0x30
20015b80 c.jr ra
20015b82 sb s0, 0x18(a5)
20015b86 c.slli s0, 3
20015b88 c.add s0, a1
20015b8a lhu a5, 0(s0)
20015b8e c.lw a0, 4(s0)
20015b90 c.mv a1, s1
20015b92 c.add a0, a5
20015b94 jal 0x19648
20015b98 lhu a5, 0(s0)
20015b9c c.add s2, a5
20015b9e lui a5, 0x20203
20015ba2 lw a5, 0x588(a5)
20015ba6 sh s2, 0(s0)
20015baa c.lw s1, 8(a5)
20015bac lui a5, 0x20203
20015bb0 lw s0, -0x6d0(a5)
20015bb4 c.beqz s0, 0x18
20015bb6 lui a5, 0x20201
20015bba lw a5, 0x18c(a5)
20015bbe c.lw a0, 0x24(s1)
20015bc0 c.addi4spn a4, sp, 0x1c
20015bc2 c.li a3, 0
20015bc4 c.li a2, 1
20015bc6 c.li a1, 0x10
20015bc8 c.jalr a5
20015bca c.j -0xe8
20015bcc lui a5, 0x20201
20015bd0 lw a5, 0xb0(a5)
20015bd4 c.jalr a5
20015bd6 c.andi a0, 8
20015bd8 c.beqz a0, -0x22
20015bda lui a5, 0x20201
20015bde lw a5, 0x190(a5)
20015be2 c.lw a0, 0x24(s1)
20015be4 c.li a3, 0
20015be6 c.li a2, 1
20015be8 c.li a1, 0x10
20015bea c.jalr a5
20015bec c.j -0x78