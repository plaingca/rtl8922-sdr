20027778 c.addi sp, -0x20
2002777a c.swsp a1, 4(sp)
2002777c c.swsp a2, 8(sp)
2002777e c.swsp a3, 0xc(sp)
20027780 c.swsp a4, 0x10(sp)
20027782 c.swsp a5, 0x14(sp)
20027784 c.swsp a6, 0x18(sp)
20027786 c.swsp a7, 0x1c(sp)
20027788 c.addi16sp sp, 0x20
2002778a c.jr ra
2002778c c.addi a0, -0x20
2002778e andi a0, a0, 0xff
20027792 c.li a5, 0x14
20027794 bltu a5, a0, 0x14
20027798 lui a5, 0x20209
2002779c addi a5, a5, -0x6b8
200277a0 c.add a0, a5
200277a2 lbu a0, 0(a0)
200277a6 c.jr ra
200277a8 c.li a0, 0
200277aa c.jr ra
200277ac c.jr ra
200277ae c.jr ra
200277b0 c.li a0, 0
200277b2 c.jr ra
200277b4 c.li a0, 0
200277b6 c.jr ra
200277b8 c.jr ra
200277ba c.jr ra
200277bc c.jr ra
200277be c.jr ra
200277c0 c.jr ra
200277c2 andi a5, a0, 1
200277c6 c.bnez a5, 0x5a
200277c8 andi a0, a0, 0xff
200277cc srli a5, a0, 1
200277d0 addi a4, zero, 0x24
200277d4 c.li a0, 0
200277d6 bgeu a4, a5, 0x58
200277da addi a4, a5, -0x25
200277de andi a4, a4, 0xff
200277e2 c.li a3, 0xf
200277e4 c.li a0, 1
200277e6 bgeu a3, a4, 0x48
200277ea addi a4, a5, -0x35
200277ee andi a4, a4, 0xff
200277f2 c.li a3, 7
200277f4 bgeu a3, a4, 0x30
200277f8 addi a4, a5, -0x3d
200277fc andi a4, a4, 0xff
20027800 c.li a3, 3
20027802 bgeu a3, a4, 0x26
20027806 addi a4, a5, -0x41
2002780a andi a4, a4, 0xff
2002780e bgeu a0, a4, 0x1e
20027812 addi a4, zero, 0x43
20027816 c.li a0, 0
20027818 bne a5, a4, 0x16
2002781c c.li a0, 5
2002781e c.jr ra
20027820 c.li a0, 6
20027822 c.jr ra
20027824 c.li a0, 2
20027826 c.jr ra
20027828 c.li a0, 3
2002782a c.jr ra
2002782c c.li a0, 4
2002782e c.jr ra
20027830 c.li a0, 0
20027832 c.jr ra
20027834 c.jr ra
20027836 c.li a0, 1
20027838 c.jr ra
2002783a c.addi16sp sp, -0x30
2002783c c.swsp s2, 0x20(sp)
2002783e lui s2, 0x20201
20027842 lw a5, 0x410(s2)
20027846 c.swsp s0, 0x28(sp)
20027848 c.swsp s1, 0x24(sp)
2002784a lui s0, 0x20203
2002784e lui s1, 0xf2000
20027852 c.swsp s3, 0x1c(sp)
20027854 addi s0, s0, 0x580
20027858 c.swsp ra, 0x2c(sp)
2002785a c.li a2, 1
2002785c addi a1, s1, 6
20027860 addi a0, zero, 0x2c
20027864 lw s3, 0xc(s0)
20027868 c.jalr a5
2002786a c.lw a5, 0xc(s0)
2002786c sw a0, 0(s3)
20027870 c.lw a0, 0(a5)
20027872 c.bnez a0, 0x30
20027874 c.li a5, 6
20027876 sb a5, 0(sp)
2002787a lui a5, 0x20209
2002787e addi a5, a5, 0x398
20027882 c.swsp a5, 4(sp)
20027884 c.li a5, 0x13
20027886 c.swsp a5, 8(sp)
20027888 lui a5, 0x20202
2002788c lw a5, 0x348(a5)
20027890 c.mv a0, sp
20027892 c.jalr a5
20027894 c.lwsp ra, 0x2c(sp)
20027896 c.lwsp s0, 0x28(sp)
20027898 c.lwsp s1, 0x24(sp)
2002789a c.lwsp s2, 0x20(sp)
2002789c c.lwsp s3, 0x1c(sp)
2002789e c.addi16sp sp, 0x30
200278a0 c.jr ra
200278a2 .byte 0x13, 0x06