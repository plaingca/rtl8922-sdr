000000014046f110 mov      rax, rsp
000000014046f113 mov      qword ptr [rax + 8], rbx
000000014046f117 mov      qword ptr [rax + 0x10], rbp
000000014046f11b mov      qword ptr [rax + 0x18], rsi
000000014046f11f mov      qword ptr [rax + 0x20], rdi
000000014046f123 push     r12
000000014046f125 push     r14
000000014046f127 push     r15
000000014046f129 sub      rsp, 0x30
000000014046f12d lea      rbx, [rcx + 0x13150]
000000014046f134 mov      rdx, r8
000000014046f137 mov      rdi, rcx
000000014046f13a mov      r8d, 0x204
000000014046f140 mov      rcx, rbx
000000014046f143 call     0x1400311e8
000000014046f148 mov      rcx, qword ptr [rip + 0x4b0eb1]
000000014046f14f lea      r14, [rip + 0x4b0eaa]
000000014046f156 lea      r15, [rip + 0x26eb33]
000000014046f15d mov      esi, 2
000000014046f162 lea      ebp, [rsi + 2]
000000014046f165 cmp      rcx, r14
000000014046f168 je       0x14046f190
000000014046f16a cmp      byte ptr [rcx + 0x229], bpl
000000014046f171 jb       0x14046f190
000000014046f173 mov      eax, dword ptr [rcx + 0x22c]
000000014046f179 test     sil, al
000000014046f17c je       0x14046f190
000000014046f17e mov      rcx, qword ptr [rcx + 0x218]
000000014046f185 lea      edx, [rsi + 0x72]
000000014046f188 mov      r8, r15
000000014046f18b call     0x140001b88
000000014046f190 mov      al, byte ptr [rbx + 4]
000000014046f193 lea      rcx, [rdi + 0xfa4e]
000000014046f19a mov      byte ptr [rdi + 0xfa4c], al
000000014046f1a0 lea      r9, [rdi + 0xfa88]
000000014046f1a7 mov      al, byte ptr [rbx + 5]
000000014046f1aa lea      r8, [rdi + 0xfa78]
000000014046f1b1 mov      byte ptr [rdi + 0xfa4d], al
000000014046f1b7 mov      r11, rsi
000000014046f1ba mov      al, byte ptr [rbx + 0xa]
000000014046f1bd mov      byte ptr [rdi + 0xfa52], al
000000014046f1c3 mov      al, byte ptr [rbx + 0xb]
000000014046f1c6 mov      byte ptr [rdi + 0xfa53], al
000000014046f1cc mov      al, byte ptr [rbx + 0xc]
000000014046f1cf mov      byte ptr [rdi + 0xfa54], al
000000014046f1d5 mov      al, byte ptr [rbx + 0xd]
000000014046f1d8 mov      byte ptr [rdi + 0xfa55], al
000000014046f1de mov      al, byte ptr [rbx + 0xe]
000000014046f1e1 mov      byte ptr [rdi + 0xfa56], al
000000014046f1e7 mov      al, byte ptr [rbx + 0xf]
000000014046f1ea mov      byte ptr [rdi + 0xfa57], al
000000014046f1f0 mov      al, byte ptr [rbx + 0x10]
000000014046f1f3 mov      byte ptr [rdi + 0xfa58], al
000000014046f1f9 mov      al, byte ptr [rbx + 0x11]
000000014046f1fc mov      byte ptr [rdi + 0xfa59], al
000000014046f202 mov      al, byte ptr [rbx + 0x12]
000000014046f205 mov      byte ptr [rdi + 0xfa5a], al
000000014046f20b mov      al, byte ptr [rbx + 0x13]
000000014046f20e mov      byte ptr [rdi + 0xfa5b], al
000000014046f214 mov      al, byte ptr [rbx + 0x14]
000000014046f217 mov      byte ptr [rdi + 0xfa5c], al
000000014046f21d mov      al, byte ptr [rbx + 0x1b]
000000014046f220 mov      byte ptr [rdi + 0xfa63], al
000000014046f226 mov      al, byte ptr [rbx + 0x1c]
000000014046f229 mov      byte ptr [rdi + 0xfa64], al
000000014046f22f mov      al, byte ptr [rbx + 0x1d]
000000014046f232 mov      byte ptr [rdi + 0xfa65], al
000000014046f238 mov      al, byte ptr [rbx + 0x1e]
000000014046f23b mov      byte ptr [rdi + 0xfa66], al
000000014046f241 mov      edi, 1
000000014046f246 mov      al, byte ptr [rcx + 0x3708]
000000014046f24c mov      rdx, r9
000000014046f24f mov      byte ptr [rcx], al
000000014046f251 mov      r10, rbp
000000014046f254 mov      al, byte ptr [rcx + 0x370a]
000000014046f25a mov      byte ptr [rcx + 2], al
000000014046f25d mov      al, byte ptr [rcx + 0x3702]
000000014046f263 mov      byte ptr [rcx - 6], al
000000014046f266 mov      al, byte ptr [rcx + 0x3704]
000000014046f26c mov      byte ptr [rcx - 4], al
000000014046f26f mov      al, byte ptr [rcx + 0x3717]
000000014046f275 mov      byte ptr [rcx + 0xf], al
000000014046f278 mov      al, byte ptr [rcx + 0x3719]
000000014046f27e mov      byte ptr [rcx + 0x11], al
000000014046f281 mov      al, byte ptr [rcx + 0x371b]
000000014046f287 mov      byte ptr [rcx + 0x13], al
000000014046f28a mov      eax, dword ptr [r8 + 0x3708]
000000014046f291 mov      dword ptr [r8], eax
000000014046f294 mov      eax, dword ptr [r8 + 0x3710]
000000014046f29b mov      dword ptr [r8 + 8], eax
000000014046f29f mov      eax, dword ptr [rdx + 0x3708]
000000014046f2a5 mov      dword ptr [rdx], eax
000000014046f2a7 mov      eax, dword ptr [rdx + 0x3738]
000000014046f2ad mov      dword ptr [rdx + 0x30], eax
000000014046f2b0 mov      eax, dword ptr [rdx + 0x3768]
000000014046f2b6 mov      dword ptr [rdx + 0x60], eax
000000014046f2b9 mov      eax, dword ptr [rdx + 0x3798]
000000014046f2bf mov      dword ptr [rdx + 0x90], eax
000000014046f2c5 add      rdx, rbp
000000014046f2c8 sub      r10, rdi
000000014046f2cb jne      0x14046f29f
000000014046f2cd add      r8, rbp
000000014046f2d0 add      rcx, rdi
000000014046f2d3 add      r9, 0x18
000000014046f2d7 sub      r11, rdi
000000014046f2da jne      0x14046f246
000000014046f2e0 mov      rcx, qword ptr [rip + 0x4b0d19]
000000014046f2e7 cmp      rcx, r14
000000014046f2ea je       0x14047040c
000000014046f2f0 cmp      byte ptr [rcx + 0x229], bpl
000000014046f2f7 jb       0x14046f31c
000000014046f2f9 mov      eax, dword ptr [rcx + 0x22c]
000000014046f2ff test     sil, al
000000014046f302 je       0x14046f31c
000000014046f304 movzx    r9d, byte ptr [rbx + 4]
000000014046f309 lea      edx, [r10 + 0x75]
000000014046f30d mov      rcx, qword ptr [rcx + 0x218]
000000014046f314 mov      r8, r15
000000014046f317 call     0x140001bb0
000000014046f31c mov      rcx, qword ptr [rip + 0x4b0cdd]
000000014046f323 cmp      rcx, r14
000000014046f326 je       0x14047040c
000000014046f32c cmp      byte ptr [rcx + 0x229], bpl
000000014046f333 jb       0x14046f359
000000014046f335 mov      eax, dword ptr [rcx + 0x22c]
000000014046f33b test     sil, al
000000014046f33e je       0x14046f359
000000014046f340 movzx    r9d, byte ptr [rbx + 5]
000000014046f345 mov      edx, 0x76
000000014046f34a mov      rcx, qword ptr [rcx + 0x218]
000000014046f351 mov      r8, r15
000000014046f354 call     0x140001bb0
000000014046f359 mov      rcx, qword ptr [rip + 0x4b0ca0]
000000014046f360 cmp      rcx, r14
000000014046f363 je       0x14047040c
000000014046f369 cmp      byte ptr [rcx + 0x229], bpl
000000014046f370 jb       0x14046f396
000000014046f372 mov      eax, dword ptr [rcx + 0x22c]
000000014046f378 test     sil, al
000000014046f37b je       0x14046f396
000000014046f37d movzx    r9d, byte ptr [rbx + 0xa]
000000014046f382 mov      edx, 0x77
000000014046f387 mov      rcx, qword ptr [rcx + 0x218]
000000014046f38e mov      r8, r15
000000014046f391 call     0x140001bb0
000000014046f396 mov      rcx, qword ptr [rip + 0x4b0c63]
000000014046f39d cmp      rcx, r14
000000014046f3a0 je       0x14047040c
000000014046f3a6 cmp      byte ptr [rcx + 0x229], bpl
000000014046f3ad jb       0x14046f3d3
000000014046f3af mov      eax, dword ptr [rcx + 0x22c]
000000014046f3b5 test     sil, al
000000014046f3b8 je       0x14046f3d3
000000014046f3ba movzx    r9d, byte ptr [rbx + 0xb]
000000014046f3bf mov      edx, 0x78
000000014046f3c4 mov      rcx, qword ptr [rcx + 0x218]
000000014046f3cb mov      r8, r15
000000014046f3ce call     0x140001bb0
000000014046f3d3 mov      rcx, qword ptr [rip + 0x4b0c26]
000000014046f3da cmp      rcx, r14
000000014046f3dd je       0x14047040c
000000014046f3e3 cmp      byte ptr [rcx + 0x229], bpl
000000014046f3ea jb       0x14046f410
000000014046f3ec mov      eax, dword ptr [rcx + 0x22c]
000000014046f3f2 test     sil, al
000000014046f3f5 je       0x14046f410
000000014046f3f7 movzx    r9d, byte ptr [rbx + 0xc]
000000014046f3fc mov      edx, 0x79
000000014046f401 mov      rcx, qword ptr [rcx + 0x218]
000000014046f408 mov      r8, r15
000000014046f40b call     0x140001bb0
000000014046f410 mov      rcx, qword ptr [rip + 0x4b0be9]
000000014046f417 cmp      rcx, r14
000000014046f41a je       0x14047040c
000000014046f420 cmp      byte ptr [rcx + 0x229], bpl
000000014046f427 jb       0x14046f44d
000000014046f429 mov      eax, dword ptr [rcx + 0x22c]
000000014046f42f test     sil, al
000000014046f432 je       0x14046f44d
000000014046f434 movzx    r9d, byte ptr [rbx + 0xd]
000000014046f439 mov      edx, 0x7a
000000014046f43e mov      rcx, qword ptr [rcx + 0x218]
000000014046f445 mov      r8, r15
000000014046f448 call     0x140001bb0
000000014046f44d mov      rcx, qword ptr [rip + 0x4b0bac]
000000014046f454 cmp      rcx, r14
000000014046f457 je       0x14047040c
000000014046f45d cmp      byte ptr [rcx + 0x229], bpl
000000014046f464 jb       0x14046f48a
000000014046f466 mov      eax, dword ptr [rcx + 0x22c]
000000014046f46c test     sil, al
000000014046f46f je       0x14046f48a
000000014046f471 movzx    r9d, byte ptr [rbx + 0xe]
000000014046f476 mov      edx, 0x7b
000000014046f47b mov      rcx, qword ptr [rcx + 0x218]
000000014046f482 mov      r8, r15
000000014046f485 call     0x140001bb0
000000014046f48a mov      rcx, qword ptr [rip + 0x4b0b6f]
000000014046f491 cmp      rcx, r14
000000014046f494 je       0x14047040c
000000014046f49a cmp      byte ptr [rcx + 0x229], bpl
000000014046f4a1 jb       0x14046f4c7
000000014046f4a3 mov      eax, dword ptr [rcx + 0x22c]
000000014046f4a9 test     sil, al
000000014046f4ac je       0x14046f4c7
000000014046f4ae movzx    r9d, byte ptr [rbx + 0xf]
000000014046f4b3 mov      edx, 0x7c
000000014046f4b8 mov      rcx, qword ptr [rcx + 0x218]
000000014046f4bf mov      r8, r15
000000014046f4c2 call     0x140001bb0
000000014046f4c7 mov      rcx, qword ptr [rip + 0x4b0b32]
000000014046f4ce cmp      rcx, r14
000000014046f4d1 je       0x14047040c
000000014046f4d7 cmp      byte ptr [rcx + 0x229], bpl
000000014046f4de jb       0x14046f504
000000014046f4e0 mov      eax, dword ptr [rcx + 0x22c]
000000014046f4e6 test     sil, al
000000014046f4e9 je       0x14046f504
000000014046f4eb movzx    r9d, byte ptr [rbx + 0x10]
000000014046f4f0 mov      edx, 0x7d
000000014046f4f5 mov      rcx, qword ptr [rcx + 0x218]
000000014046f4fc mov      r8, r15
000000014046f4ff call     0x140001bb0
000000014046f504 mov      rcx, qword ptr [rip + 0x4b0af5]
000000014046f50b cmp      rcx, r14
000000014046f50e je       0x14047040c
000000014046f514 cmp      byte ptr [rcx + 0x229], bpl
000000014046f51b jb       0x14046f541
000000014046f51d mov      eax, dword ptr [rcx + 0x22c]
000000014046f523 test     sil, al
000000014046f526 je       0x14046f541
000000014046f528 movzx    r9d, byte ptr [rbx + 0x11]
000000014046f52d mov      edx, 0x7e
000000014046f532 mov      rcx, qword ptr [rcx + 0x218]
000000014046f539 mov      r8, r15
000000014046f53c call     0x140001bb0
000000014046f541 mov      rcx, qword ptr [rip + 0x4b0ab8]
000000014046f548 cmp      rcx, r14
000000014046f54b je       0x14047040c
000000014046f551 cmp      byte ptr [rcx + 0x229], bpl
000000014046f558 jb       0x14046f57e
000000014046f55a mov      eax, dword ptr [rcx + 0x22c]
000000014046f560 test     sil, al
000000014046f563 je       0x14046f57e
000000014046f565 movzx    r9d, byte ptr [rbx + 0x12]
000000014046f56a mov      edx, 0x7f
000000014046f56f mov      rcx, qword ptr [rcx + 0x218]
000000014046f576 mov      r8, r15
000000014046f579 call     0x140001bb0
000000014046f57e mov      rcx, qword ptr [rip + 0x4b0a7b]
000000014046f585 cmp      rcx, r14
000000014046f588 je       0x14047040c
000000014046f58e cmp      byte ptr [rcx + 0x229], bpl
000000014046f595 jb       0x14046f5bb
000000014046f597 mov      eax, dword ptr [rcx + 0x22c]
000000014046f59d test     sil, al
000000014046f5a0 je       0x14046f5bb
000000014046f5a2 movzx    r9d, byte ptr [rbx + 0x13]
000000014046f5a7 mov      edx, 0x80
000000014046f5ac mov      rcx, qword ptr [rcx + 0x218]
000000014046f5b3 mov      r8, r15
000000014046f5b6 call     0x140001bb0
000000014046f5bb mov      rcx, qword ptr [rip + 0x4b0a3e]
000000014046f5c2 cmp      rcx, r14
000000014046f5c5 je       0x14047040c
000000014046f5cb cmp      byte ptr [rcx + 0x229], bpl
000000014046f5d2 jb       0x14046f5f8
000000014046f5d4 mov      eax, dword ptr [rcx + 0x22c]
000000014046f5da test     sil, al
000000014046f5dd je       0x14046f5f8
000000014046f5df movzx    r9d, byte ptr [rbx + 0x14]
000000014046f5e4 mov      edx, 0x81
000000014046f5e9 mov      rcx, qword ptr [rcx + 0x218]
000000014046f5f0 mov      r8, r15
000000014046f5f3 call     0x140001bb0
000000014046f5f8 mov      rcx, qword ptr [rip + 0x4b0a01]
000000014046f5ff cmp      rcx, r14
000000014046f602 je       0x14047040c
000000014046f608 cmp      byte ptr [rcx + 0x229], bpl
000000014046f60f jb       0x14046f635
000000014046f611 mov      eax, dword ptr [rcx + 0x22c]
000000014046f617 test     sil, al
000000014046f61a je       0x14046f635
000000014046f61c movzx    r9d, byte ptr [rbx + 0x1c]
000000014046f621 mov      edx, 0x82
000000014046f626 mov      rcx, qword ptr [rcx + 0x218]
000000014046f62d mov      r8, r15
000000014046f630 call     0x140001bb0
000000014046f635 mov      rcx, qword ptr [rip + 0x4b09c4]
000000014046f63c cmp      rcx, r14
000000014046f63f je       0x14047040c
000000014046f645 cmp      byte ptr [rcx + 0x229], bpl
000000014046f64c jb       0x14046f672
000000014046f64e mov      eax, dword ptr [rcx + 0x22c]
000000014046f654 test     sil, al
000000014046f657 je       0x14046f672
000000014046f659 movzx    r9d, byte ptr [rbx + 0x1d]
000000014046f65e mov      edx, 0x83
000000014046f663 mov      rcx, qword ptr [rcx + 0x218]
000000014046f66a mov      r8, r15
000000014046f66d call     0x140001bb0
000000014046f672 mov      rcx, qword ptr [rip + 0x4b0987]
000000014046f679 cmp      rcx, r14
000000014046f67c je       0x14047040c
000000014046f682 cmp      byte ptr [rcx + 0x229], bpl
000000014046f689 jb       0x14046f6af
000000014046f68b mov      eax, dword ptr [rcx + 0x22c]
000000014046f691 test     sil, al
000000014046f694 je       0x14046f6af
000000014046f696 movzx    r9d, byte ptr [rbx + 0x1e]
000000014046f69b mov      edx, 0x84
000000014046f6a0 mov      rcx, qword ptr [rcx + 0x218]
000000014046f6a7 mov      r8, r15
000000014046f6aa call     0x140001bb0
000000014046f6af mov      rcx, qword ptr [rip + 0x4b094a]
000000014046f6b6 cmp      rcx, r14
000000014046f6b9 je       0x14047040c
000000014046f6bf cmp      byte ptr [rcx + 0x229], bpl
000000014046f6c6 jb       0x14046f6ea
000000014046f6c8 mov      eax, dword ptr [rcx + 0x22c]
000000014046f6ce test     sil, al
000000014046f6d1 je       0x14046f6ea
000000014046f6d3 mov      rcx, qword ptr [rcx + 0x218]
000000014046f6da mov      edx, 0x85
000000014046f6df xor      r9d, r9d
000000014046f6e2 mov      r8, r15
000000014046f6e5 call     0x140001bb0
000000014046f6ea mov      rcx, qword ptr [rip + 0x4b090f]
000000014046f6f1 cmp      rcx, r14
000000014046f6f4 je       0x14047040c
000000014046f6fa cmp      byte ptr [rcx + 0x229], bpl
000000014046f701 jb       0x14046f72d
000000014046f703 mov      eax, dword ptr [rcx + 0x22c]
000000014046f709 test     sil, al
000000014046f70c je       0x14046f72d
000000014046f70e movzx    eax, byte ptr [rbx + 0x15]
000000014046f712 mov      edx, 0x86
000000014046f717 mov      rcx, qword ptr [rcx + 0x218]
000000014046f71e xor      r9d, r9d
000000014046f721 mov      r8, r15
000000014046f724 mov      dword ptr [rsp + 0x20], eax
000000014046f728 call     0x140001bec
000000014046f72d mov      rcx, qword ptr [rip + 0x4b08cc]
000000014046f734 cmp      rcx, r14
000000014046f737 je       0x14047040c
000000014046f73d cmp      byte ptr [rcx + 0x229], bpl
000000014046f744 jb       0x14046f770
000000014046f746 mov      eax, dword ptr [rcx + 0x22c]
000000014046f74c test     sil, al
000000014046f74f je       0x14046f770
000000014046f751 movzx    eax, byte ptr [rbx + 0x17]
000000014046f755 mov      edx, 0x87
000000014046f75a mov      rcx, qword ptr [rcx + 0x218]
000000014046f761 xor      r9d, r9d
000000014046f764 mov      r8, r15
000000014046f767 mov      dword ptr [rsp + 0x20], eax
000000014046f76b call     0x140001bec
000000014046f770 mov      rcx, qword ptr [rip + 0x4b0889]
000000014046f777 cmp      rcx, r14
000000014046f77a je       0x14047040c
000000014046f780 cmp      byte ptr [rcx + 0x229], bpl
000000014046f787 jb       0x14046f7b3
000000014046f789 mov      eax, dword ptr [rcx + 0x22c]
000000014046f78f test     sil, al
000000014046f792 je       0x14046f7b3
000000014046f794 movzx    eax, byte ptr [rbx + 0x19]
000000014046f798 mov      edx, 0x88
000000014046f79d mov      rcx, qword ptr [rcx + 0x218]
000000014046f7a4 xor      r9d, r9d
000000014046f7a7 mov      r8, r15
000000014046f7aa mov      dword ptr [rsp + 0x20], eax
000000014046f7ae call     0x140001bec
000000014046f7b3 mov      rcx, qword ptr [rip + 0x4b0846]
000000014046f7ba cmp      rcx, r14
000000014046f7bd je       0x14047040c
000000014046f7c3 cmp      byte ptr [rcx + 0x229], bpl
000000014046f7ca jb       0x14046f7f5
000000014046f7cc mov      eax, dword ptr [rcx + 0x22c]
000000014046f7d2 test     sil, al
000000014046f7d5 je       0x14046f7f5
000000014046f7d7 mov      eax, dword ptr [rbx + 0x30]
000000014046f7da mov      edx, 0x89
000000014046f7df mov      rcx, qword ptr [rcx + 0x218]
000000014046f7e6 xor      r9d, r9d
000000014046f7e9 mov      r8, r15
000000014046f7ec mov      dword ptr [rsp + 0x20], eax
000000014046f7f0 call     0x140001bec
000000014046f7f5 mov      rcx, qword ptr [rip + 0x4b0804]
000000014046f7fc cmp      rcx, r14
000000014046f7ff je       0x14047040c
000000014046f805 cmp      byte ptr [rcx + 0x229], bpl
000000014046f80c jb       0x14046f837
000000014046f80e mov      eax, dword ptr [rcx + 0x22c]
000000014046f814 test     sil, al
000000014046f817 je       0x14046f837
000000014046f819 mov      eax, dword ptr [rbx + 0x38]
000000014046f81c mov      edx, 0x8a
000000014046f821 mov      rcx, qword ptr [rcx + 0x218]
000000014046f828 xor      r9d, r9d
000000014046f82b mov      r8, r15
000000014046f82e mov      dword ptr [rsp + 0x20], eax
000000014046f832 call     0x140001bec
000000014046f837 mov      rcx, qword ptr [rip + 0x4b07c2]
000000014046f83e cmp      rcx, r14
000000014046f841 je       0x14047040c
000000014046f847 cmp      byte ptr [rcx + 0x229], bpl
000000014046f84e jb       0x14046f879
000000014046f850 mov      eax, dword ptr [rcx + 0x22c]
000000014046f856 test     sil, al
000000014046f859 je       0x14046f879
000000014046f85b movzx    eax, byte ptr [rbx]
000000014046f85e mov      edx, 0x8b
000000014046f863 mov      rcx, qword ptr [rcx + 0x218]
000000014046f86a xor      r9d, r9d
000000014046f86d mov      r8, r15
000000014046f870 mov      dword ptr [rsp + 0x20], eax
000000014046f874 call     0x140001bec
000000014046f879 mov      rcx, qword ptr [rip + 0x4b0780]
000000014046f880 cmp      rcx, r14
000000014046f883 je       0x14047040c
000000014046f889 cmp      byte ptr [rcx + 0x229], bpl
000000014046f890 jb       0x14046f8bc
000000014046f892 mov      eax, dword ptr [rcx + 0x22c]
000000014046f898 test     sil, al
000000014046f89b je       0x14046f8bc
000000014046f89d movzx    eax, byte ptr [rbx + 2]
000000014046f8a1 mov      edx, 0x8c
000000014046f8a6 mov      rcx, qword ptr [rcx + 0x218]
000000014046f8ad xor      r9d, r9d
000000014046f8b0 mov      r8, r15
000000014046f8b3 mov      dword ptr [rsp + 0x20], eax
000000014046f8b7 call     0x140001bec
000000014046f8bc mov      rcx, qword ptr [rip + 0x4b073d]
000000014046f8c3 cmp      rcx, r14
000000014046f8c6 je       0x14047040c
000000014046f8cc cmp      byte ptr [rcx + 0x229], bpl
000000014046f8d3 jb       0x14046f903
000000014046f8d5 mov      eax, dword ptr [rcx + 0x22c]
000000014046f8db test     sil, al
000000014046f8de je       0x14046f903
000000014046f8e0 mov      eax, dword ptr [rbx + 0x40]
000000014046f8e3 mov      edx, 0x8d
000000014046f8e8 mov      rcx, qword ptr [rcx + 0x218]
000000014046f8ef xor      r9d, r9d
000000014046f8f2 mov      dword ptr [rsp + 0x28], eax
000000014046f8f6 mov      r8, r15
000000014046f8f9 and      dword ptr [rsp + 0x20], 0
000000014046f8fe call     0x140001c34
000000014046f903 mov      rcx, qword ptr [rip + 0x4b06f6]
000000014046f90a cmp      rcx, r14
000000014046f90d je       0x14047040c
000000014046f913 cmp      byte ptr [rcx + 0x229], bpl
000000014046f91a jb       0x14046f949
000000014046f91c mov      eax, dword ptr [rcx + 0x22c]
000000014046f922 test     sil, al
000000014046f925 je       0x14046f949
000000014046f927 mov      eax, dword ptr [rbx + 0x44]
000000014046f92a mov      edx, 0x8e
000000014046f92f mov      rcx, qword ptr [rcx + 0x218]
000000014046f936 xor      r9d, r9d
000000014046f939 mov      dword ptr [rsp + 0x28], eax
000000014046f93d mov      r8, r15
000000014046f940 mov      dword ptr [rsp + 0x20], edi
000000014046f944 call     0x140001c34
000000014046f949 mov      rcx, qword ptr [rip + 0x4b06b0]
000000014046f950 cmp      rcx, r14
000000014046f953 je       0x14047040c
000000014046f959 cmp      byte ptr [rcx + 0x229], bpl
000000014046f960 jb       0x14046f98f
000000014046f962 mov      eax, dword ptr [rcx + 0x22c]
000000014046f968 test     sil, al
000000014046f96b je       0x14046f98f
000000014046f96d mov      eax, dword ptr [rbx + 0x48]
000000014046f970 mov      edx, 0x8f
000000014046f975 mov      rcx, qword ptr [rcx + 0x218]
000000014046f97c xor      r9d, r9d
000000014046f97f mov      dword ptr [rsp + 0x28], eax
000000014046f983 mov      r8, r15
000000014046f986 mov      dword ptr [rsp + 0x20], esi
000000014046f98a call     0x140001c34
000000014046f98f mov      rcx, qword ptr [rip + 0x4b066a]
000000014046f996 cmp      rcx, r14
000000014046f999 je       0x14047040c
000000014046f99f mov      r12d, 3
000000014046f9a5 cmp      byte ptr [rcx + 0x229], bpl
000000014046f9ac jb       0x14046f9dc
000000014046f9ae mov      eax, dword ptr [rcx + 0x22c]
000000014046f9b4 test     sil, al
000000014046f9b7 je       0x14046f9dc
000000014046f9b9 mov      eax, dword ptr [rbx + 0x4c]
000000014046f9bc mov      edx, 0x90
000000014046f9c1 mov      rcx, qword ptr [rcx + 0x218]
000000014046f9c8 xor      r9d, r9d
000000014046f9cb mov      dword ptr [rsp + 0x28], eax
000000014046f9cf mov      r8, r15
000000014046f9d2 mov      dword ptr [rsp + 0x20], r12d
000000014046f9d7 call     0x140001c34
000000014046f9dc mov      rcx, qword ptr [rip + 0x4b061d]
000000014046f9e3 cmp      rcx, r14
000000014046f9e6 je       0x14047040c
000000014046f9ec cmp      byte ptr [rcx + 0x229], bpl
000000014046f9f3 jb       0x14046fa26
000000014046f9f5 mov      eax, dword ptr [rcx + 0x22c]
000000014046f9fb test     sil, al
000000014046f9fe je       0x14046fa26
000000014046fa00 mov      eax, dword ptr [rbx + 0xa0]
000000014046fa06 mov      edx, 0x91
000000014046fa0b mov      rcx, qword ptr [rcx + 0x218]
000000014046fa12 xor      r9d, r9d
000000014046fa15 mov      dword ptr [rsp + 0x28], eax
000000014046fa19 mov      r8, r15
000000014046fa1c and      dword ptr [rsp + 0x20], 0
000000014046fa21 call     0x140001c34
000000014046fa26 mov      rcx, qword ptr [rip + 0x4b05d3]
000000014046fa2d cmp      rcx, r14
000000014046fa30 je       0x14047040c
000000014046fa36 cmp      byte ptr [rcx + 0x229], bpl
000000014046fa3d jb       0x14046fa6f
000000014046fa3f mov      eax, dword ptr [rcx + 0x22c]
000000014046fa45 test     sil, al
000000014046fa48 je       0x14046fa6f
000000014046fa4a mov      eax, dword ptr [rbx + 0xa4]
000000014046fa50 mov      edx, 0x92
000000014046fa55 mov      rcx, qword ptr [rcx + 0x218]
000000014046fa5c xor      r9d, r9d
000000014046fa5f mov      dword ptr [rsp + 0x28], eax
000000014046fa63 mov      r8, r15
000000014046fa66 mov      dword ptr [rsp + 0x20], edi
000000014046fa6a call     0x140001c34
000000014046fa6f mov      rcx, qword ptr [rip + 0x4b058a]
000000014046fa76 cmp      rcx, r14
000000014046fa79 je       0x14047040c
000000014046fa7f cmp      byte ptr [rcx + 0x229], bpl
000000014046fa86 jb       0x14046fab8
000000014046fa88 mov      eax, dword ptr [rcx + 0x22c]
000000014046fa8e test     sil, al
000000014046fa91 je       0x14046fab8
000000014046fa93 mov      eax, dword ptr [rbx + 0xa8]
000000014046fa99 mov      edx, 0x93
000000014046fa9e mov      rcx, qword ptr [rcx + 0x218]
000000014046faa5 xor      r9d, r9d
000000014046faa8 mov      dword ptr [rsp + 0x28], eax
000000014046faac mov      r8, r15
000000014046faaf mov      dword ptr [rsp + 0x20], esi
000000014046fab3 call     0x140001c34
000000014046fab8 mov      rcx, qword ptr [rip + 0x4b0541]
000000014046fabf cmp      rcx, r14
000000014046fac2 je       0x14047040c
000000014046fac8 cmp      byte ptr [rcx + 0x229], bpl
000000014046facf jb       0x14046fb02
000000014046fad1 mov      eax, dword ptr [rcx + 0x22c]
000000014046fad7 test     sil, al
000000014046fada je       0x14046fb02
000000014046fadc mov      eax, dword ptr [rbx + 0xac]
000000014046fae2 mov      edx, 0x94
000000014046fae7 mov      rcx, qword ptr [rcx + 0x218]
000000014046faee xor      r9d, r9d
000000014046faf1 mov      dword ptr [rsp + 0x28], eax
000000014046faf5 mov      r8, r15
000000014046faf8 mov      dword ptr [rsp + 0x20], r12d
000000014046fafd call     0x140001c34
000000014046fb02 mov      rcx, qword ptr [rip + 0x4b04f7]
000000014046fb09 cmp      rcx, r14
000000014046fb0c je       0x14047040c
000000014046fb12 cmp      byte ptr [rcx + 0x229], bpl
000000014046fb19 jb       0x14046fb49
000000014046fb1b mov      eax, dword ptr [rcx + 0x22c]
000000014046fb21 test     sil, al
000000014046fb24 je       0x14046fb49
000000014046fb26 mov      eax, dword ptr [rbx + 0x70]
000000014046fb29 mov      edx, 0x95
000000014046fb2e mov      rcx, qword ptr [rcx + 0x218]
000000014046fb35 xor      r9d, r9d
000000014046fb38 mov      dword ptr [rsp + 0x28], eax
000000014046fb3c mov      r8, r15
000000014046fb3f and      dword ptr [rsp + 0x20], 0
000000014046fb44 call     0x140001c34
000000014046fb49 mov      rcx, qword ptr [rip + 0x4b04b0]
000000014046fb50 cmp      rcx, r14
000000014046fb53 je       0x14047040c
000000014046fb59 cmp      byte ptr [rcx + 0x229], bpl
000000014046fb60 jb       0x14046fb8f
000000014046fb62 mov      eax, dword ptr [rcx + 0x22c]
000000014046fb68 test     sil, al
000000014046fb6b je       0x14046fb8f
000000014046fb6d mov      eax, dword ptr [rbx + 0x74]
000000014046fb70 mov      edx, 0x96
000000014046fb75 mov      rcx, qword ptr [rcx + 0x218]
000000014046fb7c xor      r9d, r9d
000000014046fb7f mov      dword ptr [rsp + 0x28], eax
000000014046fb83 mov      r8, r15
000000014046fb86 mov      dword ptr [rsp + 0x20], edi
000000014046fb8a call     0x140001c34
000000014046fb8f mov      rcx, qword ptr [rip + 0x4b046a]
000000014046fb96 cmp      rcx, r14
000000014046fb99 je       0x14047040c
000000014046fb9f cmp      byte ptr [rcx + 0x229], bpl
000000014046fba6 jb       0x14046fbd5
000000014046fba8 mov      eax, dword ptr [rcx + 0x22c]
000000014046fbae test     sil, al
000000014046fbb1 je       0x14046fbd5
000000014046fbb3 mov      eax, dword ptr [rbx + 0x78]
000000014046fbb6 mov      edx, 0x97
000000014046fbbb mov      rcx, qword ptr [rcx + 0x218]
000000014046fbc2 xor      r9d, r9d
000000014046fbc5 mov      dword ptr [rsp + 0x28], eax
000000014046fbc9 mov      r8, r15
000000014046fbcc mov      dword ptr [rsp + 0x20], esi
000000014046fbd0 call     0x140001c34
000000014046fbd5 mov      rcx, qword ptr [rip + 0x4b0424]
000000014046fbdc cmp      rcx, r14
000000014046fbdf je       0x14047040c
000000014046fbe5 cmp      byte ptr [rcx + 0x229], bpl
000000014046fbec jb       0x14046fc1c
000000014046fbee mov      eax, dword ptr [rcx + 0x22c]
000000014046fbf4 test     sil, al
000000014046fbf7 je       0x14046fc1c
000000014046fbf9 mov      eax, dword ptr [rbx + 0x7c]
000000014046fbfc mov      edx, 0x98
000000014046fc01 mov      rcx, qword ptr [rcx + 0x218]
000000014046fc08 xor      r9d, r9d
000000014046fc0b mov      dword ptr [rsp + 0x28], eax
000000014046fc0f mov      r8, r15
000000014046fc12 mov      dword ptr [rsp + 0x20], r12d
000000014046fc17 call     0x140001c34
000000014046fc1c mov      rcx, qword ptr [rip + 0x4b03dd]
000000014046fc23 cmp      rcx, r14
000000014046fc26 je       0x14047040c
000000014046fc2c cmp      byte ptr [rcx + 0x229], bpl
000000014046fc33 jb       0x14046fc66
000000014046fc35 mov      eax, dword ptr [rcx + 0x22c]
000000014046fc3b test     sil, al
000000014046fc3e je       0x14046fc66
000000014046fc40 mov      eax, dword ptr [rbx + 0xd0]
000000014046fc46 mov      edx, 0x99
000000014046fc4b mov      rcx, qword ptr [rcx + 0x218]
000000014046fc52 xor      r9d, r9d
000000014046fc55 mov      dword ptr [rsp + 0x28], eax
000000014046fc59 mov      r8, r15
000000014046fc5c and      dword ptr [rsp + 0x20], 0
000000014046fc61 call     0x140001c34
000000014046fc66 mov      rcx, qword ptr [rip + 0x4b0393]
000000014046fc6d cmp      rcx, r14
000000014046fc70 je       0x14047040c
000000014046fc76 cmp      byte ptr [rcx + 0x229], bpl
000000014046fc7d jb       0x14046fcaf
000000014046fc7f mov      eax, dword ptr [rcx + 0x22c]
000000014046fc85 test     sil, al
000000014046fc88 je       0x14046fcaf
000000014046fc8a mov      eax, dword ptr [rbx + 0xd4]
000000014046fc90 mov      edx, 0x9a
000000014046fc95 mov      rcx, qword ptr [rcx + 0x218]
000000014046fc9c xor      r9d, r9d
000000014046fc9f mov      dword ptr [rsp + 0x28], eax
000000014046fca3 mov      r8, r15
000000014046fca6 mov      dword ptr [rsp + 0x20], edi
000000014046fcaa call     0x140001c34
000000014046fcaf mov      rcx, qword ptr [rip + 0x4b034a]
000000014046fcb6 cmp      rcx, r14
000000014046fcb9 je       0x14047040c
000000014046fcbf cmp      byte ptr [rcx + 0x229], bpl
000000014046fcc6 jb       0x14046fcf8
000000014046fcc8 mov      eax, dword ptr [rcx + 0x22c]
000000014046fcce test     sil, al
000000014046fcd1 je       0x14046fcf8
000000014046fcd3 mov      eax, dword ptr [rbx + 0xd8]
000000014046fcd9 mov      edx, 0x9b
000000014046fcde mov      rcx, qword ptr [rcx + 0x218]
000000014046fce5 xor      r9d, r9d
000000014046fce8 mov      dword ptr [rsp + 0x28], eax
000000014046fcec mov      r8, r15
000000014046fcef mov      dword ptr [rsp + 0x20], esi
000000014046fcf3 call     0x140001c34
000000014046fcf8 mov      rcx, qword ptr [rip + 0x4b0301]
000000014046fcff cmp      rcx, r14
000000014046fd02 je       0x14047040c
000000014046fd08 cmp      byte ptr [rcx + 0x229], bpl
000000014046fd0f jb       0x14046fd42
000000014046fd11 mov      eax, dword ptr [rcx + 0x22c]
000000014046fd17 test     sil, al
000000014046fd1a je       0x14046fd42
000000014046fd1c mov      eax, dword ptr [rbx + 0xdc]
000000014046fd22 mov      edx, 0x9c
000000014046fd27 mov      rcx, qword ptr [rcx + 0x218]
000000014046fd2e xor      r9d, r9d
000000014046fd31 mov      dword ptr [rsp + 0x28], eax
000000014046fd35 mov      r8, r15
000000014046fd38 mov      dword ptr [rsp + 0x20], r12d
000000014046fd3d call     0x140001c34
000000014046fd42 mov      rcx, qword ptr [rip + 0x4b02b7]
000000014046fd49 cmp      rcx, r14
000000014046fd4c je       0x14047040c
000000014046fd52 cmp      byte ptr [rcx + 0x229], bpl
000000014046fd59 jb       0x14046fd7d
000000014046fd5b mov      eax, dword ptr [rcx + 0x22c]
000000014046fd61 test     sil, al
000000014046fd64 je       0x14046fd7d
000000014046fd66 mov      rcx, qword ptr [rcx + 0x218]
000000014046fd6d mov      edx, 0x9d
000000014046fd72 mov      r9d, edi
000000014046fd75 mov      r8, r15
000000014046fd78 call     0x140001bb0
000000014046fd7d mov      rcx, qword ptr [rip + 0x4b027c]
000000014046fd84 cmp      rcx, r14
000000014046fd87 je       0x14047040c
000000014046fd8d cmp      byte ptr [rcx + 0x229], bpl
000000014046fd94 jb       0x14046fdc0
000000014046fd96 mov      eax, dword ptr [rcx + 0x22c]
000000014046fd9c test     sil, al
000000014046fd9f je       0x14046fdc0
000000014046fda1 movzx    eax, byte ptr [rbx + 0x16]
000000014046fda5 mov      edx, 0x9e
000000014046fdaa mov      rcx, qword ptr [rcx + 0x218]
000000014046fdb1 mov      r9d, edi
000000014046fdb4 mov      r8, r15
000000014046fdb7 mov      dword ptr [rsp + 0x20], eax
000000014046fdbb call     0x140001bec
000000014046fdc0 mov      rcx, qword ptr [rip + 0x4b0239]
000000014046fdc7 cmp      rcx, r14
000000014046fdca je       0x14047040c
000000014046fdd0 cmp      byte ptr [rcx + 0x229], bpl
000000014046fdd7 jb       0x14046fe03
000000014046fdd9 mov      eax, dword ptr [rcx + 0x22c]
000000014046fddf test     sil, al
000000014046fde2 je       0x14046fe03
000000014046fde4 movzx    eax, byte ptr [rbx + 0x18]
000000014046fde8 mov      edx, 0x9f
000000014046fded mov      rcx, qword ptr [rcx + 0x218]
000000014046fdf4 mov      r9d, edi
000000014046fdf7 mov      r8, r15
000000014046fdfa mov      dword ptr [rsp + 0x20], eax
000000014046fdfe call     0x140001bec
000000014046fe03 mov      rcx, qword ptr [rip + 0x4b01f6]
000000014046fe0a cmp      rcx, r14
000000014046fe0d je       0x14047040c
000000014046fe13 cmp      byte ptr [rcx + 0x229], bpl
000000014046fe1a jb       0x14046fe46
000000014046fe1c mov      eax, dword ptr [rcx + 0x22c]
000000014046fe22 test     sil, al
000000014046fe25 je       0x14046fe46
000000014046fe27 movzx    eax, byte ptr [rbx + 0x1a]
000000014046fe2b mov      edx, 0xa0
000000014046fe30 mov      rcx, qword ptr [rcx + 0x218]
000000014046fe37 mov      r9d, edi
000000014046fe3a mov      r8, r15
000000014046fe3d mov      dword ptr [rsp + 0x20], eax
000000014046fe41 call     0x140001bec
000000014046fe46 mov      rcx, qword ptr [rip + 0x4b01b3]
000000014046fe4d cmp      rcx, r14
000000014046fe50 je       0x14047040c
000000014046fe56 cmp      byte ptr [rcx + 0x229], bpl
000000014046fe5d jb       0x14046fe88
000000014046fe5f mov      eax, dword ptr [rcx + 0x22c]
000000014046fe65 test     sil, al
000000014046fe68 je       0x14046fe88
000000014046fe6a mov      eax, dword ptr [rbx + 0x34]
000000014046fe6d mov      edx, 0xa1
000000014046fe72 mov      rcx, qword ptr [rcx + 0x218]
000000014046fe79 mov      r9d, edi
000000014046fe7c mov      r8, r15
000000014046fe7f mov      dword ptr [rsp + 0x20], eax
000000014046fe83 call     0x140001bec
000000014046fe88 mov      rcx, qword ptr [rip + 0x4b0171]
000000014046fe8f cmp      rcx, r14
000000014046fe92 je       0x14047040c
000000014046fe98 cmp      byte ptr [rcx + 0x229], bpl
000000014046fe9f jb       0x14046feca
000000014046fea1 mov      eax, dword ptr [rcx + 0x22c]
000000014046fea7 test     sil, al
000000014046feaa je       0x14046feca
000000014046feac mov      eax, dword ptr [rbx + 0x3c]
000000014046feaf mov      edx, 0xa2
000000014046feb4 mov      rcx, qword ptr [rcx + 0x218]
000000014046febb mov      r9d, edi
000000014046febe mov      r8, r15
000000014046fec1 mov      dword ptr [rsp + 0x20], eax
000000014046fec5 call     0x140001bec
000000014046feca mov      rcx, qword ptr [rip + 0x4b012f]
000000014046fed1 cmp      rcx, r14
000000014046fed4 je       0x14047040c
000000014046feda cmp      byte ptr [rcx + 0x229], bpl
000000014046fee1 jb       0x14046ff0d
000000014046fee3 mov      eax, dword ptr [rcx + 0x22c]
000000014046fee9 test     sil, al
000000014046feec je       0x14046ff0d
000000014046feee movzx    eax, byte ptr [rbx + 1]
000000014046fef2 mov      edx, 0xa3
000000014046fef7 mov      rcx, qword ptr [rcx + 0x218]
000000014046fefe mov      r9d, edi
000000014046ff01 mov      r8, r15
000000014046ff04 mov      dword ptr [rsp + 0x20], eax
000000014046ff08 call     0x140001bec
000000014046ff0d mov      rcx, qword ptr [rip + 0x4b00ec]
000000014046ff14 cmp      rcx, r14
000000014046ff17 je       0x14047040c
000000014046ff1d cmp      byte ptr [rcx + 0x229], bpl
000000014046ff24 jb       0x14046ff50
000000014046ff26 mov      eax, dword ptr [rcx + 0x22c]
000000014046ff2c test     sil, al
000000014046ff2f je       0x14046ff50
000000014046ff31 movzx    eax, byte ptr [rbx + 3]
000000014046ff35 mov      edx, 0xa4
000000014046ff3a mov      rcx, qword ptr [rcx + 0x218]
000000014046ff41 mov      r9d, edi
000000014046ff44 mov      r8, r15
000000014046ff47 mov      dword ptr [rsp + 0x20], eax
000000014046ff4b call     0x140001bec
000000014046ff50 mov      rcx, qword ptr [rip + 0x4b00a9]
000000014046ff57 cmp      rcx, r14
000000014046ff5a je       0x14047040c
000000014046ff60 cmp      byte ptr [rcx + 0x229], bpl
000000014046ff67 jb       0x14046ff97
000000014046ff69 mov      eax, dword ptr [rcx + 0x22c]
000000014046ff6f test     sil, al
000000014046ff72 je       0x14046ff97
000000014046ff74 mov      eax, dword ptr [rbx + 0x58]
000000014046ff77 mov      edx, 0xa5
000000014046ff7c mov      rcx, qword ptr [rcx + 0x218]
000000014046ff83 mov      r9d, edi
000000014046ff86 mov      dword ptr [rsp + 0x28], eax
000000014046ff8a mov      r8, r15
000000014046ff8d and      dword ptr [rsp + 0x20], 0
000000014046ff92 call     0x140001c34
000000014046ff97 mov      rcx, qword ptr [rip + 0x4b0062]
000000014046ff9e cmp      rcx, r14
000000014046ffa1 je       0x14047040c
000000014046ffa7 cmp      byte ptr [rcx + 0x229], bpl
000000014046ffae jb       0x14046ffdd
000000014046ffb0 mov      eax, dword ptr [rcx + 0x22c]
000000014046ffb6 test     sil, al
000000014046ffb9 je       0x14046ffdd
000000014046ffbb mov      eax, dword ptr [rbx + 0x5c]
000000014046ffbe mov      edx, 0xa6
000000014046ffc3 mov      rcx, qword ptr [rcx + 0x218]
000000014046ffca mov      r9d, edi
000000014046ffcd mov      dword ptr [rsp + 0x28], eax
000000014046ffd1 mov      r8, r15
000000014046ffd4 mov      dword ptr [rsp + 0x20], edi
000000014046ffd8 call     0x140001c34
000000014046ffdd mov      rcx, qword ptr [rip + 0x4b001c]
000000014046ffe4 cmp      rcx, r14
000000014046ffe7 je       0x14047040c
000000014046ffed cmp      byte ptr [rcx + 0x229], bpl
000000014046fff4 jb       0x140470023
000000014046fff6 mov      eax, dword ptr [rcx + 0x22c]
000000014046fffc test     sil, al
000000014046ffff je       0x140470023
0000000140470001 mov      eax, dword ptr [rbx + 0x60]
0000000140470004 mov      edx, 0xa7
0000000140470009 mov      rcx, qword ptr [rcx + 0x218]
0000000140470010 mov      r9d, edi
0000000140470013 mov      dword ptr [rsp + 0x28], eax
0000000140470017 mov      r8, r15
000000014047001a mov      dword ptr [rsp + 0x20], esi
000000014047001e call     0x140001c34
0000000140470023 mov      rcx, qword ptr [rip + 0x4affd6]
000000014047002a cmp      rcx, r14
000000014047002d je       0x14047040c
0000000140470033 cmp      byte ptr [rcx + 0x229], bpl
000000014047003a jb       0x14047006a
000000014047003c mov      eax, dword ptr [rcx + 0x22c]
0000000140470042 test     sil, al
0000000140470045 je       0x14047006a
0000000140470047 mov      eax, dword ptr [rbx + 0x64]
000000014047004a mov      edx, 0xa8
000000014047004f mov      rcx, qword ptr [rcx + 0x218]
0000000140470056 mov      r9d, edi
0000000140470059 mov      dword ptr [rsp + 0x28], eax
000000014047005d mov      r8, r15
0000000140470060 mov      dword ptr [rsp + 0x20], r12d
0000000140470065 call     0x140001c34
000000014047006a mov      rcx, qword ptr [rip + 0x4aff8f]
0000000140470071 cmp      rcx, r14
0000000140470074 je       0x14047040c
000000014047007a cmp      byte ptr [rcx + 0x229], bpl
0000000140470081 jb       0x1404700b4
0000000140470083 mov      eax, dword ptr [rcx + 0x22c]
0000000140470089 test     sil, al
000000014047008c je       0x1404700b4
000000014047008e mov      eax, dword ptr [rbx + 0xb8]
0000000140470094 mov      edx, 0xa9
0000000140470099 mov      rcx, qword ptr [rcx + 0x218]
00000001404700a0 mov      r9d, edi
00000001404700a3 mov      dword ptr [rsp + 0x28], eax
00000001404700a7 mov      r8, r15
00000001404700aa and      dword ptr [rsp + 0x20], 0
00000001404700af call     0x140001c34
00000001404700b4 mov      rcx, qword ptr [rip + 0x4aff45]
00000001404700bb cmp      rcx, r14
00000001404700be je       0x14047040c
00000001404700c4 cmp      byte ptr [rcx + 0x229], bpl
00000001404700cb jb       0x1404700fd
00000001404700cd mov      eax, dword ptr [rcx + 0x22c]
00000001404700d3 test     sil, al
00000001404700d6 je       0x1404700fd
00000001404700d8 mov      eax, dword ptr [rbx + 0xbc]
00000001404700de mov      edx, 0xaa
00000001404700e3 mov      rcx, qword ptr [rcx + 0x218]
00000001404700ea mov      r9d, edi
00000001404700ed mov      dword ptr [rsp + 0x28], eax
00000001404700f1 mov      r8, r15
00000001404700f4 mov      dword ptr [rsp + 0x20], edi
00000001404700f8 call     0x140001c34
00000001404700fd mov      rcx, qword ptr [rip + 0x4afefc]
0000000140470104 cmp      rcx, r14
0000000140470107 je       0x14047040c
000000014047010d cmp      byte ptr [rcx + 0x229], bpl
0000000140470114 jb       0x140470146
0000000140470116 mov      eax, dword ptr [rcx + 0x22c]
000000014047011c test     sil, al
000000014047011f je       0x140470146
0000000140470121 mov      eax, dword ptr [rbx + 0xc0]
0000000140470127 mov      edx, 0xab
000000014047012c mov      rcx, qword ptr [rcx + 0x218]
0000000140470133 mov      r9d, edi
0000000140470136 mov      dword ptr [rsp + 0x28], eax
000000014047013a mov      r8, r15
000000014047013d mov      dword ptr [rsp + 0x20], esi
0000000140470141 call     0x140001c34
0000000140470146 mov      rcx, qword ptr [rip + 0x4afeb3]
000000014047014d cmp      rcx, r14
0000000140470150 je       0x14047040c
0000000140470156 cmp      byte ptr [rcx + 0x229], bpl
000000014047015d jb       0x140470190
000000014047015f mov      eax, dword ptr [rcx + 0x22c]
0000000140470165 test     sil, al
0000000140470168 je       0x140470190
000000014047016a mov      eax, dword ptr [rbx + 0xc4]
0000000140470170 mov      edx, 0xac
0000000140470175 mov      rcx, qword ptr [rcx + 0x218]
000000014047017c mov      r9d, edi
000000014047017f mov      dword ptr [rsp + 0x28], eax
0000000140470183 mov      r8, r15
0000000140470186 mov      dword ptr [rsp + 0x20], r12d
000000014047018b call     0x140001c34
0000000140470190 mov      rcx, qword ptr [rip + 0x4afe69]
0000000140470197 cmp      rcx, r14
000000014047019a je       0x14047040c
00000001404701a0 cmp      byte ptr [rcx + 0x229], bpl
00000001404701a7 jb       0x1404701da
00000001404701a9 mov      eax, dword ptr [rcx + 0x22c]
00000001404701af test     sil, al
00000001404701b2 je       0x1404701da
00000001404701b4 mov      eax, dword ptr [rbx + 0x88]
00000001404701ba mov      edx, 0xad
00000001404701bf mov      rcx, qword ptr [rcx + 0x218]
00000001404701c6 mov      r9d, edi
00000001404701c9 mov      dword ptr [rsp + 0x28], eax
00000001404701cd mov      r8, r15
00000001404701d0 and      dword ptr [rsp + 0x20], 0
00000001404701d5 call     0x140001c34
00000001404701da mov      rcx, qword ptr [rip + 0x4afe1f]
00000001404701e1 cmp      rcx, r14
00000001404701e4 je       0x14047040c
00000001404701ea cmp      byte ptr [rcx + 0x229], bpl
00000001404701f1 jb       0x140470223
00000001404701f3 mov      eax, dword ptr [rcx + 0x22c]
00000001404701f9 test     sil, al
00000001404701fc je       0x140470223
00000001404701fe mov      eax, dword ptr [rbx + 0x8c]
0000000140470204 mov      edx, 0xae
0000000140470209 mov      rcx, qword ptr [rcx + 0x218]
0000000140470210 mov      r9d, edi
0000000140470213 mov      dword ptr [rsp + 0x28], eax
0000000140470217 mov      r8, r15
000000014047021a mov      dword ptr [rsp + 0x20], edi
000000014047021e call     0x140001c34
0000000140470223 mov      rcx, qword ptr [rip + 0x4afdd6]
000000014047022a cmp      rcx, r14
000000014047022d je       0x14047040c
0000000140470233 cmp      byte ptr [rcx + 0x229], bpl
000000014047023a jb       0x14047026c
000000014047023c mov      eax, dword ptr [rcx + 0x22c]
0000000140470242 test     sil, al
0000000140470245 je       0x14047026c
0000000140470247 mov      eax, dword ptr [rbx + 0x90]
000000014047024d mov      edx, 0xaf
0000000140470252 mov      rcx, qword ptr [rcx + 0x218]
0000000140470259 mov      r9d, edi
000000014047025c mov      dword ptr [rsp + 0x28], eax
0000000140470260 mov      r8, r15
0000000140470263 mov      dword ptr [rsp + 0x20], esi
0000000140470267 call     0x140001c34
000000014047026c mov      rcx, qword ptr [rip + 0x4afd8d]
0000000140470273 cmp      rcx, r14
0000000140470276 je       0x14047040c
000000014047027c cmp      byte ptr [rcx + 0x229], bpl
0000000140470283 jb       0x1404702b6
0000000140470285 mov      eax, dword ptr [rcx + 0x22c]
000000014047028b test     sil, al
000000014047028e je       0x1404702b6
0000000140470290 mov      eax, dword ptr [rbx + 0x94]
0000000140470296 mov      edx, 0xb0
000000014047029b mov      rcx, qword ptr [rcx + 0x218]
00000001404702a2 mov      r9d, edi
00000001404702a5 mov      dword ptr [rsp + 0x28], eax
00000001404702a9 mov      r8, r15
00000001404702ac mov      dword ptr [rsp + 0x20], r12d
00000001404702b1 call     0x140001c34
00000001404702b6 mov      rcx, qword ptr [rip + 0x4afd43]
00000001404702bd cmp      rcx, r14
00000001404702c0 je       0x14047040c
00000001404702c6 cmp      byte ptr [rcx + 0x229], bpl
00000001404702cd jb       0x140470300
00000001404702cf mov      eax, dword ptr [rcx + 0x22c]
00000001404702d5 test     sil, al
00000001404702d8 je       0x140470300
00000001404702da mov      eax, dword ptr [rbx + 0xe8]
00000001404702e0 mov      edx, 0xb1
00000001404702e5 mov      rcx, qword ptr [rcx + 0x218]
00000001404702ec mov      r9d, edi
00000001404702ef mov      dword ptr [rsp + 0x28], eax
00000001404702f3 mov      r8, r15
00000001404702f6 and      dword ptr [rsp + 0x20], 0
00000001404702fb call     0x140001c34
0000000140470300 mov      rcx, qword ptr [rip + 0x4afcf9]
0000000140470307 cmp      rcx, r14
000000014047030a je       0x14047040c
0000000140470310 cmp      byte ptr [rcx + 0x229], bpl
0000000140470317 jb       0x140470349
0000000140470319 mov      eax, dword ptr [rcx + 0x22c]
000000014047031f test     sil, al
0000000140470322 je       0x140470349
0000000140470324 mov      eax, dword ptr [rbx + 0xec]
000000014047032a mov      edx, 0xb2
000000014047032f mov      rcx, qword ptr [rcx + 0x218]
0000000140470336 mov      r9d, edi
0000000140470339 mov      dword ptr [rsp + 0x28], eax
000000014047033d mov      r8, r15
0000000140470340 mov      dword ptr [rsp + 0x20], edi
0000000140470344 call     0x140001c34
0000000140470349 mov      rcx, qword ptr [rip + 0x4afcb0]
0000000140470350 cmp      rcx, r14
0000000140470353 je       0x14047040c
0000000140470359 cmp      byte ptr [rcx + 0x229], bpl
0000000140470360 jb       0x140470392
0000000140470362 mov      eax, dword ptr [rcx + 0x22c]
0000000140470368 test     sil, al
000000014047036b je       0x140470392
000000014047036d mov      eax, dword ptr [rbx + 0xf0]
0000000140470373 mov      edx, 0xb3
0000000140470378 mov      rcx, qword ptr [rcx + 0x218]
000000014047037f mov      r9d, edi
0000000140470382 mov      dword ptr [rsp + 0x28], eax
0000000140470386 mov      r8, r15
0000000140470389 mov      dword ptr [rsp + 0x20], esi
000000014047038d call     0x140001c34
0000000140470392 mov      rcx, qword ptr [rip + 0x4afc67]
0000000140470399 cmp      rcx, r14
000000014047039c je       0x14047040c
000000014047039e cmp      byte ptr [rcx + 0x229], bpl
00000001404703a5 jb       0x1404703d8
00000001404703a7 mov      eax, dword ptr [rcx + 0x22c]
00000001404703ad test     sil, al
00000001404703b0 je       0x1404703d8
00000001404703b2 mov      eax, dword ptr [rbx + 0xf4]
00000001404703b8 mov      edx, 0xb4
00000001404703bd mov      rcx, qword ptr [rcx + 0x218]
00000001404703c4 mov      r9d, edi
00000001404703c7 mov      dword ptr [rsp + 0x28], eax
00000001404703cb mov      r8, r15
00000001404703ce mov      dword ptr [rsp + 0x20], r12d
00000001404703d3 call     0x140001c34
00000001404703d8 mov      rcx, qword ptr [rip + 0x4afc21]
00000001404703df cmp      rcx, r14
00000001404703e2 je       0x14047040c
00000001404703e4 cmp      byte ptr [rcx + 0x229], bpl
00000001404703eb jb       0x14047040c
00000001404703ed mov      eax, dword ptr [rcx + 0x22c]
00000001404703f3 test     sil, al
00000001404703f6 je       0x14047040c
00000001404703f8 mov      rcx, qword ptr [rcx + 0x218]
00000001404703ff mov      edx, 0xb5
0000000140470404 mov      r8, r15
0000000140470407 call     0x140001b88
000000014047040c mov      rbx, qword ptr [rsp + 0x50]
0000000140470411 mov      rbp, qword ptr [rsp + 0x58]
0000000140470416 mov      rsi, qword ptr [rsp + 0x60]
000000014047041b mov      rdi, qword ptr [rsp + 0x68]
0000000140470420 add      rsp, 0x30
0000000140470424 pop      r15
0000000140470426 pop      r14
0000000140470428 pop      r12
000000014047042a ret      