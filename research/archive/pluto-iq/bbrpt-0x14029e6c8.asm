000000014029e6c8 mov      qword ptr [rsp + 0x18], rbx
000000014029e6cd push     rbp
000000014029e6ce push     rsi
000000014029e6cf push     rdi
000000014029e6d0 push     r12
000000014029e6d2 push     r13
000000014029e6d4 push     r14
000000014029e6d6 push     r15
000000014029e6d8 lea      rbp, [rsp - 0x100]
000000014029e6e0 sub      rsp, 0x200
000000014029e6e7 mov      rax, qword ptr [rip + 0x688d72]
000000014029e6ee xor      rax, rsp
000000014029e6f1 mov      qword ptr [rbp + 0xf0], rax
000000014029e6f8 mov      r12, rdx
000000014029e6fb mov      r13, rcx
000000014029e6fe mov      r14d, 0x198
000000014029e704 lea      rcx, [rsp + 0x50]
000000014029e709 mov      r8d, r14d
000000014029e70c xor      edx, edx
000000014029e70e call     0x1405f4640
000000014029e713 xor      eax, eax
000000014029e715 mov      word ptr [rsp + 0x40], ax
000000014029e71a mov      sil, al
000000014029e71d mov      rcx, qword ptr [rip + 0x6818dc]
000000014029e724 lea      rdi, [rip + 0x6818d5]
000000014029e72b cmp      rcx, rdi
000000014029e72e je       0x14029e762
000000014029e730 cmp      byte ptr [rcx + 0x169], 4
000000014029e737 jb       0x14029e762
000000014029e739 bt       dword ptr [rcx + 0x16c], 0xe
000000014029e741 jae      0x14029e762
000000014029e743 mov      rcx, qword ptr [rcx + 0x158]
000000014029e74a lea      r9, [rip + 0x36fc3f]
000000014029e751 mov      edx, 0x113
000000014029e756 lea      r8, [rip + 0x3fa7f3]
000000014029e75d call     0x140008874
000000014029e762 mov      r8d, r14d
000000014029e765 lea      rcx, [rsp + 0x50]
000000014029e76a mov      rdx, r12
000000014029e76d call     0x1400311e8
000000014029e772 movzx    eax, byte ptr [rbp + 0x88]
000000014029e779 lea      rdx, [rsp + 0x50]
000000014029e77e imul     rcx, rax, 0x58
000000014029e782 lea      rax, [rsp + 0x50]
000000014029e787 lea      r15, [rsp + 0x50]
000000014029e78c add      r15, rcx
000000014029e78f lea      r14, [rbp - 0x58]
000000014029e793 cmp      r15, rax
000000014029e796 mov      r8, r15
000000014029e799 mov      rcx, r13
000000014029e79c cmovne   r14, rdx
000000014029e7a0 lea      rdx, [rsp + 0x40]
000000014029e7a5 mov      r9, r14
000000014029e7a8 call     0x1402a4b88
000000014029e7ad test     eax, eax
000000014029e7af je       0x14029e806
000000014029e7b1 mov      rcx, qword ptr [rip + 0x681848]
000000014029e7b8 cmp      rcx, rdi
000000014029e7bb je       0x14029eadc
000000014029e7c1 mov      ebx, 2
000000014029e7c6 cmp      byte ptr [rcx + 0x169], bl
000000014029e7cc jb       0x14029eadc
000000014029e7d2 test     dword ptr [rcx + 0x16c], 0x4000
000000014029e7dc je       0x14029eadc
000000014029e7e2 mov      edx, 0x114
000000014029e7e7 mov      rcx, qword ptr [rcx + 0x158]
000000014029e7ee lea      r9, [rip + 0x36fb9b]
000000014029e7f5 lea      r8, [rip + 0x3fa754]
000000014029e7fc call     0x140008874
000000014029e801 jmp      0x14029eadc
000000014029e806 movzx    ecx, word ptr [rsp + 0x40]
000000014029e80b mov      rdx, qword ptr [rbp + 0x28]
000000014029e80f cmp      cx, dx
000000014029e812 jbe      0x14029e81c
000000014029e814 movzx    edi, cx
000000014029e817 sub      di, dx
000000014029e81a jmp      0x14029e825
000000014029e81c movzx    edi, dx
000000014029e81f mov      sil, 1
000000014029e822 sub      di, cx
000000014029e825 mov      r10, qword ptr [rip + 0x6817d4]
000000014029e82c lea      rax, [rip + 0x6817cd]
000000014029e833 cmp      r10, rax
000000014029e836 je       0x14029e879
000000014029e838 cmp      byte ptr [r10 + 0x169], 4
000000014029e840 jb       0x14029e879
000000014029e842 bt       dword ptr [r10 + 0x16c], 0xe
000000014029e84b jae      0x14029e879
000000014029e84d mov      eax, ecx
000000014029e84f lea      r9, [rip + 0x36fb3a]
000000014029e856 movzx    ecx, dx
000000014029e859 lea      r8, [rip + 0x3fa6f0]
000000014029e860 mov      dword ptr [rsp + 0x28], eax
000000014029e864 mov      edx, 0x115
000000014029e869 mov      dword ptr [rsp + 0x20], ecx
000000014029e86d mov      rcx, qword ptr [r10 + 0x158]
000000014029e874 call     0x140002b04
000000014029e879 lea      rcx, [rbp + 8]
000000014029e87d call     0x1402a2818
000000014029e882 lea      rcx, [rsp + 0x50]
000000014029e887 call     0x1402a29a8
000000014029e88c cmp      byte ptr [rbp + 0x30], 0
000000014029e890 mov      ebx, 2
000000014029e895 jne      0x14029e8db
000000014029e897 mov      eax, 0x96
000000014029e89c cmp      word ptr [rbp + 0x8c], ax
000000014029e8a3 je       0x14029e8db
000000014029e8a5 test     sil, sil
000000014029e8a8 je       0x14029e8c0
000000014029e8aa mov      rcx, qword ptr [rbp + 0x24]
000000014029e8ae cmp      cx, 5
000000014029e8b2 jle      0x14029e8ca
000000014029e8b4 cmp      cx, 0xa
000000014029e8b8 jl       0x14029e8db
000000014029e8ba sub      cx, 7
000000014029e8be jmp      0x14029e8e0
000000014029e8c0 mov      rcx, qword ptr [rbp + 0x26]
000000014029e8c4 cmp      cx, 0xa
000000014029e8c8 jg       0x14029e8cf
000000014029e8ca movzx    ecx, bx
000000014029e8cd jmp      0x14029e8e0
000000014029e8cf cmp      cx, 0x14
000000014029e8d3 jl       0x14029e8db
000000014029e8d5 sub      cx, 0xf
000000014029e8d9 jmp      0x14029e8e0
000000014029e8db mov      ecx, 3
000000014029e8e0 cmp      di, cx
000000014029e8e3 jb       0x14029eadc
000000014029e8e9 mov      r10, qword ptr [rip + 0x681710]
000000014029e8f0 lea      rax, [rip + 0x681709]
000000014029e8f7 cmp      r10, rax
000000014029e8fa je       0x14029e956
000000014029e8fc cmp      byte ptr [r10 + 0x169], 4
000000014029e904 jb       0x14029e956
000000014029e906 test     dword ptr [r10 + 0x16c], 0x4000
000000014029e911 je       0x14029e956
000000014029e913 movzx    eax, word ptr [rbp + 0x8c]
000000014029e91a mov      edx, 0x116
000000014029e91f mov      dword ptr [rsp + 0x38], eax
000000014029e923 movzx    ecx, cx
000000014029e926 mov      dword ptr [rsp + 0x30], ecx
000000014029e92a mov      rcx, qword ptr [r10 + 0x158]
000000014029e931 movzx    r8d, di
000000014029e935 mov      dword ptr [rsp + 0x28], r8d
000000014029e93a lea      r8, [rip + 0x3fa60f]
000000014029e941 movzx    r9d, sil
000000014029e945 mov      dword ptr [rsp + 0x20], r9d
000000014029e94a lea      r9, [rip + 0x36fa3f]
000000014029e951 call     0x14001c710
000000014029e956 mov      r8d, 0x60
000000014029e95c lea      rdx, [rsp + 0x50]
000000014029e961 mov      rcx, r13
000000014029e964 call     0x1402a5628
000000014029e969 mov      rax, qword ptr [r15 + 8]
000000014029e96d lea      r8, [rsp + 0x50]
000000014029e972 mov      rcx, r13
000000014029e975 movzx    edx, byte ptr [rax + 0x19]
000000014029e979 call     0x1402a3608
000000014029e97e mov      r8, qword ptr [r15 + 8]
000000014029e982 mov      r9, r15
000000014029e985 mov      rdx, qword ptr [r15]
000000014029e988 mov      rcx, r13
000000014029e98b call     0x1402a42f0
000000014029e990 mov      r8, qword ptr [r14 + 8]
000000014029e994 mov      r9, r14
000000014029e997 mov      rdx, qword ptr [r14]
000000014029e99a mov      rcx, r13
000000014029e99d call     0x1402a42f0
000000014029e9a2 lea      r8, [rsp + 0x50]
000000014029e9a7 mov      rdx, r12
000000014029e9aa mov      rcx, r13
000000014029e9ad call     0x1402a6224
000000014029e9b2 test     eax, eax
000000014029e9b4 je       0x14029e9f3
000000014029e9b6 mov      rcx, qword ptr [rip + 0x681643]
000000014029e9bd lea      rax, [rip + 0x68163c]
000000014029e9c4 cmp      rcx, rax
000000014029e9c7 je       0x14029eadc
000000014029e9cd cmp      byte ptr [rcx + 0x169], bl
000000014029e9d3 jb       0x14029eadc
000000014029e9d9 test     dword ptr [rcx + 0x16c], 0x4000
000000014029e9e3 je       0x14029eadc
000000014029e9e9 mov      edx, 0x117
000000014029e9ee jmp      0x14029e7e7
000000014029e9f3 mov      rcx, qword ptr [rip + 0x681606]
000000014029e9fa lea      rdi, [rip + 0x6815ff]
000000014029ea01 cmp      rcx, rdi
000000014029ea04 je       0x14029ea78
000000014029ea06 cmp      byte ptr [rcx + 0x169], bl
000000014029ea0c jb       0x14029ea39
000000014029ea0e test     dword ptr [rcx + 0x16c], 0x4000
000000014029ea18 je       0x14029ea39
000000014029ea1a mov      rcx, qword ptr [rcx + 0x158]
000000014029ea21 lea      r9, [rip + 0x36f968]
000000014029ea28 mov      edx, 0x118
000000014029ea2d lea      r8, [rip + 0x3fa51c]
000000014029ea34 call     0x140008874
000000014029ea39 mov      rcx, qword ptr [rip + 0x6815c0]
000000014029ea40 cmp      rcx, rdi
000000014029ea43 je       0x14029ea78
000000014029ea45 cmp      byte ptr [rcx + 0x169], bl
000000014029ea4b jb       0x14029ea78
000000014029ea4d test     dword ptr [rcx + 0x16c], 0x4000
000000014029ea57 je       0x14029ea78
000000014029ea59 mov      rcx, qword ptr [rcx + 0x158]
000000014029ea60 lea      r9, [rip + 0x36f929]
000000014029ea67 mov      edx, 0x119
000000014029ea6c lea      r8, [rip + 0x3fa4dd]
000000014029ea73 call     0x140008874
000000014029ea78 lea      rcx, [rbp + 8]
000000014029ea7c call     0x1402a2818
000000014029ea81 mov      rcx, qword ptr [rip + 0x681578]
000000014029ea88 cmp      rcx, rdi
000000014029ea8b je       0x14029eac0
000000014029ea8d cmp      byte ptr [rcx + 0x169], bl
000000014029ea93 jb       0x14029eac0
000000014029ea95 test     dword ptr [rcx + 0x16c], 0x4000
000000014029ea9f je       0x14029eac0
000000014029eaa1 mov      rcx, qword ptr [rcx + 0x158]
000000014029eaa8 lea      r9, [rip + 0x36f8e1]
000000014029eaaf mov      edx, 0x11a
000000014029eab4 lea      r8, [rip + 0x3fa495]
000000014029eabb call     0x140008874
000000014029eac0 lea      rcx, [rbp + 8]
000000014029eac4 call     0x1402a2818
000000014029eac9 mov      r8d, 0x198
000000014029eacf lea      rdx, [rsp + 0x50]
000000014029ead4 mov      rcx, r12
000000014029ead7 call     0x1400311e8
000000014029eadc mov      rcx, qword ptr [rbp + 0xf0]
000000014029eae3 xor      rcx, rsp
000000014029eae6 call     0x1405f45b0
000000014029eaeb mov      rbx, qword ptr [rsp + 0x250]
000000014029eaf3 add      rsp, 0x200
000000014029eafa pop      r15
000000014029eafc pop      r14
000000014029eafe pop      r13
000000014029eb00 pop      r12
000000014029eb02 pop      rdi
000000014029eb03 pop      rsi
000000014029eb04 pop      rbp
000000014029eb05 ret      