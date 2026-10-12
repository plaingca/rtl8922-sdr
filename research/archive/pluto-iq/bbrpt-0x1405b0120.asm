00000001405b0120 mov      qword ptr [rsp + 8], rbx
00000001405b0125 push     rdi
00000001405b0126 sub      rsp, 0x30
00000001405b012a mov      rdi, rcx
00000001405b012d cmp      edx, 0x17
00000001405b0130 ja       0x1405b0982
00000001405b0136 je       0x1405b090b
00000001405b013c mov      eax, edx
00000001405b013e sub      eax, 0xc
00000001405b0141 je       0x1405b0793
00000001405b0147 sub      eax, 1
00000001405b014a je       0x1405b0632
00000001405b0150 sub      eax, 1
00000001405b0153 je       0x1405b04d1
00000001405b0159 sub      eax, 6
00000001405b015c je       0x1405b045a
00000001405b0162 sub      eax, 1
00000001405b0165 je       0x1405b0311
00000001405b016b cmp      eax, 1
00000001405b016e jne      0x1405b09b6
00000001405b0174 mov      rax, qword ptr [rcx + 0x18]
00000001405b0178 lea      r8, [rip + 0xbda91]
00000001405b017f mov      rcx, qword ptr [rcx + 8]
00000001405b0183 mov      ebx, 1
00000001405b0188 mov      edx, ebx
00000001405b018a mov      rax, qword ptr [rax + 0x118]
00000001405b0191 call     qword ptr [rip + 0xd4161]
00000001405b0197 mov      rax, qword ptr [rdi + 0x18]
00000001405b019b lea      r8, [rip + 0xbda9e]
00000001405b01a2 mov      rcx, qword ptr [rdi + 8]
00000001405b01a6 mov      edx, ebx
00000001405b01a8 mov      rax, qword ptr [rax + 0x118]
00000001405b01af call     qword ptr [rip + 0xd4143]
00000001405b01b5 lea      edx, [rbx + 0x27]
00000001405b01b8 mov      rcx, rdi
00000001405b01bb call     0x1405b112c
00000001405b01c0 mov      ebx, eax
00000001405b01c2 test     eax, eax
00000001405b01c4 jne      0x1405b10f8
00000001405b01ca lea      edx, [rax + 0x29]
00000001405b01cd mov      rcx, rdi
00000001405b01d0 call     0x1405b112c
00000001405b01d5 mov      ebx, eax
00000001405b01d7 test     eax, eax
00000001405b01d9 jne      0x1405b10f8
00000001405b01df lea      edx, [rax + 0x2a]
00000001405b01e2 mov      rcx, rdi
00000001405b01e5 call     0x1405b112c
00000001405b01ea mov      ebx, eax
00000001405b01ec test     eax, eax
00000001405b01ee jne      0x1405b10f8
00000001405b01f4 lea      edx, [rax + 0x2b]
00000001405b01f7 mov      rcx, rdi
00000001405b01fa call     0x1405b112c
00000001405b01ff mov      ebx, eax
00000001405b0201 test     eax, eax
00000001405b0203 jne      0x1405b10f8
00000001405b0209 lea      edx, [rax + 0x2c]
00000001405b020c mov      rcx, rdi
00000001405b020f call     0x1405b112c
00000001405b0214 mov      ebx, eax
00000001405b0216 test     eax, eax
00000001405b0218 jne      0x1405b10f8
00000001405b021e lea      edx, [rax + 0x2d]
00000001405b0221 mov      rcx, rdi
00000001405b0224 call     0x1405b112c
00000001405b0229 mov      ebx, eax
00000001405b022b test     eax, eax
00000001405b022d jne      0x1405b10f8
00000001405b0233 lea      edx, [rax + 0x2e]
00000001405b0236 mov      rcx, rdi
00000001405b0239 call     0x1405b112c
00000001405b023e mov      ebx, eax
00000001405b0240 test     eax, eax
00000001405b0242 jne      0x1405b10f8
00000001405b0248 lea      edx, [rax + 0x2f]
00000001405b024b mov      rcx, rdi
00000001405b024e call     0x1405b112c
00000001405b0253 mov      ebx, eax
00000001405b0255 test     eax, eax
00000001405b0257 jne      0x1405b10f8
00000001405b025d lea      edx, [rax + 0x30]
00000001405b0260 mov      rcx, rdi
00000001405b0263 call     0x1405b112c
00000001405b0268 mov      ebx, eax
00000001405b026a test     eax, eax
00000001405b026c jne      0x1405b10f8
00000001405b0272 lea      edx, [rax + 0x31]
00000001405b0275 mov      rcx, rdi
00000001405b0278 call     0x1405b112c
00000001405b027d mov      ebx, eax
00000001405b027f test     eax, eax
00000001405b0281 jne      0x1405b10f8
00000001405b0287 lea      edx, [rax + 0x32]
00000001405b028a mov      rcx, rdi
00000001405b028d call     0x1405b112c
00000001405b0292 mov      ebx, eax
00000001405b0294 test     eax, eax
00000001405b0296 jne      0x1405b10f8
00000001405b029c lea      edx, [rax + 0x33]
00000001405b029f mov      rcx, rdi
00000001405b02a2 call     0x1405b112c
00000001405b02a7 mov      ebx, eax
00000001405b02a9 test     eax, eax
00000001405b02ab jne      0x1405b10f8
00000001405b02b1 lea      edx, [rax + 0x34]
00000001405b02b4 mov      rcx, rdi
00000001405b02b7 call     0x1405b112c
00000001405b02bc mov      ebx, eax
00000001405b02be test     eax, eax
00000001405b02c0 jne      0x1405b10f8
00000001405b02c6 lea      edx, [rax + 0x35]
00000001405b02c9 mov      rcx, rdi
00000001405b02cc call     0x1405b112c
00000001405b02d1 mov      ebx, eax
00000001405b02d3 test     eax, eax
00000001405b02d5 jne      0x1405b10f8
00000001405b02db lea      edx, [rax + 0x36]
00000001405b02de mov      rcx, rdi
00000001405b02e1 call     0x1405b112c
00000001405b02e6 mov      ebx, eax
00000001405b02e8 test     eax, eax
00000001405b02ea jne      0x1405b10f8
00000001405b02f0 lea      edx, [rax + 0x37]
00000001405b02f3 mov      rcx, rdi
00000001405b02f6 call     0x1405b112c
00000001405b02fb mov      ebx, eax
00000001405b02fd test     eax, eax
00000001405b02ff jne      0x1405b10f8
00000001405b0305 lea      r8, [rip + 0xbd954]
00000001405b030c jmp      0x1405b10dc
00000001405b0311 mov      rax, qword ptr [rcx + 0x18]
00000001405b0315 lea      r8, [rip + 0xbd884]
00000001405b031c mov      rcx, qword ptr [rcx + 8]
00000001405b0320 mov      ebx, 1
00000001405b0325 mov      edx, ebx
00000001405b0327 mov      rax, qword ptr [rax + 0x118]
00000001405b032e call     qword ptr [rip + 0xd3fc4]
00000001405b0334 mov      rax, qword ptr [rdi + 0x18]
00000001405b0338 lea      r8, [rip + 0xbd891]
00000001405b033f mov      rcx, qword ptr [rdi + 8]
00000001405b0343 mov      edx, ebx
00000001405b0345 mov      rax, qword ptr [rax + 0x118]
00000001405b034c call     qword ptr [rip + 0xd3fa6]
00000001405b0352 lea      edx, [rbx + 0x1b]
00000001405b0355 mov      rcx, rdi
00000001405b0358 call     0x1405b112c
00000001405b035d mov      ebx, eax
00000001405b035f test     eax, eax
00000001405b0361 jne      0x1405b10f8
00000001405b0367 lea      edx, [rax + 0x1d]
00000001405b036a mov      rcx, rdi
00000001405b036d call     0x1405b112c
00000001405b0372 mov      ebx, eax
00000001405b0374 test     eax, eax
00000001405b0376 jne      0x1405b10f8
00000001405b037c lea      edx, [rax + 0x1e]
00000001405b037f mov      rcx, rdi
00000001405b0382 call     0x1405b112c
00000001405b0387 mov      ebx, eax
00000001405b0389 test     eax, eax
00000001405b038b jne      0x1405b10f8
00000001405b0391 lea      edx, [rax + 0x1f]
00000001405b0394 mov      rcx, rdi
00000001405b0397 call     0x1405b112c
00000001405b039c mov      ebx, eax
00000001405b039e test     eax, eax
00000001405b03a0 jne      0x1405b10f8
00000001405b03a6 lea      edx, [rax + 0x20]
00000001405b03a9 mov      rcx, rdi
00000001405b03ac call     0x1405b112c
00000001405b03b1 mov      ebx, eax
00000001405b03b3 test     eax, eax
00000001405b03b5 jne      0x1405b10f8
00000001405b03bb lea      edx, [rax + 0x21]
00000001405b03be mov      rcx, rdi
00000001405b03c1 call     0x1405b112c
00000001405b03c6 mov      ebx, eax
00000001405b03c8 test     eax, eax
00000001405b03ca jne      0x1405b10f8
00000001405b03d0 lea      edx, [rax + 0x22]
00000001405b03d3 mov      rcx, rdi
00000001405b03d6 call     0x1405b112c
00000001405b03db mov      ebx, eax
00000001405b03dd test     eax, eax
00000001405b03df jne      0x1405b10f8
00000001405b03e5 lea      edx, [rax + 0x23]
00000001405b03e8 mov      rcx, rdi
00000001405b03eb call     0x1405b112c
00000001405b03f0 mov      ebx, eax
00000001405b03f2 test     eax, eax
00000001405b03f4 jne      0x1405b10f8
00000001405b03fa lea      edx, [rax + 0x24]
00000001405b03fd mov      rcx, rdi
00000001405b0400 call     0x1405b112c
00000001405b0405 mov      ebx, eax
00000001405b0407 test     eax, eax
00000001405b0409 jne      0x1405b10f8
00000001405b040f lea      edx, [rax + 0x25]
00000001405b0412 mov      rcx, rdi
00000001405b0415 call     0x1405b112c
00000001405b041a mov      ebx, eax
00000001405b041c test     eax, eax
00000001405b041e jne      0x1405b10f8
00000001405b0424 lea      edx, [rax + 0x26]
00000001405b0427 mov      rcx, rdi
00000001405b042a call     0x1405b112c
00000001405b042f mov      ebx, eax
00000001405b0431 test     eax, eax
00000001405b0433 jne      0x1405b10f8
00000001405b0439 lea      edx, [rax + 0x27]
00000001405b043c mov      rcx, rdi
00000001405b043f call     0x1405b112c
00000001405b0444 mov      ebx, eax
00000001405b0446 test     eax, eax
00000001405b0448 jne      0x1405b10f8
00000001405b044e lea      r8, [rip + 0xbd79b]
00000001405b0455 jmp      0x1405b10dc
00000001405b045a mov      rax, qword ptr [rcx + 0x18]
00000001405b045e lea      r8, [rip + 0xbd6cb]
00000001405b0465 mov      rcx, qword ptr [rcx + 8]
00000001405b0469 mov      ebx, 1
00000001405b046e mov      edx, ebx
00000001405b0470 mov      rax, qword ptr [rax + 0x118]
00000001405b0477 call     qword ptr [rip + 0xd3e7b]
00000001405b047d mov      rax, qword ptr [rdi + 0x18]
00000001405b0481 lea      r8, [rip + 0xbd6d8]
00000001405b0488 mov      rcx, qword ptr [rdi + 8]
00000001405b048c mov      edx, ebx
00000001405b048e mov      rax, qword ptr [rax + 0x118]
00000001405b0495 call     qword ptr [rip + 0xd3e5d]
00000001405b049b lea      edx, [rbx + 0x13]
00000001405b049e mov      rcx, rdi
00000001405b04a1 call     0x1405b112c
00000001405b04a6 mov      ebx, eax
00000001405b04a8 test     eax, eax
00000001405b04aa jne      0x1405b10f8
00000001405b04b0 lea      edx, [rax + 0x15]
00000001405b04b3 mov      rcx, rdi
00000001405b04b6 call     0x1405b112c
00000001405b04bb mov      ebx, eax
00000001405b04bd test     eax, eax
00000001405b04bf jne      0x1405b10f8
00000001405b04c5 lea      r8, [rip + 0xbd6b4]
00000001405b04cc jmp      0x1405b10dc
00000001405b04d1 mov      rax, qword ptr [rcx + 0x18]
00000001405b04d5 lea      r8, [rip + 0xbdab4]
00000001405b04dc mov      rcx, qword ptr [rcx + 8]
00000001405b04e0 mov      ebx, 1
00000001405b04e5 mov      edx, ebx
00000001405b04e7 mov      rax, qword ptr [rax + 0x118]
00000001405b04ee call     qword ptr [rip + 0xd3e04]
00000001405b04f4 mov      rax, qword ptr [rdi + 0x18]
00000001405b04f8 lea      r8, [rip + 0xbdac1]
00000001405b04ff mov      rcx, qword ptr [rdi + 8]
00000001405b0503 mov      edx, ebx
00000001405b0505 mov      rax, qword ptr [rax + 0x118]
00000001405b050c call     qword ptr [rip + 0xd3de6]
00000001405b0512 mov      edx, 0x9f
00000001405b0517 mov      rcx, rdi
00000001405b051a call     0x1405b112c
00000001405b051f mov      ebx, eax
00000001405b0521 test     eax, eax
00000001405b0523 jne      0x1405b10f8
00000001405b0529 mov      edx, 0xa0
00000001405b052e mov      rcx, rdi
00000001405b0531 call     0x1405b112c
00000001405b0536 mov      ebx, eax
00000001405b0538 test     eax, eax
00000001405b053a jne      0x1405b10f8
00000001405b0540 mov      edx, 0xa1
00000001405b0545 mov      rcx, rdi
00000001405b0548 call     0x1405b112c
00000001405b054d mov      ebx, eax
00000001405b054f test     eax, eax
00000001405b0551 jne      0x1405b10f8
00000001405b0557 mov      edx, 0xa2
00000001405b055c mov      rcx, rdi
00000001405b055f call     0x1405b112c
00000001405b0564 mov      ebx, eax
00000001405b0566 test     eax, eax
00000001405b0568 jne      0x1405b10f8
00000001405b056e mov      edx, 0xa3
00000001405b0573 mov      rcx, rdi
00000001405b0576 call     0x1405b112c
00000001405b057b mov      ebx, eax
00000001405b057d test     eax, eax
00000001405b057f jne      0x1405b10f8
00000001405b0585 mov      edx, 0xa4
00000001405b058a mov      rcx, rdi
00000001405b058d call     0x1405b112c
00000001405b0592 mov      ebx, eax
00000001405b0594 test     eax, eax
00000001405b0596 jne      0x1405b10f8
00000001405b059c mov      edx, 0xa5
00000001405b05a1 mov      rcx, rdi
00000001405b05a4 call     0x1405b112c
00000001405b05a9 mov      ebx, eax
00000001405b05ab test     eax, eax
00000001405b05ad jne      0x1405b10f8
00000001405b05b3 mov      edx, 0xa6
00000001405b05b8 mov      rcx, rdi
00000001405b05bb call     0x1405b112c
00000001405b05c0 mov      ebx, eax
00000001405b05c2 test     eax, eax
00000001405b05c4 jne      0x1405b10f8
00000001405b05ca mov      edx, 0xa7
00000001405b05cf mov      rcx, rdi
00000001405b05d2 call     0x1405b112c
00000001405b05d7 mov      ebx, eax
00000001405b05d9 test     eax, eax
00000001405b05db jne      0x1405b10f8
00000001405b05e1 mov      edx, 0xa8
00000001405b05e6 mov      rcx, rdi
00000001405b05e9 call     0x1405b112c
00000001405b05ee mov      ebx, eax
00000001405b05f0 test     eax, eax
00000001405b05f2 jne      0x1405b10f8
00000001405b05f8 mov      edx, 0xa9
00000001405b05fd mov      rcx, rdi
00000001405b0600 call     0x1405b112c
00000001405b0605 mov      ebx, eax
00000001405b0607 test     eax, eax
00000001405b0609 jne      0x1405b10f8
00000001405b060f mov      edx, 0xaa
00000001405b0614 mov      rcx, rdi
00000001405b0617 call     0x1405b112c
00000001405b061c mov      ebx, eax
00000001405b061e test     eax, eax
00000001405b0620 jne      0x1405b10f8
00000001405b0626 lea      r8, [rip + 0xbd9b3]
00000001405b062d jmp      0x1405b10dc
00000001405b0632 mov      rax, qword ptr [rcx + 0x18]
00000001405b0636 lea      r8, [rip + 0xbd9d3]
00000001405b063d mov      rcx, qword ptr [rcx + 8]
00000001405b0641 mov      ebx, 1
00000001405b0646 mov      edx, ebx
00000001405b0648 mov      rax, qword ptr [rax + 0x118]
00000001405b064f call     qword ptr [rip + 0xd3ca3]
00000001405b0655 mov      rax, qword ptr [rdi + 0x18]
00000001405b0659 lea      r8, [rip + 0xbd9e0]
00000001405b0660 mov      rcx, qword ptr [rdi + 8]
00000001405b0664 mov      edx, ebx
00000001405b0666 mov      rax, qword ptr [rax + 0x118]
00000001405b066d call     qword ptr [rip + 0xd3c85]
00000001405b0673 mov      edx, 0xab
00000001405b0678 mov      rcx, rdi
00000001405b067b call     0x1405b112c
00000001405b0680 mov      ebx, eax
00000001405b0682 test     eax, eax
00000001405b0684 jne      0x1405b10f8
00000001405b068a mov      edx, 0xac
00000001405b068f mov      rcx, rdi
00000001405b0692 call     0x1405b112c
00000001405b0697 mov      ebx, eax
00000001405b0699 test     eax, eax
00000001405b069b jne      0x1405b10f8
00000001405b06a1 mov      edx, 0xad
00000001405b06a6 mov      rcx, rdi
00000001405b06a9 call     0x1405b112c
00000001405b06ae mov      ebx, eax
00000001405b06b0 test     eax, eax
00000001405b06b2 jne      0x1405b10f8
00000001405b06b8 mov      edx, 0xae
00000001405b06bd mov      rcx, rdi
00000001405b06c0 call     0x1405b112c
00000001405b06c5 mov      ebx, eax
00000001405b06c7 test     eax, eax
00000001405b06c9 jne      0x1405b10f8
00000001405b06cf mov      edx, 0xaf
00000001405b06d4 mov      rcx, rdi
00000001405b06d7 call     0x1405b112c
00000001405b06dc mov      ebx, eax
00000001405b06de test     eax, eax
00000001405b06e0 jne      0x1405b10f8
00000001405b06e6 mov      edx, 0xb0
00000001405b06eb mov      rcx, rdi
00000001405b06ee call     0x1405b112c
00000001405b06f3 mov      ebx, eax
00000001405b06f5 test     eax, eax
00000001405b06f7 jne      0x1405b10f8
00000001405b06fd mov      edx, 0xb1
00000001405b0702 mov      rcx, rdi
00000001405b0705 call     0x1405b112c
00000001405b070a mov      ebx, eax
00000001405b070c test     eax, eax
00000001405b070e jne      0x1405b10f8
00000001405b0714 mov      edx, 0xb2
00000001405b0719 mov      rcx, rdi
00000001405b071c call     0x1405b112c
00000001405b0721 mov      ebx, eax
00000001405b0723 test     eax, eax
00000001405b0725 jne      0x1405b10f8
00000001405b072b mov      edx, 0xb3
00000001405b0730 mov      rcx, rdi
00000001405b0733 call     0x1405b112c
00000001405b0738 mov      ebx, eax
00000001405b073a test     eax, eax
00000001405b073c jne      0x1405b10f8
00000001405b0742 mov      edx, 0xb4
00000001405b0747 mov      rcx, rdi
00000001405b074a call     0x1405b112c
00000001405b074f mov      ebx, eax
00000001405b0751 test     eax, eax
00000001405b0753 jne      0x1405b10f8
00000001405b0759 mov      edx, 0xb5
00000001405b075e mov      rcx, rdi
00000001405b0761 call     0x1405b112c
00000001405b0766 mov      ebx, eax
00000001405b0768 test     eax, eax
00000001405b076a jne      0x1405b10f8
00000001405b0770 mov      edx, 0xb6
00000001405b0775 mov      rcx, rdi
00000001405b0778 call     0x1405b112c
00000001405b077d mov      ebx, eax
00000001405b077f test     eax, eax
00000001405b0781 jne      0x1405b10f8
00000001405b0787 lea      r8, [rip + 0xbd8d2]
00000001405b078e jmp      0x1405b10dc
00000001405b0793 mov      rax, qword ptr [rcx + 0x18]
00000001405b0797 lea      r8, [rip + 0xbd8f2]
00000001405b079e mov      rcx, qword ptr [rcx + 8]
00000001405b07a2 mov      ebx, 1
00000001405b07a7 mov      edx, ebx
00000001405b07a9 mov      rax, qword ptr [rax + 0x118]
00000001405b07b0 call     qword ptr [rip + 0xd3b42]
00000001405b07b6 mov      rax, qword ptr [rdi + 0x18]
00000001405b07ba lea      r8, [rip + 0xbd8ff]
00000001405b07c1 mov      rcx, qword ptr [rdi + 8]
00000001405b07c5 mov      edx, ebx
00000001405b07c7 mov      rax, qword ptr [rax + 0x118]
00000001405b07ce call     qword ptr [rip + 0xd3b24]
00000001405b07d4 mov      edx, 0xb7
00000001405b07d9 mov      rcx, rdi
00000001405b07dc call     0x1405b112c
00000001405b07e1 mov      ebx, eax
00000001405b07e3 test     eax, eax
00000001405b07e5 jne      0x1405b10f8
00000001405b07eb mov      edx, 0xb8
00000001405b07f0 mov      rcx, rdi
00000001405b07f3 call     0x1405b112c
00000001405b07f8 mov      ebx, eax
00000001405b07fa test     eax, eax
00000001405b07fc jne      0x1405b10f8
00000001405b0802 mov      edx, 0xb9
00000001405b0807 mov      rcx, rdi
00000001405b080a call     0x1405b112c
00000001405b080f mov      ebx, eax
00000001405b0811 test     eax, eax
00000001405b0813 jne      0x1405b10f8
00000001405b0819 mov      edx, 0xba
00000001405b081e mov      rcx, rdi
00000001405b0821 call     0x1405b112c
00000001405b0826 mov      ebx, eax
00000001405b0828 test     eax, eax
00000001405b082a jne      0x1405b10f8
00000001405b0830 mov      edx, 0xbb
00000001405b0835 mov      rcx, rdi
00000001405b0838 call     0x1405b112c
00000001405b083d mov      ebx, eax
00000001405b083f test     eax, eax
00000001405b0841 jne      0x1405b10f8
00000001405b0847 mov      edx, 0xbc
00000001405b084c mov      rcx, rdi
00000001405b084f call     0x1405b112c
00000001405b0854 mov      ebx, eax
00000001405b0856 test     eax, eax
00000001405b0858 jne      0x1405b10f8
00000001405b085e mov      edx, 0xbd
00000001405b0863 mov      rcx, rdi
00000001405b0866 call     0x1405b112c
00000001405b086b mov      ebx, eax
00000001405b086d test     eax, eax
00000001405b086f jne      0x1405b10f8
00000001405b0875 mov      edx, 0xbe
00000001405b087a mov      rcx, rdi
00000001405b087d call     0x1405b112c
00000001405b0882 mov      ebx, eax
00000001405b0884 test     eax, eax
00000001405b0886 jne      0x1405b10f8
00000001405b088c mov      edx, 0xbf
00000001405b0891 mov      rcx, rdi
00000001405b0894 call     0x1405b112c
00000001405b0899 mov      ebx, eax
00000001405b089b test     eax, eax
00000001405b089d jne      0x1405b10f8
00000001405b08a3 mov      edx, 0xc0
00000001405b08a8 mov      rcx, rdi
00000001405b08ab call     0x1405b112c
00000001405b08b0 mov      ebx, eax
00000001405b08b2 test     eax, eax
00000001405b08b4 jne      0x1405b10f8
00000001405b08ba mov      edx, 0xc1
00000001405b08bf mov      rcx, rdi
00000001405b08c2 call     0x1405b112c
00000001405b08c7 mov      ebx, eax
00000001405b08c9 test     eax, eax
00000001405b08cb jne      0x1405b10f8
00000001405b08d1 mov      edx, 0xc2
00000001405b08d6 mov      rcx, rdi
00000001405b08d9 call     0x1405b112c
00000001405b08de mov      ebx, eax
00000001405b08e0 test     eax, eax
00000001405b08e2 jne      0x1405b10f8
00000001405b08e8 mov      edx, 0xc3
00000001405b08ed mov      rcx, rdi
00000001405b08f0 call     0x1405b112c
00000001405b08f5 mov      ebx, eax
00000001405b08f7 test     eax, eax
00000001405b08f9 jne      0x1405b10f8
00000001405b08ff lea      r8, [rip + 0xbd7da]
00000001405b0906 jmp      0x1405b10dc
00000001405b090b mov      rax, qword ptr [rcx + 0x18]
00000001405b090f lea      r8, [rip + 0xbd36a]
00000001405b0916 mov      rcx, qword ptr [rcx + 8]
00000001405b091a mov      ebx, 1
00000001405b091f mov      edx, ebx
00000001405b0921 mov      rax, qword ptr [rax + 0x118]
00000001405b0928 call     qword ptr [rip + 0xd39ca]
00000001405b092e mov      rax, qword ptr [rdi + 0x18]
00000001405b0932 lea      r8, [rip + 0xbd377]
00000001405b0939 mov      rcx, qword ptr [rdi + 8]
00000001405b093d mov      edx, ebx
00000001405b093f mov      rax, qword ptr [rax + 0x118]
00000001405b0946 call     qword ptr [rip + 0xd39ac]
00000001405b094c lea      edx, [rbx + 0x37]
00000001405b094f mov      rcx, rdi
00000001405b0952 call     0x1405b112c
00000001405b0957 mov      ebx, eax
00000001405b0959 test     eax, eax
00000001405b095b jne      0x1405b10f8
00000001405b0961 lea      edx, [rax + 0x59]
00000001405b0964 mov      rcx, rdi
00000001405b0967 call     0x1405b112c
00000001405b096c mov      ebx, eax
00000001405b096e test     eax, eax
00000001405b0970 jne      0x1405b10f8
00000001405b0976 lea      r8, [rip + 0xbd023]
00000001405b097d jmp      0x1405b10dc
00000001405b0982 mov      eax, edx
00000001405b0984 sub      eax, 0x18
00000001405b0987 je       0x1405b0ff0
00000001405b098d sub      eax, 2
00000001405b0990 je       0x1405b0eeb
00000001405b0996 sub      eax, 2
00000001405b0999 je       0x1405b0c7c
00000001405b099f sub      eax, 1
00000001405b09a2 je       0x1405b0b36
00000001405b09a8 sub      eax, 2
00000001405b09ab je       0x1405b0a8d
00000001405b09b1 cmp      eax, 1
00000001405b09b4 je       0x1405b09e4
00000001405b09b6 mov      rax, qword ptr [rcx + 0x18]
00000001405b09ba lea      r8, [rip + 0xbd11f]
00000001405b09c1 mov      rcx, qword ptr [rcx + 8]
00000001405b09c5 mov      r9d, edx
00000001405b09c8 mov      edx, 2
00000001405b09cd mov      rax, qword ptr [rax + 0x118]
00000001405b09d4 call     qword ptr [rip + 0xd391e]
00000001405b09da mov      ebx, 0x41
00000001405b09df jmp      0x1405b111c
00000001405b09e4 mov      rax, qword ptr [rcx + 0x18]
00000001405b09e8 lea      r8, [rip + 0xbd791]
00000001405b09ef mov      rcx, qword ptr [rcx + 8]
00000001405b09f3 mov      ebx, 1
00000001405b09f8 mov      edx, ebx
00000001405b09fa mov      rax, qword ptr [rax + 0x118]
00000001405b0a01 call     qword ptr [rip + 0xd38f1]
00000001405b0a07 mov      rax, qword ptr [rdi + 0x18]
00000001405b0a0b lea      r8, [rip + 0xbd79e]
00000001405b0a12 mov      rcx, qword ptr [rdi + 8]
00000001405b0a16 mov      edx, ebx
00000001405b0a18 mov      rax, qword ptr [rax + 0x118]
00000001405b0a1f call     qword ptr [rip + 0xd38d3]
00000001405b0a25 mov      edx, 0xce
00000001405b0a2a mov      rcx, rdi
00000001405b0a2d call     0x1405b112c
00000001405b0a32 mov      ebx, eax
00000001405b0a34 test     eax, eax
00000001405b0a36 jne      0x1405b10f8
00000001405b0a3c mov      edx, 0xcf
00000001405b0a41 mov      rcx, rdi
00000001405b0a44 call     0x1405b112c
00000001405b0a49 mov      ebx, eax
00000001405b0a4b test     eax, eax
00000001405b0a4d jne      0x1405b10f8
00000001405b0a53 mov      edx, 0xd0
00000001405b0a58 mov      rcx, rdi
00000001405b0a5b call     0x1405b112c
00000001405b0a60 mov      ebx, eax
00000001405b0a62 test     eax, eax
00000001405b0a64 jne      0x1405b10f8
00000001405b0a6a mov      edx, 0xd1
00000001405b0a6f mov      rcx, rdi
00000001405b0a72 call     0x1405b112c
00000001405b0a77 mov      ebx, eax
00000001405b0a79 test     eax, eax
00000001405b0a7b jne      0x1405b10f8
00000001405b0a81 lea      r8, [rip + 0xbd748]
00000001405b0a88 jmp      0x1405b10dc
00000001405b0a8d mov      rax, qword ptr [rcx + 0x18]
00000001405b0a91 lea      r8, [rip + 0xbd488]
00000001405b0a98 mov      rcx, qword ptr [rcx + 8]
00000001405b0a9c mov      ebx, 1
00000001405b0aa1 mov      edx, ebx
00000001405b0aa3 mov      rax, qword ptr [rax + 0x118]
00000001405b0aaa call     qword ptr [rip + 0xd3848]
00000001405b0ab0 mov      rax, qword ptr [rdi + 0x18]
00000001405b0ab4 lea      r8, [rip + 0xbd495]
00000001405b0abb mov      rcx, qword ptr [rdi + 8]
00000001405b0abf mov      edx, ebx
00000001405b0ac1 mov      rax, qword ptr [rax + 0x118]
00000001405b0ac8 call     qword ptr [rip + 0xd382a]
00000001405b0ace mov      edx, 0x91
00000001405b0ad3 mov      rcx, rdi
00000001405b0ad6 call     0x1405b112c
00000001405b0adb mov      ebx, eax
00000001405b0add test     eax, eax
00000001405b0adf jne      0x1405b10f8
00000001405b0ae5 mov      edx, 0x92
00000001405b0aea mov      rcx, rdi
00000001405b0aed call     0x1405b112c
00000001405b0af2 mov      ebx, eax
00000001405b0af4 test     eax, eax
00000001405b0af6 jne      0x1405b10f8
00000001405b0afc mov      edx, 0x93
00000001405b0b01 mov      rcx, rdi
00000001405b0b04 call     0x1405b112c
00000001405b0b09 mov      ebx, eax
00000001405b0b0b test     eax, eax
00000001405b0b0d jne      0x1405b10f8
00000001405b0b13 mov      edx, 0x94
00000001405b0b18 mov      rcx, rdi
00000001405b0b1b call     0x1405b112c
00000001405b0b20 mov      ebx, eax
00000001405b0b22 test     eax, eax
00000001405b0b24 jne      0x1405b10f8
00000001405b0b2a lea      r8, [rip + 0xbd43f]
00000001405b0b31 jmp      0x1405b10dc
00000001405b0b36 mov      rax, qword ptr [rcx + 0x18]
00000001405b0b3a lea      r8, [rip + 0xbd2df]
00000001405b0b41 mov      rcx, qword ptr [rcx + 8]
00000001405b0b45 mov      ebx, 1
00000001405b0b4a mov      edx, ebx
00000001405b0b4c mov      rax, qword ptr [rax + 0x118]
00000001405b0b53 call     qword ptr [rip + 0xd379f]
00000001405b0b59 mov      rax, qword ptr [rdi + 0x18]
00000001405b0b5d lea      r8, [rip + 0xbd2ec]
00000001405b0b64 mov      rcx, qword ptr [rdi + 8]
00000001405b0b68 mov      edx, ebx
00000001405b0b6a mov      rax, qword ptr [rax + 0x118]
00000001405b0b71 call     qword ptr [rip + 0xd3781]
00000001405b0b77 lea      edx, [rbx + 0x7d]
00000001405b0b7a mov      rcx, rdi
00000001405b0b7d call     0x1405b112c
00000001405b0b82 mov      ebx, eax
00000001405b0b84 test     eax, eax
00000001405b0b86 jne      0x1405b10f8
00000001405b0b8c lea      edx, [rax + 0x7f]
00000001405b0b8f mov      rcx, rdi
00000001405b0b92 call     0x1405b112c
00000001405b0b97 mov      ebx, eax
00000001405b0b99 test     eax, eax
00000001405b0b9b jne      0x1405b10f8
00000001405b0ba1 mov      edx, 0x80
00000001405b0ba6 mov      rcx, rdi
00000001405b0ba9 call     0x1405b112c
00000001405b0bae mov      ebx, eax
00000001405b0bb0 test     eax, eax
00000001405b0bb2 jne      0x1405b10f8
00000001405b0bb8 mov      edx, 0x81
00000001405b0bbd mov      rcx, rdi
00000001405b0bc0 call     0x1405b112c
00000001405b0bc5 mov      ebx, eax
00000001405b0bc7 test     eax, eax
00000001405b0bc9 jne      0x1405b10f8
00000001405b0bcf mov      edx, 0x82
00000001405b0bd4 mov      rcx, rdi
00000001405b0bd7 call     0x1405b112c
00000001405b0bdc mov      ebx, eax
00000001405b0bde test     eax, eax
00000001405b0be0 jne      0x1405b10f8
00000001405b0be6 mov      edx, 0x83
00000001405b0beb mov      rcx, rdi
00000001405b0bee call     0x1405b112c
00000001405b0bf3 mov      ebx, eax
00000001405b0bf5 test     eax, eax
00000001405b0bf7 jne      0x1405b10f8
00000001405b0bfd mov      edx, 0x84
00000001405b0c02 mov      rcx, rdi
00000001405b0c05 call     0x1405b112c
00000001405b0c0a mov      ebx, eax
00000001405b0c0c test     eax, eax
00000001405b0c0e jne      0x1405b10f8
00000001405b0c14 mov      edx, 0x85
00000001405b0c19 mov      rcx, rdi
00000001405b0c1c call     0x1405b112c
00000001405b0c21 mov      ebx, eax
00000001405b0c23 test     eax, eax
00000001405b0c25 jne      0x1405b10f8
00000001405b0c2b mov      edx, 0x86
00000001405b0c30 mov      rcx, rdi
00000001405b0c33 call     0x1405b112c
00000001405b0c38 mov      ebx, eax
00000001405b0c3a test     eax, eax
00000001405b0c3c jne      0x1405b10f8
00000001405b0c42 mov      edx, 0x87
00000001405b0c47 mov      rcx, rdi
00000001405b0c4a call     0x1405b112c
00000001405b0c4f mov      ebx, eax
00000001405b0c51 test     eax, eax
00000001405b0c53 jne      0x1405b10f8
00000001405b0c59 mov      edx, 0x88
00000001405b0c5e mov      rcx, rdi
00000001405b0c61 call     0x1405b112c
00000001405b0c66 mov      ebx, eax
00000001405b0c68 test     eax, eax
00000001405b0c6a jne      0x1405b10f8
00000001405b0c70 lea      r8, [rip + 0xbd1f9]
00000001405b0c77 jmp      0x1405b10dc
00000001405b0c7c mov      rax, qword ptr [rcx + 0x18]
00000001405b0c80 lea      r8, [rip + 0xbd129]
00000001405b0c87 mov      rcx, qword ptr [rcx + 8]
00000001405b0c8b mov      ebx, 1
00000001405b0c90 mov      edx, ebx
00000001405b0c92 mov      rax, qword ptr [rax + 0x118]
00000001405b0c99 call     qword ptr [rip + 0xd3659]
00000001405b0c9f mov      rax, qword ptr [rdi + 0x18]
00000001405b0ca3 lea      r8, [rip + 0xbd136]
00000001405b0caa mov      rcx, qword ptr [rdi + 8]
00000001405b0cae mov      edx, ebx
00000001405b0cb0 mov      rax, qword ptr [rax + 0x118]
00000001405b0cb7 call     qword ptr [rip + 0xd363b]
00000001405b0cbd lea      edx, [rbx + 0x63]
00000001405b0cc0 mov      rcx, rdi
00000001405b0cc3 call     0x1405b112c
00000001405b0cc8 mov      ebx, eax
00000001405b0cca test     eax, eax
00000001405b0ccc jne      0x1405b10f8
00000001405b0cd2 lea      edx, [rax + 0x65]
00000001405b0cd5 mov      rcx, rdi
00000001405b0cd8 call     0x1405b112c
00000001405b0cdd mov      ebx, eax
00000001405b0cdf test     eax, eax
00000001405b0ce1 jne      0x1405b10f8
00000001405b0ce7 lea      edx, [rax + 0x66]
00000001405b0cea mov      rcx, rdi
00000001405b0ced call     0x1405b112c
00000001405b0cf2 mov      ebx, eax
00000001405b0cf4 test     eax, eax
00000001405b0cf6 jne      0x1405b10f8
00000001405b0cfc lea      edx, [rax + 0x67]
00000001405b0cff mov      rcx, rdi
00000001405b0d02 call     0x1405b112c
00000001405b0d07 mov      ebx, eax
00000001405b0d09 test     eax, eax
00000001405b0d0b jne      0x1405b10f8
00000001405b0d11 lea      edx, [rax + 0x68]
00000001405b0d14 mov      rcx, rdi
00000001405b0d17 call     0x1405b112c
00000001405b0d1c mov      ebx, eax
00000001405b0d1e test     eax, eax
00000001405b0d20 jne      0x1405b10f8
00000001405b0d26 lea      edx, [rax + 0x69]
00000001405b0d29 mov      rcx, rdi
00000001405b0d2c call     0x1405b112c
00000001405b0d31 mov      ebx, eax
00000001405b0d33 test     eax, eax
00000001405b0d35 jne      0x1405b10f8
00000001405b0d3b lea      edx, [rax + 0x6a]
00000001405b0d3e mov      rcx, rdi
00000001405b0d41 call     0x1405b112c
00000001405b0d46 mov      ebx, eax
00000001405b0d48 test     eax, eax
00000001405b0d4a jne      0x1405b10f8
00000001405b0d50 lea      edx, [rax + 0x6b]
00000001405b0d53 mov      rcx, rdi
00000001405b0d56 call     0x1405b112c
00000001405b0d5b mov      ebx, eax
00000001405b0d5d test     eax, eax
00000001405b0d5f jne      0x1405b10f8
00000001405b0d65 lea      edx, [rax + 0x6c]
00000001405b0d68 mov      rcx, rdi
00000001405b0d6b call     0x1405b112c
00000001405b0d70 mov      ebx, eax
00000001405b0d72 test     eax, eax
00000001405b0d74 jne      0x1405b10f8
00000001405b0d7a lea      edx, [rax + 0x6d]
00000001405b0d7d mov      rcx, rdi
00000001405b0d80 call     0x1405b112c
00000001405b0d85 mov      ebx, eax
00000001405b0d87 test     eax, eax
00000001405b0d89 jne      0x1405b10f8
00000001405b0d8f lea      edx, [rax + 0x6e]
00000001405b0d92 mov      rcx, rdi
00000001405b0d95 call     0x1405b112c
00000001405b0d9a mov      ebx, eax
00000001405b0d9c test     eax, eax
00000001405b0d9e jne      0x1405b10f8
00000001405b0da4 lea      edx, [rax + 0x6f]
00000001405b0da7 mov      rcx, rdi
00000001405b0daa call     0x1405b112c
00000001405b0daf mov      ebx, eax
00000001405b0db1 test     eax, eax
00000001405b0db3 jne      0x1405b10f8
00000001405b0db9 lea      edx, [rax + 0x70]
00000001405b0dbc mov      rcx, rdi
00000001405b0dbf call     0x1405b112c
00000001405b0dc4 mov      ebx, eax
00000001405b0dc6 test     eax, eax
00000001405b0dc8 jne      0x1405b10f8
00000001405b0dce lea      edx, [rax + 0x71]
00000001405b0dd1 mov      rcx, rdi
00000001405b0dd4 call     0x1405b112c
00000001405b0dd9 mov      ebx, eax
00000001405b0ddb test     eax, eax
00000001405b0ddd jne      0x1405b10f8
00000001405b0de3 lea      edx, [rax + 0x72]
00000001405b0de6 mov      rcx, rdi
00000001405b0de9 call     0x1405b112c
00000001405b0dee mov      ebx, eax
00000001405b0df0 test     eax, eax
00000001405b0df2 jne      0x1405b10f8
00000001405b0df8 lea      edx, [rax + 0x73]
00000001405b0dfb mov      rcx, rdi
00000001405b0dfe call     0x1405b112c
00000001405b0e03 mov      ebx, eax
00000001405b0e05 test     eax, eax
00000001405b0e07 jne      0x1405b10f8
00000001405b0e0d lea      edx, [rax + 0x74]
00000001405b0e10 mov      rcx, rdi
00000001405b0e13 call     0x1405b112c
00000001405b0e18 mov      ebx, eax
00000001405b0e1a test     eax, eax
00000001405b0e1c jne      0x1405b10f8
00000001405b0e22 lea      edx, [rax + 0x75]
00000001405b0e25 mov      rcx, rdi
00000001405b0e28 call     0x1405b112c
00000001405b0e2d mov      ebx, eax
00000001405b0e2f test     eax, eax
00000001405b0e31 jne      0x1405b10f8
00000001405b0e37 lea      edx, [rax + 0x76]
00000001405b0e3a mov      rcx, rdi
00000001405b0e3d call     0x1405b112c
00000001405b0e42 mov      ebx, eax
00000001405b0e44 test     eax, eax
00000001405b0e46 jne      0x1405b10f8
00000001405b0e4c lea      edx, [rax + 0x77]
00000001405b0e4f mov      rcx, rdi
00000001405b0e52 call     0x1405b112c
00000001405b0e57 mov      ebx, eax
00000001405b0e59 test     eax, eax
00000001405b0e5b jne      0x1405b10f8
00000001405b0e61 lea      edx, [rax + 0x78]
00000001405b0e64 mov      rcx, rdi
00000001405b0e67 call     0x1405b112c
00000001405b0e6c mov      ebx, eax
00000001405b0e6e test     eax, eax
00000001405b0e70 jne      0x1405b10f8
00000001405b0e76 lea      edx, [rax + 0x79]
00000001405b0e79 mov      rcx, rdi
00000001405b0e7c call     0x1405b112c
00000001405b0e81 mov      ebx, eax
00000001405b0e83 test     eax, eax
00000001405b0e85 jne      0x1405b10f8
00000001405b0e8b lea      edx, [rax + 0x7a]
00000001405b0e8e mov      rcx, rdi
00000001405b0e91 call     0x1405b112c
00000001405b0e96 mov      ebx, eax
00000001405b0e98 test     eax, eax
00000001405b0e9a jne      0x1405b10f8
00000001405b0ea0 lea      edx, [rax + 0x7b]
00000001405b0ea3 mov      rcx, rdi
00000001405b0ea6 call     0x1405b112c
00000001405b0eab mov      ebx, eax
00000001405b0ead test     eax, eax
00000001405b0eaf jne      0x1405b10f8
00000001405b0eb5 lea      edx, [rax + 0x7c]
00000001405b0eb8 mov      rcx, rdi
00000001405b0ebb call     0x1405b112c
00000001405b0ec0 mov      ebx, eax
00000001405b0ec2 test     eax, eax
00000001405b0ec4 jne      0x1405b10f8
00000001405b0eca lea      edx, [rax + 0x7d]
00000001405b0ecd mov      rcx, rdi
00000001405b0ed0 call     0x1405b112c
00000001405b0ed5 mov      ebx, eax
00000001405b0ed7 test     eax, eax
00000001405b0ed9 jne      0x1405b10f8
00000001405b0edf lea      r8, [rip + 0xbcf1a]
00000001405b0ee6 jmp      0x1405b10dc
00000001405b0eeb mov      rax, qword ptr [rcx + 0x18]
00000001405b0eef lea      r8, [rip + 0xbd21a]
00000001405b0ef6 mov      rcx, qword ptr [rcx + 8]
00000001405b0efa mov      ebx, 1
00000001405b0eff mov      edx, ebx
00000001405b0f01 mov      rax, qword ptr [rax + 0x118]
00000001405b0f08 call     qword ptr [rip + 0xd33ea]
00000001405b0f0e mov      rax, qword ptr [rdi + 0x18]
00000001405b0f12 lea      r8, [rip + 0xcf027]
00000001405b0f19 mov      rcx, qword ptr [rdi + 8]
00000001405b0f1d mov      edx, ebx
00000001405b0f1f mov      rax, qword ptr [rax + 0x118]
00000001405b0f26 call     qword ptr [rip + 0xd33cc]
00000001405b0f2c mov      edx, 0xc6
00000001405b0f31 mov      rcx, rdi
00000001405b0f34 call     0x1405b112c
00000001405b0f39 mov      ebx, eax
00000001405b0f3b test     eax, eax
00000001405b0f3d jne      0x1405b10f8
00000001405b0f43 mov      edx, 0xc7
00000001405b0f48 mov      rcx, rdi
00000001405b0f4b call     0x1405b112c
00000001405b0f50 mov      ebx, eax
00000001405b0f52 test     eax, eax
00000001405b0f54 jne      0x1405b10f8
00000001405b0f5a mov      edx, 0xc8
00000001405b0f5f mov      rcx, rdi
00000001405b0f62 call     0x1405b112c
00000001405b0f67 mov      ebx, eax
00000001405b0f69 test     eax, eax
00000001405b0f6b jne      0x1405b10f8
00000001405b0f71 mov      edx, 0xc9
00000001405b0f76 mov      rcx, rdi
00000001405b0f79 call     0x1405b112c
00000001405b0f7e mov      ebx, eax
00000001405b0f80 test     eax, eax
00000001405b0f82 jne      0x1405b10f8
00000001405b0f88 mov      edx, 0xca
00000001405b0f8d mov      rcx, rdi
00000001405b0f90 call     0x1405b112c
00000001405b0f95 mov      ebx, eax
00000001405b0f97 test     eax, eax
00000001405b0f99 jne      0x1405b10f8
00000001405b0f9f mov      edx, 0xcb
00000001405b0fa4 mov      rcx, rdi
00000001405b0fa7 call     0x1405b112c
00000001405b0fac mov      ebx, eax
00000001405b0fae test     eax, eax
00000001405b0fb0 jne      0x1405b10f8
00000001405b0fb6 mov      edx, 0xcc
00000001405b0fbb mov      rcx, rdi
00000001405b0fbe call     0x1405b112c
00000001405b0fc3 mov      ebx, eax
00000001405b0fc5 test     eax, eax
00000001405b0fc7 jne      0x1405b10f8
00000001405b0fcd mov      edx, 0xcd
00000001405b0fd2 mov      rcx, rdi
00000001405b0fd5 call     0x1405b112c
00000001405b0fda mov      ebx, eax
00000001405b0fdc test     eax, eax
00000001405b0fde jne      0x1405b10f8
00000001405b0fe4 lea      r8, [rip + 0xcef75]
00000001405b0feb jmp      0x1405b10dc
00000001405b0ff0 mov      rax, qword ptr [rcx + 0x18]
00000001405b0ff4 lea      r8, [rip + 0xbcd45]
00000001405b0ffb mov      rcx, qword ptr [rcx + 8]
00000001405b0fff mov      ebx, 1
00000001405b1004 mov      edx, ebx
00000001405b1006 mov      rax, qword ptr [rax + 0x118]
00000001405b100d call     qword ptr [rip + 0xd32e5]
00000001405b1013 mov      rax, qword ptr [rdi + 0x18]
00000001405b1017 lea      r8, [rip + 0xbcd52]
00000001405b101e mov      rcx, qword ptr [rdi + 8]
00000001405b1022 mov      edx, ebx
00000001405b1024 mov      rax, qword ptr [rax + 0x118]
00000001405b102b call     qword ptr [rip + 0xd32c7]
00000001405b1031 mov      edx, 0x89
00000001405b1036 mov      rcx, rdi
00000001405b1039 call     0x1405b112c
00000001405b103e mov      ebx, eax
00000001405b1040 test     eax, eax
00000001405b1042 jne      0x1405b10f8
00000001405b1048 mov      edx, 0x8a
00000001405b104d mov      rcx, rdi
00000001405b1050 call     0x1405b112c
00000001405b1055 mov      ebx, eax
00000001405b1057 test     eax, eax
00000001405b1059 jne      0x1405b10f8
00000001405b105f mov      edx, 0x8b
00000001405b1064 mov      rcx, rdi
00000001405b1067 call     0x1405b112c
00000001405b106c mov      ebx, eax
00000001405b106e test     eax, eax
00000001405b1070 jne      0x1405b10f8
00000001405b1076 mov      edx, 0x8c
00000001405b107b mov      rcx, rdi
00000001405b107e call     0x1405b112c
00000001405b1083 mov      ebx, eax
00000001405b1085 test     eax, eax
00000001405b1087 jne      0x1405b10f8
00000001405b1089 mov      edx, 0x8d
00000001405b108e mov      rcx, rdi
00000001405b1091 call     0x1405b112c
00000001405b1096 mov      ebx, eax
00000001405b1098 test     eax, eax
00000001405b109a jne      0x1405b10f8
00000001405b109c mov      edx, 0x8e
00000001405b10a1 mov      rcx, rdi
00000001405b10a4 call     0x1405b112c
00000001405b10a9 mov      ebx, eax
00000001405b10ab test     eax, eax
00000001405b10ad jne      0x1405b10f8
00000001405b10af mov      edx, 0x8f
00000001405b10b4 mov      rcx, rdi
00000001405b10b7 call     0x1405b112c
00000001405b10bc mov      ebx, eax
00000001405b10be test     eax, eax
00000001405b10c0 jne      0x1405b10f8
00000001405b10c2 mov      edx, 0x90
00000001405b10c7 mov      rcx, rdi
00000001405b10ca call     0x1405b112c
00000001405b10cf mov      ebx, eax
00000001405b10d1 test     eax, eax
00000001405b10d3 jne      0x1405b10f8
00000001405b10d5 lea      r8, [rip + 0xbccb4]
00000001405b10dc mov      rax, qword ptr [rdi + 0x18]
00000001405b10e0 mov      edx, 2
00000001405b10e5 mov      rcx, qword ptr [rdi + 8]
00000001405b10e9 mov      rax, qword ptr [rax + 0x118]
00000001405b10f0 call     qword ptr [rip + 0xd3202]
00000001405b10f6 jmp      0x1405b111c
00000001405b10f8 mov      rax, qword ptr [rdi + 0x18]
00000001405b10fc lea      r8, [rip + 0xbd0fd]
00000001405b1103 mov      rcx, qword ptr [rdi + 8]
00000001405b1107 mov      r9d, ebx
00000001405b110a mov      edx, 2
00000001405b110f mov      rax, qword ptr [rax + 0x118]
00000001405b1116 call     qword ptr [rip + 0xd31dc]
00000001405b111c mov      eax, ebx
00000001405b111e mov      rbx, qword ptr [rsp + 0x40]
00000001405b1123 add      rsp, 0x30
00000001405b1127 pop      rdi
00000001405b1128 ret      