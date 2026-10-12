000000014020e438 mov      rax, rsp
000000014020e43b mov      qword ptr [rax + 8], rbx
000000014020e43f mov      qword ptr [rax + 0x10], rbp
000000014020e443 mov      qword ptr [rax + 0x18], rsi
000000014020e447 mov      qword ptr [rax + 0x20], rdi
000000014020e44b push     r13
000000014020e44d push     r14
000000014020e44f push     r15
000000014020e451 sub      rsp, 0x40
000000014020e455 cmp      byte ptr [rdx + 2], 2
000000014020e459 mov      r13, rdx
000000014020e45c mov      r14, rcx
000000014020e45f mov      ebp, 1
000000014020e464 je       0x14020e470
000000014020e466 mov      ebp, 2
000000014020e46b jmp      0x14020e772
000000014020e470 mov      dl, 2
000000014020e472 call     0x1401b95c0
000000014020e477 test     al, al
000000014020e479 jne      0x14020e4ce
000000014020e47b mov      rcx, qword ptr [rip + 0x711b7e]
000000014020e482 lea      rdi, [rip + 0x711b77]
000000014020e489 cmp      rcx, rdi
000000014020e48c je       0x14020e466
000000014020e48e cmp      byte ptr [rcx + 0x169], 3
000000014020e495 jb       0x14020e466
000000014020e497 bt       dword ptr [rcx + 0x16c], 0x15
000000014020e49f jae      0x14020e466
000000014020e4a1 mov      rcx, qword ptr [rcx + 0x158]
000000014020e4a8 lea      rsi, [rip + 0x406af1]
000000014020e4af mov      edx, 0x93
000000014020e4b4 mov      qword ptr [rsp + 0x20], rsi
000000014020e4b9 lea      r9, [rip + 0x3ffed0]
000000014020e4c0 lea      r8, [rip + 0x48a4d9]
000000014020e4c7 call     0x14003c968
000000014020e4cc jmp      0x14020e466
000000014020e4ce mov      rdx, qword ptr [r14 + 0x798]
000000014020e4d5 xor      cl, cl
000000014020e4d7 movzx    eax, cl
000000014020e4da imul     r8, rax, 0x538
000000014020e4e1 cmp      dword ptr [r8 + rdx + 0x8a9c], 6
000000014020e4ea je       0x14020e4f6
000000014020e4ec add      cl, bpl
000000014020e4ef cmp      cl, 2
000000014020e4f2 jb       0x14020e4d7
000000014020e4f4 jmp      0x14020e502
000000014020e4f6 mov      dword ptr [r8 + rdx + 0x8a9c], 7
000000014020e502 mov      esi, dword ptr [r13 + 0x28]
000000014020e506 mov      ebx, 0xaaaaaaab
000000014020e50b mov      eax, ebx
000000014020e50d mov      r8d, esi
000000014020e510 mul      esi
000000014020e512 shr      edx, 2
000000014020e515 lea      ecx, [rdx + rdx*2]
000000014020e518 add      ecx, ecx
000000014020e51a sub      r8d, ecx
000000014020e51d mov      rcx, r14
000000014020e520 mov      dl, r8b
000000014020e523 call     0x1401a0a14
000000014020e528 mov      r8, rax
000000014020e52b mov      eax, ebx
000000014020e52d mul      esi
000000014020e52f shr      edx, 2
000000014020e532 mov      eax, edx
000000014020e534 imul     r15, rax, 0xa38
000000014020e53b add      r15, 0x258
000000014020e542 add      r15, r8
000000014020e545 jne      0x14020e5ad
000000014020e547 mov      rcx, qword ptr [rip + 0x711ab2]
000000014020e54e lea      rdi, [rip + 0x711aab]
000000014020e555 cmp      rcx, rdi
000000014020e558 je       0x14020e772
000000014020e55e cmp      byte ptr [rcx + 0x169], 2
000000014020e565 jb       0x14020e772
000000014020e56b bt       dword ptr [rcx + 0x16c], 0x15
000000014020e573 jae      0x14020e772
000000014020e579 mov      rcx, qword ptr [rcx + 0x158]
000000014020e580 lea      r9, [rip + 0x3ffe09]
000000014020e587 mov      dword ptr [rsp + 0x28], esi
000000014020e58b lea      r8, [rip + 0x48a40e]
000000014020e592 lea      rsi, [rip + 0x406a07]
000000014020e599 mov      edx, 0x94
000000014020e59e mov      qword ptr [rsp + 0x20], rsi
000000014020e5a3 call     0x14003ca14
000000014020e5a8 jmp      0x14020e772
000000014020e5ad mov      rcx, qword ptr [rip + 0x711a4c]
000000014020e5b4 lea      rdi, [rip + 0x711a45]
000000014020e5bb lea      rsi, [rip + 0x4069de]
000000014020e5c2 cmp      rcx, rdi
000000014020e5c5 je       0x14020e61d
000000014020e5c7 cmp      byte ptr [rcx + 0x169], 4
000000014020e5ce jb       0x14020e61d
000000014020e5d0 bt       dword ptr [rcx + 0x16c], 0x15
000000014020e5d8 jae      0x14020e61d
000000014020e5da mov      rax, qword ptr [r15]
000000014020e5dd mov      edx, 0x95
000000014020e5e2 movzx    r9d, byte ptr [r15 + 8]
000000014020e5e7 mov      rcx, qword ptr [rcx + 0x158]
000000014020e5ee mov      dword ptr [rsp + 0x38], r9d
000000014020e5f3 lea      r9, [rip + 0x3ffd96]
000000014020e5fa movzx    r8d, byte ptr [rax + 0x15]
000000014020e5ff mov      eax, dword ptr [r13 + 4]
000000014020e603 mov      dword ptr [rsp + 0x30], r8d
000000014020e608 lea      r8, [rip + 0x48a391]
000000014020e60f mov      dword ptr [rsp + 0x28], eax
000000014020e613 mov      qword ptr [rsp + 0x20], rsi
000000014020e618 call     0x1400328d4
000000014020e61d mov      rdx, qword ptr [r15]
000000014020e620 mov      rcx, r14
000000014020e623 call     0x1401b6de0
000000014020e628 test     rax, rax
000000014020e62b jne      0x14020e698
000000014020e62d mov      rcx, qword ptr [rip + 0x7119cc]
000000014020e634 cmp      rcx, rdi
000000014020e637 je       0x14020e772
000000014020e63d cmp      byte ptr [rcx + 0x169], 2
000000014020e644 jb       0x14020e772
000000014020e64a bt       dword ptr [rcx + 0x16c], 0x15
000000014020e652 jae      0x14020e772
000000014020e658 movzx    r9d, byte ptr [r15 + 8]
000000014020e65d mov      edx, 0x96
000000014020e662 mov      rax, qword ptr [r15]
000000014020e665 mov      rcx, qword ptr [rcx + 0x158]
000000014020e66c mov      dword ptr [rsp + 0x30], r9d
000000014020e671 lea      r9, [rip + 0x3ffd18]
000000014020e678 movzx    r8d, byte ptr [rax + 0x15]
000000014020e67d mov      dword ptr [rsp + 0x28], r8d
000000014020e682 lea      r8, [rip + 0x48a317]
000000014020e689 mov      qword ptr [rsp + 0x20], rsi
000000014020e68e call     0x1400aa578
000000014020e693 jmp      0x14020e772
000000014020e698 mov      rdx, qword ptr [r15]
000000014020e69b mov      r9, rax
000000014020e69e mov      r8b, bpl
000000014020e6a1 mov      rcx, r14
000000014020e6a4 call     0x1401b6e9c
000000014020e6a9 test     rax, rax
000000014020e6ac jne      0x14020e70c
000000014020e6ae mov      rcx, qword ptr [rip + 0x71194b]
000000014020e6b5 cmp      rcx, rdi
000000014020e6b8 je       0x14020e772
000000014020e6be cmp      byte ptr [rcx + 0x169], 2
000000014020e6c5 jb       0x14020e772
000000014020e6cb bt       dword ptr [rcx + 0x16c], 0x15
000000014020e6d3 jae      0x14020e772
000000014020e6d9 mov      rax, qword ptr [r15]
000000014020e6dc lea      r9, [rip + 0x3ffcad]
000000014020e6e3 mov      rcx, qword ptr [rcx + 0x158]
000000014020e6ea mov      edx, 0x97
000000014020e6ef movzx    r8d, byte ptr [rax + 0x15]
000000014020e6f4 mov      dword ptr [rsp + 0x28], r8d
000000014020e6f9 lea      r8, [rip + 0x48a2a0]
000000014020e700 mov      qword ptr [rsp + 0x20], rsi
000000014020e705 call     0x14003ca14
000000014020e70a jmp      0x14020e772
000000014020e70c movzx    r9d, byte ptr [rax + 0x19]
000000014020e711 xor      r8d, r8d
000000014020e714 mov      rdx, rax
000000014020e717 mov      dword ptr [rsp + 0x20], 0xc
000000014020e71f mov      rcx, r14
000000014020e722 call     0x14020cf64
000000014020e727 test     eax, eax
000000014020e729 je       0x14020e770
000000014020e72b mov      rcx, qword ptr [rip + 0x7118ce]
000000014020e732 cmp      rcx, rdi
000000014020e735 je       0x14020e772
000000014020e737 cmp      byte ptr [rcx + 0x169], 3
000000014020e73e jb       0x14020e772
000000014020e740 bt       dword ptr [rcx + 0x16c], 0x15
000000014020e748 jae      0x14020e772
000000014020e74a mov      rcx, qword ptr [rcx + 0x158]
000000014020e751 lea      r9, [rip + 0x3ffc38]
000000014020e758 mov      edx, 0x98
000000014020e75d mov      qword ptr [rsp + 0x20], rsi
000000014020e762 lea      r8, [rip + 0x48a237]
000000014020e769 call     0x14003c968
000000014020e76e jmp      0x14020e772
000000014020e770 xor      ebp, ebp
000000014020e772 mov      rbx, qword ptr [rsp + 0x60]
000000014020e777 mov      eax, ebp
000000014020e779 mov      rbp, qword ptr [rsp + 0x68]
000000014020e77e mov      rsi, qword ptr [rsp + 0x70]
000000014020e783 mov      rdi, qword ptr [rsp + 0x78]
000000014020e788 add      rsp, 0x40
000000014020e78c pop      r15
000000014020e78e pop      r14
000000014020e790 pop      r13
000000014020e792 ret      