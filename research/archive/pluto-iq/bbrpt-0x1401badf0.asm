00000001401badf0 mov      qword ptr [rsp + 8], rbx
00000001401badf5 push     rdi
00000001401badf6 sub      rsp, 0x30
00000001401badfa mov      rbx, rdx
00000001401badfd mov      r10d, r9d
00000001401bae00 xor      edx, edx
00000001401bae02 mov      edi, r8d
00000001401bae05 test     rbx, rbx
00000001401bae08 je       0x1401baea4
00000001401bae0e mov      rax, qword ptr [rbx + 0x60]
00000001401bae12 test     rax, rax
00000001401bae15 je       0x1401bae39
00000001401bae17 lea      r9d, [rdx + 1]
00000001401bae1b cmp      r10d, 0xb
00000001401bae1f jne      0x1401bae29
00000001401bae21 cmp      dword ptr [rbx + 0x50], r10d
00000001401bae25 cmove    r9d, edx
00000001401bae29 mov      rdx, qword ptr [rbx]
00000001401bae2c mov      r8, qword ptr [rbx + 8]
00000001401bae30 mov      dl, byte ptr [rdx + 0x15]
00000001401bae33 call     qword ptr [rip + 0x4c94bf]
00000001401bae39 lea      rcx, [rbx + 0x58]
00000001401bae3d lea      rdx, [rip + 0x453acc]
00000001401bae44 call     0x1400314e4
00000001401bae49 mov      edx, edi
00000001401bae4b mov      rcx, rbx
00000001401bae4e call     0x140031160
00000001401bae53 mov      rcx, qword ptr [rip + 0x7651a6]
00000001401bae5a lea      rax, [rip + 0x76519f]
00000001401bae61 cmp      rcx, rax
00000001401bae64 je       0x1401baea4
00000001401bae66 cmp      byte ptr [rcx + 0x169], 4
00000001401bae6d jb       0x1401baea4
00000001401bae6f mov      eax, dword ptr [rcx + 0x16c]
00000001401bae75 test     al, 1
00000001401bae77 je       0x1401baea4
00000001401bae79 mov      rcx, qword ptr [rcx + 0x158]
00000001401bae80 lea      rax, [rip + 0x455539]
00000001401bae87 mov      edx, 0x1d
00000001401bae8c mov      qword ptr [rsp + 0x20], rax
00000001401bae91 lea      r9, [rip + 0x4534f8]
00000001401bae98 lea      r8, [rip + 0x4dd3d1]
00000001401bae9f call     0x14003c968
00000001401baea4 mov      rbx, qword ptr [rsp + 0x40]
00000001401baea9 add      rsp, 0x30
00000001401baead pop      rdi
00000001401baeae ret      