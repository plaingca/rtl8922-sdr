000000014042e7a0 mov      qword ptr [rsp + 8], rbx
000000014042e7a5 mov      qword ptr [rsp + 0x10], rbp
000000014042e7aa mov      qword ptr [rsp + 0x18], rsi
000000014042e7af push     rdi
000000014042e7b0 push     r12
000000014042e7b2 push     r13
000000014042e7b4 push     r14
000000014042e7b6 push     r15
000000014042e7b8 sub      rsp, 0x40
000000014042e7bc mov      rax, qword ptr [rcx]
000000014042e7bf xor      edi, edi
000000014042e7c1 mov      rsi, rdx
000000014042e7c4 mov      r14d, r9d
000000014042e7c7 mov      r12, r8
000000014042e7ca mov      rbx, rcx
000000014042e7cd mov      r13, qword ptr [rax]
000000014042e7d0 and      dword ptr [rdx], edi
000000014042e7d2 lea      edx, [rdi + 8]
000000014042e7d5 call     0x14036c07c
000000014042e7da mov      r15, qword ptr [rsp + 0x90]
000000014042e7e2 test     al, al
000000014042e7e4 jne      0x14042e817
000000014042e7e6 lea      edx, [rdi + 0xa]
000000014042e7e9 mov      rcx, rbx
000000014042e7ec call     0x14036c07c
000000014042e7f1 test     al, al
000000014042e7f3 jne      0x14042e817
000000014042e7f5 lea      edx, [rdi + 9]
000000014042e7f8 mov      rcx, rbx
000000014042e7fb call     0x14036c07c
000000014042e800 test     al, al
000000014042e802 jne      0x14042e817
000000014042e804 lea      edx, [rdi + 0xf]
000000014042e807 mov      rcx, rbx
000000014042e80a call     0x14036c07c
000000014042e80f test     al, al
000000014042e811 je       0x14042e8ad
000000014042e817 inc      dword ptr [rsi]
000000014042e819 mov      edx, 0x11020
000000014042e81e mov      rax, qword ptr [r13 + 0x20]
000000014042e822 mov      rcx, rbx
000000014042e825 call     qword ptr [rip + 0x255acd]
000000014042e82b mov      ebp, eax
000000014042e82d test     al, 1
000000014042e82f je       0x14042e8ad
000000014042e831 mov      rax, qword ptr [rbx + 0x18]
000000014042e835 lea      rdi, [rbx + 0x1320]
000000014042e83c mov      rcx, qword ptr [rbx + 8]
000000014042e840 mov      rdx, rdi
000000014042e843 mov      rax, qword ptr [rax + 0x108]
000000014042e84a call     qword ptr [rip + 0x255aa8]
000000014042e850 mov      edx, dword ptr [r15]
000000014042e853 cmp      edx, r14d
000000014042e856 jae      0x14042e890
000000014042e858 mov      rcx, qword ptr [rbx + 0x18]
000000014042e85c lea      r9, [rip + 0x2278fd]
000000014042e863 mov      r8d, r14d
000000014042e866 mov      dword ptr [rsp + 0x28], ebp
000000014042e86a sub      r8d, edx
000000014042e86d add      rdx, r12
000000014042e870 mov      rax, qword ptr [rcx + 0x128]
000000014042e877 lea      rcx, [rip + 0x2278c2]
000000014042e87e mov      qword ptr [rsp + 0x20], rcx
000000014042e883 mov      rcx, qword ptr [rbx + 8]
000000014042e887 call     qword ptr [rip + 0x255a6b]
000000014042e88d add      dword ptr [r15], eax
000000014042e890 mov      rax, qword ptr [rbx + 0x18]
000000014042e894 mov      rdx, rdi
000000014042e897 mov      rcx, qword ptr [rbx + 8]
000000014042e89b mov      rax, qword ptr [rax + 0x110]
000000014042e8a2 call     qword ptr [rip + 0x255a50]
000000014042e8a8 mov      edi, 1
000000014042e8ad mov      edx, 8
000000014042e8b2 mov      rcx, rbx
000000014042e8b5 call     0x14036c07c
000000014042e8ba test     al, al
000000014042e8bc jne      0x14042e8f5
000000014042e8be mov      edx, 0xa
000000014042e8c3 mov      rcx, rbx
000000014042e8c6 call     0x14036c07c
000000014042e8cb test     al, al
000000014042e8cd jne      0x14042e8f5
000000014042e8cf mov      edx, 9
000000014042e8d4 mov      rcx, rbx
000000014042e8d7 call     0x14036c07c
000000014042e8dc test     al, al
000000014042e8de jne      0x14042e8f5
000000014042e8e0 mov      edx, 0xf
000000014042e8e5 mov      rcx, rbx
000000014042e8e8 call     0x14036c07c
000000014042e8ed test     al, al
000000014042e8ef je       0x14042e9a2
000000014042e8f5 mov      r8d, 1
000000014042e8fb mov      rcx, rbx
000000014042e8fe mov      dl, r8b
000000014042e901 call     0x140429fcc
000000014042e906 test     eax, eax
000000014042e908 jne      0x14042e9a2
000000014042e90e inc      dword ptr [rsi]
000000014042e910 mov      edx, 0x15020
000000014042e915 mov      rax, qword ptr [r13 + 0x20]
000000014042e919 mov      rcx, rbx
000000014042e91c call     qword ptr [rip + 0x2559d6]
000000014042e922 mov      ebp, eax
000000014042e924 test     al, 1
000000014042e926 je       0x14042e9a2
000000014042e928 mov      rax, qword ptr [rbx + 0x18]
000000014042e92c lea      rsi, [rbx + 0x1320]
000000014042e933 mov      rcx, qword ptr [rbx + 8]
000000014042e937 mov      rdx, rsi
000000014042e93a mov      rax, qword ptr [rax + 0x108]
000000014042e941 call     qword ptr [rip + 0x2559b1]
000000014042e947 mov      ecx, dword ptr [r15]
000000014042e94a cmp      ecx, r14d
000000014042e94d jae      0x14042e988
000000014042e94f mov      rax, qword ptr [rbx + 0x18]
000000014042e953 lea      rdx, [r12 + rcx]
000000014042e957 sub      r14d, ecx
000000014042e95a mov      dword ptr [rsp + 0x28], ebp
000000014042e95e lea      rcx, [rip + 0x2277db]
000000014042e965 mov      r8d, r14d
000000014042e968 mov      qword ptr [rsp + 0x20], rcx
000000014042e96d lea      r9, [rip + 0x22782c]
000000014042e974 mov      rax, qword ptr [rax + 0x128]
000000014042e97b mov      rcx, qword ptr [rbx + 8]
000000014042e97f call     qword ptr [rip + 0x255973]
000000014042e985 add      dword ptr [r15], eax
000000014042e988 mov      rax, qword ptr [rbx + 0x18]
000000014042e98c mov      rdx, rsi
000000014042e98f mov      rcx, qword ptr [rbx + 8]
000000014042e993 mov      rax, qword ptr [rax + 0x110]
000000014042e99a call     qword ptr [rip + 0x255958]
000000014042e9a0 inc      edi
000000014042e9a2 xor      edx, edx
000000014042e9a4 mov      rcx, rbx
000000014042e9a7 call     0x14036c07c
000000014042e9ac test     al, al
000000014042e9ae jne      0x14042ea7f
000000014042e9b4 mov      edx, 1
000000014042e9b9 mov      rcx, rbx
000000014042e9bc call     0x14036c07c
000000014042e9c1 test     al, al
000000014042e9c3 jne      0x14042ea7f
000000014042e9c9 mov      edx, 4
000000014042e9ce mov      rcx, rbx
000000014042e9d1 call     0x14036c07c
000000014042e9d6 test     al, al
000000014042e9d8 jne      0x14042ea7f
000000014042e9de mov      edx, 6
000000014042e9e3 mov      rcx, rbx
000000014042e9e6 call     0x14036c07c
000000014042e9eb test     al, al
000000014042e9ed jne      0x14042ea7f
000000014042e9f3 mov      edx, 2
000000014042e9f8 mov      rcx, rbx
000000014042e9fb call     0x14036c07c
000000014042ea00 test     al, al
000000014042ea02 jne      0x14042ea7f
000000014042ea04 mov      edx, 5
000000014042ea09 mov      rcx, rbx
000000014042ea0c call     0x14036c07c
000000014042ea11 test     al, al
000000014042ea13 jne      0x14042ea7f
000000014042ea15 mov      edx, 3
000000014042ea1a mov      rcx, rbx
000000014042ea1d call     0x14036c07c
000000014042ea22 test     al, al
000000014042ea24 jne      0x14042ea7f
000000014042ea26 mov      edx, 8
000000014042ea2b mov      rcx, rbx
000000014042ea2e call     0x14036c07c
000000014042ea33 test     al, al
000000014042ea35 jne      0x14042ea7f
000000014042ea37 mov      edx, 0xa
000000014042ea3c mov      rcx, rbx
000000014042ea3f call     0x14036c07c
000000014042ea44 test     al, al
000000014042ea46 jne      0x14042ea7f
000000014042ea48 mov      edx, 9
000000014042ea4d mov      rcx, rbx
000000014042ea50 call     0x14036c07c
000000014042ea55 test     al, al
000000014042ea57 jne      0x14042ea7f
000000014042ea59 mov      edx, 0xf
000000014042ea5e mov      rcx, rbx
000000014042ea61 call     0x14036c07c
000000014042ea66 test     al, al
000000014042ea68 jne      0x14042ea7f
000000014042ea6a mov      edx, 0x11
000000014042ea6f mov      rcx, rbx
000000014042ea72 call     0x14036c07c
000000014042ea77 neg      al
000000014042ea79 sbb      eax, eax
000000014042ea7b and      eax, edi
000000014042ea7d jmp      0x14042ea81
000000014042ea7f mov      eax, edi
000000014042ea81 lea      r11, [rsp + 0x40]
000000014042ea86 mov      rbx, qword ptr [r11 + 0x30]
000000014042ea8a mov      rbp, qword ptr [r11 + 0x38]
000000014042ea8e mov      rsi, qword ptr [r11 + 0x40]
000000014042ea92 mov      rsp, r11
000000014042ea95 pop      r15
000000014042ea97 pop      r14
000000014042ea99 pop      r13
000000014042ea9b pop      r12
000000014042ea9d pop      rdi
000000014042ea9e ret      