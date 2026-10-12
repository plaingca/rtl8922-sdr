00000001403c8c68 mov      rax, rsp
00000001403c8c6b mov      qword ptr [rax + 8], rbx
00000001403c8c6f mov      qword ptr [rax + 0x10], rbp
00000001403c8c73 mov      qword ptr [rax + 0x18], rdi
00000001403c8c77 mov      qword ptr [rax + 0x20], r12
00000001403c8c7b push     r13
00000001403c8c7d push     r14
00000001403c8c7f push     r15
00000001403c8c81 sub      rsp, 0x20
00000001403c8c85 mov      rbx, qword ptr [rcx + 0x9a0]
00000001403c8c8c lea      rbp, [rip + 0x55736d]
00000001403c8c93 mov      eax, dword ptr [rcx + 0x13f8]
00000001403c8c99 add      rbx, 0x1890
00000001403c8ca0 mov      rdi, rcx
00000001403c8ca3 cmp      eax, 4
00000001403c8ca6 je       0x1403c93c2
00000001403c8cac cmp      eax, 7
00000001403c8caf je       0x1403c8d58
00000001403c8cb5 mov      rcx, qword ptr [rip + 0x557344]
00000001403c8cbc cmp      rcx, rbp
00000001403c8cbf je       0x1403c8cf5
00000001403c8cc1 cmp      byte ptr [rcx + 0x169], 3
00000001403c8cc8 jb       0x1403c8cf5
00000001403c8cca test     dword ptr [rcx + 0x16c], 0x1000
00000001403c8cd4 je       0x1403c8cf5
00000001403c8cd6 mov      rcx, qword ptr [rcx + 0x158]
00000001403c8cdd lea      r9, [rip + 0x28355c]
00000001403c8ce4 mov      edx, 0x142
00000001403c8ce9 lea      r8, [rip + 0x30c490]
00000001403c8cf0 call     0x140008874
00000001403c8cf5 cmp      byte ptr [rdi + 0x49cd], 0
00000001403c8cfc je       0x1403c99c0
00000001403c8d02 mov      rcx, qword ptr [rip + 0x5572f7]
00000001403c8d09 cmp      rcx, rbp
00000001403c8d0c je       0x1403c8d42
00000001403c8d0e cmp      byte ptr [rcx + 0x169], 4
00000001403c8d15 jb       0x1403c8d42
00000001403c8d17 test     dword ptr [rcx + 0x16c], 0x1000
00000001403c8d21 je       0x1403c8d42
00000001403c8d23 mov      rcx, qword ptr [rcx + 0x158]
00000001403c8d2a lea      r9, [rip + 0x28350f]
00000001403c8d31 mov      edx, 0x143
00000001403c8d36 lea      r8, [rip + 0x30c443]
00000001403c8d3d call     0x140008874
00000001403c8d42 mov      r8d, 0xd4
00000001403c8d48 mov      rdx, rbx
00000001403c8d4b mov      rcx, rdi
00000001403c8d4e call     0x1403c9a3c
00000001403c8d53 jmp      0x1403c99c0
00000001403c8d58 mov      eax, 0x210f0
00000001403c8d5d mov      dword ptr [rbx + 4], 0xff0000
00000001403c8d64 mov      ecx, 0x2065c
00000001403c8d69 mov      dword ptr [rbx], eax
00000001403c8d6b mov      dword ptr [rbx + 8], eax
00000001403c8d6e mov      r14d, 0xffff
00000001403c8d74 or       eax, 0xffffffff
00000001403c8d77 mov      dword ptr [rbx + 0x28], ecx
00000001403c8d7a mov      edx, 0x1ff
00000001403c8d7f mov      dword ptr [rbx + 0x14], eax
00000001403c8d82 mov      ebp, 0xffff0000
00000001403c8d87 mov      dword ptr [rbx + 0x34], eax
00000001403c8d8a mov      dword ptr [rbx + 0x44], eax
00000001403c8d8d mov      r15d, 0x10
00000001403c8d93 mov      dword ptr [rbx + 0xf4], eax
00000001403c8d99 mov      r12d, 0x7000
00000001403c8d9f mov      dword ptr [rbx + 0xfc], eax
00000001403c8da5 mov      r13d, 0x40000
00000001403c8dab mov      eax, 0x24168
00000001403c8db0 mov      dword ptr [rbx + 0x38], ecx
00000001403c8db3 mov      ecx, 0x200f0
00000001403c8db8 mov      dword ptr [rbx + 0x128], eax
00000001403c8dbe mov      dword ptr [rbx + 0x148], eax
00000001403c8dc4 mov      dword ptr [rbx + 0xc], r14d
00000001403c8dc8 mov      dword ptr [rbx + 0x10], 0x2cf30
00000001403c8dcf mov      dword ptr [rbx + 0x18], 0x210f4
00000001403c8dd6 mov      dword ptr [rbx + 0x1c], 0x1000000
00000001403c8ddd mov      dword ptr [rbx + 0x20], 0x210f8
00000001403c8de4 mov      dword ptr [rbx + 0x24], 0x80000000
00000001403c8deb mov      dword ptr [rbx + 0x2c], 0xf
00000001403c8df2 mov      dword ptr [rbx + 0x30], 0x20f10
00000001403c8df9 mov      dword ptr [rbx + 0x3c], 0xf0
00000001403c8e00 mov      dword ptr [rbx + 0x40], 0x20f14
00000001403c8e07 mov      dword ptr [rbx + 0xb4], 0x2f90c
00000001403c8e11 mov      dword ptr [rbx + 0xb8], edx
00000001403c8e17 mov      dword ptr [rbx + 0xbc], 0x2fa0c
00000001403c8e21 mov      dword ptr [rbx + 0xc0], edx
00000001403c8e27 mov      dword ptr [rbx + 0xdc], 0x20580
00000001403c8e31 mov      dword ptr [rbx + 0xe0], ecx
00000001403c8e37 mov      dword ptr [rbx + 0xe4], ebp
00000001403c8e3d mov      dword ptr [rbx + 0xe8], ecx
00000001403c8e43 mov      dword ptr [rbx + 0xec], r14d
00000001403c8e4a mov      dword ptr [rbx + 0xf0], 0x200f4
00000001403c8e54 mov      dword ptr [rbx + 0xf8], 0x200f8
00000001403c8e5e mov      dword ptr [rbx + 0x100], 0x200fc
00000001403c8e68 mov      dword ptr [rbx + 0x104], ebp
00000001403c8e6e mov      dword ptr [rbx + 0x48], 0x20200
00000001403c8e75 mov      dword ptr [rbx + 0x4c], 0x1000
00000001403c8e7c mov      dword ptr [rbx + 0x50], 0x2df00
00000001403c8e83 mov      dword ptr [rbx + 0x54], 0x2df04
00000001403c8e8a mov      dword ptr [rbx + 0x58], 0x2df08
00000001403c8e91 mov      dword ptr [rbx + 0x5c], 0x2df0c
00000001403c8e98 mov      dword ptr [rbx + 0x60], 0x2df10
00000001403c8e9f mov      dword ptr [rbx + 0x64], 0x2df14
00000001403c8ea6 mov      dword ptr [rbx + 0x68], 0x2df18
00000001403c8ead mov      dword ptr [rbx + 0x6c], 0x2df1c
00000001403c8eb4 mov      dword ptr [rbx + 0x70], 0x2df20
00000001403c8ebb mov      dword ptr [rbx + 0x74], 0x2df24
00000001403c8ec2 mov      dword ptr [rbx + 0x78], 0x2df28
00000001403c8ec9 mov      dword ptr [rbx + 0x7c], 0x2df2c
00000001403c8ed0 mov      dword ptr [rbx + 0x80], 0x2df30
00000001403c8eda mov      dword ptr [rbx + 0x84], 0x2df34
00000001403c8ee4 mov      dword ptr [rbx + 0x88], 0x2df38
00000001403c8eee mov      dword ptr [rbx + 0x8c], 0x2df3c
00000001403c8ef8 mov      dword ptr [rbx + 0x90], 0x2df40
00000001403c8f02 mov      dword ptr [rbx + 0x94], 0x2df44
00000001403c8f0c mov      dword ptr [rbx + 0x98], 0x2df48
00000001403c8f16 mov      dword ptr [rbx + 0x9c], 0x2df50
00000001403c8f20 mov      dword ptr [rbx + 0xa0], 0x2df58
00000001403c8f2a mov      dword ptr [rbx + 0xa4], 0x2df5c
00000001403c8f34 mov      dword ptr [rbx + 0xa8], 0x2df60
00000001403c8f3e mov      dword ptr [rbx + 0xac], 0x2df70
00000001403c8f48 mov      dword ptr [rbx + 0xb0], 0x2df74
00000001403c8f52 mov      dword ptr [rbx + 0x108], 0x2415c
00000001403c8f5c mov      dword ptr [rbx + 0x110], r15d
00000001403c8f63 mov      dword ptr [rbx + 0x118], 0x24158
00000001403c8f6d mov      dword ptr [rbx + 0x120], r12d
00000001403c8f74 mov      dword ptr [rbx + 0x130], r13d
00000001403c8f7b mov      dword ptr [rbx + 0x138], 0x24108
00000001403c8f85 mov      dword ptr [rbx + 0x140], 0x3e000000
00000001403c8f8f mov      dword ptr [rbx + 0x150], 0x400000
00000001403c8f99 mov      dword ptr [rbx + 0x158], eax
00000001403c8f9f lea      r8d, [r15 + 0x10]
00000001403c8fa3 mov      dword ptr [rbx + 0x160], 0x2000000
00000001403c8fad lea      eax, [r15 - 0xe]
00000001403c8fb1 mov      dword ptr [rbx + 0x170], eax
00000001403c8fb7 mov      r10d, 0x2ca10
00000001403c8fbd mov      dword ptr [rbx + 0x1b8], r10d
00000001403c8fc4 mov      r9d, 0x2ca0c
00000001403c8fca mov      dword ptr [rbx + 0x1c8], r10d
00000001403c8fd1 mov      ecx, 0xe0000000
00000001403c8fd6 mov      dword ptr [rbx + 0x1d8], r10d
00000001403c8fdd mov      edx, 0x10000000
00000001403c8fe2 mov      dword ptr [rbx + 0x1e8], r10d
00000001403c8fe9 mov      dword ptr [rbx + 0x1f8], r10d
00000001403c8ff0 mov      r10d, 0x2ca14
00000001403c8ff6 mov      dword ptr [rbx + 0x168], r9d
00000001403c8ffd mov      dword ptr [rbx + 0x178], r9d
00000001403c9004 mov      dword ptr [rbx + 0x188], r9d
00000001403c900b mov      dword ptr [rbx + 0x198], r9d
00000001403c9012 lea      r11d, [r10 + 4]
00000001403c9016 mov      dword ptr [rbx + 0x1a8], r9d
00000001403c901d mov      r9d, 0xf800000
00000001403c9023 mov      dword ptr [rbx + 0x208], r10d
00000001403c902a mov      dword ptr [rbx + 0x218], r10d
00000001403c9031 mov      dword ptr [rbx + 0x1b0], r9d
00000001403c9038 mov      dword ptr [rbx + 0x200], r9d
00000001403c903f mov      dword ptr [rbx + 0x180], ecx
00000001403c9045 mov      dword ptr [rbx + 0x190], edx
00000001403c904b mov      dword ptr [rbx + 0x1a0], r8d
00000001403c9052 mov      dword ptr [rbx + 0x1c0], eax
00000001403c9058 mov      dword ptr [rbx + 0x1d0], ecx
00000001403c905e mov      dword ptr [rbx + 0x1e0], edx
00000001403c9064 mov      dword ptr [rbx + 0x1f0], r8d
00000001403c906b mov      dword ptr [rbx + 0x210], eax
00000001403c9071 mov      dword ptr [rbx + 0x220], ecx
00000001403c9077 mov      dword ptr [rbx + 0x228], r10d
00000001403c907e mov      dword ptr [rbx + 0x230], edx
00000001403c9084 mov      dword ptr [rbx + 0x238], r10d
00000001403c908b mov      dword ptr [rbx + 0x240], r8d
00000001403c9092 mov      dword ptr [rbx + 0x248], r10d
00000001403c9099 mov      r10d, 0x7fc0
00000001403c909f mov      dword ptr [rbx + 0x250], r9d
00000001403c90a6 mov      dword ptr [rbx + 0x258], r11d
00000001403c90ad mov      dword ptr [rbx + 0x260], eax
00000001403c90b3 mov      dword ptr [rbx + 0x268], r11d
00000001403c90ba mov      dword ptr [rbx + 0x270], ecx
00000001403c90c0 mov      dword ptr [rbx + 0x278], r11d
00000001403c90c7 mov      dword ptr [rbx + 0x280], edx
00000001403c90cd mov      dword ptr [rbx + 0x288], r11d
00000001403c90d4 mov      dword ptr [rbx + 0x290], r8d
00000001403c90db mov      dword ptr [rbx + 0x298], r11d
00000001403c90e2 mov      dword ptr [rbx + 0x2a0], r9d
00000001403c90e9 mov      dword ptr [rbx + 0x2a8], 0x2ca0c
00000001403c90f3 mov      dword ptr [rbx + 0x2b0], r10d
00000001403c90fa mov      dword ptr [rbx + 0x2b8], 0x2ca10
00000001403c9104 mov      dword ptr [rbx + 0x2c0], r10d
00000001403c910b mov      dword ptr [rbx + 0x2c8], 0x2ca14
00000001403c9115 mov      dword ptr [rbx + 0x2d0], r10d
00000001403c911c mov      dword ptr [rbx + 0x2d8], r11d
00000001403c9123 mov      r11d, 0x3ff
00000001403c9129 mov      dword ptr [rbx + 0x2e0], r10d
00000001403c9130 mov      dword ptr [rbx + 0x2e8], 0x2ca1c
00000001403c913a mov      dword ptr [rbx + 0x2f0], r11d
00000001403c9141 mov      dword ptr [rbx + 0x2f8], 0x2ca20
00000001403c914b mov      dword ptr [rbx + 0x300], r11d
00000001403c9152 mov      dword ptr [rbx + 0x10c], 0x2455c
00000001403c915c mov      dword ptr [rbx + 0x114], r15d
00000001403c9163 mov      r15d, 0x24568
00000001403c9169 mov      dword ptr [rbx + 0x11c], 0x24558
00000001403c9173 mov      dword ptr [rbx + 0x124], r12d
00000001403c917a mov      dword ptr [rbx + 0x12c], r15d
00000001403c9181 mov      dword ptr [rbx + 0x134], r13d
00000001403c9188 mov      dword ptr [rbx + 0x13c], 0x24508
00000001403c9192 mov      dword ptr [rbx + 0x144], 0x3e000000
00000001403c919c mov      dword ptr [rbx + 0x14c], r15d
00000001403c91a3 mov      dword ptr [rbx + 0x154], 0x400000
00000001403c91ad mov      dword ptr [rbx + 0x15c], r15d
00000001403c91b4 mov      r15d, 0x2cb0c
00000001403c91ba mov      dword ptr [rbx + 0x164], 0x2000000
00000001403c91c4 mov      dword ptr [rbx + 0x16c], r15d
00000001403c91cb mov      dword ptr [rbx + 0x174], eax
00000001403c91d1 mov      dword ptr [rbx + 0x17c], r15d
00000001403c91d8 lea      r13d, [r15 + 4]
00000001403c91dc mov      dword ptr [rbx + 0x184], ecx
00000001403c91e2 lea      r12d, [r15 + 8]
00000001403c91e6 mov      dword ptr [rbx + 0x18c], r15d
00000001403c91ed mov      dword ptr [rbx + 0x194], edx
00000001403c91f3 mov      dword ptr [rbx + 0x19c], r15d
00000001403c91fa mov      dword ptr [rbx + 0x1a4], r8d
00000001403c9201 mov      dword ptr [rbx + 0x1ac], r15d
00000001403c9208 lea      r15d, [r13 + 8]
00000001403c920c mov      dword ptr [rbx + 0x1b4], r9d
00000001403c9213 mov      dword ptr [rbx + 0x1bc], r13d
00000001403c921a mov      dword ptr [rbx + 0x1c4], eax
00000001403c9220 mov      dword ptr [rbx + 0x1cc], r13d
00000001403c9227 mov      dword ptr [rbx + 0x1d4], ecx
00000001403c922d mov      dword ptr [rbx + 0x1dc], r13d
00000001403c9234 mov      dword ptr [rbx + 0x1e4], edx
00000001403c923a mov      dword ptr [rbx + 0x1ec], r13d
00000001403c9241 mov      dword ptr [rbx + 0x1f4], r8d
00000001403c9248 mov      dword ptr [rbx + 0x1fc], r13d
00000001403c924f mov      dword ptr [rbx + 0x204], r9d
00000001403c9256 mov      dword ptr [rbx + 0x20c], r12d
00000001403c925d mov      dword ptr [rbx + 0x214], eax
00000001403c9263 mov      dword ptr [rbx + 0x21c], r12d
00000001403c926a mov      dword ptr [rbx + 0x224], ecx
00000001403c9270 mov      dword ptr [rbx + 0x22c], r12d
00000001403c9277 mov      dword ptr [rbx + 0x234], edx
00000001403c927d mov      dword ptr [rbx + 0x23c], r12d
00000001403c9284 mov      dword ptr [rbx + 0x244], r8d
00000001403c928b mov      dword ptr [rbx + 0x24c], r12d
00000001403c9292 mov      dword ptr [rbx + 0x254], r9d
00000001403c9299 mov      dword ptr [rbx + 0x25c], r15d
00000001403c92a0 mov      dword ptr [rbx + 0x264], eax
00000001403c92a6 mov      dword ptr [rbx + 0x26c], r15d
00000001403c92ad mov      dword ptr [rbx + 0x274], ecx
00000001403c92b3 lea      ecx, [rax - 1]
00000001403c92b6 mov      dword ptr [rbx + 0x27c], r15d
00000001403c92bd mov      dword ptr [rbx + 0x284], edx
00000001403c92c3 mov      edx, 0x20104
00000001403c92c8 mov      dword ptr [rbx + 0x28c], r15d
00000001403c92cf mov      dword ptr [rbx + 0x294], r8d
00000001403c92d6 mov      dword ptr [rbx + 0x29c], r15d
00000001403c92dd mov      dword ptr [rbx + 0x2a4], r9d
00000001403c92e4 mov      dword ptr [rbx + 0x2ac], 0x2cb0c
00000001403c92ee mov      dword ptr [rbx + 0x2b4], r10d
00000001403c92f5 mov      dword ptr [rbx + 0x2bc], r13d
00000001403c92fc mov      dword ptr [rbx + 0x2c4], r10d
00000001403c9303 mov      dword ptr [rbx + 0x2cc], r12d
00000001403c930a mov      dword ptr [rbx + 0x2d4], r10d
00000001403c9311 mov      dword ptr [rbx + 0x2dc], r15d
00000001403c9318 mov      dword ptr [rbx + 0x2e4], r10d
00000001403c931f mov      dword ptr [rbx + 0x2ec], 0x2cb1c
00000001403c9329 mov      dword ptr [rbx + 0x2f4], r11d
00000001403c9330 mov      dword ptr [rbx + 0x2fc], 0x2cb20
00000001403c933a mov      dword ptr [rbx + 0x304], r11d
00000001403c9341 mov      dword ptr [rbx + 0x318], edx
00000001403c9347 mov      dword ptr [rbx + 0x31c], ecx
00000001403c934d mov      dword ptr [rbx + 0x320], edx
00000001403c9353 mov      dword ptr [rbx + 0x324], eax
00000001403c9359 mov      eax, 0x21328
00000001403c935e mov      dword ptr [rbx + 0x328], edx
00000001403c9364 mov      dword ptr [rbx + 0x32c], 4
00000001403c936e mov      dword ptr [rbx + 0x330], edx
00000001403c9374 mov      dword ptr [rbx + 0x334], ebp
00000001403c937a mov      dword ptr [rbx + 0x338], 0x21324
00000001403c9384 mov      dword ptr [rbx + 0x33c], ebp
00000001403c938a mov      dword ptr [rbx + 0x340], eax
00000001403c9390 mov      dword ptr [rbx + 0x344], r14d
00000001403c9397 mov      dword ptr [rbx + 0x348], eax
00000001403c939d mov      dword ptr [rbx + 0x34c], ebp
00000001403c93a3 mov      dword ptr [rbx + 0x308], 0x20520
00000001403c93ad mov      dword ptr [rbx + 0x30c], ecx
00000001403c93b3 mov      dword ptr [rbx + 0x310], 0x20000
00000001403c93bd jmp      0x1403c99b3
00000001403c93c2 mov      eax, 0x10f0
00000001403c93c7 mov      dword ptr [rbx + 4], 0xff0000
00000001403c93ce mov      ecx, 0x65c
00000001403c93d3 mov      dword ptr [rbx], eax
00000001403c93d5 mov      ebp, 0xffff0000
00000001403c93da mov      dword ptr [rbx + 8], eax
00000001403c93dd or       eax, 0xffffffff
00000001403c93e0 mov      dword ptr [rbx + 0x28], ecx
00000001403c93e3 mov      r14d, 0xffff
00000001403c93e9 mov      dword ptr [rbx + 0x14], eax
00000001403c93ec mov      edx, 0x1ff
00000001403c93f1 mov      dword ptr [rbx + 0x34], eax
00000001403c93f4 mov      dword ptr [rbx + 0x44], eax
00000001403c93f7 mov      r15d, 0x10
00000001403c93fd mov      dword ptr [rbx + 0xf4], eax
00000001403c9403 mov      r12d, 0x7000
00000001403c9409 mov      dword ptr [rbx + 0xfc], eax
00000001403c940f mov      r13d, 0x40000
00000001403c9415 mov      eax, 0x4168
00000001403c941a mov      dword ptr [rbx + 0x38], ecx
00000001403c941d mov      ecx, 0xf0
00000001403c9422 mov      dword ptr [rbx + 0xe4], ebp
00000001403c9428 mov      dword ptr [rbx + 0x104], ebp
00000001403c942e mov      ebp, 0x3e000000
00000001403c9433 mov      dword ptr [rbx + 0x128], eax
00000001403c9439 mov      dword ptr [rbx + 0x148], eax
00000001403c943f mov      dword ptr [rbx + 0xc], r14d
00000001403c9443 mov      dword ptr [rbx + 0x10], 0x2e30
00000001403c944a mov      dword ptr [rbx + 0x18], 0x10f4
00000001403c9451 mov      dword ptr [rbx + 0x1c], 0x1000000
00000001403c9458 mov      dword ptr [rbx + 0x20], 0x10f8
00000001403c945f mov      dword ptr [rbx + 0x24], 0x80000000
00000001403c9466 mov      dword ptr [rbx + 0x2c], 0xf
00000001403c946d mov      dword ptr [rbx + 0x30], 0xf10
00000001403c9474 mov      dword ptr [rbx + 0x3c], ecx
00000001403c9477 mov      dword ptr [rbx + 0x40], 0xf14
00000001403c947e mov      dword ptr [rbx + 0xb4], 0xee0c
00000001403c9488 mov      dword ptr [rbx + 0xb8], edx
00000001403c948e mov      dword ptr [rbx + 0xbc], 0xef0c
00000001403c9498 mov      dword ptr [rbx + 0xc0], edx
00000001403c949e mov      dword ptr [rbx + 0xdc], 0x580
00000001403c94a8 mov      dword ptr [rbx + 0xe0], ecx
00000001403c94ae mov      dword ptr [rbx + 0xe8], ecx
00000001403c94b4 mov      dword ptr [rbx + 0xec], r14d
00000001403c94bb mov      dword ptr [rbx + 0xf0], 0xf4
00000001403c94c5 mov      dword ptr [rbx + 0xf8], 0xf8
00000001403c94cf mov      dword ptr [rbx + 0x100], 0xfc
00000001403c94d9 mov      dword ptr [rbx + 0x48], 0x200
00000001403c94e0 mov      dword ptr [rbx + 0x4c], 0x1000
00000001403c94e7 mov      dword ptr [rbx + 0x50], 0x3e00
00000001403c94ee mov      dword ptr [rbx + 0x54], 0x3e04
00000001403c94f5 mov      dword ptr [rbx + 0x58], 0x3e08
00000001403c94fc mov      dword ptr [rbx + 0x5c], 0x3e0c
00000001403c9503 mov      dword ptr [rbx + 0x60], 0x3e10
00000001403c950a mov      dword ptr [rbx + 0x64], 0x3e14
00000001403c9511 mov      dword ptr [rbx + 0x68], 0x3e18
00000001403c9518 mov      dword ptr [rbx + 0x6c], 0x3e1c
00000001403c951f mov      dword ptr [rbx + 0x70], 0x3e20
00000001403c9526 mov      dword ptr [rbx + 0x74], 0x3e24
00000001403c952d mov      dword ptr [rbx + 0x78], 0x3e28
00000001403c9534 mov      dword ptr [rbx + 0x7c], 0x3e2c
00000001403c953b mov      dword ptr [rbx + 0x80], 0x3e30
00000001403c9545 mov      dword ptr [rbx + 0x84], 0x3e34
00000001403c954f mov      dword ptr [rbx + 0x88], 0x3e38
00000001403c9559 mov      dword ptr [rbx + 0x8c], 0x3e3c
00000001403c9563 mov      dword ptr [rbx + 0x90], 0x3e40
00000001403c956d mov      dword ptr [rbx + 0x94], 0x3e44
00000001403c9577 mov      dword ptr [rbx + 0x98], 0x3e48
00000001403c9581 mov      dword ptr [rbx + 0x9c], 0x3e50
00000001403c958b mov      dword ptr [rbx + 0xa0], 0x3e58
00000001403c9595 mov      dword ptr [rbx + 0xa4], 0x3e5c
00000001403c959f mov      dword ptr [rbx + 0xa8], 0x3e60
00000001403c95a9 mov      dword ptr [rbx + 0xac], 0x3e70
00000001403c95b3 mov      dword ptr [rbx + 0xb0], 0x3e74
00000001403c95bd mov      dword ptr [rbx + 0x108], 0x415c
00000001403c95c7 mov      dword ptr [rbx + 0x110], r15d
00000001403c95ce mov      dword ptr [rbx + 0x118], 0x4158
00000001403c95d8 mov      dword ptr [rbx + 0x120], r12d
00000001403c95df mov      dword ptr [rbx + 0x130], r13d
00000001403c95e6 mov      dword ptr [rbx + 0x138], 0x4108
00000001403c95f0 mov      dword ptr [rbx + 0x140], ebp
00000001403c95f6 mov      dword ptr [rbx + 0x158], eax
00000001403c95fc lea      r8d, [r15 + 0x10]
00000001403c9600 mov      dword ptr [rbx + 0x160], 0x2000000
00000001403c960a lea      eax, [r15 - 0xe]
00000001403c960e mov      dword ptr [rbx + 0x170], eax
00000001403c9614 mov      r10d, 0x2c10
00000001403c961a mov      dword ptr [rbx + 0x1b8], r10d
00000001403c9621 mov      r9d, 0x2c0c
00000001403c9627 mov      dword ptr [rbx + 0x1c8], r10d
00000001403c962e mov      ecx, 0xe0000000
00000001403c9633 mov      dword ptr [rbx + 0x1d8], r10d
00000001403c963a mov      edx, 0x10000000
00000001403c963f mov      dword ptr [rbx + 0x1e8], r10d
00000001403c9646 mov      r14d, 0x400000
00000001403c964c mov      dword ptr [rbx + 0x1f8], r10d
00000001403c9653 mov      r10d, 0x2c14
00000001403c9659 mov      dword ptr [rbx + 0x168], r9d
00000001403c9660 mov      dword ptr [rbx + 0x178], r9d
00000001403c9667 mov      dword ptr [rbx + 0x188], r9d
00000001403c966e mov      dword ptr [rbx + 0x198], r9d
00000001403c9675 lea      r11d, [r10 + 4]
00000001403c9679 mov      dword ptr [rbx + 0x1a8], r9d
00000001403c9680 mov      r9d, 0xf800000
00000001403c9686 mov      dword ptr [rbx + 0x208], r10d
00000001403c968d mov      dword ptr [rbx + 0x218], r10d
00000001403c9694 mov      dword ptr [rbx + 0x1b0], r9d
00000001403c969b mov      dword ptr [rbx + 0x200], r9d
00000001403c96a2 mov      dword ptr [rbx + 0x150], r14d
00000001403c96a9 mov      dword ptr [rbx + 0x180], ecx
00000001403c96af mov      dword ptr [rbx + 0x190], edx
00000001403c96b5 mov      dword ptr [rbx + 0x1a0], r8d
00000001403c96bc mov      dword ptr [rbx + 0x1c0], eax
00000001403c96c2 mov      dword ptr [rbx + 0x1d0], ecx
00000001403c96c8 mov      dword ptr [rbx + 0x1e0], edx
00000001403c96ce mov      dword ptr [rbx + 0x1f0], r8d
00000001403c96d5 mov      dword ptr [rbx + 0x210], eax
00000001403c96db mov      dword ptr [rbx + 0x220], ecx
00000001403c96e1 mov      dword ptr [rbx + 0x228], r10d
00000001403c96e8 mov      dword ptr [rbx + 0x230], edx
00000001403c96ee mov      dword ptr [rbx + 0x238], r10d
00000001403c96f5 mov      dword ptr [rbx + 0x240], r8d
00000001403c96fc mov      dword ptr [rbx + 0x248], r10d
00000001403c9703 mov      r10d, 0x7fc0
00000001403c9709 mov      dword ptr [rbx + 0x250], r9d
00000001403c9710 mov      dword ptr [rbx + 0x258], r11d
00000001403c9717 mov      dword ptr [rbx + 0x260], eax
00000001403c971d mov      dword ptr [rbx + 0x268], r11d
00000001403c9724 mov      dword ptr [rbx + 0x270], ecx
00000001403c972a mov      dword ptr [rbx + 0x278], r11d
00000001403c9731 mov      dword ptr [rbx + 0x280], edx
00000001403c9737 mov      dword ptr [rbx + 0x288], r11d
00000001403c973e mov      dword ptr [rbx + 0x290], r8d
00000001403c9745 mov      dword ptr [rbx + 0x298], r11d
00000001403c974c mov      dword ptr [rbx + 0x2a0], r9d
00000001403c9753 mov      dword ptr [rbx + 0x2a8], 0x2c0c
00000001403c975d mov      dword ptr [rbx + 0x2b0], r10d
00000001403c9764 mov      dword ptr [rbx + 0x2b8], 0x2c10
00000001403c976e mov      dword ptr [rbx + 0x2c0], r10d
00000001403c9775 mov      dword ptr [rbx + 0x2c8], 0x2c14
00000001403c977f mov      dword ptr [rbx + 0x2d0], r10d
00000001403c9786 mov      dword ptr [rbx + 0x2d8], r11d
00000001403c978d mov      r11d, 0x3ff
00000001403c9793 mov      dword ptr [rbx + 0x2e0], r10d
00000001403c979a mov      dword ptr [rbx + 0x2e8], 0x2c1c
00000001403c97a4 mov      dword ptr [rbx + 0x2f0], r11d
00000001403c97ab mov      dword ptr [rbx + 0x2f8], 0x2c20
00000001403c97b5 mov      dword ptr [rbx + 0x300], r11d
00000001403c97bc mov      dword ptr [rbx + 0x10c], 0x455c
00000001403c97c6 mov      dword ptr [rbx + 0x114], r15d
00000001403c97cd mov      r15d, 0x4568
00000001403c97d3 mov      dword ptr [rbx + 0x11c], 0x4558
00000001403c97dd mov      dword ptr [rbx + 0x124], r12d
00000001403c97e4 mov      r12d, 0x2d0c
00000001403c97ea mov      dword ptr [rbx + 0x12c], r15d
00000001403c97f1 mov      dword ptr [rbx + 0x134], r13d
00000001403c97f8 mov      dword ptr [rbx + 0x13c], 0x4508
00000001403c9802 mov      dword ptr [rbx + 0x144], ebp
00000001403c9808 mov      dword ptr [rbx + 0x14c], r15d
00000001403c980f mov      dword ptr [rbx + 0x154], r14d
00000001403c9816 mov      dword ptr [rbx + 0x15c], r15d
00000001403c981d mov      dword ptr [rbx + 0x164], 0x2000000
00000001403c9827 mov      dword ptr [rbx + 0x16c], r12d
00000001403c982e lea      r15d, [r12 + 4]
00000001403c9833 mov      dword ptr [rbx + 0x174], eax
00000001403c9839 lea      r14d, [r12 + 8]
00000001403c983e mov      dword ptr [rbx + 0x17c], r12d
00000001403c9845 lea      ebp, [r12 + 0xc]
00000001403c984a mov      dword ptr [rbx + 0x184], ecx
00000001403c9850 mov      dword ptr [rbx + 0x18c], r12d
00000001403c9857 mov      dword ptr [rbx + 0x194], edx
00000001403c985d mov      dword ptr [rbx + 0x19c], r12d
00000001403c9864 mov      dword ptr [rbx + 0x1a4], r8d
00000001403c986b mov      dword ptr [rbx + 0x1ac], r12d
00000001403c9872 mov      dword ptr [rbx + 0x1b4], r9d
00000001403c9879 mov      dword ptr [rbx + 0x1bc], r15d
00000001403c9880 mov      dword ptr [rbx + 0x1c4], eax
00000001403c9886 mov      dword ptr [rbx + 0x1cc], r15d
00000001403c988d mov      dword ptr [rbx + 0x1d4], ecx
00000001403c9893 mov      dword ptr [rbx + 0x1dc], r15d
00000001403c989a mov      dword ptr [rbx + 0x1e4], edx
00000001403c98a0 mov      dword ptr [rbx + 0x1ec], r15d
00000001403c98a7 mov      dword ptr [rbx + 0x1f4], r8d
00000001403c98ae mov      dword ptr [rbx + 0x1fc], r15d
00000001403c98b5 mov      dword ptr [rbx + 0x204], r9d
00000001403c98bc mov      dword ptr [rbx + 0x20c], r14d
00000001403c98c3 mov      dword ptr [rbx + 0x214], eax
00000001403c98c9 mov      dword ptr [rbx + 0x21c], r14d
00000001403c98d0 mov      dword ptr [rbx + 0x224], ecx
00000001403c98d6 mov      dword ptr [rbx + 0x22c], r14d
00000001403c98dd mov      dword ptr [rbx + 0x234], edx
00000001403c98e3 mov      dword ptr [rbx + 0x23c], r14d
00000001403c98ea mov      dword ptr [rbx + 0x244], r8d
00000001403c98f1 mov      dword ptr [rbx + 0x24c], r14d
00000001403c98f8 mov      dword ptr [rbx + 0x254], r9d
00000001403c98ff mov      dword ptr [rbx + 0x25c], ebp
00000001403c9905 mov      dword ptr [rbx + 0x264], eax
00000001403c990b mov      dword ptr [rbx + 0x26c], ebp
00000001403c9911 mov      dword ptr [rbx + 0x274], ecx
00000001403c9917 lea      ecx, [rax - 1]
00000001403c991a mov      dword ptr [rbx + 0x27c], ebp
00000001403c9920 mov      dword ptr [rbx + 0x284], edx
00000001403c9926 mov      dword ptr [rbx + 0x28c], ebp
00000001403c992c mov      dword ptr [rbx + 0x294], r8d
00000001403c9933 mov      dword ptr [rbx + 0x29c], ebp
00000001403c9939 mov      dword ptr [rbx + 0x2a4], r9d
00000001403c9940 mov      dword ptr [rbx + 0x2ac], r12d
00000001403c9947 mov      dword ptr [rbx + 0x2b4], r10d
00000001403c994e mov      dword ptr [rbx + 0x2bc], r15d
00000001403c9955 mov      dword ptr [rbx + 0x2c4], r10d
00000001403c995c mov      dword ptr [rbx + 0x2cc], r14d
00000001403c9963 mov      dword ptr [rbx + 0x2d4], r10d
00000001403c996a mov      dword ptr [rbx + 0x2dc], ebp
00000001403c9970 mov      dword ptr [rbx + 0x2e4], r10d
00000001403c9977 mov      dword ptr [rbx + 0x2ec], 0x2d1c
00000001403c9981 mov      dword ptr [rbx + 0x2f4], r11d
00000001403c9988 mov      dword ptr [rbx + 0x2fc], 0x2d20
00000001403c9992 mov      dword ptr [rbx + 0x304], r11d
00000001403c9999 mov      dword ptr [rbx + 0x308], 0x520
00000001403c99a3 mov      dword ptr [rbx + 0x30c], ecx
00000001403c99a9 mov      dword ptr [rbx + 0x310], 0x6b48
00000001403c99b3 lea      rbp, [rip + 0x556646]
00000001403c99ba mov      dword ptr [rbx + 0x314], ecx
00000001403c99c0 cmp      byte ptr [rdi + 0x49cc], 0
00000001403c99c7 je       0x1403c9a1a
00000001403c99c9 mov      rcx, qword ptr [rip + 0x556630]
00000001403c99d0 cmp      rcx, rbp
00000001403c99d3 je       0x1403c9a09
00000001403c99d5 cmp      byte ptr [rcx + 0x169], 4
00000001403c99dc jb       0x1403c9a09
00000001403c99de test     dword ptr [rcx + 0x16c], 0x1000
00000001403c99e8 je       0x1403c9a09
00000001403c99ea mov      rcx, qword ptr [rcx + 0x158]
00000001403c99f1 lea      r9, [rip + 0x282848]
00000001403c99f8 mov      edx, 0x144
00000001403c99fd lea      r8, [rip + 0x30b77c]
00000001403c9a04 call     0x140008874
00000001403c9a09 mov      r8d, 0xd4
00000001403c9a0f mov      rdx, rbx
00000001403c9a12 mov      rcx, rdi
00000001403c9a15 call     0x1403c9ac0
00000001403c9a1a mov      rbx, qword ptr [rsp + 0x40]
00000001403c9a1f mov      rbp, qword ptr [rsp + 0x48]
00000001403c9a24 mov      rdi, qword ptr [rsp + 0x50]
00000001403c9a29 mov      r12, qword ptr [rsp + 0x58]
00000001403c9a2e add      rsp, 0x20
00000001403c9a32 pop      r15
00000001403c9a34 pop      r14
00000001403c9a36 pop      r13
00000001403c9a38 ret      