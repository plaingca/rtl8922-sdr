0000000140175b6c sub      rsp, 0x38
0000000140175b70 movzx    r9d, cx
0000000140175b74 mov      r10, rdx
0000000140175b77 cmp      r9d, 7
0000000140175b7b jae      0x140175bc2
0000000140175b7d mov      rcx, qword ptr [rip + 0x7aa47c]
0000000140175b84 lea      rax, [rip + 0x7aa475]
0000000140175b8b cmp      rcx, rax
0000000140175b8e je       0x140175c34
0000000140175b94 cmp      byte ptr [rcx + 0x69], 3
0000000140175b98 jb       0x140175c34
0000000140175b9e test     dword ptr [rcx + 0x6c], 0x800
0000000140175ba5 je       0x140175c34
0000000140175bab mov      rcx, qword ptr [rcx + 0x58]
0000000140175baf lea      r8, [rip + 0x51ef8a]
0000000140175bb6 mov      edx, 0x2c
0000000140175bbb call     0x140001bb0
0000000140175bc0 jmp      0x140175c34
0000000140175bc2 mov      qword ptr [r8 + 0x1f8], r10
0000000140175bc9 mov      rcx, r9
0000000140175bcc mov      qword ptr [r8 + 0x200], r10
0000000140175bd3 movzx    eax, byte ptr [rdx + 6]
0000000140175bd7 add      rdx, 7
0000000140175bdb mov      byte ptr [r8 + 0x208], al
0000000140175be2 mov      r11d, eax
0000000140175be5 sub      rcx, rdx
0000000140175be8 add      rcx, r10
0000000140175beb lea      eax, [rax + rax*2]
0000000140175bee add      eax, eax
0000000140175bf0 cmp      rcx, rax
0000000140175bf3 jge      0x140175c3b
0000000140175bf5 mov      rcx, qword ptr [rip + 0x7aa404]
0000000140175bfc lea      rax, [rip + 0x7aa3fd]
0000000140175c03 cmp      rcx, rax
0000000140175c06 je       0x140175c34
0000000140175c08 cmp      byte ptr [rcx + 0x69], 3
0000000140175c0c jb       0x140175c34
0000000140175c0e test     dword ptr [rcx + 0x6c], 0x800
0000000140175c15 je       0x140175c34
0000000140175c17 mov      rcx, qword ptr [rcx + 0x58]
0000000140175c1b lea      r8, [rip + 0x51ef1e]
0000000140175c22 mov      dword ptr [rsp + 0x20], r9d
0000000140175c27 mov      edx, 0x2d
0000000140175c2c mov      r9d, r11d
0000000140175c2f call     0x140001bec
0000000140175c34 mov      eax, 9
0000000140175c39 jmp      0x140175c82
0000000140175c3b mov      qword ptr [r8 + 0x210], rdx
0000000140175c42 mov      rcx, qword ptr [rip + 0x7aa3b7]
0000000140175c49 lea      rax, [rip + 0x7aa3b0]
0000000140175c50 cmp      rcx, rax
0000000140175c53 je       0x140175c80
0000000140175c55 movzx    eax, byte ptr [rcx + 0x69]
0000000140175c59 cmp      eax, dword ptr [r8 + 0x398]
0000000140175c60 jb       0x140175c80
0000000140175c62 test     dword ptr [rcx + 0x6c], 0x800
0000000140175c69 je       0x140175c80
0000000140175c6b mov      rcx, qword ptr [rcx + 0x58]
0000000140175c6f lea      r8, [rip + 0x51eeca]
0000000140175c76 mov      edx, 0x2e
0000000140175c7b call     0x140001b88
0000000140175c80 xor      eax, eax
0000000140175c82 add      rsp, 0x38
0000000140175c86 ret      