000000014034383c mov      qword ptr [rsp + 0x20], rbx
0000000140343841 mov      qword ptr [rsp + 8], rcx
0000000140343846 push     rbp
0000000140343847 push     rsi
0000000140343848 push     rdi
0000000140343849 push     r12
000000014034384b push     r13
000000014034384d push     r14
000000014034384f push     r15
0000000140343851 sub      rsp, 0x90
0000000140343858 mov      eax, dword ptr [rcx + 0x1c20]
000000014034385e mov      r13, rcx
0000000140343861 test     eax, eax
0000000140343863 jne      0x14034386e
0000000140343865 lea      r9, [rip + 0x2f4e14]
000000014034386c jmp      0x140343891
000000014034386e cmp      eax, 1
0000000140343871 jne      0x14034387c
0000000140343873 lea      r9, [rip + 0x2f4e26]
000000014034387a jmp      0x140343891
000000014034387c cmp      eax, 0xa
000000014034387f lea      r9, [rip + 0x2f4e3a]
0000000140343886 lea      rcx, [rip + 0x2f4e63]
000000014034388d cmovne   r9, rcx
0000000140343891 test     byte ptr [r13 + 0x16bd], 0x2e
0000000140343899 lea      rsi, [rip + 0x38dce0]
00000001403438a0 mov      bl, 4
00000001403438a2 mov      edi, 0x40000000
00000001403438a7 jne      0x140343946
00000001403438ad mov      rcx, qword ptr [rip + 0x5dc74c]
00000001403438b4 lea      r12, [rip + 0x5dc745]
00000001403438bb cmp      rcx, r12
00000001403438be je       0x140343a9a
00000001403438c4 cmp      byte ptr [rcx + 0x1e9], bl
00000001403438ca jb       0x1403438e8
00000001403438cc test     dword ptr [rcx + 0x1ec], edi
00000001403438d2 je       0x1403438e8
00000001403438d4 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403438db mov      edx, 0xee
00000001403438e0 mov      r8, rsi
00000001403438e3 call     0x140001b88
00000001403438e8 mov      rcx, qword ptr [rip + 0x5dc711]
00000001403438ef cmp      rcx, r12
00000001403438f2 je       0x140343a9a
00000001403438f8 cmp      byte ptr [rcx + 0x1e9], bl
00000001403438fe jb       0x140343a9a
0000000140343904 test     dword ptr [rcx + 0x1ec], edi
000000014034390a je       0x140343a9a
0000000140343910 mov      eax, dword ptr [r13 + 0x16f0]
0000000140343917 mov      edx, 0xef
000000014034391c mov      r9d, dword ptr [r13 + 0x16c8]
0000000140343923 mov      r8, rsi
0000000140343926 mov      rcx, qword ptr [rcx + 0x1d8]
000000014034392d mov      dword ptr [rsp + 0x28], eax
0000000140343931 mov      eax, dword ptr [r13 + 0x16d8]
0000000140343938 mov      dword ptr [rsp + 0x20], eax
000000014034393c call     0x140001c34
0000000140343941 jmp      0x140343a9a
0000000140343946 cmp      byte ptr [r13 + 0x467c], 0
000000014034394e lea      r12, [rip + 0x5dc6ab]
0000000140343955 je       0x14034398b
0000000140343957 mov      rcx, qword ptr [rip + 0x5dc6a2]
000000014034395e cmp      rcx, r12
0000000140343961 je       0x140343a9a
0000000140343967 cmp      byte ptr [rcx + 0x1e9], bl
000000014034396d jb       0x14034398b
000000014034396f test     dword ptr [rcx + 0x1ec], edi
0000000140343975 je       0x14034398b
0000000140343977 mov      rcx, qword ptr [rcx + 0x1d8]
000000014034397e mov      edx, 0xf0
0000000140343983 mov      r8, rsi
0000000140343986 call     0x140008874
000000014034398b mov      rcx, qword ptr [rip + 0x5dc66e]
0000000140343992 cmp      rcx, r12
0000000140343995 je       0x140343a9a
000000014034399b cmp      byte ptr [rcx + 0x1e9], bl
00000001403439a1 jb       0x1403439ed
00000001403439a3 test     dword ptr [rcx + 0x1ec], edi
00000001403439a9 je       0x1403439ed
00000001403439ab movzx    r8d, byte ptr [r13 + 0x189e]
00000001403439b3 mov      edx, 0xf1
00000001403439b8 movzx    eax, byte ptr [r13 + 0x1833]
00000001403439c0 movzx    r10d, byte ptr [r13 + 0x17f8]
00000001403439c8 movzx    r9d, byte ptr [r13 + 0x1832]
00000001403439d0 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403439d7 mov      dword ptr [rsp + 0x30], eax
00000001403439db mov      dword ptr [rsp + 0x28], r8d
00000001403439e0 mov      r8, rsi
00000001403439e3 mov      dword ptr [rsp + 0x20], r10d
00000001403439e8 call     0x140008794
00000001403439ed mov      rcx, qword ptr [rip + 0x5dc60c]
00000001403439f4 cmp      rcx, r12
00000001403439f7 je       0x140343a9a
00000001403439fd cmp      byte ptr [rcx + 0x1e9], bl
0000000140343a03 jb       0x140343a3c
0000000140343a05 test     dword ptr [rcx + 0x1ec], edi
0000000140343a0b je       0x140343a3c
0000000140343a0d movzx    eax, byte ptr [r13 + 0x1c24]
0000000140343a15 mov      edx, 0xf2
0000000140343a1a movzx    r9d, byte ptr [r13 + 0x1c25]
0000000140343a22 sub      eax, 0x12
0000000140343a25 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140343a2c sub      r9d, 0x12
0000000140343a30 mov      r8, rsi
0000000140343a33 mov      dword ptr [rsp + 0x20], eax
0000000140343a37 call     0x140001bec
0000000140343a3c mov      rcx, qword ptr [rip + 0x5dc5bd]
0000000140343a43 cmp      rcx, r12
0000000140343a46 je       0x140343a9a
0000000140343a48 cmp      byte ptr [rcx + 0x1e9], bl
0000000140343a4e jb       0x140343a9a
0000000140343a50 test     dword ptr [rcx + 0x1ec], edi
0000000140343a56 je       0x140343a9a
0000000140343a58 movzx    r8d, byte ptr [r13 + 0x1836]
0000000140343a60 mov      edx, 0xf3
0000000140343a65 movzx    eax, byte ptr [r13 + 0x1837]
0000000140343a6d movzx    r10d, byte ptr [r13 + 0x1835]
0000000140343a75 movzx    r9d, byte ptr [r13 + 0x1834]
0000000140343a7d mov      rcx, qword ptr [rcx + 0x1d8]
0000000140343a84 mov      dword ptr [rsp + 0x30], eax
0000000140343a88 mov      dword ptr [rsp + 0x28], r8d
0000000140343a8d mov      r8, rsi
0000000140343a90 mov      dword ptr [rsp + 0x20], r10d
0000000140343a95 call     0x140008794
0000000140343a9a mov      rcx, r13
0000000140343a9d call     0x14033d088
0000000140343aa2 test     byte ptr [r13 + 0x16bd], 1
0000000140343aaa jne      0x140343afa
0000000140343aac mov      r9d, dword ptr [r13 + 0x16d0]
0000000140343ab3 cmp      r9d, 3
0000000140343ab7 je       0x140343afa
0000000140343ab9 mov      rcx, qword ptr [rip + 0x5dc540]
0000000140343ac0 cmp      rcx, r12
0000000140343ac3 je       0x140343d7d
0000000140343ac9 cmp      byte ptr [rcx + 0x1e9], bl
0000000140343acf jb       0x140343d7d
0000000140343ad5 test     dword ptr [rcx + 0x1ec], edi
0000000140343adb je       0x140343d7d
0000000140343ae1 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140343ae8 mov      edx, 0xf4
0000000140343aed mov      r8, rsi
0000000140343af0 call     0x140001bb0
0000000140343af5 jmp      0x140343d7d
0000000140343afa mov      rcx, qword ptr [rip + 0x5dc4ff]
0000000140343b01 cmp      rcx, r12
0000000140343b04 je       0x140343d7d
0000000140343b0a cmp      byte ptr [rcx + 0x1e9], bl
0000000140343b10 jb       0x140343b5c
0000000140343b12 test     dword ptr [rcx + 0x1ec], edi
0000000140343b18 je       0x140343b5c
0000000140343b1a movzx    r8d, byte ptr [r13 + 0x182b]
0000000140343b22 mov      edx, 0xf5
0000000140343b27 movzx    eax, byte ptr [r13 + 0x182d]
0000000140343b2f movzx    r10d, byte ptr [r13 + 0x182c]
0000000140343b37 movzx    r9d, byte ptr [r13 + 0x182a]
0000000140343b3f mov      rcx, qword ptr [rcx + 0x1d8]
0000000140343b46 mov      dword ptr [rsp + 0x30], eax
0000000140343b4a mov      dword ptr [rsp + 0x28], r8d
0000000140343b4f mov      r8, rsi
0000000140343b52 mov      dword ptr [rsp + 0x20], r10d
0000000140343b57 call     0x140008794
0000000140343b5c mov      rcx, qword ptr [rip + 0x5dc49d]
0000000140343b63 cmp      rcx, r12
0000000140343b66 je       0x140343d7d
0000000140343b6c cmp      byte ptr [rcx + 0x1e9], bl
0000000140343b72 jb       0x140343c53
0000000140343b78 test     dword ptr [rcx + 0x1ec], edi
0000000140343b7e je       0x140343c53
0000000140343b84 movzx    esi, byte ptr [r13 + 0x171b]
0000000140343b8c mov      edx, 0xf8
0000000140343b91 movzx    r9d, byte ptr [r13 + 0x1720]
0000000140343b99 movzx    r8d, byte ptr [r13 + 0x1721]
0000000140343ba1 movzx    r15d, byte ptr [r13 + 0x1718]
0000000140343ba9 movzx    r14d, byte ptr [r13 + 0x1719]
0000000140343bb1 movzx    ebp, byte ptr [r13 + 0x171a]
0000000140343bb9 movzx    edi, byte ptr [r13 + 0x171c]
0000000140343bc1 movzx    ebx, byte ptr [r13 + 0x171d]
0000000140343bc9 movzx    r11d, byte ptr [r13 + 0x171e]
0000000140343bd1 movzx    r10d, byte ptr [r13 + 0x171f]
0000000140343bd9 movzx    eax, byte ptr [r13 + 0x1722]
0000000140343be1 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140343be8 shr      esi, 1
0000000140343bea shr      r9d, 1
0000000140343bed shr      r8d, 1
0000000140343bf0 shr      r15d, 1
0000000140343bf3 mov      dword ptr [rsp + 0x70], r15d
0000000140343bf8 shr      r14d, 1
0000000140343bfb mov      dword ptr [rsp + 0x68], r14d
0000000140343c00 shr      ebp, 1
0000000140343c02 mov      dword ptr [rsp + 0x60], ebp
0000000140343c06 mov      dword ptr [rsp + 0x58], esi
0000000140343c0a lea      rsi, [rip + 0x38d96f]
0000000140343c11 shr      edi, 1
0000000140343c13 mov      dword ptr [rsp + 0x50], edi
0000000140343c17 shr      ebx, 1
0000000140343c19 mov      dword ptr [rsp + 0x48], ebx
0000000140343c1d shr      r11d, 1
0000000140343c20 mov      dword ptr [rsp + 0x40], r11d
0000000140343c25 shr      r10d, 1
0000000140343c28 mov      dword ptr [rsp + 0x38], r10d
0000000140343c2d mov      dword ptr [rsp + 0x30], r9d
0000000140343c32 lea      r9, [rip + 0x2f4ac7]
0000000140343c39 mov      dword ptr [rsp + 0x28], r8d
0000000140343c3e mov      r8, rsi
0000000140343c41 shr      eax, 1
0000000140343c43 mov      dword ptr [rsp + 0x20], eax
0000000140343c47 call     0x1401eb4f4
0000000140343c4c mov      bl, 4
0000000140343c4e mov      edi, 0x40000000
0000000140343c53 mov      rax, qword ptr [rip + 0x5dc3a6]
0000000140343c5a mov      qword ptr [rsp + 0xe0], rax
0000000140343c62 cmp      rax, r12
0000000140343c65 je       0x140343d7d
0000000140343c6b cmp      byte ptr [rax + 0x1e9], bl
0000000140343c71 jb       0x140343d7d
0000000140343c77 test     dword ptr [rax + 0x1ec], edi
0000000140343c7d je       0x140343d7d
0000000140343c83 mov      rdx, qword ptr [rsp + 0xd0]
0000000140343c8b movzx    esi, byte ptr [r13 + 0x1822]
0000000140343c93 movzx    r10d, byte ptr [r13 + 0x181e]
0000000140343c9b movzx    r11d, byte ptr [r13 + 0x181f]
0000000140343ca3 movzx    eax, byte ptr [rdx + 0x1829]
0000000140343caa movzx    ecx, byte ptr [rdx + 0x1828]
0000000140343cb1 movzx    ebx, byte ptr [r13 + 0x1820]
0000000140343cb9 movzx    edi, byte ptr [r13 + 0x1821]
0000000140343cc1 movzx    ebp, byte ptr [r13 + 0x1823]
0000000140343cc9 movzx    r14d, byte ptr [r13 + 0x1824]
0000000140343cd1 movzx    r15d, byte ptr [r13 + 0x1825]
0000000140343cd9 movzx    r12d, byte ptr [r13 + 0x1826]
0000000140343ce1 movzx    r13d, byte ptr [r13 + 0x1827]
0000000140343ce9 movzx    r9d, byte ptr [rdx + 0x1830]
0000000140343cf1 mov      dword ptr [rsp + 0x80], r10d
0000000140343cf9 mov      dword ptr [rsp + 0x78], r11d
0000000140343cfe mov      dword ptr [rsp + 0x70], ebx
0000000140343d02 mov      dword ptr [rsp + 0x68], edi
0000000140343d06 mov      dword ptr [rsp + 0x60], esi
0000000140343d0a lea      rsi, [rip + 0x38d86f]
0000000140343d11 mov      dword ptr [rsp + 0x58], ebp
0000000140343d15 mov      dword ptr [rsp + 0x50], r14d
0000000140343d1a mov      dword ptr [rsp + 0x48], r15d
0000000140343d1f mov      dword ptr [rsp + 0xd8], eax
0000000140343d26 movzx    eax, byte ptr [rdx + 0x1831]
0000000140343d2d mov      edx, 0xf9
0000000140343d32 mov      dword ptr [rsp + 0x40], r12d
0000000140343d37 and      eax, 1
0000000140343d3a mov      dword ptr [rsp + 0x38], r13d
0000000140343d3f mov      dword ptr [rsp + 0x30], ecx
0000000140343d43 mov      rcx, qword ptr [rsp + 0xe0]
0000000140343d4b lea      r8d, [rax + rax*4]
0000000140343d4f mov      eax, dword ptr [rsp + 0xd8]
0000000140343d56 mov      dword ptr [rsp + 0x28], eax
0000000140343d5a mov      dword ptr [rsp + 0x20], r8d
0000000140343d5f mov      r8, rsi
0000000140343d62 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140343d69 call     0x140145480
0000000140343d6e mov      r13, qword ptr [rsp + 0xd0]
0000000140343d76 lea      r12, [rip + 0x5dc283]
0000000140343d7d cmp      byte ptr [r13 + 0x16e1], 0
0000000140343d85 jne      0x140343dda
0000000140343d87 mov      r9d, dword ptr [r13 + 0x16e8]
0000000140343d8e cmp      r9d, 2
0000000140343d92 je       0x140343dda
0000000140343d94 mov      rcx, qword ptr [rip + 0x5dc265]
0000000140343d9b cmp      rcx, r12
0000000140343d9e je       0x14034403d
0000000140343da4 cmp      byte ptr [rcx + 0x1e9], 4
0000000140343dab jb       0x14034403d
0000000140343db1 test     dword ptr [rcx + 0x1ec], 0x40000000
0000000140343dbb je       0x14034403d
0000000140343dc1 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140343dc8 mov      edx, 0xfa
0000000140343dcd mov      r8, rsi
0000000140343dd0 call     0x140001bb0
0000000140343dd5 jmp      0x14034403d
0000000140343dda mov      rcx, qword ptr [rip + 0x5dc21f]
0000000140343de1 cmp      rcx, r12
0000000140343de4 je       0x14034403d
0000000140343dea cmp      byte ptr [rcx + 0x1e9], 4
0000000140343df1 jb       0x140343e27
0000000140343df3 test     dword ptr [rcx + 0x1ec], 0x40000000
0000000140343dfd je       0x140343e27
0000000140343dff movzx    eax, byte ptr [r13 + 0x1897]
0000000140343e07 mov      edx, 0xfb
0000000140343e0c movzx    r9d, byte ptr [r13 + 0x1896]
0000000140343e14 mov      r8, rsi
0000000140343e17 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140343e1e mov      dword ptr [rsp + 0x20], eax
0000000140343e22 call     0x140001bec
0000000140343e27 mov      rcx, qword ptr [rip + 0x5dc1d2]
0000000140343e2e cmp      rcx, r12
0000000140343e31 je       0x14034403d
0000000140343e37 cmp      byte ptr [rcx + 0x1e9], 4
0000000140343e3e jb       0x140343f20
0000000140343e44 test     dword ptr [rcx + 0x1ec], 0x40000000
0000000140343e4e je       0x140343f20
0000000140343e54 movzx    r8d, byte ptr [r13 + 0x1747]
0000000140343e5c lea      r9, [rip + 0x2f489d]
0000000140343e63 movzx    r12d, byte ptr [r13 + 0x173e]
0000000140343e6b mov      edx, 0xfe
0000000140343e70 movzx    r15d, byte ptr [r13 + 0x173f]
0000000140343e78 movzx    r14d, byte ptr [r13 + 0x1740]
0000000140343e80 movzx    ebp, byte ptr [r13 + 0x1741]
0000000140343e88 movzx    esi, byte ptr [r13 + 0x1742]
0000000140343e90 movzx    edi, byte ptr [r13 + 0x1743]
0000000140343e98 movzx    ebx, byte ptr [r13 + 0x1744]
0000000140343ea0 movzx    r11d, byte ptr [r13 + 0x1745]
0000000140343ea8 movzx    r10d, byte ptr [r13 + 0x1746]
0000000140343eb0 movzx    eax, byte ptr [r13 + 0x1748]
0000000140343eb8 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140343ebf shr      r8d, 1
0000000140343ec2 shr      r12d, 1
0000000140343ec5 mov      dword ptr [rsp + 0x70], r12d
0000000140343eca shr      r15d, 1
0000000140343ecd mov      dword ptr [rsp + 0x68], r15d
0000000140343ed2 shr      r14d, 1
0000000140343ed5 mov      dword ptr [rsp + 0x60], r14d
0000000140343eda shr      ebp, 1
0000000140343edc mov      dword ptr [rsp + 0x58], ebp
0000000140343ee0 shr      esi, 1
0000000140343ee2 mov      dword ptr [rsp + 0x50], esi
0000000140343ee6 shr      edi, 1
0000000140343ee8 mov      dword ptr [rsp + 0x48], edi
0000000140343eec shr      ebx, 1
0000000140343eee mov      dword ptr [rsp + 0x40], ebx
0000000140343ef2 shr      r11d, 1
0000000140343ef5 mov      dword ptr [rsp + 0x38], r11d
0000000140343efa shr      r10d, 1
0000000140343efd mov      dword ptr [rsp + 0x30], r10d
0000000140343f02 mov      dword ptr [rsp + 0x28], r8d
0000000140343f07 lea      r8, [rip + 0x38d672]
0000000140343f0e shr      eax, 1
0000000140343f10 mov      dword ptr [rsp + 0x20], eax
0000000140343f14 call     0x1401eb4f4
0000000140343f19 lea      r12, [rip + 0x5dc0e0]
0000000140343f20 mov      rax, qword ptr [rip + 0x5dc0d9]
0000000140343f27 mov      qword ptr [rsp + 0xd8], rax
0000000140343f2f cmp      rax, r12
0000000140343f32 je       0x14034403d
0000000140343f38 cmp      byte ptr [rax + 0x1e9], 4
0000000140343f3f jb       0x14034403d
0000000140343f45 test     dword ptr [rax + 0x1ec], 0x40000000
0000000140343f4f je       0x14034403d
0000000140343f55 mov      rdx, qword ptr [rsp + 0xd0]
0000000140343f5d movzx    r10d, byte ptr [r13 + 0x1888]
0000000140343f65 movzx    r11d, byte ptr [r13 + 0x1889]
0000000140343f6d movzx    ebx, byte ptr [r13 + 0x188a]
0000000140343f75 movzx    eax, byte ptr [rdx + 0x1893]
0000000140343f7c movzx    ecx, byte ptr [rdx + 0x1892]
0000000140343f83 movzx    edi, byte ptr [r13 + 0x188b]
0000000140343f8b movzx    esi, byte ptr [r13 + 0x188c]
0000000140343f93 movzx    ebp, byte ptr [r13 + 0x188d]
0000000140343f9b movzx    r14d, byte ptr [r13 + 0x188e]
0000000140343fa3 movzx    r15d, byte ptr [r13 + 0x188f]
0000000140343fab movzx    r12d, byte ptr [r13 + 0x1890]
0000000140343fb3 movzx    r13d, byte ptr [r13 + 0x1891]
0000000140343fbb movzx    r9d, byte ptr [rdx + 0x189c]
0000000140343fc3 mov      dword ptr [rsp + 0x80], r10d
0000000140343fcb mov      dword ptr [rsp + 0x78], r11d
0000000140343fd0 mov      dword ptr [rsp + 0x70], ebx
0000000140343fd4 mov      dword ptr [rsp + 0x68], edi
0000000140343fd8 mov      dword ptr [rsp + 0x60], esi
0000000140343fdc mov      dword ptr [rsp + 0x58], ebp
0000000140343fe0 mov      dword ptr [rsp + 0x50], r14d
0000000140343fe5 mov      dword ptr [rsp + 0x48], r15d
0000000140343fea mov      dword ptr [rsp + 0xd0], eax
0000000140343ff1 movzx    eax, byte ptr [rdx + 0x189d]
0000000140343ff8 mov      edx, 0xff
0000000140343ffd mov      dword ptr [rsp + 0x40], r12d
0000000140344002 and      eax, 1
0000000140344005 mov      dword ptr [rsp + 0x38], r13d
000000014034400a mov      dword ptr [rsp + 0x30], ecx
000000014034400e mov      rcx, qword ptr [rsp + 0xd8]
0000000140344016 lea      r8d, [rax + rax*4]
000000014034401a mov      eax, dword ptr [rsp + 0xd0]
0000000140344021 mov      dword ptr [rsp + 0x28], eax
0000000140344025 mov      dword ptr [rsp + 0x20], r8d
000000014034402a lea      r8, [rip + 0x38d54f]
0000000140344031 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140344038 call     0x140145480
000000014034403d mov      rbx, qword ptr [rsp + 0xe8]
0000000140344045 add      rsp, 0x90
000000014034404c pop      r15
000000014034404e pop      r14
0000000140344050 pop      r13
0000000140344052 pop      r12
0000000140344054 pop      rdi
0000000140344055 pop      rsi
0000000140344056 pop      rbp
0000000140344057 ret      