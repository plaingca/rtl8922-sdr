000000014025ae0c mov      qword ptr [rsp + 8], rbx
000000014025ae11 push     rdi
000000014025ae12 sub      rsp, 0x30
000000014025ae16 cmp      byte ptr [rdx + 0x96db], 0
000000014025ae1d mov      rbx, rdx
000000014025ae20 mov      rdi, rcx
000000014025ae23 je       0x14025aedd
000000014025ae29 test     r8d, r8d
000000014025ae2c je       0x14025aebe
000000014025ae32 sub      r8d, 1
000000014025ae36 je       0x14025aeb4
000000014025ae38 cmp      r8d, 1
000000014025ae3c je       0x14025ae95
000000014025ae3e mov      rcx, qword ptr [rip + 0x6c51bb]
000000014025ae45 lea      rax, [rip + 0x6c51b4]
000000014025ae4c cmp      rcx, rax
000000014025ae4f je       0x14025aedd
000000014025ae55 cmp      byte ptr [rcx + 0x169], 2
000000014025ae5c jb       0x14025aedd
000000014025ae5e mov      eax, dword ptr [rcx + 0x16c]
000000014025ae64 test     al, 1
000000014025ae66 je       0x14025aedd
000000014025ae68 mov      rcx, qword ptr [rcx + 0x158]
000000014025ae6f lea      rax, [rip + 0x3bf1ba]
000000014025ae76 mov      edx, 0x10
000000014025ae7b mov      qword ptr [rsp + 0x20], rax
000000014025ae80 lea      r9, [rip + 0x3b3509]
000000014025ae87 lea      r8, [rip + 0x43ddaa]
000000014025ae8e call     0x14003c968
000000014025ae93 jmp      0x14025aedd
000000014025ae95 mov      rcx, rbx
000000014025ae98 call     0x14022b328
000000014025ae9d mov      rax, qword ptr [rdi + 0x30]
000000014025aea1 test     rax, rax
000000014025aea4 je       0x14025aeb4
000000014025aea6 mov      edx, 2
000000014025aeab mov      rcx, rdi
000000014025aeae call     qword ptr [rip + 0x429444]
000000014025aeb4 mov      rcx, rbx
000000014025aeb7 call     0x14022b340
000000014025aebc jmp      0x14025aedd
000000014025aebe mov      rcx, rbx
000000014025aec1 call     0x14022b328
000000014025aec6 mov      rax, qword ptr [rdi + 0x30]
000000014025aeca test     rax, rax
000000014025aecd je       0x14025aedd
000000014025aecf mov      edx, 1
000000014025aed4 mov      rcx, rdi
000000014025aed7 call     qword ptr [rip + 0x42941b]
000000014025aedd mov      rbx, qword ptr [rsp + 0x40]
000000014025aee2 add      rsp, 0x30
000000014025aee6 pop      rdi
000000014025aee7 ret      