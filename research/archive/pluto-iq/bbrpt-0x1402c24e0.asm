00000001402c24e0 mov      qword ptr [rsp + 8], rbx
00000001402c24e5 mov      qword ptr [rsp + 0x10], rbp
00000001402c24ea mov      qword ptr [rsp + 0x18], rsi
00000001402c24ef push     rdi
00000001402c24f0 push     r14
00000001402c24f2 push     r15
00000001402c24f4 sub      rsp, 0x50
00000001402c24f8 mov      rax, qword ptr [rcx + 8]
00000001402c24fc xor      edi, edi
00000001402c24fe mov      rbx, qword ptr [rdx]
00000001402c2501 mov      r15d, 1
00000001402c2507 mov      ebp, dword ptr [rdx + 0x10]
00000001402c250a mov      esi, r15d
00000001402c250d add      rbp, rbx
00000001402c2510 movzx    r14d, byte ptr [rax + 0x4b3]
00000001402c2518 lea      rax, [r14 + rbx]
00000001402c251c cmp      rax, rbp
00000001402c251f ja       0x1402c25bb
00000001402c2525 mov      esi, edi
00000001402c2527 mov      rcx, qword ptr [rip + 0x65dad2]
00000001402c252e lea      rax, [rip + 0x65dacb]
00000001402c2535 cmp      rcx, rax
00000001402c2538 je       0x1402c25a7
00000001402c253a cmp      byte ptr [rcx + 0x169], 4
00000001402c2541 jb       0x1402c25a7
00000001402c2543 mov      eax, dword ptr [rcx + 0x16c]
00000001402c2549 test     r15b, al
00000001402c254c je       0x1402c25a7
00000001402c254e mov      eax, dword ptr [rbx]
00000001402c2550 mov      edx, 0x22
00000001402c2555 movzx    r10d, word ptr [rbx]
00000001402c2559 mov      rcx, qword ptr [rcx + 0x158]
00000001402c2560 and      r10d, 0x3fff
00000001402c2567 shr      eax, 0x16
00000001402c256a movzx    r8d, al
00000001402c256e mov      eax, dword ptr [rbx + 4]
00000001402c2571 mov      dword ptr [rsp + 0x40], r8d
00000001402c2576 lea      r8, [rip + 0x3d6f23]
00000001402c257d mov      dword ptr [rsp + 0x38], eax
00000001402c2581 lea      rax, [rip + 0x3633e8]
00000001402c2588 mov      dword ptr [rsp + 0x30], r10d
00000001402c258d movzx    r9d, di
00000001402c2591 mov      dword ptr [rsp + 0x28], r9d
00000001402c2596 lea      r9, [rip + 0x34bdf3]
00000001402c259d mov      qword ptr [rsp + 0x20], rax
00000001402c25a2 call     0x14019ee74
00000001402c25a7 add      rbx, r14
00000001402c25aa add      di, r15w
00000001402c25ae lea      rcx, [r14 + rbx]
00000001402c25b2 cmp      rcx, rbp
00000001402c25b5 jbe      0x1402c2527
00000001402c25bb lea      r11, [rsp + 0x50]
00000001402c25c0 mov      eax, esi
00000001402c25c2 mov      rbx, qword ptr [r11 + 0x20]
00000001402c25c6 mov      rbp, qword ptr [r11 + 0x28]
00000001402c25ca mov      rsi, qword ptr [r11 + 0x30]
00000001402c25ce mov      rsp, r11
00000001402c25d1 pop      r15
00000001402c25d3 pop      r14
00000001402c25d5 pop      rdi
00000001402c25d6 ret      