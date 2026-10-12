00000001404f73f0 mov      rax, rsp
00000001404f73f3 mov      qword ptr [rax + 8], rbx
00000001404f73f7 mov      qword ptr [rax + 0x10], rbp
00000001404f73fb mov      qword ptr [rax + 0x18], rsi
00000001404f73ff mov      qword ptr [rax + 0x20], rdi
00000001404f7403 push     r12
00000001404f7405 push     r14
00000001404f7407 push     r15
00000001404f7409 sub      rsp, 0x30
00000001404f740d mov      rdi, r9
00000001404f7410 mov      rsi, r8
00000001404f7413 mov      r12b, dl
00000001404f7416 mov      r14d, ecx
00000001404f7419 test     r9, r9
00000001404f741c jne      0x1404f7425
00000001404f741e xor      eax, eax
00000001404f7420 jmp      0x1404f756e
00000001404f7425 call     0x140457e20
00000001404f742a mov      rcx, rsi
00000001404f742d lea      ebp, [rax + 0x1390]
00000001404f7433 mov      rax, qword ptr [rdi + 0x98]
00000001404f743a mov      edx, ebp
00000001404f743c call     qword ptr [rip + 0x18ceb6]
00000001404f7442 mov      rbx, rax
00000001404f7445 mov      rcx, rsi
00000001404f7448 test     rax, rax
00000001404f744b jne      0x1404f7466
00000001404f744d mov      rax, qword ptr [rdi + 0x118]
00000001404f7454 lea      r8, [rip + 0x166425]
00000001404f745b lea      edx, [rbx + 2]
00000001404f745e call     qword ptr [rip + 0x18ce94]
00000001404f7464 jmp      0x1404f741e
00000001404f7466 mov      rax, qword ptr [rdi + 0xa0]
00000001404f746d lea      r8, [rip + 0x7ca81c]
00000001404f7474 mov      r9d, 0x1390
00000001404f747a mov      rdx, rbx
00000001404f747d call     qword ptr [rip + 0x18ce75]
00000001404f7483 mov      rax, qword ptr [rdi + 0x98]
00000001404f748a mov      edx, 0x108
00000001404f748f mov      rcx, rsi
00000001404f7492 call     qword ptr [rip + 0x18ce60]
00000001404f7498 mov      r15, rax
00000001404f749b mov      rcx, rsi
00000001404f749e test     rax, rax
00000001404f74a1 jne      0x1404f74d6
00000001404f74a3 mov      rax, qword ptr [rdi + 0x118]
00000001404f74aa lea      r8, [rip + 0x1663ef]
00000001404f74b1 lea      edx, [r15 + 2]
00000001404f74b5 call     qword ptr [rip + 0x18ce3d]
00000001404f74bb mov      rax, qword ptr [rdi + 0x90]
00000001404f74c2 mov      r8d, ebp
00000001404f74c5 mov      rdx, rbx
00000001404f74c8 mov      rcx, rsi
00000001404f74cb call     qword ptr [rip + 0x18ce27]
00000001404f74d1 jmp      0x1404f741e
00000001404f74d6 mov      rax, qword ptr [rdi + 0xa0]
00000001404f74dd lea      r8, [rip + 0x7ca69c]
00000001404f74e4 mov      r9d, 0x108
00000001404f74ea mov      rdx, r15
00000001404f74ed call     qword ptr [rip + 0x18ce05]
00000001404f74f3 mov      qword ptr [rbx + 0x140], r15
00000001404f74fa mov      ecx, r14d
00000001404f74fd mov      qword ptr [rbx + 8], rsi
00000001404f7501 mov      qword ptr [rbx + 0x18], rdi
00000001404f7505 mov      byte ptr [r15 + 0xd8], r12b
00000001404f750c mov      rax, qword ptr [rbx + 0x140]
00000001404f7513 mov      dword ptr [rbx + 0xeec], r14d
00000001404f751a mov      word ptr [rax + 0xbe], 0x40
00000001404f7523 mov      rax, qword ptr [rbx + 0x140]
00000001404f752a mov      word ptr [rax + 0xc0], 0x20
00000001404f7533 mov      rax, qword ptr [rbx + 0x140]
00000001404f753a mov      byte ptr [rax + 0xd2], 1
00000001404f7541 call     0x140559c68
00000001404f7546 mov      qword ptr [rbx + 0x1390], rax
00000001404f754d cmp      r14d, 2
00000001404f7551 jne      0x1404f74bb
00000001404f7557 mov      rax, qword ptr [rbx]
00000001404f755a lea      rcx, [rip + 0x7ca44f]
00000001404f7561 mov      qword ptr [rax], rcx
00000001404f7564 mov      rax, rbx
00000001404f7567 mov      byte ptr [rbx + 0x408], 1
00000001404f756e mov      rbx, qword ptr [rsp + 0x50]
00000001404f7573 mov      rbp, qword ptr [rsp + 0x58]
00000001404f7578 mov      rsi, qword ptr [rsp + 0x60]
00000001404f757d mov      rdi, qword ptr [rsp + 0x68]
00000001404f7582 add      rsp, 0x30
00000001404f7586 pop      r15
00000001404f7588 pop      r14
00000001404f758a pop      r12
00000001404f758c ret      