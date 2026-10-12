000000014044e010 mov      qword ptr [rsp + 0x10], rbx
000000014044e015 mov      qword ptr [rsp + 0x18], rbp
000000014044e01a push     rsi
000000014044e01b push     rdi
000000014044e01c push     r12
000000014044e01e push     r14
000000014044e020 push     r15
000000014044e022 sub      rsp, 0x30
000000014044e026 mov      rdi, r9
000000014044e029 movsxd   rbx, edx
000000014044e02c mov      rsi, r8
000000014044e02f mov      rbp, rcx
000000014044e032 call     0x1404f241c
000000014044e037 mov      rax, qword ptr [rbp + 0x140]
000000014044e03e movzx    r14d, byte ptr [rax + 0xd8]
000000014044e046 mov      rcx, qword ptr [rip + 0x4d1fb3]
000000014044e04d lea      r15, [rip + 0x4d1fac]
000000014044e054 cmp      rcx, r15
000000014044e057 je       0x14044e0f3
000000014044e05d cmp      byte ptr [rcx + 0x169], 1
000000014044e064 jb       0x14044e0a9
000000014044e066 mov      eax, dword ptr [rcx + 0x16c]
000000014044e06c test     al, 8
000000014044e06e je       0x14044e0a9
000000014044e070 mov      rax, qword ptr [rbp + 0x258]
000000014044e077 lea      r8d, [r14 + 0x41]
000000014044e07b mov      rcx, qword ptr [rcx + 0x158]
000000014044e082 mov      edx, 0x16
000000014044e087 mov      byte ptr [rsp + 0x28], r8b
000000014044e08c lea      r8, [rip + 0x28f775]
000000014044e093 movzx    r9d, byte ptr [rax + 0x2e]
000000014044e098 lea      rax, [rip + 0x50c731]
000000014044e09f mov      qword ptr [rsp + 0x20], rax
000000014044e0a4 call     0x14044c418
000000014044e0a9 mov      rcx, qword ptr [rip + 0x4d1f50]
000000014044e0b0 cmp      rcx, r15
000000014044e0b3 je       0x14044e0f3
000000014044e0b5 cmp      byte ptr [rcx + 0x169], 1
000000014044e0bc jb       0x14044e0f3
000000014044e0be mov      eax, dword ptr [rcx + 0x16c]
000000014044e0c4 test     al, 8
000000014044e0c6 je       0x14044e0f3
000000014044e0c8 mov      rcx, qword ptr [rcx + 0x158]
000000014044e0cf lea      r8, [rip + 0x50c69a]
000000014044e0d6 mov      rax, qword ptr [r8 + rbx*8]
000000014044e0da mov      edx, 0x17
000000014044e0df lea      r8, [rip + 0x28f722]
000000014044e0e6 mov      qword ptr [rsp + 0x20], rax
000000014044e0eb mov      r9d, ebx
000000014044e0ee call     0x14000ce54
000000014044e0f3 lea      rdx, [rsp + 0x60]
000000014044e0f8 mov      rcx, rbp
000000014044e0fb call     0x14041b2d4
000000014044e100 xor      r12d, r12d
000000014044e103 mov      r15d, eax
000000014044e106 test     eax, eax
000000014044e108 je       0x14044e160
000000014044e10a mov      rcx, qword ptr [rip + 0x4d1eef]
000000014044e111 lea      rbx, [rip + 0x4d1ee8]
000000014044e118 cmp      rcx, rbx
000000014044e11b je       0x14044e413
000000014044e121 cmp      byte ptr [rcx + 0x169], 2
000000014044e128 jb       0x14044e413
000000014044e12e mov      eax, dword ptr [rcx + 0x16c]
000000014044e134 test     al, 8
000000014044e136 je       0x14044e413
000000014044e13c mov      rcx, qword ptr [rcx + 0x158]
000000014044e143 lea      edx, [r12 + 0x19]
000000014044e148 lea      r9, [rip + 0x2099f1]
000000014044e14f lea      r8, [rip + 0x28f6b2]
000000014044e156 call     0x140008874
000000014044e15b jmp      0x14044e413
000000014044e160 mov      qword ptr [rsi], r12
000000014044e163 mov      edx, 8
000000014044e168 mov      rcx, rbp
000000014044e16b mov      dword ptr [rdi], r12d
000000014044e16e call     0x14036c07c
000000014044e173 test     al, al
000000014044e175 je       0x14044e216
000000014044e17b test     r14d, r14d
000000014044e17e je       0x14044e1c0
000000014044e180 test     ebx, ebx
000000014044e182 jne      0x14044e19b
000000014044e184 lea      rax, [rip + 0x50eb05]
000000014044e18b mov      qword ptr [rsi], rax
000000014044e18e mov      eax, dword ptr [rip + 0x50c990]
000000014044e194 mov      dword ptr [rdi], eax
000000014044e196 jmp      0x14044e384
000000014044e19b cmp      ebx, 1
000000014044e19e lea      rbx, [rip + 0x4d1e5b]
000000014044e1a5 jne      0x14044e38b
000000014044e1ab lea      rax, [rip + 0x57e7be]
000000014044e1b2 mov      qword ptr [rsi], rax
000000014044e1b5 mov      eax, dword ptr [rip + 0x50c96d]
000000014044e1bb jmp      0x14044e34a
000000014044e1c0 mov      rcx, qword ptr [rip + 0x4d1e39]
000000014044e1c7 lea      rbx, [rip + 0x4d1e32]
000000014044e1ce cmp      rcx, rbx
000000014044e1d1 je       0x14044e38b
000000014044e1d7 cmp      byte ptr [rcx + 0x169], 2
000000014044e1de jb       0x14044e38b
000000014044e1e4 mov      eax, dword ptr [rcx + 0x16c]
000000014044e1ea test     al, 8
000000014044e1ec je       0x14044e38b
000000014044e1f2 mov      rcx, qword ptr [rcx + 0x158]
000000014044e1f9 lea      r9, [rip + 0x209940]
000000014044e200 mov      edx, 0x1a
000000014044e205 lea      r8, [rip + 0x28f5fc]
000000014044e20c call     0x140008874
000000014044e211 jmp      0x14044e38b
000000014044e216 mov      edx, 0xb
000000014044e21b mov      rcx, rbp
000000014044e21e call     0x14036c07c
000000014044e223 test     al, al
000000014044e225 je       0x14044e2ff
000000014044e22b cmp      ebx, 2
000000014044e22e je       0x14044e2f4
000000014044e234 test     ebx, ebx
000000014044e236 jne      0x14044e28f
000000014044e238 mov      rax, qword ptr [rbp + 0x140]
000000014044e23f movzx    ecx, word ptr [rax + 0xb6]
000000014044e246 mov      eax, 0x1348
000000014044e24b cmp      cx, ax
000000014044e24e jne      0x14044e265
000000014044e250 lea      rax, [rip + 0x657ad9]
000000014044e257 mov      qword ptr [rsi], rax
000000014044e25a mov      eax, dword ptr [rip + 0x5d6ec8]
000000014044e260 jmp      0x14044e194
000000014044e265 mov      eax, 0x7060
000000014044e26a lea      rbx, [rip + 0x4d1d8f]
000000014044e271 cmp      cx, ax
000000014044e274 jne      0x14044e38b
000000014044e27a lea      rax, [rip + 0x5d900f]
000000014044e281 mov      qword ptr [rsi], rax
000000014044e284 mov      eax, dword ptr [rip + 0x5d6e9a]
000000014044e28a jmp      0x14044e34a
000000014044e28f cmp      ebx, 1
000000014044e292 jne      0x14044e2e8
000000014044e294 mov      rax, qword ptr [rbp + 0x140]
000000014044e29b movzx    ecx, word ptr [rax + 0xb6]
000000014044e2a2 mov      eax, 0x1348
000000014044e2a7 cmp      cx, ax
000000014044e2aa jne      0x14044e2c1
000000014044e2ac lea      rax, [rip + 0x736c4d]
000000014044e2b3 mov      qword ptr [rsi], rax
000000014044e2b6 mov      eax, dword ptr [rip + 0x5d8fcc]
000000014044e2bc jmp      0x14044e194
000000014044e2c1 mov      eax, 0x7060
000000014044e2c6 lea      rbx, [rip + 0x4d1d33]
000000014044e2cd cmp      cx, ax
000000014044e2d0 jne      0x14044e38b
000000014044e2d6 lea      rax, [rip + 0x6d64e3]
000000014044e2dd mov      qword ptr [rsi], rax
000000014044e2e0 mov      eax, dword ptr [rip + 0x5d6e46]
000000014044e2e6 jmp      0x14044e34a
000000014044e2e8 lea      eax, [rbx - 9]
000000014044e2eb cmp      eax, 1
000000014044e2ee ja       0x14044e384
000000014044e2f4 mov      qword ptr [rsi], r12
000000014044e2f7 mov      dword ptr [rdi], r12d
000000014044e2fa jmp      0x14044e384
000000014044e2ff mov      edx, 0x10
000000014044e304 mov      rcx, rbp
000000014044e307 call     0x14036c07c
000000014044e30c test     al, al
000000014044e30e je       0x14044e34e
000000014044e310 cmp      ebx, 2
000000014044e313 je       0x14044e2f4
000000014044e315 test     ebx, ebx
000000014044e317 jne      0x14044e32e
000000014044e319 lea      rax, [rip + 0x797320]
000000014044e320 mov      qword ptr [rsi], rax
000000014044e323 mov      eax, dword ptr [rip + 0x797307]
000000014044e329 jmp      0x14044e194
000000014044e32e cmp      ebx, 1
000000014044e331 lea      rbx, [rip + 0x4d1cc8]
000000014044e338 jne      0x14044e38b
000000014044e33a lea      rax, [rip + 0x80fa2f]
000000014044e341 mov      qword ptr [rsi], rax
000000014044e344 mov      eax, dword ptr [rip + 0x7972ea]
000000014044e34a mov      dword ptr [rdi], eax
000000014044e34c jmp      0x14044e38b
000000014044e34e mov      edx, 0xd
000000014044e353 mov      rcx, rbp
000000014044e356 call     0x14036c07c
000000014044e35b test     al, al
000000014044e35d je       0x14044e373
000000014044e35f cmp      ebx, 2
000000014044e362 lea      rbx, [rip + 0x4d1c97]
000000014044e369 ja       0x14044e38b
000000014044e36b mov      qword ptr [rsi], r12
000000014044e36e mov      dword ptr [rdi], r12d
000000014044e371 jmp      0x14044e38b
000000014044e373 mov      edx, 0xc
000000014044e378 mov      rcx, rbp
000000014044e37b call     0x14036c07c
000000014044e380 test     al, al
000000014044e382 jne      0x14044e35f
000000014044e384 lea      rbx, [rip + 0x4d1c75]
000000014044e38b cmp      qword ptr [rsi], r12
000000014044e38e jne      0x14044e3d9
000000014044e390 cmp      dword ptr [rdi], r12d
000000014044e393 jne      0x14044e3d9
000000014044e395 mov      rcx, qword ptr [rip + 0x4d1c64]
000000014044e39c cmp      rcx, rbx
000000014044e39f je       0x14044e3d3
000000014044e3a1 cmp      byte ptr [rcx + 0x169], 2
000000014044e3a8 jb       0x14044e3d3
000000014044e3aa mov      eax, dword ptr [rcx + 0x16c]
000000014044e3b0 test     al, 8
000000014044e3b2 je       0x14044e3d3
000000014044e3b4 mov      rcx, qword ptr [rcx + 0x158]
000000014044e3bb lea      r9, [rip + 0x20977e]
000000014044e3c2 mov      edx, 0x1b
000000014044e3c7 lea      r8, [rip + 0x28f43a]
000000014044e3ce call     0x140008874
000000014044e3d3 mov      r15d, 0x16
000000014044e3d9 mov      rcx, qword ptr [rip + 0x4d1c20]
000000014044e3e0 cmp      rcx, rbx
000000014044e3e3 je       0x14044e413
000000014044e3e5 cmp      byte ptr [rcx + 0x169], 1
000000014044e3ec jb       0x14044e413
000000014044e3ee mov      eax, dword ptr [rcx + 0x16c]
000000014044e3f4 test     al, 8
000000014044e3f6 je       0x14044e413
000000014044e3f8 mov      r9d, dword ptr [rdi]
000000014044e3fb lea      r8, [rip + 0x28f406]
000000014044e402 mov      rcx, qword ptr [rcx + 0x158]
000000014044e409 mov      edx, 0x1c
000000014044e40e call     0x140001bb0
000000014044e413 mov      rbx, qword ptr [rsp + 0x68]
000000014044e418 mov      eax, r15d
000000014044e41b mov      rbp, qword ptr [rsp + 0x70]
000000014044e420 add      rsp, 0x30
000000014044e424 pop      r15
000000014044e426 pop      r14
000000014044e428 pop      r12
000000014044e42a pop      rdi
000000014044e42b pop      rsi
000000014044e42c ret      