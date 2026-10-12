00000001401950a8 mov      qword ptr [rsp + 8], rbx
00000001401950ad mov      qword ptr [rsp + 0x10], rdx
00000001401950b2 push     rbp
00000001401950b3 push     rsi
00000001401950b4 push     rdi
00000001401950b5 push     r12
00000001401950b7 push     r13
00000001401950b9 push     r14
00000001401950bb push     r15
00000001401950bd mov      rbp, rsp
00000001401950c0 sub      rsp, 0x80
00000001401950c7 mov      rax, qword ptr [rbp + 0x70]
00000001401950cb lea      rbx, [r8 + 0x14]
00000001401950cf mov      rdi, qword ptr [rbp + 0x68]
00000001401950d3 mov      r15, rcx
00000001401950d6 xor      ecx, ecx
00000001401950d8 xor      r8d, r8d
00000001401950db mov      qword ptr [rbp + 0x50], rcx
00000001401950df mov      edx, 0x10000003
00000001401950e4 mov      qword ptr [rbp - 0x38], rcx
00000001401950e8 mov      rsi, r9
00000001401950eb mov      dword ptr [rdi], ecx
00000001401950ed mov      qword ptr [rax], rcx
00000001401950f0 xor      eax, eax
00000001401950f2 mov      word ptr [rbp - 0x30], cx
00000001401950f6 mov      qword ptr [rbp - 0x20], rcx
00000001401950fa mov      word ptr [rbp - 0x18], cx
00000001401950fe mov      rcx, rbx
0000000140195101 mov      dword ptr [rbp - 0x2e], eax
0000000140195104 mov      word ptr [rbp - 0x2a], ax
0000000140195108 mov      dword ptr [rbp - 0x16], eax
000000014019510b mov      word ptr [rbp - 0x12], ax
000000014019510f call     0x140192fa0
0000000140195114 xor      r8d, r8d
0000000140195117 mov      qword ptr [rbp + 0x68], rax
000000014019511b mov      edx, 0x10000007
0000000140195120 mov      rcx, rbx
0000000140195123 call     0x140192fa0
0000000140195128 xor      r8d, r8d
000000014019512b mov      edx, 0x10000008
0000000140195130 mov      rcx, rbx
0000000140195133 mov      r12, rax
0000000140195136 call     0x140192fa0
000000014019513b xor      r8d, r8d
000000014019513e mov      qword ptr [rbp - 0x40], rax
0000000140195142 mov      edx, 0x10000009
0000000140195147 mov      rcx, rbx
000000014019514a mov      r14, rax
000000014019514d call     0x140192fa0
0000000140195152 cmp      qword ptr [rbp + 0x68], 0
0000000140195157 mov      r13, rax
000000014019515a je       0x140195180
000000014019515c test     r12, r12
000000014019515f je       0x140195180
0000000140195161 test     r14, r14
0000000140195164 je       0x140195180
0000000140195166 test     rax, rax
0000000140195169 je       0x140195180
000000014019516b mov      rcx, rsi
000000014019516e call     0x1401943e4
0000000140195173 mov      r14b, al
0000000140195176 test     al, al
0000000140195178 jne      0x1401951a2
000000014019517a mov      dword ptr [rdi], 8
0000000140195180 mov      ebx, 0xe
0000000140195185 mov      eax, ebx
0000000140195187 mov      rbx, qword ptr [rsp + 0xc0]
000000014019518f add      rsp, 0x80
0000000140195196 pop      r15
0000000140195198 pop      r14
000000014019519a pop      r13
000000014019519c pop      r12
000000014019519e pop      rdi
000000014019519f pop      rsi
00000001401951a0 pop      rbp
00000001401951a1 ret      
00000001401951a2 lea      r9, [rbp - 0x38]
00000001401951a6 mov      r8d, 0xa
00000001401951ac mov      dl, 0x1a
00000001401951ae mov      rcx, rsi
00000001401951b1 call     0x140191a70
00000001401951b6 test     al, al
00000001401951b8 jne      0x1401951c2
00000001401951ba mov      dword ptr [rdi], 0xc
00000001401951c0 jmp      0x140195180
00000001401951c2 lea      rdx, [rbp - 0x20]
00000001401951c6 mov      rcx, rsi
00000001401951c9 call     0x1401919d8
00000001401951ce mov      ebx, eax
00000001401951d0 test     eax, eax
00000001401951d2 je       0x1401951dc
00000001401951d4 mov      dword ptr [rdi], 0xd
00000001401951da jmp      0x140195185
00000001401951dc mov      rax, qword ptr [rbp + 0x68]
00000001401951e0 lea      rdx, [rbp + 0x50]
00000001401951e4 mov      rcx, qword ptr [rbp - 0x40]
00000001401951e8 mov      edi, dword ptr [rcx + 0xc]
00000001401951eb add      edi, dword ptr [rax + 0xc]
00000001401951ee movzx    eax, word ptr [rsi + 8]
00000001401951f2 mov      rcx, qword ptr [r15 + 0x90]
00000001401951f9 add      edi, eax
00000001401951fb movzx    eax, word ptr [rbp - 0x18]
00000001401951ff add      edi, eax
0000000140195201 lea      r8d, [rdi + 0x227]
0000000140195208 call     0x140191900
000000014019520d mov      ebx, eax
000000014019520f test     eax, eax
0000000140195211 jne      0x140195185
0000000140195217 mov      rcx, qword ptr [rbp + 0x50]
000000014019521b lea      edx, [rdi + 0x227]
0000000140195221 call     0x140031290
0000000140195226 mov      r9, qword ptr [rbp - 0x38]
000000014019522a mov      rdi, qword ptr [rbp + 0x48]
000000014019522e test     r9, r9
0000000140195231 je       0x140195262
0000000140195233 mov      al, byte ptr [r15 + 0x8d]
000000014019523a xor      r8d, r8d
000000014019523d mov      r9d, dword ptr [r9]
0000000140195240 mov      rcx, r15
0000000140195243 mov      rdx, qword ptr [rbp + 0x50]
0000000140195247 mov      byte ptr [rsp + 0x38], al
000000014019524b mov      eax, dword ptr [r13 + 0x10]
000000014019524f mov      byte ptr [rsp + 0x30], r14b
0000000140195254 mov      dword ptr [rsp + 0x28], eax
0000000140195258 mov      qword ptr [rsp + 0x20], rdi
000000014019525d call     0x140194dac
0000000140195262 movzx    edx, word ptr [rbp + 0x60]
0000000140195266 xor      r14d, r14d
0000000140195269 cmp      byte ptr [r12 + 0x10], r14b
000000014019526e jne      0x14019527a
0000000140195270 mov      rax, qword ptr [rbp + 0x50]
0000000140195274 mov      byte ptr [rax + 0x11], 1
0000000140195278 jmp      0x140195297
000000014019527a mov      ecx, 0x80
000000014019527f movzx    eax, dx
0000000140195282 sub      ax, cx
0000000140195285 mov      ecx, 0xff7f
000000014019528a test     cx, ax
000000014019528d mov      rax, qword ptr [rbp + 0x50]
0000000140195291 sete     cl
0000000140195294 mov      byte ptr [rax + 0x11], cl
0000000140195297 mov      rax, qword ptr [rbp + 0x50]
000000014019529b mov      word ptr [rax + 0xa8], dx
00000001401952a2 call     0x140031188
00000001401952a7 mov      rcx, qword ptr [rbp + 0x50]
00000001401952ab xor      edx, edx
00000001401952ad mov      qword ptr [rcx + 0xb0], rax
00000001401952b4 mov      ecx, 0xff
00000001401952b9 mov      rax, qword ptr [rbp + 0x50]
00000001401952bd mov      dword ptr [rax + 0xb8], ecx
00000001401952c3 mov      rax, qword ptr [rbp + 0x50]
00000001401952c7 mov      byte ptr [rax + 0xbc], r14b
00000001401952ce mov      rax, qword ptr [rbp + 0x50]
00000001401952d2 mov      qword ptr [rax + 0xc0], r14
00000001401952d9 mov      rax, qword ptr [rbp + 0x50]
00000001401952dd mov      dword ptr [rax + 0xc8], ecx
00000001401952e3 mov      rax, qword ptr [rbp + 0x50]
00000001401952e7 mov      byte ptr [rax + 0xcc], r14b
00000001401952ee mov      rax, qword ptr [rbp + 0x50]
00000001401952f2 mov      dword ptr [rax + 0xd0], ecx
00000001401952f8 mov      rax, qword ptr [rbp + 0x50]
00000001401952fc mov      byte ptr [rax + 0xd4], r14b
0000000140195303 mov      rax, qword ptr [rbp + 0x50]
0000000140195307 mov      dword ptr [rax + 0xe0], 5
0000000140195311 mov      rax, qword ptr [rbp + 0x50]
0000000140195315 mov      dword ptr [rax + 0xe4], 0x40000200
000000014019531f mov      rax, qword ptr [rbp + 0x50]
0000000140195323 mov      dword ptr [rax + 0xe8], r14d
000000014019532a mov      rax, qword ptr [rbp + 0x50]
000000014019532e mov      dword ptr [rax + 0xec], 0x85
0000000140195338 mov      rax, qword ptr [rbp + 0x50]
000000014019533c mov      dword ptr [rax + 0xf1], r14d
0000000140195343 mov      rcx, qword ptr [rbp + 0x50]
0000000140195347 add      rcx, 0xe0
000000014019534e call     0x14019edb4
0000000140195353 mov      rdx, qword ptr [rbp - 0x38]
0000000140195357 test     rdx, rdx
000000014019535a je       0x14019536e
000000014019535c mov      rcx, qword ptr [rbp + 0x50]
0000000140195360 mov      edx, dword ptr [rdx]
0000000140195362 add      rcx, 0xe0
0000000140195369 call     0x14019ebe8
000000014019536e mov      rcx, qword ptr [rbp + 0x50]
0000000140195372 mov      rdx, rdi
0000000140195375 add      rcx, 0xe0
000000014019537c call     0x14019e8d0
0000000140195381 mov      rcx, qword ptr [rbp + 0x50]
0000000140195385 lea      rdx, [rbp - 0x10]
0000000140195389 movaps   xmm0, xmmword ptr [rbp - 0x20]
000000014019538d add      rcx, 0xe0
0000000140195394 movdqa   xmmword ptr [rbp - 0x10], xmm0
0000000140195399 call     0x14019e92c
000000014019539e mov      rcx, qword ptr [rbp + 0x50]
00000001401953a2 mov      edx, dword ptr [r13 + 0x10]
00000001401953a6 add      rcx, 0xe0
00000001401953ad call     0x14019e800
00000001401953b2 mov      rax, qword ptr [rbp + 0x68]
00000001401953b6 mov      rcx, qword ptr [rbp + 0x50]
00000001401953ba add      rcx, 0xe0
00000001401953c1 mov      dl, byte ptr [rax + 0xc]
00000001401953c4 lea      r8, [rax + 0x10]
00000001401953c8 call     0x14019ed58
00000001401953cd mov      rax, qword ptr [rbp - 0x40]
00000001401953d1 mov      rcx, qword ptr [rbp + 0x50]
00000001401953d5 add      rcx, 0xe0
00000001401953dc mov      dl, byte ptr [rax + 0x10]
00000001401953df call     0x14019ed80
00000001401953e4 mov      rdx, qword ptr [rbp + 0x50]
00000001401953e8 lea      rcx, [rdx + 0xe0]
00000001401953ef movzx    edx, word ptr [rdx + 0xa8]
00000001401953f6 call     0x14019e834
00000001401953fb mov      rcx, qword ptr [rbp + 0x50]
00000001401953ff mov      r8, qword ptr [rsi]
0000000140195402 add      rcx, 0xe0
0000000140195409 movzx    edx, word ptr [rsi + 8]
000000014019540d call     0x14019eadc
0000000140195412 mov      rdx, qword ptr [rbp + 0x50]
0000000140195416 lea      rcx, [rdx + 0xe0]
000000014019541d mov      dl, byte ptr [rdx + 0x11]
0000000140195420 call     0x14019e89c
0000000140195425 mov      rcx, qword ptr [rbp + 0x70]
0000000140195429 mov      rax, qword ptr [rbp + 0x50]
000000014019542d mov      qword ptr [rcx], rax
0000000140195430 jmp      0x140195185