00000001401060f4 mov      qword ptr [rsp + 0x20], rbx
00000001401060f9 push     rbp
00000001401060fa push     rsi
00000001401060fb push     rdi
00000001401060fc push     r12
00000001401060fe push     r13
0000000140106100 push     r14
0000000140106102 push     r15
0000000140106104 mov      rbp, rsp
0000000140106107 sub      rsp, 0x70
000000014010610b mov      rax, qword ptr [rcx + 0xaf3b8]
0000000140106112 xor      r14d, r14d
0000000140106115 mov      rsi, rdx
0000000140106118 mov      r13, rcx
000000014010611b mov      dil, r14b
000000014010611e mov      r8, qword ptr [rax]
0000000140106121 mov      rax, qword ptr [r8 + 0xaf3b8]
0000000140106128 mov      r8d, dword ptr [rdx]
000000014010612b mov      r15, qword ptr [rax]
000000014010612e mov      eax, dword ptr [rip + 0x4fd13c]
0000000140106134 mov      dword ptr [rbp - 0x18], eax
0000000140106137 mov      al, byte ptr [rip + 0x4fd137]
000000014010613d mov      byte ptr [rbp - 0x14], al
0000000140106140 mov      eax, dword ptr [rip + 0x4f672a]
0000000140106146 mov      dword ptr [rbp - 8], eax
0000000140106149 movzx    eax, word ptr [rip + 0x4f6724]
0000000140106150 mov      word ptr [rbp - 4], ax
0000000140106154 mov      al, byte ptr [rip + 0x4f671c]
000000014010615a mov      byte ptr [rbp - 2], al
000000014010615d mov      eax, dword ptr [rip + 0x4fd11d]
0000000140106163 mov      dword ptr [rbp - 0x10], eax
0000000140106166 movzx    eax, word ptr [rip + 0x4fd117]
000000014010616d mov      word ptr [rbp - 0xc], ax
0000000140106171 mov      eax, dword ptr [rip + 0x4fd119]
0000000140106177 mov      dword ptr [rbp - 0x20], eax
000000014010617a mov      al, byte ptr [rip + 0x4fd114]
0000000140106180 mov      byte ptr [rbp - 0x1c], al
0000000140106183 cmp      r8d, 2
0000000140106187 jb       0x140106ef0
000000014010618d mov      rcx, qword ptr [rip + 0x819e6c]
0000000140106194 lea      r9, [rip + 0x819e65]
000000014010619b lea      r12, [rip + 0x58d27e]
00000001401061a2 cmp      rcx, r9
00000001401061a5 je       0x1401061d8
00000001401061a7 cmp      byte ptr [rcx + 0x29], 5
00000001401061ab jb       0x1401061d8
00000001401061ad mov      eax, dword ptr [rcx + 0x2c]
00000001401061b0 test     al, 2
00000001401061b2 je       0x1401061d8
00000001401061b4 mov      rcx, qword ptr [rcx + 0x18]
00000001401061b8 lea      r9, [rip + 0x4fd0e1]
00000001401061bf mov      dword ptr [rsp + 0x20], r8d
00000001401061c4 mov      edx, 0xaf
00000001401061c9 mov      r8, r12
00000001401061cc call     0x1400088d8
00000001401061d1 lea      r9, [rip + 0x819e28]
00000001401061d8 mov      ebx, r14d
00000001401061db cmp      dword ptr [rsi], r14d
00000001401061de jbe      0x140106235
00000001401061e0 mov      rcx, qword ptr [rip + 0x819e19]
00000001401061e7 cmp      rcx, r9
00000001401061ea je       0x14010622f
00000001401061ec cmp      byte ptr [rcx + 0x29], 5
00000001401061f0 jb       0x14010622f
00000001401061f2 mov      eax, dword ptr [rcx + 0x2c]
00000001401061f5 test     al, 2
00000001401061f7 je       0x14010622f
00000001401061f9 mov      rcx, qword ptr [rcx + 0x18]
00000001401061fd lea      r9, [rip + 0x4fd09c]
0000000140106204 mov      r8d, ebx
0000000140106207 mov      edx, 0xb0
000000014010620c shl      r8, 4
0000000140106210 add      r8, 0x14
0000000140106214 add      r8, rsi
0000000140106217 mov      qword ptr [rsp + 0x28], r8
000000014010621c mov      r8, r12
000000014010621f mov      dword ptr [rsp + 0x20], ebx
0000000140106223 call     0x1400fcc1c
0000000140106228 lea      r9, [rip + 0x819dd1]
000000014010622f inc      ebx
0000000140106231 cmp      ebx, dword ptr [rsi]
0000000140106233 jb       0x1401061e0
0000000140106235 lea      r10, [rsi + 0x24]
0000000140106239 lea      r8, [rbp - 0x18]
000000014010623d mov      rax, r10
0000000140106240 sub      r8, r10
0000000140106243 movzx    ecx, byte ptr [rax]
0000000140106246 movzx    edx, byte ptr [rax + r8]
000000014010624b sub      ecx, edx
000000014010624d jne      0x140106256
000000014010624f inc      rax
0000000140106252 test     edx, edx
0000000140106254 jne      0x140106243
0000000140106256 test     ecx, ecx
0000000140106258 jne      0x1401062d8
000000014010625a mov      rcx, qword ptr [rip + 0x819d9f]
0000000140106261 cmp      rcx, r9
0000000140106264 je       0x140106284
0000000140106266 cmp      byte ptr [rcx + 0x29], 4
000000014010626a jb       0x140106284
000000014010626c mov      eax, dword ptr [rcx + 0x2c]
000000014010626f test     al, 2
0000000140106271 je       0x140106284
0000000140106273 mov      rcx, qword ptr [rcx + 0x18]
0000000140106277 mov      edx, 0xb1
000000014010627c mov      r8, r12
000000014010627f call     0x140001b88
0000000140106284 mov      ebx, r14d
0000000140106287 lea      r12, [rip + 0x58d0d2]
000000014010628e mov      r10, qword ptr [rsi + 8]
0000000140106292 test     r10, r10
0000000140106295 je       0x1401062cc
0000000140106297 mov      r9d, dword ptr [rsi + 4]
000000014010629b mov      ecx, dword ptr [rsi + 0x10]
000000014010629e cmp      r9d, ecx
00000001401062a1 jae      0x1401062cc
00000001401062a3 sub      ecx, r9d
00000001401062a6 mov      eax, ebx
00000001401062a8 imul     r8, rax, 0x15
00000001401062ac mov      edx, ecx
00000001401062ae lea      rcx, [r10 + r9]
00000001401062b2 add      r8, r12
00000001401062b5 mov      r9d, ebx
00000001401062b8 mov      qword ptr [rsp + 0x20], r8
00000001401062bd lea      r8, [rip + 0x4fcfec]
00000001401062c4 call     0x140044426
00000001401062c9 add      dword ptr [rsi + 4], eax
00000001401062cc inc      ebx
00000001401062ce cmp      ebx, 9
00000001401062d1 jb       0x14010628e
00000001401062d3 jmp      0x140106ef0
00000001401062d8 mov      ebx, r14d
00000001401062db lea      r12, [rip + 0x58d07e]
00000001401062e2 mov      eax, ebx
00000001401062e4 mov      r8, r10
00000001401062e7 imul     r9, rax, 0x15
00000001401062eb lea      r11, [r9 + r12]
00000001401062ef mov      rax, r11
00000001401062f2 sub      r8, r11
00000001401062f5 movzx    edx, byte ptr [rax]
00000001401062f8 movzx    ecx, byte ptr [rax + r8]
00000001401062fd sub      edx, ecx
00000001401062ff jne      0x140106308
0000000140106301 inc      rax
0000000140106304 test     ecx, ecx
0000000140106306 jne      0x1401062f5
0000000140106308 test     edx, edx
000000014010630a je       0x140106315
000000014010630c inc      ebx
000000014010630e cmp      ebx, 9
0000000140106311 jb       0x1401062e2
0000000140106313 jmp      0x140106352
0000000140106315 mov      dil, byte ptr [r9 + r12 + 0x14]
000000014010631a mov      rcx, qword ptr [rip + 0x819cdf]
0000000140106321 lea      rax, [rip + 0x819cd8]
0000000140106328 cmp      rcx, rax
000000014010632b je       0x140106359
000000014010632d cmp      byte ptr [rcx + 0x29], 4
0000000140106331 jb       0x140106359
0000000140106333 mov      eax, dword ptr [rcx + 0x2c]
0000000140106336 test     al, 2
0000000140106338 je       0x140106352
000000014010633a mov      rcx, qword ptr [rcx + 0x18]
000000014010633e lea      r8, [rip + 0x58d0db]
0000000140106345 mov      edx, 0xb2
000000014010634a mov      r9, r11
000000014010634d call     0x140008874
0000000140106352 lea      rax, [rip + 0x819ca7]
0000000140106359 cmp      ebx, 9
000000014010635c jne      0x14010639d
000000014010635e mov      rcx, qword ptr [rip + 0x819c9b]
0000000140106365 cmp      rcx, rax
0000000140106368 je       0x140106ef0
000000014010636e cmp      byte ptr [rcx + 0x29], 4
0000000140106372 jb       0x140106ef0
0000000140106378 mov      eax, dword ptr [rcx + 0x2c]
000000014010637b test     al, 2
000000014010637d je       0x140106ef0
0000000140106383 mov      rcx, qword ptr [rcx + 0x18]
0000000140106387 lea      r8, [rip + 0x58d092]
000000014010638e mov      edx, 0xb3
0000000140106393 call     0x140001b88
0000000140106398 jmp      0x140106ef0
000000014010639d movzx    ecx, dil
00000001401063a1 test     dil, dil
00000001401063a4 je       0x140106e79
00000001401063aa sub      ecx, 1
00000001401063ad je       0x140106e04
00000001401063b3 sub      ecx, 1
00000001401063b6 je       0x140106db1
00000001401063bc sub      ecx, 1
00000001401063bf je       0x140106d5a
00000001401063c5 sub      ecx, 1
00000001401063c8 je       0x140106c44
00000001401063ce sub      ecx, 1
00000001401063d1 je       0x140106b0b
00000001401063d7 sub      ecx, 1
00000001401063da je       0x140106a23
00000001401063e0 sub      ecx, 1
00000001401063e3 je       0x140106971
00000001401063e9 cmp      ecx, 1
00000001401063ec jne      0x140106ef0
00000001401063f2 mov      rbx, qword ptr [r13 + 0xab230]
00000001401063f9 call     0x140031188
00000001401063fe mov      rcx, qword ptr [r13 + 0xaf3b8]
0000000140106405 mov      rdx, rbx
0000000140106408 mov      qword ptr [rbp + 0x50], rax
000000014010640c mov      rcx, qword ptr [rcx]
000000014010640f mov      rcx, qword ptr [rcx + 0x20708]
0000000140106416 call     0x1401b6de0
000000014010641b mov      r10, qword ptr [rsi + 8]
000000014010641f mov      rbx, rax
0000000140106422 mov      qword ptr [rbp + 0x40], rax
0000000140106426 test     r10, r10
0000000140106429 je       0x14010645d
000000014010642b mov      r8d, dword ptr [rsi + 4]
000000014010642f mov      ecx, dword ptr [rsi + 0x10]
0000000140106432 cmp      r8d, ecx
0000000140106435 jae      0x14010645d
0000000140106437 cmp      byte ptr [r15 + 0x52074], r14b
000000014010643e mov      r9d, r14d
0000000140106441 setne    r9b
0000000140106445 sub      ecx, r8d
0000000140106448 mov      edx, ecx
000000014010644a lea      rcx, [r10 + r8]
000000014010644e lea      r8, [rip + 0x4fd04b]
0000000140106455 call     0x140044426
000000014010645a add      dword ptr [rsi + 4], eax
000000014010645d mov      r10, qword ptr [rsi + 8]
0000000140106461 test     r10, r10
0000000140106464 je       0x1401064a9
0000000140106466 mov      r8d, dword ptr [rsi + 4]
000000014010646a mov      ecx, dword ptr [rsi + 0x10]
000000014010646d cmp      r8d, ecx
0000000140106470 jae      0x1401064a9
0000000140106472 cmp      byte ptr [r15 + 0xaaea8], r14b
0000000140106479 mov      eax, r14d
000000014010647c mov      r9d, r14d
000000014010647f setne    al
0000000140106482 cmp      byte ptr [r15 + 0xaaea9], r14b
0000000140106489 mov      dword ptr [rsp + 0x20], eax
000000014010648d setne    r9b
0000000140106491 sub      ecx, r8d
0000000140106494 mov      edx, ecx
0000000140106496 lea      rcx, [r10 + r8]
000000014010649a lea      r8, [rip + 0x4fd01f]
00000001401064a1 call     0x140044426
00000001401064a6 add      dword ptr [rsi + 4], eax
00000001401064a9 mov      r11, qword ptr [rsi + 8]
00000001401064ad test     r11, r11
00000001401064b0 je       0x1401064fe
00000001401064b2 mov      r10d, dword ptr [rsi + 4]
00000001401064b6 mov      ecx, dword ptr [rsi + 0x10]
00000001401064b9 cmp      r10d, ecx
00000001401064bc jae      0x1401064fe
00000001401064be movzx    r9d, byte ptr [r15 + 0xaaeec]
00000001401064c6 sub      ecx, r10d
00000001401064c9 mov      r8d, r9d
00000001401064cc mov      edx, ecx
00000001401064ce shr      r8d, 2
00000001401064d2 lea      rcx, [r11 + r10]
00000001401064d6 mov      eax, r9d
00000001401064d9 and      r8d, 1
00000001401064dd mov      dword ptr [rsp + 0x28], r8d
00000001401064e2 and      r9d, 1
00000001401064e6 shr      eax, 1
00000001401064e8 lea      r8, [rip + 0x4fd011]
00000001401064ef and      eax, 1
00000001401064f2 mov      dword ptr [rsp + 0x20], eax
00000001401064f6 call     0x140044426
00000001401064fb add      dword ptr [rsi + 4], eax
00000001401064fe mov      rdi, qword ptr [rsi + 8]
0000000140106502 test     rdi, rdi
0000000140106505 je       0x140106567
0000000140106507 mov      ebx, dword ptr [rsi + 4]
000000014010650a mov      ecx, dword ptr [rsi + 0x10]
000000014010650d cmp      ebx, ecx
000000014010650f jae      0x140106563
0000000140106511 movzx    r8d, byte ptr [r15 + 0xaaeb3]
0000000140106519 sub      ecx, ebx
000000014010651b movzx    eax, byte ptr [r15 + 0xaaeb4]
0000000140106523 movzx    r10d, byte ptr [r15 + 0xaaeb2]
000000014010652b movzx    r11d, byte ptr [r15 + 0xaaeb1]
0000000140106533 movzx    r9d, byte ptr [r15 + 0xaaeb0]
000000014010653b mov      dword ptr [rsp + 0x38], eax
000000014010653f mov      dword ptr [rsp + 0x30], r8d
0000000140106544 lea      r8, [rip + 0x4fcff5]
000000014010654b mov      edx, ecx
000000014010654d lea      rcx, [rdi + rbx]
0000000140106551 mov      dword ptr [rsp + 0x28], r10d
0000000140106556 mov      dword ptr [rsp + 0x20], r11d
000000014010655b call     0x140044426
0000000140106560 add      dword ptr [rsi + 4], eax
0000000140106563 mov      rbx, qword ptr [rbp + 0x40]
0000000140106567 mov      r8, qword ptr [rsi + 8]
000000014010656b test     r8, r8
000000014010656e je       0x140106597
0000000140106570 mov      ecx, dword ptr [rsi + 4]
0000000140106573 mov      eax, dword ptr [rsi + 0x10]
0000000140106576 cmp      ecx, eax
0000000140106578 jae      0x140106597
000000014010657a mov      r9d, dword ptr [r15 + 0xaaeb8]
0000000140106581 sub      eax, ecx
0000000140106583 add      rcx, r8
0000000140106586 mov      edx, eax
0000000140106588 lea      r8, [rip + 0x4fd001]
000000014010658f call     0x140044426
0000000140106594 add      dword ptr [rsi + 4], eax
0000000140106597 mov      r9, qword ptr [rsi + 8]
000000014010659b test     r9, r9
000000014010659e je       0x1401065df
00000001401065a0 mov      ecx, dword ptr [rsi + 4]
00000001401065a3 mov      eax, dword ptr [rsi + 0x10]
00000001401065a6 cmp      ecx, eax
00000001401065a8 jae      0x1401065df
00000001401065aa movzx    r8d, byte ptr [r15 + 0xaaee0]
00000001401065b2 sub      eax, ecx
00000001401065b4 mov      edx, eax
00000001401065b6 add      rcx, r9
00000001401065b9 mov      eax, dword ptr [r13 + 0xafbc4]
00000001401065c0 mov      r9d, dword ptr [r15 + 0xaaee4]
00000001401065c7 mov      dword ptr [rsp + 0x28], eax
00000001401065cb mov      dword ptr [rsp + 0x20], r8d
00000001401065d0 lea      r8, [rip + 0x4fcfe9]
00000001401065d7 call     0x140044426
00000001401065dc add      dword ptr [rsi + 4], eax
00000001401065df mov      r11, qword ptr [rsi + 8]
00000001401065e3 test     r11, r11
00000001401065e6 je       0x14010662d
00000001401065e8 mov      r10d, dword ptr [rsi + 4]
00000001401065ec mov      ecx, dword ptr [rsi + 0x10]
00000001401065ef cmp      r10d, ecx
00000001401065f2 jae      0x14010662d
00000001401065f4 movzx    r8d, byte ptr [r15 + 0xaaef1]
00000001401065fc sub      ecx, r10d
00000001401065ff movzx    eax, byte ptr [r15 + 0xaaef2]
0000000140106607 movzx    r9d, byte ptr [r15 + 0xaaef0]
000000014010660f mov      dword ptr [rsp + 0x28], eax
0000000140106613 mov      dword ptr [rsp + 0x20], r8d
0000000140106618 lea      r8, [rip + 0x4fcfe1]
000000014010661f mov      edx, ecx
0000000140106621 lea      rcx, [r11 + r10]
0000000140106625 call     0x140044426
000000014010662a add      dword ptr [rsi + 4], eax
000000014010662d mov      r8, qword ptr [rsi + 8]
0000000140106631 test     r8, r8
0000000140106634 je       0x140106668
0000000140106636 mov      ecx, dword ptr [rsi + 4]
0000000140106639 mov      eax, dword ptr [rsi + 0x10]
000000014010663c cmp      ecx, eax
000000014010663e jae      0x140106668
0000000140106640 mov      r9d, dword ptr [r15 + 0xaaef8]
0000000140106647 sub      eax, ecx
0000000140106649 mov      edx, eax
000000014010664b add      rcx, r8
000000014010664e mov      eax, dword ptr [r15 + 0xaaf00]
0000000140106655 lea      r8, [rip + 0x4fcfd4]
000000014010665c mov      dword ptr [rsp + 0x20], eax
0000000140106660 call     0x140044426
0000000140106665 add      dword ptr [rsi + 4], eax
0000000140106668 mov      r12, qword ptr [rsi + 8]
000000014010666c test     r12, r12
000000014010666f je       0x1401066c9
0000000140106671 mov      edi, dword ptr [rsi + 4]
0000000140106674 mov      ecx, dword ptr [rsi + 0x10]
0000000140106677 cmp      edi, ecx
0000000140106679 jae      0x1401066c9
000000014010667b movzx    r8d, byte ptr [rbx + 0x1c]
0000000140106680 sub      ecx, edi
0000000140106682 movzx    eax, byte ptr [rbx + 0x1d]
0000000140106686 movzx    r10d, byte ptr [rbx + 0x1b]
000000014010668b movzx    r11d, byte ptr [rbx + 0x1a]
0000000140106690 mov      rdx, qword ptr [rbp + 0x40]
0000000140106694 movzx    ebx, byte ptr [rbx + 0x19]
0000000140106698 mov      dword ptr [rsp + 0x40], eax
000000014010669c mov      dword ptr [rsp + 0x38], r8d
00000001401066a1 lea      r8, [rip + 0x4fcfb8]
00000001401066a8 movzx    r9d, byte ptr [rdx + 0x18]
00000001401066ad mov      dword ptr [rsp + 0x30], r10d
00000001401066b2 mov      edx, ecx
00000001401066b4 lea      rcx, [r12 + rdi]
00000001401066b8 mov      dword ptr [rsp + 0x28], r11d
00000001401066bd mov      dword ptr [rsp + 0x20], ebx
00000001401066c1 call     0x140044426
00000001401066c6 add      dword ptr [rsi + 4], eax
00000001401066c9 mov      r12b, r14b
00000001401066cc mov      rax, qword ptr [r13 + 0xaf3b8]
00000001401066d3 mov      rcx, qword ptr [rax]
00000001401066d6 cmp      byte ptr [rcx + 0xaaffa], r14b
00000001401066dd je       0x1401066e8
00000001401066df cmp      rcx, r13
00000001401066e2 jne      0x1401066e8
00000001401066e4 mov      al, 3
00000001401066e6 jmp      0x1401066f5
00000001401066e8 mov      rax, qword ptr [r13 + 0xab230]
00000001401066ef mov      al, byte ptr [rax + 0x250]
00000001401066f5 cmp      r12b, al
00000001401066f8 jae      0x1401068cd
00000001401066fe movzx    ebx, r12b
0000000140106702 lea      rcx, [r13 + 0x53f634]
0000000140106709 imul     r8, rbx, 0x1dc0
0000000140106710 lea      rax, [r13 + 0x544f74]
0000000140106717 add      rcx, r8
000000014010671a mov      qword ptr [rbp + 0x48], r8
000000014010671e cmp      r12b, 2
0000000140106722 cmove    rcx, rax
0000000140106726 cmp      dword ptr [rcx], 3
0000000140106729 jl       0x1401068c5
000000014010672f mov      rdi, qword ptr [rsi + 8]
0000000140106733 test     rdi, rdi
0000000140106736 je       0x1401067d2
000000014010673c mov      eax, dword ptr [rsi + 4]
000000014010673f mov      edx, dword ptr [rsi + 0x10]
0000000140106742 mov      dword ptr [rbp + 0x40], eax
0000000140106745 cmp      eax, edx
0000000140106747 jae      0x1401067d2
000000014010674d lea      rax, [r13 + 0x544f60]
0000000140106754 movzx    r9d, r12b
0000000140106758 lea      rcx, [r13 + 0x53f620]
000000014010675f add      rcx, r8
0000000140106762 cmp      r12b, 2
0000000140106766 cmove    rcx, rax
000000014010676a lea      rax, [r13 + 0x544f68]
0000000140106771 mov      r11, qword ptr [rcx]
0000000140106774 lea      rcx, [r13 + 0x53f628]
000000014010677b add      rcx, r8
000000014010677e cmp      r12b, 2
0000000140106782 movzx    r10d, byte ptr [r11 + 0x608]
000000014010678a cmove    rcx, rax
000000014010678e mov      rax, qword ptr [rcx]
0000000140106791 movzx    r8d, word ptr [rax + 0x2c]
0000000140106796 mov      eax, dword ptr [rbp + 0x40]
0000000140106799 sub      edx, eax
000000014010679b lea      rcx, [rdi + rax]
000000014010679f mov      eax, dword ptr [r11 + 0x60c]
00000001401067a6 mov      dword ptr [rsp + 0x38], eax
00000001401067aa mov      eax, dword ptr [r11 + 0x604]
00000001401067b1 mov      dword ptr [rsp + 0x30], r10d
00000001401067b6 mov      dword ptr [rsp + 0x28], eax
00000001401067ba mov      dword ptr [rsp + 0x20], r8d
00000001401067bf lea      r8, [rip + 0x4fceca]
00000001401067c6 call     0x140044426
00000001401067cb add      dword ptr [rsi + 4], eax
00000001401067ce mov      r8, qword ptr [rbp + 0x48]
00000001401067d2 mov      rax, qword ptr [rsi + 8]
00000001401067d6 mov      qword ptr [rbp + 0x40], rax
00000001401067da test     rax, rax
00000001401067dd je       0x140106839
00000001401067df mov      edi, dword ptr [rsi + 4]
00000001401067e2 mov      ebx, dword ptr [rsi + 0x10]
00000001401067e5 cmp      edi, ebx
00000001401067e7 jae      0x140106835
00000001401067e9 lea      rax, [r13 + 0x544f68]
00000001401067f0 lea      rcx, [r13 + 0x53f628]
00000001401067f7 add      rcx, r8
00000001401067fa cmp      r12b, 2
00000001401067fe cmove    rcx, rax
0000000140106802 mov      rcx, qword ptr [rcx]
0000000140106805 call     0x140225b84
000000014010680a mov      r8d, r14d
000000014010680d movzx    r9d, r12b
0000000140106811 test     al, al
0000000140106813 mov      ecx, edi
0000000140106815 setne    r8b
0000000140106819 add      rcx, qword ptr [rbp + 0x40]
000000014010681d mov      dword ptr [rsp + 0x20], r8d
0000000140106822 sub      ebx, edi
0000000140106824 mov      edx, ebx
0000000140106826 lea      r8, [rip + 0x4fcea3]
000000014010682d call     0x140044426
0000000140106832 add      dword ptr [rsi + 4], eax
0000000140106835 movzx    ebx, r12b
0000000140106839 mov      rax, qword ptr [rsi + 8]
000000014010683d mov      qword ptr [rbp + 0x48], rax
0000000140106841 test     rax, rax
0000000140106844 je       0x1401068c5
0000000140106846 mov      edx, dword ptr [rsi + 4]
0000000140106849 mov      ecx, dword ptr [rsi + 0x10]
000000014010684c mov      dword ptr [rbp + 0x40], edx
000000014010684f cmp      edx, ecx
0000000140106851 jae      0x1401068c5
0000000140106853 movzx    r8d, byte ptr [r15 + 0xaaedf]
000000014010685b lea      rax, [rbx + rbx*4]
000000014010685f movzx    r10d, byte ptr [r15 + rax + 0xaaed4]
0000000140106868 sub      ecx, edx
000000014010686a movzx    r11d, byte ptr [r15 + rax + 0xaaed3]
0000000140106873 movzx    ebx, byte ptr [r15 + rax + 0xaaed2]
000000014010687c movzx    edi, byte ptr [r15 + rax + 0xaaed1]
0000000140106885 mov      dword ptr [rsp + 0x40], r8d
000000014010688a lea      r8, [rip + 0x4fce5f]
0000000140106891 mov      dword ptr [rsp + 0x38], r10d
0000000140106896 movzx    r9d, r12b
000000014010689a mov      edx, ecx
000000014010689c mov      ecx, dword ptr [rbp + 0x40]
000000014010689f add      rcx, qword ptr [rbp + 0x48]
00000001401068a3 mov      dword ptr [rsp + 0x30], r11d
00000001401068a8 lea      rax, [r15 + r9*4]
00000001401068ac movzx    r9d, byte ptr [r9 + rax + 0xaaed0]
00000001401068b5 mov      dword ptr [rsp + 0x28], ebx
00000001401068b9 mov      dword ptr [rsp + 0x20], edi
00000001401068bd call     0x140044426
00000001401068c2 add      dword ptr [rsi + 4], eax
00000001401068c5 inc      r12b
00000001401068c8 jmp      0x1401066cc
00000001401068cd mov      bl, r14b
00000001401068d0 cmp      byte ptr [r15 + 0xaaf60], r14b
00000001401068d7 jbe      0x140106ef0
00000001401068dd mov      r13, qword ptr [rbp + 0x50]
00000001401068e1 mov      r12, qword ptr [rsi + 8]
00000001401068e5 test     r12, r12
00000001401068e8 je       0x14010695d
00000001401068ea mov      edi, dword ptr [rsi + 4]
00000001401068ed mov      r11d, dword ptr [rsi + 0x10]
00000001401068f1 cmp      edi, r11d
00000001401068f4 jae      0x14010695d
00000001401068f6 movzx    eax, bl
00000001401068f9 sub      r11d, edi
00000001401068fc mov      rcx, r13
00000001401068ff movzx    r9d, bl
0000000140106903 lea      r8, [rax + rax*2]
0000000140106907 lea      rax, [rax + rax*2]
000000014010690b sub      rcx, qword ptr [r15 + rax*8 + 0xaaf20]
0000000140106913 movabs   rax, 0x431bde82d7b634db
000000014010691d mul      rcx
0000000140106920 movzx    eax, byte ptr [r15 + r8*8 + 0xaaf28]
0000000140106929 lea      rcx, [r12 + rdi]
000000014010692d movzx    r8d, word ptr [r15 + r8*8 + 0xaaf18]
0000000140106936 mov      r10, rdx
0000000140106939 shr      r10, 0x12
000000014010693d mov      dword ptr [rsp + 0x30], r10d
0000000140106942 mov      dword ptr [rsp + 0x28], eax
0000000140106946 mov      dword ptr [rsp + 0x20], r8d
000000014010694b lea      r8, [rip + 0x4fcdce]
0000000140106952 mov      edx, r11d
0000000140106955 call     0x140044426
000000014010695a add      dword ptr [rsi + 4], eax
000000014010695d inc      bl
000000014010695f cmp      bl, byte ptr [r15 + 0xaaf60]
0000000140106966 jb       0x1401068e1
000000014010696c jmp      0x140106ef0
0000000140106971 cmp      dword ptr [rsi], 5
0000000140106974 mov      dword ptr [rbp + 0x40], r14d
0000000140106978 mov      dword ptr [rbp + 0x48], r14d
000000014010697c mov      dword ptr [rbp + 0x50], r14d
0000000140106980 jb       0x140106ef0
0000000140106986 lea      rcx, [rsi + 0x34]
000000014010698a mov      dl, 1
000000014010698c lea      r8, [rbp + 0x40]
0000000140106990 call     0x1405be854
0000000140106995 cmp      dword ptr [rbp + 0x40], 0x64
0000000140106999 lea      r8, [rbp + 0x48]
000000014010699d movzx    eax, byte ptr [rbp + 0x40]
00000001401069a1 mov      ecx, 0x3c
00000001401069a6 cmova    eax, ecx
00000001401069a9 mov      dl, 1
00000001401069ab lea      rcx, [rsi + 0x44]
00000001401069af mov      byte ptr [r15 + 0xaaeb4], al
00000001401069b6 call     0x1405be854
00000001401069bb mov      al, byte ptr [rbp + 0x48]
00000001401069be lea      rcx, [rsi + 0x54]
00000001401069c2 lea      r8, [rbp + 0x50]
00000001401069c6 mov      byte ptr [r15 + 0x52078], al
00000001401069cd mov      dl, 1
00000001401069cf call     0x1405be854
00000001401069d4 mov      eax, dword ptr [rbp + 0x50]
00000001401069d7 mov      byte ptr [r15 + 0x52079], al
00000001401069de mov      r11, qword ptr [rsi + 8]
00000001401069e2 test     r11, r11
00000001401069e5 je       0x140106ef0
00000001401069eb mov      r10d, dword ptr [rsi + 4]
00000001401069ef mov      ecx, dword ptr [rsi + 0x10]
00000001401069f2 cmp      r10d, ecx
00000001401069f5 jae      0x140106ef0
00000001401069fb movzx    r8d, byte ptr [r15 + 0x52078]
0000000140106a03 movzx    r9d, byte ptr [r15 + 0xaaeb4]
0000000140106a0b movzx    eax, al
0000000140106a0e mov      dword ptr [rsp + 0x28], eax
0000000140106a12 mov      dword ptr [rsp + 0x20], r8d
0000000140106a17 lea      r8, [rip + 0x4fca32]
0000000140106a1e jmp      0x140106c31
0000000140106a23 cmp      dword ptr [rsi], 4
0000000140106a26 mov      dword ptr [rbp + 0x40], r14d
0000000140106a2a jb       0x140106ef0
0000000140106a30 lea      rax, [rsi + 0x34]
0000000140106a34 lea      r8, [rbp - 0x10]
0000000140106a38 mov      rcx, rax
0000000140106a3b sub      r8, rax
0000000140106a3e movzx    edx, byte ptr [rcx]
0000000140106a41 movzx    r9d, byte ptr [rcx + r8]
0000000140106a46 sub      edx, r9d
0000000140106a49 jne      0x140106a53
0000000140106a4b inc      rcx
0000000140106a4e test     r9d, r9d
0000000140106a51 jne      0x140106a3e
0000000140106a53 test     edx, edx
0000000140106a55 jne      0x140106aa0
0000000140106a57 lea      rcx, [rsi + 0x44]
0000000140106a5b mov      dl, 1
0000000140106a5d lea      r8, [rbp + 0x40]
0000000140106a61 call     0x1405be854
0000000140106a66 mov      edx, dword ptr [rbp + 0x40]
0000000140106a69 mov      byte ptr [r15 + 0xaaef2], dl
0000000140106a70 mov      r8, qword ptr [rsi + 8]
0000000140106a74 test     r8, r8
0000000140106a77 je       0x140106ef0
0000000140106a7d mov      ecx, dword ptr [rsi + 4]
0000000140106a80 mov      eax, dword ptr [rsi + 0x10]
0000000140106a83 cmp      ecx, eax
0000000140106a85 jae      0x140106ef0
0000000140106a8b sub      eax, ecx
0000000140106a8d movzx    r9d, dl
0000000140106a91 add      rcx, r8
0000000140106a94 lea      r8, [rip + 0x4fc955]
0000000140106a9b jmp      0x140106e6d
0000000140106aa0 lea      r8, [rbp - 0x20]
0000000140106aa4 sub      r8, rax
0000000140106aa7 movzx    ecx, byte ptr [rax]
0000000140106aaa movzx    edx, byte ptr [rax + r8]
0000000140106aaf sub      ecx, edx
0000000140106ab1 jne      0x140106aba
0000000140106ab3 inc      rax
0000000140106ab6 test     edx, edx
0000000140106ab8 jne      0x140106aa7
0000000140106aba test     ecx, ecx
0000000140106abc jne      0x140106ef0
0000000140106ac2 lea      rcx, [rsi + 0x44]
0000000140106ac6 mov      dl, 1
0000000140106ac8 lea      r8, [rbp + 0x40]
0000000140106acc call     0x1405be854
0000000140106ad1 mov      edx, dword ptr [rbp + 0x40]
0000000140106ad4 mov      byte ptr [r15 + 0xaaeb3], dl
0000000140106adb mov      r8, qword ptr [rsi + 8]
0000000140106adf test     r8, r8
0000000140106ae2 je       0x140106ef0
0000000140106ae8 mov      ecx, dword ptr [rsi + 4]
0000000140106aeb mov      eax, dword ptr [rsi + 0x10]
0000000140106aee cmp      ecx, eax
0000000140106af0 jae      0x140106ef0
0000000140106af6 sub      eax, ecx
0000000140106af8 movzx    r9d, dl
0000000140106afc add      rcx, r8
0000000140106aff lea      r8, [rip + 0x4fc91a]
0000000140106b06 jmp      0x140106e6d
0000000140106b0b cmp      dword ptr [rsi], 4
0000000140106b0e mov      dword ptr [rbp + 0x40], r14d
0000000140106b12 jb       0x140106ef0
0000000140106b18 lea      rax, [rsi + 0x34]
0000000140106b1c lea      r8, [rbp - 0x10]
0000000140106b20 mov      rcx, rax
0000000140106b23 sub      r8, rax
0000000140106b26 movzx    edx, byte ptr [rcx]
0000000140106b29 movzx    r9d, byte ptr [rcx + r8]
0000000140106b2e sub      edx, r9d
0000000140106b31 jne      0x140106b3b
0000000140106b33 inc      rcx
0000000140106b36 test     r9d, r9d
0000000140106b39 jne      0x140106b26
0000000140106b3b test     edx, edx
0000000140106b3d jne      0x140106ba4
0000000140106b3f lea      rcx, [rsi + 0x44]
0000000140106b43 mov      dl, 1
0000000140106b45 lea      r8, [rbp + 0x40]
0000000140106b49 call     0x1405be854
0000000140106b4e mov      eax, dword ptr [rbp + 0x40]
0000000140106b51 mov      ecx, eax
0000000140106b53 shr      ecx, 8
0000000140106b56 mov      byte ptr [r15 + 0xaaef0], cl
0000000140106b5d mov      byte ptr [r15 + 0xaaef1], al
0000000140106b64 mov      r10, qword ptr [rsi + 8]
0000000140106b68 test     r10, r10
0000000140106b6b je       0x140106ef0
0000000140106b71 mov      r8d, dword ptr [rsi + 4]
0000000140106b75 mov      edx, dword ptr [rsi + 0x10]
0000000140106b78 cmp      r8d, edx
0000000140106b7b jae      0x140106ef0
0000000140106b81 movzx    r9d, cl
0000000140106b85 sub      edx, r8d
0000000140106b88 lea      rcx, [r10 + r8]
0000000140106b8c movzx    eax, al
0000000140106b8f lea      r8, [rip + 0x4fc7ea]
0000000140106b96 mov      dword ptr [rsp + 0x20], eax
0000000140106b9a call     0x140044426
0000000140106b9f jmp      0x140106e74
0000000140106ba4 lea      r8, [rbp - 0x20]
0000000140106ba8 sub      r8, rax
0000000140106bab movzx    ecx, byte ptr [rax]
0000000140106bae movzx    edx, byte ptr [rax + r8]
0000000140106bb3 sub      ecx, edx
0000000140106bb5 jne      0x140106bbe
0000000140106bb7 inc      rax
0000000140106bba test     edx, edx
0000000140106bbc jne      0x140106bab
0000000140106bbe test     ecx, ecx
0000000140106bc0 jne      0x140106ef0
0000000140106bc6 lea      rcx, [rsi + 0x44]
0000000140106bca mov      dl, 1
0000000140106bcc lea      r8, [rbp + 0x40]
0000000140106bd0 call     0x1405be854
0000000140106bd5 mov      edx, dword ptr [rbp + 0x40]
0000000140106bd8 mov      r8d, edx
0000000140106bdb shr      r8d, 8
0000000140106bdf mov      eax, edx
0000000140106be1 shr      eax, 0x10
0000000140106be4 mov      byte ptr [r15 + 0xaaeb1], r8b
0000000140106beb mov      byte ptr [r15 + 0xaaeb2], al
0000000140106bf2 mov      byte ptr [r15 + 0xaaeb0], dl
0000000140106bf9 mov      r11, qword ptr [rsi + 8]
0000000140106bfd test     r11, r11
0000000140106c00 je       0x140106ef0
0000000140106c06 mov      r10d, dword ptr [rsi + 4]
0000000140106c0a mov      ecx, dword ptr [rsi + 0x10]
0000000140106c0d cmp      r10d, ecx
0000000140106c10 jae      0x140106ef0
0000000140106c16 movzx    r8d, r8b
0000000140106c1a movzx    eax, al
0000000140106c1d mov      dword ptr [rsp + 0x28], eax
0000000140106c21 mov      dword ptr [rsp + 0x20], r8d
0000000140106c26 lea      r8, [rip + 0x4fc783]
0000000140106c2d movzx    r9d, dl
0000000140106c31 sub      ecx, r10d
0000000140106c34 mov      edx, ecx
0000000140106c36 lea      rcx, [r11 + r10]
0000000140106c3a call     0x140044426
0000000140106c3f jmp      0x140106e74
0000000140106c44 cmp      dword ptr [rsi], 4
0000000140106c47 jb       0x140106ef0
0000000140106c4d lea      rax, [rsi + 0x34]
0000000140106c51 lea      r8, [rbp - 0x10]
0000000140106c55 mov      rcx, rax
0000000140106c58 sub      r8, rax
0000000140106c5b movzx    edx, byte ptr [rcx]
0000000140106c5e movzx    r9d, byte ptr [rcx + r8]
0000000140106c63 sub      edx, r9d
0000000140106c66 jne      0x140106c70
0000000140106c68 inc      rcx
0000000140106c6b test     r9d, r9d
0000000140106c6e jne      0x140106c5b
0000000140106c70 test     edx, edx
0000000140106c72 jne      0x140106cd6
0000000140106c74 lea      rax, [rsi + 0x44]
0000000140106c78 lea      rdx, [rbp - 8]
0000000140106c7c sub      rdx, rax
0000000140106c7f movzx    ecx, byte ptr [rax]
0000000140106c82 movzx    r8d, byte ptr [rax + rdx]
0000000140106c87 sub      ecx, r8d
0000000140106c8a jne      0x140106c94
0000000140106c8c inc      rax
0000000140106c8f test     r8d, r8d
0000000140106c92 jne      0x140106c7f
0000000140106c94 test     ecx, ecx
0000000140106c96 sete     al
0000000140106c99 mov      byte ptr [r15 + 0xaaea9], al
0000000140106ca0 mov      r10, qword ptr [rsi + 8]
0000000140106ca4 test     r10, r10
0000000140106ca7 je       0x140106ef0
0000000140106cad mov      r8d, dword ptr [rsi + 4]
0000000140106cb1 mov      eax, dword ptr [rsi + 0x10]
0000000140106cb4 cmp      r8d, eax
0000000140106cb7 jae      0x140106ef0
0000000140106cbd test     ecx, ecx
0000000140106cbf lea      rcx, [r10 + r8]
0000000140106cc3 sete     r14b
0000000140106cc7 sub      eax, r8d
0000000140106cca lea      r8, [rip + 0x4fc66f]
0000000140106cd1 jmp      0x140106e6a
0000000140106cd6 lea      r8, [rbp - 0x20]
0000000140106cda sub      r8, rax
0000000140106cdd movzx    ecx, byte ptr [rax]
0000000140106ce0 movzx    edx, byte ptr [rax + r8]
0000000140106ce5 sub      ecx, edx
0000000140106ce7 jne      0x140106cf0
0000000140106ce9 inc      rax
0000000140106cec test     edx, edx
0000000140106cee jne      0x140106cdd
0000000140106cf0 test     ecx, ecx
0000000140106cf2 jne      0x140106ef0
0000000140106cf8 lea      rax, [rsi + 0x44]
0000000140106cfc lea      rdx, [rbp - 8]
0000000140106d00 sub      rdx, rax
0000000140106d03 movzx    ecx, byte ptr [rax]
0000000140106d06 movzx    r8d, byte ptr [rax + rdx]
0000000140106d0b sub      ecx, r8d
0000000140106d0e jne      0x140106d18
0000000140106d10 inc      rax
0000000140106d13 test     r8d, r8d
0000000140106d16 jne      0x140106d03
0000000140106d18 test     ecx, ecx
0000000140106d1a sete     al
0000000140106d1d mov      byte ptr [r15 + 0xaaea8], al
0000000140106d24 mov      r9, qword ptr [rsi + 8]
0000000140106d28 test     r9, r9
0000000140106d2b je       0x140106ef0
0000000140106d31 mov      r8d, dword ptr [rsi + 4]
0000000140106d35 mov      eax, dword ptr [rsi + 0x10]
0000000140106d38 cmp      r8d, eax
0000000140106d3b jae      0x140106ef0
0000000140106d41 test     ecx, ecx
0000000140106d43 lea      rcx, [r9 + r8]
0000000140106d47 sete     r14b
0000000140106d4b sub      eax, r8d
0000000140106d4e lea      r8, [rip + 0x4fc60b]
0000000140106d55 jmp      0x140106e6a
0000000140106d5a cmp      dword ptr [rsi], 3
0000000140106d5d mov      dword ptr [rbp + 0x40], r14d
0000000140106d61 jb       0x140106ef0
0000000140106d67 lea      rcx, [rsi + 0x34]
0000000140106d6b mov      dl, 1
0000000140106d6d lea      r8, [rbp + 0x40]
0000000140106d71 call     0x1405be854
0000000140106d76 movzx    edx, byte ptr [rbp + 0x40]
0000000140106d7a mov      word ptr [r15 + 0x52076], dx
0000000140106d82 mov      r8, qword ptr [rsi + 8]
0000000140106d86 test     r8, r8
0000000140106d89 je       0x140106ef0
0000000140106d8f mov      ecx, dword ptr [rsi + 4]
0000000140106d92 mov      eax, dword ptr [rsi + 0x10]
0000000140106d95 cmp      ecx, eax
0000000140106d97 jae      0x140106ef0
0000000140106d9d sub      eax, ecx
0000000140106d9f mov      r9d, edx
0000000140106da2 add      rcx, r8
0000000140106da5 lea      r8, [rip + 0x4fc574]
0000000140106dac jmp      0x140106e6d
0000000140106db1 cmp      dword ptr [rsi], 3
0000000140106db4 mov      dword ptr [rbp + 0x40], r14d
0000000140106db8 jb       0x140106ef0
0000000140106dbe lea      rcx, [rsi + 0x34]
0000000140106dc2 mov      dl, 1
0000000140106dc4 lea      r8, [rbp + 0x40]
0000000140106dc8 call     0x1405be854
0000000140106dcd mov      edx, dword ptr [rbp + 0x40]
0000000140106dd0 mov      byte ptr [r15 + 0x52075], dl
0000000140106dd7 mov      r8, qword ptr [rsi + 8]
0000000140106ddb test     r8, r8
0000000140106dde je       0x140106ef0
0000000140106de4 mov      ecx, dword ptr [rsi + 4]
0000000140106de7 mov      eax, dword ptr [rsi + 0x10]
0000000140106dea cmp      ecx, eax
0000000140106dec jae      0x140106ef0
0000000140106df2 sub      eax, ecx
0000000140106df4 movzx    r9d, dl
0000000140106df8 add      rcx, r8
0000000140106dfb lea      r8, [rip + 0x4fc4fe]
0000000140106e02 jmp      0x140106e6d
0000000140106e04 cmp      dword ptr [rsi], 3
0000000140106e07 jb       0x140106ef0
0000000140106e0d lea      rax, [rsi + 0x34]
0000000140106e11 lea      rdx, [rbp - 8]
0000000140106e15 sub      rdx, rax
0000000140106e18 movzx    ecx, byte ptr [rax]
0000000140106e1b movzx    r8d, byte ptr [rax + rdx]
0000000140106e20 sub      ecx, r8d
0000000140106e23 jne      0x140106e2d
0000000140106e25 inc      rax
0000000140106e28 test     r8d, r8d
0000000140106e2b jne      0x140106e18
0000000140106e2d test     ecx, ecx
0000000140106e2f sete     al
0000000140106e32 mov      byte ptr [r15 + 0x52074], al
0000000140106e39 mov      r9, qword ptr [rsi + 8]
0000000140106e3d test     r9, r9
0000000140106e40 je       0x140106ef0
0000000140106e46 mov      r8d, dword ptr [rsi + 4]
0000000140106e4a mov      eax, dword ptr [rsi + 0x10]
0000000140106e4d cmp      r8d, eax
0000000140106e50 jae      0x140106ef0
0000000140106e56 test     ecx, ecx
0000000140106e58 lea      rcx, [r9 + r8]
0000000140106e5c sete     r14b
0000000140106e60 sub      eax, r8d
0000000140106e63 lea      r8, [rip + 0x4fc476]
0000000140106e6a mov      r9d, r14d
0000000140106e6d mov      edx, eax
0000000140106e6f call     0x140044426
0000000140106e74 add      dword ptr [rsi + 4], eax
0000000140106e77 jmp      0x140106ef0
0000000140106e79 mov      r8, qword ptr [rsi + 8]
0000000140106e7d test     r8, r8
0000000140106e80 je       0x140106ea2
0000000140106e82 mov      ecx, dword ptr [rsi + 4]
0000000140106e85 mov      eax, dword ptr [rsi + 0x10]
0000000140106e88 cmp      ecx, eax
0000000140106e8a jae      0x140106ea2
0000000140106e8c sub      eax, ecx
0000000140106e8e add      rcx, r8
0000000140106e91 mov      edx, eax
0000000140106e93 lea      r8, [rip + 0x4fc426]
0000000140106e9a call     0x140044426
0000000140106e9f add      dword ptr [rsi + 4], eax
0000000140106ea2 mov      ebx, 1
0000000140106ea7 lea      edi, [rbx + 7]
0000000140106eaa mov      r10, qword ptr [rsi + 8]
0000000140106eae test     r10, r10
0000000140106eb1 je       0x140106ee8
0000000140106eb3 mov      r9d, dword ptr [rsi + 4]
0000000140106eb7 mov      ecx, dword ptr [rsi + 0x10]
0000000140106eba cmp      r9d, ecx
0000000140106ebd jae      0x140106ee8
0000000140106ebf sub      ecx, r9d
0000000140106ec2 mov      eax, ebx
0000000140106ec4 imul     r8, rax, 0x15
0000000140106ec8 mov      edx, ecx
0000000140106eca lea      rcx, [r10 + r9]
0000000140106ece add      r8, r12
0000000140106ed1 mov      r9d, ebx
0000000140106ed4 mov      qword ptr [rsp + 0x20], r8
0000000140106ed9 lea      r8, [rip + 0x4fc3f0]
0000000140106ee0 call     0x140044426
0000000140106ee5 add      dword ptr [rsi + 4], eax
0000000140106ee8 inc      ebx
0000000140106eea sub      rdi, 1
0000000140106eee jne      0x140106eaa
0000000140106ef0 mov      rbx, qword ptr [rsp + 0xc8]
0000000140106ef8 add      rsp, 0x70
0000000140106efc pop      r15
0000000140106efe pop      r14
0000000140106f00 pop      r13
0000000140106f02 pop      r12
0000000140106f04 pop      rdi
0000000140106f05 pop      rsi
0000000140106f06 pop      rbp
0000000140106f07 ret      