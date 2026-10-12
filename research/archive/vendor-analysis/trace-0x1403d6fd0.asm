00000001403d6fd0 mov      rax, rsp
00000001403d6fd3 mov      qword ptr [rax + 8], rbx
00000001403d6fd7 mov      qword ptr [rax + 0x10], rbp
00000001403d6fdb mov      qword ptr [rax + 0x18], rsi
00000001403d6fdf mov      qword ptr [rax + 0x20], rdi
00000001403d6fe3 push     r13
00000001403d6fe5 push     r14
00000001403d6fe7 push     r15
00000001403d6fe9 sub      rsp, 0x30
00000001403d6fed mov      rbx, qword ptr [rcx + 0x9a0]
00000001403d6ff4 mov      rdi, rcx
00000001403d6ff7 add      rbx, 0x1040
00000001403d6ffe movzx    ebp, r9b
00000001403d7002 xor      esi, esi
00000001403d7004 movzx    r15d, r8b
00000001403d7008 movzx    r14d, dl
00000001403d700c mov      rcx, qword ptr [rip + 0x548fed]
00000001403d7013 lea      r13, [rip + 0x548fe6]
00000001403d701a cmp      rcx, r13
00000001403d701d je       0x1403d7054
00000001403d701f cmp      byte ptr [rcx + 0x169], 4
00000001403d7026 jb       0x1403d7054
00000001403d7028 test     dword ptr [rcx + 0x16c], 0x1000
00000001403d7032 je       0x1403d7054
00000001403d7034 mov      rcx, qword ptr [rcx + 0x158]
00000001403d703b lea      edx, [rsi + 0x29]
00000001403d703e mov      dword ptr [rax - 0x20], ebp
00000001403d7041 lea      r8, [rip + 0x2fe1d0]
00000001403d7048 mov      r9d, r14d
00000001403d704b mov      dword ptr [rax - 0x28], r15d
00000001403d704f call     0x140001c34
00000001403d7054 test     r14b, r14b
00000001403d7057 je       0x1403d706e
00000001403d7059 mov      edx, dword ptr [rbx + 0xd0]
00000001403d705f mov      r9d, 1
00000001403d7065 mov      r8d, dword ptr [rbx + 0xd4]
00000001403d706c jmp      0x1403d70ab
00000001403d706e test     bpl, bpl
00000001403d7071 jne      0x1403d7079
00000001403d7073 mov      esi, dword ptr [rbx + 0x338]
00000001403d7079 mov      eax, dword ptr [rdi + 0x998]
00000001403d707f xor      r9d, r9d
00000001403d7082 mov      r8d, dword ptr [rbx + 0xd4]
00000001403d7089 mov      rcx, rdi
00000001403d708c mov      edx, dword ptr [rbx + 0xd0]
00000001403d7092 mov      dword ptr [rsp + 0x20], eax
00000001403d7096 call     0x140316994
00000001403d709b mov      edx, dword ptr [rbx + 0xc0]
00000001403d70a1 mov      r9d, esi
00000001403d70a4 mov      r8d, dword ptr [rbx + 0xc4]
00000001403d70ab mov      eax, dword ptr [rdi + 0x998]
00000001403d70b1 mov      rcx, rdi
00000001403d70b4 mov      dword ptr [rsp + 0x20], eax
00000001403d70b8 call     0x140316994
00000001403d70bd mov      rcx, qword ptr [rip + 0x548f3c]
00000001403d70c4 cmp      rcx, r13
00000001403d70c7 je       0x1403d70f9
00000001403d70c9 cmp      byte ptr [rcx + 0x169], 4
00000001403d70d0 jb       0x1403d70f9
00000001403d70d2 test     dword ptr [rcx + 0x16c], 0x1000
00000001403d70dc je       0x1403d70f9
00000001403d70de mov      rcx, qword ptr [rcx + 0x158]
00000001403d70e5 lea      r8, [rip + 0x2fe12c]
00000001403d70ec mov      edx, 0x2a
00000001403d70f1 mov      r9d, esi
00000001403d70f4 call     0x140001bb0
00000001403d70f9 mov      eax, dword ptr [rdi + 0x998]
00000001403d70ff mov      rcx, rdi
00000001403d7102 mov      r8d, dword ptr [rbx + 0x11c]
00000001403d7109 mov      edx, dword ptr [rbx + 0x118]
00000001403d710f mov      dword ptr [rsp + 0x20], eax
00000001403d7113 test     r15b, r15b
00000001403d7116 jne      0x1403d71e3
00000001403d711c xor      r9d, r9d
00000001403d711f call     0x140316994
00000001403d7124 mov      eax, dword ptr [rdi + 0x998]
00000001403d712a xor      r9d, r9d
00000001403d712d mov      r8d, dword ptr [rbx + 0xe4]
00000001403d7134 mov      rcx, rdi
00000001403d7137 mov      edx, dword ptr [rbx + 0xe0]
00000001403d713d mov      dword ptr [rsp + 0x20], eax
00000001403d7141 call     0x140316994
00000001403d7146 mov      eax, dword ptr [rdi + 0x998]
00000001403d714c xor      r9d, r9d
00000001403d714f mov      r8d, dword ptr [rbx + 0xf4]
00000001403d7156 mov      rcx, rdi
00000001403d7159 mov      edx, dword ptr [rbx + 0xf0]
00000001403d715f mov      dword ptr [rsp + 0x20], eax
00000001403d7163 call     0x140316994
00000001403d7168 mov      eax, dword ptr [rdi + 0x998]
00000001403d716e xor      r9d, r9d
00000001403d7171 mov      r8d, dword ptr [rbx + 0x104]
00000001403d7178 mov      rcx, rdi
00000001403d717b mov      edx, dword ptr [rbx + 0x100]
00000001403d7181 mov      dword ptr [rsp + 0x20], eax
00000001403d7185 call     0x140316994
00000001403d718a mov      eax, dword ptr [rdi + 0x998]
00000001403d7190 xor      r9d, r9d
00000001403d7193 mov      r8d, dword ptr [rbx + 0x14c]
00000001403d719a mov      rcx, rdi
00000001403d719d mov      edx, dword ptr [rbx + 0x148]
00000001403d71a3 mov      dword ptr [rsp + 0x20], eax
00000001403d71a7 call     0x140316994
00000001403d71ac mov      eax, dword ptr [rdi + 0x998]
00000001403d71b2 xor      r9d, r9d
00000001403d71b5 mov      r8d, dword ptr [rbx + 0x164]
00000001403d71bc mov      rcx, rdi
00000001403d71bf mov      edx, dword ptr [rbx + 0x160]
00000001403d71c5 mov      dword ptr [rsp + 0x20], eax
00000001403d71c9 call     0x140316994
00000001403d71ce mov      r8d, dword ptr [rbx + 0x17c]
00000001403d71d5 xor      r9d, r9d
00000001403d71d8 mov      edx, dword ptr [rbx + 0x178]
00000001403d71de jmp      0x1403d7745
00000001403d71e3 mov      r9d, dword ptr [rbx + 0x398]
00000001403d71ea call     0x140316994
00000001403d71ef mov      eax, dword ptr [rdi + 0x998]
00000001403d71f5 mov      rcx, rdi
00000001403d71f8 movzx    r9d, byte ptr [rbx + 0x3a0]
00000001403d7200 mov      r8d, dword ptr [rbx + 0xdc]
00000001403d7207 mov      edx, dword ptr [rbx + 0xd8]
00000001403d720d mov      dword ptr [rsp + 0x20], eax
00000001403d7211 call     0x140316994
00000001403d7216 mov      eax, dword ptr [rdi + 0x998]
00000001403d721c mov      rcx, rdi
00000001403d721f mov      r9d, dword ptr [rbx + 0x39c]
00000001403d7226 mov      r8d, dword ptr [rbx + 0x124]
00000001403d722d mov      edx, dword ptr [rbx + 0x120]
00000001403d7233 mov      dword ptr [rsp + 0x20], eax
00000001403d7237 call     0x140316994
00000001403d723c mov      eax, dword ptr [rdi + 0x998]
00000001403d7242 mov      rcx, rdi
00000001403d7245 movzx    r9d, byte ptr [rbx + 0x3a1]
00000001403d724d mov      r8d, dword ptr [rbx + 0xe4]
00000001403d7254 mov      edx, dword ptr [rbx + 0xe0]
00000001403d725a mov      dword ptr [rsp + 0x20], eax
00000001403d725e call     0x140316994
00000001403d7263 mov      eax, dword ptr [rdi + 0x998]
00000001403d7269 mov      rcx, rdi
00000001403d726c movzx    r9d, byte ptr [rbx + 0x3a2]
00000001403d7274 mov      r8d, dword ptr [rbx + 0xec]
00000001403d727b mov      edx, dword ptr [rbx + 0xe8]
00000001403d7281 mov      dword ptr [rsp + 0x20], eax
00000001403d7285 call     0x140316994
00000001403d728a mov      eax, dword ptr [rdi + 0x998]
00000001403d7290 mov      rcx, rdi
00000001403d7293 mov      r9d, dword ptr [rbx + 0x3a4]
00000001403d729a mov      r8d, dword ptr [rbx + 0x134]
00000001403d72a1 mov      edx, dword ptr [rbx + 0x130]
00000001403d72a7 mov      dword ptr [rsp + 0x20], eax
00000001403d72ab call     0x140316994
00000001403d72b0 mov      eax, dword ptr [rdi + 0x998]
00000001403d72b6 mov      rcx, rdi
00000001403d72b9 mov      r9d, dword ptr [rbx + 0x3a8]
00000001403d72c0 mov      r8d, dword ptr [rbx + 0x12c]
00000001403d72c7 mov      edx, dword ptr [rbx + 0x128]
00000001403d72cd mov      dword ptr [rsp + 0x20], eax
00000001403d72d1 call     0x140316994
00000001403d72d6 mov      eax, dword ptr [rdi + 0x998]
00000001403d72dc mov      rcx, rdi
00000001403d72df mov      r9d, dword ptr [rbx + 0x3ac]
00000001403d72e6 mov      r8d, dword ptr [rbx + 0x1f4]
00000001403d72ed mov      edx, dword ptr [rbx + 0x1f0]
00000001403d72f3 mov      dword ptr [rsp + 0x20], eax
00000001403d72f7 call     0x140316994
00000001403d72fc mov      eax, dword ptr [rdi + 0x998]
00000001403d7302 mov      rcx, rdi
00000001403d7305 movzx    r9d, byte ptr [rbx + 0x3b0]
00000001403d730d mov      r8d, dword ptr [rbx + 0xf4]
00000001403d7314 mov      edx, dword ptr [rbx + 0xf0]
00000001403d731a mov      dword ptr [rsp + 0x20], eax
00000001403d731e call     0x140316994
00000001403d7323 mov      eax, dword ptr [rdi + 0x998]
00000001403d7329 mov      rcx, rdi
00000001403d732c movzx    r9d, byte ptr [rbx + 0x3b1]
00000001403d7334 mov      r8d, dword ptr [rbx + 0xfc]
00000001403d733b mov      edx, dword ptr [rbx + 0xf8]
00000001403d7341 mov      dword ptr [rsp + 0x20], eax
00000001403d7345 call     0x140316994
00000001403d734a mov      eax, dword ptr [rdi + 0x998]
00000001403d7350 mov      rcx, rdi
00000001403d7353 mov      r9d, dword ptr [rbx + 0x3b4]
00000001403d735a mov      r8d, dword ptr [rbx + 0x144]
00000001403d7361 mov      edx, dword ptr [rbx + 0x140]
00000001403d7367 mov      dword ptr [rsp + 0x20], eax
00000001403d736b call     0x140316994
00000001403d7370 mov      eax, dword ptr [rdi + 0x998]
00000001403d7376 mov      rcx, rdi
00000001403d7379 mov      r9d, dword ptr [rbx + 0x3b8]
00000001403d7380 mov      r8d, dword ptr [rbx + 0x13c]
00000001403d7387 mov      edx, dword ptr [rbx + 0x138]
00000001403d738d mov      dword ptr [rsp + 0x20], eax
00000001403d7391 call     0x140316994
00000001403d7396 mov      eax, dword ptr [rdi + 0x998]
00000001403d739c mov      dword ptr [rsp + 0x20], eax
00000001403d73a0 mov      r9d, dword ptr [rbx + 0x3bc]
00000001403d73a7 mov      rcx, rdi
00000001403d73aa mov      r8d, dword ptr [rbx + 0x1fc]
00000001403d73b1 mov      edx, dword ptr [rbx + 0x1f8]
00000001403d73b7 call     0x140316994
00000001403d73bc mov      eax, dword ptr [rdi + 0x998]
00000001403d73c2 mov      rcx, rdi
00000001403d73c5 movzx    r9d, byte ptr [rbx + 0x3c0]
00000001403d73cd mov      r8d, dword ptr [rbx + 0x104]
00000001403d73d4 mov      edx, dword ptr [rbx + 0x100]
00000001403d73da mov      dword ptr [rsp + 0x20], eax
00000001403d73de call     0x140316994
00000001403d73e3 mov      eax, dword ptr [rdi + 0x998]
00000001403d73e9 mov      rcx, rdi
00000001403d73ec movzx    r9d, byte ptr [rbx + 0x3c4]
00000001403d73f4 mov      r8d, dword ptr [rbx + 0x114]
00000001403d73fb mov      edx, dword ptr [rbx + 0x110]
00000001403d7401 mov      dword ptr [rsp + 0x20], eax
00000001403d7405 call     0x140316994
00000001403d740a mov      eax, dword ptr [rdi + 0x998]
00000001403d7410 mov      rcx, rdi
00000001403d7413 movzx    r9d, word ptr [rbx + 0x3c2]
00000001403d741b mov      r8d, dword ptr [rbx + 0x10c]
00000001403d7422 mov      edx, dword ptr [rbx + 0x108]
00000001403d7428 mov      dword ptr [rsp + 0x20], eax
00000001403d742c call     0x140316994
00000001403d7431 mov      eax, dword ptr [rdi + 0x998]
00000001403d7437 mov      rcx, rdi
00000001403d743a mov      r9d, dword ptr [rbx + 0x3c8]
00000001403d7441 mov      r8d, dword ptr [rbx + 0x14c]
00000001403d7448 mov      edx, dword ptr [rbx + 0x148]
00000001403d744e mov      dword ptr [rsp + 0x20], eax
00000001403d7452 call     0x140316994
00000001403d7457 mov      eax, dword ptr [rdi + 0x998]
00000001403d745d mov      rcx, rdi
00000001403d7460 movzx    r9d, byte ptr [rbx + 0x3cc]
00000001403d7468 mov      r8d, dword ptr [rbx + 0x15c]
00000001403d746f mov      edx, dword ptr [rbx + 0x158]
00000001403d7475 mov      dword ptr [rsp + 0x20], eax
00000001403d7479 call     0x140316994
00000001403d747e cmp      dword ptr [rbx + 0x3c8], 0xf
00000001403d7485 jne      0x1403d7496
00000001403d7487 mov      edx, dword ptr [rbx + 0x190]
00000001403d748d mov      r8d, dword ptr [rbx + 0x194]
00000001403d7494 jmp      0x1403d74a3
00000001403d7496 mov      edx, dword ptr [rbx + 0x150]
00000001403d749c mov      r8d, dword ptr [rbx + 0x154]
00000001403d74a3 mov      eax, dword ptr [rdi + 0x998]
00000001403d74a9 mov      rcx, rdi
00000001403d74ac movzx    r9d, byte ptr [rbx + 0x3cd]
00000001403d74b4 mov      dword ptr [rsp + 0x20], eax
00000001403d74b8 call     0x140316994
00000001403d74bd mov      eax, dword ptr [rdi + 0x998]
00000001403d74c3 mov      rcx, rdi
00000001403d74c6 mov      r9d, dword ptr [rbx + 0x3d0]
00000001403d74cd mov      r8d, dword ptr [rbx + 0x164]
00000001403d74d4 mov      edx, dword ptr [rbx + 0x160]
00000001403d74da mov      dword ptr [rsp + 0x20], eax
00000001403d74de call     0x140316994
00000001403d74e3 mov      eax, dword ptr [rdi + 0x998]
00000001403d74e9 mov      rcx, rdi
00000001403d74ec movzx    r9d, byte ptr [rbx + 0x3d4]
00000001403d74f4 mov      r8d, dword ptr [rbx + 0x174]
00000001403d74fb mov      edx, dword ptr [rbx + 0x170]
00000001403d7501 mov      dword ptr [rsp + 0x20], eax
00000001403d7505 call     0x140316994
00000001403d750a cmp      dword ptr [rbx + 0x3d0], 0xf
00000001403d7511 jne      0x1403d7522
00000001403d7513 mov      edx, dword ptr [rbx + 0x190]
00000001403d7519 mov      r8d, dword ptr [rbx + 0x194]
00000001403d7520 jmp      0x1403d752f
00000001403d7522 mov      edx, dword ptr [rbx + 0x168]
00000001403d7528 mov      r8d, dword ptr [rbx + 0x16c]
00000001403d752f mov      eax, dword ptr [rdi + 0x998]
00000001403d7535 mov      rcx, rdi
00000001403d7538 movzx    r9d, byte ptr [rbx + 0x3d5]
00000001403d7540 mov      dword ptr [rsp + 0x20], eax
00000001403d7544 call     0x140316994
00000001403d7549 mov      eax, dword ptr [rdi + 0x998]
00000001403d754f mov      rcx, rdi
00000001403d7552 mov      r9d, dword ptr [rbx + 0x3d8]
00000001403d7559 mov      r8d, dword ptr [rbx + 0x17c]
00000001403d7560 mov      edx, dword ptr [rbx + 0x178]
00000001403d7566 mov      dword ptr [rsp + 0x20], eax
00000001403d756a call     0x140316994
00000001403d756f mov      eax, dword ptr [rdi + 0x998]
00000001403d7575 mov      rcx, rdi
00000001403d7578 movzx    r9d, byte ptr [rbx + 0x3dc]
00000001403d7580 mov      r8d, dword ptr [rbx + 0x18c]
00000001403d7587 mov      edx, dword ptr [rbx + 0x188]
00000001403d758d mov      dword ptr [rsp + 0x20], eax
00000001403d7591 call     0x140316994
00000001403d7596 cmp      dword ptr [rbx + 0x3d8], 0xf
00000001403d759d jne      0x1403d75ae
00000001403d759f mov      edx, dword ptr [rbx + 0x190]
00000001403d75a5 mov      r8d, dword ptr [rbx + 0x194]
00000001403d75ac jmp      0x1403d75bb
00000001403d75ae mov      edx, dword ptr [rbx + 0x180]
00000001403d75b4 mov      r8d, dword ptr [rbx + 0x184]
00000001403d75bb mov      eax, dword ptr [rdi + 0x998]
00000001403d75c1 mov      rcx, rdi
00000001403d75c4 movzx    r9d, byte ptr [rbx + 0x3dd]
00000001403d75cc mov      dword ptr [rsp + 0x20], eax
00000001403d75d0 call     0x140316994
00000001403d75d5 test     dword ptr [rdi + 0x13f0], 0x1fe0000
00000001403d75df je       0x1403d771b
00000001403d75e5 mov      eax, dword ptr [rdi + 0x998]
00000001403d75eb mov      rcx, rdi
00000001403d75ee movzx    r9d, byte ptr [rbx + 0x3de]
00000001403d75f6 mov      r8d, dword ptr [rbx + 0x274]
00000001403d75fd mov      edx, dword ptr [rbx + 0x270]
00000001403d7603 mov      dword ptr [rsp + 0x20], eax
00000001403d7607 call     0x140316994
00000001403d760c mov      eax, dword ptr [rdi + 0x998]
00000001403d7612 mov      rcx, rdi
00000001403d7615 movzx    r9d, word ptr [rbx + 0x3e0]
00000001403d761d mov      r8d, dword ptr [rbx + 0x27c]
00000001403d7624 mov      edx, dword ptr [rbx + 0x278]
00000001403d762a mov      dword ptr [rsp + 0x20], eax
00000001403d762e call     0x140316994
00000001403d7633 mov      eax, dword ptr [rdi + 0x998]
00000001403d7639 mov      rcx, rdi
00000001403d763c movzx    r9d, word ptr [rbx + 0x3e2]
00000001403d7644 mov      r8d, dword ptr [rbx + 0x284]
00000001403d764b mov      edx, dword ptr [rbx + 0x280]
00000001403d7651 mov      dword ptr [rsp + 0x20], eax
00000001403d7655 call     0x140316994
00000001403d765a mov      eax, dword ptr [rdi + 0x998]
00000001403d7660 mov      rcx, rdi
00000001403d7663 movzx    r9d, word ptr [rbx + 0x3e4]
00000001403d766b mov      r8d, dword ptr [rbx + 0x28c]
00000001403d7672 mov      edx, dword ptr [rbx + 0x288]
00000001403d7678 mov      dword ptr [rsp + 0x20], eax
00000001403d767c call     0x140316994
00000001403d7681 mov      eax, dword ptr [rdi + 0x998]
00000001403d7687 mov      rcx, rdi
00000001403d768a movzx    r9d, byte ptr [rbx + 0x3e6]
00000001403d7692 mov      r8d, dword ptr [rbx + 0x294]
00000001403d7699 mov      edx, dword ptr [rbx + 0x290]
00000001403d769f mov      dword ptr [rsp + 0x20], eax
00000001403d76a3 call     0x140316994
00000001403d76a8 mov      eax, dword ptr [rdi + 0x998]
00000001403d76ae mov      rcx, rdi
00000001403d76b1 movzx    r9d, byte ptr [rbx + 0x3e7]
00000001403d76b9 mov      r8d, dword ptr [rbx + 0x29c]
00000001403d76c0 mov      edx, dword ptr [rbx + 0x298]
00000001403d76c6 mov      dword ptr [rsp + 0x20], eax
00000001403d76ca call     0x140316994
00000001403d76cf mov      eax, dword ptr [rdi + 0x998]
00000001403d76d5 mov      rcx, rdi
00000001403d76d8 mov      r9d, dword ptr [rbx + 0x3e8]
00000001403d76df mov      r8d, dword ptr [rbx + 0x2a4]
00000001403d76e6 mov      edx, dword ptr [rbx + 0x2a0]
00000001403d76ec mov      dword ptr [rsp + 0x20], eax
00000001403d76f0 call     0x140316994
00000001403d76f5 mov      eax, dword ptr [rdi + 0x998]
00000001403d76fb mov      rcx, rdi
00000001403d76fe mov      r9d, dword ptr [rbx + 0x3ec]
00000001403d7705 mov      r8d, dword ptr [rbx + 0x2ac]
00000001403d770c mov      edx, dword ptr [rbx + 0x2a8]
00000001403d7712 mov      dword ptr [rsp + 0x20], eax
00000001403d7716 call     0x140316994
00000001403d771b test     dword ptr [rdi + 0x13f0], 0x1fc0000
00000001403d7725 je       0x1403d7757
00000001403d7727 cmp      byte ptr [rbx + 0x3f0], 0
00000001403d772e je       0x1403d7757
00000001403d7730 movzx    r9d, byte ptr [rbx + 0x3f1]
00000001403d7738 mov      r8d, dword ptr [rbx + 0x2c4]
00000001403d773f mov      edx, dword ptr [rbx + 0x2c0]
00000001403d7745 mov      eax, dword ptr [rdi + 0x998]
00000001403d774b mov      rcx, rdi
00000001403d774e mov      dword ptr [rsp + 0x20], eax
00000001403d7752 call     0x140316994
00000001403d7757 mov      rbx, qword ptr [rsp + 0x50]
00000001403d775c mov      rbp, qword ptr [rsp + 0x58]
00000001403d7761 mov      rsi, qword ptr [rsp + 0x60]
00000001403d7766 mov      rdi, qword ptr [rsp + 0x68]
00000001403d776b add      rsp, 0x30
00000001403d776f pop      r15
00000001403d7771 pop      r14
00000001403d7773 pop      r13
00000001403d7775 ret      