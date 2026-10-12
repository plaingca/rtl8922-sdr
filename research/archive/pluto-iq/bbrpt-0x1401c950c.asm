00000001401c950c sub      rsp, 0x38
00000001401c9510 movzx    eax, byte ptr [r8 + 0x19]
00000001401c9515 imul     r8, rax, 0x538
00000001401c951c mov      rax, qword ptr [rcx + 0x798]
00000001401c9523 cmp      dword ptr [r8 + rax + 0x8a38], 3
00000001401c952c jne      0x1401c95c8
00000001401c9532 cmp      dword ptr [r8 + rax + 0x8a3c], 3
00000001401c953b jne      0x1401c95c8
00000001401c9541 call     0x14020515c
00000001401c9546 test     eax, eax
00000001401c9548 jne      0x1401c9577
00000001401c954a mov      rcx, qword ptr [rip + 0x756aaf]
00000001401c9551 lea      rax, [rip + 0x756aa8]
00000001401c9558 cmp      rcx, rax
00000001401c955b je       0x1401c95c8
00000001401c955d cmp      byte ptr [rcx + 0x169], 4
00000001401c9564 jb       0x1401c95c8
00000001401c9566 mov      eax, dword ptr [rcx + 0x16c]
00000001401c956c test     al, 1
00000001401c956e je       0x1401c95c8
00000001401c9570 mov      edx, 0x195
00000001401c9575 jmp      0x1401c95a2
00000001401c9577 mov      rcx, qword ptr [rip + 0x756a82]
00000001401c957e lea      rax, [rip + 0x756a7b]
00000001401c9585 cmp      rcx, rax
00000001401c9588 je       0x1401c95c8
00000001401c958a cmp      byte ptr [rcx + 0x169], 4
00000001401c9591 jb       0x1401c95c8
00000001401c9593 mov      eax, dword ptr [rcx + 0x16c]
00000001401c9599 test     al, 1
00000001401c959b je       0x1401c95c8
00000001401c959d mov      edx, 0x196
00000001401c95a2 mov      rcx, qword ptr [rcx + 0x158]
00000001401c95a9 lea      rax, [rip + 0x448060]
00000001401c95b0 lea      r9, [rip + 0x444dd9]
00000001401c95b7 mov      qword ptr [rsp + 0x20], rax
00000001401c95bc lea      r8, [rip + 0x4cedbd]
00000001401c95c3 call     0x14003c968
00000001401c95c8 add      rsp, 0x38
00000001401c95cc ret      