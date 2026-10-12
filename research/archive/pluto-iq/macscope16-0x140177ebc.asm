0000000140177e40 mov      qword ptr [rsp + 8], rbx
0000000140177e45 mov      qword ptr [rsp + 0x10], rbp
0000000140177e4a mov      qword ptr [rsp + 0x18], rsi
0000000140177e4f push     rdi
0000000140177e50 sub      rsp, 0x20
0000000140177e54 mov      rax, qword ptr [rdx + 0x52e70]
0000000140177e5b mov      rbp, r8
0000000140177e5e mov      rdi, rdx
0000000140177e61 mov      rsi, rcx
0000000140177e64 mov      r9d, dword ptr [rax + 0x53e9a0]
0000000140177e6b and      r9d, 7
0000000140177e6f cmp      r9b, 3
0000000140177e73 jne      0x140177e7d
0000000140177e75 mov      rcx, rdx
0000000140177e78 call     0x140066a20
0000000140177e7d mov      dl, 0xb
0000000140177e7f mov      rcx, rsi
0000000140177e82 call     0x14005de30
0000000140177e87 mov      edx, 2
0000000140177e8c mov      rcx, rsi
0000000140177e8f call     0x14005dce8
0000000140177e94 mov      r8d, 3
0000000140177e9a lea      rdx, [rdi + 0x2a0]
0000000140177ea1 mov      rcx, rsi
0000000140177ea4 mov      rbx, rax
0000000140177ea7 call     0x14005dd10
0000000140177eac mov      rdx, rbp
0000000140177eaf mov      rcx, rsi
0000000140177eb2 call     0x140178900
0000000140177eb7 mov      rcx, rsi
0000000140177eba call     0x14005df9c
0000000140177ebf mov      rbp, qword ptr [rsp + 0x38]
0000000140177ec4 mov      ecx, 0xfffe
0000000140177ec9 mov      rsi, qword ptr [rsp + 0x40]
0000000140177ece sub      cx, bx
0000000140177ed1 add      ax, cx
0000000140177ed4 mov      word ptr [rbx], ax
0000000140177ed7 mov      rbx, qword ptr [rsp + 0x30]
0000000140177edc add      rsp, 0x20
0000000140177ee0 pop      rdi
0000000140177ee1 ret      