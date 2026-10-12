00000001404f37e8 mov      qword ptr [rsp + 8], rbx
00000001404f37ed push     rbp
00000001404f37ee push     rsi
00000001404f37ef push     rdi
00000001404f37f0 push     r12
00000001404f37f2 push     r13
00000001404f37f4 push     r14
00000001404f37f6 push     r15
00000001404f37f8 sub      rsp, 0x30
00000001404f37fc xor      r9d, r9d
00000001404f37ff mov      rbx, rdx
00000001404f3802 mov      rbp, rcx
00000001404f3805 mov      r13d, r9d
00000001404f3808 cmp      byte ptr [rdx + 0x17], r9b
00000001404f380c je       0x1404f3b75
00000001404f3812 mov      al, byte ptr [rip + 0x7e5508]
00000001404f3818 test     al, al
00000001404f381a je       0x1404f3b75
00000001404f3820 mov      r12b, byte ptr [rdx + 0x18]
00000001404f3824 lea      rsi, [rip + 0x42c7d5]
00000001404f382b lea      rdx, [rip - 0x4f3832]
00000001404f3832 mov      dword ptr [rsp + 0x78], r9d
00000001404f3837 mov      r15b, r9b
00000001404f383a movzx    eax, r15b
00000001404f383e lea      rcx, [rax + rax*4]
00000001404f3842 movzx    eax, byte ptr [rdx + rcx*4 + 0xcd8bec]
00000001404f384a cmp      al, 0xf
00000001404f384c ja       0x1404f3afc
00000001404f3852 mov      byte ptr [rbx + 0x18], al
00000001404f3855 mov      r13d, dword ptr [rdx + rcx*4 + 0xcd8be0]
00000001404f385d mov      rcx, qword ptr [rbx + rax*8 + 0x2b0]
00000001404f3865 imul     rax, rax, 0x1c
00000001404f3869 mov      qword ptr [rsp + 0x80], rcx
00000001404f3871 mov      r14d, dword ptr [rax + rbx + 0x2c]
00000001404f3876 test     r14d, r14d
00000001404f3879 je       0x1404f3bb3
00000001404f387f movzx    edi, r9w
00000001404f3883 cmp      r14d, 0xff
00000001404f388a jne      0x1404f3aa3
00000001404f3890 mov      rcx, qword ptr [rip + 0x42c769]
00000001404f3897 cmp      rcx, rsi
00000001404f389a je       0x1404f38ca
00000001404f389c cmp      byte ptr [rcx + 0x169], 5
00000001404f38a3 jb       0x1404f38ca
00000001404f38a5 mov      eax, dword ptr [rcx + 0x16c]
00000001404f38ab test     al, 8
00000001404f38ad je       0x1404f38ca
00000001404f38af mov      rcx, qword ptr [rcx + 0x158]
00000001404f38b6 lea      r8, [rip + 0x40ce53]
00000001404f38bd mov      edx, 0x3f
00000001404f38c2 call     0x140001b88
00000001404f38c7 xor      r9d, r9d
00000001404f38ca mov      rsi, qword ptr [rsp + 0x80]
00000001404f38d2 mov      r14d, r9d
00000001404f38d5 mov      r8b, r9b
00000001404f38d8 movzx    ecx, r8b
00000001404f38dc inc      r8b
00000001404f38df movzx    edx, byte ptr [rcx + rsi + 0x3a]
00000001404f38e4 shl      ecx, 3
00000001404f38e7 shl      edx, cl
00000001404f38e9 or       r14d, edx
00000001404f38ec cmp      r8b, 4
00000001404f38f0 jb       0x1404f38d8
00000001404f38f2 lea      rsi, [rip + 0x42c707]
00000001404f38f9 mov      rcx, rbp
00000001404f38fc test     r14d, r14d
00000001404f38ff je       0x1404f3a65
00000001404f3905 mov      rax, qword ptr [rbp + 0x1390]
00000001404f390c lea      rdx, [rsp + 0x88]
00000001404f3914 mov      rax, qword ptr [rax + 0x170]
00000001404f391b call     qword ptr [rip + 0x1909d7]
00000001404f3921 xor      r9d, r9d
00000001404f3924 test     eax, eax
00000001404f3926 jne      0x1404f3a5b
00000001404f392c mov      rax, qword ptr [rsp + 0x88]
00000001404f3934 movzx    edi, byte ptr [rax + 3]
00000001404f3938 movzx    eax, byte ptr [rax + 2]
00000001404f393c shl      di, 8
00000001404f3940 or       di, ax
00000001404f3943 mov      eax, 0xffff
00000001404f3948 cmp      di, ax
00000001404f394b jne      0x1404f396d
00000001404f394d mov      byte ptr [rbx + 0x18], r12b
00000001404f3951 lea      rdx, [rip - 0x4f3958]
00000001404f3958 inc      r15b
00000001404f395b cmp      r15b, byte ptr [rip + 0x7e53be]
00000001404f3962 jb       0x1404f383a
00000001404f3968 jmp      0x1404f3a85
00000001404f396d movzx    r10d, r9w
00000001404f3971 mov      r8b, r9b
00000001404f3974 mov      dl, r9b
00000001404f3977 mov      cl, dl
00000001404f3979 mov      r9b, dil
00000001404f397c shr      r9b, cl
00000001404f397f mov      al, dil
00000001404f3982 mov      ecx, 7
00000001404f3987 and      r9b, 1
00000001404f398b sub      cl, dl
00000001404f398d shr      al, cl
00000001404f398f and      al, 1
00000001404f3991 cmp      r9b, al
00000001404f3994 jne      0x1404f3a85
00000001404f399a test     r9b, r9b
00000001404f399d jne      0x1404f39b7
00000001404f399f inc      r8b
00000001404f39a2 cmp      r8b, 1
00000001404f39a6 ja       0x1404f3a85
00000001404f39ac jne      0x1404f39b7
00000001404f39ae movzx    r10d, dl
00000001404f39b2 shl      r10w, 4
00000001404f39b7 inc      dl
00000001404f39b9 cmp      dl, 4
00000001404f39bc jb       0x1404f3977
00000001404f39be movzx    ecx, di
00000001404f39c1 shr      cx, 8
00000001404f39c5 mov      al, cl
00000001404f39c7 shr      al, 4
00000001404f39ca xor      al, cl
00000001404f39cc and      al, 0xf
00000001404f39ce cmp      al, 0xf
00000001404f39d0 jne      0x1404f3a85
00000001404f39d6 and      cl, al
00000001404f39d8 movzx    eax, cl
00000001404f39db add      ax, r10w
00000001404f39df cmp      ax, 2
00000001404f39e3 jae      0x1404f3a85
00000001404f39e9 movzx    eax, ax
00000001404f39ec lea      rdx, [rip - 0x4f39f3]
00000001404f39f3 cmp      r14d, dword ptr [rdx + rax*4 + 0x900c00]
00000001404f39fb jne      0x1404f3a53
00000001404f39fd mov      r8, rbx
00000001404f3a00 lea      rdx, [rsp + 0x78]
00000001404f3a05 mov      rcx, rbp
00000001404f3a08 call     0x1404f5bb4
00000001404f3a0d xor      r9d, r9d
00000001404f3a10 test     eax, eax
00000001404f3a12 jne      0x1404f3951
00000001404f3a18 mov      al, byte ptr [rbx + 0x18]
00000001404f3a1b test     al, al
00000001404f3a1d je       0x1404f3a80
00000001404f3a1f mov      byte ptr [rbx + 0x18], al
00000001404f3a22 movzx    eax, byte ptr [rbx + 0x18]
00000001404f3a26 mov      edx, 1
00000001404f3a2b mov      rcx, rbp
00000001404f3a2e imul     rdi, rax, 0x1c
00000001404f3a32 mov      rsi, qword ptr [rbx + rax*8 + 0x2b0]
00000001404f3a3a call     0x14036c07c
00000001404f3a3f test     al, al
00000001404f3a41 je       0x1404f3b32
00000001404f3a47 lea      rdx, [rsi + 0x1c0]
00000001404f3a4e jmp      0x1404f3b3f
00000001404f3a53 xor      r9d, r9d
00000001404f3a56 jmp      0x1404f3958
00000001404f3a5b mov      eax, 0x1a
00000001404f3a60 jmp      0x1404f3bb5
00000001404f3a65 mov      r8, rbx
00000001404f3a68 lea      rdx, [rsp + 0x78]
00000001404f3a6d call     0x1404f5bb4
00000001404f3a72 test     eax, eax
00000001404f3a74 je       0x1404f3a18
00000001404f3a76 mov      eax, 0xb
00000001404f3a7b jmp      0x1404f3bb5
00000001404f3a80 test     r14d, r14d
00000001404f3a83 je       0x1404f3a9d
00000001404f3a85 mov      eax, 0xffff
00000001404f3a8a cmp      di, ax
00000001404f3a8d jne      0x1404f3a9d
00000001404f3a8f mov      al, byte ptr [rip + 0x7e5157]
00000001404f3a95 mov      byte ptr [rbx + 0x18], al
00000001404f3a98 jmp      0x1404f3bb3
00000001404f3a9d mov      byte ptr [rbx + 0x18], r12b
00000001404f3aa1 jmp      0x1404f3a76
00000001404f3aa3 mov      rcx, qword ptr [rip + 0x42c556]
00000001404f3aaa cmp      rcx, rsi
00000001404f3aad je       0x1404f3ada
00000001404f3aaf cmp      byte ptr [rcx + 0x169], 5
00000001404f3ab6 jb       0x1404f3ada
00000001404f3ab8 mov      eax, dword ptr [rcx + 0x16c]
00000001404f3abe test     al, 8
00000001404f3ac0 je       0x1404f3ada
00000001404f3ac2 mov      rcx, qword ptr [rcx + 0x158]
00000001404f3ac9 lea      r8, [rip + 0x40cc40]
00000001404f3ad0 mov      edx, 0x40
00000001404f3ad5 call     0x140001b88
00000001404f3ada lea      rdx, [rsp + 0x78]
00000001404f3adf mov      rcx, rbp
00000001404f3ae2 call     0x1404f5a28
00000001404f3ae7 test     eax, eax
00000001404f3ae9 jne      0x1404f3bb5
00000001404f3aef and      dword ptr [rbx + 4], eax
00000001404f3af2 mov      word ptr [rbx + 8], r14w
00000001404f3af7 jmp      0x1404f3a22
00000001404f3afc mov      byte ptr [rbx + 0x18], r12b
00000001404f3b00 mov      rcx, qword ptr [rip + 0x42c4f9]
00000001404f3b07 cmp      rcx, rsi
00000001404f3b0a je       0x1404f3bb3
00000001404f3b10 cmp      byte ptr [rcx + 0x169], 5
00000001404f3b17 jb       0x1404f3bb3
00000001404f3b1d mov      eax, dword ptr [rcx + 0x16c]
00000001404f3b23 test     al, 8
00000001404f3b25 je       0x1404f3bb3
00000001404f3b2b mov      edx, 0x3e
00000001404f3b30 jmp      0x1404f3ba0
00000001404f3b32 mov      edx, dword ptr [rdi + rbx + 0x28]
00000001404f3b36 mov      eax, r13d
00000001404f3b39 sub      rdx, rax
00000001404f3b3c add      rdx, rsi
00000001404f3b3f mov      r10, qword ptr [rbp + 0x18]
00000001404f3b43 mov      r9d, r13d
00000001404f3b46 mov      r8d, dword ptr [rdi + rbx + 0x28]
00000001404f3b4b mov      ecx, dword ptr [rsp + 0x78]
00000001404f3b4f mov      eax, r13d
00000001404f3b52 imul     rcx, rax
00000001404f3b56 mov      eax, dword ptr [rbx + 4]
00000001404f3b59 add      rax, rsi
00000001404f3b5c add      rax, rcx
00000001404f3b5f mov      rcx, qword ptr [rbp + 8]
00000001404f3b63 add      r8, rax
00000001404f3b66 mov      rax, qword ptr [r10 + 0xa0]
00000001404f3b6d call     qword ptr [rip + 0x190785]
00000001404f3b73 jmp      0x1404f3bb3
00000001404f3b75 mov      rcx, qword ptr [rip + 0x42c484]
00000001404f3b7c lea      rsi, [rip + 0x42c47d]
00000001404f3b83 cmp      rcx, rsi
00000001404f3b86 je       0x1404f3bb3
00000001404f3b88 cmp      byte ptr [rcx + 0x169], 5
00000001404f3b8f jb       0x1404f3bb3
00000001404f3b91 mov      eax, dword ptr [rcx + 0x16c]
00000001404f3b97 test     al, 8
00000001404f3b99 je       0x1404f3bb3
00000001404f3b9b mov      edx, 0x3d
00000001404f3ba0 mov      rcx, qword ptr [rcx + 0x158]
00000001404f3ba7 lea      r8, [rip + 0x40cb62]
00000001404f3bae call     0x140001b88
00000001404f3bb3 xor      eax, eax
00000001404f3bb5 mov      rbx, qword ptr [rsp + 0x70]
00000001404f3bba add      rsp, 0x30
00000001404f3bbe pop      r15
00000001404f3bc0 pop      r14
00000001404f3bc2 pop      r13
00000001404f3bc4 pop      r12
00000001404f3bc6 pop      rdi
00000001404f3bc7 pop      rsi
00000001404f3bc8 pop      rbp
00000001404f3bc9 ret      