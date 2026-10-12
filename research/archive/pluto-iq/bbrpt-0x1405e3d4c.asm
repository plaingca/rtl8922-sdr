00000001405e3d4c mov      qword ptr [rsp + 0x18], rbx
00000001405e3d51 push     rbp
00000001405e3d52 push     rsi
00000001405e3d53 push     rdi
00000001405e3d54 push     r12
00000001405e3d56 push     r13
00000001405e3d58 push     r14
00000001405e3d5a push     r15
00000001405e3d5c lea      rbp, [rsp - 0x120]
00000001405e3d64 sub      rsp, 0x220
00000001405e3d6b mov      rax, qword ptr [rip + 0x3436ee]
00000001405e3d72 xor      rax, rsp
00000001405e3d75 mov      qword ptr [rbp + 0x110], rax
00000001405e3d7c mov      rsi, qword ptr [rdx + 0x98]
00000001405e3d83 lea      r12, [rcx + 0xc0ba0]
00000001405e3d8a mov      rax, qword ptr [rcx + 0xaf280]
00000001405e3d91 mov      rdi, rcx
00000001405e3d94 mov      r13d, 0x100
00000001405e3d9a mov      qword ptr [rbp - 0x50], rax
00000001405e3d9e mov      r8d, r13d
00000001405e3da1 lea      rcx, [rbp + 0x10]
00000001405e3da5 movsxd   rbx, dword ptr [rsi + 0x178]
00000001405e3dac xor      edx, edx
00000001405e3dae call     0x1405f4640
00000001405e3db3 mov      rax, qword ptr [rdi + 0xaf3b8]
00000001405e3dba xor      r15b, r15b
00000001405e3dbd mov      cl, byte ptr [r12 + 0xa09]
00000001405e3dc5 mov      byte ptr [rsp + 0x71], r15b
00000001405e3dca mov      byte ptr [rsp + 0x72], cl
00000001405e3dce mov      r14, qword ptr [rax]
00000001405e3dd1 mov      eax, dword ptr [r12]
00000001405e3dd5 add      r14, 0x18
00000001405e3dd9 mov      dword ptr [rbp - 0x70], eax
00000001405e3ddc mov      al, byte ptr [r12 + 0xa0a]
00000001405e3de4 mov      byte ptr [rsp + 0x70], al
00000001405e3de8 mov      eax, dword ptr [r12 + 0xa0c]
00000001405e3df0 mov      dword ptr [rbp - 0x6c], eax
00000001405e3df3 mov      qword ptr [rbp - 0x68], r14
00000001405e3df7 mov      rcx, qword ptr [rip + 0x33c202]
00000001405e3dfe lea      rax, [rip + 0x33c1fb]
00000001405e3e05 cmp      rcx, rax
00000001405e3e08 je       0x1405e3e2a
00000001405e3e0a cmp      byte ptr [rcx + 0x29], 4
00000001405e3e0e jb       0x1405e3e2a
00000001405e3e10 test     dword ptr [rcx + 0x2c], r13d
00000001405e3e14 je       0x1405e3e2a
00000001405e3e16 mov      rcx, qword ptr [rcx + 0x18]
00000001405e3e1a lea      edx, [r13 - 0x79]
00000001405e3e1e lea      r8, [rip + 0x32250b]
00000001405e3e25 call     0x140001b88
00000001405e3e2a lea      rcx, [r14 + 0x53e18]
00000001405e3e31 call     0x14014f448
00000001405e3e36 lea      rcx, [r14 + 0x53c50]
00000001405e3e3d mov      dl, 1
00000001405e3e3f call     0x1400b6aa8
00000001405e3e44 mov      qword ptr [rbp - 0x60], rbx
00000001405e3e48 mov      r13, rbx
00000001405e3e4b test     ebx, ebx
00000001405e3e4d jle      0x1405e3f8d
00000001405e3e53 xor      r12d, r12d
00000001405e3e56 mov      r14, qword ptr [rsi + 0x180]
00000001405e3e5d add      r14, r12
00000001405e3e60 je       0x1405e3f2f
00000001405e3e66 mov      r15, qword ptr [rip + 0x33c193]
00000001405e3e6d lea      rax, [rip + 0x33c18c]
00000001405e3e74 cmp      r15, rax
00000001405e3e77 je       0x1405e3f03
00000001405e3e7d cmp      byte ptr [r15 + 0x29], 4
00000001405e3e82 jb       0x1405e3f03
00000001405e3e84 test     dword ptr [r15 + 0x2c], 0x100
00000001405e3e8c je       0x1405e3f03
00000001405e3e8e mov      eax, dword ptr [r14 + 0xf0]
00000001405e3e95 mov      edx, 0x88
00000001405e3e9a movzx    ecx, byte ptr [r14 + 9]
00000001405e3e9f movzx    r8d, byte ptr [r14 + 8]
00000001405e3ea4 movzx    r10d, byte ptr [r14 + 7]
00000001405e3ea9 movzx    r11d, byte ptr [r14 + 6]
00000001405e3eae movzx    ebx, byte ptr [r14 + 5]
00000001405e3eb3 movzx    r9d, byte ptr [r14 + 4]
00000001405e3eb8 mov      dword ptr [rsp + 0x68], eax
00000001405e3ebc mov      eax, dword ptr [r14 + 0x44]
00000001405e3ec0 mov      dword ptr [rsp + 0x60], eax
00000001405e3ec4 mov      eax, dword ptr [r14 + 0x40]
00000001405e3ec8 mov      dword ptr [rsp + 0x58], eax
00000001405e3ecc mov      eax, dword ptr [r14 + 0x48]
00000001405e3ed0 mov      dword ptr [rsp + 0x50], eax
00000001405e3ed4 mov      eax, dword ptr [r14 + 0x4c]
00000001405e3ed8 mov      dword ptr [rsp + 0x48], eax
00000001405e3edc mov      dword ptr [rsp + 0x40], ecx
00000001405e3ee0 mov      rcx, qword ptr [r15 + 0x18]
00000001405e3ee4 mov      dword ptr [rsp + 0x38], r8d
00000001405e3ee9 lea      r8, [rip + 0x322440]
00000001405e3ef0 mov      dword ptr [rsp + 0x30], r10d
00000001405e3ef5 mov      dword ptr [rsp + 0x28], r11d
00000001405e3efa mov      dword ptr [rsp + 0x20], ebx
00000001405e3efe call     0x140042c38
00000001405e3f03 mov      cl, byte ptr [r14 + 0x4c]
00000001405e3f07 lea      rbx, [r14 + 4]
00000001405e3f0b call     0x1405cc378
00000001405e3f10 mov      r8b, byte ptr [r14 + 0x48]
00000001405e3f14 mov      r9d, eax
00000001405e3f17 mov      rcx, qword ptr [rbp - 0x68]
00000001405e3f1b mov      rdx, rbx
00000001405e3f1e mov      byte ptr [rsp + 0x20], 1
00000001405e3f23 call     0x1400b65f0
00000001405e3f28 mov      r15b, byte ptr [rsp + 0x71]
00000001405e3f2d jmp      0x1405e3f34
00000001405e3f2f mov      ebx, 4
00000001405e3f34 mov      rdx, r14
00000001405e3f37 mov      rcx, rdi
00000001405e3f3a call     0x1405e5984
00000001405e3f3f or       r15b, al
00000001405e3f42 mov      eax, dword ptr [r14 + 0xf0]
00000001405e3f49 mov      byte ptr [rsp + 0x71], r15b
00000001405e3f4e test     al, 4
00000001405e3f50 je       0x1405e3f6d
00000001405e3f52 mov      cl, byte ptr [r14 + 0x4c]
00000001405e3f56 call     0x1405cc378
00000001405e3f5b mov      r8b, byte ptr [r14 + 0x48]
00000001405e3f5f mov      r9d, eax
00000001405e3f62 mov      rdx, rbx
00000001405e3f65 mov      rcx, rdi
00000001405e3f68 call     0x1400b62c4
00000001405e3f6d add      r12, 0xf8
00000001405e3f74 sub      r13, 1
00000001405e3f78 jne      0x1405e3e56
00000001405e3f7e mov      r13, qword ptr [rbp - 0x60]
00000001405e3f82 lea      r12, [rdi + 0xc0ba0]
00000001405e3f89 mov      r14, qword ptr [rbp - 0x68]
00000001405e3f8d lea      rcx, [r14 + 0x53c50]
00000001405e3f94 call     0x1400b66e0
00000001405e3f99 cmp      dword ptr [rdi + 0xb0500], 0x13
00000001405e3fa0 jne      0x1405e4031
00000001405e3fa6 lea      rcx, [r14 + 0x53e18]
00000001405e3fad mov      edx, 3
00000001405e3fb2 call     0x14014e04c
00000001405e3fb7 test     al, al
00000001405e3fb9 jne      0x1405e4027
00000001405e3fbb mov      rcx, qword ptr [rip + 0x33c03e]
00000001405e3fc2 lea      rbx, [rip + 0x33c037]
00000001405e3fc9 cmp      rcx, rbx
00000001405e3fcc je       0x1405e4bb3
00000001405e3fd2 cmp      byte ptr [rcx + 0x29], 4
00000001405e3fd6 jb       0x1405e3ff6
00000001405e3fd8 test     dword ptr [rcx + 0x2c], 0x100
00000001405e3fdf je       0x1405e3ff6
00000001405e3fe1 mov      rcx, qword ptr [rcx + 0x18]
00000001405e3fe5 lea      r8, [rip + 0x322344]
00000001405e3fec mov      edx, 0x89
00000001405e3ff1 call     0x140001b88
00000001405e3ff6 mov      rcx, qword ptr [rip + 0x33c003]
00000001405e3ffd cmp      rcx, rbx
00000001405e4000 je       0x1405e4bb3
00000001405e4006 cmp      byte ptr [rcx + 0x29], 4
00000001405e400a jb       0x1405e4bb3
00000001405e4010 test     dword ptr [rcx + 0x2c], 0x100
00000001405e4017 je       0x1405e4bb3
00000001405e401d mov      edx, 0x8a
00000001405e4022 jmp      0x1405e40f1
00000001405e4027 mov      dword ptr [rdi + 0xb0500], 0x11
00000001405e4031 test     r15b, r15b
00000001405e4034 jne      0x1405e4106
00000001405e403a mov      rcx, qword ptr [rip + 0x33bfbf]
00000001405e4041 lea      rbx, [rip + 0x33bfb8]
00000001405e4048 cmp      rcx, rbx
00000001405e404b je       0x1405e40a8
00000001405e404d cmp      byte ptr [rcx + 0x29], 4
00000001405e4051 jb       0x1405e4071
00000001405e4053 test     dword ptr [rcx + 0x2c], 0x100
00000001405e405a je       0x1405e4071
00000001405e405c mov      rcx, qword ptr [rcx + 0x18]
00000001405e4060 lea      r8, [rip + 0x3222c9]
00000001405e4067 mov      edx, 0x8b
00000001405e406c call     0x140001b88
00000001405e4071 mov      rcx, qword ptr [rip + 0x33bf88]
00000001405e4078 cmp      rcx, rbx
00000001405e407b je       0x1405e40a8
00000001405e407d cmp      byte ptr [rcx + 0xe9], 1
00000001405e4084 jb       0x1405e40a8
00000001405e4086 mov      eax, dword ptr [rcx + 0xec]
00000001405e408c test     al, 1
00000001405e408e je       0x1405e40a8
00000001405e4090 mov      rcx, qword ptr [rcx + 0xd8]
00000001405e4097 lea      r8, [rip + 0x322292]
00000001405e409e mov      edx, 0x8c
00000001405e40a3 call     0x140001b88
00000001405e40a8 lea      rcx, [r14 + 0x53e18]
00000001405e40af call     0x14014e18c
00000001405e40b4 mov      byte ptr [rdi + 0xb04fb], 0
00000001405e40bb mov      dword ptr [rdi + 0xb0500], 0x13
00000001405e40c5 mov      rcx, qword ptr [rip + 0x33bf34]
00000001405e40cc cmp      rcx, rbx
00000001405e40cf je       0x1405e4bb3
00000001405e40d5 cmp      byte ptr [rcx + 0x29], 4
00000001405e40d9 jb       0x1405e4bb3
00000001405e40df test     dword ptr [rcx + 0x2c], 0x100
00000001405e40e6 je       0x1405e4bb3
00000001405e40ec mov      edx, 0x8d
00000001405e40f1 mov      rcx, qword ptr [rcx + 0x18]
00000001405e40f5 lea      r8, [rip + 0x322234]
00000001405e40fc call     0x140001b88
00000001405e4101 jmp      0x1405e4bb3
00000001405e4106 xorps    xmm0, xmm0
00000001405e4109 mov      word ptr [rdi + 0x1176c0], 1
00000001405e4112 movups   xmmword ptr [rbp - 0x20], xmm0
00000001405e4116 mov      rcx, rdi
00000001405e4119 mov      dword ptr [rbp - 0x20], 0x300180
00000001405e4120 mov      byte ptr [rdi + 0x113971], 0
00000001405e4127 movups   xmmword ptr [rbp - 0x10], xmm0
00000001405e412b movups   xmmword ptr [rbp], xmm0
00000001405e412f call     0x1400d6314
00000001405e4134 mov      rcx, rdi
00000001405e4137 mov      dword ptr [rdi + 0x53eaac], 0x1e
00000001405e4141 mov      byte ptr [rdi + 0x53eab0], 0
00000001405e4148 call     0x1400948b4
00000001405e414d mov      rcx, rdi
00000001405e4150 call     0x1400a1a78
00000001405e4155 mov      r14d, 0x10
00000001405e415b test     r13, r13
00000001405e415e jle      0x1405e439d
00000001405e4164 xor      r15d, r15d
00000001405e4167 lea      r12, [rip + 0x33be92]
00000001405e416e mov      rbx, qword ptr [rsi + 0x180]
00000001405e4175 mov      rcx, rdi
00000001405e4178 add      rbx, r15
00000001405e417b mov      rdx, rbx
00000001405e417e call     0x1405e573c
00000001405e4183 mov      eax, dword ptr [rbx]
00000001405e4185 test     al, 0x20
00000001405e4187 je       0x1405e4205
00000001405e4189 mov      eax, dword ptr [rbx + 0x98]
00000001405e418f lea      r8, [rbx + 4]
00000001405e4193 mov      r9, qword ptr [rbx + 0xa0]
00000001405e419a mov      edx, 1
00000001405e419f mov      rcx, rdi
00000001405e41a2 mov      dword ptr [rsp + 0x20], eax
00000001405e41a6 call     0x140094920
00000001405e41ab mov      rdx, qword ptr [rbx + 0xa0]
00000001405e41b2 test     rdx, rdx
00000001405e41b5 je       0x1405e4205
00000001405e41b7 mov      rcx, qword ptr [rip + 0x33be42]
00000001405e41be cmp      rcx, r12
00000001405e41c1 je       0x1405e4205
00000001405e41c3 cmp      byte ptr [rcx + 0x29], 4
00000001405e41c7 jb       0x1405e4205
00000001405e41c9 test     dword ptr [rcx + 0x2c], 0x100
00000001405e41d0 je       0x1405e4205
00000001405e41d2 mov      eax, dword ptr [rbx + 0x98]
00000001405e41d8 lea      r9, [rip + 0x9e221]
00000001405e41df mov      rcx, qword ptr [rcx + 0x18]
00000001405e41e3 lea      r8, [rip + 0x322146]
00000001405e41ea mov      qword ptr [rbp - 0x58], rax
00000001405e41ee lea      rax, [rbp - 0x60]
00000001405e41f2 mov      qword ptr [rbp - 0x60], rdx
00000001405e41f6 mov      edx, 0x8e
00000001405e41fb mov      qword ptr [rsp + 0x20], rax
00000001405e4200 call     0x140001c88
00000001405e4205 mov      eax, dword ptr [rbx]
00000001405e4207 test     al, 0x40
00000001405e4209 je       0x1405e4385
00000001405e420f mov      eax, dword ptr [rbx + 0xb0]
00000001405e4215 lea      r8, [rbx + 4]
00000001405e4219 mov      r9, qword ptr [rbx + 0xb8]
00000001405e4220 mov      edx, 1
00000001405e4225 mov      rcx, rdi
00000001405e4228 mov      dword ptr [rsp + 0x20], eax
00000001405e422c call     0x140094920
00000001405e4231 mov      rdx, qword ptr [rbx + 0xb8]
00000001405e4238 test     rdx, rdx
00000001405e423b je       0x1405e428b
00000001405e423d mov      rcx, qword ptr [rip + 0x33bdbc]
00000001405e4244 cmp      rcx, r12
00000001405e4247 je       0x1405e428b
00000001405e4249 cmp      byte ptr [rcx + 0x29], 4
00000001405e424d jb       0x1405e428b
00000001405e424f test     dword ptr [rcx + 0x2c], 0x100
00000001405e4256 je       0x1405e428b
00000001405e4258 mov      eax, dword ptr [rbx + 0xb0]
00000001405e425e lea      r9, [rip + 0x9e1bb]
00000001405e4265 mov      rcx, qword ptr [rcx + 0x18]
00000001405e4269 lea      r8, [rip + 0x3220c0]
00000001405e4270 mov      qword ptr [rbp - 0x38], rax
00000001405e4274 lea      rax, [rbp - 0x40]
00000001405e4278 mov      qword ptr [rbp - 0x40], rdx
00000001405e427c mov      edx, 0x8f
00000001405e4281 mov      qword ptr [rsp + 0x20], rax
00000001405e4286 call     0x140001c88
00000001405e428b mov      eax, dword ptr [rbx + 0xc8]
00000001405e4291 lea      r8, [rbx + 4]
00000001405e4295 mov      r9, qword ptr [rbx + 0xd0]
00000001405e429c mov      edx, 2
00000001405e42a1 mov      rcx, rdi
00000001405e42a4 mov      dword ptr [rsp + 0x20], eax
00000001405e42a8 call     0x140094920
00000001405e42ad mov      rdx, qword ptr [rbx + 0xd0]
00000001405e42b4 test     rdx, rdx
00000001405e42b7 je       0x1405e4307
00000001405e42b9 mov      rcx, qword ptr [rip + 0x33bd40]
00000001405e42c0 cmp      rcx, r12
00000001405e42c3 je       0x1405e4307
00000001405e42c5 cmp      byte ptr [rcx + 0x29], 4
00000001405e42c9 jb       0x1405e4307
00000001405e42cb test     dword ptr [rcx + 0x2c], 0x100
00000001405e42d2 je       0x1405e4307
00000001405e42d4 mov      eax, dword ptr [rbx + 0xc8]
00000001405e42da lea      r9, [rip + 0x9e15f]
00000001405e42e1 mov      rcx, qword ptr [rcx + 0x18]
00000001405e42e5 lea      r8, [rip + 0x322044]
00000001405e42ec mov      qword ptr [rbp - 0x28], rax
00000001405e42f0 lea      rax, [rbp - 0x30]
00000001405e42f4 mov      qword ptr [rbp - 0x30], rdx
00000001405e42f8 mov      edx, 0x90
00000001405e42fd mov      qword ptr [rsp + 0x20], rax
00000001405e4302 call     0x140001c88
00000001405e4307 lea      r14, [rbx + 0xe0]
00000001405e430e mov      dword ptr [rsp + 0x20], 0x10
00000001405e4316 mov      r9, r14
00000001405e4319 lea      r8, [rbx + 4]
00000001405e431d mov      edx, 3
00000001405e4322 mov      rcx, rdi
00000001405e4325 call     0x140094920
00000001405e432a test     r14, r14
00000001405e432d je       0x1405e437f
00000001405e432f mov      rcx, qword ptr [rip + 0x33bcca]
00000001405e4336 cmp      rcx, r12
00000001405e4339 je       0x1405e437f
00000001405e433b cmp      byte ptr [rcx + 0x29], 4
00000001405e433f jb       0x1405e437f
00000001405e4341 test     dword ptr [rcx + 0x2c], 0x100
00000001405e4348 je       0x1405e437f
00000001405e434a mov      rcx, qword ptr [rcx + 0x18]
00000001405e434e lea      rax, [rbp - 0x80]
00000001405e4352 mov      qword ptr [rbp - 0x80], r14
00000001405e4356 lea      r9, [rip + 0x9e103]
00000001405e435d mov      r14d, 0x10
00000001405e4363 mov      qword ptr [rsp + 0x20], rax
00000001405e4368 mov      edx, 0x91
00000001405e436d mov      qword ptr [rbp - 0x78], r14
00000001405e4371 lea      r8, [rip + 0x321fb8]
00000001405e4378 call     0x140001c88
00000001405e437d jmp      0x1405e4385
00000001405e437f mov      r14d, 0x10
00000001405e4385 add      r15, 0xf8
00000001405e438c sub      r13, 1
00000001405e4390 jne      0x1405e416e
00000001405e4396 lea      r12, [rdi + 0xc0ba0]
00000001405e439d mov      rcx, rdi
00000001405e43a0 call     0x1400d6128
00000001405e43a5 movzx    r9d, byte ptr [rsi + 6]
00000001405e43aa xor      r13d, r13d
00000001405e43ad mov      byte ptr [rdi + 0x1136e9], r9b
00000001405e43b4 movzx    edx, byte ptr [rsi + 8]
00000001405e43b8 mov      byte ptr [rdi + 0x1136ea], dl
00000001405e43be test     dl, dl
00000001405e43c0 je       0x1405e43cb
00000001405e43c2 cmp      byte ptr [rdi + 0x540538], r13b
00000001405e43c9 je       0x1405e4400
00000001405e43cb mov      rax, qword ptr [rdi + 0xaf280]
00000001405e43d2 cmp      byte ptr [rax + 0x10f0], r13b
00000001405e43d9 je       0x1405e4400
00000001405e43db mov      byte ptr [rdi + 0x53f698], 1
00000001405e43e2 mov      r8d, 1
00000001405e43e8 cmp      byte ptr [rax + 0x10f2], r13b
00000001405e43ef je       0x1405e440a
00000001405e43f1 mov      byte ptr [rdi + 0x53f698], 0x11
00000001405e43f8 mov      r8d, 0x11
00000001405e43fe jmp      0x1405e440a
00000001405e4400 mov      r8d, r13d
00000001405e4403 mov      byte ptr [rdi + 0x53f698], r13b
00000001405e440a mov      rcx, qword ptr [rip + 0x33bbef]
00000001405e4411 lea      rax, [rip + 0x33bbe8]
00000001405e4418 cmp      rcx, rax
00000001405e441b je       0x1405e4451
00000001405e441d cmp      byte ptr [rcx + 0x29], 4
00000001405e4421 jb       0x1405e4451
00000001405e4423 mov      eax, dword ptr [rcx + 0x2c]
00000001405e4426 test     al, 8
00000001405e4428 je       0x1405e444a
00000001405e442a mov      rcx, qword ptr [rcx + 0x18]
00000001405e442e mov      eax, edx
00000001405e4430 mov      dword ptr [rsp + 0x28], r8d
00000001405e4435 mov      edx, 0x92
00000001405e443a lea      r8, [rip + 0x321eef]
00000001405e4441 mov      dword ptr [rsp + 0x20], eax
00000001405e4445 call     0x140001c34
00000001405e444a lea      rax, [rip + 0x33bbaf]
00000001405e4451 cmp      byte ptr [rsi + 4], 1
00000001405e4455 jne      0x1405e448b
00000001405e4457 mov      rcx, qword ptr [rip + 0x33bba2]
00000001405e445e cmp      rcx, rax
00000001405e4461 je       0x1405e448b
00000001405e4463 cmp      byte ptr [rcx + 0x29], 4
00000001405e4467 jb       0x1405e448b
00000001405e4469 test     dword ptr [rcx + 0x2c], 0x100
00000001405e4470 je       0x1405e448b
00000001405e4472 mov      r9d, dword ptr [rsi + 0xc]
00000001405e4476 lea      r8, [rip + 0x321eb3]
00000001405e447d mov      rcx, qword ptr [rcx + 0x18]
00000001405e4481 mov      edx, 0x93
00000001405e4486 call     0x140001bb0
00000001405e448b mov      eax, dword ptr [rsi + 0x20]
00000001405e448e mov      ebx, r13d
00000001405e4491 mov      dword ptr [rbp - 0x1c], eax
00000001405e4494 test     eax, eax
00000001405e4496 je       0x1405e457f
00000001405e449c lea      r12, [rip + 0x33bb5d]
00000001405e44a3 cmp      ebx, r14d
00000001405e44a6 jae      0x1405e4578
00000001405e44ac mov      rcx, qword ptr [rsi + 0x28]
00000001405e44b0 lea      r15, [rbp - 0x10]
00000001405e44b4 mov      eax, ebx
00000001405e44b6 lea      rdx, [rax + rax*2]
00000001405e44ba mov      r8d, dword ptr [rcx + rdx*8]
00000001405e44be lea      r14, [rax + rax*8]
00000001405e44c2 mov      dword ptr [rbp + r14*4 - 0x14], r8d
00000001405e44c7 lea      r15, [r15 + r14*4]
00000001405e44cb mov      rdx, qword ptr [rcx + rdx*8 + 8]
00000001405e44d0 test     rdx, rdx
00000001405e44d3 je       0x1405e44e2
00000001405e44d5 mov      rcx, r15
00000001405e44d8 call     0x1400311e8
00000001405e44dd mov      r8d, dword ptr [rbp + r14*4 - 0x14]
00000001405e44e2 test     r15, r15
00000001405e44e5 je       0x1405e453d
00000001405e44e7 mov      rcx, qword ptr [rip + 0x33bb12]
00000001405e44ee cmp      rcx, r12
00000001405e44f1 je       0x1405e453d
00000001405e44f3 cmp      byte ptr [rcx + 0x29], 4
00000001405e44f7 jb       0x1405e453d
00000001405e44f9 test     dword ptr [rcx + 0x2c], 0x100
00000001405e4500 je       0x1405e453d
00000001405e4502 mov      eax, 0x20
00000001405e4507 cmp      r8d, 0x20
00000001405e450b ja       0x1405e4510
00000001405e450d mov      eax, r8d
00000001405e4510 mov      rcx, qword ptr [rcx + 0x18]
00000001405e4514 lea      r9, [rip + 0x9df65]
00000001405e451b mov      qword ptr [rbp - 0x78], rax
00000001405e451f lea      r8, [rip + 0x321e0a]
00000001405e4526 lea      rax, [rbp - 0x80]
00000001405e452a mov      qword ptr [rbp - 0x80], r15
00000001405e452e mov      edx, 0x94
00000001405e4533 mov      qword ptr [rsp + 0x20], rax
00000001405e4538 call     0x140001c88
00000001405e453d mov      eax, ebx
00000001405e453f mov      r14d, 0x10
00000001405e4545 mov      edx, ebx
00000001405e4547 add      rdx, rdx
00000001405e454a lea      rcx, [rax + rax*8]
00000001405e454e lea      rax, [rbp - 0x10]
00000001405e4552 lea      rax, [rax + rcx*4]
00000001405e4556 mov      qword ptr [rbp + rdx*8 + 0x10], rax
00000001405e455b mov      eax, ebx
00000001405e455d inc      ebx
00000001405e455f lea      rcx, [rax + rax*8]
00000001405e4563 movzx    eax, word ptr [rbp + rcx*4 - 0x14]
00000001405e4568 mov      word ptr [rbp + rdx*8 + 0x18], ax
00000001405e456d mov      eax, dword ptr [rbp - 0x1c]
00000001405e4570 cmp      ebx, eax
00000001405e4572 jb       0x1405e44a3
00000001405e4578 lea      r12, [rdi + 0xc0ba0]
00000001405e457f cmp      eax, r14d
00000001405e4582 movzx    r8d, al
00000001405e4586 lea      rdx, [rbp + 0x10]
00000001405e458a mov      rcx, rdi
00000001405e458d cmova    r8d, r14d
00000001405e4591 call     0x1400b1ebc
00000001405e4596 mov      r15, qword ptr [rbp - 0x50]
00000001405e459a movups   xmm0, xmmword ptr [rbp - 0x20]
00000001405e459e movups   xmm1, xmmword ptr [rbp - 0x10]
00000001405e45a2 movups   xmmword ptr [r15 + 0x58c], xmm0
00000001405e45aa movups   xmm0, xmmword ptr [rbp]
00000001405e45ae movups   xmmword ptr [r15 + 0x59c], xmm1
00000001405e45b6 movups   xmmword ptr [r15 + 0x5ac], xmm0
00000001405e45be mov      rax, qword ptr [rdi + 0xaf280]
00000001405e45c5 cmp      byte ptr [rax + 0xc56], r13b
00000001405e45cc je       0x1405e45d9
00000001405e45ce mov      rdx, rsi
00000001405e45d1 mov      rcx, r12
00000001405e45d4 call     0x1405e6704
00000001405e45d9 mov      rax, qword ptr [rsi + 0x78]
00000001405e45dd mov      ecx, dword ptr [rax]
00000001405e45df call     0x1405f1eac
00000001405e45e4 mov      edx, eax
00000001405e45e6 mov      rcx, rdi
00000001405e45e9 call     0x14001ebb8
00000001405e45ee mov      rcx, qword ptr [rip + 0x33ba0b]
00000001405e45f5 lea      rbx, [rip + 0x33ba04]
00000001405e45fc cmp      rcx, rbx
00000001405e45ff je       0x1405e4627
00000001405e4601 cmp      byte ptr [rcx + 0x29], 4
00000001405e4605 jb       0x1405e4627
00000001405e4607 bt       dword ptr [rcx + 0x2c], 0xb
00000001405e460c jae      0x1405e4627
00000001405e460e mov      r9d, dword ptr [rsi + 0x70]
00000001405e4612 lea      r8, [rip + 0x321d17]
00000001405e4619 mov      rcx, qword ptr [rcx + 0x18]
00000001405e461d mov      edx, 0x95
00000001405e4622 call     0x140001bb0
00000001405e4627 mov      rcx, qword ptr [rsi + 0xa8]
00000001405e462e mov      ecx, dword ptr [rcx]
00000001405e4630 call     0x1405f1f30
00000001405e4635 mov      edx, eax
00000001405e4637 mov      rcx, rdi
00000001405e463a call     0x140022068
00000001405e463f mov      rcx, qword ptr [rip + 0x33b9ba]
00000001405e4646 cmp      rcx, rbx
00000001405e4649 je       0x1405e4674
00000001405e464b cmp      byte ptr [rcx + 0x29], 4
00000001405e464f jb       0x1405e4674
00000001405e4651 bt       dword ptr [rcx + 0x2c], 0xb
00000001405e4656 jae      0x1405e4674
00000001405e4658 mov      r9d, dword ptr [rsi + 0xa0]
00000001405e465f lea      r8, [rip + 0x321cca]
00000001405e4666 mov      rcx, qword ptr [rcx + 0x18]
00000001405e466a mov      edx, 0x96
00000001405e466f call     0x140001bb0
00000001405e4674 mov      rcx, qword ptr [rsi + 0x90]
00000001405e467b mov      ecx, dword ptr [rcx]
00000001405e467d call     0x1405f1f30
00000001405e4682 mov      edx, eax
00000001405e4684 mov      rcx, rdi
00000001405e4687 call     0x1400216e4
00000001405e468c mov      rcx, qword ptr [rip + 0x33b96d]
00000001405e4693 cmp      rcx, rbx
00000001405e4696 je       0x1405e46c1
00000001405e4698 cmp      byte ptr [rcx + 0x29], 4
00000001405e469c jb       0x1405e46c1
00000001405e469e bt       dword ptr [rcx + 0x2c], 0xb
00000001405e46a3 jae      0x1405e46c1
00000001405e46a5 mov      r9d, dword ptr [rsi + 0x88]
00000001405e46ac lea      r8, [rip + 0x321c7d]
00000001405e46b3 mov      rcx, qword ptr [rcx + 0x18]
00000001405e46b7 mov      edx, 0x97
00000001405e46bc call     0x140001bb0
00000001405e46c1 test     dword ptr [rsi], 0x100
00000001405e46c7 je       0x1405e4743
00000001405e46c9 cmp      dword ptr [rsi + 0x160], r13d
00000001405e46d0 jbe      0x1405e4743
00000001405e46d2 mov      rcx, qword ptr [rip + 0x33b927]
00000001405e46d9 cmp      rcx, rbx
00000001405e46dc je       0x1405e4778
00000001405e46e2 cmp      byte ptr [rcx + 0x29], 4
00000001405e46e6 jb       0x1405e470e
00000001405e46e8 bt       dword ptr [rcx + 0x2c], 0xb
00000001405e46ed jae      0x1405e470e
00000001405e46ef mov      r9, qword ptr [rsi + 0x168]
00000001405e46f6 lea      r8, [rip + 0x321c33]
00000001405e46fd mov      rcx, qword ptr [rcx + 0x18]
00000001405e4701 mov      edx, 0x98
00000001405e4706 mov      r9d, dword ptr [r9]
00000001405e4709 call     0x140001bb0
00000001405e470e mov      rcx, qword ptr [rip + 0x33b8eb]
00000001405e4715 cmp      rcx, rbx
00000001405e4718 je       0x1405e4778
00000001405e471a cmp      byte ptr [rcx + 0x29], 4
00000001405e471e jb       0x1405e4743
00000001405e4720 bt       dword ptr [rcx + 0x2c], 0xb
00000001405e4725 jae      0x1405e4743
00000001405e4727 mov      r9d, dword ptr [rsi + 0x160]
00000001405e472e lea      r8, [rip + 0x321bfb]
00000001405e4735 mov      rcx, qword ptr [rcx + 0x18]
00000001405e4739 mov      edx, 0x99
00000001405e473e call     0x140001bb0
00000001405e4743 mov      rcx, qword ptr [rip + 0x33b8b6]
00000001405e474a cmp      rcx, rbx
00000001405e474d je       0x1405e4778
00000001405e474f cmp      byte ptr [rcx + 0x29], 4
00000001405e4753 jb       0x1405e4778
00000001405e4755 test     dword ptr [rcx + 0x2c], 0x100
00000001405e475c je       0x1405e4778
00000001405e475e movzx    r9d, byte ptr [rsi + 0x15]
00000001405e4763 lea      r8, [rip + 0x321bc6]
00000001405e476a mov      rcx, qword ptr [rcx + 0x18]
00000001405e476e mov      edx, 0x9a
00000001405e4773 call     0x140001bb0
00000001405e4778 cmp      byte ptr [rsi + 0x15], 1
00000001405e477c mov      r14, qword ptr [rbp - 0x68]
00000001405e4780 sete     al
00000001405e4783 mov      byte ptr [r14 + 0x53e0f], al
00000001405e478a mov      eax, dword ptr [rsi]
00000001405e478c test     al, 2
00000001405e478e je       0x1405e4841
00000001405e4794 cmp      dword ptr [rsi + 0xb8], r13d
00000001405e479b jbe      0x1405e4841
00000001405e47a1 mov      rcx, qword ptr [rip + 0x33b858]
00000001405e47a8 cmp      rcx, rbx
00000001405e47ab je       0x1405e47d1
00000001405e47ad cmp      byte ptr [rcx + 0x29], 4
00000001405e47b1 jb       0x1405e47d1
00000001405e47b3 test     dword ptr [rcx + 0x2c], 0x100
00000001405e47ba je       0x1405e47d1
00000001405e47bc mov      rcx, qword ptr [rcx + 0x18]
00000001405e47c0 lea      r8, [rip + 0x321b69]
00000001405e47c7 mov      edx, 0x9b
00000001405e47cc call     0x140001b88
00000001405e47d1 mov      r8d, dword ptr [rsi + 0xb8]
00000001405e47d8 mov      rcx, rdi
00000001405e47db mov      rdx, qword ptr [rsi + 0xc0]
00000001405e47e2 call     0x1400a7e30
00000001405e47e7 mov      rdx, qword ptr [rsi + 0xc0]
00000001405e47ee test     rdx, rdx
00000001405e47f1 je       0x1405e4841
00000001405e47f3 mov      rcx, qword ptr [rip + 0x33b806]
00000001405e47fa cmp      rcx, rbx
00000001405e47fd je       0x1405e4841
00000001405e47ff cmp      byte ptr [rcx + 0x29], 5
00000001405e4803 jb       0x1405e4841
00000001405e4805 test     dword ptr [rcx + 0x2c], 0x100
00000001405e480c je       0x1405e4841
00000001405e480e mov      eax, dword ptr [rsi + 0xb8]
00000001405e4814 lea      r9, [rip + 0x9dd15]
00000001405e481b mov      rcx, qword ptr [rcx + 0x18]
00000001405e481f lea      r8, [rip + 0x321b0a]
00000001405e4826 mov      qword ptr [rbp - 0x78], rax
00000001405e482a lea      rax, [rbp - 0x80]
00000001405e482e mov      qword ptr [rbp - 0x80], rdx
00000001405e4832 mov      edx, 0x9c
00000001405e4837 mov      qword ptr [rsp + 0x20], rax
00000001405e483c call     0x140001c88
00000001405e4841 mov      eax, dword ptr [rsi]
00000001405e4843 test     al, 0x20
00000001405e4845 je       0x1405e48e7
00000001405e484b mov      r8d, dword ptr [rsi + 0x118]
00000001405e4852 mov      r9d, 0x80
00000001405e4858 cmp      r8d, r9d
00000001405e485b jae      0x1405e48b2
00000001405e485d mov      dword ptr [rdi + 0x1149fc], r8d
00000001405e4864 mov      rcx, qword ptr [rip + 0x33b795]
00000001405e486b cmp      rcx, rbx
00000001405e486e je       0x1405e4896
00000001405e4870 cmp      byte ptr [rcx + 0x29], 4
00000001405e4874 jb       0x1405e4896
00000001405e4876 test     dword ptr [rcx + 0x2c], 0x100
00000001405e487d je       0x1405e4896
00000001405e487f mov      rcx, qword ptr [rcx + 0x18]
00000001405e4883 lea      edx, [r9 + 0x1d]
00000001405e4887 mov      r9d, r8d
00000001405e488a lea      r8, [rip + 0x321a9f]
00000001405e4891 call     0x140001bb0
00000001405e4896 mov      r8d, dword ptr [rdi + 0x1149fc]
00000001405e489d lea      rcx, [rdi + 0x114979]
00000001405e48a4 mov      rdx, qword ptr [rsi + 0x120]
00000001405e48ab call     0x1400311e8
00000001405e48b0 jmp      0x1405e48ee
00000001405e48b2 mov      rcx, qword ptr [rip + 0x33b747]
00000001405e48b9 cmp      rcx, rbx
00000001405e48bc je       0x1405e48e7
00000001405e48be cmp      byte ptr [rcx + 0x29], 3
00000001405e48c2 jb       0x1405e48e7
00000001405e48c4 test     dword ptr [rcx + 0x2c], 0x100
00000001405e48cb je       0x1405e48e7
00000001405e48cd mov      rcx, qword ptr [rcx + 0x18]
00000001405e48d1 mov      edx, 0x9e
00000001405e48d6 mov      dword ptr [rsp + 0x20], r8d
00000001405e48db lea      r8, [rip + 0x321a4e]
00000001405e48e2 call     0x140001bec
00000001405e48e7 mov      dword ptr [rdi + 0x1149fc], r13d
00000001405e48ee mov      eax, dword ptr [rsi]
00000001405e48f0 test     al, 8
00000001405e48f2 je       0x1405e4943
00000001405e48f4 cmp      dword ptr [rsi + 0xe8], r13d
00000001405e48fb jbe      0x1405e4943
00000001405e48fd mov      rcx, qword ptr [rip + 0x33b6fc]
00000001405e4904 cmp      rcx, rbx
00000001405e4907 je       0x1405e492d
00000001405e4909 cmp      byte ptr [rcx + 0x29], 4
00000001405e490d jb       0x1405e492d
00000001405e490f test     dword ptr [rcx + 0x2c], 0x100
00000001405e4916 je       0x1405e492d
00000001405e4918 mov      rcx, qword ptr [rcx + 0x18]
00000001405e491c lea      r8, [rip + 0x321a0d]
00000001405e4923 mov      edx, 0x9f
00000001405e4928 call     0x140001b88
00000001405e492d mov      r8d, dword ptr [rsi + 0xe8]
00000001405e4934 mov      rcx, rdi
00000001405e4937 mov      rdx, qword ptr [rsi + 0xf0]
00000001405e493e call     0x1400a8204
00000001405e4943 mov      eax, dword ptr [rsi]
00000001405e4945 mov      ecx, 0x10
00000001405e494a test     cl, al
00000001405e494c je       0x1405e49c3
00000001405e494e cmp      dword ptr [rsi + 0x100], r13d
00000001405e4955 jbe      0x1405e49ca
00000001405e4957 mov      rcx, qword ptr [rip + 0x33b6a2]
00000001405e495e cmp      rcx, rbx
00000001405e4961 je       0x1405e4987
00000001405e4963 cmp      byte ptr [rcx + 0x29], 4
00000001405e4967 jb       0x1405e4987
00000001405e4969 test     dword ptr [rcx + 0x2c], 0x100
00000001405e4970 je       0x1405e4987
00000001405e4972 mov      rcx, qword ptr [rcx + 0x18]
00000001405e4976 lea      r8, [rip + 0x3219b3]
00000001405e497d mov      edx, 0xa0
00000001405e4982 call     0x140001b88
00000001405e4987 mov      eax, dword ptr [rsi + 0x100]
00000001405e498d cmp      eax, 8
00000001405e4990 jbe      0x1405e499a
00000001405e4992 mov      r8d, 8
00000001405e4998 jmp      0x1405e49a1
00000001405e499a lea      r8d, [rax + rax*2]
00000001405e499e add      r8d, r8d
00000001405e49a1 mov      rdx, qword ptr [rsi + 0x108]
00000001405e49a8 lea      rcx, [r15 + 0x60c]
00000001405e49af call     0x1400311e8
00000001405e49b4 mov      eax, dword ptr [rsi + 0x100]
00000001405e49ba mov      dword ptr [r15 + 0x63c], eax
00000001405e49c1 jmp      0x1405e49ca
00000001405e49c3 mov      dword ptr [r15 + 0x63c], r13d
00000001405e49ca mov      rcx, rdi
00000001405e49cd call     0x14009e68c
00000001405e49d2 mov      rcx, rdi
00000001405e49d5 movzx    ebx, al
00000001405e49d8 call     0x1400b32fc
00000001405e49dd test     al, al
00000001405e49df je       0x1405e4bec
00000001405e49e5 cmp      dword ptr [rdi + 0xb0500], 0x11
00000001405e49ec jne      0x1405e4bec
00000001405e49f2 cmp      ebx, 1
00000001405e49f5 jne      0x1405e4a2e
00000001405e49f7 lea      rcx, [r14 + 0x53e18]
00000001405e49fe call     0x14014dd44
00000001405e4a03 test     al, al
00000001405e4a05 je       0x1405e4bf5
00000001405e4a0b lea      rdx, [rdi + 0xbbd40]
00000001405e4a12 lea      rcx, [r14 + 0x53e18]
00000001405e4a19 call     0x14014dc84
00000001405e4a1e test     eax, eax
00000001405e4a20 jne      0x1405e4bf5
00000001405e4a26 mov      rcx, rdi
00000001405e4a29 call     0x14009e664
00000001405e4a2e mov      rcx, qword ptr [rip + 0x33b5cb]
00000001405e4a35 lea      rdx, [rip + 0x33b5c4]
00000001405e4a3c cmp      rcx, rdx
00000001405e4a3f je       0x1405e4aa3
00000001405e4a41 cmp      byte ptr [rcx + 0x29], 4
00000001405e4a45 jb       0x1405e4a6c
00000001405e4a47 test     dword ptr [rcx + 0x2c], 0x100
00000001405e4a4e je       0x1405e4a6c
00000001405e4a50 mov      rcx, qword ptr [rcx + 0x18]
00000001405e4a54 lea      r8, [rip + 0x3218d5]
00000001405e4a5b mov      edx, 0xa2
00000001405e4a60 call     0x140001b88
00000001405e4a65 lea      rdx, [rip + 0x33b594]
00000001405e4a6c mov      rcx, qword ptr [rip + 0x33b58d]
00000001405e4a73 cmp      rcx, rdx
00000001405e4a76 je       0x1405e4aa3
00000001405e4a78 cmp      byte ptr [rcx + 0x29], 4
00000001405e4a7c jb       0x1405e4aa3
00000001405e4a7e test     dword ptr [rcx + 0x2c], 0x100
00000001405e4a85 je       0x1405e4aa3
00000001405e4a87 mov      rcx, qword ptr [rcx + 0x18]
00000001405e4a8b lea      r8, [rip + 0x32189e]
00000001405e4a92 mov      edx, 0xa3
00000001405e4a97 call     0x140001b88
00000001405e4a9c lea      rdx, [rip + 0x33b55d]
00000001405e4aa3 mov      r9d, dword ptr [r12]
00000001405e4aa7 mov      ebx, dword ptr [rbp - 0x70]
00000001405e4aaa mov      sil, byte ptr [rsp + 0x72]
00000001405e4aaf mov      r15b, byte ptr [rsp + 0x70]
00000001405e4ab4 cmp      ebx, r9d
00000001405e4ab7 jne      0x1405e4ad1
00000001405e4ab9 cmp      sil, byte ptr [r12 + 0xa09]
00000001405e4ac1 jne      0x1405e4ad1
00000001405e4ac3 cmp      r15b, byte ptr [r12 + 0xa0a]
00000001405e4acb je       0x1405e4b96
00000001405e4ad1 mov      rcx, qword ptr [rip + 0x33b528]
00000001405e4ad8 cmp      rcx, rdx
00000001405e4adb je       0x1405e4b77
00000001405e4ae1 cmp      byte ptr [rcx + 0x29], 4
00000001405e4ae5 jb       0x1405e4b33
00000001405e4ae7 test     dword ptr [rcx + 0x2c], 0x800
00000001405e4aee je       0x1405e4b33
00000001405e4af0 movzx    r8d, byte ptr [r12 + 0xa09]
00000001405e4af9 mov      edx, 0xa4
00000001405e4afe movzx    eax, byte ptr [r12 + 0xa0a]
00000001405e4b07 mov      rcx, qword ptr [rcx + 0x18]
00000001405e4b0b mov      dword ptr [rsp + 0x30], eax
00000001405e4b0f mov      dword ptr [rsp + 0x28], r8d
00000001405e4b14 lea      r8, [rip + 0x321815]
00000001405e4b1b mov      dword ptr [rsp + 0x20], r9d
00000001405e4b20 lea      r9, [rip + 0x9da39]
00000001405e4b27 call     0x14001c670
00000001405e4b2c lea      rdx, [rip + 0x33b4cd]
00000001405e4b33 mov      rcx, qword ptr [rip + 0x33b4c6]
00000001405e4b3a cmp      rcx, rdx
00000001405e4b3d je       0x1405e4b77
00000001405e4b3f cmp      byte ptr [rcx + 0x29], 4
00000001405e4b43 jb       0x1405e4b77
00000001405e4b45 test     dword ptr [rcx + 0x2c], 0x800
00000001405e4b4c je       0x1405e4b77
00000001405e4b4e mov      rcx, qword ptr [rcx + 0x18]
00000001405e4b52 mov      edx, 0xa5
00000001405e4b57 movzx    eax, r15b
00000001405e4b5b mov      r9d, ebx
00000001405e4b5e movzx    r8d, sil
00000001405e4b62 mov      dword ptr [rsp + 0x28], eax
00000001405e4b66 mov      dword ptr [rsp + 0x20], r8d
00000001405e4b6b lea      r8, [rip + 0x3217be]
00000001405e4b72 call     0x140001c34
00000001405e4b77 mov      eax, dword ptr [rbp - 0x6c]
00000001405e4b7a mov      dword ptr [r12 + 0xa0c], eax
00000001405e4b82 mov      dword ptr [r12], ebx
00000001405e4b86 mov      byte ptr [r12 + 0xa09], sil
00000001405e4b8e mov      byte ptr [r12 + 0xa0a], r15b
00000001405e4b96 lea      rcx, [r14 + 0x53e18]
00000001405e4b9d call     0x14014e18c
00000001405e4ba2 mov      byte ptr [rdi + 0xb04fb], r13b
00000001405e4ba9 mov      dword ptr [rdi + 0xb0500], 0x13
00000001405e4bb3 mov      edx, 1
00000001405e4bb8 mov      rcx, rdi
00000001405e4bbb call     0x1405cf940
00000001405e4bc0 xor      eax, eax
00000001405e4bc2 mov      rcx, qword ptr [rbp + 0x110]
00000001405e4bc9 xor      rcx, rsp
00000001405e4bcc call     0x1405f45b0
00000001405e4bd1 mov      rbx, qword ptr [rsp + 0x270]
00000001405e4bd9 add      rsp, 0x220
00000001405e4be0 pop      r15
00000001405e4be2 pop      r14
00000001405e4be4 pop      r13
00000001405e4be6 pop      r12
00000001405e4be8 pop      rdi
00000001405e4be9 pop      rsi
00000001405e4bea pop      rbp
00000001405e4beb ret      
00000001405e4bec cmp      ebx, 1
00000001405e4bef jne      0x1405e4a2e
00000001405e4bf5 mov      rcx, qword ptr [rip + 0x33b404]
00000001405e4bfc lea      rsi, [rip + 0x33b3fd]
00000001405e4c03 cmp      rcx, rsi
00000001405e4c06 je       0x1405e4c2a
00000001405e4c08 cmp      byte ptr [rcx + 0x29], 4
00000001405e4c0c jb       0x1405e4c2a
00000001405e4c0e mov      eax, dword ptr [rcx + 0x2c]
00000001405e4c11 test     al, 8
00000001405e4c13 je       0x1405e4c2a
00000001405e4c15 mov      rcx, qword ptr [rcx + 0x18]
00000001405e4c19 lea      r8, [rip + 0x321710]
00000001405e4c20 mov      edx, 0xa1
00000001405e4c25 call     0x140001b88
00000001405e4c2a cmp      byte ptr [rdi + 0xb046e], r13b
00000001405e4c31 je       0x1405e4c3d
00000001405e4c33 mov      dl, 4
00000001405e4c35 mov      rcx, rdi
00000001405e4c38 call     0x1400967b8
00000001405e4c3d mov      rcx, qword ptr [rip + 0x33b3bc]
00000001405e4c44 cmp      rcx, rsi
00000001405e4c47 je       0x1405e4c74
00000001405e4c49 cmp      byte ptr [rcx + 0x29], 4
00000001405e4c4d jb       0x1405e4c74
00000001405e4c4f test     dword ptr [rcx + 0x2c], 0x100
00000001405e4c56 je       0x1405e4c74
00000001405e4c58 mov      r9d, dword ptr [rdi + 0xb0500]
00000001405e4c5f lea      r8, [rip + 0x3216ca]
00000001405e4c66 mov      rcx, qword ptr [rcx + 0x18]
00000001405e4c6a mov      edx, 0xa6
00000001405e4c6f call     0x140001bb0
00000001405e4c74 mov      ecx, dword ptr [rdi + 0xb0500]
00000001405e4c7a cmp      ecx, 9
00000001405e4c7d jg       0x1405e4cd2
00000001405e4c7f je       0x1405e4cc6
00000001405e4c81 test     ecx, ecx
00000001405e4c83 je       0x1405e4ca8
00000001405e4c85 sub      ecx, 1
00000001405e4c88 je       0x1405e4cb7
00000001405e4c8a sub      ecx, 1
00000001405e4c8d je       0x1405e4ca8
00000001405e4c8f sub      ecx, 1
00000001405e4c92 je       0x1405e4ca8
00000001405e4c94 sub      ecx, 1
00000001405e4c97 je       0x1405e4ca8
00000001405e4c99 sub      ecx, 1
00000001405e4c9c je       0x1405e4ca8
00000001405e4c9e sub      ecx, 1
00000001405e4ca1 je       0x1405e4ca8
00000001405e4ca3 sub      ecx, 1
00000001405e4ca6 jne      0x1405e4cf5
00000001405e4ca8 mov      dword ptr [rdi + 0xbbd28], 1
00000001405e4cb2 jmp      0x1405e4d4e
00000001405e4cb7 mov      dword ptr [rdi + 0xbbd28], 4
00000001405e4cc1 jmp      0x1405e4d4e
00000001405e4cc6 mov      dword ptr [rdi + 0xbbd28], 2
00000001405e4cd0 jmp      0x1405e4d4e
00000001405e4cd2 sub      ecx, 0xa
00000001405e4cd5 je       0x1405e4d44
00000001405e4cd7 sub      ecx, 1
00000001405e4cda je       0x1405e4d38
00000001405e4cdc sub      ecx, 1
00000001405e4cdf je       0x1405e4d2c
00000001405e4ce1 sub      ecx, 1
00000001405e4ce4 je       0x1405e4d2c
00000001405e4ce6 sub      ecx, 1
00000001405e4ce9 je       0x1405e4d2c
00000001405e4ceb sub      ecx, 1
00000001405e4cee je       0x1405e4d2c
00000001405e4cf0 sub      ecx, 1
00000001405e4cf3 je       0x1405e4d2c
00000001405e4cf5 cmp      ecx, 1
00000001405e4cf8 je       0x1405e4d2c
00000001405e4cfa mov      rcx, qword ptr [rip + 0x33b2ff]
00000001405e4d01 cmp      rcx, rsi
00000001405e4d04 je       0x1405e4d5f
00000001405e4d06 cmp      byte ptr [rcx + 0x29], 3
00000001405e4d0a jb       0x1405e4d5f
00000001405e4d0c test     dword ptr [rcx + 0x2c], 0x100
00000001405e4d13 je       0x1405e4d5f
00000001405e4d15 mov      rcx, qword ptr [rcx + 0x18]
00000001405e4d19 lea      r8, [rip + 0x321610]
00000001405e4d20 mov      edx, 0xa7
00000001405e4d25 call     0x140001b88
00000001405e4d2a jmp      0x1405e4d5f
00000001405e4d2c mov      dword ptr [rdi + 0xbbd28], 5
00000001405e4d36 jmp      0x1405e4d4e
00000001405e4d38 mov      dword ptr [rdi + 0xbbd28], 6
00000001405e4d42 jmp      0x1405e4d4e
00000001405e4d44 mov      dword ptr [rdi + 0xbbd28], 3
00000001405e4d4e mov      dword ptr [rdi + 0xbbd2c], 1
00000001405e4d58 mov      byte ptr [rdi + 0xbbd37], r13b
00000001405e4d5f lea      rcx, [r14 + 0x53e18]
00000001405e4d66 mov      byte ptr [rdi + 0xb04f9], r13b
00000001405e4d6d mov      byte ptr [rdi + 0xb04fb], r13b
00000001405e4d74 mov      dword ptr [rdi + 0xb0500], 0x13
00000001405e4d7e call     0x14014f2e0
00000001405e4d83 mov      rcx, rdi
00000001405e4d86 call     0x140029c84
00000001405e4d8b mov      rcx, rdi
00000001405e4d8e call     0x1400973cc
00000001405e4d93 test     al, al
00000001405e4d95 jne      0x1405e4dba
00000001405e4d97 xor      r9d, r9d
00000001405e4d9a xor      r8d, r8d
00000001405e4d9d mov      dl, 4
00000001405e4d9f mov      rcx, rdi
00000001405e4da2 call     0x1401546f4
00000001405e4da7 lea      rcx, [r14 + 0x53e18]
00000001405e4dae call     0x14014e18c
00000001405e4db3 mov      ebx, 0xc0000001
00000001405e4db8 jmp      0x1405e4dbd
00000001405e4dba mov      ebx, r13d
00000001405e4dbd mov      byte ptr [r15 + 0x6cc], r13b
00000001405e4dc4 mov      byte ptr [rdi + 0x1176c0], r13b
00000001405e4dcb mov      rcx, qword ptr [rip + 0x33b22e]
00000001405e4dd2 cmp      rcx, rsi
00000001405e4dd5 je       0x1405e4dfb
00000001405e4dd7 cmp      byte ptr [rcx + 0x29], 4
00000001405e4ddb jb       0x1405e4dfb
00000001405e4ddd test     dword ptr [rcx + 0x2c], 0x100
00000001405e4de4 je       0x1405e4dfb
00000001405e4de6 mov      rcx, qword ptr [rcx + 0x18]
00000001405e4dea lea      r8, [rip + 0x32153f]
00000001405e4df1 mov      edx, 0xa8
00000001405e4df6 call     0x140001b88
00000001405e4dfb mov      eax, ebx
00000001405e4dfd jmp      0x1405e4bc2