00000001404e3068 mov      qword ptr [rsp + 0x18], rbx
00000001404e306d push     rbp
00000001404e306e push     rsi
00000001404e306f push     rdi
00000001404e3070 push     r12
00000001404e3072 push     r13
00000001404e3074 push     r14
00000001404e3076 push     r15
00000001404e3078 lea      rbp, [rsp - 0x27]
00000001404e307d sub      rsp, 0x90
00000001404e3084 mov      rax, qword ptr [rip + 0x4443d5]
00000001404e308b xor      rax, rsp
00000001404e308e mov      qword ptr [rbp + 0x1f], rax
00000001404e3092 mov      rbx, qword ptr [rcx + 0xc40]
00000001404e3099 lea      r8, [rbp - 0x19]
00000001404e309d xorps    xmm1, xmm1
00000001404e30a0 movzx    edi, dx
00000001404e30a3 movups   xmmword ptr [rbp - 9], xmm1
00000001404e30a7 xor      eax, eax
00000001404e30a9 mov      byte ptr [rbp + 3], 5
00000001404e30ad xorps    xmm0, xmm0
00000001404e30b0 mov      dword ptr [rbp + 0x17], eax
00000001404e30b3 mov      r15d, 0x3e8
00000001404e30b9 mov      word ptr [rbp + 0x17], 0x207
00000001404e30bf lea      rdx, [rbp + 7]
00000001404e30c3 mov      dword ptr [rbp - 5], r15d
00000001404e30c7 mov      dword ptr [rbp - 1], 0x64
00000001404e30ce mov      r14, rcx
00000001404e30d1 mov      qword ptr [rbp - 0x21], rcx
00000001404e30d5 xor      r12b, r12b
00000001404e30d8 movups   xmmword ptr [rbp + 7], xmm0
00000001404e30dc movups   xmmword ptr [rbp - 0x19], xmm1
00000001404e30e0 call     0x140416f40
00000001404e30e5 mov      r13d, eax
00000001404e30e8 test     eax, eax
00000001404e30ea je       0x1404e314f
00000001404e30ec mov      r10, qword ptr [rip + 0x43cf0d]
00000001404e30f3 lea      rdi, [rip + 0x43cf06]
00000001404e30fa cmp      r10, rdi
00000001404e30fd je       0x1404e3764
00000001404e3103 cmp      byte ptr [r10 + 0x169], 2
00000001404e310b jb       0x1404e3764
00000001404e3111 mov      ecx, dword ptr [r10 + 0x16c]
00000001404e3118 mov      sil, 8
00000001404e311b test     sil, cl
00000001404e311e je       0x1404e3764
00000001404e3124 mov      dword ptr [rsp + 0x28], eax
00000001404e3128 mov      edx, 0x3c
00000001404e312d mov      dword ptr [rsp + 0x20], 5
00000001404e3135 mov      rcx, qword ptr [r10 + 0x158]
00000001404e313c lea      r9, [rip + 0x179b5d]
00000001404e3143 lea      r8, [rip + 0x406ed6]
00000001404e314a jmp      0x1404e375f
00000001404e314f mov      al, byte ptr [rbx + 4]
00000001404e3152 lea      r8, [rbp - 0x19]
00000001404e3156 movzx    edx, byte ptr [rbp - 0x17]
00000001404e315a mov      sil, 8
00000001404e315d mov      byte ptr [rbx + 2], dl
00000001404e3160 mov      cl, byte ptr [rbp - 0x16]
00000001404e3163 xor      cl, al
00000001404e3165 and      cl, 1
00000001404e3168 xor      cl, al
00000001404e316a mov      byte ptr [rbx + 4], cl
00000001404e316d mov      rcx, r14
00000001404e3170 mov      al, byte ptr [rbp - 0x15]
00000001404e3173 mov      byte ptr [rbx + rdx*8 + 0x40], al
00000001404e3177 mov      al, byte ptr [rbp - 0x14]
00000001404e317a mov      byte ptr [rbx + rdx*8 + 0x41], al
00000001404e317e mov      al, byte ptr [rbp - 0x13]
00000001404e3181 mov      byte ptr [rbx + rdx*8 + 0x42], al
00000001404e3185 mov      al, byte ptr [rbp - 0x12]
00000001404e3188 mov      byte ptr [rbx + rdx*8 + 0x43], al
00000001404e318c mov      al, byte ptr [rbp - 0x11]
00000001404e318f mov      byte ptr [rbx + rdx*8 + 0x44], al
00000001404e3193 mov      al, byte ptr [rbp - 0x10]
00000001404e3196 mov      byte ptr [rbx + rdx*8 + 0x45], al
00000001404e319a mov      al, byte ptr [rbp - 0xf]
00000001404e319d mov      byte ptr [rbx + rdx*8 + 0x46], al
00000001404e31a1 mov      al, byte ptr [rbp - 0xe]
00000001404e31a4 mov      byte ptr [rbx + rdx*8 + 0x47], al
00000001404e31a8 lea      rdx, [rbp + 7]
00000001404e31ac mov      al, byte ptr [rbp - 0xd]
00000001404e31af mov      byte ptr [rbx + 0x38], al
00000001404e31b2 mov      al, byte ptr [rbp - 0xc]
00000001404e31b5 mov      byte ptr [rbx + 0x39], al
00000001404e31b8 mov      al, byte ptr [rbp - 0xb]
00000001404e31bb mov      byte ptr [rbx + 0x3a], al
00000001404e31be mov      al, byte ptr [rbp - 0xa]
00000001404e31c1 mov      byte ptr [rbx + 0x3b], al
00000001404e31c4 mov      word ptr [rbp + 0x17], 0x208
00000001404e31ca mov      byte ptr [rbp + 3], 6
00000001404e31ce mov      dword ptr [rbp - 5], r15d
00000001404e31d2 mov      dword ptr [rbp - 1], 0x64
00000001404e31d9 call     0x140416f40
00000001404e31de mov      r13d, eax
00000001404e31e1 test     eax, eax
00000001404e31e3 je       0x1404e3230
00000001404e31e5 mov      r10, qword ptr [rip + 0x43ce14]
00000001404e31ec lea      rdi, [rip + 0x43ce0d]
00000001404e31f3 cmp      r10, rdi
00000001404e31f6 je       0x1404e3764
00000001404e31fc cmp      byte ptr [r10 + 0x169], 2
00000001404e3204 jb       0x1404e3764
00000001404e320a mov      ecx, dword ptr [r10 + 0x16c]
00000001404e3211 test     sil, cl
00000001404e3214 je       0x1404e3764
00000001404e321a mov      dword ptr [rsp + 0x28], eax
00000001404e321e mov      edx, 0x3d
00000001404e3223 mov      dword ptr [rsp + 0x20], 6
00000001404e322b jmp      0x1404e3135
00000001404e3230 mov      al, byte ptr [rbp - 0x17]
00000001404e3233 lea      r14, [rip + 0x179a66]
00000001404e323a mov      byte ptr [rbx + 0x3c], al
00000001404e323d lea      r15, [rip + 0x406ddc]
00000001404e3244 mov      al, byte ptr [rbp - 0x16]
00000001404e3247 mov      byte ptr [rbx + 0x3d], al
00000001404e324a mov      al, byte ptr [rbp - 0x15]
00000001404e324d mov      byte ptr [rbx + 0x3e], al
00000001404e3250 mov      al, byte ptr [rbp - 0x14]
00000001404e3253 mov      byte ptr [rbx + 0x3f], al
00000001404e3256 mov      al, byte ptr [rbp - 0x13]
00000001404e3259 mov      byte ptr [rbx + 0x68], al
00000001404e325c mov      al, byte ptr [rbp - 0x12]
00000001404e325f mov      byte ptr [rbx + 0x69], al
00000001404e3262 mov      al, byte ptr [rbp - 0x11]
00000001404e3265 mov      byte ptr [rbx + 0x6a], al
00000001404e3268 mov      al, byte ptr [rbp - 0x10]
00000001404e326b mov      byte ptr [rbx + 0x6b], al
00000001404e326e mov      al, byte ptr [rbp - 0xf]
00000001404e3271 mov      byte ptr [rbx + 0x6c], al
00000001404e3274 mov      al, byte ptr [rbp - 0xe]
00000001404e3277 mov      byte ptr [rbx + 0x6d], al
00000001404e327a mov      al, byte ptr [rbp - 0xd]
00000001404e327d mov      byte ptr [rbx + 0x6e], al
00000001404e3280 mov      al, byte ptr [rbp - 0xc]
00000001404e3283 mov      byte ptr [rbx + 0x6f], al
00000001404e3286 mov      eax, edi
00000001404e3288 shl      eax, 0x10
00000001404e328b lea      rdi, [rip + 0x43cd6e]
00000001404e3292 mov      dword ptr [rbp - 0x25], eax
00000001404e3295 mov      rcx, qword ptr [rbp - 0x21]
00000001404e3299 lea      r8, [rbp - 0x19]
00000001404e329d mov      dword ptr [rbp + 7], eax
00000001404e32a0 lea      rdx, [rbp + 7]
00000001404e32a4 movzx    eax, r12b
00000001404e32a8 and      eax, 0xf
00000001404e32ab mov      word ptr [rbp + 0x17], 0x60e
00000001404e32b1 mov      dword ptr [rbp + 0xb], eax
00000001404e32b4 mov      byte ptr [rbp + 3], 0x10
00000001404e32b8 mov      dword ptr [rbp - 5], 0x3e8
00000001404e32bf mov      dword ptr [rbp - 1], 0x64
00000001404e32c6 call     0x140416f40
00000001404e32cb mov      r13d, eax
00000001404e32ce test     eax, eax
00000001404e32d0 jne      0x1404e3720
00000001404e32d6 mov      al, byte ptr [rbp - 0x15]
00000001404e32d9 movzx    ecx, byte ptr [rbp - 0x17]
00000001404e32dd movzx    r13d, r12b
00000001404e32e1 mov      byte ptr [rbx + r13*8 + 0x90], al
00000001404e32e9 mov      al, byte ptr [rbp - 0x14]
00000001404e32ec mov      byte ptr [rbx + r13*8 + 0x91], al
00000001404e32f4 mov      al, byte ptr [rbp - 0x13]
00000001404e32f7 mov      byte ptr [rbx + r13*8 + 0x92], al
00000001404e32ff mov      al, byte ptr [rbp - 0x12]
00000001404e3302 mov      byte ptr [rbx + r13*8 + 0x93], al
00000001404e330a mov      al, byte ptr [rbp - 0x11]
00000001404e330d mov      byte ptr [rbx + r13*8 + 0x94], al
00000001404e3315 mov      al, byte ptr [rbp - 0x10]
00000001404e3318 mov      byte ptr [rbx + r13*8 + 0x95], al
00000001404e3320 mov      al, byte ptr [rbp - 0xf]
00000001404e3323 mov      byte ptr [rbx + r13*8 + 0x96], al
00000001404e332b mov      al, byte ptr [rbp - 0xe]
00000001404e332e mov      byte ptr [rbx + r13*8 + 0x97], al
00000001404e3336 mov      edx, dword ptr [rbp - 0xd]
00000001404e3339 shr      edx, 4
00000001404e333c mov      dword ptr [rbp - 0x29], edx
00000001404e333f mov      r10, qword ptr [rip + 0x43ccba]
00000001404e3346 cmp      r10, rdi
00000001404e3349 je       0x1404e35c9
00000001404e334f cmp      byte ptr [r10 + 0x169], 2
00000001404e3357 jb       0x1404e3391
00000001404e3359 mov      eax, dword ptr [r10 + 0x16c]
00000001404e3360 test     sil, al
00000001404e3363 je       0x1404e3391
00000001404e3365 mov      eax, ecx
00000001404e3367 mov      r9, r14
00000001404e336a mov      dword ptr [rsp + 0x30], eax
00000001404e336e mov      r8, r15
00000001404e3371 movzx    ecx, dx
00000001404e3374 mov      edx, 0x3f
00000001404e3379 movzx    eax, r12b
00000001404e337d mov      dword ptr [rsp + 0x28], eax
00000001404e3381 mov      dword ptr [rsp + 0x20], ecx
00000001404e3385 mov      rcx, qword ptr [r10 + 0x158]
00000001404e338c call     0x14001c670
00000001404e3391 mov      rcx, qword ptr [rip + 0x43cc68]
00000001404e3398 cmp      rcx, rdi
00000001404e339b je       0x1404e35c9
00000001404e33a1 cmp      byte ptr [rcx + 0x169], 2
00000001404e33a8 jb       0x1404e33d9
00000001404e33aa mov      eax, dword ptr [rcx + 0x16c]
00000001404e33b0 test     sil, al
00000001404e33b3 je       0x1404e33d9
00000001404e33b5 movzx    eax, byte ptr [rbx + r13*8 + 0x90]
00000001404e33be mov      edx, 0x40
00000001404e33c3 mov      rcx, qword ptr [rcx + 0x158]
00000001404e33ca mov      r9, r14
00000001404e33cd mov      r8, r15
00000001404e33d0 mov      dword ptr [rsp + 0x20], eax
00000001404e33d4 call     0x1400088d8
00000001404e33d9 mov      rcx, qword ptr [rip + 0x43cc20]
00000001404e33e0 cmp      rcx, rdi
00000001404e33e3 je       0x1404e35c9
00000001404e33e9 cmp      byte ptr [rcx + 0x169], 2
00000001404e33f0 jb       0x1404e3421
00000001404e33f2 mov      eax, dword ptr [rcx + 0x16c]
00000001404e33f8 test     sil, al
00000001404e33fb je       0x1404e3421
00000001404e33fd movzx    eax, byte ptr [rbx + r13*8 + 0x91]
00000001404e3406 mov      edx, 0x41
00000001404e340b mov      rcx, qword ptr [rcx + 0x158]
00000001404e3412 mov      r9, r14
00000001404e3415 mov      r8, r15
00000001404e3418 mov      dword ptr [rsp + 0x20], eax
00000001404e341c call     0x1400088d8
00000001404e3421 mov      rcx, qword ptr [rip + 0x43cbd8]
00000001404e3428 cmp      rcx, rdi
00000001404e342b je       0x1404e35c9
00000001404e3431 cmp      byte ptr [rcx + 0x169], 2
00000001404e3438 jb       0x1404e3469
00000001404e343a mov      eax, dword ptr [rcx + 0x16c]
00000001404e3440 test     sil, al
00000001404e3443 je       0x1404e3469
00000001404e3445 movzx    eax, byte ptr [rbx + r13*8 + 0x92]
00000001404e344e mov      edx, 0x42
00000001404e3453 mov      rcx, qword ptr [rcx + 0x158]
00000001404e345a mov      r9, r14
00000001404e345d mov      r8, r15
00000001404e3460 mov      dword ptr [rsp + 0x20], eax
00000001404e3464 call     0x1400088d8
00000001404e3469 mov      rcx, qword ptr [rip + 0x43cb90]
00000001404e3470 cmp      rcx, rdi
00000001404e3473 je       0x1404e35c9
00000001404e3479 cmp      byte ptr [rcx + 0x169], 2
00000001404e3480 jb       0x1404e34b1
00000001404e3482 mov      eax, dword ptr [rcx + 0x16c]
00000001404e3488 test     sil, al
00000001404e348b je       0x1404e34b1
00000001404e348d movzx    eax, byte ptr [rbx + r13*8 + 0x93]
00000001404e3496 mov      edx, 0x43
00000001404e349b mov      rcx, qword ptr [rcx + 0x158]
00000001404e34a2 mov      r9, r14
00000001404e34a5 mov      r8, r15
00000001404e34a8 mov      dword ptr [rsp + 0x20], eax
00000001404e34ac call     0x1400088d8
00000001404e34b1 mov      rcx, qword ptr [rip + 0x43cb48]
00000001404e34b8 cmp      rcx, rdi
00000001404e34bb je       0x1404e35c9
00000001404e34c1 cmp      byte ptr [rcx + 0x169], 2
00000001404e34c8 jb       0x1404e34f9
00000001404e34ca mov      eax, dword ptr [rcx + 0x16c]
00000001404e34d0 test     sil, al
00000001404e34d3 je       0x1404e34f9
00000001404e34d5 movzx    eax, byte ptr [rbx + r13*8 + 0x94]
00000001404e34de mov      edx, 0x44
00000001404e34e3 mov      rcx, qword ptr [rcx + 0x158]
00000001404e34ea mov      r9, r14
00000001404e34ed mov      r8, r15
00000001404e34f0 mov      dword ptr [rsp + 0x20], eax
00000001404e34f4 call     0x1400088d8
00000001404e34f9 mov      rcx, qword ptr [rip + 0x43cb00]
00000001404e3500 cmp      rcx, rdi
00000001404e3503 je       0x1404e35c9
00000001404e3509 cmp      byte ptr [rcx + 0x169], 2
00000001404e3510 jb       0x1404e3541
00000001404e3512 mov      eax, dword ptr [rcx + 0x16c]
00000001404e3518 test     sil, al
00000001404e351b je       0x1404e3541
00000001404e351d movzx    eax, byte ptr [rbx + r13*8 + 0x95]
00000001404e3526 mov      edx, 0x45
00000001404e352b mov      rcx, qword ptr [rcx + 0x158]
00000001404e3532 mov      r9, r14
00000001404e3535 mov      r8, r15
00000001404e3538 mov      dword ptr [rsp + 0x20], eax
00000001404e353c call     0x1400088d8
00000001404e3541 mov      rcx, qword ptr [rip + 0x43cab8]
00000001404e3548 cmp      rcx, rdi
00000001404e354b je       0x1404e35c9
00000001404e354d cmp      byte ptr [rcx + 0x169], 2
00000001404e3554 jb       0x1404e3585
00000001404e3556 mov      eax, dword ptr [rcx + 0x16c]
00000001404e355c test     sil, al
00000001404e355f je       0x1404e3585
00000001404e3561 movzx    eax, byte ptr [rbx + r13*8 + 0x96]
00000001404e356a mov      edx, 0x46
00000001404e356f mov      rcx, qword ptr [rcx + 0x158]
00000001404e3576 mov      r9, r14
00000001404e3579 mov      r8, r15
00000001404e357c mov      dword ptr [rsp + 0x20], eax
00000001404e3580 call     0x1400088d8
00000001404e3585 mov      rcx, qword ptr [rip + 0x43ca74]
00000001404e358c cmp      rcx, rdi
00000001404e358f je       0x1404e35c9
00000001404e3591 cmp      byte ptr [rcx + 0x169], 2
00000001404e3598 jb       0x1404e35c9
00000001404e359a mov      eax, dword ptr [rcx + 0x16c]
00000001404e35a0 test     sil, al
00000001404e35a3 je       0x1404e35c9
00000001404e35a5 movzx    eax, byte ptr [rbx + r13*8 + 0x97]
00000001404e35ae mov      edx, 0x47
00000001404e35b3 mov      rcx, qword ptr [rcx + 0x158]
00000001404e35ba mov      r9, r14
00000001404e35bd mov      r8, r15
00000001404e35c0 mov      dword ptr [rsp + 0x20], eax
00000001404e35c4 call     0x1400088d8
00000001404e35c9 movzx    r13d, word ptr [rbp - 0x29]
00000001404e35ce inc      r12b
00000001404e35d1 jmp      0x1404e361b
00000001404e35d3 mov      rcx, qword ptr [rip + 0x43ca26]
00000001404e35da cmp      rcx, rdi
00000001404e35dd je       0x1404e3612
00000001404e35df cmp      byte ptr [rcx + 0x169], 2
00000001404e35e6 jb       0x1404e3612
00000001404e35e8 mov      eax, dword ptr [rcx + 0x16c]
00000001404e35ee test     sil, al
00000001404e35f1 je       0x1404e3612
00000001404e35f3 mov      rcx, qword ptr [rcx + 0x158]
00000001404e35fa mov      edx, 0x48
00000001404e35ff movzx    eax, r12b
00000001404e3603 mov      r9, r14
00000001404e3606 mov      r8, r15
00000001404e3609 mov      dword ptr [rsp + 0x20], eax
00000001404e360d call     0x1400088d8
00000001404e3612 inc      r12b
00000001404e3615 cmp      r12b, 0x10
00000001404e3619 jae      0x1404e3632
00000001404e361b movzx    eax, r12b
00000001404e361f bt       r13d, eax
00000001404e3623 jae      0x1404e35d3
00000001404e3625 mov      eax, dword ptr [rbp - 0x25]
00000001404e3628 cmp      r12b, 0x10
00000001404e362c jb       0x1404e3295
00000001404e3632 mov      eax, dword ptr [rbp - 0x29]
00000001404e3635 lea      r8, [rbp - 0x19]
00000001404e3639 mov      rcx, qword ptr [rbp - 0x21]
00000001404e363d lea      rdx, [rbp + 7]
00000001404e3641 mov      word ptr [rbx + 0x110], ax
00000001404e3648 mov      word ptr [rbp + 0x17], 0x409
00000001404e364e mov      byte ptr [rbp + 3], 7
00000001404e3652 mov      dword ptr [rbp - 5], 0x3e8
00000001404e3659 mov      dword ptr [rbp - 1], 0x64
00000001404e3660 call     0x140416f40
00000001404e3665 mov      r12d, eax
00000001404e3668 test     eax, eax
00000001404e366a je       0x1404e36b7
00000001404e366c mov      rcx, qword ptr [rip + 0x43c98d]
00000001404e3673 cmp      rcx, rdi
00000001404e3676 je       0x1404e36af
00000001404e3678 cmp      byte ptr [rcx + 0x169], 2
00000001404e367f jb       0x1404e36af
00000001404e3681 mov      edx, dword ptr [rcx + 0x16c]
00000001404e3687 test     sil, dl
00000001404e368a je       0x1404e36af
00000001404e368c mov      rcx, qword ptr [rcx + 0x158]
00000001404e3693 mov      edx, 0x49
00000001404e3698 mov      dword ptr [rsp + 0x28], eax
00000001404e369c mov      r9, r14
00000001404e369f mov      r8, r15
00000001404e36a2 mov      dword ptr [rsp + 0x20], 7
00000001404e36aa call     0x140002b04
00000001404e36af mov      eax, r12d
00000001404e36b2 jmp      0x1404e3767
00000001404e36b7 mov      al, byte ptr [rbp - 0x15]
00000001404e36ba mov      byte ptr [rbx + 0x142], al
00000001404e36c0 mov      edx, dword ptr [rbp - 0x15]
00000001404e36c3 mov      al, byte ptr [rbx + 0x143]
00000001404e36c9 shr      edx, 8
00000001404e36cc mov      cl, dl
00000001404e36ce and      dl, 0xf
00000001404e36d1 xor      cl, al
00000001404e36d3 and      cl, 0xf
00000001404e36d6 xor      cl, al
00000001404e36d8 mov      byte ptr [rbx + 0x143], cl
00000001404e36de mov      eax, dword ptr [rbp - 0x15]
00000001404e36e1 shr      eax, 0xc
00000001404e36e4 shl      al, 4
00000001404e36e7 or       al, dl
00000001404e36e9 mov      byte ptr [rbx + 0x143], al
00000001404e36ef mov      al, byte ptr [rbx + 0x144]
00000001404e36f5 mov      ecx, dword ptr [rbp - 0x15]
00000001404e36f8 shr      ecx, 0x10
00000001404e36fb xor      cl, al
00000001404e36fd and      cl, 1
00000001404e3700 xor      cl, al
00000001404e3702 mov      byte ptr [rbx + 0x144], cl
00000001404e3708 mov      eax, dword ptr [rbp - 0x15]
00000001404e370b shr      eax, 0x11
00000001404e370e add      al, al
00000001404e3710 xor      al, cl
00000001404e3712 and      al, 6
00000001404e3714 xor      al, cl
00000001404e3716 mov      byte ptr [rbx + 0x144], al
00000001404e371c xor      eax, eax
00000001404e371e jmp      0x1404e3767
00000001404e3720 mov      rcx, qword ptr [rip + 0x43c8d9]
00000001404e3727 cmp      rcx, rdi
00000001404e372a je       0x1404e3764
00000001404e372c cmp      byte ptr [rcx + 0x169], 2
00000001404e3733 jb       0x1404e3764
00000001404e3735 mov      eax, dword ptr [rcx + 0x16c]
00000001404e373b test     sil, al
00000001404e373e je       0x1404e3764
00000001404e3740 mov      rcx, qword ptr [rcx + 0x158]
00000001404e3747 mov      edx, 0x3e
00000001404e374c mov      dword ptr [rsp + 0x28], r13d
00000001404e3751 mov      r9, r14
00000001404e3754 mov      dword ptr [rsp + 0x20], 0x10
00000001404e375c mov      r8, r15
00000001404e375f call     0x140002b04
00000001404e3764 mov      eax, r13d
00000001404e3767 mov      rcx, qword ptr [rbp + 0x1f]
00000001404e376b xor      rcx, rsp
00000001404e376e call     0x1405f45b0
00000001404e3773 mov      rbx, qword ptr [rsp + 0xe0]
00000001404e377b add      rsp, 0x90
00000001404e3782 pop      r15
00000001404e3784 pop      r14
00000001404e3786 pop      r13
00000001404e3788 pop      r12
00000001404e378a pop      rdi
00000001404e378b pop      rsi
00000001404e378c pop      rbp
00000001404e378d ret      