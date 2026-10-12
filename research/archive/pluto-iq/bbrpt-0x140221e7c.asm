0000000140221e7c mov      qword ptr [rsp + 0x20], rbx
0000000140221e81 push     rbp
0000000140221e82 push     rsi
0000000140221e83 push     rdi
0000000140221e84 sub      rsp, 0xb0
0000000140221e8b mov      rax, qword ptr [rip + 0x7055ce]
0000000140221e92 xor      rax, rsp
0000000140221e95 mov      qword ptr [rsp + 0xa0], rax
0000000140221e9d mov      ebx, edx
0000000140221e9f movzx    ebp, r9b
0000000140221ea3 xor      edx, edx
0000000140221ea5 mov      edi, r8d
0000000140221ea8 mov      rsi, rcx
0000000140221eab lea      rcx, [rsp + 0x60]
0000000140221eb0 lea      r8d, [rdx + 0x40]
0000000140221eb4 call     0x1405f4640
0000000140221eb9 movzx    edx, byte ptr [rsp + 0xf0]
0000000140221ec1 xorps    xmm0, xmm0
0000000140221ec4 and      qword ptr [rsp + 0x30], 0
0000000140221eca movdqu   xmmword ptr [rsp + 0x38], xmm0
0000000140221ed0 cmp      bpl, dl
0000000140221ed3 jne      0x140221f42
0000000140221ed5 cmp      dword ptr [rsp + 0xf8], 0
0000000140221edd jne      0x140221f42
0000000140221edf mov      rcx, qword ptr [rip + 0x6fe11a]
0000000140221ee6 lea      rax, [rip + 0x6fe113]
0000000140221eed cmp      rcx, rax
0000000140221ef0 je       0x140221f38
0000000140221ef2 cmp      byte ptr [rcx + 0x169], 2
0000000140221ef9 jb       0x140221f38
0000000140221efb test     dword ptr [rcx + 0x16c], 0x200
0000000140221f05 je       0x140221f38
0000000140221f07 mov      rcx, qword ptr [rcx + 0x158]
0000000140221f0e lea      r9, [rip + 0x3ec47b]
0000000140221f15 mov      eax, edx
0000000140221f17 lea      r8, [rip + 0x476aa2]
0000000140221f1e mov      dword ptr [rsp + 0x28], eax
0000000140221f22 mov      edx, 0x135
0000000140221f27 lea      rax, [rip + 0x3f4ba2]
0000000140221f2e mov      qword ptr [rsp + 0x20], rax
0000000140221f33 call     0x14003ca14
0000000140221f38 mov      eax, 6
0000000140221f3d jmp      0x140221feb
0000000140221f42 mov      dword ptr [rsp + 0x90], edx
0000000140221f49 lea      rax, [rip + 0xc0]
0000000140221f50 shl      ebx, 0x10
0000000140221f53 lea      r8, [rsp + 0x30]
0000000140221f58 or       ebx, 0x96
0000000140221f5e mov      dword ptr [rsp + 0x64], edi
0000000140221f62 xor      r9d, r9d
0000000140221f65 mov      dword ptr [rsp + 0x60], ebx
0000000140221f69 lea      rdx, [rsp + 0x60]
0000000140221f6e mov      dword ptr [rsp + 0x88], ebp
0000000140221f75 mov      rcx, rsi
0000000140221f78 mov      qword ptr [rsp + 0x50], rax
0000000140221f7d mov      qword ptr [rsp + 0x48], rsi
0000000140221f82 call     0x1401b97bc
0000000140221f87 test     eax, eax
0000000140221f89 je       0x140221fe9
0000000140221f8b mov      rcx, qword ptr [rip + 0x6fe06e]
0000000140221f92 lea      rax, [rip + 0x6fe067]
0000000140221f99 cmp      rcx, rax
0000000140221f9c je       0x140221fe2
0000000140221f9e cmp      byte ptr [rcx + 0x169], 2
0000000140221fa5 jb       0x140221fe2
0000000140221fa7 test     dword ptr [rcx + 0x16c], 0x200
0000000140221fb1 je       0x140221fe2
0000000140221fb3 mov      rcx, qword ptr [rcx + 0x158]
0000000140221fba lea      rax, [rip + 0x3f4b0f]
0000000140221fc1 mov      edx, 0x136
0000000140221fc6 mov      dword ptr [rsp + 0x28], edi
0000000140221fca lea      r9, [rip + 0x3ec3bf]
0000000140221fd1 mov      qword ptr [rsp + 0x20], rax
0000000140221fd6 lea      r8, [rip + 0x4769e3]
0000000140221fdd call     0x14003ca14
0000000140221fe2 mov      eax, 1
0000000140221fe7 jmp      0x140221feb
0000000140221fe9 xor      eax, eax
0000000140221feb mov      rcx, qword ptr [rsp + 0xa0]
0000000140221ff3 xor      rcx, rsp
0000000140221ff6 call     0x1405f45b0
0000000140221ffb mov      rbx, qword ptr [rsp + 0xe8]
0000000140222003 add      rsp, 0xb0
000000014022200a pop      rdi
000000014022200b pop      rsi
000000014022200c pop      rbp
000000014022200d ret      