00000001402c18c4 mov      qword ptr [rsp + 8], rbx
00000001402c18c9 mov      qword ptr [rsp + 0x10], rsi
00000001402c18ce mov      qword ptr [rsp + 0x18], rdi
00000001402c18d3 push     r14
00000001402c18d5 sub      rsp, 0x20
00000001402c18d9 cmp      byte ptr [rsp + 0x50], 4
00000001402c18de mov      rsi, r9
00000001402c18e1 mov      rax, qword ptr [rcx + 8]
00000001402c18e5 mov      edi, r8d
00000001402c18e8 mov      rbx, rdx
00000001402c18eb mov      r14, qword ptr [rax + 0x14b0]
00000001402c18f2 jne      0x1402c18f9
00000001402c18f4 mov      byte ptr [rdx], 0x22
00000001402c18f7 jmp      0x1402c1956
00000001402c18f9 cmp      byte ptr [rsp + 0x50], 3
00000001402c18fe jne      0x1402c1905
00000001402c1900 mov      byte ptr [rdx], 0x21
00000001402c1903 jmp      0x1402c1956
00000001402c1905 cmp      byte ptr [rsp + 0x50], 2
00000001402c190a jne      0x1402c1911
00000001402c190c mov      byte ptr [rdx], 0x20
00000001402c190f jmp      0x1402c1956
00000001402c1911 mov      rcx, qword ptr [rip + 0x65e6e8]
00000001402c1918 lea      rax, [rip + 0x65e6e1]
00000001402c191f cmp      rcx, rax
00000001402c1922 je       0x1402c1956
00000001402c1924 cmp      byte ptr [rcx + 0x169], 4
00000001402c192b jb       0x1402c1956
00000001402c192d mov      eax, dword ptr [rcx + 0x16c]
00000001402c1933 test     al, 1
00000001402c1935 je       0x1402c1956
00000001402c1937 mov      rcx, qword ptr [rcx + 0x158]
00000001402c193e lea      r9, [rip + 0x34ca4b]
00000001402c1945 mov      edx, 0x18
00000001402c194a lea      r8, [rip + 0x3d7ab7]
00000001402c1951 call     0x140008874
00000001402c1956 movzx    eax, word ptr [rsi + 0x2c]
00000001402c195a lea      rdx, [rbx + 0x18]
00000001402c195e mov      r8, rsi
00000001402c1961 mov      word ptr [rbx + 4], ax
00000001402c1965 sub      r8, rbx
00000001402c1968 mov      word ptr [rbx + 0x14], 0x54
00000001402c196e mov      r9, 0xffffffffffffffe8
00000001402c1975 mov      r10d, 6
00000001402c197b sub      r9, rbx
00000001402c197e mov      al, byte ptr [r8 + rdx + 0x1e]
00000001402c1983 mov      byte ptr [rdx], al
00000001402c1985 mov      rcx, qword ptr [rsi + 0x10]
00000001402c1989 add      rcx, r9
00000001402c198c mov      al, byte ptr [rcx + rdx + 0x16]
00000001402c1990 mov      byte ptr [rdx + 6], al
00000001402c1993 inc      rdx
00000001402c1996 sub      r10, 1
00000001402c199a jne      0x1402c197e
00000001402c199c mov      rax, qword ptr [rsp + 0x58]
00000001402c19a1 mov      edx, 0x96
00000001402c19a6 mov      word ptr [rbx + 0x16], dx
00000001402c19aa mov      r9b, 0x80
00000001402c19ad mov      r10d, 0x1ff
00000001402c19b3 mov      ecx, dword ptr [rax]
00000001402c19b5 or       byte ptr [rbx + 0xe5], r9b
00000001402c19bc movzx    eax, byte ptr [rsp + 0x50]
00000001402c19c1 add      ax, ax
00000001402c19c4 mov      dword ptr [rbx + 0x28], ecx
00000001402c19c7 movzx    ecx, word ptr [rbx + 0xe0]
00000001402c19ce add      ax, 0x11
00000001402c19d2 mov      word ptr [rbx + 0xdc], ax
00000001402c19d9 movzx    eax, cx
00000001402c19dc mov      word ptr [rbx + 0xde], dx
00000001402c19e3 movzx    r8d, word ptr [r14 + 4]
00000001402c19e8 xor      ax, r8w
00000001402c19ec and      r8w, r10w
00000001402c19f0 and      ax, r10w
00000001402c19f4 xor      ax, cx
00000001402c19f7 mov      word ptr [rbx + 0xe0], ax
00000001402c19fe mov      dl, byte ptr [r14]
00000001402c1a01 mov      al, byte ptr [rbx + 0xe2]
00000001402c1a07 add      dl, dl
00000001402c1a09 xor      dl, al
00000001402c1a0b and      dl, 6
00000001402c1a0e xor      dl, al
00000001402c1a10 mov      al, byte ptr [rbx + 0xe3]
00000001402c1a16 mov      byte ptr [rbx + 0xe2], dl
00000001402c1a1c mov      cl, byte ptr [r14 + 0xd]
00000001402c1a20 add      cl, cl
00000001402c1a22 xor      cl, al
00000001402c1a24 and      cl, 2
00000001402c1a27 xor      cl, al
00000001402c1a29 mov      byte ptr [rbx + 0xe3], cl
00000001402c1a2f mov      al, cl
00000001402c1a31 xor      al, byte ptr [r14 + 0xc]
00000001402c1a35 and      al, 1
00000001402c1a37 xor      al, cl
00000001402c1a39 movzx    ecx, word ptr [rbx + 0xec]
00000001402c1a40 mov      byte ptr [rbx + 0xe3], al
00000001402c1a46 movzx    eax, word ptr [rsi + 0x2c]
00000001402c1a4a shl      ax, 9
00000001402c1a4e or       ax, r8w
00000001402c1a52 mov      word ptr [rbx + 0xe0], ax
00000001402c1a59 mov      al, byte ptr [r14 + 8]
00000001402c1a5d or       byte ptr [rbx + 0xe6], r9b
00000001402c1a64 or       byte ptr [rbx + 0xf1], r9b
00000001402c1a6b shl      al, 3
00000001402c1a6e xor      al, dl
00000001402c1a70 and      al, 0x38
00000001402c1a72 xor      al, dl
00000001402c1a74 mov      byte ptr [rbx + 0xe2], al
00000001402c1a7a mov      al, byte ptr [rbx + 0xe7]
00000001402c1a80 and      al, 0xf1
00000001402c1a82 or       al, 0x11
00000001402c1a84 mov      byte ptr [rbx + 0xe7], al
00000001402c1a8a mov      rax, qword ptr [rsi + 0x18]
00000001402c1a8e mov      dl, byte ptr [rax + 0x78]
00000001402c1a91 and      dl, 7
00000001402c1a94 cmp      dl, 1
00000001402c1a97 je       0x1402c1abf
00000001402c1a99 cmp      dl, 2
00000001402c1a9c jne      0x1402c1aac
00000001402c1a9e mov      eax, 0xfe44
00000001402c1aa3 and      cx, ax
00000001402c1aa6 or       cx, 0x44
00000001402c1aaa jmp      0x1402c1acb
00000001402c1aac cmp      dl, 3
00000001402c1aaf jne      0x1402c1abf
00000001402c1ab1 mov      eax, 0xfe50
00000001402c1ab6 and      cx, ax
00000001402c1ab9 or       cx, 0x50
00000001402c1abd jmp      0x1402c1acb
00000001402c1abf mov      eax, 0xfe38
00000001402c1ac4 and      cx, ax
00000001402c1ac7 or       cx, 0x38
00000001402c1acb mov      al, byte ptr [rbx + 0xee]
00000001402c1ad1 add      dil, dil
00000001402c1ad4 xor      dil, al
00000001402c1ad7 mov      word ptr [rbx + 0xec], cx
00000001402c1ade and      dil, 6
00000001402c1ae2 and      cx, r10w
00000001402c1ae6 xor      dil, al
00000001402c1ae9 mov      byte ptr [rbx + 0xee], dil
00000001402c1af0 and      dil, 0xc7
00000001402c1af4 movzx    eax, word ptr [rsi + 0x2c]
00000001402c1af8 or       byte ptr [rbx + 0xf2], r9b
00000001402c1aff mov      rsi, qword ptr [rsp + 0x38]
00000001402c1b04 shl      ax, 9
00000001402c1b08 or       ax, cx
00000001402c1b0b mov      byte ptr [rbx + 0xee], dil
00000001402c1b12 mov      rdi, qword ptr [rsp + 0x40]
00000001402c1b17 mov      word ptr [rbx + 0xec], ax
00000001402c1b1e mov      al, byte ptr [rbx + 0xf3]
00000001402c1b24 and      al, 0xf3
00000001402c1b26 or       al, 0x13
00000001402c1b28 mov      byte ptr [rbx + 0xf3], al
00000001402c1b2e mov      rbx, qword ptr [rsp + 0x30]
00000001402c1b33 add      rsp, 0x20
00000001402c1b37 pop      r14
00000001402c1b39 ret      