0000000140289334 mov      qword ptr [rsp + 0x20], rbx
0000000140289339 push     rbp
000000014028933a push     rsi
000000014028933b push     rdi
000000014028933c push     r14
000000014028933e push     r15
0000000140289340 mov      rbp, rsp
0000000140289343 sub      rsp, 0x80
000000014028934a mov      rax, qword ptr [rip + 0x69e10f]
0000000140289351 xor      rax, rsp
0000000140289354 mov      qword ptr [rbp - 8], rax
0000000140289358 movups   xmm0, xmmword ptr [rdx]
000000014028935b mov      rsi, qword ptr [rcx + 0x230]
0000000140289362 xor      eax, eax
0000000140289364 movups   xmm1, xmmword ptr [rdx + 0x10]
0000000140289368 mov      rcx, qword ptr [rcx]
000000014028936b mov      rdi, r8
000000014028936e mov      r14d, dword ptr [rdx + 0x20]
0000000140289372 mov      rdx, r8
0000000140289375 movups   xmmword ptr [rbp - 0x50], xmm0
0000000140289379 mov      qword ptr [rbp - 0x18], rax
000000014028937d xorps    xmm0, xmm0
0000000140289380 mov      dword ptr [rbp - 0x10], eax
0000000140289383 movups   xmmword ptr [rbp - 0x28], xmm0
0000000140289387 mov      rcx, qword ptr [rcx + 0x10328]
000000014028938e movzx    ebx, r9b
0000000140289392 movups   xmmword ptr [rbp - 0x40], xmm1
0000000140289396 call     0x1401b7324
000000014028939b mov      r9, rax
000000014028939e mov      r15d, 1
00000001402893a4 test     rax, rax
00000001402893a7 jne      0x14028940d
00000001402893a9 mov      rcx, qword ptr [rip + 0x696c50]
00000001402893b0 lea      rax, [rip + 0x696c49]
00000001402893b7 cmp      rcx, rax
00000001402893ba je       0x14028963e
00000001402893c0 cmp      byte ptr [rcx + 0x169], 2
00000001402893c7 jb       0x14028963e
00000001402893cd test     dword ptr [rcx + 0x16c], 0x100000
00000001402893d7 je       0x14028963e
00000001402893dd mov      rcx, qword ptr [rcx + 0x158]
00000001402893e4 lea      rax, [rip + 0x393215]
00000001402893eb mov      edx, 0x2fb
00000001402893f0 mov      qword ptr [rsp + 0x20], rax
00000001402893f5 lea      r9, [rip + 0x384f94]
00000001402893fc lea      r8, [rip + 0x40fadd]
0000000140289403 call     0x14003c968
0000000140289408 jmp      0x14028963e
000000014028940d mov      r8d, dword ptr [rbp - 0x4c]
0000000140289411 mov      ecx, r8d
0000000140289414 test     r8d, r8d
0000000140289417 je       0x1402894b3
000000014028941d sub      ecx, r15d
0000000140289420 je       0x1402894a7
0000000140289426 sub      ecx, r15d
0000000140289429 je       0x14028946c
000000014028942b cmp      ecx, r15d
000000014028942e je       0x14028946c
0000000140289430 mov      rcx, qword ptr [rip + 0x696bc9]
0000000140289437 lea      rax, [rip + 0x696bc2]
000000014028943e cmp      rcx, rax
0000000140289441 je       0x14028963e
0000000140289447 cmp      byte ptr [rcx + 0x169], 2
000000014028944e jb       0x14028963e
0000000140289454 mov      eax, dword ptr [rcx + 0x16c]
000000014028945a test     al, 8
000000014028945c je       0x14028963e
0000000140289462 mov      edx, 0x2fc
0000000140289467 jmp      0x140289613
000000014028946c movzx    edx, byte ptr [rbp - 0x3f]
0000000140289470 mov      eax, dword ptr [rbp - 0x20]
0000000140289473 and      edx, 7
0000000140289476 shl      edx, 3
0000000140289479 and      eax, 0xffffffc7
000000014028947c or       edx, eax
000000014028947e mov      dword ptr [rbp - 0x28], 2
0000000140289485 cmp      dword ptr [rbp - 0x44], 4
0000000140289489 jne      0x14028949b
000000014028948b btr      edx, 0x1a
000000014028948f mov      byte ptr [rbp - 0x10], 2
0000000140289493 or       edx, 0x3000000
0000000140289499 jmp      0x1402894c0
000000014028949b and      edx, 0xfaffffff
00000001402894a1 bts      edx, 0x19
00000001402894a5 jmp      0x1402894c0
00000001402894a7 mov      edx, dword ptr [rbp - 0x20]
00000001402894aa and      edx, 0xffffffc7
00000001402894ad mov      dword ptr [rbp - 0x28], r15d
00000001402894b1 jmp      0x1402894c0
00000001402894b3 mov      edx, dword ptr [rbp - 0x20]
00000001402894b6 and      edx, 0xf9ffffc7
00000001402894bc bts      edx, 0x18
00000001402894c0 mov      dword ptr [rbp - 0x20], edx
00000001402894c3 mov      ecx, ebx
00000001402894c5 test     bl, bl
00000001402894c7 je       0x140289522
00000001402894c9 sub      ecx, r15d
00000001402894cc je       0x14028951c
00000001402894ce cmp      ecx, r15d
00000001402894d1 je       0x140289513
00000001402894d3 mov      rcx, qword ptr [rip + 0x696b26]
00000001402894da lea      rax, [rip + 0x696b1f]
00000001402894e1 cmp      rcx, rax
00000001402894e4 je       0x14028963e
00000001402894ea cmp      byte ptr [rcx + 0x169], 2
00000001402894f1 jb       0x14028963e
00000001402894f7 mov      eax, dword ptr [rcx + 0x16c]
00000001402894fd test     al, 8
00000001402894ff je       0x14028963e
0000000140289505 mov      edx, 0x2fd
000000014028950a mov      dword ptr [rsp + 0x28], ebx
000000014028950e jmp      0x140289618
0000000140289513 mov      dword ptr [rbp - 0x24], 2
000000014028951a jmp      0x140289526
000000014028951c mov      dword ptr [rbp - 0x24], r15d
0000000140289520 jmp      0x140289526
0000000140289522 and      dword ptr [rbp - 0x24], 0
0000000140289526 movzx    ecx, byte ptr [rbp - 0x3b]
000000014028952a and      edx, 0xffe3c038
0000000140289530 mov      eax, dword ptr [rbp - 0x50]
0000000140289533 and      ecx, r15d
0000000140289536 and      eax, r15d
0000000140289539 mov      dword ptr [rbp - 0x18], r14d
000000014028953d add      ecx, ecx
000000014028953f or       ecx, eax
0000000140289541 movzx    eax, byte ptr [rbp - 0x3d]
0000000140289545 and      eax, r15d
0000000140289548 add      ecx, ecx
000000014028954a or       ecx, eax
000000014028954c movzx    eax, byte ptr [rbp - 0x39]
0000000140289550 and      eax, 0x1f
0000000140289553 shl      ecx, 9
0000000140289556 or       ecx, eax
0000000140289558 movzx    eax, byte ptr [rbp - 0x40]
000000014028955c and      eax, 7
000000014028955f shl      ecx, 3
0000000140289562 or       ecx, eax
0000000140289564 movzx    eax, byte ptr [rbp - 0x3a]
0000000140289568 and      eax, r15d
000000014028956b shl      ecx, 4
000000014028956e or       ecx, eax
0000000140289570 mov      eax, dword ptr [rbp - 0x48]
0000000140289573 and      eax, r15d
0000000140289576 add      ecx, ecx
0000000140289578 or       ecx, eax
000000014028957a movzx    eax, byte ptr [rbp - 0x3c]
000000014028957e and      eax, r15d
0000000140289581 add      ecx, ecx
0000000140289583 or       ecx, eax
0000000140289585 movzx    eax, word ptr [rbp - 0x36]
0000000140289589 mov      word ptr [rbp - 0x1c], ax
000000014028958d or       ecx, edx
000000014028958f mov      al, byte ptr [rbp - 0x38]
0000000140289592 movzx    edx, byte ptr [rdi + 0x19]
0000000140289596 mov      byte ptr [rbp - 0x1a], al
0000000140289599 mov      eax, dword ptr [rbp - 0x34]
000000014028959c mov      dword ptr [rbp - 0x14], eax
000000014028959f movzx    eax, byte ptr [r9 + 0x2e]
00000001402895a4 shl      edx, 0xe
00000001402895a7 xor      edx, ecx
00000001402895a9 shl      eax, 0xf
00000001402895ac and      edx, 0x4000
00000001402895b2 xor      edx, ecx
00000001402895b4 lea      rcx, [rbp - 0x28]
00000001402895b8 xor      eax, edx
00000001402895ba and      eax, 0x38000
00000001402895bf xor      eax, edx
00000001402895c1 mov      dword ptr [rbp - 0x20], eax
00000001402895c4 call     0x14026f220
00000001402895c9 mov      rax, qword ptr [rsi]
00000001402895cc lea      rdx, [rbp - 0x28]
00000001402895d0 mov      rcx, rsi
00000001402895d3 mov      rax, qword ptr [rax + 0x2b0]
00000001402895da call     qword ptr [rip + 0x3fad18]
00000001402895e0 mov      r8d, eax
00000001402895e3 test     eax, eax
00000001402895e5 je       0x140289643
00000001402895e7 mov      rcx, qword ptr [rip + 0x696a12]
00000001402895ee lea      rax, [rip + 0x696a0b]
00000001402895f5 cmp      rcx, rax
00000001402895f8 je       0x14028963e
00000001402895fa cmp      byte ptr [rcx + 0x169], 2
0000000140289601 jb       0x14028963e
0000000140289603 mov      edx, dword ptr [rcx + 0x16c]
0000000140289609 test     dl, 8
000000014028960c je       0x14028963e
000000014028960e mov      edx, 0x2fe
0000000140289613 mov      dword ptr [rsp + 0x28], r8d
0000000140289618 mov      rcx, qword ptr [rcx + 0x158]
000000014028961f lea      rax, [rip + 0x392fda]
0000000140289626 lea      r9, [rip + 0x384d63]
000000014028962d mov      qword ptr [rsp + 0x20], rax
0000000140289632 lea      r8, [rip + 0x40f8a7]
0000000140289639 call     0x14003ca14
000000014028963e mov      eax, r15d
0000000140289641 jmp      0x140289645
0000000140289643 xor      eax, eax
0000000140289645 mov      rcx, qword ptr [rbp - 8]
0000000140289649 xor      rcx, rsp
000000014028964c call     0x1405f45b0
0000000140289651 mov      rbx, qword ptr [rsp + 0xc8]
0000000140289659 add      rsp, 0x80
0000000140289660 pop      r15
0000000140289662 pop      r14
0000000140289664 pop      rdi
0000000140289665 pop      rsi
0000000140289666 pop      rbp
0000000140289667 ret      