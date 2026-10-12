0000000140177d44 mov      qword ptr [rsp + 8], rbx
0000000140177d49 mov      qword ptr [rsp + 0x10], rsi
0000000140177d4e push     rdi
0000000140177d4f sub      rsp, 0x30
0000000140177d53 movzx    esi, dl
0000000140177d56 mov      rbx, rcx
0000000140177d59 mov      dl, 2
0000000140177d5b movzx    edi, r8b
0000000140177d5f call     0x14005de30
0000000140177d64 mov      edx, 2
0000000140177d69 mov      rcx, rbx
0000000140177d6c call     0x14005ddc8
0000000140177d71 mov      dl, sil
0000000140177d74 mov      rcx, rbx
0000000140177d77 call     0x14005de30
0000000140177d7c mov      dl, dil
0000000140177d7f mov      rcx, rbx
0000000140177d82 call     0x14005de30
0000000140177d87 lea      rax, [rip + 0x7a8272]
0000000140177d8e cmp      qword ptr [rip + 0x7a826b], rax
0000000140177d95 je       0x140177ddb
0000000140177d97 mov      rcx, rbx
0000000140177d9a call     0x14005df40
0000000140177d9f mov      rcx, qword ptr [rip + 0x7a825a]
0000000140177da6 movzx    edx, byte ptr [rcx + 0x69]
0000000140177daa cmp      edx, eax
0000000140177dac jb       0x140177ddb
0000000140177dae test     dword ptr [rcx + 0x6c], 0x800
0000000140177db5 je       0x140177ddb
0000000140177db7 mov      rcx, qword ptr [rcx + 0x58]
0000000140177dbb lea      r9, [rip + 0x49531e]
0000000140177dc2 mov      edx, 0xb
0000000140177dc7 mov      dword ptr [rsp + 0x28], edi
0000000140177dcb lea      r8, [rip + 0x51cda6]
0000000140177dd2 mov      dword ptr [rsp + 0x20], esi
0000000140177dd6 call     0x140002b04
0000000140177ddb mov      rbx, qword ptr [rsp + 0x40]
0000000140177de0 mov      rsi, qword ptr [rsp + 0x48]
0000000140177de5 add      rsp, 0x30
0000000140177de9 pop      rdi
0000000140177dea ret      