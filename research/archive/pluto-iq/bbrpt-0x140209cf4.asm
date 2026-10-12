0000000140209cf4 push     rbp
0000000140209cf6 push     rbx
0000000140209cf7 push     rsi
0000000140209cf8 push     rdi
0000000140209cf9 push     r12
0000000140209cfb push     r13
0000000140209cfd push     r14
0000000140209cff lea      rbp, [rsp - 0x40]
0000000140209d04 sub      rsp, 0x140
0000000140209d0b mov      rax, qword ptr [rip + 0x71d74e]
0000000140209d12 xor      rax, rsp
0000000140209d15 mov      qword ptr [rbp + 0x30], rax
0000000140209d19 mov      rsi, qword ptr [rcx + 0x798]
0000000140209d20 mov      rdi, r8
0000000140209d23 mov      bl, dl
0000000140209d25 mov      r14, rcx
0000000140209d28 xor      edx, edx
0000000140209d2a lea      rcx, [rsp + 0x30]
0000000140209d2f mov      r8d, 0xf8
0000000140209d35 call     0x1405f4640
0000000140209d3a mov      rdx, qword ptr [r14 + 0x8d08]
0000000140209d41 lea      r9, [rsp + 0x30]
0000000140209d46 mov      r8b, bl
0000000140209d49 mov      rcx, rsi
0000000140209d4c call     0x140262ee4
0000000140209d51 lea      r13, [rip + 0x404638]
0000000140209d58 mov      bl, 1
0000000140209d5a lea      r12, [rip + 0x71629f]
0000000140209d61 lea      r8, [rip + 0x40a7e8]
0000000140209d68 test     eax, eax
0000000140209d6a je       0x140209db6
0000000140209d6c mov      rcx, qword ptr [rip + 0x71628d]
0000000140209d73 cmp      rcx, r12
0000000140209d76 je       0x140209e00
0000000140209d7c cmp      byte ptr [rcx + 0x169], 2
0000000140209d83 jb       0x140209db6
0000000140209d85 mov      eax, dword ptr [rcx + 0x16c]
0000000140209d8b test     bl, al
0000000140209d8d je       0x140209db6
0000000140209d8f mov      rcx, qword ptr [rcx + 0x158]
0000000140209d96 mov      edx, 0x1f
0000000140209d9b mov      qword ptr [rsp + 0x20], r8
0000000140209da0 mov      r9, r13
0000000140209da3 lea      r8, [rip + 0x48ebe6]
0000000140209daa call     0x14003c968
0000000140209daf lea      r8, [rip + 0x40a79a]
0000000140209db6 mov      rcx, qword ptr [rip + 0x716243]
0000000140209dbd cmp      rcx, r12
0000000140209dc0 je       0x140209e00
0000000140209dc2 cmp      byte ptr [rcx + 0x169], 4
0000000140209dc9 jb       0x140209e00
0000000140209dcb mov      eax, dword ptr [rcx + 0x16c]
0000000140209dd1 test     bl, al
0000000140209dd3 je       0x140209e00
0000000140209dd5 movzx    eax, word ptr [rsi + 0x96e2]
0000000140209ddc mov      edx, 0x20
0000000140209de1 mov      rcx, qword ptr [rcx + 0x158]
0000000140209de8 mov      r9, r13
0000000140209deb mov      dword ptr [rsp + 0x28], eax
0000000140209def mov      qword ptr [rsp + 0x20], r8
0000000140209df4 lea      r8, [rip + 0x48eb95]
0000000140209dfb call     0x14003ca14
0000000140209e00 mov      dl, byte ptr [rbp - 0x44]
0000000140209e03 test     byte ptr [rsi + 0x96e2], bl
0000000140209e09 jne      0x140209e56
0000000140209e0b test     dl, 0x40
0000000140209e0e je       0x140209e56
0000000140209e10 and      byte ptr [rdi + 0x8c], 0xbf
0000000140209e17 mov      rcx, qword ptr [rip + 0x7161e2]
0000000140209e1e cmp      rcx, r12
0000000140209e21 je       0x140209e6b
0000000140209e23 cmp      byte ptr [rcx + 0x169], 4
0000000140209e2a jb       0x140209e6b
0000000140209e2c mov      eax, dword ptr [rcx + 0x16c]
0000000140209e32 test     bl, al
0000000140209e34 je       0x140209e6b
0000000140209e36 mov      rcx, qword ptr [rcx + 0x158]
0000000140209e3d lea      r8, [rip + 0x48eb4c]
0000000140209e44 mov      edx, 0x21
0000000140209e49 mov      r9, r13
0000000140209e4c call     0x140008874
0000000140209e51 mov      dl, byte ptr [rbp - 0x44]
0000000140209e54 jmp      0x140209e6b
0000000140209e56 mov      cl, byte ptr [rdi + 0x8c]
0000000140209e5c mov      al, dl
0000000140209e5e and      cl, 0xbf
0000000140209e61 and      al, 0x40
0000000140209e63 or       cl, al
0000000140209e65 mov      byte ptr [rdi + 0x8c], cl
0000000140209e6b test     byte ptr [rsi + 0x96e2], 2
0000000140209e72 jne      0x140209ebe
0000000140209e74 test     dl, dl
0000000140209e76 jns      0x140209ebe
0000000140209e78 and      byte ptr [rdi + 0x8c], 0x7f
0000000140209e7f mov      rcx, qword ptr [rip + 0x71617a]
0000000140209e86 cmp      rcx, r12
0000000140209e89 je       0x140209ed3
0000000140209e8b cmp      byte ptr [rcx + 0x169], 4
0000000140209e92 jb       0x140209ed3
0000000140209e94 mov      eax, dword ptr [rcx + 0x16c]
0000000140209e9a test     bl, al
0000000140209e9c je       0x140209ed3
0000000140209e9e mov      rcx, qword ptr [rcx + 0x158]
0000000140209ea5 lea      r8, [rip + 0x48eae4]
0000000140209eac mov      edx, 0x22
0000000140209eb1 mov      r9, r13
0000000140209eb4 call     0x140008874
0000000140209eb9 mov      dl, byte ptr [rbp - 0x44]
0000000140209ebc jmp      0x140209ed3
0000000140209ebe mov      cl, byte ptr [rdi + 0x8c]
0000000140209ec4 mov      al, dl
0000000140209ec6 and      cl, 0x7f
0000000140209ec9 and      al, 0x80
0000000140209ecb or       cl, al
0000000140209ecd mov      byte ptr [rdi + 0x8c], cl
0000000140209ed3 test     byte ptr [rsi + 0x96e2], 4
0000000140209eda mov      cl, byte ptr [rbp - 0x43]
0000000140209edd jne      0x140209f29
0000000140209edf test     bl, cl
0000000140209ee1 je       0x140209f29
0000000140209ee3 and      byte ptr [rdi + 0x8d], 0xfe
0000000140209eea mov      rcx, qword ptr [rip + 0x71610f]
0000000140209ef1 cmp      rcx, r12
0000000140209ef4 je       0x140209f3b
0000000140209ef6 cmp      byte ptr [rcx + 0x169], 4
0000000140209efd jb       0x140209f3b
0000000140209eff mov      eax, dword ptr [rcx + 0x16c]
0000000140209f05 test     bl, al
0000000140209f07 je       0x140209f3b
0000000140209f09 mov      rcx, qword ptr [rcx + 0x158]
0000000140209f10 lea      r8, [rip + 0x48ea79]
0000000140209f17 mov      edx, 0x23
0000000140209f1c mov      r9, r13
0000000140209f1f call     0x140008874
0000000140209f24 mov      dl, byte ptr [rbp - 0x44]
0000000140209f27 jmp      0x140209f3b
0000000140209f29 mov      al, byte ptr [rdi + 0x8d]
0000000140209f2f and      cl, bl
0000000140209f31 and      al, 0xfe
0000000140209f33 or       al, cl
0000000140209f35 mov      byte ptr [rdi + 0x8d], al
0000000140209f3b test     byte ptr [rsi + 0x96e2], 8
0000000140209f42 mov      cl, byte ptr [rbp - 0x40]
0000000140209f45 jne      0x140209f91
0000000140209f47 test     cl, cl
0000000140209f49 jns      0x140209f91
0000000140209f4b and      byte ptr [rdi + 0x90], 0x7f
0000000140209f52 mov      rcx, qword ptr [rip + 0x7160a7]
0000000140209f59 cmp      rcx, r12
0000000140209f5c je       0x140209fa4
0000000140209f5e cmp      byte ptr [rcx + 0x169], 4
0000000140209f65 jb       0x140209fa4
0000000140209f67 mov      eax, dword ptr [rcx + 0x16c]
0000000140209f6d test     bl, al
0000000140209f6f je       0x140209fa4
0000000140209f71 mov      rcx, qword ptr [rcx + 0x158]
0000000140209f78 lea      r8, [rip + 0x48ea11]
0000000140209f7f mov      edx, 0x24
0000000140209f84 mov      r9, r13
0000000140209f87 call     0x140008874
0000000140209f8c mov      dl, byte ptr [rbp - 0x44]
0000000140209f8f jmp      0x140209fa4
0000000140209f91 mov      al, byte ptr [rdi + 0x90]
0000000140209f97 and      cl, 0x80
0000000140209f9a and      al, 0x7f
0000000140209f9c or       al, cl
0000000140209f9e mov      byte ptr [rdi + 0x90], al
0000000140209fa4 test     byte ptr [rsi + 0x96e2], 0x10
0000000140209fab jne      0x140209ff8
0000000140209fad test     dl, 3
0000000140209fb0 je       0x140209ff8
0000000140209fb2 and      byte ptr [rdi + 0x8c], 0xfc
0000000140209fb9 mov      rcx, qword ptr [rip + 0x716040]
0000000140209fc0 cmp      rcx, r12
0000000140209fc3 je       0x14020a00d
0000000140209fc5 cmp      byte ptr [rcx + 0x169], 4
0000000140209fcc jb       0x14020a00d
0000000140209fce mov      eax, dword ptr [rcx + 0x16c]
0000000140209fd4 test     bl, al
0000000140209fd6 je       0x14020a00d
0000000140209fd8 mov      rcx, qword ptr [rcx + 0x158]
0000000140209fdf lea      r8, [rip + 0x48e9aa]
0000000140209fe6 mov      edx, 0x25
0000000140209feb mov      r9, r13
0000000140209fee call     0x140008874
0000000140209ff3 mov      dl, byte ptr [rbp - 0x44]
0000000140209ff6 jmp      0x14020a00d
0000000140209ff8 mov      cl, byte ptr [rdi + 0x8c]
0000000140209ffe mov      al, dl
000000014020a000 and      cl, 0xfc
000000014020a003 and      al, 3
000000014020a005 or       cl, al
000000014020a007 mov      byte ptr [rdi + 0x8c], cl
000000014020a00d test     byte ptr [rsi + 0x96e2], 0x20
000000014020a014 jne      0x14020a061
000000014020a016 test     dl, 0x1c
000000014020a019 je       0x14020a061
000000014020a01b and      byte ptr [rdi + 0x8c], 0xe3
000000014020a022 mov      rcx, qword ptr [rip + 0x715fd7]
000000014020a029 cmp      rcx, r12
000000014020a02c je       0x14020a076
000000014020a02e cmp      byte ptr [rcx + 0x169], 4
000000014020a035 jb       0x14020a076
000000014020a037 mov      eax, dword ptr [rcx + 0x16c]
000000014020a03d test     bl, al
000000014020a03f je       0x14020a076
000000014020a041 mov      rcx, qword ptr [rcx + 0x158]
000000014020a048 lea      r8, [rip + 0x48e941]
000000014020a04f mov      edx, 0x26
000000014020a054 mov      r9, r13
000000014020a057 call     0x140008874
000000014020a05c mov      dl, byte ptr [rbp - 0x44]
000000014020a05f jmp      0x14020a076
000000014020a061 mov      cl, byte ptr [rdi + 0x8c]
000000014020a067 mov      al, dl
000000014020a069 and      cl, 0xe3
000000014020a06c and      al, 0x1c
000000014020a06e or       cl, al
000000014020a070 mov      byte ptr [rdi + 0x8c], cl
000000014020a076 test     byte ptr [rsi + 0x96e2], 0x40
000000014020a07d jne      0x14020a0c7
000000014020a07f test     dl, 0x20
000000014020a082 je       0x14020a0c7
000000014020a084 and      byte ptr [rdi + 0x8c], 0xdf
000000014020a08b mov      rcx, qword ptr [rip + 0x715f6e]
000000014020a092 cmp      rcx, r12
000000014020a095 je       0x14020a0da
000000014020a097 cmp      byte ptr [rcx + 0x169], 4
000000014020a09e jb       0x14020a0da
000000014020a0a0 mov      eax, dword ptr [rcx + 0x16c]
000000014020a0a6 test     bl, al
000000014020a0a8 je       0x14020a0da
000000014020a0aa mov      rcx, qword ptr [rcx + 0x158]
000000014020a0b1 lea      r8, [rip + 0x48e8d8]
000000014020a0b8 mov      edx, 0x27
000000014020a0bd mov      r9, r13
000000014020a0c0 call     0x140008874
000000014020a0c5 jmp      0x14020a0da
000000014020a0c7 mov      al, byte ptr [rdi + 0x8c]
000000014020a0cd and      dl, 0x20
000000014020a0d0 and      al, 0xdf
000000014020a0d2 or       al, dl
000000014020a0d4 mov      byte ptr [rdi + 0x8c], al
000000014020a0da mov      al, byte ptr [rsi + 0x96e2]
000000014020a0e0 mov      cl, byte ptr [rbp - 0x3f]
000000014020a0e3 test     al, al
000000014020a0e5 js       0x14020a12e
000000014020a0e7 test     bl, cl
000000014020a0e9 je       0x14020a12e
000000014020a0eb and      byte ptr [rdi + 0x91], 0xfe
000000014020a0f2 mov      rcx, qword ptr [rip + 0x715f07]
000000014020a0f9 cmp      rcx, r12
000000014020a0fc je       0x14020a140
000000014020a0fe cmp      byte ptr [rcx + 0x169], 4
000000014020a105 jb       0x14020a140
000000014020a107 mov      eax, dword ptr [rcx + 0x16c]
000000014020a10d test     bl, al
000000014020a10f je       0x14020a140
000000014020a111 mov      rcx, qword ptr [rcx + 0x158]
000000014020a118 lea      r8, [rip + 0x48e871]
000000014020a11f mov      edx, 0x28
000000014020a124 mov      r9, r13
000000014020a127 call     0x140008874
000000014020a12c jmp      0x14020a140
000000014020a12e mov      al, byte ptr [rdi + 0x91]
000000014020a134 and      cl, bl
000000014020a136 and      al, 0xfe
000000014020a138 or       al, cl
000000014020a13a mov      byte ptr [rdi + 0x91], al
000000014020a140 mov      rcx, qword ptr [r14 + 0x8d08]
000000014020a147 call     0x14005df60
000000014020a14c test     byte ptr [rdi + 0xc0], bl
000000014020a152 je       0x14020a1ba
000000014020a154 cmp      byte ptr [rax + 0x151c], 0
000000014020a15b je       0x14020a1ba
000000014020a15d and      byte ptr [rdi + 0x8c], 0xdf
000000014020a164 mov      al, byte ptr [rdi + 0x8c]
000000014020a16a and      al, 0xe3
000000014020a16c and      al, 0xfc
000000014020a16e mov      byte ptr [rdi + 0x8c], al
000000014020a174 mov      rcx, qword ptr [rip + 0x715e85]
000000014020a17b cmp      rcx, r12
000000014020a17e je       0x14020a1ba
000000014020a180 cmp      byte ptr [rcx + 0x169], 4
000000014020a187 jb       0x14020a1ba
000000014020a189 mov      eax, dword ptr [rcx + 0x16c]
000000014020a18f test     bl, al
000000014020a191 je       0x14020a1ba
000000014020a193 mov      rcx, qword ptr [rcx + 0x158]
000000014020a19a lea      rax, [rip + 0x40a36f]
000000014020a1a1 mov      edx, 0x1d
000000014020a1a6 mov      qword ptr [rsp + 0x20], rax
000000014020a1ab mov      r9, r13
000000014020a1ae lea      r8, [rip + 0x48e7db]
000000014020a1b5 call     0x14003c968
000000014020a1ba mov      rcx, qword ptr [rbp + 0x30]
000000014020a1be xor      rcx, rsp
000000014020a1c1 call     0x1405f45b0
000000014020a1c6 add      rsp, 0x140
000000014020a1cd pop      r14
000000014020a1cf pop      r13
000000014020a1d1 pop      r12
000000014020a1d3 pop      rdi
000000014020a1d4 pop      rsi
000000014020a1d5 pop      rbx
000000014020a1d6 pop      rbp
000000014020a1d7 ret      