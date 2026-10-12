0000000140019920 mov      qword ptr [rsp + 0x18], rbx
0000000140019925 mov      dword ptr [rsp + 0x20], r9d
000000014001992a mov      dword ptr [rsp + 0x10], edx
000000014001992e push     rbp
000000014001992f push     rsi
0000000140019930 push     rdi
0000000140019931 push     r12
0000000140019933 push     r13
0000000140019935 push     r14
0000000140019937 push     r15
0000000140019939 mov      rbp, rsp
000000014001993c sub      rsp, 0x80
0000000140019943 mov      r13, qword ptr [rcx + 0xaf280]
000000014001994a mov      esi, r9d
000000014001994d mov      qword ptr [rbp - 0x20], r13
0000000140019951 mov      r14, r8
0000000140019954 mov      rdi, rcx
0000000140019957 xor      r12d, r12d
000000014001995a mov      rcx, qword ptr [rip + 0x90669f]
0000000140019961 lea      r9, [rip + 0x906698]
0000000140019968 lea      r15d, [r12 + 8]
000000014001996d lea      r10, [rip + 0x66d224]
0000000140019974 cmp      rcx, r9
0000000140019977 je       0x1400199a3
0000000140019979 mov      eax, dword ptr [rcx + 0x2c]
000000014001997c test     r15b, al
000000014001997f je       0x1400199a3
0000000140019981 mov      rcx, qword ptr [rcx + 0x18]
0000000140019985 mov      edx, 0x137
000000014001998a mov      r8, r10
000000014001998d call     0x140001b88
0000000140019992 mov      edx, dword ptr [rbp + 0x48]
0000000140019995 lea      r9, [rip + 0x906664]
000000014001999c lea      r10, [rip + 0x66d1f5]
00000001400199a3 mov      rax, qword ptr [rbp + 0x60]
00000001400199a7 mov      ebx, 4
00000001400199ac mov      r8, qword ptr [rbp + 0x68]
00000001400199b0 mov      dword ptr [rax], r12d
00000001400199b3 mov      eax, 0xff01030a
00000001400199b8 mov      dword ptr [r8], r12d
00000001400199bb cmp      edx, eax
00000001400199bd ja       0x140019c35
00000001400199c3 je       0x140019b59
00000001400199c9 cmp      edx, 0xd010113
00000001400199cf je       0x14001adea
00000001400199d5 cmp      edx, 0xd010114
00000001400199db je       0x14001ad56
00000001400199e1 cmp      edx, 0xd010118
00000001400199e7 je       0x14001ab4d
00000001400199ed cmp      edx, 0xd01011b
00000001400199f3 je       0x14001a684
00000001400199f9 cmp      edx, 0xd01011d
00000001400199ff je       0x140019e32
0000000140019a05 cmp      edx, 0xd01011e
0000000140019a0b je       0x140019d88
0000000140019a11 cmp      edx, 0xd01011f
0000000140019a17 je       0x140019c9c
0000000140019a1d cmp      edx, 0xff010309
0000000140019a23 jne      0x140019c91
0000000140019a29 mov      rcx, qword ptr [rip + 0x9065d0]
0000000140019a30 cmp      rcx, r9
0000000140019a33 je       0x140019a5a
0000000140019a35 cmp      byte ptr [rcx + 0x29], bl
0000000140019a38 jb       0x140019a5a
0000000140019a3a mov      eax, dword ptr [rcx + 0x2c]
0000000140019a3d test     r15b, al
0000000140019a40 je       0x140019a5a
0000000140019a42 mov      rcx, qword ptr [rcx + 0x18]
0000000140019a46 mov      edx, 0x174
0000000140019a4b mov      r8, r10
0000000140019a4e call     0x140001b88
0000000140019a53 lea      r9, [rip + 0x9065a6]
0000000140019a5a cmp      esi, 0x44
0000000140019a5d jb       0x140019a98
0000000140019a5f mov      r8d, dword ptr [r14]
0000000140019a62 cmp      r8d, 0x40
0000000140019a66 jbe      0x140019aac
0000000140019a68 mov      rcx, qword ptr [rip + 0x906591]
0000000140019a6f cmp      rcx, r9
0000000140019a72 je       0x140019a98
0000000140019a74 cmp      byte ptr [rcx + 0x29], bl
0000000140019a77 jb       0x140019a98
0000000140019a79 bt       dword ptr [rcx + 0x2c], 0xb
0000000140019a7e jae      0x140019a98
0000000140019a80 mov      rcx, qword ptr [rcx + 0x18]
0000000140019a84 mov      r9d, r8d
0000000140019a87 lea      r8, [rip + 0x66d10a]
0000000140019a8e mov      edx, 0x175
0000000140019a93 call     0x140001bb0
0000000140019a98 mov      rax, qword ptr [rbp + 0x68]
0000000140019a9c mov      dword ptr [rax], 0x44
0000000140019aa2 mov      eax, 0xc0010014
0000000140019aa7 jmp      0x14001b0d5
0000000140019aac lea      r13, [rdi + 0x114c5c]
0000000140019ab3 mov      dword ptr [rdi + 0x114c9c], r8d
0000000140019aba mov      rcx, r13
0000000140019abd lea      rdx, [r14 + 4]
0000000140019ac1 call     0x1400311e8
0000000140019ac6 test     r13, r13
0000000140019ac9 je       0x140019b23
0000000140019acb mov      rcx, qword ptr [rip + 0x90652e]
0000000140019ad2 lea      r14, [rip + 0x906527]
0000000140019ad9 cmp      rcx, r14
0000000140019adc je       0x14001b0d2
0000000140019ae2 cmp      byte ptr [rcx + 0x29], bl
0000000140019ae5 jb       0x140019b2a
0000000140019ae7 bt       dword ptr [rcx + 0x2c], 0xb
0000000140019aec jae      0x140019b2a
0000000140019aee mov      eax, dword ptr [rdi + 0x114c9c]
0000000140019af4 lea      r9, [rip + 0x5dc2e5]
0000000140019afb mov      rcx, qword ptr [rcx + 0x18]
0000000140019aff lea      r8, [rip + 0x66d092]
0000000140019b06 mov      qword ptr [rbp - 8], rax
0000000140019b0a mov      edx, 0x176
0000000140019b0f lea      rax, [rbp - 0x10]
0000000140019b13 mov      qword ptr [rbp - 0x10], r13
0000000140019b17 mov      qword ptr [rsp + 0x20], rax
0000000140019b1c call     0x140001c88
0000000140019b21 jmp      0x140019b2a
0000000140019b23 lea      r14, [rip + 0x9064d6]
0000000140019b2a mov      rcx, qword ptr [rip + 0x9064cf]
0000000140019b31 cmp      rcx, r14
0000000140019b34 je       0x14001b0d2
0000000140019b3a cmp      byte ptr [rcx + 0x29], bl
0000000140019b3d jb       0x14001b0d2
0000000140019b43 mov      eax, dword ptr [rcx + 0x2c]
0000000140019b46 test     r15b, al
0000000140019b49 je       0x14001b0d2
0000000140019b4f mov      edx, 0x177
0000000140019b54 jmp      0x14001b0c2
0000000140019b59 mov      rcx, qword ptr [rip + 0x9064a0]
0000000140019b60 cmp      rcx, r9
0000000140019b63 je       0x140019b87
0000000140019b65 cmp      byte ptr [rcx + 0x29], bl
0000000140019b68 jb       0x140019b87
0000000140019b6a mov      eax, dword ptr [rcx + 0x2c]
0000000140019b6d test     r15b, al
0000000140019b70 je       0x140019b87
0000000140019b72 mov      rcx, qword ptr [rcx + 0x18]
0000000140019b76 mov      edx, 0x178
0000000140019b7b mov      r8, r10
0000000140019b7e call     0x140001b88
0000000140019b83 mov      r8, qword ptr [rbp + 0x68]
0000000140019b87 cmp      esi, ebx
0000000140019b89 jb       0x14001ad4e
0000000140019b8f lea      rsi, [rdi + 0x114d00]
0000000140019b96 mov      r8d, ebx
0000000140019b99 mov      rcx, rsi
0000000140019b9c mov      rdx, r14
0000000140019b9f call     0x1400311e8
0000000140019ba4 mov      rcx, qword ptr [rip + 0x906455]
0000000140019bab lea      r14, [rip + 0x90644e]
0000000140019bb2 cmp      rcx, r14
0000000140019bb5 je       0x14001b0d2
0000000140019bbb cmp      byte ptr [rcx + 0x29], bl
0000000140019bbe jb       0x140019c06
0000000140019bc0 mov      eax, dword ptr [rcx + 0x2c]
0000000140019bc3 test     r15b, al
0000000140019bc6 je       0x140019c06
0000000140019bc8 movzx    r8d, byte ptr [rdi + 0x114d02]
0000000140019bd0 mov      edx, 0x179
0000000140019bd5 movzx    eax, byte ptr [rdi + 0x114d03]
0000000140019bdc movzx    r10d, byte ptr [rdi + 0x114d01]
0000000140019be4 movzx    r9d, byte ptr [rsi]
0000000140019be8 mov      rcx, qword ptr [rcx + 0x18]
0000000140019bec mov      dword ptr [rsp + 0x30], eax
0000000140019bf0 mov      dword ptr [rsp + 0x28], r8d
0000000140019bf5 lea      r8, [rip + 0x66cf9c]
0000000140019bfc mov      dword ptr [rsp + 0x20], r10d
0000000140019c01 call     0x140008794
0000000140019c06 mov      rcx, qword ptr [rip + 0x9063f3]
0000000140019c0d cmp      rcx, r14
0000000140019c10 je       0x14001b0d2
0000000140019c16 cmp      byte ptr [rcx + 0x29], bl
0000000140019c19 jb       0x14001b0d2
0000000140019c1f mov      eax, dword ptr [rcx + 0x2c]
0000000140019c22 test     r15b, al
0000000140019c25 je       0x14001b0d2
0000000140019c2b mov      edx, 0x17a
0000000140019c30 jmp      0x14001b0c2
0000000140019c35 cmp      edx, 0xff030004
0000000140019c3b je       0x14001b049
0000000140019c41 cmp      edx, 0xff070113
0000000140019c47 je       0x14001adea
0000000140019c4d cmp      edx, 0xff070114
0000000140019c53 je       0x14001ad56
0000000140019c59 cmp      edx, 0xff070118
0000000140019c5f je       0x14001ab4d
0000000140019c65 cmp      edx, 0xff07011b
0000000140019c6b je       0x14001a684
0000000140019c71 cmp      edx, 0xff07011d
0000000140019c77 je       0x140019e32
0000000140019c7d cmp      edx, 0xff07011e
0000000140019c83 je       0x140019d88
0000000140019c89 cmp      edx, 0xff07011f
0000000140019c8f je       0x140019c9c
0000000140019c91 mov      r12d, 0x10001
0000000140019c97 jmp      0x14001b0d2
0000000140019c9c mov      rcx, qword ptr [rip + 0x90635d]
0000000140019ca3 cmp      rcx, r9
0000000140019ca6 je       0x140019cc7
0000000140019ca8 cmp      byte ptr [rcx + 0x29], 3
0000000140019cac jb       0x140019cc7
0000000140019cae mov      eax, dword ptr [rcx + 0x2c]
0000000140019cb1 test     r15b, al
0000000140019cb4 je       0x140019cc7
0000000140019cb6 mov      rcx, qword ptr [rcx + 0x18]
0000000140019cba mov      edx, 0x16b
0000000140019cbf mov      r8, r10
0000000140019cc2 call     0x140001b88
0000000140019cc7 test     r14, r14
0000000140019cca je       0x140019aa2
0000000140019cd0 cmp      esi, ebx
0000000140019cd2 jb       0x140019aa2
0000000140019cd8 mov      r8d, dword ptr [r14 + 0x10]
0000000140019cdc lea      eax, [r8 - 3]
0000000140019ce0 cmp      eax, 0xff
0000000140019ce5 ja       0x140019aa2
0000000140019ceb test     r8d, r8d
0000000140019cee je       0x140019d7d
0000000140019cf4 mov      edx, dword ptr [r14 + 0x14]
0000000140019cf8 add      r8d, -2
0000000140019cfc mov      rcx, qword ptr [rdi + 0xc15b0]
0000000140019d03 add      rdx, 2
0000000140019d07 add      rdx, r14
0000000140019d0a call     0x1400311e8
0000000140019d0f movzx    edx, byte ptr [r14 + 0x10]
0000000140019d14 mov      r8, qword ptr [rdi + 0xc15b0]
0000000140019d1b sub      dx, 2
0000000140019d1f mov      word ptr [rdi + 0xc15b8], dx
0000000140019d26 test     r8, r8
0000000140019d29 je       0x140019d7d
0000000140019d2b mov      rcx, qword ptr [rip + 0x9062ce]
0000000140019d32 lea      r14, [rip + 0x9062c7]
0000000140019d39 cmp      rcx, r14
0000000140019d3c je       0x140019d7d
0000000140019d3e cmp      byte ptr [rcx + 0x29], bl
0000000140019d41 jb       0x140019d7d
0000000140019d43 bt       dword ptr [rcx + 0x2c], 0xb
0000000140019d48 jae      0x140019d7a
0000000140019d4a mov      rcx, qword ptr [rcx + 0x18]
0000000140019d4e lea      r9, [rip + 0x5dc06b]
0000000140019d55 movzx    eax, dx
0000000140019d58 mov      edx, 0x16c
0000000140019d5d mov      qword ptr [rbp - 8], rax
0000000140019d61 lea      rax, [rbp - 0x10]
0000000140019d65 mov      qword ptr [rbp - 0x10], r8
0000000140019d69 lea      r8, [rip + 0x66ce28]
0000000140019d70 mov      qword ptr [rsp + 0x20], rax
0000000140019d75 call     0x140001c88
0000000140019d7a mov      esi, dword ptr [rbp + 0x58]
0000000140019d7d mov      rax, qword ptr [rbp + 0x60]
0000000140019d81 mov      dword ptr [rax], esi
0000000140019d83 jmp      0x14001b0d2
0000000140019d88 mov      rcx, qword ptr [rip + 0x906271]
0000000140019d8f cmp      rcx, r9
0000000140019d92 je       0x140019dba
0000000140019d94 cmp      byte ptr [rcx + 0x29], 3
0000000140019d98 jb       0x140019dba
0000000140019d9a mov      eax, dword ptr [rcx + 0x2c]
0000000140019d9d test     r15b, al
0000000140019da0 je       0x140019dba
0000000140019da2 mov      rcx, qword ptr [rcx + 0x18]
0000000140019da6 mov      edx, 0x15f
0000000140019dab mov      r8, r10
0000000140019dae call     0x140001b88
0000000140019db3 lea      r9, [rip + 0x906246]
0000000140019dba mov      esi, dword ptr [r14 + 4]
0000000140019dbe shr      esi, 0x1a
0000000140019dc1 not      sil
0000000140019dc4 and      sil, 1
0000000140019dc8 je       0x140019dd3
0000000140019dca mov      r13d, dword ptr [rdi + 0xc0ba4]
0000000140019dd1 jmp      0x140019dda
0000000140019dd3 mov      r13d, dword ptr [rdi + 0xc0ba0]
0000000140019dda mov      rcx, qword ptr [rip + 0x90621f]
0000000140019de1 cmp      rcx, r9
0000000140019de4 je       0x140019e08
0000000140019de6 cmp      byte ptr [rcx + 0x29], bl
0000000140019de9 jb       0x140019e08
0000000140019deb mov      eax, dword ptr [rcx + 0x2c]
0000000140019dee test     r15b, al
0000000140019df1 je       0x140019e08
0000000140019df3 mov      rcx, qword ptr [rcx + 0x18]
0000000140019df7 lea      r8, [rip + 0x66cd9a]
0000000140019dfe mov      edx, 0x160
0000000140019e03 call     0x140001b88
0000000140019e08 mov      r8d, dword ptr [r14 + 4]
0000000140019e0c test     r8d, 0xbffffffc
0000000140019e13 jne      0x14001b03f
0000000140019e19 lea      r9, [r14 + 8]
0000000140019e1d mov      byte ptr [rsp + 0x20], sil
0000000140019e22 mov      edx, r13d
0000000140019e25 mov      rcx, rdi
0000000140019e28 call     0x1400a3fa8
0000000140019e2d jmp      0x14001b0d2
0000000140019e32 mov      rcx, qword ptr [rip + 0x9061c7]
0000000140019e39 cmp      rcx, r9
0000000140019e3c je       0x140019e64
0000000140019e3e cmp      byte ptr [rcx + 0x29], 3
0000000140019e42 jb       0x140019e64
0000000140019e44 mov      eax, dword ptr [rcx + 0x2c]
0000000140019e47 test     r15b, al
0000000140019e4a je       0x140019e64
0000000140019e4c mov      rcx, qword ptr [rcx + 0x18]
0000000140019e50 mov      edx, 0x138
0000000140019e55 mov      r8, r10
0000000140019e58 call     0x140001b88
0000000140019e5d lea      r9, [rip + 0x90619c]
0000000140019e64 mov      byte ptr [rbp + 0x40], r12b
0000000140019e68 mov      rcx, qword ptr [rip + 0x906191]
0000000140019e6f cmp      rcx, r9
0000000140019e72 je       0x140019ea0
0000000140019e74 cmp      byte ptr [rcx + 0x29], bl
0000000140019e77 jb       0x140019ea0
0000000140019e79 mov      eax, dword ptr [rcx + 0x2c]
0000000140019e7c test     r15b, al
0000000140019e7f je       0x140019ea0
0000000140019e81 mov      r9d, dword ptr [r14]
0000000140019e84 lea      r8, [rip + 0x66cd0d]
0000000140019e8b mov      rcx, qword ptr [rcx + 0x18]
0000000140019e8f mov      edx, 0x139
0000000140019e94 call     0x140001bb0
0000000140019e99 lea      r9, [rip + 0x906160]
0000000140019ea0 mov      r13d, 5
0000000140019ea6 test     r14, r14
0000000140019ea9 je       0x140019ef5
0000000140019eab mov      rcx, qword ptr [rip + 0x90614e]
0000000140019eb2 cmp      rcx, r9
0000000140019eb5 je       0x140019ef5
0000000140019eb7 cmp      byte ptr [rcx + 0x29], r13b
0000000140019ebb jb       0x140019ef5
0000000140019ebd mov      eax, dword ptr [rcx + 0x2c]
0000000140019ec0 test     r15b, al
0000000140019ec3 je       0x140019ef5
0000000140019ec5 mov      eax, dword ptr [r14]
0000000140019ec8 lea      r9, [rip + 0x5dbeb1]
0000000140019ecf mov      rcx, qword ptr [rcx + 0x18]
0000000140019ed3 lea      r8, [rip + 0x66ccbe]
0000000140019eda mov      qword ptr [rbp - 8], rax
0000000140019ede mov      edx, 0x13a
0000000140019ee3 lea      rax, [rbp - 0x10]
0000000140019ee7 mov      qword ptr [rbp - 0x10], r14
0000000140019eeb mov      qword ptr [rsp + 0x20], rax
0000000140019ef0 call     0x140001c88
0000000140019ef5 cmp      dword ptr [r14 + 4], 0xc0000001
0000000140019efd jne      0x140019f51
0000000140019eff mov      rcx, qword ptr [rip + 0x9060fa]
0000000140019f06 lea      rax, [rip + 0x9060f3]
0000000140019f0d cmp      rcx, rax
0000000140019f10 je       0x140019f33
0000000140019f12 cmp      byte ptr [rcx + 0x29], bl
0000000140019f15 jb       0x140019f33
0000000140019f17 bt       dword ptr [rcx + 0x2c], 0xb
0000000140019f1c jae      0x140019f33
0000000140019f1e mov      rcx, qword ptr [rcx + 0x18]
0000000140019f22 lea      r8, [rip + 0x66cc6f]
0000000140019f29 mov      edx, 0x13b
0000000140019f2e call     0x140001b88
0000000140019f33 mov      rdx, qword ptr [rbp - 0x20]
0000000140019f37 mov      rcx, rdi
0000000140019f3a mov      eax, dword ptr [rdx + 0x74]
0000000140019f3d mov      dword ptr [rdx + 0x68], eax
0000000140019f40 mov      eax, dword ptr [rdx + 0x78]
0000000140019f43 mov      dword ptr [rdx + 0x6c], eax
0000000140019f46 mov      eax, dword ptr [rdx + 0x7c]
0000000140019f49 mov      dword ptr [rdx + 0x70], eax
0000000140019f4c call     0x14000df38
0000000140019f51 test     dword ptr [r14 + 4], 0x40000000
0000000140019f59 je       0x14001a306
0000000140019f5f mov      rcx, qword ptr [rip + 0x90609a]
0000000140019f66 lea      rdx, [rip + 0x906093]
0000000140019f6d cmp      rcx, rdx
0000000140019f70 je       0x140019f9a
0000000140019f72 cmp      byte ptr [rcx + 0x29], bl
0000000140019f75 jb       0x140019f9a
0000000140019f77 bt       dword ptr [rcx + 0x2c], 0xb
0000000140019f7c jae      0x140019f9a
0000000140019f7e mov      rcx, qword ptr [rcx + 0x18]
0000000140019f82 lea      r8, [rip + 0x66cc0f]
0000000140019f89 mov      edx, 0x13c
0000000140019f8e call     0x140001b88
0000000140019f93 lea      rdx, [rip + 0x906066]
0000000140019f9a mov      eax, dword ptr [r14 + 4]
0000000140019f9e test     eax, eax
0000000140019fa0 js       0x140019fd0
0000000140019fa2 mov      rcx, qword ptr [rip + 0x906057]
0000000140019fa9 cmp      rcx, rdx
0000000140019fac je       0x14001b03f
0000000140019fb2 cmp      byte ptr [rcx + 0x29], bl
0000000140019fb5 jb       0x14001b03f
0000000140019fbb bt       dword ptr [rcx + 0x2c], 0xb
0000000140019fc0 jae      0x14001b03f
0000000140019fc6 mov      edx, 0x13d
0000000140019fcb jmp      0x14001a379
0000000140019fd0 test     eax, 0xfffffff
0000000140019fd5 je       0x14001a005
0000000140019fd7 mov      rcx, qword ptr [rip + 0x906022]
0000000140019fde cmp      rcx, rdx
0000000140019fe1 je       0x14001b03f
0000000140019fe7 cmp      byte ptr [rcx + 0x29], bl
0000000140019fea jb       0x14001b03f
0000000140019ff0 bt       dword ptr [rcx + 0x2c], 0xb
0000000140019ff5 jae      0x14001b03f
0000000140019ffb mov      edx, 0x13e
000000014001a000 jmp      0x14001a379
000000014001a005 lea      rcx, [r14 + 0xc]
000000014001a009 call     0x14007de44
000000014001a00e test     al, al
000000014001a010 je       0x14001a047
000000014001a012 mov      rcx, qword ptr [rip + 0x905fe7]
000000014001a019 lea      rax, [rip + 0x905fe0]
000000014001a020 cmp      rcx, rax
000000014001a023 je       0x14001b03f
000000014001a029 cmp      byte ptr [rcx + 0x29], bl
000000014001a02c jb       0x14001b03f
000000014001a032 bt       dword ptr [rcx + 0x2c], 0xb
000000014001a037 jae      0x14001b03f
000000014001a03d mov      edx, 0x13f
000000014001a042 jmp      0x14001a379
000000014001a047 mov      eax, dword ptr [rdi + 0xc0ba0]
000000014001a04d mov      r8d, 0x10
000000014001a053 cmp      eax, 2
000000014001a056 jne      0x14001a097
000000014001a058 mov      r9d, dword ptr [r14 + 8]
000000014001a05c cmp      r9d, 0x20
000000014001a060 je       0x14001a0b1
000000014001a062 mov      rcx, qword ptr [rip + 0x905f97]
000000014001a069 lea      rax, [rip + 0x905f90]
000000014001a070 cmp      rcx, rax
000000014001a073 je       0x14001b03f
000000014001a079 cmp      byte ptr [rcx + 0x29], bl
000000014001a07c jb       0x14001b03f
000000014001a082 bt       dword ptr [rcx + 0x2c], 0xb
000000014001a087 jae      0x14001b03f
000000014001a08d mov      edx, 0x140
000000014001a092 jmp      0x14001a66f
000000014001a097 cmp      eax, ebx
000000014001a099 jne      0x14001a0b1
000000014001a09b mov      eax, dword ptr [r14 + 8]
000000014001a09f cmp      eax, r8d
000000014001a0a2 je       0x14001a0b1
000000014001a0a4 cmp      eax, 0x20
000000014001a0a7 jne      0x14001b03f
000000014001a0ad mov      dword ptr [r14 + 8], r8d
000000014001a0b1 mov      eax, dword ptr [rdi + 0xc0ba0]
000000014001a0b7 mov      dword ptr [rbp + 0x60], eax
000000014001a0ba cmp      eax, r15d
000000014001a0bd jne      0x14001a2b6
000000014001a0c3 mov      r9d, dword ptr [r14 + 8]
000000014001a0c7 cmp      r9d, r13d
000000014001a0ca jne      0x14001a2d1
000000014001a0d0 mov      byte ptr [rbp + 0x68], r12b
000000014001a0d4 mov      rcx, qword ptr [rip + 0x905f25]
000000014001a0db lea      r15, [rip + 0x905f1e]
000000014001a0e2 cmp      rcx, r15
000000014001a0e5 je       0x14001a1d0
000000014001a0eb cmp      byte ptr [rcx + 0x29], bl
000000014001a0ee jb       0x14001a10c
000000014001a0f0 bt       dword ptr [rcx + 0x2c], 0xb
000000014001a0f5 jae      0x14001a10c
000000014001a0f7 mov      rcx, qword ptr [rcx + 0x18]
000000014001a0fb lea      r8, [rip + 0x66ca96]
000000014001a102 mov      edx, 0x142
000000014001a107 call     0x140001b88
000000014001a10c mov      rcx, qword ptr [rip + 0x905eed]
000000014001a113 cmp      rcx, r15
000000014001a116 je       0x14001a1d0
000000014001a11c cmp      byte ptr [rcx + 0x29], bl
000000014001a11f jb       0x14001a13d
000000014001a121 bt       dword ptr [rcx + 0x2c], 0xb
000000014001a126 jae      0x14001a13d
000000014001a128 mov      rcx, qword ptr [rcx + 0x18]
000000014001a12c lea      r8, [rip + 0x66ca65]
000000014001a133 mov      edx, 0x143
000000014001a138 call     0x140001b88
000000014001a13d mov      rcx, qword ptr [rip + 0x905ebc]
000000014001a144 cmp      rcx, r15
000000014001a147 je       0x14001a1d0
000000014001a14d cmp      byte ptr [rcx + 0x29], bl
000000014001a150 jb       0x14001a16e
000000014001a152 bt       dword ptr [rcx + 0x2c], 0xb
000000014001a157 jae      0x14001a16e
000000014001a159 mov      rcx, qword ptr [rcx + 0x18]
000000014001a15d lea      r8, [rip + 0x66ca34]
000000014001a164 mov      edx, 0x144
000000014001a169 call     0x140001b88
000000014001a16e mov      rcx, qword ptr [rip + 0x905e8b]
000000014001a175 cmp      rcx, r15
000000014001a178 je       0x14001a1d0
000000014001a17a cmp      byte ptr [rcx + 0x29], bl
000000014001a17d jb       0x14001a19f
000000014001a17f bt       dword ptr [rcx + 0x2c], 0xb
000000014001a184 jae      0x14001a19f
000000014001a186 mov      r9d, dword ptr [r14 + 4]
000000014001a18a lea      r8, [rip + 0x66ca07]
000000014001a191 mov      rcx, qword ptr [rcx + 0x18]
000000014001a195 mov      edx, 0x145
000000014001a19a call     0x140001bb0
000000014001a19f mov      rcx, qword ptr [rip + 0x905e5a]
000000014001a1a6 cmp      rcx, r15
000000014001a1a9 je       0x14001a1d0
000000014001a1ab cmp      byte ptr [rcx + 0x29], bl
000000014001a1ae jb       0x14001a1d0
000000014001a1b0 bt       dword ptr [rcx + 0x2c], 0xb
000000014001a1b5 jae      0x14001a1d0
000000014001a1b7 mov      r9d, dword ptr [r14 + 8]
000000014001a1bb lea      r8, [rip + 0x66c9d6]
000000014001a1c2 mov      rcx, qword ptr [rcx + 0x18]
000000014001a1c6 mov      edx, 0x146
000000014001a1cb call     0x140001bb0
000000014001a1d0 lea      rdx, [r14 + 0x20]
000000014001a1d4 test     rdx, rdx
000000014001a1d7 je       0x14001a222
000000014001a1d9 mov      rcx, qword ptr [rip + 0x905e20]
000000014001a1e0 cmp      rcx, r15
000000014001a1e3 je       0x14001a24f
000000014001a1e5 cmp      byte ptr [rcx + 0x29], bl
000000014001a1e8 jb       0x14001a222
000000014001a1ea bt       dword ptr [rcx + 0x2c], 0xb
000000014001a1ef jae      0x14001a222
000000014001a1f1 mov      eax, dword ptr [r14 + 8]
000000014001a1f5 lea      r9, [rip + 0x5dbbb4]
000000014001a1fc mov      rcx, qword ptr [rcx + 0x18]
000000014001a200 lea      r8, [rip + 0x66c991]
000000014001a207 mov      qword ptr [rbp - 8], rax
000000014001a20b lea      rax, [rbp - 0x10]
000000014001a20f mov      qword ptr [rbp - 0x10], rdx
000000014001a213 mov      edx, 0x147
000000014001a218 mov      qword ptr [rsp + 0x20], rax
000000014001a21d call     0x140001c88
000000014001a222 mov      rcx, qword ptr [rip + 0x905dd7]
000000014001a229 cmp      rcx, r15
000000014001a22c je       0x14001a24f
000000014001a22e cmp      byte ptr [rcx + 0x29], bl
000000014001a231 jb       0x14001a24f
000000014001a233 bt       dword ptr [rcx + 0x2c], 0xb
000000014001a238 jae      0x14001a24f
000000014001a23a mov      rcx, qword ptr [rcx + 0x18]
000000014001a23e lea      r8, [rip + 0x66c953]
000000014001a245 mov      edx, 0x148
000000014001a24a call     0x140001b88
000000014001a24f mov      r13d, dword ptr [rbp + 0x60]
000000014001a253 mov      r15d, 2
000000014001a259 mov      rax, qword ptr [r14 + 0x18]
000000014001a25d lea      r8, [r14 + 0x20]
000000014001a261 mov      r9d, dword ptr [rbp + 0x68]
000000014001a265 lea      rcx, [r14 + 0xc]
000000014001a269 mov      dword ptr [rsp + 0x58], r12d
000000014001a26e mov      edx, r13d
000000014001a271 mov      dword ptr [rsp + 0x50], r15d
000000014001a276 mov      dword ptr [rsp + 0x48], r12d
000000014001a27b mov      qword ptr [rsp + 0x40], rax
000000014001a280 mov      eax, dword ptr [rbp + 0x40]
000000014001a283 mov      byte ptr [rsp + 0x38], r9b
000000014001a288 mov      r9d, dword ptr [r14 + 8]
000000014001a28c mov      byte ptr [rsp + 0x30], al
000000014001a290 mov      qword ptr [rsp + 0x28], rcx
000000014001a295 mov      rcx, rdi
000000014001a298 mov      qword ptr [rsp + 0x20], r8
000000014001a29d mov      r8d, dword ptr [r14 + 4]
000000014001a2a1 call     0x1400a2944
000000014001a2a6 neg      al
000000014001a2a8 sbb      eax, eax
000000014001a2aa not      eax
000000014001a2ac and      eax, 0xc0010015
000000014001a2b1 jmp      0x14001b0d5
000000014001a2b6 cmp      eax, r8d
000000014001a2b9 jne      0x14001a0d0
000000014001a2bf mov      r9d, dword ptr [r14 + 8]
000000014001a2c3 mov      eax, 0xd
000000014001a2c8 cmp      r9d, eax
000000014001a2cb je       0x14001a0d0
000000014001a2d1 mov      rcx, qword ptr [rip + 0x905d28]
000000014001a2d8 lea      rax, [rip + 0x905d21]
000000014001a2df cmp      rcx, rax
000000014001a2e2 je       0x14001b03f
000000014001a2e8 cmp      byte ptr [rcx + 0x29], bl
000000014001a2eb jb       0x14001b03f
000000014001a2f1 bt       dword ptr [rcx + 0x2c], 0xb
000000014001a2f6 jae      0x14001b03f
000000014001a2fc mov      edx, 0x141
000000014001a301 jmp      0x14001a66f
000000014001a306 mov      rcx, qword ptr [rip + 0x905cf3]
000000014001a30d lea      r15, [rip + 0x905cec]
000000014001a314 cmp      rcx, r15
000000014001a317 je       0x14001a33a
000000014001a319 cmp      byte ptr [rcx + 0x29], bl
000000014001a31c jb       0x14001a33a
000000014001a31e bt       dword ptr [rcx + 0x2c], 0xb
000000014001a323 jae      0x14001a33a
000000014001a325 mov      rcx, qword ptr [rcx + 0x18]
000000014001a329 lea      r8, [rip + 0x66c868]
000000014001a330 mov      edx, 0x149
000000014001a335 call     0x140001b88
000000014001a33a cmp      byte ptr [rdi + 0xbbbf4], r12b
000000014001a341 je       0x14001a38e
000000014001a343 lea      rcx, [r14 + 0xc]
000000014001a347 call     0x14007de44
000000014001a34c test     al, al
000000014001a34e jne      0x14001a38e
000000014001a350 mov      rcx, qword ptr [rip + 0x905ca9]
000000014001a357 cmp      rcx, r15
000000014001a35a je       0x14001b03f
000000014001a360 cmp      byte ptr [rcx + 0x29], bl
000000014001a363 jb       0x14001b03f
000000014001a369 bt       dword ptr [rcx + 0x2c], 0xb
000000014001a36e jae      0x14001b03f
000000014001a374 mov      edx, 0x14a
000000014001a379 mov      rcx, qword ptr [rcx + 0x18]
000000014001a37d lea      r8, [rip + 0x66c814]
000000014001a384 call     0x140001b88
000000014001a389 jmp      0x14001b03f
000000014001a38e mov      eax, dword ptr [rdi + 0xc0ba4]
000000014001a394 cmp      eax, 2
000000014001a397 jne      0x14001a409
000000014001a399 mov      r9d, dword ptr [r14 + 8]
000000014001a39d cmp      r9d, 0x20
000000014001a3a1 je       0x14001a456
000000014001a3a7 cmp      dword ptr [rdi + 0xc16c8], r12d
000000014001a3ae jne      0x14001a3db
000000014001a3b0 mov      rcx, qword ptr [rip + 0x905c49]
000000014001a3b7 cmp      rcx, r15
000000014001a3ba je       0x14001a456
000000014001a3c0 cmp      byte ptr [rcx + 0x29], bl
000000014001a3c3 jb       0x14001a456
000000014001a3c9 bt       dword ptr [rcx + 0x2c], 0xb
000000014001a3ce jae      0x14001a456
000000014001a3d4 mov      edx, 0x14b
000000014001a3d9 jmp      0x14001a446
000000014001a3db mov      rcx, qword ptr [rip + 0x905c1e]
000000014001a3e2 cmp      rcx, r15
000000014001a3e5 je       0x14001b03f
000000014001a3eb cmp      byte ptr [rcx + 0x29], bl
000000014001a3ee jb       0x14001b03f
000000014001a3f4 bt       dword ptr [rcx + 0x2c], 0xb
000000014001a3f9 jae      0x14001b03f
000000014001a3ff mov      edx, 0x14c
000000014001a404 jmp      0x14001a66f
000000014001a409 cmp      eax, ebx
000000014001a40b jne      0x14001a456
000000014001a40d mov      r9d, dword ptr [r14 + 8]
000000014001a411 lea      eax, [r9 - 0x10]
000000014001a415 test     eax, 0xffffffef
000000014001a41a je       0x14001a456
000000014001a41c cmp      dword ptr [rdi + 0xc16c8], r12d
000000014001a423 jne      0x14001a646
000000014001a429 mov      rcx, qword ptr [rip + 0x905bd0]
000000014001a430 cmp      rcx, r15
000000014001a433 je       0x14001a456
000000014001a435 cmp      byte ptr [rcx + 0x29], bl
000000014001a438 jb       0x14001a456
000000014001a43a bt       dword ptr [rcx + 0x2c], 0xb
000000014001a43f jae      0x14001a456
000000014001a441 mov      edx, 0x14d
000000014001a446 mov      rcx, qword ptr [rcx + 0x18]
000000014001a44a lea      r8, [rip + 0x66c747]
000000014001a451 call     0x140001b88
000000014001a456 mov      eax, dword ptr [r14 + 4]
000000014001a45a mov      ecx, 1
000000014001a45f mov      r13d, dword ptr [rdi + 0xc0ba4]
000000014001a466 shr      eax, 0x1b
000000014001a469 and      al, cl
000000014001a46b mov      dword ptr [rbp + 0x68], ecx
000000014001a46e lea      r15d, [rcx + 1]
000000014001a472 movzx    eax, al
000000014001a475 cmp      byte ptr [rdi + 0xbde81], r15b
000000014001a47c cmove    eax, ecx
000000014001a47f xor      edx, edx
000000014001a481 mov      rcx, rdi
000000014001a484 mov      dword ptr [rbp + 0x40], eax
000000014001a487 call     0x140009e5c
000000014001a48c mov      rcx, qword ptr [rip + 0x905b6d]
000000014001a493 lea      r8, [rip + 0x905b66]
000000014001a49a cmp      rcx, r8
000000014001a49d je       0x14001a5ab
000000014001a4a3 cmp      byte ptr [rcx + 0x29], bl
000000014001a4a6 jb       0x14001a4cb
000000014001a4a8 bt       dword ptr [rcx + 0x2c], 0xb
000000014001a4ad jae      0x14001a4cb
000000014001a4af mov      rcx, qword ptr [rcx + 0x18]
000000014001a4b3 lea      r8, [rip + 0x66c6de]
000000014001a4ba mov      edx, 0x14f
000000014001a4bf call     0x140001b88
000000014001a4c4 lea      r8, [rip + 0x905b35]
000000014001a4cb mov      rcx, qword ptr [rip + 0x905b2e]
000000014001a4d2 cmp      rcx, r8
000000014001a4d5 je       0x14001a5ab
000000014001a4db cmp      byte ptr [rcx + 0x29], bl
000000014001a4de jb       0x14001a503
000000014001a4e0 bt       dword ptr [rcx + 0x2c], 0xb
000000014001a4e5 jae      0x14001a503
000000014001a4e7 mov      rcx, qword ptr [rcx + 0x18]
000000014001a4eb lea      r8, [rip + 0x66c6a6]
000000014001a4f2 mov      edx, 0x150
000000014001a4f7 call     0x140001b88
000000014001a4fc lea      r8, [rip + 0x905afd]
000000014001a503 mov      rcx, qword ptr [rip + 0x905af6]
000000014001a50a cmp      rcx, r8
000000014001a50d je       0x14001a5ab
000000014001a513 cmp      byte ptr [rcx + 0x29], bl
000000014001a516 jb       0x14001a53b
000000014001a518 bt       dword ptr [rcx + 0x2c], 0xb
000000014001a51d jae      0x14001a53b
000000014001a51f mov      rcx, qword ptr [rcx + 0x18]
000000014001a523 lea      r8, [rip + 0x66c66e]
000000014001a52a mov      edx, 0x151
000000014001a52f call     0x140001b88
000000014001a534 lea      r8, [rip + 0x905ac5]
000000014001a53b mov      rcx, qword ptr [rip + 0x905abe]
000000014001a542 cmp      rcx, r8
000000014001a545 je       0x14001a5ab
000000014001a547 cmp      byte ptr [rcx + 0x29], bl
000000014001a54a jb       0x14001a573
000000014001a54c bt       dword ptr [rcx + 0x2c], 0xb
000000014001a551 jae      0x14001a573
000000014001a553 mov      r9d, dword ptr [r14 + 4]
000000014001a557 lea      r8, [rip + 0x66c63a]
000000014001a55e mov      rcx, qword ptr [rcx + 0x18]
000000014001a562 mov      edx, 0x152
000000014001a567 call     0x140001bb0
000000014001a56c lea      r8, [rip + 0x905a8d]
000000014001a573 mov      rcx, qword ptr [rip + 0x905a86]
000000014001a57a cmp      rcx, r8
000000014001a57d je       0x14001a5ab
000000014001a57f cmp      byte ptr [rcx + 0x29], bl
000000014001a582 jb       0x14001a5ab
000000014001a584 bt       dword ptr [rcx + 0x2c], 0xb
000000014001a589 jae      0x14001a5ab
000000014001a58b mov      r9d, dword ptr [r14 + 8]
000000014001a58f lea      r8, [rip + 0x66c602]
000000014001a596 mov      rcx, qword ptr [rcx + 0x18]
000000014001a59a mov      edx, 0x153
000000014001a59f call     0x140001bb0
000000014001a5a4 lea      r8, [rip + 0x905a55]
000000014001a5ab lea      rdx, [r14 + 0x20]
000000014001a5af test     rdx, rdx
000000014001a5b2 je       0x14001a601
000000014001a5b4 mov      rcx, qword ptr [rip + 0x905a45]
000000014001a5bb cmp      rcx, r8
000000014001a5be je       0x14001a259
000000014001a5c4 cmp      byte ptr [rcx + 0x29], bl
000000014001a5c7 jb       0x14001a601
000000014001a5c9 bt       dword ptr [rcx + 0x2c], 0xb
000000014001a5ce jae      0x14001a601
000000014001a5d0 mov      eax, dword ptr [r14 + 8]
000000014001a5d4 lea      r9, [rip + 0x5db7d5]
000000014001a5db mov      rcx, qword ptr [rcx + 0x18]
000000014001a5df lea      r8, [rip + 0x66c5b2]
000000014001a5e6 mov      qword ptr [rbp - 8], rax
000000014001a5ea lea      rax, [rbp - 0x10]
000000014001a5ee mov      qword ptr [rbp - 0x10], rdx
000000014001a5f2 mov      edx, 0x154
000000014001a5f7 mov      qword ptr [rsp + 0x20], rax
000000014001a5fc call     0x140001c88
000000014001a601 mov      rcx, qword ptr [rip + 0x9059f8]
000000014001a608 lea      rax, [rip + 0x9059f1]
000000014001a60f cmp      rcx, rax
000000014001a612 je       0x14001a259
000000014001a618 cmp      byte ptr [rcx + 0x29], bl
000000014001a61b jb       0x14001a259
000000014001a621 bt       dword ptr [rcx + 0x2c], 0xb
000000014001a626 jae      0x14001a259
000000014001a62c mov      rcx, qword ptr [rcx + 0x18]
000000014001a630 lea      r8, [rip + 0x66c561]
000000014001a637 mov      edx, 0x155
000000014001a63c call     0x140001b88
000000014001a641 jmp      0x14001a259
000000014001a646 mov      rcx, qword ptr [rip + 0x9059b3]
000000014001a64d cmp      rcx, r15
000000014001a650 je       0x14001b03f
000000014001a656 cmp      byte ptr [rcx + 0x29], bl
000000014001a659 jb       0x14001b03f
000000014001a65f bt       dword ptr [rcx + 0x2c], 0xb
000000014001a664 jae      0x14001b03f
000000014001a66a mov      edx, 0x14e
000000014001a66f mov      rcx, qword ptr [rcx + 0x18]
000000014001a673 lea      r8, [rip + 0x66c51e]
000000014001a67a call     0x140001bb0
000000014001a67f jmp      0x14001b03f
000000014001a684 mov      rcx, qword ptr [rip + 0x905975]
000000014001a68b cmp      rcx, r9
000000014001a68e je       0x14001a6ba
000000014001a690 cmp      byte ptr [rcx + 0x29], 3
000000014001a694 jb       0x14001a6ba
000000014001a696 mov      eax, dword ptr [rcx + 0x2c]
000000014001a699 test     r15b, al
000000014001a69c je       0x14001a6ba
000000014001a69e mov      rcx, qword ptr [rcx + 0x18]
000000014001a6a2 mov      edx, 0x161
000000014001a6a7 mov      r8, r10
000000014001a6aa call     0x140001b88
000000014001a6af mov      r8, qword ptr [rbp + 0x68]
000000014001a6b3 lea      r9, [rip + 0x905946]
000000014001a6ba test     r14, r14
000000014001a6bd je       0x14001ab3f
000000014001a6c3 cmp      esi, ebx
000000014001a6c5 jb       0x14001ab3f
000000014001a6cb mov      eax, dword ptr [r14]
000000014001a6ce mov      dword ptr [rdi + 0xc15ac], eax
000000014001a6d4 mov      rcx, qword ptr [rip + 0x905925]
000000014001a6db cmp      rcx, r9
000000014001a6de je       0x14001a705
000000014001a6e0 cmp      byte ptr [rcx + 0x29], bl
000000014001a6e3 jb       0x14001a705
000000014001a6e5 mov      eax, dword ptr [rcx + 0x2c]
000000014001a6e8 test     r15b, al
000000014001a6eb je       0x14001a705
000000014001a6ed mov      r9d, dword ptr [r14]
000000014001a6f0 lea      r8, [rip + 0x66c4a1]
000000014001a6f7 mov      rcx, qword ptr [rcx + 0x18]
000000014001a6fb mov      edx, 0x162
000000014001a700 call     0x140001bb0
000000014001a705 mov      eax, dword ptr [r13 + 0x68]
000000014001a709 mov      dword ptr [r13 + 0x74], eax
000000014001a70d mov      eax, dword ptr [r13 + 0x6c]
000000014001a711 mov      dword ptr [r13 + 0x78], eax
000000014001a715 mov      rax, qword ptr [rdi + 0xc1fa8]
000000014001a71c cmp      byte ptr [rax + 0x21], r12b
000000014001a720 jne      0x14001a72b
000000014001a722 mov      dl, r12b
000000014001a725 cmp      byte ptr [rax + 0x20], r12b
000000014001a729 je       0x14001a72d
000000014001a72b mov      dl, 1
000000014001a72d mov      r8b, dl
000000014001a730 mov      rcx, rdi
000000014001a733 call     0x1400d03d4
000000014001a738 mov      ecx, dword ptr [r14]
000000014001a73b mov      r13d, 2
000000014001a741 test     ecx, ecx
000000014001a743 je       0x14001a9ef
000000014001a749 sub      ecx, 1
000000014001a74c je       0x14001a995
000000014001a752 sub      ecx, 3
000000014001a755 je       0x14001a8e9
000000014001a75b sub      ecx, r13d
000000014001a75e je       0x14001a81a
000000014001a764 sub      ecx, r13d
000000014001a767 je       0x14001a7a3
000000014001a769 cmp      ecx, 1
000000014001a76c je       0x14001a7a3
000000014001a76e mov      rcx, qword ptr [rip + 0x90588b]
000000014001a775 lea      r14, [rip + 0x905884]
000000014001a77c cmp      rcx, r14
000000014001a77f je       0x14001a9c9
000000014001a785 cmp      byte ptr [rcx + 0x29], bl
000000014001a788 jb       0x14001a9c9
000000014001a78e bt       dword ptr [rcx + 0x2c], 0xb
000000014001a793 jae      0x14001a9c9
000000014001a799 mov      edx, 0x167
000000014001a79e jmp      0x14001a9b9
000000014001a7a3 mov      r9, r14
000000014001a7a6 lea      r8, [rbp + 0x48]
000000014001a7aa mov      rdx, rdi
000000014001a7ad mov      ecx, 0x14
000000014001a7b2 call     0x1400e4918
000000014001a7b7 lea      r14, [rip + 0x905842]
000000014001a7be mov      edx, 1
000000014001a7c3 cmp      byte ptr [rdi + 0x53e7f0], dl
000000014001a7c9 je       0x14001aab8
000000014001a7cf cmp      byte ptr [rdi + 0xbde81], r13b
000000014001a7d6 jne      0x14001aa47
000000014001a7dc mov      rcx, rdi
000000014001a7df call     0x1400dbea4
000000014001a7e4 test     eax, eax
000000014001a7e6 jne      0x14001aa47
000000014001a7ec mov      rcx, qword ptr [rip + 0x90580d]
000000014001a7f3 cmp      rcx, r14
000000014001a7f6 je       0x14001aab6
000000014001a7fc cmp      byte ptr [rcx + 0x29], bl
000000014001a7ff jb       0x14001aab6
000000014001a805 bt       dword ptr [rcx + 0x2c], 0xb
000000014001a80a jae      0x14001aab6
000000014001a810 mov      edx, 0x168
000000014001a815 jmp      0x14001aaa6
000000014001a81a mov      rcx, qword ptr [rip + 0x9057df]
000000014001a821 lea      rax, [rip + 0x9057d8]
000000014001a828 cmp      rcx, rax
000000014001a82b je       0x14001a84e
000000014001a82d cmp      byte ptr [rcx + 0x29], bl
000000014001a830 jb       0x14001a84e
000000014001a832 bt       dword ptr [rcx + 0x2c], 0xb
000000014001a837 jae      0x14001a84e
000000014001a839 mov      rcx, qword ptr [rcx + 0x18]
000000014001a83d lea      r8, [rip + 0x66c354]
000000014001a844 mov      edx, 0x166
000000014001a849 call     0x140001b88
000000014001a84e mov      rdx, qword ptr [rbp - 0x20]
000000014001a852 mov      r14d, 1
000000014001a858 mov      dword ptr [rdi + 0xc0ba0], ebx
000000014001a85e mov      dword ptr [rdi + 0xc0ba4], ebx
000000014001a864 mov      dword ptr [rdi + 0xc1fa4], r15d
000000014001a86b mov      word ptr [rdi + 0xc15a9], 0x808
000000014001a874 cmp      dword ptr [rdx + 0x78], 7
000000014001a878 mov      dword ptr [rdx + 0x68], r14d
000000014001a87c mov      dword ptr [rdx + 0x6c], ebx
000000014001a87f jne      0x14001a899
000000014001a881 xor      r9d, r9d
000000014001a884 xor      r8d, r8d
000000014001a887 xor      edx, edx
000000014001a889 mov      rcx, rdi
000000014001a88c call     0x1400e4860
000000014001a891 test     al, al
000000014001a893 jne      0x14001a7b7
000000014001a899 cmp      byte ptr [rdi + 0xbde81], r13b
000000014001a8a0 jne      0x14001a7b7
000000014001a8a6 mov      rcx, rdi
000000014001a8a9 call     0x1400dbea4
000000014001a8ae test     eax, eax
000000014001a8b0 jg       0x14001a7b7
000000014001a8b6 mov      byte ptr [rsp + 0x30], r12b
000000014001a8bb mov      byte ptr [rsp + 0x28], r12b
000000014001a8c0 mov      dword ptr [rsp + 0x20], ebx
000000014001a8c4 mov      rax, qword ptr [rdi + 0xaf560]
000000014001a8cb lea      r8, [rip + 0x90d496]
000000014001a8d2 mov      r9b, r14b
000000014001a8d5 xor      edx, edx
000000014001a8d7 mov      rcx, rdi
000000014001a8da mov      rax, qword ptr [rax + 0x48]
000000014001a8de call     qword ptr [rip + 0x669a14]
000000014001a8e4 jmp      0x14001a7b7
000000014001a8e9 mov      rcx, qword ptr [rip + 0x905710]
000000014001a8f0 lea      rax, [rip + 0x905709]
000000014001a8f7 cmp      rcx, rax
000000014001a8fa je       0x14001a91d
000000014001a8fc cmp      byte ptr [rcx + 0x29], bl
000000014001a8ff jb       0x14001a91d
000000014001a901 bt       dword ptr [rcx + 0x2c], 0xb
000000014001a906 jae      0x14001a91d
000000014001a908 mov      rcx, qword ptr [rcx + 0x18]
000000014001a90c lea      r8, [rip + 0x66c285]
000000014001a913 mov      edx, 0x165
000000014001a918 call     0x140001b88
000000014001a91d mov      rdx, qword ptr [rbp - 0x20]
000000014001a921 mov      r14d, 1
000000014001a927 mov      dword ptr [rdi + 0xc0ba0], r13d
000000014001a92e mov      dword ptr [rdi + 0xc0ba4], r13d
000000014001a935 mov      word ptr [rdi + 0xc15a9], 0x408
000000014001a93e cmp      dword ptr [rdx + 0x78], 7
000000014001a942 mov      dword ptr [rdx + 0x68], r14d
000000014001a946 mov      dword ptr [rdx + 0x6c], r13d
000000014001a94a jne      0x14001a964
000000014001a94c xor      r9d, r9d
000000014001a94f xor      r8d, r8d
000000014001a952 xor      edx, edx
000000014001a954 mov      rcx, rdi
000000014001a957 call     0x1400e4860
000000014001a95c test     al, al
000000014001a95e jne      0x14001a7b7
000000014001a964 cmp      byte ptr [rdi + 0xbde81], r13b
000000014001a96b jne      0x14001a7b7
000000014001a971 mov      rcx, rdi
000000014001a974 call     0x1400dbea4
000000014001a979 test     eax, eax
000000014001a97b jg       0x14001a7b7
000000014001a981 mov      byte ptr [rsp + 0x30], r12b
000000014001a986 mov      byte ptr [rsp + 0x28], r12b
000000014001a98b mov      dword ptr [rsp + 0x20], r13d
000000014001a990 jmp      0x14001a8c4
000000014001a995 mov      rcx, qword ptr [rip + 0x905664]
000000014001a99c lea      r14, [rip + 0x90565d]
000000014001a9a3 cmp      rcx, r14
000000014001a9a6 je       0x14001a9c9
000000014001a9a8 cmp      byte ptr [rcx + 0x29], bl
000000014001a9ab jb       0x14001a9c9
000000014001a9ad bt       dword ptr [rcx + 0x2c], 0xb
000000014001a9b2 jae      0x14001a9c9
000000014001a9b4 mov      edx, 0x163
000000014001a9b9 mov      rcx, qword ptr [rcx + 0x18]
000000014001a9bd lea      r8, [rip + 0x66c1d4]
000000014001a9c4 call     0x140001b88
000000014001a9c9 mov      rdx, qword ptr [rbp - 0x20]
000000014001a9cd mov      qword ptr [rdi + 0xc0ba0], r12
000000014001a9d4 mov      word ptr [rdi + 0xc15a9], r12w
000000014001a9dc mov      dword ptr [rdx + 0x68], 1
000000014001a9e3 mov      dword ptr [rdx + 0x6c], 6
000000014001a9ea jmp      0x14001a7be
000000014001a9ef mov      rcx, qword ptr [rip + 0x90560a]
000000014001a9f6 lea      r14, [rip + 0x905603]
000000014001a9fd cmp      rcx, r14
000000014001aa00 je       0x14001aa23
000000014001aa02 cmp      byte ptr [rcx + 0x29], bl
000000014001aa05 jb       0x14001aa23
000000014001aa07 bt       dword ptr [rcx + 0x2c], 0xb
000000014001aa0c jae      0x14001aa23
000000014001aa0e mov      rcx, qword ptr [rcx + 0x18]
000000014001aa12 lea      r8, [rip + 0x66c17f]
000000014001aa19 mov      edx, 0x164
000000014001aa1e call     0x140001b88
000000014001aa23 mov      rdx, qword ptr [rbp - 0x20]
000000014001aa27 mov      dword ptr [rdi + 0xc0ba0], r15d
000000014001aa2e mov      dword ptr [rdi + 0xc0ba4], r15d
000000014001aa35 mov      word ptr [rdi + 0xc15a9], 0x404
000000014001aa3e mov      qword ptr [rdx + 0x68], r13
000000014001aa42 jmp      0x14001a7be
000000014001aa47 mov      eax, dword ptr [rdi + 0xc0ba0]
000000014001aa4d sub      eax, r15d
000000014001aa50 test     eax, 0xfffffff7
000000014001aa55 je       0x14001aa89
000000014001aa57 mov      rcx, qword ptr [rip + 0x9055a2]
000000014001aa5e cmp      rcx, r14
000000014001aa61 je       0x14001aa84
000000014001aa63 cmp      byte ptr [rcx + 0x29], bl
000000014001aa66 jb       0x14001aa84
000000014001aa68 bt       dword ptr [rcx + 0x2c], 0xb
000000014001aa6d jae      0x14001aa84
000000014001aa6f mov      rcx, qword ptr [rcx + 0x18]
000000014001aa73 lea      r8, [rip + 0x66c11e]
000000014001aa7a mov      edx, 0x16a
000000014001aa7f call     0x140001b88
000000014001aa84 mov      dl, r12b
000000014001aa87 jmp      0x14001aab8
000000014001aa89 mov      rcx, qword ptr [rip + 0x905570]
000000014001aa90 cmp      rcx, r14
000000014001aa93 je       0x14001aab6
000000014001aa95 cmp      byte ptr [rcx + 0x29], bl
000000014001aa98 jb       0x14001aab6
000000014001aa9a bt       dword ptr [rcx + 0x2c], 0xb
000000014001aa9f jae      0x14001aab6
000000014001aaa1 mov      edx, 0x169
000000014001aaa6 mov      rcx, qword ptr [rcx + 0x18]
000000014001aaaa lea      r8, [rip + 0x66c0e7]
000000014001aab1 call     0x140001b88
000000014001aab6 mov      dl, 1
000000014001aab8 mov      r8b, dl
000000014001aabb mov      rcx, rdi
000000014001aabe call     0x1400d03d4
000000014001aac3 movzx    edx, word ptr [rdi + 0x53f680]
000000014001aaca mov      r8d, 0xffef
000000014001aad0 movzx    ecx, dx
000000014001aad3 or       dx, 0x10
000000014001aad7 and      cx, r8w
000000014001aadb cmp      dword ptr [rdi + 0xc0ba0], r12d
000000014001aae2 cmove    dx, cx
000000014001aae6 mov      word ptr [rdi + 0x53f680], dx
000000014001aaed cmp      byte ptr [rdi + 0xbde81], r13b
000000014001aaf4 jne      0x14001ab20
000000014001aaf6 mov      r13d, 5
000000014001aafc cmp      dword ptr [rdi + 0xc0bb0], r13d
000000014001ab03 jne      0x14001ab20
000000014001ab05 cmp      dword ptr [rdi + 0xc0ba0], r15d
000000014001ab0c jne      0x14001ab20
000000014001ab0e xor      r8d, r8d
000000014001ab11 xor      edx, edx
000000014001ab13 mov      rcx, rdi
000000014001ab16 call     0x140096824
000000014001ab1b jmp      0x14001b0d2
000000014001ab20 mov      eax, dword ptr [rdi + 0xc15ac]
000000014001ab26 sub      eax, r15d
000000014001ab29 cmp      eax, 1
000000014001ab2c jbe      0x14001affc
000000014001ab32 mov      rcx, rdi
000000014001ab35 call     0x1400cdf64
000000014001ab3a jmp      0x14001affc
000000014001ab3f mov      r12d, 0xc0010014
000000014001ab45 mov      dword ptr [r8], ebx
000000014001ab48 jmp      0x14001b0d2
000000014001ab4d mov      rcx, qword ptr [rip + 0x9054ac]
000000014001ab54 cmp      rcx, r9
000000014001ab57 je       0x14001ab7c
000000014001ab59 cmp      byte ptr [rcx + 0x29], 3
000000014001ab5d jb       0x14001ab7c
000000014001ab5f mov      eax, dword ptr [rcx + 0x2c]
000000014001ab62 test     r15b, al
000000014001ab65 je       0x14001ab7c
000000014001ab67 mov      rcx, qword ptr [rcx + 0x18]
000000014001ab6b mov      edx, 0x16d
000000014001ab70 mov      r8, r10
000000014001ab73 call     0x140001b88
000000014001ab78 mov      r8, qword ptr [rbp + 0x68]
000000014001ab7c test     r14, r14
000000014001ab7f je       0x14001ad4e
000000014001ab85 cmp      esi, ebx
000000014001ab87 jb       0x14001ad4e
000000014001ab8d mov      esi, dword ptr [r14]
000000014001ab90 mov      eax, dword ptr [r13 + 0x70]
000000014001ab94 mov      dword ptr [r13 + 0x7c], eax
000000014001ab98 mov      dword ptr [r13 + 0x70], esi
000000014001ab9c lea      eax, [rsi - 9]
000000014001ab9f cmp      eax, 1
000000014001aba2 jbe      0x14001ad11
000000014001aba8 xor      r8d, r8d
000000014001abab xor      edx, edx
000000014001abad mov      rcx, rdi
000000014001abb0 call     0x1400d03d4
000000014001abb5 mov      r13d, 5
000000014001abbb cmp      esi, r13d
000000014001abbe jg       0x14001acc2
000000014001abc4 je       0x14001abec
000000014001abc6 mov      ecx, esi
000000014001abc8 test     esi, esi
000000014001abca je       0x14001ac79
000000014001abd0 sub      ecx, 1
000000014001abd3 je       0x14001ac79
000000014001abd9 sub      ecx, 1
000000014001abdc je       0x14001ac2c
000000014001abde sub      ecx, 1
000000014001abe1 je       0x14001abec
000000014001abe3 cmp      ecx, 1
000000014001abe6 jne      0x14001acd8
000000014001abec mov      dword ptr [rdi + 0xc16c8], 1
000000014001abf6 mov      rcx, qword ptr [rip + 0x905403]
000000014001abfd lea      rax, [rip + 0x9053fc]
000000014001ac04 cmp      rcx, rax
000000014001ac07 je       0x14001ad25
000000014001ac0d cmp      byte ptr [rcx + 0x29], bl
000000014001ac10 jb       0x14001ad25
000000014001ac16 mov      eax, dword ptr [rcx + 0x2c]
000000014001ac19 test     r15b, al
000000014001ac1c je       0x14001ad25
000000014001ac22 mov      edx, 0x170
000000014001ac27 jmp      0x14001acad
000000014001ac2c mov      dword ptr [rdi + 0xc16c8], r12d
000000014001ac33 mov      rcx, qword ptr [rip + 0x9053c6]
000000014001ac3a lea      rax, [rip + 0x9053bf]
000000014001ac41 cmp      rcx, rax
000000014001ac44 je       0x14001ad25
000000014001ac4a cmp      byte ptr [rcx + 0x29], bl
000000014001ac4d jb       0x14001ad25
000000014001ac53 mov      eax, dword ptr [rcx + 0x2c]
000000014001ac56 test     r15b, al
000000014001ac59 je       0x14001ad25
000000014001ac5f mov      rcx, qword ptr [rcx + 0x18]
000000014001ac63 lea      r8, [rip + 0x66bf2e]
000000014001ac6a mov      edx, 0x16f
000000014001ac6f call     0x140001b88
000000014001ac74 jmp      0x14001ad25
000000014001ac79 mov      dword ptr [rdi + 0xc16c8], r12d
000000014001ac80 mov      rcx, qword ptr [rip + 0x905379]
000000014001ac87 lea      rax, [rip + 0x905372]
000000014001ac8e cmp      rcx, rax
000000014001ac91 je       0x14001ad25
000000014001ac97 cmp      byte ptr [rcx + 0x29], bl
000000014001ac9a jb       0x14001ad25
000000014001aca0 mov      eax, dword ptr [rcx + 0x2c]
000000014001aca3 test     r15b, al
000000014001aca6 je       0x14001ad25
000000014001aca8 mov      edx, 0x16e
000000014001acad mov      rcx, qword ptr [rcx + 0x18]
000000014001acb1 lea      r8, [rip + 0x66bee0]
000000014001acb8 mov      r9d, esi
000000014001acbb call     0x140001bb0
000000014001acc0 jmp      0x14001ad25
000000014001acc2 mov      ecx, esi
000000014001acc4 sub      ecx, 6
000000014001acc7 je       0x14001ace0
000000014001acc9 sub      ecx, 1
000000014001accc je       0x14001ace0
000000014001acce sub      ecx, 2
000000014001acd1 je       0x14001ad11
000000014001acd3 cmp      ecx, 1
000000014001acd6 je       0x14001ad11
000000014001acd8 mov      r12d, 0xc0010015
000000014001acde jmp      0x14001ad41
000000014001ace0 mov      dword ptr [rdi + 0xc16c8], 2
000000014001acea mov      rcx, qword ptr [rip + 0x90530f]
000000014001acf1 lea      rax, [rip + 0x905308]
000000014001acf8 cmp      rcx, rax
000000014001acfb je       0x14001ad25
000000014001acfd cmp      byte ptr [rcx + 0x29], bl
000000014001ad00 jb       0x14001ad25
000000014001ad02 mov      eax, dword ptr [rcx + 0x2c]
000000014001ad05 test     r15b, al
000000014001ad08 je       0x14001ad25
000000014001ad0a mov      edx, 0x171
000000014001ad0f jmp      0x14001acad
000000014001ad11 mov      r9, r14
000000014001ad14 lea      r8, [rbp + 0x48]
000000014001ad18 mov      rdx, rdi
000000014001ad1b mov      ecx, 0x14
000000014001ad20 call     0x1400e4918
000000014001ad25 mov      edx, esi
000000014001ad27 mov      rcx, rdi
000000014001ad2a call     0x1400a37d0
000000014001ad2f lea      eax, [rsi - 9]
000000014001ad32 mov      r9d, 1
000000014001ad38 cmp      eax, r9d
000000014001ad3b jbe      0x14001addf
000000014001ad41 mov      rcx, rdi
000000014001ad44 call     0x1400cdf64
000000014001ad49 jmp      0x14001addf
000000014001ad4e mov      dword ptr [r8], ebx
000000014001ad51 jmp      0x140019aa2
000000014001ad56 mov      rcx, qword ptr [rip + 0x9052a3]
000000014001ad5d cmp      rcx, r9
000000014001ad60 je       0x14001adb6
000000014001ad62 cmp      byte ptr [rcx + 0x29], 3
000000014001ad66 jb       0x14001ad88
000000014001ad68 mov      eax, dword ptr [rcx + 0x2c]
000000014001ad6b test     r15b, al
000000014001ad6e je       0x14001ad88
000000014001ad70 mov      rcx, qword ptr [rcx + 0x18]
000000014001ad74 mov      edx, 0x15d
000000014001ad79 mov      r8, r10
000000014001ad7c call     0x140001b88
000000014001ad81 lea      r9, [rip + 0x905278]
000000014001ad88 mov      rcx, qword ptr [rip + 0x905271]
000000014001ad8f cmp      rcx, r9
000000014001ad92 je       0x14001adb6
000000014001ad94 cmp      byte ptr [rcx + 0x29], bl
000000014001ad97 jb       0x14001adb6
000000014001ad99 mov      eax, dword ptr [rcx + 0x2c]
000000014001ad9c test     r15b, al
000000014001ad9f je       0x14001adb6
000000014001ada1 mov      rcx, qword ptr [rcx + 0x18]
000000014001ada5 lea      r8, [rip + 0x66bdec]
000000014001adac mov      edx, 0x15e
000000014001adb1 call     0x140001b88
000000014001adb6 and      dword ptr [r14], 0x3fffffff
000000014001adbd mov      r9d, 0xd
000000014001adc3 mov      edx, dword ptr [rdi + 0xc0ba0]
000000014001adc9 mov      rcx, rdi
000000014001adcc mov      r8d, dword ptr [r14]
000000014001adcf cmp      edx, r15d
000000014001add2 lea      r13d, [r9 - 8]
000000014001add6 cmove    r9d, r13d
000000014001adda call     0x1400a41d0
000000014001addf mov      rax, qword ptr [rbp + 0x60]
000000014001ade3 mov      dword ptr [rax], ebx
000000014001ade5 jmp      0x14001b0d2
000000014001adea mov      rcx, qword ptr [rip + 0x90520f]
000000014001adf1 cmp      rcx, r9
000000014001adf4 je       0x14001ae50
000000014001adf6 cmp      byte ptr [rcx + 0x29], 3
000000014001adfa jb       0x14001ae1c
000000014001adfc mov      eax, dword ptr [rcx + 0x2c]
000000014001adff test     r15b, al
000000014001ae02 je       0x14001ae1c
000000014001ae04 mov      rcx, qword ptr [rcx + 0x18]
000000014001ae08 mov      edx, 0x156
000000014001ae0d mov      r8, r10
000000014001ae10 call     0x140001b88
000000014001ae15 lea      r9, [rip + 0x9051e4]
000000014001ae1c mov      rcx, qword ptr [rip + 0x9051dd]
000000014001ae23 cmp      rcx, r9
000000014001ae26 je       0x14001ae50
000000014001ae28 cmp      byte ptr [rcx + 0x29], bl
000000014001ae2b jb       0x14001ae50
000000014001ae2d bt       dword ptr [rcx + 0x2c], 0xb
000000014001ae32 jae      0x14001ae50
000000014001ae34 mov      rcx, qword ptr [rcx + 0x18]
000000014001ae38 lea      r8, [rip + 0x66bd59]
000000014001ae3f mov      edx, 0x157
000000014001ae44 call     0x140001b88
000000014001ae49 lea      r9, [rip + 0x9051b0]
000000014001ae50 mov      eax, dword ptr [r14 + 4]
000000014001ae54 mov      r8d, dword ptr [r14 + 8]
000000014001ae58 mov      dword ptr [rbp + 0x40], eax
000000014001ae5b lea      rax, [r14 + 0xc]
000000014001ae5f mov      r14d, dword ptr [rbp + 0x40]
000000014001ae63 mov      qword ptr [rbp - 0x10], rax
000000014001ae67 mov      eax, r14d
000000014001ae6a shr      eax, 0x1f
000000014001ae6d mov      dword ptr [rbp + 0x40], eax
000000014001ae70 btr      r14d, 0x1f
000000014001ae75 mov      dword ptr [rbp + 0x68], r8d
000000014001ae79 mov      rcx, qword ptr [rip + 0x905180]
000000014001ae80 mov      r13d, 5
000000014001ae86 cmp      rcx, r9
000000014001ae89 je       0x14001af6d
000000014001ae8f cmp      byte ptr [rcx + 0x29], r13b
000000014001ae93 jb       0x14001aebf
000000014001ae95 bt       dword ptr [rcx + 0x2c], 0xb
000000014001ae9a jae      0x14001aebf
000000014001ae9c mov      rcx, qword ptr [rcx + 0x18]
000000014001aea0 lea      r8, [rip + 0x66bcf1]
000000014001aea7 mov      edx, 0x158
000000014001aeac mov      r9d, r14d
000000014001aeaf call     0x140001bb0
000000014001aeb4 mov      r8d, dword ptr [rbp + 0x68]
000000014001aeb8 lea      r9, [rip + 0x905141]
000000014001aebf mov      rcx, qword ptr [rip + 0x90513a]
000000014001aec6 cmp      rcx, r9
000000014001aec9 je       0x14001af6d
000000014001aecf cmp      byte ptr [rcx + 0x29], r13b
000000014001aed3 jb       0x14001aefb
000000014001aed5 bt       dword ptr [rcx + 0x2c], 0xb
000000014001aeda jae      0x14001aefb
000000014001aedc mov      rcx, qword ptr [rcx + 0x18]
000000014001aee0 mov      r9d, r8d
000000014001aee3 lea      r8, [rip + 0x66bcae]
000000014001aeea mov      edx, 0x159
000000014001aeef call     0x140001bb0
000000014001aef4 lea      r9, [rip + 0x905105]
000000014001aefb mov      rcx, qword ptr [rip + 0x9050fe]
000000014001af02 cmp      rcx, r9
000000014001af05 je       0x14001af6d
000000014001af07 cmp      byte ptr [rcx + 0x29], r13b
000000014001af0b jb       0x14001af34
000000014001af0d bt       dword ptr [rcx + 0x2c], 0xb
000000014001af12 jae      0x14001af34
000000014001af14 mov      r9, qword ptr [rbp - 0x10]
000000014001af18 lea      r8, [rip + 0x66bc79]
000000014001af1f mov      rcx, qword ptr [rcx + 0x18]
000000014001af23 mov      edx, 0x15a
000000014001af28 call     0x140008874
000000014001af2d lea      r9, [rip + 0x9050cc]
000000014001af34 mov      rcx, qword ptr [rip + 0x9050c5]
000000014001af3b cmp      rcx, r9
000000014001af3e je       0x14001af6d
000000014001af40 cmp      byte ptr [rcx + 0x29], r13b
000000014001af44 jb       0x14001af6d
000000014001af46 bt       dword ptr [rcx + 0x2c], 0xb
000000014001af4b jae      0x14001af6d
000000014001af4d mov      r9d, dword ptr [rbp + 0x40]
000000014001af51 lea      r8, [rip + 0x66bc40]
000000014001af58 mov      rcx, qword ptr [rcx + 0x18]
000000014001af5c mov      edx, 0x15b
000000014001af61 call     0x140001bb0
000000014001af66 lea      r9, [rip + 0x905093]
000000014001af6d mov      r10d, dword ptr [rbp + 0x68]
000000014001af71 cmp      r10d, r13d
000000014001af74 jne      0x14001af98
000000014001af76 cmp      r14d, ebx
000000014001af79 jae      0x14001b00a
000000014001af7f mov      rdx, qword ptr [rbp - 0x20]
000000014001af83 mov      eax, r14d
000000014001af86 imul     rcx, rax, 0x3d
000000014001af8a lea      r9, [rdx + 0x80]
000000014001af91 mov      eax, 2
000000014001af96 jmp      0x14001afc1
000000014001af98 mov      eax, 0xd
000000014001af9d cmp      r10d, eax
000000014001afa0 jne      0x14001b00a
000000014001afa2 cmp      r14d, ebx
000000014001afa5 jae      0x14001b00a
000000014001afa7 mov      rdx, qword ptr [rbp - 0x20]
000000014001afab lea      r15d, [rax + 3]
000000014001afaf mov      eax, r14d
000000014001afb2 imul     rcx, rax, 0x3d
000000014001afb6 lea      r9, [rdx + 0x1b8]
000000014001afbd lea      eax, [r15 - 0xd]
000000014001afc1 add      r9, rcx
000000014001afc4 mov      r8d, r10d
000000014001afc7 mov      ecx, 0x68
000000014001afcc mov      dword ptr [rdx + rcx], eax
000000014001afcf mov      rcx, r9
000000014001afd2 mov      rbx, qword ptr [rbp - 0x10]
000000014001afd6 mov      rdx, rbx
000000014001afd9 call     0x1400311e8
000000014001afde mov      eax, dword ptr [rbp + 0x40]
000000014001afe1 mov      r8d, r14d
000000014001afe4 mov      r9d, dword ptr [rbp + 0x68]
000000014001afe8 mov      edx, r15d
000000014001afeb mov      byte ptr [rsp + 0x28], al
000000014001afef mov      rcx, rdi
000000014001aff2 mov      qword ptr [rsp + 0x20], rbx
000000014001aff7 call     0x1400a3524
000000014001affc mov      rcx, qword ptr [rbp + 0x60]
000000014001b000 mov      eax, dword ptr [rbp + 0x58]
000000014001b003 mov      dword ptr [rcx], eax
000000014001b005 jmp      0x14001b0d2
000000014001b00a mov      rcx, qword ptr [rip + 0x904fef]
000000014001b011 cmp      rcx, r9
000000014001b014 je       0x14001b03f
000000014001b016 cmp      byte ptr [rcx + 0x29], bl
000000014001b019 jb       0x14001b03f
000000014001b01b bt       dword ptr [rcx + 0x2c], 0xb
000000014001b020 jae      0x14001b03f
000000014001b022 mov      rcx, qword ptr [rcx + 0x18]
000000014001b026 lea      r8, [rip + 0x66bb6b]
000000014001b02d mov      edx, 0x15c
000000014001b032 mov      dword ptr [rsp + 0x20], r10d
000000014001b037 mov      r9d, r14d
000000014001b03a call     0x140001bec
000000014001b03f mov      eax, 0xc0010015
000000014001b044 jmp      0x14001b0d5
000000014001b049 mov      rcx, qword ptr [rip + 0x904fb0]
000000014001b050 cmp      rcx, r9
000000014001b053 je       0x14001b07e
000000014001b055 cmp      byte ptr [rcx + 0x29], bl
000000014001b058 jb       0x14001b07e
000000014001b05a mov      eax, dword ptr [rcx + 0x2c]
000000014001b05d test     r15b, al
000000014001b060 je       0x14001b07e
000000014001b062 mov      rcx, qword ptr [rcx + 0x18]
000000014001b066 mov      edx, 0x172
000000014001b06b mov      r8, r10
000000014001b06e call     0x140001b88
000000014001b073 mov      r8, qword ptr [rbp + 0x68]
000000014001b077 lea      r9, [rip + 0x904f82]
000000014001b07e mov      eax, 2
000000014001b083 cmp      esi, eax
000000014001b085 jae      0x14001b08f
000000014001b087 mov      dword ptr [r8], eax
000000014001b08a jmp      0x140019aa2
000000014001b08f mov      al, byte ptr [r14]
000000014001b092 and      al, 3
000000014001b094 movzx    ecx, al
000000014001b097 mov      byte ptr [rdi + 0xc0bb4], cl
000000014001b09d mov      dword ptr [r13 + 0x2f0], ecx
000000014001b0a4 mov      rcx, qword ptr [rip + 0x904f55]
000000014001b0ab cmp      rcx, r9
000000014001b0ae je       0x14001b0d2
000000014001b0b0 cmp      byte ptr [rcx + 0x29], bl
000000014001b0b3 jb       0x14001b0d2
000000014001b0b5 mov      edx, dword ptr [rcx + 0x2c]
000000014001b0b8 test     r15b, dl
000000014001b0bb je       0x14001b0d2
000000014001b0bd mov      edx, 0x173
000000014001b0c2 mov      rcx, qword ptr [rcx + 0x18]
000000014001b0c6 lea      r8, [rip + 0x66bacb]
000000014001b0cd call     0x140001b88
000000014001b0d2 mov      eax, r12d
000000014001b0d5 mov      rbx, qword ptr [rsp + 0xd0]
000000014001b0dd add      rsp, 0x80
000000014001b0e4 pop      r15
000000014001b0e6 pop      r14
000000014001b0e8 pop      r13
000000014001b0ea pop      r12
000000014001b0ec pop      rdi
000000014001b0ed pop      rsi
000000014001b0ee pop      rbp
000000014001b0ef ret      