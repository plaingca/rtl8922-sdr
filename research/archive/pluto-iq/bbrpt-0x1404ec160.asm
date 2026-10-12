00000001404ec160 mov      rax, rsp
00000001404ec163 mov      qword ptr [rax + 8], rbx
00000001404ec167 mov      qword ptr [rax + 0x10], rbp
00000001404ec16b mov      qword ptr [rax + 0x18], rsi
00000001404ec16f mov      qword ptr [rax + 0x20], rdi
00000001404ec173 push     r13
00000001404ec175 push     r14
00000001404ec177 push     r15
00000001404ec179 sub      rsp, 0x20
00000001404ec17d mov      rax, qword ptr [rcx]
00000001404ec180 mov      rbp, r9
00000001404ec183 mov      esi, r8d
00000001404ec186 mov      r15d, edx
00000001404ec189 mov      rbx, rcx
00000001404ec18c mov      r13, qword ptr [rax]
00000001404ec18f test     dl, 3
00000001404ec192 je       0x1404ec1c1
00000001404ec194 mov      rcx, qword ptr [rip + 0x433e65]
00000001404ec19b lea      rax, [rip + 0x433e5e]
00000001404ec1a2 cmp      rcx, rax
00000001404ec1a5 je       0x1404ec20c
00000001404ec1a7 cmp      byte ptr [rcx + 0x169], 2
00000001404ec1ae jb       0x1404ec20c
00000001404ec1b0 mov      eax, dword ptr [rcx + 0x16c]
00000001404ec1b6 test     al, 8
00000001404ec1b8 je       0x1404ec20c
00000001404ec1ba mov      edx, 0x43
00000001404ec1bf jmp      0x1404ec1f2
00000001404ec1c1 test     sil, 3
00000001404ec1c5 je       0x1404ec216
00000001404ec1c7 mov      rcx, qword ptr [rip + 0x433e32]
00000001404ec1ce lea      rax, [rip + 0x433e2b]
00000001404ec1d5 cmp      rcx, rax
00000001404ec1d8 je       0x1404ec20c
00000001404ec1da cmp      byte ptr [rcx + 0x169], 2
00000001404ec1e1 jb       0x1404ec20c
00000001404ec1e3 mov      eax, dword ptr [rcx + 0x16c]
00000001404ec1e9 test     al, 8
00000001404ec1eb je       0x1404ec20c
00000001404ec1ed mov      edx, 0x44
00000001404ec1f2 mov      rcx, qword ptr [rcx + 0x158]
00000001404ec1f9 lea      r9, [rip + 0x171090]
00000001404ec200 lea      r8, [rip + 0x4144d9]
00000001404ec207 call     0x140008874
00000001404ec20c mov      eax, 0x96
00000001404ec211 jmp      0x1404ec309
00000001404ec216 xor      edi, edi
00000001404ec218 test     rbp, rbp
00000001404ec21b jne      0x1404ec26a
00000001404ec21d mov      rcx, qword ptr [rip + 0x433ddc]
00000001404ec224 lea      rax, [rip + 0x433dd5]
00000001404ec22b cmp      rcx, rax
00000001404ec22e je       0x1404ec260
00000001404ec230 cmp      byte ptr [rcx + 0x169], 2
00000001404ec237 jb       0x1404ec260
00000001404ec239 mov      eax, dword ptr [rcx + 0x16c]
00000001404ec23f test     al, 8
00000001404ec241 je       0x1404ec260
00000001404ec243 mov      rcx, qword ptr [rcx + 0x158]
00000001404ec24a lea      edx, [rdi + 0x45]
00000001404ec24d lea      r9, [rip + 0x17103c]
00000001404ec254 lea      r8, [rip + 0x414485]
00000001404ec25b call     0x140008874
00000001404ec260 mov      eax, 9
00000001404ec265 jmp      0x1404ec309
00000001404ec26a mov      rax, qword ptr [rcx + 0x18]
00000001404ec26e lea      r14, [rcx + 0x1198]
00000001404ec275 mov      rcx, qword ptr [rcx + 8]
00000001404ec279 mov      rdx, r14
00000001404ec27c mov      rax, qword ptr [rax + 0x108]
00000001404ec283 call     qword ptr [rip + 0x19806f]
00000001404ec289 inc      dword ptr [rbx + 0xef4]
00000001404ec28f mov      edx, r15d
00000001404ec292 mov      rcx, rbx
00000001404ec295 call     0x1404edbd8
00000001404ec29a mov      r15d, eax
00000001404ec29d test     eax, eax
00000001404ec29f je       0x1404ec2c4
00000001404ec2a1 mov      rcx, qword ptr [rbx + 0x18]
00000001404ec2a5 mov      rdx, r14
00000001404ec2a8 dec      dword ptr [rbx + 0xef4]
00000001404ec2ae mov      rax, qword ptr [rcx + 0x110]
00000001404ec2b5 mov      rcx, qword ptr [rbx + 8]
00000001404ec2b9 call     qword ptr [rip + 0x198039]
00000001404ec2bf mov      eax, r15d
00000001404ec2c2 jmp      0x1404ec309
00000001404ec2c4 test     esi, esi
00000001404ec2c6 je       0x1404ec2e9
00000001404ec2c8 mov      rax, qword ptr [r13 + 0x28]
00000001404ec2cc lea      edx, [rdi + 0x80000]
00000001404ec2d2 mov      r8d, edi
00000001404ec2d5 mov      rcx, rbx
00000001404ec2d8 mov      r8d, dword ptr [r8 + rbp]
00000001404ec2dc call     qword ptr [rip + 0x198016]
00000001404ec2e2 add      edi, 4
00000001404ec2e5 cmp      edi, esi
00000001404ec2e7 jb       0x1404ec2c8
00000001404ec2e9 mov      rax, qword ptr [rbx + 0x18]
00000001404ec2ed mov      rdx, r14
00000001404ec2f0 dec      dword ptr [rbx + 0xef4]
00000001404ec2f6 mov      rcx, qword ptr [rbx + 8]
00000001404ec2fa mov      rax, qword ptr [rax + 0x110]
00000001404ec301 call     qword ptr [rip + 0x197ff1]
00000001404ec307 xor      eax, eax
00000001404ec309 mov      rbx, qword ptr [rsp + 0x40]
00000001404ec30e mov      rbp, qword ptr [rsp + 0x48]
00000001404ec313 mov      rsi, qword ptr [rsp + 0x50]
00000001404ec318 mov      rdi, qword ptr [rsp + 0x58]
00000001404ec31d add      rsp, 0x20
00000001404ec321 pop      r15
00000001404ec323 pop      r14
00000001404ec325 pop      r13
00000001404ec327 ret      