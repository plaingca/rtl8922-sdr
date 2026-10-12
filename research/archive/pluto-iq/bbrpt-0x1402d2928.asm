00000001402d2928 mov      rax, rsp
00000001402d292b mov      dword ptr [rax + 0x20], r9d
00000001402d292f mov      qword ptr [rax + 0x18], r8
00000001402d2933 mov      qword ptr [rax + 0x10], rdx
00000001402d2937 mov      qword ptr [rax + 8], rcx
00000001402d293b push     rbx
00000001402d293c push     rbp
00000001402d293d push     rsi
00000001402d293e push     rdi
00000001402d293f push     r12
00000001402d2941 push     r13
00000001402d2943 push     r14
00000001402d2945 push     r15
00000001402d2947 sub      rsp, 0xd8
00000001402d294e mov      rsi, rcx
00000001402d2951 mov      r14, rdx
00000001402d2954 mov      rcx, qword ptr [rcx]
00000001402d2957 mov      qword ptr [rsp + 0xa8], rcx
00000001402d295f test     byte ptr [rsi + 0x1248], 2
00000001402d2966 mov      rax, qword ptr [rsi + 0x18]
00000001402d296a mov      rdx, qword ptr [rax + 0x30]
00000001402d296e mov      qword ptr [rsp + 0xc0], rdx
00000001402d2976 mov      byte ptr [rsp + 0x90], 0
00000001402d297e je       0x1402d3172
00000001402d2984 mov      edi, dword ptr [r14]
00000001402d2987 lea      rdx, [rip + 0x324a02]
00000001402d298e mov      ebp, dword ptr [rsp + 0x148]
00000001402d2995 mov      r12, qword ptr [rsp + 0x140]
00000001402d299d cmp      edi, ebp
00000001402d299f jae      0x1402d2b80
00000001402d29a5 mov      eax, dword ptr [rcx + 0x961c]
00000001402d29ab lea      r8, [rip + 0x35391e]
00000001402d29b2 mov      r9, rdx
00000001402d29b5 lea      rcx, [rip + 0x353904]
00000001402d29bc cmp      eax, 0xb
00000001402d29bf mov      edx, ebp
00000001402d29c1 cmove    r9, rcx
00000001402d29c5 sub      edx, edi
00000001402d29c7 lea      rcx, [r12 + rdi]
00000001402d29cb call     0x140044426
00000001402d29d0 add      dword ptr [r14], eax
00000001402d29d3 mov      edi, dword ptr [r14]
00000001402d29d6 cmp      edi, ebp
00000001402d29d8 jae      0x1402d2b80
00000001402d29de mov      eax, dword ptr [rsi + 0x50c]
00000001402d29e4 mov      cl, 1
00000001402d29e6 mov      ebx, dword ptr [rsi + 0x518]
00000001402d29ec movzx    r13d, byte ptr [rsi + 0x501]
00000001402d29f4 movzx    edx, ax
00000001402d29f7 mov      r12d, edi
00000001402d29fa call     0x1403ae978
00000001402d29ff movzx    edx, byte ptr [rsi + 0x567]
00000001402d2a06 mov      cl, 0x15
00000001402d2a08 mov      r15, rax
00000001402d2a0b call     0x1403ae978
00000001402d2a10 movzx    edx, byte ptr [rsi + 0x566]
00000001402d2a17 mov      cl, 0x15
00000001402d2a19 mov      r14, rax
00000001402d2a1c call     0x1403ae978
00000001402d2a21 bt       ebx, 0x11
00000001402d2a25 lea      rdx, [rip + 0x3538d4]
00000001402d2a2c mov      rbp, rax
00000001402d2a2f lea      rsi, [rip + 0x34120a]
00000001402d2a36 lea      rax, [rip + 0x341213]
00000001402d2a3d mov      cl, 8
00000001402d2a3f cmovb    rsi, rax
00000001402d2a43 lea      rdi, [rip + 0x324946]
00000001402d2a4a mov      rax, qword ptr [rsp + 0x120]
00000001402d2a52 test     byte ptr [rax + 0x5de], cl
00000001402d2a58 cmovne   rdi, rdx
00000001402d2a5c lea      rdx, [rip + 0x3538ad]
00000001402d2a63 test     bl, 1
00000001402d2a66 lea      rbx, [rip + 0x327de3]
00000001402d2a6d cmovne   rbx, rdx
00000001402d2a71 movzx    edx, byte ptr [rax + 0x4fc]
00000001402d2a78 call     0x1403ae978
00000001402d2a7d mov      edx, dword ptr [rsp + 0x148]
00000001402d2a84 lea      r9, [rip + 0x353895]
00000001402d2a8b mov      dword ptr [rsp + 0x58], r13d
00000001402d2a90 lea      r8, [rip + 0x353899]
00000001402d2a97 mov      qword ptr [rsp + 0x50], r15
00000001402d2a9c sub      edx, r12d
00000001402d2a9f mov      qword ptr [rsp + 0x48], r14
00000001402d2aa4 mov      ecx, r12d
00000001402d2aa7 mov      r12, qword ptr [rsp + 0x140]
00000001402d2aaf mov      qword ptr [rsp + 0x40], rbp
00000001402d2ab4 add      rcx, r12
00000001402d2ab7 mov      qword ptr [rsp + 0x38], rsi
00000001402d2abc mov      qword ptr [rsp + 0x30], rdi
00000001402d2ac1 mov      qword ptr [rsp + 0x28], rbx
00000001402d2ac6 mov      qword ptr [rsp + 0x20], rax
00000001402d2acb call     0x140044426
00000001402d2ad0 mov      r14, qword ptr [rsp + 0x128]
00000001402d2ad8 mov      ebp, dword ptr [rsp + 0x148]
00000001402d2adf mov      rsi, qword ptr [rsp + 0x120]
00000001402d2ae7 add      dword ptr [r14], eax
00000001402d2aea mov      edi, dword ptr [r14]
00000001402d2aed cmp      edi, ebp
00000001402d2aef jae      0x1402d2b80
00000001402d2af5 mov      r9d, dword ptr [rsi + 0x518]
00000001402d2afc mov      eax, r9d
00000001402d2aff and      eax, 0xc00
00000001402d2b04 jne      0x1402d2b0f
00000001402d2b06 lea      r15, [rip + 0x34fc43]
00000001402d2b0d jmp      0x1402d2b26
00000001402d2b0f cmp      eax, 0x400
00000001402d2b14 lea      rcx, [rip + 0x353865]
00000001402d2b1b lea      r15, [rip + 0x35386e]
00000001402d2b22 cmove    r15, rcx
00000001402d2b26 movzx    r8d, byte ptr [rsi + 0x5c7]
00000001402d2b2e mov      edx, ebp
00000001402d2b30 movsx    r10d, byte ptr [rsi + 0x547]
00000001402d2b38 sub      edx, edi
00000001402d2b3a movsx    r11d, byte ptr [rsi + 0x546]
00000001402d2b42 movsx    ebx, byte ptr [rsi + 0x540]
00000001402d2b49 mov      dword ptr [rsp + 0x40], r8d
00000001402d2b4e lea      r8, [rip + 0x35384b]
00000001402d2b55 mov      dword ptr [rsp + 0x38], r10d
00000001402d2b5a mov      dword ptr [rsp + 0x30], r11d
00000001402d2b5f shr      r9d, 7
00000001402d2b63 mov      ecx, edi
00000001402d2b65 and      r9d, 1
00000001402d2b69 mov      dword ptr [rsp + 0x28], ebx
00000001402d2b6d add      rcx, r12
00000001402d2b70 mov      qword ptr [rsp + 0x20], r15
00000001402d2b75 call     0x140044426
00000001402d2b7a add      dword ptr [r14], eax
00000001402d2b7d mov      edi, dword ptr [r14]
00000001402d2b80 mov      rax, qword ptr [rsi + 0x18]
00000001402d2b84 mov      ecx, dword ptr [rax + 4]
00000001402d2b87 test     cl, 0x10
00000001402d2b8a je       0x1402d2d52
00000001402d2b90 cmp      edi, ebp
00000001402d2b92 jae      0x1402d2e8e
00000001402d2b98 mov      eax, dword ptr [r14]
00000001402d2b9b mov      cl, 0x15
00000001402d2b9d movzx    edx, byte ptr [rsi + 0x565]
00000001402d2ba4 movzx    ebx, byte ptr [rsi + 0x56a]
00000001402d2bab mov      dword ptr [rsp + 0x9c], eax
00000001402d2bb2 movzx    eax, byte ptr [rsi + 0x4ff]
00000001402d2bb9 mov      dword ptr [rsp + 0xa0], eax
00000001402d2bc0 call     0x1403ae978
00000001402d2bc5 movzx    edx, byte ptr [rsi + 0x563]
00000001402d2bcc mov      cl, 0x24
00000001402d2bce mov      qword ptr [rsp + 0xb0], rax
00000001402d2bd6 call     0x1403ae978
00000001402d2bdb movzx    edx, byte ptr [rsi + 0x561]
00000001402d2be2 mov      cl, 0x23
00000001402d2be4 mov      qword ptr [rsp + 0xb8], rax
00000001402d2bec call     0x1403ae978
00000001402d2bf1 movzx    edx, byte ptr [rsi + 0x564]
00000001402d2bf8 mov      r13, rax
00000001402d2bfb movzx    eax, byte ptr [rsi + 0x4fe]
00000001402d2c02 mov      cl, 0x15
00000001402d2c04 mov      dword ptr [rsp + 0x94], eax
00000001402d2c0b call     0x1403ae978
00000001402d2c10 movzx    edx, byte ptr [rsi + 0x562]
00000001402d2c17 mov      cl, 0x24
00000001402d2c19 mov      r12, rax
00000001402d2c1c call     0x1403ae978
00000001402d2c21 movzx    edx, byte ptr [rsi + 0x560]
00000001402d2c28 mov      cl, 0x23
00000001402d2c2a mov      r15, rax
00000001402d2c2d call     0x1403ae978
00000001402d2c32 movzx    edx, byte ptr [rsi + 0x569]
00000001402d2c39 mov      r14d, ebx
00000001402d2c3c and      ebx, 1
00000001402d2c3f mov      cl, 0x2a
00000001402d2c41 mov      dword ptr [rsp + 0x98], ebx
00000001402d2c48 mov      rbp, rax
00000001402d2c4b and      r14d, 2
00000001402d2c4f call     0x1403ae978
00000001402d2c54 mov      esi, dword ptr [rsi + 0x518]
00000001402d2c5a mov      rdi, rax
00000001402d2c5d mov      rax, qword ptr [rsp + 0x120]
00000001402d2c65 mov      cl, 0x26
00000001402d2c67 shr      esi, 0xf
00000001402d2c6a and      esi, 1
00000001402d2c6d movzx    edx, byte ptr [rax + 0x56c]
00000001402d2c74 call     0x1403ae978
00000001402d2c79 mov      rbx, rax
00000001402d2c7c mov      cl, 0x22
00000001402d2c7e mov      rax, qword ptr [rsp + 0x120]
00000001402d2c86 movzx    edx, byte ptr [rax + 0x568]
00000001402d2c8d call     0x1403ae978
00000001402d2c92 mov      r8d, dword ptr [rsp + 0x9c]
00000001402d2c9a lea      r9, [rip + 0x35372f]
00000001402d2ca1 mov      edx, dword ptr [rsp + 0x148]
00000001402d2ca8 mov      ecx, r8d
00000001402d2cab add      rcx, qword ptr [rsp + 0x140]
00000001402d2cb3 sub      edx, r8d
00000001402d2cb6 mov      r8d, dword ptr [rsp + 0xa0]
00000001402d2cbe mov      dword ptr [rsp + 0x88], r8d
00000001402d2cc6 mov      r8, qword ptr [rsp + 0xb0]
00000001402d2cce mov      qword ptr [rsp + 0x80], r8
00000001402d2cd6 mov      r8, qword ptr [rsp + 0xb8]
00000001402d2cde mov      qword ptr [rsp + 0x78], r8
00000001402d2ce3 mov      r8d, dword ptr [rsp + 0x94]
00000001402d2ceb mov      qword ptr [rsp + 0x70], r13
00000001402d2cf0 mov      dword ptr [rsp + 0x68], r8d
00000001402d2cf5 mov      r8d, dword ptr [rsp + 0x98]
00000001402d2cfd mov      qword ptr [rsp + 0x60], r12
00000001402d2d02 mov      qword ptr [rsp + 0x58], r15
00000001402d2d07 mov      qword ptr [rsp + 0x50], rbp
00000001402d2d0c mov      dword ptr [rsp + 0x48], r14d
00000001402d2d11 mov      dword ptr [rsp + 0x40], r8d
00000001402d2d16 lea      r8, [rip + 0x3536c3]
00000001402d2d1d mov      qword ptr [rsp + 0x38], rdi
00000001402d2d22 mov      dword ptr [rsp + 0x30], esi
00000001402d2d26 mov      qword ptr [rsp + 0x28], rbx
00000001402d2d2b mov      qword ptr [rsp + 0x20], rax
00000001402d2d30 call     0x140044426
00000001402d2d35 mov      r14, qword ptr [rsp + 0x128]
00000001402d2d3d add      dword ptr [r14], eax
00000001402d2d40 mov      edi, dword ptr [r14]
00000001402d2d43 mov      rsi, qword ptr [rsp + 0x120]
00000001402d2d4b mov      ebp, dword ptr [rsp + 0x148]
00000001402d2d52 cmp      edi, ebp
00000001402d2d54 jae      0x1402d2e8e
00000001402d2d5a mov      eax, dword ptr [r14]
00000001402d2d5d mov      cl, 0x16
00000001402d2d5f mov      edx, dword ptr [rsi + 0xcac]
00000001402d2d65 mov      ebx, dword ptr [rsi + 0x518]
00000001402d2d6b mov      dword ptr [rsp + 0x98], eax
00000001402d2d72 call     0x1403ae978
00000001402d2d77 movzx    edi, byte ptr [rsi + 0x512]
00000001402d2d7e mov      r13d, ebx
00000001402d2d81 movzx    esi, byte ptr [rsi + 0x513]
00000001402d2d88 mov      r15d, ebx
00000001402d2d8b mov      r14d, ebx
00000001402d2d8e shr      r13d, 3
00000001402d2d92 mov      ebp, ebx
00000001402d2d94 shr      r15d, 2
00000001402d2d98 mov      r12, rax
00000001402d2d9b shr      ebx, 6
00000001402d2d9e mov      rax, qword ptr [rsp + 0x120]
00000001402d2da6 and      ebx, 1
00000001402d2da9 shr      r14d, 4
00000001402d2dad mov      cl, 0x14
00000001402d2daf shr      ebp, 5
00000001402d2db2 and      r13d, 1
00000001402d2db6 and      r15d, 1
00000001402d2dba mov      dword ptr [rsp + 0x94], ebx
00000001402d2dc1 movzx    edx, byte ptr [rax + 0x511]
00000001402d2dc8 and      r14d, 1
00000001402d2dcc and      ebp, 1
00000001402d2dcf call     0x1403ae978
00000001402d2dd4 mov      rbx, rax
00000001402d2dd7 mov      cl, 0x14
00000001402d2dd9 mov      rax, qword ptr [rsp + 0x120]
00000001402d2de1 movzx    edx, byte ptr [rax + 0x510]
00000001402d2de8 call     0x1403ae978
00000001402d2ded mov      r10d, dword ptr [rsp + 0x98]
00000001402d2df5 mov      rcx, qword ptr [rsp + 0x120]
00000001402d2dfd mov      edx, dword ptr [rsp + 0x148]
00000001402d2e04 mov      qword ptr [rsp + 0x78], r12
00000001402d2e09 sub      edx, r10d
00000001402d2e0c mov      dword ptr [rsp + 0x70], r13d
00000001402d2e11 movzx    r8d, byte ptr [rcx + 0x514]
00000001402d2e19 mov      r9d, dword ptr [rcx + 0x518]
00000001402d2e20 mov      ecx, r10d
00000001402d2e23 mov      r10d, dword ptr [rsp + 0x94]
00000001402d2e2b add      rcx, qword ptr [rsp + 0x140]
00000001402d2e33 mov      dword ptr [rsp + 0x68], r15d
00000001402d2e38 mov      dword ptr [rsp + 0x60], r14d
00000001402d2e3d mov      dword ptr [rsp + 0x58], ebp
00000001402d2e41 mov      dword ptr [rsp + 0x50], r10d
00000001402d2e46 mov      dword ptr [rsp + 0x48], edi
00000001402d2e4a mov      dword ptr [rsp + 0x40], esi
00000001402d2e4e shr      r9d, 1
00000001402d2e51 mov      qword ptr [rsp + 0x38], rbx
00000001402d2e56 and      r9d, 1
00000001402d2e5a mov      qword ptr [rsp + 0x30], rax
00000001402d2e5f mov      dword ptr [rsp + 0x28], r8d
00000001402d2e64 lea      r8, [rip + 0x353615]
00000001402d2e6b mov      dword ptr [rsp + 0x20], r9d
00000001402d2e70 lea      r9, [rip + 0x3535f9]
00000001402d2e77 call     0x140044426
00000001402d2e7c mov      r14, qword ptr [rsp + 0x128]
00000001402d2e84 mov      ebp, dword ptr [rsp + 0x148]
00000001402d2e8b add      dword ptr [r14], eax
00000001402d2e8e mov      rbx, qword ptr [rsp + 0xc0]
00000001402d2e96 mov      rsi, qword ptr [rsp + 0x120]
00000001402d2e9e test     rbx, rbx
00000001402d2ea1 je       0x1402d2ebf
00000001402d2ea3 mov      rax, qword ptr [rbx + 0x28]
00000001402d2ea7 test     rax, rax
00000001402d2eaa je       0x1402d2ebf
00000001402d2eac lea      r8, [rsp + 0x90]
00000001402d2eb4 xor      edx, edx
00000001402d2eb6 mov      rcx, rsi
00000001402d2eb9 call     qword ptr [rip + 0x3b1439]
00000001402d2ebf cmp      byte ptr [rsp + 0x90], 0
00000001402d2ec7 lea      r13, [rip + 0x353652]
00000001402d2ece mov      rax, r13
00000001402d2ed1 lea      rdi, [rip + 0x353638]
00000001402d2ed8 cmove    rax, rdi
00000001402d2edc mov      qword ptr [rsp + 0x120], rax
00000001402d2ee4 test     rbx, rbx
00000001402d2ee7 je       0x1402d2f05
00000001402d2ee9 mov      rax, qword ptr [rbx + 0x28]
00000001402d2eed test     rax, rax
00000001402d2ef0 je       0x1402d2f05
00000001402d2ef2 lea      r8, [rsp + 0x90]
00000001402d2efa mov      dl, 1
00000001402d2efc mov      rcx, rsi
00000001402d2eff call     qword ptr [rip + 0x3b13f3]
00000001402d2f05 cmp      byte ptr [rsp + 0x90], 0
00000001402d2f0d lea      rcx, [rip + 0x35361c]
00000001402d2f14 mov      r15, qword ptr [rsp + 0x140]
00000001402d2f1c lea      r12, [rip + 0x35361d]
00000001402d2f23 cmove    r13, rdi
00000001402d2f27 cmp      byte ptr [rsi + 0x158f], 0
00000001402d2f2e mov      rdi, qword ptr [rsp + 0xa8]
00000001402d2f36 cmovne   r12, rcx
00000001402d2f3a mov      ecx, dword ptr [r14]
00000001402d2f3d cmp      ecx, ebp
00000001402d2f3f jae      0x1402d2fcc
00000001402d2f45 movzx    r11d, byte ptr [rdi + 0xdec9]
00000001402d2f4d lea      rax, [rip + 0x32443c]
00000001402d2f54 movzx    ebx, byte ptr [rdi + 0xdec8]
00000001402d2f5b cmp      r11b, 1
00000001402d2f5f movzx    r9d, byte ptr [rdi + 0xdecb]
00000001402d2f67 mov      r10, r12
00000001402d2f6a movzx    r8d, byte ptr [rdi + 0xdeca]
00000001402d2f72 cmovne   r10, rax
00000001402d2f76 mov      qword ptr [rsp + 0x58], r13
00000001402d2f7b mov      edx, ebp
00000001402d2f7d mov      qword ptr [rsp + 0x50], r10
00000001402d2f82 cmp      bl, 1
00000001402d2f85 mov      dword ptr [rsp + 0x48], r11d
00000001402d2f8a mov      dword ptr [rsp + 0x40], r9d
00000001402d2f8f cmovne   r12, rax
00000001402d2f93 mov      rax, qword ptr [rsp + 0x120]
00000001402d2f9b lea      r9, [rip + 0x3535ae]
00000001402d2fa2 mov      qword ptr [rsp + 0x38], rax
00000001402d2fa7 sub      edx, ecx
00000001402d2fa9 mov      qword ptr [rsp + 0x30], r12
00000001402d2fae add      rcx, r15
00000001402d2fb1 mov      dword ptr [rsp + 0x28], ebx
00000001402d2fb5 mov      dword ptr [rsp + 0x20], r8d
00000001402d2fba lea      r8, [rip + 0x35359f]
00000001402d2fc1 call     0x140044426
00000001402d2fc6 add      dword ptr [r14], eax
00000001402d2fc9 mov      ecx, dword ptr [r14]
00000001402d2fcc cmp      byte ptr [rsi + 0x501], 0
00000001402d2fd3 je       0x1402d3021
00000001402d2fd5 cmp      ecx, ebp
00000001402d2fd7 jae      0x1402d3021
00000001402d2fd9 movzx    r8d, byte ptr [rdi + 0xdeed]
00000001402d2fe1 mov      edx, ebp
00000001402d2fe3 movzx    r10d, byte ptr [rdi + 0xdeef]
00000001402d2feb sub      edx, ecx
00000001402d2fed movzx    r11d, byte ptr [rdi + 0xdeec]
00000001402d2ff5 add      rcx, r15
00000001402d2ff8 movzx    r9d, byte ptr [rdi + 0xdeee]
00000001402d3000 mov      dword ptr [rsp + 0x30], r8d
00000001402d3005 lea      r8, [rip + 0x353594]
00000001402d300c mov      dword ptr [rsp + 0x28], r10d
00000001402d3011 mov      dword ptr [rsp + 0x20], r11d
00000001402d3016 call     0x140044426
00000001402d301b add      dword ptr [r14], eax
00000001402d301e mov      ecx, dword ptr [r14]
00000001402d3021 mov      r12b, 1
00000001402d3024 cmp      r12b, 2
00000001402d3028 jbe      0x1402d305e
00000001402d302a cmp      ecx, ebp
00000001402d302c jae      0x1402d30c8
00000001402d3032 mov      ebx, dword ptr [r14]
00000001402d3035 mov      cl, 0x2e
00000001402d3037 movzx    edi, r12b
00000001402d303b movzx    edx, byte ptr [rdi + rsi + 0x1592]
00000001402d3043 call     0x1403ae978
00000001402d3048 mov      edx, ebp
00000001402d304a mov      qword ptr [rsp + 0x20], rax
00000001402d304f sub      edx, ebx
00000001402d3051 lea      rcx, [r15 + rbx]
00000001402d3055 lea      r8, [rip + 0x353574]
00000001402d305c jmp      0x1402d30ba
00000001402d305e movzx    edi, r12b
00000001402d3062 movzx    edx, byte ptr [rdi + rsi + 0x1592]
00000001402d306a lea      r13d, [rdi - 1]
00000001402d306e test     dl, dl
00000001402d3070 je       0x1402d30a3
00000001402d3072 cmp      ecx, ebp
00000001402d3074 jae      0x1402d30c8
00000001402d3076 mov      ebx, dword ptr [r14]
00000001402d3079 mov      cl, 0x2e
00000001402d307b call     0x1403ae978
00000001402d3080 mov      edx, ebp
00000001402d3082 mov      qword ptr [rsp + 0x28], rax
00000001402d3087 sub      edx, ebx
00000001402d3089 mov      dword ptr [rsp + 0x20], r13d
00000001402d308e lea      rcx, [r15 + rbx]
00000001402d3092 mov      r9d, edi
00000001402d3095 lea      r8, [rip + 0x353544]
00000001402d309c call     0x140044426
00000001402d30a1 jmp      0x1402d30c2
00000001402d30a3 cmp      ecx, ebp
00000001402d30a5 jae      0x1402d30c8
00000001402d30a7 mov      edx, ebp
00000001402d30a9 mov      dword ptr [rsp + 0x20], r13d
00000001402d30ae sub      edx, ecx
00000001402d30b0 lea      r8, [rip + 0x353539]
00000001402d30b7 add      rcx, r15
00000001402d30ba mov      r9d, edi
00000001402d30bd call     0x140044426
00000001402d30c2 add      dword ptr [r14], eax
00000001402d30c5 mov      ecx, dword ptr [r14]
00000001402d30c8 cmp      byte ptr [rsi + 0x158d], r12b
00000001402d30cf je       0x1402d30de
00000001402d30d1 inc      r12b
00000001402d30d4 cmp      r12b, 5
00000001402d30d8 jbe      0x1402d3024
00000001402d30de cmp      ecx, ebp
00000001402d30e0 jae      0x1402d314e
00000001402d30e2 movzx    r8d, byte ptr [rsi + 0x5cc]
00000001402d30ea mov      edx, ebp
00000001402d30ec movzx    r9d, byte ptr [rsi + 0x5cb]
00000001402d30f4 sub      edx, ecx
00000001402d30f6 mov      eax, dword ptr [rsi + 0x550]
00000001402d30fc add      rcx, r15
00000001402d30ff movzx    r10d, byte ptr [rsi + 0x5ca]
00000001402d3107 mov      dword ptr [rsp + 0x50], r8d
00000001402d310c lea      r8, [rip + 0x3534fd]
00000001402d3113 mov      dword ptr [rsp + 0x48], r9d
00000001402d3118 lea      r9, [rip + 0x3534e1]
00000001402d311f mov      dword ptr [rsp + 0x40], r10d
00000001402d3124 mov      dword ptr [rsp + 0x38], eax
00000001402d3128 mov      eax, dword ptr [rsi + 0x55c]
00000001402d312e mov      dword ptr [rsp + 0x30], eax
00000001402d3132 mov      eax, dword ptr [rsi + 0x548]
00000001402d3138 mov      dword ptr [rsp + 0x28], eax
00000001402d313c mov      eax, dword ptr [rsi + 0x558]
00000001402d3142 mov      dword ptr [rsp + 0x20], eax
00000001402d3146 call     0x140044426
00000001402d314b add      dword ptr [r14], eax
00000001402d314e mov      r9d, dword ptr [rsp + 0x138]
00000001402d3156 mov      rdx, r14
00000001402d3159 mov      r8, qword ptr [rsp + 0x130]
00000001402d3161 mov      rcx, rsi
00000001402d3164 mov      dword ptr [rsp + 0x28], ebp
00000001402d3168 mov      qword ptr [rsp + 0x20], r15
00000001402d316d call     0x1402d3188
00000001402d3172 add      rsp, 0xd8
00000001402d3179 pop      r15
00000001402d317b pop      r14
00000001402d317d pop      r13
00000001402d317f pop      r12
00000001402d3181 pop      rdi
00000001402d3182 pop      rsi
00000001402d3183 pop      rbp
00000001402d3184 pop      rbx
00000001402d3185 ret      