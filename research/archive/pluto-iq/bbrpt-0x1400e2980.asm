00000001400e2980 mov      qword ptr [rsp + 8], rbx
00000001400e2985 push     rdi
00000001400e2986 sub      rsp, 0x30
00000001400e298a mov      rax, qword ptr [rip + 0x844acf]
00000001400e2991 xor      rax, rsp
00000001400e2994 mov      qword ptr [rsp + 0x28], rax
00000001400e2999 xor      eax, eax
00000001400e299b mov      rdi, rcx
00000001400e299e mov      ebx, 1
00000001400e29a3 mov      dword ptr [rsp + 0x20], eax
00000001400e29a7 lea      rcx, [rsp + 0x20]
00000001400e29ac mov      word ptr [rsp + 0x24], ax
00000001400e29b1 lea      r8d, [rbx + 5]
00000001400e29b5 call     0x1400311e8
00000001400e29ba mov      rax, qword ptr [rdi + 0xaf3b8]
00000001400e29c1 cmp      qword ptr [rax], rdi
00000001400e29c4 jne      0x1400e2b16
00000001400e29ca cmp      byte ptr [rdi + 0xc5d80], 0
00000001400e29d1 je       0x1400e2b16
00000001400e29d7 cmp      dword ptr [rdi + 0xc16c8], 3
00000001400e29de jne      0x1400e2b16
00000001400e29e4 lea      rcx, [rsp + 0x20]
00000001400e29e9 call     0x14007de8c
00000001400e29ee test     al, al
00000001400e29f0 je       0x1400e2a35
00000001400e29f2 cmp      byte ptr [rdi + 0xc68d2], 0
00000001400e29f9 jne      0x1400e2b16
00000001400e29ff mov      rcx, qword ptr [rip + 0x83d5fa]
00000001400e2a06 lea      rax, [rip + 0x83d5f3]
00000001400e2a0d cmp      rcx, rax
00000001400e2a10 je       0x1400e2adb
00000001400e2a16 cmp      byte ptr [rcx + 0x29], 4
00000001400e2a1a jb       0x1400e2adb
00000001400e2a20 test     dword ptr [rcx + 0x2c], 0x800
00000001400e2a27 je       0x1400e2adb
00000001400e2a2d lea      edx, [rbx + 0x73]
00000001400e2a30 jmp      0x1400e2acb
00000001400e2a35 add      rdi, 0xfb960
00000001400e2a3c mov      rcx, qword ptr [rdi]
00000001400e2a3f test     rcx, rcx
00000001400e2a42 je       0x1400e2adf
00000001400e2a48 cmp      rcx, rdi
00000001400e2a4b je       0x1400e2adf
00000001400e2a51 mov      eax, dword ptr [rcx + 0x10]
00000001400e2a54 cmp      eax, dword ptr [rsp + 0x20]
00000001400e2a58 jne      0x1400e2a65
00000001400e2a5a movzx    eax, word ptr [rcx + 0x14]
00000001400e2a5e cmp      ax, word ptr [rsp + 0x24]
00000001400e2a63 je       0x1400e2a9e
00000001400e2a65 mov      rcx, qword ptr [rcx]
00000001400e2a68 cmp      rcx, rdi
00000001400e2a6b jne      0x1400e2a51
00000001400e2a6d xor      ebx, ebx
00000001400e2a6f mov      rcx, qword ptr [rip + 0x83d58a]
00000001400e2a76 lea      rax, [rip + 0x83d583]
00000001400e2a7d cmp      rcx, rax
00000001400e2a80 je       0x1400e2b16
00000001400e2a86 cmp      byte ptr [rcx + 0x29], 4
00000001400e2a8a jb       0x1400e2b16
00000001400e2a90 test     dword ptr [rcx + 0x2c], 0x800
00000001400e2a97 je       0x1400e2b16
00000001400e2a99 lea      edx, [rbx + 0x76]
00000001400e2a9c jmp      0x1400e2b06
00000001400e2a9e cmp      byte ptr [rcx + 0x38], 0
00000001400e2aa2 jne      0x1400e2b16
00000001400e2aa4 mov      rcx, qword ptr [rip + 0x83d555]
00000001400e2aab lea      rax, [rip + 0x83d54e]
00000001400e2ab2 cmp      rcx, rax
00000001400e2ab5 je       0x1400e2adb
00000001400e2ab7 cmp      byte ptr [rcx + 0x29], 4
00000001400e2abb jb       0x1400e2adb
00000001400e2abd test     dword ptr [rcx + 0x2c], 0x800
00000001400e2ac4 je       0x1400e2adb
00000001400e2ac6 mov      edx, 0x75
00000001400e2acb mov      rcx, qword ptr [rcx + 0x18]
00000001400e2acf lea      r8, [rip + 0x5b0682]
00000001400e2ad6 call     0x140001b88
00000001400e2adb xor      ebx, ebx
00000001400e2add jmp      0x1400e2b16
00000001400e2adf xor      ebx, ebx
00000001400e2ae1 mov      rcx, qword ptr [rip + 0x83d518]
00000001400e2ae8 lea      rax, [rip + 0x83d511]
00000001400e2aef cmp      rcx, rax
00000001400e2af2 je       0x1400e2b16
00000001400e2af4 cmp      byte ptr [rcx + 0x29], 4
00000001400e2af8 jb       0x1400e2b16
00000001400e2afa test     dword ptr [rcx + 0x2c], 0x800
00000001400e2b01 je       0x1400e2b16
00000001400e2b03 lea      edx, [rbx + 0x77]
00000001400e2b06 mov      rcx, qword ptr [rcx + 0x18]
00000001400e2b0a lea      r8, [rip + 0x5b0647]
00000001400e2b11 call     0x140001b88
00000001400e2b16 mov      eax, ebx
00000001400e2b18 mov      rcx, qword ptr [rsp + 0x28]
00000001400e2b1d xor      rcx, rsp
00000001400e2b20 call     0x1405f45b0
00000001400e2b25 mov      rbx, qword ptr [rsp + 0x40]
00000001400e2b2a add      rsp, 0x30
00000001400e2b2e pop      rdi
00000001400e2b2f ret      