0000000140244cbc mov      qword ptr [rsp + 8], rbx
0000000140244cc1 mov      qword ptr [rsp + 0x10], rbp
0000000140244cc6 mov      qword ptr [rsp + 0x18], rsi
0000000140244ccb push     rdi
0000000140244ccc sub      rsp, 0x70
0000000140244cd0 mov      rax, qword ptr [rcx]
0000000140244cd3 mov      r10d, 1
0000000140244cd9 mov      rbx, qword ptr [rcx + 8]
0000000140244cdd mov      r11b, byte ptr [rax + 0x96de]
0000000140244ce4 mov      rax, qword ptr [rdx + 0x20]
0000000140244ce8 mov      r9d, dword ptr [rax + 0x24]
0000000140244cec sub      r9d, 2
0000000140244cf0 cmp      r9d, 4
0000000140244cf4 setbe    sil
0000000140244cf8 xor      ebp, ebp
0000000140244cfa mov      r9b, bpl
0000000140244cfd test     r11b, r11b
0000000140244d00 je       0x140244d9c
0000000140244d06 movzx    edi, r9b
0000000140244d0a cmp      byte ptr [rdi + rbx + 0x15be], bpl
0000000140244d12 je       0x140244d2c
0000000140244d14 movzx    eax, word ptr [rbx + rdi*2 + 0x16be]
0000000140244d1c cmp      word ptr [rdx + 0x2c], ax
0000000140244d20 jne      0x140244d2c
0000000140244d22 cmp      r8b, byte ptr [rdi + rbx + 0x163e]
0000000140244d2a je       0x140244d36
0000000140244d2c add      r9b, r10b
0000000140244d2f cmp      r9b, r11b
0000000140244d32 jb       0x140244d06
0000000140244d34 jmp      0x140244d9c
0000000140244d36 mov      byte ptr [rsp + 0x68], sil
0000000140244d3b xor      r8d, r8d
0000000140244d3e mov      byte ptr [rsp + 0x60], bpl
0000000140244d43 xor      edx, edx
0000000140244d45 mov      byte ptr [rsp + 0x58], bpl
0000000140244d4a mov      byte ptr [rsp + 0x50], bpl
0000000140244d4f mov      byte ptr [rsp + 0x48], r9b
0000000140244d54 xor      r9d, r9d
0000000140244d57 mov      word ptr [rsp + 0x40], bp
0000000140244d5c mov      word ptr [rsp + 0x38], bp
0000000140244d61 mov      word ptr [rsp + 0x30], bp
0000000140244d66 mov      word ptr [rsp + 0x28], bp
0000000140244d6b mov      word ptr [rsp + 0x20], bp
0000000140244d70 call     0x140242ef8
0000000140244d75 mov      r10d, eax
0000000140244d78 test     eax, eax
0000000140244d7a jne      0x140244d9c
0000000140244d7c mov      byte ptr [rdi + rbx + 0x15be], bpl
0000000140244d84 mov      byte ptr [rdi + rbx + 0x163e], 0xff
0000000140244d8c or       word ptr [rbx + rdi*2 + 0x16be], 0xffff
0000000140244d96 dec      byte ptr [rbx + 0x17be]
0000000140244d9c lea      r11, [rsp + 0x70]
0000000140244da1 mov      eax, r10d
0000000140244da4 mov      rbx, qword ptr [r11 + 0x10]
0000000140244da8 mov      rbp, qword ptr [r11 + 0x18]
0000000140244dac mov      rsi, qword ptr [r11 + 0x20]
0000000140244db0 mov      rsp, r11
0000000140244db3 pop      rdi
0000000140244db4 ret      