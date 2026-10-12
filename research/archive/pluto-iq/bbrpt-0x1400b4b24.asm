00000001400b4b24 mov      rax, rsp
00000001400b4b27 mov      qword ptr [rax + 8], rbx
00000001400b4b2b mov      qword ptr [rax + 0x10], rbp
00000001400b4b2f mov      qword ptr [rax + 0x18], rsi
00000001400b4b33 mov      qword ptr [rax + 0x20], rdi
00000001400b4b37 push     r12
00000001400b4b39 sub      rsp, 0x30
00000001400b4b3d mov      esi, 1
00000001400b4b42 lea      rbx, [rdx + 0x2a8]
00000001400b4b49 mov      edi, esi
00000001400b4b4b mov      rbp, rcx
00000001400b4b4e mov      rcx, qword ptr [rip + 0x86b4ab]
00000001400b4b55 lea      r12, [rip + 0x86b4a4]
00000001400b4b5c cmp      rcx, r12
00000001400b4b5f je       0x1400b4b8c
00000001400b4b61 cmp      byte ptr [rcx + 0x29], 4
00000001400b4b65 jb       0x1400b4b8c
00000001400b4b67 test     dword ptr [rcx + 0x2c], 0x100
00000001400b4b6e je       0x1400b4b8c
00000001400b4b70 mov      rcx, qword ptr [rcx + 0x18]
00000001400b4b74 lea      r9, [rip + 0x548405]
00000001400b4b7b mov      edx, 0x95
00000001400b4b80 lea      r8, [rip + 0x5de169]
00000001400b4b87 call     0x140008874
00000001400b4b8c cmp      dword ptr [rbx], 0
00000001400b4b8f je       0x1400b4baf
00000001400b4b91 mov      rax, qword ptr [rbp + 0xaf3b8]
00000001400b4b98 mov      r8, rbx
00000001400b4b9b mov      dl, byte ptr [rbx + 5]
00000001400b4b9e mov      rcx, qword ptr [rax]
00000001400b4ba1 mov      rcx, qword ptr [rcx + 0x20708]
00000001400b4ba8 call     0x1401b9cac
00000001400b4bad mov      esi, eax
00000001400b4baf and      dword ptr [rbx], 0
00000001400b4bb2 and      word ptr [rbx + 4], 0
00000001400b4bb7 test     esi, esi
00000001400b4bb9 je       0x1400b4bf8
00000001400b4bbb mov      rcx, qword ptr [rip + 0x86b43e]
00000001400b4bc2 cmp      rcx, r12
00000001400b4bc5 je       0x1400b4bfa
00000001400b4bc7 cmp      byte ptr [rcx + 0x29], 3
00000001400b4bcb jb       0x1400b4bfa
00000001400b4bcd test     dword ptr [rcx + 0x2c], 0x100
00000001400b4bd4 je       0x1400b4bfa
00000001400b4bd6 mov      rcx, qword ptr [rcx + 0x18]
00000001400b4bda lea      r9, [rip + 0x54839f]
00000001400b4be1 mov      edx, 0x96
00000001400b4be6 mov      dword ptr [rsp + 0x20], esi
00000001400b4bea lea      r8, [rip + 0x5de0ff]
00000001400b4bf1 call     0x1400088d8
00000001400b4bf6 jmp      0x1400b4bfa
00000001400b4bf8 xor      edi, edi
00000001400b4bfa mov      rbx, qword ptr [rsp + 0x40]
00000001400b4bff mov      eax, edi
00000001400b4c01 mov      rdi, qword ptr [rsp + 0x58]
00000001400b4c06 mov      rbp, qword ptr [rsp + 0x48]
00000001400b4c0b mov      rsi, qword ptr [rsp + 0x50]
00000001400b4c10 add      rsp, 0x30
00000001400b4c14 pop      r12
00000001400b4c16 ret      