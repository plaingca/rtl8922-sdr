20012ea8 c.addi16sp sp, -0x40
20012eaa c.swsp s5, 0x24(sp)
20012eac c.swsp ra, 0x3c(sp)
20012eae c.mv s5, a5
20012eb0 c.swsp s0, 0x38(sp)
20012eb2 c.swsp s1, 0x34(sp)
20012eb4 c.swsp s2, 0x30(sp)
20012eb6 c.swsp s3, 0x2c(sp)
20012eb8 c.swsp s4, 0x28(sp)
20012eba c.swsp s6, 0x20(sp)
20012ebc c.swsp s7, 0x1c(sp)
20012ebe c.swsp s8, 0x18(sp)
20012ec0 c.swsp s9, 0x14(sp)
20012ec2 c.li a5, 1
20012ec4 bgeu a5, a1, 0x20
20012ec8 c.li a0, 0
20012eca c.lwsp ra, 0x3c(sp)
20012ecc c.lwsp s0, 0x38(sp)
20012ece c.lwsp s1, 0x34(sp)
20012ed0 c.lwsp s2, 0x30(sp)
20012ed2 c.lwsp s3, 0x2c(sp)
20012ed4 c.lwsp s4, 0x28(sp)
20012ed6 c.lwsp s5, 0x24(sp)
20012ed8 c.lwsp s6, 0x20(sp)
20012eda c.lwsp s7, 0x1c(sp)
20012edc c.lwsp s8, 0x18(sp)
20012ede c.lwsp s9, 0x14(sp)
20012ee0 c.addi16sp sp, 0x40
20012ee2 c.jr ra
20012ee4 addi a5, a0, -2
20012ee8 c.mv s6, a4
20012eea andi a5, a5, 0xff
20012eee c.li a4, 5
20012ef0 c.mv s1, a0
20012ef2 bltu a4, a5, -0x2a
20012ef6 lui s2, 0x20203
20012efa lw s3, 0x580(s2)
20012efe c.mv s4, a1
20012f00 c.mv s7, a2
20012f02 lw a5, 0x14(s3)
20012f06 c.mv s0, a3
20012f08 addi s2, s2, 0x580
20012f0c c.bnez a5, 0x54
20012f0e lui a5, 0x20201
20012f12 lw a5, 0x40c(a5)
20012f16 lui a1, 0x71030
20012f1a c.addi a1, 4
20012f1c addi a0, zero, 0x80
20012f20 c.jalr a5
20012f22 lw a5, 0(s2)
20012f26 sw a0, 0x14(s3)
20012f2a c.lw a5, 0x14(a5)
20012f2c c.bnez a5, 0x24
20012f2e c.li a5, 6
20012f30 sb a5, 0(sp)
20012f34 lui a5, 0x20209
20012f38 addi a5, a5, -0x4c0
20012f3c c.swsp a5, 4(sp)
20012f3e addi a5, zero, 0x10c
20012f42 c.swsp a5, 8(sp)
20012f44 lui a5, 0x20202
20012f48 lw a5, 0x348(a5)
20012f4c c.mv a0, sp
20012f4e c.jalr a5
20012f50 lw a5, 0(s2)
20012f54 addi a2, zero, 0x80
20012f58 c.li a1, 0
20012f5a c.lw a0, 0x14(a5)
20012f5c jal 0x1c28a
20012f60 lw a5, 0(s2)
20012f64 slli s9, s1, 4
20012f68 c.lw a4, 0x14(a5)
20012f6a c.add a4, s9
20012f6c c.lw a5, 0(a4)
20012f6e c.bnez a5, -0xa6
20012f70 lui s3, 0x20202
20012f74 addi a4, s3, 0x544
20012f78 c.slli s1, 1
20012f7a c.add a4, s1
20012f7c lui s8, 0x20201
20012f80 lw a5, 0x73c(s8)
20012f84 lhu a0, 0x60(a4)
20012f88 c.li a1, 0
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
2001303c lw a5, 0x40c(a5)
20013040 lui a1, 0x71030
20013044 c.addi a1, 3
20013046 addi a0, zero, 0x80
2001304a c.jalr a5
2001304c lw a5, 0(s2)
20013050 sw a0, 0x14(s3)
20013054 c.lw a5, 0x14(a5)
20013056 c.bnez a5, 0x24
20013058 c.li a5, 6
2001305a sb a5, 0(sp)
2001305e lui a5, 0x20209
20013062 addi a5, a5, -0x4c0
20013066 c.swsp a5, 4(sp)
20013068 addi a5, zero, 0x14a
2001306c c.swsp a5, 8(sp)
2001306e lui a5, 0x20202
20013072 lw a5, 0x348(a5)
20013076 c.mv a0, sp
20013078 c.jalr a5
2001307a lw a5, 0(s2)
2001307e addi a2, zero, 0x80
20013082 c.li a1, 0
20013084 c.lw a0, 0x14(a5)
20013086 jal 0x1c160
2001308a lw a5, 0(s2)
2001308e slli s9, s1, 4
20013092 c.lw a5, 0x14(a5)
20013094 c.add a5, s9
20013096 c.lw a5, 0(a5)
20013098 c.bnez a5, -0xa6
2001309a lui s3, 0x20202
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
20013150 lui s2, 0x20203
20013154 lw s3, 0x580(s2)
20013158 c.mv s1, a0
2001315a c.mv s7, a2
2001315c lw a5, 0x14(s3)
20013160 c.mv s0, a3
20013162 addi s2, s2, 0x580
20013166 c.bnez a5, 0x54
20013168 lui a5, 0x20201
2001316c lw a5, 0x40c(a5)
20013170 lui a1, 0x71030
20013174 c.addi a1, 2
20013176 addi a0, zero, 0x80
2001317a c.jalr a5
2001317c lw a5, 0(s2)
20013180 sw a0, 0x14(s3)
20013184 c.lw a5, 0x14(a5)
20013186 c.bnez a5, 0x24
20013188 c.li a5, 6
2001318a sb a5, 0(sp)
2001318e lui a5, 0x20209
20013192 addi a5, a5, -0x4c0
20013196 c.swsp a5, 4(sp)
20013198 addi a5, zero, 0x18c
2001319c c.swsp a5, 8(sp)
2001319e lui a5, 0x20202
200131a2 lw a5, 0x348(a5)
200131a6 c.mv a0, sp
200131a8 c.jalr a5
200131aa lw a5, 0(s2)
200131ae addi a2, zero, 0x80
200131b2 c.li a1, 0
200131b4 c.lw a0, 0x14(a5)
200131b6 jal 0x1c030
200131ba lw a5, 0(s2)
200131be slli s9, s1, 4
200131c2 c.lw a5, 0x14(a5)
200131c4 c.add a5, s9
200131c6 c.lw a5, 0(a5)
200131c8 c.bnez a5, -0x9c
200131ca lui s3, 0x20202
200131ce addi a5, s3, 0x544
200131d2 c.slli s1, 1
200131d4 c.add a5, s1
200131d6 lui s8, 0x20201
200131da lw a4, 0x73c(s8)
200131de lhu a0, 0x60(a5)
200131e2 c.li a1, 0
200131e4 addi s3, s3, 0x544
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
2001329a lui s4, 0x20209
2001329e lui s1, 0x20202
200132a2 c.swsp s0, 0x58(sp)
200132a4 c.swsp s10, 0x30(sp)
200132a6 c.swsp ra, 0x5c(sp)
200132a8 c.swsp s2, 0x50(sp)
200132aa c.swsp s5, 0x44(sp)
200132ac c.swsp s6, 0x40(sp)
200132ae c.swsp s7, 0x3c(sp)
200132b0 c.swsp s8, 0x38(sp)
200132b2 c.swsp s9, 0x34(sp)
200132b4 c.swsp s11, 0x2c(sp)
200132b6 c.li s0, 0
200132b8 c.addi s3, 1
200132ba addi s4, s4, -0x4c0
200132be lui s10, 0x20202
200132c2 addi s1, s1, 0x544
200132c6 andi a5, s0, 0xff
200132ca lui s7, 0x20201
200132ce c.swsp a5, 8(sp)
200132d0 lw a5, 0x40c(s7)
200132d4 lui s2, 0x20203
200132d8 addi s8, s2, 0x580
200132dc c.mv a1, s3
200132de addi a0, zero, 0xc4
200132e2 lw s6, 0(s8)
200132e6 c.jalr a5
200132e8 lw a5, 0(s8)
200132ec slli s5, s0, 2
200132f0 c.add s6, s5
200132f2 sw a0, 0xc(s6)
200132f6 c.add a5, s5
200132f8 c.lw a5, 0xc(a5)
200132fa c.swsp s7, 0xc(sp)
200132fc addi s2, s2, 0x580
20013300 c.bnez a5, 0x18
20013302 c.li a5, 6
20013304 sb a5, 0x10(sp)
20013308 addi a5, zero, 0x1d5
2001330c c.swsp a5, 0x18(sp)
2001330e lw a5, 0x348(s10)
20013312 c.swsp s4, 0x14(sp)
20013314 c.addi4spn a0, sp, 0x10
20013316 c.jalr a5
20013318 lw a5, 0(s2)
2001331c addi s9, s1, 0x70
20013320 addi s8, s1, 0x8c
20013324 c.add a5, s5
20013326 lw s7, 0xc(a5)
2001332a c.li s6, 0
2001332c c.li s5, 0
2001332e addi s11, zero, 0x1e0
20013332 c.lwsp a5, 0xc(sp)
20013334 c.mv a1, s3
20013336 c.li a0, 8
20013338 lw a5, 0x40c(a5)
2001333c c.jalr a5
2001333e sw a0, 0(s7)
20013342 c.bnez a0, 0x14
20013344 c.li a5, 6
20013346 sb a5, 0x10(sp)
2001334a lw a5, 0x348(s10)
2001334e c.swsp s4, 0x14(sp)
20013350 c.swsp s11, 0x18(sp)
20013352 c.addi4spn a0, sp, 0x10
20013354 c.jalr a5
20013356 lw a5, 0(s7)
2001335a lw a4, 0(s9)
2001335e c.li a3, 7
20013360 c.sw a5, 0(a5)
20013362 c.sw a5, 4(a5)
20013364 sll a5, a3, a4
20013368 not a5, a5
2001336c and s5, a5, s5
20013370 lui a5, 0x20202
20013374 lw a2, 0(s8)
20013378 lw a5, 0x34(a5)
2001337c c.lwsp a0, 8(sp)
2001337e sll a4, s6, a4
20013382 c.li a1, 0
20013384 or s5, a4, s5
20013388 c.jalr a5
2001338a c.addi s6, 1
2001338c c.li a3, 7
2001338e c.addi s7, 4
20013390 c.addi s9, 4
20013392 c.addi s8, 4
20013394 bne s6, a3, -0x62
20013398 c.bnez s0, 0x36
2001339a lui a5, 0x20201
2001339e lw a5, 0x73c(a5)
200133a2 lw a0, 0xa8(s1)
200133a6 c.mv a1, s5
200133a8 c.jalr a5
200133aa c.beqz s0, 0x20
200133ac c.lwsp ra, 0x5c(sp)
200133ae c.lwsp s0, 0x58(sp)
200133b0 c.lwsp s1, 0x54(sp)
200133b2 c.lwsp s2, 0x50(sp)
200133b4 c.lwsp s3, 0x4c(sp)
200133b6 c.lwsp s4, 0x48(sp)
200133b8 c.lwsp s5, 0x44(sp)
200133ba c.lwsp s6, 0x40(sp)
200133bc c.lwsp s7, 0x3c(sp)
200133be c.lwsp s8, 0x38(sp)
200133c0 c.lwsp s9, 0x34(sp)
200133c2 c.lwsp s10, 0x30(sp)
200133c4 c.lwsp s11, 0x2c(sp)
200133c6 c.addi16sp sp, 0x60
200133c8 c.jr ra
200133ca c.li s0, 1
200133cc c.j -0x106
200133ce lw a5, 8(s2)
200133d2 c.lw a5, 4(a5)
200133d4 lbu a5, 0xa(a5)
200133d8 bne a5, s0, -0x2e
200133dc lui a5, 0x20201
200133e0 lw a5, 0x73c(a5)
200133e4 lw a0, 0xac(s1)
200133e8 c.mv a1, s5
200133ea c.j -0x42
200133ec c.addi16sp sp, -0x30
200133ee c.swsp s0, 0x28(sp)
200133f0 c.swsp s4, 0x18(sp)
200133f2 c.swsp s6, 0x10(sp)
200133f4 c.swsp ra, 0x2c(sp)
200133f6 c.swsp s1, 0x24(sp)
200133f8 c.swsp s2, 0x20(sp)
200133fa c.swsp s3, 0x1c(sp)
200133fc c.swsp s5, 0x14(sp)
200133fe c.swsp s7, 0xc(sp)
20013400 c.swsp s8, 8(sp)
20013402 c.swsp s9, 4(sp)
20013404 c.li a5, 1
20013406 c.mv s0, a0
20013408 c.mv s4, a1
2001340a c.mv s6, a2
2001340c bne a0, a5, 0x14
20013410 lui a5, 0x20203
20013414 lw a5, 0x588(a5)
20013418 c.lw a5, 4(a5)
2001341a lbu a5, 0xa(a5)
2001341e c.beqz a5, 0x8a
20013420 lui s1, 0x20202
20013424 addi s1, s1, 0x544
20013428 slli s3, s0, 2
2001342c c.add s3, s1
2001342e lw s8, 0xa8(s3)
20013432 lui s5, 0x20201
20013436 lui s7, 0x20201
2001343a lw s9, 0x73c(s5)
2001343e lw a5, 0x748(s7)
20013442 c.mv a0, s8
20013444 slli s2, s4, 2
20013448 c.jalr a5
2001344a c.add s2, s1
2001344c lw a5, 0xb0(s2)
20013450 not a5, a5
20013454 and a1, a5, a0
20013458 c.mv a0, s8
2001345a c.jalr s9
2001345c c.li a0, 7
2001345e mul s0, s0, a0
20013462 lw a5, 0x73c(s5)
20013466 c.mv a1, s6
20013468 c.add s0, s4
2001346a c.slli s0, 2
2001346c c.add s0, s1
2001346e lw a0, 0xcc(s0)
20013472 c.jalr a5
20013474 lw s0, 0xa8(s3)
20013478 lw s1, 0x73c(s5)
2001347c lw a5, 0x748(s7)
20013480 c.mv a0, s0
20013482 c.jalr a5
20013484 lw a1, 0xb0(s2)
20013488 c.lwsp ra, 0x2c(sp)
2001348a c.lwsp s2, 0x20(sp)
2001348c c.or a1, a0
2001348e c.mv a0, s0
20013490 c.lwsp s0, 0x28(sp)
20013492 c.lwsp s3, 0x1c(sp)
20013494 c.lwsp s4, 0x18(sp)
20013496 c.lwsp s5, 0x14(sp)
20013498 c.lwsp s6, 0x10(sp)
2001349a c.lwsp s7, 0xc(sp)
2001349c c.lwsp s8, 8(sp)
2001349e c.lwsp s9, 4(sp)
200134a0 c.mv a5, s1
200134a2 c.lwsp s1, 0x24(sp)
200134a4 c.addi16sp sp, 0x30
200134a6 c.jr a5
200134a8 c.lwsp ra, 0x2c(sp)
200134aa c.lwsp s0, 0x28(sp)
200134ac c.lwsp s1, 0x24(sp)
200134ae c.lwsp s2, 0x20(sp)
200134b0 c.lwsp s3, 0x1c(sp)
200134b2 c.lwsp s4, 0x18(sp)
200134b4 c.lwsp s5, 0x14(sp)
200134b6 c.lwsp s6, 0x10(sp)
200134b8 c.lwsp s7, 0xc(sp)
200134ba c.lwsp s8, 8(sp)
200134bc c.lwsp s9, 4(sp)
200134be c.addi16sp sp, 0x30
200134c0 c.jr ra
200134c2 c.addi16sp sp, -0x40
200134c4 c.swsp s0, 0x38(sp)
200134c6 c.mv s0, a5
200134c8 lui a5, 0x20201
200134cc lw a5, 0x12c(a5)
200134d0 c.swsp s1, 0x34(sp)
200134d2 c.swsp s2, 0x30(sp)
200134d4 c.swsp s3, 0x2c(sp)
200134d6 c.swsp s4, 0x28(sp)
200134d8 c.swsp s5, 0x24(sp)
200134da c.swsp s6, 0x20(sp)
200134dc c.swsp s7, 0x1c(sp)
200134de c.swsp ra, 0x3c(sp)
200134e0 c.swsp s8, 0x18(sp)
200134e2 c.mv s5, a1
200134e4 c.mv s4, a0
200134e6 c.mv s1, a4
200134e8 c.mv s6, a2
200134ea c.mv s3, a3
200134ec c.jalr a5
200134ee lui a5, 0x20203
200134f2 lw a5, 0x580(a5)
200134f6 slli a4, s4, 2
200134fa c.mv s7, a0
200134fc c.add a5, a4
200134fe c.lw a5, 0xc(a5)
20013500 slli a4, s5, 2
20013504 lui a1, 0x71030
20013508 c.add a5, a4
2001350a lw s2, 0(a5)
2001350e lui a5, 0x20201
20013512 lw a5, 0x40c(a5)
20013516 c.li a0, 0x18
20013518 c.jalr a5
2001351a c.bnez a0, 0xa8
2001351c c.li a5, 6
2001351e sb a5, 0(sp)
20013522 lui a5, 0x20209
20013526 addi a5, a5, -0x4c0
2001352a c.swsp a5, 4(sp)
2001352c addi a5, zero, 0x219
20013530 c.swsp a5, 8(sp)
20013532 lui a5, 0x20202
20013536 lw a5, 0x348(a5)
2001353a c.mv a0, sp
2001353c c.jalr a5
2001353e c.li a0, 0
20013540 c.lwsp ra, 0x3c(sp)
20013542 c.lwsp s0, 0x38(sp)
20013544 c.lwsp s1, 0x34(sp)
20013546 c.lwsp s2, 0x30(sp)
20013548 c.lwsp s3, 0x2c(sp)
2001354a c.lwsp s4, 0x28(sp)
2001354c c.lwsp s5, 0x24(sp)
2001354e c.lwsp s6, 0x20(sp)
20013550 c.lwsp s7, 0x1c(sp)
20013552 c.lwsp s8, 0x18(sp)
20013554 c.addi16sp sp, 0x40
20013556 c.jr ra
20013558 c.lw s1, 0(s1)
2001355a beq s2, s1, 0x98
2001355e lw a5, -0x10(s1)
20013562 lw a6, 0x6b8(s8)
20013566 c.li a4, 1
20013568 addi a3, zero, 0x113
2001356c c.li a2, 5
2001356e addi a0, zero, 0x200
20013572 c.li a1, 0
20013574 c.jalr a6
20013576 lw a5, -0xc(s1)
2001357a bltu a5, s3, -0x22
2001357e bne a5, s3, 0xc
20013582 lw a5, -0x10(s1)
20013586 bltu a5, s6, -0x2e
2001358a lui a5, 0x20202
2001358e lw a5, 0x240(a5)
20013592 c.mv a1, s1
20013594 c.mv a0, s0
20013596 c.jalr a5
20013598 lw a4, 0(s2)
2001359c lui a5, 0x20202
200135a0 lw a5, -0x7c(a5)
200135a4 lw a2, -0x10(a4)
200135a8 lw a3, -0xc(a4)
200135ac c.mv a1, s5
200135ae c.mv a0, s4