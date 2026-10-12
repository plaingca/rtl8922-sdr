00000001404eb4e4 mov      qword ptr [rsp + 0x18], rbx
00000001404eb4e9 mov      qword ptr [rsp + 0x20], rbp
00000001404eb4ee push     rsi
00000001404eb4ef push     rdi
00000001404eb4f0 push     r14
00000001404eb4f2 sub      rsp, 0x50
00000001404eb4f6 mov      rax, qword ptr [rip + 0x43bf63]
00000001404eb4fd xor      rax, rsp
00000001404eb500 mov      qword ptr [rsp + 0x40], rax
00000001404eb505 mov      rsi, rdx
00000001404eb508 xor      ebp, ebp
00000001404eb50a mov      edx, dword ptr [rdx + 4]
00000001404eb50d mov      rdi, rcx
00000001404eb510 shr      edx, 0x13
00000001404eb513 and      dl, 1
00000001404eb516 mov      word ptr [rsp + 0x38], bp
00000001404eb51b lea      r8d, [rbp + 1]
00000001404eb51f call     0x140429fcc
00000001404eb524 mov      ebx, eax
00000001404eb526 test     eax, eax
00000001404eb528 je       0x1404eb58c
00000001404eb52a mov      rcx, qword ptr [rip + 0x434acf]
00000001404eb531 lea      rax, [rip + 0x434ac8]
00000001404eb538 cmp      rcx, rax
00000001404eb53b je       0x1404eb622
00000001404eb541 cmp      byte ptr [rcx + 0x169], 2
00000001404eb548 jb       0x1404eb622
00000001404eb54e mov      edx, dword ptr [rcx + 0x16c]
00000001404eb554 test     dl, 8
00000001404eb557 je       0x1404eb622
00000001404eb55d mov      eax, dword ptr [rsi + 4]
00000001404eb560 lea      edx, [rbp + 0xb]
00000001404eb563 mov      rcx, qword ptr [rcx + 0x158]
00000001404eb56a lea      r9, [rip + 0x171b1f]
00000001404eb571 shr      eax, 0x13
00000001404eb574 lea      r8, [rip + 0x415165]
00000001404eb57b and      eax, 1
00000001404eb57e mov      dword ptr [rsp + 0x20], eax
00000001404eb582 call     0x1400088d8
00000001404eb587 jmp      0x1404eb622
00000001404eb58c cmp      byte ptr [rdi + 0x105], 5
00000001404eb593 je       0x1404eb59f
00000001404eb595 mov      eax, 0x56
00000001404eb59a jmp      0x1404eb624
00000001404eb59f mov      rax, qword ptr [rdi + 0x18]
00000001404eb5a3 mov      edx, 4
00000001404eb5a8 mov      rcx, qword ptr [rdi + 8]
00000001404eb5ac mov      dword ptr [rsp + 0x34], 1
00000001404eb5b4 mov      dword ptr [rsp + 0x30], 0x12010004
00000001404eb5bc mov      rax, qword ptr [rax + 0x98]
00000001404eb5c3 call     qword ptr [rip + 0x198d2f]
00000001404eb5c9 mov      r14, rax
00000001404eb5cc test     rax, rax
00000001404eb5cf jne      0x1404eb5d7
00000001404eb5d1 lea      eax, [r14 + 0xe]
00000001404eb5d5 jmp      0x1404eb624
00000001404eb5d7 mov      eax, dword ptr [rsi + 4]
00000001404eb5da lea      rdx, [rsp + 0x30]
00000001404eb5df mov      ecx, eax
00000001404eb5e1 mov      r8, r14
00000001404eb5e4 and      ecx, 7
00000001404eb5e7 shr      eax, 0xb
00000001404eb5ea or       ecx, 0x20
00000001404eb5ed and      eax, 0x100
00000001404eb5f2 shl      ecx, 4
00000001404eb5f5 or       ecx, eax
00000001404eb5f7 mov      dword ptr [r14], ecx
00000001404eb5fa mov      rcx, rdi
00000001404eb5fd call     0x14041621c
00000001404eb602 mov      rcx, qword ptr [rdi + 0x18]
00000001404eb606 mov      ebx, eax
00000001404eb608 movzx    r8d, word ptr [rsp + 0x30]
00000001404eb60e mov      rdx, r14
00000001404eb611 mov      rax, qword ptr [rcx + 0x90]
00000001404eb618 mov      rcx, qword ptr [rdi + 8]
00000001404eb61c call     qword ptr [rip + 0x198cd6]
00000001404eb622 mov      eax, ebx
00000001404eb624 mov      rcx, qword ptr [rsp + 0x40]
00000001404eb629 xor      rcx, rsp
00000001404eb62c call     0x1405f45b0
00000001404eb631 lea      r11, [rsp + 0x50]
00000001404eb636 mov      rbx, qword ptr [r11 + 0x30]
00000001404eb63a mov      rbp, qword ptr [r11 + 0x38]
00000001404eb63e mov      rsp, r11
00000001404eb641 pop      r14
00000001404eb643 pop      rdi
00000001404eb644 pop      rsi
00000001404eb645 ret      