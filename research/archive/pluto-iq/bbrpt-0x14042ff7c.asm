000000014042ff7c mov      rax, rsp
000000014042ff7f mov      qword ptr [rax + 8], rbx
000000014042ff83 mov      qword ptr [rax + 0x10], rbp
000000014042ff87 mov      qword ptr [rax + 0x20], rsi
000000014042ff8b mov      qword ptr [rax + 0x18], r8
000000014042ff8f push     rdi
000000014042ff90 push     r12
000000014042ff92 push     r13
000000014042ff94 push     r14
000000014042ff96 push     r15
000000014042ff98 sub      rsp, 0x40
000000014042ff9c mov      rax, qword ptr [rcx]
000000014042ff9f xor      edi, edi
000000014042ffa1 mov      rsi, rdx
000000014042ffa4 mov      r12d, r9d
000000014042ffa7 mov      r15, r8
000000014042ffaa mov      rbx, rcx
000000014042ffad mov      r13, qword ptr [rax]
000000014042ffb0 and      dword ptr [rdx], edi
000000014042ffb2 lea      edx, [rdi + 8]
000000014042ffb5 call     0x14036c07c
000000014042ffba mov      r14, qword ptr [rsp + 0x90]
000000014042ffc2 test     al, al
000000014042ffc4 jne      0x14042fff7
000000014042ffc6 lea      edx, [rdi + 0xa]
000000014042ffc9 mov      rcx, rbx
000000014042ffcc call     0x14036c07c
000000014042ffd1 test     al, al
000000014042ffd3 jne      0x14042fff7
000000014042ffd5 lea      edx, [rdi + 9]
000000014042ffd8 mov      rcx, rbx
000000014042ffdb call     0x14036c07c
000000014042ffe0 test     al, al
000000014042ffe2 jne      0x14042fff7
000000014042ffe4 lea      edx, [rdi + 0xf]
000000014042ffe7 mov      rcx, rbx
000000014042ffea call     0x14036c07c
000000014042ffef test     al, al
000000014042fff1 je       0x14043008d
000000014042fff7 inc      dword ptr [rsi]
000000014042fff9 mov      edx, 0x8840
000000014042fffe mov      rax, qword ptr [r13 + 0x20]
0000000140430002 mov      rcx, rbx
0000000140430005 call     qword ptr [rip + 0x2542ed]
000000014043000b mov      ebp, eax
000000014043000d test     eax, eax
000000014043000f je       0x14043008d
0000000140430011 mov      rax, qword ptr [rbx + 0x18]
0000000140430015 lea      rdi, [rbx + 0x1320]
000000014043001c mov      rcx, qword ptr [rbx + 8]
0000000140430020 mov      rdx, rdi
0000000140430023 mov      rax, qword ptr [rax + 0x108]
000000014043002a call     qword ptr [rip + 0x2542c8]
0000000140430030 mov      edx, dword ptr [r14]
0000000140430033 cmp      edx, r12d
0000000140430036 jae      0x140430070
0000000140430038 mov      rcx, qword ptr [rbx + 0x18]
000000014043003c lea      r9, [rip + 0x224d1d]
0000000140430043 mov      r8d, r12d
0000000140430046 mov      dword ptr [rsp + 0x28], ebp
000000014043004a sub      r8d, edx
000000014043004d add      rdx, r15
0000000140430050 mov      rax, qword ptr [rcx + 0x128]
0000000140430057 lea      rcx, [rip + 0x224cd2]
000000014043005e mov      qword ptr [rsp + 0x20], rcx
0000000140430063 mov      rcx, qword ptr [rbx + 8]
0000000140430067 call     qword ptr [rip + 0x25428b]
000000014043006d add      dword ptr [r14], eax
0000000140430070 mov      rax, qword ptr [rbx + 0x18]
0000000140430074 mov      rdx, rdi
0000000140430077 mov      rcx, qword ptr [rbx + 8]
000000014043007b mov      rax, qword ptr [rax + 0x110]
0000000140430082 call     qword ptr [rip + 0x254270]
0000000140430088 mov      edi, 1
000000014043008d mov      edx, 8
0000000140430092 mov      rcx, rbx
0000000140430095 call     0x14036c07c
000000014043009a test     al, al
000000014043009c jne      0x1404300d5
000000014043009e mov      edx, 0xa
00000001404300a3 mov      rcx, rbx
00000001404300a6 call     0x14036c07c
00000001404300ab test     al, al
00000001404300ad jne      0x1404300d5
00000001404300af mov      edx, 9
00000001404300b4 mov      rcx, rbx
00000001404300b7 call     0x14036c07c
00000001404300bc test     al, al
00000001404300be jne      0x1404300d5
00000001404300c0 mov      edx, 0xf
00000001404300c5 mov      rcx, rbx
00000001404300c8 call     0x14036c07c
00000001404300cd test     al, al
00000001404300cf je       0x14043016d
00000001404300d5 inc      dword ptr [rsi]
00000001404300d7 mov      edx, 0x8844
00000001404300dc mov      rax, qword ptr [r13 + 0x20]
00000001404300e0 mov      rcx, rbx
00000001404300e3 call     qword ptr [rip + 0x25420f]
00000001404300e9 mov      ebp, eax
00000001404300eb test     eax, eax
00000001404300ed je       0x14043016d
00000001404300ef mov      rax, qword ptr [rbx + 0x18]
00000001404300f3 lea      r15, [rbx + 0x1320]
00000001404300fa mov      rcx, qword ptr [rbx + 8]
00000001404300fe mov      rdx, r15
0000000140430101 mov      rax, qword ptr [rax + 0x108]
0000000140430108 call     qword ptr [rip + 0x2541ea]
000000014043010e mov      edx, dword ptr [r14]
0000000140430111 cmp      edx, r12d
0000000140430114 jae      0x140430153
0000000140430116 mov      rcx, qword ptr [rbx + 0x18]
000000014043011a lea      r9, [rip + 0x224c8f]
0000000140430121 mov      r8d, r12d
0000000140430124 mov      dword ptr [rsp + 0x28], ebp
0000000140430128 sub      r8d, edx
000000014043012b add      rdx, qword ptr [rsp + 0x80]
0000000140430133 mov      rax, qword ptr [rcx + 0x128]
000000014043013a lea      rcx, [rip + 0x224bef]
0000000140430141 mov      qword ptr [rsp + 0x20], rcx
0000000140430146 mov      rcx, qword ptr [rbx + 8]
000000014043014a call     qword ptr [rip + 0x2541a8]
0000000140430150 add      dword ptr [r14], eax
0000000140430153 mov      rax, qword ptr [rbx + 0x18]
0000000140430157 mov      rdx, r15
000000014043015a mov      rcx, qword ptr [rbx + 8]
000000014043015e mov      rax, qword ptr [rax + 0x110]
0000000140430165 call     qword ptr [rip + 0x25418d]
000000014043016b inc      edi
000000014043016d mov      edx, 8
0000000140430172 mov      rcx, rbx
0000000140430175 call     0x14036c07c
000000014043017a test     al, al
000000014043017c jne      0x1404301b5
000000014043017e mov      edx, 0xa
0000000140430183 mov      rcx, rbx
0000000140430186 call     0x14036c07c
000000014043018b test     al, al
000000014043018d jne      0x1404301b5
000000014043018f mov      edx, 9
0000000140430194 mov      rcx, rbx
0000000140430197 call     0x14036c07c
000000014043019c test     al, al
000000014043019e jne      0x1404301b5
00000001404301a0 mov      edx, 0xf
00000001404301a5 mov      rcx, rbx
00000001404301a8 call     0x14036c07c
00000001404301ad test     al, al
00000001404301af je       0x14043024d
00000001404301b5 inc      dword ptr [rsi]
00000001404301b7 mov      edx, 0x8848
00000001404301bc mov      rax, qword ptr [r13 + 0x20]
00000001404301c0 mov      rcx, rbx
00000001404301c3 call     qword ptr [rip + 0x25412f]
00000001404301c9 mov      ebp, eax
00000001404301cb test     eax, eax
00000001404301cd je       0x14043024d
00000001404301cf mov      rax, qword ptr [rbx + 0x18]
00000001404301d3 lea      r15, [rbx + 0x1320]
00000001404301da mov      rcx, qword ptr [rbx + 8]
00000001404301de mov      rdx, r15
00000001404301e1 mov      rax, qword ptr [rax + 0x108]
00000001404301e8 call     qword ptr [rip + 0x25410a]
00000001404301ee mov      edx, dword ptr [r14]
00000001404301f1 cmp      edx, r12d
00000001404301f4 jae      0x140430233
00000001404301f6 mov      rcx, qword ptr [rbx + 0x18]
00000001404301fa lea      r9, [rip + 0x224bff]
0000000140430201 mov      r8d, r12d
0000000140430204 mov      dword ptr [rsp + 0x28], ebp
0000000140430208 sub      r8d, edx
000000014043020b add      rdx, qword ptr [rsp + 0x80]
0000000140430213 mov      rax, qword ptr [rcx + 0x128]
000000014043021a lea      rcx, [rip + 0x224b0f]
0000000140430221 mov      qword ptr [rsp + 0x20], rcx
0000000140430226 mov      rcx, qword ptr [rbx + 8]
000000014043022a call     qword ptr [rip + 0x2540c8]
0000000140430230 add      dword ptr [r14], eax
0000000140430233 mov      rax, qword ptr [rbx + 0x18]
0000000140430237 mov      rdx, r15
000000014043023a mov      rcx, qword ptr [rbx + 8]
000000014043023e mov      rax, qword ptr [rax + 0x110]
0000000140430245 call     qword ptr [rip + 0x2540ad]
000000014043024b inc      edi
000000014043024d mov      edx, 8
0000000140430252 mov      rcx, rbx
0000000140430255 call     0x14036c07c
000000014043025a test     al, al
000000014043025c jne      0x140430295
000000014043025e mov      edx, 0xa
0000000140430263 mov      rcx, rbx
0000000140430266 call     0x14036c07c
000000014043026b test     al, al
000000014043026d jne      0x140430295
000000014043026f mov      edx, 9
0000000140430274 mov      rcx, rbx
0000000140430277 call     0x14036c07c
000000014043027c test     al, al
000000014043027e jne      0x140430295
0000000140430280 mov      edx, 0xf
0000000140430285 mov      rcx, rbx
0000000140430288 call     0x14036c07c
000000014043028d test     al, al
000000014043028f je       0x14043032d
0000000140430295 inc      dword ptr [rsi]
0000000140430297 mov      edx, 0x884c
000000014043029c mov      rax, qword ptr [r13 + 0x20]
00000001404302a0 mov      rcx, rbx
00000001404302a3 call     qword ptr [rip + 0x25404f]
00000001404302a9 mov      ebp, eax
00000001404302ab test     eax, eax
00000001404302ad je       0x14043032d
00000001404302af mov      rax, qword ptr [rbx + 0x18]
00000001404302b3 lea      r15, [rbx + 0x1320]
00000001404302ba mov      rcx, qword ptr [rbx + 8]
00000001404302be mov      rdx, r15
00000001404302c1 mov      rax, qword ptr [rax + 0x108]
00000001404302c8 call     qword ptr [rip + 0x25402a]
00000001404302ce mov      edx, dword ptr [r14]
00000001404302d1 cmp      edx, r12d
00000001404302d4 jae      0x140430313
00000001404302d6 mov      rcx, qword ptr [rbx + 0x18]
00000001404302da lea      r9, [rip + 0x224b6f]
00000001404302e1 mov      r8d, r12d
00000001404302e4 mov      dword ptr [rsp + 0x28], ebp
00000001404302e8 sub      r8d, edx
00000001404302eb add      rdx, qword ptr [rsp + 0x80]
00000001404302f3 mov      rax, qword ptr [rcx + 0x128]
00000001404302fa lea      rcx, [rip + 0x224a2f]
0000000140430301 mov      qword ptr [rsp + 0x20], rcx
0000000140430306 mov      rcx, qword ptr [rbx + 8]
000000014043030a call     qword ptr [rip + 0x253fe8]
0000000140430310 add      dword ptr [r14], eax
0000000140430313 mov      rax, qword ptr [rbx + 0x18]
0000000140430317 mov      rdx, r15
000000014043031a mov      rcx, qword ptr [rbx + 8]
000000014043031e mov      rax, qword ptr [rax + 0x110]
0000000140430325 call     qword ptr [rip + 0x253fcd]
000000014043032b inc      edi
000000014043032d mov      edx, 8
0000000140430332 mov      rcx, rbx
0000000140430335 call     0x14036c07c
000000014043033a test     al, al
000000014043033c jne      0x140430375
000000014043033e mov      edx, 0xa
0000000140430343 mov      rcx, rbx
0000000140430346 call     0x14036c07c
000000014043034b test     al, al
000000014043034d jne      0x140430375
000000014043034f mov      edx, 9
0000000140430354 mov      rcx, rbx
0000000140430357 call     0x14036c07c
000000014043035c test     al, al
000000014043035e jne      0x140430375
0000000140430360 mov      edx, 0xf
0000000140430365 mov      rcx, rbx
0000000140430368 call     0x14036c07c
000000014043036d test     al, al
000000014043036f je       0x14043040d
0000000140430375 inc      dword ptr [rsi]
0000000140430377 mov      edx, 0x8850
000000014043037c mov      rax, qword ptr [r13 + 0x20]
0000000140430380 mov      rcx, rbx
0000000140430383 call     qword ptr [rip + 0x253f6f]
0000000140430389 mov      ebp, eax
000000014043038b test     eax, eax
000000014043038d je       0x14043040d
000000014043038f mov      rax, qword ptr [rbx + 0x18]
0000000140430393 lea      r15, [rbx + 0x1320]
000000014043039a mov      rcx, qword ptr [rbx + 8]
000000014043039e mov      rdx, r15
00000001404303a1 mov      rax, qword ptr [rax + 0x108]
00000001404303a8 call     qword ptr [rip + 0x253f4a]
00000001404303ae mov      edx, dword ptr [r14]
00000001404303b1 cmp      edx, r12d
00000001404303b4 jae      0x1404303f3
00000001404303b6 mov      rcx, qword ptr [rbx + 0x18]
00000001404303ba lea      r9, [rip + 0x224adf]
00000001404303c1 mov      r8d, r12d
00000001404303c4 mov      dword ptr [rsp + 0x28], ebp
00000001404303c8 sub      r8d, edx
00000001404303cb add      rdx, qword ptr [rsp + 0x80]
00000001404303d3 mov      rax, qword ptr [rcx + 0x128]
00000001404303da lea      rcx, [rip + 0x22494f]
00000001404303e1 mov      qword ptr [rsp + 0x20], rcx
00000001404303e6 mov      rcx, qword ptr [rbx + 8]
00000001404303ea call     qword ptr [rip + 0x253f08]
00000001404303f0 add      dword ptr [r14], eax
00000001404303f3 mov      rax, qword ptr [rbx + 0x18]
00000001404303f7 mov      rdx, r15
00000001404303fa mov      rcx, qword ptr [rbx + 8]
00000001404303fe mov      rax, qword ptr [rax + 0x110]
0000000140430405 call     qword ptr [rip + 0x253eed]
000000014043040b inc      edi
000000014043040d mov      edx, 8
0000000140430412 mov      rcx, rbx
0000000140430415 call     0x14036c07c
000000014043041a test     al, al
000000014043041c jne      0x140430455
000000014043041e mov      edx, 0xa
0000000140430423 mov      rcx, rbx
0000000140430426 call     0x14036c07c
000000014043042b test     al, al
000000014043042d jne      0x140430455
000000014043042f mov      edx, 9
0000000140430434 mov      rcx, rbx
0000000140430437 call     0x14036c07c
000000014043043c test     al, al
000000014043043e jne      0x140430455
0000000140430440 mov      edx, 0xf
0000000140430445 mov      rcx, rbx
0000000140430448 call     0x14036c07c
000000014043044d test     al, al
000000014043044f je       0x1404304ed
0000000140430455 inc      dword ptr [rsi]
0000000140430457 mov      edx, 0x8854
000000014043045c mov      rax, qword ptr [r13 + 0x20]
0000000140430460 mov      rcx, rbx
0000000140430463 call     qword ptr [rip + 0x253e8f]
0000000140430469 mov      ebp, eax
000000014043046b test     eax, eax
000000014043046d je       0x1404304ed
000000014043046f mov      rax, qword ptr [rbx + 0x18]
0000000140430473 lea      r15, [rbx + 0x1320]
000000014043047a mov      rcx, qword ptr [rbx + 8]
000000014043047e mov      rdx, r15
0000000140430481 mov      rax, qword ptr [rax + 0x108]
0000000140430488 call     qword ptr [rip + 0x253e6a]
000000014043048e mov      edx, dword ptr [r14]
0000000140430491 cmp      edx, r12d
0000000140430494 jae      0x1404304d3
0000000140430496 mov      rcx, qword ptr [rbx + 0x18]
000000014043049a lea      r9, [rip + 0x224a4f]
00000001404304a1 mov      r8d, r12d
00000001404304a4 mov      dword ptr [rsp + 0x28], ebp
00000001404304a8 sub      r8d, edx
00000001404304ab add      rdx, qword ptr [rsp + 0x80]
00000001404304b3 mov      rax, qword ptr [rcx + 0x128]
00000001404304ba lea      rcx, [rip + 0x22486f]
00000001404304c1 mov      qword ptr [rsp + 0x20], rcx
00000001404304c6 mov      rcx, qword ptr [rbx + 8]
00000001404304ca call     qword ptr [rip + 0x253e28]
00000001404304d0 add      dword ptr [r14], eax
00000001404304d3 mov      rax, qword ptr [rbx + 0x18]
00000001404304d7 mov      rdx, r15
00000001404304da mov      rcx, qword ptr [rbx + 8]
00000001404304de mov      rax, qword ptr [rax + 0x110]
00000001404304e5 call     qword ptr [rip + 0x253e0d]
00000001404304eb inc      edi
00000001404304ed mov      edx, 8
00000001404304f2 mov      rcx, rbx
00000001404304f5 call     0x14036c07c
00000001404304fa test     al, al
00000001404304fc jne      0x140430535
00000001404304fe mov      edx, 0xa
0000000140430503 mov      rcx, rbx
0000000140430506 call     0x14036c07c
000000014043050b test     al, al
000000014043050d jne      0x140430535
000000014043050f mov      edx, 9
0000000140430514 mov      rcx, rbx
0000000140430517 call     0x14036c07c
000000014043051c test     al, al
000000014043051e jne      0x140430535
0000000140430520 mov      edx, 0xf
0000000140430525 mov      rcx, rbx
0000000140430528 call     0x14036c07c
000000014043052d test     al, al
000000014043052f je       0x1404305cd
0000000140430535 inc      dword ptr [rsi]
0000000140430537 mov      edx, 0x8858
000000014043053c mov      rax, qword ptr [r13 + 0x20]
0000000140430540 mov      rcx, rbx
0000000140430543 call     qword ptr [rip + 0x253daf]
0000000140430549 mov      ebp, eax
000000014043054b test     eax, eax
000000014043054d je       0x1404305cd
000000014043054f mov      rax, qword ptr [rbx + 0x18]
0000000140430553 lea      r15, [rbx + 0x1320]
000000014043055a mov      rcx, qword ptr [rbx + 8]
000000014043055e mov      rdx, r15
0000000140430561 mov      rax, qword ptr [rax + 0x108]
0000000140430568 call     qword ptr [rip + 0x253d8a]
000000014043056e mov      edx, dword ptr [r14]
0000000140430571 cmp      edx, r12d
0000000140430574 jae      0x1404305b3
0000000140430576 mov      rcx, qword ptr [rbx + 0x18]
000000014043057a lea      r9, [rip + 0x2249bf]
0000000140430581 mov      r8d, r12d
0000000140430584 mov      dword ptr [rsp + 0x28], ebp
0000000140430588 sub      r8d, edx
000000014043058b add      rdx, qword ptr [rsp + 0x80]
0000000140430593 mov      rax, qword ptr [rcx + 0x128]
000000014043059a lea      rcx, [rip + 0x22478f]
00000001404305a1 mov      qword ptr [rsp + 0x20], rcx
00000001404305a6 mov      rcx, qword ptr [rbx + 8]
00000001404305aa call     qword ptr [rip + 0x253d48]
00000001404305b0 add      dword ptr [r14], eax
00000001404305b3 mov      rax, qword ptr [rbx + 0x18]
00000001404305b7 mov      rdx, r15
00000001404305ba mov      rcx, qword ptr [rbx + 8]
00000001404305be mov      rax, qword ptr [rax + 0x110]
00000001404305c5 call     qword ptr [rip + 0x253d2d]
00000001404305cb inc      edi
00000001404305cd mov      edx, 8
00000001404305d2 mov      rcx, rbx
00000001404305d5 call     0x14036c07c
00000001404305da test     al, al
00000001404305dc jne      0x140430615
00000001404305de mov      edx, 0xa
00000001404305e3 mov      rcx, rbx
00000001404305e6 call     0x14036c07c
00000001404305eb test     al, al
00000001404305ed jne      0x140430615
00000001404305ef mov      edx, 9
00000001404305f4 mov      rcx, rbx
00000001404305f7 call     0x14036c07c
00000001404305fc test     al, al
00000001404305fe jne      0x140430615
0000000140430600 mov      edx, 0xf
0000000140430605 mov      rcx, rbx
0000000140430608 call     0x14036c07c
000000014043060d test     al, al
000000014043060f je       0x1404306b3
0000000140430615 inc      dword ptr [rsi]
0000000140430617 mov      edx, 0x885c
000000014043061c mov      rax, qword ptr [r13 + 0x20]
0000000140430620 mov      rcx, rbx
0000000140430623 call     qword ptr [rip + 0x253ccf]
0000000140430629 mov      ebp, eax
000000014043062b test     eax, eax
000000014043062d je       0x1404306b3
0000000140430633 mov      rax, qword ptr [rbx + 0x18]
0000000140430637 lea      rsi, [rbx + 0x1320]
000000014043063e mov      rcx, qword ptr [rbx + 8]
0000000140430642 mov      rdx, rsi
0000000140430645 mov      rax, qword ptr [rax + 0x108]
000000014043064c call     qword ptr [rip + 0x253ca6]
0000000140430652 mov      ecx, dword ptr [r14]
0000000140430655 cmp      ecx, r12d
0000000140430658 jae      0x140430699
000000014043065a mov      rax, qword ptr [rbx + 0x18]
000000014043065e lea      r9, [rip + 0x22492b]
0000000140430665 sub      r12d, ecx
0000000140430668 mov      dword ptr [rsp + 0x28], ebp
000000014043066c mov      edx, ecx
000000014043066e mov      r8d, r12d
0000000140430671 add      rdx, qword ptr [rsp + 0x80]
0000000140430679 lea      rcx, [rip + 0x2246b0]
0000000140430680 mov      rax, qword ptr [rax + 0x128]
0000000140430687 mov      qword ptr [rsp + 0x20], rcx
000000014043068c mov      rcx, qword ptr [rbx + 8]
0000000140430690 call     qword ptr [rip + 0x253c62]
0000000140430696 add      dword ptr [r14], eax
0000000140430699 mov      rax, qword ptr [rbx + 0x18]
000000014043069d mov      rdx, rsi
00000001404306a0 mov      rcx, qword ptr [rbx + 8]
00000001404306a4 mov      rax, qword ptr [rax + 0x110]
00000001404306ab call     qword ptr [rip + 0x253c47]
00000001404306b1 inc      edi
00000001404306b3 xor      edx, edx
00000001404306b5 mov      rcx, rbx
00000001404306b8 call     0x14036c07c
00000001404306bd test     al, al
00000001404306bf jne      0x140430790
00000001404306c5 mov      edx, 1
00000001404306ca mov      rcx, rbx
00000001404306cd call     0x14036c07c
00000001404306d2 test     al, al
00000001404306d4 jne      0x140430790
00000001404306da mov      edx, 4
00000001404306df mov      rcx, rbx
00000001404306e2 call     0x14036c07c
00000001404306e7 test     al, al
00000001404306e9 jne      0x140430790
00000001404306ef mov      edx, 6
00000001404306f4 mov      rcx, rbx
00000001404306f7 call     0x14036c07c
00000001404306fc test     al, al
00000001404306fe jne      0x140430790
0000000140430704 mov      edx, 2
0000000140430709 mov      rcx, rbx
000000014043070c call     0x14036c07c
0000000140430711 test     al, al
0000000140430713 jne      0x140430790
0000000140430715 mov      edx, 5
000000014043071a mov      rcx, rbx
000000014043071d call     0x14036c07c
0000000140430722 test     al, al
0000000140430724 jne      0x140430790
0000000140430726 mov      edx, 3
000000014043072b mov      rcx, rbx
000000014043072e call     0x14036c07c
0000000140430733 test     al, al
0000000140430735 jne      0x140430790
0000000140430737 mov      edx, 8
000000014043073c mov      rcx, rbx
000000014043073f call     0x14036c07c
0000000140430744 test     al, al
0000000140430746 jne      0x140430790
0000000140430748 mov      edx, 0xa
000000014043074d mov      rcx, rbx
0000000140430750 call     0x14036c07c
0000000140430755 test     al, al
0000000140430757 jne      0x140430790
0000000140430759 mov      edx, 9
000000014043075e mov      rcx, rbx
0000000140430761 call     0x14036c07c
0000000140430766 test     al, al
0000000140430768 jne      0x140430790
000000014043076a mov      edx, 0xf
000000014043076f mov      rcx, rbx
0000000140430772 call     0x14036c07c
0000000140430777 test     al, al
0000000140430779 jne      0x140430790
000000014043077b mov      edx, 0x11
0000000140430780 mov      rcx, rbx
0000000140430783 call     0x14036c07c
0000000140430788 neg      al
000000014043078a sbb      eax, eax
000000014043078c and      eax, edi
000000014043078e jmp      0x140430792
0000000140430790 mov      eax, edi
0000000140430792 lea      r11, [rsp + 0x40]
0000000140430797 mov      rbx, qword ptr [r11 + 0x30]
000000014043079b mov      rbp, qword ptr [r11 + 0x38]
000000014043079f mov      rsi, qword ptr [r11 + 0x48]
00000001404307a3 mov      rsp, r11
00000001404307a6 pop      r15
00000001404307a8 pop      r14
00000001404307aa pop      r13
00000001404307ac pop      r12
00000001404307ae pop      rdi
00000001404307af ret      