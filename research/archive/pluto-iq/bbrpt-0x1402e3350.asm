00000001402e3350 mov      rax, rsp
00000001402e3353 mov      qword ptr [rax + 8], rbx
00000001402e3357 mov      dword ptr [rax + 0x20], r9d
00000001402e335b mov      qword ptr [rax + 0x18], r8
00000001402e335f mov      qword ptr [rax + 0x10], rdx
00000001402e3363 push     rbp
00000001402e3364 push     rsi
00000001402e3365 push     rdi
00000001402e3366 push     r12
00000001402e3368 push     r13
00000001402e336a push     r14
00000001402e336c push     r15
00000001402e336e sub      rsp, 0x50
00000001402e3372 xor      esi, esi
00000001402e3374 lea      rbx, [rip + 0x347505]
00000001402e337b mov      rcx, rbx
00000001402e337e mov      dword ptr [rax - 0x48], esi
00000001402e3381 mov      r14d, r9d
00000001402e3384 mov      r13, rdx
00000001402e3387 mov      ebp, esi
00000001402e3389 call     0x14007dbe0
00000001402e338e mov      edi, 0x1400
00000001402e3393 mov      qword ptr [rsp + 0x48], rsi
00000001402e3398 mov      r8d, edi
00000001402e339b lea      rdx, [rsp + 0x48]
00000001402e33a0 mov      ecx, eax
00000001402e33a2 call     0x1400310f0
00000001402e33a7 test     eax, eax
00000001402e33a9 jne      0x1402e3620
00000001402e33af mov      rcx, qword ptr [rsp + 0x48]
00000001402e33b4 mov      edx, edi
00000001402e33b6 call     0x140031290
00000001402e33bb mov      rbx, qword ptr [rsp + 0x48]
00000001402e33c0 test     rbx, rbx
00000001402e33c3 je       0x1402e3619
00000001402e33c9 mov      r8d, edi
00000001402e33cc mov      rdx, rbx
00000001402e33cf mov      rcx, r13
00000001402e33d2 call     0x14000d1b8
00000001402e33d7 xor      r8d, r8d
00000001402e33da lea      rdi, [rip + 0x63cc1f]
00000001402e33e1 mov      r15d, eax
00000001402e33e4 mov      r12, rbx
00000001402e33e7 test     eax, eax
00000001402e33e9 je       0x1402e35b3
00000001402e33ef cmp      eax, 0x5a
00000001402e33f2 ja       0x1402e346b
00000001402e33f4 mov      edx, 0x1400
00000001402e33f9 mov      rcx, rbx
00000001402e33fc call     0x140031160
00000001402e3401 mov      rcx, qword ptr [rip + 0x63cbf8]
00000001402e3408 lea      rdi, [rip + 0x63cbf1]
00000001402e340f cmp      rcx, rdi
00000001402e3412 je       0x1402e366a
00000001402e3418 cmp      byte ptr [rcx + 0x169], 4
00000001402e341f jb       0x1402e366a
00000001402e3425 mov      eax, dword ptr [rcx + 0x16c]
00000001402e342b test     al, 1
00000001402e342d je       0x1402e366a
00000001402e3433 mov      rcx, qword ptr [rcx + 0x158]
00000001402e343a lea      rax, [rip + 0x34743f]
00000001402e3441 mov      dword ptr [rsp + 0x30], r15d
00000001402e3446 lea      edx, [rsi + 0x21]
00000001402e3449 mov      qword ptr [rsp + 0x28], r13
00000001402e344e lea      r9, [rip + 0x32af3b]
00000001402e3455 lea      r8, [rip + 0x3b7be4]
00000001402e345c mov      qword ptr [rsp + 0x20], rax
00000001402e3461 call     0x14011f97c
00000001402e3466 jmp      0x1402e366a
00000001402e346b test     r14d, r14d
00000001402e346e je       0x1402e35b3
00000001402e3474 mov      r13, qword ptr [rsp + 0xa0]
00000001402e347c cmp      esi, r15d
00000001402e347f jae      0x1402e35ab
00000001402e3485 mov      r14d, esi
00000001402e3488 add      r14, r12
00000001402e348b mov      al, byte ptr [r14]
00000001402e348e test     al, al
00000001402e3490 je       0x1402e35ab
00000001402e3496 mov      rbx, r14
00000001402e3499 lea      rdx, [rip + 0x3473f0]
00000001402e34a0 mov      cl, 0x20
00000001402e34a2 cmp      al, cl
00000001402e34a4 je       0x1402e34bb
00000001402e34a6 inc      rdx
00000001402e34a9 mov      cl, byte ptr [rdx]
00000001402e34ab test     cl, cl
00000001402e34ad jne      0x1402e34a2
00000001402e34af inc      rbx
00000001402e34b2 mov      al, byte ptr [rbx]
00000001402e34b4 test     al, al
00000001402e34b6 jne      0x1402e3499
00000001402e34b8 mov      rbx, r8
00000001402e34bb test     rbx, rbx
00000001402e34be je       0x1402e34ce
00000001402e34c0 cmp      rbx, r14
00000001402e34c3 je       0x1402e359c
00000001402e34c9 mov      byte ptr [rbx], r8b
00000001402e34cc jmp      0x1402e34d5
00000001402e34ce lea      ebx, [r15 - 1]
00000001402e34d2 add      rbx, r12
00000001402e34d5 lea      r8, [rsp + 0x40]
00000001402e34da mov      rcx, r14
00000001402e34dd lea      rdx, [rip + 0x313ebc]
00000001402e34e4 call     0x140044420
00000001402e34e9 cmp      eax, 1
00000001402e34ec je       0x1402e353b
00000001402e34ee mov      rcx, qword ptr [rip + 0x63cb0b]
00000001402e34f5 cmp      rcx, rdi
00000001402e34f8 je       0x1402e3594
00000001402e34fe cmp      byte ptr [rcx + 0x169], 4
00000001402e3505 jb       0x1402e3594
00000001402e350b mov      eax, dword ptr [rcx + 0x16c]
00000001402e3511 test     al, 1
00000001402e3513 je       0x1402e3594
00000001402e3515 mov      rcx, qword ptr [rcx + 0x158]
00000001402e351c lea      r9, [rip + 0x32ae6d]
00000001402e3523 mov      edx, 0x22
00000001402e3528 mov      qword ptr [rsp + 0x20], r14
00000001402e352d lea      r8, [rip + 0x3b7b0c]
00000001402e3534 call     0x14003c968
00000001402e3539 jmp      0x1402e3594
00000001402e353b mov      edx, dword ptr [rsp + 0x40]
00000001402e353f mov      eax, ebp
00000001402e3541 mov      byte ptr [rax + r13], dl
00000001402e3545 mov      rcx, qword ptr [rip + 0x63cab4]
00000001402e354c cmp      rcx, rdi
00000001402e354f je       0x1402e3592
00000001402e3551 cmp      byte ptr [rcx + 0x169], 4
00000001402e3558 jb       0x1402e3592
00000001402e355a mov      eax, dword ptr [rcx + 0x16c]
00000001402e3560 test     al, 1
00000001402e3562 je       0x1402e3592
00000001402e3564 mov      rcx, qword ptr [rcx + 0x158]
00000001402e356b lea      r9, [rip + 0x32ae1e]
00000001402e3572 movzx    eax, dl
00000001402e3575 lea      r8, [rip + 0x3b7ac4]
00000001402e357c mov      dword ptr [rsp + 0x30], eax
00000001402e3580 mov      edx, 0x23
00000001402e3585 mov      dword ptr [rsp + 0x28], ebp
00000001402e3589 mov      dword ptr [rsp + 0x20], esi
00000001402e358d call     0x14001c670
00000001402e3592 inc      ebp
00000001402e3594 mov      esi, ebx
00000001402e3596 sub      esi, r12d
00000001402e3599 xor      r8d, r8d
00000001402e359c inc      esi
00000001402e359e cmp      ebp, dword ptr [rsp + 0xa8]
00000001402e35a5 jb       0x1402e347c
00000001402e35ab mov      r13, qword ptr [rsp + 0x98]
00000001402e35b3 mov      edx, 0x1400
00000001402e35b8 mov      rcx, r12
00000001402e35bb call     0x140031160
00000001402e35c0 mov      rcx, qword ptr [rip + 0x63ca39]
00000001402e35c7 cmp      rcx, rdi
00000001402e35ca je       0x1402e3614
00000001402e35cc cmp      byte ptr [rcx + 0x169], 4
00000001402e35d3 jb       0x1402e3614
00000001402e35d5 mov      eax, dword ptr [rcx + 0x16c]
00000001402e35db test     al, 1
00000001402e35dd je       0x1402e3614
00000001402e35df mov      rcx, qword ptr [rcx + 0x158]
00000001402e35e6 lea      rax, [rip + 0x347293]
00000001402e35ed mov      dword ptr [rsp + 0x30], r15d
00000001402e35f2 lea      r9, [rip + 0x32ad97]
00000001402e35f9 mov      qword ptr [rsp + 0x28], r13
00000001402e35fe lea      r8, [rip + 0x3b7a3b]
00000001402e3605 mov      edx, 0x24
00000001402e360a mov      qword ptr [rsp + 0x20], rax
00000001402e360f call     0x14011f97c
00000001402e3614 movzx    eax, bp
00000001402e3617 jmp      0x1402e366d
00000001402e3619 lea      rbx, [rip + 0x347260]
00000001402e3620 mov      rcx, qword ptr [rip + 0x63c9d9]
00000001402e3627 lea      rdi, [rip + 0x63c9d2]
00000001402e362e cmp      rcx, rdi
00000001402e3631 je       0x1402e366a
00000001402e3633 cmp      byte ptr [rcx + 0x169], 4
00000001402e363a jb       0x1402e366a
00000001402e363c mov      eax, dword ptr [rcx + 0x16c]
00000001402e3642 test     al, 1
00000001402e3644 je       0x1402e366a
00000001402e3646 mov      rcx, qword ptr [rcx + 0x158]
00000001402e364d lea      r9, [rip + 0x32ad3c]
00000001402e3654 mov      edx, 0x20
00000001402e3659 mov      qword ptr [rsp + 0x20], rbx
00000001402e365e lea      r8, [rip + 0x3b79db]
00000001402e3665 call     0x14003c968
00000001402e366a movzx    eax, si
00000001402e366d mov      rbx, qword ptr [rsp + 0x90]
00000001402e3675 add      rsp, 0x50
00000001402e3679 pop      r15
00000001402e367b pop      r14
00000001402e367d pop      r13
00000001402e367f pop      r12
00000001402e3681 pop      rdi
00000001402e3682 pop      rsi
00000001402e3683 pop      rbp
00000001402e3684 ret      