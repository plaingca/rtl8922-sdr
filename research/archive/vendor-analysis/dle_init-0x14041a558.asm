000000014041a558 mov      r11, rsp
000000014041a55b mov      qword ptr [r11 + 0x10], rbx
000000014041a55f mov      qword ptr [r11 + 0x18], rdi
000000014041a563 mov      qword ptr [r11 + 0x20], r12
000000014041a567 push     r13
000000014041a569 push     r14
000000014041a56b push     r15
000000014041a56d sub      rsp, 0x30
000000014041a571 cmp      byte ptr [rcx + 0x408], 0
000000014041a578 mov      r12d, r8d
000000014041a57b mov      rax, qword ptr [rcx + 0x1390]
000000014041a582 mov      r13d, edx
000000014041a585 mov      qword ptr [rsp + 0x50], rax
000000014041a58a mov      r15, rcx
000000014041a58d je       0x14041a5f0
000000014041a58f cmp      r8d, 0x10
000000014041a593 je       0x14041a5f0
000000014041a595 mov      rcx, qword ptr [rip + 0x505a64]
000000014041a59c lea      rbx, [rip + 0x505a5d]
000000014041a5a3 cmp      rcx, rbx
000000014041a5a6 je       0x14041a5e6
000000014041a5a8 cmp      byte ptr [rcx + 0x169], 2
000000014041a5af jb       0x14041a5e6
000000014041a5b1 mov      eax, dword ptr [rcx + 0x16c]
000000014041a5b7 test     al, 8
000000014041a5b9 je       0x14041a5e6
000000014041a5bb mov      rcx, qword ptr [rcx + 0x158]
000000014041a5c2 lea      r9, [rip + 0x237737]
000000014041a5c9 mov      dword ptr [rsp + 0x28], 0x10
000000014041a5d1 mov      edx, 0x25
000000014041a5d6 mov      dword ptr [r11 - 0x28], r8d
000000014041a5da lea      r8, [rip + 0x2bbfe7]
000000014041a5e1 call     0x140002b04
000000014041a5e6 mov      eax, 0x52
000000014041a5eb jmp      0x14041a9e9
000000014041a5f0 xor      r8d, r8d
000000014041a5f3 xor      edx, edx
000000014041a5f5 call     0x140429fcc
000000014041a5fa mov      edi, eax
000000014041a5fc test     eax, eax
000000014041a5fe je       0x14041a648
000000014041a600 mov      rcx, qword ptr [rip + 0x5059f9]
000000014041a607 lea      rbx, [rip + 0x5059f2]
000000014041a60e cmp      rcx, rbx
000000014041a611 je       0x14041a641
000000014041a613 cmp      byte ptr [rcx + 0x169], 2
000000014041a61a jb       0x14041a641
000000014041a61c mov      eax, dword ptr [rcx + 0x16c]
000000014041a622 test     al, 8
000000014041a624 je       0x14041a641
000000014041a626 mov      edx, 0x26
000000014041a62b lea      r8, [rip + 0x2bbf96]
000000014041a632 mov      r9d, edi
000000014041a635 mov      rcx, qword ptr [rcx + 0x158]
000000014041a63c call     0x140001bb0
000000014041a641 mov      eax, edi
000000014041a643 jmp      0x14041a9e9
000000014041a648 mov      edx, r13d
000000014041a64b mov      rcx, r15
000000014041a64e call     0x14041b254
000000014041a653 lea      r14, [rip + 0x2bbf6e]
000000014041a65a mov      rbx, rax
000000014041a65d test     rax, rax
000000014041a660 jne      0x14041a6aa
000000014041a662 lea      edi, [rax + 0xb]
000000014041a665 mov      rcx, qword ptr [rip + 0x505994]
000000014041a66c lea      rbx, [rip + 0x50598d]
000000014041a673 cmp      rcx, rbx
000000014041a676 je       0x14041a6a0
000000014041a678 cmp      byte ptr [rcx + 0x169], 2
000000014041a67f jb       0x14041a6a0
000000014041a681 mov      eax, dword ptr [rcx + 0x16c]
000000014041a687 test     al, 8
000000014041a689 je       0x14041a6a0
000000014041a68b lea      edx, [rdi + 0x1c]
000000014041a68e mov      r9d, r13d
000000014041a691 mov      rcx, qword ptr [rcx + 0x158]
000000014041a698 mov      r8, r14
000000014041a69b call     0x140001bb0
000000014041a6a0 mov      r13, qword ptr [rsp + 0x50]
000000014041a6a5 jmp      0x14041a8e6
000000014041a6aa cmp      r13d, 6
000000014041a6ae jne      0x14041a714
000000014041a6b0 mov      edx, r12d
000000014041a6b3 mov      rcx, r15
000000014041a6b6 call     0x14041b254
000000014041a6bb mov      rdx, rax
000000014041a6be test     rax, rax
000000014041a6c1 jne      0x14041a6f4
000000014041a6c3 lea      edi, [rax + 0xb]
000000014041a6c6 mov      rcx, qword ptr [rip + 0x505933]
000000014041a6cd lea      rbx, [rip + 0x50592c]
000000014041a6d4 cmp      rcx, rbx
000000014041a6d7 je       0x14041a6a0
000000014041a6d9 cmp      byte ptr [rcx + 0x169], 2
000000014041a6e0 jb       0x14041a6a0
000000014041a6e2 mov      eax, dword ptr [rcx + 0x16c]
000000014041a6e8 test     al, 8
000000014041a6ea je       0x14041a6a0
000000014041a6ec lea      edx, [rdi + 0x1d]
000000014041a6ef mov      r9d, r12d
000000014041a6f2 jmp      0x14041a691
000000014041a6f4 mov      rax, qword ptr [rax + 0x18]
000000014041a6f8 mov      rcx, qword ptr [rbx + 0x18]
000000014041a6fc movzx    eax, word ptr [rax + 2]
000000014041a700 mov      word ptr [rcx + 2], ax
000000014041a704 mov      rax, qword ptr [rdx + 0x30]
000000014041a708 mov      rcx, qword ptr [rbx + 0x30]
000000014041a70c movzx    eax, word ptr [rax + 0x1c]
000000014041a710 mov      word ptr [rcx + 0x1c], ax
000000014041a714 mov      rdx, rbx
000000014041a717 mov      rcx, r15
000000014041a71a call     0x14041b188
000000014041a71f mov      edx, r13d
000000014041a722 mov      rcx, r15
000000014041a725 mov      edi, eax
000000014041a727 call     0x14041b0a0
000000014041a72c mov      rcx, qword ptr [r15 + 0x140]
000000014041a733 mov      r8d, dword ptr [rcx + 0x30]
000000014041a737 sub      r8d, eax
000000014041a73a cmp      edi, r8d
000000014041a73d je       0x14041a78b
000000014041a73f mov      rcx, qword ptr [rip + 0x5058ba]
000000014041a746 lea      rbx, [rip + 0x5058b3]
000000014041a74d cmp      rcx, rbx
000000014041a750 je       0x14041a781
000000014041a752 cmp      byte ptr [rcx + 0x169], 2
000000014041a759 jb       0x14041a781
000000014041a75b mov      eax, dword ptr [rcx + 0x16c]
000000014041a761 test     al, 8
000000014041a763 je       0x14041a781
000000014041a765 mov      rcx, qword ptr [rcx + 0x158]
000000014041a76c mov      edx, 0x29
000000014041a771 mov      dword ptr [rsp + 0x20], r8d
000000014041a776 mov      r9d, edi
000000014041a779 mov      r8, r14
000000014041a77c call     0x140001bec
000000014041a781 mov      edi, 0x13
000000014041a786 jmp      0x14041a6a0
000000014041a78b mov      r13, qword ptr [rsp + 0x50]
000000014041a790 xor      edx, edx
000000014041a792 mov      rcx, r15
000000014041a795 mov      rax, qword ptr [r13 + 0x248]
000000014041a79c call     qword ptr [rip + 0x269b56]
000000014041a7a2 mov      edi, eax
000000014041a7a4 test     eax, eax
000000014041a7a6 je       0x14041a7f7
000000014041a7a8 mov      rcx, qword ptr [rip + 0x505851]
000000014041a7af lea      rbx, [rip + 0x50584a]
000000014041a7b6 cmp      rcx, rbx
000000014041a7b9 je       0x14041a8e6
000000014041a7bf cmp      byte ptr [rcx + 0x169], 2
000000014041a7c6 jb       0x14041a8e6
000000014041a7cc mov      edx, dword ptr [rcx + 0x16c]
000000014041a7d2 test     dl, 8
000000014041a7d5 je       0x14041a8e6
000000014041a7db mov      edx, 0x2a
000000014041a7e0 mov      r9d, eax
000000014041a7e3 mov      rcx, qword ptr [rcx + 0x158]
000000014041a7ea mov      r8, r14
000000014041a7ed call     0x140001bb0
000000014041a7f2 jmp      0x14041a8e6
000000014041a7f7 mov      rax, qword ptr [r13 + 0x250]
000000014041a7fe mov      rdx, rbx
000000014041a801 mov      rcx, r15
000000014041a804 call     qword ptr [rip + 0x269aee]
000000014041a80a mov      edi, eax
000000014041a80c test     eax, eax
000000014041a80e je       0x14041a84c
000000014041a810 mov      rcx, qword ptr [rip + 0x5057e9]
000000014041a817 lea      rbx, [rip + 0x5057e2]
000000014041a81e cmp      rcx, rbx
000000014041a821 je       0x14041a8e6
000000014041a827 cmp      byte ptr [rcx + 0x169], 2
000000014041a82e jb       0x14041a8e6
000000014041a834 mov      eax, dword ptr [rcx + 0x16c]
000000014041a83a test     al, 8
000000014041a83c je       0x14041a8e6
000000014041a842 mov      edx, 0x2b
000000014041a847 mov      r9d, edi
000000014041a84a jmp      0x14041a7e3
000000014041a84c mov      rdx, rbx
000000014041a84f mov      rcx, r15
000000014041a852 call     0x14041aa04
000000014041a857 mov      edi, eax
000000014041a859 test     eax, eax
000000014041a85b je       0x14041a88a
000000014041a85d mov      rcx, qword ptr [rip + 0x50579c]
000000014041a864 lea      rbx, [rip + 0x505795]
000000014041a86b cmp      rcx, rbx
000000014041a86e je       0x14041a8e6
000000014041a870 cmp      byte ptr [rcx + 0x169], 2
000000014041a877 jb       0x14041a8e6
000000014041a879 mov      eax, dword ptr [rcx + 0x16c]
000000014041a87f test     al, 8
000000014041a881 je       0x14041a8e6
000000014041a883 mov      edx, 0x2c
000000014041a888 jmp      0x14041a847
000000014041a88a mov      rbx, r13
000000014041a88d mov      dl, 1
000000014041a88f mov      rcx, r15
000000014041a892 mov      rax, qword ptr [rbx + 0x248]
000000014041a899 call     qword ptr [rip + 0x269a59]
000000014041a89f mov      edi, eax
000000014041a8a1 test     eax, eax
000000014041a8a3 je       0x14041a93c
000000014041a8a9 mov      rcx, qword ptr [rip + 0x505750]
000000014041a8b0 lea      rbx, [rip + 0x505749]
000000014041a8b7 cmp      rcx, rbx
000000014041a8ba je       0x14041a8e6
000000014041a8bc cmp      byte ptr [rcx + 0x169], 2
000000014041a8c3 jb       0x14041a8e6
000000014041a8c5 mov      eax, dword ptr [rcx + 0x16c]
000000014041a8cb test     al, 8
000000014041a8cd je       0x14041a8e6
000000014041a8cf mov      edx, 0x2d
000000014041a8d4 mov      rcx, qword ptr [rcx + 0x158]
000000014041a8db mov      r9d, edi
000000014041a8de mov      r8, r14
000000014041a8e1 call     0x140001bb0
000000014041a8e6 mov      rax, qword ptr [r13 + 0x248]
000000014041a8ed xor      edx, edx
000000014041a8ef mov      rcx, r15
000000014041a8f2 call     qword ptr [rip + 0x269a00]
000000014041a8f8 test     eax, eax
000000014041a8fa je       0x14041a641
000000014041a900 mov      rcx, qword ptr [rip + 0x5056f9]
000000014041a907 cmp      rcx, rbx
000000014041a90a je       0x14041a641
000000014041a910 cmp      byte ptr [rcx + 0x169], 2
000000014041a917 jb       0x14041a641
000000014041a91d mov      edx, dword ptr [rcx + 0x16c]
000000014041a923 test     dl, 8
000000014041a926 je       0x14041a641
000000014041a92c mov      edx, 0x30
000000014041a931 mov      r9d, eax
000000014041a934 mov      r8, r14
000000014041a937 jmp      0x14041a635
000000014041a93c mov      rax, qword ptr [rbx + 0x268]
000000014041a943 xor      edx, edx
000000014041a945 mov      rcx, r15
000000014041a948 call     qword ptr [rip + 0x2699aa]
000000014041a94e mov      edi, eax
000000014041a950 test     eax, eax
000000014041a952 je       0x14041a990
000000014041a954 mov      rcx, qword ptr [rip + 0x5056a5]
000000014041a95b lea      rbx, [rip + 0x50569e]
000000014041a962 cmp      rcx, rbx
000000014041a965 je       0x14041a8e6
000000014041a96b cmp      byte ptr [rcx + 0x169], 2
000000014041a972 jb       0x14041a8e6
000000014041a978 mov      eax, dword ptr [rcx + 0x16c]
000000014041a97e test     al, 8
000000014041a980 je       0x14041a8e6
000000014041a986 mov      edx, 0x2e
000000014041a98b jmp      0x14041a8d4
000000014041a990 mov      rax, qword ptr [rbx + 0x268]
000000014041a997 mov      edx, 1
000000014041a99c mov      rcx, r15
000000014041a99f call     qword ptr [rip + 0x269953]
000000014041a9a5 mov      edi, eax
000000014041a9a7 test     eax, eax
000000014041a9a9 je       0x14041a9e7
000000014041a9ab mov      rcx, qword ptr [rip + 0x50564e]
000000014041a9b2 lea      rbx, [rip + 0x505647]
000000014041a9b9 cmp      rcx, rbx
000000014041a9bc je       0x14041a8e6
000000014041a9c2 cmp      byte ptr [rcx + 0x169], 2
000000014041a9c9 jb       0x14041a8e6
000000014041a9cf mov      eax, dword ptr [rcx + 0x16c]
000000014041a9d5 test     al, 8
000000014041a9d7 je       0x14041a8e6
000000014041a9dd mov      edx, 0x2f
000000014041a9e2 jmp      0x14041a8d4
000000014041a9e7 xor      eax, eax
000000014041a9e9 mov      rbx, qword ptr [rsp + 0x58]
000000014041a9ee mov      rdi, qword ptr [rsp + 0x60]
000000014041a9f3 mov      r12, qword ptr [rsp + 0x68]
000000014041a9f8 add      rsp, 0x30
000000014041a9fc pop      r15
000000014041a9fe pop      r14
000000014041aa00 pop      r13
000000014041aa02 ret      