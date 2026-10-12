00000001402c3830 mov      qword ptr [rsp + 8], rbx
00000001402c3835 mov      qword ptr [rsp + 0x10], rbp
00000001402c383a mov      qword ptr [rsp + 0x18], rsi
00000001402c383f push     rdi
00000001402c3840 push     r14
00000001402c3842 push     r15
00000001402c3844 sub      rsp, 0x50
00000001402c3848 mov      rax, qword ptr [rcx + 8]
00000001402c384c xor      edi, edi
00000001402c384e mov      rbx, qword ptr [rdx]
00000001402c3851 mov      r15d, 1
00000001402c3857 mov      ebp, dword ptr [rdx + 0x10]
00000001402c385a mov      esi, r15d
00000001402c385d add      rbp, rbx
00000001402c3860 movzx    r14d, byte ptr [rax + 0x4b3]
00000001402c3868 lea      rax, [r14 + rbx]
00000001402c386c cmp      rax, rbp
00000001402c386f ja       0x1402c390b
00000001402c3875 mov      esi, edi
00000001402c3877 mov      rcx, qword ptr [rip + 0x65c782]
00000001402c387e lea      rax, [rip + 0x65c77b]
00000001402c3885 cmp      rcx, rax
00000001402c3888 je       0x1402c38f7
00000001402c388a cmp      byte ptr [rcx + 0x169], 4
00000001402c3891 jb       0x1402c38f7
00000001402c3893 mov      eax, dword ptr [rcx + 0x16c]
00000001402c3899 test     r15b, al
00000001402c389c je       0x1402c38f7
00000001402c389e mov      eax, dword ptr [rbx]
00000001402c38a0 mov      edx, 0x22
00000001402c38a5 movzx    r10d, word ptr [rbx]
00000001402c38a9 mov      rcx, qword ptr [rcx + 0x158]
00000001402c38b0 and      r10d, 0x3fff
00000001402c38b7 shr      eax, 0x16
00000001402c38ba movzx    r8d, al
00000001402c38be mov      eax, dword ptr [rbx + 4]
00000001402c38c1 mov      dword ptr [rsp + 0x40], r8d
00000001402c38c6 lea      r8, [rip + 0x3d5be3]
00000001402c38cd mov      dword ptr [rsp + 0x38], eax
00000001402c38d1 lea      rax, [rip + 0x362158]
00000001402c38d8 mov      dword ptr [rsp + 0x30], r10d
00000001402c38dd movzx    r9d, di
00000001402c38e1 mov      dword ptr [rsp + 0x28], r9d
00000001402c38e6 lea      r9, [rip + 0x34aaa3]
00000001402c38ed mov      qword ptr [rsp + 0x20], rax
00000001402c38f2 call     0x14019ee74
00000001402c38f7 add      rbx, r14
00000001402c38fa add      di, r15w
00000001402c38fe lea      rcx, [r14 + rbx]
00000001402c3902 cmp      rcx, rbp
00000001402c3905 jbe      0x1402c3877
00000001402c390b lea      r11, [rsp + 0x50]
00000001402c3910 mov      eax, esi
00000001402c3912 mov      rbx, qword ptr [r11 + 0x20]
00000001402c3916 mov      rbp, qword ptr [r11 + 0x28]
00000001402c391a mov      rsi, qword ptr [r11 + 0x30]
00000001402c391e mov      rsp, r11
00000001402c3921 pop      r15
00000001402c3923 pop      r14
00000001402c3925 pop      rdi
00000001402c3926 ret      