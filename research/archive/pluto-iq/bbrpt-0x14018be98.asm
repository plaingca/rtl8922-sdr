000000014018be98 mov      qword ptr [rsp + 8], rbx
000000014018be9d mov      qword ptr [rsp + 0x10], rbp
000000014018bea2 mov      qword ptr [rsp + 0x18], rsi
000000014018bea7 push     rdi
000000014018bea8 push     r12
000000014018beaa push     r13
000000014018beac push     r14
000000014018beae push     r15
000000014018beb0 sub      rsp, 0x50
000000014018beb4 mov      rax, qword ptr [rcx + 0xaf3b8]
000000014018bebb xor      r13d, r13d
000000014018bebe mov      rdi, rcx
000000014018bec1 mov      r14b, r13b
000000014018bec4 mov      bpl, r13b
000000014018bec7 mov      rsi, qword ptr [rax]
000000014018beca mov      rcx, qword ptr [rip + 0x79412f]
000000014018bed1 lea      rbx, [rip + 0x794128]
000000014018bed8 cmp      rcx, rbx
000000014018bedb je       0x14018bf4c
000000014018bedd cmp      byte ptr [rcx + 0x29], 4
000000014018bee1 jb       0x14018bf4c
000000014018bee3 test     dword ptr [rcx + 0x2c], 0x200
000000014018beea je       0x14018bf4c
000000014018beec movzx    r8d, word ptr [rdi + 0x5405d6]
000000014018bef4 lea      edx, [r13 + 0xd]
000000014018bef8 movzx    eax, byte ptr [rdi + 0x5405c7]
000000014018beff movzx    r10d, byte ptr [rdi + 0x5405d4]
000000014018bf07 movzx    r11d, byte ptr [rdi + 0x5405d0]
000000014018bf0f movzx    ebx, byte ptr [rdi + 0x5405d3]
000000014018bf16 movzx    r9d, byte ptr [rdi + 0x540539]
000000014018bf1e mov      rcx, qword ptr [rcx + 0x18]
000000014018bf22 mov      dword ptr [rsp + 0x40], eax
000000014018bf26 mov      dword ptr [rsp + 0x38], r8d
000000014018bf2b lea      r8, [rip + 0x5091de]
000000014018bf32 mov      dword ptr [rsp + 0x30], r10d
000000014018bf37 mov      dword ptr [rsp + 0x28], r11d
000000014018bf3c mov      dword ptr [rsp + 0x20], ebx
000000014018bf40 call     0x1400087f4
000000014018bf45 lea      rbx, [rip + 0x7940b4]
000000014018bf4c mov      rcx, rdi
000000014018bf4f call     0x1400b32fc
000000014018bf54 test     al, al
000000014018bf56 jne      0x14018bf99
000000014018bf58 mov      rcx, qword ptr [rip + 0x7940a1]
000000014018bf5f cmp      rcx, rbx
000000014018bf62 je       0x14018c222
000000014018bf68 cmp      byte ptr [rcx + 0x29], 4
000000014018bf6c jb       0x14018c1e0
000000014018bf72 test     dword ptr [rcx + 0x2c], 0x200
000000014018bf79 je       0x14018c1e0
000000014018bf7f mov      edx, 0xe
000000014018bf84 mov      rcx, qword ptr [rcx + 0x18]
000000014018bf88 lea      r8, [rip + 0x509181]
000000014018bf8f call     0x140001b88
000000014018bf94 jmp      0x14018c1e0
000000014018bf99 cmp      byte ptr [rdi + 0x540539], r13b
000000014018bfa0 je       0x14018c288
000000014018bfa6 cmp      byte ptr [rdi + 0x5405c7], r13b
000000014018bfad je       0x14018c288
000000014018bfb3 cmp      byte ptr [rdi + 0x5405d3], r13b
000000014018bfba jne      0x14018bfea
000000014018bfbc mov      rcx, qword ptr [rip + 0x79403d]
000000014018bfc3 cmp      rcx, rbx
000000014018bfc6 je       0x14018c222
000000014018bfcc cmp      byte ptr [rcx + 0x29], 4
000000014018bfd0 jb       0x14018c1e0
000000014018bfd6 test     dword ptr [rcx + 0x2c], 0x200
000000014018bfdd je       0x14018c1e0
000000014018bfe3 mov      edx, 0x10
000000014018bfe8 jmp      0x14018bf84
000000014018bfea cmp      byte ptr [rdi + 0x5405d4], 1
000000014018bff1 jne      0x14018c024
000000014018bff3 mov      rcx, qword ptr [rip + 0x794006]
000000014018bffa cmp      rcx, rbx
000000014018bffd je       0x14018c222
000000014018c003 cmp      byte ptr [rcx + 0x29], 4
000000014018c007 jb       0x14018c1e0
000000014018c00d test     dword ptr [rcx + 0x2c], 0x200
000000014018c014 je       0x14018c1e0
000000014018c01a mov      edx, 0x11
000000014018c01f jmp      0x14018bf84
000000014018c024 lea      r15, [rsi + 0x51730]
000000014018c02b mov      rcx, r15
000000014018c02e lea      rdx, [rip + 0x48190b]
000000014018c035 call     0x140031478
000000014018c03a add      rsi, 0x51720
000000014018c041 mov      rax, qword ptr [rsi]
000000014018c044 mov      rbx, qword ptr [rax]
000000014018c047 jmp      0x14018c0f9
000000014018c04c mov      rcx, rax
000000014018c04f call     0x14008a578
000000014018c054 test     rax, rax
000000014018c057 je       0x14018c0f3
000000014018c05d cmp      byte ptr [rax + 0x1530], r13b
000000014018c064 jne      0x14018c0a2
000000014018c066 mov      rcx, qword ptr [rip + 0x793f93]
000000014018c06d lea      rax, [rip + 0x793f8c]
000000014018c074 cmp      rcx, rax
000000014018c077 je       0x14018c09d
000000014018c079 cmp      byte ptr [rcx + 0x29], 4
000000014018c07d jb       0x14018c09d
000000014018c07f test     dword ptr [rcx + 0x2c], 0x200
000000014018c086 je       0x14018c09d
000000014018c088 mov      rcx, qword ptr [rcx + 0x18]
000000014018c08c lea      r8, [rip + 0x50907d]
000000014018c093 mov      edx, 0x12
000000014018c098 call     0x140001b88
000000014018c09d mov      r14b, 1
000000014018c0a0 jmp      0x14018c0ea
000000014018c0a2 cmp      byte ptr [rax + 0x157c], 1
000000014018c0a9 jne      0x14018c0e5
000000014018c0ab mov      rcx, qword ptr [rip + 0x793f4e]
000000014018c0b2 lea      rax, [rip + 0x793f47]
000000014018c0b9 cmp      rcx, rax
000000014018c0bc je       0x14018c0e2
000000014018c0be cmp      byte ptr [rcx + 0x29], 4
000000014018c0c2 jb       0x14018c0e2
000000014018c0c4 test     dword ptr [rcx + 0x2c], 0x200
000000014018c0cb je       0x14018c0e2
000000014018c0cd mov      rcx, qword ptr [rcx + 0x18]
000000014018c0d1 lea      r8, [rip + 0x509038]
000000014018c0d8 mov      edx, 0x13
000000014018c0dd call     0x140001b88
000000014018c0e2 mov      bpl, 1
000000014018c0e5 test     r14b, r14b
000000014018c0e8 je       0x14018c0f3
000000014018c0ea test     bpl, bpl
000000014018c0ed jne      0x14018c240
000000014018c0f3 mov      rax, rbx
000000014018c0f6 mov      rbx, qword ptr [rbx]
000000014018c0f9 cmp      rsi, rax
000000014018c0fc jne      0x14018c04c
000000014018c102 lea      rsi, [rip + 0x793ef7]
000000014018c109 lea      rdx, [rip + 0x481830]
000000014018c110 mov      rcx, r15
000000014018c113 call     0x140031684
000000014018c118 mov      word ptr [rdi + 0x5405d8], r13w
000000014018c120 call     0x140031188
000000014018c125 mov      rbx, rax
000000014018c128 test     r14b, r14b
000000014018c12b jne      0x14018c136
000000014018c12d test     bpl, bpl
000000014018c130 je       0x14018c1d9
000000014018c136 mov      r8, qword ptr [rdi + 0x5405e0]
000000014018c13d test     r8, r8
000000014018c140 je       0x14018c16d
000000014018c142 movzx    ecx, word ptr [rdi + 0x5405d6]
000000014018c149 mov      eax, 0x55555556
000000014018c14e add      ecx, ecx
000000014018c150 imul     ecx
000000014018c152 mov      eax, edx
000000014018c154 shr      eax, 0x1f
000000014018c157 add      edx, eax
000000014018c159 imul     eax, edx, 0xf4240
000000014018c15f movsxd   rcx, eax
000000014018c162 mov      rax, rbx
000000014018c165 sub      rax, r8
000000014018c168 cmp      rax, rcx
000000014018c16b jbe      0x14018c1d9
000000014018c16d mov      rcx, qword ptr [rip + 0x793e8c]
000000014018c174 cmp      rcx, rsi
000000014018c177 je       0x14018c1b8
000000014018c179 cmp      byte ptr [rcx + 0x29], 4
000000014018c17d jb       0x14018c1b8
000000014018c17f test     dword ptr [rcx + 0x2c], 0x200
000000014018c186 je       0x14018c1b8
000000014018c188 mov      rcx, qword ptr [rcx + 0x18]
000000014018c18c lea      r8, [rip + 0x508f7d]
000000014018c193 mov      r10d, ebx
000000014018c196 movzx    eax, bpl
000000014018c19a sub      r10d, dword ptr [rdi + 0x5405e0]
000000014018c1a1 mov      edx, 0x15
000000014018c1a6 mov      dword ptr [rsp + 0x28], r10d
000000014018c1ab movzx    r9d, r14b
000000014018c1af mov      dword ptr [rsp + 0x20], eax
000000014018c1b3 call     0x140001c34
000000014018c1b8 mov      r9b, bpl
000000014018c1bb mov      qword ptr [rdi + 0x5405e0], rbx
000000014018c1c2 mov      r8b, r14b
000000014018c1c5 mov      byte ptr [rsp + 0x20], r13b
000000014018c1ca lea      rdx, [rdi + 0x53f360]
000000014018c1d1 mov      rcx, rdi
000000014018c1d4 call     0x14018bda8
000000014018c1d9 lea      rbx, [rip + 0x793e20]
000000014018c1e0 mov      rcx, qword ptr [rip + 0x793e19]
000000014018c1e7 cmp      rcx, rbx
000000014018c1ea je       0x14018c222
000000014018c1ec cmp      byte ptr [rcx + 0x29], 4
000000014018c1f0 jb       0x14018c222
000000014018c1f2 test     dword ptr [rcx + 0x2c], 0x200
000000014018c1f9 je       0x14018c222
000000014018c1fb mov      eax, dword ptr [rdi + 0x5405e0]
000000014018c201 lea      r8, [rip + 0x508f08]
000000014018c208 movzx    r9d, word ptr [rdi + 0x5405d8]
000000014018c210 mov      edx, 0x16
000000014018c215 mov      rcx, qword ptr [rcx + 0x18]
000000014018c219 mov      dword ptr [rsp + 0x20], eax
000000014018c21d call     0x140001bec
000000014018c222 lea      r11, [rsp + 0x50]
000000014018c227 mov      rbx, qword ptr [r11 + 0x30]
000000014018c22b mov      rbp, qword ptr [r11 + 0x38]
000000014018c22f mov      rsi, qword ptr [r11 + 0x40]
000000014018c233 mov      rsp, r11
000000014018c236 pop      r15
000000014018c238 pop      r14
000000014018c23a pop      r13
000000014018c23c pop      r12
000000014018c23e pop      rdi
000000014018c23f ret      
000000014018c240 mov      rcx, qword ptr [rip + 0x793db9]
000000014018c247 lea      rsi, [rip + 0x793db2]
000000014018c24e cmp      rcx, rsi
000000014018c251 je       0x14018c109
000000014018c257 cmp      byte ptr [rcx + 0x29], 4
000000014018c25b jb       0x14018c109
000000014018c261 test     dword ptr [rcx + 0x2c], 0x200
000000014018c268 je       0x14018c109
000000014018c26e mov      rcx, qword ptr [rcx + 0x18]
000000014018c272 lea      r8, [rip + 0x508e97]
000000014018c279 mov      edx, 0x14
000000014018c27e call     0x140001b88
000000014018c283 jmp      0x14018c109
000000014018c288 mov      rcx, qword ptr [rip + 0x793d71]
000000014018c28f cmp      rcx, rbx
000000014018c292 je       0x14018c222
000000014018c294 cmp      byte ptr [rcx + 0x29], 4
000000014018c298 jb       0x14018c1e0
000000014018c29e test     dword ptr [rcx + 0x2c], 0x200
000000014018c2a5 je       0x14018c1e0
000000014018c2ab mov      edx, 0xf
000000014018c2b0 jmp      0x14018bf84