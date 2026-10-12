00000001403455cc mov      qword ptr [rsp + 0x10], rbx
00000001403455d1 mov      qword ptr [rsp + 8], rcx
00000001403455d6 push     rbp
00000001403455d7 push     rsi
00000001403455d8 push     rdi
00000001403455d9 push     r12
00000001403455db push     r13
00000001403455dd push     r14
00000001403455df push     r15
00000001403455e1 sub      rsp, 0xb0
00000001403455e8 cmp      dword ptr [rcx + 0x14bc], 0
00000001403455ef mov      r13, rcx
00000001403455f2 mov      r15, qword ptr [rcx + 0x9a0]
00000001403455f9 mov      qword ptr [rsp + 0xa0], r15
0000000140345601 jne      0x140346268
0000000140345607 cmp      edx, 0x40000000
000000014034560d jne      0x140345619
000000014034560f call     0x14034383c
0000000140345614 jmp      0x140346268
0000000140345619 mov      ecx, dword ptr [rcx + 0x16fc]
000000014034561f test     ecx, ecx
0000000140345621 je       0x14034569d
0000000140345623 sub      ecx, 1
0000000140345626 je       0x140345694
0000000140345628 cmp      ecx, 1
000000014034562b je       0x14034567c
000000014034562d mov      rcx, qword ptr [rip + 0x5da9cc]
0000000140345634 lea      rax, [rip + 0x5da9c5]
000000014034563b cmp      rcx, rax
000000014034563e je       0x140346268
0000000140345644 cmp      byte ptr [rcx + 0x1e9], 4
000000014034564b jb       0x140346268
0000000140345651 mov      eax, dword ptr [rcx + 0x1ec]
0000000140345657 test     al, 0x20
0000000140345659 je       0x140346268
000000014034565f mov      rcx, qword ptr [rcx + 0x1d8]
0000000140345666 lea      r8, [rip + 0x38bf13]
000000014034566d mov      edx, 0x100
0000000140345672 call     0x140001b88
0000000140345677 jmp      0x140346268
000000014034567c lea      rdx, [rip + 0x2f291d]
0000000140345683 mov      qword ptr [rsp + 0x100], rdx
000000014034568b lea      r14, [rip + 0x2b1cfe]
0000000140345692 jmp      0x1403456f4
0000000140345694 lea      rdx, [rip + 0x2f2935]
000000014034569b jmp      0x140345683
000000014034569d mov      cl, byte ptr [r13 + 0x1700]
00000001403456a4 lea      rax, [rip + 0x2f2905]
00000001403456ab mov      qword ptr [rsp + 0x100], rax
00000001403456b3 test     cl, cl
00000001403456b5 jne      0x1403456c0
00000001403456b7 lea      r14, [rip + 0x2f2802]
00000001403456be jmp      0x1403456f4
00000001403456c0 cmp      cl, 1
00000001403456c3 jne      0x1403456ce
00000001403456c5 lea      r14, [rip + 0x2f2804]
00000001403456cc jmp      0x1403456f4
00000001403456ce cmp      cl, 2
00000001403456d1 jne      0x1403456dc
00000001403456d3 lea      r14, [rip + 0x2f2806]
00000001403456da jmp      0x1403456f4
00000001403456dc lea      r14, [rip + 0x2b1cad]
00000001403456e3 cmp      cl, 3
00000001403456e6 lea      rax, [rip + 0x2f2803]
00000001403456ed cmovne   rax, r14
00000001403456f1 mov      r14, rax
00000001403456f4 mov      eax, dword ptr [r13 + 0x1c20]
00000001403456fb test     eax, eax
00000001403456fd jne      0x140345708
00000001403456ff lea      r9, [rip + 0x2f2f7a]
0000000140345706 jmp      0x14034572b
0000000140345708 cmp      eax, 1
000000014034570b jne      0x140345716
000000014034570d lea      r9, [rip + 0x2f2f8c]
0000000140345714 jmp      0x14034572b
0000000140345716 cmp      eax, 0xa
0000000140345719 lea      r9, [rip + 0x2f2fa0]
0000000140345720 lea      rcx, [rip + 0x2f2fc9]
0000000140345727 cmovne   r9, rcx
000000014034572b test     byte ptr [r13 + 0x16bd], 0x2e
0000000140345733 lea      rbp, [rip + 0x38be46]
000000014034573a mov      dil, 4
000000014034573d mov      sil, 0x20
0000000140345740 jne      0x1403457e7
0000000140345746 mov      rcx, qword ptr [rip + 0x5da8b3]
000000014034574d lea      r12, [rip + 0x5da8ac]
0000000140345754 cmp      rcx, r12
0000000140345757 je       0x140345a4d
000000014034575d cmp      byte ptr [rcx + 0x1e9], dil
0000000140345764 jb       0x140345785
0000000140345766 mov      eax, dword ptr [rcx + 0x1ec]
000000014034576c test     sil, al
000000014034576f je       0x140345785
0000000140345771 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140345778 mov      edx, 0x101
000000014034577d mov      r8, rbp
0000000140345780 call     0x140001b88
0000000140345785 mov      rcx, qword ptr [rip + 0x5da874]
000000014034578c cmp      rcx, r12
000000014034578f je       0x140345a4d
0000000140345795 cmp      byte ptr [rcx + 0x1e9], dil
000000014034579c jb       0x140345a4d
00000001403457a2 mov      eax, dword ptr [rcx + 0x1ec]
00000001403457a8 test     sil, al
00000001403457ab je       0x140345a4d
00000001403457b1 mov      eax, dword ptr [r13 + 0x16f0]
00000001403457b8 mov      edx, 0x102
00000001403457bd mov      r9d, dword ptr [r13 + 0x16c8]
00000001403457c4 mov      r8, rbp
00000001403457c7 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403457ce mov      dword ptr [rsp + 0x28], eax
00000001403457d2 mov      eax, dword ptr [r13 + 0x16d8]
00000001403457d9 mov      dword ptr [rsp + 0x20], eax
00000001403457dd call     0x140001c34
00000001403457e2 jmp      0x140345a4d
00000001403457e7 cmp      byte ptr [r13 + 0x467c], 0
00000001403457ef lea      r12, [rip + 0x5da80a]
00000001403457f6 je       0x140345830
00000001403457f8 mov      rcx, qword ptr [rip + 0x5da801]
00000001403457ff cmp      rcx, r12
0000000140345802 je       0x14034598b
0000000140345808 cmp      byte ptr [rcx + 0x1e9], dil
000000014034580f jb       0x140345830
0000000140345811 mov      eax, dword ptr [rcx + 0x1ec]
0000000140345817 test     sil, al
000000014034581a je       0x140345830
000000014034581c mov      rcx, qword ptr [rcx + 0x1d8]
0000000140345823 mov      edx, 0x103
0000000140345828 mov      r8, rbp
000000014034582b call     0x140008874
0000000140345830 mov      rcx, qword ptr [rip + 0x5da7c9]
0000000140345837 cmp      rcx, r12
000000014034583a je       0x14034598b
0000000140345840 cmp      byte ptr [rcx + 0x1e9], dil
0000000140345847 jb       0x140345896
0000000140345849 mov      eax, dword ptr [rcx + 0x1ec]
000000014034584f test     sil, al
0000000140345852 je       0x140345896
0000000140345854 movzx    r8d, byte ptr [r13 + 0x189e]
000000014034585c mov      edx, 0x104
0000000140345861 movzx    eax, byte ptr [r13 + 0x1833]
0000000140345869 movzx    r10d, byte ptr [r13 + 0x17f8]
0000000140345871 movzx    r9d, byte ptr [r13 + 0x1832]
0000000140345879 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140345880 mov      dword ptr [rsp + 0x30], eax
0000000140345884 mov      dword ptr [rsp + 0x28], r8d
0000000140345889 mov      r8, rbp
000000014034588c mov      dword ptr [rsp + 0x20], r10d
0000000140345891 call     0x140008794
0000000140345896 mov      rcx, qword ptr [rip + 0x5da763]
000000014034589d cmp      rcx, r12
00000001403458a0 je       0x14034598b
00000001403458a6 cmp      byte ptr [rcx + 0x1e9], dil
00000001403458ad jb       0x1403458e9
00000001403458af mov      eax, dword ptr [rcx + 0x1ec]
00000001403458b5 test     sil, al
00000001403458b8 je       0x1403458e9
00000001403458ba movzx    eax, byte ptr [r13 + 0x1c24]
00000001403458c2 mov      edx, 0x105
00000001403458c7 movzx    r9d, byte ptr [r13 + 0x1c25]
00000001403458cf sub      eax, 0x12
00000001403458d2 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403458d9 sub      r9d, 0x12
00000001403458dd mov      r8, rbp
00000001403458e0 mov      dword ptr [rsp + 0x20], eax
00000001403458e4 call     0x140001bec
00000001403458e9 mov      rcx, qword ptr [rip + 0x5da710]
00000001403458f0 cmp      rcx, r12
00000001403458f3 je       0x14034598b
00000001403458f9 cmp      byte ptr [rcx + 0x1e9], dil
0000000140345900 jb       0x14034594f
0000000140345902 mov      eax, dword ptr [rcx + 0x1ec]
0000000140345908 test     sil, al
000000014034590b je       0x14034594f
000000014034590d movzx    r8d, byte ptr [r13 + 0x1836]
0000000140345915 mov      edx, 0x106
000000014034591a movzx    eax, byte ptr [r13 + 0x1837]
0000000140345922 movzx    r10d, byte ptr [r13 + 0x1835]
000000014034592a movzx    r9d, byte ptr [r13 + 0x1834]
0000000140345932 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140345939 mov      dword ptr [rsp + 0x30], eax
000000014034593d mov      dword ptr [rsp + 0x28], r8d
0000000140345942 mov      r8, rbp
0000000140345945 mov      dword ptr [rsp + 0x20], r10d
000000014034594a call     0x140008794
000000014034594f mov      rcx, qword ptr [rip + 0x5da6aa]
0000000140345956 cmp      rcx, r12
0000000140345959 je       0x14034598b
000000014034595b cmp      byte ptr [rcx + 0x1e9], dil
0000000140345962 jb       0x14034598b
0000000140345964 mov      eax, dword ptr [rcx + 0x1ec]
000000014034596a test     sil, al
000000014034596d je       0x14034598b
000000014034596f movzx    r9d, word ptr [r13 + 0x17b8]
0000000140345977 mov      edx, 0x107
000000014034597c mov      rcx, qword ptr [rcx + 0x1d8]
0000000140345983 mov      r8, rbp
0000000140345986 call     0x140001bb0
000000014034598b xor      r15b, r15b
000000014034598e mov      rax, qword ptr [rip + 0x5da66b]
0000000140345995 mov      qword ptr [rsp + 0x108], rax
000000014034599d cmp      rax, r12
00000001403459a0 je       0x140345a38
00000001403459a6 cmp      byte ptr [rax + 0x1e9], dil
00000001403459ad jb       0x140345a38
00000001403459b3 mov      eax, dword ptr [rax + 0x1ec]
00000001403459b9 test     sil, al
00000001403459bc je       0x140345a38
00000001403459be movzx    ecx, byte ptr [r13 + 0x1708]
00000001403459c6 mov      edx, 0x108
00000001403459cb movzx    ebx, r15b
00000001403459cf add      ecx, 2
00000001403459d2 movzx    r9d, r15b
00000001403459d6 inc      r9d
00000001403459d9 movzx    r8d, word ptr [r13 + rbx*2 + 0x1726]
00000001403459e2 mov      eax, dword ptr [r13 + rbx*4 + 0x1850]
00000001403459ea movzx    r11d, word ptr [r13 + rbx*2 + 0x1730]
00000001403459f3 movzx    r10d, word ptr [r13 + rbx*2 + 0x17ba]
00000001403459fc mov      dword ptr [rsp + 0x40], eax
0000000140345a00 mov      eax, dword ptr [r13 + rbx*4 + 0x183c]
0000000140345a08 shl      r8d, cl
0000000140345a0b shl      r11d, cl
0000000140345a0e mov      rcx, qword ptr [rsp + 0x108]
0000000140345a16 mov      dword ptr [rsp + 0x38], eax
0000000140345a1a mov      dword ptr [rsp + 0x30], r10d
0000000140345a1f mov      dword ptr [rsp + 0x28], r11d
0000000140345a24 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140345a2b mov      dword ptr [rsp + 0x20], r8d
0000000140345a30 mov      r8, rbp
0000000140345a33 call     0x1400087f4
0000000140345a38 inc      r15b
0000000140345a3b cmp      r15b, 5
0000000140345a3f jb       0x14034598e
0000000140345a45 mov      r15, qword ptr [rsp + 0xa0]
0000000140345a4d cmp      dword ptr [r13 + 0x16f8], 1
0000000140345a55 je       0x140345a8a
0000000140345a57 mov      rcx, qword ptr [rip + 0x5da5a2]
0000000140345a5e cmp      rcx, r12
0000000140345a61 je       0x140345cc4
0000000140345a67 cmp      byte ptr [rcx + 0x1e9], dil
0000000140345a6e jb       0x140345cc4
0000000140345a74 mov      eax, dword ptr [rcx + 0x1ec]
0000000140345a7a test     sil, al
0000000140345a7d je       0x140345cc4
0000000140345a83 mov      edx, 0x109
0000000140345a88 jmp      0x140345ac5
0000000140345a8a cmp      byte ptr [r13 + 0x18a0], 0
0000000140345a92 jne      0x140345ad9
0000000140345a94 mov      rcx, qword ptr [rip + 0x5da565]
0000000140345a9b cmp      rcx, r12
0000000140345a9e je       0x140345cc4
0000000140345aa4 cmp      byte ptr [rcx + 0x1e9], dil
0000000140345aab jb       0x140345cc4
0000000140345ab1 mov      eax, dword ptr [rcx + 0x1ec]
0000000140345ab7 test     sil, al
0000000140345aba je       0x140345cc4
0000000140345ac0 mov      edx, 0x10a
0000000140345ac5 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140345acc mov      r8, rbp
0000000140345acf call     0x140001b88
0000000140345ad4 jmp      0x140345cc4
0000000140345ad9 mov      r8d, dword ptr [r15 + 0x2414]
0000000140345ae0 mov      rcx, r13
0000000140345ae3 mov      edx, dword ptr [r15 + 0x23d4]
0000000140345aea call     0x140315b54
0000000140345aef mov      r8d, dword ptr [r15 + 0x23a4]
0000000140345af6 mov      rcx, r13
0000000140345af9 mov      edx, dword ptr [r15 + 0x2394]
0000000140345b00 movsx    ebx, al
0000000140345b03 add      bx, 0x6e
0000000140345b07 call     0x140315b54
0000000140345b0c movsx    edx, al
0000000140345b0f add      dx, 0x6e
0000000140345b13 mov      rcx, qword ptr [rip + 0x5da4e6]
0000000140345b1a cmp      rcx, r12
0000000140345b1d je       0x140345cc4
0000000140345b23 cmp      byte ptr [rcx + 0x1e9], dil
0000000140345b2a jb       0x140345b68
0000000140345b2c mov      eax, dword ptr [rcx + 0x1ec]
0000000140345b32 test     sil, al
0000000140345b35 je       0x140345b68
0000000140345b37 mov      r9, qword ptr [rsp + 0x100]
0000000140345b3f mov      rcx, qword ptr [rcx + 0x1d8]
0000000140345b46 movsx    eax, dx
0000000140345b49 mov      edx, 0x10b
0000000140345b4e mov      dword ptr [rsp + 0x30], eax
0000000140345b52 movsx    r8d, bx
0000000140345b56 mov      dword ptr [rsp + 0x28], r8d
0000000140345b5b mov      r8, rbp
0000000140345b5e mov      qword ptr [rsp + 0x20], r14
0000000140345b63 call     0x1400aa578
0000000140345b68 mov      rax, qword ptr [rip + 0x5da491]
0000000140345b6f mov      qword ptr [rsp + 0xa0], rax
0000000140345b77 cmp      rax, r12
0000000140345b7a je       0x140345cc4
0000000140345b80 cmp      byte ptr [rax + 0x1e9], dil
0000000140345b87 jb       0x140345cc4
0000000140345b8d mov      eax, dword ptr [rax + 0x1ec]
0000000140345b93 test     sil, al
0000000140345b96 je       0x140345cc4
0000000140345b9c movzx    eax, byte ptr [r13 + 0x18bc]
0000000140345ba4 movzx    ecx, byte ptr [r13 + 0x18bb]
0000000140345bac movzx    r8d, byte ptr [r13 + 0x18ba]
0000000140345bb4 mov      r9, qword ptr [rsp + 0xf0]
0000000140345bbc movzx    ebp, byte ptr [r13 + 0x18b4]
0000000140345bc4 movzx    r10d, byte ptr [r13 + 0x18b9]
0000000140345bcc movzx    r11d, byte ptr [r13 + 0x18b8]
0000000140345bd4 movzx    edx, byte ptr [r9 + 0x18af]
0000000140345bdc movzx    ebx, byte ptr [r13 + 0x18b7]
0000000140345be4 movzx    edi, byte ptr [r13 + 0x18b6]
0000000140345bec movzx    esi, byte ptr [r13 + 0x18b5]
0000000140345bf4 movzx    r14d, byte ptr [r13 + 0x18b3]
0000000140345bfc movzx    r15d, byte ptr [r13 + 0x18b2]
0000000140345c04 movzx    r12d, byte ptr [r13 + 0x18b1]
0000000140345c0c movzx    r13d, byte ptr [r13 + 0x18b0]
0000000140345c14 mov      dword ptr [rsp + 0x90], eax
0000000140345c1b mov      dword ptr [rsp + 0x88], ecx
0000000140345c22 mov      rcx, qword ptr [rsp + 0xa0]
0000000140345c2a mov      dword ptr [rsp + 0x80], r8d
0000000140345c32 mov      dword ptr [rsp + 0x78], r10d
0000000140345c37 mov      dword ptr [rsp + 0x70], r11d
0000000140345c3c mov      rcx, qword ptr [rcx + 0x1d8]
0000000140345c43 mov      dword ptr [rsp + 0x68], ebx
0000000140345c47 mov      dword ptr [rsp + 0x60], edi
0000000140345c4b mov      dword ptr [rsp + 0x58], esi
0000000140345c4f mov      dword ptr [rsp + 0x50], ebp
0000000140345c53 lea      rbp, [rip + 0x38b926]
0000000140345c5a mov      dword ptr [rsp + 0x48], r14d
0000000140345c5f mov      r8, rbp
0000000140345c62 mov      dword ptr [rsp + 0x100], edx
0000000140345c69 movzx    edx, byte ptr [r9 + 0x18ae]
0000000140345c71 mov      eax, dword ptr [rsp + 0x100]
0000000140345c78 movzx    r9d, byte ptr [r9 + 0x18ad]
0000000140345c80 mov      dword ptr [rsp + 0x40], r15d
0000000140345c85 mov      dword ptr [rsp + 0x38], r12d
0000000140345c8a mov      dword ptr [rsp + 0x108], edx
0000000140345c91 mov      edx, 0x10c
0000000140345c96 mov      dword ptr [rsp + 0x30], r13d
0000000140345c9b mov      dword ptr [rsp + 0x28], eax
0000000140345c9f mov      eax, dword ptr [rsp + 0x108]
0000000140345ca6 mov      dword ptr [rsp + 0x20], eax
0000000140345caa call     0x14033cf68
0000000140345caf mov      r13, qword ptr [rsp + 0xf0]
0000000140345cb7 lea      r12, [rip + 0x5da342]
0000000140345cbe mov      dil, 4
0000000140345cc1 mov      sil, 0x20
0000000140345cc4 test     byte ptr [r13 + 0x16bd], 1
0000000140345ccc jne      0x140345d20
0000000140345cce mov      r9d, dword ptr [r13 + 0x16d0]
0000000140345cd5 cmp      r9d, 3
0000000140345cd9 je       0x140345d20
0000000140345cdb mov      rcx, qword ptr [rip + 0x5da31e]
0000000140345ce2 cmp      rcx, r12
0000000140345ce5 je       0x140345fad
0000000140345ceb cmp      byte ptr [rcx + 0x1e9], dil
0000000140345cf2 jb       0x140345fad
0000000140345cf8 mov      eax, dword ptr [rcx + 0x1ec]
0000000140345cfe test     sil, al
0000000140345d01 je       0x140345fad
0000000140345d07 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140345d0e mov      edx, 0x10d
0000000140345d13 mov      r8, rbp
0000000140345d16 call     0x140001bb0
0000000140345d1b jmp      0x140345fad
0000000140345d20 mov      rcx, qword ptr [rip + 0x5da2d9]
0000000140345d27 cmp      rcx, r12
0000000140345d2a je       0x140345fad
0000000140345d30 cmp      byte ptr [rcx + 0x1e9], dil
0000000140345d37 jb       0x140345d86
0000000140345d39 mov      eax, dword ptr [rcx + 0x1ec]
0000000140345d3f test     sil, al
0000000140345d42 je       0x140345d86
0000000140345d44 movzx    r8d, byte ptr [r13 + 0x182b]
0000000140345d4c mov      edx, 0x10e
0000000140345d51 movzx    eax, byte ptr [r13 + 0x182d]
0000000140345d59 movzx    r10d, byte ptr [r13 + 0x182c]
0000000140345d61 movzx    r9d, byte ptr [r13 + 0x182a]
0000000140345d69 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140345d70 mov      dword ptr [rsp + 0x30], eax
0000000140345d74 mov      dword ptr [rsp + 0x28], r8d
0000000140345d79 mov      r8, rbp
0000000140345d7c mov      dword ptr [rsp + 0x20], r10d
0000000140345d81 call     0x140008794
0000000140345d86 mov      rcx, qword ptr [rip + 0x5da273]
0000000140345d8d cmp      rcx, r12
0000000140345d90 je       0x140345fad
0000000140345d96 cmp      byte ptr [rcx + 0x1e9], dil
0000000140345d9d jb       0x140345e7d
0000000140345da3 mov      eax, dword ptr [rcx + 0x1ec]
0000000140345da9 test     sil, al
0000000140345dac je       0x140345e7d
0000000140345db2 movzx    ebp, byte ptr [r13 + 0x171a]
0000000140345dba mov      edx, 0x111
0000000140345dbf movzx    r9d, byte ptr [r13 + 0x1720]
0000000140345dc7 movzx    r8d, byte ptr [r13 + 0x1721]
0000000140345dcf movzx    r15d, byte ptr [r13 + 0x1718]
0000000140345dd7 movzx    r14d, byte ptr [r13 + 0x1719]
0000000140345ddf movzx    esi, byte ptr [r13 + 0x171b]
0000000140345de7 movzx    edi, byte ptr [r13 + 0x171c]
0000000140345def movzx    ebx, byte ptr [r13 + 0x171d]
0000000140345df7 movzx    r11d, byte ptr [r13 + 0x171e]
0000000140345dff movzx    r10d, byte ptr [r13 + 0x171f]
0000000140345e07 movzx    eax, byte ptr [r13 + 0x1722]
0000000140345e0f mov      rcx, qword ptr [rcx + 0x1d8]
0000000140345e16 shr      ebp, 1
0000000140345e18 shr      r9d, 1
0000000140345e1b shr      r8d, 1
0000000140345e1e shr      r15d, 1
0000000140345e21 mov      dword ptr [rsp + 0x70], r15d
0000000140345e26 shr      r14d, 1
0000000140345e29 mov      dword ptr [rsp + 0x68], r14d
0000000140345e2e mov      dword ptr [rsp + 0x60], ebp
0000000140345e32 lea      rbp, [rip + 0x38b747]
0000000140345e39 shr      esi, 1
0000000140345e3b mov      dword ptr [rsp + 0x58], esi
0000000140345e3f shr      edi, 1
0000000140345e41 mov      dword ptr [rsp + 0x50], edi
0000000140345e45 shr      ebx, 1
0000000140345e47 mov      dword ptr [rsp + 0x48], ebx
0000000140345e4b shr      r11d, 1
0000000140345e4e mov      dword ptr [rsp + 0x40], r11d
0000000140345e53 shr      r10d, 1
0000000140345e56 mov      dword ptr [rsp + 0x38], r10d
0000000140345e5b mov      dword ptr [rsp + 0x30], r9d
0000000140345e60 lea      r9, [rip + 0x2f2899]
0000000140345e67 mov      dword ptr [rsp + 0x28], r8d
0000000140345e6c mov      r8, rbp
0000000140345e6f shr      eax, 1
0000000140345e71 mov      dword ptr [rsp + 0x20], eax
0000000140345e75 call     0x1401eb4f4
0000000140345e7a mov      dil, 4
0000000140345e7d mov      rax, qword ptr [rip + 0x5da17c]
0000000140345e84 mov      qword ptr [rsp + 0x108], rax
0000000140345e8c cmp      rax, r12
0000000140345e8f je       0x140345fad
0000000140345e95 cmp      byte ptr [rax + 0x1e9], dil
0000000140345e9c jb       0x140345fad
0000000140345ea2 mov      eax, dword ptr [rax + 0x1ec]
0000000140345ea8 test     al, 0x20
0000000140345eaa je       0x140345fad
0000000140345eb0 mov      r9, qword ptr [rsp + 0xf0]
0000000140345eb8 mov      edx, 0x112
0000000140345ebd movzx    ebp, byte ptr [r13 + 0x1823]
0000000140345ec5 movzx    r10d, byte ptr [r13 + 0x181e]
0000000140345ecd movzx    r11d, byte ptr [r13 + 0x181f]
0000000140345ed5 movzx    eax, byte ptr [r9 + 0x1829]
0000000140345edd movzx    ecx, byte ptr [r9 + 0x1828]
0000000140345ee5 movzx    ebx, byte ptr [r13 + 0x1820]
0000000140345eed movzx    edi, byte ptr [r13 + 0x1821]
0000000140345ef5 movzx    esi, byte ptr [r13 + 0x1822]
0000000140345efd movzx    r14d, byte ptr [r13 + 0x1824]
0000000140345f05 movzx    r15d, byte ptr [r13 + 0x1825]
0000000140345f0d movzx    r12d, byte ptr [r13 + 0x1826]
0000000140345f15 movzx    r13d, byte ptr [r13 + 0x1827]
0000000140345f1d mov      dword ptr [rsp + 0x80], r10d
0000000140345f25 mov      dword ptr [rsp + 0x78], r11d
0000000140345f2a mov      dword ptr [rsp + 0x70], ebx
0000000140345f2e mov      dword ptr [rsp + 0x68], edi
0000000140345f32 mov      dword ptr [rsp + 0x60], esi
0000000140345f36 mov      dword ptr [rsp + 0x58], ebp
0000000140345f3a lea      rbp, [rip + 0x38b63f]
0000000140345f41 mov      dword ptr [rsp + 0x50], r14d
0000000140345f46 mov      dword ptr [rsp + 0x48], r15d
0000000140345f4b mov      dword ptr [rsp + 0x100], eax
0000000140345f52 movzx    eax, byte ptr [r9 + 0x1831]
0000000140345f5a movzx    r9d, byte ptr [r9 + 0x1830]
0000000140345f62 and      eax, 1
0000000140345f65 mov      dword ptr [rsp + 0x40], r12d
0000000140345f6a mov      dword ptr [rsp + 0x38], r13d
0000000140345f6f mov      dword ptr [rsp + 0x30], ecx
0000000140345f73 mov      rcx, qword ptr [rsp + 0x108]
0000000140345f7b lea      r8d, [rax + rax*4]
0000000140345f7f mov      eax, dword ptr [rsp + 0x100]
0000000140345f86 mov      dword ptr [rsp + 0x28], eax
0000000140345f8a mov      dword ptr [rsp + 0x20], r8d
0000000140345f8f mov      r8, rbp
0000000140345f92 mov      rcx, qword ptr [rcx + 0x1d8]
0000000140345f99 call     0x140145480
0000000140345f9e mov      r13, qword ptr [rsp + 0xf0]
0000000140345fa6 lea      r12, [rip + 0x5da053]
0000000140345fad cmp      byte ptr [r13 + 0x16e1], 0
0000000140345fb5 jne      0x140346008
0000000140345fb7 mov      r9d, dword ptr [r13 + 0x16e8]
0000000140345fbe cmp      r9d, 2
0000000140345fc2 je       0x140346008
0000000140345fc4 mov      rcx, qword ptr [rip + 0x5da035]
0000000140345fcb cmp      rcx, r12
0000000140345fce je       0x140346268
0000000140345fd4 cmp      byte ptr [rcx + 0x1e9], 4
0000000140345fdb jb       0x140346268
0000000140345fe1 mov      eax, dword ptr [rcx + 0x1ec]
0000000140345fe7 test     al, 0x20
0000000140345fe9 je       0x140346268
0000000140345fef mov      rcx, qword ptr [rcx + 0x1d8]
0000000140345ff6 mov      edx, 0x113
0000000140345ffb mov      r8, rbp
0000000140345ffe call     0x140001bb0
0000000140346003 jmp      0x140346268
0000000140346008 mov      rcx, qword ptr [rip + 0x5d9ff1]
000000014034600f cmp      rcx, r12
0000000140346012 je       0x140346268
0000000140346018 cmp      byte ptr [rcx + 0x1e9], 4
000000014034601f jb       0x140346053
0000000140346021 mov      eax, dword ptr [rcx + 0x1ec]
0000000140346027 test     al, 0x20
0000000140346029 je       0x140346053
000000014034602b movzx    eax, byte ptr [r13 + 0x1897]
0000000140346033 mov      edx, 0x114
0000000140346038 movzx    r9d, byte ptr [r13 + 0x1896]
0000000140346040 mov      r8, rbp
0000000140346043 mov      rcx, qword ptr [rcx + 0x1d8]
000000014034604a mov      dword ptr [rsp + 0x20], eax
000000014034604e call     0x140001bec
0000000140346053 mov      rcx, qword ptr [rip + 0x5d9fa6]
000000014034605a cmp      rcx, r12
000000014034605d je       0x140346268
0000000140346063 cmp      byte ptr [rcx + 0x1e9], 4
000000014034606a jb       0x14034614a
0000000140346070 mov      eax, dword ptr [rcx + 0x1ec]
0000000140346076 test     al, 0x20
0000000140346078 je       0x14034614a
000000014034607e movzx    r8d, byte ptr [r13 + 0x1747]
0000000140346086 lea      r9, [rip + 0x2f2673]
000000014034608d movzx    r12d, byte ptr [r13 + 0x173e]
0000000140346095 mov      edx, 0x117
000000014034609a movzx    r15d, byte ptr [r13 + 0x173f]
00000001403460a2 movzx    r14d, byte ptr [r13 + 0x1740]
00000001403460aa movzx    ebp, byte ptr [r13 + 0x1741]
00000001403460b2 movzx    esi, byte ptr [r13 + 0x1742]
00000001403460ba movzx    edi, byte ptr [r13 + 0x1743]
00000001403460c2 movzx    ebx, byte ptr [r13 + 0x1744]
00000001403460ca movzx    r11d, byte ptr [r13 + 0x1745]
00000001403460d2 movzx    r10d, byte ptr [r13 + 0x1746]
00000001403460da movzx    eax, byte ptr [r13 + 0x1748]
00000001403460e2 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403460e9 shr      r8d, 1
00000001403460ec shr      r12d, 1
00000001403460ef mov      dword ptr [rsp + 0x70], r12d
00000001403460f4 shr      r15d, 1
00000001403460f7 mov      dword ptr [rsp + 0x68], r15d
00000001403460fc shr      r14d, 1
00000001403460ff mov      dword ptr [rsp + 0x60], r14d
0000000140346104 shr      ebp, 1
0000000140346106 mov      dword ptr [rsp + 0x58], ebp
000000014034610a shr      esi, 1
000000014034610c mov      dword ptr [rsp + 0x50], esi
0000000140346110 shr      edi, 1
0000000140346112 mov      dword ptr [rsp + 0x48], edi
0000000140346116 shr      ebx, 1
0000000140346118 mov      dword ptr [rsp + 0x40], ebx
000000014034611c shr      r11d, 1
000000014034611f mov      dword ptr [rsp + 0x38], r11d
0000000140346124 shr      r10d, 1
0000000140346127 mov      dword ptr [rsp + 0x30], r10d
000000014034612c mov      dword ptr [rsp + 0x28], r8d
0000000140346131 lea      r8, [rip + 0x38b448]
0000000140346138 shr      eax, 1
000000014034613a mov      dword ptr [rsp + 0x20], eax
000000014034613e call     0x1401eb4f4
0000000140346143 lea      r12, [rip + 0x5d9eb6]
000000014034614a mov      rax, qword ptr [rip + 0x5d9eaf]
0000000140346151 mov      qword ptr [rsp + 0x100], rax
0000000140346159 cmp      rax, r12
000000014034615c je       0x140346268
0000000140346162 cmp      byte ptr [rax + 0x1e9], 4
0000000140346169 jb       0x140346268
000000014034616f mov      eax, dword ptr [rax + 0x1ec]
0000000140346175 test     al, 0x20
0000000140346177 je       0x140346268
000000014034617d mov      r9, qword ptr [rsp + 0xf0]
0000000140346185 mov      edx, 0x118
000000014034618a movzx    r10d, byte ptr [r13 + 0x1888]
0000000140346192 movzx    r11d, byte ptr [r13 + 0x1889]
000000014034619a movzx    ebx, byte ptr [r13 + 0x188a]
00000001403461a2 movzx    eax, byte ptr [r9 + 0x1893]
00000001403461aa movzx    ecx, byte ptr [r9 + 0x1892]
00000001403461b2 movzx    edi, byte ptr [r13 + 0x188b]
00000001403461ba movzx    esi, byte ptr [r13 + 0x188c]
00000001403461c2 movzx    ebp, byte ptr [r13 + 0x188d]
00000001403461ca movzx    r14d, byte ptr [r13 + 0x188e]
00000001403461d2 movzx    r15d, byte ptr [r13 + 0x188f]
00000001403461da movzx    r12d, byte ptr [r13 + 0x1890]
00000001403461e2 movzx    r13d, byte ptr [r13 + 0x1891]
00000001403461ea mov      dword ptr [rsp + 0x80], r10d
00000001403461f2 mov      dword ptr [rsp + 0x78], r11d
00000001403461f7 mov      dword ptr [rsp + 0x70], ebx
00000001403461fb mov      dword ptr [rsp + 0x68], edi
00000001403461ff mov      dword ptr [rsp + 0x60], esi
0000000140346203 mov      dword ptr [rsp + 0x58], ebp
0000000140346207 mov      dword ptr [rsp + 0x50], r14d
000000014034620c mov      dword ptr [rsp + 0x48], r15d
0000000140346211 mov      dword ptr [rsp + 0xf0], eax
0000000140346218 movzx    eax, byte ptr [r9 + 0x189d]
0000000140346220 movzx    r9d, byte ptr [r9 + 0x189c]
0000000140346228 and      eax, 1
000000014034622b mov      dword ptr [rsp + 0x40], r12d
0000000140346230 mov      dword ptr [rsp + 0x38], r13d
0000000140346235 mov      dword ptr [rsp + 0x30], ecx
0000000140346239 mov      rcx, qword ptr [rsp + 0x100]
0000000140346241 lea      r8d, [rax + rax*4]
0000000140346245 mov      eax, dword ptr [rsp + 0xf0]
000000014034624c mov      dword ptr [rsp + 0x28], eax
0000000140346250 mov      dword ptr [rsp + 0x20], r8d
0000000140346255 lea      r8, [rip + 0x38b324]
000000014034625c mov      rcx, qword ptr [rcx + 0x1d8]
0000000140346263 call     0x140145480
0000000140346268 mov      rbx, qword ptr [rsp + 0xf8]
0000000140346270 add      rsp, 0xb0
0000000140346277 pop      r15
0000000140346279 pop      r14
000000014034627b pop      r13
000000014034627d pop      r12
000000014034627f pop      rdi
0000000140346280 pop      rsi
0000000140346281 pop      rbp
0000000140346282 ret      