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
2001bf3c addi a5, zero, 0x3a
2001bf40 c.swsp a5, 8(sp)
2001bf42 lui a5, 0x20202
2001bf46 lw a5, 0x348(a5)
2001bf4a c.mv a0, sp
2001bf4c c.jalr a5
2001bf4e c.lwsp ra, 0x2c(sp)
2001bf50 c.lwsp s0, 0x28(sp)
2001bf52 c.lwsp s1, 0x24(sp)
2001bf54 c.lwsp s2, 0x20(sp)
2001bf56 c.lwsp s3, 0x1c(sp)
2001bf58 c.addi16sp sp, 0x30
2001bf5a c.jr ra
2001bf5c c.li a2, 8
2001bf5e c.li a1, 0
2001bf60 jal 0x13286
2001bf64 lw a5, 0x40c(s2)
2001bf68 addi a1, s1, 7
2001bf6c addi a0, zero, 0x174
2001bf70 lw s3, 0x24(s0)
2001bf74 c.jalr a5
2001bf76 c.lw a5, 0x24(s0)
2001bf78 sw a0, 0(s3)
2001bf7c c.lw a0, 0(a5)
2001bf7e c.bnez a0, 0x18
2001bf80 c.li a5, 6
2001bf82 sb a5, 0(sp)
2001bf86 lui a5, 0x20209
2001bf8a addi a5, a5, 0x10c
2001bf8e c.swsp a5, 4(sp)
2001bf90 addi a5, zero, 0x42
2001bf94 c.j -0x54
2001bf96 addi a2, zero, 0x174
2001bf9a c.li a1, 0
2001bf9c jal 0x1324a
2001bfa0 lw a5, 0x40c(s2)
2001bfa4 addi a1, s1, 7
2001bfa8 addi a0, zero, 0x110
2001bfac lw s2, 0x24(s0)
2001bfb0 c.jalr a5
2001bfb2 c.lw a5, 0x24(s0)
2001bfb4 sw a0, 4(s2)
2001bfb8 c.lw a0, 4(a5)
2001bfba c.bnez a0, 0x18
2001bfbc c.li a5, 6
2001bfbe sb a5, 0(sp)
2001bfc2 lui a5, 0x20209
2001bfc6 addi a5, a5, 0x10c
2001bfca c.swsp a5, 4(sp)
2001bfcc addi a5, zero, 0x4a
2001bfd0 c.j -0x90
2001bfd2 c.lwsp s0, 0x28(sp)
2001bfd4 c.lwsp ra, 0x2c(sp)
2001bfd6 c.lwsp s1, 0x24(sp)
2001bfd8 c.lwsp s2, 0x20(sp)
2001bfda c.lwsp s3, 0x1c(sp)
2001bfdc addi a2, zero, 0x110
2001bfe0 c.li a1, 0
2001bfe2 c.addi16sp sp, 0x30
2001bfe4 j 0x13202
2001bfe8 c.addi16sp sp, -0x50
2001bfea c.swsp s3, 0x3c(sp)
2001bfec c.swsp ra, 0x4c(sp)
2001bfee c.swsp s0, 0x48(sp)
2001bff0 c.swsp s1, 0x44(sp)
2001bff2 c.swsp s2, 0x40(sp)
2001bff4 c.swsp s4, 0x38(sp)
2001bff6 c.swsp s5, 0x34(sp)
2001bff8 c.swsp s6, 0x30(sp)
2001bffa c.swsp s7, 0x2c(sp)
2001bffc c.swsp s8, 0x28(sp)
2001bffe c.swsp s9, 0x24(sp)
2001c000 c.swsp s10, 0x20(sp)
2001c002 c.swsp s11, 0x1c(sp)
2001c004 c.mv s3, a0
2001c006 c.beqz a1, 0xbc
2001c008 lui s2, 0x20201
2001c00c lw a5, 0x6b8(s2)
2001c010 c.li a4, 0
2001c012 addi a3, zero, 0xc5
2001c016 c.li a2, 2
2001c018 lui a0, 0x800
2001c01c c.li a1, 0
2001c01e c.jalr a5
2001c020 lw a5, 0x6b8(s2)
2001c024 c.li a4, 0
2001c026 addi a3, zero, 0xc6
2001c02a c.li a2, 2