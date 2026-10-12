00000001404f585c mov      qword ptr [rsp + 8], rbx
00000001404f5861 mov      qword ptr [rsp + 0x10], rbp
00000001404f5866 mov      qword ptr [rsp + 0x18], rsi
00000001404f586b push     rdi
00000001404f586c push     r12
00000001404f586e push     r13
00000001404f5870 sub      rsp, 0x20
00000001404f5874 mov      edx, dword ptr [rcx + 0x168]
00000001404f587a mov      r8, rcx
00000001404f587d mov      r10d, dword ptr [rcx + 0x164]
00000001404f5884 mov      ebx, edx
00000001404f5886 mov      r11d, dword ptr [rcx + 0x160]
00000001404f588d sub      ebx, r10d
00000001404f5890 mov      ecx, dword ptr [rcx + 0x16c]
00000001404f5896 mov      eax, r10d
00000001404f5899 sub      eax, edx
00000001404f589b mov      edi, ecx
00000001404f589d cmp      edx, r10d
00000001404f58a0 cmovbe   ebx, eax
00000001404f58a3 sub      edi, edx
00000001404f58a5 mov      eax, edx
00000001404f58a7 sub      eax, ecx
00000001404f58a9 cmp      ecx, edx
00000001404f58ab mov      edx, dword ptr [r8 + 0x170]
00000001404f58b2 mov      ebp, edx
00000001404f58b4 cmovbe   edi, eax
00000001404f58b7 sub      ebp, ecx
00000001404f58b9 mov      eax, ecx
00000001404f58bb sub      eax, edx
00000001404f58bd cmp      edx, ecx
00000001404f58bf mov      ecx, dword ptr [r8 + 0x174]
00000001404f58c6 mov      esi, ecx
00000001404f58c8 cmovbe   ebp, eax
00000001404f58cb sub      esi, edx
00000001404f58cd mov      eax, edx
00000001404f58cf sub      eax, ecx
00000001404f58d1 cmp      ecx, edx
00000001404f58d3 cmovbe   esi, eax
00000001404f58d6 mov      rcx, qword ptr [rip + 0x42a723]
00000001404f58dd lea      r13, [rip + 0x42a71c]
00000001404f58e4 cmp      rcx, r13
00000001404f58e7 je       0x1404f5a0e
00000001404f58ed cmp      byte ptr [rcx + 0x169], 1
00000001404f58f4 lea      r12, [rip + 0x40ae15]
00000001404f58fb jb       0x1404f592e
00000001404f58fd mov      eax, dword ptr [rcx + 0x16c]
00000001404f5903 test     al, 8
00000001404f5905 je       0x1404f592e
00000001404f5907 mov      rcx, qword ptr [rcx + 0x158]
00000001404f590e mov      eax, r11d
00000001404f5911 sub      eax, r10d
00000001404f5914 mov      r9d, r10d
00000001404f5917 sub      r9d, r11d
00000001404f591a mov      edx, 0x63
00000001404f591f cmp      r10d, r11d
00000001404f5922 mov      r8, r12
00000001404f5925 cmovbe   r9d, eax
00000001404f5929 call     0x140001bb0
00000001404f592e mov      rcx, qword ptr [rip + 0x42a6cb]
00000001404f5935 cmp      rcx, r13
00000001404f5938 je       0x1404f5a0e
00000001404f593e cmp      byte ptr [rcx + 0x169], 1
00000001404f5945 jb       0x1404f5968
00000001404f5947 mov      eax, dword ptr [rcx + 0x16c]
00000001404f594d test     al, 8
00000001404f594f je       0x1404f5968
00000001404f5951 mov      rcx, qword ptr [rcx + 0x158]
00000001404f5958 mov      edx, 0x64
00000001404f595d mov      r9d, ebx
00000001404f5960 mov      r8, r12
00000001404f5963 call     0x140001bb0
00000001404f5968 mov      rcx, qword ptr [rip + 0x42a691]
00000001404f596f cmp      rcx, r13
00000001404f5972 je       0x1404f5a0e
00000001404f5978 cmp      byte ptr [rcx + 0x169], 1
00000001404f597f jb       0x1404f59a2
00000001404f5981 mov      eax, dword ptr [rcx + 0x16c]
00000001404f5987 test     al, 8
00000001404f5989 je       0x1404f59a2
00000001404f598b mov      rcx, qword ptr [rcx + 0x158]
00000001404f5992 mov      edx, 0x65
00000001404f5997 mov      r9d, edi
00000001404f599a mov      r8, r12
00000001404f599d call     0x140001bb0
00000001404f59a2 mov      rcx, qword ptr [rip + 0x42a657]
00000001404f59a9 cmp      rcx, r13
00000001404f59ac je       0x1404f5a0e
00000001404f59ae cmp      byte ptr [rcx + 0x169], 1
00000001404f59b5 jb       0x1404f59d8
00000001404f59b7 mov      eax, dword ptr [rcx + 0x16c]
00000001404f59bd test     al, 8
00000001404f59bf je       0x1404f59d8
00000001404f59c1 mov      rcx, qword ptr [rcx + 0x158]
00000001404f59c8 mov      edx, 0x66
00000001404f59cd mov      r9d, ebp
00000001404f59d0 mov      r8, r12
00000001404f59d3 call     0x140001bb0
00000001404f59d8 mov      rcx, qword ptr [rip + 0x42a621]
00000001404f59df cmp      rcx, r13
00000001404f59e2 je       0x1404f5a0e
00000001404f59e4 cmp      byte ptr [rcx + 0x169], 1
00000001404f59eb jb       0x1404f5a0e
00000001404f59ed mov      eax, dword ptr [rcx + 0x16c]
00000001404f59f3 test     al, 8
00000001404f59f5 je       0x1404f5a0e
00000001404f59f7 mov      rcx, qword ptr [rcx + 0x158]
00000001404f59fe mov      edx, 0x67
00000001404f5a03 mov      r9d, esi
00000001404f5a06 mov      r8, r12
00000001404f5a09 call     0x140001bb0
00000001404f5a0e mov      rbx, qword ptr [rsp + 0x40]
00000001404f5a13 mov      rbp, qword ptr [rsp + 0x48]
00000001404f5a18 mov      rsi, qword ptr [rsp + 0x50]
00000001404f5a1d add      rsp, 0x20
00000001404f5a21 pop      r13
00000001404f5a23 pop      r12
00000001404f5a25 pop      rdi
00000001404f5a26 ret      