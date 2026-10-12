00000001404c32e0 sub      rsp, 0x48
00000001404c32e4 mov      ecx, dword ptr [rdx]
00000001404c32e6 mov      r9, rdx
00000001404c32e9 cmp      ecx, 0x14
00000001404c32ec ja       0x1404c3a61
00000001404c32f2 je       0x1404c3a0d
00000001404c32f8 cmp      ecx, 0xa
00000001404c32fb ja       0x1404c3744
00000001404c3301 je       0x1404c3706
00000001404c3307 cmp      ecx, 5
00000001404c330a ja       0x1404c3528
00000001404c3310 je       0x1404c34d8
00000001404c3316 mov      eax, ecx
00000001404c3318 test     ecx, ecx
00000001404c331a je       0x1404c347b
00000001404c3320 sub      eax, 1
00000001404c3323 je       0x1404c341e
00000001404c3329 sub      eax, 1
00000001404c332c je       0x1404c33b9
00000001404c3332 sub      eax, 1
00000001404c3335 je       0x1404c337b
00000001404c3337 cmp      eax, 1
00000001404c333a jne      0x1404c3dc9
00000001404c3340 mov      rcx, qword ptr [rip + 0x45ccb9]
00000001404c3347 lea      rax, [rip + 0x45ccb2]
00000001404c334e cmp      rcx, rax
00000001404c3351 je       0x1404c41f5
00000001404c3357 cmp      byte ptr [rcx + 0x229], 4
00000001404c335e jb       0x1404c41f5
00000001404c3364 test     dword ptr [rcx + 0x22c], 0x800000
00000001404c336e je       0x1404c41f5
00000001404c3374 mov      edx, 0x44
00000001404c3379 jmp      0x1404c33f2
00000001404c337b mov      rcx, qword ptr [rip + 0x45cc7e]
00000001404c3382 lea      rax, [rip + 0x45cc77]
00000001404c3389 cmp      rcx, rax
00000001404c338c je       0x1404c41f5
00000001404c3392 cmp      byte ptr [rcx + 0x229], 4
00000001404c3399 jb       0x1404c41f5
00000001404c339f test     dword ptr [rcx + 0x22c], 0x800000
00000001404c33a9 je       0x1404c41f5
00000001404c33af mov      edx, 0x43
00000001404c33b4 jmp      0x1404c3457
00000001404c33b9 mov      rcx, qword ptr [rip + 0x45cc40]
00000001404c33c0 lea      rax, [rip + 0x45cc39]
00000001404c33c7 cmp      rcx, rax
00000001404c33ca je       0x1404c41f5
00000001404c33d0 cmp      byte ptr [rcx + 0x229], 4
00000001404c33d7 jb       0x1404c41f5
00000001404c33dd test     dword ptr [rcx + 0x22c], 0x800000
00000001404c33e7 je       0x1404c41f5
00000001404c33ed mov      edx, 0x42
00000001404c33f2 mov      eax, dword ptr [r9 + 0xc]
00000001404c33f6 lea      r8, [rip + 0x424c93]
00000001404c33fd mov      rcx, qword ptr [rcx + 0x218]
00000001404c3404 mov      dword ptr [rsp + 0x28], eax
00000001404c3408 mov      eax, dword ptr [r9 + 8]
00000001404c340c mov      r9d, dword ptr [r9 + 4]
00000001404c3410 mov      dword ptr [rsp + 0x20], eax
00000001404c3414 call     0x140001c34
00000001404c3419 jmp      0x1404c41f5
00000001404c341e mov      rcx, qword ptr [rip + 0x45cbdb]
00000001404c3425 lea      rax, [rip + 0x45cbd4]
00000001404c342c cmp      rcx, rax
00000001404c342f je       0x1404c41f5
00000001404c3435 cmp      byte ptr [rcx + 0x229], 4
00000001404c343c jb       0x1404c41f5
00000001404c3442 test     dword ptr [rcx + 0x22c], 0x800000
00000001404c344c je       0x1404c41f5
00000001404c3452 mov      edx, 0x41
00000001404c3457 mov      eax, dword ptr [r9 + 8]
00000001404c345b lea      r8, [rip + 0x424c2e]
00000001404c3462 mov      r9d, dword ptr [r9 + 4]
00000001404c3466 mov      rcx, qword ptr [rcx + 0x218]
00000001404c346d mov      dword ptr [rsp + 0x20], eax
00000001404c3471 call     0x140001bec
00000001404c3476 jmp      0x1404c41f5
00000001404c347b mov      rcx, qword ptr [rip + 0x45cb7e]
00000001404c3482 lea      rax, [rip + 0x45cb77]
00000001404c3489 cmp      rcx, rax
00000001404c348c je       0x1404c41f5
00000001404c3492 cmp      byte ptr [rcx + 0x229], 4
00000001404c3499 jb       0x1404c41f5
00000001404c349f test     dword ptr [rcx + 0x22c], 0x800000
00000001404c34a9 je       0x1404c41f5
00000001404c34af mov      edx, 0x40
00000001404c34b4 mov      eax, dword ptr [r9 + 8]
00000001404c34b8 lea      r8, [rip + 0x424bd1]
00000001404c34bf mov      r9d, dword ptr [r9 + 4]
00000001404c34c3 mov      rcx, qword ptr [rcx + 0x218]
00000001404c34ca mov      dword ptr [rsp + 0x20], eax
00000001404c34ce call     0x140001bec
00000001404c34d3 jmp      0x1404c41f5
00000001404c34d8 mov      rcx, qword ptr [rip + 0x45cb21]
00000001404c34df lea      rax, [rip + 0x45cb1a]
00000001404c34e6 cmp      rcx, rax
00000001404c34e9 je       0x1404c41f5
00000001404c34ef cmp      byte ptr [rcx + 0x229], 4
00000001404c34f6 jb       0x1404c41f5
00000001404c34fc test     dword ptr [rcx + 0x22c], 0x800000
00000001404c3506 je       0x1404c41f5
00000001404c350c mov      edx, 0x45
00000001404c3511 mov      rcx, qword ptr [rcx + 0x218]
00000001404c3518 lea      r8, [rip + 0x424b71]
00000001404c351f add      rsp, 0x48
00000001404c3523 jmp      0x140001b88
00000001404c3528 mov      eax, ecx
00000001404c352a sub      eax, 6
00000001404c352d je       0x1404c3680
00000001404c3533 sub      eax, 1
00000001404c3536 je       0x1404c35c6
00000001404c353c sub      eax, 1
00000001404c353f je       0x1404c3588
00000001404c3541 cmp      eax, 1
00000001404c3544 jne      0x1404c3dc9
00000001404c354a mov      rcx, qword ptr [rip + 0x45caaf]
00000001404c3551 lea      rax, [rip + 0x45caa8]
00000001404c3558 cmp      rcx, rax
00000001404c355b je       0x1404c41f5
00000001404c3561 cmp      byte ptr [rcx + 0x229], 4
00000001404c3568 jb       0x1404c41f5
00000001404c356e test     dword ptr [rcx + 0x22c], 0x800000
00000001404c3578 je       0x1404c41f5
00000001404c357e mov      edx, 0x49
00000001404c3583 jmp      0x1404c3457
00000001404c3588 mov      rcx, qword ptr [rip + 0x45ca71]
00000001404c358f lea      rax, [rip + 0x45ca6a]
00000001404c3596 cmp      rcx, rax
00000001404c3599 je       0x1404c41f5
00000001404c359f cmp      byte ptr [rcx + 0x229], 4
00000001404c35a6 jb       0x1404c41f5
00000001404c35ac test     dword ptr [rcx + 0x22c], 0x800000
00000001404c35b6 je       0x1404c41f5
00000001404c35bc mov      edx, 0x48
00000001404c35c1 jmp      0x1404c3457
00000001404c35c6 mov      rcx, qword ptr [rip + 0x45ca33]
00000001404c35cd lea      rax, [rip + 0x45ca2c]
00000001404c35d4 cmp      rcx, rax
00000001404c35d7 je       0x1404c41f5
00000001404c35dd cmp      byte ptr [rcx + 0x229], 4
00000001404c35e4 jb       0x1404c41f5
00000001404c35ea test     dword ptr [rcx + 0x22c], 0x800000
00000001404c35f4 je       0x1404c41f5
00000001404c35fa mov      edx, dword ptr [rdx + 0xc]
00000001404c35fd test     edx, edx
00000001404c35ff jne      0x1404c360a
00000001404c3601 lea      rax, [rip + 0x142e48]
00000001404c3608 jmp      0x1404c362d
00000001404c360a cmp      edx, 1
00000001404c360d jne      0x1404c3618
00000001404c360f lea      rax, [rip + 0x142e4a]
00000001404c3616 jmp      0x1404c362d
00000001404c3618 cmp      edx, 2
00000001404c361b lea      r8, [rip + 0x142e4e]
00000001404c3622 lea      rax, [rip + 0x142e57]
00000001404c3629 cmove    rax, r8
00000001404c362d mov      edx, dword ptr [r9 + 4]
00000001404c3631 test     edx, edx
00000001404c3633 jne      0x1404c363e
00000001404c3635 lea      r8, [rip + 0x137484]
00000001404c363c jmp      0x1404c3653
00000001404c363e cmp      edx, 1
00000001404c3641 lea      r10, [rip + 0x137488]
00000001404c3648 lea      r8, [rip + 0x137491]
00000001404c364f cmove    r8, r10
00000001404c3653 mov      rcx, qword ptr [rcx + 0x218]
00000001404c365a mov      edx, 0x47
00000001404c365f mov      qword ptr [rsp + 0x28], rax
00000001404c3664 mov      eax, dword ptr [r9 + 8]
00000001404c3668 mov      r9, r8
00000001404c366b lea      r8, [rip + 0x424a1e]
00000001404c3672 mov      dword ptr [rsp + 0x20], eax
00000001404c3676 call     0x1400fcc1c
00000001404c367b jmp      0x1404c41f5
00000001404c3680 mov      rcx, qword ptr [rip + 0x45c979]
00000001404c3687 lea      rax, [rip + 0x45c972]
00000001404c368e cmp      rcx, rax
00000001404c3691 je       0x1404c41f5
00000001404c3697 cmp      byte ptr [rcx + 0x229], 4
00000001404c369e jb       0x1404c41f5
00000001404c36a4 test     dword ptr [rcx + 0x22c], 0x800000
00000001404c36ae je       0x1404c41f5
00000001404c36b4 mov      edx, dword ptr [rdx + 8]
00000001404c36b7 cmp      edx, 0x1011
00000001404c36bd jne      0x1404c36c8
00000001404c36bf lea      rax, [rip + 0x18519a]
00000001404c36c6 jmp      0x1404c36e0
00000001404c36c8 cmp      edx, 0x1002
00000001404c36ce lea      r8, [rip + 0x18516b]
00000001404c36d5 lea      rax, [rip + 0x185174]
00000001404c36dc cmove    rax, r8
00000001404c36e0 mov      edx, 0x46
00000001404c36e5 mov      qword ptr [rsp + 0x20], rax
00000001404c36ea mov      r9d, dword ptr [r9 + 4]
00000001404c36ee lea      r8, [rip + 0x42499b]
00000001404c36f5 mov      rcx, qword ptr [rcx + 0x218]
00000001404c36fc call     0x14000ce54
00000001404c3701 jmp      0x1404c41f5
00000001404c3706 mov      rcx, qword ptr [rip + 0x45c8f3]
00000001404c370d lea      rax, [rip + 0x45c8ec]
00000001404c3714 cmp      rcx, rax
00000001404c3717 je       0x1404c41f5
00000001404c371d cmp      byte ptr [rcx + 0x229], 4
00000001404c3724 jb       0x1404c41f5
00000001404c372a test     dword ptr [rcx + 0x22c], 0x800000
00000001404c3734 je       0x1404c41f5
00000001404c373a mov      edx, 0x4a
00000001404c373f jmp      0x1404c33f2
00000001404c3744 mov      eax, ecx
00000001404c3746 sub      eax, 0xb
00000001404c3749 je       0x1404c39cf
00000001404c374f sub      eax, 1
00000001404c3752 je       0x1404c41f5
00000001404c3758 sub      eax, 1
00000001404c375b je       0x1404c3991
00000001404c3761 sub      eax, 1
00000001404c3764 je       0x1404c392a
00000001404c376a sub      eax, 1
00000001404c376d je       0x1404c38bd
00000001404c3773 sub      eax, 1
00000001404c3776 je       0x1404c3858
00000001404c377c sub      eax, 1
00000001404c377f je       0x1404c380f
00000001404c3785 sub      eax, 1
00000001404c3788 je       0x1404c37d1
00000001404c378a cmp      eax, 1
00000001404c378d jne      0x1404c3dc9
00000001404c3793 mov      rcx, qword ptr [rip + 0x45c866]
00000001404c379a lea      rax, [rip + 0x45c85f]
00000001404c37a1 cmp      rcx, rax
00000001404c37a4 je       0x1404c41f5
00000001404c37aa cmp      byte ptr [rcx + 0x229], 4
00000001404c37b1 jb       0x1404c41f5
00000001404c37b7 test     dword ptr [rcx + 0x22c], 0x800000
00000001404c37c1 je       0x1404c41f5
00000001404c37c7 mov      edx, 0x52
00000001404c37cc jmp      0x1404c41d6
00000001404c37d1 mov      rcx, qword ptr [rip + 0x45c828]
00000001404c37d8 lea      rax, [rip + 0x45c821]
00000001404c37df cmp      rcx, rax
00000001404c37e2 je       0x1404c41f5
00000001404c37e8 cmp      byte ptr [rcx + 0x229], 4
00000001404c37ef jb       0x1404c41f5
00000001404c37f5 test     dword ptr [rcx + 0x22c], 0x800000
00000001404c37ff je       0x1404c41f5
00000001404c3805 mov      edx, 0x51
00000001404c380a jmp      0x1404c41d6
00000001404c380f mov      rcx, qword ptr [rip + 0x45c7ea]
00000001404c3816 lea      rax, [rip + 0x45c7e3]
00000001404c381d cmp      rcx, rax
00000001404c3820 je       0x1404c41f5
00000001404c3826 cmp      byte ptr [rcx + 0x229], 4
00000001404c382d jb       0x1404c41f5
00000001404c3833 test     dword ptr [rcx + 0x22c], 0x800000
00000001404c383d je       0x1404c41f5
00000001404c3843 mov      r9d, dword ptr [r9 + 4]
00000001404c3847 mov      edx, 0x50
00000001404c384c mov      rcx, qword ptr [rcx + 0x218]
00000001404c3853 jmp      0x1404c3e0e
00000001404c3858 mov      rcx, qword ptr [rip + 0x45c7a1]
00000001404c385f lea      rax, [rip + 0x45c79a]
00000001404c3866 cmp      rcx, rax
00000001404c3869 je       0x1404c41f5
00000001404c386f cmp      byte ptr [rcx + 0x229], 4
00000001404c3876 jb       0x1404c41f5
00000001404c387c test     dword ptr [rcx + 0x22c], 0x800000
00000001404c3886 je       0x1404c41f5
00000001404c388c mov      eax, dword ptr [r9 + 0xc]
00000001404c3890 lea      r8, [rip + 0x4247f9]
00000001404c3897 mov      rcx, qword ptr [rcx + 0x218]
00000001404c389e mov      edx, 0x4f
00000001404c38a3 mov      dword ptr [rsp + 0x28], eax
00000001404c38a7 mov      eax, dword ptr [r9 + 8]
00000001404c38ab mov      r9d, dword ptr [r9 + 4]
00000001404c38af mov      dword ptr [rsp + 0x20], eax
00000001404c38b3 call     0x140001c34
00000001404c38b8 jmp      0x1404c41f5
00000001404c38bd mov      rcx, qword ptr [rip + 0x45c73c]
00000001404c38c4 lea      rax, [rip + 0x45c735]
00000001404c38cb cmp      rcx, rax
00000001404c38ce je       0x1404c41f5
00000001404c38d4 cmp      byte ptr [rcx + 0x229], 4
00000001404c38db jb       0x1404c41f5
00000001404c38e1 test     dword ptr [rcx + 0x22c], 0x800000
00000001404c38eb je       0x1404c41f5
00000001404c38f1 mov      eax, dword ptr [r9 + 0x10]
00000001404c38f5 lea      r8, [rip + 0x424794]
00000001404c38fc mov      rcx, qword ptr [rcx + 0x218]
00000001404c3903 mov      edx, 0x4e
00000001404c3908 mov      dword ptr [rsp + 0x30], eax
00000001404c390c mov      eax, dword ptr [r9 + 0xc]
00000001404c3910 mov      dword ptr [rsp + 0x28], eax
00000001404c3914 mov      eax, dword ptr [r9 + 8]
00000001404c3918 mov      r9d, dword ptr [r9 + 4]
00000001404c391c mov      dword ptr [rsp + 0x20], eax
00000001404c3920 call     0x140008794
00000001404c3925 jmp      0x1404c41f5
00000001404c392a mov      rcx, qword ptr [rip + 0x45c6cf]
00000001404c3931 lea      rax, [rip + 0x45c6c8]
00000001404c3938 cmp      rcx, rax
00000001404c393b je       0x1404c41f5
00000001404c3941 cmp      byte ptr [rcx + 0x229], 4
00000001404c3948 jb       0x1404c41f5
00000001404c394e test     dword ptr [rcx + 0x22c], 0x800000
00000001404c3958 je       0x1404c41f5
00000001404c395e mov      eax, dword ptr [rdx + 4]
00000001404c3961 lea      r9, [rip + 0x183378]
00000001404c3968 mov      rcx, qword ptr [rcx + 0x218]
00000001404c396f lea      rdx, [rip + 0x19558a]
00000001404c3976 test     eax, eax
00000001404c3978 lea      r8, [rip + 0x424711]
00000001404c397f cmovne   r9, rdx
00000001404c3983 mov      edx, 0x4d
00000001404c3988 add      rsp, 0x48
00000001404c398c jmp      0x140008874
00000001404c3991 mov      rcx, qword ptr [rip + 0x45c668]
00000001404c3998 lea      rax, [rip + 0x45c661]
00000001404c399f cmp      rcx, rax
00000001404c39a2 je       0x1404c41f5
00000001404c39a8 cmp      byte ptr [rcx + 0x229], 4
00000001404c39af jb       0x1404c41f5
00000001404c39b5 test     dword ptr [rcx + 0x22c], 0x800000
00000001404c39bf je       0x1404c41f5
00000001404c39c5 mov      edx, 0x4c
00000001404c39ca jmp      0x1404c34b4
00000001404c39cf mov      rcx, qword ptr [rip + 0x45c62a]
00000001404c39d6 lea      rax, [rip + 0x45c623]
00000001404c39dd cmp      rcx, rax
00000001404c39e0 je       0x1404c41f5
00000001404c39e6 cmp      byte ptr [rcx + 0x229], 4
00000001404c39ed jb       0x1404c41f5
00000001404c39f3 test     dword ptr [rcx + 0x22c], 0x800000
00000001404c39fd je       0x1404c41f5
00000001404c3a03 mov      edx, 0x4b
00000001404c3a08 jmp      0x1404c34b4
00000001404c3a0d mov      rcx, qword ptr [rip + 0x45c5ec]
00000001404c3a14 lea      rax, [rip + 0x45c5e5]
00000001404c3a1b cmp      rcx, rax
00000001404c3a1e je       0x1404c41f5
00000001404c3a24 cmp      byte ptr [rcx + 0x229], 4
00000001404c3a2b jb       0x1404c41f5
00000001404c3a31 test     dword ptr [rcx + 0x22c], 0x800000
00000001404c3a3b je       0x1404c41f5
00000001404c3a41 mov      edx, 0x53
00000001404c3a46 mov      r9d, dword ptr [r9 + 4]
00000001404c3a4a lea      r8, [rip + 0x42463f]
00000001404c3a51 mov      rcx, qword ptr [rcx + 0x218]
00000001404c3a58 add      rsp, 0x48
00000001404c3a5c jmp      0x140001bb0
00000001404c3a61 cmp      ecx, 0x1f
00000001404c3a64 ja       0x1404c3d7a
00000001404c3a6a je       0x1404c3d15
00000001404c3a70 cmp      ecx, 0x1a
00000001404c3a73 ja       0x1404c3be0
00000001404c3a79 je       0x1404c3ba2
00000001404c3a7f mov      eax, ecx
00000001404c3a81 sub      eax, 0x15
00000001404c3a84 je       0x1404c41f5
00000001404c3a8a sub      eax, 1
00000001404c3a8d je       0x1404c3b64
00000001404c3a93 sub      eax, 1
00000001404c3a96 je       0x1404c3b26
00000001404c3a9c sub      eax, 1
00000001404c3a9f je       0x1404c3ae8
00000001404c3aa1 cmp      eax, 1
00000001404c3aa4 jne      0x1404c3dc9
00000001404c3aaa mov      rcx, qword ptr [rip + 0x45c54f]
00000001404c3ab1 lea      rax, [rip + 0x45c548]
00000001404c3ab8 cmp      rcx, rax
00000001404c3abb je       0x1404c41f5
00000001404c3ac1 cmp      byte ptr [rcx + 0x229], 4
00000001404c3ac8 jb       0x1404c41f5
00000001404c3ace test     dword ptr [rcx + 0x22c], 0x800000
00000001404c3ad8 je       0x1404c41f5
00000001404c3ade mov      edx, 0x57
00000001404c3ae3 jmp      0x1404c41d6
00000001404c3ae8 mov      rcx, qword ptr [rip + 0x45c511]
00000001404c3aef lea      rax, [rip + 0x45c50a]
00000001404c3af6 cmp      rcx, rax
00000001404c3af9 je       0x1404c41f5
00000001404c3aff cmp      byte ptr [rcx + 0x229], 4
00000001404c3b06 jb       0x1404c41f5
00000001404c3b0c test     dword ptr [rcx + 0x22c], 0x800000
00000001404c3b16 je       0x1404c41f5
00000001404c3b1c mov      edx, 0x56
00000001404c3b21 jmp      0x1404c3511
00000001404c3b26 mov      rcx, qword ptr [rip + 0x45c4d3]
00000001404c3b2d lea      rax, [rip + 0x45c4cc]
00000001404c3b34 cmp      rcx, rax
00000001404c3b37 je       0x1404c41f5
00000001404c3b3d cmp      byte ptr [rcx + 0x229], 4
00000001404c3b44 jb       0x1404c41f5
00000001404c3b4a test     dword ptr [rcx + 0x22c], 0x800000
00000001404c3b54 je       0x1404c41f5
00000001404c3b5a mov      edx, 0x55
00000001404c3b5f jmp      0x1404c3511
00000001404c3b64 mov      rcx, qword ptr [rip + 0x45c495]
00000001404c3b6b lea      rax, [rip + 0x45c48e]
00000001404c3b72 cmp      rcx, rax
00000001404c3b75 je       0x1404c41f5
00000001404c3b7b cmp      byte ptr [rcx + 0x229], 4
00000001404c3b82 jb       0x1404c41f5
00000001404c3b88 test     dword ptr [rcx + 0x22c], 0x800000
00000001404c3b92 je       0x1404c41f5
00000001404c3b98 mov      edx, 0x54
00000001404c3b9d jmp      0x1404c41d6
00000001404c3ba2 mov      rcx, qword ptr [rip + 0x45c457]
00000001404c3ba9 lea      rax, [rip + 0x45c450]
00000001404c3bb0 cmp      rcx, rax
00000001404c3bb3 je       0x1404c41f5
00000001404c3bb9 cmp      byte ptr [rcx + 0x229], 4
00000001404c3bc0 jb       0x1404c41f5
00000001404c3bc6 test     dword ptr [rcx + 0x22c], 0x800000
00000001404c3bd0 je       0x1404c41f5
00000001404c3bd6 mov      edx, 0x58
00000001404c3bdb jmp      0x1404c33f2
00000001404c3be0 mov      eax, ecx
00000001404c3be2 sub      eax, 0x1b
00000001404c3be5 je       0x1404c3cbc
00000001404c3beb sub      eax, 1
00000001404c3bee je       0x1404c3c7e
00000001404c3bf4 sub      eax, 1
00000001404c3bf7 je       0x1404c3c40
00000001404c3bf9 cmp      eax, 1
00000001404c3bfc jne      0x1404c3dc9
00000001404c3c02 mov      rcx, qword ptr [rip + 0x45c3f7]
00000001404c3c09 lea      rax, [rip + 0x45c3f0]
00000001404c3c10 cmp      rcx, rax
00000001404c3c13 je       0x1404c41f5
00000001404c3c19 cmp      byte ptr [rcx + 0x229], 4
00000001404c3c20 jb       0x1404c41f5
00000001404c3c26 test     dword ptr [rcx + 0x22c], 0x800000
00000001404c3c30 je       0x1404c41f5
00000001404c3c36 mov      edx, 0x5c
00000001404c3c3b jmp      0x1404c41d6
00000001404c3c40 mov      rcx, qword ptr [rip + 0x45c3b9]
00000001404c3c47 lea      rax, [rip + 0x45c3b2]
00000001404c3c4e cmp      rcx, rax
00000001404c3c51 je       0x1404c41f5
00000001404c3c57 cmp      byte ptr [rcx + 0x229], 4
00000001404c3c5e jb       0x1404c41f5
00000001404c3c64 test     dword ptr [rcx + 0x22c], 0x800000
00000001404c3c6e je       0x1404c41f5
00000001404c3c74 mov      edx, 0x5b
00000001404c3c79 jmp      0x1404c3a46
00000001404c3c7e mov      rcx, qword ptr [rip + 0x45c37b]
00000001404c3c85 lea      rax, [rip + 0x45c374]
00000001404c3c8c cmp      rcx, rax
00000001404c3c8f je       0x1404c41f5
00000001404c3c95 cmp      byte ptr [rcx + 0x229], 4
00000001404c3c9c jb       0x1404c41f5
00000001404c3ca2 test     dword ptr [rcx + 0x22c], 0x800000
00000001404c3cac je       0x1404c41f5
00000001404c3cb2 mov      edx, 0x5a
00000001404c3cb7 jmp      0x1404c3511
00000001404c3cbc mov      rcx, qword ptr [rip + 0x45c33d]
00000001404c3cc3 lea      rax, [rip + 0x45c336]
00000001404c3cca cmp      rcx, rax
00000001404c3ccd je       0x1404c41f5
00000001404c3cd3 cmp      byte ptr [rcx + 0x229], 4
00000001404c3cda jb       0x1404c41f5
00000001404c3ce0 test     dword ptr [rcx + 0x22c], 0x800000
00000001404c3cea je       0x1404c41f5
00000001404c3cf0 cmp      dword ptr [rdx + 8], 0
00000001404c3cf4 lea      r8, [rip + 0x1951c5]
00000001404c3cfb lea      r10, [rip + 0x1951ce]
00000001404c3d02 mov      edx, 0x59
00000001404c3d07 cmovne   r10, r8
00000001404c3d0b mov      qword ptr [rsp + 0x20], r10
00000001404c3d10 jmp      0x1404c36ea
00000001404c3d15 mov      rcx, qword ptr [rip + 0x45c2e4]
00000001404c3d1c lea      rax, [rip + 0x45c2dd]
00000001404c3d23 cmp      rcx, rax
00000001404c3d26 je       0x1404c41f5
00000001404c3d2c cmp      byte ptr [rcx + 0x229], 4
00000001404c3d33 jb       0x1404c41f5
00000001404c3d39 test     dword ptr [rcx + 0x22c], 0x800000
00000001404c3d43 je       0x1404c41f5
00000001404c3d49 mov      edx, 0x5d
00000001404c3d4e mov      eax, dword ptr [r9 + 0xc]
00000001404c3d52 lea      r8, [rip + 0x424337]
00000001404c3d59 mov      rcx, qword ptr [rcx + 0x218]
00000001404c3d60 mov      dword ptr [rsp + 0x28], eax
00000001404c3d64 mov      eax, dword ptr [r9 + 8]
00000001404c3d68 mov      r9d, dword ptr [r9 + 4]
00000001404c3d6c mov      dword ptr [rsp + 0x20], eax
00000001404c3d70 call     0x140001c34
00000001404c3d75 jmp      0x1404c41f5
00000001404c3d7a mov      eax, ecx
00000001404c3d7c sub      eax, 0x20
00000001404c3d7f je       0x1404c41a9
00000001404c3d85 sub      eax, 1
00000001404c3d88 je       0x1404c4177
00000001404c3d8e sub      eax, 1
00000001404c3d91 je       0x1404c411e
00000001404c3d97 sub      eax, 1
00000001404c3d9a je       0x1404c40df
00000001404c3da0 sub      eax, 1
00000001404c3da3 je       0x1404c4066
00000001404c3da9 sub      eax, 1
00000001404c3dac je       0x1404c4014
00000001404c3db2 sub      eax, 1
00000001404c3db5 je       0x1404c3fd6
00000001404c3dbb sub      eax, 1
00000001404c3dbe je       0x1404c3e8b
00000001404c3dc4 cmp      eax, 1
00000001404c3dc7 je       0x1404c3e1e
00000001404c3dc9 mov      r10, qword ptr [rip + 0x45c230]
00000001404c3dd0 lea      rax, [rip + 0x45c229]
00000001404c3dd7 cmp      r10, rax
00000001404c3dda je       0x1404c41f5
00000001404c3de0 cmp      byte ptr [r10 + 0x169], 3
00000001404c3de8 jb       0x1404c41f5
00000001404c3dee test     dword ptr [r10 + 0x16c], 0x2000
00000001404c3df9 je       0x1404c41f5
00000001404c3dff mov      r9d, ecx
00000001404c3e02 mov      edx, 0x67
00000001404c3e07 mov      rcx, qword ptr [r10 + 0x158]
00000001404c3e0e lea      r8, [rip + 0x42427b]
00000001404c3e15 add      rsp, 0x48
00000001404c3e19 jmp      0x140001bb0
00000001404c3e1e mov      rcx, qword ptr [rip + 0x45c1db]
00000001404c3e25 lea      rax, [rip + 0x45c1d4]
00000001404c3e2c cmp      rcx, rax
00000001404c3e2f je       0x1404c41f5
00000001404c3e35 cmp      byte ptr [rcx + 0x229], 4
00000001404c3e3c jb       0x1404c41f5
00000001404c3e42 test     dword ptr [rcx + 0x22c], 0x800000
00000001404c3e4c je       0x1404c41f5
00000001404c3e52 mov      eax, dword ptr [r9 + 0x10]
00000001404c3e56 lea      r8, [rip + 0x424233]
00000001404c3e5d mov      rcx, qword ptr [rcx + 0x218]
00000001404c3e64 mov      edx, 0x66
00000001404c3e69 mov      dword ptr [rsp + 0x30], eax
00000001404c3e6d mov      eax, dword ptr [r9 + 0xc]
00000001404c3e71 mov      dword ptr [rsp + 0x28], eax
00000001404c3e75 mov      eax, dword ptr [r9 + 8]
00000001404c3e79 mov      r9d, dword ptr [r9 + 4]
00000001404c3e7d mov      dword ptr [rsp + 0x20], eax
00000001404c3e81 call     0x140008794
00000001404c3e86 jmp      0x1404c41f5
00000001404c3e8b mov      r10, qword ptr [rip + 0x45c16e]
00000001404c3e92 lea      rax, [rip + 0x45c167]
00000001404c3e99 cmp      r10, rax
00000001404c3e9c je       0x1404c41f5
00000001404c3ea2 cmp      byte ptr [r10 + 0x229], 4
00000001404c3eaa jb       0x1404c41f5
00000001404c3eb0 test     dword ptr [r10 + 0x22c], 0x800000
00000001404c3ebb je       0x1404c41f5
00000001404c3ec1 mov      eax, dword ptr [rdx + 4]
00000001404c3ec4 cmp      eax, 0x20
00000001404c3ec7 jne      0x1404c3ed5
00000001404c3ec9 lea      rcx, [rip + 0x197590]
00000001404c3ed0 jmp      0x1404c3f9e
00000001404c3ed5 cmp      eax, 0x21
00000001404c3ed8 jne      0x1404c3ee6
00000001404c3eda lea      rcx, [rip + 0x19758f]
00000001404c3ee1 jmp      0x1404c3f9e
00000001404c3ee6 cmp      eax, 0x22
00000001404c3ee9 jne      0x1404c3ef7
00000001404c3eeb lea      rcx, [rip + 0x19758e]
00000001404c3ef2 jmp      0x1404c3f9e
00000001404c3ef7 cmp      eax, 0x23
00000001404c3efa jne      0x1404c3f08
00000001404c3efc lea      rcx, [rip + 0x19758d]
00000001404c3f03 jmp      0x1404c3f9e
00000001404c3f08 cmp      eax, 0x24
00000001404c3f0b jne      0x1404c3f19
00000001404c3f0d lea      rcx, [rip + 0x19758c]
00000001404c3f14 jmp      0x1404c3f9e
00000001404c3f19 cmp      eax, 0x25
00000001404c3f1c jne      0x1404c3f27
00000001404c3f1e lea      rcx, [rip + 0x19758b]
00000001404c3f25 jmp      0x1404c3f9e
00000001404c3f27 cmp      eax, 0x26
00000001404c3f2a jne      0x1404c3f35
00000001404c3f2c lea      rcx, [rip + 0x19758d]
00000001404c3f33 jmp      0x1404c3f9e
00000001404c3f35 cmp      eax, 0x27
00000001404c3f38 jne      0x1404c3f43
00000001404c3f3a lea      rcx, [rip + 0x19758f]
00000001404c3f41 jmp      0x1404c3f9e
00000001404c3f43 cmp      eax, 0x28
00000001404c3f46 jne      0x1404c3f51
00000001404c3f48 lea      rcx, [rip + 0x197591]
00000001404c3f4f jmp      0x1404c3f9e
00000001404c3f51 cmp      eax, 0x2b
00000001404c3f54 jne      0x1404c3f5f
00000001404c3f56 lea      rcx, [rip + 0x197593]
00000001404c3f5d jmp      0x1404c3f9e
00000001404c3f5f cmp      eax, 0x2c
00000001404c3f62 jne      0x1404c3f6d
00000001404c3f64 lea      rcx, [rip + 0x197595]
00000001404c3f6b jmp      0x1404c3f9e
00000001404c3f6d cmp      eax, 0x30
00000001404c3f70 jne      0x1404c3f7b
00000001404c3f72 lea      rcx, [rip + 0x197597]
00000001404c3f79 jmp      0x1404c3f9e
00000001404c3f7b cmp      eax, 0x31
00000001404c3f7e jne      0x1404c3f89
00000001404c3f80 lea      rcx, [rip + 0x197599]
00000001404c3f87 jmp      0x1404c3f9e
00000001404c3f89 cmp      eax, 0x3c
00000001404c3f8c lea      rdx, [rip + 0x19759d]
00000001404c3f93 lea      rcx, [rip + 0x194f16]
00000001404c3f9a cmove    rcx, rdx
00000001404c3f9e mov      eax, dword ptr [r9 + 0x10]
00000001404c3fa2 lea      r8, [rip + 0x4240e7]
00000001404c3fa9 mov      dword ptr [rsp + 0x30], eax
00000001404c3fad mov      edx, 0x65
00000001404c3fb2 mov      eax, dword ptr [r9 + 0xc]
00000001404c3fb6 mov      dword ptr [rsp + 0x28], eax
00000001404c3fba mov      eax, dword ptr [r9 + 8]
00000001404c3fbe mov      r9, rcx
00000001404c3fc1 mov      rcx, qword ptr [r10 + 0x218]
00000001404c3fc8 mov      dword ptr [rsp + 0x20], eax
00000001404c3fcc call     0x14001c670
00000001404c3fd1 jmp      0x1404c41f5
00000001404c3fd6 mov      rcx, qword ptr [rip + 0x45c023]
00000001404c3fdd lea      rax, [rip + 0x45c01c]
00000001404c3fe4 cmp      rcx, rax
00000001404c3fe7 je       0x1404c41f5
00000001404c3fed cmp      byte ptr [rcx + 0x229], 4
00000001404c3ff4 jb       0x1404c41f5
00000001404c3ffa test     dword ptr [rcx + 0x22c], 0x800000
00000001404c4004 je       0x1404c41f5
00000001404c400a mov      edx, 0x64
00000001404c400f jmp      0x1404c3511
00000001404c4014 mov      rcx, qword ptr [rip + 0x45bfe5]
00000001404c401b lea      rax, [rip + 0x45bfde]
00000001404c4022 cmp      rcx, rax
00000001404c4025 je       0x1404c41f5
00000001404c402b cmp      byte ptr [rcx + 0x229], 4
00000001404c4032 jb       0x1404c41f5
00000001404c4038 test     dword ptr [rcx + 0x22c], 0x800000
00000001404c4042 je       0x1404c41f5
00000001404c4048 cmp      dword ptr [r9 + 0xc], 0
00000001404c404d lea      rdx, [rip + 0x13882c]
00000001404c4054 lea      r8, [rip + 0x138815]
00000001404c405b cmove    r8, rdx
00000001404c405f mov      edx, 0x63
00000001404c4064 jmp      0x1404c40b6
00000001404c4066 mov      rcx, qword ptr [rip + 0x45bf93]
00000001404c406d lea      rax, [rip + 0x45bf8c]
00000001404c4074 cmp      rcx, rax
00000001404c4077 je       0x1404c41f5
00000001404c407d cmp      byte ptr [rcx + 0x229], 4
00000001404c4084 jb       0x1404c41f5
00000001404c408a test     dword ptr [rcx + 0x22c], 0x800000
00000001404c4094 je       0x1404c41f5
00000001404c409a cmp      dword ptr [r9 + 0xc], 0
00000001404c409f lea      rdx, [rip + 0x1387da]
00000001404c40a6 lea      r8, [rip + 0x1387c3]
00000001404c40ad cmove    r8, rdx
00000001404c40b1 mov      edx, 0x62
00000001404c40b6 mov      eax, dword ptr [r9 + 8]
00000001404c40ba mov      r9d, dword ptr [r9 + 4]
00000001404c40be mov      rcx, qword ptr [rcx + 0x218]
00000001404c40c5 mov      qword ptr [rsp + 0x28], r8
00000001404c40ca lea      r8, [rip + 0x423fbf]
00000001404c40d1 mov      dword ptr [rsp + 0x20], eax
00000001404c40d5 call     0x14003e444
00000001404c40da jmp      0x1404c41f5
00000001404c40df mov      rcx, qword ptr [rip + 0x45bf1a]
00000001404c40e6 lea      rax, [rip + 0x45bf13]
00000001404c40ed cmp      rcx, rax
00000001404c40f0 je       0x1404c41f5
00000001404c40f6 cmp      byte ptr [rcx + 0x229], 4
00000001404c40fd jb       0x1404c41f5
00000001404c4103 test     dword ptr [rcx + 0x22c], 0x800000
00000001404c410d je       0x1404c41f5
00000001404c4113 cmp      dword ptr [rdx + 8], 0
00000001404c4117 mov      edx, 0x61
00000001404c411c jmp      0x1404c415b
00000001404c411e mov      rcx, qword ptr [rip + 0x45bedb]
00000001404c4125 lea      rax, [rip + 0x45bed4]
00000001404c412c cmp      rcx, rax
00000001404c412f je       0x1404c41f5
00000001404c4135 cmp      byte ptr [rcx + 0x229], 4
00000001404c413c jb       0x1404c41f5
00000001404c4142 test     dword ptr [rcx + 0x22c], 0x800000
00000001404c414c je       0x1404c41f5
00000001404c4152 cmp      dword ptr [rdx + 8], 0
00000001404c4156 mov      edx, 0x60
00000001404c415b lea      r8, [rip + 0x194d5e]
00000001404c4162 lea      r10, [rip + 0x194d67]
00000001404c4169 cmovne   r8, r10
00000001404c416d mov      qword ptr [rsp + 0x20], r8
00000001404c4172 jmp      0x1404c36ea
00000001404c4177 mov      rcx, qword ptr [rip + 0x45be82]
00000001404c417e lea      rax, [rip + 0x45be7b]
00000001404c4185 cmp      rcx, rax
00000001404c4188 je       0x1404c41f5
00000001404c418a cmp      byte ptr [rcx + 0x229], 4
00000001404c4191 jb       0x1404c41f5
00000001404c4193 test     dword ptr [rcx + 0x22c], 0x800000
00000001404c419d je       0x1404c41f5
00000001404c419f mov      edx, 0x5f
00000001404c41a4 jmp      0x1404c3d4e
00000001404c41a9 mov      rcx, qword ptr [rip + 0x45be50]
00000001404c41b0 lea      rax, [rip + 0x45be49]
00000001404c41b7 cmp      rcx, rax
00000001404c41ba je       0x1404c41f5
00000001404c41bc cmp      byte ptr [rcx + 0x229], 4
00000001404c41c3 jb       0x1404c41f5
00000001404c41c5 test     dword ptr [rcx + 0x22c], 0x800000
00000001404c41cf je       0x1404c41f5
00000001404c41d1 mov      edx, 0x5e
00000001404c41d6 mov      eax, dword ptr [r9 + 8]
00000001404c41da lea      r8, [rip + 0x423eaf]
00000001404c41e1 mov      r9d, dword ptr [r9 + 4]
00000001404c41e5 mov      rcx, qword ptr [rcx + 0x218]
00000001404c41ec mov      dword ptr [rsp + 0x20], eax
00000001404c41f0 call     0x140001bec
00000001404c41f5 add      rsp, 0x48
00000001404c41f9 ret      