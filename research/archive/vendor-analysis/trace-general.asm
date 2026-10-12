00000001403d6ba8 mov      qword ptr [rsp + 8], rbx
00000001403d6bad mov      qword ptr [rsp + 0x10], rsi
00000001403d6bb2 push     rdi
00000001403d6bb3 sub      rsp, 0x40
00000001403d6bb7 mov      rbx, qword ptr [rcx + 0x9a0]
00000001403d6bbe mov      rdi, rcx
00000001403d6bc1 add      rbx, 0x1040
00000001403d6bc8 mov      rcx, qword ptr [rip + 0x549431]
00000001403d6bcf lea      rax, [rip + 0x54942a]
00000001403d6bd6 xor      esi, esi
00000001403d6bd8 cmp      rcx, rax
00000001403d6bdb je       0x1403d6c41
00000001403d6bdd cmp      byte ptr [rcx + 0x169], 4
00000001403d6be4 jb       0x1403d6c41
00000001403d6be6 test     dword ptr [rcx + 0x16c], 0x1000
00000001403d6bf0 je       0x1403d6c41
00000001403d6bf2 mov      eax, dword ptr [rdi + 0x998]
00000001403d6bf8 lea      rdx, [rip + 0x275841]
00000001403d6bff movzx    r8d, word ptr [rbx + 0x334]
00000001403d6c07 lea      r9, [rip + 0x236e22]
00000001403d6c0e cmp      dword ptr [rbx + 0x32c], esi
00000001403d6c14 mov      rcx, qword ptr [rcx + 0x158]
00000001403d6c1b mov      dword ptr [rsp + 0x30], eax
00000001403d6c1f cmove    r9, rdx
00000001403d6c23 mov      eax, dword ptr [rbx + 0x36c]
00000001403d6c29 lea      edx, [rsi + 0x2e]
00000001403d6c2c mov      dword ptr [rsp + 0x28], eax
00000001403d6c30 mov      dword ptr [rsp + 0x20], r8d
00000001403d6c35 lea      r8, [rip + 0x2fe5dc]
00000001403d6c3c call     0x14001c670
00000001403d6c41 cmp      dword ptr [rbx + 0x36c], 0xd
00000001403d6c48 mov      rcx, rdi
00000001403d6c4b mov      eax, dword ptr [rdi + 0x998]
00000001403d6c51 mov      r9d, dword ptr [rbx + 0x32c]
00000001403d6c58 sete     sil
00000001403d6c5c mov      r8d, dword ptr [rbx + 0x6c]
00000001403d6c60 mov      edx, dword ptr [rbx + 0x68]
00000001403d6c63 mov      dword ptr [rsp + 0x20], eax
00000001403d6c67 call     0x140316994
00000001403d6c6c mov      eax, dword ptr [rdi + 0x998]
00000001403d6c72 mov      r9d, esi
00000001403d6c75 mov      r8d, dword ptr [rbx + 0x64]
00000001403d6c79 mov      rcx, rdi
00000001403d6c7c mov      edx, dword ptr [rbx + 0x60]
00000001403d6c7f mov      dword ptr [rsp + 0x20], eax
00000001403d6c83 call     0x140316994
00000001403d6c88 mov      eax, dword ptr [rdi + 0x998]
00000001403d6c8e mov      rcx, rdi
00000001403d6c91 mov      r9d, dword ptr [rbx + 0x330]
00000001403d6c98 mov      r8d, dword ptr [rbx + 0x5c]
00000001403d6c9c mov      edx, dword ptr [rbx + 0x58]
00000001403d6c9f mov      dword ptr [rsp + 0x20], eax
00000001403d6ca3 call     0x140316994
00000001403d6ca8 mov      eax, dword ptr [rdi + 0x998]
00000001403d6cae mov      rcx, rdi
00000001403d6cb1 movzx    r9d, byte ptr [rbx + 0x329]
00000001403d6cb9 mov      r8d, dword ptr [rbx + 0xcc]
00000001403d6cc0 mov      edx, dword ptr [rbx + 0xc8]
00000001403d6cc6 mov      dword ptr [rsp + 0x20], eax
00000001403d6cca call     0x140316994
00000001403d6ccf mov      eax, dword ptr [rdi + 0x998]
00000001403d6cd5 mov      r9d, 1
00000001403d6cdb mov      r8d, dword ptr [rbx + 4]
00000001403d6cdf mov      rcx, rdi
00000001403d6ce2 mov      edx, dword ptr [rbx]
00000001403d6ce4 mov      dword ptr [rsp + 0x20], eax
00000001403d6ce8 call     0x140316994
00000001403d6ced mov      eax, dword ptr [rdi + 0x998]
00000001403d6cf3 mov      rcx, rdi
00000001403d6cf6 mov      r9d, dword ptr [rbx + 0x368]
00000001403d6cfd mov      r8d, dword ptr [rbx + 0xa4]
00000001403d6d04 mov      edx, dword ptr [rbx + 0xa0]
00000001403d6d0a mov      dword ptr [rsp + 0x20], eax
00000001403d6d0e call     0x140316994
00000001403d6d13 mov      eax, dword ptr [rdi + 0x998]
00000001403d6d19 mov      rcx, rdi
00000001403d6d1c mov      r9d, dword ptr [rbx + 0x368]
00000001403d6d23 mov      r8d, dword ptr [rbx + 0xac]
00000001403d6d2a mov      edx, dword ptr [rbx + 0xa8]
00000001403d6d30 mov      dword ptr [rsp + 0x20], eax
00000001403d6d34 call     0x140316994
00000001403d6d39 mov      edx, dword ptr [rdi + 0x998]
00000001403d6d3f mov      rcx, rdi
00000001403d6d42 mov      rbx, qword ptr [rsp + 0x50]
00000001403d6d47 mov      rsi, qword ptr [rsp + 0x58]
00000001403d6d4c add      rsp, 0x40
00000001403d6d50 pop      rdi
00000001403d6d51 jmp      0x1403db73c