00000001400c09f4 mov      qword ptr [rsp + 8], rcx
00000001400c09f9 push     rbp
00000001400c09fa push     rbx
00000001400c09fb push     rsi
00000001400c09fc push     rdi
00000001400c09fd push     r12
00000001400c09ff push     r13
00000001400c0a01 push     r14
00000001400c0a03 push     r15
00000001400c0a05 mov      rbp, rsp
00000001400c0a08 sub      rsp, 0x48
00000001400c0a0c mov      rsi, rcx
00000001400c0a0f xor      r14d, r14d
00000001400c0a12 mov      rcx, qword ptr [rcx + 0x160]
00000001400c0a19 mov      r12d, 0x17e8
00000001400c0a1f mov      qword ptr [rbp - 0x18], r14
00000001400c0a23 mov      qword ptr [rbp - 0x10], rcx
00000001400c0a27 movzx    eax, word ptr [rsi + 0x220]
00000001400c0a2e lea      rdi, [rsi + 0x228]
00000001400c0a35 mov      word ptr [rbp + 0x50], ax
00000001400c0a39 mov      rax, qword ptr [rcx + 0xaf280]
00000001400c0a40 mov      dword ptr [rbp + 0x58], r12d
00000001400c0a44 movzx    edx, byte ptr [rax + 0x110d]
00000001400c0a4b add      edx, 0x2a
00000001400c0a4e cmp      edx, 0xff
00000001400c0a54 jae      0x1400c0a62
00000001400c0a56 lea      r12d, [rdx + rdx*2]
00000001400c0a5a shl      r12d, 3
00000001400c0a5e mov      dword ptr [rbp + 0x58], r12d
00000001400c0a62 mov      eax, 0xaaaaaaab
00000001400c0a67 mul      r12d
00000001400c0a6a shr      edx, 4
00000001400c0a6d mov      dword ptr [rbp + 0x60], edx
00000001400c0a70 mov      rcx, qword ptr [rip + 0x85f589]
00000001400c0a77 lea      rax, [rip + 0x85f582]
00000001400c0a7e cmp      rcx, rax
00000001400c0a81 je       0x1400c0a9f
00000001400c0a83 mov      eax, dword ptr [rcx + 0x2c]
00000001400c0a86 test     al, 2
00000001400c0a88 je       0x1400c0a9f
00000001400c0a8a mov      rcx, qword ptr [rcx + 0x18]
00000001400c0a8e lea      r8, [rip + 0x5d227b]
00000001400c0a95 mov      edx, 0x88
00000001400c0a9a call     0x140001b88
00000001400c0a9f lea      rdx, [rip + 0x53ce2a]
00000001400c0aa6 lea      rcx, [rsi + 0xaafe8]
00000001400c0aad call     0x140031550
00000001400c0ab2 lea      rdx, [rip + 0x53ce17]
00000001400c0ab9 mov      rcx, rdi
00000001400c0abc call     0x140031550
00000001400c0ac1 lea      rax, [rdi + 0x70]
00000001400c0ac5 lea      rcx, [rdi + 0x80]
00000001400c0acc mov      qword ptr [rdi + 0x78], rax
00000001400c0ad0 lea      rdx, [rip + 0x53ce09]
00000001400c0ad7 mov      qword ptr [rax], rax
00000001400c0ada call     0x1400ab6ec
00000001400c0adf lea      rcx, [rdi + 0xc0]
00000001400c0ae6 lea      rdx, [rip + 0x53ce03]
00000001400c0aed call     0x1400ab6ec
00000001400c0af2 mov      word ptr [rdi + 0x58], r14w
00000001400c0af7 lea      rbx, [rdi + 0x140]
00000001400c0afe lea      r15, [rdi + 0x5a]
00000001400c0b02 mov      r14, rbx
00000001400c0b05 lea      r13, [rdi + 8]
00000001400c0b09 xor      esi, esi
00000001400c0b0b mov      edi, 0xa
00000001400c0b10 lea      r12d, [rdi - 9]
00000001400c0b14 lea      rdx, [rip + 0x53cdb5]
00000001400c0b1b mov      rcx, r13
00000001400c0b1e call     0x140031550
00000001400c0b23 mov      qword ptr [rbx + 8], r14
00000001400c0b27 add      r13, 8
00000001400c0b2b mov      qword ptr [rbx], r14
00000001400c0b2e add      r14, 0x10
00000001400c0b32 mov      word ptr [r15], si
00000001400c0b36 lea      r15, [r15 + 2]
00000001400c0b3a lea      rbx, [rbx + 0x10]
00000001400c0b3e sub      rdi, r12
00000001400c0b41 jne      0x1400c0b14
00000001400c0b43 mov      rsi, qword ptr [rbp + 0x48]
00000001400c0b47 xor      ebx, ebx
00000001400c0b49 mov      r12d, dword ptr [rbp + 0x58]
00000001400c0b4d lea      rdi, [rsi + 0x228]
00000001400c0b54 mov      byte ptr [rdi + 0x202c8], bl
00000001400c0b5a lea      rax, [rdi + 0x8288]
00000001400c0b61 lea      ecx, [rbx + 4]
00000001400c0b64 mov      dword ptr [rax], ebx
00000001400c0b66 mov      byte ptr [rax + 8], bl
00000001400c0b69 mov      dword ptr [rax + 4], ebx
00000001400c0b6c lea      rax, [rax + 0x8010]
00000001400c0b73 sub      rcx, 1
00000001400c0b77 jne      0x1400c0b64
00000001400c0b79 lea      edx, [rcx + 0x20]
00000001400c0b7c lea      r13, [rsi + 0x204f8]
00000001400c0b83 mov      rcx, r13
00000001400c0b86 call     0x140031290
00000001400c0b8b movzx    r14d, word ptr [rbp + 0x50]
00000001400c0b90 mov      rdx, r13
00000001400c0b93 mov      rcx, qword ptr [rbp - 0x10]
00000001400c0b97 imul     r8d, r14d, 0x2b0
00000001400c0b9e call     0x14002f9f0
00000001400c0ba3 test     eax, eax
00000001400c0ba5 jne      0x1400c0bfb
00000001400c0ba7 mov      edx, dword ptr [rsi + 0x20508]
00000001400c0bad mov      rcx, qword ptr [r13]
00000001400c0bb1 call     0x140031290
00000001400c0bb6 mov      rcx, qword ptr [rip + 0x85f443]
00000001400c0bbd lea      rax, [rip + 0x85f43c]
00000001400c0bc4 cmp      rcx, rax
00000001400c0bc7 je       0x1400c0bff
00000001400c0bc9 cmp      byte ptr [rcx + 0x29], 4
00000001400c0bcd jb       0x1400c0bff
00000001400c0bcf mov      eax, dword ptr [rcx + 0x2c]
00000001400c0bd2 test     al, 2
00000001400c0bd4 je       0x1400c0bff
00000001400c0bd6 mov      eax, dword ptr [rsi + 0x20508]
00000001400c0bdc lea      r8, [rip + 0x5d212d]
00000001400c0be3 mov      r9, qword ptr [r13]
00000001400c0be7 mov      edx, 0x89
00000001400c0bec mov      rcx, qword ptr [rcx + 0x18]
00000001400c0bf0 mov      dword ptr [rsp + 0x20], eax
00000001400c0bf4 call     0x14002af78
00000001400c0bf9 jmp      0x1400c0bff
00000001400c0bfb mov      qword ptr [r13], rbx
00000001400c0bff mov      dword ptr [rbp + 0x48], ebx
00000001400c0c02 test     r14d, r14d
00000001400c0c05 je       0x1400c0e6e
00000001400c0c0b lea      rcx, [rip + 0x53ccbe]
00000001400c0c12 mov      r15d, ebx
00000001400c0c15 call     0x14007dbe0
00000001400c0c1a mov      ecx, eax
00000001400c0c1c lea      rdx, [rbp - 0x18]
00000001400c0c20 mov      r8d, 0x6d0
00000001400c0c26 call     0x1400310f0
00000001400c0c2b mov      ebx, eax
00000001400c0c2d test     eax, eax
00000001400c0c2f jne      0x1400c104e
00000001400c0c35 mov      rcx, qword ptr [rbp - 0x18]
00000001400c0c39 mov      edx, 0x6d0
00000001400c0c3e call     0x140031290
00000001400c0c43 mov      rcx, qword ptr [rbp - 0x18]
00000001400c0c47 lea      rdx, [rdi + 0x70]
00000001400c0c4b mov      qword ptr [rcx + 8], rcx
00000001400c0c4f mov      rax, qword ptr [rbp - 0x18]
00000001400c0c53 mov      qword ptr [rax], rcx
00000001400c0c56 mov      rcx, qword ptr [rdx + 8]
00000001400c0c5a mov      rax, qword ptr [rbp - 0x18]
00000001400c0c5e mov      qword ptr [rax], rdx
00000001400c0c61 mov      rax, qword ptr [rbp - 0x18]
00000001400c0c65 mov      qword ptr [rax + 8], rcx
00000001400c0c69 mov      rax, qword ptr [rbp - 0x18]
00000001400c0c6d mov      qword ptr [rcx], rax
00000001400c0c70 lea      ecx, [rbx + 1]
00000001400c0c73 mov      rax, qword ptr [rbp - 0x18]
00000001400c0c77 mov      qword ptr [rdx + 8], rax
00000001400c0c7b add      word ptr [rdi + 0x58], cx
00000001400c0c7f lea      rcx, [rip + 0x53cc4a]
00000001400c0c86 or       word ptr [rax + 0x1b4], 0xffff
00000001400c0c8f mov      rbx, qword ptr [rbp - 0x18]
00000001400c0c93 call     0x14007dbe0
00000001400c0c98 mov      ecx, eax
00000001400c0c9a lea      rdx, [rbx + 0x248]
00000001400c0ca1 mov      r8d, r12d
00000001400c0ca4 call     0x1400310f0
00000001400c0ca9 mov      ebx, eax
00000001400c0cab test     eax, eax
00000001400c0cad jne      0x1400c1027
00000001400c0cb3 mov      rcx, qword ptr [rbp - 0x18]
00000001400c0cb7 mov      edx, r12d
00000001400c0cba mov      rcx, qword ptr [rcx + 0x248]
00000001400c0cc1 call     0x140031290
00000001400c0cc6 mov      rax, qword ptr [rbp - 0x18]
00000001400c0cca mov      ecx, dword ptr [rbp + 0x60]
00000001400c0ccd mov      byte ptr [rax + 0x250], cl
00000001400c0cd3 xor      eax, eax
00000001400c0cd5 cmp      qword ptr [r13], rax
00000001400c0cd9 je       0x1400c0d02
00000001400c0cdb mov      rcx, qword ptr [rbp - 0x18]
00000001400c0cdf mov      r9d, 0x2a9
00000001400c0ce5 mov      r8d, dword ptr [rbp + 0x48]
00000001400c0ce9 add      rcx, 0x3e8
00000001400c0cf0 mov      rdx, r13
00000001400c0cf3 mov      dword ptr [rsp + 0x20], 8
00000001400c0cfb call     0x1400ab8ec
00000001400c0d00 jmp      0x1400c0d1c
00000001400c0d02 mov      rdx, qword ptr [rbp - 0x18]
00000001400c0d06 mov      r8d, 0x2a9
00000001400c0d0c mov      rcx, qword ptr [rbp - 0x10]
00000001400c0d10 add      rdx, 0x3e8
00000001400c0d17 call     0x14002f9f0
00000001400c0d1c mov      ebx, eax
00000001400c0d1e test     eax, eax
00000001400c0d20 jne      0x1400c1000
00000001400c0d26 mov      rcx, qword ptr [rbp - 0x18]
00000001400c0d2a mov      edx, 0x2a9
00000001400c0d2f mov      rcx, qword ptr [rcx + 0x3e8]
00000001400c0d36 call     0x140031290
00000001400c0d3b xor      ebx, ebx
00000001400c0d3d mov      r8d, ebx
00000001400c0d40 lea      r11d, [rbx + 8]
00000001400c0d44 mov      r9d, r11d
00000001400c0d47 lea      r10d, [rbx + 1]
00000001400c0d4b mov      rax, qword ptr [rbp - 0x18]
00000001400c0d4f mov      ecx, r15d
00000001400c0d52 add      rcx, qword ptr [rax + 0x3e8]
00000001400c0d59 mov      qword ptr [r8 + rax + 0x38], rcx
00000001400c0d5e mov      rcx, qword ptr [rbp - 0x18]
00000001400c0d62 mov      eax, dword ptr [rcx + 0x3f0]
00000001400c0d68 mov      dword ptr [r8 + rcx + 0x40], eax
00000001400c0d6d mov      rcx, qword ptr [rbp - 0x18]
00000001400c0d71 mov      edx, dword ptr [rcx + 0x3f4]
00000001400c0d77 add      edx, r15d
00000001400c0d7a mov      dword ptr [r8 + rcx + 0x44], edx
00000001400c0d7f mov      rcx, qword ptr [rbp - 0x18]
00000001400c0d83 cmp      edx, dword ptr [rcx + 0x3f4]
00000001400c0d89 jae      0x1400c0d94
00000001400c0d8b add      dword ptr [r8 + rcx + 0x40], r10d
00000001400c0d90 mov      rcx, qword ptr [rbp - 0x18]
00000001400c0d94 mov      dword ptr [r8 + rcx + 0x48], 0x52
00000001400c0d9d add      r15d, 0x52
00000001400c0da1 add      r8, 0x20
00000001400c0da5 sub      r9, r10
00000001400c0da8 jne      0x1400c0d4b
00000001400c0daa mov      rax, qword ptr [rbp - 0x18]
00000001400c0dae mov      ecx, r15d
00000001400c0db1 add      rcx, qword ptr [rax + 0x3e8]
00000001400c0db8 mov      qword ptr [rax + 0x3c8], rcx
00000001400c0dbf mov      rcx, qword ptr [rbp - 0x18]
00000001400c0dc3 mov      eax, dword ptr [rcx + 0x3f0]
00000001400c0dc9 mov      dword ptr [rcx + 0x3d0], eax
00000001400c0dcf mov      rcx, qword ptr [rbp - 0x18]
00000001400c0dd3 mov      edx, dword ptr [rcx + 0x3f4]
00000001400c0dd9 add      edx, r15d
00000001400c0ddc mov      dword ptr [rcx + 0x3d4], edx
00000001400c0de2 mov      rcx, qword ptr [rbp - 0x18]
00000001400c0de6 cmp      edx, dword ptr [rcx + 0x3f4]
00000001400c0dec jae      0x1400c0df9
00000001400c0dee add      dword ptr [rcx + 0x3d0], r10d
00000001400c0df5 mov      rcx, qword ptr [rbp - 0x18]
00000001400c0df9 mov      dword ptr [rcx + 0x3d8], r11d
00000001400c0e00 add      r15d, r11d
00000001400c0e03 mov      rax, qword ptr [rbp - 0x18]
00000001400c0e07 mov      ecx, r15d
00000001400c0e0a add      rcx, qword ptr [rax + 0x3e8]
00000001400c0e11 mov      qword ptr [rax + 0x138], rcx
00000001400c0e18 mov      rcx, qword ptr [rbp - 0x18]
00000001400c0e1c mov      eax, dword ptr [rcx + 0x3f0]
00000001400c0e22 mov      dword ptr [rcx + 0x140], eax
00000001400c0e28 mov      rcx, qword ptr [rbp - 0x18]
00000001400c0e2c mov      edx, dword ptr [rcx + 0x3f4]
00000001400c0e32 add      edx, r15d
00000001400c0e35 mov      dword ptr [rcx + 0x144], edx
00000001400c0e3b mov      rcx, qword ptr [rbp - 0x18]
00000001400c0e3f cmp      edx, dword ptr [rcx + 0x3f4]
00000001400c0e45 jae      0x1400c0e52
00000001400c0e47 add      dword ptr [rcx + 0x140], r10d
00000001400c0e4e mov      rcx, qword ptr [rbp - 0x18]
00000001400c0e52 mov      eax, dword ptr [rbp + 0x48]
00000001400c0e55 add      eax, r10d
00000001400c0e58 mov      dword ptr [rcx + 0x148], 0x11
00000001400c0e62 mov      dword ptr [rbp + 0x48], eax
00000001400c0e65 cmp      eax, r14d
00000001400c0e68 jb       0x1400c0c0b
00000001400c0e6e mov      rcx, qword ptr [rip + 0x85f18b]
00000001400c0e75 lea      rbx, [rip + 0x85f184]
00000001400c0e7c cmp      rcx, rbx
00000001400c0e7f je       0x1400c0fed
00000001400c0e85 cmp      byte ptr [rcx + 0x29], 4
00000001400c0e89 jb       0x1400c0eb9
00000001400c0e8b mov      eax, dword ptr [rcx + 0x2c]
00000001400c0e8e test     al, 2
00000001400c0e90 je       0x1400c0eb9
00000001400c0e92 movzx    r9d, word ptr [rdi + 0x58]
00000001400c0e97 lea      r8, [rip + 0x5d1e72]
00000001400c0e9e mov      rcx, qword ptr [rcx + 0x18]
00000001400c0ea2 mov      edx, 0x8d
00000001400c0ea7 mov      dword ptr [rsp + 0x28], 0x6d0
00000001400c0eaf mov      dword ptr [rsp + 0x20], r14d
00000001400c0eb4 call     0x140001c34
00000001400c0eb9 mov      rcx, qword ptr [rip + 0x85f140]
00000001400c0ec0 cmp      rcx, rbx
00000001400c0ec3 je       0x1400c0fed
00000001400c0ec9 cmp      byte ptr [rcx + 0x29], 4
00000001400c0ecd jb       0x1400c0efd
00000001400c0ecf mov      eax, dword ptr [rcx + 0x2c]
00000001400c0ed2 test     al, 2
00000001400c0ed4 je       0x1400c0efd
00000001400c0ed6 movzx    r9d, word ptr [rdi + 0x58]
00000001400c0edb lea      r8, [rip + 0x5d1e2e]
00000001400c0ee2 mov      rcx, qword ptr [rcx + 0x18]
00000001400c0ee6 mov      edx, 0x8e
00000001400c0eeb mov      dword ptr [rsp + 0x28], 0x18
00000001400c0ef3 mov      dword ptr [rsp + 0x20], r14d
00000001400c0ef8 call     0x140001c34
00000001400c0efd mov      rcx, qword ptr [rip + 0x85f0fc]
00000001400c0f04 cmp      rcx, rbx
00000001400c0f07 je       0x1400c0fed
00000001400c0f0d cmp      byte ptr [rcx + 0x29], 4
00000001400c0f11 jb       0x1400c0f41
00000001400c0f13 mov      eax, dword ptr [rcx + 0x2c]
00000001400c0f16 test     al, 2
00000001400c0f18 je       0x1400c0f41
00000001400c0f1a movzx    r9d, word ptr [rdi + 0x58]
00000001400c0f1f lea      r8, [rip + 0x5d1dea]
00000001400c0f26 mov      rcx, qword ptr [rcx + 0x18]
00000001400c0f2a mov      edx, 0x8f
00000001400c0f2f mov      dword ptr [rsp + 0x28], 0x290
00000001400c0f37 mov      dword ptr [rsp + 0x20], r14d
00000001400c0f3c call     0x140001c34
00000001400c0f41 mov      rcx, qword ptr [rip + 0x85f0b8]
00000001400c0f48 cmp      rcx, rbx
00000001400c0f4b je       0x1400c0fed
00000001400c0f51 cmp      byte ptr [rcx + 0x29], 4
00000001400c0f55 jb       0x1400c0f85
00000001400c0f57 mov      eax, dword ptr [rcx + 0x2c]
00000001400c0f5a test     al, 2
00000001400c0f5c je       0x1400c0f85
00000001400c0f5e movzx    r9d, word ptr [rdi + 0x58]
00000001400c0f63 lea      r8, [rip + 0x5d1da6]
00000001400c0f6a mov      rcx, qword ptr [rcx + 0x18]
00000001400c0f6e mov      edx, 0x90
00000001400c0f73 mov      dword ptr [rsp + 0x28], 8
00000001400c0f7b mov      dword ptr [rsp + 0x20], r14d
00000001400c0f80 call     0x140001c34
00000001400c0f85 mov      rcx, qword ptr [rip + 0x85f074]
00000001400c0f8c cmp      rcx, rbx
00000001400c0f8f je       0x1400c0fed
00000001400c0f91 cmp      byte ptr [rcx + 0x29], 4
00000001400c0f95 jb       0x1400c0fc5
00000001400c0f97 mov      eax, dword ptr [rcx + 0x2c]
00000001400c0f9a test     al, 2
00000001400c0f9c je       0x1400c0fc5
00000001400c0f9e movzx    r9d, word ptr [rdi + 0x58]
00000001400c0fa3 lea      r8, [rip + 0x5d1d66]
00000001400c0faa mov      rcx, qword ptr [rcx + 0x18]
00000001400c0fae mov      edx, 0x91
00000001400c0fb3 mov      dword ptr [rsp + 0x28], 0x11
00000001400c0fbb mov      dword ptr [rsp + 0x20], r14d
00000001400c0fc0 call     0x140001c34
00000001400c0fc5 mov      rcx, qword ptr [rip + 0x85f034]
00000001400c0fcc cmp      rcx, rbx
00000001400c0fcf je       0x1400c0fed
00000001400c0fd1 mov      eax, dword ptr [rcx + 0x2c]
00000001400c0fd4 test     al, 2
00000001400c0fd6 je       0x1400c0fed
00000001400c0fd8 mov      rcx, qword ptr [rcx + 0x18]
00000001400c0fdc lea      r8, [rip + 0x5d1d2d]
00000001400c0fe3 mov      edx, 0x92
00000001400c0fe8 call     0x140001b88
00000001400c0fed xor      eax, eax
00000001400c0fef add      rsp, 0x48
00000001400c0ff3 pop      r15
00000001400c0ff5 pop      r14
00000001400c0ff7 pop      r13
00000001400c0ff9 pop      r12
00000001400c0ffb pop      rdi
00000001400c0ffc pop      rsi
00000001400c0ffd pop      rbx
00000001400c0ffe pop      rbp
00000001400c0fff ret      
00000001400c1000 mov      rcx, qword ptr [rip + 0x85eff9]
00000001400c1007 lea      rax, [rip + 0x85eff2]
00000001400c100e cmp      rcx, rax
00000001400c1011 je       0x1400c1083
00000001400c1013 cmp      byte ptr [rcx + 0x29], 2
00000001400c1017 jb       0x1400c1083
00000001400c1019 mov      eax, dword ptr [rcx + 0x2c]
00000001400c101c test     al, 2
00000001400c101e je       0x1400c1083
00000001400c1020 mov      edx, 0x8c
00000001400c1025 jmp      0x1400c1073
00000001400c1027 mov      rcx, qword ptr [rip + 0x85efd2]
00000001400c102e lea      rax, [rip + 0x85efcb]
00000001400c1035 cmp      rcx, rax
00000001400c1038 je       0x1400c1083
00000001400c103a cmp      byte ptr [rcx + 0x29], 2
00000001400c103e jb       0x1400c1083
00000001400c1040 mov      eax, dword ptr [rcx + 0x2c]
00000001400c1043 test     al, 2
00000001400c1045 je       0x1400c1083
00000001400c1047 mov      edx, 0x8b
00000001400c104c jmp      0x1400c1073
00000001400c104e mov      rcx, qword ptr [rip + 0x85efab]
00000001400c1055 lea      rax, [rip + 0x85efa4]
00000001400c105c cmp      rcx, rax
00000001400c105f je       0x1400c1083
00000001400c1061 cmp      byte ptr [rcx + 0x29], 2
00000001400c1065 jb       0x1400c1083
00000001400c1067 mov      eax, dword ptr [rcx + 0x2c]
00000001400c106a test     al, 2
00000001400c106c je       0x1400c1083
00000001400c106e mov      edx, 0x8a
00000001400c1073 mov      rcx, qword ptr [rcx + 0x18]
00000001400c1077 lea      r8, [rip + 0x5d1c92]
00000001400c107e call     0x140001b88
00000001400c1083 mov      rcx, rsi
00000001400c1086 call     0x1400c0468
00000001400c108b mov      rcx, qword ptr [rip + 0x85ef6e]
00000001400c1092 lea      rax, [rip + 0x85ef67]
00000001400c1099 cmp      rcx, rax
00000001400c109c je       0x1400c10ba
00000001400c109e mov      eax, dword ptr [rcx + 0x2c]
00000001400c10a1 test     al, 2
00000001400c10a3 je       0x1400c10ba
00000001400c10a5 mov      rcx, qword ptr [rcx + 0x18]
00000001400c10a9 lea      r8, [rip + 0x5d1c60]
00000001400c10b0 mov      edx, 0x93
00000001400c10b5 call     0x140001b88
00000001400c10ba mov      eax, ebx
00000001400c10bc jmp      0x1400c0fef