0000000140177ee4 mov      qword ptr [rsp + 8], rbx
0000000140177ee9 mov      qword ptr [rsp + 0x10], rsi
0000000140177eee push     rdi
0000000140177eef sub      rsp, 0x30
0000000140177ef3 movzx    esi, dl
0000000140177ef6 mov      rbx, rcx
0000000140177ef9 mov      dl, 5
0000000140177efb movzx    edi, r8b
0000000140177eff call     0x14005de30
0000000140177f04 mov      edx, 2
0000000140177f09 mov      rcx, rbx
0000000140177f0c call     0x14005ddc8
0000000140177f11 mov      dl, sil
0000000140177f14 mov      rcx, rbx
0000000140177f17 call     0x14005de30
0000000140177f1c mov      dl, dil
0000000140177f1f mov      rcx, rbx
0000000140177f22 call     0x14005de30
0000000140177f27 lea      rax, [rip + 0x7a80d2]
0000000140177f2e cmp      qword ptr [rip + 0x7a80cb], rax
0000000140177f35 je       0x140177f7b
0000000140177f37 mov      rcx, rbx
0000000140177f3a call     0x14005df40
0000000140177f3f mov      rcx, qword ptr [rip + 0x7a80ba]
0000000140177f46 movzx    edx, byte ptr [rcx + 0x69]
0000000140177f4a cmp      edx, eax
0000000140177f4c jb       0x140177f7b
0000000140177f4e test     dword ptr [rcx + 0x6c], 0x800
0000000140177f55 je       0x140177f7b
0000000140177f57 mov      rcx, qword ptr [rcx + 0x58]
0000000140177f5b lea      r9, [rip + 0x49517e]
0000000140177f62 mov      edx, 0xd
0000000140177f67 mov      dword ptr [rsp + 0x28], edi
0000000140177f6b lea      r8, [rip + 0x51cc06]
0000000140177f72 mov      dword ptr [rsp + 0x20], esi
0000000140177f76 call     0x140002b04
0000000140177f7b mov      rbx, qword ptr [rsp + 0x40]
0000000140177f80 mov      rsi, qword ptr [rsp + 0x48]
0000000140177f85 add      rsp, 0x30
0000000140177f89 pop      rdi
0000000140177f8a ret      