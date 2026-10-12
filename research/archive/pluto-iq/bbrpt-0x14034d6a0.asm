000000014034d6a0 mov      qword ptr [rsp + 8], rbx
000000014034d6a5 mov      qword ptr [rsp + 0x10], rbp
000000014034d6aa mov      qword ptr [rsp + 0x18], rsi
000000014034d6af push     rdi
000000014034d6b0 sub      rsp, 0x30
000000014034d6b4 mov      al, byte ptr [rcx + 0x15a0]
000000014034d6ba mov      rbx, rcx
000000014034d6bd movzx    ebp, dx
000000014034d6c0 test     al, al
000000014034d6c2 jns      0x14034d77d
000000014034d6c8 cmp      qword ptr [rcx + rbp*8 + 0x10], 0
000000014034d6ce jne      0x14034d718
000000014034d6d0 mov      rcx, qword ptr [rip + 0x5d2929]
000000014034d6d7 lea      rax, [rip + 0x5d2922]
000000014034d6de cmp      rcx, rax
000000014034d6e1 je       0x14034d77d
000000014034d6e7 cmp      byte ptr [rcx + 0x1e9], 4
000000014034d6ee jb       0x14034d77d
000000014034d6f4 mov      eax, dword ptr [rcx + 0x1ec]
000000014034d6fa test     al, al
000000014034d6fc jns      0x14034d77d
000000014034d6fe mov      rcx, qword ptr [rcx + 0x1d8]
000000014034d705 lea      r8, [rip + 0x383e94]
000000014034d70c mov      edx, 0x22
000000014034d711 call     0x140001b88
000000014034d716 jmp      0x14034d77d
000000014034d718 cmp      r8b, 3
000000014034d71c jne      0x14034d72a
000000014034d71e mov      sil, byte ptr [rcx + 0x417c]
000000014034d725 mov      dil, 1
000000014034d728 jmp      0x14034d754
000000014034d72a cmp      r8b, 2
000000014034d72e jne      0x14034d73c
000000014034d730 mov      sil, byte ptr [rcx + 0x417b]
000000014034d737 mov      dil, 1
000000014034d73a jmp      0x14034d754
000000014034d73c cmp      r8b, 1
000000014034d740 jne      0x14034d74e
000000014034d742 mov      sil, byte ptr [rcx + 0x417a]
000000014034d749 mov      dil, r8b
000000014034d74c jmp      0x14034d754
000000014034d74e xor      dil, dil
000000014034d751 xor      sil, sil
000000014034d754 mov      r9b, dil
000000014034d757 mov      byte ptr [rsp + 0x20], 0
000000014034d75c mov      r8b, sil
000000014034d75f movzx    edx, bp
000000014034d762 call     0x14034d794
000000014034d767 mov      r9b, dil
000000014034d76a mov      byte ptr [rsp + 0x20], 1
000000014034d76f mov      r8b, sil
000000014034d772 movzx    edx, bp
000000014034d775 mov      rcx, rbx
000000014034d778 call     0x14034d794
000000014034d77d mov      rbx, qword ptr [rsp + 0x40]
000000014034d782 mov      rbp, qword ptr [rsp + 0x48]
000000014034d787 mov      rsi, qword ptr [rsp + 0x50]
000000014034d78c add      rsp, 0x30
000000014034d790 pop      rdi
000000014034d791 ret      