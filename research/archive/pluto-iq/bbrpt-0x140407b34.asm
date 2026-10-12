0000000140407b34 mov      rax, rsp
0000000140407b37 mov      qword ptr [rax + 8], rbx
0000000140407b3b mov      qword ptr [rax + 0x10], rbp
0000000140407b3f mov      qword ptr [rax + 0x18], rsi
0000000140407b43 push     rdi
0000000140407b44 sub      rsp, 0x30
0000000140407b48 movzx    ebp, dl
0000000140407b4b mov      ebx, r9d
0000000140407b4e mov      rdi, rcx
0000000140407b51 test     r8d, r8d
0000000140407b54 jne      0x140407b95
0000000140407b56 mov      dword ptr [rax - 0x10], ebx
0000000140407b59 lea      r9d, [r8 + 4]
0000000140407b5d and      dword ptr [rax - 0x18], r8d
0000000140407b61 mov      esi, 0x24ee4
0000000140407b66 lea      r8d, [r9 + 0x6c]
0000000140407b6a mov      edx, esi
0000000140407b6c call     0x140316a50
0000000140407b71 xor      r9d, r9d
0000000140407b74 mov      dword ptr [rsp + 0x28], ebx
0000000140407b78 and      dword ptr [rsp + 0x20], 0
0000000140407b7d mov      edx, esi
0000000140407b7f mov      rcx, rdi
0000000140407b82 lea      r8d, [r9 + 0xf]
0000000140407b86 call     0x140316a50
0000000140407b8b mov      esi, 2
0000000140407b90 jmp      0x140407cc7
0000000140407b95 cmp      r8d, 1
0000000140407b99 jne      0x140407bdb
0000000140407b9b lea      r9d, [r8 + 3]
0000000140407b9f mov      dword ptr [rsp + 0x28], ebx
0000000140407ba3 mov      dword ptr [rsp + 0x20], r8d
0000000140407ba8 mov      esi, 0x24ee4
0000000140407bad lea      r8d, [r9 + 0x6c]
0000000140407bb1 mov      edx, esi
0000000140407bb3 call     0x140316a50
0000000140407bb8 xor      r9d, r9d
0000000140407bbb mov      dword ptr [rsp + 0x28], ebx
0000000140407bbf mov      edx, esi
0000000140407bc1 mov      dword ptr [rsp + 0x20], ebp
0000000140407bc5 mov      rcx, rdi
0000000140407bc8 lea      r8d, [r9 + 0xf]
0000000140407bcc call     0x140316a50
0000000140407bd1 mov      esi, 3
0000000140407bd6 jmp      0x140407cc7
0000000140407bdb mov      esi, 2
0000000140407be0 cmp      r8d, esi
0000000140407be3 jne      0x140407c7d
0000000140407be9 mov      r9d, 4
0000000140407bef mov      dword ptr [rsp + 0x28], ebx
0000000140407bf3 mov      dword ptr [rsp + 0x20], esi
0000000140407bf7 mov      esi, 0x24ee4
0000000140407bfc mov      edx, esi
0000000140407bfe lea      r8d, [r9 + 0x6c]
0000000140407c02 call     0x140316a50
0000000140407c07 xor      r9d, r9d
0000000140407c0a mov      dword ptr [rsp + 0x28], ebx
0000000140407c0e mov      edx, esi
0000000140407c10 mov      dword ptr [rsp + 0x20], ebp
0000000140407c14 mov      rcx, rdi
0000000140407c17 lea      r8d, [r9 + 0xf]
0000000140407c1b call     0x140316a50
0000000140407c20 mov      edx, 0x20410
0000000140407c25 mov      dword ptr [rsp + 0x28], ebx
0000000140407c29 mov      r9d, 0x1b
0000000140407c2f mov      dword ptr [rsp + 0x20], 4
0000000140407c37 mov      r8d, 0x38000000
0000000140407c3d mov      rcx, rdi
0000000140407c40 call     0x140316a50
0000000140407c45 mov      ebp, 0x2040c
0000000140407c4a mov      dword ptr [rsp + 0x28], ebx
0000000140407c4e mov      edx, ebp
0000000140407c50 mov      dword ptr [rsp + 0x20], 4
0000000140407c58 mov      r9d, 0x14
0000000140407c5e mov      r8d, 0x700000
0000000140407c64 mov      rcx, rdi
0000000140407c67 call     0x140316a50
0000000140407c6c mov      dword ptr [rsp + 0x28], ebx
0000000140407c70 mov      dword ptr [rsp + 0x20], 4
0000000140407c78 jmp      0x140407d13
0000000140407c7d mov      esi, 3
0000000140407c82 cmp      r8d, esi
0000000140407c85 jne      0x140407d29
0000000140407c8b mov      r9d, 4
0000000140407c91 mov      dword ptr [rsp + 0x28], ebx
0000000140407c95 mov      dword ptr [rsp + 0x20], esi
0000000140407c99 mov      esi, 0x24ee4
0000000140407c9e mov      edx, esi
0000000140407ca0 lea      r8d, [r9 + 0x6c]
0000000140407ca4 call     0x140316a50
0000000140407ca9 xor      r9d, r9d
0000000140407cac mov      dword ptr [rsp + 0x28], ebx
0000000140407cb0 mov      edx, esi
0000000140407cb2 mov      dword ptr [rsp + 0x20], ebp
0000000140407cb6 mov      rcx, rdi
0000000140407cb9 lea      r8d, [r9 + 0xf]
0000000140407cbd call     0x140316a50
0000000140407cc2 mov      esi, 5
0000000140407cc7 mov      dword ptr [rsp + 0x28], ebx
0000000140407ccb mov      r9d, 0x1b
0000000140407cd1 mov      r8d, 0x38000000
0000000140407cd7 mov      dword ptr [rsp + 0x20], esi
0000000140407cdb mov      edx, 0x20410
0000000140407ce0 mov      rcx, rdi
0000000140407ce3 call     0x140316a50
0000000140407ce8 mov      ebp, 0x2040c
0000000140407ced mov      dword ptr [rsp + 0x28], ebx
0000000140407cf1 mov      edx, ebp
0000000140407cf3 mov      dword ptr [rsp + 0x20], esi
0000000140407cf7 mov      r9d, 0x14
0000000140407cfd mov      r8d, 0x700000
0000000140407d03 mov      rcx, rdi
0000000140407d06 call     0x140316a50
0000000140407d0b mov      dword ptr [rsp + 0x28], ebx
0000000140407d0f mov      dword ptr [rsp + 0x20], esi
0000000140407d13 mov      r9d, 0x17
0000000140407d19 mov      r8d, 0x3800000
0000000140407d1f mov      edx, ebp
0000000140407d21 mov      rcx, rdi
0000000140407d24 call     0x140316a50
0000000140407d29 mov      rbx, qword ptr [rsp + 0x40]
0000000140407d2e mov      rbp, qword ptr [rsp + 0x48]
0000000140407d33 mov      rsi, qword ptr [rsp + 0x50]
0000000140407d38 add      rsp, 0x30
0000000140407d3c pop      rdi
0000000140407d3d ret      