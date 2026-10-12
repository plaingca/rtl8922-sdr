000000014014ae50 mov      qword ptr [rsp + 8], rbx
000000014014ae55 mov      qword ptr [rsp + 0x10], rbp
000000014014ae5a mov      qword ptr [rsp + 0x18], rsi
000000014014ae5f push     rdi
000000014014ae60 push     r14
000000014014ae62 push     r15
000000014014ae64 sub      rsp, 0x50
000000014014ae68 mov      rsi, rdx
000000014014ae6b mov      rdi, rcx
000000014014ae6e lea      rdx, [rip + 0x4bcacb]
000000014014ae75 add      rcx, 0x28
000000014014ae79 call     0x140031478
000000014014ae7e mov      r14d, dword ptr [rsi + 0x14]
000000014014ae82 lea      r11, [rdi + 0x80]
000000014014ae89 xor      ebx, ebx
000000014014ae8b lea      r15d, [rbx + 1]
000000014014ae8f cmp      r14d, r15d
000000014014ae92 jbe      0x14014aec0
000000014014ae94 cmp      dword ptr [r11], ebx
000000014014ae97 je       0x14014aea8
000000014014ae99 cmp      byte ptr [rdi + 0x96], bl
000000014014ae9f movzx    eax, bl
000000014014aea2 cmovne   eax, r15d
000000014014aea6 mov      bl, al
000000014014aea8 lea      r8, [rdi + 0x49]
000000014014aeac movzx    ecx, byte ptr [r8]
000000014014aeb0 lea      rdx, [rdi + 0x48]
000000014014aeb4 movzx    eax, byte ptr [rdx]
000000014014aeb7 add      ecx, r15d
000000014014aeba cmp      ecx, eax
000000014014aebc jb       0x14014aecb
000000014014aebe jmp      0x14014aec8
000000014014aec0 lea      rdx, [rdi + 0x48]
000000014014aec4 lea      r8, [rdi + 0x49]
000000014014aec8 mov      bl, r15b
000000014014aecb mov      rcx, qword ptr [rip + 0x7d512e]
000000014014aed2 lea      rax, [rip + 0x7d5127]
000000014014aed9 cmp      rcx, rax
000000014014aedc je       0x14014af3b
000000014014aede cmp      byte ptr [rcx + 0x29], 4
000000014014aee2 jb       0x14014af3b
000000014014aee4 test     dword ptr [rcx + 0x2c], 0x100
000000014014aeeb je       0x14014af3b
000000014014aeed movzx    eax, byte ptr [rdx]
000000014014aef0 mov      edx, 0x21
000000014014aef5 movzx    r8d, byte ptr [r8]
000000014014aef9 movzx    r9d, byte ptr [rdi + 0x96]
000000014014af01 mov      rcx, qword ptr [rcx + 0x18]
000000014014af05 mov      dword ptr [rsp + 0x48], eax
000000014014af09 mov      eax, dword ptr [r11]
000000014014af0c mov      dword ptr [rsp + 0x40], r8d
000000014014af11 lea      r8, [rip + 0x548c58]
000000014014af18 mov      dword ptr [rsp + 0x38], r9d
000000014014af1d lea      r9, [rip + 0x4bc9dc]
000000014014af24 mov      dword ptr [rsp + 0x30], eax
000000014014af28 movzx    r10d, bl
000000014014af2c mov      dword ptr [rsp + 0x28], r14d
000000014014af31 mov      dword ptr [rsp + 0x20], r10d
000000014014af36 call     0x140032bdc
000000014014af3b xor      bl, r15b
000000014014af3e lea      rdx, [rip + 0x4bc9fb]
000000014014af45 lea      rcx, [rdi + 0x28]
000000014014af49 mov      byte ptr [rsi + 0xda5], bl
000000014014af4f call     0x140031684
000000014014af54 lea      r11, [rsp + 0x50]
000000014014af59 mov      eax, r15d
000000014014af5c mov      rbx, qword ptr [r11 + 0x20]
000000014014af60 mov      rbp, qword ptr [r11 + 0x28]
000000014014af64 mov      rsi, qword ptr [r11 + 0x30]
000000014014af68 mov      rsp, r11
000000014014af6b pop      r15
000000014014af6d pop      r14
000000014014af6f pop      rdi
000000014014af70 ret      