000000014013e9c0 test     rcx, rcx
000000014013e9c3 je       0x14013eab5
000000014013e9c9 mov      rax, rsp
000000014013e9cc mov      qword ptr [rax + 8], rbx
000000014013e9d0 mov      qword ptr [rax + 0x10], rbp
000000014013e9d4 mov      qword ptr [rax + 0x18], rsi
000000014013e9d8 mov      qword ptr [rax + 0x20], rdi
000000014013e9dc push     r12
000000014013e9de push     r13
000000014013e9e0 push     r15
000000014013e9e2 sub      rsp, 0x20
000000014013e9e6 mov      r12, r9
000000014013e9e9 mov      r13b, r8b
000000014013e9ec mov      rdi, rcx
000000014013e9ef test     rdx, rdx
000000014013e9f2 je       0x14013ea97
000000014013e9f8 test     r9, r9
000000014013e9fb je       0x14013ea97
000000014013ea01 cmp      dword ptr [rsp + 0x60], 0
000000014013ea06 je       0x14013ea97
000000014013ea0c mov      rax, qword ptr [rdx + 0x28]
000000014013ea10 lea      rbp, [rdx + 0x50]
000000014013ea14 mov      qword ptr [rcx + 8], rax
000000014013ea18 lea      rdx, [rip + 0x4c89d1]
000000014013ea1f lea      rcx, [rbp + 0x10]
000000014013ea23 call     0x140031478
000000014013ea28 mov      rbx, qword ptr [rbp + 8]
000000014013ea2c jmp      0x14013ea82
000000014013ea2e test     rbx, rbx
000000014013ea31 je       0x14013ea87
000000014013ea33 mov      rsi, qword ptr [rbx + 0x10]
000000014013ea37 test     rsi, rsi
000000014013ea3a je       0x14013ea7e
000000014013ea3c mov      r8d, dword ptr [rbx + 0x18]
000000014013ea40 test     r8d, r8d
000000014013ea43 je       0x14013ea7e
000000014013ea45 cmp      byte ptr [rsi + 3], r13b
000000014013ea49 ja       0x14013ea7e
000000014013ea4b mov      ecx, dword ptr [rdi + 0x18]
000000014013ea4e lea      eax, [r8 + rcx]
000000014013ea52 cmp      eax, dword ptr [rsp + 0x60]
000000014013ea56 ja       0x14013ea87
000000014013ea58 add      rcx, r12
000000014013ea5b mov      rdx, rsi
000000014013ea5e call     0x1400311e8
000000014013ea63 mov      ecx, dword ptr [rdi + 0x18]
000000014013ea66 test     ecx, ecx
000000014013ea68 jne      0x14013ea70
000000014013ea6a mov      eax, dword ptr [rsi + 4]
000000014013ea6d mov      dword ptr [rdi + 0x10], eax
000000014013ea70 inc      dword ptr [rdi + 0x14]
000000014013ea73 mov      r8d, dword ptr [rbx + 0x18]
000000014013ea77 add      r8d, ecx
000000014013ea7a mov      dword ptr [rdi + 0x18], r8d
000000014013ea7e mov      rbx, qword ptr [rbx + 8]
000000014013ea82 cmp      rbp, rbx
000000014013ea85 jne      0x14013ea2e
000000014013ea87 lea      rdx, [rip + 0x4c8962]
000000014013ea8e lea      rcx, [rbp + 0x10]
000000014013ea92 call     0x140031684
000000014013ea97 mov      rbx, qword ptr [rsp + 0x40]
000000014013ea9c mov      rbp, qword ptr [rsp + 0x48]
000000014013eaa1 mov      rsi, qword ptr [rsp + 0x50]
000000014013eaa6 mov      rdi, qword ptr [rsp + 0x58]
000000014013eaab add      rsp, 0x20
000000014013eaaf pop      r15
000000014013eab1 pop      r13
000000014013eab3 pop      r12
000000014013eab5 ret      