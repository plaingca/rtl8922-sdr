00000001403d6660 mov      qword ptr [rsp + 8], rbx
00000001403d6665 mov      qword ptr [rsp + 0x10], rsi
00000001403d666a mov      qword ptr [rsp + 0x18], rdi
00000001403d666f push     r15
00000001403d6671 sub      rsp, 0x30
00000001403d6675 mov      rdi, qword ptr [rcx + 0x9a0]
00000001403d667c mov      rbx, rcx
00000001403d667f lea      r15, [rip + 0x54997a]
00000001403d6686 mov      esi, dword ptr [rdi + 0x1350]
00000001403d668c test     dl, dl
00000001403d668e je       0x1403d66cc
00000001403d6690 mov      esi, 0xf
00000001403d6695 mov      rcx, qword ptr [rip + 0x549964]
00000001403d669c cmp      rcx, r15
00000001403d669f je       0x1403d66cc
00000001403d66a1 cmp      byte ptr [rcx + 0x169], 4
00000001403d66a8 jb       0x1403d66cc
00000001403d66aa test     dword ptr [rcx + 0x16c], 0x1000
00000001403d66b4 je       0x1403d66cc
00000001403d66b6 mov      rcx, qword ptr [rcx + 0x158]
00000001403d66bd lea      edx, [rsi + 0x1c]
00000001403d66c0 lea      r8, [rip + 0x2feb51]
00000001403d66c7 call     0x140001b88
00000001403d66cc mov      dl, 3
00000001403d66ce mov      rcx, rbx
00000001403d66d1 call     0x1403c4ebc
00000001403d66d6 mov      rcx, rbx
00000001403d66d9 test     al, al
00000001403d66db je       0x1403d6720
00000001403d66dd mov      eax, esi
00000001403d66df shr      eax, 0x10
00000001403d66e2 movzx    edx, al
00000001403d66e5 call     0x1403cced8
00000001403d66ea movzx    edx, si
00000001403d66ed mov      rcx, rbx
00000001403d66f0 call     0x1403ccea8
00000001403d66f5 mov      rcx, qword ptr [rip + 0x549904]
00000001403d66fc cmp      rcx, r15
00000001403d66ff je       0x1403d6761
00000001403d6701 cmp      byte ptr [rcx + 0x169], 4
00000001403d6708 jb       0x1403d6761
00000001403d670a test     dword ptr [rcx + 0x16c], 0x1000
00000001403d6714 je       0x1403d6761
00000001403d6716 mov      edx, 0x2c
00000001403d671b mov      r9d, esi
00000001403d671e jmp      0x1403d674e
00000001403d6720 call     0x1403cb8c0
00000001403d6725 mov      rcx, qword ptr [rip + 0x5498d4]
00000001403d672c cmp      rcx, r15
00000001403d672f je       0x1403d6761
00000001403d6731 cmp      byte ptr [rcx + 0x169], 4
00000001403d6738 jb       0x1403d6761
00000001403d673a test     dword ptr [rcx + 0x16c], 0x1000
00000001403d6744 je       0x1403d6761
00000001403d6746 mov      edx, 0x2d
00000001403d674b mov      r9d, eax
00000001403d674e mov      rcx, qword ptr [rcx + 0x158]
00000001403d6755 lea      r8, [rip + 0x2feabc]
00000001403d675c call     0x140001bb0
00000001403d6761 test     dword ptr [rbx + 0x13f0], 0x1fe0000
00000001403d676b je       0x1403d67bd
00000001403d676d mov      eax, dword ptr [rbx + 0x998]
00000001403d6773 mov      rcx, rbx
00000001403d6776 movzx    r9d, byte ptr [rdi + 0x1522]
00000001403d677e mov      r8d, dword ptr [rdi + 0x127c]
00000001403d6785 mov      edx, dword ptr [rdi + 0x1278]
00000001403d678b mov      dword ptr [rsp + 0x20], eax
00000001403d678f call     0x140316994
00000001403d6794 mov      eax, dword ptr [rdi + 0x1520]
00000001403d679a mov      rcx, rbx
00000001403d679d mov      r8d, dword ptr [rdi + 0x1284]
00000001403d67a4 mov      edx, dword ptr [rdi + 0x1280]
00000001403d67aa movzx    r9d, ax
00000001403d67ae mov      eax, dword ptr [rbx + 0x998]
00000001403d67b4 mov      dword ptr [rsp + 0x20], eax
00000001403d67b8 call     0x140316994
00000001403d67bd mov      rbx, qword ptr [rsp + 0x40]
00000001403d67c2 mov      rsi, qword ptr [rsp + 0x48]
00000001403d67c7 mov      rdi, qword ptr [rsp + 0x50]
00000001403d67cc add      rsp, 0x30
00000001403d67d0 pop      r15
00000001403d67d2 ret      