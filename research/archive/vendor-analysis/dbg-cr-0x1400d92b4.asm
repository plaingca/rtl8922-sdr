00000001400d92b4 mov      qword ptr [rsp + 0x10], rdx
00000001400d92b9 push     rbx
00000001400d92ba push     rbp
00000001400d92bb push     rsi
00000001400d92bc push     rdi
00000001400d92bd push     r12
00000001400d92bf push     r13
00000001400d92c1 push     r14
00000001400d92c3 push     r15
00000001400d92c5 sub      rsp, 0x58
00000001400d92c9 mov      r14, qword ptr [r8 + 0x248]
00000001400d92d0 xor      r12d, r12d
00000001400d92d3 mov      rsi, r8
00000001400d92d6 mov      qword ptr [rsp + 0x40], r12
00000001400d92db mov      r13, rcx
00000001400d92de mov      dword ptr [rsp + 0x30], r12d
00000001400d92e3 mov      rbx, rdx
00000001400d92e6 mov      r15d, r12d
00000001400d92e9 mov      r8, qword ptr [r14]
00000001400d92ec mov      cl, byte ptr [r8]
00000001400d92ef mov      al, cl
00000001400d92f1 and      al, 0xc
00000001400d92f3 cmp      al, 8
00000001400d92f5 jne      0x1400d92fe
00000001400d92f7 mov      bpl, 0x1a
00000001400d92fa test     cl, cl
00000001400d92fc js       0x1400d9301
00000001400d92fe mov      bpl, 0x18
00000001400d9301 movzx    eax, word ptr [r8]
00000001400d9305 lea      rdx, [rip + 0x846cf4]
00000001400d930c mov      ecx, 0x300
00000001400d9311 mov      byte ptr [rsp + 0xa0], bpl
00000001400d9319 and      ax, cx
00000001400d931c cmp      ax, cx
00000001400d931f jne      0x1400d935b
00000001400d9321 mov      rcx, qword ptr [rip + 0x846cd8]
00000001400d9328 cmp      rcx, rdx
00000001400d932b je       0x1400d934f
00000001400d932d cmp      byte ptr [rcx + 0x29], 4
00000001400d9331 jb       0x1400d934f
00000001400d9333 bt       dword ptr [rcx + 0x2c], 0xb
00000001400d9338 jae      0x1400d934f
00000001400d933a mov      rcx, qword ptr [rcx + 0x18]
00000001400d933e lea      r8, [rip + 0x5b99eb]
00000001400d9345 mov      edx, 0x67
00000001400d934a call     0x140001b88
00000001400d934f add      bpl, 6
00000001400d9353 mov      byte ptr [rsp + 0xa0], bpl
00000001400d935b lea      eax, [rbp + 8]
00000001400d935e mov      rcx, r13
00000001400d9361 mov      byte ptr [rsp + 0xb0], al
00000001400d9368 call     0x1400dbea4
00000001400d936d test     eax, eax
00000001400d936f jle      0x1400d937b
00000001400d9371 mov      r8d, r12d
00000001400d9374 mov      dword ptr [rsp + 0x38], r12d
00000001400d9379 jmp      0x1400d93a0
00000001400d937b lea      r8, [rsi + 0x668]
00000001400d9382 mov      rdx, rbx
00000001400d9385 mov      rcx, r13
00000001400d9388 call     0x1400cf7dc
00000001400d938d movzx    r8d, al
00000001400d9391 mov      dword ptr [rsp + 0x38], r8d
00000001400d9396 cmp      r8d, 4
00000001400d939a je       0x1400d979f
00000001400d93a0 mov      rcx, qword ptr [rip + 0x846c59]
00000001400d93a7 lea      rax, [rip + 0x846c52]
00000001400d93ae cmp      rcx, rax
00000001400d93b1 je       0x1400d93e1
00000001400d93b3 cmp      byte ptr [rcx + 0x29], 5
00000001400d93b7 jb       0x1400d93e1
00000001400d93b9 bt       dword ptr [rcx + 0x2c], 0xb
00000001400d93be jae      0x1400d93e1
00000001400d93c0 mov      rcx, qword ptr [rcx + 0x18]
00000001400d93c4 lea      r9, [rip + 0x525135]
00000001400d93cb mov      dword ptr [rsp + 0x20], r8d
00000001400d93d0 mov      edx, 0x68
00000001400d93d5 lea      r8, [rip + 0x5b9954]
00000001400d93dc call     0x1400088d8
00000001400d93e1 mov      eax, r12d
00000001400d93e4 mov      edi, r12d
00000001400d93e7 mov      dword ptr [rsp + 0x34], eax
00000001400d93eb mov      dword ptr [rsp + 0xb8], r12d
00000001400d93f3 cmp      r12w, word ptr [rsi + 0x438]
00000001400d93fb jae      0x1400d979f
00000001400d9401 lea      rcx, [r13 + 0xfbb10]
00000001400d9408 xor      r8d, r8d
00000001400d940b mov      edx, 0x960
00000001400d9410 mov      dword ptr [rsp + 0x3c], eax
00000001400d9414 mov      r12d, eax
00000001400d9417 mov      ebx, r8d
00000001400d941a call     0x140031290
00000001400d941f mov      eax, edi
00000001400d9421 xor      r8d, r8d
00000001400d9424 mov      qword ptr [rsp + 0x48], rax
00000001400d9429 movzx    edi, word ptr [rsi + rax*2 + 0x44a]
00000001400d9431 test     di, di
00000001400d9434 je       0x1400d9504
00000001400d943a mov      ebp, dword ptr [rsp + 0x34]
00000001400d943e mov      r12, qword ptr [rsp + 0x40]
00000001400d9443 mov      eax, 0xffff
00000001400d9448 mov      edx, r15d
00000001400d944b add      di, ax
00000001400d944e mov      eax, ebp
00000001400d9450 lea      rcx, [rax + rax*2]
00000001400d9454 mov      eax, dword ptr [rsi + 0x10]
00000001400d9457 movzx    r15d, word ptr [r14 + rcx*8 + 0x10]
00000001400d945d test     al, 1
00000001400d945f je       0x1400d9470
00000001400d9461 test     r15d, r15d
00000001400d9464 je       0x1400d946a
00000001400d9466 mov      r12, qword ptr [r14 + rcx*8]
00000001400d946a cmove    r15d, edx
00000001400d946e jmp      0x1400d9474
00000001400d9470 mov      r12, qword ptr [r14 + rcx*8]
00000001400d9474 lea      eax, [r15 + rbx]
00000001400d9478 mov      ecx, 0x960
00000001400d947d cmp      eax, ecx
00000001400d947f jbe      0x1400d94c1
00000001400d9481 mov      r15d, ecx
00000001400d9484 mov      edi, r8d
00000001400d9487 sub      r15d, ebx
00000001400d948a mov      rcx, qword ptr [rip + 0x846b6f]
00000001400d9491 lea      rax, [rip + 0x846b68]
00000001400d9498 cmp      rcx, rax
00000001400d949b je       0x1400d94c1
00000001400d949d cmp      byte ptr [rcx + 0x29], 2
00000001400d94a1 jb       0x1400d94c1
00000001400d94a3 test     dword ptr [rcx + 0x2c], 0x800
00000001400d94aa je       0x1400d94c1
00000001400d94ac mov      rcx, qword ptr [rcx + 0x18]
00000001400d94b0 lea      r8, [rip + 0x5b9879]
00000001400d94b7 mov      edx, 0x69
00000001400d94bc call     0x140001b88
00000001400d94c1 mov      ecx, ebx
00000001400d94c3 mov      r8d, r15d
00000001400d94c6 add      rcx, 0xfbb10
00000001400d94cd mov      rdx, r12
00000001400d94d0 add      rcx, r13
00000001400d94d3 call     0x1400311e8
00000001400d94d8 xor      r8d, r8d
00000001400d94db add      ebx, r15d
00000001400d94de inc      ebp
00000001400d94e0 test     di, di
00000001400d94e3 jne      0x1400d9443
00000001400d94e9 mov      qword ptr [rsp + 0x40], r12
00000001400d94ee mov      r12d, dword ptr [rsp + 0x3c]
00000001400d94f3 mov      dword ptr [rsp + 0x34], ebp
00000001400d94f7 mov      bpl, byte ptr [rsp + 0xa0]
00000001400d94ff mov      dword ptr [rsp + 0x30], r15d
00000001400d9504 test     ebx, ebx
00000001400d9506 je       0x1400d9770
00000001400d950c mov      rcx, r13
00000001400d950f call     0x1400dbea4
00000001400d9514 test     eax, eax
00000001400d9516 jg       0x1400d979f
00000001400d951c mov      eax, dword ptr [rsp + 0x38]
00000001400d9520 movzx    r9d, bpl
00000001400d9524 test     eax, eax
00000001400d9526 jne      0x1400d9539
00000001400d9528 movzx    r8d, byte ptr [r13 + 0xc0d9d]
00000001400d9530 lea      rdx, [r13 + 0xc0bb5]
00000001400d9537 jmp      0x1400d955a
00000001400d9539 imul     rcx, rax, 0x130
00000001400d9540 mov      rax, qword ptr [rsp + 0xa8]
00000001400d9548 mov      r8d, dword ptr [rcx + rax + 0x1890]
00000001400d9550 lea      rdx, [rax + 0x1870]
00000001400d9557 add      rdx, rcx
00000001400d955a mov      dword ptr [rsp + 0x28], ebx
00000001400d955e mov      rcx, r13
00000001400d9561 mov      dword ptr [rsp + 0x20], r9d
00000001400d9566 lea      r9, [r13 + 0xfbb10]
00000001400d956d call     0x14012de4c
00000001400d9572 mov      eax, dword ptr [rsi + 0x10]
00000001400d9575 xor      edi, edi
00000001400d9577 lea      ebx, [rdi + 1]
00000001400d957a and      eax, ebx
00000001400d957c jne      0x1400d9581
00000001400d957e inc      r12d
00000001400d9581 movzx    ebp, ax
00000001400d9584 xor      bp, bx
00000001400d9587 test     eax, eax
00000001400d9589 je       0x1400d95cd
00000001400d958b mov      eax, r12d
00000001400d958e lea      rdi, [rax + rax*2]
00000001400d9592 movzx    eax, byte ptr [rsp + 0xb0]
00000001400d959a movzx    r8d, word ptr [r14 + rdi*8 + 0x10]
00000001400d95a0 mov      ecx, eax
00000001400d95a2 add      rcx, qword ptr [r14 + rdi*8]
00000001400d95a6 sub      r8d, eax
00000001400d95a9 mov      ebx, eax
00000001400d95ab lea      rdx, [rax + 0xfbb10]
00000001400d95b2 add      rdx, r13
00000001400d95b5 call     0x1400311e8
00000001400d95ba movzx    edi, word ptr [r14 + rdi*8 + 0x10]
00000001400d95c0 sub      edi, ebx
00000001400d95c2 mov      ebx, 1
00000001400d95c7 add      r12d, ebx
00000001400d95ca add      bp, bx
00000001400d95cd mov      rax, qword ptr [rsp + 0x48]
00000001400d95d2 cmp      bp, word ptr [rsi + rax*2 + 0x44a]
00000001400d95da jae      0x1400d9633
00000001400d95dc movzx    r15d, byte ptr [rsp + 0xb0]
00000001400d95e5 mov      eax, r12d
00000001400d95e8 mov      edx, edi
00000001400d95ea add      rdx, 0xfbb10
00000001400d95f1 add      rdx, r15
00000001400d95f4 lea      rbx, [rax + rax*2]
00000001400d95f8 add      rdx, r13
00000001400d95fb movzx    r8d, word ptr [r14 + rbx*8 + 0x10]
00000001400d9601 mov      rcx, qword ptr [r14 + rbx*8]
00000001400d9605 call     0x1400311e8
00000001400d960a movzx    eax, word ptr [r14 + rbx*8 + 0x10]
00000001400d9610 mov      ebx, 1
00000001400d9615 add      edi, eax
00000001400d9617 add      r12d, ebx
00000001400d961a mov      eax, dword ptr [rsp + 0xb8]
00000001400d9621 add      bp, bx
00000001400d9624 cmp      bp, word ptr [rsi + rax*2 + 0x44a]
00000001400d962c jb       0x1400d95e5
00000001400d962e mov      r15d, dword ptr [rsp + 0x30]
00000001400d9633 mov      eax, dword ptr [rsi + 0x10]
00000001400d9636 test     bl, al
00000001400d9638 je       0x1400d969f
00000001400d963a movzx    edx, byte ptr [rsp + 0xb0]
00000001400d9642 lea      eax, [r12 - 1]
00000001400d9647 add      rdx, 0xfbb10
00000001400d964e mov      ecx, edi
00000001400d9650 lea      rbx, [rax + rax*2]
00000001400d9654 add      rdx, r13
00000001400d9657 add      rdx, rcx
00000001400d965a mov      r12d, 0x10
00000001400d9660 movzx    ecx, word ptr [r14 + rbx*8 + 0x10]
00000001400d9666 mov      r8d, r12d
00000001400d9669 add      rcx, qword ptr [r14 + rbx*8]
00000001400d966d call     0x1400311e8
00000001400d9672 add      word ptr [r14 + rbx*8 + 0x10], r12w
00000001400d9678 mov      edi, dword ptr [rsp + 0xb8]
00000001400d967f mov      bpl, byte ptr [rsp + 0xa0]
00000001400d9687 add      word ptr [rsi + rdi*2 + 0x43a], r12w
00000001400d9690 add      dword ptr [rsi + 0x23c], r12d
00000001400d9697 xor      r8d, r8d
00000001400d969a jmp      0x1400d9777
00000001400d969f cmp      word ptr [rsi + 0x438], bx
00000001400d96a6 jne      0x1400d975c
00000001400d96ac movzx    edx, byte ptr [rsp + 0xb0]
00000001400d96b4 mov      ebp, 0x10
00000001400d96b9 add      rdx, 0xfbb10
00000001400d96c0 mov      ecx, edi
00000001400d96c2 add      rdx, r13
00000001400d96c5 mov      r8d, ebp
00000001400d96c8 add      rdx, rcx
00000001400d96cb mov      rcx, qword ptr [rsi + 0x3c8]
00000001400d96d2 call     0x1400311e8
00000001400d96d7 movzx    eax, byte ptr [rsi + 0x240]
00000001400d96de mov      edi, dword ptr [rsp + 0xb8]
00000001400d96e5 mov      dword ptr [rsi + 0x3d8], ebp
00000001400d96eb lea      rcx, [rax + rax*2]
00000001400d96ef mov      rax, qword ptr [rsi + 0x3c8]
00000001400d96f6 mov      qword ptr [r14 + rcx*8], rax
00000001400d96fa movzx    eax, byte ptr [rsi + 0x240]
00000001400d9701 lea      rcx, [rax + rax*2]
00000001400d9705 mov      eax, dword ptr [rsi + 0x3d4]
00000001400d970b mov      dword ptr [r14 + rcx*8 + 8], eax
00000001400d9710 movzx    eax, byte ptr [rsi + 0x240]
00000001400d9717 lea      rcx, [rax + rax*2]
00000001400d971b mov      eax, dword ptr [rsi + 0x3d0]
00000001400d9721 mov      dword ptr [r14 + rcx*8 + 0xc], eax
00000001400d9726 movzx    eax, byte ptr [rsi + 0x240]
00000001400d972d lea      rcx, [rax + rax*2]
00000001400d9731 movzx    eax, word ptr [rsi + 0x3d8]
00000001400d9738 mov      word ptr [r14 + rcx*8 + 0x10], ax
00000001400d973e add      byte ptr [rsi + 0x240], bl
00000001400d9744 add      word ptr [rsi + rdi*2 + 0x43a], bp
00000001400d974c add      word ptr [rsi + rdi*2 + 0x44a], bx
00000001400d9754 add      dword ptr [rsi + 0x23c], ebp
00000001400d975a jmp      0x1400d9763
00000001400d975c mov      edi, dword ptr [rsp + 0xb8]
00000001400d9763 mov      bpl, byte ptr [rsp + 0xa0]
00000001400d976b xor      r8d, r8d
00000001400d976e jmp      0x1400d977c
00000001400d9770 mov      edi, dword ptr [rsp + 0xb8]
00000001400d9777 mov      ebx, 1
00000001400d977c movzx    eax, word ptr [rsi + 0x438]
00000001400d9783 lea      rcx, [r13 + 0xfbb10]
00000001400d978a add      edi, ebx
00000001400d978c cmp      edi, eax
00000001400d978e mov      dword ptr [rsp + 0xb8], edi
00000001400d9795 mov      eax, dword ptr [rsp + 0x34]
00000001400d9799 jb       0x1400d940b
00000001400d979f add      rsp, 0x58
00000001400d97a3 pop      r15
00000001400d97a5 pop      r14
00000001400d97a7 pop      r13
00000001400d97a9 pop      r12
00000001400d97ab pop      rdi
00000001400d97ac pop      rsi
00000001400d97ad pop      rbp
00000001400d97ae pop      rbx
00000001400d97af ret      