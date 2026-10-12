00000001403ca1e4 sub      rsp, 0x38
00000001403ca1e8 mov      r8d, dword ptr [rcx + 0x1d20]
00000001403ca1ef mov      r10d, dword ptr [rcx + 0x1d1c]
00000001403ca1f6 lea      r9d, [r10 + r8]
00000001403ca1fa test     r9d, r9d
00000001403ca1fd je       0x1403ca20d
00000001403ca1ff imul     eax, r8d, 0x64
00000001403ca203 xor      edx, edx
00000001403ca205 div      r9d
00000001403ca208 mov      r9d, eax
00000001403ca20b jmp      0x1403ca210
00000001403ca20d xor      r9b, r9b
00000001403ca210 mov      ecx, dword ptr [rcx + 0x1da0]
00000001403ca216 cmp      ecx, 7
00000001403ca219 jg       0x1403ca409
00000001403ca21f je       0x1403ca3cb
00000001403ca225 sub      ecx, 1
00000001403ca228 je       0x1403ca38d
00000001403ca22e sub      ecx, 1
00000001403ca231 je       0x1403ca34f
00000001403ca237 sub      ecx, 1
00000001403ca23a je       0x1403ca311
00000001403ca240 sub      ecx, 1
00000001403ca243 je       0x1403ca2d3
00000001403ca249 sub      ecx, 1
00000001403ca24c je       0x1403ca295
00000001403ca24e cmp      ecx, 1
00000001403ca251 jne      0x1403ca568
00000001403ca257 mov      rcx, qword ptr [rip + 0x555da2]
00000001403ca25e lea      rax, [rip + 0x555d9b]
00000001403ca265 cmp      rcx, rax
00000001403ca268 je       0x1403ca568
00000001403ca26e cmp      byte ptr [rcx + 0x1e9], 4
00000001403ca275 jb       0x1403ca568
00000001403ca27b test     dword ptr [rcx + 0x1ec], 0x40000000
00000001403ca285 je       0x1403ca568
00000001403ca28b mov      edx, 0x20
00000001403ca290 jmp      0x1403ca545
00000001403ca295 mov      rcx, qword ptr [rip + 0x555d64]
00000001403ca29c lea      rax, [rip + 0x555d5d]
00000001403ca2a3 cmp      rcx, rax
00000001403ca2a6 je       0x1403ca568
00000001403ca2ac cmp      byte ptr [rcx + 0x1e9], 4
00000001403ca2b3 jb       0x1403ca568
00000001403ca2b9 test     dword ptr [rcx + 0x1ec], 0x40000000
00000001403ca2c3 je       0x1403ca568
00000001403ca2c9 mov      edx, 0x1f
00000001403ca2ce jmp      0x1403ca545
00000001403ca2d3 mov      rcx, qword ptr [rip + 0x555d26]
00000001403ca2da lea      rax, [rip + 0x555d1f]
00000001403ca2e1 cmp      rcx, rax
00000001403ca2e4 je       0x1403ca568
00000001403ca2ea cmp      byte ptr [rcx + 0x1e9], 4
00000001403ca2f1 jb       0x1403ca568
00000001403ca2f7 test     dword ptr [rcx + 0x1ec], 0x40000000
00000001403ca301 je       0x1403ca568
00000001403ca307 mov      edx, 0x1e
00000001403ca30c jmp      0x1403ca545
00000001403ca311 mov      rcx, qword ptr [rip + 0x555ce8]
00000001403ca318 lea      rax, [rip + 0x555ce1]
00000001403ca31f cmp      rcx, rax
00000001403ca322 je       0x1403ca568
00000001403ca328 cmp      byte ptr [rcx + 0x1e9], 4
00000001403ca32f jb       0x1403ca568
00000001403ca335 test     dword ptr [rcx + 0x1ec], 0x40000000
00000001403ca33f je       0x1403ca568
00000001403ca345 mov      edx, 0x1d
00000001403ca34a jmp      0x1403ca545
00000001403ca34f mov      rcx, qword ptr [rip + 0x555caa]
00000001403ca356 lea      rax, [rip + 0x555ca3]
00000001403ca35d cmp      rcx, rax
00000001403ca360 je       0x1403ca568
00000001403ca366 cmp      byte ptr [rcx + 0x1e9], 4
00000001403ca36d jb       0x1403ca568
00000001403ca373 test     dword ptr [rcx + 0x1ec], 0x40000000
00000001403ca37d je       0x1403ca568
00000001403ca383 mov      edx, 0x1c
00000001403ca388 jmp      0x1403ca545
00000001403ca38d mov      rcx, qword ptr [rip + 0x555c6c]
00000001403ca394 lea      rax, [rip + 0x555c65]
00000001403ca39b cmp      rcx, rax
00000001403ca39e je       0x1403ca568
00000001403ca3a4 cmp      byte ptr [rcx + 0x1e9], 4
00000001403ca3ab jb       0x1403ca568
00000001403ca3b1 test     dword ptr [rcx + 0x1ec], 0x40000000
00000001403ca3bb je       0x1403ca568
00000001403ca3c1 mov      edx, 0x1b
00000001403ca3c6 jmp      0x1403ca545
00000001403ca3cb mov      rcx, qword ptr [rip + 0x555c2e]
00000001403ca3d2 lea      rax, [rip + 0x555c27]
00000001403ca3d9 cmp      rcx, rax
00000001403ca3dc je       0x1403ca568
00000001403ca3e2 cmp      byte ptr [rcx + 0x1e9], 4
00000001403ca3e9 jb       0x1403ca568
00000001403ca3ef test     dword ptr [rcx + 0x1ec], 0x40000000
00000001403ca3f9 je       0x1403ca568
00000001403ca3ff mov      edx, 0x21
00000001403ca404 jmp      0x1403ca545
00000001403ca409 sub      ecx, 8
00000001403ca40c je       0x1403ca518
00000001403ca412 sub      ecx, 1
00000001403ca415 je       0x1403ca4e9
00000001403ca41b sub      ecx, 1
00000001403ca41e je       0x1403ca4ae
00000001403ca424 sub      ecx, 1
00000001403ca427 je       0x1403ca470
00000001403ca429 cmp      ecx, 1
00000001403ca42c jne      0x1403ca568
00000001403ca432 mov      rcx, qword ptr [rip + 0x555bc7]
00000001403ca439 lea      rax, [rip + 0x555bc0]
00000001403ca440 cmp      rcx, rax
00000001403ca443 je       0x1403ca568
00000001403ca449 cmp      byte ptr [rcx + 0x1e9], 4
00000001403ca450 jb       0x1403ca568
00000001403ca456 test     dword ptr [rcx + 0x1ec], 0x40000000
00000001403ca460 je       0x1403ca568
00000001403ca466 mov      edx, 0x26
00000001403ca46b jmp      0x1403ca545
00000001403ca470 mov      rcx, qword ptr [rip + 0x555b89]
00000001403ca477 lea      rax, [rip + 0x555b82]
00000001403ca47e cmp      rcx, rax
00000001403ca481 je       0x1403ca568
00000001403ca487 cmp      byte ptr [rcx + 0x1e9], 4
00000001403ca48e jb       0x1403ca568
00000001403ca494 test     dword ptr [rcx + 0x1ec], 0x40000000
00000001403ca49e je       0x1403ca568
00000001403ca4a4 mov      edx, 0x25
00000001403ca4a9 jmp      0x1403ca545
00000001403ca4ae mov      rcx, qword ptr [rip + 0x555b4b]
00000001403ca4b5 lea      rax, [rip + 0x555b44]
00000001403ca4bc cmp      rcx, rax
00000001403ca4bf je       0x1403ca568
00000001403ca4c5 cmp      byte ptr [rcx + 0x1e9], 4
00000001403ca4cc jb       0x1403ca568
00000001403ca4d2 test     dword ptr [rcx + 0x1ec], 0x40000000
00000001403ca4dc je       0x1403ca568
00000001403ca4e2 mov      edx, 0x24
00000001403ca4e7 jmp      0x1403ca545
00000001403ca4e9 mov      rcx, qword ptr [rip + 0x555b10]
00000001403ca4f0 lea      rax, [rip + 0x555b09]
00000001403ca4f7 cmp      rcx, rax
00000001403ca4fa je       0x1403ca568
00000001403ca4fc cmp      byte ptr [rcx + 0x1e9], 4
00000001403ca503 jb       0x1403ca568
00000001403ca505 test     dword ptr [rcx + 0x1ec], 0x40000000
00000001403ca50f je       0x1403ca568
00000001403ca511 mov      edx, 0x23
00000001403ca516 jmp      0x1403ca545
00000001403ca518 mov      rcx, qword ptr [rip + 0x555ae1]
00000001403ca51f lea      rax, [rip + 0x555ada]
00000001403ca526 cmp      rcx, rax
00000001403ca529 je       0x1403ca568
00000001403ca52b cmp      byte ptr [rcx + 0x1e9], 4
00000001403ca532 jb       0x1403ca568
00000001403ca534 test     dword ptr [rcx + 0x1ec], 0x40000000
00000001403ca53e je       0x1403ca568
00000001403ca540 mov      edx, 0x22
00000001403ca545 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403ca54c movzx    eax, r9b
00000001403ca550 mov      r9d, r10d
00000001403ca553 mov      dword ptr [rsp + 0x28], eax
00000001403ca557 mov      dword ptr [rsp + 0x20], r8d
00000001403ca55c lea      r8, [rip + 0x30ac1d]
00000001403ca563 call     0x140001c34
00000001403ca568 add      rsp, 0x38
00000001403ca56c ret      