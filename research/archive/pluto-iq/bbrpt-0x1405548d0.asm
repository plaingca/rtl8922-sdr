00000001405548d0 mov      qword ptr [rsp + 0x20], rbx
00000001405548d5 push     rbp
00000001405548d6 push     rsi
00000001405548d7 push     rdi
00000001405548d8 push     r12
00000001405548da push     r13
00000001405548dc push     r14
00000001405548de push     r15
00000001405548e0 mov      rbp, rsp
00000001405548e3 sub      rsp, 0x70
00000001405548e7 mov      rax, qword ptr [rip + 0x3d2b72]
00000001405548ee xor      rax, rsp
00000001405548f1 mov      qword ptr [rbp - 8], rax
00000001405548f5 mov      r13, qword ptr [rcx]
00000001405548f8 xor      eax, eax
00000001405548fa mov      r15, qword ptr [rcx + 0x140]
0000000140554901 xorps    xmm0, xmm0
0000000140554904 movups   xmmword ptr [rbp - 0x27], xmm0
0000000140554908 mov      qword ptr [rbp - 0x17], rax
000000014055490c mov      ebx, r9d
000000014055490f mov      dword ptr [rbp - 0xf], eax
0000000140554912 mov      r14, r8
0000000140554915 mov      word ptr [rbp - 0xb], ax
0000000140554919 mov      rdi, rdx
000000014055491c mov      byte ptr [rbp - 9], al
000000014055491f mov      rsi, rcx
0000000140554922 call     0x1405202e0
0000000140554927 cmp      ebx, eax
0000000140554929 je       0x140554935
000000014055492b mov      eax, 0xa
0000000140554930 jmp      0x140555001
0000000140554935 movzx    ecx, byte ptr [rdi + 0x57]
0000000140554939 cmp      cl, 0xb
000000014055493c jbe      0x14055496c
000000014055493e mov      rdx, qword ptr [rsi + 0x18]
0000000140554942 lea      r8, [rip + 0x10ae67]
0000000140554949 mov      r9d, ecx
000000014055494c mov      rcx, qword ptr [rsi + 8]
0000000140554950 mov      rax, qword ptr [rdx + 0x118]
0000000140554957 mov      edx, 2
000000014055495c call     qword ptr [rip + 0x12f996]
0000000140554962 mov      eax, 0xb
0000000140554967 jmp      0x140555001
000000014055496c movzx    ecx, word ptr [rdi + 0x36]
0000000140554970 mov      r8d, 1
0000000140554976 movzx    eax, cx
0000000140554979 mov      edx, 0x3ffe
000000014055497e sub      ax, r8w
0000000140554982 cmp      ax, dx
0000000140554985 ja       0x140554fd8
000000014055498b xor      r12d, r12d
000000014055498e mov      ebx, 0x400
0000000140554993 mov      qword ptr [r14], r12
0000000140554996 mov      qword ptr [r14 + 8], r12
000000014055499a mov      qword ptr [r14 + 0x10], r12
000000014055499e mov      qword ptr [r14 + 0x18], r12
00000001405549a2 mov      eax, dword ptr [rsi + 0xeec]
00000001405549a8 cmp      eax, r8d
00000001405549ab jne      0x1405549be
00000001405549ad mov      al, byte ptr [rdi + 0x59]
00000001405549b0 neg      al
00000001405549b2 sbb      edx, edx
00000001405549b4 and      edx, 0x80
00000001405549ba add      edx, ebx
00000001405549bc jmp      0x140554a01
00000001405549be test     eax, eax
00000001405549c0 jne      0x1405549e0
00000001405549c2 mov      al, byte ptr [rdi + 0x5b]
00000001405549c5 neg      al
00000001405549c7 mov      al, byte ptr [rdi + 0x59]
00000001405549ca sbb      edx, edx
00000001405549cc and      edx, 0x200000
00000001405549d2 add      edx, ebx
00000001405549d4 neg      al
00000001405549d6 sbb      ecx, ecx
00000001405549d8 and      ecx, 0x80
00000001405549de jmp      0x1405549ff
00000001405549e0 mov      eax, dword ptr [rsi + 0x3b0]
00000001405549e6 mov      ecx, ebx
00000001405549e8 sub      eax, 3
00000001405549eb cmp      eax, r8d
00000001405549ee mov      al, byte ptr [rdi + 0x58]
00000001405549f1 cmova    ecx, r12d
00000001405549f5 neg      al
00000001405549f7 sbb      edx, edx
00000001405549f9 and      edx, 0x80
00000001405549ff or       edx, ecx
0000000140554a01 mov      dword ptr [r14], edx
0000000140554a04 lea      r8, [rbp - 0x40]
0000000140554a08 mov      rdx, rdi
0000000140554a0b mov      rcx, rsi
0000000140554a0e call     0x14050d644
0000000140554a13 test     eax, eax
0000000140554a15 jne      0x140555001
0000000140554a1b lea      r9, [rbp - 0x3e]
0000000140554a1f mov      rdx, rdi
0000000140554a22 lea      r8, [rbp - 0x3f]
0000000140554a26 mov      rcx, rsi
0000000140554a29 call     0x14050d740
0000000140554a2e test     eax, eax
0000000140554a30 jne      0x140555001
0000000140554a36 movzx    edx, byte ptr [rdi + 0x51]
0000000140554a3a lea      r8, [rip - 0x554a41]
0000000140554a41 movzx    eax, byte ptr [rdi + 0x57]
0000000140554a45 and      edx, 0xf
0000000140554a48 shl      edx, 8
0000000140554a4b and      eax, 0xf
0000000140554a4e or       edx, eax
0000000140554a50 movzx    eax, byte ptr [rbp - 0x40]
0000000140554a54 shl      edx, 5
0000000140554a57 and      eax, 0x1f
0000000140554a5a or       edx, eax
0000000140554a5c movzx    eax, byte ptr [rdi + 0x3f]
0000000140554a60 shl      edx, 9
0000000140554a63 and      eax, 7
0000000140554a66 or       edx, eax
0000000140554a68 mov      al, byte ptr [rdi + 0x44]
0000000140554a6b shl      edx, 2
0000000140554a6e neg      al
0000000140554a70 mov      al, byte ptr [rdi + 0x5f]
0000000140554a73 sbb      ecx, ecx
0000000140554a75 and      ecx, 0x100
0000000140554a7b or       edx, ecx
0000000140554a7d neg      al
0000000140554a7f mov      al, byte ptr [rdi + 0x43]
0000000140554a82 sbb      ecx, ecx
0000000140554a84 and      ecx, 0x40
0000000140554a87 or       edx, ecx
0000000140554a89 neg      al
0000000140554a8b mov      al, byte ptr [rdi + 0x56]
0000000140554a8e sbb      ecx, ecx
0000000140554a90 and      ecx, 0x20
0000000140554a93 or       edx, ecx
0000000140554a95 neg      al
0000000140554a97 movzx    eax, byte ptr [rdi + 0x3e]
0000000140554a9b sbb      ecx, ecx
0000000140554a9d and      eax, 3
0000000140554aa0 and      ecx, 0x80000000
0000000140554aa6 or       edx, ecx
0000000140554aa8 or       edx, eax
0000000140554aaa mov      al, byte ptr [rdi + 0x59]
0000000140554aad neg      al
0000000140554aaf mov      al, byte ptr [rbp - 0x3f]
0000000140554ab2 sbb      ecx, ecx
0000000140554ab4 and      ecx, 0x400000
0000000140554aba or       edx, ecx
0000000140554abc neg      al
0000000140554abe sbb      ecx, ecx
0000000140554ac0 and      ecx, 0x100000
0000000140554ac6 or       edx, ecx
0000000140554ac8 or       dword ptr [r14], edx
0000000140554acb movzx    edx, byte ptr [rdi + 0x54]
0000000140554acf movzx    eax, byte ptr [rdi + 0x5a]
0000000140554ad3 and      edx, 3
0000000140554ad6 shl      eax, 2
0000000140554ad9 or       edx, eax
0000000140554adb movzx    eax, byte ptr [rdi + 0x55]
0000000140554adf shl      edx, 4
0000000140554ae2 and      eax, 0xf
0000000140554ae5 or       edx, eax
0000000140554ae7 movzx    eax, byte ptr [rdi + 0x61]
0000000140554aeb shl      edx, 4
0000000140554aee and      eax, 3
0000000140554af1 or       edx, eax
0000000140554af3 movzx    eax, byte ptr [rdi + 0x77]
0000000140554af7 shl      edx, 4
0000000140554afa and      eax, 0xf
0000000140554afd or       edx, eax
0000000140554aff mov      al, byte ptr [rdi + 0x60]
0000000140554b02 shl      edx, 0xc
0000000140554b05 neg      al
0000000140554b07 sbb      ecx, ecx
0000000140554b09 and      ecx, 0x40000
0000000140554b0f or       edx, ecx
0000000140554b11 mov      dword ptr [r14 + 4], edx
0000000140554b15 cmp      byte ptr [rdi + 0x57], 7
0000000140554b19 mov      cl, byte ptr [rdi + 0x2e]
0000000140554b1c jbe      0x140554b2a
0000000140554b1e neg      cl
0000000140554b20 sbb      cl, cl
0000000140554b22 and      cl, 8
0000000140554b25 add      cl, 0x11
0000000140554b28 jmp      0x140554b3e
0000000140554b2a movzx    eax, byte ptr [rdi + 0x34]
0000000140554b2e add      cl, cl
0000000140554b30 or       cl, byte ptr [rdi + 0x2f]
0000000140554b33 shl      cl, 2
0000000140554b36 or       cl, byte ptr [rax + r8 + 0xcc63c0]
0000000140554b3e movzx    edx, word ptr [rdi + 0x3c]
0000000140554b42 mov      r10d, 0x4000
0000000140554b48 shl      edx, 7
0000000140554b4b movzx    eax, cl
0000000140554b4e and      eax, 0x3f
0000000140554b51 or       edx, eax
0000000140554b53 movzx    eax, byte ptr [rdi + 0x34]
0000000140554b57 shl      edx, 0xf
0000000140554b5a mov      al, byte ptr [rax + r8 + 0xcc63c8]
0000000140554b62 neg      al
0000000140554b64 mov      al, byte ptr [rdi + 0x5d]
0000000140554b67 sbb      ecx, ecx
0000000140554b69 and      ecx, 0x200000
0000000140554b6f or       edx, ecx
0000000140554b71 neg      al
0000000140554b73 movzx    eax, word ptr [rdi + 0x36]
0000000140554b77 sbb      ecx, ecx
0000000140554b79 and      eax, 0x3fff
0000000140554b7e and      ecx, r10d
0000000140554b81 or       edx, ecx
0000000140554b83 or       edx, eax
0000000140554b85 mov      dword ptr [r14 + 8], edx
0000000140554b89 cmp      byte ptr [rdi + 0x5e], r12b
0000000140554b8d jne      0x140554b9b
0000000140554b8f mov      edx, r12d
0000000140554b92 cmp      byte ptr [rdi + 0x92], r12b
0000000140554b99 je       0x140554b9e
0000000140554b9b mov      edx, r10d
0000000140554b9e mov      al, byte ptr [rdi + 0x68]
0000000140554ba1 mov      r11d, 0x2000
0000000140554ba7 neg      al
0000000140554ba9 mov      r9d, 0xfff
0000000140554baf movzx    eax, word ptr [rdi + 0x40]
0000000140554bb3 sbb      ecx, ecx
0000000140554bb5 and      eax, r9d
0000000140554bb8 and      ecx, r11d
0000000140554bbb or       ecx, eax
0000000140554bbd or       ecx, edx
0000000140554bbf mov      dword ptr [r14 + 0xc], ecx
0000000140554bc3 movzx    eax, byte ptr [rdi + 0x62]
0000000140554bc7 movzx    ecx, byte ptr [rdi + 0x63]
0000000140554bcb shl      ecx, 8
0000000140554bce or       ecx, eax
0000000140554bd0 shl      ecx, 0x10
0000000140554bd3 mov      dword ptr [r14 + 0x10], ecx
0000000140554bd7 movzx    eax, byte ptr [rdi + 0x66]
0000000140554bdb movzx    ecx, byte ptr [rdi + 0x67]
0000000140554bdf shl      ecx, 8
0000000140554be2 or       ecx, eax
0000000140554be4 movzx    eax, byte ptr [rdi + 0x65]
0000000140554be8 shl      ecx, 8
0000000140554beb or       ecx, eax
0000000140554bed movzx    eax, byte ptr [rdi + 0x64]
0000000140554bf1 shl      ecx, 8
0000000140554bf4 or       ecx, eax
0000000140554bf6 mov      dword ptr [r14 + 0x14], ecx
0000000140554bfa cmp      byte ptr [rdi + 0x79], r12b
0000000140554bfe jne      0x140554c09
0000000140554c00 mov      r8d, r12d
0000000140554c03 cmp      byte ptr [rdi + 0x7a], r12b
0000000140554c07 je       0x140554c0f
0000000140554c09 mov      r8d, 0x800
0000000140554c0f mov      al, byte ptr [rdi + 0x4d]
0000000140554c12 neg      al
0000000140554c14 mov      dword ptr [rbp - 0x38], r12d
0000000140554c18 mov      al, byte ptr [rdi + 0x6a]
0000000140554c1b sbb      edx, edx
0000000140554c1d mov      dword ptr [rbp - 0x30], r9d
0000000140554c21 and      edx, r10d
0000000140554c24 neg      al
0000000140554c26 mov      al, byte ptr [rdi + 0x6b]
0000000140554c29 sbb      ecx, ecx
0000000140554c2b and      ecx, 0x1000
0000000140554c31 or       edx, ecx
0000000140554c33 neg      al
0000000140554c35 mov      al, byte ptr [rbp - 0x3e]
0000000140554c38 sbb      ecx, ecx
0000000140554c3a and      ecx, 0x8000
0000000140554c40 or       edx, ecx
0000000140554c42 neg      al
0000000140554c44 sbb      ecx, ecx
0000000140554c46 and      ecx, r11d
0000000140554c49 or       edx, ecx
0000000140554c4b mov      rcx, rsi
0000000140554c4e or       edx, r8d
0000000140554c51 mov      dword ptr [r14 + 0x18], edx
0000000140554c55 lea      rdx, [rbp - 0x38]
0000000140554c59 movzx    eax, word ptr [rdi + 0x70]
0000000140554c5d mov      dword ptr [rbp - 0x34], eax
0000000140554c60 mov      rax, qword ptr [r13 + 0x5a0]
0000000140554c67 call     qword ptr [rip + 0x12f68b]
0000000140554c6d mov      r9d, eax
0000000140554c70 test     eax, eax
0000000140554c72 je       0x140554c95
0000000140554c74 mov      rcx, qword ptr [rsi + 0x18]
0000000140554c78 lea      r8, [rip + 0x10ab71]
0000000140554c7f mov      edx, 2
0000000140554c84 mov      rax, qword ptr [rcx + 0x118]
0000000140554c8b mov      rcx, qword ptr [rsi + 8]
0000000140554c8f call     qword ptr [rip + 0x12f663]
0000000140554c95 movzx    edx, byte ptr [rdi + 0x73]
0000000140554c99 mov      r10d, 0x1000
0000000140554c9f movzx    eax, byte ptr [rdi + 0x72]
0000000140554ca3 and      edx, 7
0000000140554ca6 shl      edx, 0xf
0000000140554ca9 and      eax, 7
0000000140554cac or       edx, eax
0000000140554cae mov      r9d, 0x800
0000000140554cb4 movzx    eax, byte ptr [rdi + 0x53]
0000000140554cb8 lea      r8d, [r10 - 1]
0000000140554cbc and      eax, 0xf
0000000140554cbf shl      edx, 7
0000000140554cc2 or       edx, eax
0000000140554cc4 mov      r11d, 0x80000000
0000000140554cca mov      al, byte ptr [rdi + 0x6e]
0000000140554ccd shl      edx, 6
0000000140554cd0 neg      al
0000000140554cd2 mov      al, byte ptr [rdi + 0x6d]
0000000140554cd5 sbb      ecx, ecx
0000000140554cd7 and      ecx, r10d
0000000140554cda or       edx, ecx
0000000140554cdc neg      al
0000000140554cde mov      al, byte ptr [rdi + 0x6f]
0000000140554ce1 sbb      ecx, ecx
0000000140554ce3 and      ecx, r9d
0000000140554ce6 or       edx, ecx
0000000140554ce8 neg      al
0000000140554cea mov      al, byte ptr [rdi + 0x74]
0000000140554ced sbb      ecx, ecx
0000000140554cef and      ecx, ebx
0000000140554cf1 or       edx, ecx
0000000140554cf3 neg      al
0000000140554cf5 mov      eax, dword ptr [rbp - 0x30]
0000000140554cf8 sbb      ecx, ecx
0000000140554cfa and      eax, r8d
0000000140554cfd and      ecx, r11d
0000000140554d00 shl      eax, 0x10
0000000140554d03 or       edx, ecx
0000000140554d05 or       edx, eax
0000000140554d07 mov      dword ptr [r14 + 0x1c], edx
0000000140554d0b movzx    edx, byte ptr [rdi + 0x82]
0000000140554d12 movzx    eax, byte ptr [rdi + 0x90]
0000000140554d19 and      edx, 0x3f
0000000140554d1c and      eax, 7
0000000140554d1f shl      edx, 0xc
0000000140554d22 or       edx, eax
0000000140554d24 mov      al, byte ptr [rdi + 0x7c]
0000000140554d27 shl      edx, 4
0000000140554d2a neg      al
0000000140554d2c mov      al, byte ptr [rdi + 0x7b]
0000000140554d2f sbb      ecx, ecx
0000000140554d31 and      ecx, r10d
0000000140554d34 or       edx, ecx
0000000140554d36 neg      al
0000000140554d38 mov      al, byte ptr [rdi + 0x7e]
0000000140554d3b sbb      ecx, ecx
0000000140554d3d and      ecx, r9d
0000000140554d40 or       edx, ecx
0000000140554d42 neg      al
0000000140554d44 mov      al, byte ptr [rdi + 0x7d]
0000000140554d47 sbb      ecx, ecx
0000000140554d49 and      ecx, ebx
0000000140554d4b or       edx, ecx
0000000140554d4d neg      al
0000000140554d4f mov      al, byte ptr [rdi + 0x83]
0000000140554d55 sbb      ecx, ecx
0000000140554d57 and      ecx, 0x200
0000000140554d5d or       edx, ecx
0000000140554d5f neg      al
0000000140554d61 movzx    eax, byte ptr [rdi + 0x8f]
0000000140554d68 sbb      ecx, ecx
0000000140554d6a and      eax, 0xf
0000000140554d6d and      ecx, 0x400000
0000000140554d73 or       edx, ecx
0000000140554d75 or       edx, eax
0000000140554d77 mov      al, byte ptr [rdi + 0x92]
0000000140554d7d neg      al
0000000140554d7f sbb      ecx, ecx
0000000140554d81 and      ecx, r11d
0000000140554d84 or       edx, ecx
0000000140554d86 mov      dword ptr [rbp - 0x28], edx
0000000140554d89 movzx    eax, word ptr [rdi + 0x84]
0000000140554d90 test     ax, ax
0000000140554d93 je       0x140554d9f
0000000140554d95 dec      ax
0000000140554d98 mov      word ptr [rdi + 0x84], ax
0000000140554d9f movzx    eax, word ptr [rdi + 0x80]
0000000140554da6 lea      rdx, [rbp - 0x38]
0000000140554daa mov      dword ptr [rbp - 0x34], eax
0000000140554dad mov      rcx, rsi
0000000140554db0 mov      dword ptr [rbp - 0x38], r12d
0000000140554db4 mov      dword ptr [rbp - 0x30], r8d
0000000140554db8 mov      rax, qword ptr [r13 + 0x5a0]
0000000140554dbf call     qword ptr [rip + 0x12f533]
0000000140554dc5 mov      r9d, eax
0000000140554dc8 test     eax, eax
0000000140554dca je       0x140554ded
0000000140554dcc mov      rcx, qword ptr [rsi + 0x18]
0000000140554dd0 lea      r8, [rip + 0x10aa19]
0000000140554dd7 mov      edx, 2
0000000140554ddc mov      rax, qword ptr [rcx + 0x118]
0000000140554de3 mov      rcx, qword ptr [rsi + 8]
0000000140554de7 call     qword ptr [rip + 0x12f50b]
0000000140554ded mov      al, byte ptr [rdi + 0x88]
0000000140554df3 mov      r8d, 0x8000
0000000140554df9 movzx    edx, byte ptr [rdi + 0xa0]
0000000140554e00 mov      r9d, 0x80000000
0000000140554e06 shl      edx, 0x1c
0000000140554e09 neg      al
0000000140554e0b mov      al, byte ptr [rdi + 0x87]
0000000140554e11 sbb      ecx, ecx
0000000140554e13 and      ecx, 0x4000
0000000140554e19 or       edx, ecx
0000000140554e1b neg      al
0000000140554e1d mov      al, byte ptr [rdi + 0x91]
0000000140554e23 sbb      ecx, ecx
0000000140554e25 and      ecx, 0x1000
0000000140554e2b or       edx, ecx
0000000140554e2d neg      al
0000000140554e2f mov      al, byte ptr [rdi + 0x89]
0000000140554e35 sbb      ecx, ecx
0000000140554e37 and      ecx, ebx
0000000140554e39 or       edx, ecx
0000000140554e3b neg      al
0000000140554e3d movzx    eax, word ptr [rdi + 0x84]
0000000140554e44 sbb      ecx, ecx
0000000140554e46 and      ecx, r8d
0000000140554e49 or       edx, ecx
0000000140554e4b movzx    ecx, al
0000000140554e4e or       edx, ecx
0000000140554e50 mov      eax, dword ptr [rbp - 0x30]
0000000140554e53 and      eax, 0xfff
0000000140554e58 shl      eax, 0x10
0000000140554e5b or       edx, eax
0000000140554e5d movzx    eax, byte ptr [rdi + 0x93]
0000000140554e64 mov      dword ptr [rbp - 0x24], edx
0000000140554e67 and      eax, 7
0000000140554e6a movzx    edx, byte ptr [rdi + 0x86]
0000000140554e71 and      edx, 7
0000000140554e74 shl      edx, 5
0000000140554e77 or       edx, eax
0000000140554e79 mov      al, byte ptr [rdi + 0x9e]
0000000140554e7f shl      edx, 0xd
0000000140554e82 neg      al
0000000140554e84 mov      al, byte ptr [rdi + 0x78]
0000000140554e87 sbb      ecx, ecx
0000000140554e89 and      ecx, 0x40000000
0000000140554e8f or       edx, ecx
0000000140554e91 neg      al
0000000140554e93 mov      al, byte ptr [rdi + 0x9c]
0000000140554e99 sbb      ecx, ecx
0000000140554e9b and      ecx, ebx
0000000140554e9d or       edx, ecx
0000000140554e9f neg      al
0000000140554ea1 movzx    eax, byte ptr [rdi + 0x8a]
0000000140554ea8 sbb      ecx, ecx
0000000140554eaa and      ecx, r9d
0000000140554ead or       edx, ecx
0000000140554eaf or       edx, eax
0000000140554eb1 mov      al, byte ptr [rdi + 0x9d]
0000000140554eb7 neg      al
0000000140554eb9 mov      dword ptr [rbp - 0x20], edx
0000000140554ebc mov      al, byte ptr [rdi + 0x9f]
0000000140554ec2 sbb      edx, edx
0000000140554ec4 and      edx, 0x200
0000000140554eca neg      al
0000000140554ecc movzx    eax, byte ptr [rdi + 0xa8]
0000000140554ed3 sbb      ecx, ecx
0000000140554ed5 and      eax, 3
0000000140554ed8 and      ecx, r8d
0000000140554edb or       edx, ecx
0000000140554edd mov      dword ptr [rbp - 0x1c], edx
0000000140554ee0 movzx    edx, byte ptr [rdi + 0x8d]
0000000140554ee7 and      edx, 3
0000000140554eea shl      edx, 8
0000000140554eed or       edx, eax
0000000140554eef movzx    eax, byte ptr [rdi + 0x96]
0000000140554ef6 and      eax, 3
0000000140554ef9 shl      edx, 5
0000000140554efc or       edx, eax
0000000140554efe mov      al, byte ptr [rdi + 0x8c]
0000000140554f04 shl      edx, 0x10
0000000140554f07 neg      al
0000000140554f09 sbb      ecx, ecx
0000000140554f0b mov      al, byte ptr [rdi + 0x8b]
0000000140554f11 and      ecx, 0x10000000
0000000140554f17 or       edx, ecx
0000000140554f19 mov      qword ptr [rbp - 0x10], r12
0000000140554f1d neg      al
0000000140554f1f mov      al, byte ptr [rdi + 0xa7]
0000000140554f25 sbb      ecx, ecx
0000000140554f27 and      ecx, 0x8000000
0000000140554f2d or       edx, ecx
0000000140554f2f neg      al
0000000140554f31 mov      al, byte ptr [rdi + 0xa1]
0000000140554f37 sbb      ecx, ecx
0000000140554f39 and      ecx, 0x100000
0000000140554f3f or       edx, ecx
0000000140554f41 neg      al
0000000140554f43 mov      al, byte ptr [rdi + 0x8e]
0000000140554f49 sbb      ecx, ecx
0000000140554f4b and      ecx, 0x40000
0000000140554f51 or       edx, ecx
0000000140554f53 neg      al
0000000140554f55 movzx    eax, word ptr [rdi + 0x98]
0000000140554f5c sbb      ecx, ecx
0000000140554f5e and      ecx, r9d
0000000140554f61 or       edx, ecx
0000000140554f63 or       edx, eax
0000000140554f65 mov      al, byte ptr [rdi + 0xa2]
0000000140554f6b neg      al
0000000140554f6d mov      dword ptr [rbp - 0x18], edx
0000000140554f70 movzx    eax, word ptr [rdi + 0xa4]
0000000140554f77 sbb      ecx, ecx
0000000140554f79 and      eax, 0x1f
0000000140554f7c and      ecx, 0x20
0000000140554f7f or       ecx, eax
0000000140554f81 mov      dword ptr [rbp - 0x14], ecx
0000000140554f84 cmp      byte ptr [rdi + 0x59], r12b
0000000140554f88 je       0x140554fb6
0000000140554f8a mov      rax, qword ptr [rsi + 0x18]
0000000140554f8e lea      r8, [rbp - 0x28]
0000000140554f92 movzx    edx, byte ptr [r15 + 0xe2]
0000000140554f9a movzx    r9d, byte ptr [r15 + 0xe3]
0000000140554fa2 add      rdx, r14
0000000140554fa5 mov      rcx, qword ptr [rsi + 8]
0000000140554fa9 mov      rax, qword ptr [rax + 0xa0]
0000000140554fb0 call     qword ptr [rip + 0x12f342]
0000000140554fb6 mov      rax, qword ptr [rsi + 0x140]
0000000140554fbd cmp      byte ptr [rax + 0xf1], r12b
0000000140554fc4 je       0x140554fd4
0000000140554fc6 mov      r8, r14
0000000140554fc9 mov      rdx, rdi
0000000140554fcc mov      rcx, rsi
0000000140554fcf call     0x140520338
0000000140554fd4 xor      eax, eax
0000000140554fd6 jmp      0x140555001
0000000140554fd8 mov      rax, qword ptr [rsi + 0x18]
0000000140554fdc lea      r8, [rip + 0x10a7ed]
0000000140554fe3 mov      r9d, ecx
0000000140554fe6 mov      edx, 2
0000000140554feb mov      rcx, qword ptr [rsi + 8]
0000000140554fef mov      rax, qword ptr [rax + 0x118]
0000000140554ff6 call     qword ptr [rip + 0x12f2fc]
0000000140554ffc mov      eax, 0x2e
0000000140555001 mov      rcx, qword ptr [rbp - 8]
0000000140555005 xor      rcx, rsp
0000000140555008 call     0x1405f45b0
000000014055500d mov      rbx, qword ptr [rsp + 0xc8]
0000000140555015 add      rsp, 0x70
0000000140555019 pop      r15
000000014055501b pop      r14
000000014055501d pop      r13
000000014055501f pop      r12
0000000140555021 pop      rdi
0000000140555022 pop      rsi
0000000140555023 pop      rbp
0000000140555024 ret      