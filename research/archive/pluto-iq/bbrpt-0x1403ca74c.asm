00000001403ca74c push     rbp
00000001403ca74e push     rbx
00000001403ca74f push     rsi
00000001403ca750 push     rdi
00000001403ca751 push     r12
00000001403ca753 push     r13
00000001403ca755 push     r14
00000001403ca757 push     r15
00000001403ca759 lea      rbp, [rsp - 0x17]
00000001403ca75e sub      rsp, 0xf8
00000001403ca765 mov      rax, qword ptr [rip + 0x55ccf4]
00000001403ca76c xor      rax, rsp
00000001403ca76f mov      qword ptr [rbp - 1], rax
00000001403ca773 mov      rdi, qword ptr [rbp + 0x7f]
00000001403ca777 lea      r15, [rdx + 0x10]
00000001403ca77b xor      eax, eax
00000001403ca77d mov      qword ptr [rbp - 0x59], r9
00000001403ca781 xorps    xmm0, xmm0
00000001403ca784 mov      qword ptr [rbp - 0x69], rdx
00000001403ca788 xor      esi, esi
00000001403ca78a mov      qword ptr [rbp - 0x51], rdi
00000001403ca78e cmp      byte ptr [r15], 0x2d
00000001403ca792 mov      r14, r9
00000001403ca795 mov      r12, r8
00000001403ca798 mov      qword ptr [rbp - 0x29], rax
00000001403ca79c mov      r13, rdx
00000001403ca79f mov      rbx, rcx
00000001403ca7a2 movups   xmmword ptr [rbp - 0x49], xmm0
00000001403ca7a6 movups   xmmword ptr [rbp - 0x39], xmm0
00000001403ca7aa jne      0x1403ca858
00000001403ca7b0 cmp      byte ptr [r15 + 1], 0x68
00000001403ca7b5 jne      0x1403ca858
00000001403ca7bb cmp      byte ptr [r15 + 2], al
00000001403ca7bf jne      0x1403ca858
00000001403ca7c5 mov      eax, dword ptr [r8]
00000001403ca7c8 mov      ecx, dword ptr [rdi]
00000001403ca7ca cmp      eax, ecx
00000001403ca7cc jae      0x1403ca7ea
00000001403ca7ce sub      ecx, eax
00000001403ca7d0 lea      r8, [rip + 0x27f5f9]
00000001403ca7d7 mov      edx, ecx
00000001403ca7d9 lea      rcx, [r9 + rax]
00000001403ca7dd call     0x140044426
00000001403ca7e2 add      dword ptr [r12], eax
00000001403ca7e6 mov      eax, dword ptr [r12]
00000001403ca7ea mov      ecx, dword ptr [rdi]
00000001403ca7ec cmp      eax, ecx
00000001403ca7ee jae      0x1403ca80d
00000001403ca7f0 sub      ecx, eax
00000001403ca7f2 lea      r8, [rip + 0x27f5f7]
00000001403ca7f9 mov      edx, ecx
00000001403ca7fb mov      ecx, eax
00000001403ca7fd add      rcx, r14
00000001403ca800 call     0x140044426
00000001403ca805 add      dword ptr [r12], eax
00000001403ca809 mov      eax, dword ptr [r12]
00000001403ca80d mov      ecx, dword ptr [rdi]
00000001403ca80f cmp      eax, ecx
00000001403ca811 jae      0x1403ca830
00000001403ca813 sub      ecx, eax
00000001403ca815 lea      r8, [rip + 0x27f614]
00000001403ca81c mov      edx, ecx
00000001403ca81e mov      ecx, eax
00000001403ca820 add      rcx, r14
00000001403ca823 call     0x140044426
00000001403ca828 add      dword ptr [r12], eax
00000001403ca82c mov      eax, dword ptr [r12]
00000001403ca830 mov      ecx, dword ptr [rdi]
00000001403ca832 cmp      eax, ecx
00000001403ca834 jae      0x1403cab3c
00000001403ca83a sub      ecx, eax
00000001403ca83c lea      r8, [rip + 0x27f5fd]
00000001403ca843 mov      edx, ecx
00000001403ca845 mov      ecx, eax
00000001403ca847 add      rcx, r14
00000001403ca84a call     0x140044426
00000001403ca84f add      dword ptr [r12], eax
00000001403ca853 jmp      0x1403cab3c
00000001403ca858 mov      dl, 3
00000001403ca85a call     0x1403c4ebc
00000001403ca85f test     al, al
00000001403ca861 jne      0x1403ca88e
00000001403ca863 mov      ecx, dword ptr [r12]
00000001403ca867 mov      eax, dword ptr [rdi]
00000001403ca869 cmp      ecx, eax
00000001403ca86b jae      0x1403cab3c
00000001403ca871 movzx    r9d, byte ptr [rbx + 0x14cf]
00000001403ca879 lea      r8, [rip + 0x27f5d0]
00000001403ca880 sub      eax, ecx
00000001403ca882 add      rcx, r14
00000001403ca885 mov      edx, eax
00000001403ca887 call     0x140044426
00000001403ca88c jmp      0x1403ca84f
00000001403ca88e lea      rdx, [rip + 0x27f5eb]
00000001403ca895 mov      rcx, r15
00000001403ca898 call     0x140044360
00000001403ca89d test     eax, eax
00000001403ca89f jne      0x1403ca8e5
00000001403ca8a1 mov      eax, dword ptr [rbx + 0x13f0]
00000001403ca8a7 cmp      eax, 0x20000
00000001403ca8ac je       0x1403ca8cf
00000001403ca8ae cmp      eax, 0x100000
00000001403ca8b3 jne      0x1403cab3c
00000001403ca8b9 mov      r9, rdi
00000001403ca8bc mov      r8, r14
00000001403ca8bf mov      rdx, r12
00000001403ca8c2 mov      rcx, rbx
00000001403ca8c5 call     0x1403ed098
00000001403ca8ca jmp      0x1403cab3c
00000001403ca8cf mov      r9, rdi
00000001403ca8d2 mov      r8, r14
00000001403ca8d5 mov      rdx, r12
00000001403ca8d8 mov      rcx, rbx
00000001403ca8db call     0x1403ed098
00000001403ca8e0 jmp      0x1403cab3c
00000001403ca8e5 lea      rdx, [rip + 0x22dce4]
00000001403ca8ec mov      rcx, r15
00000001403ca8ef call     0x140044360
00000001403ca8f4 test     eax, eax
00000001403ca8f6 jne      0x1403ca946
00000001403ca8f8 mov      eax, dword ptr [rbx + 0x13f0]
00000001403ca8fe mov      byte ptr [rbx + 0x1670], 1
00000001403ca905 cmp      eax, 0x20000
00000001403ca90a je       0x1403ca926
00000001403ca90c cmp      eax, 0x100000
00000001403ca911 jne      0x1403ca937
00000001403ca913 mov      r9, rdi
00000001403ca916 mov      r8, r14
00000001403ca919 mov      rdx, r12
00000001403ca91c mov      rcx, rbx
00000001403ca91f call     0x1403ed098
00000001403ca924 jmp      0x1403ca937
00000001403ca926 mov      r9, rdi
00000001403ca929 mov      r8, r14
00000001403ca92c mov      rdx, r12
00000001403ca92f mov      rcx, rbx
00000001403ca932 call     0x1403ed098
00000001403ca937 mov      byte ptr [rbx + 0x1670], sil
00000001403ca93e mov      rcx, rbx
00000001403ca941 jmp      0x1403ca9dc
00000001403ca946 lea      rax, [r13 + 0x20]
00000001403ca94a mov      rcx, r15
00000001403ca94d lea      rdx, [rip + 0x27f53c]
00000001403ca954 mov      qword ptr [rbp - 0x61], rax
00000001403ca958 call     0x140044360
00000001403ca95d lea      r13, [rip + 0x22ca3c]
00000001403ca964 lea      r8, [rbp - 0x49]
00000001403ca968 mov      rdx, r13
00000001403ca96b test     eax, eax
00000001403ca96d jne      0x1403ca9e6
00000001403ca96f mov      rcx, qword ptr [rbp - 0x61]
00000001403ca973 call     0x140044420
00000001403ca978 mov      rdi, qword ptr [rbp - 0x69]
00000001403ca97c lea      r8, [rbp - 0x45]
00000001403ca980 mov      rdx, r13
00000001403ca983 lea      rcx, [rdi + 0x30]
00000001403ca987 call     0x140044420
00000001403ca98c lea      rcx, [rdi + 0x40]
00000001403ca990 mov      rdx, r13
00000001403ca993 lea      r8, [rbp - 0x41]
00000001403ca997 call     0x140044420
00000001403ca99c mov      edx, dword ptr [rbp - 0x49]
00000001403ca99f mov      rcx, rbx
00000001403ca9a2 call     0x1403cced8
00000001403ca9a7 mov      esi, dword ptr [rbp - 0x41]
00000001403ca9aa mov      edi, dword ptr [rbp - 0x45]
00000001403ca9ad jmp      0x1403ca9d5
00000001403ca9af mov      edx, edi
00000001403ca9b1 call     0x1403ccea8
00000001403ca9b6 mov      rcx, rbx
00000001403ca9b9 call     0x1403cb928
00000001403ca9be mov      edx, dword ptr [rbp - 0x49]
00000001403ca9c1 lea      rcx, [rip + 0x27f4d8]
00000001403ca9c8 mov      r9d, eax
00000001403ca9cb mov      r8d, edi
00000001403ca9ce call     0x140044366
00000001403ca9d3 inc      edi
00000001403ca9d5 mov      rcx, rbx
00000001403ca9d8 cmp      edi, esi
00000001403ca9da jbe      0x1403ca9af
00000001403ca9dc call     0x1403ccad8
00000001403ca9e1 jmp      0x1403cab3c
00000001403ca9e6 mov      rcx, r15
00000001403ca9e9 call     0x140044420
00000001403ca9ee mov      rcx, qword ptr [rbp - 0x61]
00000001403ca9f2 lea      r8, [rbp - 0x45]
00000001403ca9f6 mov      rdx, r13
00000001403ca9f9 call     0x140044420
00000001403ca9fe mov      edx, dword ptr [rbp - 0x49]
00000001403caa01 mov      rcx, rbx
00000001403caa04 call     0x1403cced8
00000001403caa09 mov      edx, dword ptr [rbp - 0x45]
00000001403caa0c mov      rcx, rbx
00000001403caa0f call     0x1403ccea8
00000001403caa14 mov      rcx, rbx
00000001403caa17 call     0x1403cb928
00000001403caa1c mov      rcx, rbx
00000001403caa1f mov      r15d, eax
00000001403caa22 call     0x1403ccad8
00000001403caa27 lea      r8, [rbp - 0x21]
00000001403caa2b mov      ecx, esi
00000001403caa2d mov      edx, 1
00000001403caa32 shl      edx, cl
00000001403caa34 inc      esi
00000001403caa36 and      edx, r15d
00000001403caa39 shr      edx, cl
00000001403caa3b mov      byte ptr [r8], dl
00000001403caa3e inc      r8
00000001403caa41 cmp      esi, 0x20
00000001403caa44 jb       0x1403caa2b
00000001403caa46 mov      eax, dword ptr [r12]
00000001403caa4a mov      ecx, dword ptr [rdi]
00000001403caa4c mov      dword ptr [rbp - 0x71], eax
00000001403caa4f cmp      eax, ecx
00000001403caa51 jae      0x1403caa82
00000001403caa53 mov      r9d, dword ptr [rbp - 0x49]
00000001403caa57 lea      r8, [rip + 0x27f472]
00000001403caa5e sub      ecx, eax
00000001403caa60 mov      dword ptr [rsp + 0x28], r15d
00000001403caa65 mov      edx, ecx
00000001403caa67 lea      rcx, [r14 + rax]
00000001403caa6b mov      eax, dword ptr [rbp - 0x45]
00000001403caa6e mov      dword ptr [rsp + 0x20], eax
00000001403caa72 call     0x140044426
00000001403caa77 add      dword ptr [r12], eax
00000001403caa7b mov      eax, dword ptr [r12]
00000001403caa7f mov      dword ptr [rbp - 0x71], eax
00000001403caa82 mov      ecx, 4
00000001403caa87 mov      dword ptr [rbp - 0x69], ecx
00000001403caa8a mov      r8d, dword ptr [rdi]
00000001403caa8d mov      dl, cl
00000001403caa8f shl      dl, 3
00000001403caa92 sub      dl, 8
00000001403caa95 mov      dword ptr [rbp - 0x61], r8d
00000001403caa99 cmp      eax, r8d
00000001403caa9c jae      0x1403cab2d
00000001403caaa2 mov      eax, dword ptr [rbp - 0x71]
00000001403caaa5 movzx    ecx, dl
00000001403caaa8 movzx    r13d, dl
00000001403caaac mov      edx, dword ptr [rbp - 0x61]
00000001403caaaf sub      edx, eax
00000001403caab1 movzx    r15d, byte ptr [rbp + rcx - 0x21]
00000001403caab7 movzx    r11d, byte ptr [rbp + rcx - 0x1f]
00000001403caabd lea      r9d, [r13 + 7]
00000001403caac1 movzx    ebx, byte ptr [rbp + rcx - 0x1e]
00000001403caac6 movzx    edi, byte ptr [rbp + rcx - 0x1d]
00000001403caacb movzx    esi, byte ptr [rbp + rcx - 0x1c]
00000001403caad0 movzx    r14d, byte ptr [rbp + rcx - 0x1b]
00000001403caad6 mov      ecx, eax
00000001403caad8 movzx    r8d, byte ptr [rbp + r9 - 0x21]
00000001403caade movzx    r10d, byte ptr [rbp + r13 - 0x20]
00000001403caae4 add      rcx, qword ptr [rbp - 0x59]
00000001403caae8 mov      dword ptr [rsp + 0x60], r15d
00000001403caaed mov      dword ptr [rsp + 0x58], r10d
00000001403caaf2 mov      dword ptr [rsp + 0x50], r11d
00000001403caaf7 mov      dword ptr [rsp + 0x48], ebx
00000001403caafb mov      dword ptr [rsp + 0x40], edi
00000001403caaff mov      dword ptr [rsp + 0x38], esi
00000001403cab03 mov      dword ptr [rsp + 0x30], r14d
00000001403cab08 mov      dword ptr [rsp + 0x28], r8d
00000001403cab0d lea      r8, [rip + 0x27f3ec]
00000001403cab14 mov      dword ptr [rsp + 0x20], r13d
00000001403cab19 call     0x140044426
00000001403cab1e add      dword ptr [r12], eax
00000001403cab22 mov      eax, dword ptr [r12]
00000001403cab26 mov      rdi, qword ptr [rbp - 0x51]
00000001403cab2a mov      ecx, dword ptr [rbp - 0x69]
00000001403cab2d add      ecx, -1
00000001403cab30 mov      dword ptr [rbp - 0x71], eax
00000001403cab33 mov      dword ptr [rbp - 0x69], ecx
00000001403cab36 jne      0x1403caa8a
00000001403cab3c mov      rcx, qword ptr [rbp - 1]
00000001403cab40 xor      rcx, rsp
00000001403cab43 call     0x1405f45b0
00000001403cab48 add      rsp, 0xf8
00000001403cab4f pop      r15
00000001403cab51 pop      r14
00000001403cab53 pop      r13
00000001403cab55 pop      r12
00000001403cab57 pop      rdi
00000001403cab58 pop      rsi
00000001403cab59 pop      rbx
00000001403cab5a pop      rbp
00000001403cab5b ret      