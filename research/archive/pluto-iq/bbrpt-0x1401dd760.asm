00000001401dd760 mov      r11, rsp
00000001401dd763 mov      qword ptr [r11 + 8], rbx
00000001401dd767 mov      qword ptr [r11 + 0x10], rbp
00000001401dd76b mov      qword ptr [r11 + 0x18], rsi
00000001401dd76f push     rdi
00000001401dd770 push     r12
00000001401dd772 push     r13
00000001401dd774 push     r14
00000001401dd776 push     r15
00000001401dd778 sub      rsp, 0x40
00000001401dd77c mov      rdi, qword ptr [rcx + 0x798]
00000001401dd783 lea      rbx, [rcx + 0xbdd0]
00000001401dd78a mov      r12d, 1
00000001401dd790 mov      r13d, r9d
00000001401dd793 mov      sil, r8b
00000001401dd796 mov      r14d, edx
00000001401dd799 mov      rbp, rcx
00000001401dd79c cmp      dword ptr [rcx + 0xbde4], r12d
00000001401dd7a3 jne      0x1401dd804
00000001401dd7a5 mov      rcx, qword ptr [rip + 0x742854]
00000001401dd7ac lea      rbx, [rip + 0x74284d]
00000001401dd7b3 cmp      rcx, rbx
00000001401dd7b6 je       0x1401dd86e
00000001401dd7bc cmp      byte ptr [rcx + 0x169], 3
00000001401dd7c3 jb       0x1401dd86e
00000001401dd7c9 mov      eax, dword ptr [rcx + 0x16c]
00000001401dd7cf test     r12b, al
00000001401dd7d2 je       0x1401dd86e
00000001401dd7d8 mov      rcx, qword ptr [rcx + 0x158]
00000001401dd7df lea      rdi, [rip + 0x43489a]
00000001401dd7e6 lea      edx, [r12 + 0xc]
00000001401dd7eb mov      qword ptr [r11 - 0x48], rdi
00000001401dd7ef lea      r9, [rip + 0x430b9a]
00000001401dd7f6 lea      r8, [rip + 0x4bac43]
00000001401dd7fd call     0x14003c968
00000001401dd802 jmp      0x1401dd86e
00000001401dd804 mov      ecx, dword ptr [rbx + 0x12c]
00000001401dd80a call     0x1401fba48
00000001401dd80f mov      r15d, eax
00000001401dd812 cmp      eax, 0x32
00000001401dd815 jbe      0x1401dd875
00000001401dd817 mov      rcx, qword ptr [rip + 0x7427e2]
00000001401dd81e lea      rbx, [rip + 0x7427db]
00000001401dd825 cmp      rcx, rbx
00000001401dd828 je       0x1401dd86e
00000001401dd82a cmp      byte ptr [rcx + 0x169], 3
00000001401dd831 jb       0x1401dd86e
00000001401dd833 mov      eax, dword ptr [rcx + 0x16c]
00000001401dd839 test     r12b, al
00000001401dd83c je       0x1401dd86e
00000001401dd83e mov      rcx, qword ptr [rcx + 0x158]
00000001401dd845 lea      rdi, [rip + 0x434834]
00000001401dd84c mov      edx, 0xe
00000001401dd851 mov      dword ptr [rsp + 0x28], r15d
00000001401dd856 lea      r9, [rip + 0x430b33]
00000001401dd85d mov      qword ptr [rsp + 0x20], rdi
00000001401dd862 lea      r8, [rip + 0x4babd7]
00000001401dd869 call     0x14003ca14
00000001401dd86e xor      eax, eax
00000001401dd870 jmp      0x1401dd9f2
00000001401dd875 mov      al, byte ptr [rdi + 0xe1ca]
00000001401dd87b mov      r9, rbx
00000001401dd87e mov      byte ptr [rbx + 0x10], al
00000001401dd881 mov      r8b, sil
00000001401dd884 mov      al, byte ptr [rdi + 0xe1cb]
00000001401dd88a mov      edx, r14d
00000001401dd88d mov      byte ptr [rbx + 0x11], al
00000001401dd890 mov      al, byte ptr [rdi + 0xe1cc]
00000001401dd896 mov      byte ptr [rbx + 0x12], al
00000001401dd899 mov      al, byte ptr [rdi + 0xe1cd]
00000001401dd89f mov      byte ptr [rbx + 0x13], al
00000001401dd8a2 mov      dword ptr [rbx + 0x14], r12d
00000001401dd8a6 mov      rcx, qword ptr [rbp + 0x8d08]
00000001401dd8ad call     0x1402a9328
00000001401dd8b2 xor      esi, esi
00000001401dd8b4 mov      r12d, eax
00000001401dd8b7 test     eax, eax
00000001401dd8b9 je       0x1401dd930
00000001401dd8bb mov      dword ptr [rbx + 0x14], esi
00000001401dd8be mov      rbp, qword ptr [rip + 0x74273b]
00000001401dd8c5 lea      rbx, [rip + 0x742734]
00000001401dd8cc cmp      rbp, rbx
00000001401dd8cf je       0x1401dd9e9
00000001401dd8d5 cmp      byte ptr [rbp + 0x169], 2
00000001401dd8dc jb       0x1401dd9e9
00000001401dd8e2 mov      eax, dword ptr [rbp + 0x16c]
00000001401dd8e8 test     al, 1
00000001401dd8ea je       0x1401dd9e9
00000001401dd8f0 mov      cl, r13b
00000001401dd8f3 call     0x1401dde0c
00000001401dd8f8 mov      rcx, qword ptr [rbp + 0x158]
00000001401dd8ff lea      rdi, [rip + 0x43477a]
00000001401dd906 mov      dword ptr [rsp + 0x30], r12d
00000001401dd90b lea      edx, [rsi + 0xf]
00000001401dd90e mov      qword ptr [rsp + 0x28], rax
00000001401dd913 lea      r9, [rip + 0x430a76]
00000001401dd91a lea      r8, [rip + 0x4bab1f]
00000001401dd921 mov      qword ptr [rsp + 0x20], rdi
00000001401dd926 call     0x14011f97c
00000001401dd92b jmp      0x1401dd9e9
00000001401dd930 mov      r14, qword ptr [rip + 0x7426c9]
00000001401dd937 lea      rbx, [rip + 0x7426c2]
00000001401dd93e lea      rdi, [rip + 0x43473b]
00000001401dd945 cmp      r14, rbx
00000001401dd948 je       0x1401dd995
00000001401dd94a cmp      byte ptr [r14 + 0x169], 4
00000001401dd952 jb       0x1401dd995
00000001401dd954 mov      eax, dword ptr [r14 + 0x16c]
00000001401dd95b test     al, 1
00000001401dd95d je       0x1401dd995
00000001401dd95f mov      cl, r13b
00000001401dd962 call     0x1401dde0c
00000001401dd967 mov      rcx, qword ptr [r14 + 0x158]
00000001401dd96e lea      r9, [rip + 0x430a1b]
00000001401dd975 mov      dword ptr [rsp + 0x30], r15d
00000001401dd97a lea      r8, [rip + 0x4baabf]
00000001401dd981 mov      qword ptr [rsp + 0x28], rax
00000001401dd986 mov      edx, 0x10
00000001401dd98b mov      qword ptr [rsp + 0x20], rdi
00000001401dd990 call     0x14011f97c
00000001401dd995 mov      edx, 1
00000001401dd99a mov      rcx, rbp
00000001401dd99d call     0x1401dde30
00000001401dd9a2 test     eax, eax
00000001401dd9a4 je       0x1401dd9e9
00000001401dd9a6 mov      rcx, qword ptr [rip + 0x742653]
00000001401dd9ad cmp      rcx, rbx
00000001401dd9b0 je       0x1401dd9e9
00000001401dd9b2 cmp      byte ptr [rcx + 0x169], 2
00000001401dd9b9 jb       0x1401dd9e9
00000001401dd9bb mov      eax, dword ptr [rcx + 0x16c]
00000001401dd9c1 test     al, 1
00000001401dd9c3 je       0x1401dd9e9
00000001401dd9c5 mov      rcx, qword ptr [rcx + 0x158]
00000001401dd9cc lea      r9, [rip + 0x4309bd]
00000001401dd9d3 mov      edx, 0x11
00000001401dd9d8 mov      qword ptr [rsp + 0x20], rdi
00000001401dd9dd lea      r8, [rip + 0x4baa5c]
00000001401dd9e4 call     0x14003c968
00000001401dd9e9 test     r12d, r12d
00000001401dd9ec setne    sil
00000001401dd9f0 mov      eax, esi
00000001401dd9f2 lea      r11, [rsp + 0x40]
00000001401dd9f7 mov      rbx, qword ptr [r11 + 0x30]
00000001401dd9fb mov      rbp, qword ptr [r11 + 0x38]
00000001401dd9ff mov      rsi, qword ptr [r11 + 0x40]
00000001401dda03 mov      rsp, r11
00000001401dda06 pop      r15
00000001401dda08 pop      r14
00000001401dda0a pop      r13
00000001401dda0c pop      r12
00000001401dda0e pop      rdi
00000001401dda0f ret      