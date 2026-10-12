00000001401ba72c push     rbx
00000001401ba72e sub      rsp, 0x30
00000001401ba732 mov      eax, dword ptr [r8 + 0x10]
00000001401ba736 mov      ebx, 1
00000001401ba73b test     eax, eax
00000001401ba73d jne      0x1401ba74c
00000001401ba73f lock add dword ptr [rdx + 0x3c], ebx
00000001401ba743 or       word ptr [rdx + 0x34], bx
00000001401ba747 jmp      0x1401ba8b3
00000001401ba74c cmp      eax, ebx
00000001401ba74e jne      0x1401ba7f1
00000001401ba754 mov      cl, byte ptr [r8 + 0x14]
00000001401ba758 lea      eax, [rcx - 0x24]
00000001401ba75b cmp      al, 0xc
00000001401ba75d ja       0x1401ba771
00000001401ba75f lock add dword ptr [rdx + 0x40], ebx
00000001401ba763 mov      ecx, 2
00000001401ba768 or       word ptr [rdx + 0x34], cx
00000001401ba76c jmp      0x1401ba8b3
00000001401ba771 lea      eax, [rcx - 0x34]
00000001401ba774 cmp      al, 0xc
00000001401ba776 ja       0x1401ba786
00000001401ba778 lock add dword ptr [rdx + 0x44], ebx
00000001401ba77c or       word ptr [rdx + 0x34], 4
00000001401ba781 jmp      0x1401ba8b3
00000001401ba786 lea      eax, [rcx - 0x64]
00000001401ba789 cmp      al, 0x2c
00000001401ba78b ja       0x1401ba79b
00000001401ba78d lock add dword ptr [rdx + 0x48], ebx
00000001401ba791 or       word ptr [rdx + 0x34], 8
00000001401ba796 jmp      0x1401ba8b3
00000001401ba79b add      cl, 0x6b
00000001401ba79e cmp      cl, 0x1c
00000001401ba7a1 ja       0x1401ba7b1
00000001401ba7a3 lock add dword ptr [rdx + 0x4c], ebx
00000001401ba7a7 or       word ptr [rdx + 0x34], 0x10
00000001401ba7ac jmp      0x1401ba8b3
00000001401ba7b1 mov      r10, qword ptr [rip + 0x765848]
00000001401ba7b8 lea      rax, [rip + 0x765841]
00000001401ba7bf cmp      r10, rax
00000001401ba7c2 je       0x1401ba8ad
00000001401ba7c8 mov      ecx, 2
00000001401ba7cd cmp      byte ptr [r10 + 0x169], cl
00000001401ba7d4 jb       0x1401ba8ad
00000001401ba7da mov      eax, dword ptr [r10 + 0x16c]
00000001401ba7e1 test     bl, al
00000001401ba7e3 je       0x1401ba8ad
00000001401ba7e9 lea      edx, [rcx + 0x2b]
00000001401ba7ec jmp      0x1401ba887
00000001401ba7f1 mov      ecx, 2
00000001401ba7f6 cmp      eax, ecx
00000001401ba7f8 jne      0x1401ba8b3
00000001401ba7fe mov      r8b, byte ptr [r8 + 0x14]
00000001401ba802 mov      al, r8b
00000001401ba805 sub      al, bl
00000001401ba807 cmp      al, 0x5c
00000001401ba809 ja       0x1401ba819
00000001401ba80b lock add dword ptr [rdx + 0x50], ebx
00000001401ba80f or       word ptr [rdx + 0x34], 0x20
00000001401ba814 jmp      0x1401ba8b3
00000001401ba819 lea      eax, [r8 - 0x61]
00000001401ba81d cmp      al, 0x14
00000001401ba81f ja       0x1401ba82f
00000001401ba821 lock add dword ptr [rdx + 0x54], ebx
00000001401ba825 or       word ptr [rdx + 0x34], 0x40
00000001401ba82a jmp      0x1401ba8b3
00000001401ba82f lea      eax, [r8 - 0x79]
00000001401ba833 cmp      al, 0x44
00000001401ba835 ja       0x1401ba842
00000001401ba837 lock add dword ptr [rdx + 0x58], ebx
00000001401ba83b mov      eax, 0x80
00000001401ba840 jmp      0x1401ba855
00000001401ba842 add      r8b, 0x3f
00000001401ba846 cmp      r8b, 0x28
00000001401ba84a ja       0x1401ba85b
00000001401ba84c lock add dword ptr [rdx + 0x5c], ebx
00000001401ba850 mov      eax, 0x100
00000001401ba855 or       word ptr [rdx + 0x34], ax
00000001401ba859 jmp      0x1401ba8b3
00000001401ba85b mov      r10, qword ptr [rip + 0x76579e]
00000001401ba862 lea      rax, [rip + 0x765797]
00000001401ba869 cmp      r10, rax
00000001401ba86c je       0x1401ba8ad
00000001401ba86e cmp      byte ptr [r10 + 0x169], cl
00000001401ba875 jb       0x1401ba8ad
00000001401ba877 mov      eax, dword ptr [r10 + 0x16c]
00000001401ba87e test     bl, al
00000001401ba880 je       0x1401ba8ad
00000001401ba882 mov      edx, 0x2e
00000001401ba887 mov      rcx, qword ptr [r10 + 0x158]
00000001401ba88e lea      rax, [rip + 0x455c2b]
00000001401ba895 lea      r9, [rip + 0x453af4]
00000001401ba89c mov      qword ptr [rsp + 0x20], rax
00000001401ba8a1 lea      r8, [rip + 0x4dd9c8]
00000001401ba8a8 call     0x14003c968
00000001401ba8ad mov      dword ptr [rip + 0xb1b359], ebx
00000001401ba8b3 mov      eax, dword ptr [rip + 0xb1b353]
00000001401ba8b9 add      rsp, 0x30
00000001401ba8bd pop      rbx
00000001401ba8be ret      