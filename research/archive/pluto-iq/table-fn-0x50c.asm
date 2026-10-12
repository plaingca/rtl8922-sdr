200205ce lui a5, 0x20203
200205d2 addi a5, a5, 0x580
200205d6 c.lw a4, 0xc(a5)
200205d8 c.lw a5, 4(a5)
200205da c.addi16sp sp, -0x50
200205dc c.swsp s1, 0x44(sp)
200205de lui s1, 0x20201
200205e2 c.swsp s4, 0x38(sp)
200205e4 lw s4, 0x2c(a5)
200205e8 lw a5, 0x760(s1)
200205ec c.swsp s0, 0x48(sp)
200205ee add s0, a1, a2
200205f2 sh zero, 0x1c(sp)
200205f6 c.swsp s2, 0x40(sp)
200205f8 c.swsp s3, 0x3c(sp)
200205fa c.swsp s5, 0x34(sp)
200205fc c.swsp s6, 0x30(sp)
200205fe c.swsp zero, 0x18(sp)
20020600 c.swsp zero, 8(sp)
20020602 c.swsp ra, 0x4c(sp)
20020604 c.swsp s7, 0x2c(sp)
20020606 c.swsp s8, 0x28(sp)
20020608 c.swsp s9, 0x24(sp)
2002060a c.swsp s10, 0x20(sp)
2002060c c.mv s6, a0
2002060e addi a0, s0, 6
20020612 lw s3, 0(a4)
20020616 lw s5, 8(a4)
2002061a c.mv s2, a1
2002061c c.swsp zero, 0xc(sp)
2002061e c.jalr a5
20020620 c.li a5, 8
20020622 beq a0, a5, 0x24
20020626 c.li s2, 0
20020628 c.lwsp ra, 0x4c(sp)
2002062a c.lwsp s0, 0x48(sp)
2002062c c.lwsp s1, 0x44(sp)
2002062e c.lwsp s3, 0x3c(sp)
20020630 c.lwsp s4, 0x38(sp)
20020632 c.lwsp s5, 0x34(sp)
20020634 c.lwsp s6, 0x30(sp)
20020636 c.lwsp s7, 0x2c(sp)
20020638 c.lwsp s8, 0x28(sp)
2002063a c.lwsp s9, 0x24(sp)
2002063c c.lwsp s10, 0x20(sp)
2002063e c.mv a0, s2
20020640 c.lwsp s2, 0x40(sp)
20020642 c.addi16sp sp, 0x50
20020644 c.jr ra
20020646 lw a5, 0x760(s1)
2002064a addi a0, s0, 7
2002064e c.jalr a5
20020650 c.li a5, 6
20020652 bne a0, a5, -0x2c
20020656 addi s7, sp, 0x10
2002065a addi s8, s2, 0xa
2002065e c.mv s9, s7
20020660 c.addi s2, 0x10
20020662 lw a5, 0x760(s1)
20020666 c.mv a0, s8
20020668 c.addi s8, 1
2002066a c.jalr a5
2002066c sb a0, 0(s9)
20020670 c.addi s9, 1
20020672 bne s8, s2, -0x10
20020676 addi a5, s3, 7
2002067a addi a4, s3, 0xd
2002067e c.li s2, 1
20020680 lbu a2, 0(s7)
20020684 lbu a3, 0(a5)
20020688 beq a2, a3, 6
2002068c c.li s2, 0
2002068e c.addi a5, 1
20020690 c.addi s7, 1
20020692 bne a5, a4, -0x12
20020696 bnez s2, 8
2002069a c.li s2, 1
2002069c c.j -0x74
2002069e addi s7, sp, 0xc
200206a2 addi s8, s0, 0x20
200206a6 addi s10, s0, 0x24
200206aa c.mv s9, s7
200206ac lw a5, 0x760(s1)
200206b0 c.mv a0, s8
200206b2 c.addi s8, 1
200206b4 c.jalr a5
200206b6 sb a0, 0(s9)
200206ba c.addi s9, 1
200206bc bne s8, s10, -0x10
200206c0 addi a5, s5, 6
200206c4 c.addi s5, 0xa
200206c6 lbu a3, 0(s7)
200206ca lbu a4, 0(a5)
200206ce beq a3, a4, 6
200206d2 c.li s2, 0
200206d4 c.addi a5, 1
200206d6 c.addi s7, 1
200206d8 bne a5, s5, -0x12
200206dc beqz s2, -0x42
200206e0 lbu a5, 0x3c(s4)
200206e4 c.andi a5, 2
200206e6 c.beqz a5, 0x1c
200206e8 lui a5, 0x20201
200206ec lw a5, 0x528(a5)
200206f0 c.li a0, 9
200206f2 c.jalr a5
200206f4 lbu a5, 0(s3)
200206f8 .byte 0x93, 0xe7