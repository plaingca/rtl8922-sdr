00000001401f82ac mov      qword ptr [rsp + 8], rbx
00000001401f82b1 mov      qword ptr [rsp + 0x10], rsi
00000001401f82b6 push     rdi
00000001401f82b7 sub      rsp, 0x30
00000001401f82bb mov      al, byte ptr [rdx + 2]
00000001401f82be mov      ebx, 2
00000001401f82c3 sub      al, bl
00000001401f82c5 mov      rdi, rdx
00000001401f82c8 mov      rsi, rcx
00000001401f82cb cmp      al, 1
00000001401f82cd ja       0x1401f8342
00000001401f82cf cmp      dword ptr [rdx + 0x20], 0
00000001401f82d3 jne      0x1401f8342
00000001401f82d5 mov      ecx, dword ptr [rdx + 0x30]
00000001401f82d8 mov      eax, 0x2aaaaaab
00000001401f82dd imul     ecx
00000001401f82df mov      eax, edx
00000001401f82e1 shr      eax, 0x1f
00000001401f82e4 add      edx, eax
00000001401f82e6 lea      eax, [rdx + rdx*2]
00000001401f82e9 add      eax, eax
00000001401f82eb sub      ecx, eax
00000001401f82ed mov      dl, cl
00000001401f82ef mov      rcx, rsi
00000001401f82f2 call     0x1401a0a14
00000001401f82f7 mov      r9, rax
00000001401f82fa mov      eax, 0x2aaaaaab
00000001401f82ff imul     dword ptr [rdi + 0x30]
00000001401f8302 mov      eax, edx
00000001401f8304 shr      eax, 0x1f
00000001401f8307 add      eax, edx
00000001401f8309 cdqe     
00000001401f830b imul     rax, rax, 0xa38
00000001401f8312 add      rax, 0x258
00000001401f8318 add      rax, r9
00000001401f831b je       0x1401f8342
00000001401f831d mov      al, byte ptr [rax + 0x19]
00000001401f8320 xor      r9d, r9d
00000001401f8323 mov      rcx, qword ptr [rsi + 0x8d08]
00000001401f832a mov      r8b, 1
00000001401f832d mov      byte ptr [rsp + 0x28], al
00000001401f8331 mov      edx, 0x96
00000001401f8336 mov      byte ptr [rsp + 0x20], 0
00000001401f833b call     0x140267ed4
00000001401f8340 xor      ebx, ebx
00000001401f8342 mov      rsi, qword ptr [rsp + 0x48]
00000001401f8347 mov      eax, ebx
00000001401f8349 mov      rbx, qword ptr [rsp + 0x40]
00000001401f834e add      rsp, 0x30
00000001401f8352 pop      rdi
00000001401f8353 ret      