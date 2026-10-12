00000001401f6b90 mov      qword ptr [rsp + 0x10], rbx
00000001401f6b95 mov      qword ptr [rsp + 0x18], rbp
00000001401f6b9a mov      qword ptr [rsp + 0x20], rsi
00000001401f6b9f push     rdi
00000001401f6ba0 push     r12
00000001401f6ba2 push     r13
00000001401f6ba4 push     r14
00000001401f6ba6 push     r15
00000001401f6ba8 sub      rsp, 0x20
00000001401f6bac mov      rsi, qword ptr [rcx + 0x798]
00000001401f6bb3 movzx    r12d, r8w
00000001401f6bb7 mov      qword ptr [rsp + 0x50], rsi
00000001401f6bbc mov      rbp, rdx
00000001401f6bbf lea      rdi, [rdx + 0x48]
00000001401f6bc3 mov      r13, rcx
00000001401f6bc6 mov      ebx, 1
00000001401f6bcb test     rdx, rdx
00000001401f6bce je       0x1401f6cef
00000001401f6bd4 lea      r15, [rdx + 0x70]
00000001401f6bd8 mov      rcx, r15
00000001401f6bdb lea      rdx, [rip + 0x41776e]
00000001401f6be2 call     0x140031478
00000001401f6be7 test     r12w, r12w
00000001401f6beb je       0x1401f6ce0
00000001401f6bf1 mov      eax, 0xffff
00000001401f6bf6 mov      r14, qword ptr [rdi]
00000001401f6bf9 cmp      r14, rdi
00000001401f6bfc je       0x1401f6ce0
00000001401f6c02 add      word ptr [rbp + 0x92], ax
00000001401f6c09 lea      rdx, [rip + 0x417750]
00000001401f6c10 mov      rcx, qword ptr [r14]
00000001401f6c13 mov      rax, qword ptr [r14 + 8]
00000001401f6c17 mov      qword ptr [rcx + 8], rax
00000001401f6c1b mov      qword ptr [rax], rcx
00000001401f6c1e mov      rcx, r15
00000001401f6c21 mov      qword ptr [r14], 0x100100
00000001401f6c28 mov      qword ptr [r14 + 8], 0x200200
00000001401f6c30 call     0x140031684
00000001401f6c35 cmp      byte ptr [rsi + 0x96cc], 1
00000001401f6c3c jne      0x1401f6cae
00000001401f6c3e mov      rbx, qword ptr [rbp + 0x10]
00000001401f6c42 lea      rsi, [rbp + 0x80]
00000001401f6c49 mov      rcx, rsi
00000001401f6c4c lea      rdx, [rip + 0x4176fd]
00000001401f6c53 call     0x140031478
00000001401f6c58 movzx    eax, word ptr [rbp + 0x98]
00000001401f6c5f xor      edx, edx
00000001401f6c61 mov      rcx, rsi
00000001401f6c64 mov      rdi, qword ptr [rbx + rax*8]
00000001401f6c68 mov      qword ptr [rbx + rax*8], r14
00000001401f6c6c movzx    eax, word ptr [rbp + 0x98]
00000001401f6c73 movzx    r9d, word ptr [rbp + 0x96]
00000001401f6c7b inc      eax
00000001401f6c7d div      r9d
00000001401f6c80 mov      word ptr [rbp + 0x98], dx
00000001401f6c87 lea      rdx, [rip + 0x4176d2]
00000001401f6c8e call     0x140031684
00000001401f6c93 mov      r8, rdi
00000001401f6c96 mov      rdx, rbp
00000001401f6c99 mov      rcx, r13
00000001401f6c9c call     0x1401f2e98
00000001401f6ca1 mov      rsi, qword ptr [rsp + 0x50]
00000001401f6ca6 lea      rdi, [rbp + 0x48]
00000001401f6caa xor      ebx, ebx
00000001401f6cac jmp      0x1401f6cbe
00000001401f6cae mov      r8, r14
00000001401f6cb1 mov      rdx, rbp
00000001401f6cb4 mov      rcx, r13
00000001401f6cb7 call     0x1401f2e98
00000001401f6cbc mov      ebx, eax
00000001401f6cbe lea      rdx, [rip + 0x41768b]
00000001401f6cc5 mov      rcx, r15
00000001401f6cc8 call     0x140031478
00000001401f6ccd test     ebx, ebx
00000001401f6ccf jne      0x1401f6ce0
00000001401f6cd1 mov      eax, 0xffff
00000001401f6cd6 add      r12w, ax
00000001401f6cda jne      0x1401f6bf6
00000001401f6ce0 lea      rdx, [rip + 0x417679]
00000001401f6ce7 mov      rcx, r15
00000001401f6cea call     0x140031684
00000001401f6cef mov      rbp, qword ptr [rsp + 0x60]
00000001401f6cf4 mov      eax, ebx
00000001401f6cf6 mov      rbx, qword ptr [rsp + 0x58]
00000001401f6cfb mov      rsi, qword ptr [rsp + 0x68]
00000001401f6d00 add      rsp, 0x20
00000001401f6d04 pop      r15
00000001401f6d06 pop      r14
00000001401f6d08 pop      r13
00000001401f6d0a pop      r12
00000001401f6d0c pop      rdi
00000001401f6d0d ret      