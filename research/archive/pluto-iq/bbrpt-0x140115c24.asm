0000000140115c24 mov      rax, rsp
0000000140115c27 mov      qword ptr [rax + 0x10], rbx
0000000140115c2b mov      qword ptr [rax + 0x18], rbp
0000000140115c2f mov      qword ptr [rax + 0x20], rsi
0000000140115c33 mov      qword ptr [rax + 8], rcx
0000000140115c37 push     rdi
0000000140115c38 push     r12
0000000140115c3a push     r13
0000000140115c3c push     r14
0000000140115c3e push     r15
0000000140115c40 sub      rsp, 0x40
0000000140115c44 mov      rax, qword ptr [rcx + 0xaf3b8]
0000000140115c4b mov      dil, dl
0000000140115c4e mov      rdx, r8
0000000140115c51 mov      r12, r9
0000000140115c54 mov      rsi, r8
0000000140115c57 mov      rbp, rcx
0000000140115c5a mov      r10, qword ptr [rax]
0000000140115c5d mov      r14, qword ptr [r10 + 0x113968]
0000000140115c64 call     0x140115a98
0000000140115c69 xor      r15d, r15d
0000000140115c6c mov      rbx, rax
0000000140115c6f mov      r13d, 6
0000000140115c75 test     rax, rax
0000000140115c78 jne      0x140115cf9
0000000140115c7a mov      ecx, dword ptr [r14 + 0x20]
0000000140115c7e cmp      ecx, 0x80
0000000140115c84 jae      0x140115cb4
0000000140115c86 imul     rbx, rcx, 0x2c
0000000140115c8a lea      eax, [rcx + 1]
0000000140115c8d add      rbx, qword ptr [r14 + 0x28]
0000000140115c91 lea      edx, [r13 + 0x26]
0000000140115c95 mov      rcx, rbx
0000000140115c98 mov      dword ptr [r14 + 0x20], eax
0000000140115c9c call     0x140031290
0000000140115ca1 mov      r8d, r13d
0000000140115ca4 mov      rdx, rsi
0000000140115ca7 mov      rcx, rbx
0000000140115caa call     0x1400311e8
0000000140115caf test     rbx, rbx
0000000140115cb2 jne      0x140115cf9
0000000140115cb4 mov      rcx, qword ptr [rip + 0x80a345]
0000000140115cbb lea      rax, [rip + 0x80a33e]
0000000140115cc2 cmp      rcx, rax
0000000140115cc5 je       0x140115cef
0000000140115cc7 cmp      byte ptr [rcx + 0x29], 3
0000000140115ccb jb       0x140115cef
0000000140115ccd test     dword ptr [rcx + 0x2c], 0x10000
0000000140115cd4 je       0x140115cef
0000000140115cd6 mov      r9d, dword ptr [r14 + 0x20]
0000000140115cda lea      r8, [rip + 0x57d8b7]
0000000140115ce1 mov      rcx, qword ptr [rcx + 0x18]
0000000140115ce5 mov      edx, 0x3a
0000000140115cea call     0x140001bb0
0000000140115cef mov      eax, 3
0000000140115cf4 jmp      0x14011602f
0000000140115cf9 or       byte ptr [rbx + 0xc], dil
0000000140115cfd test     dil, 8
0000000140115d01 je       0x140115d16
0000000140115d03 lea      rdx, [rbp + 0xaf290]
0000000140115d0a mov      r8d, r13d
0000000140115d0d lea      rcx, [rbx + 6]
0000000140115d11 call     0x1400311e8
0000000140115d16 xor      r8d, r8d
0000000140115d19 lea      rcx, [rsp + 0x28]
0000000140115d1e mov      rdx, r12
0000000140115d21 call     0x140115850
0000000140115d26 movups   xmm0, xmmword ptr [rax]
0000000140115d29 pextrw   eax, xmm0, 4
0000000140115d2e movups   xmmword ptr [rsp + 0x28], xmm0
0000000140115d33 cmp      ax, r13w
0000000140115d37 jb       0x140115d76
0000000140115d39 mov      rdx, qword ptr [rsp + 0x28]
0000000140115d3e movzx    eax, word ptr [rdx]
0000000140115d41 movzx    ecx, byte ptr [rdx + 1]
0000000140115d45 shl      ax, 8
0000000140115d49 or       cx, ax
0000000140115d4c mov      word ptr [rbx + 0x13], cx
0000000140115d50 movzx    eax, byte ptr [rdx + 3]
0000000140115d54 movzx    ecx, word ptr [rdx + 2]
0000000140115d58 shl      cx, 8
0000000140115d5c or       cx, ax
0000000140115d5f mov      word ptr [rbx + 0x15], cx
0000000140115d63 movzx    ecx, word ptr [rdx + 2]
0000000140115d67 movzx    eax, byte ptr [rdx + 3]
0000000140115d6b shl      cx, 8
0000000140115d6f or       cx, ax
0000000140115d72 mov      word ptr [rbx + 0x17], cx
0000000140115d76 mov      edi, 1
0000000140115d7b lea      rcx, [rsp + 0x28]
0000000140115d80 mov      r8d, edi
0000000140115d83 mov      rdx, r12
0000000140115d86 call     0x140115850
0000000140115d8b movups   xmm0, xmmword ptr [rax]
0000000140115d8e pextrw   eax, xmm0, 4
0000000140115d93 movups   xmmword ptr [rsp + 0x28], xmm0
0000000140115d98 cmp      ax, r13w
0000000140115d9c jb       0x140115daf
0000000140115d9e mov      rdx, qword ptr [rsp + 0x28]
0000000140115da3 lea      rcx, [rbx + 0xd]
0000000140115da7 mov      r8d, r13d
0000000140115daa call     0x1400311e8
0000000140115daf mov      r8d, r13d
0000000140115db2 lea      rcx, [rsp + 0x28]
0000000140115db7 mov      rdx, r12
0000000140115dba call     0x140115850
0000000140115dbf mov      esi, 7
0000000140115dc4 movups   xmm0, xmmword ptr [rax]
0000000140115dc7 pextrw   eax, xmm0, 4
0000000140115dcc movups   xmmword ptr [rsp + 0x28], xmm0
0000000140115dd1 cmp      ax, si
0000000140115dd4 jb       0x140115def
0000000140115dd6 mov      rdx, qword ptr [rsp + 0x28]
0000000140115ddb lea      rcx, [rbx + 0x1a]
0000000140115ddf mov      r8d, r13d
0000000140115de2 mov      al, byte ptr [rdx]
0000000140115de4 inc      rdx
0000000140115de7 mov      byte ptr [rbx + 0x19], al
0000000140115dea call     0x1400311e8
0000000140115def mov      r8d, esi
0000000140115df2 lea      rcx, [rsp + 0x28]
0000000140115df7 mov      rdx, r12
0000000140115dfa call     0x140115850
0000000140115dff movups   xmm0, xmmword ptr [rax]
0000000140115e02 pextrw   eax, xmm0, 4
0000000140115e07 movups   xmmword ptr [rsp + 0x28], xmm0
0000000140115e0c cmp      ax, 2
0000000140115e10 jb       0x140115e29
0000000140115e12 mov      rax, qword ptr [rsp + 0x28]
0000000140115e17 movzx    ecx, word ptr [rax]
0000000140115e1a movzx    edx, byte ptr [rax + 1]
0000000140115e1e shl      cx, 8
0000000140115e22 or       dx, cx
0000000140115e25 mov      word ptr [rbx + 0x20], dx
0000000140115e29 mov      r8d, 8
0000000140115e2f lea      rcx, [rsp + 0x28]
0000000140115e34 mov      rdx, r12
0000000140115e37 call     0x140115850
0000000140115e3c movups   xmm0, xmmword ptr [rax]
0000000140115e3f pextrw   eax, xmm0, 4
0000000140115e44 movups   xmmword ptr [rsp + 0x28], xmm0
0000000140115e49 cmp      ax, 5
0000000140115e4d jb       0x140115e6b
0000000140115e4f mov      rdx, qword ptr [rsp + 0x28]
0000000140115e54 cmp      byte ptr [rdx], dil
0000000140115e57 jne      0x140115e6b
0000000140115e59 inc      rdx
0000000140115e5c lea      rcx, [rbx + 0x22]
0000000140115e60 mov      r8d, 4
0000000140115e66 call     0x1400311e8
0000000140115e6b mov      r8d, 9
0000000140115e71 lea      rcx, [rsp + 0x28]
0000000140115e76 mov      rdx, r12
0000000140115e79 call     0x140115850
0000000140115e7e movups   xmm0, xmmword ptr [rax]
0000000140115e81 pextrw   eax, xmm0, 4
0000000140115e86 movups   xmmword ptr [rsp + 0x28], xmm0
0000000140115e8b test     ax, ax
0000000140115e8e je       0x140115ff1
0000000140115e94 mov      rsi, qword ptr [rsp + 0x28]
0000000140115e99 movzx    eax, r15w
0000000140115e9d lea      rbp, [rax + rax*2]
0000000140115ea1 cmp      byte ptr [rsi + rbp*8], 0x17
0000000140115ea5 jne      0x140115ff1
0000000140115eab mov      rcx, qword ptr [rsp + 0x70]
0000000140115eb0 lea      r13, [rsi + rbp*8]
0000000140115eb4 lea      rdx, [r13 + 1]
0000000140115eb8 mov      byte ptr [rsp + 0x20], dil
0000000140115ebd call     0x140115a98
0000000140115ec2 mov      rdi, rax
0000000140115ec5 test     rax, rax
0000000140115ec8 jne      0x140115f16
0000000140115eca mov      ecx, dword ptr [r14 + 0x20]
0000000140115ece cmp      ecx, 0x80
0000000140115ed4 jae      0x140115f91
0000000140115eda imul     rdi, rcx, 0x2c
0000000140115ede lea      eax, [rcx + 1]
0000000140115ee1 mov      edx, 0x2c
0000000140115ee6 add      rdi, qword ptr [r14 + 0x28]
0000000140115eea mov      rcx, rdi
0000000140115eed mov      dword ptr [r14 + 0x20], eax
0000000140115ef1 call     0x140031290
0000000140115ef6 mov      r8d, 6
0000000140115efc lea      rdx, [r13 + 1]
0000000140115f00 mov      rcx, rdi
0000000140115f03 call     0x1400311e8
0000000140115f08 mov      byte ptr [rsp + 0x20], 0
0000000140115f0d test     rdi, rdi
0000000140115f10 je       0x140115fac
0000000140115f16 or       byte ptr [rdi + 0xc], 8
0000000140115f1a lea      rcx, [rdi + 6]
0000000140115f1e mov      r13d, 6
0000000140115f24 mov      rdx, rbx
0000000140115f27 mov      r8d, r13d
0000000140115f2a call     0x1400311e8
0000000140115f2f lea      rdx, [rsi + 7]
0000000140115f33 mov      r8d, r13d
0000000140115f36 lea      rdx, [rdx + rbp*8]
0000000140115f3a lea      rcx, [rdi + 0xd]
0000000140115f3e call     0x1400311e8
0000000140115f43 cmp      byte ptr [rsp + 0x20], 0
0000000140115f48 jne      0x140115f5f
0000000140115f4a movzx    ecx, word ptr [rsi + rbp*8 + 0xd]
0000000140115f4f movzx    eax, byte ptr [rsi + rbp*8 + 0xe]
0000000140115f54 shl      cx, 8
0000000140115f58 or       cx, ax
0000000140115f5b mov      word ptr [rdi + 0x13], cx
0000000140115f5f movzx    ecx, word ptr [rsi + rbp*8 + 0xf]
0000000140115f64 lea      rdx, [rsi + 0x12]
0000000140115f68 movzx    eax, byte ptr [rsi + rbp*8 + 0x10]
0000000140115f6d lea      rdx, [rdx + rbp*8]
0000000140115f71 shl      cx, 8
0000000140115f75 mov      r8d, r13d
0000000140115f78 or       cx, ax
0000000140115f7b mov      word ptr [rdi + 0x17], cx
0000000140115f7f lea      rcx, [rdi + 0x1a]
0000000140115f83 mov      al, byte ptr [rsi + rbp*8 + 0x11]
0000000140115f87 mov      byte ptr [rdi + 0x19], al
0000000140115f8a call     0x1400311e8
0000000140115f8f jmp      0x140115f97
0000000140115f91 mov      r13d, 6
0000000140115f97 mov      edi, 1
0000000140115f9c add      r15w, di
0000000140115fa0 cmp      r15w, di
0000000140115fa4 jb       0x140115e99
0000000140115faa jmp      0x140115ff1
0000000140115fac mov      rcx, qword ptr [rip + 0x80a04d]
0000000140115fb3 lea      rax, [rip + 0x80a046]
0000000140115fba cmp      rcx, rax
0000000140115fbd je       0x140115fe7
0000000140115fbf cmp      byte ptr [rcx + 0x29], 3
0000000140115fc3 jb       0x140115fe7
0000000140115fc5 test     dword ptr [rcx + 0x2c], 0x10000
0000000140115fcc je       0x140115fe7
0000000140115fce mov      r9d, dword ptr [r14 + 0x20]
0000000140115fd2 lea      r8, [rip + 0x57d5bf]
0000000140115fd9 mov      rcx, qword ptr [rcx + 0x18]
0000000140115fdd mov      edx, 0x3b
0000000140115fe2 call     0x140001bb0
0000000140115fe7 mov      r13d, 6
0000000140115fed lea      edi, [r13 - 5]
0000000140115ff1 mov      r8d, 0xa
0000000140115ff7 lea      rcx, [rsp + 0x28]
0000000140115ffc mov      rdx, r12
0000000140115fff call     0x140115850
0000000140116004 movups   xmm0, xmmword ptr [rax]
0000000140116007 pextrw   eax, xmm0, 4
000000014011600c movups   xmmword ptr [rsp + 0x28], xmm0
0000000140116011 cmp      ax, r13w
0000000140116015 jb       0x14011602d
0000000140116017 mov      rdx, qword ptr [rsp + 0x28]
000000014011601c cmp      byte ptr [rdx], dil
000000014011601f jne      0x14011602d
0000000140116021 lea      rcx, [rbx + 0x26]
0000000140116025 mov      r8d, r13d
0000000140116028 call     0x1400311e8
000000014011602d xor      eax, eax
000000014011602f lea      r11, [rsp + 0x40]
0000000140116034 mov      rbx, qword ptr [r11 + 0x38]
0000000140116038 mov      rbp, qword ptr [r11 + 0x40]
000000014011603c mov      rsi, qword ptr [r11 + 0x48]
0000000140116040 mov      rsp, r11
0000000140116043 pop      r15
0000000140116045 pop      r14
0000000140116047 pop      r13
0000000140116049 pop      r12
000000014011604b pop      rdi
000000014011604c ret      