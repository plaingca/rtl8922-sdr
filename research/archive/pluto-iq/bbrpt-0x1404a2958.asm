00000001404a2958 mov      qword ptr [rsp + 0x18], rbx
00000001404a295d push     rbp
00000001404a295e push     rsi
00000001404a295f push     rdi
00000001404a2960 push     r12
00000001404a2962 push     r13
00000001404a2964 push     r14
00000001404a2966 push     r15
00000001404a2968 lea      rbp, [rsp - 0xd0]
00000001404a2970 sub      rsp, 0x1d0
00000001404a2977 mov      rax, qword ptr [rip + 0x484ae2]
00000001404a297e xor      rax, rsp
00000001404a2981 mov      qword ptr [rbp + 0xc0], rax
00000001404a2988 xor      edi, edi
00000001404a298a mov      ebx, edx
00000001404a298c mov      r14, rcx
00000001404a298f mov      dword ptr [rbp + 0x90], edi
00000001404a2995 lea      rsi, [rcx + 0xfa48]
00000001404a299c mov      dword ptr [rbp + 0x98], 4
00000001404a29a6 mov      dword ptr [rbp - 0x30], 0xa
00000001404a29ad lea      ecx, [rdi + 1]
00000001404a29b0 mov      dword ptr [rbp - 0x28], 7
00000001404a29b7 lea      eax, [rdi + 6]
00000001404a29ba mov      dword ptr [rbp - 0x18], ecx
00000001404a29bd lea      edx, [rdi + 2]
00000001404a29c0 mov      dword ptr [rbp - 0x2c], eax
00000001404a29c3 lea      r8d, [rdi + 5]
00000001404a29c7 mov      dword ptr [rbp + 0x94], edx
00000001404a29cd lea      r15d, [rdi + 3]
00000001404a29d1 mov      dword ptr [rbp - 0x10], r8d
00000001404a29d5 mov      dword ptr [rbp - 0xc], eax
00000001404a29d8 mov      dword ptr [rbp - 8], eax
00000001404a29db mov      dword ptr [rbp], ecx
00000001404a29de mov      dword ptr [rbp + 4], ecx
00000001404a29e1 mov      dword ptr [rbp + 8], ecx
00000001404a29e4 mov      dword ptr [rbp + 0x10], r15d
00000001404a29e8 mov      dword ptr [rbp + 0x14], r15d
00000001404a29ec mov      dword ptr [rbp + 0x18], edx
00000001404a29ef mov      qword ptr [rbp + 0x24], rcx
00000001404a29f3 mov      dword ptr [rbp + 0xa0], eax
00000001404a29f9 mov      dword ptr [rbp + 0xa4], eax
00000001404a29ff mov      dword ptr [rbp + 0xa8], edx
00000001404a2a05 mov      dword ptr [rbp + 0x38], r8d
00000001404a2a09 mov      dword ptr [rbp + 0x48], ecx
00000001404a2a0c mov      dword ptr [rbp + 0x50], r8d
00000001404a2a10 mov      dword ptr [rbp + 0x54], eax
00000001404a2a13 mov      dword ptr [rbp + 0x58], eax
00000001404a2a16 mov      dword ptr [rbp + 0x60], ecx
00000001404a2a19 mov      dword ptr [rbp + 0x64], ecx
00000001404a2a1c mov      dword ptr [rbp + 0x68], ecx
00000001404a2a1f mov      dword ptr [rbp + 0x70], r15d
00000001404a2a23 mov      dword ptr [rbp + 0x74], edx
00000001404a2a26 mov      dword ptr [rbp + 0x78], ecx
00000001404a2a29 mov      dword ptr [rbp + 0xb0], eax
00000001404a2a2f mov      dword ptr [rbp + 0xb4], eax
00000001404a2a35 mov      dword ptr [rbp + 0xb8], edx
00000001404a2a3b mov      qword ptr [rbp - 0x20], rdi
00000001404a2a3f mov      dword ptr [rbp + 0x20], edi
00000001404a2a42 mov      dword ptr [rbp + 0x30], 9
00000001404a2a49 mov      dword ptr [rbp + 0x34], 4
00000001404a2a50 mov      qword ptr [rbp + 0x40], rdi
00000001404a2a54 mov      qword ptr [rbp + 0x80], rdi
00000001404a2a5b mov      dword ptr [rbp + 0x88], edi
00000001404a2a61 mov      rcx, qword ptr [rip + 0x47d598]
00000001404a2a68 lea      r9, [rip + 0x47d591]
00000001404a2a6f cmp      rcx, r9
00000001404a2a72 je       0x1404a2aa7
00000001404a2a74 cmp      byte ptr [rcx + 0x229], 4
00000001404a2a7b jb       0x1404a2aa7
00000001404a2a7d mov      eax, dword ptr [rcx + 0x22c]
00000001404a2a83 test     dl, al
00000001404a2a85 je       0x1404a2aa7
00000001404a2a87 mov      rcx, qword ptr [rcx + 0x218]
00000001404a2a8e lea      edx, [rdi + 0x40]
00000001404a2a91 lea      r8, [rip + 0x445598]
00000001404a2a98 call     0x140001b88
00000001404a2a9d lea      edx, [rdi + 2]
00000001404a2aa0 lea      r9, [rip + 0x47d559]
00000001404a2aa7 mov      al, byte ptr [rsi + 0xa]
00000001404a2aaa lea      r13, [rbp + 0x20]
00000001404a2aae neg      al
00000001404a2ab0 mov      dword ptr [rsp + 0x34], edi
00000001404a2ab4 mov      ecx, ebx
00000001404a2ab6 lea      r12, [rbp + 0x30]
00000001404a2aba sbb      eax, eax
00000001404a2abc lea      r8, [rbp + 0x90]
00000001404a2ac3 and      eax, 0xfffffffe
00000001404a2ac6 shl      ecx, 8
00000001404a2ac9 add      eax, r15d
00000001404a2acc mov      dword ptr [rsp + 0x30], ecx
00000001404a2ad0 mov      dword ptr [rsp + 0x50], eax
00000001404a2ad4 lea      r15, [rbp - 0x30]
00000001404a2ad8 lea      rdi, [rsi + 0xd0]
00000001404a2adf lea      eax, [rcx + 0x38154]
00000001404a2ae5 mov      dword ptr [rsp + 0x4c], eax
00000001404a2ae9 lea      eax, [rcx + 0x3813c]
00000001404a2aef mov      dword ptr [rsp + 0x48], eax
00000001404a2af3 lea      rcx, [rbx + rbx*2]
00000001404a2af7 shl      rcx, 3
00000001404a2afb lea      rax, [rbp - 0x20]
00000001404a2aff sub      rax, rcx
00000001404a2b02 sub      r15, rcx
00000001404a2b05 sub      rax, rsi
00000001404a2b08 sub      r13, rcx
00000001404a2b0b mov      qword ptr [rbp - 0x80], rax
00000001404a2b0f sub      r12, rcx
00000001404a2b12 lea      rax, [rbp - 0x10]
00000001404a2b16 sub      r8, rcx
00000001404a2b19 sub      rax, rcx
00000001404a2b1c sub      r15, rsi
00000001404a2b1f sub      rax, rsi
00000001404a2b22 mov      qword ptr [rsp + 0x60], r15
00000001404a2b27 mov      qword ptr [rsp + 0x78], rax
00000001404a2b2c sub      r13, rsi
00000001404a2b2f lea      rax, [rbp]
00000001404a2b33 mov      qword ptr [rbp - 0x40], r13
00000001404a2b37 sub      rax, rcx
00000001404a2b3a sub      r12, rsi
00000001404a2b3d sub      rax, rsi
00000001404a2b40 mov      qword ptr [rbp - 0x38], r12
00000001404a2b44 mov      qword ptr [rsp + 0x70], rax
00000001404a2b49 sub      r8, rsi
00000001404a2b4c lea      rax, [rbp + 0x10]
00000001404a2b50 mov      qword ptr [rsp + 0x58], r8
00000001404a2b55 sub      rax, rcx
00000001404a2b58 add      rdi, rcx
00000001404a2b5b sub      rax, rsi
00000001404a2b5e mov      qword ptr [rsp + 0x68], rax
00000001404a2b63 lea      rax, [rbp + 0x40]
00000001404a2b67 sub      rax, rcx
00000001404a2b6a sub      rax, rsi
00000001404a2b6d mov      qword ptr [rbp - 0x58], rax
00000001404a2b71 lea      rax, [rbp + 0x50]
00000001404a2b75 sub      rax, rcx
00000001404a2b78 sub      rax, rsi
00000001404a2b7b mov      qword ptr [rbp - 0x60], rax
00000001404a2b7f lea      rax, [rbp + 0x60]
00000001404a2b83 sub      rax, rcx
00000001404a2b86 sub      rax, rsi
00000001404a2b89 mov      qword ptr [rbp - 0x68], rax
00000001404a2b8d lea      rax, [rbp + 0x70]
00000001404a2b91 sub      rax, rcx
00000001404a2b94 sub      rax, rsi
00000001404a2b97 mov      qword ptr [rbp - 0x70], rax
00000001404a2b9b lea      rax, [rbp + 0x80]
00000001404a2ba2 sub      rax, rcx
00000001404a2ba5 sub      rax, rsi
00000001404a2ba8 mov      qword ptr [rbp - 0x78], rax
00000001404a2bac lea      rax, [rbp + 0xa0]
00000001404a2bb3 sub      rax, rcx
00000001404a2bb6 sub      rax, rsi
00000001404a2bb9 mov      qword ptr [rbp - 0x50], rax
00000001404a2bbd lea      rax, [rbp + 0xb0]
00000001404a2bc4 sub      rax, rcx
00000001404a2bc7 sub      rax, rsi
00000001404a2bca mov      qword ptr [rbp - 0x48], rax
00000001404a2bce jmp      0x1404a2bda
00000001404a2bd0 mov      r15, qword ptr [rsp + 0x60]
00000001404a2bd5 mov      edx, 2
00000001404a2bda mov      rcx, qword ptr [rip + 0x47d41f]
00000001404a2be1 cmp      rcx, r9
00000001404a2be4 je       0x1404a2c20
00000001404a2be6 cmp      byte ptr [rcx + 0x229], 4
00000001404a2bed jb       0x1404a2c20
00000001404a2bef mov      eax, dword ptr [rcx + 0x22c]
00000001404a2bf5 test     dl, al
00000001404a2bf7 je       0x1404a2c20
00000001404a2bf9 mov      eax, dword ptr [r8 + rdi - 0xd0]
00000001404a2c01 mov      edx, 0x41
00000001404a2c06 mov      rcx, qword ptr [rcx + 0x218]
00000001404a2c0d lea      r8, [rip + 0x44541c]
00000001404a2c14 mov      r9d, ebx
00000001404a2c17 mov      dword ptr [rsp + 0x20], eax
00000001404a2c1b call     0x140001bec
00000001404a2c20 xor      edx, edx
00000001404a2c22 mov      r8d, 0xf0000
00000001404a2c28 mov      ecx, ebx
00000001404a2c2a lea      r9d, [rdx + 0xc]
00000001404a2c2e call     0x140458420
00000001404a2c33 mov      edx, 0x10000
00000001404a2c38 mov      r9d, 0xc
00000001404a2c3e mov      r8d, 0xf0000
00000001404a2c44 mov      ecx, ebx
00000001404a2c46 call     0x140458420
00000001404a2c4b test     ebx, ebx
00000001404a2c4d jne      0x1404a2c91
00000001404a2c4f mov      rcx, qword ptr [rsp + 0x70]
00000001404a2c54 mov      rax, qword ptr [rsp + 0x68]
00000001404a2c59 mov      r12d, dword ptr [r15 + rdi - 0xd0]
00000001404a2c61 mov      r13d, dword ptr [rdi + r13 - 0xd0]
00000001404a2c69 mov      eax, dword ptr [rax + rdi - 0xd0]
00000001404a2c70 mov      dword ptr [rsp + 0x44], eax
00000001404a2c74 mov      eax, dword ptr [rcx + rdi - 0xd0]
00000001404a2c7b mov      rcx, qword ptr [rsp + 0x78]
00000001404a2c80 mov      dword ptr [rsp + 0x40], eax
00000001404a2c84 mov      eax, dword ptr [rcx + rdi - 0xd0]
00000001404a2c8b mov      rcx, qword ptr [rbp - 0x80]
00000001404a2c8f jmp      0x1404a2cd2
00000001404a2c91 mov      rax, qword ptr [rbp - 0x78]
00000001404a2c95 mov      rcx, qword ptr [rbp - 0x68]
00000001404a2c99 mov      r12d, dword ptr [r12 + rdi - 0xd0]
00000001404a2ca1 mov      r13d, dword ptr [rax + rdi - 0xd0]
00000001404a2ca9 mov      rax, qword ptr [rbp - 0x70]
00000001404a2cad mov      eax, dword ptr [rax + rdi - 0xd0]
00000001404a2cb4 mov      dword ptr [rsp + 0x44], eax
00000001404a2cb8 mov      eax, dword ptr [rcx + rdi - 0xd0]
00000001404a2cbf mov      rcx, qword ptr [rbp - 0x60]
00000001404a2cc3 mov      dword ptr [rsp + 0x40], eax
00000001404a2cc7 mov      eax, dword ptr [rcx + rdi - 0xd0]
00000001404a2cce mov      rcx, qword ptr [rbp - 0x58]
00000001404a2cd2 mov      dword ptr [rsp + 0x3c], eax
00000001404a2cd6 mov      r9d, r12d
00000001404a2cd9 mov      eax, dword ptr [rcx + rdi - 0xd0]
00000001404a2ce0 xor      edx, edx
00000001404a2ce2 mov      ecx, ebx
00000001404a2ce4 mov      dword ptr [rsp + 0x38], eax
00000001404a2ce8 mov      r8d, 0x3e0
00000001404a2cee mov      r15d, ebx
00000001404a2cf1 call     0x140458420
00000001404a2cf6 mov      r9d, dword ptr [rsp + 0x38]
00000001404a2cfb xor      edx, edx
00000001404a2cfd mov      r8d, 0x400
00000001404a2d03 mov      ecx, ebx
00000001404a2d05 call     0x140458420
00000001404a2d0a mov      r9d, dword ptr [rsp + 0x3c]
00000001404a2d0f xor      edx, edx
00000001404a2d11 mov      r8d, 0x3800
00000001404a2d17 mov      ecx, ebx
00000001404a2d19 call     0x140458420
00000001404a2d1e mov      r9d, dword ptr [rsp + 0x40]
00000001404a2d23 mov      edx, 0x8a
00000001404a2d28 mov      r8d, 0x1000
00000001404a2d2e mov      ecx, ebx
00000001404a2d30 call     0x140458420
00000001404a2d35 mov      r9d, dword ptr [rsp + 0x44]
00000001404a2d3a mov      edx, 0x8a
00000001404a2d3f mov      r8d, 0xc00
00000001404a2d45 mov      ecx, ebx
00000001404a2d47 call     0x140458420
00000001404a2d4c mov      r9d, r13d
00000001404a2d4f mov      edx, 0x8a
00000001404a2d54 mov      r8d, 0x300
00000001404a2d5a mov      ecx, ebx
00000001404a2d5c call     0x140458420
00000001404a2d61 mov      r15d, dword ptr [rsp + 0x4c]
00000001404a2d66 mov      r13d, 1
00000001404a2d6c mov      r8d, r13d
00000001404a2d6f mov      edx, 0x100
00000001404a2d74 mov      ecx, r15d
00000001404a2d77 call     0x1404583f4
00000001404a2d7c mov      r8, qword ptr [rsp + 0x58]
00000001404a2d81 lea      edx, [r13 + 6]
00000001404a2d85 mov      ecx, r15d
00000001404a2d88 mov      r8d, dword ptr [r8 + rdi - 0xd0]
00000001404a2d90 call     0x1404583f4
00000001404a2d95 xor      r8d, r8d
00000001404a2d98 lea      edx, [r13 + 0xf]
00000001404a2d9c mov      ecx, r15d
00000001404a2d9f call     0x1404583f4
00000001404a2da4 mov      r15d, 0xfffff
00000001404a2daa lea      edx, [r13 + 0x1d]
00000001404a2dae mov      r8d, r15d
00000001404a2db1 mov      r9d, 0x8001b
00000001404a2db7 mov      ecx, ebx
00000001404a2db9 call     0x140458420
00000001404a2dbe mov      ecx, 0x96
00000001404a2dc3 call     0x140458148
00000001404a2dc8 mov      r8d, r15d
00000001404a2dcb xor      edx, edx
00000001404a2dcd mov      ecx, ebx
00000001404a2dcf call     0x140458408
00000001404a2dd4 mov      r8d, eax
00000001404a2dd7 mov      edx, r15d
00000001404a2dda mov      ecx, 0x38024
00000001404a2ddf call     0x1404583f4
00000001404a2de4 mov      rax, qword ptr [rbp - 0x50]
00000001404a2de8 test     ebx, ebx
00000001404a2dea je       0x1404a2df0
00000001404a2dec mov      rax, qword ptr [rbp - 0x48]
00000001404a2df0 mov      r8d, dword ptr [rax + rdi - 0xd0]
00000001404a2df8 mov      edx, 0xe000
00000001404a2dfd mov      ecx, 0x38044
00000001404a2e02 call     0x1404583f4
00000001404a2e07 mov      r15d, dword ptr [rsp + 0x30]
00000001404a2e0c mov      r8d, r13d
00000001404a2e0f mov      r13d, 2
00000001404a2e15 mov      edx, r13d
00000001404a2e18 lea      ecx, [r15 + 0x2e414]
00000001404a2e1f call     0x1404583f4
00000001404a2e24 mov      edx, 0xfff0000
00000001404a2e29 lea      r8d, [r13 + 0xf]
00000001404a2e2d mov      ecx, 0x3802c
00000001404a2e32 call     0x1404583f4
00000001404a2e37 mov      r8b, 4
00000001404a2e3a mov      edx, ebx
00000001404a2e3c mov      rcx, r14
00000001404a2e3f call     0x1404a40d0
00000001404a2e44 lea      ecx, [r13 + 0x62]
00000001404a2e48 call     0x140458148
00000001404a2e4d xor      r8d, r8d
00000001404a2e50 lea      ecx, [r15 + 0x2e414]
00000001404a2e57 mov      edx, r13d
00000001404a2e5a call     0x1404583f4
00000001404a2e5f xor      edx, edx
00000001404a2e61 mov      r8d, 0x3e0
00000001404a2e67 mov      ecx, ebx
00000001404a2e69 call     0x140458408
00000001404a2e6e mov      r15d, eax
00000001404a2e71 mov      rcx, qword ptr [rip + 0x47d188]
00000001404a2e78 lea      rax, [rip + 0x47d181]
00000001404a2e7f cmp      rcx, rax
00000001404a2e82 je       0x1404a2ed4
00000001404a2e84 cmp      byte ptr [rcx + 0x229], 4
00000001404a2e8b jb       0x1404a2ed4
00000001404a2e8d mov      ecx, dword ptr [rcx + 0x22c]
00000001404a2e93 test     r13b, cl
00000001404a2e96 je       0x1404a2ed4
00000001404a2e98 mov      edx, 0x8a
00000001404a2e9d mov      r8d, 0x1f00
00000001404a2ea3 mov      ecx, ebx
00000001404a2ea5 call     0x140458408
00000001404a2eaa mov      rcx, qword ptr [rip + 0x47d14f]
00000001404a2eb1 lea      edx, [r13 + 0x40]
00000001404a2eb5 mov      dword ptr [rsp + 0x28], eax
00000001404a2eb9 lea      r8, [rip + 0x445170]
00000001404a2ec0 mov      r9d, ebx
00000001404a2ec3 mov      dword ptr [rsp + 0x20], r15d
00000001404a2ec8 mov      rcx, qword ptr [rcx + 0x218]
00000001404a2ecf call     0x140001c34
00000001404a2ed4 mov      r13d, dword ptr [rsp + 0x34]
00000001404a2ed9 mov      ecx, r12d
00000001404a2edc sub      ecx, r15d
00000001404a2edf mov      eax, r15d
00000001404a2ee2 sub      eax, r12d
00000001404a2ee5 cmp      r15d, r12d
00000001404a2ee8 cmovbe   eax, ecx
00000001404a2eeb cmp      eax, 3
00000001404a2eee jbe      0x1404a2efd
00000001404a2ef0 mov      r8d, r13d
00000001404a2ef3 mov      edx, ebx
00000001404a2ef5 mov      rcx, r14
00000001404a2ef8 call     0x1404a4be4
00000001404a2efd mov      r15d, 0xfffff
00000001404a2f03 xor      edx, edx
00000001404a2f05 mov      r8d, r15d
00000001404a2f08 mov      ecx, ebx
00000001404a2f0a call     0x140458408
00000001404a2f0f mov      r9d, 0x8001b
00000001404a2f15 mov      dword ptr [rdi - 0x60], eax
00000001404a2f18 mov      r8d, r15d
00000001404a2f1b mov      edx, 0x1e
00000001404a2f20 mov      ecx, ebx
00000001404a2f22 call     0x140458420
00000001404a2f27 mov      ecx, 0x96
00000001404a2f2c call     0x140458148
00000001404a2f31 mov      r15d, dword ptr [rsp + 0x30]
00000001404a2f36 mov      edx, 2
00000001404a2f3b lea      r8d, [rdx - 1]
00000001404a2f3f lea      ecx, [r15 + 0x2e414]
00000001404a2f46 call     0x1404583f4
00000001404a2f4b mov      edx, 0xfff0000
00000001404a2f50 mov      ecx, 0x3802c
00000001404a2f55 mov      r8d, 0x11
00000001404a2f5b call     0x1404583f4
00000001404a2f60 mov      r8b, 7
00000001404a2f63 mov      edx, ebx
00000001404a2f65 mov      rcx, r14
00000001404a2f68 call     0x1404a40d0
00000001404a2f6d mov      ecx, 0x64
00000001404a2f72 mov      r12b, al
00000001404a2f75 call     0x140458148
00000001404a2f7a mov      ecx, dword ptr [rsp + 0x48]
00000001404a2f7e or       edx, 0xffffffff
00000001404a2f81 call     0x1404583e0
00000001404a2f86 xor      r8d, r8d
00000001404a2f89 mov      dword ptr [rdi], eax
00000001404a2f8b lea      ecx, [r15 + 0x2e414]
00000001404a2f92 lea      edx, [r8 + 2]
00000001404a2f96 call     0x1404583f4
00000001404a2f9b mov      edx, ebx
00000001404a2f9d mov      rcx, r14
00000001404a2fa0 call     0x1404a3ca0
00000001404a2fa5 cmp      byte ptr [rsi + 0xf], 0
00000001404a2fa9 movzx    r15d, al
00000001404a2fad jne      0x1404a2fb3
00000001404a2faf test     al, al
00000001404a2fb1 je       0x1404a2fbd
00000001404a2fb3 mov      edx, ebx
00000001404a2fb5 mov      rcx, r14
00000001404a2fb8 call     0x1404a4a90
00000001404a2fbd cmp      byte ptr [rsi + 0xa], 0
00000001404a2fc1 jne      0x1404a302b
00000001404a2fc3 mov      ecx, dword ptr [rsp + 0x30]
00000001404a2fc7 mov      edx, 2
00000001404a2fcc add      ecx, 0x2e414
00000001404a2fd2 lea      r8d, [rdx - 1]
00000001404a2fd6 call     0x1404583f4
00000001404a2fdb mov      r8b, 5
00000001404a2fde mov      edx, ebx
00000001404a2fe0 mov      rcx, r14
00000001404a2fe3 call     0x1404a40d0
00000001404a2fe8 mov      ecx, 0x64
00000001404a2fed mov      r12b, al
00000001404a2ff0 call     0x140458148
00000001404a2ff5 mov      ecx, dword ptr [rsp + 0x30]
00000001404a2ff9 xor      r8d, r8d
00000001404a2ffc add      ecx, 0x2e414
00000001404a3002 lea      edx, [r8 + 2]
00000001404a3006 call     0x1404583f4
00000001404a300b cmp      byte ptr [rsi + 0xe], 0
00000001404a300f je       0x1404a301b
00000001404a3011 mov      edx, ebx
00000001404a3013 mov      rcx, r14
00000001404a3016 call     0x1404a46dc
00000001404a301b cmp      byte ptr [rsi + 0x13], 0
00000001404a301f je       0x1404a302b
00000001404a3021 mov      edx, ebx
00000001404a3023 mov      rcx, r14
00000001404a3026 call     0x1404a4368
00000001404a302b mov      rcx, qword ptr [rip + 0x47cfce]
00000001404a3032 lea      r9, [rip + 0x47cfc7]
00000001404a3039 cmp      rcx, r9
00000001404a303c je       0x1404a30b7
00000001404a303e cmp      byte ptr [rcx + 0x229], 4
00000001404a3045 jb       0x1404a3079
00000001404a3047 mov      eax, dword ptr [rcx + 0x22c]
00000001404a304d test     al, 2
00000001404a304f je       0x1404a3079
00000001404a3051 mov      rcx, qword ptr [rcx + 0x218]
00000001404a3058 lea      r8, [rip + 0x444fd1]
00000001404a305f movzx    r9d, r12b
00000001404a3063 mov      edx, 0x43
00000001404a3068 mov      dword ptr [rsp + 0x20], r15d
00000001404a306d call     0x140001bec
00000001404a3072 lea      r9, [rip + 0x47cf87]
00000001404a3079 mov      rcx, qword ptr [rip + 0x47cf80]
00000001404a3080 cmp      rcx, r9
00000001404a3083 je       0x1404a30b7
00000001404a3085 cmp      byte ptr [rcx + 0x229], 4
00000001404a308c jb       0x1404a30b7
00000001404a308e mov      eax, dword ptr [rcx + 0x22c]
00000001404a3094 test     al, 2
00000001404a3096 je       0x1404a30b7
00000001404a3098 mov      rcx, qword ptr [rcx + 0x218]
00000001404a309f lea      r8, [rip + 0x444f8a]
00000001404a30a6 mov      edx, 0x44
00000001404a30ab call     0x140001b88
00000001404a30b0 lea      r9, [rip + 0x47cf49]
00000001404a30b7 mov      r8, qword ptr [rsp + 0x58]
00000001404a30bc inc      r13d
00000001404a30bf mov      r12, qword ptr [rbp - 0x38]
00000001404a30c3 add      rdi, 4
00000001404a30c7 cmp      r13d, dword ptr [rsp + 0x50]
00000001404a30cc mov      dword ptr [rsp + 0x34], r13d
00000001404a30d1 mov      r13, qword ptr [rbp - 0x40]
00000001404a30d5 jb       0x1404a2bd0
00000001404a30db test     r15b, r15b
00000001404a30de je       0x1404a3142
00000001404a30e0 mov      rcx, qword ptr [rip + 0x47cf19]
00000001404a30e7 cmp      rcx, r9
00000001404a30ea je       0x1404a311a
00000001404a30ec cmp      byte ptr [rcx + 0x229], 4
00000001404a30f3 jb       0x1404a311a
00000001404a30f5 mov      eax, dword ptr [rcx + 0x22c]
00000001404a30fb test     al, 2
00000001404a30fd je       0x1404a311a
00000001404a30ff mov      rcx, qword ptr [rcx + 0x218]
00000001404a3106 lea      r8, [rip + 0x444f23]
00000001404a310d mov      edx, 0x45
00000001404a3112 mov      r9d, ebx
00000001404a3115 call     0x140001bb0
00000001404a311a mov      ecx, dword ptr [rsp + 0x48]
00000001404a311e mov      r8d, 0x40000002
00000001404a3124 or       edx, 0xffffffff
00000001404a3127 call     0x1404583f4
00000001404a312c mov      ecx, dword ptr [rsp + 0x30]
00000001404a3130 xor      r8d, r8d
00000001404a3133 add      ecx, 0x38124
00000001404a3139 lea      edx, [r8 + 1]
00000001404a313d call     0x1404583f4
00000001404a3142 mov      al, r15b
00000001404a3145 mov      rcx, qword ptr [rbp + 0xc0]
00000001404a314c xor      rcx, rsp
00000001404a314f call     0x1405f45b0
00000001404a3154 mov      rbx, qword ptr [rsp + 0x220]
00000001404a315c add      rsp, 0x1d0
00000001404a3163 pop      r15
00000001404a3165 pop      r14
00000001404a3167 pop      r13
00000001404a3169 pop      r12
00000001404a316b pop      rdi
00000001404a316c pop      rsi
00000001404a316d pop      rbp
00000001404a316e ret      