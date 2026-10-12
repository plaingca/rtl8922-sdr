00000001403db35c mov      qword ptr [rsp + 8], rbx
00000001403db361 push     rdi
00000001403db362 sub      rsp, 0x20
00000001403db366 mov      rdi, qword ptr [rcx + 0x9a0]
00000001403db36d mov      rbx, rcx
00000001403db370 mov      rcx, qword ptr [rip + 0x544c89]
00000001403db377 lea      rax, [rip + 0x544c82]
00000001403db37e cmp      rcx, rax
00000001403db381 je       0x1403db3b7
00000001403db383 cmp      byte ptr [rcx + 0x169], 4
00000001403db38a jb       0x1403db3b7
00000001403db38c test     dword ptr [rcx + 0x16c], 0x1000
00000001403db396 je       0x1403db3b7
00000001403db398 mov      rcx, qword ptr [rcx + 0x158]
00000001403db39f lea      r9, [rip + 0x271f4a]
00000001403db3a6 mov      edx, 0x48
00000001403db3ab lea      r8, [rip + 0x2f9e66]
00000001403db3b2 call     0x140008874
00000001403db3b7 mov      rcx, rbx
00000001403db3ba mov      dword ptr [rdi + 0x148c], 4
00000001403db3c4 mov      rbx, qword ptr [rsp + 0x30]
00000001403db3c9 add      rsp, 0x20
00000001403db3cd pop      rdi
00000001403db3ce jmp      0x1403dc9c8