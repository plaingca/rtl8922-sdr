000000014042f0f4 mov      qword ptr [rsp + 8], rbx
000000014042f0f9 mov      qword ptr [rsp + 0x10], rbp
000000014042f0fe mov      qword ptr [rsp + 0x18], rsi
000000014042f103 push     rdi
000000014042f104 push     r14
000000014042f106 push     r15
000000014042f108 sub      rsp, 0x40
000000014042f10c mov      rax, qword ptr [rcx]
000000014042f10f xor      edi, edi
000000014042f111 mov      rsi, rdx
000000014042f114 mov      r14d, r9d
000000014042f117 mov      r15, r8
000000014042f11a mov      rbx, rcx
000000014042f11d mov      rbp, qword ptr [rax]
000000014042f120 and      dword ptr [rdx], edi
000000014042f122 lea      edx, [rdi + 8]
000000014042f125 call     0x14036c07c
000000014042f12a test     al, al
000000014042f12c jne      0x14042f16e
000000014042f12e lea      edx, [rdi + 0xa]
000000014042f131 mov      rcx, rbx
000000014042f134 call     0x14036c07c
000000014042f139 test     al, al
000000014042f13b jne      0x14042f16e
000000014042f13d lea      edx, [rdi + 9]
000000014042f140 mov      rcx, rbx
000000014042f143 call     0x14036c07c
000000014042f148 test     al, al
000000014042f14a jne      0x14042f16e
000000014042f14c lea      edx, [rdi + 0xf]
000000014042f14f mov      rcx, rbx
000000014042f152 call     0x14036c07c
000000014042f157 test     al, al
000000014042f159 jne      0x14042f16e
000000014042f15b lea      edx, [rdi + 0xb]
000000014042f15e mov      rcx, rbx
000000014042f161 call     0x14036c07c
000000014042f166 test     al, al
000000014042f168 je       0x14042f20f
000000014042f16e inc      dword ptr [rsi]
000000014042f170 mov      edx, 0xb028
000000014042f175 mov      rax, qword ptr [rbp + 0x20]
000000014042f179 mov      rcx, rbx
000000014042f17c call     qword ptr [rip + 0x255176]
000000014042f182 mov      ebp, eax
000000014042f184 test     al, 0x18
000000014042f186 je       0x14042f20f
000000014042f18c mov      rax, qword ptr [rbx + 0x18]
000000014042f190 lea      rdi, [rbx + 0x1320]
000000014042f197 mov      rcx, qword ptr [rbx + 8]
000000014042f19b mov      rdx, rdi
000000014042f19e mov      rax, qword ptr [rax + 0x108]
000000014042f1a5 call     qword ptr [rip + 0x25514d]
000000014042f1ab mov      rsi, qword ptr [rsp + 0x80]
000000014042f1b3 mov      ecx, dword ptr [rsi]
000000014042f1b5 cmp      ecx, r14d
000000014042f1b8 jae      0x14042f1f2
000000014042f1ba mov      rax, qword ptr [rbx + 0x18]
000000014042f1be lea      rdx, [r15 + rcx]
000000014042f1c2 sub      r14d, ecx
000000014042f1c5 mov      dword ptr [rsp + 0x28], ebp
000000014042f1c9 lea      rcx, [rip + 0x226ed0]
000000014042f1d0 mov      r8d, r14d
000000014042f1d3 mov      qword ptr [rsp + 0x20], rcx
000000014042f1d8 lea      r9, [rip + 0x226ee1]
000000014042f1df mov      rax, qword ptr [rax + 0x128]
000000014042f1e6 mov      rcx, qword ptr [rbx + 8]
000000014042f1ea call     qword ptr [rip + 0x255108]
000000014042f1f0 add      dword ptr [rsi], eax
000000014042f1f2 mov      rax, qword ptr [rbx + 0x18]
000000014042f1f6 mov      rdx, rdi
000000014042f1f9 mov      rcx, qword ptr [rbx + 8]
000000014042f1fd mov      rax, qword ptr [rax + 0x110]
000000014042f204 call     qword ptr [rip + 0x2550ee]
000000014042f20a mov      edi, 1
000000014042f20f mov      edx, 2
000000014042f214 mov      rcx, rbx
000000014042f217 call     0x14036c07c
000000014042f21c test     al, al
000000014042f21e jne      0x14042f2b0
000000014042f224 mov      edx, 5
000000014042f229 mov      rcx, rbx
000000014042f22c call     0x14036c07c
000000014042f231 test     al, al
000000014042f233 jne      0x14042f2b0
000000014042f235 mov      edx, 3
000000014042f23a mov      rcx, rbx
000000014042f23d call     0x14036c07c
000000014042f242 test     al, al
000000014042f244 jne      0x14042f2b0
000000014042f246 mov      edx, 8
000000014042f24b mov      rcx, rbx
000000014042f24e call     0x14036c07c
000000014042f253 test     al, al
000000014042f255 jne      0x14042f2b0
000000014042f257 mov      edx, 0xa
000000014042f25c mov      rcx, rbx
000000014042f25f call     0x14036c07c
000000014042f264 test     al, al
000000014042f266 jne      0x14042f2b0
000000014042f268 mov      edx, 9
000000014042f26d mov      rcx, rbx
000000014042f270 call     0x14036c07c
000000014042f275 test     al, al
000000014042f277 jne      0x14042f2b0
000000014042f279 mov      edx, 0xf
000000014042f27e mov      rcx, rbx
000000014042f281 call     0x14036c07c
000000014042f286 test     al, al
000000014042f288 jne      0x14042f2b0
000000014042f28a mov      edx, 0xb
000000014042f28f mov      rcx, rbx
000000014042f292 call     0x14036c07c
000000014042f297 test     al, al
000000014042f299 jne      0x14042f2b0
000000014042f29b mov      edx, 0x11
000000014042f2a0 mov      rcx, rbx
000000014042f2a3 call     0x14036c07c
000000014042f2a8 neg      al
000000014042f2aa sbb      eax, eax
000000014042f2ac and      eax, edi
000000014042f2ae jmp      0x14042f2b2
000000014042f2b0 mov      eax, edi
000000014042f2b2 mov      rbx, qword ptr [rsp + 0x60]
000000014042f2b7 mov      rbp, qword ptr [rsp + 0x68]
000000014042f2bc mov      rsi, qword ptr [rsp + 0x70]
000000014042f2c1 add      rsp, 0x40
000000014042f2c5 pop      r15
000000014042f2c7 pop      r14
000000014042f2c9 pop      rdi
000000014042f2ca ret      