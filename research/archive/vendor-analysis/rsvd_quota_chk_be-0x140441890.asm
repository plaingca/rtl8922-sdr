0000000140441890 push     rbx
0000000140441892 push     rbp
0000000140441893 push     rsi
0000000140441894 push     rdi
0000000140441895 push     r12
0000000140441897 push     r13
0000000140441899 push     r14
000000014044189b push     r15
000000014044189d sub      rsp, 0x68
00000001404418a1 mov      rax, qword ptr [rip + 0x4e5bb8]
00000001404418a8 xor      rax, rsp
00000001404418ab mov      qword ptr [rsp + 0x50], rax
00000001404418b0 mov      rax, qword ptr [rcx]
00000001404418b3 xor      esi, esi
00000001404418b5 mov      r14, qword ptr [rsp + 0xd0]
00000001404418bd mov      rbx, rdx
00000001404418c0 mov      ebp, r9d
00000001404418c3 mov      r13, r8
00000001404418c6 mov      rdi, rcx
00000001404418c9 mov      r15, qword ptr [rax]
00000001404418cc mov      dword ptr [rdx], esi
00000001404418ce lea      rdx, [rsp + 0x40]
00000001404418d3 mov      qword ptr [rsp + 0x44], rsi
00000001404418d8 mov      dword ptr [rsp + 0x40], esi
00000001404418dc call     0x14041b3cc
00000001404418e1 inc      dword ptr [rbx]
00000001404418e3 mov      r12d, eax
00000001404418e6 test     eax, eax
00000001404418e8 je       0x14044195c
00000001404418ea mov      rax, qword ptr [rdi + 0x18]
00000001404418ee lea      rbx, [rdi + 0x1320]
00000001404418f5 mov      rcx, qword ptr [rdi + 8]
00000001404418f9 mov      rdx, rbx
00000001404418fc mov      rax, qword ptr [rax + 0x108]
0000000140441903 call     qword ptr [rip + 0x2429ef]
0000000140441909 mov      ecx, dword ptr [r14]
000000014044190c cmp      ecx, ebp
000000014044190e jae      0x140441954
0000000140441910 mov      rax, qword ptr [rdi + 0x18]
0000000140441914 lea      rdx, [rcx + r13]
0000000140441918 sub      ebp, ecx
000000014044191a mov      dword ptr [rsp + 0x30], r12d
000000014044191f mov      rcx, qword ptr [rdi + 8]
0000000140441923 lea      r9, [rip + 0x215dc6]
000000014044192a mov      r8d, ebp
000000014044192d mov      r10, qword ptr [rax + 0x128]
0000000140441934 mov      eax, dword ptr [rsp + 0x40]
0000000140441938 mov      dword ptr [rsp + 0x28], eax
000000014044193c lea      rax, [rip + 0x215d8d]
0000000140441943 mov      qword ptr [rsp + 0x20], rax
0000000140441948 mov      rax, r10
000000014044194b call     qword ptr [rip + 0x2429a7]
0000000140441951 add      dword ptr [r14], eax
0000000140441954 mov      rdx, rbx
0000000140441957 jmp      0x1404419df
000000014044195c mov      rax, qword ptr [r15 + 0x20]
0000000140441960 mov      edx, 0x9f10
0000000140441965 mov      rcx, rdi
0000000140441968 call     qword ptr [rip + 0x24298a]
000000014044196e mov      ebx, eax
0000000140441970 movzx    eax, word ptr [rsp + 0x48]
0000000140441975 shr      ebx, 0x10
0000000140441978 and      ebx, 0xfff
000000014044197e cmp      eax, ebx
0000000140441980 je       0x1404419f9
0000000140441982 mov      rax, qword ptr [rdi + 0x18]
0000000140441986 lea      rsi, [rdi + 0x1320]
000000014044198d mov      rcx, qword ptr [rdi + 8]
0000000140441991 mov      rdx, rsi
0000000140441994 mov      rax, qword ptr [rax + 0x108]
000000014044199b call     qword ptr [rip + 0x242957]
00000001404419a1 mov      edx, dword ptr [r14]
00000001404419a4 cmp      edx, ebp
00000001404419a6 jae      0x1404419dc
00000001404419a8 movzx    ecx, word ptr [rsp + 0x48]
00000001404419ad lea      r9, [rip + 0x215d5c]
00000001404419b4 mov      rax, qword ptr [rdi + 0x18]
00000001404419b8 sub      ebp, edx
00000001404419ba mov      dword ptr [rsp + 0x28], ebx
00000001404419be add      rdx, r13
00000001404419c1 mov      dword ptr [rsp + 0x20], ecx
00000001404419c5 mov      rcx, qword ptr [rdi + 8]
00000001404419c9 mov      rax, qword ptr [rax + 0x128]
00000001404419d0 mov      r8d, ebp
00000001404419d3 call     qword ptr [rip + 0x24291f]
00000001404419d9 add      dword ptr [r14], eax
00000001404419dc mov      rdx, rsi
00000001404419df mov      rax, qword ptr [rdi + 0x18]
00000001404419e3 mov      rcx, qword ptr [rdi + 8]
00000001404419e7 mov      rax, qword ptr [rax + 0x110]
00000001404419ee call     qword ptr [rip + 0x242904]
00000001404419f4 mov      esi, 1
00000001404419f9 mov      eax, esi
00000001404419fb mov      rcx, qword ptr [rsp + 0x50]
0000000140441a00 xor      rcx, rsp
0000000140441a03 call     0x1405f45b0
0000000140441a08 add      rsp, 0x68
0000000140441a0c pop      r15
0000000140441a0e pop      r14
0000000140441a10 pop      r13
0000000140441a12 pop      r12
0000000140441a14 pop      rdi
0000000140441a15 pop      rsi
0000000140441a16 pop      rbp
0000000140441a17 pop      rbx
0000000140441a18 ret      