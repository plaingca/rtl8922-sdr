00000001401ea338 mov      r11, rsp
00000001401ea33b mov      qword ptr [r11 + 8], rbx
00000001401ea33f mov      qword ptr [r11 + 0x10], rsi
00000001401ea343 mov      qword ptr [r11 + 0x18], rdi
00000001401ea347 mov      qword ptr [r11 + 0x20], r14
00000001401ea34b push     r15
00000001401ea34d sub      rsp, 0x40
00000001401ea351 movzx    esi, dl
00000001401ea354 mov      edi, r8d
00000001401ea357 mov      rbx, rcx
00000001401ea35a cmp      r8d, 4
00000001401ea35e je       0x1401ea4b9
00000001401ea364 mov      rax, qword ptr [rcx + 0x798]
00000001401ea36b cmp      byte ptr [rax + 0x96dc], 0
00000001401ea372 je       0x1401ea4b9
00000001401ea378 mov      rcx, qword ptr [rip + 0x735c81]
00000001401ea37f lea      r14, [rip + 0x735c7a]
00000001401ea386 lea      r15, [rip + 0x428b33]
00000001401ea38d cmp      rcx, r14
00000001401ea390 je       0x1401ea3d1
00000001401ea392 cmp      byte ptr [rcx + 0x169], 4
00000001401ea399 jb       0x1401ea3d1
00000001401ea39b mov      eax, dword ptr [rcx + 0x16c]
00000001401ea3a1 test     al, 1
00000001401ea3a3 je       0x1401ea3d1
00000001401ea3a5 mov      rcx, qword ptr [rcx + 0x158]
00000001401ea3ac lea      r9, [rip + 0x423fdd]
00000001401ea3b3 mov      dword ptr [rsp + 0x30], r8d
00000001401ea3b8 mov      edx, 0xf
00000001401ea3bd mov      dword ptr [rsp + 0x28], esi
00000001401ea3c1 lea      r8, [rip + 0x4ae0e8]
00000001401ea3c8 mov      qword ptr [r11 - 0x28], r15
00000001401ea3cc call     0x1400aa578
00000001401ea3d1 test     edi, edi
00000001401ea3d3 je       0x1401ea4a3
00000001401ea3d9 sub      edi, 1
00000001401ea3dc je       0x1401ea46c
00000001401ea3e2 sub      edi, 1
00000001401ea3e5 je       0x1401ea458
00000001401ea3e7 cmp      edi, 1
00000001401ea3ea je       0x1401ea43d
00000001401ea3ec mov      rcx, qword ptr [rip + 0x735c0d]
00000001401ea3f3 cmp      rcx, r14
00000001401ea3f6 je       0x1401ea4b9
00000001401ea3fc cmp      byte ptr [rcx + 0x169], 2
00000001401ea403 jb       0x1401ea4b9
00000001401ea409 mov      eax, dword ptr [rcx + 0x16c]
00000001401ea40f test     al, 1
00000001401ea411 je       0x1401ea4b9
00000001401ea417 mov      rcx, qword ptr [rcx + 0x158]
00000001401ea41e lea      r9, [rip + 0x423f6b]
00000001401ea425 mov      edx, 0x10
00000001401ea42a mov      qword ptr [rsp + 0x20], r15
00000001401ea42f lea      r8, [rip + 0x4ae07a]
00000001401ea436 call     0x14003c968
00000001401ea43b jmp      0x1401ea4b9
00000001401ea43d mov      rdx, qword ptr [rbx + 0x8d08]
00000001401ea444 mov      r8d, 4
00000001401ea44a mov      rcx, qword ptr [rbx + 0x798]
00000001401ea451 call     0x140241f44
00000001401ea456 jmp      0x1401ea48b
00000001401ea458 mov      rcx, qword ptr [rbx + 0x798]
00000001401ea45f call     0x14022b328
00000001401ea464 cmp      sil, 1
00000001401ea468 jne      0x1401ea4b9
00000001401ea46a jmp      0x1401ea4af
00000001401ea46c mov      rdx, qword ptr [rbx + 0x8d08]
00000001401ea473 mov      r8d, 3
00000001401ea479 mov      rcx, qword ptr [rbx + 0x798]
00000001401ea480 call     0x140241f44
00000001401ea485 cmp      sil, 1
00000001401ea489 jne      0x1401ea495
00000001401ea48b xor      edx, edx
00000001401ea48d mov      rcx, rbx
00000001401ea490 call     0x1401e9f8c
00000001401ea495 mov      rcx, qword ptr [rbx + 0x798]
00000001401ea49c call     0x14022b340
00000001401ea4a1 jmp      0x1401ea4b9
00000001401ea4a3 mov      rcx, qword ptr [rbx + 0x798]
00000001401ea4aa call     0x14022b328
00000001401ea4af mov      dl, 1
00000001401ea4b1 mov      rcx, rbx
00000001401ea4b4 call     0x1401e9f8c
00000001401ea4b9 mov      rbx, qword ptr [rsp + 0x50]
00000001401ea4be xor      eax, eax
00000001401ea4c0 mov      rsi, qword ptr [rsp + 0x58]
00000001401ea4c5 mov      rdi, qword ptr [rsp + 0x60]
00000001401ea4ca mov      r14, qword ptr [rsp + 0x68]
00000001401ea4cf add      rsp, 0x40
00000001401ea4d3 pop      r15
00000001401ea4d5 ret      