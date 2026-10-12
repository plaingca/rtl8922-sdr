00000001404f6798 mov      qword ptr [rsp + 0x18], rbx
00000001404f679d push     rbp
00000001404f679e push     rsi
00000001404f679f push     rdi
00000001404f67a0 sub      rsp, 0x370
00000001404f67a7 mov      rax, qword ptr [rip + 0x430cb2]
00000001404f67ae xor      rax, rsp
00000001404f67b1 mov      qword ptr [rsp + 0x360], rax
00000001404f67b9 mov      rdi, rdx
00000001404f67bc mov      rbx, rcx
00000001404f67bf xor      edx, edx
00000001404f67c1 lea      rcx, [rsp + 0x30]
00000001404f67c6 mov      r8d, 0x330
00000001404f67cc call     0x1405f4640
00000001404f67d1 mov      rsi, qword ptr [rbx + 0x1390]
00000001404f67d8 mov      rdx, rdi
00000001404f67db mov      rcx, rbx
00000001404f67de mov      rax, qword ptr [rsi + 0x110]
00000001404f67e5 call     qword ptr [rip + 0x18db0d]
00000001404f67eb test     eax, eax
00000001404f67ed jne      0x1404f6889
00000001404f67f3 mov      r8d, dword ptr [rdi + 0x1c]
00000001404f67f7 lea      rbp, [rip + 0x166d72]
00000001404f67fe mov      rdx, qword ptr [rdi + 0x10]
00000001404f6802 lea      r9, [rsp + 0x30]
00000001404f6807 mov      rcx, rbx
00000001404f680a mov      qword ptr [rsp + 0x20], rbp
00000001404f680f call     0x1404f3bcc
00000001404f6814 test     eax, eax
00000001404f6816 jne      0x1404f6889
00000001404f6818 mov      rcx, rbx
00000001404f681b call     0x1404f4238
00000001404f6820 test     eax, eax
00000001404f6822 jne      0x1404f6889
00000001404f6824 mov      rdx, qword ptr [rdi + 0x10]
00000001404f6828 lea      r8, [rsp + 0x30]
00000001404f682d xor      r9d, r9d
00000001404f6830 mov      qword ptr [rsp + 0x20], rbp
00000001404f6835 mov      rcx, rbx
00000001404f6838 call     0x1404f54c4
00000001404f683d test     eax, eax
00000001404f683f jne      0x1404f6889
00000001404f6841 mov      rdx, rbp
00000001404f6844 mov      rcx, rbx
00000001404f6847 call     0x1404f51fc
00000001404f684c test     eax, eax
00000001404f684e jne      0x1404f6889
00000001404f6850 mov      r9, rbp
00000001404f6853 lea      rdx, [rsp + 0x30]
00000001404f6858 xor      r8d, r8d
00000001404f685b mov      rcx, rbx
00000001404f685e call     0x1404f569c
00000001404f6863 test     eax, eax
00000001404f6865 jne      0x1404f6889
00000001404f6867 lea      edx, [rax + 5]
00000001404f686a mov      rcx, rbx
00000001404f686d call     0x1404f4428
00000001404f6872 test     eax, eax
00000001404f6874 jne      0x1404f6889
00000001404f6876 mov      rax, qword ptr [rsi + 0x118]
00000001404f687d mov      rdx, rdi
00000001404f6880 mov      rcx, rbx
00000001404f6883 call     qword ptr [rip + 0x18da6f]
00000001404f6889 mov      rcx, qword ptr [rsp + 0x360]
00000001404f6891 xor      rcx, rsp
00000001404f6894 call     0x1405f45b0
00000001404f6899 mov      rbx, qword ptr [rsp + 0x3a0]
00000001404f68a1 add      rsp, 0x370
00000001404f68a8 pop      rdi
00000001404f68a9 pop      rsi
00000001404f68aa pop      rbp
00000001404f68ab ret      