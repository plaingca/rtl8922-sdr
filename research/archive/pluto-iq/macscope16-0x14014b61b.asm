000000014014b5a0 mov      rax, rsp
000000014014b5a3 mov      qword ptr [rax + 8], rbx
000000014014b5a7 mov      qword ptr [rax + 0x10], rbp
000000014014b5ab mov      qword ptr [rax + 0x18], rsi
000000014014b5af mov      qword ptr [rax + 0x20], rdi
000000014014b5b3 push     r14
000000014014b5b5 sub      rsp, 0x30
000000014014b5b9 mov      rsi, rdx
000000014014b5bc mov      rbp, rcx
000000014014b5bf lea      rdx, [rip + 0x4bc39a]
000000014014b5c6 add      rcx, 0x28
000000014014b5ca call     0x140031478
000000014014b5cf inc      byte ptr [rbp + 0x49]
000000014014b5d2 lea      rbx, [rsi + 0x3d44]
000000014014b5d9 movzx    eax, byte ptr [rbp + 0x49]
000000014014b5dd mov      edx, 0x784
000000014014b5e2 inc      dword ptr [rbp + 0x4c]
000000014014b5e5 mov      rcx, rbx
000000014014b5e8 mov      edi, dword ptr [rbp + rax*4 + 0x50]
000000014014b5ec call     0x140031290
000000014014b5f1 lea      r10, [rsi + 0x4540]
000000014014b5f8 mov      r8, rbx
000000014014b5fb lea      r9, [rsi + 0x18]
000000014014b5ff mov      qword ptr [rsp + 0x20], r10
000000014014b604 mov      edx, edi
000000014014b606 mov      rcx, rbp
000000014014b609 call     0x14014a068
000000014014b60e lea      rdx, [rip + 0x4bc34b]
000000014014b615 lea      rcx, [rbp + 0x28]
000000014014b619 call     0x140031684
000000014014b61e mov      rbx, qword ptr [rsp + 0x40]
000000014014b623 mov      eax, 1
000000014014b628 mov      rbp, qword ptr [rsp + 0x48]
000000014014b62d mov      rsi, qword ptr [rsp + 0x50]
000000014014b632 mov      rdi, qword ptr [rsp + 0x58]
000000014014b637 add      rsp, 0x30
000000014014b63b pop      r14
000000014014b63d ret      