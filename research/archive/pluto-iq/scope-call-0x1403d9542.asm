00000001403d9290 push     rbp
00000001403d9292 push     rbx
00000001403d9293 push     rsi
00000001403d9294 push     rdi
00000001403d9295 push     r12
00000001403d9297 push     r13
00000001403d9299 push     r14
00000001403d929b push     r15
00000001403d929d lea      rbp, [rsp - 0x17]
00000001403d92a2 sub      rsp, 0xb8
00000001403d92a9 mov      rax, qword ptr [rip + 0x54e1b0]
00000001403d92b0 xor      rax, rsp
00000001403d92b3 mov      qword ptr [rbp - 1], rax
00000001403d92b7 mov      rdi, qword ptr [rcx + 0x9a0]
00000001403d92be lea      r12, [rdx + 0x10]
00000001403d92c2 mov      r14, qword ptr [rbp + 0x7f]
00000001403d92c6 xor      esi, esi
00000001403d92c8 xor      eax, eax
00000001403d92ca mov      qword ptr [rbp - 0x39], rcx
00000001403d92ce xorps    xmm0, xmm0
00000001403d92d1 mov      qword ptr [rbp - 9], rax
00000001403d92d5 add      rdi, 0x1040
00000001403d92dc mov      byte ptr [rbp - 0x40], sil
00000001403d92e0 cmp      byte ptr [r12], 0x2d
00000001403d92e5 mov      r15, r9
00000001403d92e8 mov      rbx, r8
00000001403d92eb mov      word ptr [rbp - 0x2d], si
00000001403d92ef mov      r13, rdx
00000001403d92f2 mov      byte ptr [rbp - 0x41], sil
00000001403d92f6 movups   xmmword ptr [rbp - 0x29], xmm0
00000001403d92fa mov      byte ptr [rbp - 0x31], sil
00000001403d92fe movups   xmmword ptr [rbp - 0x19], xmm0
00000001403d9302 jne      0x1403d94e6
00000001403d9308 cmp      byte ptr [r12 + 1], 0x68
00000001403d930e jne      0x1403d94e6
00000001403d9314 cmp      byte ptr [r12 + 2], al
00000001403d9319 jne      0x1403d94e6
00000001403d931f mov      eax, dword ptr [r8]
00000001403d9322 mov      ecx, dword ptr [r14]
00000001403d9325 cmp      eax, ecx
00000001403d9327 jae      0x1403d9341
00000001403d9329 sub      ecx, eax
00000001403d932b lea      r8, [rip + 0x2741fe]
00000001403d9332 mov      edx, ecx
00000001403d9334 lea      rcx, [r9 + rax]
00000001403d9338 call     0x140044426
00000001403d933d add      dword ptr [rbx], eax
00000001403d933f mov      eax, dword ptr [rbx]
00000001403d9341 mov      ecx, dword ptr [r14]
00000001403d9344 cmp      eax, ecx
00000001403d9346 jae      0x1403d9361
00000001403d9348 sub      ecx, eax
00000001403d934a lea      r8, [rip + 0x25ca0f]
00000001403d9351 mov      edx, ecx
00000001403d9353 mov      ecx, eax
00000001403d9355 add      rcx, r15
00000001403d9358 call     0x140044426
00000001403d935d add      dword ptr [rbx], eax
00000001403d935f mov      eax, dword ptr [rbx]
00000001403d9361 mov      ecx, dword ptr [r14]
00000001403d9364 cmp      eax, ecx
00000001403d9366 jae      0x1403d9381
00000001403d9368 sub      ecx, eax
00000001403d936a lea      r8, [rip + 0x2741cf]
00000001403d9371 mov      edx, ecx
00000001403d9373 mov      ecx, eax
00000001403d9375 add      rcx, r15
00000001403d9378 call     0x140044426
00000001403d937d add      dword ptr [rbx], eax
00000001403d937f mov      eax, dword ptr [rbx]
00000001403d9381 mov      ecx, dword ptr [r14]
00000001403d9384 cmp      eax, ecx
00000001403d9386 jae      0x1403d93a1
00000001403d9388 sub      ecx, eax
00000001403d938a lea      r8, [rip + 0x2741df]
00000001403d9391 mov      edx, ecx
00000001403d9393 mov      ecx, eax
00000001403d9395 add      rcx, r15
00000001403d9398 call     0x140044426
00000001403d939d add      dword ptr [rbx], eax
00000001403d939f mov      eax, dword ptr [rbx]
00000001403d93a1 mov      ecx, dword ptr [r14]
00000001403d93a4 cmp      eax, ecx
00000001403d93a6 jae      0x1403d93c1
00000001403d93a8 sub      ecx, eax
00000001403d93aa lea      r8, [rip + 0x27270f]
00000001403d93b1 mov      edx, ecx
00000001403d93b3 mov      ecx, eax
00000001403d93b5 add      rcx, r15
00000001403d93b8 call     0x140044426
00000001403d93bd add      dword ptr [rbx], eax
00000001403d93bf mov      eax, dword ptr [rbx]
00000001403d93c1 mov      ecx, dword ptr [r14]
00000001403d93c4 cmp      eax, ecx
00000001403d93c6 jae      0x1403d93e1
00000001403d93c8 sub      ecx, eax
00000001403d93ca lea      r8, [rip + 0x2741bf]
00000001403d93d1 mov      edx, ecx
00000001403d93d3 mov      ecx, eax
00000001403d93d5 add      rcx, r15
00000001403d93d8 call     0x140044426
00000001403d93dd add      dword ptr [rbx], eax
00000001403d93df mov      eax, dword ptr [rbx]
00000001403d93e1 mov      ecx, dword ptr [r14]
00000001403d93e4 cmp      eax, ecx
00000001403d93e6 jae      0x1403d9401
00000001403d93e8 sub      ecx, eax
00000001403d93ea lea      r8, [rip + 0x2741af]
00000001403d93f1 mov      edx, ecx
00000001403d93f3 mov      ecx, eax
00000001403d93f5 add      rcx, r15
00000001403d93f8 call     0x140044426
00000001403d93fd add      dword ptr [rbx], eax
00000001403d93ff mov      eax, dword ptr [rbx]
00000001403d9401 mov      ecx, dword ptr [r14]
00000001403d9404 cmp      eax, ecx
00000001403d9406 jae      0x1403d9421
00000001403d9408 sub      ecx, eax
00000001403d940a lea      r8, [rip + 0x2741af]
00000001403d9411 mov      edx, ecx
00000001403d9413 mov      ecx, eax
00000001403d9415 add      rcx, r15
00000001403d9418 call     0x140044426
00000001403d941d add      dword ptr [rbx], eax
00000001403d941f mov      eax, dword ptr [rbx]
00000001403d9421 mov      ecx, dword ptr [r14]
00000001403d9424 cmp      eax, ecx
00000001403d9426 jae      0x1403d9441
00000001403d9428 sub      ecx, eax
00000001403d942a lea      r8, [rip + 0x2741ef]
00000001403d9431 mov      edx, ecx
00000001403d9433 mov      ecx, eax
00000001403d9435 add      rcx, r15
00000001403d9438 call     0x140044426
00000001403d943d add      dword ptr [rbx], eax
00000001403d943f mov      eax, dword ptr [rbx]
00000001403d9441 mov      ecx, dword ptr [r14]
00000001403d9444 cmp      eax, ecx
00000001403d9446 jae      0x1403d9461
00000001403d9448 sub      ecx, eax
00000001403d944a lea      r8, [rip + 0x2741ef]
00000001403d9451 mov      edx, ecx
00000001403d9453 mov      ecx, eax
00000001403d9455 add      rcx, r15
00000001403d9458 call     0x140044426
00000001403d945d add      dword ptr [rbx], eax
00000001403d945f mov      eax, dword ptr [rbx]
00000001403d9461 mov      ecx, dword ptr [r14]
00000001403d9464 cmp      eax, ecx
00000001403d9466 jae      0x1403d9481
00000001403d9468 sub      ecx, eax
00000001403d946a lea      r8, [rip + 0x2741df]
00000001403d9471 mov      edx, ecx
00000001403d9473 mov      ecx, eax
00000001403d9475 add      rcx, r15
00000001403d9478 call     0x140044426
00000001403d947d add      dword ptr [rbx], eax
00000001403d947f mov      eax, dword ptr [rbx]
00000001403d9481 mov      ecx, dword ptr [r14]
00000001403d9484 cmp      eax, ecx
00000001403d9486 jae      0x1403d94a1
00000001403d9488 sub      ecx, eax
00000001403d948a lea      r8, [rip + 0x2741ef]
00000001403d9491 mov      edx, ecx
00000001403d9493 mov      ecx, eax
00000001403d9495 add      rcx, r15
00000001403d9498 call     0x140044426
00000001403d949d add      dword ptr [rbx], eax
00000001403d949f mov      eax, dword ptr [rbx]
00000001403d94a1 mov      ecx, dword ptr [r14]
00000001403d94a4 cmp      eax, ecx
00000001403d94a6 jae      0x1403d94c1
00000001403d94a8 sub      ecx, eax
00000001403d94aa lea      r8, [rip + 0x2741ef]
00000001403d94b1 mov      edx, ecx
00000001403d94b3 mov      ecx, eax
00000001403d94b5 add      rcx, r15
00000001403d94b8 call     0x140044426
00000001403d94bd add      dword ptr [rbx], eax
00000001403d94bf mov      eax, dword ptr [rbx]
00000001403d94c1 mov      ecx, dword ptr [r14]
00000001403d94c4 cmp      eax, ecx
00000001403d94c6 jae      0x1403da222
00000001403d94cc sub      ecx, eax
00000001403d94ce lea      r8, [rip + 0x2741db]
00000001403d94d5 mov      edx, ecx
00000001403d94d7 mov      ecx, eax
00000001403d94d9 add      rcx, r15
00000001403d94dc call     0x140044426
00000001403d94e1 jmp      0x1403d9deb
00000001403d94e6 lea      rdx, [rip + 0x2741f3]
00000001403d94ed mov      rcx, r12
00000001403d94f0 call     0x140044360
00000001403d94f5 test     eax, eax
00000001403d94f7 je       0x1403da20b
00000001403d94fd lea      rdx, [rip + 0x21f0cc]
00000001403d9504 mov      rcx, r12
00000001403d9507 call     0x140044360
00000001403d950c test     eax, eax
00000001403d950e je       0x1403da20b
00000001403d9514 lea      rdx, [rip + 0x2741d5]
00000001403d951b mov      rcx, r12
00000001403d951e call     0x140044360
00000001403d9523 test     eax, eax
00000001403d9525 jne      0x1403d9564
00000001403d9527 lea      rcx, [r13 + 0x20]
00000001403d952b lea      r8, [rbp - 0x29]
00000001403d952f lea      rdx, [rip + 0x24223a]
00000001403d9536 call     0x140044420
00000001403d953b mov      dl, byte ptr [rbp - 0x29]
00000001403d953e mov      rcx, qword ptr [rbp - 0x39]
00000001403d9542 call     0x1403dcb54
00000001403d9547 mov      ecx, dword ptr [rbx]
00000001403d9549 mov      eax, dword ptr [r14]
00000001403d954c cmp      ecx, eax
00000001403d954e jae      0x1403da222
00000001403d9554 mov      r9d, dword ptr [rbp - 0x29]
00000001403d9558 lea      r8, [rip + 0x2741a1]
00000001403d955f jmp      0x1403d9ddf
00000001403d9564 lea      rdx, [rip + 0x2741c5]
00000001403d956b mov      rcx, r12
00000001403d956e call     0x140044360
00000001403d9573 test     eax, eax
00000001403d9575 jne      0x1403d9796
00000001403d957b lea      r12, [r13 + 0x20]
00000001403d957f mov      rcx, r12
00000001403d9582 lea      r8, [rbp - 0x29]
00000001403d9586 lea      rdx, [rip + 0x2421e3]
00000001403d958d call     0x140044420
00000001403d9592 lea      rdx, [rip + 0x21f037]
00000001403d9599 mov      rcx, r12
00000001403d959c call     0x140044360
00000001403d95a1 test     eax, eax
00000001403d95a3 jne      0x1403d95ca
00000001403d95a5 mov      ecx, dword ptr [rbx]
00000001403d95a7 mov      eax, dword ptr [r14]
00000001403d95aa cmp      ecx, eax
00000001403d95ac jae      0x1403d9706
00000001403d95b2 lea      r8, [rip + 0x274187]
00000001403d95b9 sub      eax, ecx
00000001403d95bb add      rcx, r15
00000001403d95be mov      edx, eax
00000001403d95c0 call     0x140044426
00000001403d95c5 jmp      0x1403d9704
00000001403d95ca lea      rdx, [rip + 0x27418f]
00000001403d95d1 mov      rcx, r12
00000001403d95d4 call     0x140044360
00000001403d95d9 test     eax, eax
00000001403d95db jne      0x1403d95ff
00000001403d95dd lea      rcx, [r13 + 0x30]
00000001403d95e1 lea      r8, [rbp - 0x29]
00000001403d95e5 lea      rdx, [rip + 0x242184]
00000001403d95ec call     0x140044420
00000001403d95f1 mov      eax, dword ptr [rbp - 0x29]
00000001403d95f4 mov      dword ptr [rdi + 0x318], eax
00000001403d95fa jmp      0x1403d9706
00000001403d95ff lea      rdx, [rip + 0x25c96a]
00000001403d9606 mov      rcx, r12
00000001403d9609 call     0x140044360
00000001403d960e test     eax, eax
00000001403d9610 jne      0x1403d9644
00000001403d9612 lea      rcx, [rdi + 0x41c]
00000001403d9619 xor      r8d, r8d
00000001403d961c lea      edx, [rax + 0x30]
00000001403d961f call     0x140031144
00000001403d9624 mov      byte ptr [rdi + 0x41a], sil
00000001403d962b mov      ecx, dword ptr [rbx]
00000001403d962d mov      eax, dword ptr [r14]
00000001403d9630 cmp      ecx, eax
00000001403d9632 jae      0x1403d9706
00000001403d9638 lea      r8, [rip + 0x274131]
00000001403d963f jmp      0x1403d95b9
00000001403d9644 mov      r9d, dword ptr [rbp - 0x29]
00000001403d9648 cmp      r9d, 4
00000001403d964c jae      0x1403d96e8
00000001403d9652 lea      rcx, [r13 + 0x30]
00000001403d9656 lea      r8, [rbp - 0x25]
00000001403d965a lea      rdx, [rip + 0x24210f]
00000001403d9661 call     0x140044420
00000001403d9666 lea      rcx, [r13 + 0x40]
00000001403d966a lea      r8, [rbp - 0x21]
00000001403d966e lea      rdx, [rip + 0x21dd2b]
00000001403d9675 call     0x140044420
00000001403d967a lea      rcx, [r13 + 0x50]
00000001403d967e lea      r8, [rbp - 0x1d]
00000001403d9682 lea      rdx, [rip + 0x21dd17]
00000001403d9689 call     0x140044420
00000001403d968e mov      r9d, dword ptr [rdi + 0x300]
00000001403d9695 mov      edx, dword ptr [rbp - 0x25]
00000001403d9698 cmp      edx, r9d
00000001403d969b jae      0x1403d96d6
00000001403d969d mov      eax, dword ptr [rbp - 0x29]
00000001403d96a0 lea      rcx, [rax + rax*2]
00000001403d96a4 mov      dword ptr [rdi + rcx*4 + 0x41c], edx
00000001403d96ab mov      eax, dword ptr [rbp - 0x29]
00000001403d96ae add      rax, 0x58
00000001403d96b2 lea      rcx, [rax + rax*2]
00000001403d96b6 mov      eax, dword ptr [rbp - 0x21]
00000001403d96b9 mov      dword ptr [rdi + rcx*4], eax
00000001403d96bc mov      eax, dword ptr [rbp - 0x29]
00000001403d96bf lea      rcx, [rax + rax*2]
00000001403d96c3 mov      eax, dword ptr [rbp - 0x1d]
00000001403d96c6 mov      dword ptr [rdi + rcx*4 + 0x424], eax
00000001403d96cd mov      byte ptr [rdi + 0x41a], 1
00000001403d96d4 jmp      0x1403d9706
00000001403d96d6 mov      ecx, dword ptr [rbx]
00000001403d96d8 mov      eax, dword ptr [r14]
00000001403d96db cmp      ecx, eax
00000001403d96dd jae      0x1403d9706
00000001403d96df lea      r8, [rip + 0x2740aa]
00000001403d96e6 jmp      0x1403d96f8
00000001403d96e8 mov      ecx, dword ptr [rbx]
00000001403d96ea mov      eax, dword ptr [r14]
00000001403d96ed cmp      ecx, eax
00000001403d96ef jae      0x1403d9706
00000001403d96f1 lea      r8, [rip + 0x2740b8]
00000001403d96f8 sub      eax, ecx
00000001403d96fa add      rcx, r15
00000001403d96fd mov      edx, eax
00000001403d96ff call     0x140044426
00000001403d9704 add      dword ptr [rbx], eax
00000001403d9706 mov      ecx, dword ptr [rbx]
00000001403d9708 mov      eax, dword ptr [r14]
00000001403d970b cmp      ecx, eax
00000001403d970d jae      0x1403d9738
00000001403d970f movzx    r9d, byte ptr [rdi + 0x41a]
00000001403d9717 lea      r8, [rip + 0x2740b2]
00000001403d971e sub      eax, ecx
00000001403d9720 add      rcx, r15
00000001403d9723 mov      edx, eax
00000001403d9725 mov      eax, dword ptr [rdi + 0x318]
00000001403d972b mov      dword ptr [rsp + 0x20], eax
00000001403d972f call     0x140044426
00000001403d9734 add      dword ptr [rbx], eax
00000001403d9736 mov      ecx, dword ptr [rbx]
00000001403d9738 mov      edx, dword ptr [r14]
00000001403d973b cmp      ecx, edx
00000001403d973d jae      0x1403d9788
00000001403d973f movzx    eax, sil
00000001403d9743 sub      edx, ecx
00000001403d9745 movzx    r9d, sil
00000001403d9749 add      rcx, r15
00000001403d974c lea      r8, [rax + rax*2]
00000001403d9750 lea      r10, [rax + rax*2]
00000001403d9754 mov      eax, dword ptr [rdi + r10*4 + 0x424]
00000001403d975c mov      dword ptr [rsp + 0x30], eax
00000001403d9760 mov      eax, dword ptr [rdi + r8*4 + 0x420]
00000001403d9768 lea      r8, [rip + 0x274081]
00000001403d976f mov      dword ptr [rsp + 0x28], eax
00000001403d9773 mov      eax, dword ptr [rdi + r10*4 + 0x41c]
00000001403d977b mov      dword ptr [rsp + 0x20], eax
00000001403d977f call     0x140044426
00000001403d9784 add      dword ptr [rbx], eax
00000001403d9786 mov      ecx, dword ptr [rbx]
00000001403d9788 inc      sil
00000001403d978b cmp      sil, 4
00000001403d978f jb       0x1403d9738
00000001403d9791 jmp      0x1403da222
00000001403d9796 lea      rdx, [rip + 0x274083]
00000001403d979d mov      rcx, r12
00000001403d97a0 call     0x140044360
00000001403d97a5 test     eax, eax
00000001403d97a7 jne      0x1403d97c5
00000001403d97a9 mov      rcx, qword ptr [rbp - 0x39]
00000001403d97ad mov      r9, r15
00000001403d97b0 mov      r8, rbx
00000001403d97b3 mov      qword ptr [rsp + 0x20], r14
00000001403d97b8 mov      rdx, r13
00000001403d97bb call     0x1403da244
00000001403d97c0 jmp      0x1403da222
00000001403d97c5 lea      rdx, [rip + 0x274064]
00000001403d97cc mov      rcx, r12
00000001403d97cf call     0x140044360
00000001403d97d4 test     eax, eax
00000001403d97d6 jne      0x1403d97f4
00000001403d97d8 mov      rcx, qword ptr [rbp - 0x39]
00000001403d97dc mov      r9, r15
00000001403d97df mov      r8, rbx
00000001403d97e2 mov      qword ptr [rsp + 0x20], r14
00000001403d97e7 mov      rdx, r13
00000001403d97ea call     0x1403dac90
00000001403d97ef jmp      0x1403da222
00000001403d97f4 lea      rdx, [rip + 0x273f65]
00000001403d97fb mov      rcx, r12
00000001403d97fe call     0x140044360
00000001403d9803 test     eax, eax
00000001403d9805 jne      0x1403d9841
00000001403d9807 lea      rcx, [r13 + 0x20]
00000001403d980b lea      r8, [rbp - 0x29]
00000001403d980f lea      rdx, [rip + 0x241f5a]
00000001403d9816 call     0x140044420
00000001403d981b mov      eax, dword ptr [rbp - 0x29]
00000001403d981e mov      dword ptr [rdi + 0x318], eax
00000001403d9824 mov      ecx, dword ptr [rbx]
00000001403d9826 mov      eax, dword ptr [r14]
00000001403d9829 cmp      ecx, eax
00000001403d982b jae      0x1403da222
00000001403d9831 mov      r9d, dword ptr [rbp - 0x29]
00000001403d9835 lea      r8, [rip + 0x274004]
00000001403d983c jmp      0x1403d9ddf
00000001403d9841 lea      rdx, [rip + 0x25c738]
00000001403d9848 mov      rcx, r12
00000001403d984b call     0x140044360
00000001403d9850 test     eax, eax
00000001403d9852 jne      0x1403d9862
00000001403d9854 mov      rcx, qword ptr [rbp - 0x39]
00000001403d9858 call     0x1403db0d8
00000001403d985d jmp      0x1403da222
00000001403d9862 lea      rdx, [rip + 0x21ee47]
00000001403d9869 mov      rcx, r12
00000001403d986c call     0x140044360
00000001403d9871 test     eax, eax
00000001403d9873 jne      0x1403d98a1
00000001403d9875 mov      ecx, dword ptr [rbx]
00000001403d9877 mov      eax, dword ptr [r14]
00000001403d987a cmp      ecx, eax
00000001403d987c jae      0x1403d9893
00000001403d987e sub      eax, ecx
00000001403d9880 lea      r8, [rip + 0x273fc9]
00000001403d9887 mov      edx, eax
00000001403d9889 add      rcx, r15
00000001403d988c call     0x140044426
00000001403d9891 add      dword ptr [rbx], eax
00000001403d9893 mov      rcx, qword ptr [rbp - 0x39]
00000001403d9897 call     0x1403dc538
00000001403d989c jmp      0x1403da222
00000001403d98a1 lea      rdx, [rip + 0x254cf8]
00000001403d98a8 mov      rcx, r12
00000001403d98ab call     0x140044360
00000001403d98b0 test     eax, eax
00000001403d98b2 jne      0x1403d98c7
00000001403d98b4 mov      rcx, qword ptr [rbp - 0x39]
00000001403d98b8 mov      dword ptr [rdi + 0x44c], 2
00000001403d98c2 jmp      0x1403da167
00000001403d98c7 lea      rdx, [rip + 0x256bd2]
00000001403d98ce mov      rcx, r12
00000001403d98d1 call     0x140044360
00000001403d98d6 test     eax, eax
00000001403d98d8 jne      0x1403d98f6
00000001403d98da mov      rcx, qword ptr [rbp - 0x39]
00000001403d98de mov      r9, r15
00000001403d98e1 mov      r8, rbx
00000001403d98e4 mov      qword ptr [rsp + 0x20], r14
00000001403d98e9 mov      rdx, r13
00000001403d98ec call     0x1403d7d58
00000001403d98f1 jmp      0x1403da222
00000001403d98f6 lea      rdx, [rip + 0x273f63]
00000001403d98fd mov      rcx, r12
00000001403d9900 call     0x140044360
00000001403d9905 test     eax, eax
00000001403d9907 jne      0x1403d9925
00000001403d9909 mov      rcx, qword ptr [rbp - 0x39]
00000001403d990d mov      r9, r15
00000001403d9910 mov      r8, rbx
00000001403d9913 mov      qword ptr [rsp + 0x20], r14
00000001403d9918 mov      rdx, r13
00000001403d991b call     0x1403d7ef4
00000001403d9920 jmp      0x1403da222
00000001403d9925 cmp      byte ptr [r12], 0x62
00000001403d992a jne      0x1403d9957
00000001403d992c cmp      byte ptr [r12 + 1], 0x62
00000001403d9932 jne      0x1403d9957
00000001403d9934 cmp      byte ptr [r12 + 2], sil
00000001403d9939 jne      0x1403d9957
00000001403d993b mov      rcx, qword ptr [rbp - 0x39]
00000001403d993f mov      r9, r15
00000001403d9942 mov      r8, rbx
00000001403d9945 mov      qword ptr [rsp + 0x20], r14
00000001403d994a mov      rdx, r13
00000001403d994d call     0x1403d8c7c
00000001403d9952 jmp      0x1403da222
00000001403d9957 lea      rdx, [rip + 0x22fbd2]
00000001403d995e mov      rcx, r12
00000001403d9961 call     0x140044360
00000001403d9966 test     eax, eax
00000001403d9968 jne      0x1403d9986
00000001403d996a mov      rcx, qword ptr [rbp - 0x39]
00000001403d996e mov      r9, r15
00000001403d9971 mov      r8, rbx
00000001403d9974 mov      qword ptr [rsp + 0x20], r14
00000001403d9979 mov      rdx, r13
00000001403d997c call     0x1403daabc
00000001403d9981 jmp      0x1403da222
00000001403d9986 lea      rdx, [rip + 0x273ee3]
00000001403d998d mov      rcx, r12
00000001403d9990 call     0x140044360
00000001403d9995 test     eax, eax
00000001403d9997 jne      0x1403d99d8
00000001403d9999 lea      rcx, [r13 + 0x20]
00000001403d999d lea      r8, [rbp - 0x25]
00000001403d99a1 lea      rdx, [rip + 0x241dc8]
00000001403d99a8 call     0x140044420
00000001403d99ad lea      rcx, [r13 + 0x30]
00000001403d99b1 lea      r8, [rbp - 0x21]
00000001403d99b5 lea      rdx, [rip + 0x241db4]
00000001403d99bc call     0x140044420
00000001403d99c1 mov      al, byte ptr [rbp - 0x25]
00000001403d99c4 mov      byte ptr [rdi + 0x40e], al
00000001403d99ca mov      al, byte ptr [rbp - 0x21]
00000001403d99cd mov      byte ptr [rdi + 0x410], al
00000001403d99d3 jmp      0x1403da222
00000001403d99d8 lea      rdx, [rip + 0x255571]
00000001403d99df mov      rcx, r12
00000001403d99e2 call     0x140044360
00000001403d99e7 test     eax, eax
00000001403d99e9 jne      0x1403d9a07
00000001403d99eb mov      rcx, qword ptr [rbp - 0x39]
00000001403d99ef mov      r9, r15
00000001403d99f2 mov      r8, rbx
00000001403d99f5 mov      qword ptr [rsp + 0x20], r14
00000001403d99fa mov      rdx, r13
00000001403d99fd call     0x1403da96c
00000001403d9a02 jmp      0x1403da222
00000001403d9a07 lea      rdx, [rip + 0x273e72]
00000001403d9a0e mov      rcx, r12
00000001403d9a11 call     0x140044360
00000001403d9a16 test     eax, eax
00000001403d9a18 jne      0x1403d9a61
00000001403d9a1a lea      rcx, [r13 + 0x20]
00000001403d9a1e lea      r8, [rbp - 0x25]
00000001403d9a22 lea      rdx, [rip + 0x241d47]
00000001403d9a29 call     0x140044420
00000001403d9a2e mov      al, byte ptr [rbp - 0x25]
00000001403d9a31 mov      byte ptr [rdi + 0x328], al
00000001403d9a37 mov      ecx, dword ptr [rbx]
00000001403d9a39 mov      eax, dword ptr [r14]
00000001403d9a3c cmp      ecx, eax
00000001403d9a3e jae      0x1403da222
00000001403d9a44 movzx    r9d, byte ptr [rbp - 0x25]
00000001403d9a49 lea      r8, [rip + 0x273e40]
00000001403d9a50 sub      eax, ecx
00000001403d9a52 mov      dword ptr [rsp + 0x20], r9d
00000001403d9a57 mov      edx, eax
00000001403d9a59 add      rcx, r15
00000001403d9a5c jmp      0x1403d9bcd
00000001403d9a61 lea      rdx, [rip + 0x273e58]
00000001403d9a68 mov      rcx, r12
00000001403d9a6b call     0x140044360
00000001403d9a70 test     eax, eax
00000001403d9a72 jne      0x1403d9ad6
00000001403d9a74 mov      r13, qword ptr [rbp - 0x39]
00000001403d9a78 lea      rax, [rbp - 0x31]
00000001403d9a7c lea      r9, [rbp - 0x41]
00000001403d9a80 mov      qword ptr [rsp + 0x20], rax
00000001403d9a85 lea      r8, [rbp - 0x2d]
00000001403d9a89 lea      rdx, [rbp - 0x40]
00000001403d9a8d mov      rcx, qword ptr [r13 + 8]
00000001403d9a91 call     0x14027c8dc
00000001403d9a96 mov      r10d, dword ptr [rbx]
00000001403d9a99 mov      ecx, dword ptr [r14]
00000001403d9a9c cmp      r10d, ecx
00000001403d9a9f jae      0x1403da222
00000001403d9aa5 movzx    r8d, word ptr [rbp - 0x2d]
00000001403d9aaa sub      ecx, r10d
00000001403d9aad movzx    eax, byte ptr [rbp - 0x41]
00000001403d9ab1 movzx    r9d, byte ptr [rbp - 0x40]
00000001403d9ab6 mov      dword ptr [rsp + 0x28], eax
00000001403d9aba mov      dword ptr [rsp + 0x20], r8d
00000001403d9abf lea      r8, [rip + 0x273e0a]
00000001403d9ac6 mov      edx, ecx
00000001403d9ac8 lea      rcx, [r15 + r10]
00000001403d9acc call     0x140044426
00000001403d9ad1 jmp      0x1403d9deb
00000001403d9ad6 lea      rdx, [rip + 0x273e33]
00000001403d9add mov      rcx, r12
00000001403d9ae0 call     0x140044360
00000001403d9ae5 test     eax, eax
00000001403d9ae7 je       0x1403da19a
00000001403d9aed lea      rdx, [rip + 0x2558ac]
00000001403d9af4 mov      rcx, r12
00000001403d9af7 call     0x140044360
00000001403d9afc test     eax, eax
00000001403d9afe je       0x1403da19a
00000001403d9b04 cmp      byte ptr [r12], 0x72
00000001403d9b09 jne      0x1403d9b36
00000001403d9b0b cmp      byte ptr [r12 + 1], 0x65
00000001403d9b11 jne      0x1403d9b36
00000001403d9b13 cmp      byte ptr [r12 + 2], sil
00000001403d9b18 jne      0x1403d9b36
00000001403d9b1a mov      rcx, qword ptr [rbp - 0x39]
00000001403d9b1e mov      r9, r15
00000001403d9b21 mov      r8, rbx
00000001403d9b24 mov      qword ptr [rsp + 0x20], r14
00000001403d9b29 mov      rdx, r13
00000001403d9b2c call     0x1403d81f0
00000001403d9b31 jmp      0x1403da222
00000001403d9b36 lea      rdx, [rip + 0x255773]
00000001403d9b3d mov      rcx, r12
00000001403d9b40 call     0x140044360
00000001403d9b45 test     eax, eax
00000001403d9b47 jne      0x1403d9bd7
00000001403d9b4d lea      rcx, [r13 + 0x20]
00000001403d9b51 lea      r8, [rbp - 0x25]
00000001403d9b55 lea      rdx, [rip + 0x241c14]
00000001403d9b5c call     0x140044420
00000001403d9b61 mov      eax, dword ptr [rbp - 0x25]
00000001403d9b64 mov      r13, qword ptr [rbp - 0x39]
00000001403d9b68 mov      dword ptr [rdi + 0x400], eax
00000001403d9b6e mov      rcx, r13
00000001403d9b71 mov      edx, dword ptr [rbp - 0x25]
00000001403d9b74 call     0x1403db3d4
00000001403d9b79 mov      byte ptr [rdi + 0x404], al
00000001403d9b7f test     al, al
00000001403d9b81 jne      0x1403d9b97
00000001403d9b83 mov      rax, qword ptr [r13 + 0x9a0]
00000001403d9b8a mov      dword ptr [rax + 0x1348], esi
00000001403d9b90 mov      byte ptr [rax + 0x13c9], sil
00000001403d9b97 mov      r8d, dword ptr [rbx]
00000001403d9b9a mov      ecx, dword ptr [r14]
00000001403d9b9d cmp      r8d, ecx
00000001403d9ba0 jae      0x1403da222
00000001403d9ba6 mov      eax, dword ptr [rdi + 0x400]
00000001403d9bac movzx    r9d, byte ptr [rdi + 0x404]
00000001403d9bb4 inc      eax
00000001403d9bb6 shl      eax, 6
00000001403d9bb9 sub      ecx, r8d
00000001403d9bbc mov      dword ptr [rsp + 0x20], eax
00000001403d9bc0 mov      edx, ecx
00000001403d9bc2 lea      rcx, [r15 + r8]
00000001403d9bc6 lea      r8, [rip + 0x273d53]
00000001403d9bcd call     0x140044426
00000001403d9bd2 jmp      0x1403d9deb
00000001403d9bd7 lea      rdx, [rip + 0x223682]
00000001403d9bde mov      rcx, r12
00000001403d9be1 call     0x140044360
00000001403d9be6 test     eax, eax
00000001403d9be8 jne      0x1403d9c88
00000001403d9bee lea      rcx, [r13 + 0x20]
00000001403d9bf2 lea      r8, [rbp - 0x25]
00000001403d9bf6 lea      rdx, [rip + 0x241b73]
00000001403d9bfd call     0x140044420
00000001403d9c02 cmp      dword ptr [rbp - 0x25], 1
00000001403d9c06 jne      0x1403d9c43
00000001403d9c08 lea      rcx, [r13 + 0x30]
00000001403d9c0c lea      r8, [rbp - 0x21]
00000001403d9c10 lea      rdx, [rip + 0x241b59]
00000001403d9c17 call     0x140044420
00000001403d9c1c mov      al, byte ptr [rbp - 0x21]
00000001403d9c1f mov      byte ptr [rdi + 0x326], al
00000001403d9c25 mov      ecx, dword ptr [rbx]
00000001403d9c27 mov      eax, dword ptr [r14]
00000001403d9c2a cmp      ecx, eax
00000001403d9c2c jae      0x1403da222
00000001403d9c32 movzx    r9d, byte ptr [rbp - 0x21]
00000001403d9c37 lea      r8, [rip + 0x273d12]
00000001403d9c3e jmp      0x1403d9ddf
00000001403d9c43 cmp      dword ptr [rbp - 0x25], 2
00000001403d9c47 jne      0x1403da222
00000001403d9c4d lea      rcx, [r13 + 0x30]
00000001403d9c51 lea      r8, [rbp - 0x21]
00000001403d9c55 lea      rdx, [rip + 0x241b14]
00000001403d9c5c call     0x140044420
00000001403d9c61 mov      al, byte ptr [rbp - 0x21]
00000001403d9c64 mov      byte ptr [rdi + 0x414], al
00000001403d9c6a mov      ecx, dword ptr [rbx]
00000001403d9c6c mov      eax, dword ptr [r14]
00000001403d9c6f cmp      ecx, eax
00000001403d9c71 jae      0x1403da222
00000001403d9c77 movzx    r9d, byte ptr [rbp - 0x21]
00000001403d9c7c lea      r8, [rip + 0x273ced]
00000001403d9c83 jmp      0x1403d9ddf
00000001403d9c88 lea      rdx, [rip + 0x25c2d1]
00000001403d9c8f mov      rcx, r12
00000001403d9c92 call     0x140044360
00000001403d9c97 test     eax, eax
00000001403d9c99 jne      0x1403d9d94
00000001403d9c9f lea      rdx, [rip + 0x273cea]
00000001403d9ca6 lea      rcx, [r13 + 0x20]
00000001403d9caa call     0x140044360
00000001403d9caf test     eax, eax
00000001403d9cb1 jne      0x1403d9cee
00000001403d9cb3 lea      rcx, [r13 + 0x30]
00000001403d9cb7 lea      r8, [rbp - 0x29]
00000001403d9cbb lea      rdx, [rip + 0x241aae]
00000001403d9cc2 call     0x140044420
00000001403d9cc7 mov      al, byte ptr [rbp - 0x29]
00000001403d9cca mov      byte ptr [rdi + 0x418], al
00000001403d9cd0 mov      ecx, dword ptr [rbx]
00000001403d9cd2 mov      eax, dword ptr [r14]
00000001403d9cd5 cmp      ecx, eax
00000001403d9cd7 jae      0x1403da222
00000001403d9cdd movzx    r9d, byte ptr [rbp - 0x29]
00000001403d9ce2 lea      r8, [rip + 0x273cb7]
00000001403d9ce9 jmp      0x1403d9ddf
00000001403d9cee lea      rdx, [rip + 0x273cdb]
00000001403d9cf5 lea      rcx, [r13 + 0x20]
00000001403d9cf9 call     0x140044360
00000001403d9cfe test     eax, eax
00000001403d9d00 jne      0x1403d9d3d
00000001403d9d02 lea      rcx, [r13 + 0x30]
00000001403d9d06 lea      r8, [rbp - 0x29]
00000001403d9d0a lea      rdx, [rip + 0x241a5f]
00000001403d9d11 call     0x140044420
00000001403d9d16 mov      al, byte ptr [rbp - 0x29]
00000001403d9d19 mov      byte ptr [rdi + 0x419], al
00000001403d9d1f mov      ecx, dword ptr [rbx]
00000001403d9d21 mov      eax, dword ptr [r14]
00000001403d9d24 cmp      ecx, eax
00000001403d9d26 jae      0x1403da222
00000001403d9d2c movzx    r9d, byte ptr [rbp - 0x29]
00000001403d9d31 lea      r8, [rip + 0x273ca8]
00000001403d9d38 jmp      0x1403d9ddf
00000001403d9d3d mov      r8d, dword ptr [rbx]
00000001403d9d40 mov      ecx, dword ptr [r14]
00000001403d9d43 cmp      r8d, ecx
00000001403d9d46 jae      0x1403d9d78
00000001403d9d48 cmp      byte ptr [rdi + 0x418], sil
00000001403d9d4f lea      rdx, [rip + 0x273caa]
00000001403d9d56 lea      r9, [rip + 0x273cb3]
00000001403d9d5d cmovne   r9, rdx
00000001403d9d61 sub      ecx, r8d
00000001403d9d64 mov      edx, ecx
00000001403d9d66 lea      rcx, [r15 + r8]
00000001403d9d6a lea      r8, [rip + 0x273caf]
00000001403d9d71 call     0x140044426
00000001403d9d76 add      dword ptr [rbx], eax
00000001403d9d78 mov      rcx, qword ptr [rbp - 0x39]
00000001403d9d7c mov      r9, r15
00000001403d9d7f mov      r8, rbx
00000001403d9d82 mov      qword ptr [rsp + 0x20], r14
00000001403d9d87 mov      rdx, r13
00000001403d9d8a call     0x1403d7778
00000001403d9d8f jmp      0x1403da222
00000001403d9d94 lea      rdx, [rip + 0x273c95]
00000001403d9d9b mov      rcx, r12
00000001403d9d9e call     0x140044360
00000001403d9da3 test     eax, eax
00000001403d9da5 jne      0x1403d9df2
00000001403d9da7 lea      rcx, [r13 + 0x20]
00000001403d9dab lea      r8, [rbp - 0x25]
00000001403d9daf lea      rdx, [rip + 0x2419ba]
00000001403d9db6 call     0x140044420
00000001403d9dbb movzx    eax, word ptr [rbp - 0x25]
00000001403d9dbf mov      word ptr [rdi + 0x324], ax
00000001403d9dc6 mov      ecx, dword ptr [rbx]
00000001403d9dc8 mov      eax, dword ptr [r14]
00000001403d9dcb cmp      ecx, eax
00000001403d9dcd jae      0x1403da222
00000001403d9dd3 movzx    r9d, word ptr [rbp - 0x25]
00000001403d9dd8 lea      r8, [rip + 0x273c61]
00000001403d9ddf sub      eax, ecx
00000001403d9de1 add      rcx, r15
00000001403d9de4 mov      edx, eax
00000001403d9de6 call     0x140044426
00000001403d9deb add      dword ptr [rbx], eax
00000001403d9ded jmp      0x1403da222
00000001403d9df2 cmp      byte ptr [r12], 0x31
00000001403d9df7 jne      0x1403da17d
00000001403d9dfd cmp      byte ptr [r12 + 1], sil
00000001403d9e02 jne      0x1403da17d
00000001403d9e08 cmp      byte ptr [rdi + 0x404], sil
00000001403d9e0f jne      0x1403d9e2f
00000001403d9e11 mov      ecx, dword ptr [rbx]
00000001403d9e13 mov      eax, dword ptr [r14]
00000001403d9e16 cmp      ecx, eax
00000001403d9e18 jae      0x1403d9e2f
00000001403d9e1a sub      eax, ecx
00000001403d9e1c lea      r8, [rip + 0x273c3d]
00000001403d9e23 mov      edx, eax
00000001403d9e25 add      rcx, r15
00000001403d9e28 call     0x140044426
00000001403d9e2d add      dword ptr [rbx], eax
00000001403d9e2f lea      rcx, [r13 + 0x20]
00000001403d9e33 lea      r8, [rbp - 0x25]
00000001403d9e37 lea      rdx, [rip + 0x241932]
00000001403d9e3e call     0x140044420
00000001403d9e43 lea      rcx, [r13 + 0x30]
00000001403d9e47 lea      r8, [rbp - 0x21]
00000001403d9e4b lea      rdx, [rip + 0x24191e]
00000001403d9e52 call     0x140044420
00000001403d9e57 lea      rcx, [r13 + 0x40]
00000001403d9e5b lea      r8, [rbp - 0x1d]
00000001403d9e5f lea      rdx, [rip + 0x24190a]
00000001403d9e66 call     0x140044420
00000001403d9e6b lea      rcx, [r13 + 0x50]
00000001403d9e6f lea      r8, [rbp - 0x19]
00000001403d9e73 lea      rdx, [rip + 0x2418f6]
00000001403d9e7a call     0x140044420
00000001403d9e7f lea      rcx, [r13 + 0x60]
00000001403d9e83 lea      r8, [rbp - 0x15]
00000001403d9e87 lea      rdx, [rip + 0x21d512]
00000001403d9e8e call     0x140044420
00000001403d9e93 lea      rcx, [r13 + 0x70]
00000001403d9e97 lea      r8, [rbp - 0x11]
00000001403d9e9b lea      rdx, [rip + 0x21d4fe]
00000001403d9ea2 call     0x140044420
00000001403d9ea7 lea      rcx, [r13 + 0x80]
00000001403d9eae lea      r8, [rbp - 0xd]
00000001403d9eb2 lea      rdx, [rip + 0x2418b7]
00000001403d9eb9 call     0x140044420
00000001403d9ebe lea      rcx, [r13 + 0x90]
00000001403d9ec5 lea      r8, [rbp - 9]
00000001403d9ec9 lea      rdx, [rip + 0x2418a0]
00000001403d9ed0 call     0x140044420
00000001403d9ed5 lea      rcx, [r13 + 0xa0]
00000001403d9edc lea      r8, [rbp - 5]
00000001403d9ee0 lea      rdx, [rip + 0x241889]
00000001403d9ee7 call     0x140044420
00000001403d9eec mov      r13, qword ptr [rbp - 0x39]
00000001403d9ef0 xor      r8d, r8d
00000001403d9ef3 mov      rcx, qword ptr [r13 + 0x9a0]
00000001403d9efa lea      edx, [r8 + 0x60]
00000001403d9efe add      rcx, 0x13d4
00000001403d9f05 call     0x140031144
00000001403d9f0a mov      rcx, qword ptr [r13 + 0x9a0]
00000001403d9f11 xor      r8d, r8d
00000001403d9f14 add      rcx, 0x1434
00000001403d9f1b lea      r12d, [r8 + 0xa]
00000001403d9f1f mov      edx, r12d
00000001403d9f22 call     0x140031144
00000001403d9f27 mov      rcx, qword ptr [r13 + 0x9a0]
00000001403d9f2e xor      r8d, r8d
00000001403d9f31 add      rcx, 0x13c8
00000001403d9f38 mov      edx, r12d
00000001403d9f3b call     0x140031144
00000001403d9f40 mov      al, byte ptr [rbp - 0x25]
00000001403d9f43 mov      dl, 1
00000001403d9f45 mov      byte ptr [rdi + 0x327], al
00000001403d9f4b mov      rcx, r13
00000001403d9f4e mov      eax, dword ptr [rbp - 0x21]
00000001403d9f51 mov      dword ptr [rdi + 0x338], eax
00000001403d9f57 mov      eax, dword ptr [rbp - 0x19]
00000001403d9f5a mov      dword ptr [rdi + 0x408], eax
00000001403d9f60 mov      al, byte ptr [rbp - 0x15]
00000001403d9f63 mov      byte ptr [rdi + 0x329], al
00000001403d9f69 mov      eax, dword ptr [rbp - 0x11]
00000001403d9f6c mov      dword ptr [rdi + 0x310], eax
00000001403d9f72 mov      eax, dword ptr [rbp - 0xd]
00000001403d9f75 mov      dword ptr [rdi + 0x32c], eax
00000001403d9f7b mov      r8d, dword ptr [rbp - 9]
00000001403d9f7f call     0x1403d6e8c
00000001403d9f84 mov      eax, dword ptr [rbp - 5]
00000001403d9f87 mov      dword ptr [rdi + 0x318], eax
00000001403d9f8d cmp      byte ptr [rdi + 0x327], sil
00000001403d9f94 jne      0x1403d9fbe
00000001403d9f96 movzx    eax, byte ptr [rbp - 0x1d]
00000001403d9f9a mov      dword ptr [rdi + 0x36c], eax
00000001403d9fa0 mov      byte ptr [rdi + 0x336], sil
00000001403d9fa7 mov      byte ptr [rdi + 0x394], sil
00000001403d9fae mov      byte ptr [rdi + 0x388], sil
00000001403d9fb5 mov      byte ptr [rdi + 0x3f4], sil
00000001403d9fbc jmp      0x1403d9fe5
00000001403d9fbe mov      byte ptr [rdi + 0x336], 1
00000001403d9fc5 mov      byte ptr [rdi + 0x394], sil
00000001403d9fcc mov      byte ptr [rdi + 0x388], sil
00000001403d9fd3 mov      word ptr [rdi + 0x3f4], 0x101
00000001403d9fdc mov      al, byte ptr [rbp - 0x1d]
00000001403d9fdf mov      byte ptr [rdi + 0x3f6], al
00000001403d9fe5 mov      rcx, qword ptr [rip + 0x546014]
00000001403d9fec lea      rax, [rip + 0x54600d]
00000001403d9ff3 cmp      rcx, rax
00000001403d9ff6 je       0x1403da061
00000001403d9ff8 cmp      byte ptr [rcx + 0x169], 4
00000001403d9fff jb       0x1403da061
00000001403da001 test     dword ptr [rcx + 0x16c], 0x1000
00000001403da00b je       0x1403da061
00000001403da00d mov      eax, dword ptr [rbp - 5]
00000001403da010 lea      r8, [rip + 0x2fb201]
00000001403da017 mov      r9d, dword ptr [rbp - 0x25]
00000001403da01b mov      edx, 0x51
00000001403da020 mov      rcx, qword ptr [rcx + 0x158]
00000001403da027 mov      dword ptr [rsp + 0x58], eax
00000001403da02b mov      eax, dword ptr [rbp - 9]
00000001403da02e mov      dword ptr [rsp + 0x50], eax
00000001403da032 mov      eax, dword ptr [rbp - 0xd]
00000001403da035 mov      dword ptr [rsp + 0x48], eax
00000001403da039 mov      eax, dword ptr [rbp - 0x11]
00000001403da03c mov      dword ptr [rsp + 0x40], eax
00000001403da040 mov      eax, dword ptr [rbp - 0x15]
00000001403da043 mov      dword ptr [rsp + 0x38], eax
00000001403da047 mov      eax, dword ptr [rbp - 0x19]
00000001403da04a mov      dword ptr [rsp + 0x30], eax
00000001403da04e mov      eax, dword ptr [rbp - 0x1d]
00000001403da051 mov      dword ptr [rsp + 0x28], eax
00000001403da055 mov      eax, dword ptr [rbp - 0x21]
00000001403da058 mov      dword ptr [rsp + 0x20], eax
00000001403da05c call     0x140099b4c
00000001403da061 mov      ecx, dword ptr [rbx]
00000001403da063 mov      eax, dword ptr [r14]
00000001403da066 cmp      ecx, eax
00000001403da068 jae      0x1403da09f
00000001403da06a movzx    r8d, byte ptr [rdi + 0x327]
00000001403da072 sub      eax, ecx
00000001403da074 mov      r9d, dword ptr [rdi + 0x338]
00000001403da07b add      rcx, r15
00000001403da07e mov      edx, eax
00000001403da080 mov      eax, dword ptr [rdi + 0x36c]
00000001403da086 mov      dword ptr [rsp + 0x28], eax
00000001403da08a mov      dword ptr [rsp + 0x20], r8d
00000001403da08f lea      r8, [rip + 0x273a0a]
00000001403da096 call     0x140044426
00000001403da09b add      dword ptr [rbx], eax
00000001403da09d mov      ecx, dword ptr [rbx]
00000001403da09f mov      eax, dword ptr [r14]
00000001403da0a2 cmp      ecx, eax
00000001403da0a4 jae      0x1403da0db
00000001403da0a6 movzx    r8d, byte ptr [rdi + 0x329]
00000001403da0ae sub      eax, ecx
00000001403da0b0 mov      r9d, dword ptr [rdi + 0x408]
00000001403da0b7 add      rcx, r15
00000001403da0ba mov      edx, eax
00000001403da0bc mov      eax, dword ptr [rdi + 0x310]
00000001403da0c2 mov      dword ptr [rsp + 0x28], eax
00000001403da0c6 mov      dword ptr [rsp + 0x20], r8d
00000001403da0cb lea      r8, [rip + 0x273a1e]
00000001403da0d2 call     0x140044426
00000001403da0d7 add      dword ptr [rbx], eax
00000001403da0d9 mov      ecx, dword ptr [rbx]
00000001403da0db mov      eax, dword ptr [r14]
00000001403da0de cmp      ecx, eax
00000001403da0e0 jae      0x1403da117
00000001403da0e2 movzx    r8d, word ptr [rdi + 0x334]
00000001403da0ea sub      eax, ecx
00000001403da0ec mov      r9d, dword ptr [rdi + 0x32c]
00000001403da0f3 add      rcx, r15
00000001403da0f6 mov      edx, eax
00000001403da0f8 mov      eax, dword ptr [rdi + 0x318]
00000001403da0fe mov      dword ptr [rsp + 0x28], eax
00000001403da102 mov      dword ptr [rsp + 0x20], r8d
00000001403da107 lea      r8, [rip + 0x273a32]
00000001403da10e call     0x140044426
00000001403da113 add      dword ptr [rbx], eax
00000001403da115 mov      ecx, dword ptr [rbx]
00000001403da117 mov      edx, dword ptr [r14]
00000001403da11a cmp      ecx, edx
00000001403da11c jae      0x1403da15e
00000001403da11e movzx    r8d, byte ptr [rdi + 0x388]
00000001403da126 sub      edx, ecx
00000001403da128 movzx    eax, byte ptr [rdi + 0x3f4]
00000001403da12f add      rcx, r15
00000001403da132 movzx    r10d, byte ptr [rdi + 0x394]
00000001403da13a movzx    r9d, byte ptr [rdi + 0x336]
00000001403da142 mov      dword ptr [rsp + 0x30], eax
00000001403da146 mov      dword ptr [rsp + 0x28], r8d
00000001403da14b lea      r8, [rip + 0x273a3e]
00000001403da152 mov      dword ptr [rsp + 0x20], r10d
00000001403da157 call     0x140044426
00000001403da15c add      dword ptr [rbx], eax
00000001403da15e mov      dword ptr [rdi + 0x44c], esi
00000001403da164 mov      rcx, r13
00000001403da167 mov      eax, dword ptr [rdi + 0x318]
00000001403da16d mov      dword ptr [rdi + 0x314], eax
00000001403da173 call     0x1403dc9c8
00000001403da178 jmp      0x1403da222
00000001403da17d mov      ecx, dword ptr [rbx]
00000001403da17f mov      eax, dword ptr [r14]
00000001403da182 cmp      ecx, eax
00000001403da184 jae      0x1403da222
00000001403da18a sub      eax, ecx
00000001403da18c lea      r8, [rip + 0x25138d]
00000001403da193 mov      edx, eax
00000001403da195 jmp      0x1403d94d9
00000001403da19a lea      rcx, [r13 + 0x20]
00000001403da19e lea      r8, [rbp - 0x25]
00000001403da1a2 lea      rdx, [rip + 0x2415c7]
00000001403da1a9 call     0x140044420
00000001403da1ae lea      rcx, [r13 + 0x30]
00000001403da1b2 lea      r8, [rbp - 0x21]
00000001403da1b6 lea      rdx, [rip + 0x2415b3]
00000001403da1bd call     0x140044420
00000001403da1c2 mov      dword ptr [rdi + 0x308], 2
00000001403da1cc xor      r8d, r8d
00000001403da1cf mov      edx, dword ptr [rdi + 0x2f0]
00000001403da1d5 mov      rcx, qword ptr [rdi + 0x2e8]
00000001403da1dc call     0x140031144
00000001403da1e1 mov      r13, qword ptr [rbp - 0x39]
00000001403da1e5 mov      r8b, byte ptr [rbp - 0x21]
00000001403da1e9 mov      rcx, r13
00000001403da1ec movzx    edx, word ptr [rbp - 0x25]
00000001403da1f0 call     0x1403dc620
00000001403da1f5 mov      rax, qword ptr [r13 + 0x9a0]
00000001403da1fc mov      dword ptr [rax + 0x1348], esi
00000001403da202 mov      byte ptr [rax + 0x13c9], sil
00000001403da209 jmp      0x1403da222
00000001403da20b mov      rcx, qword ptr [rbp - 0x39]
00000001403da20f mov      r9, r15
00000001403da212 mov      r8, rbx
00000001403da215 mov      qword ptr [rsp + 0x20], r14
00000001403da21a mov      rdx, r13
00000001403da21d call     0x1403d8394
00000001403da222 mov      rcx, qword ptr [rbp - 1]
00000001403da226 xor      rcx, rsp
00000001403da229 call     0x1405f45b0
00000001403da22e add      rsp, 0xb8
00000001403da235 pop      r15
00000001403da237 pop      r14
00000001403da239 pop      r13
00000001403da23b pop      r12
00000001403da23d pop      rdi
00000001403da23e pop      rsi
00000001403da23f pop      rbx
00000001403da240 pop      rbp
00000001403da241 ret      