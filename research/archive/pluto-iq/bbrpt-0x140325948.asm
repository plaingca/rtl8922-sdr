0000000140325948 push     rbp
000000014032594a push     rbx
000000014032594b push     rsi
000000014032594c push     rdi
000000014032594d push     r12
000000014032594f push     r13
0000000140325951 push     r14
0000000140325953 push     r15
0000000140325955 lea      rbp, [rsp - 0x1f]
000000014032595a sub      rsp, 0xa8
0000000140325961 xor      r12d, r12d
0000000140325964 mov      r13, rcx
0000000140325967 mov      qword ptr [rbp - 0x11], r12
000000014032596b movzx    ebx, r12w
000000014032596f mov      dword ptr [rbp + 0x6f], r12d
0000000140325973 movzx    edi, r12w
0000000140325977 mov      dword ptr [rbp + 0x77], r12d
000000014032597b mov      eax, 0x80
0000000140325980 lea      r15d, [r12 + 1]
0000000140325985 movzx    esi, di
0000000140325988 cmp      byte ptr [rsi + r13 + 0x910], r12b
0000000140325990 je       0x140325a32
0000000140325996 mov      r14, qword ptr [r13 + rsi*8 + 0x10]
000000014032599b test     r14, r14
000000014032599e je       0x140325a32
00000001403259a4 mov      rcx, r14
00000001403259a7 call     0x14024b388
00000001403259ac test     al, al
00000001403259ae je       0x140325a05
00000001403259b0 mov      rcx, qword ptr [rip + 0x5fa649]
00000001403259b7 lea      rax, [rip + 0x5fa642]
00000001403259be cmp      rcx, rax
00000001403259c1 je       0x140325a2d
00000001403259c3 mov      eax, 4
00000001403259c8 cmp      byte ptr [rcx + 0x1e9], al
00000001403259ce jb       0x140325a2d
00000001403259d0 mov      eax, dword ptr [rcx + 0x1ec]
00000001403259d6 test     r15b, al
00000001403259d9 je       0x140325a2d
00000001403259db movzx    eax, word ptr [r14 + 0x2c]
00000001403259e0 lea      r9, [rip + 0x30e389]
00000001403259e7 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403259ee lea      r8, [rip + 0x3abb3b]
00000001403259f5 mov      edx, 0xa2
00000001403259fa mov      dword ptr [rsp + 0x20], eax
00000001403259fe call     0x1400088d8
0000000140325a03 jmp      0x140325a2d
0000000140325a05 mov      rax, qword ptr [r13 + rsi*8 + 0x10]
0000000140325a0a mov      rcx, qword ptr [rax + 0xb70]
0000000140325a11 test     rcx, rcx
0000000140325a14 je       0x140325a2d
0000000140325a16 cmp      byte ptr [rcx + 0x7e], r12b
0000000140325a1a je       0x140325a2d
0000000140325a1c movzx    eax, byte ptr [r13 + 0x46a0]
0000000140325a24 add      bx, r15w
0000000140325a28 cmp      bx, ax
0000000140325a2b je       0x140325a3f
0000000140325a2d mov      eax, 0x80
0000000140325a32 add      di, r15w
0000000140325a36 cmp      di, ax
0000000140325a39 jb       0x140325985
0000000140325a3f test     bx, bx
0000000140325a42 je       0x140326001
0000000140325a48 shl      bx, 4
0000000140325a4c lea      rcx, [rip + 0x30539d]
0000000140325a53 movzx    ebx, bx
0000000140325a56 mov      dword ptr [rbp - 0x19], ebx
0000000140325a59 call     0x14007dbe0
0000000140325a5e mov      r8d, ebx
0000000140325a61 mov      qword ptr [rbp - 9], r12
0000000140325a65 lea      rdx, [rbp - 9]
0000000140325a69 mov      ecx, eax
0000000140325a6b call     0x1400310f0
0000000140325a70 test     eax, eax
0000000140325a72 jne      0x140325fba
0000000140325a78 mov      rcx, qword ptr [rbp - 9]
0000000140325a7c mov      edx, ebx
0000000140325a7e call     0x140031290
0000000140325a83 mov      r15, qword ptr [rbp - 9]
0000000140325a87 mov      qword ptr [rbp - 1], r15
0000000140325a8b test     r15, r15
0000000140325a8e je       0x140325fba
0000000140325a94 xor      r8d, r8d
0000000140325a97 mov      qword ptr [rbp + 7], r15
0000000140325a9b movzx    ebx, r8w
0000000140325a9f mov      r14, r15
0000000140325aa2 mov      word ptr [rbp + 0x67], bx
0000000140325aa6 mov      esi, 0x1000
0000000140325aab lea      eax, [r8 + 1]
0000000140325aaf lea      ecx, [rax + 0x7f]
0000000140325ab2 movzx    ebx, bx
0000000140325ab5 cmp      byte ptr [rbx + r13 + 0x910], r8b
0000000140325abd je       0x140325b45
0000000140325ac3 mov      rdi, qword ptr [r13 + rbx*8 + 0x10]
0000000140325ac8 test     rdi, rdi
0000000140325acb je       0x140325b45
0000000140325acd mov      rcx, rdi
0000000140325ad0 call     0x14024b388
0000000140325ad5 xor      r8d, r8d
0000000140325ad8 test     al, al
0000000140325ada je       0x140325c38
0000000140325ae0 mov      rcx, qword ptr [rip + 0x5fa519]
0000000140325ae7 lea      rax, [rip + 0x5fa512]
0000000140325aee cmp      rcx, rax
0000000140325af1 je       0x140325b3b
0000000140325af3 lea      eax, [r8 + 4]
0000000140325af7 cmp      byte ptr [rcx + 0x1e9], al
0000000140325afd jb       0x140325b3b
0000000140325aff mov      eax, dword ptr [rcx + 0x1ec]
0000000140325b05 lea      edx, [r8 + 1]
0000000140325b09 test     dl, al
0000000140325b0b je       0x140325f7f
0000000140325b11 movzx    eax, word ptr [rdi + 0x2c]
0000000140325b15 lea      r9, [rip + 0x30e254]
0000000140325b1c mov      rcx, qword ptr [rcx + 0x1d8]
0000000140325b23 lea      r8, [rip + 0x3aba06]
0000000140325b2a mov      edx, 0xa4
0000000140325b2f mov      dword ptr [rsp + 0x20], eax
0000000140325b33 call     0x1400088d8
0000000140325b38 xor      r8d, r8d
0000000140325b3b mov      eax, 1
0000000140325b40 mov      ecx, 0x80
0000000140325b45 lea      rdi, [rip + 0x5fa4b4]
0000000140325b4c movzx    ebx, word ptr [rbp + 0x67]
0000000140325b50 add      bx, ax
0000000140325b53 mov      word ptr [rbp + 0x67], bx
0000000140325b57 cmp      bx, cx
0000000140325b5a jb       0x140325ab2
0000000140325b60 mov      r14d, 1
0000000140325b66 movzx    edx, r12w
0000000140325b6a and      dx, 0x3f
0000000140325b6e je       0x140325c27
0000000140325b74 cmp      r12w, cx
0000000140325b78 ja       0x140325c27
0000000140325b7e mov      rax, qword ptr [rbp - 0x11]
0000000140325b82 mov      r9b, r14b
0000000140325b85 shl      dx, 4
0000000140325b89 mov      r8b, 0xe
0000000140325b8c mov      rcx, r13
0000000140325b8f mov      qword ptr [rsp + 0x20], r15
0000000140325b94 or       byte ptr [rax + 5], 4
0000000140325b98 call     0x140315800
0000000140325b9d mov      bl, al
0000000140325b9f mov      rcx, qword ptr [rip + 0x5fa45a]
0000000140325ba6 cmp      rcx, rdi
0000000140325ba9 je       0x140325bdf
0000000140325bab mov      eax, 4
0000000140325bb0 cmp      byte ptr [rcx + 0x1e9], al
0000000140325bb6 jb       0x140325bdf
0000000140325bb8 mov      edx, dword ptr [rcx + 0x1ec]
0000000140325bbe test     r14b, dl
0000000140325bc1 je       0x140325bdf
0000000140325bc3 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140325bca lea      r8, [rip + 0x3ab95f]
0000000140325bd1 movzx    r9d, r12w
0000000140325bd5 mov      edx, 0xaa
0000000140325bda call     0x140001bb0
0000000140325bdf test     bl, bl
0000000140325be1 jne      0x140325c27
0000000140325be3 mov      rcx, qword ptr [rip + 0x5fa416]
0000000140325bea cmp      rcx, rdi
0000000140325bed je       0x140325c27
0000000140325bef cmp      byte ptr [rcx + 0x169], 3
0000000140325bf6 jb       0x140325c27
0000000140325bf8 test     dword ptr [rcx + 0x16c], esi
0000000140325bfe je       0x140325c27
0000000140325c00 mov      edx, 0xab
0000000140325c05 mov      rcx, qword ptr [rcx + 0x158]
0000000140325c0c lea      r9, [rip + 0x30e15d]
0000000140325c13 movzx    eax, r12w
0000000140325c17 lea      r8, [rip + 0x3ab912]
0000000140325c1e mov      dword ptr [rsp + 0x20], eax
0000000140325c22 call     0x1400088d8
0000000140325c27 mov      edx, dword ptr [rbp - 0x19]
0000000140325c2a mov      rcx, qword ptr [rbp + 7]
0000000140325c2e call     0x140031160
0000000140325c33 jmp      0x140326001
0000000140325c38 mov      rdx, qword ptr [r13 + rbx*8 + 0x10]
0000000140325c3d mov      rdi, qword ptr [rdx + 0xb70]
0000000140325c44 test     rdi, rdi
0000000140325c47 je       0x140325b3b
0000000140325c4d cmp      byte ptr [rdi + 0x7e], r8b
0000000140325c51 je       0x140325b3b
0000000140325c57 mov      rcx, r13
0000000140325c5a call     0x1402ea04c
0000000140325c5f xor      r8d, r8d
0000000140325c62 test     al, al
0000000140325c64 jne      0x140325cb9
0000000140325c66 mov      rcx, qword ptr [rip + 0x5fa393]
0000000140325c6d lea      rdi, [rip + 0x5fa38c]
0000000140325c74 cmp      rcx, rdi
0000000140325c77 je       0x140325cac
0000000140325c79 cmp      byte ptr [rcx + 0x169], 3
0000000140325c80 jb       0x140325cac
0000000140325c82 test     dword ptr [rcx + 0x16c], esi
0000000140325c88 je       0x140325cac
0000000140325c8a mov      rcx, qword ptr [rcx + 0x158]
0000000140325c91 lea      r9, [rip + 0x30e0d8]
0000000140325c98 mov      edx, 0xa5
0000000140325c9d lea      r8, [rip + 0x3ab88c]
0000000140325ca4 call     0x140008874
0000000140325ca9 xor      r8d, r8d
0000000140325cac mov      eax, 1
0000000140325cb1 lea      ecx, [rax + 0x7f]
0000000140325cb4 jmp      0x140325b4c
0000000140325cb9 movzx    eax, r12w
0000000140325cbd shl      rax, 4
0000000140325cc1 add      rax, r14
0000000140325cc4 mov      qword ptr [rbp - 0x11], rax
0000000140325cc8 mov      rax, qword ptr [r13 + rbx*8 + 0x10]
0000000140325ccd mov      ebx, r8d
0000000140325cd0 mov      dword ptr [rbp + 0x7f], ebx
0000000140325cd3 movzx    r14d, word ptr [rax + 0x2c]
0000000140325cd8 movzx    eax, r8w
0000000140325cdc mov      r8d, 1
0000000140325ce2 lea      r9d, [r8 + 3]
0000000140325ce6 movzx    ecx, ax
0000000140325ce9 cmp      word ptr [r13 + rcx*2 + 0x3b04], r14w
0000000140325cf2 je       0x140325d00
0000000140325cf4 add      ax, r8w
0000000140325cf8 cmp      ax, r9w
0000000140325cfc jb       0x140325ce6
0000000140325cfe jmp      0x140325d1a
0000000140325d00 imul     rax, rcx, 0x2d4
0000000140325d07 mov      ebx, dword ptr [rax + r13 + 0x3258]
0000000140325d0f mov      dword ptr [rbp + 0x7f], ebx
0000000140325d12 mov      dword ptr [rax + r13 + 0x325c], ebx
0000000140325d1a mov      rcx, qword ptr [rip + 0x5fa2df]
0000000140325d21 lea      rax, [rip + 0x5fa2d8]
0000000140325d28 cmp      rcx, rax
0000000140325d2b je       0x140325d63
0000000140325d2d cmp      byte ptr [rcx + 0x1e9], r9b
0000000140325d34 jb       0x140325d63
0000000140325d36 mov      eax, dword ptr [rcx + 0x1ec]
0000000140325d3c test     r8b, al
0000000140325d3f je       0x140325d63
0000000140325d41 movzx    r9d, word ptr [rbp + 0x67]
0000000140325d46 lea      r8, [rip + 0x3ab7e3]
0000000140325d4d mov      rcx, qword ptr [rcx + 0x1d8]
0000000140325d54 mov      edx, 0xa6
0000000140325d59 mov      dword ptr [rsp + 0x20], r14d
0000000140325d5e call     0x140001bec
0000000140325d63 mov      rdx, qword ptr [rbp - 0x11]
0000000140325d67 lea      r10, [rdi + 0x14]
0000000140325d6b mov      rdi, qword ptr [rbp - 0x11]
0000000140325d6f lea      r8, [rbp + 0x6f]
0000000140325d73 mov      r11d, 4
0000000140325d79 lea      r9, [rbp + 0x77]
0000000140325d7d sub      r8, rdi
0000000140325d80 add      rdx, 6
0000000140325d84 sub      r9, rdi
0000000140325d87 lea      r15d, [r11 - 3]
0000000140325d8b movzx    ecx, word ptr [r10 - 0xe]
0000000140325d90 movzx    eax, word ptr [r10]
0000000140325d94 lea      r10, [r10 + 2]
0000000140325d98 shr      cx, 5
0000000140325d9c and      cl, 0x7f
0000000140325d9f shr      ax, 5
0000000140325da3 and      al, 0x7f
0000000140325da5 mov      byte ptr [r8 + rdx - 6], cl
0000000140325daa mov      byte ptr [r9 + rdx - 6], al
0000000140325daf mov      byte ptr [rdx + 4], cl
0000000140325db2 mov      byte ptr [rdx], al
0000000140325db4 add      rdx, r15
0000000140325db7 sub      r11, r15
0000000140325dba jne      0x140325d8b
0000000140325dbc mov      al, byte ptr [rdi + 5]
0000000140325dbf movzx    ecx, r14w
0000000140325dc3 mov      r15, qword ptr [rbp - 1]
0000000140325dc7 shr      cx, 8
0000000140325dcb xor      cl, al
0000000140325dcd mov      byte ptr [rdi + 4], r14b
0000000140325dd1 and      cl, 3
0000000140325dd4 mov      dword ptr [rdi], ebx
0000000140325dd6 xor      cl, al
0000000140325dd8 mov      byte ptr [rdi + 5], cl
0000000140325ddb mov      rax, qword ptr [rip + 0x5fa21e]
0000000140325de2 lea      rdx, [rip + 0x5fa217]
0000000140325de9 cmp      rax, rdx
0000000140325dec mov      qword ptr [rbp + 0xf], rax
0000000140325df0 lea      edx, [r11 + 4]
0000000140325df4 je       0x140325ea9
0000000140325dfa cmp      byte ptr [rax + 0x1e9], dl
0000000140325e00 jb       0x140325ea9
0000000140325e06 mov      eax, dword ptr [rax + 0x1ec]
0000000140325e0c lea      edx, [r11 + 1]
0000000140325e10 test     dl, al
0000000140325e12 je       0x140325ea4
0000000140325e18 movzx    r9d, byte ptr [rbp + 0x70]
0000000140325e1d mov      edx, 0xa7
0000000140325e22 movzx    eax, byte ptr [rbp + 0x72]
0000000140325e26 movzx    r8d, byte ptr [rbp + 0x71]
0000000140325e2b movzx    r10d, byte ptr [rbp + 0x6f]
0000000140325e30 movzx    r11d, byte ptr [rbp + 0x7a]
0000000140325e35 movzx    ebx, byte ptr [rbp + 0x79]
0000000140325e39 movzx    edi, byte ptr [rbp + 0x78]
0000000140325e3d movzx    esi, byte ptr [rbp + 0x77]
0000000140325e41 movzx    r15d, cl
0000000140325e45 mov      ecx, dword ptr [rbp + 0x7f]
0000000140325e48 and      r15d, 3
0000000140325e4c mov      dword ptr [rsp + 0x68], ecx
0000000140325e50 mov      rcx, qword ptr [rbp + 0xf]
0000000140325e54 mov      dword ptr [rsp + 0x60], eax
0000000140325e58 mov      dword ptr [rsp + 0x58], r8d
0000000140325e5d lea      r8, [rip + 0x3ab6cc]
0000000140325e64 mov      dword ptr [rsp + 0x50], r9d
0000000140325e69 mov      r9d, r15d
0000000140325e6c mov      rcx, qword ptr [rcx + 0x1d8]
0000000140325e73 mov      dword ptr [rsp + 0x48], r10d
0000000140325e78 mov      dword ptr [rsp + 0x40], r11d
0000000140325e7d mov      dword ptr [rsp + 0x38], ebx
0000000140325e81 mov      dword ptr [rsp + 0x30], edi
0000000140325e85 movzx    r14d, r14b
0000000140325e89 mov      dword ptr [rsp + 0x28], esi
0000000140325e8d mov      dword ptr [rsp + 0x20], r14d
0000000140325e92 call     0x140042c38
0000000140325e97 mov      r15, qword ptr [rbp - 1]
0000000140325e9b mov      esi, 0x1000
0000000140325ea0 mov      rdi, qword ptr [rbp - 0x11]
0000000140325ea4 mov      edx, 4
0000000140325ea9 mov      r14d, 1
0000000140325eaf add      r12w, r14w
0000000140325eb3 lea      ecx, [r14 + 0x7f]
0000000140325eb7 test     r12b, 0x3f
0000000140325ebb jne      0x140325f61
0000000140325ec1 cmp      r12w, cx
0000000140325ec5 ja       0x140325f61
0000000140325ecb or       byte ptr [rdi + 5], dl
0000000140325ece mov      r9b, r14b
0000000140325ed1 mov      edx, 0x400
0000000140325ed6 mov      qword ptr [rsp + 0x20], r15
0000000140325edb mov      r8b, 0xe
0000000140325ede mov      rcx, r13
0000000140325ee1 call     0x140315800
0000000140325ee6 mov      bl, al
0000000140325ee8 mov      rcx, qword ptr [rip + 0x5fa111]
0000000140325eef lea      rdi, [rip + 0x5fa10a]
0000000140325ef6 cmp      rcx, rdi
0000000140325ef9 je       0x140325f2e
0000000140325efb lea      eax, [r14 + 3]
0000000140325eff cmp      byte ptr [rcx + 0x1e9], al
0000000140325f05 jb       0x140325f2e
0000000140325f07 mov      edx, dword ptr [rcx + 0x1ec]
0000000140325f0d test     r14b, dl
0000000140325f10 je       0x140325f2e
0000000140325f12 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140325f19 lea      r8, [rip + 0x3ab610]
0000000140325f20 movzx    r9d, r12w
0000000140325f24 mov      edx, 0xa8
0000000140325f29 call     0x140001bb0
0000000140325f2e xor      r8d, r8d
0000000140325f31 test     bl, bl
0000000140325f33 je       0x140325f87
0000000140325f35 movzx    eax, byte ptr [r13 + 0x46a0]
0000000140325f3d mov      ecx, 0x80
0000000140325f42 cmp      r12w, ax
0000000140325f46 je       0x140325f6b
0000000140325f48 add      r15, 0x400
0000000140325f4f mov      qword ptr [rbp - 1], r15
0000000140325f53 mov      r14, qword ptr [rbp + 7]
0000000140325f57 mov      eax, 1
0000000140325f5c jmp      0x140325b4c
0000000140325f61 lea      rdi, [rip + 0x5fa098]
0000000140325f68 xor      r8d, r8d
0000000140325f6b movzx    eax, byte ptr [r13 + 0x46a0]
0000000140325f73 cmp      r12w, ax
0000000140325f77 je       0x140325b66
0000000140325f7d jmp      0x140325f53
0000000140325f7f mov      rax, rdx
0000000140325f82 jmp      0x140325b40
0000000140325f87 mov      rcx, qword ptr [rip + 0x5fa072]
0000000140325f8e cmp      rcx, rdi
0000000140325f91 je       0x140325c27
0000000140325f97 cmp      byte ptr [rcx + 0x169], 3
0000000140325f9e jb       0x140325c27
0000000140325fa4 test     dword ptr [rcx + 0x16c], esi
0000000140325faa je       0x140325c27
0000000140325fb0 mov      edx, 0xa9
0000000140325fb5 jmp      0x140325c05
0000000140325fba mov      rcx, qword ptr [rip + 0x5fa03f]
0000000140325fc1 lea      rax, [rip + 0x5fa038]
0000000140325fc8 cmp      rcx, rax
0000000140325fcb je       0x140326001
0000000140325fcd cmp      byte ptr [rcx + 0x169], 3
0000000140325fd4 jb       0x140326001
0000000140325fd6 test     dword ptr [rcx + 0x16c], 0x1000
0000000140325fe0 je       0x140326001
0000000140325fe2 mov      rcx, qword ptr [rcx + 0x158]
0000000140325fe9 lea      r9, [rip + 0x30dd80]
0000000140325ff0 mov      edx, 0xa3
0000000140325ff5 lea      r8, [rip + 0x3ab534]
0000000140325ffc call     0x140008874
0000000140326001 add      rsp, 0xa8
0000000140326008 pop      r15
000000014032600a pop      r14
000000014032600c pop      r13
000000014032600e pop      r12
0000000140326010 pop      rdi
0000000140326011 pop      rsi
0000000140326012 pop      rbx
0000000140326013 pop      rbp
0000000140326014 ret      