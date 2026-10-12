00000001403efca0 mov      rax, rsp
00000001403efca3 mov      qword ptr [rax + 8], rbx
00000001403efca7 mov      qword ptr [rax + 0x10], rbp
00000001403efcab mov      qword ptr [rax + 0x18], rsi
00000001403efcaf mov      qword ptr [rax + 0x20], rdi
00000001403efcb3 push     r12
00000001403efcb5 push     r14
00000001403efcb7 push     r15
00000001403efcb9 sub      rsp, 0x30
00000001403efcbd mov      rax, qword ptr [rcx + 0x9a0]
00000001403efcc4 mov      edi, r9d
00000001403efcc7 mov      r14d, r8d
00000001403efcca mov      ebp, edx
00000001403efccc mov      rsi, rcx
00000001403efccf mov      r9d, dword ptr [rax + 0x1014]
00000001403efcd6 cmp      r9d, 0x1002
00000001403efcdd je       0x1403efd01
00000001403efcdf cmp      r9d, 0x1020
00000001403efce6 jne      0x1403efcef
00000001403efce8 mov      ebx, 1
00000001403efced jmp      0x1403efd03
00000001403efcef cmp      r9d, 0x1011
00000001403efcf6 jne      0x1403efd01
00000001403efcf8 xor      ebx, ebx
00000001403efcfa test     ebp, ebp
00000001403efcfc setne    bl
00000001403efcff jmp      0x1403efd03
00000001403efd01 xor      ebx, ebx
00000001403efd03 cmp      edi, -1
00000001403efd06 je       0x1403efd7e
00000001403efd08 mov      ecx, edi
00000001403efd0a call     0x1403e8a84
00000001403efd0f mov      r12d, eax
00000001403efd12 bt       r14d, 0x10
00000001403efd17 jb       0x1403efd31
00000001403efd19 xor      r9d, r9d
00000001403efd1c mov      dword ptr [rsp + 0x20], ebx
00000001403efd20 mov      edx, 0x704
00000001403efd25 mov      rcx, rsi
00000001403efd28 lea      r8d, [r9 + 2]
00000001403efd2c call     0x140316680
00000001403efd31 xor      r9d, r9d
00000001403efd34 mov      r8d, r14d
00000001403efd37 mov      edx, ebp
00000001403efd39 mov      rcx, rsi
00000001403efd3c call     0x1403eeb94
00000001403efd41 mov      r15d, eax
00000001403efd44 bt       r14d, 0x10
00000001403efd49 jb       0x1403efd66
00000001403efd4b mov      r9d, 1
00000001403efd51 mov      dword ptr [rsp + 0x20], ebx
00000001403efd55 mov      edx, 0x704
00000001403efd5a mov      rcx, rsi
00000001403efd5d lea      r8d, [r9 + 1]
00000001403efd61 call     0x140316680
00000001403efd66 mov      r9d, dword ptr [rsp + 0x70]
00000001403efd6b mov      ecx, r12d
00000001403efd6e shl      r9d, cl
00000001403efd71 and      r9d, edi
00000001403efd74 not      edi
00000001403efd76 and      edi, r15d
00000001403efd79 or       r9d, edi
00000001403efd7c jmp      0x1403efd83
00000001403efd7e mov      r9d, dword ptr [rsp + 0x70]
00000001403efd83 mov      r8d, r14d
00000001403efd86 mov      dword ptr [rsp + 0x70], ebx
00000001403efd8a mov      edx, ebp
00000001403efd8c mov      rcx, rsi
00000001403efd8f mov      rbx, qword ptr [rsp + 0x50]
00000001403efd94 mov      rbp, qword ptr [rsp + 0x58]
00000001403efd99 mov      rsi, qword ptr [rsp + 0x60]
00000001403efd9e mov      rdi, qword ptr [rsp + 0x68]
00000001403efda3 add      rsp, 0x30
00000001403efda7 pop      r15
00000001403efda9 pop      r14
00000001403efdab pop      r12
00000001403efdad jmp      0x1403f0468