000000014035719c push     rbp
000000014035719e push     rbx
000000014035719f push     rsi
00000001403571a0 push     rdi
00000001403571a1 push     r12
00000001403571a3 push     r13
00000001403571a5 push     r14
00000001403571a7 push     r15
00000001403571a9 lea      rbp, [rsp - 0x128]
00000001403571b1 sub      rsp, 0x228
00000001403571b8 mov      rax, qword ptr [rip + 0x5d02a1]
00000001403571bf xor      rax, rsp
00000001403571c2 mov      qword ptr [rbp + 0x118], rax
00000001403571c9 xor      eax, eax
00000001403571cb mov      dword ptr [rbp + 0xd8], 0x342e30
00000001403571d5 mov      byte ptr [rbp + 0xa4], al
00000001403571db mov      r12, r8
00000001403571de mov      eax, dword ptr [rip + 0x2e365c]
00000001403571e4 mov      r14, rdx
00000001403571e7 mov      dword ptr [rbp + 0xa5], eax
00000001403571ed mov      rsi, rcx
00000001403571f0 mov      al, byte ptr [rip + 0x2e364e]
00000001403571f6 lea      rcx, [rsp + 0x60]
00000001403571fb mov      byte ptr [rbp + 0xa9], al
0000000140357201 mov      ebx, 0xa0
0000000140357206 mov      eax, dword ptr [rip + 0x2b3d34]
000000014035720c mov      r8d, ebx
000000014035720f mov      dword ptr [rbp + 0xc0], eax
0000000140357215 xor      edx, edx
0000000140357217 movzx    eax, word ptr [rip + 0x2b3d26]
000000014035721e mov      r13, r9
0000000140357221 mov      word ptr [rbp + 0xc4], ax
0000000140357228 mov      al, byte ptr [rip + 0x2b3d18]
000000014035722e mov      byte ptr [rbp + 0xc6], al
0000000140357234 xor      eax, eax
0000000140357236 mov      byte ptr [rbp + 0xc7], al
000000014035723c mov      eax, dword ptr [rip + 0x2e360e]
0000000140357242 mov      dword ptr [rbp + 0xc8], eax
0000000140357248 mov      al, byte ptr [rip + 0x2e3606]
000000014035724e mov      byte ptr [rbp + 0xcc], al
0000000140357254 xor      eax, eax
0000000140357256 mov      word ptr [rbp + 0xcd], ax
000000014035725d mov      byte ptr [rbp + 0xcf], al
0000000140357263 movabs   rax, 0x4f4d494d2d554d
000000014035726d mov      qword ptr [rbp + 0xd0], rax
0000000140357274 mov      eax, dword ptr [rip + 0x2e35e6]
000000014035727a mov      dword ptr [rbp + 0xb0], eax
0000000140357280 mov      al, byte ptr [rip + 0x2e35de]
0000000140357286 mov      byte ptr [rbp + 0xb4], al
000000014035728c xor      eax, eax
000000014035728e mov      word ptr [rbp + 0xb5], ax
0000000140357295 mov      eax, dword ptr [rip + 0x2e35d5]
000000014035729b mov      dword ptr [rbp + 0xb7], eax
00000001403572a1 movzx    eax, word ptr [rip + 0x2e35cc]
00000001403572a8 mov      word ptr [rbp + 0xbb], ax
00000001403572af xor      eax, eax
00000001403572b1 mov      byte ptr [rbp + 0xbd], al
00000001403572b7 mov      dword ptr [rbp + 0xdc], 0x382e30
00000001403572c1 mov      dword ptr [rbp + 0xe0], 0x362e31
00000001403572cb mov      dword ptr [rbp + 0xe4], 0x322e33
00000001403572d5 mov      dword ptr [rbp + 0xa0], 0x434342
00000001403572df call     0x1405f4640
00000001403572e4 mov      r8d, ebx
00000001403572e7 lea      rcx, [rbp]
00000001403572eb xor      edx, edx
00000001403572ed call     0x1405f4640
00000001403572f2 xor      eax, eax
00000001403572f4 xor      ebx, ebx
00000001403572f6 xorps    xmm0, xmm0
00000001403572f9 xorps    xmm1, xmm1
00000001403572fc movups   xmmword ptr [rbp + 0x100], xmm0
0000000140357303 mov      dword ptr [rbp + 0x110], eax
0000000140357309 movups   xmmword ptr [rbp + 0xe8], xmm1
0000000140357310 mov      dword ptr [rbp + 0xf8], eax
0000000140357316 cmp      dword ptr [rsi + 0x14bc], ebx
000000014035731c jne      0x140357c58
0000000140357322 mov      rcx, rsi
0000000140357325 call     0x1403cba94
000000014035732a movzx    ecx, word ptr [rsi + 0x4bd8]
0000000140357331 mov      dl, 9
0000000140357333 call     0x1403e8aa0
0000000140357338 lea      rcx, [rbp + 0x100]
000000014035733f mov      r9b, 2
0000000140357342 lea      r15d, [rbx + 0x14]
0000000140357346 mov      r8b, 9
0000000140357349 mov      word ptr [rsp + 0x28], r15w
000000014035734f mov      edx, eax
0000000140357351 mov      qword ptr [rsp + 0x20], rcx
0000000140357356 mov      rcx, rsi
0000000140357359 call     0x1403e91a0
000000014035735e cmp      byte ptr [rsi + 0x1416], 2
0000000140357365 jb       0x140357397
0000000140357367 movzx    ecx, word ptr [rsi + 0x4bda]
000000014035736e mov      dl, 9
0000000140357370 call     0x1403e8aa0
0000000140357375 lea      rcx, [rbp + 0xe8]
000000014035737c mov      word ptr [rsp + 0x28], r15w
0000000140357382 mov      qword ptr [rsp + 0x20], rcx
0000000140357387 mov      r9b, 2
000000014035738a mov      rcx, rsi
000000014035738d mov      r8b, 9
0000000140357390 mov      edx, eax
0000000140357392 call     0x1403e91a0
0000000140357397 cmp      byte ptr [rsi + 0x4aa2], bl
000000014035739d jne      0x1403573da
000000014035739f cmp      word ptr [rsi + 0x4aa8], bx
00000001403573a6 jne      0x1403573da
00000001403573a8 cmp      dword ptr [rsi + 0x4b14], ebx
00000001403573ae jne      0x1403573da
00000001403573b0 mov      ecx, dword ptr [r14]
00000001403573b3 mov      eax, dword ptr [r13]
00000001403573b7 cmp      ecx, eax
00000001403573b9 jae      0x140357c58
00000001403573bf sub      eax, ecx
00000001403573c1 lea      r8, [rip + 0x2e34b8]
00000001403573c8 mov      edx, eax
00000001403573ca add      rcx, r12
00000001403573cd call     0x140044426
00000001403573d2 add      dword ptr [r14], eax
00000001403573d5 jmp      0x140357c58
00000001403573da movzx    ecx, word ptr [rsi + 0x4aa8]
00000001403573e1 mov      dl, 9
00000001403573e3 call     0x1403e8aa0
00000001403573e8 lea      rcx, [rsi + 0x14d0]
00000001403573ef mov      word ptr [rsp + 0x28], 0xc8
00000001403573f6 mov      qword ptr [rsp + 0x20], rcx
00000001403573fb mov      r9b, 2
00000001403573fe mov      rcx, rsi
0000000140357401 mov      r8b, 9
0000000140357404 mov      edx, eax
0000000140357406 call     0x1403e91a0
000000014035740b mov      r8b, byte ptr [rsi + 0x4aa1]
0000000140357412 lea      r9, [rbp]
0000000140357416 mov      dl, byte ptr [rsi + 0x4aa0]
000000014035741c mov      rcx, rsi
000000014035741f call     0x1403cc34c
0000000140357424 mov      dl, byte ptr [rsi + 0x4aa4]
000000014035742a lea      r8, [rsp + 0x60]
000000014035742f mov      rcx, rsi
0000000140357432 call     0x1403cc5cc
0000000140357437 mov      edi, dword ptr [r14]
000000014035743a mov      edx, dword ptr [r13]
000000014035743e cmp      edi, edx
0000000140357440 jae      0x1403574a5
0000000140357442 movzx    eax, byte ptr [rsi + 0x4aa3]
0000000140357449 sub      edx, edi
000000014035744b movzx    r8d, byte ptr [rsi + 0x4aa2]
0000000140357453 movzx    r9d, byte ptr [rsi + 0x4aa5]
000000014035745b mov      cl, byte ptr [rsi + 0x4aa6]
0000000140357461 mov      dword ptr [rsp + 0x48], eax
0000000140357465 mov      eax, dword ptr [rsi + 0x4684]
000000014035746b mov      dword ptr [rsp + 0x40], r8d
0000000140357470 lea      r8, [rip + 0x2e3449]
0000000140357477 mov      dword ptr [rsp + 0x38], r9d
000000014035747c mov      r9, qword ptr [rbp]
0000000140357480 mov      dword ptr [rsp + 0x30], eax
0000000140357484 mov      rax, qword ptr [rsp + 0x60]
0000000140357489 shl      r15d, cl
000000014035748c lea      rcx, [r12 + rdi]
0000000140357490 mov      dword ptr [rsp + 0x28], r15d
0000000140357495 mov      qword ptr [rsp + 0x20], rax
000000014035749a call     0x140044426
000000014035749f add      dword ptr [r14], eax
00000001403574a2 mov      edi, dword ptr [r14]
00000001403574a5 mov      r15d, dword ptr [r13]
00000001403574a9 mov      edx, r15d
00000001403574ac cmp      edi, r15d
00000001403574af jae      0x14035750c
00000001403574b1 movzx    eax, byte ptr [rsi + 0x4aab]
00000001403574b8 lea      r8, [rip + 0x2e3441]
00000001403574bf movzx    r9d, byte ptr [rsi + 0x4aaa]
00000001403574c7 sub      r15d, edi
00000001403574ca mov      dword ptr [rsp + 0x38], eax
00000001403574ce lea      rax, [rbp + 0xe8]
00000001403574d5 mov      qword ptr [rsp + 0x30], rax
00000001403574da lea      rax, [rbp + 0x100]
00000001403574e1 mov      qword ptr [rsp + 0x28], rax
00000001403574e6 lea      rax, [rsi + 0x14d0]
00000001403574ed mov      ecx, edi
00000001403574ef mov      edx, r15d
00000001403574f2 add      rcx, r12
00000001403574f5 mov      qword ptr [rsp + 0x20], rax
00000001403574fa call     0x140044426
00000001403574ff add      dword ptr [r14], eax
0000000140357502 mov      r15d, dword ptr [r13]
0000000140357506 mov      edx, r15d
0000000140357509 mov      edi, dword ptr [r14]
000000014035750c mov      al, byte ptr [rsi + 0x4aa0]
0000000140357512 cmp      al, 6
0000000140357514 jbe      0x14035773f
000000014035751a cmp      edi, r15d
000000014035751d jae      0x140357573
000000014035751f movzx    eax, byte ptr [rsi + 0x4aad]
0000000140357526 lea      r8, [rbp + 0xd8]
000000014035752d mov      cl, byte ptr [rsi + 0x4aae]
0000000140357533 sub      r15d, edi
0000000140357536 movzx    r9d, byte ptr [rsi + 0x4aac]
000000014035753e mov      edx, r15d
0000000140357541 lea      r8, [r8 + rax*4]
0000000140357545 mov      eax, 1
000000014035754a shl      eax, cl
000000014035754c mov      qword ptr [rsp + 0x28], r8
0000000140357551 lea      r8, [rip + 0x2e33e8]
0000000140357558 mov      ecx, edi
000000014035755a add      rcx, r12
000000014035755d mov      dword ptr [rsp + 0x20], eax
0000000140357561 call     0x140044426
0000000140357566 add      dword ptr [r14], eax
0000000140357569 mov      r15d, dword ptr [r13]
000000014035756d mov      edx, r15d
0000000140357570 mov      edi, dword ptr [r14]
0000000140357573 mov      cl, bl
0000000140357575 mov      byte ptr [rsp + 0x50], bl
0000000140357579 cmp      byte ptr [rsi + 0x4aaa], bl
000000014035757f jbe      0x140357642
0000000140357585 mov      eax, edi
0000000140357587 mov      dword ptr [rsp + 0x54], eax
000000014035758b mov      r15d, edx
000000014035758e mov      edi, eax
0000000140357590 cmp      eax, edx
0000000140357592 jae      0x140357628
0000000140357598 movzx    edx, cl
000000014035759b lea      r10, [rbp + 0xc0]
00000001403575a2 movzx    ecx, byte ptr [rdx + rsi + 0x4acf]
00000001403575aa movzx    eax, byte ptr [rdx + rsi + 0x4aff]
00000001403575b2 movzx    edi, byte ptr [rdx + rsi + 0x4aef]
00000001403575ba movzx    r11d, byte ptr [rdx + rsi + 0x4adf]
00000001403575c3 movzx    ebx, byte ptr [rdx + rsi + 0x4abf]
00000001403575cb movzx    r9d, byte ptr [rdx + rsi + 0x4aaf]
00000001403575d4 lea      r10, [r10 + rax*8]
00000001403575d8 mov      dword ptr [rsp + 0x40], edi
00000001403575dc lea      rax, [rbp + 0xa0]
00000001403575e3 add      rax, rcx
00000001403575e6 mov      qword ptr [rsp + 0x38], r10
00000001403575eb mov      dword ptr [rsp + 0x30], r11d
00000001403575f0 mov      dword ptr [rsp + 0x28], ebx
00000001403575f4 lea      r8, [rax + rcx*4]
00000001403575f8 mov      eax, dword ptr [rsp + 0x54]
00000001403575fc sub      r15d, eax
00000001403575ff mov      qword ptr [rsp + 0x20], r8
0000000140357604 mov      edx, r15d
0000000140357607 lea      r8, [rip + 0x2e3352]
000000014035760e lea      rcx, [r12 + rax]
0000000140357612 call     0x140044426
0000000140357617 add      dword ptr [r14], eax
000000014035761a mov      r15d, dword ptr [r13]
000000014035761e mov      edx, r15d
0000000140357621 mov      edi, dword ptr [r14]
0000000140357624 mov      cl, byte ptr [rsp + 0x50]
0000000140357628 inc      cl
000000014035762a mov      eax, edi
000000014035762c mov      byte ptr [rsp + 0x50], cl
0000000140357630 mov      dword ptr [rsp + 0x54], eax
0000000140357634 cmp      cl, byte ptr [rsi + 0x4aaa]
000000014035763a jb       0x14035758b
0000000140357640 xor      ebx, ebx
0000000140357642 mov      r8b, byte ptr [rsi + 0x4aa0]
0000000140357649 cmp      r8b, 7
000000014035764d je       0x140357666
000000014035764f mov      ecx, edi
0000000140357651 mov      r9b, r8b
0000000140357654 mov      eax, edx
0000000140357656 cmp      r8b, 0xb
000000014035765a jne      0x1403576d6
000000014035765c mov      ecx, edi
000000014035765e cmp      byte ptr [rsi + 0x4aa1], bl
0000000140357664 jne      0x1403576d6
0000000140357666 mov      ecx, edi
0000000140357668 mov      r9b, r8b
000000014035766b mov      r15d, edx
000000014035766e mov      eax, edx
0000000140357670 cmp      edi, edx
0000000140357672 jae      0x1403576d6
0000000140357674 movzx    r8d, byte ptr [rsi + 0x4b12]
000000014035767c sub      edx, edi
000000014035767e movzx    eax, byte ptr [rsi + 0x4b13]
0000000140357685 movzx    r10d, word ptr [rsi + 0x4bee]
000000014035768d movzx    r9d, word ptr [rsi + 0x4b10]
0000000140357695 shl      r8d, 2
0000000140357699 mov      dword ptr [rsp + 0x38], r8d
000000014035769e lea      r8, [rip + 0x2e32fb]
00000001403576a5 mov      dword ptr [rsp + 0x30], eax
00000001403576a9 mov      eax, dword ptr [rsi + 0x4bf0]
00000001403576af mov      dword ptr [rsp + 0x28], eax
00000001403576b3 mov      ecx, edi
00000001403576b5 add      rcx, r12
00000001403576b8 mov      dword ptr [rsp + 0x20], r10d
00000001403576bd call     0x140044426
00000001403576c2 add      dword ptr [r14], eax
00000001403576c5 mov      r15d, dword ptr [r13]
00000001403576c9 mov      eax, r15d
00000001403576cc mov      ecx, dword ptr [r14]
00000001403576cf mov      r9b, byte ptr [rsi + 0x4aa0]
00000001403576d6 cmp      r9b, 0xa
00000001403576da jbe      0x140357717
00000001403576dc cmp      ecx, eax
00000001403576de jae      0x140357b10
00000001403576e4 sub      eax, ecx
00000001403576e6 lea      r8, [rip + 0x2e3303]
00000001403576ed mov      edx, eax
00000001403576ef mov      eax, dword ptr [rsi + 0x4b28]
00000001403576f5 mov      dword ptr [rsp + 0x28], eax
00000001403576f9 mov      eax, dword ptr [rsi + 0x4b24]
00000001403576ff mov      r9d, dword ptr [rsi + 0x4b14]
0000000140357706 add      rcx, r12
0000000140357709 mov      dword ptr [rsp + 0x20], eax
000000014035770d call     0x140044426
0000000140357712 jmp      0x140357b0a
0000000140357717 cmp      ecx, r15d
000000014035771a jae      0x140357b10
0000000140357720 mov      eax, dword ptr [rsi + 0x4b1c]
0000000140357726 lea      r8, [rip + 0x2e32f3]
000000014035772d sub      r15d, ecx
0000000140357730 mov      dword ptr [rsp + 0x28], eax
0000000140357734 mov      eax, dword ptr [rsi + 0x4b18]
000000014035773a mov      edx, r15d
000000014035773d jmp      0x1403576ff
000000014035773f cmp      al, 4
0000000140357741 jbe      0x1403578c6
0000000140357747 mov      ecx, edi
0000000140357749 cmp      edi, r15d
000000014035774c jae      0x14035778a
000000014035774e movzx    eax, byte ptr [rsi + 0x4aad]
0000000140357755 lea      r8, [rbp + 0xd8]
000000014035775c movzx    r9d, byte ptr [rsi + 0x4aac]
0000000140357764 sub      r15d, edi
0000000140357767 mov      ecx, edi
0000000140357769 mov      edx, r15d
000000014035776c add      rcx, r12
000000014035776f lea      r8, [r8 + rax*4]
0000000140357773 mov      qword ptr [rsp + 0x20], r8
0000000140357778 lea      r8, [rip + 0x2e32e1]
000000014035777f call     0x140044426
0000000140357784 add      dword ptr [r14], eax
0000000140357787 mov      ecx, dword ptr [r14]
000000014035778a mov      r15b, bl
000000014035778d cmp      byte ptr [rsi + 0x4aaa], bl
0000000140357793 jbe      0x140357834
0000000140357799 mov      edi, ecx
000000014035779b mov      eax, dword ptr [r13]
000000014035779f mov      dword ptr [rsp + 0x54], eax
00000001403577a3 mov      ecx, edi
00000001403577a5 cmp      edi, eax
00000001403577a7 jae      0x140357820
00000001403577a9 movzx    edx, r15b
00000001403577ad lea      r10, [rbp + 0xc0]
00000001403577b4 movzx    ecx, byte ptr [rdx + rsi + 0x4acf]
00000001403577bc movzx    eax, byte ptr [rdx + rsi + 0x4aff]
00000001403577c4 movzx    r11d, byte ptr [rdx + rsi + 0x4adf]
00000001403577cd movzx    ebx, byte ptr [rdx + rsi + 0x4abf]
00000001403577d5 movzx    r9d, byte ptr [rdx + rsi + 0x4aaf]
00000001403577de mov      edx, dword ptr [rsp + 0x54]
00000001403577e2 lea      r10, [r10 + rax*8]
00000001403577e6 mov      qword ptr [rsp + 0x38], r10
00000001403577eb lea      rax, [rbp + 0xa0]
00000001403577f2 add      rax, rcx
00000001403577f5 mov      dword ptr [rsp + 0x30], r11d
00000001403577fa mov      dword ptr [rsp + 0x28], ebx
00000001403577fe sub      edx, edi
0000000140357800 lea      r8, [rax + rcx*4]
0000000140357804 mov      ecx, edi
0000000140357806 mov      qword ptr [rsp + 0x20], r8
000000014035780b add      rcx, r12
000000014035780e lea      r8, [rip + 0x2e325b]
0000000140357815 call     0x140044426
000000014035781a add      dword ptr [r14], eax
000000014035781d mov      ecx, dword ptr [r14]
0000000140357820 inc      r15b
0000000140357823 mov      edi, ecx
0000000140357825 cmp      r15b, byte ptr [rsi + 0x4aaa]
000000014035782c jb       0x14035779b
0000000140357832 xor      ebx, ebx
0000000140357834 cmp      byte ptr [rsi + 0x4aa0], 5
000000014035783b jne      0x14035787d
000000014035783d mov      eax, dword ptr [r13]
0000000140357841 cmp      ecx, eax
0000000140357843 jae      0x14035787d
0000000140357845 movzx    r8d, word ptr [rsi + 0x4bee]
000000014035784d sub      eax, ecx
000000014035784f movzx    r9d, word ptr [rsi + 0x4b10]
0000000140357857 add      rcx, r12
000000014035785a mov      edx, eax
000000014035785c mov      eax, dword ptr [rsi + 0x4bf0]
0000000140357862 mov      dword ptr [rsp + 0x28], eax
0000000140357866 mov      dword ptr [rsp + 0x20], r8d
000000014035786b lea      r8, [rip + 0x2e323e]
0000000140357872 call     0x140044426
0000000140357877 add      dword ptr [r14], eax
000000014035787a mov      ecx, dword ptr [r14]
000000014035787d mov      eax, dword ptr [r13]
0000000140357881 cmp      ecx, eax
0000000140357883 jae      0x140357b10
0000000140357889 mov      r9d, dword ptr [rsi + 0x4b14]
0000000140357890 lea      r8, [rip + 0x2e3249]
0000000140357897 sub      eax, ecx
0000000140357899 add      rcx, r12
000000014035789c mov      edx, eax
000000014035789e mov      eax, dword ptr [rsi + 0x4b20]
00000001403578a4 mov      dword ptr [rsp + 0x30], eax
00000001403578a8 mov      eax, dword ptr [rsi + 0x4b1c]
00000001403578ae mov      dword ptr [rsp + 0x28], eax
00000001403578b2 mov      eax, dword ptr [rsi + 0x4b18]
00000001403578b8 mov      dword ptr [rsp + 0x20], eax
00000001403578bc call     0x140044426
00000001403578c1 jmp      0x140357b0a
00000001403578c6 cmp      al, 2
00000001403578c8 jbe      0x1403579b1
00000001403578ce mov      ecx, edi
00000001403578d0 cmp      edi, r15d
00000001403578d3 jae      0x140357945
00000001403578d5 movzx    ecx, byte ptr [rsi + 0x4acf]
00000001403578dc lea      r10, [rbp + 0xd8]
00000001403578e3 movzx    eax, byte ptr [rsi + 0x4aad]
00000001403578ea sub      r15d, edi
00000001403578ed movzx    r11d, byte ptr [rsi + 0x4adf]
00000001403578f5 movzx    ebx, byte ptr [rsi + 0x4abf]
00000001403578fc movzx    r9d, byte ptr [rsi + 0x4aac]
0000000140357904 lea      r10, [r10 + rax*4]
0000000140357908 mov      dword ptr [rsp + 0x38], r11d
000000014035790d mov      dword ptr [rsp + 0x30], ebx
0000000140357911 lea      rax, [rbp + 0xa0]
0000000140357918 add      rax, rcx
000000014035791b mov      qword ptr [rsp + 0x28], r10
0000000140357920 mov      edx, r15d
0000000140357923 lea      r8, [rax + rcx*4]
0000000140357927 mov      ecx, edi
0000000140357929 mov      qword ptr [rsp + 0x20], r8
000000014035792e add      rcx, r12
0000000140357931 lea      r8, [rip + 0x2e31f8]
0000000140357938 call     0x140044426
000000014035793d add      dword ptr [r14], eax
0000000140357940 mov      ecx, dword ptr [r14]
0000000140357943 xor      ebx, ebx
0000000140357945 mov      eax, dword ptr [r13]
0000000140357949 cmp      ecx, eax
000000014035794b jae      0x140357985
000000014035794d movzx    r8d, word ptr [rsi + 0x4bee]
0000000140357955 sub      eax, ecx
0000000140357957 movzx    r9d, word ptr [rsi + 0x4b10]
000000014035795f add      rcx, r12
0000000140357962 mov      edx, eax
0000000140357964 mov      eax, dword ptr [rsi + 0x4bf0]
000000014035796a mov      dword ptr [rsp + 0x28], eax
000000014035796e mov      dword ptr [rsp + 0x20], r8d
0000000140357973 lea      r8, [rip + 0x2e31e6]
000000014035797a call     0x140044426
000000014035797f add      dword ptr [r14], eax
0000000140357982 mov      ecx, dword ptr [r14]
0000000140357985 mov      eax, dword ptr [r13]
0000000140357989 cmp      ecx, eax
000000014035798b jae      0x140357b10
0000000140357991 sub      eax, ecx
0000000140357993 lea      r8, [rip + 0x2e31f6]
000000014035799a mov      edx, eax
000000014035799c mov      eax, dword ptr [rsi + 0x4b1c]
00000001403579a2 mov      dword ptr [rsp + 0x28], eax
00000001403579a6 mov      eax, dword ptr [rsi + 0x4b18]
00000001403579ac jmp      0x1403576ff
00000001403579b1 cmp      al, 1
00000001403579b3 jbe      0x140357a4f
00000001403579b9 mov      ecx, edi
00000001403579bb cmp      edi, r15d
00000001403579be jae      0x1403579f0
00000001403579c0 movzx    eax, byte ptr [rsi + 0x4adf]
00000001403579c7 lea      rcx, [rip + 0x37a7b6]
00000001403579ce sub      r15d, edi
00000001403579d1 lea      r8, [rip + 0x2e31e8]
00000001403579d8 mov      edx, r15d
00000001403579db movzx    r9d, byte ptr [rax + rcx]
00000001403579e0 mov      ecx, edi
00000001403579e2 add      rcx, r12
00000001403579e5 call     0x140044426
00000001403579ea add      dword ptr [r14], eax
00000001403579ed mov      ecx, dword ptr [r14]
00000001403579f0 mov      eax, dword ptr [r13]
00000001403579f4 cmp      ecx, eax
00000001403579f6 jae      0x140357a30
00000001403579f8 movzx    r8d, word ptr [rsi + 0x4bee]
0000000140357a00 sub      eax, ecx
0000000140357a02 movzx    r9d, word ptr [rsi + 0x4b10]
0000000140357a0a add      rcx, r12
0000000140357a0d mov      edx, eax
0000000140357a0f mov      eax, dword ptr [rsi + 0x4bf0]
0000000140357a15 mov      dword ptr [rsp + 0x28], eax
0000000140357a19 mov      dword ptr [rsp + 0x20], r8d
0000000140357a1e lea      r8, [rip + 0x2e31ab]
0000000140357a25 call     0x140044426
0000000140357a2a add      dword ptr [r14], eax
0000000140357a2d mov      ecx, dword ptr [r14]
0000000140357a30 mov      eax, dword ptr [r13]
0000000140357a34 cmp      ecx, eax
0000000140357a36 jae      0x140357b10
0000000140357a3c mov      r9d, dword ptr [rsi + 0x4b14]
0000000140357a43 lea      r8, [rip + 0x2e31b6]
0000000140357a4a jmp      0x140357afe
0000000140357a4f mov      al, byte ptr [rsi + 0x4be8]
0000000140357a55 cmp      al, 1
0000000140357a57 jne      0x140357a62
0000000140357a59 lea      r9, [rip + 0x2e31b0]
0000000140357a60 jmp      0x140357a90
0000000140357a62 cmp      al, 2
0000000140357a64 jne      0x140357a6f
0000000140357a66 lea      r9, [rip + 0x2e31b3]
0000000140357a6d jmp      0x140357a90
0000000140357a6f cmp      al, 4
0000000140357a71 jne      0x140357a7c
0000000140357a73 lea      r9, [rip + 0x2e31b6]
0000000140357a7a jmp      0x140357a90
0000000140357a7c cmp      al, 8
0000000140357a7e lea      r9, [rip + 0x2e31bb]
0000000140357a85 lea      rcx, [rip + 0x2e31c4]
0000000140357a8c cmovne   r9, rcx
0000000140357a90 mov      ecx, edi
0000000140357a92 cmp      edi, r15d
0000000140357a95 jae      0x140357ae8
0000000140357a97 movzx    eax, byte ptr [rsi + 0x4bed]
0000000140357a9e sub      r15d, edi
0000000140357aa1 movzx    r8d, byte ptr [rsi + 0x4bec]
0000000140357aa9 movzx    r10d, word ptr [rsi + 0x4bea]
0000000140357ab1 imul     rcx, rax, 7
0000000140357ab5 lea      rax, [rbp + 0xb0]
0000000140357abc mov      edx, r15d
0000000140357abf add      rax, rcx
0000000140357ac2 mov      ecx, edi
0000000140357ac4 mov      qword ptr [rsp + 0x30], rax
0000000140357ac9 add      rcx, r12
0000000140357acc mov      dword ptr [rsp + 0x28], r8d
0000000140357ad1 lea      r8, [rip + 0x2e3188]
0000000140357ad8 mov      dword ptr [rsp + 0x20], r10d
0000000140357add call     0x140044426
0000000140357ae2 add      dword ptr [r14], eax
0000000140357ae5 mov      ecx, dword ptr [r14]
0000000140357ae8 mov      eax, dword ptr [r13]
0000000140357aec cmp      ecx, eax
0000000140357aee jae      0x140357b10
0000000140357af0 mov      r9d, dword ptr [rsi + 0x4be4]
0000000140357af7 lea      r8, [rip + 0x2e31a2]
0000000140357afe sub      eax, ecx
0000000140357b00 add      rcx, r12
0000000140357b03 mov      edx, eax
0000000140357b05 call     0x140044426
0000000140357b0a add      dword ptr [r14], eax
0000000140357b0d mov      ecx, dword ptr [r14]
0000000140357b10 mov      eax, dword ptr [r13]
0000000140357b14 cmp      ecx, eax
0000000140357b16 jae      0x140357b56
0000000140357b18 mov      r9d, dword ptr [rsi + 0x4b2c]
0000000140357b1f lea      r8, [rip + 0x2e319a]
0000000140357b26 sub      eax, ecx
0000000140357b28 add      rcx, r12
0000000140357b2b mov      edx, eax
0000000140357b2d mov      eax, dword ptr [rsi + 0x4b38]
0000000140357b33 mov      dword ptr [rsp + 0x30], eax
0000000140357b37 mov      eax, dword ptr [rsi + 0x4b34]
0000000140357b3d mov      dword ptr [rsp + 0x28], eax
0000000140357b41 mov      eax, dword ptr [rsi + 0x4b30]
0000000140357b47 mov      dword ptr [rsp + 0x20], eax
0000000140357b4b call     0x140044426
0000000140357b50 add      dword ptr [r14], eax
0000000140357b53 mov      ecx, dword ptr [r14]
0000000140357b56 test     dword ptr [rsi + 0x13f0], 0x1fe0000
0000000140357b60 je       0x140357ba8
0000000140357b62 mov      eax, dword ptr [r13]
0000000140357b66 cmp      ecx, eax
0000000140357b68 jae      0x140357ba8
0000000140357b6a mov      r9d, dword ptr [rsi + 0x4b3c]
0000000140357b71 lea      r8, [rip + 0x2e3178]
0000000140357b78 sub      eax, ecx
0000000140357b7a add      rcx, r12
0000000140357b7d mov      edx, eax
0000000140357b7f mov      eax, dword ptr [rsi + 0x4b48]
0000000140357b85 mov      dword ptr [rsp + 0x30], eax
0000000140357b89 mov      eax, dword ptr [rsi + 0x4b44]
0000000140357b8f mov      dword ptr [rsp + 0x28], eax
0000000140357b93 mov      eax, dword ptr [rsi + 0x4b40]
0000000140357b99 mov      dword ptr [rsp + 0x20], eax
0000000140357b9d call     0x140044426
0000000140357ba2 add      dword ptr [r14], eax
0000000140357ba5 mov      ecx, dword ptr [r14]
0000000140357ba8 cmp      byte ptr [rsi + 0x4aa0], 1
0000000140357baf jbe      0x140357c58
0000000140357bb5 mov      eax, dword ptr [r13]
0000000140357bb9 cmp      ecx, eax
0000000140357bbb jae      0x140357bf1
0000000140357bbd mov      r9d, dword ptr [rsi + 0x4b4c]
0000000140357bc4 lea      r8, [rip + 0x2e3165]
0000000140357bcb sub      eax, ecx
0000000140357bcd add      rcx, r12
0000000140357bd0 mov      edx, eax
0000000140357bd2 mov      eax, dword ptr [rsi + 0x4bd4]
0000000140357bd8 mov      dword ptr [rsp + 0x28], eax
0000000140357bdc mov      eax, dword ptr [rsi + 0x4b50]
0000000140357be2 mov      dword ptr [rsp + 0x20], eax
0000000140357be6 call     0x140044426
0000000140357beb add      dword ptr [r14], eax
0000000140357bee mov      ecx, dword ptr [r14]
0000000140357bf1 cmp      byte ptr [rsi + 0x4aa0], 4
0000000140357bf8 jbe      0x140357c08
0000000140357bfa mov      dil, byte ptr [rsi + 0x4aaa]
0000000140357c01 test     dil, dil
0000000140357c04 je       0x140357c58
0000000140357c06 jmp      0x140357c0b
0000000140357c08 mov      dil, 1
0000000140357c0b mov      eax, dword ptr [r13]
0000000140357c0f cmp      ecx, eax
0000000140357c11 jae      0x140357c51
0000000140357c13 sub      eax, ecx
0000000140357c15 movzx    r8d, bl
0000000140357c19 mov      edx, eax
0000000140357c1b add      rcx, r12
0000000140357c1e mov      eax, dword ptr [rsi + r8*8 + 0x4b58]
0000000140357c26 movzx    r9d, byte ptr [r8 + rsi + 0x4aaf]
0000000140357c2f mov      dword ptr [rsp + 0x28], eax
0000000140357c33 mov      eax, dword ptr [rsi + r8*8 + 0x4b54]
0000000140357c3b lea      r8, [rip + 0x2e311e]
0000000140357c42 mov      dword ptr [rsp + 0x20], eax
0000000140357c46 call     0x140044426
0000000140357c4b add      dword ptr [r14], eax
0000000140357c4e mov      ecx, dword ptr [r14]
0000000140357c51 inc      bl
0000000140357c53 cmp      bl, dil
0000000140357c56 jb       0x140357c0b
0000000140357c58 mov      rcx, qword ptr [rbp + 0x118]
0000000140357c5f xor      rcx, rsp
0000000140357c62 call     0x1405f45b0
0000000140357c67 add      rsp, 0x228
0000000140357c6e pop      r15
0000000140357c70 pop      r14
0000000140357c72 pop      r13
0000000140357c74 pop      r12
0000000140357c76 pop      rdi
0000000140357c77 pop      rsi
0000000140357c78 pop      rbx
0000000140357c79 pop      rbp
0000000140357c7a ret      