0000000140506a3c mov      qword ptr [rsp + 0x10], rbx
0000000140506a41 mov      qword ptr [rsp + 0x18], rbp
0000000140506a46 mov      qword ptr [rsp + 0x20], rsi
0000000140506a4b push     rdi
0000000140506a4c push     r12
0000000140506a4e push     r13
0000000140506a50 push     r14
0000000140506a52 push     r15
0000000140506a54 sub      rsp, 0x30
0000000140506a58 mov      rax, qword ptr [rcx]
0000000140506a5b mov      edx, 0x8524
0000000140506a60 mov      rbp, qword ptr [rcx + 0x1390]
0000000140506a67 mov      rbx, rcx
0000000140506a6a mov      rdi, qword ptr [rax]
0000000140506a6d mov      rax, qword ptr [rdi + 0x20]
0000000140506a71 call     qword ptr [rip + 0x17d881]
0000000140506a77 mov      esi, eax
0000000140506a79 mov      rcx, qword ptr [rip + 0x419580]
0000000140506a80 lea      r12, [rip + 0x419579]
0000000140506a87 lea      r13, [rip + 0x3fa202]
0000000140506a8e mov      r14b, 1
0000000140506a91 mov      r15d, 8
0000000140506a97 cmp      rcx, r12
0000000140506a9a je       0x140506bc2
0000000140506aa0 cmp      byte ptr [rcx + 0x169], r14b
0000000140506aa7 jb       0x140506aca
0000000140506aa9 mov      edx, dword ptr [rcx + 0x16c]
0000000140506aaf test     r15b, dl
0000000140506ab2 je       0x140506aca
0000000140506ab4 mov      rcx, qword ptr [rcx + 0x158]
0000000140506abb lea      edx, [r15 + 0x39]
0000000140506abf mov      r9d, eax
0000000140506ac2 mov      r8, r13
0000000140506ac5 call     0x140001bb0
0000000140506aca mov      rax, qword ptr [rip + 0x41952f]
0000000140506ad1 cmp      rax, r12
0000000140506ad4 je       0x140506bc2
0000000140506ada cmp      byte ptr [rax + 0x169], r14b
0000000140506ae1 jb       0x140506b1e
0000000140506ae3 mov      eax, dword ptr [rax + 0x16c]
0000000140506ae9 test     r15b, al
0000000140506aec je       0x140506b1e
0000000140506aee mov      rax, qword ptr [rdi + 0x20]
0000000140506af2 mov      edx, 0x8520
0000000140506af7 mov      rcx, rbx
0000000140506afa call     qword ptr [rip + 0x17d7f8]
0000000140506b00 mov      rcx, qword ptr [rip + 0x4194f9]
0000000140506b07 mov      edx, 0x42
0000000140506b0c mov      r9d, eax
0000000140506b0f mov      r8, r13
0000000140506b12 mov      rcx, qword ptr [rcx + 0x158]
0000000140506b19 call     0x140001bb0
0000000140506b1e mov      rax, qword ptr [rip + 0x4194db]
0000000140506b25 cmp      rax, r12
0000000140506b28 je       0x140506bc2
0000000140506b2e cmp      byte ptr [rax + 0x169], r14b
0000000140506b35 jb       0x140506b72
0000000140506b37 mov      eax, dword ptr [rax + 0x16c]
0000000140506b3d test     r15b, al
0000000140506b40 je       0x140506b72
0000000140506b42 mov      rax, qword ptr [rdi + 0x20]
0000000140506b46 mov      edx, 0x8400
0000000140506b4b mov      rcx, rbx
0000000140506b4e call     qword ptr [rip + 0x17d7a4]
0000000140506b54 mov      rcx, qword ptr [rip + 0x4194a5]
0000000140506b5b mov      edx, 0x43
0000000140506b60 mov      r9d, eax
0000000140506b63 mov      r8, r13
0000000140506b66 mov      rcx, qword ptr [rcx + 0x158]
0000000140506b6d call     0x140001bb0
0000000140506b72 mov      rax, qword ptr [rip + 0x419487]
0000000140506b79 cmp      rax, r12
0000000140506b7c je       0x140506bc2
0000000140506b7e cmp      byte ptr [rax + 0x169], r14b
0000000140506b85 jb       0x140506bc2
0000000140506b87 mov      eax, dword ptr [rax + 0x16c]
0000000140506b8d test     r15b, al
0000000140506b90 je       0x140506bc2
0000000140506b92 mov      rax, qword ptr [rdi + 0x20]
0000000140506b96 mov      edx, 0x8404
0000000140506b9b mov      rcx, rbx
0000000140506b9e call     qword ptr [rip + 0x17d754]
0000000140506ba4 mov      rcx, qword ptr [rip + 0x419455]
0000000140506bab mov      edx, 0x44
0000000140506bb0 mov      r9d, eax
0000000140506bb3 mov      r8, r13
0000000140506bb6 mov      rcx, qword ptr [rcx + 0x158]
0000000140506bbd call     0x140001bb0
0000000140506bc2 test     esi, esi
0000000140506bc4 je       0x140507117
0000000140506bca mov      rax, qword ptr [rip + 0x41942f]
0000000140506bd1 cmp      rax, r12
0000000140506bd4 je       0x140506cc2
0000000140506bda cmp      byte ptr [rax + 0x169], r14b
0000000140506be1 jb       0x140506c1e
0000000140506be3 mov      eax, dword ptr [rax + 0x16c]
0000000140506be9 test     r15b, al
0000000140506bec je       0x140506c1e
0000000140506bee mov      rax, qword ptr [rdi + 0x20]
0000000140506bf2 mov      edx, 0x8c34
0000000140506bf7 mov      rcx, rbx
0000000140506bfa call     qword ptr [rip + 0x17d6f8]
0000000140506c00 mov      rcx, qword ptr [rip + 0x4193f9]
0000000140506c07 mov      edx, 0x45
0000000140506c0c mov      r9d, eax
0000000140506c0f mov      r8, r13
0000000140506c12 mov      rcx, qword ptr [rcx + 0x158]
0000000140506c19 call     0x140001bb0
0000000140506c1e mov      rax, qword ptr [rip + 0x4193db]
0000000140506c25 cmp      rax, r12
0000000140506c28 je       0x140506cc2
0000000140506c2e cmp      byte ptr [rax + 0x169], r14b
0000000140506c35 jb       0x140506c72
0000000140506c37 mov      eax, dword ptr [rax + 0x16c]
0000000140506c3d test     r15b, al
0000000140506c40 je       0x140506c72
0000000140506c42 mov      rax, qword ptr [rdi + 0x20]
0000000140506c46 mov      edx, 0x9034
0000000140506c4b mov      rcx, rbx
0000000140506c4e call     qword ptr [rip + 0x17d6a4]
0000000140506c54 mov      rcx, qword ptr [rip + 0x4193a5]
0000000140506c5b mov      edx, 0x46
0000000140506c60 mov      r9d, eax
0000000140506c63 mov      r8, r13
0000000140506c66 mov      rcx, qword ptr [rcx + 0x158]
0000000140506c6d call     0x140001bb0
0000000140506c72 mov      rax, qword ptr [rip + 0x419387]
0000000140506c79 cmp      rax, r12
0000000140506c7c je       0x140506cc2
0000000140506c7e cmp      byte ptr [rax + 0x169], r14b
0000000140506c85 jb       0x140506cc2
0000000140506c87 mov      eax, dword ptr [rax + 0x16c]
0000000140506c8d test     r15b, al
0000000140506c90 je       0x140506cc2
0000000140506c92 mov      rax, qword ptr [rdi + 0x20]
0000000140506c96 mov      edx, 0x9030
0000000140506c9b mov      rcx, rbx
0000000140506c9e call     qword ptr [rip + 0x17d654]
0000000140506ca4 mov      rcx, qword ptr [rip + 0x419355]
0000000140506cab mov      edx, 0x47
0000000140506cb0 mov      r9d, eax
0000000140506cb3 mov      r8, r13
0000000140506cb6 mov      rcx, qword ptr [rcx + 0x158]
0000000140506cbd call     0x140001bb0
0000000140506cc2 test     r14b, sil
0000000140506cc5 je       0x140506d6f
0000000140506ccb mov      rax, qword ptr [rip + 0x41932e]
0000000140506cd2 cmp      rax, r12
0000000140506cd5 je       0x140506d6f
0000000140506cdb cmp      byte ptr [rax + 0x169], r14b
0000000140506ce2 jb       0x140506d1f
0000000140506ce4 mov      eax, dword ptr [rax + 0x16c]
0000000140506cea test     r15b, al
0000000140506ced je       0x140506d1f
0000000140506cef mov      rax, qword ptr [rdi + 0x20]
0000000140506cf3 mov      edx, 0x9430
0000000140506cf8 mov      rcx, rbx
0000000140506cfb call     qword ptr [rip + 0x17d5f7]
0000000140506d01 mov      rcx, qword ptr [rip + 0x4192f8]
0000000140506d08 mov      edx, 0x48
0000000140506d0d mov      r9d, eax
0000000140506d10 mov      r8, r13
0000000140506d13 mov      rcx, qword ptr [rcx + 0x158]
0000000140506d1a call     0x140001bb0
0000000140506d1f mov      rax, qword ptr [rip + 0x4192da]
0000000140506d26 cmp      rax, r12
0000000140506d29 je       0x140506d6f
0000000140506d2b cmp      byte ptr [rax + 0x169], r14b
0000000140506d32 jb       0x140506d6f
0000000140506d34 mov      eax, dword ptr [rax + 0x16c]
0000000140506d3a test     r15b, al
0000000140506d3d je       0x140506d6f
0000000140506d3f mov      rax, qword ptr [rdi + 0x20]
0000000140506d43 mov      edx, 0x9434
0000000140506d48 mov      rcx, rbx
0000000140506d4b call     qword ptr [rip + 0x17d5a7]
0000000140506d51 mov      rcx, qword ptr [rip + 0x4192a8]
0000000140506d58 mov      edx, 0x49
0000000140506d5d mov      r9d, eax
0000000140506d60 mov      r8, r13
0000000140506d63 mov      rcx, qword ptr [rcx + 0x158]
0000000140506d6a call     0x140001bb0
0000000140506d6f test     sil, 2
0000000140506d73 je       0x140506fc1
0000000140506d79 mov      rax, qword ptr [rip + 0x419280]
0000000140506d80 cmp      rax, r12
0000000140506d83 je       0x140506fc1
0000000140506d89 cmp      byte ptr [rax + 0x169], r14b
0000000140506d90 jb       0x140506dcd
0000000140506d92 mov      eax, dword ptr [rax + 0x16c]
0000000140506d98 test     r15b, al
0000000140506d9b je       0x140506dcd
0000000140506d9d mov      rax, qword ptr [rdi + 0x20]
0000000140506da1 mov      edx, 0x9d30
0000000140506da6 mov      rcx, rbx
0000000140506da9 call     qword ptr [rip + 0x17d549]
0000000140506daf mov      rcx, qword ptr [rip + 0x41924a]
0000000140506db6 mov      edx, 0x4a
0000000140506dbb mov      r9d, eax
0000000140506dbe mov      r8, r13
0000000140506dc1 mov      rcx, qword ptr [rcx + 0x158]
0000000140506dc8 call     0x140001bb0
0000000140506dcd mov      rax, qword ptr [rip + 0x41922c]
0000000140506dd4 cmp      rax, r12
0000000140506dd7 je       0x140506fc1
0000000140506ddd cmp      byte ptr [rax + 0x169], r14b
0000000140506de4 jb       0x140506e21
0000000140506de6 mov      eax, dword ptr [rax + 0x16c]
0000000140506dec test     r15b, al
0000000140506def je       0x140506e21
0000000140506df1 mov      rax, qword ptr [rdi + 0x20]
0000000140506df5 mov      edx, 0x9d2c
0000000140506dfa mov      rcx, rbx
0000000140506dfd call     qword ptr [rip + 0x17d4f5]
0000000140506e03 mov      rcx, qword ptr [rip + 0x4191f6]
0000000140506e0a mov      edx, 0x4b
0000000140506e0f mov      r9d, eax
0000000140506e12 mov      r8, r13
0000000140506e15 mov      rcx, qword ptr [rcx + 0x158]
0000000140506e1c call     0x140001bb0
0000000140506e21 mov      rax, qword ptr [rip + 0x4191d8]
0000000140506e28 cmp      rax, r12
0000000140506e2b je       0x140506fc1
0000000140506e31 cmp      byte ptr [rax + 0x169], r14b
0000000140506e38 jb       0x140506e75
0000000140506e3a mov      eax, dword ptr [rax + 0x16c]
0000000140506e40 test     r15b, al
0000000140506e43 je       0x140506e75
0000000140506e45 mov      rax, qword ptr [rdi + 0x20]
0000000140506e49 mov      edx, 0x9d00
0000000140506e4e mov      rcx, rbx
0000000140506e51 call     qword ptr [rip + 0x17d4a1]
0000000140506e57 mov      rcx, qword ptr [rip + 0x4191a2]
0000000140506e5e mov      edx, 0x4c
0000000140506e63 mov      r9d, eax
0000000140506e66 mov      r8, r13
0000000140506e69 mov      rcx, qword ptr [rcx + 0x158]
0000000140506e70 call     0x140001bb0
0000000140506e75 mov      rax, qword ptr [rip + 0x419184]
0000000140506e7c cmp      rax, r12
0000000140506e7f je       0x140506fc1
0000000140506e85 cmp      byte ptr [rax + 0x169], r14b
0000000140506e8c jb       0x140506ec9
0000000140506e8e mov      eax, dword ptr [rax + 0x16c]
0000000140506e94 test     r15b, al
0000000140506e97 je       0x140506ec9
0000000140506e99 mov      rax, qword ptr [rdi + 0x20]
0000000140506e9d mov      edx, 0x9d04
0000000140506ea2 mov      rcx, rbx
0000000140506ea5 call     qword ptr [rip + 0x17d44d]
0000000140506eab mov      rcx, qword ptr [rip + 0x41914e]
0000000140506eb2 mov      edx, 0x4d
0000000140506eb7 mov      r9d, eax
0000000140506eba mov      r8, r13
0000000140506ebd mov      rcx, qword ptr [rcx + 0x158]
0000000140506ec4 call     0x140001bb0
0000000140506ec9 mov      rax, qword ptr [rip + 0x419130]
0000000140506ed0 cmp      rax, r12
0000000140506ed3 je       0x140506fc1
0000000140506ed9 cmp      byte ptr [rax + 0x169], r14b
0000000140506ee0 jb       0x140506f1d
0000000140506ee2 mov      eax, dword ptr [rax + 0x16c]
0000000140506ee8 test     r15b, al
0000000140506eeb je       0x140506f1d
0000000140506eed mov      rax, qword ptr [rdi + 0x20]
0000000140506ef1 mov      edx, 0x9d10
0000000140506ef6 mov      rcx, rbx
0000000140506ef9 call     qword ptr [rip + 0x17d3f9]
0000000140506eff mov      rcx, qword ptr [rip + 0x4190fa]
0000000140506f06 mov      edx, 0x4e
0000000140506f0b mov      r9d, eax
0000000140506f0e mov      r8, r13
0000000140506f11 mov      rcx, qword ptr [rcx + 0x158]
0000000140506f18 call     0x140001bb0
0000000140506f1d mov      rax, qword ptr [rip + 0x4190dc]
0000000140506f24 cmp      rax, r12
0000000140506f27 je       0x140506fc1
0000000140506f2d cmp      byte ptr [rax + 0x169], r14b
0000000140506f34 jb       0x140506f71
0000000140506f36 mov      eax, dword ptr [rax + 0x16c]
0000000140506f3c test     r15b, al
0000000140506f3f je       0x140506f71
0000000140506f41 mov      rax, qword ptr [rdi + 0x20]
0000000140506f45 mov      edx, 0x9d14
0000000140506f4a mov      rcx, rbx
0000000140506f4d call     qword ptr [rip + 0x17d3a5]
0000000140506f53 mov      rcx, qword ptr [rip + 0x4190a6]
0000000140506f5a mov      edx, 0x4f
0000000140506f5f mov      r9d, eax
0000000140506f62 mov      r8, r13
0000000140506f65 mov      rcx, qword ptr [rcx + 0x158]
0000000140506f6c call     0x140001bb0
0000000140506f71 mov      rax, qword ptr [rip + 0x419088]
0000000140506f78 cmp      rax, r12
0000000140506f7b je       0x140506fc1
0000000140506f7d cmp      byte ptr [rax + 0x169], r14b
0000000140506f84 jb       0x140506fc1
0000000140506f86 mov      eax, dword ptr [rax + 0x16c]
0000000140506f8c test     r15b, al
0000000140506f8f je       0x140506fc1
0000000140506f91 mov      rax, qword ptr [rdi + 0x20]
0000000140506f95 mov      edx, 0x9d28
0000000140506f9a mov      rcx, rbx
0000000140506f9d call     qword ptr [rip + 0x17d355]
0000000140506fa3 mov      rcx, qword ptr [rip + 0x419056]
0000000140506faa mov      edx, 0x50
0000000140506faf mov      r9d, eax
0000000140506fb2 mov      r8, r13
0000000140506fb5 mov      rcx, qword ptr [rcx + 0x158]
0000000140506fbc call     0x140001bb0
0000000140506fc1 test     sil, 4
0000000140506fc5 je       0x140507117
0000000140506fcb mov      rax, qword ptr [rip + 0x41902e]
0000000140506fd2 cmp      rax, r12
0000000140506fd5 je       0x140507117
0000000140506fdb cmp      byte ptr [rax + 0x169], r14b
0000000140506fe2 jb       0x14050701f
0000000140506fe4 mov      eax, dword ptr [rax + 0x16c]
0000000140506fea test     r15b, al
0000000140506fed je       0x14050701f
0000000140506fef mov      rax, qword ptr [rdi + 0x20]
0000000140506ff3 mov      edx, 0x9bf4
0000000140506ff8 mov      rcx, rbx
0000000140506ffb call     qword ptr [rip + 0x17d2f7]
0000000140507001 mov      rcx, qword ptr [rip + 0x418ff8]
0000000140507008 mov      edx, 0x51
000000014050700d mov      r9d, eax
0000000140507010 mov      r8, r13
0000000140507013 mov      rcx, qword ptr [rcx + 0x158]
000000014050701a call     0x140001bb0
000000014050701f mov      rax, qword ptr [rip + 0x418fda]
0000000140507026 cmp      rax, r12
0000000140507029 je       0x140507117
000000014050702f cmp      byte ptr [rax + 0x169], r14b
0000000140507036 jb       0x140507073
0000000140507038 mov      eax, dword ptr [rax + 0x16c]
000000014050703e test     r15b, al
0000000140507041 je       0x140507073
0000000140507043 mov      rax, qword ptr [rdi + 0x20]
0000000140507047 mov      edx, 0x9bf0
000000014050704c mov      rcx, rbx
000000014050704f call     qword ptr [rip + 0x17d2a3]
0000000140507055 mov      rcx, qword ptr [rip + 0x418fa4]
000000014050705c mov      edx, 0x52
0000000140507061 mov      r9d, eax
0000000140507064 mov      r8, r13
0000000140507067 mov      rcx, qword ptr [rcx + 0x158]
000000014050706e call     0x140001bb0
0000000140507073 mov      rax, qword ptr [rip + 0x418f86]
000000014050707a cmp      rax, r12
000000014050707d je       0x140507117
0000000140507083 cmp      byte ptr [rax + 0x169], r14b
000000014050708a jb       0x1405070c7
000000014050708c mov      eax, dword ptr [rax + 0x16c]
0000000140507092 test     r15b, al
0000000140507095 je       0x1405070c7
0000000140507097 mov      rax, qword ptr [rdi + 0x20]
000000014050709b mov      edx, 0x9cf4
00000001405070a0 mov      rcx, rbx
00000001405070a3 call     qword ptr [rip + 0x17d24f]
00000001405070a9 mov      rcx, qword ptr [rip + 0x418f50]
00000001405070b0 mov      edx, 0x53
00000001405070b5 mov      r9d, eax
00000001405070b8 mov      r8, r13
00000001405070bb mov      rcx, qword ptr [rcx + 0x158]
00000001405070c2 call     0x140001bb0
00000001405070c7 mov      rax, qword ptr [rip + 0x418f32]
00000001405070ce cmp      rax, r12
00000001405070d1 je       0x140507117
00000001405070d3 cmp      byte ptr [rax + 0x169], r14b
00000001405070da jb       0x140507117
00000001405070dc mov      eax, dword ptr [rax + 0x16c]
00000001405070e2 test     r15b, al
00000001405070e5 je       0x140507117
00000001405070e7 mov      rax, qword ptr [rdi + 0x20]
00000001405070eb mov      edx, 0x9cf0
00000001405070f0 mov      rcx, rbx
00000001405070f3 call     qword ptr [rip + 0x17d1ff]
00000001405070f9 mov      rcx, qword ptr [rip + 0x418f00]
0000000140507100 mov      edx, 0x54
0000000140507105 mov      r9d, eax
0000000140507108 mov      r8, r13
000000014050710b mov      rcx, qword ptr [rcx + 0x158]
0000000140507112 call     0x140001bb0
0000000140507117 test     r15b, sil
000000014050711a je       0x140507260
0000000140507120 mov      edx, 7
0000000140507125 mov      rcx, rbx
0000000140507128 call     0x14036c07c
000000014050712d test     al, al
000000014050712f jne      0x140507144
0000000140507131 mov      edx, r15d
0000000140507134 mov      rcx, rbx
0000000140507137 call     0x14036c07c
000000014050713c test     al, al
000000014050713e je       0x1405071e8
0000000140507144 mov      rax, qword ptr [rip + 0x418eb5]
000000014050714b cmp      rax, r12
000000014050714e je       0x1405071e8
0000000140507154 cmp      byte ptr [rax + 0x169], r14b
000000014050715b jb       0x140507198
000000014050715d mov      eax, dword ptr [rax + 0x16c]
0000000140507163 test     r15b, al
0000000140507166 je       0x140507198
0000000140507168 mov      rax, qword ptr [rdi + 0x20]
000000014050716c mov      edx, 0xa3f0
0000000140507171 mov      rcx, rbx
0000000140507174 call     qword ptr [rip + 0x17d17e]
000000014050717a mov      rcx, qword ptr [rip + 0x418e7f]
0000000140507181 mov      edx, 0x55
0000000140507186 mov      r9d, eax
0000000140507189 mov      r8, r13
000000014050718c mov      rcx, qword ptr [rcx + 0x158]
0000000140507193 call     0x140001bb0
0000000140507198 mov      rax, qword ptr [rip + 0x418e61]
000000014050719f cmp      rax, r12
00000001405071a2 je       0x1405071e8
00000001405071a4 cmp      byte ptr [rax + 0x169], r14b
00000001405071ab jb       0x1405071e8
00000001405071ad mov      eax, dword ptr [rax + 0x16c]
00000001405071b3 test     r15b, al
00000001405071b6 je       0x1405071e8
00000001405071b8 mov      rax, qword ptr [rdi + 0x20]
00000001405071bc mov      edx, 0xa3f4
00000001405071c1 mov      rcx, rbx
00000001405071c4 call     qword ptr [rip + 0x17d12e]
00000001405071ca mov      rcx, qword ptr [rip + 0x418e2f]
00000001405071d1 mov      edx, 0x56
00000001405071d6 mov      r9d, eax
00000001405071d9 mov      r8, r13
00000001405071dc mov      rcx, qword ptr [rcx + 0x158]
00000001405071e3 call     0x140001bb0
00000001405071e8 mov      edx, 0xb
00000001405071ed mov      rcx, rbx
00000001405071f0 call     0x14036c07c
00000001405071f5 test     al, al
00000001405071f7 jne      0x14050722c
00000001405071f9 mov      edx, 0x10
00000001405071fe mov      rcx, rbx
0000000140507201 call     0x14036c07c
0000000140507206 test     al, al
0000000140507208 jne      0x14050722c
000000014050720a mov      edx, 0xd
000000014050720f mov      rcx, rbx
0000000140507212 call     0x14036c07c
0000000140507217 test     al, al
0000000140507219 jne      0x14050722c
000000014050721b mov      edx, 0xc
0000000140507220 mov      rcx, rbx
0000000140507223 call     0x14036c07c
0000000140507228 test     al, al
000000014050722a je       0x140507260
000000014050722c mov      rcx, qword ptr [rip + 0x418dcd]
0000000140507233 cmp      rcx, r12
0000000140507236 je       0x140507260
0000000140507238 cmp      byte ptr [rcx + 0x169], r14b
000000014050723f jb       0x140507260
0000000140507241 mov      eax, dword ptr [rcx + 0x16c]
0000000140507247 test     r15b, al
000000014050724a je       0x140507260
000000014050724c mov      rcx, qword ptr [rcx + 0x158]
0000000140507253 mov      edx, 0x59
0000000140507258 mov      r8, r13
000000014050725b call     0x140001b88
0000000140507260 test     sil, 0x10
0000000140507264 je       0x1405073c6
000000014050726a mov      rax, qword ptr [rip + 0x418d8f]
0000000140507271 cmp      rax, r12
0000000140507274 je       0x1405073b6
000000014050727a cmp      byte ptr [rax + 0x169], r14b
0000000140507281 jb       0x1405072be
0000000140507283 mov      eax, dword ptr [rax + 0x16c]
0000000140507289 test     r15b, al
000000014050728c je       0x1405072be
000000014050728e mov      rax, qword ptr [rdi + 0x20]
0000000140507292 mov      edx, 0x8c38
0000000140507297 mov      rcx, rbx
000000014050729a call     qword ptr [rip + 0x17d058]
00000001405072a0 mov      rcx, qword ptr [rip + 0x418d59]
00000001405072a7 mov      edx, 0x5a
00000001405072ac mov      r9d, eax
00000001405072af mov      r8, r13
00000001405072b2 mov      rcx, qword ptr [rcx + 0x158]
00000001405072b9 call     0x140001bb0
00000001405072be mov      rax, qword ptr [rip + 0x418d3b]
00000001405072c5 cmp      rax, r12
00000001405072c8 je       0x1405073b6
00000001405072ce cmp      byte ptr [rax + 0x169], r14b
00000001405072d5 jb       0x140507312
00000001405072d7 mov      eax, dword ptr [rax + 0x16c]
00000001405072dd test     r15b, al
00000001405072e0 je       0x140507312
00000001405072e2 mov      rax, qword ptr [rdi + 0x20]
00000001405072e6 mov      edx, 0x8c3c
00000001405072eb mov      rcx, rbx
00000001405072ee call     qword ptr [rip + 0x17d004]
00000001405072f4 mov      rcx, qword ptr [rip + 0x418d05]
00000001405072fb mov      edx, 0x5b
0000000140507300 mov      r9d, eax
0000000140507303 mov      r8, r13
0000000140507306 mov      rcx, qword ptr [rcx + 0x158]
000000014050730d call     0x140001bb0
0000000140507312 mov      rax, qword ptr [rip + 0x418ce7]
0000000140507319 cmp      rax, r12
000000014050731c je       0x1405073b6
0000000140507322 cmp      byte ptr [rax + 0x169], r14b
0000000140507329 jb       0x140507366
000000014050732b mov      eax, dword ptr [rax + 0x16c]
0000000140507331 test     r15b, al
0000000140507334 je       0x140507366
0000000140507336 mov      rax, qword ptr [rdi + 0x20]
000000014050733a mov      edx, 0x9038
000000014050733f mov      rcx, rbx
0000000140507342 call     qword ptr [rip + 0x17cfb0]
0000000140507348 mov      rcx, qword ptr [rip + 0x418cb1]
000000014050734f mov      edx, 0x5c
0000000140507354 mov      r9d, eax
0000000140507357 mov      r8, r13
000000014050735a mov      rcx, qword ptr [rcx + 0x158]
0000000140507361 call     0x140001bb0
0000000140507366 mov      rax, qword ptr [rip + 0x418c93]
000000014050736d cmp      rax, r12
0000000140507370 je       0x1405073b6
0000000140507372 cmp      byte ptr [rax + 0x169], r14b
0000000140507379 jb       0x1405073b6
000000014050737b mov      eax, dword ptr [rax + 0x16c]
0000000140507381 test     r15b, al
0000000140507384 je       0x1405073b6
0000000140507386 mov      rax, qword ptr [rdi + 0x20]
000000014050738a mov      edx, 0x903c
000000014050738f mov      rcx, rbx
0000000140507392 call     qword ptr [rip + 0x17cf60]
0000000140507398 mov      rcx, qword ptr [rip + 0x418c61]
000000014050739f mov      edx, 0x5d
00000001405073a4 mov      r9d, eax
00000001405073a7 mov      r8, r13
00000001405073aa mov      rcx, qword ptr [rcx + 0x158]
00000001405073b1 call     0x140001bb0
00000001405073b6 mov      rax, qword ptr [rbp + 0x728]
00000001405073bd mov      rcx, rbx
00000001405073c0 call     qword ptr [rip + 0x17cf32]
00000001405073c6 test     sil, 0x20
00000001405073ca je       0x14050751c
00000001405073d0 mov      rax, qword ptr [rip + 0x418c29]
00000001405073d7 cmp      rax, r12
00000001405073da je       0x14050751c
00000001405073e0 cmp      byte ptr [rax + 0x169], r14b
00000001405073e7 jb       0x140507424
00000001405073e9 mov      eax, dword ptr [rax + 0x16c]
00000001405073ef test     r15b, al
00000001405073f2 je       0x140507424
00000001405073f4 mov      rax, qword ptr [rdi + 0x20]
00000001405073f8 mov      edx, 0x9f78
00000001405073fd mov      rcx, rbx
0000000140507400 call     qword ptr [rip + 0x17cef2]
0000000140507406 mov      rcx, qword ptr [rip + 0x418bf3]
000000014050740d mov      edx, 0x5e
0000000140507412 mov      r9d, eax
0000000140507415 mov      r8, r13
0000000140507418 mov      rcx, qword ptr [rcx + 0x158]
000000014050741f call     0x140001bb0
0000000140507424 mov      rax, qword ptr [rip + 0x418bd5]
000000014050742b cmp      rax, r12
000000014050742e je       0x14050751c
0000000140507434 cmp      byte ptr [rax + 0x169], r14b
000000014050743b jb       0x140507478
000000014050743d mov      eax, dword ptr [rax + 0x16c]
0000000140507443 test     r15b, al
0000000140507446 je       0x140507478
0000000140507448 mov      rax, qword ptr [rdi + 0x20]
000000014050744c mov      edx, 0x9f7c
0000000140507451 mov      rcx, rbx
0000000140507454 call     qword ptr [rip + 0x17ce9e]
000000014050745a mov      rcx, qword ptr [rip + 0x418b9f]
0000000140507461 mov      edx, 0x5f
0000000140507466 mov      r9d, eax
0000000140507469 mov      r8, r13
000000014050746c mov      rcx, qword ptr [rcx + 0x158]
0000000140507473 call     0x140001bb0
0000000140507478 mov      rax, qword ptr [rip + 0x418b81]
000000014050747f cmp      rax, r12
0000000140507482 je       0x14050751c
0000000140507488 cmp      byte ptr [rax + 0x169], r14b
000000014050748f jb       0x1405074cc
0000000140507491 mov      eax, dword ptr [rax + 0x16c]
0000000140507497 test     r15b, al
000000014050749a je       0x1405074cc
000000014050749c mov      rax, qword ptr [rdi + 0x20]
00000001405074a0 mov      edx, 0x9fb8
00000001405074a5 mov      rcx, rbx
00000001405074a8 call     qword ptr [rip + 0x17ce4a]
00000001405074ae mov      rcx, qword ptr [rip + 0x418b4b]
00000001405074b5 mov      edx, 0x60
00000001405074ba mov      r9d, eax
00000001405074bd mov      r8, r13
00000001405074c0 mov      rcx, qword ptr [rcx + 0x158]
00000001405074c7 call     0x140001bb0
00000001405074cc mov      rax, qword ptr [rip + 0x418b2d]
00000001405074d3 cmp      rax, r12
00000001405074d6 je       0x14050751c
00000001405074d8 cmp      byte ptr [rax + 0x169], r14b
00000001405074df jb       0x14050751c
00000001405074e1 mov      eax, dword ptr [rax + 0x16c]
00000001405074e7 test     r15b, al
00000001405074ea je       0x14050751c
00000001405074ec mov      rax, qword ptr [rdi + 0x20]
00000001405074f0 mov      edx, 0x9fbc
00000001405074f5 mov      rcx, rbx
00000001405074f8 call     qword ptr [rip + 0x17cdfa]
00000001405074fe mov      rcx, qword ptr [rip + 0x418afb]
0000000140507505 mov      edx, 0x61
000000014050750a mov      r9d, eax
000000014050750d mov      r8, r13
0000000140507510 mov      rcx, qword ptr [rcx + 0x158]
0000000140507517 call     0x140001bb0
000000014050751c test     sil, 0x40
0000000140507520 je       0x1405079d2
0000000140507526 mov      rax, qword ptr [rip + 0x418ad3]
000000014050752d cmp      rax, r12
0000000140507530 je       0x1405079ba
0000000140507536 cmp      byte ptr [rax + 0x169], r14b
000000014050753d jb       0x14050757a
000000014050753f mov      eax, dword ptr [rax + 0x16c]
0000000140507545 test     r15b, al
0000000140507548 je       0x14050757a
000000014050754a mov      rax, qword ptr [rdi + 0x20]
000000014050754e mov      edx, 0x8c38
0000000140507553 mov      rcx, rbx
0000000140507556 call     qword ptr [rip + 0x17cd9c]
000000014050755c mov      rcx, qword ptr [rip + 0x418a9d]
0000000140507563 mov      edx, 0x62
0000000140507568 mov      r9d, eax
000000014050756b mov      r8, r13
000000014050756e mov      rcx, qword ptr [rcx + 0x158]
0000000140507575 call     0x140001bb0
000000014050757a mov      rax, qword ptr [rip + 0x418a7f]
0000000140507581 cmp      rax, r12
0000000140507584 je       0x1405079ba
000000014050758a cmp      byte ptr [rax + 0x169], r14b
0000000140507591 jb       0x1405075ce
0000000140507593 mov      eax, dword ptr [rax + 0x16c]
0000000140507599 test     r15b, al
000000014050759c je       0x1405075ce
000000014050759e mov      rax, qword ptr [rdi + 0x20]
00000001405075a2 mov      edx, 0x8c3c
00000001405075a7 mov      rcx, rbx
00000001405075aa call     qword ptr [rip + 0x17cd48]
00000001405075b0 mov      rcx, qword ptr [rip + 0x418a49]
00000001405075b7 mov      edx, 0x63
00000001405075bc mov      r9d, eax
00000001405075bf mov      r8, r13
00000001405075c2 mov      rcx, qword ptr [rcx + 0x158]
00000001405075c9 call     0x140001bb0
00000001405075ce mov      rax, qword ptr [rip + 0x418a2b]
00000001405075d5 cmp      rax, r12
00000001405075d8 je       0x1405079ba
00000001405075de cmp      byte ptr [rax + 0x169], r14b
00000001405075e5 jb       0x140507622
00000001405075e7 mov      eax, dword ptr [rax + 0x16c]
00000001405075ed test     r15b, al
00000001405075f0 je       0x140507622
00000001405075f2 mov      rax, qword ptr [rdi + 0x20]
00000001405075f6 mov      edx, 0x9038
00000001405075fb mov      rcx, rbx
00000001405075fe call     qword ptr [rip + 0x17ccf4]
0000000140507604 mov      rcx, qword ptr [rip + 0x4189f5]
000000014050760b mov      edx, 0x64
0000000140507610 mov      r9d, eax
0000000140507613 mov      r8, r13
0000000140507616 mov      rcx, qword ptr [rcx + 0x158]
000000014050761d call     0x140001bb0
0000000140507622 mov      rax, qword ptr [rip + 0x4189d7]
0000000140507629 cmp      rax, r12
000000014050762c je       0x1405079ba
0000000140507632 cmp      byte ptr [rax + 0x169], r14b
0000000140507639 jb       0x140507676
000000014050763b mov      eax, dword ptr [rax + 0x16c]
0000000140507641 test     r15b, al
0000000140507644 je       0x140507676
0000000140507646 mov      rax, qword ptr [rdi + 0x20]
000000014050764a mov      edx, 0x903c
000000014050764f mov      rcx, rbx
0000000140507652 call     qword ptr [rip + 0x17cca0]
0000000140507658 mov      rcx, qword ptr [rip + 0x4189a1]
000000014050765f mov      edx, 0x65
0000000140507664 mov      r9d, eax
0000000140507667 mov      r8, r13
000000014050766a mov      rcx, qword ptr [rcx + 0x158]
0000000140507671 call     0x140001bb0
0000000140507676 mov      rax, qword ptr [rip + 0x418983]
000000014050767d cmp      rax, r12
0000000140507680 je       0x1405079ba
0000000140507686 cmp      byte ptr [rax + 0x169], r14b
000000014050768d jb       0x1405076ca
000000014050768f mov      eax, dword ptr [rax + 0x16c]
0000000140507695 test     r15b, al
0000000140507698 je       0x1405076ca
000000014050769a mov      rax, qword ptr [rdi + 0x20]
000000014050769e mov      edx, 0x9810
00000001405076a3 mov      rcx, rbx
00000001405076a6 call     qword ptr [rip + 0x17cc4c]
00000001405076ac mov      rcx, qword ptr [rip + 0x41894d]
00000001405076b3 mov      edx, 0x66
00000001405076b8 mov      r9d, eax
00000001405076bb mov      r8, r13
00000001405076be mov      rcx, qword ptr [rcx + 0x158]
00000001405076c5 call     0x140001bb0
00000001405076ca mov      rax, qword ptr [rip + 0x41892f]
00000001405076d1 cmp      rax, r12
00000001405076d4 je       0x1405079ba
00000001405076da cmp      byte ptr [rax + 0x169], r14b
00000001405076e1 jb       0x14050771e
00000001405076e3 mov      eax, dword ptr [rax + 0x16c]
00000001405076e9 test     r15b, al
00000001405076ec je       0x14050771e
00000001405076ee mov      rax, qword ptr [rdi + 0x20]
00000001405076f2 mov      edx, 0x9814
00000001405076f7 mov      rcx, rbx
00000001405076fa call     qword ptr [rip + 0x17cbf8]
0000000140507700 mov      rcx, qword ptr [rip + 0x4188f9]
0000000140507707 mov      edx, 0x67
000000014050770c mov      r9d, eax
000000014050770f mov      r8, r13
0000000140507712 mov      rcx, qword ptr [rcx + 0x158]
0000000140507719 call     0x140001bb0
000000014050771e mov      rax, qword ptr [rip + 0x4188db]
0000000140507725 cmp      rax, r12
0000000140507728 je       0x1405079ba
000000014050772e cmp      byte ptr [rax + 0x169], r14b
0000000140507735 jb       0x140507772
0000000140507737 mov      eax, dword ptr [rax + 0x16c]
000000014050773d test     r15b, al
0000000140507740 je       0x140507772
0000000140507742 mov      rax, qword ptr [rdi + 0x20]
0000000140507746 mov      edx, 0x9818
000000014050774b mov      rcx, rbx
000000014050774e call     qword ptr [rip + 0x17cba4]
0000000140507754 mov      rcx, qword ptr [rip + 0x4188a5]
000000014050775b mov      edx, 0x68
0000000140507760 mov      r9d, eax
0000000140507763 mov      r8, r13
0000000140507766 mov      rcx, qword ptr [rcx + 0x158]
000000014050776d call     0x140001bb0
0000000140507772 mov      rax, qword ptr [rip + 0x418887]
0000000140507779 cmp      rax, r12
000000014050777c je       0x1405079ba
0000000140507782 cmp      byte ptr [rax + 0x169], r14b
0000000140507789 jb       0x1405077c6
000000014050778b mov      eax, dword ptr [rax + 0x16c]
0000000140507791 test     r15b, al
0000000140507794 je       0x1405077c6
0000000140507796 mov      rax, qword ptr [rdi + 0x20]
000000014050779a mov      edx, 0x981c
000000014050779f mov      rcx, rbx
00000001405077a2 call     qword ptr [rip + 0x17cb50]
00000001405077a8 mov      rcx, qword ptr [rip + 0x418851]
00000001405077af mov      edx, 0x69
00000001405077b4 mov      r9d, eax
00000001405077b7 mov      r8, r13
00000001405077ba mov      rcx, qword ptr [rcx + 0x158]
00000001405077c1 call     0x140001bb0
00000001405077c6 mov      rax, qword ptr [rip + 0x418833]
00000001405077cd cmp      rax, r12
00000001405077d0 je       0x1405079ba
00000001405077d6 cmp      byte ptr [rax + 0x169], r14b
00000001405077dd jb       0x14050781a
00000001405077df mov      eax, dword ptr [rax + 0x16c]
00000001405077e5 test     r15b, al
00000001405077e8 je       0x14050781a
00000001405077ea mov      rax, qword ptr [rdi + 0x20]
00000001405077ee mov      edx, 0x9820
00000001405077f3 mov      rcx, rbx
00000001405077f6 call     qword ptr [rip + 0x17cafc]
00000001405077fc mov      rcx, qword ptr [rip + 0x4187fd]
0000000140507803 mov      edx, 0x6a
0000000140507808 mov      r9d, eax
000000014050780b mov      r8, r13
000000014050780e mov      rcx, qword ptr [rcx + 0x158]
0000000140507815 call     0x140001bb0
000000014050781a mov      rax, qword ptr [rip + 0x4187df]
0000000140507821 cmp      rax, r12
0000000140507824 je       0x1405079ba
000000014050782a cmp      byte ptr [rax + 0x169], r14b
0000000140507831 jb       0x14050786e
0000000140507833 mov      eax, dword ptr [rax + 0x16c]
0000000140507839 test     r15b, al
000000014050783c je       0x14050786e
000000014050783e mov      rax, qword ptr [rdi + 0x20]
0000000140507842 mov      edx, 0x9850
0000000140507847 mov      rcx, rbx
000000014050784a call     qword ptr [rip + 0x17caa8]
0000000140507850 mov      rcx, qword ptr [rip + 0x4187a9]
0000000140507857 mov      edx, 0x6b
000000014050785c mov      r9d, eax
000000014050785f mov      r8, r13
0000000140507862 mov      rcx, qword ptr [rcx + 0x158]
0000000140507869 call     0x140001bb0
000000014050786e mov      rax, qword ptr [rip + 0x41878b]
0000000140507875 cmp      rax, r12
0000000140507878 je       0x1405079ba
000000014050787e cmp      byte ptr [rax + 0x169], r14b
0000000140507885 jb       0x1405078c2
0000000140507887 mov      eax, dword ptr [rax + 0x16c]
000000014050788d test     r15b, al
0000000140507890 je       0x1405078c2
0000000140507892 mov      rax, qword ptr [rdi + 0x20]
0000000140507896 mov      edx, 0x9854
000000014050789b mov      rcx, rbx
000000014050789e call     qword ptr [rip + 0x17ca54]
00000001405078a4 mov      rcx, qword ptr [rip + 0x418755]
00000001405078ab mov      edx, 0x6c
00000001405078b0 mov      r9d, eax
00000001405078b3 mov      r8, r13
00000001405078b6 mov      rcx, qword ptr [rcx + 0x158]
00000001405078bd call     0x140001bb0
00000001405078c2 mov      rax, qword ptr [rip + 0x418737]
00000001405078c9 cmp      rax, r12
00000001405078cc je       0x1405079ba
00000001405078d2 cmp      byte ptr [rax + 0x169], r14b
00000001405078d9 jb       0x140507916
00000001405078db mov      eax, dword ptr [rax + 0x16c]
00000001405078e1 test     r15b, al
00000001405078e4 je       0x140507916
00000001405078e6 mov      rax, qword ptr [rdi + 0x20]
00000001405078ea mov      edx, 0x9858
00000001405078ef mov      rcx, rbx
00000001405078f2 call     qword ptr [rip + 0x17ca00]
00000001405078f8 mov      rcx, qword ptr [rip + 0x418701]
00000001405078ff mov      edx, 0x6d
0000000140507904 mov      r9d, eax
0000000140507907 mov      r8, r13
000000014050790a mov      rcx, qword ptr [rcx + 0x158]
0000000140507911 call     0x140001bb0
0000000140507916 mov      rax, qword ptr [rip + 0x4186e3]
000000014050791d cmp      rax, r12
0000000140507920 je       0x1405079ba
0000000140507926 cmp      byte ptr [rax + 0x169], r14b
000000014050792d jb       0x14050796a
000000014050792f mov      eax, dword ptr [rax + 0x16c]
0000000140507935 test     r15b, al
0000000140507938 je       0x14050796a
000000014050793a mov      rax, qword ptr [rdi + 0x20]
000000014050793e mov      edx, 0x985c
0000000140507943 mov      rcx, rbx
0000000140507946 call     qword ptr [rip + 0x17c9ac]
000000014050794c mov      rcx, qword ptr [rip + 0x4186ad]
0000000140507953 mov      edx, 0x6e
0000000140507958 mov      r9d, eax
000000014050795b mov      r8, r13
000000014050795e mov      rcx, qword ptr [rcx + 0x158]
0000000140507965 call     0x140001bb0
000000014050796a mov      rax, qword ptr [rip + 0x41868f]
0000000140507971 cmp      rax, r12
0000000140507974 je       0x1405079ba
0000000140507976 cmp      byte ptr [rax + 0x169], r14b
000000014050797d jb       0x1405079ba
000000014050797f mov      eax, dword ptr [rax + 0x16c]
0000000140507985 test     r15b, al
0000000140507988 je       0x1405079ba
000000014050798a mov      rax, qword ptr [rdi + 0x20]
000000014050798e mov      edx, 0x9860
0000000140507993 mov      rcx, rbx
0000000140507996 call     qword ptr [rip + 0x17c95c]
000000014050799c mov      rcx, qword ptr [rip + 0x41865d]
00000001405079a3 mov      edx, 0x6f
00000001405079a8 mov      r9d, eax
00000001405079ab mov      r8, r13
00000001405079ae mov      rcx, qword ptr [rcx + 0x158]
00000001405079b5 call     0x140001bb0
00000001405079ba mov      rcx, rbx
00000001405079bd call     0x14050680c
00000001405079c2 mov      rax, qword ptr [rbp + 0x728]
00000001405079c9 mov      rcx, rbx
00000001405079cc call     qword ptr [rip + 0x17c926]
00000001405079d2 test     sil, sil
00000001405079d5 jns      0x140507a7f
00000001405079db mov      rax, qword ptr [rip + 0x41861e]
00000001405079e2 cmp      rax, r12
00000001405079e5 je       0x140507a7f
00000001405079eb cmp      byte ptr [rax + 0x169], r14b
00000001405079f2 jb       0x140507a2f
00000001405079f4 mov      eax, dword ptr [rax + 0x16c]
00000001405079fa test     r15b, al
00000001405079fd je       0x140507a2f
00000001405079ff mov      rax, qword ptr [rdi + 0x20]
0000000140507a03 mov      edx, 0x9a20
0000000140507a08 mov      rcx, rbx
0000000140507a0b call     qword ptr [rip + 0x17c8e7]
0000000140507a11 mov      rcx, qword ptr [rip + 0x4185e8]
0000000140507a18 mov      edx, 0x70
0000000140507a1d mov      r9d, eax
0000000140507a20 mov      r8, r13
0000000140507a23 mov      rcx, qword ptr [rcx + 0x158]
0000000140507a2a call     0x140001bb0
0000000140507a2f mov      rax, qword ptr [rip + 0x4185ca]
0000000140507a36 cmp      rax, r12
0000000140507a39 je       0x140507a7f
0000000140507a3b cmp      byte ptr [rax + 0x169], r14b
0000000140507a42 jb       0x140507a7f
0000000140507a44 mov      eax, dword ptr [rax + 0x16c]
0000000140507a4a test     r15b, al
0000000140507a4d je       0x140507a7f
0000000140507a4f mov      rax, qword ptr [rdi + 0x20]
0000000140507a53 mov      edx, 0x9a24
0000000140507a58 mov      rcx, rbx
0000000140507a5b call     qword ptr [rip + 0x17c897]
0000000140507a61 mov      rcx, qword ptr [rip + 0x418598]
0000000140507a68 mov      edx, 0x71
0000000140507a6d mov      r9d, eax
0000000140507a70 mov      r8, r13
0000000140507a73 mov      rcx, qword ptr [rcx + 0x158]
0000000140507a7a call     0x140001bb0
0000000140507a7f bt       esi, 8
0000000140507a83 jae      0x140507a8d
0000000140507a85 mov      rcx, rbx
0000000140507a88 call     0x14050680c
0000000140507a8d bt       esi, 0xa
0000000140507a91 jae      0x140507b3b
0000000140507a97 mov      rax, qword ptr [rip + 0x418562]
0000000140507a9e cmp      rax, r12
0000000140507aa1 je       0x140507b3b
0000000140507aa7 cmp      byte ptr [rax + 0x169], r14b
0000000140507aae jb       0x140507aeb
0000000140507ab0 mov      eax, dword ptr [rax + 0x16c]
0000000140507ab6 test     r15b, al
0000000140507ab9 je       0x140507aeb
0000000140507abb mov      rax, qword ptr [rdi + 0x20]
0000000140507abf mov      edx, 0x9888
0000000140507ac4 mov      rcx, rbx
0000000140507ac7 call     qword ptr [rip + 0x17c82b]
0000000140507acd mov      rcx, qword ptr [rip + 0x41852c]
0000000140507ad4 mov      edx, 0x72
0000000140507ad9 mov      r9d, eax
0000000140507adc mov      r8, r13
0000000140507adf mov      rcx, qword ptr [rcx + 0x158]
0000000140507ae6 call     0x140001bb0
0000000140507aeb mov      rax, qword ptr [rip + 0x41850e]
0000000140507af2 cmp      rax, r12
0000000140507af5 je       0x140507b3b
0000000140507af7 cmp      byte ptr [rax + 0x169], r14b
0000000140507afe jb       0x140507b3b
0000000140507b00 mov      eax, dword ptr [rax + 0x16c]
0000000140507b06 test     r15b, al
0000000140507b09 je       0x140507b3b
0000000140507b0b mov      rax, qword ptr [rdi + 0x20]
0000000140507b0f mov      edx, 0x988c
0000000140507b14 mov      rcx, rbx
0000000140507b17 call     qword ptr [rip + 0x17c7db]
0000000140507b1d mov      rcx, qword ptr [rip + 0x4184dc]
0000000140507b24 mov      edx, 0x73
0000000140507b29 mov      r9d, eax
0000000140507b2c mov      r8, r13
0000000140507b2f mov      rcx, qword ptr [rcx + 0x158]
0000000140507b36 call     0x140001bb0
0000000140507b3b bt       esi, 0xb
0000000140507b3f jae      0x140507de1
0000000140507b45 mov      rax, qword ptr [rip + 0x4184b4]
0000000140507b4c cmp      rax, r12
0000000140507b4f je       0x140507de1
0000000140507b55 cmp      byte ptr [rax + 0x169], r14b
0000000140507b5c jb       0x140507b99
0000000140507b5e mov      eax, dword ptr [rax + 0x16c]
0000000140507b64 test     r15b, al
0000000140507b67 je       0x140507b99
0000000140507b69 mov      rax, qword ptr [rdi + 0x20]
0000000140507b6d mov      edx, 0x9608
0000000140507b72 mov      rcx, rbx
0000000140507b75 call     qword ptr [rip + 0x17c77d]
0000000140507b7b mov      rcx, qword ptr [rip + 0x41847e]
0000000140507b82 mov      edx, 0x74
0000000140507b87 mov      r9d, eax
0000000140507b8a mov      r8, r13
0000000140507b8d mov      rcx, qword ptr [rcx + 0x158]
0000000140507b94 call     0x140001bb0
0000000140507b99 mov      rax, qword ptr [rip + 0x418460]
0000000140507ba0 cmp      rax, r12
0000000140507ba3 je       0x140507de1
0000000140507ba9 cmp      byte ptr [rax + 0x169], r14b
0000000140507bb0 jb       0x140507bed
0000000140507bb2 mov      eax, dword ptr [rax + 0x16c]
0000000140507bb8 test     r15b, al
0000000140507bbb je       0x140507bed
0000000140507bbd mov      rax, qword ptr [rdi + 0x20]
0000000140507bc1 mov      edx, 0x960c
0000000140507bc6 mov      rcx, rbx
0000000140507bc9 call     qword ptr [rip + 0x17c729]
0000000140507bcf mov      rcx, qword ptr [rip + 0x41842a]
0000000140507bd6 mov      edx, 0x75
0000000140507bdb mov      r9d, eax
0000000140507bde mov      r8, r13
0000000140507be1 mov      rcx, qword ptr [rcx + 0x158]
0000000140507be8 call     0x140001bb0
0000000140507bed mov      rax, qword ptr [rip + 0x41840c]
0000000140507bf4 cmp      rax, r12
0000000140507bf7 je       0x140507de1
0000000140507bfd cmp      byte ptr [rax + 0x169], r14b
0000000140507c04 jb       0x140507c41
0000000140507c06 mov      eax, dword ptr [rax + 0x16c]
0000000140507c0c test     r15b, al
0000000140507c0f je       0x140507c41
0000000140507c11 mov      rax, qword ptr [rdi + 0x20]
0000000140507c15 mov      edx, 0x9628
0000000140507c1a mov      rcx, rbx
0000000140507c1d call     qword ptr [rip + 0x17c6d5]
0000000140507c23 mov      rcx, qword ptr [rip + 0x4183d6]
0000000140507c2a mov      edx, 0x76
0000000140507c2f mov      r9d, eax
0000000140507c32 mov      r8, r13
0000000140507c35 mov      rcx, qword ptr [rcx + 0x158]
0000000140507c3c call     0x140001bb0
0000000140507c41 mov      rax, qword ptr [rip + 0x4183b8]
0000000140507c48 cmp      rax, r12
0000000140507c4b je       0x140507de1
0000000140507c51 cmp      byte ptr [rax + 0x169], r14b
0000000140507c58 jb       0x140507c95
0000000140507c5a mov      eax, dword ptr [rax + 0x16c]
0000000140507c60 test     r15b, al
0000000140507c63 je       0x140507c95
0000000140507c65 mov      rax, qword ptr [rdi + 0x20]
0000000140507c69 mov      edx, 0x962c
0000000140507c6e mov      rcx, rbx
0000000140507c71 call     qword ptr [rip + 0x17c681]
0000000140507c77 mov      rcx, qword ptr [rip + 0x418382]
0000000140507c7e mov      edx, 0x77
0000000140507c83 mov      r9d, eax
0000000140507c86 mov      r8, r13
0000000140507c89 mov      rcx, qword ptr [rcx + 0x158]
0000000140507c90 call     0x140001bb0
0000000140507c95 mov      rax, qword ptr [rip + 0x418364]
0000000140507c9c cmp      rax, r12
0000000140507c9f je       0x140507de1
0000000140507ca5 cmp      byte ptr [rax + 0x169], r14b
0000000140507cac jb       0x140507ce9
0000000140507cae mov      eax, dword ptr [rax + 0x16c]
0000000140507cb4 test     r15b, al
0000000140507cb7 je       0x140507ce9
0000000140507cb9 mov      rax, qword ptr [rdi + 0x20]
0000000140507cbd mov      edx, 0x9638
0000000140507cc2 mov      rcx, rbx
0000000140507cc5 call     qword ptr [rip + 0x17c62d]
0000000140507ccb mov      rcx, qword ptr [rip + 0x41832e]
0000000140507cd2 mov      edx, 0x78
0000000140507cd7 mov      r9d, eax
0000000140507cda mov      r8, r13
0000000140507cdd mov      rcx, qword ptr [rcx + 0x158]
0000000140507ce4 call     0x140001bb0
0000000140507ce9 mov      rax, qword ptr [rip + 0x418310]
0000000140507cf0 cmp      rax, r12
0000000140507cf3 je       0x140507de1
0000000140507cf9 cmp      byte ptr [rax + 0x169], r14b
0000000140507d00 jb       0x140507d3d
0000000140507d02 mov      eax, dword ptr [rax + 0x16c]
0000000140507d08 test     r15b, al
0000000140507d0b je       0x140507d3d
0000000140507d0d mov      rax, qword ptr [rdi + 0x20]
0000000140507d11 mov      edx, 0x963c
0000000140507d16 mov      rcx, rbx
0000000140507d19 call     qword ptr [rip + 0x17c5d9]
0000000140507d1f mov      rcx, qword ptr [rip + 0x4182da]
0000000140507d26 mov      edx, 0x79
0000000140507d2b mov      r9d, eax
0000000140507d2e mov      r8, r13
0000000140507d31 mov      rcx, qword ptr [rcx + 0x158]
0000000140507d38 call     0x140001bb0
0000000140507d3d mov      rax, qword ptr [rip + 0x4182bc]
0000000140507d44 cmp      rax, r12
0000000140507d47 je       0x140507de1
0000000140507d4d cmp      byte ptr [rax + 0x169], r14b
0000000140507d54 jb       0x140507d91
0000000140507d56 mov      eax, dword ptr [rax + 0x16c]
0000000140507d5c test     r15b, al
0000000140507d5f je       0x140507d91
0000000140507d61 mov      rax, qword ptr [rdi + 0x20]
0000000140507d65 mov      edx, 0x9668
0000000140507d6a mov      rcx, rbx
0000000140507d6d call     qword ptr [rip + 0x17c585]
0000000140507d73 mov      rcx, qword ptr [rip + 0x418286]
0000000140507d7a mov      edx, 0x7a
0000000140507d7f mov      r9d, eax
0000000140507d82 mov      r8, r13
0000000140507d85 mov      rcx, qword ptr [rcx + 0x158]
0000000140507d8c call     0x140001bb0
0000000140507d91 mov      rax, qword ptr [rip + 0x418268]
0000000140507d98 cmp      rax, r12
0000000140507d9b je       0x140507de1
0000000140507d9d cmp      byte ptr [rax + 0x169], r14b
0000000140507da4 jb       0x140507de1
0000000140507da6 mov      eax, dword ptr [rax + 0x16c]
0000000140507dac test     r15b, al
0000000140507daf je       0x140507de1
0000000140507db1 mov      rax, qword ptr [rdi + 0x20]
0000000140507db5 mov      edx, 0x966c
0000000140507dba mov      rcx, rbx
0000000140507dbd call     qword ptr [rip + 0x17c535]
0000000140507dc3 mov      rcx, qword ptr [rip + 0x418236]
0000000140507dca mov      edx, 0x7b
0000000140507dcf mov      r9d, eax
0000000140507dd2 mov      r8, r13
0000000140507dd5 mov      rcx, qword ptr [rcx + 0x158]
0000000140507ddc call     0x140001bb0
0000000140507de1 bt       esi, 0xe
0000000140507de5 jae      0x140507df7
0000000140507de7 mov      rax, qword ptr [rbp + 0x748]
0000000140507dee mov      rcx, rbx
0000000140507df1 call     qword ptr [rip + 0x17c501]
0000000140507df7 bt       esi, 0xd
0000000140507dfb jae      0x140507f26
0000000140507e01 mov      r9d, 2
0000000140507e07 lea      r8, [rsp + 0x60]
0000000140507e0c mov      edx, 0x910
0000000140507e11 mov      rcx, rbx
0000000140507e14 call     0x1403695ac
0000000140507e19 mov      ebp, 0xb0bc
0000000140507e1e test     eax, eax
0000000140507e20 je       0x140507e5d
0000000140507e22 mov      rcx, qword ptr [rip + 0x4181d7]
0000000140507e29 cmp      rcx, r12
0000000140507e2c je       0x140507e96
0000000140507e2e cmp      byte ptr [rcx + 0x169], r14b
0000000140507e35 jb       0x140507e5d
0000000140507e37 mov      edx, dword ptr [rcx + 0x16c]
0000000140507e3d test     r15b, dl
0000000140507e40 je       0x140507e5d
0000000140507e42 mov      rcx, qword ptr [rcx + 0x158]
0000000140507e49 mov      edx, 0x7c
0000000140507e4e mov      r9d, ebp
0000000140507e51 mov      dword ptr [rsp + 0x20], eax
0000000140507e55 mov      r8, r13
0000000140507e58 call     0x140001bec
0000000140507e5d mov      rcx, qword ptr [rip + 0x41819c]
0000000140507e64 cmp      rcx, r12
0000000140507e67 je       0x140507e96
0000000140507e69 cmp      byte ptr [rcx + 0x169], r14b
0000000140507e70 jb       0x140507e96
0000000140507e72 mov      eax, dword ptr [rcx + 0x16c]
0000000140507e78 test     r15b, al
0000000140507e7b je       0x140507e96
0000000140507e7d mov      r9d, dword ptr [rsp + 0x60]
0000000140507e82 mov      edx, 0x7d
0000000140507e87 mov      rcx, qword ptr [rcx + 0x158]
0000000140507e8e mov      r8, r13
0000000140507e91 call     0x140001bb0
0000000140507e96 mov      r9d, 2
0000000140507e9c lea      r8, [rsp + 0x60]
0000000140507ea1 mov      edx, 0x914
0000000140507ea6 mov      rcx, rbx
0000000140507ea9 call     0x1403695ac
0000000140507eae test     eax, eax
0000000140507eb0 je       0x140507eed
0000000140507eb2 mov      rcx, qword ptr [rip + 0x418147]
0000000140507eb9 cmp      rcx, r12
0000000140507ebc je       0x140507f26
0000000140507ebe cmp      byte ptr [rcx + 0x169], r14b
0000000140507ec5 jb       0x140507eed
0000000140507ec7 mov      edx, dword ptr [rcx + 0x16c]
0000000140507ecd test     r15b, dl
0000000140507ed0 je       0x140507eed
0000000140507ed2 mov      rcx, qword ptr [rcx + 0x158]
0000000140507ed9 mov      edx, 0x7e
0000000140507ede mov      r9d, ebp
0000000140507ee1 mov      dword ptr [rsp + 0x20], eax
0000000140507ee5 mov      r8, r13
0000000140507ee8 call     0x140001bec
0000000140507eed mov      rcx, qword ptr [rip + 0x41810c]
0000000140507ef4 cmp      rcx, r12
0000000140507ef7 je       0x140507f26
0000000140507ef9 cmp      byte ptr [rcx + 0x169], r14b
0000000140507f00 jb       0x140507f26
0000000140507f02 mov      eax, dword ptr [rcx + 0x16c]
0000000140507f08 test     r15b, al
0000000140507f0b je       0x140507f26
0000000140507f0d mov      r9d, dword ptr [rsp + 0x60]
0000000140507f12 mov      edx, 0x7f
0000000140507f17 mov      rcx, qword ptr [rcx + 0x158]
0000000140507f1e mov      r8, r13
0000000140507f21 call     0x140001bb0
0000000140507f26 bt       esi, 0x11
0000000140507f2a jae      0x140507fd4
0000000140507f30 mov      rax, qword ptr [rip + 0x4180c9]
0000000140507f37 cmp      rax, r12
0000000140507f3a je       0x140507fd4
0000000140507f40 cmp      byte ptr [rax + 0x169], r14b
0000000140507f47 jb       0x140507f84
0000000140507f49 mov      eax, dword ptr [rax + 0x16c]
0000000140507f4f test     r15b, al
0000000140507f52 je       0x140507f84
0000000140507f54 mov      rax, qword ptr [rdi + 0x20]
0000000140507f58 mov      edx, 0xa128
0000000140507f5d mov      rcx, rbx
0000000140507f60 call     qword ptr [rip + 0x17c392]
0000000140507f66 mov      rcx, qword ptr [rip + 0x418093]
0000000140507f6d mov      edx, 0x80
0000000140507f72 mov      r9d, eax
0000000140507f75 mov      r8, r13
0000000140507f78 mov      rcx, qword ptr [rcx + 0x158]
0000000140507f7f call     0x140001bb0
0000000140507f84 mov      rax, qword ptr [rip + 0x418075]
0000000140507f8b cmp      rax, r12
0000000140507f8e je       0x140507fd4
0000000140507f90 cmp      byte ptr [rax + 0x169], r14b
0000000140507f97 jb       0x140507fd4
0000000140507f99 mov      eax, dword ptr [rax + 0x16c]
0000000140507f9f test     r15b, al
0000000140507fa2 je       0x140507fd4
0000000140507fa4 mov      rax, qword ptr [rdi + 0x20]
0000000140507fa8 mov      edx, 0xa12c
0000000140507fad mov      rcx, rbx
0000000140507fb0 call     qword ptr [rip + 0x17c342]
0000000140507fb6 mov      rcx, qword ptr [rip + 0x418043]
0000000140507fbd mov      edx, 0x81
0000000140507fc2 mov      r9d, eax
0000000140507fc5 mov      r8, r13
0000000140507fc8 mov      rcx, qword ptr [rcx + 0x158]
0000000140507fcf call     0x140001bb0
0000000140507fd4 mov      edx, 9
0000000140507fd9 mov      rcx, rbx
0000000140507fdc call     0x14036c07c
0000000140507fe1 test     al, al
0000000140507fe3 jne      0x14050803e
0000000140507fe5 mov      edx, 0xa
0000000140507fea mov      rcx, rbx
0000000140507fed call     0x14036c07c
0000000140507ff2 test     al, al
0000000140507ff4 jne      0x14050803e
0000000140507ff6 mov      edx, 0xb
0000000140507ffb mov      rcx, rbx
0000000140507ffe call     0x14036c07c
0000000140508003 test     al, al
0000000140508005 jne      0x14050803e
0000000140508007 mov      edx, 0x10
000000014050800c mov      rcx, rbx
000000014050800f call     0x14036c07c
0000000140508014 test     al, al
0000000140508016 jne      0x14050803e
0000000140508018 mov      edx, 0xd
000000014050801d mov      rcx, rbx
0000000140508020 call     0x14036c07c
0000000140508025 test     al, al
0000000140508027 jne      0x14050803e
0000000140508029 mov      edx, 0xc
000000014050802e mov      rcx, rbx
0000000140508031 call     0x14036c07c
0000000140508036 test     al, al
0000000140508038 je       0x1405080ec
000000014050803e bt       esi, 0x12
0000000140508042 jae      0x1405080ec
0000000140508048 mov      rax, qword ptr [rip + 0x417fb1]
000000014050804f cmp      rax, r12
0000000140508052 je       0x1405080ec
0000000140508058 cmp      byte ptr [rax + 0x169], r14b
000000014050805f jb       0x14050809c
0000000140508061 mov      eax, dword ptr [rax + 0x16c]
0000000140508067 test     r15b, al
000000014050806a je       0x14050809c
000000014050806c mov      rax, qword ptr [rdi + 0x20]
0000000140508070 mov      edx, 0xa518
0000000140508075 mov      rcx, rbx
0000000140508078 call     qword ptr [rip + 0x17c27a]
000000014050807e mov      rcx, qword ptr [rip + 0x417f7b]
0000000140508085 mov      edx, 0x82
000000014050808a mov      r9d, eax
000000014050808d mov      r8, r13
0000000140508090 mov      rcx, qword ptr [rcx + 0x158]
0000000140508097 call     0x140001bb0
000000014050809c mov      rax, qword ptr [rip + 0x417f5d]
00000001405080a3 cmp      rax, r12
00000001405080a6 je       0x1405080ec
00000001405080a8 cmp      byte ptr [rax + 0x169], r14b
00000001405080af jb       0x1405080ec
00000001405080b1 mov      eax, dword ptr [rax + 0x16c]
00000001405080b7 test     r15b, al
00000001405080ba je       0x1405080ec
00000001405080bc mov      rax, qword ptr [rdi + 0x20]
00000001405080c0 mov      edx, 0xa51c
00000001405080c5 mov      rcx, rbx
00000001405080c8 call     qword ptr [rip + 0x17c22a]
00000001405080ce mov      rcx, qword ptr [rip + 0x417f2b]
00000001405080d5 mov      edx, 0x83
00000001405080da mov      r9d, eax
00000001405080dd mov      r8, r13
00000001405080e0 mov      rcx, qword ptr [rcx + 0x158]
00000001405080e7 call     0x140001bb0
00000001405080ec mov      rbx, qword ptr [rsp + 0x68]
00000001405080f1 mov      rbp, qword ptr [rsp + 0x70]
00000001405080f6 mov      rsi, qword ptr [rsp + 0x78]
00000001405080fb add      rsp, 0x30
00000001405080ff pop      r15
0000000140508101 pop      r14
0000000140508103 pop      r13
0000000140508105 pop      r12
0000000140508107 pop      rdi
0000000140508108 ret      