0000000140242ef8 mov      qword ptr [rsp + 0x10], rbx
0000000140242efd mov      qword ptr [rsp + 0x18], rsi
0000000140242f02 mov      qword ptr [rsp + 0x20], rdi
0000000140242f07 push     rbp
0000000140242f08 push     r12
0000000140242f0a push     r13
0000000140242f0c push     r14
0000000140242f0e push     r15
0000000140242f10 mov      rbp, rsp
0000000140242f13 sub      rsp, 0x40
0000000140242f17 mov      rax, qword ptr [rcx]
0000000140242f1a mov      rbx, rcx
0000000140242f1d movzx    esi, r8w
0000000140242f21 movzx    r14d, dl
0000000140242f25 mov      dil, byte ptr [rax + 0x96df]
0000000140242f2c and      qword ptr [rbp + 0x30], 0
0000000140242f31 mov      rcx, qword ptr [rip + 0x6dd0c8]
0000000140242f38 lea      rax, [rip + 0x6dd0c1]
0000000140242f3f lea      r12, [rip + 0x3cb44a]
0000000140242f46 mov      r15d, 1
0000000140242f4c lea      r13, [rip + 0x455b5d]
0000000140242f53 cmp      rcx, rax
0000000140242f56 je       0x140242f82
0000000140242f58 cmp      byte ptr [rcx + 0x169], 5
0000000140242f5f jb       0x140242f82
0000000140242f61 mov      eax, dword ptr [rcx + 0x16c]
0000000140242f67 test     r15b, al
0000000140242f6a je       0x140242f82
0000000140242f6c mov      rcx, qword ptr [rcx + 0x158]
0000000140242f73 lea      edx, [r15 + 0xc]
0000000140242f77 mov      r9, r12
0000000140242f7a mov      r8, r13
0000000140242f7d call     0x140008874
0000000140242f82 xor      r8d, r8d
0000000140242f85 lea      rcx, [rbp + 0x30]
0000000140242f89 lea      edx, [r8 + 8]
0000000140242f8d call     0x140031144
0000000140242f92 add      dil, byte ptr [rbp + 0x78]
0000000140242f96 mov      eax, r14d
0000000140242f99 and      eax, r15d
0000000140242f9c movzx    ecx, dil
0000000140242fa0 mov      edx, ecx
0000000140242fa2 mov      r10d, esi
0000000140242fa5 and      edx, 3
0000000140242fa8 shl      ecx, 0x18
0000000140242fab shl      edx, 2
0000000140242fae mov      r8d, 0x40
0000000140242fb4 or       edx, eax
0000000140242fb6 mov      r14d, 0x3ff
0000000140242fbc mov      eax, dword ptr [rbp + 0x30]
0000000140242fbf and      r10d, r14d
0000000140242fc2 and      eax, 0xfffffff2
0000000140242fc5 shl      r10d, 8
0000000140242fc9 or       edx, eax
0000000140242fcb lea      esi, [r8 - 0x31]
0000000140242fcf mov      eax, dword ptr [rbp + 0x34]
0000000140242fd2 or       edx, 2
0000000140242fd5 and      eax, 0xffffff
0000000140242fda mov      r11d, 0x100
0000000140242fe0 or       ecx, eax
0000000140242fe2 movzx    eax, byte ptr [rbp + 0x88]
0000000140242fe9 and      ecx, 0xfffc00ff
0000000140242fef xor      r10d, ecx
0000000140242ff2 movzx    ecx, word ptr [rbp + 0x70]
0000000140242ff6 and      r10d, 0xffffff00
0000000140242ffd or       r10d, eax
0000000140243000 mov      eax, 0x200
0000000140243005 cmp      ax, cx
0000000140243008 mov      dword ptr [rbp + 0x34], r10d
000000014024300c sbb      eax, eax
000000014024300e and      eax, 2
0000000140243011 add      eax, 8
0000000140243014 cmp      r8w, cx
0000000140243018 sbb      r9d, r9d
000000014024301b and      r9d, 4
000000014024301f cmp      cx, r11w
0000000140243023 cmova    r9d, eax
0000000140243027 movzx    eax, word ptr [rbp + 0x58]
000000014024302b shl      eax, 4
000000014024302e and      edx, 0xffffff0f
0000000140243034 or       r9d, eax
0000000140243037 movzx    eax, byte ptr [rbp + 0x98]
000000014024303e and      eax, r15d
0000000140243041 shl      r9d, 6
0000000140243045 or       r9d, eax
0000000140243048 movzx    eax, byte ptr [rbp + 0x80]
000000014024304f and      eax, r15d
0000000140243052 add      r9d, r9d
0000000140243055 or       r9d, eax
0000000140243058 movzx    eax, byte ptr [rbp + 0x90]
000000014024305f and      eax, r15d
0000000140243062 add      r9d, r9d
0000000140243065 or       r9d, eax
0000000140243068 movzx    eax, word ptr [rbp + 0x68]
000000014024306c and      eax, esi
000000014024306e shl      r9d, 8
0000000140243072 shl      eax, 4
0000000140243075 xor      eax, edx
0000000140243077 and      eax, 0xf8ff
000000014024307c or       r9d, eax
000000014024307f mov      dword ptr [rbp + 0x30], r9d
0000000140243083 mov      rcx, qword ptr [rip + 0x6dcf76]
000000014024308a lea      rdi, [rip + 0x6dcf6f]
0000000140243091 cmp      rcx, rdi
0000000140243094 je       0x140243202
000000014024309a cmp      byte ptr [rcx + 0x169], 4
00000001402430a1 jb       0x1402430ef
00000001402430a3 mov      eax, dword ptr [rcx + 0x16c]
00000001402430a9 test     r15b, al
00000001402430ac je       0x1402430ef
00000001402430ae mov      rcx, qword ptr [rcx + 0x158]
00000001402430b5 lea      edx, [rsi - 1]
00000001402430b8 mov      r8d, r9d
00000001402430bb mov      eax, r9d
00000001402430be shr      r8d, 2
00000001402430c2 and      r9d, r15d
00000001402430c5 and      r8d, 3
00000001402430c9 shr      eax, 1
00000001402430cb mov      dword ptr [rsp + 0x30], r8d
00000001402430d0 and      eax, r15d
00000001402430d3 mov      dword ptr [rsp + 0x28], eax
00000001402430d7 mov      r8, r13
00000001402430da mov      dword ptr [rsp + 0x20], r9d
00000001402430df mov      r9, r12
00000001402430e2 call     0x14001c670
00000001402430e7 mov      r10d, dword ptr [rbp + 0x34]
00000001402430eb mov      r9d, dword ptr [rbp + 0x30]
00000001402430ef mov      rcx, qword ptr [rip + 0x6dcf0a]
00000001402430f6 cmp      rcx, rdi
00000001402430f9 je       0x140243202
00000001402430ff cmp      byte ptr [rcx + 0x169], 4
0000000140243106 jb       0x140243153
0000000140243108 mov      eax, dword ptr [rcx + 0x16c]
000000014024310e test     r15b, al
0000000140243111 je       0x140243153
0000000140243113 mov      rcx, qword ptr [rcx + 0x158]
000000014024311a mov      eax, r9d
000000014024311d shr      r9d, 4
0000000140243121 mov      edx, esi
0000000140243123 and      r9d, esi
0000000140243126 shr      eax, 0x10
0000000140243129 shr      r10d, 8
000000014024312d and      eax, esi
000000014024312f mov      dword ptr [rsp + 0x30], eax
0000000140243133 and      r10d, r14d
0000000140243136 mov      dword ptr [rsp + 0x28], r10d
000000014024313b mov      r8, r13
000000014024313e mov      dword ptr [rsp + 0x20], r9d
0000000140243143 mov      r9, r12
0000000140243146 call     0x14001c670
000000014024314b mov      r10d, dword ptr [rbp + 0x34]
000000014024314f mov      r9d, dword ptr [rbp + 0x30]
0000000140243153 mov      rcx, qword ptr [rip + 0x6dcea6]
000000014024315a cmp      rcx, rdi
000000014024315d je       0x140243202
0000000140243163 cmp      byte ptr [rcx + 0x169], 4
000000014024316a jb       0x1402431a8
000000014024316c mov      eax, dword ptr [rcx + 0x16c]
0000000140243172 test     r15b, al
0000000140243175 je       0x1402431a8
0000000140243177 mov      rcx, qword ptr [rcx + 0x158]
000000014024317e mov      edx, 0x10
0000000140243183 shr      r9d, 0x14
0000000140243187 mov      r8, r13
000000014024318a shr      r10d, 0x18
000000014024318e mov      dword ptr [rsp + 0x28], r10d
0000000140243193 mov      dword ptr [rsp + 0x20], r9d
0000000140243198 mov      r9, r12
000000014024319b call     0x140002b04
00000001402431a0 mov      r10d, dword ptr [rbp + 0x34]
00000001402431a4 mov      r9d, dword ptr [rbp + 0x30]
00000001402431a8 mov      rcx, qword ptr [rip + 0x6dce51]
00000001402431af cmp      rcx, rdi
00000001402431b2 je       0x140243202
00000001402431b4 cmp      byte ptr [rcx + 0x169], 4
00000001402431bb jb       0x140243202
00000001402431bd mov      eax, dword ptr [rcx + 0x16c]
00000001402431c3 test     r15b, al
00000001402431c6 je       0x140243202
00000001402431c8 mov      rcx, qword ptr [rcx + 0x158]
00000001402431cf mov      r8d, r9d
00000001402431d2 shr      r8d, 8
00000001402431d6 mov      edx, 0x11
00000001402431db and      r8d, r15d
00000001402431de shr      r9d, 9
00000001402431e2 mov      dword ptr [rsp + 0x30], r8d
00000001402431e7 and      r9d, r15d
00000001402431ea movzx    eax, r10b
00000001402431ee mov      r8, r13
00000001402431f1 mov      dword ptr [rsp + 0x28], eax
00000001402431f5 mov      dword ptr [rsp + 0x20], r9d
00000001402431fa mov      r9, r12
00000001402431fd call     0x14001c670
0000000140243202 lea      rdx, [rbp + 0x30]
0000000140243206 mov      rcx, rbx
0000000140243209 call     0x140275fdc
000000014024320e mov      ebx, eax
0000000140243210 cmp      eax, r15d
0000000140243213 jne      0x140243251
0000000140243215 mov      rcx, qword ptr [rip + 0x6dcde4]
000000014024321c cmp      rcx, rdi
000000014024321f je       0x140243288
0000000140243221 cmp      byte ptr [rcx + 0x169], 3
0000000140243228 jb       0x140243251
000000014024322a mov      edx, dword ptr [rcx + 0x16c]
0000000140243230 test     r15b, dl
0000000140243233 je       0x140243251
0000000140243235 mov      rcx, qword ptr [rcx + 0x158]
000000014024323c mov      edx, 0x12
0000000140243241 mov      r9, r12
0000000140243244 mov      dword ptr [rsp + 0x20], r15d
0000000140243249 mov      r8, r13
000000014024324c call     0x1400088d8
0000000140243251 mov      rcx, qword ptr [rip + 0x6dcda8]
0000000140243258 cmp      rcx, rdi
000000014024325b je       0x140243288
000000014024325d cmp      byte ptr [rcx + 0x169], 5
0000000140243264 jb       0x140243288
0000000140243266 mov      eax, dword ptr [rcx + 0x16c]
000000014024326c test     r15b, al
000000014024326f je       0x140243288
0000000140243271 mov      rcx, qword ptr [rcx + 0x158]
0000000140243278 mov      edx, 0x13
000000014024327d mov      r9, r12
0000000140243280 mov      r8, r13
0000000140243283 call     0x140008874
0000000140243288 lea      r11, [rsp + 0x40]
000000014024328d mov      eax, ebx
000000014024328f mov      rbx, qword ptr [r11 + 0x38]
0000000140243293 mov      rsi, qword ptr [r11 + 0x40]
0000000140243297 mov      rdi, qword ptr [r11 + 0x48]
000000014024329b mov      rsp, r11
000000014024329e pop      r15
00000001402432a0 pop      r14
00000001402432a2 pop      r13
00000001402432a4 pop      r12
00000001402432a6 pop      rbp
00000001402432a7 ret      