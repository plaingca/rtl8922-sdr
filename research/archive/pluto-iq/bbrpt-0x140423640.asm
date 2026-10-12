0000000140423640 mov      qword ptr [rsp + 0x18], rbx
0000000140423645 push     rbp
0000000140423646 push     rsi
0000000140423647 push     rdi
0000000140423648 push     r12
000000014042364a push     r13
000000014042364c push     r14
000000014042364e push     r15
0000000140423650 sub      rsp, 0x60
0000000140423654 mov      rax, qword ptr [rip + 0x503e05]
000000014042365b xor      rax, rsp
000000014042365e mov      qword ptr [rsp + 0x58], rax
0000000140423663 mov      rdi, qword ptr [rsp + 0xc8]
000000014042366b lea      r14, [rcx + 0x264]
0000000140423672 xor      eax, eax
0000000140423674 xorps    xmm0, xmm0
0000000140423677 mov      ebp, 3
000000014042367c mov      qword ptr [rsp + 0x50], rax
0000000140423681 mov      rax, qword ptr [rcx + 0x18]
0000000140423685 mov      rbx, rcx
0000000140423688 mov      rcx, qword ptr [rcx + 8]
000000014042368c mov      r15, r9
000000014042368f mov      esi, r8d
0000000140423692 mov      r13, rdx
0000000140423695 movups   xmmword ptr [rsp + 0x30], xmm0
000000014042369a movups   xmmword ptr [rsp + 0x40], xmm0
000000014042369f cmp      r8d, ebp
00000001404236a2 jae      0x140423710
00000001404236a4 mov      rax, qword ptr [rax + 0x108]
00000001404236ab lea      rsi, [rbx + 0x1320]
00000001404236b2 mov      rdx, rsi
00000001404236b5 call     qword ptr [rip + 0x260c3d]
00000001404236bb mov      edx, dword ptr [rdi]
00000001404236bd mov      ecx, dword ptr [rsp + 0xc0]
00000001404236c4 cmp      edx, ecx
00000001404236c6 jae      0x1404236ee
00000001404236c8 lea      r9, [rip + 0x230261]
00000001404236cf mov      rax, qword ptr [rbx + 0x18]
00000001404236d3 sub      ecx, edx
00000001404236d5 mov      r8d, ecx
00000001404236d8 add      rdx, r15
00000001404236db mov      rcx, qword ptr [rbx + 8]
00000001404236df mov      rax, qword ptr [rax + 0x128]
00000001404236e6 call     qword ptr [rip + 0x260c0c]
00000001404236ec add      dword ptr [rdi], eax
00000001404236ee mov      rax, qword ptr [rbx + 0x18]
00000001404236f2 mov      rdx, rsi
00000001404236f5 mov      rcx, qword ptr [rbx + 8]
00000001404236f9 mov      rax, qword ptr [rax + 0x110]
0000000140423700 call     qword ptr [rip + 0x260bf2]
0000000140423706 mov      eax, 0x2e
000000014042370b jmp      0x140423976
0000000140423710 mov      rax, qword ptr [rax + 0x160]
0000000140423717 add      rdx, 0x10
000000014042371b mov      r8d, 0x10
0000000140423721 call     qword ptr [rip + 0x260bd1]
0000000140423727 mov      r8, qword ptr [rbx + 0x18]
000000014042372b mov      rcx, qword ptr [rbx + 8]
000000014042372f mov      dword ptr [rsp + 0x34], eax
0000000140423733 test     eax, eax
0000000140423735 jne      0x140423767
0000000140423737 mov      rax, qword ptr [r8 + 0x108]
000000014042373e lea      rsi, [rbx + 0x1320]
0000000140423745 mov      rdx, rsi
0000000140423748 call     qword ptr [rip + 0x260baa]
000000014042374e mov      edx, dword ptr [rdi]
0000000140423750 mov      ecx, dword ptr [rsp + 0xc0]
0000000140423757 cmp      edx, ecx
0000000140423759 jae      0x1404236ee
000000014042375b lea      r9, [rip + 0x2301ee]
0000000140423762 jmp      0x1404236cf
0000000140423767 mov      rax, qword ptr [r8 + 0x160]
000000014042376e lea      rdx, [r13 + 0x20]
0000000140423772 mov      r8d, 0xa
0000000140423778 call     qword ptr [rip + 0x260b7a]
000000014042377e test     eax, eax
0000000140423780 je       0x1404237c8
0000000140423782 cmp      esi, ebp
0000000140423784 je       0x14042378c
0000000140423786 test     sil, 1
000000014042378a jne      0x1404237c8
000000014042378c mov      rax, qword ptr [rbx + 0x18]
0000000140423790 lea      rsi, [rbx + 0x1320]
0000000140423797 mov      rcx, qword ptr [rbx + 8]
000000014042379b mov      rdx, rsi
000000014042379e mov      rax, qword ptr [rax + 0x108]
00000001404237a5 call     qword ptr [rip + 0x260b4d]
00000001404237ab mov      edx, dword ptr [rdi]
00000001404237ad mov      ecx, dword ptr [rsp + 0xc0]
00000001404237b4 cmp      edx, ecx
00000001404237b6 jae      0x1404236ee
00000001404237bc lea      r9, [rip + 0x2301bd]
00000001404237c3 jmp      0x1404236cf
00000001404237c8 cmp      eax, ebp
00000001404237ca jbe      0x140423808
00000001404237cc mov      rax, qword ptr [rbx + 0x18]
00000001404237d0 lea      rsi, [rbx + 0x1320]
00000001404237d7 mov      rcx, qword ptr [rbx + 8]
00000001404237db mov      rdx, rsi
00000001404237de mov      rax, qword ptr [rax + 0x108]
00000001404237e5 call     qword ptr [rip + 0x260b0d]
00000001404237eb mov      edx, dword ptr [rdi]
00000001404237ed mov      ecx, dword ptr [rsp + 0xc0]
00000001404237f4 cmp      edx, ecx
00000001404237f6 jae      0x1404236ee
00000001404237fc lea      r9, [rip + 0x2301ad]
0000000140423803 jmp      0x1404236cf
0000000140423808 test     eax, eax
000000014042380a je       0x140423868
000000014042380c lea      rsi, [rsp + 0x44]
0000000140423811 mov      r12d, eax
0000000140423814 add      r13, 0x40
0000000140423818 mov      rax, qword ptr [rbx + 0x18]
000000014042381c lea      rdx, [r13 - 0x10]
0000000140423820 mov      rcx, qword ptr [rbx + 8]
0000000140423824 mov      r8d, 0x10
000000014042382a mov      rax, qword ptr [rax + 0x160]
0000000140423831 call     qword ptr [rip + 0x260ac1]
0000000140423837 mov      rcx, qword ptr [rbx + 8]
000000014042383b mov      r8d, 0x10
0000000140423841 mov      dword ptr [rsi - 0xc], eax
0000000140423844 mov      rdx, r13
0000000140423847 mov      rax, qword ptr [rbx + 0x18]
000000014042384b mov      rax, qword ptr [rax + 0x160]
0000000140423852 call     qword ptr [rip + 0x260aa0]
0000000140423858 add      r13, 0x10
000000014042385c mov      dword ptr [rsi], eax
000000014042385e lea      rsi, [rsi + 4]
0000000140423862 sub      r12, 1
0000000140423866 jne      0x140423818
0000000140423868 mov      rax, qword ptr [rbx]
000000014042386b lea      rdx, [rsp + 0x30]
0000000140423870 mov      rcx, rbx
0000000140423873 mov      rax, qword ptr [rax + 0xd10]
000000014042387a call     qword ptr [rip + 0x260a78]
0000000140423880 mov      esi, eax
0000000140423882 test     eax, eax
0000000140423884 je       0x1404238cf
0000000140423886 mov      rcx, qword ptr [rip + 0x4fc773]
000000014042388d lea      rax, [rip + 0x4fc76c]
0000000140423894 cmp      rcx, rax
0000000140423897 je       0x1404238c8
0000000140423899 cmp      byte ptr [rcx + 0x169], 1
00000001404238a0 jb       0x1404238c8
00000001404238a2 mov      edx, dword ptr [rcx + 0x16c]
00000001404238a8 test     dl, 8
00000001404238ab je       0x1404238c8
00000001404238ad mov      rcx, qword ptr [rcx + 0x158]
00000001404238b4 lea      r8, [rip + 0x2b2d1d]
00000001404238bb mov      edx, 0x96
00000001404238c0 mov      r9d, esi
00000001404238c3 call     0x140001bb0
00000001404238c8 mov      eax, esi
00000001404238ca jmp      0x140423976
00000001404238cf mov      eax, dword ptr [rsp + 0x34]
00000001404238d3 lea      rdx, [rsp + 0x38]
00000001404238d8 sub      rdx, r14
00000001404238db mov      dword ptr [r14 + 4], eax
00000001404238df lea      r8, [rsp + 0x30]
00000001404238e4 sub      r8, r14
00000001404238e7 lea      rcx, [r14 + 0x14]
00000001404238eb mov      eax, dword ptr [rdx + rcx - 0x14]
00000001404238ef mov      dword ptr [rcx - 0xc], eax
00000001404238f2 mov      eax, dword ptr [r8 + rcx]
00000001404238f6 mov      dword ptr [rcx], eax
00000001404238f8 lea      rcx, [rcx + 4]
00000001404238fc sub      rbp, 1
0000000140423900 jne      0x1404238eb
0000000140423902 mov      rax, qword ptr [rbx + 0x18]
0000000140423906 lea      rsi, [rbx + 0x1320]
000000014042390d mov      rcx, qword ptr [rbx + 8]
0000000140423911 mov      rdx, rsi
0000000140423914 mov      rax, qword ptr [rax + 0x108]
000000014042391b call     qword ptr [rip + 0x2609d7]
0000000140423921 mov      edx, dword ptr [rdi]
0000000140423923 mov      ecx, dword ptr [rsp + 0xc0]
000000014042392a cmp      edx, ecx
000000014042392c jae      0x14042395c
000000014042392e mov      rax, qword ptr [rbx + 0x18]
0000000140423932 lea      r9, [rip + 0x230097]
0000000140423939 sub      ecx, edx
000000014042393b add      rdx, r15
000000014042393e mov      r8d, ecx
0000000140423941 mov      ecx, dword ptr [rsp + 0x34]
0000000140423945 mov      rax, qword ptr [rax + 0x128]
000000014042394c mov      dword ptr [rsp + 0x20], ecx
0000000140423950 mov      rcx, qword ptr [rbx + 8]
0000000140423954 call     qword ptr [rip + 0x26099e]
000000014042395a add      dword ptr [rdi], eax
000000014042395c mov      rax, qword ptr [rbx + 0x18]
0000000140423960 mov      rdx, rsi
0000000140423963 mov      rcx, qword ptr [rbx + 8]
0000000140423967 mov      rax, qword ptr [rax + 0x110]
000000014042396e call     qword ptr [rip + 0x260984]
0000000140423974 xor      eax, eax
0000000140423976 mov      rcx, qword ptr [rsp + 0x58]
000000014042397b xor      rcx, rsp
000000014042397e call     0x1405f45b0
0000000140423983 mov      rbx, qword ptr [rsp + 0xb0]
000000014042398b add      rsp, 0x60
000000014042398f pop      r15
0000000140423991 pop      r14
0000000140423993 pop      r13
0000000140423995 pop      r12
0000000140423997 pop      rdi
0000000140423998 pop      rsi
0000000140423999 pop      rbp
000000014042399a ret      