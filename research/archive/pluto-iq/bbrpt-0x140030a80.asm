0000000140030a80 mov      qword ptr [rsp + 0x10], rbx
0000000140030a85 mov      qword ptr [rsp + 0x18], rsi
0000000140030a8a push     rbp
0000000140030a8b push     rdi
0000000140030a8c push     r14
0000000140030a8e mov      rbp, rsp
0000000140030a91 sub      rsp, 0x80
0000000140030a98 mov      rax, qword ptr [rip + 0xca4159]
0000000140030a9f mov      rsi, rdx
0000000140030aa2 mov      rdx, qword ptr [rcx + 8]
0000000140030aa6 mov      rdi, r8
0000000140030aa9 mov      r8, qword ptr [rip + 0x8f5308]
0000000140030ab0 mov      rbx, r9
0000000140030ab3 mov      rcx, qword ptr [rip + 0xca416e]
0000000140030aba mov      rax, qword ptr [rax + 0x650]
0000000140030ac1 call     qword ptr [rip + 0x653831]
0000000140030ac7 mov      r14, rax
0000000140030aca call     0x1405c7054
0000000140030acf mov      rcx, qword ptr [rip + 0xca4122]
0000000140030ad6 mov      rdx, rax
0000000140030ad9 mov      r8, qword ptr [rbp + 0x48]
0000000140030add mov      r9, qword ptr [rcx + 0xc8]
0000000140030ae4 mov      rcx, qword ptr [rip + 0xca413d]
0000000140030aeb mov      rax, r9
0000000140030aee call     qword ptr [rip + 0x653804]
0000000140030af4 mov      qword ptr [rbp + 0x20], rax
0000000140030af8 mov      rdx, rax
0000000140030afb test     rax, rax
0000000140030afe jne      0x140030b47
0000000140030b00 mov      rcx, qword ptr [rip + 0x8ef4f9]
0000000140030b07 lea      rax, [rip + 0x8ef4f2]
0000000140030b0e cmp      rcx, rax
0000000140030b11 je       0x140030b3d
0000000140030b13 cmp      byte ptr [rcx + 0x69], 3
0000000140030b17 jb       0x140030b3d
0000000140030b19 test     dword ptr [rcx + 0x6c], 0x1000000
0000000140030b20 je       0x140030b3d
0000000140030b22 mov      rcx, qword ptr [rcx + 0x58]
0000000140030b26 lea      r8, [rip + 0x659483]
0000000140030b2d mov      edx, 0x1a
0000000140030b32 mov      r9d, 0xc000009a
0000000140030b38 call     0x140001bb0
0000000140030b3d mov      eax, 1
0000000140030b42 jmp      0x140030dd0
0000000140030b47 mov      rax, qword ptr [rip + 0xca40aa]
0000000140030b4e mov      r8, rbx
0000000140030b51 mov      rcx, qword ptr [rip + 0xca40d0]
0000000140030b58 mov      rax, qword ptr [rax + 0x218]
0000000140030b5f call     qword ptr [rip + 0x653793]
0000000140030b65 mov      r9d, eax
0000000140030b68 test     eax, eax
0000000140030b6a jns      0x140030ba4
0000000140030b6c mov      rcx, qword ptr [rip + 0x8ef48d]
0000000140030b73 lea      rax, [rip + 0x8ef486]
0000000140030b7a cmp      rcx, rax
0000000140030b7d je       0x140030d78
0000000140030b83 cmp      byte ptr [rcx + 0x69], 3
0000000140030b87 jb       0x140030d78
0000000140030b8d test     dword ptr [rcx + 0x6c], 0x1000000
0000000140030b94 je       0x140030d78
0000000140030b9a mov      edx, 0x1b
0000000140030b9f jmp      0x140030d68
0000000140030ba4 mov      rax, qword ptr [rip + 0xca404d]
0000000140030bab lea      r8, [rip + 0x59760e]
0000000140030bb2 and      dword ptr [rsp + 0x28], 0
0000000140030bb7 xor      r9d, r9d
0000000140030bba mov      rdx, qword ptr [rbp + 0x20]
0000000140030bbe mov      rcx, qword ptr [rip + 0xca4063]
0000000140030bc5 mov      rax, qword ptr [rax + 0x248]
0000000140030bcc and      qword ptr [rsp + 0x20], 0
0000000140030bd2 call     qword ptr [rip + 0x653720]
0000000140030bd8 mov      rax, qword ptr [rip + 0xca4019]
0000000140030bdf lea      r8, [rip + 0x5975da]
0000000140030be6 and      dword ptr [rsp + 0x28], 0
0000000140030beb mov      r9b, 2
0000000140030bee mov      rdx, qword ptr [rbp + 0x20]
0000000140030bf2 mov      rcx, qword ptr [rip + 0xca402f]
0000000140030bf9 mov      rax, qword ptr [rax + 0x248]
0000000140030c00 and      qword ptr [rsp + 0x20], 0
0000000140030c06 call     qword ptr [rip + 0x6536ec]
0000000140030c0c mov      rax, qword ptr [rip + 0xca3fe5]
0000000140030c13 lea      r8, [rip + 0x5975c6]
0000000140030c1a and      dword ptr [rsp + 0x28], 0
0000000140030c1f mov      r9b, 0xe
0000000140030c22 mov      rdx, qword ptr [rbp + 0x20]
0000000140030c26 mov      rcx, qword ptr [rip + 0xca3ffb]
0000000140030c2d mov      rax, qword ptr [rax + 0x248]
0000000140030c34 and      qword ptr [rsp + 0x20], 0
0000000140030c3a call     qword ptr [rip + 0x6536b8]
0000000140030c40 xorps    xmm0, xmm0
0000000140030c43 xor      eax, eax
0000000140030c45 cmp      byte ptr [rip + 0xca3fbd], al
0000000140030c4b movups   xmmword ptr [rbp - 0x38], xmm0
0000000140030c4f mov      qword ptr [rbp - 8], rax
0000000140030c53 movups   xmmword ptr [rbp - 0x28], xmm0
0000000140030c57 movups   xmmword ptr [rbp - 0x18], xmm0
0000000140030c5b je       0x140030c7e
0000000140030c5d cmp      dword ptr [rip + 0x8f685c], 0x26
0000000140030c64 jbe      0x140030c78
0000000140030c66 mov      rax, qword ptr [rip + 0xca3d73]
0000000140030c6d mov      ecx, dword ptr [rax + 0x130]
0000000140030c73 mov      dword ptr [rbp - 0x38], ecx
0000000140030c76 jmp      0x140030c85
0000000140030c78 or       dword ptr [rbp - 0x38], 0xffffffff
0000000140030c7c jmp      0x140030c85
0000000140030c7e mov      dword ptr [rbp - 0x38], 0x38
0000000140030c85 mov      rax, qword ptr [rip + 0xca3f6c]
0000000140030c8c lea      r9, [rbp - 0x40]
0000000140030c90 mov      rcx, qword ptr [rip + 0xca3f91]
0000000140030c97 lea      r8, [rbp - 0x38]
0000000140030c9b mov      dword ptr [rbp - 0x20], 1
0000000140030ca2 lea      rdx, [rbp + 0x20]
0000000140030ca6 mov      dword ptr [rbp - 0x1c], 1
0000000140030cad mov      rax, qword ptr [rax + 0x258]
0000000140030cb4 call     qword ptr [rip + 0x65363e]
0000000140030cba mov      r9d, eax
0000000140030cbd test     eax, eax
0000000140030cbf jns      0x140030cf6
0000000140030cc1 mov      rcx, qword ptr [rip + 0x8ef338]
0000000140030cc8 lea      rax, [rip + 0x8ef331]
0000000140030ccf cmp      rcx, rax
0000000140030cd2 je       0x140030d78
0000000140030cd8 cmp      byte ptr [rcx + 0x69], 3
0000000140030cdc jb       0x140030d78
0000000140030ce2 test     dword ptr [rcx + 0x6c], 0x1000000
0000000140030ce9 je       0x140030d78
0000000140030cef mov      edx, 0x1c
0000000140030cf4 jmp      0x140030d68
0000000140030cf6 mov      rax, qword ptr [rip + 0xca3efb]
0000000140030cfd mov      r8, qword ptr [rbp + 0x40]
0000000140030d01 mov      rdx, qword ptr [rbp - 0x40]
0000000140030d05 mov      rcx, qword ptr [rip + 0xca3f1c]
0000000140030d0c mov      rax, qword ptr [rax + 0x280]
0000000140030d13 call     qword ptr [rip + 0x6535df]
0000000140030d19 mov      rcx, qword ptr [rip + 0xca3ed8]
0000000140030d20 mov      ebx, eax
0000000140030d22 mov      rdx, qword ptr [rbp - 0x40]
0000000140030d26 mov      rax, qword ptr [rcx + 0xd8]
0000000140030d2d mov      rcx, qword ptr [rip + 0xca3ef4]
0000000140030d34 call     qword ptr [rip + 0x6535be]
0000000140030d3a test     ebx, ebx
0000000140030d3c jns      0x140030d9e
0000000140030d3e mov      rcx, qword ptr [rip + 0x8ef2bb]
0000000140030d45 lea      rax, [rip + 0x8ef2b4]
0000000140030d4c cmp      rcx, rax
0000000140030d4f je       0x140030d78
0000000140030d51 cmp      byte ptr [rcx + 0x69], 3
0000000140030d55 jb       0x140030d78
0000000140030d57 test     dword ptr [rcx + 0x6c], 0x1000000
0000000140030d5e je       0x140030d78
0000000140030d60 mov      edx, 0x1d
0000000140030d65 mov      r9d, ebx
0000000140030d68 mov      rcx, qword ptr [rcx + 0x58]
0000000140030d6c lea      r8, [rip + 0x65923d]
0000000140030d73 call     0x140001bb0
0000000140030d78 mov      rax, qword ptr [rip + 0xca3e79]
0000000140030d7f mov      rdx, qword ptr [rbp + 0x20]
0000000140030d83 mov      rcx, qword ptr [rip + 0xca3e9e]
0000000140030d8a mov      rax, qword ptr [rax + 0x1b0]
0000000140030d91 call     qword ptr [rip + 0x653561]
0000000140030d97 mov      eax, 7
0000000140030d9c jmp      0x140030dd0
0000000140030d9e mov      rax, qword ptr [rip + 0xca3e53]
0000000140030da5 mov      rdx, qword ptr [rbp - 0x40]
0000000140030da9 mov      rcx, qword ptr [rip + 0xca3e78]
0000000140030db0 mov      rax, qword ptr [rax + 0xf8]
0000000140030db7 call     qword ptr [rip + 0x65353b]
0000000140030dbd mov      qword ptr [rsi], rax
0000000140030dc0 mov      rax, qword ptr [rbp - 0x40]
0000000140030dc4 mov      qword ptr [rdi], rax
0000000140030dc7 mov      qword ptr [r14 + 0x548cd8], rax
0000000140030dce xor      eax, eax
0000000140030dd0 lea      r11, [rsp + 0x80]
0000000140030dd8 mov      rbx, qword ptr [r11 + 0x28]
0000000140030ddc mov      rsi, qword ptr [r11 + 0x30]
0000000140030de0 mov      rsp, r11
0000000140030de3 pop      r14
0000000140030de5 pop      rdi
0000000140030de6 pop      rbp
0000000140030de7 ret      