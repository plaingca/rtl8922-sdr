0000000140173a8c mov      qword ptr [rsp + 0x10], rbx
0000000140173a91 mov      qword ptr [rsp + 0x18], rbp
0000000140173a96 mov      qword ptr [rsp + 0x20], rsi
0000000140173a9b push     rdi
0000000140173a9c push     r14
0000000140173a9e push     r15
0000000140173aa0 sub      rsp, 0x80
0000000140173aa7 mov      rdi, qword ptr [rcx + 0x52e70]
0000000140173aae mov      rbx, rcx
0000000140173ab1 mov      rcx, rdi
0000000140173ab4 movzx    esi, r9w
0000000140173ab8 mov      bpl, r8b
0000000140173abb mov      r14, rdx
0000000140173abe call     0x1400b2d18
0000000140173ac3 mov      rcx, qword ptr [rbx + 0x52e70]
0000000140173aca lea      r8, [rsp + 0xa0]
0000000140173ad2 lea      rdx, [rsp + 0x40]
0000000140173ad7 mov      r15, rax
0000000140173ada call     0x1400915e0
0000000140173adf test     al, al
0000000140173ae1 je       0x140173b7d
0000000140173ae7 mov      rcx, qword ptr [rdi + 0xaf3b8]
0000000140173aee lea      r9, [rsp + 0x48]
0000000140173af3 mov      r8, qword ptr [rsp + 0xa0]
0000000140173afb xor      edx, edx
0000000140173afd mov      rcx, qword ptr [rcx]
0000000140173b00 mov      r8, qword ptr [r8 + 0x10]
0000000140173b04 movzx    ecx, word ptr [rcx + 0x20532]
0000000140173b0b call     0x14005df68
0000000140173b10 mov      edx, 4
0000000140173b15 lea      rcx, [rsp + 0x48]
0000000140173b1a call     0x14005dfcc
0000000140173b1f mov      al, byte ptr [rsp + 0xc0]
0000000140173b26 lea      rdx, [rsp + 0x48]
0000000140173b2b mov      byte ptr [rsp + 0x28], al
0000000140173b2f mov      r9b, bpl
0000000140173b32 mov      r8, r14
0000000140173b35 mov      word ptr [rsp + 0x20], si
0000000140173b3a mov      rcx, rbx
0000000140173b3d call     0x140172228
0000000140173b42 lea      rcx, [rsp + 0x48]
0000000140173b47 call     0x14005df94
0000000140173b4c mov      r8, qword ptr [rsp + 0xa0]
0000000140173b54 mov      rdx, qword ptr [rsp + 0x40]
0000000140173b59 mov      rcx, qword ptr [rbx + 0x52e70]
0000000140173b60 mov      qword ptr [rsp + 0x30], r15
0000000140173b65 movzx    r9d, ax
0000000140173b69 mov      word ptr [rsp + 0x28], 0xc
0000000140173b70 mov      dword ptr [rsp + 0x20], 8
0000000140173b78 call     0x140092148
0000000140173b7d lea      r11, [rsp + 0x80]
0000000140173b85 mov      rbx, qword ptr [r11 + 0x28]
0000000140173b89 mov      rbp, qword ptr [r11 + 0x30]
0000000140173b8d mov      rsi, qword ptr [r11 + 0x38]
0000000140173b91 mov      rsp, r11
0000000140173b94 pop      r15
0000000140173b96 pop      r14
0000000140173b98 pop      rdi
0000000140173b99 ret      