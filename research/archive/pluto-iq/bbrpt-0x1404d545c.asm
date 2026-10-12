00000001404d545c mov      qword ptr [rsp + 8], rbx
00000001404d5461 mov      qword ptr [rsp + 0x10], rsi
00000001404d5466 push     rdi
00000001404d5467 sub      rsp, 0x30
00000001404d546b mov      r8, qword ptr [r9 + 0x78]
00000001404d546f mov      rsi, rdx
00000001404d5472 mov      rax, qword ptr [rdx + 0x70]
00000001404d5476 xor      r9d, r9d
00000001404d5479 mov      rdi, rcx
00000001404d547c call     qword ptr [rip + 0x1aee76]
00000001404d5482 mov      ebx, eax
00000001404d5484 test     eax, eax
00000001404d5486 je       0x1404d54e7
00000001404d5488 mov      rcx, qword ptr [rip + 0x44ab71]
00000001404d548f lea      rax, [rip + 0x44ab6a]
00000001404d5496 cmp      rcx, rax
00000001404d5499 je       0x1404d5535
00000001404d549f cmp      byte ptr [rcx + 0x169], 2
00000001404d54a6 jb       0x1404d5535
00000001404d54ac mov      eax, dword ptr [rcx + 0x16c]
00000001404d54b2 test     al, 1
00000001404d54b4 je       0x1404d5535
00000001404d54b6 mov      edx, 0x24
00000001404d54bb mov      rcx, qword ptr [rcx + 0x158]
00000001404d54c2 lea      rax, [rip + 0x1867c7]
00000001404d54c9 mov      dword ptr [rsp + 0x28], ebx
00000001404d54cd lea      r9, [rip + 0x138ebc]
00000001404d54d4 lea      r8, [rip + 0x4147bd]
00000001404d54db mov      qword ptr [rsp + 0x20], rax
00000001404d54e0 call     0x14003ca14
00000001404d54e5 jmp      0x1404d5535
00000001404d54e7 mov      rcx, rdi
00000001404d54ea call     0x14022b328
00000001404d54ef mov      rdx, rsi
00000001404d54f2 mov      rcx, rdi
00000001404d54f5 call     0x14025b4c4
00000001404d54fa mov      ebx, eax
00000001404d54fc test     eax, eax
00000001404d54fe je       0x1404d552d
00000001404d5500 mov      rcx, qword ptr [rip + 0x44aaf9]
00000001404d5507 lea      rax, [rip + 0x44aaf2]
00000001404d550e cmp      rcx, rax
00000001404d5511 je       0x1404d5535
00000001404d5513 cmp      byte ptr [rcx + 0x169], 2
00000001404d551a jb       0x1404d5535
00000001404d551c mov      eax, dword ptr [rcx + 0x16c]
00000001404d5522 test     al, 1
00000001404d5524 je       0x1404d5535
00000001404d5526 mov      edx, 0x25
00000001404d552b jmp      0x1404d54bb
00000001404d552d mov      rcx, rdi
00000001404d5530 call     0x14022b340
00000001404d5535 mov      rsi, qword ptr [rsp + 0x48]
00000001404d553a mov      eax, ebx
00000001404d553c mov      rbx, qword ptr [rsp + 0x40]
00000001404d5541 add      rsp, 0x30
00000001404d5545 pop      rdi
00000001404d5546 ret      