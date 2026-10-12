000000014045907c push     rbp
000000014045907e push     rbx
000000014045907f push     rsi
0000000140459080 push     rdi
0000000140459081 push     r12
0000000140459083 push     r13
0000000140459085 push     r14
0000000140459087 push     r15
0000000140459089 mov      rbp, rsp
000000014045908c sub      rsp, 0x78
0000000140459090 mov      rax, qword ptr [rip + 0x4ce3c9]
0000000140459097 xor      rax, rsp
000000014045909a mov      qword ptr [rbp - 0x10], rax
000000014045909e xor      eax, eax
00000001404590a0 movsxd   rsi, edx
00000001404590a3 mov      qword ptr [rbp - 0x20], rax
00000001404590a7 xorps    xmm0, xmm0
00000001404590aa mov      dword ptr [rbp - 0x18], eax
00000001404590ad mov      r13d, 1
00000001404590b3 mov      rax, qword ptr [rcx]
00000001404590b6 mov      r14d, r9d
00000001404590b9 movups   xmmword ptr [rbp - 0x30], xmm0
00000001404590bd mov      edi, r8d
00000001404590c0 mov      rbx, rcx
00000001404590c3 mov      r12b, byte ptr [rax + 0xe1c4]
00000001404590ca mov      eax, r13d
00000001404590cd lock xadd dword ptr [rcx + 0xb93c], eax
00000001404590d5 mov      r15d, dword ptr [rbp + 0x68]
00000001404590d9 lea      r8, [rip + 0x4c6f20]
00000001404590e0 add      eax, r13d
00000001404590e3 cmp      eax, r13d
00000001404590e6 jle      0x140459138
00000001404590e8 mov      rcx, qword ptr [rip + 0x4c6f11]
00000001404590ef cmp      rcx, r8
00000001404590f2 je       0x140459138
00000001404590f4 cmp      byte ptr [rcx + 0x169], 3
00000001404590fb jb       0x140459138
00000001404590fd test     dword ptr [rcx + 0x16c], 0x2000
0000000140459107 je       0x140459138
0000000140459109 mov      rcx, qword ptr [rcx + 0x158]
0000000140459110 lea      edx, [r13 + 0x1e]
0000000140459114 mov      dword ptr [rsp + 0x30], r15d
0000000140459119 lea      r8, [rip + 0x284738]
0000000140459120 mov      dword ptr [rsp + 0x28], r9d
0000000140459125 mov      r9d, esi
0000000140459128 mov      dword ptr [rsp + 0x20], edi
000000014045912c call     0x140008794
0000000140459131 lea      r8, [rip + 0x4c6ec8]
0000000140459138 xor      edx, edx
000000014045913a cmp      r12b, r13b
000000014045913d jne      0x1404592b4
0000000140459143 cmp      dword ptr [rbx + 0xa9b4], r13d
000000014045914a jne      0x1404592b4
0000000140459150 cmp      byte ptr [rbx + 0x5b0], dl
0000000140459156 jne      0x1404592b4
000000014045915c mov      dword ptr [rbx + 0xa9b8], r13d
0000000140459163 mov      rcx, qword ptr [rip + 0x4c6e96]
000000014045916a cmp      rcx, r8
000000014045916d je       0x1404591b4
000000014045916f cmp      byte ptr [rcx + 0x229], 4
0000000140459176 jb       0x1404591b4
0000000140459178 bt       dword ptr [rcx + 0x22c], 0x16
0000000140459180 jae      0x1404591b4
0000000140459182 mov      rcx, qword ptr [rcx + 0x218]
0000000140459189 lea      r8, [rip + 0x2846c8]
0000000140459190 mov      dword ptr [rsp + 0x30], esi
0000000140459194 mov      edx, 0x20
0000000140459199 mov      dword ptr [rsp + 0x28], r15d
000000014045919e mov      r9d, edi
00000001404591a1 mov      dword ptr [rsp + 0x20], r14d
00000001404591a6 call     0x140008794
00000001404591ab xor      edx, edx
00000001404591ad lea      r8, [rip + 0x4c6e4c]
00000001404591b4 cmp      dword ptr [rbx + 0x510], 0x66
00000001404591bb jne      0x1404591cd
00000001404591bd mov      dword ptr [rbp - 0x38], 0xe000
00000001404591c4 mov      dword ptr [rbp - 0x34], 0xf000
00000001404591cb jmp      0x1404591db
00000001404591cd mov      dword ptr [rbp - 0x38], 0x3e000
00000001404591d4 mov      dword ptr [rbp - 0x34], 0x3f000
00000001404591db mov      byte ptr [rbp - 0x16], dl
00000001404591de mov      dword ptr [rbp - 0x20], r15d
00000001404591e2 mov      dword ptr [rbp - 0x1c], r14d
00000001404591e6 bt       edi, 0x10
00000001404591ea jae      0x140459201
00000001404591ec mov      ecx, dword ptr [rbp + rsi*4 - 0x38]
00000001404591f0 mov      r9d, edx
00000001404591f3 and      qword ptr [rbp - 0x30], 0
00000001404591f8 movzx    edi, dil
00000001404591fc lea      eax, [rcx + rdi*4]
00000001404591ff jmp      0x14045920e
0000000140459201 mov      r9d, r13d
0000000140459204 mov      dword ptr [rbp - 0x28], esi
0000000140459207 mov      qword ptr [rbp - 0x30], r9
000000014045920b movzx    eax, di
000000014045920e mov      dword ptr [rbp - 0x24], eax
0000000140459211 mov      rcx, qword ptr [rip + 0x4c6de8]
0000000140459218 cmp      rcx, r8
000000014045921b je       0x14045924c
000000014045921d cmp      byte ptr [rcx + 0x229], 4
0000000140459224 jb       0x14045924c
0000000140459226 bt       dword ptr [rcx + 0x22c], 0x16
000000014045922e jae      0x14045924c
0000000140459230 mov      rcx, qword ptr [rcx + 0x218]
0000000140459237 lea      r8, [rip + 0x28461a]
000000014045923e mov      edx, 0x21
0000000140459243 mov      dword ptr [rsp + 0x20], edi
0000000140459247 call     0x140001bec
000000014045924c mov      rcx, qword ptr [rbx + 8]
0000000140459250 lea      rdx, [rbp - 0x30]
0000000140459254 call     0x140276160
0000000140459259 test     eax, eax
000000014045925b je       0x1404592a8
000000014045925d mov      rcx, qword ptr [rip + 0x4c6d9c]
0000000140459264 lea      rdx, [rip + 0x4c6d95]
000000014045926b cmp      rcx, rdx
000000014045926e je       0x1404592a8
0000000140459270 cmp      byte ptr [rcx + 0x169], 3
0000000140459277 jb       0x1404592a8
0000000140459279 test     dword ptr [rcx + 0x16c], 0x2000
0000000140459283 je       0x1404592a8
0000000140459285 mov      rcx, qword ptr [rcx + 0x158]
000000014045928c lea      r9, [rip + 0x1feaad]
0000000140459293 mov      edx, 0x22
0000000140459298 mov      dword ptr [rsp + 0x20], eax
000000014045929c lea      r8, [rip + 0x2845b5]
00000001404592a3 call     0x1400088d8
00000001404592a8 add      dword ptr [rbx + 0xa9c4], r13d
00000001404592af jmp      0x1404593d7
00000001404592b4 mov      rcx, qword ptr [rbx + 8]
00000001404592b8 mov      eax, dword ptr [rcx]
00000001404592ba sub      eax, 0xa
00000001404592bd test     eax, 0xfffffffd
00000001404592c2 jne      0x14045938d
00000001404592c8 cmp      dword ptr [rbx + 0xd38], edx
00000001404592ce je       0x14045938d
00000001404592d4 cmp      byte ptr [rbx + 0xd40], dl
00000001404592da je       0x14045938d
00000001404592e0 cmp      byte ptr [rbx + 0xd34], 0x50
00000001404592e7 jne      0x1404592f3
00000001404592e9 mov      rcx, rbx
00000001404592ec call     0x140378950
00000001404592f1 xor      edx, edx
00000001404592f3 movzx    eax, byte ptr [rbx + 0xd34]
00000001404592fa mov      dword ptr [rbx + 0xd3c], r13d
0000000140459301 lea      rcx, [rax + rax*2]
0000000140459305 mov      dword ptr [rbx + rcx*8 + 0x5b4], edx
000000014045930c mov      dword ptr [rbx + rcx*8 + 0x5b8], esi
0000000140459313 mov      dword ptr [rbx + rcx*8 + 0x5bc], edi
000000014045931a mov      dword ptr [rbx + rcx*8 + 0x5c0], r14d
0000000140459322 mov      dword ptr [rbx + rcx*8 + 0x5c4], r15d
000000014045932a mov      rcx, qword ptr [rip + 0x4c6ccf]
0000000140459331 lea      rdx, [rip + 0x4c6cc8]
0000000140459338 cmp      rcx, rdx
000000014045933b je       0x140459384
000000014045933d cmp      byte ptr [rcx + 0x229], 4
0000000140459344 jb       0x140459384
0000000140459346 bt       dword ptr [rcx + 0x22c], 0x16
000000014045934e jae      0x140459384
0000000140459350 movzx    eax, byte ptr [rbx + 0xd34]
0000000140459357 lea      r8, [rip + 0x2844fa]
000000014045935e mov      rcx, qword ptr [rcx + 0x218]
0000000140459365 mov      edx, 0x23
000000014045936a mov      dword ptr [rsp + 0x38], eax
000000014045936e mov      r9d, esi
0000000140459371 mov      dword ptr [rsp + 0x30], r15d
0000000140459376 mov      dword ptr [rsp + 0x28], r14d
000000014045937b mov      dword ptr [rsp + 0x20], edi
000000014045937f call     0x140039d40
0000000140459384 add      byte ptr [rbx + 0xd34], r13b
000000014045938b jmp      0x1404593d7
000000014045938d cmp      byte ptr [rbx + 0x5b0], r13b
0000000140459394 jne      0x1404593c5
0000000140459396 bt       edi, 0x10
000000014045939a jb       0x1404593c5
000000014045939c mov      edx, dword ptr [rbx + 0x510]
00000001404593a2 lea      eax, [rdx - 0x66]
00000001404593a5 test     eax, 0xfffffffc
00000001404593aa jne      0x1404593c5
00000001404593ac cmp      edx, 0x68
00000001404593af je       0x1404593c5
00000001404593b1 mov      r9d, r14d
00000001404593b4 mov      dword ptr [rsp + 0x20], r15d
00000001404593b9 mov      r8d, edi
00000001404593bc mov      edx, esi
00000001404593be call     0x14026e118
00000001404593c3 jmp      0x1404593d7
00000001404593c5 mov      r9d, r14d
00000001404593c8 mov      dword ptr [rsp + 0x20], r15d
00000001404593cd mov      r8d, edi
00000001404593d0 mov      edx, esi
00000001404593d2 call     0x14026e3a4
00000001404593d7 lock dec dword ptr [rbx + 0xb93c]
00000001404593de add      dword ptr [rbx + 0xa9ec], r13d
00000001404593e5 add      dword ptr [rbx + 0xa9bc], r13d
00000001404593ec mov      rcx, qword ptr [rbp - 0x10]
00000001404593f0 xor      rcx, rsp
00000001404593f3 call     0x1405f45b0
00000001404593f8 add      rsp, 0x78
00000001404593fc pop      r15
00000001404593fe pop      r14
0000000140459400 pop      r13
0000000140459402 pop      r12
0000000140459404 pop      rdi
0000000140459405 pop      rsi
0000000140459406 pop      rbx
0000000140459407 pop      rbp
0000000140459408 ret      
000000014026c8bc mov      rcx, qword ptr [rcx + 0x1490]
000000014026c8c3 mov      rcx, qword ptr [rcx + 0x238]
000000014026c8ca jmp      0x1403084fc
000000014026c8cf int3     
000000014026c8d0 sub      rsp, 0x28
000000014026c8d4 mov      rcx, qword ptr [rcx + 0x238]
000000014026c8db call     0x14031a620
000000014026c8e0 xor      eax, eax
000000014026c8e2 add      rsp, 0x28
000000014026c8e6 ret      
000000014026c8e7 int3     
000000014026c8e8 sub      rsp, 0x28
000000014026c8ec mov      rcx, qword ptr [rcx + 0x238]
000000014026c8f3 call     0x1402ee3f8
000000014026c8f8 xor      eax, eax