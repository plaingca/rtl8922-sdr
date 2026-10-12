00000001403db3d4 mov      qword ptr [rsp + 0x10], rbx
00000001403db3d9 push     rbp
00000001403db3da push     rsi
00000001403db3db push     rdi
00000001403db3dc push     r12
00000001403db3de push     r13
00000001403db3e0 push     r14
00000001403db3e2 push     r15
00000001403db3e4 mov      rbp, rsp
00000001403db3e7 sub      rsp, 0x40
00000001403db3eb mov      eax, dword ptr [rcx + 0x13fc]
00000001403db3f1 lea      r12, [rip + 0x544c08]
00000001403db3f8 and      dword ptr [rbp + 0x50], 0
00000001403db3fc lea      r13, [rip + 0x2f9e15]
00000001403db403 and      dword ptr [rbp + 0x58], 0
00000001403db407 mov      esi, edx
00000001403db409 mov      r14, qword ptr [rcx + 0x9a0]
00000001403db410 xor      dl, dl
00000001403db412 sub      eax, 2
00000001403db415 mov      byte ptr [rbp + 0x40], dl
00000001403db418 mov      r15, rcx
00000001403db41b cmp      eax, 1
00000001403db41e ja       0x1403db4d4
00000001403db424 cmp      esi, 5
00000001403db427 jne      0x1403db4d4
00000001403db42d mov      rcx, qword ptr [rcx + 8]
00000001403db431 lea      rdx, [rbp + 0x40]
00000001403db435 call     0x14027fc88
00000001403db43a mov      ebx, eax
00000001403db43c mov      rcx, qword ptr [rip + 0x544bbd]
00000001403db443 cmp      rcx, r12
00000001403db446 je       0x1403db47e
00000001403db448 cmp      byte ptr [rcx + 0x1e9], 4
00000001403db44f jb       0x1403db47e
00000001403db451 test     dword ptr [rcx + 0x1ec], 0x2000000
00000001403db45b je       0x1403db47e
00000001403db45d movzx    eax, byte ptr [rbp + 0x40]
00000001403db461 lea      edx, [rsi + 0x19]
00000001403db464 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403db46b lea      r9, [rip + 0x270f6e]
00000001403db472 mov      r8, r13
00000001403db475 mov      dword ptr [rsp + 0x20], eax
00000001403db479 call     0x1400088d8
00000001403db47e test     ebx, ebx
00000001403db480 je       0x1403db4d1
00000001403db482 mov      rcx, qword ptr [rip + 0x544b77]
00000001403db489 cmp      rcx, r12
00000001403db48c je       0x1403db648
00000001403db492 cmp      byte ptr [rcx + 0x169], 3
00000001403db499 jb       0x1403db648
00000001403db49f bt       dword ptr [rcx + 0x16c], 0xc
00000001403db4a7 jae      0x1403db648
00000001403db4ad mov      rcx, qword ptr [rcx + 0x158]
00000001403db4b4 lea      r9, [rip + 0x270f25]
00000001403db4bb mov      edx, 0x1f
00000001403db4c0 mov      dword ptr [rsp + 0x20], ebx
00000001403db4c4 mov      r8, r13
00000001403db4c7 call     0x1400088d8
00000001403db4cc jmp      0x1403db648
00000001403db4d1 mov      dl, byte ptr [rbp + 0x40]
00000001403db4d4 mov      eax, dword ptr [r15 + 0x13fc]
00000001403db4db lea      rbx, [r14 + 0x1334]
00000001403db4e2 sub      eax, 2
00000001403db4e5 cmp      eax, 1
00000001403db4e8 jbe      0x1403db53f
00000001403db4ea mov      dword ptr [r14 + 0x1440], 0xff
00000001403db4f5 and      dword ptr [rbx], 0
00000001403db4f8 mov      rcx, qword ptr [rip + 0x544b01]
00000001403db4ff cmp      rcx, r12
00000001403db502 je       0x1403db582
00000001403db504 cmp      byte ptr [rcx + 0x169], 3
00000001403db50b jb       0x1403db582
00000001403db50d bt       dword ptr [rcx + 0x16c], 0xc
00000001403db515 jae      0x1403db582
00000001403db517 mov      eax, dword ptr [r15 + 0x13f0]
00000001403db51e lea      r9, [rip + 0x270ebb]
00000001403db525 mov      rcx, qword ptr [rcx + 0x158]
00000001403db52c mov      edx, 0x20
00000001403db531 mov      r8, r13
00000001403db534 mov      dword ptr [rsp + 0x20], eax
00000001403db538 call     0x1400088d8
00000001403db53d jmp      0x1403db582
00000001403db53f cmp      esi, 5
00000001403db542 jne      0x1403db55e
00000001403db544 movzx    eax, dl
00000001403db547 mov      dword ptr [r14 + 0x1440], eax
00000001403db54e movzx    eax, byte ptr [rbp + 0x40]
00000001403db552 shl      eax, 0x10
00000001403db555 add      eax, 0x10000
00000001403db55a mov      dword ptr [rbx], eax
00000001403db55c jmp      0x1403db582
00000001403db55e jge      0x1403db574
00000001403db560 mov      dword ptr [r14 + 0x1440], esi
00000001403db567 shl      esi, 0x10
00000001403db56a add      esi, 0x10000
00000001403db570 mov      dword ptr [rbx], esi
00000001403db572 jmp      0x1403db582
00000001403db574 mov      dword ptr [r14 + 0x1440], 0xff
00000001403db57f and      dword ptr [rbx], 0
00000001403db582 cmp      dword ptr [rbx], 0
00000001403db585 jne      0x1403db5cf
00000001403db587 mov      rcx, qword ptr [rip + 0x544a72]
00000001403db58e cmp      rcx, r12
00000001403db591 je       0x1403db648
00000001403db597 cmp      byte ptr [rcx + 0x169], 3
00000001403db59e jb       0x1403db648
00000001403db5a4 bt       dword ptr [rcx + 0x16c], 0xc
00000001403db5ac jae      0x1403db648
00000001403db5b2 mov      rcx, qword ptr [rcx + 0x158]
00000001403db5b9 lea      r9, [rip + 0x270e20]
00000001403db5c0 mov      edx, 0x21
00000001403db5c5 mov      r8, r13
00000001403db5c8 call     0x140008874
00000001403db5cd jmp      0x1403db648
00000001403db5cf mov      dl, byte ptr [r14 + 0x1440]
00000001403db5d6 lea      r9, [rbp + 0x58]
00000001403db5da mov      rcx, qword ptr [r15 + 8]
00000001403db5de lea      r8, [rbp + 0x50]
00000001403db5e2 call     0x14027fc18
00000001403db5e7 mov      eax, dword ptr [rbp + 0x50]
00000001403db5ea mov      r8d, dword ptr [rbx]
00000001403db5ed mov      dword ptr [r14 + 0x1338], eax
00000001403db5f4 mov      r11d, dword ptr [rbp + 0x50]
00000001403db5f8 mov      eax, dword ptr [rbp + 0x58]
00000001403db5fb mov      dword ptr [r14 + 0x133c], eax
00000001403db602 mov      esi, dword ptr [rbp + 0x58]
00000001403db605 mov      r9d, esi
00000001403db608 sub      r9d, r11d
00000001403db60b cmp      r9d, r8d
00000001403db60e je       0x1403db64c
00000001403db610 mov      rcx, qword ptr [rip + 0x5449e9]
00000001403db617 cmp      rcx, r12
00000001403db61a je       0x1403db648
00000001403db61c cmp      byte ptr [rcx + 0x169], 3
00000001403db623 jb       0x1403db648
00000001403db625 bt       dword ptr [rcx + 0x16c], 0xc
00000001403db62d jae      0x1403db648
00000001403db62f mov      rcx, qword ptr [rcx + 0x158]
00000001403db636 mov      edx, 0x22
00000001403db63b mov      dword ptr [rsp + 0x20], r8d
00000001403db640 mov      r8, r13
00000001403db643 call     0x140001bec
00000001403db648 xor      al, al
00000001403db64a jmp      0x1403db6a4
00000001403db64c mov      r10d, r8d
00000001403db64f shr      r10d, 3
00000001403db653 mov      dword ptr [r14 + 0x1340], r10d
00000001403db65a mov      rcx, qword ptr [rip + 0x54499f]
00000001403db661 cmp      rcx, r12
00000001403db664 je       0x1403db6a2
00000001403db666 cmp      byte ptr [rcx + 0x169], 4
00000001403db66d jb       0x1403db6a2
00000001403db66f bt       dword ptr [rcx + 0x16c], 0xc
00000001403db677 jae      0x1403db6a2
00000001403db679 mov      rcx, qword ptr [rcx + 0x158]
00000001403db680 mov      edx, 0x23
00000001403db685 shr      r8d, 0xa
00000001403db689 mov      r9d, r11d
00000001403db68c mov      dword ptr [rsp + 0x30], r10d
00000001403db691 mov      dword ptr [rsp + 0x28], r8d
00000001403db696 mov      r8, r13
00000001403db699 mov      dword ptr [rsp + 0x20], esi
00000001403db69d call     0x140008794
00000001403db6a2 mov      al, 1
00000001403db6a4 mov      rbx, qword ptr [rsp + 0x88]
00000001403db6ac add      rsp, 0x40
00000001403db6b0 pop      r15
00000001403db6b2 pop      r14
00000001403db6b4 pop      r13
00000001403db6b6 pop      r12
00000001403db6b8 pop      rdi
00000001403db6b9 pop      rsi
00000001403db6ba pop      rbp
00000001403db6bb ret      