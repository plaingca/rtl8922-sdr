00000001404a3170 mov      qword ptr [rsp + 0x18], rbx
00000001404a3175 push     rbp
00000001404a3176 push     rsi
00000001404a3177 push     rdi
00000001404a3178 push     r12
00000001404a317a push     r13
00000001404a317c push     r14
00000001404a317e push     r15
00000001404a3180 lea      rbp, [rsp - 0xd0]
00000001404a3188 sub      rsp, 0x1d0
00000001404a318f mov      rax, qword ptr [rip + 0x4842ca]
00000001404a3196 xor      rax, rsp
00000001404a3199 mov      qword ptr [rbp + 0xc0], rax
00000001404a31a0 xor      edi, edi
00000001404a31a2 mov      ebx, edx
00000001404a31a4 mov      r15, rcx
00000001404a31a7 mov      dword ptr [rbp + 0x90], edi
00000001404a31ad lea      rsi, [rcx + 0xfa48]
00000001404a31b4 mov      dword ptr [rbp + 0x94], 2
00000001404a31be mov      dword ptr [rbp + 0x98], 4
00000001404a31c8 lea      edx, [rdi + 1]
00000001404a31cb mov      dword ptr [rbp - 0x30], 0xa
00000001404a31d2 lea      r14d, [rdi + 3]
00000001404a31d6 mov      dword ptr [rbp - 0x18], edx
00000001404a31d9 lea      ecx, [rdi + 6]
00000001404a31dc mov      dword ptr [rbp], edx
00000001404a31df lea      eax, [rdi + 9]
00000001404a31e2 mov      dword ptr [rbp - 0x28], ecx
00000001404a31e5 mov      dword ptr [rbp - 0x2c], eax
00000001404a31e8 mov      dword ptr [rbp + 4], edx
00000001404a31eb mov      dword ptr [rbp + 8], edx
00000001404a31ee mov      dword ptr [rbp + 0x10], r14d
00000001404a31f2 mov      dword ptr [rbp + 0x14], r14d
00000001404a31f6 mov      dword ptr [rbp + 0x18], r14d
00000001404a31fa mov      qword ptr [rbp + 0x20], r14
00000001404a31fe mov      dword ptr [rbp + 0x28], edx
00000001404a3201 mov      dword ptr [rbp + 0xa0], ecx
00000001404a3207 mov      dword ptr [rbp + 0xa4], ecx
00000001404a320d mov      dword ptr [rbp + 0x30], ecx
00000001404a3210 mov      dword ptr [rbp + 0x34], eax
00000001404a3213 mov      dword ptr [rbp + 0x48], edx
00000001404a3216 mov      dword ptr [rbp + 0x60], edx
00000001404a3219 mov      dword ptr [rbp + 0x64], edx
00000001404a321c mov      dword ptr [rbp + 0x68], edx
00000001404a321f mov      dword ptr [rbp + 0x70], r14d
00000001404a3223 mov      dword ptr [rbp + 0x74], r14d
00000001404a3227 mov      dword ptr [rbp + 0x78], r14d
00000001404a322b mov      qword ptr [rbp + 0x80], rdx
00000001404a3232 mov      dword ptr [rbp + 0xb0], ecx
00000001404a3238 mov      dword ptr [rbp + 0xb4], ecx
00000001404a323e mov      qword ptr [rbp - 0x20], rdi
00000001404a3242 mov      dword ptr [rbp - 0x10], edi
00000001404a3245 mov      dword ptr [rbp - 0xc], 4
00000001404a324c mov      dword ptr [rbp - 8], 4
00000001404a3253 mov      dword ptr [rbp + 0xa8], 2
00000001404a325d mov      dword ptr [rbp + 0x38], 5
00000001404a3264 mov      qword ptr [rbp + 0x40], rdi
00000001404a3268 mov      dword ptr [rbp + 0x50], edi
00000001404a326b mov      dword ptr [rbp + 0x54], 4
00000001404a3272 mov      dword ptr [rbp + 0x58], 4
00000001404a3279 mov      dword ptr [rbp + 0x88], edi
00000001404a327f mov      dword ptr [rbp + 0xb8], 2
00000001404a3289 mov      rcx, qword ptr [rip + 0x47cd70]
00000001404a3290 lea      rdx, [rip + 0x47cd69]
00000001404a3297 cmp      rcx, rdx
00000001404a329a je       0x1404a32d3
00000001404a329c cmp      byte ptr [rcx + 0x229], 4
00000001404a32a3 jb       0x1404a32d3
00000001404a32a5 mov      eax, dword ptr [rcx + 0x22c]
00000001404a32ab test     al, 2
00000001404a32ad je       0x1404a32d3
00000001404a32af mov      rcx, qword ptr [rcx + 0x218]
00000001404a32b6 lea      edx, [rdi + 0x36]
00000001404a32b9 lea      r9, [rip + 0x1b7880]
00000001404a32c0 lea      r8, [rip + 0x444d69]
00000001404a32c7 call     0x140008874
00000001404a32cc lea      rdx, [rip + 0x47cd2d]
00000001404a32d3 mov      al, byte ptr [rsi + 0xa]
00000001404a32d6 lea      r13, [rbp + 0x20]
00000001404a32da neg      al
00000001404a32dc mov      dword ptr [rsp + 0x34], edi
00000001404a32e0 mov      ecx, ebx
00000001404a32e2 lea      r12, [rbp + 0x30]
00000001404a32e6 sbb      eax, eax
00000001404a32e8 lea      r8, [rbp + 0x90]
00000001404a32ef and      eax, 0xfffffffe
00000001404a32f2 shl      ecx, 8
00000001404a32f5 add      eax, r14d
00000001404a32f8 mov      dword ptr [rsp + 0x30], ecx
00000001404a32fc mov      dword ptr [rsp + 0x50], eax
00000001404a3300 lea      r14, [rbp - 0x30]
00000001404a3304 lea      rdi, [rsi + 0xd0]
00000001404a330b lea      eax, [rcx + 0x38154]
00000001404a3311 mov      dword ptr [rsp + 0x4c], eax
00000001404a3315 lea      eax, [rcx + 0x3813c]
00000001404a331b mov      dword ptr [rsp + 0x48], eax
00000001404a331f lea      rcx, [rbx + rbx*2]
00000001404a3323 shl      rcx, 3
00000001404a3327 lea      rax, [rbp - 0x20]
00000001404a332b sub      rax, rcx
00000001404a332e sub      r14, rcx
00000001404a3331 sub      rax, rsi
00000001404a3334 sub      r13, rcx
00000001404a3337 mov      qword ptr [rbp - 0x80], rax
00000001404a333b sub      r12, rcx
00000001404a333e lea      rax, [rbp - 0x10]
00000001404a3342 sub      r8, rcx
00000001404a3345 sub      rax, rcx
00000001404a3348 sub      r14, rsi
00000001404a334b sub      rax, rsi
00000001404a334e mov      qword ptr [rsp + 0x60], r14
00000001404a3353 mov      qword ptr [rsp + 0x78], rax
00000001404a3358 sub      r13, rsi
00000001404a335b lea      rax, [rbp]
00000001404a335f mov      qword ptr [rbp - 0x40], r13
00000001404a3363 sub      rax, rcx
00000001404a3366 sub      r12, rsi
00000001404a3369 sub      rax, rsi
00000001404a336c mov      qword ptr [rbp - 0x38], r12
00000001404a3370 mov      qword ptr [rsp + 0x70], rax
00000001404a3375 sub      r8, rsi
00000001404a3378 lea      rax, [rbp + 0x10]
00000001404a337c mov      qword ptr [rsp + 0x58], r8
00000001404a3381 sub      rax, rcx
00000001404a3384 add      rdi, rcx
00000001404a3387 sub      rax, rsi
00000001404a338a mov      qword ptr [rsp + 0x68], rax
00000001404a338f lea      rax, [rbp + 0x40]
00000001404a3393 sub      rax, rcx
00000001404a3396 sub      rax, rsi
00000001404a3399 mov      qword ptr [rbp - 0x58], rax
00000001404a339d lea      rax, [rbp + 0x50]
00000001404a33a1 sub      rax, rcx
00000001404a33a4 sub      rax, rsi
00000001404a33a7 mov      qword ptr [rbp - 0x60], rax
00000001404a33ab lea      rax, [rbp + 0x60]
00000001404a33af sub      rax, rcx
00000001404a33b2 sub      rax, rsi
00000001404a33b5 mov      qword ptr [rbp - 0x68], rax
00000001404a33b9 lea      rax, [rbp + 0x70]
00000001404a33bd sub      rax, rcx
00000001404a33c0 sub      rax, rsi
00000001404a33c3 mov      qword ptr [rbp - 0x70], rax
00000001404a33c7 lea      rax, [rbp + 0x80]
00000001404a33ce sub      rax, rcx
00000001404a33d1 sub      rax, rsi
00000001404a33d4 mov      qword ptr [rbp - 0x78], rax
00000001404a33d8 lea      rax, [rbp + 0xa0]
00000001404a33df sub      rax, rcx
00000001404a33e2 sub      rax, rsi
00000001404a33e5 mov      qword ptr [rbp - 0x50], rax
00000001404a33e9 lea      rax, [rbp + 0xb0]
00000001404a33f0 sub      rax, rcx
00000001404a33f3 sub      rax, rsi
00000001404a33f6 mov      qword ptr [rbp - 0x48], rax
00000001404a33fa jmp      0x1404a3401
00000001404a33fc mov      r14, qword ptr [rsp + 0x60]
00000001404a3401 mov      rcx, qword ptr [rip + 0x47cbf8]
00000001404a3408 cmp      rcx, rdx
00000001404a340b je       0x1404a3447
00000001404a340d cmp      byte ptr [rcx + 0x229], 4
00000001404a3414 jb       0x1404a3447
00000001404a3416 mov      eax, dword ptr [rcx + 0x22c]
00000001404a341c test     al, 2
00000001404a341e je       0x1404a3447
00000001404a3420 mov      eax, dword ptr [r8 + rdi - 0xd0]
00000001404a3428 mov      edx, 0x37
00000001404a342d mov      rcx, qword ptr [rcx + 0x218]
00000001404a3434 lea      r8, [rip + 0x444bf5]
00000001404a343b mov      r9d, ebx
00000001404a343e mov      dword ptr [rsp + 0x20], eax
00000001404a3442 call     0x140001bec
00000001404a3447 xor      edx, edx
00000001404a3449 mov      r8d, 0xf0000
00000001404a344f mov      ecx, ebx
00000001404a3451 lea      r9d, [rdx + 0xc]
00000001404a3455 call     0x140458420
00000001404a345a mov      edx, 0x10000
00000001404a345f mov      r9d, 0xc
00000001404a3465 mov      r8d, 0xf0000
00000001404a346b mov      ecx, ebx
00000001404a346d call     0x140458420
00000001404a3472 test     ebx, ebx
00000001404a3474 jne      0x1404a34b8
00000001404a3476 mov      rcx, qword ptr [rsp + 0x70]
00000001404a347b mov      rax, qword ptr [rsp + 0x68]
00000001404a3480 mov      r12d, dword ptr [r14 + rdi - 0xd0]
00000001404a3488 mov      r13d, dword ptr [rdi + r13 - 0xd0]
00000001404a3490 mov      eax, dword ptr [rax + rdi - 0xd0]
00000001404a3497 mov      dword ptr [rsp + 0x44], eax
00000001404a349b mov      eax, dword ptr [rcx + rdi - 0xd0]
00000001404a34a2 mov      rcx, qword ptr [rsp + 0x78]
00000001404a34a7 mov      dword ptr [rsp + 0x40], eax
00000001404a34ab mov      eax, dword ptr [rcx + rdi - 0xd0]
00000001404a34b2 mov      rcx, qword ptr [rbp - 0x80]
00000001404a34b6 jmp      0x1404a34f9
00000001404a34b8 mov      rax, qword ptr [rbp - 0x78]
00000001404a34bc mov      rcx, qword ptr [rbp - 0x68]
00000001404a34c0 mov      r12d, dword ptr [r12 + rdi - 0xd0]
00000001404a34c8 mov      r13d, dword ptr [rax + rdi - 0xd0]
00000001404a34d0 mov      rax, qword ptr [rbp - 0x70]
00000001404a34d4 mov      eax, dword ptr [rax + rdi - 0xd0]
00000001404a34db mov      dword ptr [rsp + 0x44], eax
00000001404a34df mov      eax, dword ptr [rcx + rdi - 0xd0]
00000001404a34e6 mov      rcx, qword ptr [rbp - 0x60]
00000001404a34ea mov      dword ptr [rsp + 0x40], eax
00000001404a34ee mov      eax, dword ptr [rcx + rdi - 0xd0]
00000001404a34f5 mov      rcx, qword ptr [rbp - 0x58]
00000001404a34f9 mov      dword ptr [rsp + 0x3c], eax
00000001404a34fd mov      r9d, r12d
00000001404a3500 mov      eax, dword ptr [rcx + rdi - 0xd0]
00000001404a3507 xor      edx, edx
00000001404a3509 mov      ecx, ebx
00000001404a350b mov      dword ptr [rsp + 0x38], eax
00000001404a350f mov      r8d, 0x3e0
00000001404a3515 mov      r14d, ebx
00000001404a3518 call     0x140458420
00000001404a351d mov      r9d, dword ptr [rsp + 0x38]
00000001404a3522 xor      edx, edx
00000001404a3524 mov      r8d, 0x400
00000001404a352a mov      ecx, ebx
00000001404a352c call     0x140458420
00000001404a3531 mov      r9d, dword ptr [rsp + 0x3c]
00000001404a3536 xor      edx, edx
00000001404a3538 mov      r8d, 0x3800
00000001404a353e mov      ecx, ebx
00000001404a3540 call     0x140458420
00000001404a3545 mov      r9d, dword ptr [rsp + 0x40]
00000001404a354a mov      edx, 0x8a
00000001404a354f mov      r8d, 0x1000
00000001404a3555 mov      ecx, ebx
00000001404a3557 call     0x140458420
00000001404a355c mov      r9d, dword ptr [rsp + 0x44]
00000001404a3561 mov      edx, 0x8a
00000001404a3566 mov      r8d, 0xc00
00000001404a356c mov      ecx, ebx
00000001404a356e call     0x140458420
00000001404a3573 mov      r9d, r13d
00000001404a3576 mov      edx, 0x8a
00000001404a357b mov      r8d, 0x300
00000001404a3581 mov      ecx, ebx
00000001404a3583 call     0x140458420
00000001404a3588 mov      r14d, dword ptr [rsp + 0x4c]
00000001404a358d mov      r13d, 1
00000001404a3593 mov      r8d, r13d
00000001404a3596 mov      edx, 0x100
00000001404a359b mov      ecx, r14d
00000001404a359e call     0x1404583f4
00000001404a35a3 mov      r8, qword ptr [rsp + 0x58]
00000001404a35a8 lea      edx, [r13 + 6]
00000001404a35ac mov      ecx, r14d
00000001404a35af mov      r8d, dword ptr [r8 + rdi - 0xd0]
00000001404a35b7 call     0x1404583f4
00000001404a35bc xor      r8d, r8d
00000001404a35bf lea      edx, [r13 + 0xf]
00000001404a35c3 mov      ecx, r14d
00000001404a35c6 call     0x1404583f4
00000001404a35cb mov      r14d, 0xfffff
00000001404a35d1 lea      edx, [r13 + 0x1d]
00000001404a35d5 mov      r8d, r14d
00000001404a35d8 mov      r9d, 0x8001b
00000001404a35de mov      ecx, ebx
00000001404a35e0 call     0x140458420
00000001404a35e5 mov      ecx, 0x96
00000001404a35ea call     0x140458148
00000001404a35ef mov      r8d, r14d
00000001404a35f2 xor      edx, edx
00000001404a35f4 mov      ecx, ebx
00000001404a35f6 call     0x140458408
00000001404a35fb mov      r8d, eax
00000001404a35fe mov      edx, r14d
00000001404a3601 mov      ecx, 0x38024
00000001404a3606 call     0x1404583f4
00000001404a360b mov      rax, qword ptr [rbp - 0x50]
00000001404a360f test     ebx, ebx
00000001404a3611 je       0x1404a3617
00000001404a3613 mov      rax, qword ptr [rbp - 0x48]
00000001404a3617 mov      r8d, dword ptr [rax + rdi - 0xd0]
00000001404a361f mov      edx, 0xe000
00000001404a3624 mov      ecx, 0x38044
00000001404a3629 call     0x1404583f4
00000001404a362e mov      r14d, dword ptr [rsp + 0x30]
00000001404a3633 mov      r8d, r13d
00000001404a3636 mov      r13d, 2
00000001404a363c mov      edx, r13d
00000001404a363f lea      ecx, [r14 + 0x2e414]
00000001404a3646 call     0x1404583f4
00000001404a364b mov      edx, 0xfff0000
00000001404a3650 lea      r8d, [r13 + 0xf]
00000001404a3654 mov      ecx, 0x3802c
00000001404a3659 call     0x1404583f4
00000001404a365e mov      r8b, 4
00000001404a3661 mov      edx, ebx
00000001404a3663 mov      rcx, r15
00000001404a3666 call     0x1404a40d0
00000001404a366b lea      ecx, [r13 + 0x62]
00000001404a366f call     0x140458148
00000001404a3674 xor      r8d, r8d
00000001404a3677 lea      ecx, [r14 + 0x2e414]
00000001404a367e mov      edx, r13d
00000001404a3681 call     0x1404583f4
00000001404a3686 xor      edx, edx
00000001404a3688 mov      r8d, 0xfffff
00000001404a368e mov      ecx, ebx
00000001404a3690 call     0x140458408
00000001404a3695 mov      r14d, eax
00000001404a3698 mov      dword ptr [rdi - 0x60], eax
00000001404a369b shr      r14d, 5
00000001404a369f and      r14d, 0x1f
00000001404a36a3 mov      rax, qword ptr [rip + 0x47c956]
00000001404a36aa lea      rcx, [rip + 0x47c94f]
00000001404a36b1 cmp      rax, rcx
00000001404a36b4 je       0x1404a3706
00000001404a36b6 cmp      byte ptr [rax + 0x229], 4
00000001404a36bd jb       0x1404a3706
00000001404a36bf mov      eax, dword ptr [rax + 0x22c]
00000001404a36c5 test     r13b, al
00000001404a36c8 je       0x1404a3706
00000001404a36ca mov      edx, 0x8a
00000001404a36cf mov      r8d, 0x1f00
00000001404a36d5 mov      ecx, ebx
00000001404a36d7 call     0x140458408
00000001404a36dc mov      rcx, qword ptr [rip + 0x47c91d]
00000001404a36e3 lea      edx, [r13 + 0x36]
00000001404a36e7 mov      dword ptr [rsp + 0x28], eax
00000001404a36eb lea      r8, [rip + 0x44493e]
00000001404a36f2 mov      r9d, ebx
00000001404a36f5 mov      dword ptr [rsp + 0x20], r14d
00000001404a36fa mov      rcx, qword ptr [rcx + 0x218]
00000001404a3701 call     0x140001c34
00000001404a3706 mov      r13d, dword ptr [rsp + 0x34]
00000001404a370b mov      ecx, r12d
00000001404a370e sub      ecx, r14d
00000001404a3711 mov      eax, r14d
00000001404a3714 sub      eax, r12d
00000001404a3717 cmp      r14d, r12d
00000001404a371a cmovbe   eax, ecx
00000001404a371d cmp      eax, 3
00000001404a3720 jbe      0x1404a372f
00000001404a3722 mov      r8d, r13d
00000001404a3725 mov      edx, ebx
00000001404a3727 mov      rcx, r15
00000001404a372a call     0x1404a4be4
00000001404a372f mov      edx, 0x1e
00000001404a3734 mov      r9d, 0x8001b
00000001404a373a mov      r8d, 0xfffff
00000001404a3740 mov      ecx, ebx
00000001404a3742 call     0x140458420
00000001404a3747 mov      ecx, 0x96
00000001404a374c call     0x140458148
00000001404a3751 mov      r14d, dword ptr [rsp + 0x30]
00000001404a3756 mov      r8d, 1
00000001404a375c lea      r12d, [r8 + 1]
00000001404a3760 mov      edx, r12d
00000001404a3763 lea      ecx, [r14 + 0x2e414]
00000001404a376a call     0x1404583f4
00000001404a376f mov      edx, 0xfff0000
00000001404a3774 lea      r8d, [r12 + 0xf]
00000001404a3779 mov      ecx, 0x3802c
00000001404a377e call     0x1404583f4
00000001404a3783 mov      r8d, r12d
00000001404a3786 mov      edx, 0xe0000
00000001404a378b mov      ecx, 0x3801c
00000001404a3790 call     0x1404583f4
00000001404a3795 mov      r8b, 7
00000001404a3798 mov      edx, ebx
00000001404a379a mov      rcx, r15
00000001404a379d call     0x1404a40d0
00000001404a37a2 mov      ecx, 0x64
00000001404a37a7 mov      r12b, al
00000001404a37aa call     0x140458148
00000001404a37af mov      ecx, dword ptr [rsp + 0x48]
00000001404a37b3 or       edx, 0xffffffff
00000001404a37b6 call     0x1404583e0
00000001404a37bb xor      r8d, r8d
00000001404a37be mov      dword ptr [rdi], eax
00000001404a37c0 lea      ecx, [r14 + 0x2e414]
00000001404a37c7 lea      edx, [r8 + 2]
00000001404a37cb call     0x1404583f4
00000001404a37d0 mov      edx, ebx
00000001404a37d2 mov      rcx, r15
00000001404a37d5 call     0x1404a3ca0
00000001404a37da cmp      byte ptr [rsi + 0xf], 0
00000001404a37de movzx    r14d, al
00000001404a37e2 jne      0x1404a37e8
00000001404a37e4 test     al, al
00000001404a37e6 je       0x1404a37f2
00000001404a37e8 mov      edx, ebx
00000001404a37ea mov      rcx, r15
00000001404a37ed call     0x1404a4a90
00000001404a37f2 cmp      byte ptr [rsi + 0xa], 0
00000001404a37f6 jne      0x1404a3876
00000001404a37f8 mov      ecx, dword ptr [rsp + 0x30]
00000001404a37fc mov      r8d, 1
00000001404a3802 add      ecx, 0x2e414
00000001404a3808 lea      r12d, [r8 + 1]
00000001404a380c mov      edx, r12d
00000001404a380f call     0x1404583f4
00000001404a3814 mov      r8d, r12d
00000001404a3817 mov      edx, 0xe0000
00000001404a381c mov      ecx, 0x3801c
00000001404a3821 call     0x1404583f4
00000001404a3826 mov      r8b, 5
00000001404a3829 mov      edx, ebx
00000001404a382b mov      rcx, r15
00000001404a382e call     0x1404a40d0
00000001404a3833 mov      ecx, 0x64
00000001404a3838 mov      r12b, al
00000001404a383b call     0x140458148
00000001404a3840 mov      ecx, dword ptr [rsp + 0x30]
00000001404a3844 xor      r8d, r8d
00000001404a3847 add      ecx, 0x2e414
00000001404a384d lea      edx, [r8 + 2]
00000001404a3851 call     0x1404583f4
00000001404a3856 cmp      byte ptr [rsi + 0xe], 0
00000001404a385a je       0x1404a3866
00000001404a385c mov      edx, ebx
00000001404a385e mov      rcx, r15
00000001404a3861 call     0x1404a46dc
00000001404a3866 cmp      byte ptr [rsi + 0x13], 0
00000001404a386a je       0x1404a3876
00000001404a386c mov      edx, ebx
00000001404a386e mov      rcx, r15
00000001404a3871 call     0x1404a4368
00000001404a3876 mov      rcx, qword ptr [rip + 0x47c783]
00000001404a387d lea      rdx, [rip + 0x47c77c]
00000001404a3884 cmp      rcx, rdx
00000001404a3887 je       0x1404a3902
00000001404a3889 cmp      byte ptr [rcx + 0x229], 4
00000001404a3890 jb       0x1404a38c4
00000001404a3892 mov      eax, dword ptr [rcx + 0x22c]
00000001404a3898 test     al, 2
00000001404a389a je       0x1404a38c4
00000001404a389c mov      rcx, qword ptr [rcx + 0x218]
00000001404a38a3 lea      r8, [rip + 0x444786]
00000001404a38aa movzx    r9d, r12b
00000001404a38ae mov      edx, 0x39
00000001404a38b3 mov      dword ptr [rsp + 0x20], r14d
00000001404a38b8 call     0x140001bec
00000001404a38bd lea      rdx, [rip + 0x47c73c]
00000001404a38c4 mov      rcx, qword ptr [rip + 0x47c735]
00000001404a38cb cmp      rcx, rdx
00000001404a38ce je       0x1404a3902
00000001404a38d0 cmp      byte ptr [rcx + 0x229], 4
00000001404a38d7 jb       0x1404a3902
00000001404a38d9 mov      eax, dword ptr [rcx + 0x22c]
00000001404a38df test     al, 2
00000001404a38e1 je       0x1404a3902
00000001404a38e3 mov      rcx, qword ptr [rcx + 0x218]
00000001404a38ea lea      r8, [rip + 0x44473f]
00000001404a38f1 mov      edx, 0x3a
00000001404a38f6 call     0x140001b88
00000001404a38fb lea      rdx, [rip + 0x47c6fe]
00000001404a3902 mov      r8, qword ptr [rsp + 0x58]
00000001404a3907 inc      r13d
00000001404a390a mov      r12, qword ptr [rbp - 0x38]
00000001404a390e add      rdi, 4
00000001404a3912 cmp      r13d, dword ptr [rsp + 0x50]
00000001404a3917 mov      dword ptr [rsp + 0x34], r13d
00000001404a391c mov      r13, qword ptr [rbp - 0x40]
00000001404a3920 jb       0x1404a33fc
00000001404a3926 test     r14b, r14b
00000001404a3929 je       0x1404a398d
00000001404a392b mov      rcx, qword ptr [rip + 0x47c6ce]
00000001404a3932 cmp      rcx, rdx
00000001404a3935 je       0x1404a3965
00000001404a3937 cmp      byte ptr [rcx + 0x229], 4
00000001404a393e jb       0x1404a3965
00000001404a3940 mov      eax, dword ptr [rcx + 0x22c]
00000001404a3946 test     al, 2
00000001404a3948 je       0x1404a3965
00000001404a394a mov      rcx, qword ptr [rcx + 0x218]
00000001404a3951 lea      r8, [rip + 0x4446d8]
00000001404a3958 mov      edx, 0x3b
00000001404a395d mov      r9d, ebx
00000001404a3960 call     0x140001bb0
00000001404a3965 mov      ecx, dword ptr [rsp + 0x48]
00000001404a3969 mov      r8d, 0x40000002
00000001404a396f or       edx, 0xffffffff
00000001404a3972 call     0x1404583f4
00000001404a3977 mov      ecx, dword ptr [rsp + 0x30]
00000001404a397b xor      r8d, r8d
00000001404a397e add      ecx, 0x38124
00000001404a3984 lea      edx, [r8 + 1]
00000001404a3988 call     0x1404583f4
00000001404a398d mov      al, r14b
00000001404a3990 mov      rcx, qword ptr [rbp + 0xc0]
00000001404a3997 xor      rcx, rsp
00000001404a399a call     0x1405f45b0
00000001404a399f mov      rbx, qword ptr [rsp + 0x220]
00000001404a39a7 add      rsp, 0x1d0
00000001404a39ae pop      r15
00000001404a39b0 pop      r14
00000001404a39b2 pop      r13
00000001404a39b4 pop      r12
00000001404a39b6 pop      rdi
00000001404a39b7 pop      rsi
00000001404a39b8 pop      rbp
00000001404a39b9 ret      