0000000140568c14 mov      qword ptr [rsp + 0x10], rbx
0000000140568c19 mov      qword ptr [rsp + 0x18], rsi
0000000140568c1e push     rbp
0000000140568c1f push     rdi
0000000140568c20 push     r12
0000000140568c22 push     r14
0000000140568c24 push     r15
0000000140568c26 mov      rbp, rsp
0000000140568c29 sub      rsp, 0x30
0000000140568c2d mov      rax, qword ptr [rcx]
0000000140568c30 lea      r12, [rcx + 0x1208]
0000000140568c37 mov      ebx, edx
0000000140568c39 mov      rdi, rcx
0000000140568c3c xor      r15d, r15d
0000000140568c3f mov      rdx, r12
0000000140568c42 mov      rsi, qword ptr [rax]
0000000140568c45 mov      rax, qword ptr [rcx + 0x18]
0000000140568c49 and      dword ptr [rbp + 0x30], r15d
0000000140568c4d mov      rcx, qword ptr [rcx + 8]
0000000140568c51 mov      rax, qword ptr [rax + 0x108]
0000000140568c58 call     qword ptr [rip + 0x11b69a]
0000000140568c5e mov      ecx, dword ptr [rdi + 0xef8]
0000000140568c64 inc      ecx
0000000140568c66 mov      dword ptr [rdi + 0xef8], ecx
0000000140568c6c cmp      ecx, 1
0000000140568c6f je       0x140568cc4
0000000140568c71 mov      rax, qword ptr [rdi + 0x18]
0000000140568c75 lea      r8, [rip + 0xfc884]
0000000140568c7c mov      dword ptr [rsp + 0x20], ecx
0000000140568c80 lea      edx, [r15 + 2]
0000000140568c84 mov      rcx, qword ptr [rdi + 8]
0000000140568c88 mov      r9d, ebx
0000000140568c8b mov      rax, qword ptr [rax + 0x118]
0000000140568c92 call     qword ptr [rip + 0x11b660]
0000000140568c98 mov      rax, qword ptr [rdi + 0x18]
0000000140568c9c or       r14d, 0xffffffff
0000000140568ca0 add      dword ptr [rdi + 0xef8], r14d
0000000140568ca7 mov      rdx, r12
0000000140568caa mov      rcx, qword ptr [rdi + 8]
0000000140568cae mov      rax, qword ptr [rax + 0x110]
0000000140568cb5 call     qword ptr [rip + 0x11b63d]
0000000140568cbb lea      eax, [r15 + 0x10]
0000000140568cbf jmp      0x140568f6a
0000000140568cc4 or       r14d, 0xffffffff
0000000140568cc8 cmp      ebx, 0x3c
0000000140568ccb ja       0x140568ee2
0000000140568cd1 je       0x140568ec7
0000000140568cd7 cmp      ebx, 0x18
0000000140568cda ja       0x140568dd2
0000000140568ce0 je       0x140568db5
0000000140568ce6 sub      ebx, 0x12
0000000140568ce9 je       0x140568dae
0000000140568cef sub      ebx, 1
0000000140568cf2 je       0x140568d70
0000000140568cf4 sub      ebx, 1
0000000140568cf7 je       0x140568d48
0000000140568cf9 sub      ebx, 1
0000000140568cfc je       0x140568d41
0000000140568cfe sub      ebx, 1
0000000140568d01 je       0x140568d13
0000000140568d03 cmp      ebx, 1
0000000140568d06 jne      0x140568f48
0000000140568d0c mov      ebx, 0x962c
0000000140568d11 jmp      0x140568d18
0000000140568d13 mov      ebx, 0x960c
0000000140568d18 mov      rax, qword ptr [rsi]
0000000140568d1b mov      edx, ebx
0000000140568d1d mov      rcx, rdi
0000000140568d20 call     qword ptr [rip + 0x11b5d2]
0000000140568d26 mov      r8b, al
0000000140568d29 or       r8b, 3
0000000140568d2d mov      rax, qword ptr [rsi + 8]
0000000140568d31 mov      rcx, rdi
0000000140568d34 mov      edx, ebx
0000000140568d36 call     qword ptr [rip + 0x11b5bc]
0000000140568d3c jmp      0x140568f48
0000000140568d41 mov      ebx, 0x154f4
0000000140568d46 jmp      0x140568d75
0000000140568d48 mov      ebx, 0x15440
0000000140568d4d mov      rax, qword ptr [rsi + 0x20]
0000000140568d51 mov      edx, ebx
0000000140568d53 mov      rcx, rdi
0000000140568d56 call     qword ptr [rip + 0x11b59c]
0000000140568d5c mov      r8d, eax
0000000140568d5f btr      r8d, 0x13
0000000140568d64 or       r8d, 0x70000
0000000140568d6b jmp      0x140568f35
0000000140568d70 mov      ebx, 0x114f4
0000000140568d75 mov      rax, qword ptr [rsi + 0x10]
0000000140568d79 mov      edx, ebx
0000000140568d7b mov      rcx, rdi
0000000140568d7e call     qword ptr [rip + 0x11b574]
0000000140568d84 mov      edx, ebx
0000000140568d86 mov      rcx, rdi
0000000140568d89 movzx    r8d, ax
0000000140568d8d mov      eax, 0xfdff
0000000140568d92 and      r8w, ax
0000000140568d96 mov      eax, 0x1ff
0000000140568d9b or       r8w, ax
0000000140568d9f mov      rax, qword ptr [rsi + 0x18]
0000000140568da3 call     qword ptr [rip + 0x11b54f]
0000000140568da9 jmp      0x140568f48
0000000140568dae mov      ebx, 0x11440
0000000140568db3 jmp      0x140568d4d
0000000140568db5 mov      ebx, 0x963c
0000000140568dba mov      rax, qword ptr [rsi]
0000000140568dbd mov      edx, ebx
0000000140568dbf mov      rcx, rdi
0000000140568dc2 call     qword ptr [rip + 0x11b530]
0000000140568dc8 or       al, 1
0000000140568dca mov      r8b, al
0000000140568dcd jmp      0x140568d2d
0000000140568dd2 sub      ebx, 0x19
0000000140568dd5 je       0x140568ebd
0000000140568ddb sub      ebx, 1
0000000140568dde je       0x140568ea0
0000000140568de4 sub      ebx, 1
0000000140568de7 je       0x140568e81
0000000140568ded sub      ebx, 1
0000000140568df0 je       0x140568e67
0000000140568df2 sub      ebx, 0x15
0000000140568df5 je       0x140568e53
0000000140568df7 cmp      ebx, 1
0000000140568dfa jne      0x140568f48
0000000140568e00 cmp      byte ptr [rdi + 0x105], 5
0000000140568e07 jne      0x140568f48
0000000140568e0d mov      ebx, 0x504
0000000140568e12 lea      r8, [rbp + 0x30]
0000000140568e16 mov      r9d, 2
0000000140568e1c mov      edx, ebx
0000000140568e1e mov      rcx, rdi
0000000140568e21 call     0x1403695ac
0000000140568e26 mov      r15d, eax
0000000140568e29 test     eax, eax
0000000140568e2b jne      0x140568f48
0000000140568e31 mov      r8d, dword ptr [rbp + 0x30]
0000000140568e35 lea      r9d, [rax + 2]
0000000140568e39 or       r8d, 0xf
0000000140568e3d mov      edx, ebx
0000000140568e3f mov      rcx, rdi
0000000140568e42 mov      dword ptr [rbp + 0x30], r8d
0000000140568e46 call     0x1403695cc
0000000140568e4b mov      r15d, eax
0000000140568e4e jmp      0x140568f48
0000000140568e53 cmp      byte ptr [rdi + 0x105], 5
0000000140568e5a jne      0x140568f48
0000000140568e60 mov      ebx, 0x780
0000000140568e65 jmp      0x140568e12
0000000140568e67 mov      rax, qword ptr [rsi]
0000000140568e6a mov      ebx, 0xb028
0000000140568e6f mov      edx, ebx
0000000140568e71 mov      rcx, rdi
0000000140568e74 call     qword ptr [rip + 0x11b47e]
0000000140568e7a or       al, 0x1f
0000000140568e7c jmp      0x140568dca
0000000140568e81 mov      rax, qword ptr [rsi]
0000000140568e84 mov      ebx, 0xb714
0000000140568e89 mov      edx, ebx
0000000140568e8b mov      rcx, rdi
0000000140568e8e call     qword ptr [rip + 0x11b464]
0000000140568e94 mov      r8b, al
0000000140568e97 or       r8b, 0xf
0000000140568e9b jmp      0x140568d2d
0000000140568ea0 mov      ebx, 0x968c
0000000140568ea5 mov      rax, qword ptr [rsi + 0x20]
0000000140568ea9 mov      edx, ebx
0000000140568eab mov      rcx, rdi
0000000140568eae call     qword ptr [rip + 0x11b444]
0000000140568eb4 mov      r8d, r14d
0000000140568eb7 mov      dword ptr [rbp + 0x30], r14d
0000000140568ebb jmp      0x140568f39
0000000140568ebd mov      ebx, 0x966c
0000000140568ec2 jmp      0x140568dba
0000000140568ec7 mov      rax, qword ptr [rsi]
0000000140568eca mov      ebx, 0x8804
0000000140568ecf mov      edx, ebx
0000000140568ed1 mov      rcx, rdi
0000000140568ed4 call     qword ptr [rip + 0x11b41e]
0000000140568eda mov      r8b, 0xff
0000000140568edd jmp      0x140568d2d
0000000140568ee2 sub      ebx, 0x3d
0000000140568ee5 je       0x140568f17
0000000140568ee7 sub      ebx, 1
0000000140568eea je       0x140568f10
0000000140568eec sub      ebx, 1
0000000140568eef je       0x140568f09
0000000140568ef1 sub      ebx, 7
0000000140568ef4 je       0x140568f02
0000000140568ef6 cmp      ebx, 1
0000000140568ef9 jne      0x140568f48
0000000140568efb mov      ebx, 0x15880
0000000140568f00 jmp      0x140568ea5
0000000140568f02 mov      ebx, 0x11880
0000000140568f07 jmp      0x140568ea5
0000000140568f09 mov      ebx, 0x880c
0000000140568f0e jmp      0x140568ea5
0000000140568f10 mov      ebx, 0x8808
0000000140568f15 jmp      0x140568ea5
0000000140568f17 mov      rax, qword ptr [rsi + 0x20]
0000000140568f1b mov      ebx, 0x8804
0000000140568f20 mov      edx, ebx
0000000140568f22 mov      rcx, rdi
0000000140568f25 call     qword ptr [rip + 0x11b3cd]
0000000140568f2b mov      r8d, eax
0000000140568f2e or       r8d, 0xfffffe00
0000000140568f35 mov      dword ptr [rbp + 0x30], r8d
0000000140568f39 mov      rax, qword ptr [rsi + 0x28]
0000000140568f3d mov      edx, ebx
0000000140568f3f mov      rcx, rdi
0000000140568f42 call     qword ptr [rip + 0x11b3b0]
0000000140568f48 mov      rax, qword ptr [rdi + 0x18]
0000000140568f4c mov      rdx, r12
0000000140568f4f add      dword ptr [rdi + 0xef8], r14d
0000000140568f56 mov      rcx, qword ptr [rdi + 8]
0000000140568f5a mov      rax, qword ptr [rax + 0x110]
0000000140568f61 call     qword ptr [rip + 0x11b391]
0000000140568f67 mov      eax, r15d
0000000140568f6a mov      rbx, qword ptr [rsp + 0x68]
0000000140568f6f mov      rsi, qword ptr [rsp + 0x70]
0000000140568f74 add      rsp, 0x30
0000000140568f78 pop      r15
0000000140568f7a pop      r14
0000000140568f7c pop      r12
0000000140568f7e pop      rdi
0000000140568f7f pop      rbp
0000000140568f80 ret      