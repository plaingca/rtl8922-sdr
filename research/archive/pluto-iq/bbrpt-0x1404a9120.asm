00000001404a9120 mov      qword ptr [rsp + 0x20], rbx
00000001404a9125 mov      qword ptr [rsp + 8], rcx
00000001404a912a push     rbp
00000001404a912b push     rsi
00000001404a912c push     rdi
00000001404a912d push     r12
00000001404a912f push     r13
00000001404a9131 push     r14
00000001404a9133 push     r15
00000001404a9135 sub      rsp, 0x40
00000001404a9139 mov      rax, qword ptr [rcx + 8]
00000001404a913d mov      rbx, rcx
00000001404a9140 movsxd   r13, edx
00000001404a9143 imul     r8, r13, 0x6d0
00000001404a914a lea      rsi, [rax + 0x8e0]
00000001404a9151 add      rsi, r8
00000001404a9154 mov      qword ptr [rsp + 0x90], rsi
00000001404a915c movzx    edi, byte ptr [r8 + rax + 0x544]
00000001404a9165 mov      byte ptr [rsp + 0x88], dil
00000001404a916d mov      rcx, qword ptr [rip + 0x476e8c]
00000001404a9174 lea      rax, [rip + 0x476e85]
00000001404a917b cmp      rcx, rax
00000001404a917e je       0x1404a91b8
00000001404a9180 cmp      byte ptr [rcx + 0x229], 4
00000001404a9187 jb       0x1404a91b8
00000001404a9189 test     dword ptr [rcx + 0x22c], 0x400
00000001404a9193 je       0x1404a91b8
00000001404a9195 mov      rcx, qword ptr [rcx + 0x218]
00000001404a919c lea      r9, [rip + 0x1b1c2d]
00000001404a91a3 mov      edx, 0x37
00000001404a91a8 mov      dword ptr [rsp + 0x20], edi
00000001404a91ac lea      r8, [rip + 0x43ee9d]
00000001404a91b3 call     0x1400088d8
00000001404a91b8 xor      r8d, r8d
00000001404a91bb mov      edx, 0xa0
00000001404a91c0 mov      rcx, rsi
00000001404a91c3 call     0x140031144
00000001404a91c8 xor      ebp, ebp
00000001404a91ca lea      r12d, [rdi - 0xe]
00000001404a91ce mov      byte ptr [rsp + 0x30], r12b
00000001404a91d3 mov      r14d, 0x63
00000001404a91d9 mov      byte ptr [rsp + 0x28], bpl
00000001404a91de mov      r9d, r14d
00000001404a91e1 xor      r8d, r8d
00000001404a91e4 mov      byte ptr [rsp + 0x20], bpl
00000001404a91e9 mov      edx, r13d
00000001404a91ec mov      rcx, rbx
00000001404a91ef call     0x1403871f8
00000001404a91f4 movsx    eax, al
00000001404a91f7 lea      r15d, [rdi - 0xa]
00000001404a91fb cdq      
00000001404a91fc mov      byte ptr [rsp + 0x30], r15b
00000001404a9201 sub      eax, edx
00000001404a9203 mov      byte ptr [rsp + 0x28], bpl
00000001404a9208 sar      eax, 1
00000001404a920a mov      r9d, r14d
00000001404a920d xor      r8d, r8d
00000001404a9210 mov      byte ptr [rsi], al
00000001404a9212 mov      edx, r13d
00000001404a9215 mov      byte ptr [rsp + 0x20], bpl
00000001404a921a mov      rcx, rbx
00000001404a921d call     0x1403871f8
00000001404a9222 movsx    eax, al
00000001404a9225 lea      r14d, [rdi - 6]
00000001404a9229 cdq      
00000001404a922a mov      byte ptr [rsp + 0x30], r14b
00000001404a922f sub      eax, edx
00000001404a9231 mov      byte ptr [rsp + 0x28], bpl
00000001404a9236 sar      eax, 1
00000001404a9238 lea      r9d, [rbp + 0x63]
00000001404a923c xor      r8d, r8d
00000001404a923f mov      byte ptr [rsi + 1], al
00000001404a9242 mov      edx, r13d
00000001404a9245 mov      byte ptr [rsp + 0x20], bpl
00000001404a924a mov      rcx, rbx
00000001404a924d call     0x1403871f8
00000001404a9252 movsx    eax, al
00000001404a9255 lea      ebp, [rdi - 2]
00000001404a9258 cdq      
00000001404a9259 mov      byte ptr [rsp + 0x30], bpl
00000001404a925e sub      eax, edx
00000001404a9260 mov      byte ptr [rsp + 0x28], 0
00000001404a9265 sar      eax, 1
00000001404a9267 mov      r9d, 0x63
00000001404a926d xor      r8d, r8d
00000001404a9270 mov      byte ptr [rsi + 2], al
00000001404a9273 mov      edx, r13d
00000001404a9276 mov      byte ptr [rsp + 0x20], 0
00000001404a927b mov      rcx, rbx
00000001404a927e call     0x1403871f8
00000001404a9283 movsx    eax, al
00000001404a9286 mov      r9d, 0x63
00000001404a928c cdq      
00000001404a928d xor      r8d, r8d
00000001404a9290 sub      eax, edx
00000001404a9292 mov      rcx, rbx
00000001404a9295 sar      eax, 1
00000001404a9297 mov      edx, r13d
00000001404a929a mov      byte ptr [rsi + 3], al
00000001404a929d lea      esi, [rdi + 2]
00000001404a92a0 mov      byte ptr [rsp + 0x30], sil
00000001404a92a5 mov      byte ptr [rsp + 0x28], 0
00000001404a92aa mov      byte ptr [rsp + 0x20], 0
00000001404a92af call     0x1403871f8
00000001404a92b4 mov      rcx, qword ptr [rsp + 0x90]
00000001404a92bc mov      r9d, 0x63
00000001404a92c2 movsx    eax, al
00000001404a92c5 cdq      
00000001404a92c6 sub      eax, edx
00000001404a92c8 sar      eax, 1
00000001404a92ca add      dil, 6
00000001404a92ce mov      byte ptr [rcx + 4], al
00000001404a92d1 mov      byte ptr [rsp + 0x30], dil
00000001404a92d6 mov      byte ptr [rsp + 0x28], 0
00000001404a92db xor      r8d, r8d
00000001404a92de mov      byte ptr [rsp + 0x20], 0
00000001404a92e3 mov      edx, r13d
00000001404a92e6 mov      rcx, rbx
00000001404a92e9 call     0x1403871f8
00000001404a92ee mov      rcx, qword ptr [rsp + 0x90]
00000001404a92f6 mov      r9d, 0x63
00000001404a92fc movsx    eax, al
00000001404a92ff xor      r8d, r8d
00000001404a9302 cdq      
00000001404a9303 sub      eax, edx
00000001404a9305 mov      edx, r13d
00000001404a9308 sar      eax, 1
00000001404a930a mov      byte ptr [rcx + 5], al
00000001404a930d mov      al, byte ptr [rsp + 0x88]
00000001404a9314 mov      rcx, qword ptr [rsp + 0x80]
00000001404a931c lea      ebx, [rax + 0xa]
00000001404a931f mov      byte ptr [rsp + 0x30], bl
00000001404a9323 mov      byte ptr [rsp + 0x28], 0
00000001404a9328 mov      byte ptr [rsp + 0x20], 0
00000001404a932d call     0x1403871f8
00000001404a9332 mov      rcx, qword ptr [rsp + 0x90]
00000001404a933a mov      r9d, 0x63
00000001404a9340 movsx    eax, al
00000001404a9343 xor      r8d, r8d
00000001404a9346 cdq      
00000001404a9347 sub      eax, edx
00000001404a9349 mov      edx, r13d
00000001404a934c sar      eax, 1
00000001404a934e mov      byte ptr [rcx + 6], al
00000001404a9351 mov      al, byte ptr [rsp + 0x88]
00000001404a9358 mov      rcx, qword ptr [rsp + 0x80]
00000001404a9360 add      al, 0xe
00000001404a9362 mov      byte ptr [rsp + 0x30], al
00000001404a9366 mov      byte ptr [rsp + 0x28], 0
00000001404a936b mov      byte ptr [rsp + 0x20], 0
00000001404a9370 mov      byte ptr [rsp + 0x88], al
00000001404a9377 call     0x1403871f8
00000001404a937c mov      rcx, qword ptr [rsp + 0x90]
00000001404a9384 mov      r9d, 0x63
00000001404a938a movsx    eax, al
00000001404a938d xor      r8d, r8d
00000001404a9390 cdq      
00000001404a9391 mov      byte ptr [rsp + 0x30], r12b
00000001404a9396 sub      eax, edx
00000001404a9398 mov      byte ptr [rsp + 0x28], 0
00000001404a939d sar      eax, 1
00000001404a939f mov      edx, r13d
00000001404a93a2 mov      byte ptr [rcx + 7], al
00000001404a93a5 mov      rcx, qword ptr [rsp + 0x80]
00000001404a93ad mov      byte ptr [rsp + 0x20], 1
00000001404a93b2 call     0x1403871f8
00000001404a93b7 mov      rcx, qword ptr [rsp + 0x90]
00000001404a93bf mov      r9d, 0x63
00000001404a93c5 movsx    eax, al
00000001404a93c8 xor      r8d, r8d
00000001404a93cb cdq      
00000001404a93cc mov      byte ptr [rsp + 0x30], r15b
00000001404a93d1 sub      eax, edx
00000001404a93d3 mov      byte ptr [rsp + 0x28], 0
00000001404a93d8 sar      eax, 1
00000001404a93da mov      edx, r13d
00000001404a93dd mov      byte ptr [rcx + 0x10], al
00000001404a93e0 mov      rcx, qword ptr [rsp + 0x80]
00000001404a93e8 mov      byte ptr [rsp + 0x20], 1
00000001404a93ed call     0x1403871f8
00000001404a93f2 mov      rcx, qword ptr [rsp + 0x90]
00000001404a93fa mov      r9d, 0x63
00000001404a9400 movsx    eax, al
00000001404a9403 xor      r8d, r8d
00000001404a9406 cdq      
00000001404a9407 mov      byte ptr [rsp + 0x30], r14b
00000001404a940c sub      eax, edx
00000001404a940e mov      byte ptr [rsp + 0x28], 0
00000001404a9413 sar      eax, 1
00000001404a9415 mov      edx, r13d
00000001404a9418 mov      byte ptr [rcx + 0x11], al
00000001404a941b mov      rcx, qword ptr [rsp + 0x80]
00000001404a9423 mov      byte ptr [rsp + 0x20], 1
00000001404a9428 call     0x1403871f8
00000001404a942d movsx    eax, al
00000001404a9430 mov      rcx, qword ptr [rsp + 0x90]
00000001404a9438 cdq      
00000001404a9439 sub      eax, edx
00000001404a943b mov      byte ptr [rsp + 0x30], bpl
00000001404a9440 sar      eax, 1
00000001404a9442 mov      r9d, 0x63
00000001404a9448 mov      byte ptr [rsp + 0x28], 0
00000001404a944d xor      r8d, r8d
00000001404a9450 mov      byte ptr [rcx + 0x12], al
00000001404a9453 mov      edx, r13d
00000001404a9456 mov      rcx, qword ptr [rsp + 0x80]
00000001404a945e mov      byte ptr [rsp + 0x20], 1
00000001404a9463 call     0x1403871f8
00000001404a9468 mov      rcx, qword ptr [rsp + 0x90]
00000001404a9470 mov      r9d, 0x63
00000001404a9476 movsx    eax, al
00000001404a9479 xor      r8d, r8d
00000001404a947c cdq      
00000001404a947d mov      byte ptr [rsp + 0x30], sil
00000001404a9482 sub      eax, edx
00000001404a9484 mov      byte ptr [rsp + 0x28], 0
00000001404a9489 sar      eax, 1
00000001404a948b mov      edx, r13d
00000001404a948e mov      byte ptr [rcx + 0x13], al
00000001404a9491 mov      rcx, qword ptr [rsp + 0x80]
00000001404a9499 mov      byte ptr [rsp + 0x20], 1
00000001404a949e call     0x1403871f8
00000001404a94a3 mov      rcx, qword ptr [rsp + 0x90]
00000001404a94ab mov      r9d, 0x63
00000001404a94b1 movsx    eax, al
00000001404a94b4 xor      r8d, r8d
00000001404a94b7 cdq      
00000001404a94b8 mov      byte ptr [rsp + 0x30], dil
00000001404a94bd sub      eax, edx
00000001404a94bf mov      byte ptr [rsp + 0x28], 0
00000001404a94c4 sar      eax, 1
00000001404a94c6 mov      edx, r13d
00000001404a94c9 mov      byte ptr [rcx + 0x14], al
00000001404a94cc mov      rcx, qword ptr [rsp + 0x80]
00000001404a94d4 mov      byte ptr [rsp + 0x20], 1
00000001404a94d9 call     0x1403871f8
00000001404a94de mov      rcx, qword ptr [rsp + 0x90]
00000001404a94e6 mov      r9d, 0x63
00000001404a94ec movsx    eax, al
00000001404a94ef xor      r8d, r8d
00000001404a94f2 cdq      
00000001404a94f3 mov      byte ptr [rsp + 0x30], bl
00000001404a94f7 sub      eax, edx
00000001404a94f9 mov      byte ptr [rsp + 0x28], 0
00000001404a94fe sar      eax, 1
00000001404a9500 mov      edx, r13d
00000001404a9503 mov      byte ptr [rcx + 0x15], al
00000001404a9506 mov      rcx, qword ptr [rsp + 0x80]
00000001404a950e mov      byte ptr [rsp + 0x20], 1
00000001404a9513 call     0x1403871f8
00000001404a9518 mov      rcx, qword ptr [rsp + 0x90]
00000001404a9520 mov      r9d, 0x63
00000001404a9526 movsx    eax, al
00000001404a9529 xor      r8d, r8d
00000001404a952c cdq      
00000001404a952d sub      eax, edx
00000001404a952f mov      edx, r13d
00000001404a9532 sar      eax, 1
00000001404a9534 mov      byte ptr [rcx + 0x16], al
00000001404a9537 mov      al, byte ptr [rsp + 0x88]
00000001404a953e mov      rcx, qword ptr [rsp + 0x80]
00000001404a9546 mov      byte ptr [rsp + 0x30], al
00000001404a954a mov      byte ptr [rsp + 0x28], 0
00000001404a954f mov      byte ptr [rsp + 0x20], 1
00000001404a9554 call     0x1403871f8
00000001404a9559 mov      rcx, qword ptr [rsp + 0x90]
00000001404a9561 mov      r9d, 0x93
00000001404a9567 movsx    eax, al
00000001404a956a cdq      
00000001404a956b mov      byte ptr [rsp + 0x30], r12b
00000001404a9570 sub      eax, edx
00000001404a9572 mov      byte ptr [rsp + 0x28], 0
00000001404a9577 sar      eax, 1
00000001404a9579 mov      byte ptr [rcx + 0x17], al
00000001404a957c xor      r8d, r8d
00000001404a957f mov      byte ptr [rsp + 0x20], 3
00000001404a9584 mov      rcx, qword ptr [rsp + 0x80]
00000001404a958c mov      edx, r13d
00000001404a958f call     0x1403871f8
00000001404a9594 mov      rcx, qword ptr [rsp + 0x90]
00000001404a959c mov      r9d, 0x93
00000001404a95a2 movsx    eax, al
00000001404a95a5 xor      r8d, r8d
00000001404a95a8 cdq      
00000001404a95a9 mov      byte ptr [rsp + 0x30], r15b
00000001404a95ae sub      eax, edx
00000001404a95b0 mov      byte ptr [rsp + 0x28], 0
00000001404a95b5 sar      eax, 1
00000001404a95b7 mov      edx, r13d
00000001404a95ba mov      byte ptr [rcx + 0x60], al
00000001404a95bd mov      rcx, qword ptr [rsp + 0x80]
00000001404a95c5 mov      byte ptr [rsp + 0x20], 3
00000001404a95ca call     0x1403871f8
00000001404a95cf mov      rcx, qword ptr [rsp + 0x90]
00000001404a95d7 mov      r9d, 0x93
00000001404a95dd movsx    eax, al
00000001404a95e0 xor      r8d, r8d
00000001404a95e3 cdq      
00000001404a95e4 mov      byte ptr [rsp + 0x30], r14b
00000001404a95e9 sub      eax, edx
00000001404a95eb mov      byte ptr [rsp + 0x28], 0
00000001404a95f0 sar      eax, 1
00000001404a95f2 mov      edx, r13d
00000001404a95f5 mov      byte ptr [rcx + 0x61], al
00000001404a95f8 mov      rcx, qword ptr [rsp + 0x80]
00000001404a9600 mov      byte ptr [rsp + 0x20], 3
00000001404a9605 call     0x1403871f8
00000001404a960a mov      rcx, qword ptr [rsp + 0x90]
00000001404a9612 mov      r9d, 0x93
00000001404a9618 movsx    eax, al
00000001404a961b xor      r8d, r8d
00000001404a961e cdq      
00000001404a961f mov      byte ptr [rsp + 0x30], bpl
00000001404a9624 sub      eax, edx
00000001404a9626 mov      byte ptr [rsp + 0x28], 0
00000001404a962b sar      eax, 1
00000001404a962d mov      edx, r13d
00000001404a9630 mov      byte ptr [rcx + 0x62], al
00000001404a9633 mov      rcx, qword ptr [rsp + 0x80]
00000001404a963b mov      byte ptr [rsp + 0x20], 3
00000001404a9640 call     0x1403871f8
00000001404a9645 mov      rcx, qword ptr [rsp + 0x90]
00000001404a964d mov      r9d, 0x93
00000001404a9653 movsx    eax, al
00000001404a9656 xor      r8d, r8d
00000001404a9659 cdq      
00000001404a965a mov      byte ptr [rsp + 0x30], sil
00000001404a965f sub      eax, edx
00000001404a9661 mov      byte ptr [rsp + 0x28], 0
00000001404a9666 sar      eax, 1
00000001404a9668 mov      edx, r13d
00000001404a966b mov      byte ptr [rcx + 0x63], al
00000001404a966e mov      rcx, qword ptr [rsp + 0x80]
00000001404a9676 mov      byte ptr [rsp + 0x20], 3
00000001404a967b call     0x1403871f8
00000001404a9680 mov      rcx, qword ptr [rsp + 0x90]
00000001404a9688 mov      r9d, 0x93
00000001404a968e movsx    eax, al
00000001404a9691 xor      r8d, r8d
00000001404a9694 cdq      
00000001404a9695 mov      byte ptr [rsp + 0x30], dil
00000001404a969a sub      eax, edx
00000001404a969c mov      byte ptr [rsp + 0x28], 0
00000001404a96a1 sar      eax, 1
00000001404a96a3 mov      edx, r13d
00000001404a96a6 mov      byte ptr [rcx + 0x64], al
00000001404a96a9 mov      rcx, qword ptr [rsp + 0x80]
00000001404a96b1 mov      byte ptr [rsp + 0x20], 3
00000001404a96b6 call     0x1403871f8
00000001404a96bb mov      rcx, qword ptr [rsp + 0x90]
00000001404a96c3 mov      r9d, 0x93
00000001404a96c9 movsx    eax, al
00000001404a96cc cdq      
00000001404a96cd mov      byte ptr [rsp + 0x30], bl
00000001404a96d1 sub      eax, edx
00000001404a96d3 sar      eax, 1
00000001404a96d5 mov      byte ptr [rcx + 0x65], al
00000001404a96d8 mov      rcx, qword ptr [rsp + 0x80]
00000001404a96e0 xor      r8d, r8d
00000001404a96e3 mov      byte ptr [rsp + 0x28], 0
00000001404a96e8 mov      edx, r13d
00000001404a96eb mov      byte ptr [rsp + 0x20], 3
00000001404a96f0 call     0x1403871f8
00000001404a96f5 mov      rcx, qword ptr [rsp + 0x90]
00000001404a96fd mov      r9d, 0x93
00000001404a9703 movsx    eax, al
00000001404a9706 xor      r8d, r8d
00000001404a9709 cdq      
00000001404a970a sub      eax, edx
00000001404a970c mov      edx, r13d
00000001404a970f sar      eax, 1
00000001404a9711 mov      byte ptr [rcx + 0x66], al
00000001404a9714 mov      al, byte ptr [rsp + 0x88]
00000001404a971b mov      rcx, qword ptr [rsp + 0x80]
00000001404a9723 mov      byte ptr [rsp + 0x30], al
00000001404a9727 mov      byte ptr [rsp + 0x28], 0
00000001404a972c mov      byte ptr [rsp + 0x20], 3
00000001404a9731 call     0x1403871f8
00000001404a9736 mov      rcx, qword ptr [rsp + 0x90]
00000001404a973e mov      r9d, 0x63
00000001404a9744 movsx    eax, al
00000001404a9747 xor      r8d, r8d
00000001404a974a cdq      
00000001404a974b mov      byte ptr [rsp + 0x30], r12b
00000001404a9750 sub      eax, edx
00000001404a9752 mov      byte ptr [rsp + 0x28], 0
00000001404a9757 sar      eax, 1
00000001404a9759 mov      edx, r13d
00000001404a975c mov      byte ptr [rcx + 0x67], al
00000001404a975f mov      rcx, qword ptr [rsp + 0x80]
00000001404a9767 mov      byte ptr [rsp + 0x20], 2
00000001404a976c call     0x1403871f8
00000001404a9771 mov      rcx, qword ptr [rsp + 0x90]
00000001404a9779 mov      r9d, 0x63
00000001404a977f movsx    eax, al
00000001404a9782 xor      r8d, r8d
00000001404a9785 cdq      
00000001404a9786 mov      byte ptr [rsp + 0x30], r15b
00000001404a978b sub      eax, edx
00000001404a978d mov      byte ptr [rsp + 0x28], 0
00000001404a9792 sar      eax, 1
00000001404a9794 mov      edx, r13d
00000001404a9797 mov      byte ptr [rcx + 0x20], al
00000001404a979a mov      rcx, qword ptr [rsp + 0x80]
00000001404a97a2 mov      byte ptr [rsp + 0x20], 2
00000001404a97a7 call     0x1403871f8
00000001404a97ac mov      rcx, qword ptr [rsp + 0x90]
00000001404a97b4 mov      r9d, 0x63
00000001404a97ba movsx    eax, al
00000001404a97bd xor      r8d, r8d
00000001404a97c0 cdq      
00000001404a97c1 mov      byte ptr [rsp + 0x30], r14b
00000001404a97c6 sub      eax, edx
00000001404a97c8 mov      byte ptr [rsp + 0x28], 0
00000001404a97cd sar      eax, 1
00000001404a97cf mov      edx, r13d
00000001404a97d2 mov      byte ptr [rcx + 0x21], al
00000001404a97d5 mov      rcx, qword ptr [rsp + 0x80]
00000001404a97dd mov      byte ptr [rsp + 0x20], 2
00000001404a97e2 call     0x1403871f8
00000001404a97e7 mov      rcx, qword ptr [rsp + 0x90]
00000001404a97ef mov      r9d, 0x63
00000001404a97f5 movsx    eax, al
00000001404a97f8 xor      r8d, r8d
00000001404a97fb cdq      
00000001404a97fc mov      byte ptr [rsp + 0x30], bpl
00000001404a9801 sub      eax, edx
00000001404a9803 mov      byte ptr [rsp + 0x28], 0
00000001404a9808 sar      eax, 1
00000001404a980a mov      edx, r13d
00000001404a980d mov      byte ptr [rcx + 0x22], al
00000001404a9810 mov      rcx, qword ptr [rsp + 0x80]
00000001404a9818 mov      byte ptr [rsp + 0x20], 2
00000001404a981d call     0x1403871f8
00000001404a9822 movsx    eax, al
00000001404a9825 cdq      
00000001404a9826 sub      eax, edx
00000001404a9828 sar      eax, 1
00000001404a982a mov      rcx, qword ptr [rsp + 0x90]
00000001404a9832 mov      r9d, 0x63
00000001404a9838 mov      byte ptr [rsp + 0x30], sil
00000001404a983d xor      r8d, r8d
00000001404a9840 mov      byte ptr [rsp + 0x28], 0
00000001404a9845 mov      edx, r13d
00000001404a9848 mov      byte ptr [rsp + 0x20], 2
00000001404a984d mov      byte ptr [rcx + 0x23], al
00000001404a9850 mov      rcx, qword ptr [rsp + 0x80]
00000001404a9858 call     0x1403871f8
00000001404a985d mov      rcx, qword ptr [rsp + 0x90]
00000001404a9865 mov      r9d, 0x63
00000001404a986b movsx    eax, al
00000001404a986e xor      r8d, r8d
00000001404a9871 cdq      
00000001404a9872 mov      byte ptr [rsp + 0x30], dil
00000001404a9877 sub      eax, edx
00000001404a9879 mov      byte ptr [rsp + 0x28], 0
00000001404a987e sar      eax, 1
00000001404a9880 mov      edx, r13d
00000001404a9883 mov      byte ptr [rcx + 0x24], al
00000001404a9886 mov      rcx, qword ptr [rsp + 0x80]
00000001404a988e mov      byte ptr [rsp + 0x20], 2
00000001404a9893 call     0x1403871f8
00000001404a9898 mov      rcx, qword ptr [rsp + 0x90]
00000001404a98a0 mov      r9d, 0x63
00000001404a98a6 movsx    eax, al
00000001404a98a9 xor      r8d, r8d
00000001404a98ac cdq      
00000001404a98ad mov      byte ptr [rsp + 0x30], bl
00000001404a98b1 sub      eax, edx
00000001404a98b3 mov      byte ptr [rsp + 0x28], 0
00000001404a98b8 sar      eax, 1
00000001404a98ba mov      edx, r13d
00000001404a98bd mov      byte ptr [rcx + 0x25], al
00000001404a98c0 mov      rcx, qword ptr [rsp + 0x80]
00000001404a98c8 mov      byte ptr [rsp + 0x20], 2
00000001404a98cd call     0x1403871f8
00000001404a98d2 mov      rcx, qword ptr [rsp + 0x90]
00000001404a98da mov      r9d, 0x63
00000001404a98e0 movsx    eax, al
00000001404a98e3 xor      r8d, r8d
00000001404a98e6 cdq      
00000001404a98e7 sub      eax, edx
00000001404a98e9 mov      edx, r13d
00000001404a98ec sar      eax, 1
00000001404a98ee mov      byte ptr [rcx + 0x26], al
00000001404a98f1 mov      al, byte ptr [rsp + 0x88]
00000001404a98f8 mov      rcx, qword ptr [rsp + 0x80]
00000001404a9900 mov      byte ptr [rsp + 0x30], al
00000001404a9904 mov      byte ptr [rsp + 0x28], 0
00000001404a9909 mov      byte ptr [rsp + 0x20], 2
00000001404a990e call     0x1403871f8
00000001404a9913 mov      rcx, qword ptr [rsp + 0x90]
00000001404a991b mov      r9d, 0x93
00000001404a9921 movsx    eax, al
00000001404a9924 xor      r8d, r8d
00000001404a9927 cdq      
00000001404a9928 mov      byte ptr [rsp + 0x30], r12b
00000001404a992d sub      eax, edx
00000001404a992f mov      byte ptr [rsp + 0x28], 0
00000001404a9934 sar      eax, 1
00000001404a9936 mov      edx, r13d
00000001404a9939 mov      byte ptr [rcx + 0x27], al
00000001404a993c mov      rcx, qword ptr [rsp + 0x80]
00000001404a9944 mov      byte ptr [rsp + 0x20], 4
00000001404a9949 call     0x1403871f8
00000001404a994e mov      rcx, qword ptr [rsp + 0x90]
00000001404a9956 mov      r9d, 0x93
00000001404a995c movsx    eax, al
00000001404a995f xor      r8d, r8d
00000001404a9962 cdq      
00000001404a9963 mov      byte ptr [rsp + 0x30], r15b
00000001404a9968 sub      eax, edx
00000001404a996a mov      byte ptr [rsp + 0x28], 0
00000001404a996f sar      eax, 1
00000001404a9971 mov      edx, r13d
00000001404a9974 mov      byte ptr [rcx + 0x80], al
00000001404a997a mov      rcx, qword ptr [rsp + 0x80]
00000001404a9982 mov      byte ptr [rsp + 0x20], 4
00000001404a9987 call     0x1403871f8
00000001404a998c mov      rcx, qword ptr [rsp + 0x90]
00000001404a9994 mov      r9d, 0x93
00000001404a999a movsx    eax, al
00000001404a999d xor      r8d, r8d
00000001404a99a0 cdq      
00000001404a99a1 mov      byte ptr [rsp + 0x30], r14b
00000001404a99a6 sub      eax, edx
00000001404a99a8 mov      byte ptr [rsp + 0x28], 0
00000001404a99ad sar      eax, 1
00000001404a99af mov      edx, r13d
00000001404a99b2 mov      byte ptr [rcx + 0x81], al
00000001404a99b8 mov      rcx, qword ptr [rsp + 0x80]
00000001404a99c0 mov      byte ptr [rsp + 0x20], 4
00000001404a99c5 call     0x1403871f8
00000001404a99ca mov      rcx, qword ptr [rsp + 0x90]
00000001404a99d2 mov      r9d, 0x93
00000001404a99d8 movsx    eax, al
00000001404a99db xor      r8d, r8d
00000001404a99de cdq      
00000001404a99df mov      byte ptr [rsp + 0x30], bpl
00000001404a99e4 sub      eax, edx
00000001404a99e6 mov      byte ptr [rsp + 0x28], 0
00000001404a99eb sar      eax, 1
00000001404a99ed mov      edx, r13d
00000001404a99f0 mov      byte ptr [rcx + 0x82], al
00000001404a99f6 mov      rcx, qword ptr [rsp + 0x80]
00000001404a99fe mov      byte ptr [rsp + 0x20], 4
00000001404a9a03 call     0x1403871f8
00000001404a9a08 mov      rcx, qword ptr [rsp + 0x90]
00000001404a9a10 mov      r9d, 0x93
00000001404a9a16 movsx    eax, al
00000001404a9a19 xor      r8d, r8d
00000001404a9a1c cdq      
00000001404a9a1d mov      byte ptr [rsp + 0x30], sil
00000001404a9a22 sub      eax, edx
00000001404a9a24 mov      byte ptr [rsp + 0x28], 0
00000001404a9a29 sar      eax, 1
00000001404a9a2b mov      edx, r13d
00000001404a9a2e mov      byte ptr [rcx + 0x83], al
00000001404a9a34 mov      rcx, qword ptr [rsp + 0x80]
00000001404a9a3c mov      byte ptr [rsp + 0x20], 4
00000001404a9a41 call     0x1403871f8
00000001404a9a46 mov      rcx, qword ptr [rsp + 0x90]
00000001404a9a4e mov      r9d, 0x93
00000001404a9a54 movsx    eax, al
00000001404a9a57 xor      r8d, r8d
00000001404a9a5a cdq      
00000001404a9a5b mov      byte ptr [rsp + 0x30], dil
00000001404a9a60 sub      eax, edx
00000001404a9a62 mov      byte ptr [rsp + 0x28], 0
00000001404a9a67 sar      eax, 1
00000001404a9a69 mov      edx, r13d
00000001404a9a6c mov      byte ptr [rcx + 0x84], al
00000001404a9a72 mov      rcx, qword ptr [rsp + 0x80]
00000001404a9a7a mov      byte ptr [rsp + 0x20], 4
00000001404a9a7f call     0x1403871f8
00000001404a9a84 mov      rcx, qword ptr [rsp + 0x90]
00000001404a9a8c mov      r9d, 0x93
00000001404a9a92 movsx    eax, al
00000001404a9a95 xor      r8d, r8d
00000001404a9a98 cdq      
00000001404a9a99 mov      byte ptr [rsp + 0x30], bl
00000001404a9a9d sub      eax, edx
00000001404a9a9f mov      byte ptr [rsp + 0x28], 0
00000001404a9aa4 sar      eax, 1
00000001404a9aa6 mov      edx, r13d
00000001404a9aa9 mov      byte ptr [rcx + 0x85], al
00000001404a9aaf mov      rcx, qword ptr [rsp + 0x80]
00000001404a9ab7 mov      byte ptr [rsp + 0x20], 4
00000001404a9abc call     0x1403871f8
00000001404a9ac1 mov      rcx, qword ptr [rsp + 0x90]
00000001404a9ac9 mov      r9d, 0x93
00000001404a9acf movsx    eax, al
00000001404a9ad2 cdq      
00000001404a9ad3 sub      eax, edx
00000001404a9ad5 sar      eax, 1
00000001404a9ad7 mov      byte ptr [rcx + 0x86], al
00000001404a9add mov      al, byte ptr [rsp + 0x88]
00000001404a9ae4 mov      byte ptr [rsp + 0x30], al
00000001404a9ae8 mov      byte ptr [rsp + 0x28], 0
00000001404a9aed mov      byte ptr [rsp + 0x20], 4
00000001404a9af2 mov      rcx, qword ptr [rsp + 0x80]
00000001404a9afa xor      r8d, r8d
00000001404a9afd mov      edx, r13d
00000001404a9b00 call     0x1403871f8
00000001404a9b05 mov      rcx, qword ptr [rsp + 0x90]
00000001404a9b0d mov      r9d, 0x63
00000001404a9b13 movsx    eax, al
00000001404a9b16 xor      r8d, r8d
00000001404a9b19 cdq      
00000001404a9b1a mov      byte ptr [rsp + 0x30], r12b
00000001404a9b1f sub      eax, edx
00000001404a9b21 mov      byte ptr [rsp + 0x28], 1
00000001404a9b26 sar      eax, 1
00000001404a9b28 mov      edx, r13d
00000001404a9b2b mov      byte ptr [rcx + 0x87], al
00000001404a9b31 mov      rcx, qword ptr [rsp + 0x80]
00000001404a9b39 mov      byte ptr [rsp + 0x20], 0
00000001404a9b3e call     0x1403871f8
00000001404a9b43 mov      rcx, qword ptr [rsp + 0x90]
00000001404a9b4b mov      r9d, 0x63
00000001404a9b51 movsx    eax, al
00000001404a9b54 xor      r8d, r8d
00000001404a9b57 cdq      
00000001404a9b58 mov      byte ptr [rsp + 0x30], r15b
00000001404a9b5d sub      eax, edx
00000001404a9b5f mov      byte ptr [rsp + 0x28], 1
00000001404a9b64 sar      eax, 1
00000001404a9b66 mov      edx, r13d
00000001404a9b69 mov      byte ptr [rcx + 0x30], al
00000001404a9b6c mov      rcx, qword ptr [rsp + 0x80]
00000001404a9b74 mov      byte ptr [rsp + 0x20], 0
00000001404a9b79 call     0x1403871f8
00000001404a9b7e mov      rcx, qword ptr [rsp + 0x90]
00000001404a9b86 mov      r9d, 0x63
00000001404a9b8c movsx    eax, al
00000001404a9b8f xor      r8d, r8d
00000001404a9b92 cdq      
00000001404a9b93 mov      byte ptr [rsp + 0x30], r14b
00000001404a9b98 sub      eax, edx
00000001404a9b9a mov      byte ptr [rsp + 0x28], 1
00000001404a9b9f sar      eax, 1
00000001404a9ba1 mov      edx, r13d
00000001404a9ba4 mov      byte ptr [rcx + 0x31], al
00000001404a9ba7 mov      rcx, qword ptr [rsp + 0x80]
00000001404a9baf mov      byte ptr [rsp + 0x20], 0
00000001404a9bb4 call     0x1403871f8
00000001404a9bb9 mov      rcx, qword ptr [rsp + 0x90]
00000001404a9bc1 mov      r9d, 0x63
00000001404a9bc7 movsx    eax, al
00000001404a9bca xor      r8d, r8d
00000001404a9bcd cdq      
00000001404a9bce mov      byte ptr [rsp + 0x30], bpl
00000001404a9bd3 sub      eax, edx
00000001404a9bd5 mov      byte ptr [rsp + 0x28], 1
00000001404a9bda sar      eax, 1
00000001404a9bdc mov      edx, r13d
00000001404a9bdf mov      byte ptr [rcx + 0x32], al
00000001404a9be2 mov      rcx, qword ptr [rsp + 0x80]
00000001404a9bea mov      byte ptr [rsp + 0x20], 0
00000001404a9bef call     0x1403871f8
00000001404a9bf4 mov      rcx, qword ptr [rsp + 0x90]
00000001404a9bfc mov      r9d, 0x63
00000001404a9c02 movsx    eax, al
00000001404a9c05 xor      r8d, r8d
00000001404a9c08 cdq      
00000001404a9c09 mov      byte ptr [rsp + 0x30], sil
00000001404a9c0e sub      eax, edx
00000001404a9c10 mov      byte ptr [rsp + 0x28], 1
00000001404a9c15 sar      eax, 1
00000001404a9c17 mov      edx, r13d
00000001404a9c1a mov      byte ptr [rcx + 0x33], al
00000001404a9c1d mov      rcx, qword ptr [rsp + 0x80]
00000001404a9c25 mov      byte ptr [rsp + 0x20], 0
00000001404a9c2a call     0x1403871f8
00000001404a9c2f mov      rcx, qword ptr [rsp + 0x90]
00000001404a9c37 mov      r9d, 0x63
00000001404a9c3d movsx    eax, al
00000001404a9c40 cdq      
00000001404a9c41 sub      eax, edx
00000001404a9c43 sar      eax, 1
00000001404a9c45 mov      byte ptr [rcx + 0x34], al
00000001404a9c48 mov      rcx, qword ptr [rsp + 0x80]
00000001404a9c50 xor      r8d, r8d
00000001404a9c53 mov      byte ptr [rsp + 0x30], dil
00000001404a9c58 mov      edx, r13d
00000001404a9c5b mov      byte ptr [rsp + 0x28], 1
00000001404a9c60 mov      byte ptr [rsp + 0x20], 0
00000001404a9c65 call     0x1403871f8
00000001404a9c6a mov      rcx, qword ptr [rsp + 0x90]
00000001404a9c72 mov      r9d, 0x63
00000001404a9c78 movsx    eax, al
00000001404a9c7b xor      r8d, r8d
00000001404a9c7e cdq      
00000001404a9c7f mov      byte ptr [rsp + 0x30], bl
00000001404a9c83 sub      eax, edx
00000001404a9c85 mov      byte ptr [rsp + 0x28], 1
00000001404a9c8a sar      eax, 1
00000001404a9c8c mov      edx, r13d
00000001404a9c8f mov      byte ptr [rcx + 0x35], al
00000001404a9c92 mov      rcx, qword ptr [rsp + 0x80]
00000001404a9c9a mov      byte ptr [rsp + 0x20], 0
00000001404a9c9f call     0x1403871f8
00000001404a9ca4 mov      rcx, qword ptr [rsp + 0x90]
00000001404a9cac mov      r9d, 0x63
00000001404a9cb2 movsx    eax, al
00000001404a9cb5 xor      r8d, r8d
00000001404a9cb8 cdq      
00000001404a9cb9 sub      eax, edx
00000001404a9cbb mov      edx, r13d
00000001404a9cbe sar      eax, 1
00000001404a9cc0 mov      byte ptr [rcx + 0x36], al
00000001404a9cc3 mov      al, byte ptr [rsp + 0x88]
00000001404a9cca mov      rcx, qword ptr [rsp + 0x80]
00000001404a9cd2 mov      byte ptr [rsp + 0x30], al
00000001404a9cd6 mov      byte ptr [rsp + 0x28], 1
00000001404a9cdb mov      byte ptr [rsp + 0x20], 0
00000001404a9ce0 call     0x1403871f8
00000001404a9ce5 mov      rcx, qword ptr [rsp + 0x90]
00000001404a9ced mov      r9d, 0x63
00000001404a9cf3 movsx    eax, al
00000001404a9cf6 xor      r8d, r8d
00000001404a9cf9 cdq      
00000001404a9cfa mov      byte ptr [rsp + 0x30], r12b
00000001404a9cff sub      eax, edx
00000001404a9d01 mov      byte ptr [rsp + 0x28], 1
00000001404a9d06 sar      eax, 1
00000001404a9d08 mov      edx, r13d
00000001404a9d0b mov      byte ptr [rcx + 0x37], al
00000001404a9d0e mov      rcx, qword ptr [rsp + 0x80]
00000001404a9d16 mov      byte ptr [rsp + 0x20], 1
00000001404a9d1b call     0x1403871f8
00000001404a9d20 mov      rcx, qword ptr [rsp + 0x90]
00000001404a9d28 mov      r9d, 0x63
00000001404a9d2e movsx    eax, al
00000001404a9d31 xor      r8d, r8d
00000001404a9d34 cdq      
00000001404a9d35 mov      byte ptr [rsp + 0x30], r15b
00000001404a9d3a sub      eax, edx
00000001404a9d3c mov      byte ptr [rsp + 0x28], 1
00000001404a9d41 sar      eax, 1
00000001404a9d43 mov      edx, r13d
00000001404a9d46 mov      byte ptr [rcx + 0x40], al
00000001404a9d49 mov      rcx, qword ptr [rsp + 0x80]
00000001404a9d51 mov      byte ptr [rsp + 0x20], 1
00000001404a9d56 call     0x1403871f8
00000001404a9d5b mov      rcx, qword ptr [rsp + 0x90]
00000001404a9d63 mov      r9d, 0x63
00000001404a9d69 movsx    eax, al
00000001404a9d6c xor      r8d, r8d
00000001404a9d6f cdq      
00000001404a9d70 mov      byte ptr [rsp + 0x30], r14b
00000001404a9d75 sub      eax, edx
00000001404a9d77 mov      byte ptr [rsp + 0x28], 1
00000001404a9d7c sar      eax, 1
00000001404a9d7e mov      edx, r13d
00000001404a9d81 mov      byte ptr [rcx + 0x41], al
00000001404a9d84 mov      rcx, qword ptr [rsp + 0x80]
00000001404a9d8c mov      byte ptr [rsp + 0x20], 1
00000001404a9d91 call     0x1403871f8
00000001404a9d96 movsx    eax, al
00000001404a9d99 cdq      
00000001404a9d9a sub      eax, edx
00000001404a9d9c mov      rcx, qword ptr [rsp + 0x90]
00000001404a9da4 mov      r9d, 0x63
00000001404a9daa sar      eax, 1
00000001404a9dac xor      r8d, r8d
00000001404a9daf mov      byte ptr [rsp + 0x30], bpl
00000001404a9db4 mov      edx, r13d
00000001404a9db7 mov      byte ptr [rsp + 0x28], 1
00000001404a9dbc mov      byte ptr [rcx + 0x42], al
00000001404a9dbf mov      rcx, qword ptr [rsp + 0x80]
00000001404a9dc7 mov      byte ptr [rsp + 0x20], 1
00000001404a9dcc call     0x1403871f8
00000001404a9dd1 mov      rcx, qword ptr [rsp + 0x90]
00000001404a9dd9 mov      r9d, 0x63
00000001404a9ddf movsx    eax, al
00000001404a9de2 xor      r8d, r8d
00000001404a9de5 cdq      
00000001404a9de6 mov      byte ptr [rsp + 0x30], sil
00000001404a9deb sub      eax, edx
00000001404a9ded mov      byte ptr [rsp + 0x28], 1
00000001404a9df2 sar      eax, 1
00000001404a9df4 mov      edx, r13d
00000001404a9df7 mov      byte ptr [rcx + 0x43], al
00000001404a9dfa mov      rcx, qword ptr [rsp + 0x80]
00000001404a9e02 mov      byte ptr [rsp + 0x20], 1
00000001404a9e07 call     0x1403871f8
00000001404a9e0c mov      rcx, qword ptr [rsp + 0x90]
00000001404a9e14 mov      r9d, 0x63
00000001404a9e1a movsx    eax, al
00000001404a9e1d xor      r8d, r8d
00000001404a9e20 cdq      
00000001404a9e21 mov      byte ptr [rsp + 0x30], dil
00000001404a9e26 sub      eax, edx
00000001404a9e28 mov      byte ptr [rsp + 0x28], 1
00000001404a9e2d sar      eax, 1
00000001404a9e2f mov      edx, r13d
00000001404a9e32 mov      byte ptr [rcx + 0x44], al
00000001404a9e35 mov      rcx, qword ptr [rsp + 0x80]
00000001404a9e3d mov      byte ptr [rsp + 0x20], 1
00000001404a9e42 call     0x1403871f8
00000001404a9e47 mov      rcx, qword ptr [rsp + 0x90]
00000001404a9e4f mov      r9d, 0x63
00000001404a9e55 movsx    eax, al
00000001404a9e58 xor      r8d, r8d
00000001404a9e5b cdq      
00000001404a9e5c mov      byte ptr [rsp + 0x30], bl
00000001404a9e60 sub      eax, edx
00000001404a9e62 mov      byte ptr [rsp + 0x28], 1
00000001404a9e67 sar      eax, 1
00000001404a9e69 mov      edx, r13d
00000001404a9e6c mov      byte ptr [rcx + 0x45], al
00000001404a9e6f mov      rcx, qword ptr [rsp + 0x80]
00000001404a9e77 mov      byte ptr [rsp + 0x20], 1
00000001404a9e7c call     0x1403871f8
00000001404a9e81 mov      rcx, qword ptr [rsp + 0x90]
00000001404a9e89 mov      r9d, 0x63
00000001404a9e8f movsx    eax, al
00000001404a9e92 xor      r8d, r8d
00000001404a9e95 cdq      
00000001404a9e96 sub      eax, edx
00000001404a9e98 mov      edx, r13d
00000001404a9e9b sar      eax, 1
00000001404a9e9d mov      byte ptr [rcx + 0x46], al
00000001404a9ea0 mov      al, byte ptr [rsp + 0x88]
00000001404a9ea7 mov      rcx, qword ptr [rsp + 0x80]
00000001404a9eaf mov      byte ptr [rsp + 0x30], al
00000001404a9eb3 mov      byte ptr [rsp + 0x28], 1
00000001404a9eb8 mov      byte ptr [rsp + 0x20], 1
00000001404a9ebd call     0x1403871f8
00000001404a9ec2 mov      rcx, qword ptr [rsp + 0x90]
00000001404a9eca mov      r9d, 0x93
00000001404a9ed0 movsx    eax, al
00000001404a9ed3 cdq      
00000001404a9ed4 mov      byte ptr [rsp + 0x30], r12b
00000001404a9ed9 sub      eax, edx
00000001404a9edb mov      byte ptr [rsp + 0x28], 1
00000001404a9ee0 sar      eax, 1
00000001404a9ee2 mov      edx, r13d
00000001404a9ee5 mov      byte ptr [rcx + 0x47], al
00000001404a9ee8 xor      r8d, r8d
00000001404a9eeb mov      rcx, qword ptr [rsp + 0x80]
00000001404a9ef3 mov      byte ptr [rsp + 0x20], 3
00000001404a9ef8 call     0x1403871f8
00000001404a9efd mov      rcx, qword ptr [rsp + 0x90]
00000001404a9f05 mov      r9d, 0x93
00000001404a9f0b movsx    eax, al
00000001404a9f0e xor      r8d, r8d
00000001404a9f11 cdq      
00000001404a9f12 mov      byte ptr [rsp + 0x30], r15b
00000001404a9f17 sub      eax, edx
00000001404a9f19 mov      byte ptr [rsp + 0x28], 1
00000001404a9f1e sar      eax, 1
00000001404a9f20 mov      edx, r13d
00000001404a9f23 mov      byte ptr [rcx + 0x70], al
00000001404a9f26 mov      rcx, qword ptr [rsp + 0x80]
00000001404a9f2e mov      byte ptr [rsp + 0x20], 3
00000001404a9f33 call     0x1403871f8
00000001404a9f38 mov      rcx, qword ptr [rsp + 0x90]
00000001404a9f40 mov      r9d, 0x93
00000001404a9f46 movsx    eax, al
00000001404a9f49 xor      r8d, r8d
00000001404a9f4c cdq      
00000001404a9f4d mov      byte ptr [rsp + 0x30], r14b
00000001404a9f52 sub      eax, edx
00000001404a9f54 mov      byte ptr [rsp + 0x28], 1
00000001404a9f59 sar      eax, 1
00000001404a9f5b mov      edx, r13d
00000001404a9f5e mov      byte ptr [rcx + 0x71], al
00000001404a9f61 mov      rcx, qword ptr [rsp + 0x80]
00000001404a9f69 mov      byte ptr [rsp + 0x20], 3
00000001404a9f6e call     0x1403871f8
00000001404a9f73 mov      rcx, qword ptr [rsp + 0x90]
00000001404a9f7b mov      r9d, 0x93
00000001404a9f81 movsx    eax, al
00000001404a9f84 xor      r8d, r8d
00000001404a9f87 cdq      
00000001404a9f88 mov      byte ptr [rsp + 0x30], bpl
00000001404a9f8d sub      eax, edx
00000001404a9f8f mov      byte ptr [rsp + 0x28], 1
00000001404a9f94 sar      eax, 1
00000001404a9f96 mov      edx, r13d
00000001404a9f99 mov      byte ptr [rcx + 0x72], al
00000001404a9f9c mov      rcx, qword ptr [rsp + 0x80]
00000001404a9fa4 mov      byte ptr [rsp + 0x20], 3
00000001404a9fa9 call     0x1403871f8
00000001404a9fae mov      rcx, qword ptr [rsp + 0x90]
00000001404a9fb6 mov      r9d, 0x93
00000001404a9fbc movsx    eax, al
00000001404a9fbf xor      r8d, r8d
00000001404a9fc2 cdq      
00000001404a9fc3 mov      byte ptr [rsp + 0x30], sil
00000001404a9fc8 sub      eax, edx
00000001404a9fca mov      byte ptr [rsp + 0x28], 1
00000001404a9fcf sar      eax, 1
00000001404a9fd1 mov      edx, r13d
00000001404a9fd4 mov      byte ptr [rcx + 0x73], al
00000001404a9fd7 mov      rcx, qword ptr [rsp + 0x80]
00000001404a9fdf mov      byte ptr [rsp + 0x20], 3
00000001404a9fe4 call     0x1403871f8
00000001404a9fe9 mov      rcx, qword ptr [rsp + 0x90]
00000001404a9ff1 mov      r9d, 0x93
00000001404a9ff7 movsx    eax, al
00000001404a9ffa xor      r8d, r8d
00000001404a9ffd cdq      
00000001404a9ffe mov      byte ptr [rsp + 0x30], dil
00000001404aa003 sub      eax, edx
00000001404aa005 mov      byte ptr [rsp + 0x28], 1
00000001404aa00a sar      eax, 1
00000001404aa00c mov      edx, r13d
00000001404aa00f mov      byte ptr [rcx + 0x74], al
00000001404aa012 mov      rcx, qword ptr [rsp + 0x80]
00000001404aa01a mov      byte ptr [rsp + 0x20], 3
00000001404aa01f call     0x1403871f8
00000001404aa024 mov      rcx, qword ptr [rsp + 0x90]
00000001404aa02c mov      r9d, 0x93
00000001404aa032 movsx    eax, al
00000001404aa035 cdq      
00000001404aa036 mov      byte ptr [rsp + 0x30], bl
00000001404aa03a sub      eax, edx
00000001404aa03c mov      byte ptr [rsp + 0x28], 1
00000001404aa041 sar      eax, 1
00000001404aa043 mov      byte ptr [rcx + 0x75], al
00000001404aa046 mov      byte ptr [rsp + 0x20], 3
00000001404aa04b mov      rcx, qword ptr [rsp + 0x80]
00000001404aa053 xor      r8d, r8d
00000001404aa056 mov      edx, r13d
00000001404aa059 call     0x1403871f8
00000001404aa05e mov      rcx, qword ptr [rsp + 0x90]
00000001404aa066 mov      r9d, 0x93
00000001404aa06c movsx    eax, al
00000001404aa06f xor      r8d, r8d
00000001404aa072 cdq      
00000001404aa073 sub      eax, edx
00000001404aa075 mov      edx, r13d
00000001404aa078 sar      eax, 1
00000001404aa07a mov      byte ptr [rcx + 0x76], al
00000001404aa07d mov      al, byte ptr [rsp + 0x88]
00000001404aa084 mov      rcx, qword ptr [rsp + 0x80]
00000001404aa08c mov      byte ptr [rsp + 0x30], al
00000001404aa090 mov      byte ptr [rsp + 0x28], 1
00000001404aa095 mov      byte ptr [rsp + 0x20], 3
00000001404aa09a call     0x1403871f8
00000001404aa09f mov      rcx, qword ptr [rsp + 0x90]
00000001404aa0a7 mov      r9d, 0x63
00000001404aa0ad movsx    eax, al
00000001404aa0b0 xor      r8d, r8d
00000001404aa0b3 cdq      
00000001404aa0b4 mov      byte ptr [rsp + 0x30], r12b
00000001404aa0b9 sub      eax, edx
00000001404aa0bb mov      byte ptr [rsp + 0x28], 1
00000001404aa0c0 sar      eax, 1
00000001404aa0c2 mov      edx, r13d
00000001404aa0c5 mov      byte ptr [rcx + 0x77], al
00000001404aa0c8 mov      rcx, qword ptr [rsp + 0x80]
00000001404aa0d0 mov      byte ptr [rsp + 0x20], 2
00000001404aa0d5 call     0x1403871f8
00000001404aa0da mov      rcx, qword ptr [rsp + 0x90]
00000001404aa0e2 mov      r9d, 0x63
00000001404aa0e8 movsx    eax, al
00000001404aa0eb xor      r8d, r8d
00000001404aa0ee cdq      
00000001404aa0ef mov      byte ptr [rsp + 0x30], r15b
00000001404aa0f4 sub      eax, edx
00000001404aa0f6 mov      byte ptr [rsp + 0x28], 1
00000001404aa0fb sar      eax, 1
00000001404aa0fd mov      edx, r13d
00000001404aa100 mov      byte ptr [rcx + 0x50], al
00000001404aa103 mov      rcx, qword ptr [rsp + 0x80]
00000001404aa10b mov      byte ptr [rsp + 0x20], 2
00000001404aa110 call     0x1403871f8
00000001404aa115 mov      rcx, qword ptr [rsp + 0x90]
00000001404aa11d mov      r9d, 0x63
00000001404aa123 movsx    eax, al
00000001404aa126 xor      r8d, r8d
00000001404aa129 cdq      
00000001404aa12a mov      byte ptr [rsp + 0x30], r14b
00000001404aa12f sub      eax, edx
00000001404aa131 mov      byte ptr [rsp + 0x28], 1
00000001404aa136 sar      eax, 1
00000001404aa138 mov      edx, r13d
00000001404aa13b mov      byte ptr [rcx + 0x51], al
00000001404aa13e mov      rcx, qword ptr [rsp + 0x80]
00000001404aa146 mov      byte ptr [rsp + 0x20], 2
00000001404aa14b call     0x1403871f8
00000001404aa150 mov      rcx, qword ptr [rsp + 0x90]
00000001404aa158 mov      r9d, 0x63
00000001404aa15e movsx    eax, al
00000001404aa161 xor      r8d, r8d
00000001404aa164 cdq      
00000001404aa165 mov      byte ptr [rsp + 0x30], bpl
00000001404aa16a sub      eax, edx
00000001404aa16c mov      byte ptr [rsp + 0x28], 1
00000001404aa171 sar      eax, 1
00000001404aa173 mov      edx, r13d
00000001404aa176 mov      byte ptr [rcx + 0x52], al
00000001404aa179 mov      rcx, qword ptr [rsp + 0x80]
00000001404aa181 mov      byte ptr [rsp + 0x20], 2
00000001404aa186 call     0x1403871f8
00000001404aa18b mov      rcx, qword ptr [rsp + 0x90]
00000001404aa193 movsx    eax, al
00000001404aa196 cdq      
00000001404aa197 sub      eax, edx
00000001404aa199 sar      eax, 1
00000001404aa19b mov      byte ptr [rcx + 0x53], al
00000001404aa19e mov      rcx, qword ptr [rsp + 0x80]
00000001404aa1a6 mov      r9d, 0x63
00000001404aa1ac mov      byte ptr [rsp + 0x30], sil
00000001404aa1b1 xor      r8d, r8d
00000001404aa1b4 mov      byte ptr [rsp + 0x28], 1
00000001404aa1b9 mov      edx, r13d
00000001404aa1bc mov      byte ptr [rsp + 0x20], 2
00000001404aa1c1 call     0x1403871f8
00000001404aa1c6 mov      rcx, qword ptr [rsp + 0x90]
00000001404aa1ce mov      r9d, 0x63
00000001404aa1d4 movsx    eax, al
00000001404aa1d7 xor      r8d, r8d
00000001404aa1da cdq      
00000001404aa1db mov      byte ptr [rsp + 0x30], dil
00000001404aa1e0 sub      eax, edx
00000001404aa1e2 mov      byte ptr [rsp + 0x28], 1
00000001404aa1e7 sar      eax, 1
00000001404aa1e9 mov      edx, r13d
00000001404aa1ec mov      byte ptr [rcx + 0x54], al
00000001404aa1ef mov      rcx, qword ptr [rsp + 0x80]
00000001404aa1f7 mov      byte ptr [rsp + 0x20], 2
00000001404aa1fc call     0x1403871f8
00000001404aa201 mov      rcx, qword ptr [rsp + 0x90]
00000001404aa209 mov      r9d, 0x63
00000001404aa20f movsx    eax, al
00000001404aa212 xor      r8d, r8d
00000001404aa215 cdq      
00000001404aa216 mov      byte ptr [rsp + 0x30], bl
00000001404aa21a sub      eax, edx
00000001404aa21c mov      byte ptr [rsp + 0x28], 1
00000001404aa221 sar      eax, 1
00000001404aa223 mov      edx, r13d
00000001404aa226 mov      byte ptr [rcx + 0x55], al
00000001404aa229 mov      rcx, qword ptr [rsp + 0x80]
00000001404aa231 mov      byte ptr [rsp + 0x20], 2
00000001404aa236 call     0x1403871f8
00000001404aa23b mov      rcx, qword ptr [rsp + 0x90]
00000001404aa243 mov      r9d, 0x63
00000001404aa249 movsx    eax, al
00000001404aa24c xor      r8d, r8d
00000001404aa24f cdq      
00000001404aa250 sub      eax, edx
00000001404aa252 mov      edx, r13d
00000001404aa255 sar      eax, 1
00000001404aa257 mov      byte ptr [rcx + 0x56], al
00000001404aa25a mov      al, byte ptr [rsp + 0x88]
00000001404aa261 mov      rcx, qword ptr [rsp + 0x80]
00000001404aa269 mov      byte ptr [rsp + 0x30], al
00000001404aa26d mov      byte ptr [rsp + 0x28], 1
00000001404aa272 mov      byte ptr [rsp + 0x20], 2
00000001404aa277 call     0x1403871f8
00000001404aa27c mov      rcx, qword ptr [rsp + 0x90]
00000001404aa284 mov      r9d, 0x93
00000001404aa28a movsx    eax, al
00000001404aa28d xor      r8d, r8d
00000001404aa290 cdq      
00000001404aa291 mov      byte ptr [rsp + 0x30], r12b
00000001404aa296 mov      r12, qword ptr [rsp + 0x80]
00000001404aa29e sub      eax, edx
00000001404aa2a0 sar      eax, 1
00000001404aa2a2 mov      edx, r13d
00000001404aa2a5 mov      byte ptr [rcx + 0x57], al
00000001404aa2a8 mov      rcx, r12
00000001404aa2ab mov      byte ptr [rsp + 0x28], 1
00000001404aa2b0 mov      byte ptr [rsp + 0x20], 4
00000001404aa2b5 call     0x1403871f8
00000001404aa2ba mov      rcx, qword ptr [rsp + 0x90]
00000001404aa2c2 mov      r9d, 0x93
00000001404aa2c8 movsx    eax, al
00000001404aa2cb xor      r8d, r8d
00000001404aa2ce cdq      
00000001404aa2cf mov      byte ptr [rsp + 0x30], r15b
00000001404aa2d4 sub      eax, edx
00000001404aa2d6 mov      byte ptr [rsp + 0x28], 1
00000001404aa2db sar      eax, 1
00000001404aa2dd mov      edx, r13d
00000001404aa2e0 mov      byte ptr [rcx + 0x90], al
00000001404aa2e6 mov      rcx, r12
00000001404aa2e9 mov      byte ptr [rsp + 0x20], 4
00000001404aa2ee call     0x1403871f8
00000001404aa2f3 movsx    eax, al
00000001404aa2f6 mov      r15, qword ptr [rsp + 0x90]
00000001404aa2fe cdq      
00000001404aa2ff sub      eax, edx
00000001404aa301 mov      byte ptr [rsp + 0x30], r14b
00000001404aa306 sar      eax, 1
00000001404aa308 mov      r9d, 0x93
00000001404aa30e mov      byte ptr [rsp + 0x28], 1
00000001404aa313 xor      r8d, r8d
00000001404aa316 mov      edx, r13d
00000001404aa319 mov      byte ptr [r15 + 0x91], al
00000001404aa320 mov      rcx, r12
00000001404aa323 mov      byte ptr [rsp + 0x20], 4
00000001404aa328 call     0x1403871f8
00000001404aa32d movsx    eax, al
00000001404aa330 mov      r14d, 0x93
00000001404aa336 cdq      
00000001404aa337 mov      byte ptr [rsp + 0x30], bpl
00000001404aa33c sub      eax, edx
00000001404aa33e mov      byte ptr [rsp + 0x28], 1
00000001404aa343 sar      eax, 1
00000001404aa345 mov      r9d, r14d
00000001404aa348 xor      r8d, r8d
00000001404aa34b mov      byte ptr [r15 + 0x92], al
00000001404aa352 mov      edx, r13d
00000001404aa355 mov      byte ptr [rsp + 0x20], 4
00000001404aa35a mov      rcx, r12
00000001404aa35d call     0x1403871f8
00000001404aa362 movsx    eax, al
00000001404aa365 mov      r9d, r14d
00000001404aa368 cdq      
00000001404aa369 mov      byte ptr [rsp + 0x30], sil
00000001404aa36e sub      eax, edx
00000001404aa370 mov      byte ptr [rsp + 0x28], 1
00000001404aa375 sar      eax, 1
00000001404aa377 xor      r8d, r8d
00000001404aa37a mov      edx, r13d
00000001404aa37d mov      byte ptr [r15 + 0x93], al
00000001404aa384 mov      rcx, r12
00000001404aa387 mov      byte ptr [rsp + 0x20], 4
00000001404aa38c call     0x1403871f8
00000001404aa391 movsx    eax, al
00000001404aa394 mov      r9d, r14d
00000001404aa397 cdq      
00000001404aa398 mov      byte ptr [rsp + 0x30], dil
00000001404aa39d sub      eax, edx
00000001404aa39f mov      byte ptr [rsp + 0x28], 1
00000001404aa3a4 sar      eax, 1
00000001404aa3a6 xor      r8d, r8d
00000001404aa3a9 mov      edx, r13d
00000001404aa3ac mov      byte ptr [r15 + 0x94], al
00000001404aa3b3 mov      rcx, r12
00000001404aa3b6 mov      byte ptr [rsp + 0x20], 4
00000001404aa3bb call     0x1403871f8
00000001404aa3c0 movsx    eax, al
00000001404aa3c3 mov      r9d, r14d
00000001404aa3c6 cdq      
00000001404aa3c7 mov      byte ptr [rsp + 0x30], bl
00000001404aa3cb sub      eax, edx
00000001404aa3cd mov      byte ptr [rsp + 0x28], 1
00000001404aa3d2 sar      eax, 1
00000001404aa3d4 xor      r8d, r8d
00000001404aa3d7 mov      edx, r13d
00000001404aa3da mov      byte ptr [r15 + 0x95], al
00000001404aa3e1 mov      rcx, r12
00000001404aa3e4 mov      byte ptr [rsp + 0x20], 4
00000001404aa3e9 call     0x1403871f8
00000001404aa3ee movsx    eax, al
00000001404aa3f1 mov      r9d, r14d
00000001404aa3f4 cdq      
00000001404aa3f5 xor      r8d, r8d
00000001404aa3f8 sub      eax, edx
00000001404aa3fa mov      rcx, r12
00000001404aa3fd sar      eax, 1
00000001404aa3ff mov      edx, r13d
00000001404aa402 mov      byte ptr [r15 + 0x96], al
00000001404aa409 mov      al, byte ptr [rsp + 0x88]
00000001404aa410 mov      byte ptr [rsp + 0x30], al
00000001404aa414 mov      byte ptr [rsp + 0x28], 1
00000001404aa419 mov      byte ptr [rsp + 0x20], 4
00000001404aa41e call     0x1403871f8
00000001404aa423 movsx    eax, al
00000001404aa426 mov      rbx, qword ptr [rsp + 0x98]
00000001404aa42e cdq      
00000001404aa42f sub      eax, edx
00000001404aa431 sar      eax, 1
00000001404aa433 mov      byte ptr [r15 + 0x97], al
00000001404aa43a add      rsp, 0x40
00000001404aa43e pop      r15
00000001404aa440 pop      r14
00000001404aa442 pop      r13
00000001404aa444 pop      r12
00000001404aa446 pop      rdi
00000001404aa447 pop      rsi
00000001404aa448 pop      rbp
00000001404aa449 ret      