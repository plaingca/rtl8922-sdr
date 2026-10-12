000000014019f48c mov      rax, rsp
000000014019f48f mov      qword ptr [rax + 8], rbx
000000014019f493 mov      qword ptr [rax + 0x10], rbp
000000014019f497 mov      qword ptr [rax + 0x18], rsi
000000014019f49b mov      qword ptr [rax + 0x20], rdi
000000014019f49f push     r12
000000014019f4a1 push     r13
000000014019f4a3 push     r14
000000014019f4a5 sub      rsp, 0x60
000000014019f4a9 xor      sil, sil
000000014019f4ac mov      rbp, rdx
000000014019f4af mov      r14, rcx
000000014019f4b2 cmp      byte ptr [rdx + 0x28], sil
000000014019f4b6 jbe      0x14019f589
000000014019f4bc lea      r12, [rip + 0x780b3d]
000000014019f4c3 lea      r13, [rip + 0x46efb6]
000000014019f4ca movzx    eax, sil
000000014019f4ce mov      rdi, qword ptr [rbp + rax*8 + 0x30]
000000014019f4d3 test     rdi, rdi
000000014019f4d6 je       0x14019f57c
000000014019f4dc cmp      byte ptr [rdi + 0x29], 0
000000014019f4e0 jne      0x14019f57c
000000014019f4e6 mov      rdx, rdi
000000014019f4e9 mov      rcx, r14
000000014019f4ec call     0x1401b2ad4
000000014019f4f1 test     eax, eax
000000014019f4f3 jne      0x14019f5aa
000000014019f4f9 mov      rcx, qword ptr [rip + 0x780b00]
000000014019f500 cmp      rcx, r12
000000014019f503 je       0x14019f57c
000000014019f505 cmp      byte ptr [rcx + 0x169], 4
000000014019f50c jb       0x14019f57c
000000014019f50e mov      eax, dword ptr [rcx + 0x16c]
000000014019f514 test     al, 1
000000014019f516 je       0x14019f57c
000000014019f518 movzx    r8d, byte ptr [rdi + 0x3a]
000000014019f51d mov      edx, 0x23
000000014019f522 movzx    r9d, byte ptr [rdi + 0x39]
000000014019f527 movzx    eax, byte ptr [rdi + 0x3b]
000000014019f52b movzx    r10d, byte ptr [rdi + 0x38]
000000014019f530 movzx    r11d, byte ptr [rdi + 0x37]
000000014019f535 movzx    ebx, byte ptr [rdi + 0x36]
000000014019f539 movzx    edi, word ptr [rdi + 0x2c]
000000014019f53d mov      rcx, qword ptr [rcx + 0x158]
000000014019f544 mov      dword ptr [rsp + 0x58], eax
000000014019f548 mov      dword ptr [rsp + 0x50], r8d
000000014019f54d lea      r8, [rip + 0x4f8bfc]
000000014019f554 mov      dword ptr [rsp + 0x48], r9d
000000014019f559 lea      r9, [rip + 0x46ee30]
000000014019f560 mov      dword ptr [rsp + 0x40], r10d
000000014019f565 mov      dword ptr [rsp + 0x38], r11d
000000014019f56a mov      dword ptr [rsp + 0x30], ebx
000000014019f56e mov      dword ptr [rsp + 0x28], edi
000000014019f572 mov      qword ptr [rsp + 0x20], r13
000000014019f577 call     0x140085738
000000014019f57c inc      sil
000000014019f57f cmp      sil, byte ptr [rbp + 0x28]
000000014019f583 jb       0x14019f4ca
000000014019f589 xor      eax, eax
000000014019f58b lea      r11, [rsp + 0x60]
000000014019f590 mov      rbx, qword ptr [r11 + 0x20]
000000014019f594 mov      rbp, qword ptr [r11 + 0x28]
000000014019f598 mov      rsi, qword ptr [r11 + 0x30]
000000014019f59c mov      rdi, qword ptr [r11 + 0x38]
000000014019f5a0 mov      rsp, r11
000000014019f5a3 pop      r14
000000014019f5a5 pop      r13
000000014019f5a7 pop      r12
000000014019f5a9 ret      
000000014019f5aa mov      rcx, qword ptr [rip + 0x780a4f]
000000014019f5b1 cmp      rcx, r12
000000014019f5b4 je       0x14019f5ee
000000014019f5b6 cmp      byte ptr [rcx + 0x169], 2
000000014019f5bd jb       0x14019f5ee
000000014019f5bf mov      edx, dword ptr [rcx + 0x16c]
000000014019f5c5 test     dl, 1
000000014019f5c8 je       0x14019f5ee
000000014019f5ca mov      rcx, qword ptr [rcx + 0x158]
000000014019f5d1 lea      r9, [rip + 0x46edb8]
000000014019f5d8 mov      edx, 0x22
000000014019f5dd mov      qword ptr [rsp + 0x20], r13
000000014019f5e2 lea      r8, [rip + 0x4f8b67]
000000014019f5e9 call     0x14003c968
000000014019f5ee mov      eax, 1
000000014019f5f3 jmp      0x14019f58b