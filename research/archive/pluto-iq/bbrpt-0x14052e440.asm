000000014052e440 push     rbx
000000014052e442 push     rbp
000000014052e443 push     rsi
000000014052e444 push     rdi
000000014052e445 push     r12
000000014052e447 push     r14
000000014052e449 push     r15
000000014052e44b sub      rsp, 0x40
000000014052e44f mov      rax, qword ptr [rcx + 0x140]
000000014052e456 xor      r12d, r12d
000000014052e459 mov      r14, qword ptr [rcx + 0x1390]
000000014052e460 mov      rbp, rcx
000000014052e463 mov      r8d, dword ptr [rax + 0x34]
000000014052e467 cmp      r8d, 2
000000014052e46b jae      0x14052e4ba
000000014052e46d mov      rcx, qword ptr [rip + 0x3f1b8c]
000000014052e474 lea      rdi, [rip + 0x3f1b85]
000000014052e47b cmp      rcx, rdi
000000014052e47e je       0x14052e4b0
000000014052e480 cmp      byte ptr [rcx + 0x169], 2
000000014052e487 jb       0x14052e4b0
000000014052e489 mov      eax, dword ptr [rcx + 0x16c]
000000014052e48f mov      bl, 8
000000014052e491 test     bl, al
000000014052e493 je       0x14052e4b0
000000014052e495 mov      rcx, qword ptr [rcx + 0x158]
000000014052e49c mov      r9d, r8d
000000014052e49f lea      r8, [rip + 0x3d392a]
000000014052e4a6 mov      edx, 0xa8
000000014052e4ab call     0x140001bb0
000000014052e4b0 mov      eax, 0x1c
000000014052e4b5 jmp      0x14052e91c
000000014052e4ba xor      edx, edx
000000014052e4bc lea      ebx, [r8 - 2]
000000014052e4c0 lea      edi, [r8 - 1]
000000014052e4c4 call     0x140454484
000000014052e4c9 test     eax, eax
000000014052e4cb jne      0x14052e91c
000000014052e4d1 mov      rax, qword ptr [r14 + 0x4d8]
000000014052e4d8 mov      esi, 1
000000014052e4dd mov      dl, sil
000000014052e4e0 mov      rcx, rbp
000000014052e4e3 call     qword ptr [rip + 0x155e0f]
000000014052e4e9 test     eax, eax
000000014052e4eb jne      0x14052e91c
000000014052e4f1 mov      rax, qword ptr [r14 + 0x4c0]
000000014052e4f8 xor      edx, edx
000000014052e4fa mov      rcx, rbp
000000014052e4fd call     qword ptr [rip + 0x155df5]
000000014052e503 mov      r15d, eax
000000014052e506 test     eax, eax
000000014052e508 je       0x14052e55b
000000014052e50a mov      rcx, qword ptr [rip + 0x3f1aef]
000000014052e511 lea      rdi, [rip + 0x3f1ae8]
000000014052e518 cmp      rcx, rdi
000000014052e51b je       0x14052e8f9
000000014052e521 cmp      byte ptr [rcx + 0x169], 2
000000014052e528 jb       0x14052e8f9
000000014052e52e mov      eax, dword ptr [rcx + 0x16c]
000000014052e534 mov      bl, 8
000000014052e536 test     bl, al
000000014052e538 je       0x14052e8f9
000000014052e53e mov      rcx, qword ptr [rcx + 0x158]
000000014052e545 lea      r8, [rip + 0x3d3884]
000000014052e54c mov      edx, 0xa9
000000014052e551 call     0x140001b88
000000014052e556 jmp      0x14052e8f9
000000014052e55b mov      rax, qword ptr [r14 + 0x4c8]
000000014052e562 xor      edx, edx
000000014052e564 mov      rcx, rbp
000000014052e567 call     qword ptr [rip + 0x155d8b]
000000014052e56d mov      rax, qword ptr [r14 + 0x4e0]
000000014052e574 lea      r9, [rsp + 0x88]
000000014052e57c mov      r8d, esi
000000014052e57f mov      edx, ebx
000000014052e581 mov      rcx, rbp
000000014052e584 call     qword ptr [rip + 0x155d6e]
000000014052e58a lea      r9, [rsp + 0x80]
000000014052e592 mov      r8d, esi
000000014052e595 test     eax, eax
000000014052e597 mov      r15d, eax
000000014052e59a mov      edx, edi
000000014052e59c mov      rcx, rbp
000000014052e59f cmovne   r12d, eax
000000014052e5a3 mov      rax, qword ptr [r14 + 0x4e0]
000000014052e5aa call     qword ptr [rip + 0x155d48]
000000014052e5b0 test     eax, eax
000000014052e5b2 cmovne   r12d, eax
000000014052e5b6 test     r15d, r15d
000000014052e5b9 jne      0x14052e871
000000014052e5bf test     eax, eax
000000014052e5c1 jne      0x14052e871
000000014052e5c7 mov      r8b, byte ptr [rsp + 0x80]
000000014052e5cf mov      rcx, rbp
000000014052e5d2 mov      dl, byte ptr [rsp + 0x88]
000000014052e5d9 call     0x1404548b8
000000014052e5de mov      rax, qword ptr [r14 + 0x4e0]
000000014052e5e5 lea      r9, [rsp + 0x90]
000000014052e5ed mov      r8d, esi
000000014052e5f0 mov      edx, 0x17ca
000000014052e5f5 mov      rcx, rbp
000000014052e5f8 call     qword ptr [rip + 0x155cfa]
000000014052e5fe mov      bl, 8
000000014052e600 lea      rsi, [rip + 0x3d37c9]
000000014052e607 lea      rdi, [rip + 0x3f19f2]
000000014052e60e mov      r15d, eax
000000014052e611 test     eax, eax
000000014052e613 jne      0x14052e674
000000014052e615 mov      rax, qword ptr [r14 + 0x540]
000000014052e61c mov      rcx, rbp
000000014052e61f mov      dl, byte ptr [rsp + 0x90]
000000014052e626 call     qword ptr [rip + 0x155ccc]
000000014052e62c mov      r15d, eax
000000014052e62f test     eax, eax
000000014052e631 je       0x14052e6dd
000000014052e637 mov      rcx, qword ptr [rip + 0x3f19c2]
000000014052e63e cmp      rcx, rdi
000000014052e641 je       0x14052e6dd
000000014052e647 cmp      byte ptr [rcx + 0x169], 2
000000014052e64e jb       0x14052e6dd
000000014052e654 mov      eax, dword ptr [rcx + 0x16c]
000000014052e65a test     bl, al
000000014052e65c je       0x14052e6dd
000000014052e65e mov      rcx, qword ptr [rcx + 0x158]
000000014052e665 mov      edx, 0xac
000000014052e66a mov      r8, rsi
000000014052e66d call     0x140001b88
000000014052e672 jmp      0x14052e6dd
000000014052e674 mov      rcx, qword ptr [rip + 0x3f1985]
000000014052e67b cmp      rcx, rdi
000000014052e67e je       0x14052e6da
000000014052e680 cmp      byte ptr [rcx + 0x169], 2
000000014052e687 jb       0x14052e6a7
000000014052e689 mov      eax, dword ptr [rcx + 0x16c]
000000014052e68f test     bl, al
000000014052e691 je       0x14052e6a7
000000014052e693 mov      rcx, qword ptr [rcx + 0x158]
000000014052e69a mov      edx, 0xad
000000014052e69f mov      r8, rsi
000000014052e6a2 call     0x140001b88
000000014052e6a7 mov      rcx, qword ptr [rip + 0x3f1952]
000000014052e6ae cmp      rcx, rdi
000000014052e6b1 je       0x14052e6da
000000014052e6b3 cmp      byte ptr [rcx + 0x169], 2
000000014052e6ba jb       0x14052e6da
000000014052e6bc mov      eax, dword ptr [rcx + 0x16c]
000000014052e6c2 test     bl, al
000000014052e6c4 je       0x14052e6da
000000014052e6c6 mov      rcx, qword ptr [rcx + 0x158]
000000014052e6cd mov      edx, 0xae
000000014052e6d2 mov      r8, rsi
000000014052e6d5 call     0x140001b88
000000014052e6da mov      r12d, r15d
000000014052e6dd mov      rax, qword ptr [r14 + 0x4e0]
000000014052e6e4 lea      r9, [rsp + 0x98]
000000014052e6ec mov      edx, 0x17c0
000000014052e6f1 mov      r8d, 1
000000014052e6f7 mov      rcx, rbp
000000014052e6fa call     qword ptr [rip + 0x155bf8]
000000014052e700 test     eax, eax
000000014052e702 jne      0x14052e74d
000000014052e704 mov      rax, qword ptr [r14 + 0x558]
000000014052e70b mov      rcx, rbp
000000014052e70e mov      dl, byte ptr [rsp + 0x98]
000000014052e715 call     qword ptr [rip + 0x155bdd]
000000014052e71b test     eax, eax
000000014052e71d je       0x14052e7b3
000000014052e723 mov      rcx, qword ptr [rip + 0x3f18d6]
000000014052e72a cmp      rcx, rdi
000000014052e72d je       0x14052e7b3
000000014052e733 cmp      byte ptr [rcx + 0x169], 3
000000014052e73a jb       0x14052e7b3
000000014052e73c mov      eax, dword ptr [rcx + 0x16c]
000000014052e742 test     bl, al
000000014052e744 je       0x14052e7b3
000000014052e746 mov      edx, 0xaf
000000014052e74b jmp      0x14052e7a4
000000014052e74d mov      rcx, qword ptr [rip + 0x3f18ac]
000000014052e754 cmp      rcx, rdi
000000014052e757 je       0x14052e7b3
000000014052e759 cmp      byte ptr [rcx + 0x169], 2
000000014052e760 jb       0x14052e780
000000014052e762 mov      eax, dword ptr [rcx + 0x16c]
000000014052e768 test     bl, al
000000014052e76a je       0x14052e780
000000014052e76c mov      rcx, qword ptr [rcx + 0x158]
000000014052e773 mov      edx, 0xb0
000000014052e778 mov      r8, rsi
000000014052e77b call     0x140001b88
000000014052e780 mov      rcx, qword ptr [rip + 0x3f1879]
000000014052e787 cmp      rcx, rdi
000000014052e78a je       0x14052e7b3
000000014052e78c cmp      byte ptr [rcx + 0x169], 3
000000014052e793 jb       0x14052e7b3
000000014052e795 mov      eax, dword ptr [rcx + 0x16c]
000000014052e79b test     bl, al
000000014052e79d je       0x14052e7b3
000000014052e79f mov      edx, 0xb1
000000014052e7a4 mov      rcx, qword ptr [rcx + 0x158]
000000014052e7ab mov      r8, rsi
000000014052e7ae call     0x140001b88
000000014052e7b3 mov      rax, qword ptr [r14 + 0x4e0]
000000014052e7ba lea      r9, [rsp + 0x30]
000000014052e7bf mov      edx, 0x17cc
000000014052e7c4 mov      r8d, 2
000000014052e7ca mov      rcx, rbp
000000014052e7cd call     qword ptr [rip + 0x155b25]
000000014052e7d3 test     eax, eax
000000014052e7d5 jne      0x14052e80c
000000014052e7d7 movzx    ecx, word ptr [rsp + 0x30]
000000014052e7dc bt       cx, 9
000000014052e7e1 mov      rax, qword ptr [rbp + 0x140]
000000014052e7e8 jb       0x14052e7fe
000000014052e7ea mov      edx, 0x1ff
000000014052e7ef and      cx, dx
000000014052e7f2 mov      word ptr [rax + 0xbc], cx
000000014052e7f9 jmp      0x14052e8e7
000000014052e7fe or       word ptr [rax + 0xbc], 0xffff
000000014052e807 jmp      0x14052e8e7
000000014052e80c mov      rcx, qword ptr [rip + 0x3f17ed]
000000014052e813 cmp      rcx, rdi
000000014052e816 je       0x14052e8e7
000000014052e81c cmp      byte ptr [rcx + 0x169], 2
000000014052e823 jb       0x14052e843
000000014052e825 mov      eax, dword ptr [rcx + 0x16c]
000000014052e82b test     bl, al
000000014052e82d je       0x14052e843
000000014052e82f mov      rcx, qword ptr [rcx + 0x158]
000000014052e836 mov      edx, 0xb2
000000014052e83b mov      r8, rsi
000000014052e83e call     0x140001b88
000000014052e843 mov      rcx, qword ptr [rip + 0x3f17b6]
000000014052e84a cmp      rcx, rdi
000000014052e84d je       0x14052e8e7
000000014052e853 cmp      byte ptr [rcx + 0x169], 3
000000014052e85a jb       0x14052e8e7
000000014052e860 mov      eax, dword ptr [rcx + 0x16c]
000000014052e866 test     bl, al
000000014052e868 je       0x14052e8e7
000000014052e86a mov      edx, 0xb3
000000014052e86f jmp      0x14052e8d8
000000014052e871 mov      rcx, qword ptr [rip + 0x3f1788]
000000014052e878 lea      rdi, [rip + 0x3f1781]
000000014052e87f cmp      rcx, rdi
000000014052e882 je       0x14052e8e7
000000014052e884 cmp      byte ptr [rcx + 0x169], 2
000000014052e88b lea      rsi, [rip + 0x3d353e]
000000014052e892 mov      bl, 8
000000014052e894 jb       0x14052e8b4
000000014052e896 mov      eax, dword ptr [rcx + 0x16c]
000000014052e89c test     bl, al
000000014052e89e je       0x14052e8b4
000000014052e8a0 mov      rcx, qword ptr [rcx + 0x158]
000000014052e8a7 mov      edx, 0xaa
000000014052e8ac mov      r8, rsi
000000014052e8af call     0x140001b88
000000014052e8b4 mov      rcx, qword ptr [rip + 0x3f1745]
000000014052e8bb cmp      rcx, rdi
000000014052e8be je       0x14052e8e7
000000014052e8c0 cmp      byte ptr [rcx + 0x169], 2
000000014052e8c7 jb       0x14052e8e7
000000014052e8c9 mov      eax, dword ptr [rcx + 0x16c]
000000014052e8cf test     bl, al
000000014052e8d1 je       0x14052e8e7
000000014052e8d3 mov      edx, 0xab
000000014052e8d8 mov      rcx, qword ptr [rcx + 0x158]
000000014052e8df mov      r8, rsi
000000014052e8e2 call     0x140001b88
000000014052e8e7 mov      rax, qword ptr [r14 + 0x4d0]
000000014052e8ee xor      edx, edx
000000014052e8f0 mov      rcx, rbp
000000014052e8f3 call     qword ptr [rip + 0x1559ff]
000000014052e8f9 mov      rax, qword ptr [r14 + 0x4d8]
000000014052e900 xor      edx, edx
000000014052e902 mov      rcx, rbp
000000014052e905 call     qword ptr [rip + 0x1559ed]
000000014052e90b test     r12d, r12d
000000014052e90e je       0x14052e915
000000014052e910 mov      eax, r12d
000000014052e913 jmp      0x14052e91c
000000014052e915 test     r15d, r15d
000000014052e918 cmovne   eax, r15d
000000014052e91c add      rsp, 0x40
000000014052e920 pop      r15
000000014052e922 pop      r14
000000014052e924 pop      r12
000000014052e926 pop      rdi
000000014052e927 pop      rsi
000000014052e928 pop      rbp
000000014052e929 pop      rbx
000000014052e92a ret      