000000014011bd90 mov      qword ptr [rsp + 0x10], rbx
000000014011bd95 mov      qword ptr [rsp + 0x18], rbp
000000014011bd9a mov      qword ptr [rsp + 0x20], rsi
000000014011bd9f push     rdi
000000014011bda0 push     r12
000000014011bda2 push     r13
000000014011bda4 push     r14
000000014011bda6 push     r15
000000014011bda8 sub      rsp, 0x30
000000014011bdac mov      rax, qword ptr [rcx + 0x3d30]
000000014011bdb3 lea      r14, [rcx + 0x44c8]
000000014011bdba mov      qword ptr [rsp + 0x60], rax
000000014011bdbf mov      r15, rdx
000000014011bdc2 mov      rdi, rcx
000000014011bdc5 mov      rax, qword ptr [rax + 0xaf3b8]
000000014011bdcc mov      rsi, qword ptr [rax]
000000014011bdcf mov      eax, dword ptr [rdx + 0x5b0]
000000014011bdd5 add      rsi, 0x18
000000014011bdd9 xor      r12b, r12b
000000014011bddc mov      dword ptr [rcx + 0x14], eax
000000014011bddf lea      rbp, [rsi + 0x20700]
000000014011bde6 mov      rcx, qword ptr [rip + 0x804213]
000000014011bded lea      r13, [rip + 0x80420c]
000000014011bdf4 cmp      rcx, r13
000000014011bdf7 je       0x14011be6f
000000014011bdf9 cmp      byte ptr [rcx + 0x29], 4
000000014011bdfd jb       0x14011be24
000000014011bdff test     dword ptr [rcx + 0x2c], 0x200
000000014011be06 je       0x14011be24
000000014011be08 mov      r9d, dword ptr [r15 + 0x5b0]
000000014011be0f lea      r8, [rip + 0x5777c2]
000000014011be16 mov      rcx, qword ptr [rcx + 0x18]
000000014011be1a mov      edx, 0x36
000000014011be1f call     0x140001bb0
000000014011be24 mov      rbx, qword ptr [rip + 0x8041d5]
000000014011be2b cmp      rbx, r13
000000014011be2e je       0x14011be6f
000000014011be30 cmp      byte ptr [rbx + 0x29], 4
000000014011be34 jb       0x14011be6f
000000014011be36 test     dword ptr [rbx + 0x2c], 0x200
000000014011be3d je       0x14011be6f
000000014011be3f mov      cl, byte ptr [rdi + 0x14]
000000014011be42 call     0x14011de9c
000000014011be47 mov      r9d, dword ptr [rdi + 0x10]
000000014011be4b lea      r8, [rip + 0x577786]
000000014011be52 mov      rcx, qword ptr [rbx + 0x18]
000000014011be56 mov      edx, 0x37
000000014011be5b mov      qword ptr [rsp + 0x28], rax
000000014011be60 mov      eax, dword ptr [rdi + 0x3d40]
000000014011be66 mov      dword ptr [rsp + 0x20], eax
000000014011be6a call     0x14003e444
000000014011be6f lea      r13, [rdi + 0xda8]
000000014011be76 lea      rbx, [rbp + 0x58]
000000014011be7a mov      rcx, qword ptr [rsp + 0x60]
000000014011be7f call     0x1400b4dec
000000014011be84 mov      rcx, qword ptr [rsp + 0x60]
000000014011be89 call     0x14009396c
000000014011be8e xor      r8d, r8d
000000014011be91 mov      dl, 3
000000014011be93 cmp      byte ptr [rdi + 0xda4], r8b
000000014011be9a je       0x14011beda
000000014011be9c mov      rcx, r13
000000014011be9f call     0x14011db64
000000014011bea4 mov      dl, 1
000000014011bea6 mov      rcx, r13
000000014011bea9 call     0x14011dce0
000000014011beae test     r14, r14
000000014011beb1 je       0x14011becc
000000014011beb3 mov      rax, qword ptr [r14 + 0x38]
000000014011beb7 test     rax, rax
000000014011beba je       0x14011becc
000000014011bebc mov      rcx, qword ptr [rdi + 0x3d38]
000000014011bec3 mov      rdx, rdi
000000014011bec6 call     qword ptr [rip + 0x56842c]
000000014011becc cmp      byte ptr [rdi + 0xda5], 0
000000014011bed3 jne      0x14011bf42
000000014011bed5 xor      r8d, r8d
000000014011bed8 mov      dl, 3
000000014011beda lea      rcx, [rdi + 0x18]
000000014011bede call     0x14011db64
000000014011bee3 xor      edx, edx
000000014011bee5 lea      rcx, [rdi + 0x18]
000000014011bee9 call     0x14011dce0
000000014011beee lea      rbx, [rdi + 0x45c8]
000000014011bef5 mov      edx, 0x4f
000000014011befa mov      rcx, rbx
000000014011befd call     0x140031290
000000014011bf02 mov      r8d, 0x4f
000000014011bf08 lea      rdx, [rsi + 0x20cb0]
000000014011bf0f mov      rcx, rbx
000000014011bf12 call     0x1400311e8
000000014011bf17 lea      rdx, [rdi + 0xcd0]
000000014011bf1e mov      rcx, rsi
000000014011bf21 call     0x14011db0c
000000014011bf26 mov      al, byte ptr [rdi + 0x45c4]
000000014011bf2c lea      rbx, [rbp + 0x58]
000000014011bf30 mov      byte ptr [rsi + 0x516c0], al
000000014011bf36 mov      al, byte ptr [rdi + 0x461c]
000000014011bf3c mov      byte ptr [rsi + 0x516c1], al
000000014011bf42 mov      edx, dword ptr [r15 + 0x16c]
000000014011bf49 mov      rcx, qword ptr [r15 + 0x160]
000000014011bf50 call     0x140031160
000000014011bf55 and      qword ptr [r15 + 0x160], 0
000000014011bf5d lea      rdx, [rip + 0x4e92bc]
000000014011bf64 and      dword ptr [r15 + 0x16c], 0
000000014011bf6c mov      rcx, rbx
000000014011bf6f call     0x140031478
000000014011bf74 mov      rdx, rdi
000000014011bf77 lea      rcx, [rbp + 0xa0]
000000014011bf7e call     0x1400ab3c4
000000014011bf83 test     al, al
000000014011bf85 jne      0x14011bf90
000000014011bf87 test     r12b, r12b
000000014011bf8a je       0x14011c0c0
000000014011bf90 mov      rcx, qword ptr [rip + 0x804069]
000000014011bf97 lea      rax, [rip + 0x804062]
000000014011bf9e cmp      rcx, rax
000000014011bfa1 je       0x14011bfd5
000000014011bfa3 cmp      byte ptr [rcx + 0x29], 4
000000014011bfa7 jb       0x14011bfd5
000000014011bfa9 test     dword ptr [rcx + 0x2c], 0x200
000000014011bfb0 je       0x14011bfd5
000000014011bfb2 mov      eax, dword ptr [rdi + 0x3d40]
000000014011bfb8 lea      r8, [rip + 0x577619]
000000014011bfbf mov      r9d, dword ptr [rdi + 0x10]
000000014011bfc3 mov      edx, 0x38
000000014011bfc8 mov      rcx, qword ptr [rcx + 0x18]
000000014011bfcc mov      dword ptr [rsp + 0x20], eax
000000014011bfd0 call     0x140001bec
000000014011bfd5 xor      r12d, r12d
000000014011bfd8 cmp      byte ptr [rdi + 0xda4], r12b
000000014011bfdf je       0x14011c127
000000014011bfe5 cmp      byte ptr [rdi + 0xda5], r12b
000000014011bfec je       0x14011c127
000000014011bff2 mov      edx, 0xd88
000000014011bff7 mov      rcx, r13
000000014011bffa call     0x140031290
000000014011bfff test     r14, r14
000000014011c002 je       0x14011c127
000000014011c008 mov      rax, qword ptr [r14 + 0x40]
000000014011c00c test     rax, rax
000000014011c00f je       0x14011c127
000000014011c015 mov      rcx, qword ptr [rdi + 0x3d38]
000000014011c01c mov      rdx, rdi
000000014011c01f call     qword ptr [rip + 0x5682d3]
000000014011c025 inc      dword ptr [rdi + 0xda0]
000000014011c02b lea      eax, [r12 + 1]
000000014011c030 lock xadd dword ptr [rbp + 0x54], eax
000000014011c035 xor      r8d, r8d
000000014011c038 mov      dword ptr [rdi + 0x10], eax
000000014011c03b mov      dl, 1
000000014011c03d mov      rcx, r13
000000014011c040 call     0x14011db64
000000014011c045 cmp      byte ptr [rdi + 0x3d44], r12b
000000014011c04c jne      0x14011c113
000000014011c052 mov      rcx, qword ptr [rip + 0x803fa7]
000000014011c059 lea      rax, [rip + 0x803fa0]
000000014011c060 cmp      rcx, rax
000000014011c063 je       0x14011c089
000000014011c065 cmp      byte ptr [rcx + 0x29], 3
000000014011c069 jb       0x14011c089
000000014011c06b test     dword ptr [rcx + 0x2c], 0x200
000000014011c072 je       0x14011c089
000000014011c074 mov      rcx, qword ptr [rcx + 0x18]
000000014011c078 lea      edx, [r12 + 0x39]
000000014011c07d lea      r8, [rip + 0x577554]
000000014011c084 call     0x140001b88
000000014011c089 mov      dword ptr [rdi + 0x14], 2
000000014011c090 mov      r12b, 1
000000014011c093 mov      rax, qword ptr [r14 + 0x30]
000000014011c097 test     rax, rax
000000014011c09a je       0x14011c0ac
000000014011c09c mov      rcx, qword ptr [rdi + 0x3d38]
000000014011c0a3 mov      rdx, rdi
000000014011c0a6 call     qword ptr [rip + 0x56824c]
000000014011c0ac lea      rdx, [rip + 0x4e916d]
000000014011c0b3 mov      rcx, rbx
000000014011c0b6 call     0x140031684
000000014011c0bb jmp      0x14011be7a
000000014011c0c0 mov      rcx, qword ptr [rip + 0x803f39]
000000014011c0c7 lea      rax, [rip + 0x803f32]
000000014011c0ce cmp      rcx, rax
000000014011c0d1 je       0x14011c177
000000014011c0d7 cmp      byte ptr [rcx + 0x29], 4
000000014011c0db jb       0x14011c177
000000014011c0e1 test     dword ptr [rcx + 0x2c], 0x200
000000014011c0e8 je       0x14011c177
000000014011c0ee mov      eax, dword ptr [rdi + 0x3d40]
000000014011c0f4 lea      r8, [rip + 0x5774dd]
000000014011c0fb mov      r9d, dword ptr [rdi + 0x10]
000000014011c0ff mov      edx, 0x3b
000000014011c104 mov      rcx, qword ptr [rcx + 0x18]
000000014011c108 mov      dword ptr [rsp + 0x20], eax
000000014011c10c call     0x140001bec
000000014011c111 jmp      0x14011c177
000000014011c113 lea      rcx, [rbp + 0xe0]
000000014011c11a xor      r8d, r8d
000000014011c11d mov      rdx, rdi
000000014011c120 call     0x1400ab498
000000014011c125 jmp      0x14011c177
000000014011c127 mov      rcx, qword ptr [rip + 0x803ed2]
000000014011c12e lea      rax, [rip + 0x803ecb]
000000014011c135 cmp      rcx, rax
000000014011c138 je       0x14011c16c
000000014011c13a cmp      byte ptr [rcx + 0x29], 4
000000014011c13e jb       0x14011c16c
000000014011c140 test     dword ptr [rcx + 0x2c], 0x200
000000014011c147 je       0x14011c16c
000000014011c149 mov      eax, dword ptr [rdi + 0x3d40]
000000014011c14f lea      r8, [rip + 0x577482]
000000014011c156 mov      r9d, dword ptr [rdi + 0x10]
000000014011c15a mov      edx, 0x3a
000000014011c15f mov      rcx, qword ptr [rcx + 0x18]
000000014011c163 mov      dword ptr [rsp + 0x20], eax
000000014011c167 call     0x140001bec
000000014011c16c mov      rdx, rdi
000000014011c16f mov      rcx, rsi
000000014011c172 call     0x14011d190
000000014011c177 mov      rcx, rbp
000000014011c17a call     0x14011d268
000000014011c17f lea      rdx, [rip + 0x4e909a]
000000014011c186 mov      rcx, rbx
000000014011c189 call     0x140031684
000000014011c18e mov      rbx, qword ptr [rsp + 0x68]
000000014011c193 mov      eax, 1
000000014011c198 mov      rbp, qword ptr [rsp + 0x70]
000000014011c19d mov      rsi, qword ptr [rsp + 0x78]
000000014011c1a2 add      rsp, 0x30
000000014011c1a6 pop      r15
000000014011c1a8 pop      r14
000000014011c1aa pop      r13
000000014011c1ac pop      r12
000000014011c1ae pop      rdi
000000014011c1af ret      