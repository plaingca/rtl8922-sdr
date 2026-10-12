0000000140145e18 test     rcx, rcx
0000000140145e1b je       0x140145f23
0000000140145e21 mov      qword ptr [rsp + 8], rbx
0000000140145e26 mov      qword ptr [rsp + 0x10], rbp
0000000140145e2b mov      qword ptr [rsp + 0x18], rsi
0000000140145e30 push     rdi
0000000140145e31 sub      rsp, 0x30
0000000140145e35 cmp      qword ptr [rcx + 0x78], 0
0000000140145e3a mov      esi, r8d
0000000140145e3d movzx    edi, dl
0000000140145e40 mov      rbx, rcx
0000000140145e43 je       0x140145f0f
0000000140145e49 cmp      byte ptr [rcx + 0x40], 3
0000000140145e4d je       0x140145f0f
0000000140145e53 lea      rdx, [rip + 0x4c1bc6]
0000000140145e5a add      rcx, 0x28
0000000140145e5e call     0x140031478
0000000140145e63 mov      dword ptr [rbx + 0x80], esi
0000000140145e69 call     0x1405c2040
0000000140145e6e cmp      byte ptr [rbx + 0x96], 0
0000000140145e75 mov      qword ptr [rbx + 0x88], rax
0000000140145e7c jne      0x140145e85
0000000140145e7e mov      byte ptr [rbx + 0x96], dil
0000000140145e85 mov      eax, dword ptr [rbx + 0x80]
0000000140145e8b mov      dword ptr [rbx + 0xe88], eax
0000000140145e91 mov      rcx, qword ptr [rip + 0x7da168]
0000000140145e98 lea      rax, [rip + 0x7da161]
0000000140145e9f cmp      rcx, rax
0000000140145ea2 je       0x140145ecf
0000000140145ea4 cmp      byte ptr [rcx + 0x29], 4
0000000140145ea8 jb       0x140145ecf
0000000140145eaa test     dword ptr [rcx + 0x2c], 0x200
0000000140145eb1 je       0x140145ecf
0000000140145eb3 mov      rcx, qword ptr [rcx + 0x18]
0000000140145eb7 lea      r8, [rip + 0x54dcb2]
0000000140145ebe mov      edx, 0x40
0000000140145ec3 mov      dword ptr [rsp + 0x20], edi
0000000140145ec7 mov      r9d, esi
0000000140145eca call     0x140001bec
0000000140145ecf test     dil, dil
0000000140145ed2 je       0x140145eff
0000000140145ed4 cmp      dword ptr [rbx + 0x44], 2
0000000140145ed8 je       0x140145eff
0000000140145eda mov      rdx, qword ptr [rbx + 0x78]
0000000140145ede test     rdx, rdx
0000000140145ee1 je       0x140145eff
0000000140145ee3 mov      rax, qword ptr [rbx]
0000000140145ee6 mov      edx, dword ptr [rdx + 0x10]
0000000140145ee9 mov      r8, qword ptr [rax + 0xaf3b8]
0000000140145ef0 mov      rcx, qword ptr [r8]
0000000140145ef3 add      rcx, 0x20718
0000000140145efa call     0x14011e6bc
0000000140145eff lea      rdx, [rip + 0x4c1b1a]
0000000140145f06 lea      rcx, [rbx + 0x28]
0000000140145f0a call     0x140031684
0000000140145f0f mov      rbx, qword ptr [rsp + 0x40]
0000000140145f14 mov      rbp, qword ptr [rsp + 0x48]
0000000140145f19 mov      rsi, qword ptr [rsp + 0x50]
0000000140145f1e add      rsp, 0x30
0000000140145f22 pop      rdi
0000000140145f23 ret      