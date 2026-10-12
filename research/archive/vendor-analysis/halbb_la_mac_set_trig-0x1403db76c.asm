00000001403db76c mov      qword ptr [rsp + 8], rbx
00000001403db771 mov      qword ptr [rsp + 0x10], rbp
00000001403db776 mov      qword ptr [rsp + 0x18], rsi
00000001403db77b push     rdi
00000001403db77c sub      rsp, 0x30
00000001403db780 mov      rbx, qword ptr [rcx + 0x9a0]
00000001403db787 mov      bpl, dl
00000001403db78a add      rbx, 0x1040
00000001403db791 mov      rdi, rcx
00000001403db794 mov      rcx, qword ptr [rip + 0x544865]
00000001403db79b lea      rax, [rip + 0x54485e]
00000001403db7a2 cmp      rcx, rax
00000001403db7a5 je       0x1403db7db
00000001403db7a7 cmp      byte ptr [rcx + 0x169], 4
00000001403db7ae jb       0x1403db7db
00000001403db7b0 test     dword ptr [rcx + 0x16c], 0x1000
00000001403db7ba je       0x1403db7db
00000001403db7bc mov      rcx, qword ptr [rcx + 0x158]
00000001403db7c3 lea      r9, [rip + 0x270c36]
00000001403db7ca mov      edx, 0x24
00000001403db7cf lea      r8, [rip + 0x2f9a42]
00000001403db7d6 call     0x140008874
00000001403db7db mov      eax, dword ptr [rdi + 0x998]
00000001403db7e1 xor      esi, esi
00000001403db7e3 mov      dword ptr [rsp + 0x20], eax
00000001403db7e7 mov      rcx, rdi
00000001403db7ea test     bpl, bpl
00000001403db7ed jne      0x1403db8c7
00000001403db7f3 mov      r8d, dword ptr [rbx + 0x1dc]
00000001403db7fa xor      r9d, r9d
00000001403db7fd mov      edx, dword ptr [rbx + 0x1d8]
00000001403db803 call     0x140316994
00000001403db808 mov      eax, dword ptr [rdi + 0x998]
00000001403db80e xor      r9d, r9d
00000001403db811 mov      r8d, dword ptr [rbx + 0x19c]
00000001403db818 mov      rcx, rdi
00000001403db81b mov      edx, dword ptr [rbx + 0x198]
00000001403db821 mov      dword ptr [rsp + 0x20], eax
00000001403db825 call     0x140316994
00000001403db82a mov      eax, dword ptr [rdi + 0x998]
00000001403db830 xor      r9d, r9d
00000001403db833 mov      r8d, dword ptr [rbx + 0x1b4]
00000001403db83a mov      rcx, rdi
00000001403db83d mov      edx, dword ptr [rbx + 0x1b0]
00000001403db843 mov      dword ptr [rsp + 0x20], eax
00000001403db847 call     0x140316994
00000001403db84c mov      eax, dword ptr [rdi + 0x998]
00000001403db852 xor      r9d, r9d
00000001403db855 mov      r8d, dword ptr [rbx + 0x1bc]
00000001403db85c mov      rcx, rdi
00000001403db85f mov      edx, dword ptr [rbx + 0x1b8]
00000001403db865 mov      dword ptr [rsp + 0x20], eax
00000001403db869 call     0x140316994
00000001403db86e mov      eax, dword ptr [rdi + 0x998]
00000001403db874 xor      r9d, r9d
00000001403db877 mov      r8d, dword ptr [rbx + 0x1c4]
00000001403db87e mov      rcx, rdi
00000001403db881 mov      edx, dword ptr [rbx + 0x1c0]
00000001403db887 mov      dword ptr [rsp + 0x20], eax
00000001403db88b call     0x140316994
00000001403db890 mov      eax, dword ptr [rdi + 0x998]
00000001403db896 xor      r9d, r9d
00000001403db899 mov      r8d, dword ptr [rbx + 0x1a4]
00000001403db8a0 mov      rcx, rdi
00000001403db8a3 mov      edx, dword ptr [rbx + 0x1a0]
00000001403db8a9 mov      dword ptr [rsp + 0x20], eax
00000001403db8ad call     0x140316994
00000001403db8b2 mov      r8d, dword ptr [rbx + 0x1ac]
00000001403db8b9 xor      r9d, r9d
00000001403db8bc mov      edx, dword ptr [rbx + 0x1a8]
00000001403db8c2 jmp      0x1403dbaf0
00000001403db8c7 movzx    r9d, byte ptr [rbx + 0x3fc]
00000001403db8cf mov      r8d, dword ptr [rbx + 0x1c4]
00000001403db8d6 mov      edx, dword ptr [rbx + 0x1c0]
00000001403db8dc call     0x140316994
00000001403db8e1 mov      eax, dword ptr [rdi + 0x998]
00000001403db8e7 mov      rcx, rdi
00000001403db8ea movzx    r9d, byte ptr [rbx + 0x3f5]
00000001403db8f2 mov      r8d, dword ptr [rbx + 0x1dc]
00000001403db8f9 mov      edx, dword ptr [rbx + 0x1d8]
00000001403db8ff mov      dword ptr [rsp + 0x20], eax
00000001403db903 call     0x140316994
00000001403db908 mov      eax, dword ptr [rdi + 0x998]
00000001403db90e mov      rcx, rdi
00000001403db911 movzx    r9d, byte ptr [rbx + 0x3f6]
00000001403db919 mov      r8d, dword ptr [rbx + 0x1d4]
00000001403db920 mov      edx, dword ptr [rbx + 0x1d0]
00000001403db926 mov      dword ptr [rsp + 0x20], eax
00000001403db92a call     0x140316994
00000001403db92f mov      ebp, 0x1fe0000
00000001403db934 mov      rcx, rdi
00000001403db937 test     dword ptr [rdi + 0x13f0], ebp
00000001403db93d je       0x1403db989
00000001403db93f mov      edx, dword ptr [rdi + 0x998]
00000001403db945 mov      r8d, dword ptr [rbx + 0x1e4]
00000001403db94c mov      r10d, dword ptr [rbx + 0x1e0]
00000001403db953 cmp      byte ptr [rbx + 0x3f7], sil
00000001403db95a jne      0x1403db960
00000001403db95c mov      eax, esi
00000001403db95e jmp      0x1403db968
00000001403db960 mov      esi, 3
00000001403db965 lea      eax, [rsi - 2]
00000001403db968 mov      dword ptr [rsp + 0x20], edx
00000001403db96c mov      r9d, eax
00000001403db96f mov      edx, r10d
00000001403db972 call     0x140316994
00000001403db977 mov      r8d, dword ptr [rbx + 0x1ec]
00000001403db97e mov      r9d, esi
00000001403db981 mov      edx, dword ptr [rbx + 0x1e8]
00000001403db987 jmp      0x1403db9d7
00000001403db989 mov      eax, dword ptr [rdi + 0x998]
00000001403db98f xor      r9d, r9d
00000001403db992 mov      edx, dword ptr [rbx + 0x1e0]
00000001403db998 mov      r8d, 0x10000
00000001403db99e mov      dword ptr [rsp + 0x20], eax
00000001403db9a2 call     0x140316994
00000001403db9a7 mov      cl, byte ptr [rbx + 0x3f6]
00000001403db9ad mov      eax, 1
00000001403db9b2 cmp      cl, al
00000001403db9b4 jne      0x1403db9be
00000001403db9b6 mov      r8d, 0x400000
00000001403db9bc jmp      0x1403db9c9
00000001403db9be cmp      cl, 2
00000001403db9c1 jne      0x1403db9e9
00000001403db9c3 mov      r8d, 0x800000
00000001403db9c9 mov      edx, dword ptr [rbx + 0x1e0]
00000001403db9cf movzx    r9d, byte ptr [rbx + 0x3f7]
00000001403db9d7 mov      eax, dword ptr [rdi + 0x998]
00000001403db9dd mov      rcx, rdi
00000001403db9e0 mov      dword ptr [rsp + 0x20], eax
00000001403db9e4 call     0x140316994
00000001403db9e9 mov      eax, dword ptr [rdi + 0x998]
00000001403db9ef mov      rcx, rdi
00000001403db9f2 movzx    r9d, byte ptr [rbx + 0x3f8]
00000001403db9fa mov      r8d, dword ptr [rbx + 0x19c]
00000001403dba01 mov      edx, dword ptr [rbx + 0x198]
00000001403dba07 mov      dword ptr [rsp + 0x20], eax
00000001403dba0b call     0x140316994
00000001403dba10 mov      eax, dword ptr [rdi + 0x998]
00000001403dba16 mov      rcx, rdi
00000001403dba19 movzx    r9d, byte ptr [rbx + 0x3f8]
00000001403dba21 mov      r8d, dword ptr [rbx + 0x1b4]
00000001403dba28 mov      edx, dword ptr [rbx + 0x1b0]
00000001403dba2e mov      dword ptr [rsp + 0x20], eax
00000001403dba32 call     0x140316994
00000001403dba37 mov      eax, dword ptr [rdi + 0x998]
00000001403dba3d mov      rcx, rdi
00000001403dba40 movzx    r9d, byte ptr [rbx + 0x3f9]
00000001403dba48 mov      r8d, dword ptr [rbx + 0x1bc]
00000001403dba4f mov      edx, dword ptr [rbx + 0x1b8]
00000001403dba55 mov      dword ptr [rsp + 0x20], eax
00000001403dba59 call     0x140316994
00000001403dba5e mov      eax, dword ptr [rdi + 0x998]
00000001403dba64 mov      rcx, rdi
00000001403dba67 movzx    r9d, byte ptr [rbx + 0x3fa]
00000001403dba6f mov      r8d, dword ptr [rbx + 0x1a4]
00000001403dba76 mov      edx, dword ptr [rbx + 0x1a0]
00000001403dba7c mov      dword ptr [rsp + 0x20], eax
00000001403dba80 call     0x140316994
00000001403dba85 mov      eax, dword ptr [rdi + 0x998]
00000001403dba8b mov      rcx, rdi
00000001403dba8e movzx    r9d, byte ptr [rbx + 0x3fa]
00000001403dba96 mov      r8d, dword ptr [rbx + 0x1ac]
00000001403dba9d mov      edx, dword ptr [rbx + 0x1a8]
00000001403dbaa3 mov      dword ptr [rsp + 0x20], eax
00000001403dbaa7 call     0x140316994
00000001403dbaac mov      eax, dword ptr [rdi + 0x998]
00000001403dbab2 mov      rcx, rdi
00000001403dbab5 movzx    r9d, byte ptr [rbx + 0x3fb]
00000001403dbabd mov      r8d, dword ptr [rbx + 0x1cc]
00000001403dbac4 mov      edx, dword ptr [rbx + 0x1c8]
00000001403dbaca mov      dword ptr [rsp + 0x20], eax
00000001403dbace call     0x140316994
00000001403dbad3 test     dword ptr [rdi + 0x13f0], ebp
00000001403dbad9 je       0x1403dbb02
00000001403dbadb movzx    r9d, byte ptr [rbx + 0x3fd]
00000001403dbae3 mov      r8d, dword ptr [rbx + 0x2bc]
00000001403dbaea mov      edx, dword ptr [rbx + 0x2b8]
00000001403dbaf0 mov      eax, dword ptr [rdi + 0x998]
00000001403dbaf6 mov      rcx, rdi
00000001403dbaf9 mov      dword ptr [rsp + 0x20], eax
00000001403dbafd call     0x140316994
00000001403dbb02 mov      rbx, qword ptr [rsp + 0x40]
00000001403dbb07 mov      rbp, qword ptr [rsp + 0x48]
00000001403dbb0c mov      rsi, qword ptr [rsp + 0x50]
00000001403dbb11 add      rsp, 0x30
00000001403dbb15 pop      rdi
00000001403dbb16 ret      