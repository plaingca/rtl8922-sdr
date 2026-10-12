00000001403dc9c8 mov      qword ptr [rsp + 8], rbx
00000001403dc9cd mov      qword ptr [rsp + 0x10], rsi
00000001403dc9d2 mov      qword ptr [rsp + 0x18], rdi
00000001403dc9d7 push     r14
00000001403dc9d9 sub      rsp, 0x40
00000001403dc9dd mov      rbx, qword ptr [rcx + 0x9a0]
00000001403dc9e4 mov      rdi, rcx
00000001403dc9e7 mov      rcx, qword ptr [rip + 0x543612]
00000001403dc9ee lea      r14, [rip + 0x54360b]
00000001403dc9f5 cmp      rcx, r14
00000001403dc9f8 je       0x1403dca4c
00000001403dc9fa cmp      byte ptr [rcx + 0x169], 4
00000001403dca01 jb       0x1403dca4c
00000001403dca03 test     dword ptr [rcx + 0x16c], 0x1000
00000001403dca0d je       0x1403dca4c
00000001403dca0f mov      eax, dword ptr [rdi + 0x998]
00000001403dca15 lea      r9, [rip + 0x26fa44]
00000001403dca1c mov      rcx, qword ptr [rcx + 0x158]
00000001403dca23 lea      r8, [rip + 0x2f87ee]
00000001403dca2a mov      dword ptr [rsp + 0x30], eax
00000001403dca2e mov      edx, 0x3f
00000001403dca33 mov      eax, dword ptr [rbx + 0x148c]
00000001403dca39 mov      dword ptr [rsp + 0x28], eax
00000001403dca3d mov      eax, dword ptr [rbx + 0x1348]
00000001403dca43 mov      dword ptr [rsp + 0x20], eax
00000001403dca47 call     0x14001c670
00000001403dca4c xor      esi, esi
00000001403dca4e cmp      byte ptr [rbx + 0x1444], sil
00000001403dca55 jne      0x1403dcab4
00000001403dca57 lea      edx, [rsi + 5]
00000001403dca5a mov      rcx, rdi
00000001403dca5d call     0x1403db3d4
00000001403dca62 mov      byte ptr [rbx + 0x1444], al
00000001403dca68 test     al, al
00000001403dca6a jne      0x1403dcab4
00000001403dca6c mov      rcx, qword ptr [rip + 0x54358d]
00000001403dca73 cmp      rcx, r14
00000001403dca76 je       0x1403dcb3c
00000001403dca7c cmp      byte ptr [rcx + 0x169], 3
00000001403dca83 jb       0x1403dcb3c
00000001403dca89 test     dword ptr [rcx + 0x16c], 0x1000
00000001403dca93 je       0x1403dcb3c
00000001403dca99 lea      edx, [rsi + 0x40]
00000001403dca9c mov      rcx, qword ptr [rcx + 0x158]
00000001403dcaa3 lea      r8, [rip + 0x2f876e]
00000001403dcaaa call     0x140001b88
00000001403dcaaf jmp      0x1403dcb3c
00000001403dcab4 cmp      dword ptr [rbx + 0x1348], esi
00000001403dcaba je       0x1403dcad2
00000001403dcabc mov      rax, qword ptr [rdi + 0x9a0]
00000001403dcac3 mov      dword ptr [rax + 0x1348], esi
00000001403dcac9 mov      byte ptr [rax + 0x13c9], sil
00000001403dcad0 jmp      0x1403dcb3c
00000001403dcad2 cmp      dword ptr [rbx + 0x1330], esi
00000001403dcad8 jne      0x1403dcb0e
00000001403dcada mov      rcx, rdi
00000001403dcadd call     0x1403db170
00000001403dcae2 test     al, al
00000001403dcae4 jne      0x1403dcb0e
00000001403dcae6 mov      rcx, qword ptr [rip + 0x543513]
00000001403dcaed cmp      rcx, r14
00000001403dcaf0 je       0x1403dcb3c
00000001403dcaf2 cmp      byte ptr [rcx + 0x169], 3
00000001403dcaf9 jb       0x1403dcb3c
00000001403dcafb test     dword ptr [rcx + 0x16c], 0x1000
00000001403dcb05 je       0x1403dcb3c
00000001403dcb07 mov      edx, 0x41
00000001403dcb0c jmp      0x1403dca9c
00000001403dcb0e mov      edx, dword ptr [rbx + 0x1334]
00000001403dcb14 xor      r8d, r8d
00000001403dcb17 mov      rcx, qword ptr [rbx + 0x1328]
00000001403dcb1e call     0x140031144
00000001403dcb23 mov      rcx, rdi
00000001403dcb26 mov      word ptr [rbx + 0x13ca], si
00000001403dcb2d mov      dword ptr [rbx + 0x1348], 1
00000001403dcb37 call     0x1403dbb18
00000001403dcb3c mov      rbx, qword ptr [rsp + 0x50]
00000001403dcb41 mov      rsi, qword ptr [rsp + 0x58]
00000001403dcb46 mov      rdi, qword ptr [rsp + 0x60]
00000001403dcb4b add      rsp, 0x40
00000001403dcb4f pop      r14
00000001403dcb51 ret      