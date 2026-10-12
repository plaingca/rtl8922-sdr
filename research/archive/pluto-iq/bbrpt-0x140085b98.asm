0000000140085b98 test     rdx, rdx
0000000140085b9b je       0x140085c99
0000000140085ba1 mov      qword ptr [rsp + 0x18], rbx
0000000140085ba6 push     rbp
0000000140085ba7 push     rsi
0000000140085ba8 push     rdi
0000000140085ba9 sub      rsp, 0x50
0000000140085bad mov      rax, qword ptr [rip + 0x8a18ac]
0000000140085bb4 xor      rax, rsp
0000000140085bb7 mov      qword ptr [rsp + 0x40], rax
0000000140085bbc mov      rbx, rdx
0000000140085bbf lea      r8, [rsp + 0x20]
0000000140085bc4 mov      dl, byte ptr [rdx + 0x36]
0000000140085bc7 xorps    xmm0, xmm0
0000000140085bca mov      rdi, rcx
0000000140085bcd movups   xmmword ptr [rsp + 0x20], xmm0
0000000140085bd2 mov      cl, byte ptr [rbx + 0x37]
0000000140085bd5 movups   xmmword ptr [rsp + 0x30], xmm0
0000000140085bda call     0x1401be000
0000000140085bdf test     al, al
0000000140085be1 je       0x140085c7d
0000000140085be7 mov      ebp, 2
0000000140085bec cmp      dword ptr [rsp + 0x20], ebp
0000000140085bf0 jne      0x140085c7d
0000000140085bf6 lea      rdx, [rbx + 0x48]
0000000140085bfa mov      rcx, rdi
0000000140085bfd call     0x140085ee0
0000000140085c02 add      rdi, 0x51800
0000000140085c09 lea      rdx, [rip + 0x5751d0]
0000000140085c10 lea      rcx, [rdi + 0x10]
0000000140085c14 call     0x140031478
0000000140085c19 mov      rcx, qword ptr [rdi]
0000000140085c1c mov      rax, qword ptr [rcx]
0000000140085c1f cmp      rcx, rdi
0000000140085c22 je       0x140085c6d
0000000140085c24 mov      dl, byte ptr [rbx + 0x37]
0000000140085c27 cmp      dl, byte ptr [rcx + 0x14]
0000000140085c2a je       0x140085c39
0000000140085c2c mov      rcx, rax
0000000140085c2f mov      rax, qword ptr [rax]
0000000140085c32 cmp      rcx, rdi
0000000140085c35 jne      0x140085c27
0000000140085c37 jmp      0x140085c6d
0000000140085c39 movzx    r8d, word ptr [rbx]
0000000140085c3d test     r8b, 0x40
0000000140085c41 je       0x140085c53
0000000140085c43 or       word ptr [rcx + 0x16], bp
0000000140085c47 mov      r8d, 4
0000000140085c4d add      rcx, 0x1e
0000000140085c51 jmp      0x140085c64
0000000140085c53 test     r8b, 0x1f
0000000140085c57 je       0x140085c6d
0000000140085c59 and      r8d, 0x1f
0000000140085c5d inc      r8d
0000000140085c60 add      rcx, 0x22
0000000140085c64 lea      rdx, [rbx + 0x12]
0000000140085c68 call     0x1400311e8
0000000140085c6d lea      rdx, [rip + 0x57516c]
0000000140085c74 lea      rcx, [rdi + 0x10]
0000000140085c78 call     0x140031684
0000000140085c7d mov      rcx, qword ptr [rsp + 0x40]
0000000140085c82 xor      rcx, rsp
0000000140085c85 call     0x1405f45b0
0000000140085c8a mov      rbx, qword ptr [rsp + 0x80]
0000000140085c92 add      rsp, 0x50
0000000140085c96 pop      rdi
0000000140085c97 pop      rsi
0000000140085c98 pop      rbp
0000000140085c99 ret      