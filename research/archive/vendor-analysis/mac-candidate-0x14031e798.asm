000000014031e798 mov      qword ptr [rsp + 8], rbx
000000014031e79d mov      qword ptr [rsp + 0x10], rbp
000000014031e7a2 mov      qword ptr [rsp + 0x18], rsi
000000014031e7a7 push     rdi
000000014031e7a8 push     r12
000000014031e7aa push     r13
000000014031e7ac push     r14
000000014031e7ae push     r15
000000014031e7b0 sub      rsp, 0x30
000000014031e7b4 mov      rbx, qword ptr [rcx + 0x9a0]
000000014031e7bb mov      esi, edx
000000014031e7bd mov      rdi, rcx
000000014031e7c0 mov      rcx, qword ptr [rip + 0x601839]
000000014031e7c7 lea      rax, [rip + 0x601832]
000000014031e7ce cmp      rcx, rax
000000014031e7d1 je       0x14031e80b
000000014031e7d3 cmp      byte ptr [rcx + 0x1e9], 4
000000014031e7da jb       0x14031e80b
000000014031e7dc test     dword ptr [rcx + 0x1ec], 0x10000000
000000014031e7e6 je       0x14031e80b
000000014031e7e8 mov      rcx, qword ptr [rcx + 0x1d8]
000000014031e7ef lea      r9, [rip + 0x31361a]
000000014031e7f6 mov      edx, 0xd
000000014031e7fb mov      dword ptr [rsp + 0x20], esi
000000014031e7ff lea      r8, [rip + 0x3b2cfa]
000000014031e806 call     0x1400088d8
000000014031e80b test     dword ptr [rdi + 0x13f0], 0x1880000
000000014031e815 mov      rcx, rdi
000000014031e818 je       0x14031e831
000000014031e81a mov      r8d, dword ptr [rbx + 0x3068]
000000014031e821 mov      r9d, esi
000000014031e824 mov      edx, dword ptr [rbx + 0x3064]
000000014031e82a call     0x140315af0
000000014031e82f jmp      0x14031e856
000000014031e831 test     esi, esi
000000014031e833 jne      0x14031e844
000000014031e835 mov      r8d, dword ptr [rbx + 0x3068]
000000014031e83c mov      edx, dword ptr [rbx + 0x3064]
000000014031e842 jmp      0x14031e851
000000014031e844 mov      r8d, dword ptr [rbx + 0x3070]
000000014031e84b mov      edx, dword ptr [rbx + 0x306c]
000000014031e851 call     0x140315a88
000000014031e856 mov      r8d, dword ptr [rbx + 0x3078]
000000014031e85d mov      r9d, esi
000000014031e860 mov      edx, dword ptr [rbx + 0x3074]
000000014031e866 mov      rcx, rdi
000000014031e869 mov      ebp, eax
000000014031e86b call     0x140315af0
000000014031e870 mov      r8d, dword ptr [rbx + 0x3080]
000000014031e877 mov      r9d, esi
000000014031e87a mov      edx, dword ptr [rbx + 0x307c]
000000014031e880 mov      rcx, rdi
000000014031e883 mov      r14d, eax
000000014031e886 call     0x140315af0
000000014031e88b mov      r8d, dword ptr [rbx + 0x3088]
000000014031e892 mov      r9d, esi
000000014031e895 mov      edx, dword ptr [rbx + 0x3084]
000000014031e89b mov      rcx, rdi
000000014031e89e mov      r15d, eax
000000014031e8a1 call     0x140315af0
000000014031e8a6 mov      r8d, dword ptr [rbx + 0x3090]
000000014031e8ad mov      r9d, esi
000000014031e8b0 mov      edx, dword ptr [rbx + 0x308c]
000000014031e8b6 mov      rcx, rdi
000000014031e8b9 mov      r12d, eax
000000014031e8bc call     0x140315af0
000000014031e8c1 mov      r8d, dword ptr [rbx + 0x3098]
000000014031e8c8 mov      r9d, esi
000000014031e8cb mov      edx, dword ptr [rbx + 0x3094]
000000014031e8d1 mov      rcx, rdi
000000014031e8d4 mov      r13d, eax
000000014031e8d7 call     0x140315af0
000000014031e8dc mov      ecx, eax
000000014031e8de mov      edx, 0xffff
000000014031e8e3 add      eax, r13d
000000014031e8e6 add      eax, r12d
000000014031e8e9 add      eax, r15d
000000014031e8ec add      eax, r14d
000000014031e8ef add      eax, ebp
000000014031e8f1 cmp      ebp, edx
000000014031e8f3 je       0x14031e90d
000000014031e8f5 cmp      r14d, edx
000000014031e8f8 je       0x14031e90d
000000014031e8fa cmp      r15d, edx
000000014031e8fd je       0x14031e90d
000000014031e8ff cmp      r12d, edx
000000014031e902 je       0x14031e90d
000000014031e904 cmp      r13d, edx
000000014031e907 je       0x14031e90d
000000014031e909 cmp      ecx, edx
000000014031e90b jne      0x14031e94a
000000014031e90d mov      r8d, dword ptr [rbx + 0x30d8]
000000014031e914 mov      r9d, 1
000000014031e91a mov      edx, dword ptr [rbx + 0x30d4]
000000014031e920 mov      rcx, rdi
000000014031e923 mov      dword ptr [rsp + 0x20], esi
000000014031e927 call     0x140316994
000000014031e92c mov      r8d, dword ptr [rbx + 0x30d8]
000000014031e933 xor      r9d, r9d
000000014031e936 mov      edx, dword ptr [rbx + 0x30d4]
000000014031e93c mov      rcx, rdi
000000014031e93f mov      dword ptr [rsp + 0x20], esi
000000014031e943 call     0x140316994
000000014031e948 xor      eax, eax
000000014031e94a mov      rbx, qword ptr [rsp + 0x60]
000000014031e94f mov      rbp, qword ptr [rsp + 0x68]
000000014031e954 mov      rsi, qword ptr [rsp + 0x70]
000000014031e959 add      rsp, 0x30
000000014031e95d pop      r15
000000014031e95f pop      r14
000000014031e961 pop      r13
000000014031e963 pop      r12
000000014031e965 pop      rdi
000000014031e966 ret      