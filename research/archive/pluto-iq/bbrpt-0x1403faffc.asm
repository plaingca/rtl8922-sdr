00000001403faffc mov      rax, rsp
00000001403fafff mov      qword ptr [rax + 0x10], rbx
00000001403fb003 mov      qword ptr [rax + 0x18], rbp
00000001403fb007 mov      qword ptr [rax + 0x20], rsi
00000001403fb00b push     rdi
00000001403fb00c push     r12
00000001403fb00e push     r14
00000001403fb010 sub      rsp, 0x30
00000001403fb014 mov      rbx, rdx
00000001403fb017 mov      rbp, rcx
00000001403fb01a mov      rcx, qword ptr [rip + 0x524fdf]
00000001403fb021 lea      r12, [rip + 0x524fd8]
00000001403fb028 mov      r14d, 4
00000001403fb02e cmp      rcx, r12
00000001403fb031 je       0x1403fb066
00000001403fb033 cmp      byte ptr [rcx + 0x1e9], r14b
00000001403fb03a jb       0x1403fb066
00000001403fb03c test     dword ptr [rcx + 0x1ec], 0x100
00000001403fb046 je       0x1403fb066
00000001403fb048 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403fb04f lea      edx, [r14 + 0x3c]
00000001403fb053 mov      r9d, r14d
00000001403fb056 mov      dword ptr [rax - 0x28], r14d
00000001403fb05a lea      r8, [rip + 0x2db2cf]
00000001403fb061 call     0x140001bec
00000001403fb066 lea      rcx, [rip + 0x22fd83]
00000001403fb06d call     0x14007dbe0
00000001403fb072 xor      esi, esi
00000001403fb074 lea      rdx, [rsp + 0x50]
00000001403fb079 mov      r8d, r14d
00000001403fb07c mov      qword ptr [rsp + 0x50], rsi
00000001403fb081 mov      ecx, eax
00000001403fb083 call     0x1400310f0
00000001403fb088 test     eax, eax
00000001403fb08a jne      0x1403fb126
00000001403fb090 mov      rcx, qword ptr [rsp + 0x50]
00000001403fb095 mov      edx, r14d
00000001403fb098 call     0x140031290
00000001403fb09d mov      rdi, qword ptr [rsp + 0x50]
00000001403fb0a2 test     rdi, rdi
00000001403fb0a5 je       0x1403fb126
00000001403fb0a7 mov      al, byte ptr [rbx]
00000001403fb0a9 mov      byte ptr [rdi], al
00000001403fb0ab mov      al, byte ptr [rbx + 2]
00000001403fb0ae mov      byte ptr [rdi + 1], al
00000001403fb0b1 mov      rcx, qword ptr [rip + 0x524f48]
00000001403fb0b8 cmp      rcx, r12
00000001403fb0bb je       0x1403fb0f9
00000001403fb0bd cmp      byte ptr [rcx + 0x1e9], r14b
00000001403fb0c4 jb       0x1403fb0f9
00000001403fb0c6 test     dword ptr [rcx + 0x1ec], 0x100
00000001403fb0d0 je       0x1403fb0f9
00000001403fb0d2 mov      eax, dword ptr [rdi + 8]
00000001403fb0d5 lea      edx, [rsi + 0x41]
00000001403fb0d8 mov      r9d, dword ptr [rdi]
00000001403fb0db lea      r8, [rip + 0x2db24e]
00000001403fb0e2 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403fb0e9 mov      dword ptr [rsp + 0x28], eax
00000001403fb0ed mov      eax, dword ptr [rdi + 4]
00000001403fb0f0 mov      dword ptr [rsp + 0x20], eax
00000001403fb0f4 call     0x140001c34
00000001403fb0f9 mov      edx, r14d
00000001403fb0fc mov      qword ptr [rsp + 0x20], rdi
00000001403fb101 xor      r9d, r9d
00000001403fb104 mov      r8b, r14b
00000001403fb107 mov      rcx, rbp
00000001403fb10a call     0x140315800
00000001403fb10f mov      edx, r14d
00000001403fb112 mov      rcx, rdi
00000001403fb115 mov      bl, al
00000001403fb117 call     0x140031160
00000001403fb11c test     bl, bl
00000001403fb11e sete     sil
00000001403fb122 mov      eax, esi
00000001403fb124 jmp      0x1403fb12b
00000001403fb126 mov      eax, 1
00000001403fb12b mov      rbx, qword ptr [rsp + 0x58]
00000001403fb130 mov      rbp, qword ptr [rsp + 0x60]
00000001403fb135 mov      rsi, qword ptr [rsp + 0x68]
00000001403fb13a add      rsp, 0x30
00000001403fb13e pop      r14
00000001403fb140 pop      r12
00000001403fb142 pop      rdi
00000001403fb143 ret      