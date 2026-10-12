00000001403d5834 mov      qword ptr [rsp + 8], rbx
00000001403d5839 mov      qword ptr [rsp + 0x10], rbp
00000001403d583e mov      qword ptr [rsp + 0x18], rdi
00000001403d5843 push     r12
00000001403d5845 push     r13
00000001403d5847 push     r15
00000001403d5849 sub      rsp, 0x20
00000001403d584d mov      rbx, qword ptr [rcx + 0x9a0]
00000001403d5854 lea      rbp, [rip + 0x54a7a5]
00000001403d585b mov      eax, dword ptr [rcx + 0x13f8]
00000001403d5861 add      rbx, 0x1040
00000001403d5868 mov      rdi, rcx
00000001403d586b cmp      eax, 4
00000001403d586e je       0x1403d5f2c
00000001403d5874 cmp      eax, 7
00000001403d5877 je       0x1403d5920
00000001403d587d mov      rcx, qword ptr [rip + 0x54a77c]
00000001403d5884 cmp      rcx, rbp
00000001403d5887 je       0x1403d58bd
00000001403d5889 cmp      byte ptr [rcx + 0x169], 3
00000001403d5890 jb       0x1403d58bd
00000001403d5892 test     dword ptr [rcx + 0x16c], 0x1000
00000001403d589c je       0x1403d58bd
00000001403d589e mov      rcx, qword ptr [rcx + 0x158]
00000001403d58a5 lea      r9, [rip + 0x276bc4]
00000001403d58ac mov      edx, 0x42
00000001403d58b1 lea      r8, [rip + 0x2ff960]
00000001403d58b8 call     0x140008874
00000001403d58bd cmp      byte ptr [rdi + 0x49cd], 0
00000001403d58c4 je       0x1403d64db
00000001403d58ca mov      rcx, qword ptr [rip + 0x54a72f]
00000001403d58d1 cmp      rcx, rbp
00000001403d58d4 je       0x1403d590a
00000001403d58d6 cmp      byte ptr [rcx + 0x169], 4
00000001403d58dd jb       0x1403d590a
00000001403d58df test     dword ptr [rcx + 0x16c], 0x1000
00000001403d58e9 je       0x1403d590a
00000001403d58eb mov      rcx, qword ptr [rcx + 0x158]
00000001403d58f2 lea      r9, [rip + 0x276b77]
00000001403d58f9 mov      edx, 0x43
00000001403d58fe lea      r8, [rip + 0x2ff913]
00000001403d5905 call     0x140008874
00000001403d590a mov      r8d, 0xba
00000001403d5910 mov      rdx, rbx
00000001403d5913 mov      rcx, rdi
00000001403d5916 call     0x1403c9a3c
00000001403d591b jmp      0x1403d64db
00000001403d5920 mov      edx, 0x21090
00000001403d5925 mov      dword ptr [rbx], 0x20014
00000001403d592b mov      eax, 1
00000001403d5930 mov      dword ptr [rbx + 8], edx
00000001403d5933 mov      dword ptr [rbx + 0x10], edx
00000001403d5936 mov      r9d, 0x40000000
00000001403d593c mov      dword ptr [rbx + 0x38], edx
00000001403d593f mov      r11d, 0x80000000
00000001403d5945 lea      ecx, [rdx + 0x68]
00000001403d5948 mov      dword ptr [rbx + 0x40], edx
00000001403d594b mov      dword ptr [rbx + 0x18], ecx
00000001403d594e mov      ebp, 0x40000
00000001403d5953 mov      dword ptr [rbx + 0x20], ecx
00000001403d5956 mov      r10d, 0x20000000
00000001403d595c mov      dword ptr [rbx + 0x28], ecx
00000001403d595f mov      dword ptr [rbx + 0x30], ecx
00000001403d5962 lea      ecx, [rdx + 4]
00000001403d5965 mov      dword ptr [rbx + 0x70], ecx
00000001403d5968 mov      dword ptr [rbx + 0x78], ecx
00000001403d596b mov      dword ptr [rbx + 0x80], ecx
00000001403d5971 mov      dword ptr [rbx + 0xa8], ecx
00000001403d5977 mov      dword ptr [rbx + 0xb0], ecx
00000001403d597d mov      dword ptr [rbx + 0xb8], ecx
00000001403d5983 mov      ecx, 0x21098
00000001403d5988 mov      dword ptr [rbx + 0xc0], ecx
00000001403d598e mov      dword ptr [rbx + 0xc8], ecx
00000001403d5994 mov      dword ptr [rbx + 0xd0], ecx
00000001403d599a mov      dword ptr [rbx + 0xd8], ecx
00000001403d59a0 mov      dword ptr [rbx + 0xe0], ecx
00000001403d59a6 mov      dword ptr [rbx + 0xe8], ecx
00000001403d59ac mov      dword ptr [rbx + 0xf0], ecx
00000001403d59b2 mov      dword ptr [rbx + 0xf8], ecx
00000001403d59b8 mov      dword ptr [rbx + 0x100], ecx
00000001403d59be mov      dword ptr [rbx + 0x110], ecx
00000001403d59c4 or       ecx, 0xffffffff
00000001403d59c7 mov      dword ptr [rbx + 0x48], edx
00000001403d59ca mov      dword ptr [rbx + 0x50], edx
00000001403d59cd mov      dword ptr [rbx + 0x58], edx
00000001403d59d0 mov      dword ptr [rbx + 0x68], edx
00000001403d59d3 lea      edx, [rax + 0x3e]
00000001403d59d6 mov      dword ptr [rbx + 0x11c], ecx
00000001403d59dc mov      dword ptr [rbx + 0x124], ecx
00000001403d59e2 mov      dword ptr [rbx + 0x12c], ecx
00000001403d59e8 mov      dword ptr [rbx + 0x134], ecx
00000001403d59ee mov      dword ptr [rbx + 4], eax
00000001403d59f1 mov      dword ptr [rbx + 0xc], eax
00000001403d59f4 mov      dword ptr [rbx + 0x14], 0x3e
00000001403d59fb mov      dword ptr [rbx + 0x1c], 0x380000
00000001403d5a02 mov      dword ptr [rbx + 0x24], 0x1c00000
00000001403d5a09 mov      dword ptr [rbx + 0x2c], 0xe000000
00000001403d5a10 mov      dword ptr [rbx + 0x34], 0x70000000
00000001403d5a17 mov      dword ptr [rbx + 0x3c], 0x3c0
00000001403d5a1e mov      dword ptr [rbx + 0x44], 0x3c00
00000001403d5a25 mov      dword ptr [rbx + 0x4c], 0x3c000
00000001403d5a2c mov      dword ptr [rbx + 0x54], 0x3c0000
00000001403d5a33 mov      dword ptr [rbx + 0x5c], 0x3c000000
00000001403d5a3a mov      dword ptr [rbx + 0x6c], r9d
00000001403d5a3e mov      dword ptr [rbx + 0x74], edx
00000001403d5a41 mov      dword ptr [rbx + 0x7c], 0xfc0
00000001403d5a48 mov      dword ptr [rbx + 0x84], 0x3f000
00000001403d5a52 mov      dword ptr [rbx + 0x88], 0x210c4
00000001403d5a5c mov      dword ptr [rbx + 0x8c], 0x3f000000
00000001403d5a66 mov      dword ptr [rbx + 0xac], r11d
00000001403d5a6d mov      dword ptr [rbx + 0xb4], 0x1f80000
00000001403d5a77 mov      dword ptr [rbx + 0xbc], 0x6000000
00000001403d5a81 mov      dword ptr [rbx + 0xc4], 0x1f
00000001403d5a8b mov      dword ptr [rbx + 0xcc], 0x1fe0
00000001403d5a95 mov      dword ptr [rbx + 0xd4], 0x2000
00000001403d5a9f mov      dword ptr [rbx + 0xdc], 0x4000
00000001403d5aa9 mov      dword ptr [rbx + 0xe4], 0x8000
00000001403d5ab3 mov      dword ptr [rbx + 0xec], 0x10000
00000001403d5abd mov      dword ptr [rbx + 0xf4], 0x20000
00000001403d5ac7 mov      dword ptr [rbx + 0xfc], ebp
00000001403d5acd mov      dword ptr [rbx + 0x104], 0x80000
00000001403d5ad7 mov      dword ptr [rbx + 0x108], 0x210d0
00000001403d5ae1 mov      dword ptr [rbx + 0x10c], 0xfff00000
00000001403d5aeb mov      dword ptr [rbx + 0x114], r10d
00000001403d5af2 mov      dword ptr [rbx + 0x118], 0x2109c
00000001403d5afc mov      dword ptr [rbx + 0x120], 0x210a0
00000001403d5b06 mov      dword ptr [rbx + 0x128], 0x210a4
00000001403d5b10 mov      dword ptr [rbx + 0x130], 0x210a8
00000001403d5b1a mov      dword ptr [rbx + 0x19c], r9d
00000001403d5b21 mov      r12d, 0x210b4
00000001403d5b27 mov      dword ptr [rbx + 0x14c], edx
00000001403d5b2d mov      edx, 0xffff
00000001403d5b32 mov      dword ptr [rbx + 0x148], r12d
00000001403d5b39 mov      dword ptr [rbx + 0x158], r12d
00000001403d5b40 mov      dword ptr [rbx + 0x160], r12d
00000001403d5b47 lea      r15d, [r12 + 0x24]
00000001403d5b4c mov      dword ptr [rbx + 0x170], r12d
00000001403d5b53 lea      r8d, [r12 + 0x20]
00000001403d5b58 mov      dword ptr [rbx + 0x150], r8d
00000001403d5b5f lea      r13d, [r15 - 0xc]
00000001403d5b63 mov      dword ptr [rbx + 0x168], r8d
00000001403d5b6a mov      r8d, 0xffff0000
00000001403d5b70 mov      dword ptr [rbx + 0x178], r12d
00000001403d5b77 mov      dword ptr [rbx + 0x188], r12d
00000001403d5b7e mov      dword ptr [rbx + 0x198], r12d
00000001403d5b85 mov      dword ptr [rbx + 0x16c], r8d
00000001403d5b8c mov      dword ptr [rbx + 0x138], 0x210ac
00000001403d5b96 mov      dword ptr [rbx + 0x13c], ecx
00000001403d5b9c mov      dword ptr [rbx + 0x140], 0x210b0
00000001403d5ba6 mov      dword ptr [rbx + 0x144], ecx
00000001403d5bac mov      dword ptr [rbx + 0x154], edx
00000001403d5bb2 mov      dword ptr [rbx + 0x15c], 0x200
00000001403d5bbc mov      dword ptr [rbx + 0x164], 0xfc00
00000001403d5bc6 mov      dword ptr [rbx + 0x174], 0x80000
00000001403d5bd0 mov      dword ptr [rbx + 0x17c], 0x3f00000
00000001403d5bda mov      dword ptr [rbx + 0x180], r15d
00000001403d5be1 mov      dword ptr [rbx + 0x184], edx
00000001403d5be7 mov      dword ptr [rbx + 0x18c], r10d
00000001403d5bee mov      dword ptr [rbx + 0x190], 0x20414
00000001403d5bf8 mov      dword ptr [rbx + 0x194], 0x1ff
00000001403d5c02 mov      dword ptr [rbx + 0x1a0], r12d
00000001403d5c09 mov      r12d, 0x260d4
00000001403d5c0f mov      dword ptr [rbx + 0x1a4], r11d
00000001403d5c16 lea      r11d, [r15 - 0x20]
00000001403d5c1a mov      dword ptr [rbx + 0x1c8], r12d
00000001403d5c21 mov      dword ptr [rbx + 0x1cc], 0xff00
00000001403d5c2b mov      dword ptr [rbx + 0x1d0], r11d
00000001403d5c32 mov      dword ptr [rbx + 0x1d4], 0x3800000
00000001403d5c3c mov      dword ptr [rbx + 0x1d8], r11d
00000001403d5c43 mov      dword ptr [rbx + 0x1dc], 0x4000000
00000001403d5c4d mov      dword ptr [rbx + 0x1e0], 0x210bc
00000001403d5c57 mov      dword ptr [rbx + 0x1e4], r9d
00000001403d5c5e lea      r9d, [r12 + 0x10]
00000001403d5c63 mov      dword ptr [rbx + 0x1e8], r13d
00000001403d5c6a mov      dword ptr [rbx + 0x1ec], 0xc0
00000001403d5c74 mov      dword ptr [rbx + 0x1f0], r11d
00000001403d5c7b mov      dword ptr [rbx + 0x1f4], 0x18000000
00000001403d5c85 mov      dword ptr [rbx + 0x1f8], r11d
00000001403d5c8c lea      r11d, [r15 - 0x10]
00000001403d5c90 mov      dword ptr [rbx + 0x1fc], 0x60000000
00000001403d5c9a mov      dword ptr [rbx + 0x200], r11d
00000001403d5ca1 mov      dword ptr [rbx + 0x204], 0x1000
00000001403d5cab mov      dword ptr [rbx + 0x208], r11d
00000001403d5cb2 mov      dword ptr [rbx + 0x20c], 0x7e000
00000001403d5cbc mov      dword ptr [rbx + 0x210], r15d
00000001403d5cc3 mov      dword ptr [rbx + 0x214], r8d
00000001403d5cca mov      dword ptr [rbx + 0x218], r11d
00000001403d5cd1 mov      dword ptr [rbx + 0x21c], 0x400000
00000001403d5cdb mov      dword ptr [rbx + 0x1a8], r9d
00000001403d5ce2 mov      dword ptr [rbx + 0x1ac], eax
00000001403d5ce8 mov      dword ptr [rbx + 0x1b0], r9d
00000001403d5cef lea      r9d, [r15 - 0x1c]
00000001403d5cf3 mov      dword ptr [rbx + 0x1b4], 2
00000001403d5cfd mov      dword ptr [rbx + 0x1b8], r12d
00000001403d5d04 mov      dword ptr [rbx + 0x1bc], 0xff0000
00000001403d5d0e mov      dword ptr [rbx + 0x1c0], r12d
00000001403d5d15 mov      dword ptr [rbx + 0x1c4], 0xff
00000001403d5d1f mov      dword ptr [rbx + 0x228], r9d
00000001403d5d26 mov      dword ptr [rbx + 0x22c], 0x10000000
00000001403d5d30 mov      dword ptr [rbx + 0x230], r9d
00000001403d5d37 mov      dword ptr [rbx + 0x234], r10d
00000001403d5d3e mov      eax, dword ptr [rdi + 0x49d0]
00000001403d5d44 mov      dword ptr [rbx + 0x60], eax
00000001403d5d47 mov      eax, dword ptr [rdi + 0x49d0]
00000001403d5d4d mov      dword ptr [rbx + 0x64], eax
00000001403d5d50 mov      eax, dword ptr [rdi + 0x49d0]
00000001403d5d56 mov      dword ptr [rbx + 0x90], eax
00000001403d5d5c mov      eax, dword ptr [rdi + 0x49d0]
00000001403d5d62 mov      dword ptr [rbx + 0x94], eax
00000001403d5d68 mov      eax, dword ptr [rdi + 0x49d0]
00000001403d5d6e lea      r10d, [r15 - 0x40]
00000001403d5d72 mov      dword ptr [rbx + 0x98], eax
00000001403d5d78 mov      eax, dword ptr [rdi + 0x49d0]
00000001403d5d7e mov      dword ptr [rbx + 0x9c], eax
00000001403d5d84 mov      eax, dword ptr [rdi + 0x49d0]
00000001403d5d8a mov      dword ptr [rbx + 0xa0], eax
00000001403d5d90 mov      eax, dword ptr [rdi + 0x49d0]
00000001403d5d96 mov      dword ptr [rbx + 0xa4], eax
00000001403d5d9c mov      eax, dword ptr [rdi + 0x49d0]
00000001403d5da2 mov      dword ptr [rbx + 0x220], eax
00000001403d5da8 mov      eax, dword ptr [rdi + 0x49d0]
00000001403d5dae mov      dword ptr [rbx + 0x224], eax
00000001403d5db4 lea      eax, [r15 - 8]
00000001403d5db8 mov      dword ptr [rbx + 0x238], eax
00000001403d5dbe mov      dword ptr [rbx + 0x23c], 0x600
00000001403d5dc8 mov      dword ptr [rbx + 0x240], eax
00000001403d5dce mov      dword ptr [rbx + 0x244], 0x7000
00000001403d5dd8 mov      dword ptr [rbx + 0x248], eax
00000001403d5dde lea      eax, [r15 + 4]
00000001403d5de2 mov      dword ptr [rbx + 0x24c], 0x1f0
00000001403d5dec mov      dword ptr [rbx + 0x250], r13d
00000001403d5df3 mov      dword ptr [rbx + 0x254], 0x3f00
00000001403d5dfd mov      dword ptr [rbx + 0x258], r13d
00000001403d5e04 mov      dword ptr [rbx + 0x25c], 0xfc000
00000001403d5e0e mov      dword ptr [rbx + 0x260], r13d
00000001403d5e15 mov      dword ptr [rbx + 0x264], 0x3f00000
00000001403d5e1f mov      dword ptr [rbx + 0x268], r13d
00000001403d5e26 mov      dword ptr [rbx + 0x26c], 0xfc000000
00000001403d5e30 mov      dword ptr [rbx + 0x270], r10d
00000001403d5e37 mov      dword ptr [rbx + 0x274], 0x100000
00000001403d5e41 mov      dword ptr [rbx + 0x278], eax
00000001403d5e47 mov      dword ptr [rbx + 0x27c], edx
00000001403d5e4d mov      dword ptr [rbx + 0x280], eax
00000001403d5e53 lea      eax, [r15 + 8]
00000001403d5e57 mov      dword ptr [rbx + 0x284], r8d
00000001403d5e5e mov      dword ptr [rbx + 0x288], eax
00000001403d5e64 mov      dword ptr [rbx + 0x28c], edx
00000001403d5e6a mov      dword ptr [rbx + 0x290], r10d
00000001403d5e71 mov      dword ptr [rbx + 0x294], 0x1fe00000
00000001403d5e7b mov      dword ptr [rbx + 0x298], 0x21094
00000001403d5e85 mov      dword ptr [rbx + 0x29c], ebp
00000001403d5e8b mov      dword ptr [rbx + 0x2a0], 0x210e4
00000001403d5e95 mov      dword ptr [rbx + 0x2a4], ecx
00000001403d5e9b mov      dword ptr [rbx + 0x2a8], 0x210e8
00000001403d5ea5 mov      dword ptr [rbx + 0x2ac], ecx
00000001403d5eab mov      dword ptr [rbx + 0x2b0], eax
00000001403d5eb1 mov      dword ptr [rbx + 0x2b4], r8d
00000001403d5eb8 mov      dword ptr [rbx + 0x2b8], r11d
00000001403d5ebf mov      dword ptr [rbx + 0x2bc], 0x380000
00000001403d5ec9 mov      dword ptr [rbx + 0x2c0], r11d
00000001403d5ed0 mov      dword ptr [rbx + 0x2c4], 0xf800000
00000001403d5eda mov      dword ptr [rbx + 0x2c8], r9d
00000001403d5ee1 mov      dword ptr [rbx + 0x2cc], 0x8000000
00000001403d5eeb mov      dword ptr [rbx + 0x2d0], 0x210b4
00000001403d5ef5 mov      dword ptr [rbx + 0x2d4], 0x1c0
00000001403d5eff mov      dword ptr [rbx + 0x2d8], 0x210c0
00000001403d5f09 mov      dword ptr [rbx + 0x2dc], 0xff000000
00000001403d5f13 mov      dword ptr [rbx + 0x2e0], 0x21090
00000001403d5f1d mov      dword ptr [rbx + 0x2e4], 0x1800000
00000001403d5f27 jmp      0x1403d64d4
00000001403d5f2c mov      ecx, 0x1090
00000001403d5f31 mov      dword ptr [rbx], 0x14
00000001403d5f37 mov      dword ptr [rbx + 8], ecx
00000001403d5f3a mov      eax, 1
00000001403d5f3f mov      dword ptr [rbx + 0x10], ecx
00000001403d5f42 mov      r9d, 0x40000000
00000001403d5f48 mov      dword ptr [rbx + 0x18], ecx
00000001403d5f4b mov      r11d, 0x80000000
00000001403d5f51 mov      dword ptr [rbx + 0x20], ecx
00000001403d5f54 mov      ebp, 0x40000
00000001403d5f59 mov      dword ptr [rbx + 0x28], ecx
00000001403d5f5c lea      edx, [rax + 0x3e]
00000001403d5f5f mov      dword ptr [rbx + 0x30], ecx
00000001403d5f62 mov      r10d, 0x20000000
00000001403d5f68 mov      dword ptr [rbx + 0x38], ecx
00000001403d5f6b mov      dword ptr [rbx + 0x40], ecx
00000001403d5f6e mov      dword ptr [rbx + 0x48], ecx
00000001403d5f71 mov      dword ptr [rbx + 0x50], ecx
00000001403d5f74 mov      dword ptr [rbx + 0x58], ecx
00000001403d5f77 mov      dword ptr [rbx + 0x68], ecx
00000001403d5f7a mov      ecx, 0x1094
00000001403d5f7f mov      dword ptr [rbx + 0x70], ecx
00000001403d5f82 mov      dword ptr [rbx + 0x78], ecx
00000001403d5f85 mov      dword ptr [rbx + 0x80], ecx
00000001403d5f8b mov      dword ptr [rbx + 0xa8], ecx
00000001403d5f91 mov      dword ptr [rbx + 0xb0], ecx
00000001403d5f97 mov      dword ptr [rbx + 0xb8], ecx
00000001403d5f9d mov      ecx, 0x1098
00000001403d5fa2 mov      dword ptr [rbx + 0xc0], ecx
00000001403d5fa8 mov      dword ptr [rbx + 0xc8], ecx
00000001403d5fae mov      dword ptr [rbx + 0xd0], ecx
00000001403d5fb4 mov      dword ptr [rbx + 0xd8], ecx
00000001403d5fba mov      dword ptr [rbx + 0xe0], ecx
00000001403d5fc0 mov      dword ptr [rbx + 0xe8], ecx
00000001403d5fc6 mov      dword ptr [rbx + 0xf0], ecx
00000001403d5fcc mov      dword ptr [rbx + 0xf8], ecx
00000001403d5fd2 mov      dword ptr [rbx + 0x100], ecx
00000001403d5fd8 mov      dword ptr [rbx + 0x110], ecx
00000001403d5fde or       ecx, 0xffffffff
00000001403d5fe1 mov      dword ptr [rbx + 0x11c], ecx
00000001403d5fe7 mov      dword ptr [rbx + 0x124], ecx
00000001403d5fed mov      dword ptr [rbx + 0x12c], ecx
00000001403d5ff3 mov      dword ptr [rbx + 0x134], ecx
00000001403d5ff9 mov      dword ptr [rbx + 4], eax
00000001403d5ffc mov      dword ptr [rbx + 0xc], eax
00000001403d5fff mov      dword ptr [rbx + 0x14], 0x3e
00000001403d6006 mov      dword ptr [rbx + 0x1c], 0xc0
00000001403d600d mov      dword ptr [rbx + 0x24], 0x300
00000001403d6014 mov      dword ptr [rbx + 0x2c], 0xc00
00000001403d601b mov      dword ptr [rbx + 0x34], 0x3000
00000001403d6022 mov      dword ptr [rbx + 0x3c], 0x1c000
00000001403d6029 mov      dword ptr [rbx + 0x44], 0xe0000
00000001403d6030 mov      dword ptr [rbx + 0x4c], 0x700000
00000001403d6037 mov      dword ptr [rbx + 0x54], 0x3800000
00000001403d603e mov      dword ptr [rbx + 0x5c], 0x3c000000
00000001403d6045 mov      dword ptr [rbx + 0x6c], r9d
00000001403d6049 mov      dword ptr [rbx + 0x74], edx
00000001403d604c mov      dword ptr [rbx + 0x7c], 0xfc0
00000001403d6053 mov      dword ptr [rbx + 0x84], 0x3f000
00000001403d605d mov      dword ptr [rbx + 0x88], 0x10c4
00000001403d6067 mov      dword ptr [rbx + 0x8c], 0x3f000000
00000001403d6071 mov      dword ptr [rbx + 0xac], r11d
00000001403d6078 mov      dword ptr [rbx + 0xb4], 0x1f80000
00000001403d6082 mov      dword ptr [rbx + 0xbc], 0x6000000
00000001403d608c mov      dword ptr [rbx + 0xc4], 0x1f
00000001403d6096 mov      dword ptr [rbx + 0xcc], 0x1fe0
00000001403d60a0 mov      dword ptr [rbx + 0xd4], 0x2000
00000001403d60aa mov      dword ptr [rbx + 0xdc], 0x4000
00000001403d60b4 mov      dword ptr [rbx + 0xe4], 0x8000
00000001403d60be mov      dword ptr [rbx + 0xec], 0x10000
00000001403d60c8 mov      dword ptr [rbx + 0xf4], 0x20000
00000001403d60d2 mov      dword ptr [rbx + 0xfc], ebp
00000001403d60d8 mov      dword ptr [rbx + 0x104], 0x80000
00000001403d60e2 mov      dword ptr [rbx + 0x108], 0x10d0
00000001403d60ec mov      dword ptr [rbx + 0x10c], 0xfff00000
00000001403d60f6 mov      dword ptr [rbx + 0x114], r10d
00000001403d60fd mov      dword ptr [rbx + 0x118], 0x109c
00000001403d6107 mov      dword ptr [rbx + 0x120], 0x10a0
00000001403d6111 mov      dword ptr [rbx + 0x128], 0x10a4
00000001403d611b mov      dword ptr [rbx + 0x130], 0x10a8
00000001403d6125 mov      dword ptr [rbx + 0x138], 0x10ac
00000001403d612f mov      dword ptr [rbx + 0x14c], edx
00000001403d6135 mov      r15d, 0x10b4
00000001403d613b mov      dword ptr [rbx + 0x148], r15d
00000001403d6142 mov      r13d, 0x4be4
00000001403d6148 mov      dword ptr [rbx + 0x158], r15d
00000001403d614f mov      edx, 0xffff
00000001403d6154 mov      dword ptr [rbx + 0x160], r15d
00000001403d615b mov      dword ptr [rbx + 0x170], r15d
00000001403d6162 lea      r8d, [r15 + 0x20]
00000001403d6166 mov      dword ptr [rbx + 0x150], r8d
00000001403d616d lea      r12d, [r15 + 0x24]
00000001403d6171 mov      dword ptr [rbx + 0x168], r8d
00000001403d6178 mov      r8d, 0xffff0000
00000001403d617e mov      dword ptr [rbx + 0x178], r15d
00000001403d6185 mov      dword ptr [rbx + 0x188], r15d
00000001403d618c mov      dword ptr [rbx + 0x198], r15d
00000001403d6193 mov      dword ptr [rbx + 0x19c], r9d
00000001403d619a mov      dword ptr [rbx + 0x16c], r8d
00000001403d61a1 mov      dword ptr [rbx + 0x13c], ecx
00000001403d61a7 mov      dword ptr [rbx + 0x140], 0x10b0
00000001403d61b1 mov      dword ptr [rbx + 0x144], ecx
00000001403d61b7 mov      dword ptr [rbx + 0x154], edx
00000001403d61bd mov      dword ptr [rbx + 0x15c], 0x200
00000001403d61c7 mov      dword ptr [rbx + 0x164], 0xfc00
00000001403d61d1 mov      dword ptr [rbx + 0x174], 0x80000
00000001403d61db mov      dword ptr [rbx + 0x17c], 0x3f00000
00000001403d61e5 mov      dword ptr [rbx + 0x180], r12d
00000001403d61ec mov      dword ptr [rbx + 0x184], edx
00000001403d61f2 mov      dword ptr [rbx + 0x18c], r10d
00000001403d61f9 mov      dword ptr [rbx + 0x190], 0x414
00000001403d6203 mov      dword ptr [rbx + 0x194], 0x1ff
00000001403d620d mov      dword ptr [rbx + 0x1a0], r15d
00000001403d6214 mov      dword ptr [rbx + 0x1a4], r11d
00000001403d621b lea      r11d, [r15 + 4]
00000001403d621f mov      dword ptr [rbx + 0x1c8], r13d
00000001403d6226 lea      r15d, [r12 - 0x1c]
00000001403d622b mov      dword ptr [rbx + 0x1cc], 0xff00
00000001403d6235 mov      dword ptr [rbx + 0x1d0], r11d
00000001403d623c mov      dword ptr [rbx + 0x1d4], 0x3800000
00000001403d6246 mov      dword ptr [rbx + 0x1d8], r11d
00000001403d624d mov      dword ptr [rbx + 0x1dc], 0x4000000
00000001403d6257 mov      dword ptr [rbx + 0x1e0], r15d
00000001403d625e mov      dword ptr [rbx + 0x1e4], r9d
00000001403d6265 lea      r9d, [r13 + 0x10]
00000001403d6269 mov      dword ptr [rbx + 0x1e8], 0x10cc
00000001403d6273 mov      dword ptr [rbx + 0x1ec], 0xc0
00000001403d627d mov      dword ptr [rbx + 0x1f0], r11d
00000001403d6284 mov      dword ptr [rbx + 0x1f4], 0x18000000
00000001403d628e mov      dword ptr [rbx + 0x1f8], r11d
00000001403d6295 lea      r11d, [r12 - 0x10]
00000001403d629a mov      dword ptr [rbx + 0x1fc], 0x60000000
00000001403d62a4 mov      dword ptr [rbx + 0x200], r11d
00000001403d62ab mov      dword ptr [rbx + 0x204], 0x1000
00000001403d62b5 mov      dword ptr [rbx + 0x208], r11d
00000001403d62bc mov      dword ptr [rbx + 0x20c], 0x7e000
00000001403d62c6 mov      dword ptr [rbx + 0x210], r12d
00000001403d62cd mov      dword ptr [rbx + 0x214], r8d
00000001403d62d4 mov      dword ptr [rbx + 0x218], r11d
00000001403d62db mov      dword ptr [rbx + 0x21c], 0x400000
00000001403d62e5 mov      dword ptr [rbx + 0x1a8], r9d
00000001403d62ec mov      dword ptr [rbx + 0x1ac], eax
00000001403d62f2 mov      dword ptr [rbx + 0x1b0], r9d
00000001403d62f9 mov      dword ptr [rbx + 0x1b4], 2
00000001403d6303 mov      dword ptr [rbx + 0x1b8], r13d
00000001403d630a mov      dword ptr [rbx + 0x1bc], 0xff0000
00000001403d6314 mov      dword ptr [rbx + 0x1c0], r13d
00000001403d631b mov      dword ptr [rbx + 0x1c4], 0xff
00000001403d6325 mov      dword ptr [rbx + 0x228], r15d
00000001403d632c mov      dword ptr [rbx + 0x22c], 0x10000000
00000001403d6336 mov      dword ptr [rbx + 0x230], r15d
00000001403d633d mov      dword ptr [rbx + 0x234], r10d
00000001403d6344 mov      eax, dword ptr [rdi + 0x49d0]
00000001403d634a mov      dword ptr [rbx + 0x60], eax
00000001403d634d mov      eax, dword ptr [rdi + 0x49d0]
00000001403d6353 mov      dword ptr [rbx + 0x64], eax
00000001403d6356 mov      eax, dword ptr [rdi + 0x49d0]
00000001403d635c mov      dword ptr [rbx + 0x90], eax
00000001403d6362 mov      eax, dword ptr [rdi + 0x49d0]
00000001403d6368 mov      dword ptr [rbx + 0x94], eax
00000001403d636e mov      eax, dword ptr [rdi + 0x49d0]
00000001403d6374 mov      dword ptr [rbx + 0x98], eax
00000001403d637a mov      eax, dword ptr [rdi + 0x49d0]
00000001403d6380 lea      r9d, [r12 - 0x40]
00000001403d6385 mov      dword ptr [rbx + 0x9c], eax
00000001403d638b mov      eax, dword ptr [rdi + 0x49d0]
00000001403d6391 mov      dword ptr [rbx + 0xa0], eax
00000001403d6397 mov      eax, dword ptr [rdi + 0x49d0]
00000001403d639d mov      dword ptr [rbx + 0xa4], eax
00000001403d63a3 mov      eax, dword ptr [rdi + 0x49d0]
00000001403d63a9 mov      dword ptr [rbx + 0x220], eax
00000001403d63af mov      eax, dword ptr [rdi + 0x49d0]
00000001403d63b5 mov      dword ptr [rbx + 0x224], eax
00000001403d63bb lea      eax, [r12 - 8]
00000001403d63c0 mov      dword ptr [rbx + 0x238], eax
00000001403d63c6 mov      dword ptr [rbx + 0x23c], 0x600
00000001403d63d0 mov      dword ptr [rbx + 0x240], eax
00000001403d63d6 mov      dword ptr [rbx + 0x244], 0x7000
00000001403d63e0 mov      dword ptr [rbx + 0x248], eax
00000001403d63e6 lea      eax, [r12 - 0xc]
00000001403d63eb mov      dword ptr [rbx + 0x24c], 0x1f0
00000001403d63f5 mov      dword ptr [rbx + 0x250], eax
00000001403d63fb mov      dword ptr [rbx + 0x254], 0x3f00
00000001403d6405 mov      dword ptr [rbx + 0x258], eax
00000001403d640b mov      dword ptr [rbx + 0x25c], 0xfc000
00000001403d6415 mov      dword ptr [rbx + 0x260], eax
00000001403d641b mov      dword ptr [rbx + 0x264], 0x3f00000
00000001403d6425 mov      dword ptr [rbx + 0x268], eax
00000001403d642b lea      eax, [r12 + 4]
00000001403d6430 mov      dword ptr [rbx + 0x26c], 0xfc000000
00000001403d643a mov      dword ptr [rbx + 0x270], r9d
00000001403d6441 mov      dword ptr [rbx + 0x274], 0x100000
00000001403d644b mov      dword ptr [rbx + 0x278], eax
00000001403d6451 mov      dword ptr [rbx + 0x27c], edx
00000001403d6457 mov      dword ptr [rbx + 0x280], eax
00000001403d645d lea      eax, [r12 + 8]
00000001403d6462 mov      dword ptr [rbx + 0x284], r8d
00000001403d6469 mov      dword ptr [rbx + 0x288], eax
00000001403d646f mov      dword ptr [rbx + 0x28c], edx
00000001403d6475 mov      dword ptr [rbx + 0x290], r9d
00000001403d647c mov      dword ptr [rbx + 0x294], 0x1fe00000
00000001403d6486 mov      dword ptr [rbx + 0x298], 0x1094
00000001403d6490 mov      dword ptr [rbx + 0x29c], ebp
00000001403d6496 mov      dword ptr [rbx + 0x2a0], 0x10e4
00000001403d64a0 mov      dword ptr [rbx + 0x2a4], ecx
00000001403d64a6 mov      dword ptr [rbx + 0x2a8], 0x10e8
00000001403d64b0 mov      dword ptr [rbx + 0x2ac], ecx
00000001403d64b6 mov      dword ptr [rbx + 0x2b0], eax
00000001403d64bc mov      dword ptr [rbx + 0x2b4], r8d
00000001403d64c3 mov      dword ptr [rbx + 0x2b8], r11d
00000001403d64ca mov      dword ptr [rbx + 0x2bc], 0x380000
00000001403d64d4 lea      rbp, [rip + 0x549b25]
00000001403d64db cmp      byte ptr [rdi + 0x49cc], 0
00000001403d64e2 je       0x1403d6535
00000001403d64e4 mov      rcx, qword ptr [rip + 0x549b15]
00000001403d64eb cmp      rcx, rbp
00000001403d64ee je       0x1403d6524
00000001403d64f0 cmp      byte ptr [rcx + 0x169], 4
00000001403d64f7 jb       0x1403d6524
00000001403d64f9 test     dword ptr [rcx + 0x16c], 0x1000
00000001403d6503 je       0x1403d6524
00000001403d6505 mov      rcx, qword ptr [rcx + 0x158]
00000001403d650c lea      r9, [rip + 0x275f5d]
00000001403d6513 mov      edx, 0x44
00000001403d6518 lea      r8, [rip + 0x2fecf9]
00000001403d651f call     0x140008874
00000001403d6524 mov      r8d, 0xba
00000001403d652a mov      rdx, rbx
00000001403d652d mov      rcx, rdi
00000001403d6530 call     0x1403c9ac0
00000001403d6535 mov      rbx, qword ptr [rsp + 0x40]
00000001403d653a mov      rbp, qword ptr [rsp + 0x48]
00000001403d653f mov      rdi, qword ptr [rsp + 0x50]
00000001403d6544 add      rsp, 0x20
00000001403d6548 pop      r15
00000001403d654a pop      r13
00000001403d654c pop      r12
00000001403d654e ret      