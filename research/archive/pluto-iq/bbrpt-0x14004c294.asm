000000014004c294 push     rbp
000000014004c296 push     r12
000000014004c298 push     r13
000000014004c29a push     r14
000000014004c29c push     r15
000000014004c29e sub      rsp, 0x50
000000014004c2a2 lea      rbp, [rsp + 0x30]
000000014004c2a7 mov      qword ptr [rbp + 0x50], rbx
000000014004c2ab mov      qword ptr [rbp + 0x58], rsi
000000014004c2af mov      qword ptr [rbp + 0x60], rdi
000000014004c2b3 mov      rax, qword ptr [rip + 0x8db1a6]
000000014004c2ba xor      rax, rbp
000000014004c2bd mov      qword ptr [rbp + 0x10], rax
000000014004c2c1 movzx    eax, word ptr [r8 + 0x14]
000000014004c2c6 mov      rsi, r9
000000014004c2c9 mov      qword ptr [rbp + 8], rdx
000000014004c2cd mov      rdi, r8
000000014004c2d0 mov      word ptr [rbp], cx
000000014004c2d4 mov      r15d, 0x18
000000014004c2da test     al, 2
000000014004c2dc jne      0x14004c2fa
000000014004c2de mov      r14, qword ptr [r8]
000000014004c2e1 test     al, 1
000000014004c2e3 je       0x14004c2f3
000000014004c2e5 test     byte ptr [r14 + 0xe], 1
000000014004c2ea jne      0x14004c2fa
000000014004c2ec movzx    r14d, word ptr [r14 + 0xc]
000000014004c2f1 jmp      0x14004c2fd
000000014004c2f3 movzx    r14d, word ptr [r14 + 0xa]
000000014004c2f8 jmp      0x14004c2fd
000000014004c2fa mov      r14d, r15d
000000014004c2fd lea      rbx, [r8 + 0x12]
000000014004c301 add      r14w, word ptr [rbx]
000000014004c305 mov      rcx, qword ptr [rip + 0x8d3cf4]
000000014004c30c lea      rax, [rip + 0x8d3ced]
000000014004c313 mov      r12, rbx
000000014004c316 cmp      rcx, rax
000000014004c319 je       0x14004c37e
000000014004c31b cmp      byte ptr [rcx + 0x29], 5
000000014004c31f mov      r13, rbx
000000014004c322 jb       0x14004c344
000000014004c324 mov      rcx, qword ptr [rcx + 0x18]
000000014004c328 lea      r8, [rip + 0x643a79]
000000014004c32f mov      edx, 0x92
000000014004c334 call     0x140001b88
000000014004c339 lea      rax, [rip + 0x8d3cc0]
000000014004c340 lea      r13, [rdi + 0x12]
000000014004c344 mov      rcx, qword ptr [rip + 0x8d3cb5]
000000014004c34b cmp      rcx, rax
000000014004c34e je       0x14004c37e
000000014004c350 cmp      byte ptr [rcx + 0x29], 5
000000014004c354 jb       0x14004c37e
000000014004c356 mov      rax, qword ptr [rdi + 8]
000000014004c35a lea      r8, [rip + 0x643a47]
000000014004c361 movzx    r9d, word ptr [rdi + 0x10]
000000014004c366 mov      edx, 0x93
000000014004c36b mov      rcx, qword ptr [rcx + 0x18]
000000014004c36f mov      eax, dword ptr [rax + 0x28]
000000014004c372 mov      dword ptr [rsp + 0x20], eax
000000014004c376 call     0x140050738
000000014004c37b mov      r12, r13
000000014004c37e movzx    r8d, r14w
000000014004c382 lea      rax, [r8 + 0xf]
000000014004c386 cmp      rax, r8
000000014004c389 ja       0x14004c395
000000014004c38b movabs   rax, 0xffffffffffffff0
000000014004c395 and      rax, 0xfffffffffffffff0
000000014004c399 call     0x140044380
000000014004c39e sub      rsp, rax
000000014004c3a1 xor      edx, edx
000000014004c3a3 lea      r13, [rsp + 0x30]
000000014004c3a8 mov      rcx, r13
000000014004c3ab call     0x1405f4640
000000014004c3b0 mov      rax, qword ptr [rdi + 8]
000000014004c3b4 cmp      dword ptr [rax + 0x28], -1
000000014004c3b8 jne      0x14004c3e7
000000014004c3ba movzx    r9d, word ptr [r12]
000000014004c3bf mov      rsi, qword ptr [rbp + 0x80]
000000014004c3c6 add      r9, r13
000000014004c3c9 mov      r15, qword ptr [rbp + 0x70]
000000014004c3cd test     rsi, rsi
000000014004c3d0 mov      rax, qword ptr [rax]
000000014004c3d3 mov      r8, r15
000000014004c3d6 mov      rcx, qword ptr [rbp + 8]
000000014004c3da sete     dl
000000014004c3dd call     0x1405f4620
000000014004c3e2 jmp      0x14004c4e9
000000014004c3e7 movzx    r12d, word ptr [rbp]
000000014004c3ec mov      r8, rsi
000000014004c3ef mov      rdx, qword ptr [rbp + 8]
000000014004c3f3 movzx    ecx, r12w
000000014004c3f7 call     0x14004dad8
000000014004c3fc mov      ebx, eax
000000014004c3fe test     eax, eax
000000014004c400 js       0x14004c5a9
000000014004c406 movzx    edx, word ptr [rsi + 0x14]
000000014004c40a mov      r9b, 2
000000014004c40d test     r9b, dl
000000014004c410 jne      0x14004c42e
000000014004c412 mov      rax, qword ptr [rsi]
000000014004c415 test     dl, 1
000000014004c418 je       0x14004c427
000000014004c41a test     byte ptr [rax + 0xe], 1
000000014004c41e jne      0x14004c42e
000000014004c420 movzx    r8d, word ptr [rax + 0xc]
000000014004c425 jmp      0x14004c431
000000014004c427 movzx    r8d, word ptr [rax + 0xa]
000000014004c42c jmp      0x14004c431
000000014004c42e mov      r8d, r15d
000000014004c431 movzx    r11d, word ptr [rsi + 0x12]
000000014004c436 movzx    ecx, r8w
000000014004c43a add      ecx, r11d
000000014004c43d cmp      r12d, ecx
000000014004c440 jae      0x14004c4aa
000000014004c442 mov      r10, qword ptr [rip + 0x8d3bb7]
000000014004c449 lea      rax, [rip + 0x8d3bb0]
000000014004c450 cmp      r10, rax
000000014004c453 je       0x14004c4a0
000000014004c455 cmp      byte ptr [r10 + 0x29], r9b
000000014004c459 jb       0x14004c4a0
000000014004c45b test     r9b, dl
000000014004c45e jne      0x14004c47a
000000014004c460 mov      rax, qword ptr [rsi]
000000014004c463 test     dl, 1
000000014004c466 je       0x14004c475
000000014004c468 test     byte ptr [rax + 0xe], 1
000000014004c46c jne      0x14004c47a
000000014004c46e movzx    r15d, word ptr [rax + 0xc]
000000014004c473 jmp      0x14004c47a
000000014004c475 movzx    r15d, word ptr [rax + 0xa]
000000014004c47a mov      rcx, qword ptr [r10 + 0x18]
000000014004c47e mov      r9d, r11d
000000014004c481 movzx    r8d, r15w
000000014004c485 mov      edx, 0x94
000000014004c48a mov      dword ptr [rsp + 0x28], r12d
000000014004c48f mov      dword ptr [rsp + 0x20], r8d
000000014004c494 lea      r8, [rip + 0x64390d]
000000014004c49b call     0x140001c34
000000014004c4a0 mov      ebx, 0xc0010016
000000014004c4a5 jmp      0x14004c5a9
000000014004c4aa movzx    r9d, word ptr [rdi + 0x12]
000000014004c4af mov      rdx, r11
000000014004c4b2 mov      rax, qword ptr [rdi + 8]
000000014004c4b6 add      r9, r13
000000014004c4b9 mov      rsi, qword ptr [rbp + 0x80]
000000014004c4c0 mov      r15, qword ptr [rbp + 0x70]
000000014004c4c4 test     rsi, rsi
000000014004c4c7 mov      qword ptr [rsp + 0x20], r9
000000014004c4cc mov      r9, r15
000000014004c4cf mov      rax, qword ptr [rax + 8]
000000014004c4d3 sete     r8b
000000014004c4d7 add      rdx, qword ptr [rbp + 8]
000000014004c4db cmp      ebx, 0x10002
000000014004c4e1 setne    cl
000000014004c4e4 call     0x1405f4620
000000014004c4e9 mov      ebx, eax
000000014004c4eb test     eax, eax
000000014004c4ed jns      0x14004c530
000000014004c4ef mov      rcx, qword ptr [rip + 0x8d3b0a]
000000014004c4f6 lea      rax, [rip + 0x8d3b03]
000000014004c4fd cmp      rcx, rax
000000014004c500 je       0x14004c5a9
000000014004c506 cmp      byte ptr [rcx + 0x29], 2
000000014004c50a jb       0x14004c5a9
000000014004c510 movzx    r9d, word ptr [rdi + 0x10]
000000014004c515 lea      r8, [rip + 0x64388c]
000000014004c51c mov      rcx, qword ptr [rcx + 0x18]
000000014004c520 mov      edx, 0x95
000000014004c525 mov      dword ptr [rsp + 0x20], ebx
000000014004c529 call     0x140050738
000000014004c52e jmp      0x14004c5a9
000000014004c530 test     byte ptr [rdi + 0x16], 1
000000014004c534 je       0x14004c57f
000000014004c536 cmp      ebx, 0x40230001
000000014004c53c je       0x14004c57f
000000014004c53e mov      rcx, qword ptr [rip + 0x8d3abb]
000000014004c545 lea      rax, [rip + 0x8d3ab4]
000000014004c54c cmp      rcx, rax
000000014004c54f je       0x14004c571
000000014004c551 cmp      byte ptr [rcx + 0x29], 5
000000014004c555 jb       0x14004c571
000000014004c557 movzx    r9d, word ptr [rdi + 0x10]
000000014004c55c lea      r8, [rip + 0x643845]
000000014004c563 mov      rcx, qword ptr [rcx + 0x18]
000000014004c567 mov      edx, 0x96
000000014004c56c call     0x1400506fc
000000014004c571 mov      rax, qword ptr [rbp + 0x78]
000000014004c575 mov      ebx, 0x10002
000000014004c57a and      dword ptr [rax], 0
000000014004c57d jmp      0x14004c5a9
000000014004c57f movzx    eax, word ptr [rdi + 0x12]
000000014004c583 movzx    ecx, r14w
000000014004c587 sub      cx, ax
000000014004c58a mov      qword ptr [rsp + 0x28], rsi
000000014004c58f mov      r9, r15
000000014004c592 mov      r8, rdi
000000014004c595 lea      rdx, [rax + r13]
000000014004c599 mov      rax, qword ptr [rbp + 0x78]
000000014004c59d mov      qword ptr [rsp + 0x20], rax
000000014004c5a2 call     0x14004d19c
000000014004c5a7 mov      ebx, eax
000000014004c5a9 mov      r8, rdi
000000014004c5ac mov      rdx, r13
000000014004c5af movzx    ecx, r14w
000000014004c5b3 call     0x14004c8e0
000000014004c5b8 mov      rcx, qword ptr [rip + 0x8d3a41]
000000014004c5bf lea      rax, [rip + 0x8d3a3a]
000000014004c5c6 cmp      rcx, rax
000000014004c5c9 je       0x14004c5e9
000000014004c5cb cmp      byte ptr [rcx + 0x29], 5
000000014004c5cf jb       0x14004c5e9
000000014004c5d1 mov      rcx, qword ptr [rcx + 0x18]
000000014004c5d5 lea      r8, [rip + 0x6437cc]
000000014004c5dc mov      edx, 0x97
000000014004c5e1 mov      r9d, ebx
000000014004c5e4 call     0x140001bb0
000000014004c5e9 mov      eax, ebx
000000014004c5eb mov      rcx, qword ptr [rbp + 0x10]
000000014004c5ef xor      rcx, rbp
000000014004c5f2 call     0x1405f45b0
000000014004c5f7 mov      rbx, qword ptr [rbp + 0x50]
000000014004c5fb mov      rsi, qword ptr [rbp + 0x58]
000000014004c5ff mov      rdi, qword ptr [rbp + 0x60]
000000014004c603 lea      rsp, [rbp + 0x20]
000000014004c607 pop      r15
000000014004c609 pop      r14
000000014004c60b pop      r13
000000014004c60d pop      r12
000000014004c60f pop      rbp
000000014004c610 ret      
000000014004c611 int3     