00000001401cb9fc mov      qword ptr [rsp + 8], rbx
00000001401cba01 mov      qword ptr [rsp + 0x10], rbp
00000001401cba06 mov      qword ptr [rsp + 0x18], rsi
00000001401cba0b push     rdi
00000001401cba0c push     r12
00000001401cba0e push     r13
00000001401cba10 push     r14
00000001401cba12 push     r15
00000001401cba14 sub      rsp, 0x30
00000001401cba18 mov      r14, qword ptr [rdx + 8]
00000001401cba1c mov      rbx, rdx
00000001401cba1f mov      rbp, qword ptr [rcx + 0x798]
00000001401cba26 mov      rdx, r14
00000001401cba29 mov      rsi, rcx
00000001401cba2c call     0x1401b6de0
00000001401cba31 mov      r13, rax
00000001401cba34 xor      edi, edi
00000001401cba36 mov      rcx, qword ptr [rip + 0x7545c3]
00000001401cba3d lea      r12, [rip + 0x7545bc]
00000001401cba44 lea      r15d, [rdi + 1]
00000001401cba48 lea      r8, [rip + 0x4452c1]
00000001401cba4f cmp      rcx, r12
00000001401cba52 je       0x1401cba8c
00000001401cba54 cmp      byte ptr [rcx + 0x169], 4
00000001401cba5b jb       0x1401cba8c
00000001401cba5d mov      eax, dword ptr [rcx + 0x16c]
00000001401cba63 test     r15b, al
00000001401cba66 je       0x1401cba8c
00000001401cba68 mov      rcx, qword ptr [rcx + 0x158]
00000001401cba6f lea      r9, [rip + 0x44291a]
00000001401cba76 mov      qword ptr [rsp + 0x20], r8
00000001401cba7b mov      edx, 0x94
00000001401cba80 lea      r8, [rip + 0x4cc8f9]
00000001401cba87 call     0x14003c968
00000001401cba8c mov      al, byte ptr [rbx]
00000001401cba8e mov      rdx, rbx
00000001401cba91 mov      byte ptr [rbp + 0x9510], al
00000001401cba97 mov      rcx, rsi
00000001401cba9a mov      qword ptr [rbp + 0x9518], r14
00000001401cbaa1 cmp      byte ptr [rbx], dil
00000001401cbaa4 je       0x1401cbb6a
00000001401cbaaa call     0x1401c2b48
00000001401cbaaf mov      dword ptr [rbx + 0x3e4], eax
00000001401cbab5 test     eax, eax
00000001401cbab7 jne      0x1401cbb15
00000001401cbab9 mov      rcx, qword ptr [rip + 0x754540]
00000001401cbac0 cmp      rcx, r12
00000001401cbac3 je       0x1401cbb0d
00000001401cbac5 cmp      byte ptr [rcx + 0x169], 3
00000001401cbacc jb       0x1401cbb0d
00000001401cbace mov      eax, dword ptr [rcx + 0x16c]
00000001401cbad4 test     r15b, al
00000001401cbad7 je       0x1401cbb0d
00000001401cbad9 mov      edx, 0x95
00000001401cbade movzx    eax, byte ptr [r14 + 0x15]
00000001401cbae3 lea      r9, [rip + 0x4428a6]
00000001401cbaea mov      rcx, qword ptr [rcx + 0x158]
00000001401cbaf1 lea      r8, [rip + 0x4cc888]
00000001401cbaf8 mov      dword ptr [rsp + 0x28], eax
00000001401cbafc lea      rax, [rip + 0x44520d]
00000001401cbb03 mov      qword ptr [rsp + 0x20], rax
00000001401cbb08 call     0x14003ca14
00000001401cbb0d mov      edi, r15d
00000001401cbb10 jmp      0x1401cbbdb
00000001401cbb15 mov      rdx, rbx
00000001401cbb18 mov      rcx, rsi
00000001401cbb1b call     0x1401c2d98
00000001401cbb20 mov      byte ptr [rbp + 0x9528], al
00000001401cbb26 cmp      byte ptr [rbx + 0x14], dil
00000001401cbb2a jne      0x1401cbb53
00000001401cbb2c mov      rcx, qword ptr [rip + 0x7544cd]
00000001401cbb33 cmp      rcx, r12
00000001401cbb36 je       0x1401cbb0d
00000001401cbb38 cmp      byte ptr [rcx + 0x169], 3
00000001401cbb3f jb       0x1401cbb0d
00000001401cbb41 mov      eax, dword ptr [rcx + 0x16c]
00000001401cbb47 test     r15b, al
00000001401cbb4a je       0x1401cbb0d
00000001401cbb4c mov      edx, 0x96
00000001401cbb51 jmp      0x1401cbade
00000001401cbb53 mov      rdx, rbx
00000001401cbb56 mov      rcx, rsi
00000001401cbb59 call     0x1401c2594
00000001401cbb5e mov      r15b, al
00000001401cbb61 mov      al, byte ptr [r14 + 0x16c8]
00000001401cbb68 jmp      0x1401cbb9a
00000001401cbb6a call     0x1401c2b48
00000001401cbb6f mov      rdx, rbx
00000001401cbb72 mov      dword ptr [rbx + 0x3e4], eax
00000001401cbb78 mov      rcx, rsi
00000001401cbb7b call     0x1401c29d4
00000001401cbb80 mov      rdx, rbx
00000001401cbb83 mov      byte ptr [rbx + 0x3e1], al
00000001401cbb89 mov      rcx, rsi
00000001401cbb8c call     0x1401c2594
00000001401cbb91 mov      r15b, al
00000001401cbb94 mov      al, byte ptr [rbx + 0x3e1]
00000001401cbb9a mov      rdx, rbx
00000001401cbb9d mov      byte ptr [rbp + 0x9521], al
00000001401cbba3 mov      rcx, rsi
00000001401cbba6 call     0x1401c1e24
00000001401cbbab mov      ecx, dword ptr [r13 + 0x24]
00000001401cbbaf mov      rdx, rbx
00000001401cbbb2 mov      dword ptr [rbp + 0x9524], ecx
00000001401cbbb8 mov      cl, byte ptr [rbx + 0x14]
00000001401cbbbb mov      byte ptr [rbp + 0x9520], cl
00000001401cbbc1 mov      rcx, rsi
00000001401cbbc4 mov      byte ptr [rbp + 0x9534], r15b
00000001401cbbcb call     0x1401c42a0
00000001401cbbd0 mov      rdx, rbx
00000001401cbbd3 mov      rcx, rsi
00000001401cbbd6 call     0x1401c3ce4
00000001401cbbdb mov      rbx, qword ptr [rsp + 0x60]
00000001401cbbe0 mov      eax, edi
00000001401cbbe2 mov      rbp, qword ptr [rsp + 0x68]
00000001401cbbe7 mov      rsi, qword ptr [rsp + 0x70]
00000001401cbbec add      rsp, 0x30
00000001401cbbf0 pop      r15
00000001401cbbf2 pop      r14
00000001401cbbf4 pop      r13
00000001401cbbf6 pop      r12
00000001401cbbf8 pop      rdi
00000001401cbbf9 ret      