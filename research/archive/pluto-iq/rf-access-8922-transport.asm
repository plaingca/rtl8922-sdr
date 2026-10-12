00000001403f5778 mov      rax, rsp
00000001403f577b mov      qword ptr [rax + 8], rbx
00000001403f577f mov      qword ptr [rax + 0x10], rbp
00000001403f5783 mov      qword ptr [rax + 0x18], rsi
00000001403f5787 mov      qword ptr [rax + 0x20], rdi
00000001403f578b push     r12
00000001403f578d push     r14
00000001403f578f push     r15
00000001403f5791 sub      rsp, 0x30
00000001403f5795 mov      esi, r8d
00000001403f5798 mov      r14d, r9d
00000001403f579b shr      esi, 0x10
00000001403f579e mov      ebp, r8d
00000001403f57a1 and      esi, 1
00000001403f57a4 mov      ebx, edx
00000001403f57a6 mov      r15, rcx
00000001403f57a9 mov      rcx, qword ptr [rip + 0x52a850]
00000001403f57b0 lea      r12, [rip + 0x52a849]
00000001403f57b7 cmp      rcx, r12
00000001403f57ba je       0x1403f57f0
00000001403f57bc cmp      byte ptr [rcx + 0x1e9], 4
00000001403f57c3 jb       0x1403f57f0
00000001403f57c5 test     dword ptr [rcx + 0x1ec], 0x10000000
00000001403f57cf je       0x1403f57f0
00000001403f57d1 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403f57d8 lea      r9, [rip + 0x25aa71]
00000001403f57df mov      edx, 0x16
00000001403f57e4 lea      r8, [rip + 0x2e006d]
00000001403f57eb call     0x140008874
00000001403f57f0 cmp      ebx, 1
00000001403f57f3 jle      0x1403f583d
00000001403f57f5 mov      rcx, qword ptr [rip + 0x52a804]
00000001403f57fc cmp      rcx, r12
00000001403f57ff je       0x1403f5839
00000001403f5801 cmp      byte ptr [rcx + 0x169], 3
00000001403f5808 jb       0x1403f5839
00000001403f580a test     dword ptr [rcx + 0x16c], 0x1000
00000001403f5814 je       0x1403f5839
00000001403f5816 mov      rcx, qword ptr [rcx + 0x158]
00000001403f581d lea      r9, [rip + 0x25aa2c]
00000001403f5824 mov      edx, 0x17
00000001403f5829 mov      dword ptr [rsp + 0x20], ebx
00000001403f582d lea      r8, [rip + 0x2e0024]
00000001403f5834 call     0x1400088d8
00000001403f5839 xor      al, al
00000001403f583b jmp      0x1403f58a4
00000001403f583d mov      rcx, qword ptr [rip + 0x52a7bc]
00000001403f5844 mov      edi, dword ptr [rsp + 0x70]
00000001403f5848 cmp      rcx, r12
00000001403f584b je       0x1403f5885
00000001403f584d cmp      byte ptr [rcx + 0x1e9], 4
00000001403f5854 jb       0x1403f5885
00000001403f5856 test     dword ptr [rcx + 0x1ec], 0x10000000
00000001403f5860 je       0x1403f5885
00000001403f5862 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403f5869 lea      r8, [rip + 0x2dffe8]
00000001403f5870 mov      edx, 0x18
00000001403f5875 mov      dword ptr [rsp + 0x28], edi
00000001403f5879 mov      r9d, esi
00000001403f587c mov      dword ptr [rsp + 0x20], ebx
00000001403f5880 call     0x140001c34
00000001403f5885 mov      dword ptr [rsp + 0x20], edi
00000001403f5889 mov      r9d, r14d
00000001403f588c mov      r8d, ebp
00000001403f588f mov      edx, ebx
00000001403f5891 mov      rcx, r15
00000001403f5894 test     esi, esi
00000001403f5896 jne      0x1403f589f
00000001403f5898 call     0x140408964
00000001403f589d jmp      0x1403f58a4
00000001403f589f call     0x140408acc
00000001403f58a4 mov      rbx, qword ptr [rsp + 0x50]
00000001403f58a9 mov      rbp, qword ptr [rsp + 0x58]
00000001403f58ae mov      rsi, qword ptr [rsp + 0x60]
00000001403f58b3 mov      rdi, qword ptr [rsp + 0x68]
00000001403f58b8 add      rsp, 0x30
00000001403f58bc pop      r15
00000001403f58be pop      r14
00000001403f58c0 pop      r12
00000001403f58c2 ret      