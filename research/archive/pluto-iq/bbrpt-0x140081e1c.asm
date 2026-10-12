0000000140081e1c mov      qword ptr [rsp + 8], rbx
0000000140081e21 mov      qword ptr [rsp + 0x10], rsi
0000000140081e26 push     rdi
0000000140081e27 sub      rsp, 0x20
0000000140081e2b mov      rsi, rcx
0000000140081e2e lea      rdi, [rcx + 0x30]
0000000140081e32 jmp      0x140081efc
0000000140081e37 mov      rbx, qword ptr [rsi + 0x38]
0000000140081e3b mov      rax, qword ptr [rbx + 8]
0000000140081e3f mov      rcx, qword ptr [rbx]
0000000140081e42 mov      qword ptr [rax], rcx
0000000140081e45 mov      qword ptr [rcx + 8], rax
0000000140081e49 mov      qword ptr [rbx], 0x100100
0000000140081e50 mov      qword ptr [rbx + 8], 0x200200
0000000140081e58 dec      dword ptr [rsi + 0x40]
0000000140081e5b mov      eax, dword ptr [rbx + 0x18]
0000000140081e5e test     al, 2
0000000140081e60 jne      0x140081efc
0000000140081e66 mov      rcx, qword ptr [rip + 0x89e193]
0000000140081e6d lea      rax, [rip + 0x89e18c]
0000000140081e74 cmp      rcx, rax
0000000140081e77 je       0x140081ea1
0000000140081e79 cmp      byte ptr [rcx + 0x29], 4
0000000140081e7d jb       0x140081ea1
0000000140081e7f test     dword ptr [rcx + 0x2c], 0x200
0000000140081e86 je       0x140081ea1
0000000140081e88 mov      r9, qword ptr [rbx + 0x20]
0000000140081e8c lea      r8, [rip + 0x610dad]
0000000140081e93 mov      rcx, qword ptr [rcx + 0x18]
0000000140081e97 mov      edx, 0xb
0000000140081e9c call     0x140008874
0000000140081ea1 or       dword ptr [rbx + 0x18], 2
0000000140081ea5 lea      r8, [rip + 0x578974]
0000000140081eac mov      rcx, qword ptr [rsi + 0x28]
0000000140081eb0 mov      r9d, 0xab
0000000140081eb6 mov      edx, 0x13
0000000140081ebb call     0x1405c3724
0000000140081ec0 mov      r8d, 7
0000000140081ec6 mov      rdx, rbx
0000000140081ec9 mov      rcx, rsi
0000000140081ecc call     0x140082068
0000000140081ed1 mov      rcx, qword ptr [rsi + 0x28]
0000000140081ed5 lea      r8, [rip + 0x578934]
0000000140081edc mov      r9d, 0xa2
0000000140081ee2 mov      edx, 0x13
0000000140081ee7 call     0x1405c3264
0000000140081eec bts      dword ptr [rbx + 0x18], 8
0000000140081ef1 mov      rdx, rbx
0000000140081ef4 mov      rcx, rsi
0000000140081ef7 call     0x140081f18
0000000140081efc cmp      qword ptr [rdi], rdi
0000000140081eff jne      0x140081e37
0000000140081f05 mov      rbx, qword ptr [rsp + 0x30]
0000000140081f0a mov      rsi, qword ptr [rsp + 0x38]
0000000140081f0f add      rsp, 0x20
0000000140081f13 pop      rdi
0000000140081f14 ret      