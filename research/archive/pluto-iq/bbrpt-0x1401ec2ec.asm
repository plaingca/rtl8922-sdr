00000001401ec2ec mov      qword ptr [rsp + 8], rbx
00000001401ec2f1 mov      qword ptr [rsp + 0x10], rbp
00000001401ec2f6 mov      qword ptr [rsp + 0x18], rsi
00000001401ec2fb push     rdi
00000001401ec2fc push     r12
00000001401ec2fe push     r14
00000001401ec300 sub      rsp, 0x40
00000001401ec304 xor      r14d, r14d
00000001401ec307 mov      rdi, rcx
00000001401ec30a mov      ebp, r14d
00000001401ec30d cmp      word ptr [rcx + 0x10358], r14w
00000001401ec315 je       0x1401ec45f
00000001401ec31b mov      rcx, qword ptr [rip + 0x733cde]
00000001401ec322 lea      r12, [rip + 0x733cd7]
00000001401ec329 cmp      rcx, r12
00000001401ec32c je       0x1401ec3b8
00000001401ec332 cmp      byte ptr [rcx + 0x169], 4
00000001401ec339 jb       0x1401ec363
00000001401ec33b mov      eax, dword ptr [rcx + 0x16c]
00000001401ec341 test     al, 4
00000001401ec343 je       0x1401ec363
00000001401ec345 mov      rcx, qword ptr [rcx + 0x158]
00000001401ec34c lea      edx, [r14 + 0x19]
00000001401ec350 lea      r9, [rip + 0x422039]
00000001401ec357 lea      r8, [rip + 0x4ac162]
00000001401ec35e call     0x140008874
00000001401ec363 mov      rcx, qword ptr [rip + 0x733c96]
00000001401ec36a cmp      rcx, r12
00000001401ec36d je       0x1401ec3b8
00000001401ec36f cmp      byte ptr [rcx + 0x169], 4
00000001401ec376 jb       0x1401ec3b8
00000001401ec378 mov      eax, dword ptr [rcx + 0x16c]
00000001401ec37e test     al, 4
00000001401ec380 je       0x1401ec3b8
00000001401ec382 movzx    r8d, word ptr [rdi + 0x10358]
00000001401ec38a lea      r9, [rip + 0x421fff]
00000001401ec391 mov      eax, dword ptr [rdi + 0x1035c]
00000001401ec397 mov      edx, 0x1a
00000001401ec39c mov      rcx, qword ptr [rcx + 0x158]
00000001401ec3a3 mov      dword ptr [rsp + 0x28], eax
00000001401ec3a7 mov      dword ptr [rsp + 0x20], r8d
00000001401ec3ac lea      r8, [rip + 0x4ac10d]
00000001401ec3b3 call     0x140002b04
00000001401ec3b8 mov      bl, r14b
00000001401ec3bb mov      al, byte ptr [rdi + 0x10384]
00000001401ec3c1 cmp      bl, al
00000001401ec3c3 ja       0x1401ec45f
00000001401ec3c9 test     bl, bl
00000001401ec3cb jne      0x1401ec3e0
00000001401ec3cd test     al, al
00000001401ec3cf jne      0x1401ec3e5
00000001401ec3d1 cmp      dword ptr [rdi + 0x10360], r14d
00000001401ec3d8 je       0x1401ec45f
00000001401ec3de jmp      0x1401ec3e5
00000001401ec3e0 cmp      bl, 8
00000001401ec3e3 jae      0x1401ec3f7
00000001401ec3e5 movzx    r8d, bl
00000001401ec3e9 lea      rax, [rip + 0x73e920]
00000001401ec3f0 movzx    esi, word ptr [rax + r8*2]
00000001401ec3f5 jmp      0x1401ec400
00000001401ec3f7 mov      esi, 0xf423f
00000001401ec3fc movzx    r8d, bl
00000001401ec400 mov      rcx, qword ptr [rip + 0x733bf9]
00000001401ec407 cmp      rcx, r12
00000001401ec40a je       0x1401ec452
00000001401ec40c cmp      byte ptr [rcx + 0x169], 4
00000001401ec413 jb       0x1401ec452
00000001401ec415 mov      eax, dword ptr [rcx + 0x16c]
00000001401ec41b test     al, 4
00000001401ec41d je       0x1401ec452
00000001401ec41f mov      eax, dword ptr [rdi + r8*4 + 0x10360]
00000001401ec427 lea      r9, [rip + 0x421f62]
00000001401ec42e mov      rcx, qword ptr [rcx + 0x158]
00000001401ec435 lea      r8, [rip + 0x4ac084]
00000001401ec43c mov      dword ptr [rsp + 0x30], eax
00000001401ec440 mov      edx, 0x1b
00000001401ec445 mov      dword ptr [rsp + 0x28], esi
00000001401ec449 mov      dword ptr [rsp + 0x20], ebp
00000001401ec44d call     0x14001c670
00000001401ec452 inc      bl
00000001401ec454 mov      ebp, esi
00000001401ec456 cmp      bl, 9
00000001401ec459 jb       0x1401ec3bb
00000001401ec45f mov      rbx, qword ptr [rsp + 0x60]
00000001401ec464 mov      rbp, qword ptr [rsp + 0x68]
00000001401ec469 mov      rsi, qword ptr [rsp + 0x70]
00000001401ec46e add      rsp, 0x40
00000001401ec472 pop      r14
00000001401ec474 pop      r12
00000001401ec476 pop      rdi
00000001401ec477 ret      