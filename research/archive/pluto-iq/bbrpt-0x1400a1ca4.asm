00000001400a1ca4 mov      qword ptr [rsp + 0x20], rbx
00000001400a1ca9 push     rbp
00000001400a1caa push     rsi
00000001400a1cab push     rdi
00000001400a1cac push     r12
00000001400a1cae push     r13
00000001400a1cb0 push     r14
00000001400a1cb2 push     r15
00000001400a1cb4 lea      rbp, [rsp - 0x450]
00000001400a1cbc sub      rsp, 0x550
00000001400a1cc3 mov      rax, qword ptr [rip + 0x885796]
00000001400a1cca xor      rax, rsp
00000001400a1ccd mov      qword ptr [rbp + 0x448], rax
00000001400a1cd4 mov      rax, qword ptr [rcx + 0xaf3b8]
00000001400a1cdb mov      r13, r8
00000001400a1cde mov      qword ptr [rsp + 0x78], rdx
00000001400a1ce3 mov      r14, rcx
00000001400a1ce6 mov      qword ptr [rbp - 0x70], rcx
00000001400a1cea mov      r8d, 0x3e8
00000001400a1cf0 mov      rdi, qword ptr [rax]
00000001400a1cf3 mov      rax, qword ptr [rcx + 0xab230]
00000001400a1cfa add      rdi, 0x18
00000001400a1cfe mov      qword ptr [rbp - 0x80], rax
00000001400a1d02 lea      rcx, [rbp - 0x30]
00000001400a1d06 lea      rax, [rdx + 0x10]
00000001400a1d0a mov      qword ptr [rbp - 0x60], rdi
00000001400a1d0e xor      edx, edx
00000001400a1d10 mov      qword ptr [rbp - 0x38], rax
00000001400a1d14 lea      rsi, [rdi + 0x8b048]
00000001400a1d1b mov      qword ptr [rbp - 0x40], rsi
00000001400a1d1f call     0x1405f4640
00000001400a1d24 xor      r15d, r15d
00000001400a1d27 xor      eax, eax
00000001400a1d29 mov      qword ptr [rbp - 0x48], r15
00000001400a1d2d mov      dword ptr [rbp + 0x440], eax
00000001400a1d33 mov      word ptr [rbp + 0x444], ax
00000001400a1d3a mov      rcx, qword ptr [rip + 0x87e2bf]
00000001400a1d41 lea      rax, [rip + 0x87e2b8]
00000001400a1d48 cmp      rcx, rax
00000001400a1d4b je       0x1400a1d68
00000001400a1d4d bt       dword ptr [rcx + 0x2c], 8
00000001400a1d52 jae      0x1400a1d68
00000001400a1d54 mov      rcx, qword ptr [rcx + 0x18]
00000001400a1d58 lea      edx, [r15 + 0x58]
00000001400a1d5c lea      r8, [rip + 0x5f0f4d]
00000001400a1d63 call     0x140001b88
00000001400a1d68 mov      r8, rsi
00000001400a1d6b mov      rdx, r13
00000001400a1d6e mov      rcx, rdi
00000001400a1d71 call     0x14008a708
00000001400a1d76 test     al, al
00000001400a1d78 jne      0x1400a1dd3
00000001400a1d7a mov      rcx, qword ptr [rip + 0x87e27f]
00000001400a1d81 lea      rax, [rip + 0x87e278]
00000001400a1d88 lea      r12, [rip + 0x559f11]
00000001400a1d8f cmp      rcx, rax
00000001400a1d92 je       0x1400a1db9
00000001400a1d94 cmp      byte ptr [rcx + 0x29], 3
00000001400a1d98 jb       0x1400a1db9
00000001400a1d9a bt       dword ptr [rcx + 0x2c], 8
00000001400a1d9f jae      0x1400a1db9
00000001400a1da1 mov      rcx, qword ptr [rcx + 0x18]
00000001400a1da5 lea      r8, [rip + 0x5f0f04]
00000001400a1dac mov      edx, 0x59
00000001400a1db1 mov      r9, r12
00000001400a1db4 call     0x140008874
00000001400a1db9 lea      rax, [rdi + 0xaa430]
00000001400a1dc0 mov      qword ptr [rbp + 0x3c0], r13
00000001400a1dc7 mov      rdi, qword ptr [rsp + 0x78]
00000001400a1dcc mov      bl, 1
00000001400a1dce jmp      0x1400a2208
00000001400a1dd3 mov      r8, r13
00000001400a1dd6 mov      rdx, rsi
00000001400a1dd9 mov      rcx, r14
00000001400a1ddc call     0x14009b040
00000001400a1de1 mov      r13, rax
00000001400a1de4 mov      qword ptr [rbp - 0x68], rax
00000001400a1de8 mov      rbx, qword ptr [rip + 0x87e211]
00000001400a1def lea      rax, [rip + 0x87e20a]
00000001400a1df6 lea      r12, [rip + 0x559ea3]
00000001400a1dfd cmp      rbx, rax
00000001400a1e00 je       0x1400a1e7d
00000001400a1e02 cmp      byte ptr [rbx + 0x29], 4
00000001400a1e06 jb       0x1400a1e7d
00000001400a1e08 test     dword ptr [rbx + 0x2c], 0x100
00000001400a1e0f je       0x1400a1e7d
00000001400a1e11 mov      rax, qword ptr [rsp + 0x78]
00000001400a1e16 mov      edx, 0x5a
00000001400a1e1b movzx    r11d, byte ptr [r13 + 0x150]
00000001400a1e23 mov      rcx, qword ptr [rax + 0x2c0]
00000001400a1e2a mov      rax, qword ptr [rax + 0x2c8]
00000001400a1e31 movzx    r9d, byte ptr [rcx + 0x19]
00000001400a1e36 movzx    r8d, byte ptr [rax + 0x2e]
00000001400a1e3b mov      rax, qword ptr [rcx]
00000001400a1e3e movzx    r10d, byte ptr [rcx + 8]
00000001400a1e43 movzx    ecx, byte ptr [rax + 0x15]
00000001400a1e47 mov      eax, dword ptr [r13 + 0x14c]
00000001400a1e4e mov      dword ptr [rsp + 0x48], eax
00000001400a1e52 mov      dword ptr [rsp + 0x40], r11d
00000001400a1e57 mov      dword ptr [rsp + 0x38], r8d
00000001400a1e5c lea      r8, [rip + 0x5f0e4d]
00000001400a1e63 mov      dword ptr [rsp + 0x30], r9d
00000001400a1e68 mov      r9, r12
00000001400a1e6b mov      dword ptr [rsp + 0x28], r10d
00000001400a1e70 mov      dword ptr [rsp + 0x20], ecx
00000001400a1e74 mov      rcx, qword ptr [rbx + 0x18]
00000001400a1e78 call     0x140032bdc
00000001400a1e7d mov      bl, 1
00000001400a1e7f mov      qword ptr [rbp + 0x3c0], r13
00000001400a1e86 mov      rdx, r13
00000001400a1e89 mov      byte ptr [rsp + 0x70], bl
00000001400a1e8d mov      rcx, rsi
00000001400a1e90 call     0x14008c668
00000001400a1e95 lea      rax, [rdi + 0xaa430]
00000001400a1e9c mov      qword ptr [rbp - 0x50], rax
00000001400a1ea0 cmp      byte ptr [rax], bl
00000001400a1ea2 jne      0x1400a1eee
00000001400a1ea4 mov      rcx, qword ptr [rip + 0x87e155]
00000001400a1eab lea      rsi, [rip + 0x87e14e]
00000001400a1eb2 cmp      rcx, rsi
00000001400a1eb5 je       0x1400a1ee4
00000001400a1eb7 cmp      byte ptr [rcx + 0x29], 4
00000001400a1ebb jb       0x1400a1ee4
00000001400a1ebd test     dword ptr [rcx + 0x2c], 0x100
00000001400a1ec4 je       0x1400a1ee4
00000001400a1ec6 mov      rcx, qword ptr [rcx + 0x18]
00000001400a1eca lea      r8, [rip + 0x5f0ddf]
00000001400a1ed1 mov      edx, 0x5b
00000001400a1ed6 mov      r9, r12
00000001400a1ed9 call     0x140008874
00000001400a1ede mov      rax, qword ptr [rbp - 0x50]
00000001400a1ee2 jmp      0x1400a1ee4
00000001400a1ee4 mov      rdi, qword ptr [rsp + 0x78]
00000001400a1ee9 jmp      0x1400a220f
00000001400a1eee mov      rcx, qword ptr [rbp - 0x80]
00000001400a1ef2 cmp      byte ptr [rcx + 0x250], bl
00000001400a1ef8 jbe      0x1400a20a3
00000001400a1efe cmp      bl, 1
00000001400a1f01 jne      0x1400a1f1e
00000001400a1f03 mov      rdx, rsi
00000001400a1f06 mov      rcx, rdi
00000001400a1f09 call     0x140153e70
00000001400a1f0e mov      qword ptr [rbp - 0x78], rax
00000001400a1f12 mov      rdi, rax
00000001400a1f15 test     rax, rax
00000001400a1f18 jne      0x1400a1f39
00000001400a1f1a mov      rdi, qword ptr [rbp - 0x60]
00000001400a1f1e mov      rdx, rsi
00000001400a1f21 mov      rcx, rdi
00000001400a1f24 call     0x14009ca34
00000001400a1f29 mov      qword ptr [rbp - 0x78], rax
00000001400a1f2d mov      rdi, rax
00000001400a1f30 test     rax, rax
00000001400a1f33 je       0x1400a2045
00000001400a1f39 movzx    eax, bl
00000001400a1f3c inc      bl
00000001400a1f3e mov      byte ptr [rsp + 0x70], bl
00000001400a1f42 mov      qword ptr [rbp + rax*8 + 0x3c0], rdi
00000001400a1f4a mov      rax, qword ptr [rip + 0x87e0af]
00000001400a1f51 lea      rcx, [rip + 0x87e0a8]
00000001400a1f58 cmp      rax, rcx
00000001400a1f5b je       0x1400a2024
00000001400a1f61 cmp      byte ptr [rax + 0x29], 4
00000001400a1f65 jb       0x1400a2024
00000001400a1f6b test     dword ptr [rax + 0x2c], 0x100
00000001400a1f72 je       0x1400a2024
00000001400a1f78 movzx    eax, byte ptr [rdi + 2]
00000001400a1f7c mov      cl, byte ptr [rdi + 0x154]
00000001400a1f82 movzx    r14d, byte ptr [rdi + 6]
00000001400a1f87 movzx    r15d, byte ptr [rdi + 5]
00000001400a1f8c movzx    r12d, byte ptr [rdi + 4]
00000001400a1f91 movzx    r13d, byte ptr [rdi + 3]
00000001400a1f96 mov      dword ptr [rbp - 0x58], eax
00000001400a1f99 movzx    eax, byte ptr [rdi + 1]
00000001400a1f9d mov      dword ptr [rbp - 0x54], eax
00000001400a1fa0 call     0x1400849a0
00000001400a1fa5 mov      cl, byte ptr [rdi + 0x14c]
00000001400a1fab mov      rsi, rax
00000001400a1fae call     0x14008496c
00000001400a1fb3 mov      cl, byte ptr [rsp + 0x70]
00000001400a1fb7 mov      rbx, rax
00000001400a1fba movzx    edi, byte ptr [rdi + 0x150]
00000001400a1fc1 call     0x14009b188
00000001400a1fc6 mov      rcx, qword ptr [rip + 0x87e033]
00000001400a1fcd lea      r8, [rip + 0x5f0cdc]
00000001400a1fd4 mov      dword ptr [rsp + 0x60], r14d
00000001400a1fd9 mov      r9, rax
00000001400a1fdc mov      eax, dword ptr [rbp - 0x58]
00000001400a1fdf mov      edx, 0x5d
00000001400a1fe4 mov      dword ptr [rsp + 0x58], r15d
00000001400a1fe9 mov      rcx, qword ptr [rcx + 0x18]
00000001400a1fed mov      dword ptr [rsp + 0x50], r12d
00000001400a1ff2 mov      dword ptr [rsp + 0x48], r13d
00000001400a1ff7 mov      dword ptr [rsp + 0x40], eax
00000001400a1ffb mov      eax, dword ptr [rbp - 0x54]
00000001400a1ffe mov      dword ptr [rsp + 0x38], eax
00000001400a2002 mov      qword ptr [rsp + 0x30], rsi
00000001400a2007 mov      qword ptr [rsp + 0x28], rbx
00000001400a200c mov      dword ptr [rsp + 0x20], edi
00000001400a2010 call     0x14009a064
00000001400a2015 mov      bl, byte ptr [rsp + 0x70]
00000001400a2019 xor      r15d, r15d
00000001400a201c mov      rdi, qword ptr [rbp - 0x78]
00000001400a2020 mov      rsi, qword ptr [rbp - 0x40]
00000001400a2024 mov      rdx, rdi
00000001400a2027 mov      rcx, rsi
00000001400a202a call     0x14008c668
00000001400a202f mov      rcx, qword ptr [rbp - 0x80]
00000001400a2033 mov      rdi, qword ptr [rbp - 0x60]
00000001400a2037 cmp      bl, byte ptr [rcx + 0x250]
00000001400a203d jb       0x1400a1efe
00000001400a2043 jmp      0x1400a2094
00000001400a2045 mov      rcx, qword ptr [rip + 0x87dfb4]
00000001400a204c lea      rax, [rip + 0x87dfad]
00000001400a2053 cmp      rcx, rax
00000001400a2056 je       0x1400a214f
00000001400a205c cmp      byte ptr [rcx + 0x29], 4
00000001400a2060 jb       0x1400a2090
00000001400a2062 test     dword ptr [rcx + 0x2c], 0x100
00000001400a2069 lea      r12, [rip + 0x559c30]
00000001400a2070 je       0x1400a208a
00000001400a2072 mov      rcx, qword ptr [rcx + 0x18]
00000001400a2076 lea      r8, [rip + 0x5f0c33]
00000001400a207d mov      edx, 0x5c
00000001400a2082 mov      r9, r12
00000001400a2085 call     0x140008874
00000001400a208a mov      rcx, qword ptr [rbp - 0x80]
00000001400a208e jmp      0x1400a209b
00000001400a2090 mov      rcx, qword ptr [rbp - 0x80]
00000001400a2094 lea      r12, [rip + 0x559c05]
00000001400a209b mov      r13, qword ptr [rbp - 0x68]
00000001400a209f mov      r14, qword ptr [rbp - 0x70]
00000001400a20a3 mov      rax, qword ptr [rip + 0x87df56]
00000001400a20aa lea      rdx, [rip + 0x87df4f]
00000001400a20b1 mov      qword ptr [rbp - 0x78], rax
00000001400a20b5 cmp      rax, rdx
00000001400a20b8 je       0x1400a215e
00000001400a20be cmp      byte ptr [rax + 0x29], 4
00000001400a20c2 jb       0x1400a215e
00000001400a20c8 test     dword ptr [rax + 0x2c], 0x100
00000001400a20cf je       0x1400a215e
00000001400a20d5 movzx    eax, byte ptr [rcx + 0x250]
00000001400a20dc mov      edx, 0x5e
00000001400a20e1 movzx    r8d, byte ptr [rsi + 0x1f2c9]
00000001400a20e9 movzx    r9d, byte ptr [rsi + 5]
00000001400a20ee movzx    r10d, byte ptr [rsi + 4]
00000001400a20f3 movzx    r11d, byte ptr [rsi + 3]
00000001400a20f8 movzx    edi, byte ptr [rsi + 1]
00000001400a20fc mov      dword ptr [rsp + 0x60], eax
00000001400a2100 movzx    ecx, bl
00000001400a2103 movzx    ebx, byte ptr [rsi + 2]
00000001400a2107 movzx    esi, byte ptr [rsi]
00000001400a210a mov      dword ptr [rsp + 0x58], ecx
00000001400a210e mov      rcx, qword ptr [rbp - 0x78]
00000001400a2112 mov      dword ptr [rsp + 0x50], r8d
00000001400a2117 lea      r8, [rip + 0x5f0b92]
00000001400a211e mov      dword ptr [rsp + 0x48], r9d
00000001400a2123 mov      r9, r12
00000001400a2126 mov      dword ptr [rsp + 0x40], r10d
00000001400a212b mov      rcx, qword ptr [rcx + 0x18]
00000001400a212f mov      dword ptr [rsp + 0x38], r11d
00000001400a2134 mov      dword ptr [rsp + 0x30], ebx
00000001400a2138 mov      dword ptr [rsp + 0x28], edi
00000001400a213c mov      dword ptr [rsp + 0x20], esi
00000001400a2140 call     0x140038830
00000001400a2145 mov      bl, byte ptr [rsp + 0x70]
00000001400a2149 mov      rsi, qword ptr [rbp - 0x40]
00000001400a214d jmp      0x1400a215e
00000001400a214f mov      r14, qword ptr [rbp - 0x70]
00000001400a2153 lea      r12, [rip + 0x559b46]
00000001400a215a mov      r13, qword ptr [rbp - 0x68]
00000001400a215e mov      rax, qword ptr [r14 + 0xaf3b8]
00000001400a2165 mov      rcx, qword ptr [rax]
00000001400a2168 cmp      byte ptr [rcx + 0xaaffa], r15b
00000001400a216f je       0x1400a21f6
00000001400a2175 cmp      rcx, r14
00000001400a2178 jne      0x1400a21f6
00000001400a217a mov      rdi, qword ptr [rbp - 0x60]
00000001400a217e cmp      byte ptr [rdi + 0xaa738], r15b
00000001400a2185 je       0x1400a21f6
00000001400a2187 mov      byte ptr [r14 + 0x546a60], r15b
00000001400a218e cmp      byte ptr [rdi + 0xaa428], r15b
00000001400a2195 je       0x1400a225c
00000001400a219b lea      rdx, [rdi + 0xaa44a]
00000001400a21a2 mov      r8d, 6
00000001400a21a8 lea      rcx, [rbp + 0x440]
00000001400a21af call     0x14003113c
00000001400a21b4 test     eax, eax
00000001400a21b6 jne      0x1400a225c
00000001400a21bc mov      rcx, qword ptr [rip + 0x87de3d]
00000001400a21c3 lea      rax, [rip + 0x87de36]
00000001400a21ca cmp      rcx, rax
00000001400a21cd je       0x1400a21f6
00000001400a21cf cmp      byte ptr [rcx + 0x29], 4
00000001400a21d3 jb       0x1400a21f6
00000001400a21d5 test     dword ptr [rcx + 0x2c], 0x100
00000001400a21dc je       0x1400a21f6
00000001400a21de mov      edx, 0x5f
00000001400a21e3 mov      rcx, qword ptr [rcx + 0x18]
00000001400a21e7 lea      r8, [rip + 0x5f0ac2]
00000001400a21ee mov      r9, r12
00000001400a21f1 call     0x140008874
00000001400a21f6 mov      rdi, qword ptr [rsp + 0x78]
00000001400a21fb mov      rax, qword ptr [rbp - 0x50]
00000001400a21ff cmp      bl, 1
00000001400a2202 jne      0x1400a22c7
00000001400a2208 lea      rsi, [rip + 0x87ddf1]
00000001400a220f cmp      byte ptr [rax], r15b
00000001400a2212 jne      0x1400a22c7
00000001400a2218 mov      rcx, qword ptr [rip + 0x87dde1]
00000001400a221f cmp      rcx, rsi
00000001400a2222 je       0x1400a28c1
00000001400a2228 cmp      byte ptr [rcx + 0x29], 3
00000001400a222c jb       0x1400a2897
00000001400a2232 test     dword ptr [rcx + 0x2c], 0x100
00000001400a2239 je       0x1400a2897
00000001400a223f mov      rcx, qword ptr [rcx + 0x18]
00000001400a2243 lea      r8, [rip + 0x5f0a66]
00000001400a224a mov      edx, 0x61
00000001400a224f mov      r9, r12
00000001400a2252 call     0x140008874
00000001400a2257 jmp      0x1400a2897
00000001400a225c mov      rdx, rsi
00000001400a225f mov      rcx, rdi
00000001400a2262 call     0x14009ca34
00000001400a2267 test     rax, rax
00000001400a226a jne      0x1400a22a4
00000001400a226c mov      rcx, qword ptr [rip + 0x87dd8d]
00000001400a2273 lea      rax, [rip + 0x87dd86]
00000001400a227a cmp      rcx, rax
00000001400a227d je       0x1400a21f6
00000001400a2283 cmp      byte ptr [rcx + 0x29], 4
00000001400a2287 jb       0x1400a21f6
00000001400a228d test     dword ptr [rcx + 0x2c], 0x100
00000001400a2294 je       0x1400a21f6
00000001400a229a mov      edx, 0x60
00000001400a229f jmp      0x1400a21e3
00000001400a22a4 lea      rdx, [r14 + 0x544ca0]
00000001400a22ab mov      r8, rax
00000001400a22ae mov      rcx, r14
00000001400a22b1 call     0x14009f3c8
00000001400a22b6 mov      rdi, qword ptr [rsp + 0x78]
00000001400a22bb mov      byte ptr [rdi + 0x2a3], 1
00000001400a22c2 jmp      0x1400a21fb
00000001400a22c7 mov      rsi, qword ptr [rbp - 0x80]
00000001400a22cb mov      rcx, r14
00000001400a22ce mov      qword ptr [rbp - 0x28], rsi
00000001400a22d2 mov      byte ptr [rbp - 0x30], 1
00000001400a22d6 call     0x14009afc4
00000001400a22db mov      dword ptr [rbp - 0x20], eax
00000001400a22de mov      byte ptr [rbp - 0x1c], 3
00000001400a22e2 test     bl, bl
00000001400a22e4 je       0x1400a2334
00000001400a22e6 lea      r8, [rbp + 0x3c0]
00000001400a22ed movzx    r9d, bl
00000001400a22f1 lea      rdx, [rbp + 0x18]
00000001400a22f5 mov      rcx, qword ptr [r8]
00000001400a22f8 movups   xmm0, xmmword ptr [rcx + 0x14c]
00000001400a22ff movups   xmmword ptr [rdx - 0x28], xmm0
00000001400a2303 movups   xmm1, xmmword ptr [rcx + 0x15c]
00000001400a230a movups   xmmword ptr [rdx - 0x18], xmm1
00000001400a230e mov      al, byte ptr [rcx + 0x1623]
00000001400a2314 mov      byte ptr [rdx - 8], al
00000001400a2317 mov      qword ptr [rdx], rcx
00000001400a231a cmp      rcx, r13
00000001400a231d jne      0x1400a2323
00000001400a231f mov      byte ptr [rdx - 7], 1
00000001400a2323 inc      byte ptr [rbp - 0x18]
00000001400a2326 add      r8, 8
00000001400a232a add      rdx, 0x40
00000001400a232e sub      r9, 1
00000001400a2332 jne      0x1400a22f5
00000001400a2334 mov      rax, qword ptr [r14 + 0xaf3b8]
00000001400a233b lea      rdx, [rbp - 0x30]
00000001400a233f mov      rcx, qword ptr [rax]
00000001400a2342 mov      rcx, qword ptr [rcx + 0x20708]
00000001400a2349 call     0x1401cdcbc
00000001400a234e test     eax, eax
00000001400a2350 je       0x1400a2399
00000001400a2352 mov      rcx, qword ptr [rip + 0x87dca7]
00000001400a2359 lea      rax, [rip + 0x87dca0]
00000001400a2360 cmp      rcx, rax
00000001400a2363 je       0x1400a238c
00000001400a2365 cmp      byte ptr [rcx + 0x29], 2
00000001400a2369 jb       0x1400a238c
00000001400a236b test     dword ptr [rcx + 0x2c], 0x100
00000001400a2372 je       0x1400a238c
00000001400a2374 mov      rcx, qword ptr [rcx + 0x18]
00000001400a2378 lea      r8, [rip + 0x5f0931]
00000001400a237f mov      edx, 0x62
00000001400a2384 mov      r9, r12
00000001400a2387 call     0x140008874
00000001400a238c mov      rcx, r14
00000001400a238f call     0x140029930
00000001400a2394 jmp      0x1400a2890
00000001400a2399 mov      cl, r15b
00000001400a239c test     bl, bl
00000001400a239e je       0x1400a23b4
00000001400a23a0 movzx    eax, cl
00000001400a23a3 shl      rax, 6
00000001400a23a7 cmp      qword ptr [rbp + rax + 0x20], r15
00000001400a23ac je       0x1400a23eb
00000001400a23ae inc      cl
00000001400a23b0 cmp      cl, bl
00000001400a23b2 jb       0x1400a23a0
00000001400a23b4 mov      byte ptr [rdi + 0x2a2], r15b
00000001400a23bb test     bl, bl
00000001400a23bd je       0x1400a2482
00000001400a23c3 mov      r15, qword ptr [rbp - 0x48]
00000001400a23c7 lea      rdi, [rbp + 0x20]
00000001400a23cb movzx    eax, bl
00000001400a23ce mov      qword ptr [rbp - 0x78], rax
00000001400a23d2 mov      rax, qword ptr [rdi]
00000001400a23d5 mov      rsi, qword ptr [rdi - 8]
00000001400a23d9 movzx    ecx, byte ptr [rax + 8]
00000001400a23dd cmp      cl, 2
00000001400a23e0 jne      0x1400a2432
00000001400a23e2 lea      rbx, [r14 + 0x544ca0]
00000001400a23e9 jmp      0x1400a2443
00000001400a23eb mov      rcx, qword ptr [rip + 0x87dc0e]
00000001400a23f2 lea      rax, [rip + 0x87dc07]
00000001400a23f9 cmp      rcx, rax
00000001400a23fc je       0x1400a2425
00000001400a23fe cmp      byte ptr [rcx + 0x29], 2
00000001400a2402 jb       0x1400a2425
00000001400a2404 test     dword ptr [rcx + 0x2c], 0x100
00000001400a240b je       0x1400a2425
00000001400a240d mov      rcx, qword ptr [rcx + 0x18]
00000001400a2411 lea      r8, [rip + 0x5f0898]
00000001400a2418 mov      edx, 0x63
00000001400a241d mov      r9, r12
00000001400a2420 call     0x140008874
00000001400a2425 mov      rcx, r14
00000001400a2428 call     0x140029930
00000001400a242d jmp      0x1400a280e
00000001400a2432 imul     rbx, rcx, 0x1dc0
00000001400a2439 add      rbx, 0x53f360
00000001400a2440 add      rbx, r14
00000001400a2443 mov      r8, rsi
00000001400a2446 mov      rdx, rbx
00000001400a2449 mov      rcx, r14
00000001400a244c call     0x14009ee80
00000001400a2451 cmp      rsi, r13
00000001400a2454 cmovne   rbx, r15
00000001400a2458 add      rdi, 0x40
00000001400a245c mov      r15, rbx
00000001400a245f mov      rbx, qword ptr [rsp + 0x78]
00000001400a2464 inc      byte ptr [rbx + 0x2a2]
00000001400a246a sub      qword ptr [rbp - 0x78], 1
00000001400a246f jne      0x1400a23d2
00000001400a2475 mov      rsi, qword ptr [rbp - 0x80]
00000001400a2479 mov      qword ptr [rbp - 0x48], r15
00000001400a247d xor      r15d, r15d
00000001400a2480 jmp      0x1400a2487
00000001400a2482 mov      rbx, qword ptr [rsp + 0x78]
00000001400a2487 mov      rdi, qword ptr [rbp - 0x48]
00000001400a248b cmp      rdi, rbx
00000001400a248e je       0x1400a24e0
00000001400a2490 mov      rcx, qword ptr [rip + 0x87db69]
00000001400a2497 lea      rax, [rip + 0x87db62]
00000001400a249e cmp      rcx, rax
00000001400a24a1 je       0x1400a24c7
00000001400a24a3 cmp      byte ptr [rcx + 0x29], 3
00000001400a24a7 jb       0x1400a24c7
00000001400a24a9 test     dword ptr [rcx + 0x2c], 0x100
00000001400a24b0 je       0x1400a24c7
00000001400a24b2 mov      rcx, qword ptr [rcx + 0x18]
00000001400a24b6 lea      r8, [rip + 0x5f07f3]
00000001400a24bd mov      edx, 0x64
00000001400a24c2 call     0x140001b88
00000001400a24c7 mov      rdx, qword ptr [rbp - 0x38]
00000001400a24cb lea      rcx, [rdi + 0x10]
00000001400a24cf call     0x1400b2ad4
00000001400a24d4 mov      rcx, qword ptr [rbp - 0x38]
00000001400a24d8 call     0x1400b2b24
00000001400a24dd mov      rbx, rdi
00000001400a24e0 mov      rax, qword ptr [r14 + 0xaf3b8]
00000001400a24e7 mov      rdx, rsi
00000001400a24ea mov      rcx, qword ptr [rax]
00000001400a24ed mov      rcx, qword ptr [rcx + 0x20708]
00000001400a24f4 call     0x1401b6de0
00000001400a24f9 lea      rdx, [r13 + 0x161d]
00000001400a2500 test     rdx, rdx
00000001400a2503 je       0x1400a2514
00000001400a2505 lea      rcx, [rax + 0x18]
00000001400a2509 mov      r8d, 6
00000001400a250f call     0x1400311e8
00000001400a2514 mov      r9, qword ptr [rbp - 0x40]
00000001400a2518 mov      r8, r13
00000001400a251b mov      rdx, rbx
00000001400a251e mov      dword ptr [r14 + 0xafbc4], r15d
00000001400a2525 mov      rcx, r14
00000001400a2528 call     0x140104c0c
00000001400a252d mov      eax, dword ptr [r13 + 0x1664]
00000001400a2534 mov      rcx, r13
00000001400a2537 mov      dword ptr [r14 + 0xfc520], eax
00000001400a253e mov      eax, dword ptr [r13 + 0x1cc]
00000001400a2545 mov      dword ptr [r14 + 0xc0ba8], eax
00000001400a254c call     0x14009a3fc
00000001400a2551 cmp      byte ptr [r13 + 0x1ca], r15b
00000001400a2558 je       0x1400a25b3
00000001400a255a mov      rax, qword ptr [rbp - 0x60]
00000001400a255e test     dword ptr [rax + 0xab210], 0xc0c0
00000001400a2568 je       0x1400a25b3
00000001400a256a mov      byte ptr [r14 + 0xfc490], 1
00000001400a2572 mov      al, 1
00000001400a2574 cmp      byte ptr [r13 + 0x1c9], r15b
00000001400a257b jne      0x1400a259f
00000001400a257d mov      ecx, dword ptr [r14 + 0xc0ba4]
00000001400a2584 lea      eax, [rcx - 8]
00000001400a2587 test     eax, 0xfffffff7
00000001400a258c je       0x1400a2595
00000001400a258e mov      al, 1
00000001400a2590 cmp      ecx, 2
00000001400a2593 jne      0x1400a259f
00000001400a2595 mov      byte ptr [r14 + 0xfc490], r15b
00000001400a259c mov      al, r15b
00000001400a259f test     al, al
00000001400a25a1 je       0x1400a25ba
00000001400a25a3 mov      al, byte ptr [r13 + 0x2115]
00000001400a25aa mov      byte ptr [r14 + 0xfc491], al
00000001400a25b1 jmp      0x1400a25ba
00000001400a25b3 mov      byte ptr [r14 + 0xfc490], r15b
00000001400a25ba test     dword ptr [r13 + 0x1664], 0x60000
00000001400a25c5 je       0x1400a26f7
00000001400a25cb cmp      byte ptr [r14 + 0x11467c], r15b
00000001400a25d2 je       0x1400a26f7
00000001400a25d8 lea      rdx, [r13 + 1]
00000001400a25dc mov      rcx, r14
00000001400a25df call     0x1400cff4c
00000001400a25e4 test     eax, eax
00000001400a25e6 js       0x1400a2647
00000001400a25e8 movzx    r8d, byte ptr [r13 + 0x28]
00000001400a25ed lea      rdx, [r13 + 7]
00000001400a25f1 mov      rcx, r14
00000001400a25f4 call     0x1400b33f8
00000001400a25f9 test     al, al
00000001400a25fb jne      0x1400a2647
00000001400a25fd mov      rcx, qword ptr [rip + 0x87d9fc]
00000001400a2604 lea      rax, [rip + 0x87d9f5]
00000001400a260b cmp      rcx, rax
00000001400a260e je       0x1400a2637
00000001400a2610 cmp      byte ptr [rcx + 0x29], 4
00000001400a2614 jb       0x1400a2637
00000001400a2616 test     dword ptr [rcx + 0x2c], 0x100
00000001400a261d je       0x1400a2637
00000001400a261f mov      rcx, qword ptr [rcx + 0x18]
00000001400a2623 lea      r8, [rip + 0x5f0686]
00000001400a262a mov      edx, 0x65
00000001400a262f mov      r9, r12
00000001400a2632 call     0x140008874
00000001400a2637 mov      dword ptr [r14 + 0x114680], 1
00000001400a2642 jmp      0x1400a2738
00000001400a2647 mov      rcx, qword ptr [rip + 0x87d9b2]
00000001400a264e lea      rdi, [rip + 0x87d9ab]
00000001400a2655 cmp      rcx, rdi
00000001400a2658 je       0x1400a2681
00000001400a265a cmp      byte ptr [rcx + 0x29], 4
00000001400a265e jb       0x1400a2681
00000001400a2660 test     dword ptr [rcx + 0x2c], 0x100
00000001400a2667 je       0x1400a2681
00000001400a2669 mov      rcx, qword ptr [rcx + 0x18]
00000001400a266d lea      r8, [rip + 0x5f063c]
00000001400a2674 mov      edx, 0x66
00000001400a2679 mov      r9, r12
00000001400a267c call     0x140008874
00000001400a2681 mov      dword ptr [r14 + 0x114680], 2
00000001400a268c mov      rcx, r14
00000001400a268f mov      rdx, qword ptr [rbx + 0x2c8]
00000001400a2696 add      rdx, 0x36
00000001400a269a call     0x1400a0290
00000001400a269f xor      r9d, r9d
00000001400a26a2 mov      dword ptr [rsp + 0x20], r15d
00000001400a26a7 mov      edx, 0xff000005
00000001400a26ac mov      cl, byte ptr [rax]
00000001400a26ae and      cl, 0xc7
00000001400a26b1 lea      r8d, [r9 + 4]
00000001400a26b5 or       cl, 4
00000001400a26b8 mov      byte ptr [rax], cl
00000001400a26ba mov      rcx, r14
00000001400a26bd call     0x1405c129c
00000001400a26c2 mov      rcx, qword ptr [rip + 0x87d937]
00000001400a26c9 cmp      rcx, rdi
00000001400a26cc je       0x1400a2738
00000001400a26ce cmp      byte ptr [rcx + 0x29], 4
00000001400a26d2 jb       0x1400a2738
00000001400a26d4 test     dword ptr [rcx + 0x2c], 0x100
00000001400a26db je       0x1400a2738
00000001400a26dd mov      rcx, qword ptr [rcx + 0x18]
00000001400a26e1 lea      r8, [rip + 0x5f05c8]
00000001400a26e8 mov      edx, 0x67
00000001400a26ed mov      r9, r12
00000001400a26f0 call     0x140008874
00000001400a26f5 jmp      0x1400a2738
00000001400a26f7 mov      rcx, qword ptr [rip + 0x87d902]
00000001400a26fe lea      rax, [rip + 0x87d8fb]
00000001400a2705 cmp      rcx, rax
00000001400a2708 je       0x1400a2731
00000001400a270a cmp      byte ptr [rcx + 0x29], 4
00000001400a270e jb       0x1400a2731
00000001400a2710 test     dword ptr [rcx + 0x2c], 0x100
00000001400a2717 je       0x1400a2731
00000001400a2719 mov      rcx, qword ptr [rcx + 0x18]
00000001400a271d lea      r8, [rip + 0x5f058c]
00000001400a2724 mov      edx, 0x68
00000001400a2729 mov      r9, r12
00000001400a272c call     0x140008874
00000001400a2731 mov      dword ptr [r14 + 0x114680], r15d
00000001400a2738 mov      rcx, r14
00000001400a273b call     0x1400d02fc
00000001400a2740 mov      rdx, r13
00000001400a2743 mov      rcx, r14
00000001400a2746 call     0x14012fee0
00000001400a274b mov      rcx, r14
00000001400a274e call     0x14010423c
00000001400a2753 mov      rcx, r14
00000001400a2756 call     0x14016d5c8
00000001400a275b movzx    edx, byte ptr [r14 + 0x113916]
00000001400a2763 mov      rax, qword ptr [rbx + 0x2c8]
00000001400a276a mov      ecx, dword ptr [rax + 0x48]
00000001400a276d test     ecx, ecx
00000001400a276f lea      eax, [rdx + 5]
00000001400a2772 movzx    r8d, al
00000001400a2776 lea      rax, [rip + 0x87d883]
00000001400a277d cmovne   r8d, edx
00000001400a2781 mov      byte ptr [r14 + 0x113915], r8b
00000001400a2788 mov      rcx, qword ptr [rip + 0x87d871]
00000001400a278f cmp      rcx, rax
00000001400a2792 je       0x1400a27c3
00000001400a2794 cmp      byte ptr [rcx + 0x29], 4
00000001400a2798 jb       0x1400a27c3
00000001400a279a test     dword ptr [rcx + 0x2c], 0x100
00000001400a27a1 je       0x1400a27c3
00000001400a27a3 mov      rcx, qword ptr [rcx + 0x18]
00000001400a27a7 mov      edx, 0x69
00000001400a27ac movsx    eax, r8b
00000001400a27b0 mov      r9, r12
00000001400a27b3 lea      r8, [rip + 0x5f04f6]
00000001400a27ba mov      dword ptr [rsp + 0x20], eax
00000001400a27be call     0x1400088d8
00000001400a27c3 xor      r8d, r8d
00000001400a27c6 xor      edx, edx
00000001400a27c8 mov      rcx, r14
00000001400a27cb call     0x140142cac
00000001400a27d0 test     al, al
00000001400a27d2 jne      0x1400a2826
00000001400a27d4 mov      rcx, qword ptr [rip + 0x87d825]
00000001400a27db lea      rax, [rip + 0x87d81e]
00000001400a27e2 cmp      rcx, rax
00000001400a27e5 je       0x1400a280e
00000001400a27e7 cmp      byte ptr [rcx + 0x29], 3
00000001400a27eb jb       0x1400a280e
00000001400a27ed test     dword ptr [rcx + 0x2c], 0x100
00000001400a27f4 je       0x1400a280e
00000001400a27f6 mov      rcx, qword ptr [rcx + 0x18]
00000001400a27fa lea      r8, [rip + 0x5f04af]
00000001400a2801 mov      edx, 0x6a
00000001400a2806 mov      r9, r12
00000001400a2809 call     0x140008874
00000001400a280e mov      rax, qword ptr [r14 + 0xaf3b8]
00000001400a2815 mov      rcx, qword ptr [rax]
00000001400a2818 mov      rcx, qword ptr [rcx + 0x20708]
00000001400a281f call     0x1401ccf90
00000001400a2824 jmp      0x1400a2890
00000001400a2826 mov      rcx, qword ptr [rip + 0x87d7d3]
00000001400a282d lea      rax, [rip + 0x87d7cc]
00000001400a2834 cmp      rcx, rax
00000001400a2837 je       0x1400a2869
00000001400a2839 cmp      byte ptr [rcx + 0x29], 4
00000001400a283d jb       0x1400a2869
00000001400a283f test     dword ptr [rcx + 0x2c], 0x100
00000001400a2846 je       0x1400a2869
00000001400a2848 mov      rax, qword ptr [rbx + 0x2c8]
00000001400a284f lea      r8, [rip + 0x5f045a]
00000001400a2856 mov      rcx, qword ptr [rcx + 0x18]
00000001400a285a mov      edx, 0x6b
00000001400a285f movzx    r9d, byte ptr [rax + 0x4c]
00000001400a2864 call     0x140001bb0
00000001400a2869 cmp      dword ptr [r14 + 0xbbd28], r15d
00000001400a2870 jne      0x1400a288d
00000001400a2872 cmp      dword ptr [r14 + 0xb0500], 0x13
00000001400a287a jne      0x1400a288d
00000001400a287c cmp      byte ptr [r14 + 0xb04f8], r15b
00000001400a2883 je       0x1400a288d
00000001400a2885 mov      rcx, r14
00000001400a2888 call     0x1400297d4
00000001400a288d mov      r15b, 1
00000001400a2890 lea      rsi, [rip + 0x87d769]
00000001400a2897 mov      rcx, qword ptr [rip + 0x87d762]
00000001400a289e cmp      rcx, rsi
00000001400a28a1 je       0x1400a28c1
00000001400a28a3 test     dword ptr [rcx + 0x2c], 0x100
00000001400a28aa je       0x1400a28c1
00000001400a28ac mov      rcx, qword ptr [rcx + 0x18]
00000001400a28b0 lea      r8, [rip + 0x5f03f9]
00000001400a28b7 mov      edx, 0x6c
00000001400a28bc call     0x140001b88
00000001400a28c1 mov      al, r15b
00000001400a28c4 mov      rcx, qword ptr [rbp + 0x448]
00000001400a28cb xor      rcx, rsp
00000001400a28ce call     0x1405f45b0
00000001400a28d3 mov      rbx, qword ptr [rsp + 0x5a8]
00000001400a28db add      rsp, 0x550
00000001400a28e2 pop      r15
00000001400a28e4 pop      r14
00000001400a28e6 pop      r13
00000001400a28e8 pop      r12
00000001400a28ea pop      rdi
00000001400a28eb pop      rsi
00000001400a28ec pop      rbp
00000001400a28ed ret      