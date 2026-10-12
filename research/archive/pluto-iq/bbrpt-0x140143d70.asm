0000000140143d70 mov      qword ptr [rsp + 0x20], rbx
0000000140143d75 push     rbp
0000000140143d76 push     rsi
0000000140143d77 push     rdi
0000000140143d78 push     r12
0000000140143d7a push     r13
0000000140143d7c push     r14
0000000140143d7e push     r15
0000000140143d80 sub      rsp, 0x50
0000000140143d84 mov      rax, qword ptr [rip + 0x7e36d5]
0000000140143d8b xor      rax, rsp
0000000140143d8e mov      qword ptr [rsp + 0x48], rax
0000000140143d93 movsxd   rax, dword ptr [r8 + 0x6c]
0000000140143d97 xor      r13d, r13d
0000000140143d9a xorps    xmm0, xmm0
0000000140143d9d mov      dword ptr [rsp + 0x20], r13d
0000000140143da2 mov      rsi, r8
0000000140143da5 mov      rdi, rdx
0000000140143da8 mov      r14, rcx
0000000140143dab lea      ebx, [r13 + 2]
0000000140143daf movups   xmmword ptr [rsp + 0x28], xmm0
0000000140143db4 movups   xmmword ptr [rsp + 0x38], xmm0
0000000140143db9 cmp      eax, ebx
0000000140143dbb jne      0x140143dc6
0000000140143dbd lea      r15, [rcx + 0x544f60]
0000000140143dc4 jmp      0x140143dd7
0000000140143dc6 imul     r15, rax, 0x1dc0
0000000140143dcd add      r15, 0x53f620
0000000140143dd4 add      r15, r14
0000000140143dd7 mov      edx, 0x100
0000000140143ddc mov      rcx, rdi
0000000140143ddf call     0x140031290
0000000140143de4 mov      eax, dword ptr [rsi + 0x60]
0000000140143de7 mov      r12d, r13d
0000000140143dea mov      dword ptr [rdi + 0x18], eax
0000000140143ded cmp      dword ptr [rsi + 0x7c], 1
0000000140143df1 jne      0x140143df6
0000000140143df3 or       byte ptr [rdi + 0x20], bl
0000000140143df6 cmp      dword ptr [rsi + 0xd4], r13d
0000000140143dfd jne      0x140143e08
0000000140143dff cmp      dword ptr [rsi + 0xd8], r13d
0000000140143e06 je       0x140143e0c
0000000140143e08 or       byte ptr [rdi + 0x20], 0x40
0000000140143e0c mov      rax, qword ptr [r14 + 0xaf3b8]
0000000140143e13 mov      rcx, qword ptr [rax]
0000000140143e16 mov      rax, qword ptr [rcx + 0x20710]
0000000140143e1d cmp      byte ptr [rax + 0xf4e8], r13b
0000000140143e24 je       0x140143e2a
0000000140143e26 or       byte ptr [rdi + 0x20], 0x10
0000000140143e2a cmp      dword ptr [rsi + 0x74], 2
0000000140143e2e mov      ebp, 0xa0000003
0000000140143e33 mov      ebx, 0x21
0000000140143e38 ja       0x140143e50
0000000140143e3a movzx    ecx, word ptr [rsi + 0x78]
0000000140143e3e call     0x14008e0fc
0000000140143e43 mov      byte ptr [rdi + 0x21], al
0000000140143e46 mov      ebp, 0xa0000007
0000000140143e4b mov      ebx, 0x22
0000000140143e50 mov      rcx, qword ptr [r14 + 0xab230]
0000000140143e57 mov      eax, 0xfffe
0000000140143e5c mov      r10d, 3
0000000140143e62 test     rcx, rcx
0000000140143e65 je       0x140143f01
0000000140143e6b mov      rdx, qword ptr [r15]
0000000140143e6e lea      r8, [rsp + 0x28]
0000000140143e73 call     0x1401be1fc
0000000140143e78 cmp      byte ptr [rsi + 0x1f8], 1
0000000140143e7f mov      r15d, dword ptr [rsp + 0x28]
0000000140143e84 mov      ecx, r15d
0000000140143e87 jne      0x140143e91
0000000140143e89 mov      dl, byte ptr [rsi + 0x200]
0000000140143e8f jmp      0x140143e95
0000000140143e91 mov      dl, byte ptr [rsp + 0x2c]
0000000140143e95 call     0x140144204
0000000140143e9a movzx    ecx, word ptr [rsp + 0x22]
0000000140143e9f movzx    edx, ax
0000000140143ea2 mov      r10d, 3
0000000140143ea8 cmp      r15d, 1
0000000140143eac je       0x140143eb4
0000000140143eae cmp      r15d, 2
0000000140143eb2 jne      0x140143ebe
0000000140143eb4 mov      eax, 0x140
0000000140143eb9 or       cx, ax
0000000140143ebc jmp      0x140143ed6
0000000140143ebe mov      eax, 0x80
0000000140143ec3 or       cx, ax
0000000140143ec6 cmp      dword ptr [rsi + 0x78], r10d
0000000140143eca jg       0x140143ed2
0000000140143ecc or       cx, 0x20
0000000140143ed0 jmp      0x140143ed6
0000000140143ed2 or       cx, 0x40
0000000140143ed6 mov      eax, 0xfffe
0000000140143edb mov      r15d, 1
0000000140143ee1 add      bx, r15w
0000000140143ee5 and      bx, ax
0000000140143ee8 movzx    eax, bx
0000000140143eeb or       ebp, 8
0000000140143eee mov      word ptr [rax + rdi], dx
0000000140143ef2 lea      ebx, [rax + 4]
0000000140143ef5 mov      word ptr [rax + rdi + 2], cx
0000000140143efa mov      eax, 0xfffe
0000000140143eff jmp      0x140143f07
0000000140143f01 mov      r15d, 1
0000000140143f07 add      bx, r15w
0000000140143f0b and      bx, ax
0000000140143f0e cmp      dword ptr [rsi + 0xd4], r13d
0000000140143f15 je       0x140143f1e
0000000140143f17 movzx    eax, bx
0000000140143f1a or       byte ptr [rax + rdi], 2
0000000140143f1e mov      eax, dword ptr [rsi + 0x74]
0000000140143f21 bts      ebp, 0xe
0000000140143f25 sub      eax, r10d
0000000140143f28 add      bx, 2
0000000140143f2c cmp      eax, r15d
0000000140143f2f ja       0x140143f50
0000000140143f31 movzx    edx, bx
0000000140143f34 mov      r8, rsi
0000000140143f37 add      rdx, rdi
0000000140143f3a mov      rcx, r14
0000000140143f3d call     0x140144b18
0000000140143f42 mov      r10d, 3
0000000140143f48 bts      ebp, 0x13
0000000140143f4c add      bx, r10w
0000000140143f50 cmp      dword ptr [rsi + 0xc0], r15d
0000000140143f57 jne      0x140143fb7
0000000140143f59 mov      rcx, qword ptr [rip + 0x7dc0a0]
0000000140143f60 lea      rax, [rip + 0x7dc099]
0000000140143f67 cmp      rcx, rax
0000000140143f6a je       0x140143f96
0000000140143f6c cmp      byte ptr [rcx + 0x69], 4
0000000140143f70 jb       0x140143f96
0000000140143f72 test     dword ptr [rcx + 0x6c], 0x2000
0000000140143f79 je       0x140143f96
0000000140143f7b mov      rcx, qword ptr [rcx + 0x58]
0000000140143f7f lea      r8, [rip + 0x54fb52]
0000000140143f86 mov      edx, 0xa
0000000140143f8b call     0x140001b88
0000000140143f90 mov      r10d, 3
0000000140143f96 add      bx, r10w
0000000140143f9a mov      eax, 0xfffc
0000000140143f9f and      bx, ax
0000000140143fa2 bts      ebp, 0x14
0000000140143fa6 mov      al, byte ptr [rsi + 0x58]
0000000140143fa9 movzx    ecx, bx
0000000140143fac mov      ebx, 8
0000000140143fb1 add      bx, cx
0000000140143fb4 mov      byte ptr [rcx + rdi], al
0000000140143fb7 mov      eax, dword ptr [rsi + 0x74]
0000000140143fba sub      eax, 5
0000000140143fbd cmp      eax, r15d
0000000140143fc0 ja       0x140143fee
0000000140143fc2 add      bx, r15w
0000000140143fc6 mov      eax, 0xfffe
0000000140143fcb and      bx, ax
0000000140143fce mov      r8, rsi
0000000140143fd1 movzx    ebx, bx
0000000140143fd4 mov      rcx, r14
0000000140143fd7 lea      rdx, [rdi + rbx]
0000000140143fdb call     0x140144c40
0000000140143fe0 bts      ebp, 0x15
0000000140143fe4 mov      r10d, 3
0000000140143fea add      bx, 0xc
0000000140143fee mov      eax, dword ptr [rsi + 0x74]
0000000140143ff1 sub      eax, 7
0000000140143ff4 cmp      eax, r10d
0000000140143ff7 ja       0x140144025
0000000140143ff9 add      bx, r15w
0000000140143ffd mov      eax, 0xfffe
0000000140144002 and      bx, ax
0000000140144005 mov      r8, rsi
0000000140144008 movzx    ebx, bx
000000014014400b mov      rcx, r14
000000014014400e lea      rdx, [rdi + rbx]
0000000140144012 call     0x140144250
0000000140144017 bts      ebp, 0x17
000000014014401b mov      r10d, 3
0000000140144021 add      bx, 0xc
0000000140144025 cmp      byte ptr [rsi + 0x202], r15b
000000014014402c jne      0x1401440b5
0000000140144032 cmp      r13w, word ptr [rsi + 0x218]
000000014014403a je       0x1401440b5
000000014014403c mov      rcx, qword ptr [rsi + 0x210]
0000000140144043 mov      eax, 0xfffe
0000000140144048 add      bx, r15w
000000014014404c mov      edx, 0xfff0
0000000140144051 and      bx, ax
0000000140144054 movzx    r9d, bx
0000000140144058 mov      word ptr [r9 + rdi], r10w
000000014014405d lea      ebx, [r9 + 4]
0000000140144061 mov      al, byte ptr [rcx]
0000000140144063 and      al, 0xf
0000000140144065 movzx    r8d, al
0000000140144069 movzx    eax, word ptr [r9 + rdi + 2]
000000014014406f and      ax, dx
0000000140144072 or       r8w, ax
0000000140144076 mov      word ptr [r9 + rdi + 2], r8w
000000014014407c and      r8w, 0xf
0000000140144081 mov      al, byte ptr [rcx + 2]
0000000140144084 and      al, r15b
0000000140144087 movzx    edx, al
000000014014408a movzx    eax, byte ptr [rcx + 1]
000000014014408e add      dx, dx
0000000140144091 or       dx, ax
0000000140144094 mov      al, byte ptr [rcx]
0000000140144096 shl      dx, 3
000000014014409a shr      al, 5
000000014014409d movzx    ecx, al
00000001401440a0 or       dx, cx
00000001401440a3 shl      dx, 4
00000001401440a7 or       dx, r8w
00000001401440ab mov      word ptr [r9 + rdi + 2], dx
00000001401440b1 bts      ebp, 0x1b
00000001401440b5 mov      r8b, 0x6f
00000001401440b8 cmp      byte ptr [rsi + 0x1e0], r13b
00000001401440bf je       0x1401440c9
00000001401440c1 mov      cl, byte ptr [rsi + 0x1e3]
00000001401440c7 jmp      0x1401440d8
00000001401440c9 cmp      byte ptr [rsi + 0x1f8], r13b
00000001401440d0 je       0x1401440dd
00000001401440d2 mov      cl, byte ptr [rsi + 0x1f9]
00000001401440d8 sub      cl, r8b
00000001401440db jmp      0x1401440df
00000001401440dd mov      cl, 0xff
00000001401440df movzx    eax, bx
00000001401440e2 mov      edx, 2
00000001401440e7 add      bx, dx
00000001401440ea mov      byte ptr [rax + rdi], cl
00000001401440ed movzx    eax, bx
00000001401440f0 sub      ax, r15w
00000001401440f4 movzx    eax, ax
00000001401440f7 mov      byte ptr [rax + rdi], r13b
00000001401440fb cmp      byte ptr [rsi + 0x1e0], r13b
0000000140144102 je       0x14014410c
0000000140144104 mov      cl, byte ptr [rsi + 0x1e4]
000000014014410a jmp      0x14014411b
000000014014410c cmp      byte ptr [rsi + 0x1f8], r13b
0000000140144113 je       0x140144120
0000000140144115 mov      cl, byte ptr [rsi + 0x1f9]
000000014014411b sub      cl, r8b
000000014014411e jmp      0x140144122
0000000140144120 mov      cl, 0xff
0000000140144122 movzx    eax, bx
0000000140144125 add      bx, dx
0000000140144128 movzx    ebx, bx
000000014014412b mov      byte ptr [rax + rdi], cl
000000014014412e movzx    eax, bx
0000000140144131 sub      ax, r15w
0000000140144135 movzx    eax, ax
0000000140144138 mov      byte ptr [rax + rdi], r15b
000000014014413c mov      word ptr [rbx + rdi], 0xe000
0000000140144142 mov      dword ptr [rbx + rdi + 2], 0x2064c
000000014014414a mov      al, byte ptr [rsi + 0x58]
000000014014414d mov      byte ptr [rbx + rdi + 6], al
0000000140144151 mov      byte ptr [rbx + rdi + 7], 0xff
0000000140144156 add      bx, 8
000000014014415a mov      eax, dword ptr [rsi + 0x74]
000000014014415d sub      eax, 0x16
0000000140144160 cmp      eax, 9
0000000140144163 ja       0x1401441bd
0000000140144165 add      bx, r10w
0000000140144169 mov      eax, 0xfffc
000000014014416e and      bx, ax
0000000140144171 mov      r8, rsi
0000000140144174 movzx    ebx, bx
0000000140144177 mov      rcx, r14
000000014014417a mov      r12d, 0x10000000
0000000140144180 lea      rdx, [rdi + rbx]
0000000140144184 mov      word ptr [rbx + rdi + 2], 0x2c
000000014014418b mov      word ptr [rdx], 0x22
0000000140144190 add      rdx, 4
0000000140144194 call     0x1401449c8
0000000140144199 add      bx, 0x30
000000014014419d lea      rdx, [rdi + 4]
00000001401441a1 movzx    ebx, bx
00000001401441a4 mov      r8, rsi
00000001401441a7 add      rdx, rbx
00000001401441aa mov      rcx, r14
00000001401441ad mov      dword ptr [rbx + rdi], 0xc0021
00000001401441b4 call     0x140144bdc
00000001401441b9 add      bx, 0x10
00000001401441bd mov      word ptr [rdi], r13w
00000001401441c1 movzx    eax, bx
00000001401441c4 mov      word ptr [rdi + 2], bx
00000001401441c8 mov      dword ptr [rdi + 4], ebp
00000001401441cb mov      dword ptr [rdi + 8], 0xa0000820
00000001401441d2 mov      dword ptr [rdi + 0xc], 0xc0000820
00000001401441d9 mov      dword ptr [rdi + 0x10], r12d
00000001401441dd mov      rcx, qword ptr [rsp + 0x48]
00000001401441e2 xor      rcx, rsp
00000001401441e5 call     0x1405f45b0
00000001401441ea mov      rbx, qword ptr [rsp + 0xa8]
00000001401441f2 add      rsp, 0x50
00000001401441f6 pop      r15
00000001401441f8 pop      r14
00000001401441fa pop      r13
00000001401441fc pop      r12
00000001401441fe pop      rdi
00000001401441ff pop      rsi
0000000140144200 pop      rbp
0000000140144201 ret      