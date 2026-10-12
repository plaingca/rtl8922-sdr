000000014015f2b8 mov      rax, rsp
000000014015f2bb mov      qword ptr [rax + 8], rbx
000000014015f2bf push     rbp
000000014015f2c0 push     rsi
000000014015f2c1 push     rdi
000000014015f2c2 push     r14
000000014015f2c4 push     r15
000000014015f2c6 sub      rsp, 0x30
000000014015f2ca xor      r15d, r15d
000000014015f2cd lea      rsi, [rdx + 0x24]
000000014015f2d1 mov      dword ptr [rax + 0x10], r15d
000000014015f2d5 mov      rbx, rdx
000000014015f2d8 mov      dword ptr [rax + 0x18], r15d
000000014015f2dc mov      r14, rcx
000000014015f2df mov      dword ptr [rax + 0x20], r15d
000000014015f2e3 lea      eax, [r15 + 0x2d]
000000014015f2e7 cmp      al, byte ptr [rsi]
000000014015f2e9 jne      0x14015f32f
000000014015f2eb lea      eax, [r15 + 0x68]
000000014015f2ef cmp      al, byte ptr [rsi + 1]
000000014015f2f2 jne      0x14015f32f
000000014015f2f4 cmp      r15b, byte ptr [rsi + 2]
000000014015f2f8 jne      0x14015f32f
000000014015f2fa test     rdx, rdx
000000014015f2fd je       0x14015f4e0
000000014015f303 mov      r8, qword ptr [rdx + 8]
000000014015f307 test     r8, r8
000000014015f30a je       0x14015f4e0
000000014015f310 mov      ecx, dword ptr [rdx + 4]
000000014015f313 mov      eax, dword ptr [rdx + 0x10]
000000014015f316 cmp      ecx, eax
000000014015f318 jae      0x14015f4e0
000000014015f31e sub      eax, ecx
000000014015f320 add      rcx, r8
000000014015f323 lea      r8, [rip + 0x4abf76]
000000014015f32a jmp      0x14015f4d6
000000014015f32f mov      edi, 4
000000014015f334 cmp      dword ptr [rdx], edi
000000014015f336 jae      0x14015f364
000000014015f338 mov      r8, qword ptr [rdx + 8]
000000014015f33c test     r8, r8
000000014015f33f je       0x14015f4e0
000000014015f345 mov      ecx, dword ptr [rdx + 4]
000000014015f348 mov      eax, dword ptr [rdx + 0x10]
000000014015f34b cmp      ecx, eax
000000014015f34d jae      0x14015f4e0
000000014015f353 sub      eax, ecx
000000014015f355 add      rcx, r8
000000014015f358 lea      r8, [rip + 0x4abf71]
000000014015f35f jmp      0x14015f4d6
000000014015f364 lea      rcx, [rdx + 0x34]
000000014015f368 lea      rdx, [rsp + 0x68]
000000014015f36d lea      r8, [rsp + 0x78]
000000014015f372 call     0x14007dd28
000000014015f377 mov      rdx, rsi
000000014015f37a lea      rcx, [rip + 0x4abf7f]
000000014015f381 call     0x140044360
000000014015f386 mov      ebp, dword ptr [rsp + 0x68]
000000014015f38a test     eax, eax
000000014015f38c jne      0x14015f3cb
000000014015f38e lea      edi, [rax + 1]
000000014015f391 lea      eax, [rdi + rbp]
000000014015f394 cmp      eax, 0x1000
000000014015f399 jbe      0x14015f466
000000014015f39f mov      r8, qword ptr [rbx + 8]
000000014015f3a3 test     r8, r8
000000014015f3a6 je       0x14015f4e0
000000014015f3ac mov      ecx, dword ptr [rbx + 4]
000000014015f3af mov      eax, dword ptr [rbx + 0x10]
000000014015f3b2 cmp      ecx, eax
000000014015f3b4 jae      0x14015f4e0
000000014015f3ba sub      eax, ecx
000000014015f3bc add      rcx, r8
000000014015f3bf lea      r8, [rip + 0x4abfda]
000000014015f3c6 jmp      0x14015f4d6
000000014015f3cb mov      rdx, rsi
000000014015f3ce lea      rcx, [rip + 0x4abf3b]
000000014015f3d5 call     0x140044360
000000014015f3da test     eax, eax
000000014015f3dc jne      0x14015f41c
000000014015f3de lea      edi, [rax + 1]
000000014015f3e1 test     dil, bpl
000000014015f3e4 je       0x14015f412
000000014015f3e6 mov      r8, qword ptr [rbx + 8]
000000014015f3ea test     r8, r8
000000014015f3ed je       0x14015f4e0
000000014015f3f3 mov      ecx, dword ptr [rbx + 4]
000000014015f3f6 mov      eax, dword ptr [rbx + 0x10]
000000014015f3f9 cmp      ecx, eax
000000014015f3fb jae      0x14015f4e0
000000014015f401 sub      eax, ecx
000000014015f403 add      rcx, r8
000000014015f406 lea      r8, [rip + 0x4abf13]
000000014015f40d jmp      0x14015f4d6
000000014015f412 mov      edi, 2
000000014015f417 jmp      0x14015f391
000000014015f41c mov      rdx, rsi
000000014015f41f lea      rcx, [rip + 0x4abf1a]
000000014015f426 call     0x140044360
000000014015f42b test     eax, eax
000000014015f42d jne      0x14015f4b7
000000014015f433 test     bpl, 3
000000014015f437 je       0x14015f391
000000014015f43d mov      r8, qword ptr [rbx + 8]
000000014015f441 test     r8, r8
000000014015f444 je       0x14015f4e0
000000014015f44a mov      ecx, dword ptr [rbx + 4]
000000014015f44d mov      eax, dword ptr [rbx + 0x10]
000000014015f450 cmp      ecx, eax
000000014015f452 jae      0x14015f4e0
000000014015f458 sub      eax, ecx
000000014015f45a add      rcx, r8
000000014015f45d lea      r8, [rip + 0x4abeec]
000000014015f464 jmp      0x14015f4d6
000000014015f466 mov      rcx, qword ptr [r14 + 0x160]
000000014015f46d lea      r8, [rsp + 0x70]
000000014015f472 mov      r9d, edi
000000014015f475 mov      edx, ebp
000000014015f477 call     0x1400304ac
000000014015f47c mov      r8, qword ptr [rbx + 8]
000000014015f480 test     r8, r8
000000014015f483 je       0x14015f4e0
000000014015f485 mov      ecx, dword ptr [rbx + 4]
000000014015f488 mov      eax, dword ptr [rbx + 0x10]
000000014015f48b cmp      ecx, eax
000000014015f48d jae      0x14015f4e0
000000014015f48f sub      eax, ecx
000000014015f491 mov      r9, rsi
000000014015f494 mov      edx, eax
000000014015f496 add      rcx, r8
000000014015f499 mov      eax, dword ptr [rsp + 0x70]
000000014015f49d lea      r8, [rip + 0x4abf1c]
000000014015f4a4 mov      dword ptr [rsp + 0x28], eax
000000014015f4a8 mov      eax, dword ptr [rsp + 0x68]
000000014015f4ac mov      dword ptr [rsp + 0x20], eax
000000014015f4b0 call     0x140044426
000000014015f4b5 jmp      0x14015f4dd
000000014015f4b7 mov      r8, qword ptr [rbx + 8]
000000014015f4bb test     r8, r8
000000014015f4be je       0x14015f4e0
000000014015f4c0 mov      ecx, dword ptr [rbx + 4]
000000014015f4c3 mov      eax, dword ptr [rbx + 0x10]
000000014015f4c6 cmp      ecx, eax
000000014015f4c8 jae      0x14015f4e0
000000014015f4ca sub      eax, ecx
000000014015f4cc add      rcx, r8
000000014015f4cf lea      r8, [rip + 0x4abe9a]
000000014015f4d6 mov      edx, eax
000000014015f4d8 call     0x140044426
000000014015f4dd add      dword ptr [rbx + 4], eax
000000014015f4e0 mov      rbx, qword ptr [rsp + 0x60]
000000014015f4e5 add      rsp, 0x30
000000014015f4e9 pop      r15
000000014015f4eb pop      r14
000000014015f4ed pop      rdi
000000014015f4ee pop      rsi
000000014015f4ef pop      rbp
000000014015f4f0 ret      