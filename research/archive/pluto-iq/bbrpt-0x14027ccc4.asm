000000014027ccc4 mov      qword ptr [rsp + 8], rbx
000000014027ccc9 mov      qword ptr [rsp + 0x10], rbp
000000014027ccce mov      qword ptr [rsp + 0x18], rsi
000000014027ccd3 push     rdi
000000014027ccd4 push     r14
000000014027ccd6 push     r15
000000014027ccd8 sub      rsp, 0x30
000000014027ccdc mov      rsi, qword ptr [rcx + 0x230]
000000014027cce3 xor      r15d, r15d
000000014027cce6 movzx    ebp, r8w
000000014027ccea mov      r14, rdx
000000014027cced mov      ebx, 1
000000014027ccf2 movzx    edi, r15w
000000014027ccf6 mov      rax, qword ptr [rsi]
000000014027ccf9 mov      rax, qword ptr [rax + 0xd80]
000000014027cd00 test     rax, rax
000000014027cd03 je       0x14027ce83
000000014027cd09 movzx    edx, r8w
000000014027cd0d mov      rcx, rsi
000000014027cd10 call     qword ptr [rip + 0x4075e2]
000000014027cd16 mov      r8d, eax
000000014027cd19 test     eax, eax
000000014027cd1b je       0x14027cd84
000000014027cd1d mov      rcx, qword ptr [rip + 0x6a32dc]
000000014027cd24 lea      rax, [rip + 0x6a32d5]
000000014027cd2b cmp      rcx, rax
000000014027cd2e je       0x14027ce83
000000014027cd34 cmp      byte ptr [rcx + 0x169], 2
000000014027cd3b jb       0x14027ce83
000000014027cd41 mov      eax, dword ptr [rcx + 0x16c]
000000014027cd47 test     al, 8
000000014027cd49 je       0x14027ce83
000000014027cd4f mov      rcx, qword ptr [rcx + 0x158]
000000014027cd56 lea      rax, [rip + 0x39fde3]
000000014027cd5d mov      dword ptr [rsp + 0x28], r8d
000000014027cd62 lea      r9, [rip + 0x391627]
000000014027cd69 lea      r8, [rip + 0x41c170]
000000014027cd70 mov      qword ptr [rsp + 0x20], rax
000000014027cd75 mov      edx, 0x421
000000014027cd7a call     0x14003ca14
000000014027cd7f jmp      0x14027ce83
000000014027cd84 mov      rax, qword ptr [rsi]
000000014027cd87 cmp      qword ptr [rax + 0xd88], r15
000000014027cd8e je       0x14027ce83
000000014027cd94 mov      rax, qword ptr [rsi]
000000014027cd97 movzx    r8d, bp
000000014027cd9b mov      rdx, r14
000000014027cd9e mov      rcx, rsi
000000014027cda1 mov      rax, qword ptr [rax + 0xd88]
000000014027cda8 call     qword ptr [rip + 0x40754a]
000000014027cdae test     eax, eax
000000014027cdb0 je       0x14027ce28
000000014027cdb2 mov      ecx, 0x3e8
000000014027cdb7 call     0x1405c1138
000000014027cdbc mov      eax, 0x1f4
000000014027cdc1 add      di, bx
000000014027cdc4 cmp      di, ax
000000014027cdc7 jb       0x14027cd94
000000014027cdc9 mov      rcx, qword ptr [rip + 0x6a3230]
000000014027cdd0 lea      rax, [rip + 0x6a3229]
000000014027cdd7 cmp      rcx, rax
000000014027cdda je       0x14027ce83
000000014027cde0 cmp      byte ptr [rcx + 0x169], 2
000000014027cde7 jb       0x14027ce83
000000014027cded mov      eax, dword ptr [rcx + 0x16c]
000000014027cdf3 test     al, 8
000000014027cdf5 je       0x14027ce83
000000014027cdfb mov      rcx, qword ptr [rcx + 0x158]
000000014027ce02 lea      rax, [rip + 0x39fd37]
000000014027ce09 mov      edx, 0x423
000000014027ce0e mov      qword ptr [rsp + 0x20], rax
000000014027ce13 lea      r9, [rip + 0x391576]
000000014027ce1a lea      r8, [rip + 0x41c0bf]
000000014027ce21 call     0x14003c968
000000014027ce26 jmp      0x14027ce83
000000014027ce28 mov      rcx, qword ptr [rip + 0x6a31d1]
000000014027ce2f lea      rax, [rip + 0x6a31ca]
000000014027ce36 cmp      rcx, rax
000000014027ce39 je       0x14027ce80
000000014027ce3b cmp      byte ptr [rcx + 0x169], 4
000000014027ce42 jb       0x14027ce80
000000014027ce44 mov      eax, dword ptr [rcx + 0x16c]
000000014027ce4a test     al, 8
000000014027ce4c je       0x14027ce80
000000014027ce4e mov      rcx, qword ptr [rcx + 0x158]
000000014027ce55 lea      r9, [rip + 0x391534]
000000014027ce5c movzx    eax, di
000000014027ce5f lea      r8, [rip + 0x41c07a]
000000014027ce66 mov      dword ptr [rsp + 0x28], eax
000000014027ce6a mov      edx, 0x422
000000014027ce6f lea      rax, [rip + 0x39fcca]
000000014027ce76 mov      qword ptr [rsp + 0x20], rax
000000014027ce7b call     0x14003ca14
000000014027ce80 mov      ebx, r15d
000000014027ce83 mov      rbp, qword ptr [rsp + 0x58]
000000014027ce88 mov      eax, ebx
000000014027ce8a mov      rbx, qword ptr [rsp + 0x50]
000000014027ce8f mov      rsi, qword ptr [rsp + 0x60]
000000014027ce94 add      rsp, 0x30
000000014027ce98 pop      r15
000000014027ce9a pop      r14
000000014027ce9c pop      rdi
000000014027ce9d ret      