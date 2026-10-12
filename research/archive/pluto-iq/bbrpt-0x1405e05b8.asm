00000001405e05b8 mov      qword ptr [rsp + 0x18], rbx
00000001405e05bd push     rbp
00000001405e05be push     rsi
00000001405e05bf push     rdi
00000001405e05c0 push     r12
00000001405e05c2 push     r13
00000001405e05c4 push     r14
00000001405e05c6 push     r15
00000001405e05c8 lea      rbp, [rsp - 0x90]
00000001405e05d0 sub      rsp, 0x190
00000001405e05d7 mov      rax, qword ptr [rip + 0x346e82]
00000001405e05de xor      rax, rsp
00000001405e05e1 mov      qword ptr [rbp + 0x80], rax
00000001405e05e8 mov      rax, qword ptr [rcx + 0xaf3b8]
00000001405e05ef mov      rbx, rcx
00000001405e05f2 mov      r13, qword ptr [rdx + 0x98]
00000001405e05f9 mov      rax, qword ptr [rax]
00000001405e05fc add      rax, 0x18
00000001405e0600 mov      qword ptr [rbp - 0x40], rax
00000001405e0604 mov      rcx, qword ptr [rip + 0x33f9f5]
00000001405e060b lea      r15, [rip + 0x33f9ee]
00000001405e0612 lea      rdi, [rip + 0x325d17]
00000001405e0619 mov      esi, 4
00000001405e061e cmp      rcx, r15
00000001405e0621 je       0x1405e0641
00000001405e0623 cmp      byte ptr [rcx + 0x29], sil
00000001405e0627 jb       0x1405e0641
00000001405e0629 mov      eax, dword ptr [rcx + 0x2c]
00000001405e062c test     al, 8
00000001405e062e je       0x1405e0641
00000001405e0630 mov      rcx, qword ptr [rcx + 0x18]
00000001405e0634 mov      edx, 0xf9
00000001405e0639 mov      r8, rdi
00000001405e063c call     0x140001b88
00000001405e0641 mov      edx, 0x10
00000001405e0646 mov      byte ptr [rbx + 0xbdea9], 1
00000001405e064d lea      rcx, [rbp - 0x20]
00000001405e0651 call     0x140031290
00000001405e0656 mov      edx, 0x80
00000001405e065b lea      rcx, [rbp]
00000001405e065f call     0x140031290
00000001405e0664 mov      rcx, qword ptr [rip + 0x33f995]
00000001405e066b cmp      rcx, r15
00000001405e066e je       0x1405e0779
00000001405e0674 cmp      byte ptr [rcx + 0x29], sil
00000001405e0678 jb       0x1405e069a
00000001405e067a mov      eax, dword ptr [rcx + 0x2c]
00000001405e067d test     al, al
00000001405e067f jns      0x1405e069a
00000001405e0681 mov      r9d, dword ptr [r13]
00000001405e0685 mov      edx, 0xfa
00000001405e068a mov      rcx, qword ptr [rcx + 0x18]
00000001405e068e and      r9d, 1
00000001405e0692 mov      r8, rdi
00000001405e0695 call     0x140001bb0
00000001405e069a mov      rcx, qword ptr [rip + 0x33f95f]
00000001405e06a1 cmp      rcx, r15
00000001405e06a4 je       0x1405e0779
00000001405e06aa cmp      byte ptr [rcx + 0x29], sil
00000001405e06ae jb       0x1405e06d3
00000001405e06b0 mov      eax, dword ptr [rcx + 0x2c]
00000001405e06b3 test     al, al
00000001405e06b5 jns      0x1405e06d3
00000001405e06b7 mov      r9d, dword ptr [r13]
00000001405e06bb mov      edx, 0xfb
00000001405e06c0 mov      rcx, qword ptr [rcx + 0x18]
00000001405e06c4 mov      r8, rdi
00000001405e06c7 shr      r9d, 1
00000001405e06ca and      r9d, 1
00000001405e06ce call     0x140001bb0
00000001405e06d3 mov      rcx, qword ptr [rip + 0x33f926]
00000001405e06da cmp      rcx, r15
00000001405e06dd je       0x1405e0779
00000001405e06e3 cmp      byte ptr [rcx + 0x29], sil
00000001405e06e7 jb       0x1405e070d
00000001405e06e9 mov      eax, dword ptr [rcx + 0x2c]
00000001405e06ec test     al, al
00000001405e06ee jns      0x1405e070d
00000001405e06f0 mov      r9d, dword ptr [r13]
00000001405e06f4 mov      edx, 0xfc
00000001405e06f9 mov      rcx, qword ptr [rcx + 0x18]
00000001405e06fd mov      r8, rdi
00000001405e0700 shr      r9d, 2
00000001405e0704 and      r9d, 1
00000001405e0708 call     0x140001bb0
00000001405e070d mov      rcx, qword ptr [rip + 0x33f8ec]
00000001405e0714 cmp      rcx, r15
00000001405e0717 je       0x1405e0779
00000001405e0719 cmp      byte ptr [rcx + 0x29], sil
00000001405e071d jb       0x1405e0743
00000001405e071f mov      eax, dword ptr [rcx + 0x2c]
00000001405e0722 test     al, al
00000001405e0724 jns      0x1405e0743
00000001405e0726 mov      r9d, dword ptr [r13]
00000001405e072a mov      edx, 0xfd
00000001405e072f mov      rcx, qword ptr [rcx + 0x18]
00000001405e0733 mov      r8, rdi
00000001405e0736 shr      r9d, 3
00000001405e073a and      r9d, 1
00000001405e073e call     0x140001bb0
00000001405e0743 mov      rcx, qword ptr [rip + 0x33f8b6]
00000001405e074a cmp      rcx, r15
00000001405e074d je       0x1405e0779
00000001405e074f cmp      byte ptr [rcx + 0x29], sil
00000001405e0753 jb       0x1405e0779
00000001405e0755 mov      eax, dword ptr [rcx + 0x2c]
00000001405e0758 test     al, al
00000001405e075a jns      0x1405e0779
00000001405e075c mov      r9d, dword ptr [r13]
00000001405e0760 mov      edx, 0xfe
00000001405e0765 mov      rcx, qword ptr [rcx + 0x18]
00000001405e0769 mov      r8, rdi
00000001405e076c shr      r9d, 4
00000001405e0770 and      r9d, 1
00000001405e0774 call     0x140001bb0
00000001405e0779 mov      rdi, qword ptr [r13 + 0x10]
00000001405e077d xor      r14d, r14d
00000001405e0780 mov      r12d, r14d
00000001405e0783 cmp      dword ptr [r13 + 8], r14d
00000001405e0787 jbe      0x1405e0b3d
00000001405e078d mov      rcx, qword ptr [rip + 0x33f86c]
00000001405e0794 cmp      rcx, r15
00000001405e0797 je       0x1405e07be
00000001405e0799 cmp      byte ptr [rcx + 0x29], sil
00000001405e079d jb       0x1405e07be
00000001405e079f mov      eax, dword ptr [rcx + 0x2c]
00000001405e07a2 test     al, 8
00000001405e07a4 je       0x1405e07be
00000001405e07a6 mov      r9d, dword ptr [rdi]
00000001405e07a9 lea      r8, [rip + 0x325b80]
00000001405e07b0 mov      rcx, qword ptr [rcx + 0x18]
00000001405e07b4 mov      edx, 0xff
00000001405e07b9 call     0x140001bb0
00000001405e07be cmp      dword ptr [rdi + 8], 0x80
00000001405e07c5 ja       0x1405e0af6
00000001405e07cb cmp      dword ptr [rdi + 0x20], 0x10
00000001405e07cf ja       0x1405e0ad6
00000001405e07d5 mov      edx, dword ptr [rdi]
00000001405e07d7 mov      sil, r14b
00000001405e07da movzx    eax, sil
00000001405e07de imul     rcx, rax, 0xb8
00000001405e07e5 mov      eax, dword ptr [rcx + rbx + 0xbe04c]
00000001405e07ec cmp      eax, edx
00000001405e07ee je       0x1405e07fd
00000001405e07f0 test     eax, eax
00000001405e07f2 je       0x1405e084b
00000001405e07f4 inc      sil
00000001405e07f7 cmp      sil, 0x32
00000001405e07fb jb       0x1405e07da
00000001405e07fd mov      rcx, qword ptr [rip + 0x33f7fc]
00000001405e0804 cmp      rcx, r15
00000001405e0807 je       0x1405e0b33
00000001405e080d cmp      byte ptr [rcx + 0x29], 4
00000001405e0811 jb       0x1405e0b33
00000001405e0817 mov      eax, dword ptr [rcx + 0x2c]
00000001405e081a test     al, al
00000001405e081c jns      0x1405e0b33
00000001405e0822 mov      rcx, qword ptr [rcx + 0x18]
00000001405e0826 lea      r9, [rip + 0xa2013]
00000001405e082d mov      edx, 0x102
00000001405e0832 mov      dword ptr [rsp + 0x20], 0x32
00000001405e083a lea      r8, [rip + 0x325aef]
00000001405e0841 call     0x1400088d8
00000001405e0846 jmp      0x1405e0b33
00000001405e084b cmp      sil, 0x32
00000001405e084f jae      0x1405e07fd
00000001405e0851 or       dword ptr [rbp - 0x30], 0xffffffff
00000001405e0855 xor      ecx, ecx
00000001405e0857 or       word ptr [rbp - 0x2c], 0xffff
00000001405e085d and      dword ptr [rbp - 0x28], 0
00000001405e0861 and      word ptr [rbp - 0x24], 0
00000001405e0866 movzx    eax, sil
00000001405e086a imul     r14, rax, 0xb8
00000001405e0871 mov      word ptr [rsp + 0x44], 0x3333
00000001405e0878 mov      dword ptr [r14 + rbx + 0xbe064], 4
00000001405e0884 mov      eax, dword ptr [rdi]
00000001405e0886 mov      byte ptr [r14 + rbx + 0xbe068], cl
00000001405e088e lea      rcx, [rbp]
00000001405e0892 mov      dword ptr [r14 + rbx + 0xbe04c], eax
00000001405e089a mov      r8d, dword ptr [rdi + 8]
00000001405e089e mov      rdx, qword ptr [rdi + 0x10]
00000001405e08a2 call     0x1400311e8
00000001405e08a7 mov      rcx, qword ptr [rip + 0x33f752]
00000001405e08ae cmp      rcx, r15
00000001405e08b1 je       0x1405e08f8
00000001405e08b3 cmp      byte ptr [rcx + 0x29], 4
00000001405e08b7 jb       0x1405e08f8
00000001405e08b9 mov      eax, dword ptr [rcx + 0x2c]
00000001405e08bc test     al, al
00000001405e08be jns      0x1405e08f8
00000001405e08c0 mov      rcx, qword ptr [rcx + 0x18]
00000001405e08c4 lea      rax, [rbp]
00000001405e08c8 mov      qword ptr [rsp + 0x60], rax
00000001405e08cd lea      r9, [rip + 0x1665c]
00000001405e08d4 lea      rax, [rsp + 0x60]
00000001405e08d9 mov      qword ptr [rsp + 0x68], 0x80
00000001405e08e2 mov      edx, 0x103
00000001405e08e7 mov      qword ptr [rsp + 0x20], rax
00000001405e08ec lea      r8, [rip + 0x325a3d]
00000001405e08f3 call     0x140001c88
00000001405e08f8 mov      r8d, dword ptr [rdi + 0x20]
00000001405e08fc lea      rcx, [rbp - 0x20]
00000001405e0900 mov      rdx, qword ptr [rdi + 0x28]
00000001405e0904 call     0x1400311e8
00000001405e0909 mov      rcx, qword ptr [rip + 0x33f6f0]
00000001405e0910 cmp      rcx, r15
00000001405e0913 je       0x1405e095a
00000001405e0915 cmp      byte ptr [rcx + 0x29], 4
00000001405e0919 jb       0x1405e095a
00000001405e091b mov      eax, dword ptr [rcx + 0x2c]
00000001405e091e test     al, al
00000001405e0920 jns      0x1405e095a
00000001405e0922 mov      rcx, qword ptr [rcx + 0x18]
00000001405e0926 lea      rax, [rbp - 0x20]
00000001405e092a mov      qword ptr [rsp + 0x70], rax
00000001405e092f lea      r9, [rip + 0x1661a]
00000001405e0936 lea      rax, [rsp + 0x70]
00000001405e093b mov      qword ptr [rsp + 0x78], 0x10
00000001405e0944 mov      edx, 0x104
00000001405e0949 mov      qword ptr [rsp + 0x20], rax
00000001405e094e lea      r8, [rip + 0x3259db]
00000001405e0955 call     0x140001c88
00000001405e095a mov      r8d, 2
00000001405e0960 lea      rdx, [rbp + 0x22]
00000001405e0964 lea      rcx, [rsp + 0x40]
00000001405e0969 call     0x1400311e8
00000001405e096e movzx    eax, word ptr [rsp + 0x40]
00000001405e0973 lea      rdx, [rbp + 0x24]
00000001405e0977 movzx    r15d, ax
00000001405e097b lea      rcx, [rsp + 0x40]
00000001405e0980 shr      r15w, 8
00000001405e0985 mov      r8d, 2
00000001405e098b shl      ax, 8
00000001405e098f or       r15w, ax
00000001405e0993 call     0x1400311e8
00000001405e0998 mov      rcx, qword ptr [rip + 0x33f661]
00000001405e099f lea      rax, [rip + 0x33f65a]
00000001405e09a6 cmp      rcx, rax
00000001405e09a9 je       0x1405e09ec
00000001405e09ab cmp      byte ptr [rcx + 0x29], 4
00000001405e09af jb       0x1405e09ec
00000001405e09b1 mov      eax, dword ptr [rcx + 0x2c]
00000001405e09b4 test     al, al
00000001405e09b6 jns      0x1405e09ec
00000001405e09b8 movzx    eax, word ptr [rsp + 0x40]
00000001405e09bd mov      edx, 0x105
00000001405e09c2 mov      rcx, qword ptr [rcx + 0x18]
00000001405e09c6 mov      r8d, eax
00000001405e09c9 shr      r8d, 8
00000001405e09cd shl      ax, 8
00000001405e09d1 movzx    eax, ax
00000001405e09d4 or       r8d, eax
00000001405e09d7 movzx    r9d, r15w
00000001405e09db mov      dword ptr [rsp + 0x20], r8d
00000001405e09e0 lea      r8, [rip + 0x325949]
00000001405e09e7 call     0x140001bec
00000001405e09ec mov      rdx, qword ptr [rbp - 0x40]
00000001405e09f0 lea      rcx, [rbp]
00000001405e09f4 mov      r8d, 6
00000001405e09fa call     0x14003113c
00000001405e09ff xor      r15d, r15d
00000001405e0a02 test     eax, eax
00000001405e0a04 jne      0x1405e0a10
00000001405e0a06 mov      dword ptr [r14 + rbx + 0xbe064], r15d
00000001405e0a0e jmp      0x1405e0a7e
00000001405e0a10 mov      r8d, 2
00000001405e0a16 lea      rdx, [rsp + 0x44]
00000001405e0a1b lea      rcx, [rbp]
00000001405e0a1f call     0x14003113c
00000001405e0a24 test     eax, eax
00000001405e0a26 jne      0x1405e0a36
00000001405e0a28 mov      dword ptr [r14 + rbx + 0xbe064], 1
00000001405e0a34 jmp      0x1405e0a7e
00000001405e0a36 mov      r8d, 6
00000001405e0a3c lea      rdx, [rbp - 0x30]
00000001405e0a40 lea      rcx, [rbp]
00000001405e0a44 call     0x14003113c
00000001405e0a49 test     eax, eax
00000001405e0a4b jne      0x1405e0a5b
00000001405e0a4d mov      dword ptr [r14 + rbx + 0xbe064], 2
00000001405e0a59 jmp      0x1405e0a7e
00000001405e0a5b mov      r8d, 6
00000001405e0a61 lea      rdx, [rbp - 0x28]
00000001405e0a65 lea      rcx, [rbp]
00000001405e0a69 call     0x14003113c
00000001405e0a6e test     eax, eax
00000001405e0a70 jne      0x1405e0a7e
00000001405e0a72 mov      dword ptr [r14 + rbx + 0xbe064], 3
00000001405e0a7e mov      eax, dword ptr [rdi + 8]
00000001405e0a81 lea      r9, [rbp]
00000001405e0a85 mov      r8d, dword ptr [rdi + 0x20]
00000001405e0a89 lea      rdx, [rbp - 0x20]
00000001405e0a8d xor      r14d, r14d
00000001405e0a90 mov      rcx, rbx
00000001405e0a93 mov      byte ptr [rsp + 0x30], r14b
00000001405e0a98 mov      byte ptr [rsp + 0x28], sil
00000001405e0a9d mov      dword ptr [rsp + 0x20], eax
00000001405e0aa1 call     0x1401655cc
00000001405e0aa6 inc      byte ptr [rbx + 0xc043c]
00000001405e0aac lea      esi, [r14 + 4]
00000001405e0ab0 or       dword ptr [rbx + 0xc04c0], 8
00000001405e0ab7 inc      r12d
00000001405e0aba inc      dword ptr [rbx + 0xc04c4]
00000001405e0ac0 add      rdi, 0x38
00000001405e0ac4 cmp      r12d, dword ptr [r13 + 8]
00000001405e0ac8 jae      0x1405e0b3d
00000001405e0aca lea      r15, [rip + 0x33f52f]
00000001405e0ad1 jmp      0x1405e078d
00000001405e0ad6 mov      rcx, qword ptr [rip + 0x33f523]
00000001405e0add cmp      rcx, r15
00000001405e0ae0 je       0x1405e0b33
00000001405e0ae2 cmp      byte ptr [rcx + 0x29], 3
00000001405e0ae6 jb       0x1405e0b33
00000001405e0ae8 mov      eax, dword ptr [rcx + 0x2c]
00000001405e0aeb test     al, al
00000001405e0aed jns      0x1405e0b33
00000001405e0aef mov      edx, 0x101
00000001405e0af4 jmp      0x1405e0b14
00000001405e0af6 mov      rcx, qword ptr [rip + 0x33f503]
00000001405e0afd cmp      rcx, r15
00000001405e0b00 je       0x1405e0b33
00000001405e0b02 cmp      byte ptr [rcx + 0x29], 3
00000001405e0b06 jb       0x1405e0b33
00000001405e0b08 mov      eax, dword ptr [rcx + 0x2c]
00000001405e0b0b test     al, al
00000001405e0b0d jns      0x1405e0b33
00000001405e0b0f mov      edx, 0x100
00000001405e0b14 mov      rcx, qword ptr [rcx + 0x18]
00000001405e0b18 lea      r9, [rip + 0xa1d21]
00000001405e0b1f lea      r8, [rip + 0x32580a]
00000001405e0b26 mov      dword ptr [rsp + 0x20], 0xc000009a
00000001405e0b2e call     0x1400088d8
00000001405e0b33 mov      eax, 0xc000009a
00000001405e0b38 jmp      0x1405e1722
00000001405e0b3d mov      eax, dword ptr [r13]
00000001405e0b41 test     al, 2
00000001405e0b43 je       0x1405e0bff
00000001405e0b49 mov      rcx, qword ptr [rip + 0x33f4b0]
00000001405e0b50 lea      rdi, [rip + 0x33f4a9]
00000001405e0b57 cmp      rcx, rdi
00000001405e0b5a je       0x1405e0b7e
00000001405e0b5c cmp      byte ptr [rcx + 0x29], sil
00000001405e0b60 jb       0x1405e0b7e
00000001405e0b62 mov      eax, dword ptr [rcx + 0x2c]
00000001405e0b65 test     al, 8
00000001405e0b67 je       0x1405e0b7e
00000001405e0b69 mov      rcx, qword ptr [rcx + 0x18]
00000001405e0b6d lea      r8, [rip + 0x3257bc]
00000001405e0b74 mov      edx, 0x106
00000001405e0b79 call     0x140001b88
00000001405e0b7e cmp      dword ptr [rbx + 0xc0448], r14d
00000001405e0b85 jne      0x1405e0bcf
00000001405e0b87 mov      r9d, dword ptr [r13 + 0x20]
00000001405e0b8b mov      dword ptr [rbx + 0xc0448], r9d
00000001405e0b92 mov      rcx, qword ptr [rip + 0x33f467]
00000001405e0b99 cmp      rcx, rdi
00000001405e0b9c je       0x1405e0bc0
00000001405e0b9e cmp      byte ptr [rcx + 0x29], sil
00000001405e0ba2 jb       0x1405e0bc0
00000001405e0ba4 mov      eax, dword ptr [rcx + 0x2c]
00000001405e0ba7 test     al, 8
00000001405e0ba9 je       0x1405e0bc0
00000001405e0bab mov      rcx, qword ptr [rcx + 0x18]
00000001405e0baf lea      r8, [rip + 0x32577a]
00000001405e0bb6 mov      edx, 0x107
00000001405e0bbb call     0x140001bb0
00000001405e0bc0 inc      byte ptr [rbx + 0xc043d]
00000001405e0bc6 or       dword ptr [rbx + 0xc04c0], 0x10
00000001405e0bcd jmp      0x1405e0c06
00000001405e0bcf mov      rcx, qword ptr [rip + 0x33f42a]
00000001405e0bd6 cmp      rcx, rdi
00000001405e0bd9 je       0x1405e0c06
00000001405e0bdb cmp      byte ptr [rcx + 0x29], sil
00000001405e0bdf jb       0x1405e0c06
00000001405e0be1 mov      eax, dword ptr [rcx + 0x2c]
00000001405e0be4 test     al, 8
00000001405e0be6 je       0x1405e0c06
00000001405e0be8 mov      rcx, qword ptr [rcx + 0x18]
00000001405e0bec lea      r8, [rip + 0x32573d]
00000001405e0bf3 mov      edx, 0x108
00000001405e0bf8 call     0x140001b88
00000001405e0bfd jmp      0x1405e0c06
00000001405e0bff lea      rdi, [rip + 0x33f3fa]
00000001405e0c06 mov      eax, dword ptr [r13]
00000001405e0c0a test     sil, al
00000001405e0c0d je       0x1405e10ca
00000001405e0c13 mov      eax, dword ptr [r13 + 0x28]
00000001405e0c17 xorps    xmm0, xmm0
00000001405e0c1a mov      r15, qword ptr [r13 + 0x30]
00000001405e0c1e mov      r12d, r14d
00000001405e0c21 mov      dword ptr [rsp + 0x44], r14d
00000001405e0c26 movups   xmmword ptr [rbp - 0x40], xmm0
00000001405e0c2a test     eax, eax
00000001405e0c2c je       0x1405e1097
00000001405e0c32 lea      r14, [r15 + 4]
00000001405e0c36 xor      edx, edx
00000001405e0c38 cmp      dword ptr [rbx + 0xc044c], edx
00000001405e0c3e jne      0x1405e104c
00000001405e0c44 mov      eax, dword ptr [r15]
00000001405e0c47 mov      dword ptr [rbx + 0xc044c], eax
00000001405e0c4d mov      rcx, qword ptr [rip + 0x33f3ac]
00000001405e0c54 cmp      rcx, rdi
00000001405e0c57 je       0x1405e0c80
00000001405e0c59 cmp      byte ptr [rcx + 0x29], sil
00000001405e0c5d jb       0x1405e0c80
00000001405e0c5f mov      eax, dword ptr [rcx + 0x2c]
00000001405e0c62 test     al, 8
00000001405e0c64 je       0x1405e0c80
00000001405e0c66 mov      r9d, dword ptr [r15]
00000001405e0c69 lea      r8, [rip + 0x3256c0]
00000001405e0c70 mov      rcx, qword ptr [rcx + 0x18]
00000001405e0c74 mov      edx, 0x109
00000001405e0c79 call     0x140001bb0
00000001405e0c7e xor      edx, edx
00000001405e0c80 or       dword ptr [rbx + 0xc04c0], 0x20
00000001405e0c87 mov      dil, dl
00000001405e0c8a movzx    eax, dil
00000001405e0c8e imul     rcx, rax, 0xb8
00000001405e0c95 cmp      dword ptr [rcx + rbx + 0xbe04c], edx
00000001405e0c9c je       0x1405e0ceb
00000001405e0c9e inc      dil
00000001405e0ca1 cmp      dil, 0x32
00000001405e0ca5 jb       0x1405e0c8a
00000001405e0ca7 mov      rcx, qword ptr [rip + 0x33f352]
00000001405e0cae lea      rax, [rip + 0x33f34b]
00000001405e0cb5 cmp      rcx, rax
00000001405e0cb8 je       0x1405e0ceb
00000001405e0cba cmp      byte ptr [rcx + 0x29], 4
00000001405e0cbe jb       0x1405e0ceb
00000001405e0cc0 mov      eax, dword ptr [rcx + 0x2c]
00000001405e0cc3 test     al, al
00000001405e0cc5 jns      0x1405e0ceb
00000001405e0cc7 mov      rcx, qword ptr [rcx + 0x18]
00000001405e0ccb lea      r9, [rip + 0xa1b6e]
00000001405e0cd2 mov      edx, 0x10a
00000001405e0cd7 mov      dword ptr [rsp + 0x20], 0x32
00000001405e0cdf lea      r8, [rip + 0x32564a]
00000001405e0ce6 call     0x1400088d8
00000001405e0ceb or       byte ptr [rbp - 0x3f], 0x70
00000001405e0cef lea      rdx, [rsp + 0x44]
00000001405e0cf4 or       byte ptr [rbp - 0x3e], 0x80
00000001405e0cf8 mov      esi, 4
00000001405e0cfd or       byte ptr [rbp - 0x3b], 0x80
00000001405e0d01 mov      r8d, esi
00000001405e0d04 mov      rcx, r14
00000001405e0d07 call     0x14003113c
00000001405e0d0c test     eax, eax
00000001405e0d0e je       0x1405e0d14
00000001405e0d10 or       byte ptr [rbp - 0x3d], 0x3c
00000001405e0d14 lea      rcx, [r14 + 4]
00000001405e0d18 mov      r8d, esi
00000001405e0d1b lea      rdx, [rsp + 0x44]
00000001405e0d20 call     0x14003113c
00000001405e0d25 xor      r8d, r8d
00000001405e0d28 test     eax, eax
00000001405e0d2a mov      al, byte ptr [rbp - 0x3c]
00000001405e0d2d je       0x1405e0d38
00000001405e0d2f or       byte ptr [rbp - 0x3d], 0xc0
00000001405e0d33 or       al, 3
00000001405e0d35 mov      byte ptr [rbp - 0x3c], al
00000001405e0d38 movzx    edx, word ptr [r14 + 8]
00000001405e0d3d test     dx, dx
00000001405e0d40 jne      0x1405e0d48
00000001405e0d42 movzx    edx, r8w
00000001405e0d46 jmp      0x1405e0d4c
00000001405e0d48 ror      dx, 8
00000001405e0d4c mov      word ptr [rsp + 0x48], dx
00000001405e0d51 movzx    ecx, word ptr [r14 + 0xa]
00000001405e0d56 test     cx, cx
00000001405e0d59 jne      0x1405e0d61
00000001405e0d5b movzx    ecx, r8w
00000001405e0d5f jmp      0x1405e0d65
00000001405e0d61 ror      cx, 8
00000001405e0d65 mov      word ptr [rsp + 0x4c], cx
00000001405e0d6a test     dx, dx
00000001405e0d6d je       0x1405e0d74
00000001405e0d6f or       al, 0xc
00000001405e0d71 mov      byte ptr [rbp - 0x3c], al
00000001405e0d74 test     cx, cx
00000001405e0d77 je       0x1405e0d7e
00000001405e0d79 or       al, 0x30
00000001405e0d7b mov      byte ptr [rbp - 0x3c], al
00000001405e0d7e mov      r8d, 0x10
00000001405e0d84 lea      rdx, [rbp - 0x40]
00000001405e0d88 lea      rcx, [rbp - 0x20]
00000001405e0d8c call     0x1400311e8
00000001405e0d91 mov      r8d, esi
00000001405e0d94 mov      byte ptr [rbp + 0xc], 8
00000001405e0d98 mov      rdx, r14
00000001405e0d9b mov      byte ptr [rbp + 0xe], 0x45
00000001405e0d9f lea      rcx, [rbp + 0x1a]
00000001405e0da3 mov      byte ptr [rbp + 0x17], 6
00000001405e0da7 mov      byte ptr [rbp + 0x2f], 2
00000001405e0dab call     0x1400311e8
00000001405e0db0 lea      rdx, [r14 + 4]
00000001405e0db4 mov      r8d, esi
00000001405e0db7 lea      rcx, [rbp + 0x1e]
00000001405e0dbb call     0x1400311e8
00000001405e0dc0 mov      r8d, 2
00000001405e0dc6 lea      rdx, [rsp + 0x48]
00000001405e0dcb lea      rcx, [rbp + 0x22]
00000001405e0dcf call     0x1400311e8
00000001405e0dd4 mov      r8d, 2
00000001405e0dda lea      rdx, [rsp + 0x4c]
00000001405e0ddf lea      rcx, [rbp + 0x24]
00000001405e0de3 call     0x1400311e8
00000001405e0de8 movzx    eax, dil
00000001405e0dec imul     rcx, rax, 0xb8
00000001405e0df3 mov      eax, dword ptr [r15]
00000001405e0df6 mov      dword ptr [rcx + rbx + 0xbe04c], eax
00000001405e0dfd xor      eax, eax
00000001405e0dff mov      dword ptr [rcx + rbx + 0xbe064], eax
00000001405e0e06 mov      byte ptr [rcx + rbx + 0xbe068], 1
00000001405e0e0e test     r14, r14
00000001405e0e11 je       0x1405e0e6c
00000001405e0e13 mov      rcx, qword ptr [rip + 0x33f1e6]
00000001405e0e1a lea      rax, [rip + 0x33f1df]
00000001405e0e21 cmp      rcx, rax
00000001405e0e24 je       0x1405e0e63
00000001405e0e26 cmp      byte ptr [rcx + 0x29], sil
00000001405e0e2a jb       0x1405e0e63
00000001405e0e2c mov      eax, dword ptr [rcx + 0x2c]
00000001405e0e2f test     al, al
00000001405e0e31 jns      0x1405e0e63
00000001405e0e33 mov      rcx, qword ptr [rcx + 0x18]
00000001405e0e37 lea      rax, [rsp + 0x70]
00000001405e0e3c mov      edx, 0x10b
00000001405e0e41 mov      qword ptr [rsp + 0x20], rax
00000001405e0e46 lea      r9, [rip + 0xa1a13]
00000001405e0e4d mov      qword ptr [rsp + 0x70], r14
00000001405e0e52 lea      r8, [rip + 0x3254d7]
00000001405e0e59 mov      qword ptr [rsp + 0x78], rsi
00000001405e0e5e call     0x140001c88
00000001405e0e63 lea      rax, [r14 + 4]
00000001405e0e67 test     rax, rax
00000001405e0e6a je       0x1405e0ec0
00000001405e0e6c mov      rcx, qword ptr [rip + 0x33f18d]
00000001405e0e73 lea      rdx, [rip + 0x33f186]
00000001405e0e7a cmp      rcx, rdx
00000001405e0e7d je       0x1405e0ec7
00000001405e0e7f cmp      byte ptr [rcx + 0x29], sil
00000001405e0e83 jb       0x1405e0ec7
00000001405e0e85 mov      eax, dword ptr [rcx + 0x2c]
00000001405e0e88 test     al, al
00000001405e0e8a jns      0x1405e0ec7
00000001405e0e8c mov      rcx, qword ptr [rcx + 0x18]
00000001405e0e90 lea      rax, [r14 + 4]
00000001405e0e94 mov      qword ptr [rsp + 0x60], rax
00000001405e0e99 lea      r9, [rip + 0xa19d0]
00000001405e0ea0 lea      rax, [rsp + 0x60]
00000001405e0ea5 mov      qword ptr [rsp + 0x68], rsi
00000001405e0eaa mov      edx, 0x10c
00000001405e0eaf mov      qword ptr [rsp + 0x20], rax
00000001405e0eb4 lea      r8, [rip + 0x325475]
00000001405e0ebb call     0x140001c88
00000001405e0ec0 lea      rdx, [rip + 0x33f139]
00000001405e0ec7 mov      rcx, qword ptr [rip + 0x33f132]
00000001405e0ece cmp      rcx, rdx
00000001405e0ed1 je       0x1405e0f1d
00000001405e0ed3 cmp      byte ptr [rcx + 0x29], sil
00000001405e0ed7 jb       0x1405e0f1d
00000001405e0ed9 mov      eax, dword ptr [rcx + 0x2c]
00000001405e0edc test     al, al
00000001405e0ede jns      0x1405e0f1d
00000001405e0ee0 mov      rcx, qword ptr [rcx + 0x18]
00000001405e0ee4 lea      rax, [rsp + 0x48]
00000001405e0ee9 mov      qword ptr [rbp - 0x80], rax
00000001405e0eed lea      r9, [rip + 0xa198c]
00000001405e0ef4 lea      rax, [rbp - 0x80]
00000001405e0ef8 mov      qword ptr [rbp - 0x78], 2
00000001405e0f00 mov      edx, 0x10d
00000001405e0f05 mov      qword ptr [rsp + 0x20], rax
00000001405e0f0a lea      r8, [rip + 0x32541f]
00000001405e0f11 call     0x140001c88
00000001405e0f16 lea      rdx, [rip + 0x33f0e3]
00000001405e0f1d mov      rcx, qword ptr [rip + 0x33f0dc]
00000001405e0f24 cmp      rcx, rdx
00000001405e0f27 je       0x1405e0f73
00000001405e0f29 cmp      byte ptr [rcx + 0x29], sil
00000001405e0f2d jb       0x1405e0f73
00000001405e0f2f mov      eax, dword ptr [rcx + 0x2c]
00000001405e0f32 test     al, al
00000001405e0f34 jns      0x1405e0f73
00000001405e0f36 mov      rcx, qword ptr [rcx + 0x18]
00000001405e0f3a lea      rax, [rsp + 0x4c]
00000001405e0f3f mov      qword ptr [rbp - 0x70], rax
00000001405e0f43 lea      r9, [rip + 0xa1956]
00000001405e0f4a lea      rax, [rbp - 0x70]
00000001405e0f4e mov      qword ptr [rbp - 0x68], 2
00000001405e0f56 mov      edx, 0x10e
00000001405e0f5b mov      qword ptr [rsp + 0x20], rax
00000001405e0f60 lea      r8, [rip + 0x3253c9]
00000001405e0f67 call     0x140001c88
00000001405e0f6c lea      rdx, [rip + 0x33f08d]
00000001405e0f73 mov      rcx, qword ptr [rip + 0x33f086]
00000001405e0f7a cmp      rcx, rdx
00000001405e0f7d je       0x1405e0fc8
00000001405e0f7f cmp      byte ptr [rcx + 0x29], sil
00000001405e0f83 jb       0x1405e0fc8
00000001405e0f85 mov      eax, dword ptr [rcx + 0x2c]
00000001405e0f88 test     al, al
00000001405e0f8a jns      0x1405e0fc8
00000001405e0f8c mov      rcx, qword ptr [rcx + 0x18]
00000001405e0f90 lea      rax, [rbp - 0x20]
00000001405e0f94 mov      qword ptr [rbp - 0x60], rax
00000001405e0f98 lea      r9, [rip + 0xa1921]
00000001405e0f9f lea      rax, [rbp - 0x60]
00000001405e0fa3 mov      qword ptr [rbp - 0x58], 0x10
00000001405e0fab mov      edx, 0x10f
00000001405e0fb0 mov      qword ptr [rsp + 0x20], rax
00000001405e0fb5 lea      r8, [rip + 0x325374]
00000001405e0fbc call     0x140001c88
00000001405e0fc1 lea      rdx, [rip + 0x33f038]
00000001405e0fc8 mov      rcx, qword ptr [rip + 0x33f031]
00000001405e0fcf cmp      rcx, rdx
00000001405e0fd2 je       0x1405e1016
00000001405e0fd4 cmp      byte ptr [rcx + 0x29], sil
00000001405e0fd8 jb       0x1405e1016
00000001405e0fda mov      eax, dword ptr [rcx + 0x2c]
00000001405e0fdd test     al, al
00000001405e0fdf jns      0x1405e1016
00000001405e0fe1 mov      rcx, qword ptr [rcx + 0x18]
00000001405e0fe5 lea      rax, [rbp]
00000001405e0fe9 mov      qword ptr [rbp - 0x10], rax
00000001405e0fed lea      r9, [rip + 0xa18fc]
00000001405e0ff4 lea      rax, [rbp - 0x10]
00000001405e0ff8 mov      qword ptr [rbp - 8], 0x80
00000001405e1000 mov      edx, 0x110
00000001405e1005 mov      qword ptr [rsp + 0x20], rax
00000001405e100a lea      r8, [rip + 0x32531f]
00000001405e1011 call     0x140001c88
00000001405e1016 xor      eax, eax
00000001405e1018 lea      r9, [rbp]
00000001405e101c mov      byte ptr [rsp + 0x30], al
00000001405e1020 lea      rdx, [rbp - 0x20]
00000001405e1024 mov      byte ptr [rsp + 0x28], dil
00000001405e1029 mov      rcx, rbx
00000001405e102c mov      dword ptr [rsp + 0x20], 0x80
00000001405e1034 lea      r8d, [rax + 0x10]
00000001405e1038 call     0x1401655cc
00000001405e103d inc      byte ptr [rbx + 0xc043c]
00000001405e1043 lea      rdi, [rip + 0x33efb6]
00000001405e104a jmp      0x1405e107a
00000001405e104c mov      rcx, qword ptr [rip + 0x33efad]
00000001405e1053 cmp      rcx, rdi
00000001405e1056 je       0x1405e107c
00000001405e1058 cmp      byte ptr [rcx + 0x29], sil
00000001405e105c jb       0x1405e107c
00000001405e105e mov      eax, dword ptr [rcx + 0x2c]
00000001405e1061 test     al, 8
00000001405e1063 je       0x1405e107c
00000001405e1065 mov      rcx, qword ptr [rcx + 0x18]
00000001405e1069 lea      r8, [rip + 0x3252c0]
00000001405e1070 mov      edx, 0x111
00000001405e1075 call     0x140001b88
00000001405e107a xor      edx, edx
00000001405e107c mov      eax, dword ptr [r13 + 0x28]
00000001405e1080 inc      r12d
00000001405e1083 add      r15, 0x10
00000001405e1087 add      r14, 0x10
00000001405e108b cmp      r12d, eax
00000001405e108e jb       0x1405e0c38
00000001405e1094 xor      r14d, r14d
00000001405e1097 cmp      eax, 1
00000001405e109a jbe      0x1405e10ca
00000001405e109c mov      rcx, qword ptr [rip + 0x33ef5d]
00000001405e10a3 cmp      rcx, rdi
00000001405e10a6 je       0x1405e10ca
00000001405e10a8 cmp      byte ptr [rcx + 0x29], 3
00000001405e10ac jb       0x1405e10ca
00000001405e10ae mov      eax, dword ptr [rcx + 0x2c]
00000001405e10b1 test     al, 8
00000001405e10b3 je       0x1405e10ca
00000001405e10b5 mov      rcx, qword ptr [rcx + 0x18]
00000001405e10b9 lea      r8, [rip + 0x325270]
00000001405e10c0 mov      edx, 0x112
00000001405e10c5 call     0x140001b88
00000001405e10ca mov      eax, dword ptr [r13]
00000001405e10ce test     al, 8
00000001405e10d0 je       0x1405e1581
00000001405e10d6 mov      eax, dword ptr [r13 + 0x40]
00000001405e10da xorps    xmm0, xmm0
00000001405e10dd mov      r15, qword ptr [r13 + 0x48]
00000001405e10e1 xorps    xmm1, xmm1
00000001405e10e4 mov      r12d, r14d
00000001405e10e7 movups   xmmword ptr [rbp - 0x10], xmm0
00000001405e10eb movups   xmmword ptr [rbp - 0x40], xmm1
00000001405e10ef test     eax, eax
00000001405e10f1 je       0x1405e154e
00000001405e10f7 lea      r14, [r15 + 4]
00000001405e10fb xor      edx, edx
00000001405e10fd jmp      0x1405e1104
00000001405e10ff mov      esi, 4
00000001405e1104 cmp      dword ptr [rbx + 0xc0450], edx
00000001405e110a jne      0x1405e1503
00000001405e1110 mov      eax, dword ptr [r15]
00000001405e1113 mov      dword ptr [rbx + 0xc0450], eax
00000001405e1119 mov      rcx, qword ptr [rip + 0x33eee0]
00000001405e1120 cmp      rcx, rdi
00000001405e1123 je       0x1405e114c
00000001405e1125 cmp      byte ptr [rcx + 0x29], sil
00000001405e1129 jb       0x1405e114c
00000001405e112b mov      eax, dword ptr [rcx + 0x2c]
00000001405e112e test     al, 8
00000001405e1130 je       0x1405e114c
00000001405e1132 mov      r9d, dword ptr [r15]
00000001405e1135 lea      r8, [rip + 0x3251f4]
00000001405e113c mov      rcx, qword ptr [rcx + 0x18]
00000001405e1140 mov      edx, 0x113
00000001405e1145 call     0x140001bb0
00000001405e114a xor      edx, edx
00000001405e114c or       dword ptr [rbx + 0xc04c0], 0x40
00000001405e1153 mov      sil, dl
00000001405e1156 movzx    eax, sil
00000001405e115a imul     rcx, rax, 0xb8
00000001405e1161 cmp      dword ptr [rcx + rbx + 0xbe04c], edx
00000001405e1168 je       0x1405e11b7
00000001405e116a inc      sil
00000001405e116d cmp      sil, 0x32
00000001405e1171 jb       0x1405e1156
00000001405e1173 mov      rcx, qword ptr [rip + 0x33ee86]
00000001405e117a lea      rax, [rip + 0x33ee7f]
00000001405e1181 cmp      rcx, rax
00000001405e1184 je       0x1405e11b7
00000001405e1186 cmp      byte ptr [rcx + 0x29], 4
00000001405e118a jb       0x1405e11b7
00000001405e118c mov      eax, dword ptr [rcx + 0x2c]
00000001405e118f test     al, al
00000001405e1191 jns      0x1405e11b7
00000001405e1193 mov      rcx, qword ptr [rcx + 0x18]
00000001405e1197 lea      r9, [rip + 0xa16a2]
00000001405e119e mov      edx, 0x114
00000001405e11a3 mov      dword ptr [rsp + 0x20], 0x32
00000001405e11ab lea      r8, [rip + 0x32517e]
00000001405e11b2 call     0x1400088d8
00000001405e11b7 or       byte ptr [rbp - 0x3f], 0x30
00000001405e11bb lea      rdx, [rbp - 0x10]
00000001405e11bf or       byte ptr [rbp - 0x38], 8
00000001405e11c3 mov      edi, 0x10
00000001405e11c8 or       byte ptr [rbp - 0x3e], dil
00000001405e11cc mov      r8d, edi
00000001405e11cf mov      rcx, r14
00000001405e11d2 call     0x14003113c
00000001405e11d7 test     eax, eax
00000001405e11d9 je       0x1405e11e7
00000001405e11db or       byte ptr [rbp - 0x3e], 0xc0
00000001405e11df or       byte ptr [rbp - 0x3c], 0x3f
00000001405e11e3 mov      byte ptr [rbp - 0x3d], 0xff
00000001405e11e7 lea      rcx, [r14 + 0x10]
00000001405e11eb mov      r8d, edi
00000001405e11ee lea      rdx, [rbp - 0x10]
00000001405e11f2 call     0x14003113c
00000001405e11f7 xor      r8d, r8d
00000001405e11fa test     eax, eax
00000001405e11fc mov      al, byte ptr [rbp - 0x3a]
00000001405e11ff je       0x1405e120e
00000001405e1201 or       byte ptr [rbp - 0x3c], 0xc0
00000001405e1205 or       al, 0x3f
00000001405e1207 mov      byte ptr [rbp - 0x3b], 0xff
00000001405e120b mov      byte ptr [rbp - 0x3a], al
00000001405e120e movzx    edx, word ptr [r14 + 0x20]
00000001405e1213 test     dx, dx
00000001405e1216 jne      0x1405e121e
00000001405e1218 movzx    edx, r8w
00000001405e121c jmp      0x1405e1222
00000001405e121e ror      dx, 8
00000001405e1222 mov      word ptr [rsp + 0x50], dx
00000001405e1227 movzx    ecx, word ptr [r14 + 0x22]
00000001405e122c test     cx, cx
00000001405e122f jne      0x1405e1237
00000001405e1231 movzx    ecx, r8w
00000001405e1235 jmp      0x1405e123b
00000001405e1237 ror      cx, 8
00000001405e123b mov      word ptr [rsp + 0x54], cx
00000001405e1240 test     dx, dx
00000001405e1243 je       0x1405e124a
00000001405e1245 or       al, 0xc0
00000001405e1247 mov      byte ptr [rbp - 0x3a], al
00000001405e124a test     cx, cx
00000001405e124d je       0x1405e1253
00000001405e124f or       byte ptr [rbp - 0x39], 3
00000001405e1253 mov      r8d, edi
00000001405e1256 lea      rdx, [rbp - 0x40]
00000001405e125a lea      rcx, [rbp - 0x20]
00000001405e125e call     0x1400311e8
00000001405e1263 mov      r8d, edi
00000001405e1266 mov      word ptr [rbp + 0xc], 0xdd86
00000001405e126c mov      rdx, r14
00000001405e126f mov      byte ptr [rbp + 0x14], 6
00000001405e1273 lea      rcx, [rbp + 0x16]
00000001405e1277 mov      byte ptr [rbp + 0x43], 2
00000001405e127b call     0x1400311e8
00000001405e1280 lea      rdx, [r14 + 0x10]
00000001405e1284 mov      r8d, edi
00000001405e1287 lea      rcx, [rbp + 0x26]
00000001405e128b call     0x1400311e8
00000001405e1290 mov      r8d, 2
00000001405e1296 lea      rdx, [rsp + 0x50]
00000001405e129b lea      rcx, [rbp + 0x36]
00000001405e129f call     0x1400311e8
00000001405e12a4 mov      r8d, 2
00000001405e12aa lea      rdx, [rsp + 0x54]
00000001405e12af lea      rcx, [rbp + 0x38]
00000001405e12b3 call     0x1400311e8
00000001405e12b8 movzx    eax, sil
00000001405e12bc imul     rcx, rax, 0xb8
00000001405e12c3 mov      eax, dword ptr [r15]
00000001405e12c6 mov      dword ptr [rcx + rbx + 0xbe04c], eax
00000001405e12cd xor      eax, eax
00000001405e12cf mov      dword ptr [rcx + rbx + 0xbe064], eax
00000001405e12d6 mov      byte ptr [rcx + rbx + 0xbe068], 1
00000001405e12de test     r14, r14
00000001405e12e1 je       0x1405e133f
00000001405e12e3 mov      rcx, qword ptr [rip + 0x33ed16]
00000001405e12ea lea      rdi, [rip + 0x33ed0f]
00000001405e12f1 cmp      rcx, rdi
00000001405e12f4 je       0x1405e1334
00000001405e12f6 cmp      byte ptr [rcx + 0x29], 4
00000001405e12fa jb       0x1405e1334
00000001405e12fc mov      eax, dword ptr [rcx + 0x2c]
00000001405e12ff test     al, al
00000001405e1301 jns      0x1405e1334
00000001405e1303 mov      rcx, qword ptr [rcx + 0x18]
00000001405e1307 lea      rax, [rbp - 0x60]
00000001405e130b mov      edx, 0x115
00000001405e1310 mov      qword ptr [rsp + 0x20], rax
00000001405e1315 lea      r9, [rip + 0xa1604]
00000001405e131c mov      qword ptr [rbp - 0x60], r14
00000001405e1320 lea      r8, [rip + 0x325009]
00000001405e1327 mov      qword ptr [rbp - 0x58], 0x10
00000001405e132f call     0x140001c88
00000001405e1334 lea      rax, [r14 + 0x10]
00000001405e1338 test     rax, rax
00000001405e133b je       0x1405e1394
00000001405e133d jmp      0x1405e1346
00000001405e133f lea      rdi, [rip + 0x33ecba]
00000001405e1346 mov      rcx, qword ptr [rip + 0x33ecb3]
00000001405e134d cmp      rcx, rdi
00000001405e1350 je       0x1405e1394
00000001405e1352 cmp      byte ptr [rcx + 0x29], 4
00000001405e1356 jb       0x1405e1394
00000001405e1358 mov      eax, dword ptr [rcx + 0x2c]
00000001405e135b test     al, al
00000001405e135d jns      0x1405e1394
00000001405e135f mov      rcx, qword ptr [rcx + 0x18]
00000001405e1363 lea      rax, [r14 + 0x10]
00000001405e1367 mov      qword ptr [rbp - 0x70], rax
00000001405e136b lea      r9, [rip + 0xa15be]
00000001405e1372 lea      rax, [rbp - 0x70]
00000001405e1376 mov      qword ptr [rbp - 0x68], 0x10
00000001405e137e mov      edx, 0x116
00000001405e1383 mov      qword ptr [rsp + 0x20], rax
00000001405e1388 lea      r8, [rip + 0x324fa1]
00000001405e138f call     0x140001c88
00000001405e1394 mov      rcx, qword ptr [rip + 0x33ec65]
00000001405e139b cmp      rcx, rdi
00000001405e139e je       0x1405e13e3
00000001405e13a0 cmp      byte ptr [rcx + 0x29], 4
00000001405e13a4 jb       0x1405e13e3
00000001405e13a6 mov      eax, dword ptr [rcx + 0x2c]
00000001405e13a9 test     al, al
00000001405e13ab jns      0x1405e13e3
00000001405e13ad mov      rcx, qword ptr [rcx + 0x18]
00000001405e13b1 lea      rax, [rsp + 0x50]
00000001405e13b6 mov      qword ptr [rbp - 0x80], rax
00000001405e13ba lea      r9, [rip + 0xa157f]
00000001405e13c1 lea      rax, [rbp - 0x80]
00000001405e13c5 mov      qword ptr [rbp - 0x78], 2
00000001405e13cd mov      edx, 0x117
00000001405e13d2 mov      qword ptr [rsp + 0x20], rax
00000001405e13d7 lea      r8, [rip + 0x324f52]
00000001405e13de call     0x140001c88
00000001405e13e3 mov      rcx, qword ptr [rip + 0x33ec16]
00000001405e13ea cmp      rcx, rdi
00000001405e13ed je       0x1405e1435
00000001405e13ef cmp      byte ptr [rcx + 0x29], 4
00000001405e13f3 jb       0x1405e1435
00000001405e13f5 mov      eax, dword ptr [rcx + 0x2c]
00000001405e13f8 test     al, al
00000001405e13fa jns      0x1405e1435
00000001405e13fc mov      rcx, qword ptr [rcx + 0x18]
00000001405e1400 lea      rax, [rsp + 0x54]
00000001405e1405 mov      qword ptr [rsp + 0x70], rax
00000001405e140a lea      r9, [rip + 0xa154f]
00000001405e1411 lea      rax, [rsp + 0x70]
00000001405e1416 mov      qword ptr [rsp + 0x78], 2
00000001405e141f mov      edx, 0x118
00000001405e1424 mov      qword ptr [rsp + 0x20], rax
00000001405e1429 lea      r8, [rip + 0x324f00]
00000001405e1430 call     0x140001c88
00000001405e1435 mov      rcx, qword ptr [rip + 0x33ebc4]
00000001405e143c cmp      rcx, rdi
00000001405e143f je       0x1405e1486
00000001405e1441 cmp      byte ptr [rcx + 0x29], 4
00000001405e1445 jb       0x1405e1486
00000001405e1447 mov      eax, dword ptr [rcx + 0x2c]
00000001405e144a test     al, al
00000001405e144c jns      0x1405e1486
00000001405e144e mov      rcx, qword ptr [rcx + 0x18]
00000001405e1452 lea      rax, [rbp - 0x20]
00000001405e1456 mov      qword ptr [rsp + 0x60], rax
00000001405e145b lea      r9, [rip + 0xa151e]
00000001405e1462 lea      rax, [rsp + 0x60]
00000001405e1467 mov      qword ptr [rsp + 0x68], 0x10
00000001405e1470 mov      edx, 0x119
00000001405e1475 mov      qword ptr [rsp + 0x20], rax
00000001405e147a lea      r8, [rip + 0x324eaf]
00000001405e1481 call     0x140001c88
00000001405e1486 mov      rcx, qword ptr [rip + 0x33eb73]
00000001405e148d cmp      rcx, rdi
00000001405e1490 je       0x1405e14d4
00000001405e1492 cmp      byte ptr [rcx + 0x29], 4
00000001405e1496 jb       0x1405e14d4
00000001405e1498 mov      eax, dword ptr [rcx + 0x2c]
00000001405e149b test     al, al
00000001405e149d jns      0x1405e14d4
00000001405e149f mov      rcx, qword ptr [rcx + 0x18]
00000001405e14a3 lea      rax, [rbp]
00000001405e14a7 mov      qword ptr [rbp - 0x50], rax
00000001405e14ab lea      r9, [rip + 0xa14fe]
00000001405e14b2 lea      rax, [rbp - 0x50]
00000001405e14b6 mov      qword ptr [rbp - 0x48], 0x80
00000001405e14be mov      edx, 0x11a
00000001405e14c3 mov      qword ptr [rsp + 0x20], rax
00000001405e14c8 lea      r8, [rip + 0x324e61]
00000001405e14cf call     0x140001c88
00000001405e14d4 xor      eax, eax
00000001405e14d6 lea      r9, [rbp]
00000001405e14da mov      byte ptr [rsp + 0x30], al
00000001405e14de lea      rdx, [rbp - 0x20]
00000001405e14e2 mov      byte ptr [rsp + 0x28], sil
00000001405e14e7 mov      rcx, rbx
00000001405e14ea mov      dword ptr [rsp + 0x20], 0x80
00000001405e14f2 lea      r8d, [rax + 0x10]
00000001405e14f6 call     0x1401655cc
00000001405e14fb inc      byte ptr [rbx + 0xc043c]
00000001405e1501 jmp      0x1405e1531
00000001405e1503 mov      rcx, qword ptr [rip + 0x33eaf6]
00000001405e150a cmp      rcx, rdi
00000001405e150d je       0x1405e1533
00000001405e150f cmp      byte ptr [rcx + 0x29], sil
00000001405e1513 jb       0x1405e1533
00000001405e1515 mov      eax, dword ptr [rcx + 0x2c]
00000001405e1518 test     al, 8
00000001405e151a je       0x1405e1533
00000001405e151c mov      rcx, qword ptr [rcx + 0x18]
00000001405e1520 lea      r8, [rip + 0x324e09]
00000001405e1527 mov      edx, 0x11b
00000001405e152c call     0x140001b88
00000001405e1531 xor      edx, edx
00000001405e1533 mov      eax, dword ptr [r13 + 0x40]
00000001405e1537 inc      r12d
00000001405e153a add      r15, 0x28
00000001405e153e add      r14, 0x28
00000001405e1542 cmp      r12d, eax
00000001405e1545 jb       0x1405e10ff
00000001405e154b xor      r14d, r14d
00000001405e154e cmp      eax, 1
00000001405e1551 jbe      0x1405e1581
00000001405e1553 mov      rcx, qword ptr [rip + 0x33eaa6]
00000001405e155a cmp      rcx, rdi
00000001405e155d je       0x1405e1581
00000001405e155f cmp      byte ptr [rcx + 0x29], 3
00000001405e1563 jb       0x1405e1581
00000001405e1565 mov      eax, dword ptr [rcx + 0x2c]
00000001405e1568 test     al, 8
00000001405e156a je       0x1405e1581
00000001405e156c mov      rcx, qword ptr [rcx + 0x18]
00000001405e1570 lea      r8, [rip + 0x324db9]
00000001405e1577 mov      edx, 0x11c
00000001405e157c call     0x140001b88
00000001405e1581 mov      eax, dword ptr [r13]
00000001405e1585 test     al, 0x10
00000001405e1587 je       0x1405e163f
00000001405e158d mov      rcx, qword ptr [rip + 0x33ea6c]
00000001405e1594 cmp      rcx, rdi
00000001405e1597 je       0x1405e15bb
00000001405e1599 cmp      byte ptr [rcx + 0x29], 4
00000001405e159d jb       0x1405e15bb
00000001405e159f mov      eax, dword ptr [rcx + 0x2c]
00000001405e15a2 test     al, 8
00000001405e15a4 je       0x1405e15bb
00000001405e15a6 mov      rcx, qword ptr [rcx + 0x18]
00000001405e15aa lea      r8, [rip + 0x324d7f]
00000001405e15b1 mov      edx, 0x11d
00000001405e15b6 call     0x140001b88
00000001405e15bb cmp      dword ptr [rbx + 0xc0444], r14d
00000001405e15c2 jne      0x1405e160d
00000001405e15c4 mov      r9d, dword ptr [r13 + 0x58]
00000001405e15c8 mov      dword ptr [rbx + 0xc0444], r9d
00000001405e15cf mov      rcx, qword ptr [rip + 0x33ea2a]
00000001405e15d6 cmp      rcx, rdi
00000001405e15d9 je       0x1405e15fd
00000001405e15db cmp      byte ptr [rcx + 0x29], 4
00000001405e15df jb       0x1405e15fd
00000001405e15e1 mov      eax, dword ptr [rcx + 0x2c]
00000001405e15e4 test     al, 8
00000001405e15e6 je       0x1405e15fd
00000001405e15e8 mov      rcx, qword ptr [rcx + 0x18]
00000001405e15ec lea      r8, [rip + 0x324d3d]
00000001405e15f3 mov      edx, 0x11e
00000001405e15f8 call     0x140001bb0
00000001405e15fd inc      byte ptr [rbx + 0xc043d]
00000001405e1603 bts      dword ptr [rbx + 0xc04c0], 7
00000001405e160b jmp      0x1405e163f
00000001405e160d mov      rcx, qword ptr [rip + 0x33e9ec]
00000001405e1614 cmp      rcx, rdi
00000001405e1617 je       0x1405e1720
00000001405e161d cmp      byte ptr [rcx + 0x29], 4
00000001405e1621 jb       0x1405e163f
00000001405e1623 mov      eax, dword ptr [rcx + 0x2c]
00000001405e1626 test     al, 8
00000001405e1628 je       0x1405e163f
00000001405e162a mov      rcx, qword ptr [rcx + 0x18]
00000001405e162e lea      r8, [rip + 0x324cfb]
00000001405e1635 mov      edx, 0x11f
00000001405e163a call     0x140001b88
00000001405e163f mov      rcx, qword ptr [rip + 0x33e9ba]
00000001405e1646 cmp      rcx, rdi
00000001405e1649 je       0x1405e1720
00000001405e164f cmp      byte ptr [rcx + 0x29], 4
00000001405e1653 jb       0x1405e1679
00000001405e1655 mov      eax, dword ptr [rcx + 0x2c]
00000001405e1658 test     al, al
00000001405e165a jns      0x1405e1679
00000001405e165c movzx    r9d, byte ptr [rbx + 0xc043d]
00000001405e1664 lea      r8, [rip + 0x324cc5]
00000001405e166b mov      rcx, qword ptr [rcx + 0x18]
00000001405e166f mov      edx, 0x120
00000001405e1674 call     0x140001bb0
00000001405e1679 mov      rcx, qword ptr [rip + 0x33e980]
00000001405e1680 cmp      rcx, rdi
00000001405e1683 je       0x1405e1720
00000001405e1689 cmp      byte ptr [rcx + 0x29], 4
00000001405e168d jb       0x1405e16b3
00000001405e168f mov      eax, dword ptr [rcx + 0x2c]
00000001405e1692 test     al, al
00000001405e1694 jns      0x1405e16b3
00000001405e1696 movzx    r9d, byte ptr [rbx + 0xc043c]
00000001405e169e lea      r8, [rip + 0x324c8b]
00000001405e16a5 mov      rcx, qword ptr [rcx + 0x18]
00000001405e16a9 mov      edx, 0x121
00000001405e16ae call     0x140001bb0
00000001405e16b3 mov      rcx, qword ptr [rip + 0x33e946]
00000001405e16ba cmp      rcx, rdi
00000001405e16bd je       0x1405e1720
00000001405e16bf cmp      byte ptr [rcx + 0x29], 4
00000001405e16c3 jb       0x1405e16f2
00000001405e16c5 mov      eax, dword ptr [rcx + 0x2c]
00000001405e16c8 test     al, 8
00000001405e16ca je       0x1405e16f2
00000001405e16cc mov      eax, dword ptr [rbx + 0xc04c4]
00000001405e16d2 lea      r8, [rip + 0x324c57]
00000001405e16d9 mov      r9d, dword ptr [rbx + 0xc04c0]
00000001405e16e0 mov      edx, 0x122
00000001405e16e5 mov      rcx, qword ptr [rcx + 0x18]
00000001405e16e9 mov      dword ptr [rsp + 0x20], eax
00000001405e16ed call     0x140001bec
00000001405e16f2 mov      rcx, qword ptr [rip + 0x33e907]
00000001405e16f9 cmp      rcx, rdi
00000001405e16fc je       0x1405e1720
00000001405e16fe cmp      byte ptr [rcx + 0x29], 4
00000001405e1702 jb       0x1405e1720
00000001405e1704 mov      eax, dword ptr [rcx + 0x2c]
00000001405e1707 test     al, 8
00000001405e1709 je       0x1405e1720
00000001405e170b mov      rcx, qword ptr [rcx + 0x18]
00000001405e170f lea      r8, [rip + 0x324c1a]
00000001405e1716 mov      edx, 0x123
00000001405e171b call     0x140001b88
00000001405e1720 xor      eax, eax
00000001405e1722 mov      rcx, qword ptr [rbp + 0x80]
00000001405e1729 xor      rcx, rsp
00000001405e172c call     0x1405f45b0
00000001405e1731 mov      rbx, qword ptr [rsp + 0x1e0]
00000001405e1739 add      rsp, 0x190
00000001405e1740 pop      r15
00000001405e1742 pop      r14
00000001405e1744 pop      r13
00000001405e1746 pop      r12
00000001405e1748 pop      rdi
00000001405e1749 pop      rsi
00000001405e174a pop      rbp
00000001405e174b ret      