00000001404f3df0 mov      qword ptr [rsp + 0x20], rbx
00000001404f3df5 push     rbp
00000001404f3df6 push     rsi
00000001404f3df7 push     rdi
00000001404f3df8 push     r12
00000001404f3dfa push     r13
00000001404f3dfc push     r14
00000001404f3dfe push     r15
00000001404f3e00 sub      rsp, 0x60
00000001404f3e04 mov      rax, qword ptr [rip + 0x433655]
00000001404f3e0b xor      rax, rsp
00000001404f3e0e mov      qword ptr [rsp + 0x58], rax
00000001404f3e13 movzx    r14d, byte ptr [r8 + 0x12]
00000001404f3e18 lea      rax, [rip + 0x7e4dc9]
00000001404f3e1f movzx    ebp, word ptr [r8 + 0xa]
00000001404f3e24 add      r14, rdx
00000001404f3e27 mov      r12b, byte ptr [r8 + 0x11]
00000001404f3e2b mov      r10, rcx
00000001404f3e2e mov      r13b, byte ptr [r8 + 0x10]
00000001404f3e32 add      rbp, rdx
00000001404f3e35 mov      qword ptr [rsp + 0x30], rcx
00000001404f3e3a mov      rbx, r8
00000001404f3e3d mov      byte ptr [rip + 0x7e4edc], 0
00000001404f3e44 mov      ecx, 0x10
00000001404f3e49 and      dword ptr [rax], 0
00000001404f3e4c and      dword ptr [rax - 8], 0
00000001404f3e50 mov      byte ptr [rax + 4], 0xff
00000001404f3e54 mov      dword ptr [rax - 4], 0xff
00000001404f3e5b lea      rax, [rax + 0x14]
00000001404f3e5f sub      rcx, 1
00000001404f3e63 jne      0x1404f3e49
00000001404f3e65 xor      sil, sil
00000001404f3e68 test     r12b, r12b
00000001404f3e6b je       0x1404f4036
00000001404f3e71 movzx    r15d, sil
00000001404f3e75 imul     rdi, r15, 0x1c
00000001404f3e79 test     r13b, r13b
00000001404f3e7c jne      0x1404f3f1b
00000001404f3e82 mov      rax, qword ptr [r10 + 0x18]
00000001404f3e86 lea      rdx, [rsp + 0x38]
00000001404f3e8b movzx    r9d, byte ptr [rbx + 0x13]
00000001404f3e90 mov      r8, r14
00000001404f3e93 mov      rcx, qword ptr [r10 + 8]
00000001404f3e97 mov      rax, qword ptr [rax + 0xa0]
00000001404f3e9e call     qword ptr [rip + 0x190454]
00000001404f3ea4 mov      r9d, dword ptr [rsp + 0x3c]
00000001404f3ea9 mov      r8d, r9d
00000001404f3eac mov      eax, dword ptr [rsp + 0x38]
00000001404f3eb0 mov      ecx, r9d
00000001404f3eb3 mov      dword ptr [rdi + rbx + 0x24], eax
00000001404f3eb7 mov      edx, r9d
00000001404f3eba shr      ecx, 0x1e
00000001404f3ebd mov      eax, r9d
00000001404f3ec0 and      eax, 0xffffff
00000001404f3ec5 mov      byte ptr [rdi + rbx + 0x3b], cl
00000001404f3ec9 mov      dword ptr [rdi + rbx + 0x28], eax
00000001404f3ecd add      cl, cl
00000001404f3ecf mov      eax, r9d
00000001404f3ed2 shr      edx, 0x1d
00000001404f3ed5 shr      eax, 0x18
00000001404f3ed8 and      dl, 1
00000001404f3edb and      al, 0xf
00000001404f3edd shr      r8d, 0x1c
00000001404f3ee1 mov      byte ptr [rdi + rbx + 0x38], al
00000001404f3ee5 add      cl, dl
00000001404f3ee7 mov      eax, dword ptr [rsp + 0x40]
00000001404f3eeb and      r8b, 1
00000001404f3eef shr      r9d, 0x1a
00000001404f3ef3 add      cl, cl
00000001404f3ef5 and      r9b, 3
00000001404f3ef9 mov      dword ptr [rdi + rbx + 0x2c], eax
00000001404f3efd mov      eax, dword ptr [rsp + 0x44]
00000001404f3f01 add      cl, r8b
00000001404f3f04 mov      dword ptr [rdi + rbx + 0x30], eax
00000001404f3f08 mov      byte ptr [rdi + rbx + 0x39], r8b
00000001404f3f0d mov      byte ptr [rdi + rbx + 0x3a], dl
00000001404f3f11 mov      byte ptr [rdi + rbx + 0x3c], r9b
00000001404f3f16 jmp      0x1404f3fad
00000001404f3f1b cmp      r13b, 1
00000001404f3f1f jne      0x1404f3fbb
00000001404f3f25 mov      rax, qword ptr [r10 + 0x18]
00000001404f3f29 lea      rdx, [rsp + 0x48]
00000001404f3f2e movzx    r9d, byte ptr [rbx + 0x13]
00000001404f3f33 mov      r8, r14
00000001404f3f36 mov      rcx, qword ptr [r10 + 8]
00000001404f3f3a mov      rax, qword ptr [rax + 0xa0]
00000001404f3f41 call     qword ptr [rip + 0x1903b1]
00000001404f3f47 mov      ecx, dword ptr [rsp + 0x4c]
00000001404f3f4b mov      eax, dword ptr [rsp + 0x48]
00000001404f3f4f mov      dword ptr [rdi + rbx + 0x24], eax
00000001404f3f53 mov      eax, ecx
00000001404f3f55 and      eax, 0xffffff
00000001404f3f5a mov      dword ptr [rdi + rbx + 0x28], eax
00000001404f3f5e mov      eax, ecx
00000001404f3f60 shr      eax, 0x18
00000001404f3f63 and      al, 0xf
00000001404f3f65 mov      byte ptr [rdi + rbx + 0x38], al
00000001404f3f69 mov      eax, ecx
00000001404f3f6b shr      eax, 0x1c
00000001404f3f6e and      al, r13b
00000001404f3f71 mov      byte ptr [rdi + rbx + 0x39], al
00000001404f3f75 mov      eax, ecx
00000001404f3f77 shr      eax, 0x1d
00000001404f3f7a and      al, r13b
00000001404f3f7d shr      ecx, 0x1e
00000001404f3f80 mov      byte ptr [rdi + rbx + 0x3a], al
00000001404f3f84 mov      byte ptr [rdi + rbx + 0x3b], cl
00000001404f3f88 mov      ecx, dword ptr [rsp + 0x50]
00000001404f3f8c movzx    eax, cl
00000001404f3f8f mov      dword ptr [rdi + rbx + 0x2c], eax
00000001404f3f93 mov      eax, ecx
00000001404f3f95 shr      eax, 8
00000001404f3f98 movzx    eax, ax
00000001404f3f9b mov      dword ptr [rdi + rbx + 0x30], eax
00000001404f3f9f mov      eax, ecx
00000001404f3fa1 shr      eax, 0x18
00000001404f3fa4 and      al, 0xf
00000001404f3fa6 mov      byte ptr [rdi + rbx + 0x3c], al
00000001404f3faa shr      ecx, 0x1c
00000001404f3fad mov      r10, qword ptr [rsp + 0x30]
00000001404f3fb2 and      dword ptr [rdi + rbx + 0x34], 0
00000001404f3fb7 mov      byte ptr [rdi + rbx + 0x3d], cl
00000001404f3fbb mov      qword ptr [rbx + r15*8 + 0x2b0], rbp
00000001404f3fc3 cmp      byte ptr [rdi + rbx + 0x38], 9
00000001404f3fc8 jne      0x1404f4012
00000001404f3fca mov      byte ptr [rbx + 0x17], 1
00000001404f3fce mov      al, byte ptr [rip + 0x7e4d4c]
00000001404f3fd4 test     al, al
00000001404f3fd6 jne      0x1404f3fe2
00000001404f3fd8 mov      byte ptr [rbx + 0x18], sil
00000001404f3fdc mov      al, byte ptr [rip + 0x7e4d3e]
00000001404f3fe2 movzx    eax, al
00000001404f3fe5 mov      r9b, sil
00000001404f3fe8 mov      r8, rbx
00000001404f3feb lea      rcx, [rax + rax*4]
00000001404f3fef lea      rax, [rip + 0x7e4bf6]
00000001404f3ff6 mov      byte ptr [rax + rcx*4], sil
00000001404f3ffa mov      rcx, r10
00000001404f3ffd mov      dl, byte ptr [rip + 0x7e4d1d]
00000001404f4003 call     0x1404f6510
00000001404f4008 test     eax, eax
00000001404f400a jne      0x1404f4038
00000001404f400c inc      byte ptr [rip + 0x7e4d0e]
00000001404f4012 movzx    eax, byte ptr [rbx + 0x13]
00000001404f4016 inc      sil
00000001404f4019 add      r14, rax
00000001404f401c mov      eax, dword ptr [rdi + rbx + 0x34]
00000001404f4020 add      eax, dword ptr [rdi + rbx + 0x28]
00000001404f4024 add      rbp, rax
00000001404f4027 cmp      sil, r12b
00000001404f402a jae      0x1404f4036
00000001404f402c mov      r10, qword ptr [rsp + 0x30]
00000001404f4031 jmp      0x1404f3e71
00000001404f4036 xor      eax, eax
00000001404f4038 mov      rcx, qword ptr [rsp + 0x58]
00000001404f403d xor      rcx, rsp
00000001404f4040 call     0x1405f45b0
00000001404f4045 mov      rbx, qword ptr [rsp + 0xb8]
00000001404f404d add      rsp, 0x60
00000001404f4051 pop      r15
00000001404f4053 pop      r14
00000001404f4055 pop      r13
00000001404f4057 pop      r12
00000001404f4059 pop      rdi
00000001404f405a pop      rsi
00000001404f405b pop      rbp
00000001404f405c ret      