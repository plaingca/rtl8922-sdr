00000001403f74f0 mov      qword ptr [rsp + 8], rbx
00000001403f74f5 mov      qword ptr [rsp + 0x10], rbp
00000001403f74fa mov      qword ptr [rsp + 0x18], rsi
00000001403f74ff push     rdi
00000001403f7500 push     r14
00000001403f7502 push     r15
00000001403f7504 sub      rsp, 0x30
00000001403f7508 mov      rbp, qword ptr [rcx + 0x9a0]
00000001403f750f xor      esi, esi
00000001403f7511 mov      eax, dword ptr [rcx + 0x13f0]
00000001403f7517 add      rbp, 0x3054
00000001403f751e movzx    r15d, dl
00000001403f7522 mov      r14d, r9d
00000001403f7525 mov      rbx, rcx
00000001403f7528 test     eax, 0x1800000
00000001403f752d je       0x1403f7569
00000001403f752f cmp      r15b, byte ptr [rcx + 0x1416]
00000001403f7536 jb       0x1403f75c8
00000001403f753c mov      rcx, qword ptr [rip + 0x528abd]
00000001403f7543 lea      rdi, [rip + 0x528ab6]
00000001403f754a cmp      rcx, rdi
00000001403f754d je       0x1403f75be
00000001403f754f cmp      byte ptr [rcx + 0x169], 3
00000001403f7556 jb       0x1403f75be
00000001403f7558 test     dword ptr [rcx + 0x16c], 0x1000
00000001403f7562 je       0x1403f75be
00000001403f7564 lea      edx, [rsi + 0xd]
00000001403f7567 jmp      0x1403f759f
00000001403f7569 cmp      r15b, byte ptr [rcx + 0x1415]
00000001403f7570 jb       0x1403f75c8
00000001403f7572 mov      rcx, qword ptr [rip + 0x528a87]
00000001403f7579 lea      rdi, [rip + 0x528a80]
00000001403f7580 cmp      rcx, rdi
00000001403f7583 je       0x1403f75be
00000001403f7585 cmp      byte ptr [rcx + 0x169], 3
00000001403f758c jb       0x1403f75be
00000001403f758e test     dword ptr [rcx + 0x16c], 0x1000
00000001403f7598 je       0x1403f75be
00000001403f759a mov      edx, 0xe
00000001403f759f mov      rcx, qword ptr [rcx + 0x158]
00000001403f75a6 lea      r9, [rip + 0x259303]
00000001403f75ad lea      r8, [rip + 0x2ded5c]
00000001403f75b4 mov      dword ptr [rsp + 0x20], r15d
00000001403f75b9 call     0x1400088d8
00000001403f75be mov      eax, 0xffff
00000001403f75c3 jmp      0x1403f79f5
00000001403f75c8 test     eax, 0xf00000
00000001403f75cd je       0x1403f76c2
00000001403f75d3 test     r8b, r8b
00000001403f75d6 jne      0x1403f764c
00000001403f75d8 cmp      dword ptr [rcx + 0x4a9c], 1
00000001403f75df je       0x1403f764c
00000001403f75e1 mov      edx, dword ptr [rcx + 0x4a94]
00000001403f75e7 test     edx, edx
00000001403f75e9 je       0x1403f763a
00000001403f75eb mov      rax, qword ptr [rip + 0x528a0e]
00000001403f75f2 lea      rdi, [rip + 0x528a07]
00000001403f75f9 cmp      rax, rdi
00000001403f75fc je       0x1403f763a
00000001403f75fe cmp      byte ptr [rax + 0x169], 4
00000001403f7605 jb       0x1403f763a
00000001403f7607 test     dword ptr [rax + 0x16c], 0x1000
00000001403f7611 je       0x1403f763a
00000001403f7613 call     0x140315ba8
00000001403f7618 mov      rcx, qword ptr [rip + 0x5289e1]
00000001403f761f lea      r8, [rip + 0x2decea]
00000001403f7626 mov      r9, rax
00000001403f7629 mov      edx, 0x10
00000001403f762e mov      rcx, qword ptr [rcx + 0x158]
00000001403f7635 call     0x140008874
00000001403f763a mov      edx, dword ptr [rbp + r15*4 + 0x1c0]
00000001403f7642 mov      r8d, dword ptr [rbp + r15*4 + 0x1c8]
00000001403f764a jmp      0x1403f76b2
00000001403f764c mov      edx, dword ptr [rcx + 0x4a94]
00000001403f7652 test     edx, edx
00000001403f7654 je       0x1403f76a5
00000001403f7656 mov      rax, qword ptr [rip + 0x5289a3]
00000001403f765d lea      rdi, [rip + 0x52899c]
00000001403f7664 cmp      rax, rdi
00000001403f7667 je       0x1403f76a5
00000001403f7669 cmp      byte ptr [rax + 0x169], 4
00000001403f7670 jb       0x1403f76a5
00000001403f7672 test     dword ptr [rax + 0x16c], 0x1000
00000001403f767c je       0x1403f76a5
00000001403f767e call     0x140315ba8
00000001403f7683 mov      rcx, qword ptr [rip + 0x528976]
00000001403f768a lea      r8, [rip + 0x2dec7f]
00000001403f7691 mov      r9, rax
00000001403f7694 mov      edx, 0xf
00000001403f7699 mov      rcx, qword ptr [rcx + 0x158]
00000001403f76a0 call     0x140008874
00000001403f76a5 mov      edx, dword ptr [rbp + 0x1d0]
00000001403f76ab mov      r8d, dword ptr [rbp + 0x1d4]
00000001403f76b2 mov      r9d, r14d
00000001403f76b5 mov      rcx, rbx
00000001403f76b8 call     0x140315af0
00000001403f76bd jmp      0x1403f79f5
00000001403f76c2 test     r8b, r8b
00000001403f76c5 jne      0x1403f7919
00000001403f76cb cmp      dword ptr [rcx + 0x4a9c], 1
00000001403f76d2 je       0x1403f7919
00000001403f76d8 lea      rdi, [rip + 0x528921]
00000001403f76df cmp      eax, 0x20000
00000001403f76e4 jne      0x1403f774e
00000001403f76e6 test     dl, dl
00000001403f76e8 je       0x1403f7746
00000001403f76ea cmp      r15d, 1
00000001403f76ee je       0x1403f7724
00000001403f76f0 mov      rcx, qword ptr [rip + 0x528909]
00000001403f76f7 cmp      rcx, rdi
00000001403f76fa je       0x1403f7911
00000001403f7700 cmp      byte ptr [rcx + 0x169], 3
00000001403f7707 jb       0x1403f78c3
00000001403f770d test     dword ptr [rcx + 0x16c], 0x1000
00000001403f7717 je       0x1403f78c3
00000001403f771d mov      edx, 0x13
00000001403f7722 jmp      0x1403f77a2
00000001403f7724 mov      r9d, 0x15
00000001403f772a mov      r8d, dword ptr [rbp + 0x134]
00000001403f7731 mov      edx, dword ptr [rbp + 0x130]
00000001403f7737 mov      dword ptr [rsp + 0x20], r14d
00000001403f773c call     0x140316994
00000001403f7741 jmp      0x1403f78a9
00000001403f7746 mov      r9d, 0x11
00000001403f774c jmp      0x1403f772a
00000001403f774e test     eax, 0xc0000
00000001403f7753 je       0x1403f78c3
00000001403f7759 mov      cl, byte ptr [rcx + 0x1416]
00000001403f775f shl      cl, 2
00000001403f7762 test     dl, dl
00000001403f7764 je       0x1403f7832
00000001403f776a cmp      r15d, 1
00000001403f776e je       0x1403f77c6
00000001403f7770 mov      rcx, qword ptr [rip + 0x528889]
00000001403f7777 cmp      rcx, rdi
00000001403f777a je       0x1403f7911
00000001403f7780 cmp      byte ptr [rcx + 0x169], 3
00000001403f7787 jb       0x1403f78c3
00000001403f778d test     dword ptr [rcx + 0x16c], 0x1000
00000001403f7797 je       0x1403f78c3
00000001403f779d mov      edx, 0x18
00000001403f77a2 mov      rcx, qword ptr [rcx + 0x158]
00000001403f77a9 lea      r9, [rip + 0x259100]
00000001403f77b0 lea      r8, [rip + 0x2deb59]
00000001403f77b7 mov      dword ptr [rsp + 0x20], r15d
00000001403f77bc call     0x1400088d8
00000001403f77c1 jmp      0x1403f78c3
00000001403f77c6 mov      r8d, dword ptr [rbp + 0x134]
00000001403f77cd mov      edx, dword ptr [rbp + 0x130]
00000001403f77d3 movzx    r9d, cl
00000001403f77d7 mov      rcx, rbx
00000001403f77da add      r9d, 0x17
00000001403f77de mov      dword ptr [rsp + 0x20], r14d
00000001403f77e3 call     0x140316994
00000001403f77e8 mov      edx, dword ptr [rbx + 0x4a94]
00000001403f77ee test     edx, edx
00000001403f77f0 je       0x1403f78a9
00000001403f77f6 mov      rax, qword ptr [rip + 0x528803]
00000001403f77fd cmp      rax, rdi
00000001403f7800 je       0x1403f78a9
00000001403f7806 cmp      byte ptr [rax + 0x169], 4
00000001403f780d jb       0x1403f78a9
00000001403f7813 test     dword ptr [rax + 0x16c], 0x1000
00000001403f781d je       0x1403f78a9
00000001403f7823 mov      rcx, rbx
00000001403f7826 call     0x140315ba8
00000001403f782b mov      edx, 0x15
00000001403f7830 jmp      0x1403f788c
00000001403f7832 mov      r8d, dword ptr [rbp + 0x134]
00000001403f7839 mov      edx, dword ptr [rbp + 0x130]
00000001403f783f movzx    r9d, cl
00000001403f7843 mov      rcx, rbx
00000001403f7846 add      r9d, 0x13
00000001403f784a mov      dword ptr [rsp + 0x20], r14d
00000001403f784f call     0x140316994
00000001403f7854 mov      edx, dword ptr [rbx + 0x4a94]
00000001403f785a test     edx, edx
00000001403f785c je       0x1403f78a9
00000001403f785e mov      rax, qword ptr [rip + 0x52879b]
00000001403f7865 cmp      rax, rdi
00000001403f7868 je       0x1403f78a9
00000001403f786a cmp      byte ptr [rax + 0x169], 4
00000001403f7871 jb       0x1403f78a9
00000001403f7873 test     dword ptr [rax + 0x16c], 0x1000
00000001403f787d je       0x1403f78a9
00000001403f787f mov      rcx, rbx
00000001403f7882 call     0x140315ba8
00000001403f7887 mov      edx, 0x14
00000001403f788c mov      rcx, qword ptr [rip + 0x52876d]
00000001403f7893 lea      r8, [rip + 0x2dea76]
00000001403f789a mov      r9, rax
00000001403f789d mov      rcx, qword ptr [rcx + 0x158]
00000001403f78a4 call     0x140008874
00000001403f78a9 mov      edx, dword ptr [rbp + 0x138]
00000001403f78af mov      r9d, r14d
00000001403f78b2 mov      r8d, 0xff000000
00000001403f78b8 mov      rcx, rbx
00000001403f78bb call     0x140315af0
00000001403f78c0 movzx    esi, ax
00000001403f78c3 mov      rcx, qword ptr [rip + 0x528736]
00000001403f78ca cmp      rcx, rdi
00000001403f78cd je       0x1403f7911
00000001403f78cf cmp      byte ptr [rcx + 0x1e9], 4
00000001403f78d6 jb       0x1403f7911
00000001403f78d8 test     dword ptr [rcx + 0x1ec], 0x10000000
00000001403f78e2 je       0x1403f7911
00000001403f78e4 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403f78eb lea      r9, [rip + 0x258fbe]
00000001403f78f2 movzx    r8d, si
00000001403f78f6 mov      edx, 0x19
00000001403f78fb mov      dword ptr [rsp + 0x28], r8d
00000001403f7900 lea      r8, [rip + 0x2dea09]
00000001403f7907 mov      dword ptr [rsp + 0x20], r15d
00000001403f790c call     0x140002b04
00000001403f7911 movzx    eax, si
00000001403f7914 jmp      0x1403f79f5
00000001403f7919 mov      r8d, dword ptr [rbp + 0x134]
00000001403f7920 mov      r9d, 5
00000001403f7926 mov      edx, dword ptr [rbp + 0x130]
00000001403f792c mov      dword ptr [rsp + 0x20], r14d
00000001403f7931 call     0x140316994
00000001403f7936 mov      edx, dword ptr [rbx + 0x4a94]
00000001403f793c lea      rdi, [rip + 0x5286bd]
00000001403f7943 test     edx, edx
00000001403f7945 je       0x1403f7992
00000001403f7947 mov      rax, qword ptr [rip + 0x5286b2]
00000001403f794e cmp      rax, rdi
00000001403f7951 je       0x1403f7992
00000001403f7953 cmp      byte ptr [rax + 0x169], 4
00000001403f795a jb       0x1403f7992
00000001403f795c test     dword ptr [rax + 0x16c], 0x1000
00000001403f7966 je       0x1403f7992
00000001403f7968 mov      rcx, rbx
00000001403f796b call     0x140315ba8
00000001403f7970 mov      rcx, qword ptr [rip + 0x528689]
00000001403f7977 lea      r8, [rip + 0x2de992]
00000001403f797e mov      r9, rax
00000001403f7981 mov      edx, 0x11
00000001403f7986 mov      rcx, qword ptr [rcx + 0x158]
00000001403f798d call     0x140008874
00000001403f7992 mov      edx, dword ptr [rbp + 0x138]
00000001403f7998 mov      r9d, r14d
00000001403f799b mov      r8d, 0xff00
00000001403f79a1 mov      rcx, rbx
00000001403f79a4 call     0x140315af0
00000001403f79a9 mov      ebx, eax
00000001403f79ab mov      rcx, qword ptr [rip + 0x52864e]
00000001403f79b2 cmp      rcx, rdi
00000001403f79b5 je       0x1403f79f2
00000001403f79b7 cmp      byte ptr [rcx + 0x1e9], 4
00000001403f79be jb       0x1403f79f2
00000001403f79c0 test     dword ptr [rcx + 0x1ec], 0x10000000
00000001403f79ca je       0x1403f79f2
00000001403f79cc mov      rcx, qword ptr [rcx + 0x1d8]
00000001403f79d3 lea      r9, [rip + 0x258ed6]
00000001403f79da movzx    eax, bx
00000001403f79dd lea      r8, [rip + 0x2de92c]
00000001403f79e4 mov      edx, 0x12
00000001403f79e9 mov      dword ptr [rsp + 0x20], eax
00000001403f79ed call     0x1400088d8
00000001403f79f2 movzx    eax, bx
00000001403f79f5 mov      rbx, qword ptr [rsp + 0x50]
00000001403f79fa mov      rbp, qword ptr [rsp + 0x58]
00000001403f79ff mov      rsi, qword ptr [rsp + 0x60]
00000001403f7a04 add      rsp, 0x30
00000001403f7a08 pop      r15
00000001403f7a0a pop      r14
00000001403f7a0c pop      rdi
00000001403f7a0d ret      