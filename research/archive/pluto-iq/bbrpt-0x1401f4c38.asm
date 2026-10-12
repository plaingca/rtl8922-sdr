00000001401f4c38 mov      qword ptr [rsp + 0x10], rbx
00000001401f4c3d mov      qword ptr [rsp + 0x18], rbp
00000001401f4c42 mov      qword ptr [rsp + 0x20], rsi
00000001401f4c47 push     rdi
00000001401f4c48 push     r12
00000001401f4c4a push     r13
00000001401f4c4c push     r14
00000001401f4c4e push     r15
00000001401f4c50 sub      rsp, 0x20
00000001401f4c54 mov      rbx, qword ptr [rcx + 0x798]
00000001401f4c5b lea      r12, [rdx + 0x68]
00000001401f4c5f xor      r14d, r14d
00000001401f4c62 mov      qword ptr [rsp + 0x50], rbx
00000001401f4c67 movzx    r15d, r8w
00000001401f4c6b mov      rsi, rcx
00000001401f4c6e mov      edi, 1
00000001401f4c73 test     rdx, rdx
00000001401f4c76 je       0x1401f4db4
00000001401f4c7c test     r8w, r8w
00000001401f4c80 je       0x1401f4db4
00000001401f4c86 cmp      qword ptr [r12], r12
00000001401f4c8a je       0x1401f4db4
00000001401f4c90 mov      rcx, rsi
00000001401f4c93 call     0x1401db030
00000001401f4c98 mov      rbp, rax
00000001401f4c9b test     rax, rax
00000001401f4c9e je       0x1401f4db4
00000001401f4ca4 cmp      byte ptr [rbx + 0x96cc], 1
00000001401f4cab jne      0x1401f4d94
00000001401f4cb1 mov      rcx, qword ptr [rsi + 0x8d08]
00000001401f4cb8 mov      edi, 1
00000001401f4cbd mov      rbx, qword ptr [rsi + 0x8b80]
00000001401f4cc4 call     0x14025df90
00000001401f4cc9 movzx    ecx, al
00000001401f4ccc lea      rdx, [rip + 0x41967d]
00000001401f4cd3 imul     r14, rcx, 0x200e8
00000001401f4cda add      r14, qword ptr [rbx + 0x80]
00000001401f4ce1 lea      r13, [r14 + 0xd0]
00000001401f4ce8 mov      rcx, r13
00000001401f4ceb call     0x140031478
00000001401f4cf0 mov      al, byte ptr [rbp + 0x38]
00000001401f4cf3 test     al, al
00000001401f4cf5 jne      0x1401f4d09
00000001401f4cf7 mov      rdx, qword ptr [r14 + 0xb8]
00000001401f4cfe mov      ecx, 0xda
00000001401f4d03 lea      r8d, [rcx - 2]
00000001401f4d07 jmp      0x1401f4d34
00000001401f4d09 cmp      al, dil
00000001401f4d0c jne      0x1401f4d20
00000001401f4d0e mov      rdx, qword ptr [r14 + 0xc0]
00000001401f4d15 mov      ecx, 0xde
00000001401f4d1a lea      r8d, [rcx - 2]
00000001401f4d1e jmp      0x1401f4d34
00000001401f4d20 cmp      al, 2
00000001401f4d22 jne      0x1401f4d7b
00000001401f4d24 mov      rdx, qword ptr [r14 + 0xc8]
00000001401f4d2b mov      ecx, 0xe2
00000001401f4d30 lea      r8d, [rcx - 2]
00000001401f4d34 movzx    eax, word ptr [r14 + rcx]
00000001401f4d39 mov      rbx, qword ptr [rdx + rax*8]
00000001401f4d3d mov      qword ptr [rdx + rax*8], rbp
00000001401f4d41 xor      edx, edx
00000001401f4d43 movzx    eax, word ptr [r14 + rcx]
00000001401f4d48 movzx    r8d, word ptr [r14 + r8]
00000001401f4d4d inc      eax
00000001401f4d4f div      r8d
00000001401f4d52 mov      word ptr [r14 + rcx], dx
00000001401f4d57 lea      rdx, [rip + 0x419602]
00000001401f4d5e mov      eax, dword ptr [rbp + 0x48]
00000001401f4d61 mov      rcx, r13
00000001401f4d64 mov      dword ptr [rbx + 0x48], eax
00000001401f4d67 call     0x140031684
00000001401f4d6c mov      rdx, rbx
00000001401f4d6f mov      rcx, rsi
00000001401f4d72 call     0x1401dac7c
00000001401f4d77 mov      edi, eax
00000001401f4d79 jmp      0x1401f4d8a
00000001401f4d7b lea      rdx, [rip + 0x4195de]
00000001401f4d82 mov      rcx, r13
00000001401f4d85 call     0x140031684
00000001401f4d8a mov      rbx, qword ptr [rsp + 0x50]
00000001401f4d8f xor      r14d, r14d
00000001401f4d92 jmp      0x1401f4da1
00000001401f4d94 mov      rdx, rbp
00000001401f4d97 mov      rcx, rsi
00000001401f4d9a call     0x1401dac7c
00000001401f4d9f mov      edi, eax
00000001401f4da1 test     edi, edi
00000001401f4da3 jne      0x1401f4db4
00000001401f4da5 mov      eax, 0xffff
00000001401f4daa add      r15w, ax
00000001401f4dae jne      0x1401f4c86
00000001401f4db4 mov      rbx, qword ptr [rsp + 0x58]
00000001401f4db9 mov      eax, edi
00000001401f4dbb mov      rbp, qword ptr [rsp + 0x60]
00000001401f4dc0 mov      rsi, qword ptr [rsp + 0x68]
00000001401f4dc5 add      rsp, 0x20
00000001401f4dc9 pop      r15
00000001401f4dcb pop      r14
00000001401f4dcd pop      r13
00000001401f4dcf pop      r12
00000001401f4dd1 pop      rdi
00000001401f4dd2 ret      