00000001403603b4 mov      rax, rsp
00000001403603b7 mov      qword ptr [rax + 8], rbx
00000001403603bb mov      qword ptr [rax + 0x10], rbp
00000001403603bf mov      qword ptr [rax + 0x18], rsi
00000001403603c3 mov      qword ptr [rax + 0x20], rdi
00000001403603c7 push     r14
00000001403603c9 sub      rsp, 0x30
00000001403603cd mov      rax, qword ptr [rcx + 0x140]
00000001403603d4 mov      rdi, rcx
00000001403603d7 mov      r8b, byte ptr [rdx + 0x38]
00000001403603db mov      rbx, rdx
00000001403603de mov      r9b, r8b
00000001403603e1 mov      sil, 6
00000001403603e4 xor      r9b, byte ptr [rax + 0xee]
00000001403603eb and      r9b, 0x3f
00000001403603ef xor      r9b, r8b
00000001403603f2 mov      byte ptr [rdx + 0x38], r9b
00000001403603f6 mov      rax, qword ptr [rcx + 0x140]
00000001403603fd mov      cl, byte ptr [rax + 0xee]
0000000140360403 mov      byte ptr [rdx + 0x5e], cl
0000000140360406 mov      dl, byte ptr [rdx + 0x35]
0000000140360409 mov      al, dl
000000014036040b and      al, 0xc0
000000014036040d cmp      al, 0xc0
000000014036040f jne      0x140360419
0000000140360411 and      dl, 0x3f
0000000140360414 jne      0x140360487
0000000140360416 xor      sil, sil
0000000140360419 mov      rax, qword ptr [rdi + 0x140]
0000000140360420 xor      r14b, r14b
0000000140360423 cmp      byte ptr [rax + 0xee], r14b
000000014036042a jbe      0x14036058e
0000000140360430 mov      dl, r14b
0000000140360433 mov      rcx, rdi
0000000140360436 call     0x14040bc30
000000014036043b mov      rbp, rax
000000014036043e test     rax, rax
0000000140360441 je       0x1403604f4
0000000140360447 mov      rax, qword ptr [rdi + 0x18]
000000014036044b lea      r8, [rbp + 0xf6]
0000000140360452 mov      rcx, qword ptr [rdi + 8]
0000000140360456 lea      rdx, [rbx + 0xe6]
000000014036045d movzx    r9d, sil
0000000140360461 mov      rax, qword ptr [rax + 0xb0]
0000000140360468 call     qword ptr [rip + 0x323e8a]
000000014036046e test     eax, eax
0000000140360470 jne      0x14036047e
0000000140360472 mov      eax, dword ptr [rbp + 0x24]
0000000140360475 cmp      dword ptr [rbx + 0x14], eax
0000000140360478 je       0x140360536
000000014036047e mov      r9b, byte ptr [rbx + 0x38]
0000000140360482 jmp      0x14036051d
0000000140360487 lea      ecx, [rdx - 1]
000000014036048a and      cl, dl
000000014036048c jne      0x140360493
000000014036048e mov      sil, 1
0000000140360491 jmp      0x140360419
0000000140360493 call     0x140360764
0000000140360498 lea      esi, [rax + 1]
000000014036049b cmp      sil, 6
000000014036049f jbe      0x140360419
00000001403604a5 mov      rcx, qword ptr [rip + 0x5bfb54]
00000001403604ac lea      rax, [rip + 0x5bfb4d]
00000001403604b3 mov      ebx, 0xb
00000001403604b8 cmp      rcx, rax
00000001403604bb je       0x1403604ed
00000001403604bd cmp      byte ptr [rcx + 0x169], 2
00000001403604c4 jb       0x1403604ed
00000001403604c6 mov      edx, dword ptr [rcx + 0x16c]
00000001403604cc test     dl, 8
00000001403604cf je       0x1403604ed
00000001403604d1 mov      rcx, qword ptr [rcx + 0x158]
00000001403604d8 lea      r9, [rip + 0x2dd601]
00000001403604df mov      edx, ebx
00000001403604e1 lea      r8, [rip + 0x371d98]
00000001403604e8 call     0x140008874
00000001403604ed mov      eax, ebx
00000001403604ef jmp      0x1403605af
00000001403604f4 mov      r9b, byte ptr [rbx + 0x38]
00000001403604f8 mov      rcx, qword ptr [rdi + 0x140]
00000001403604ff mov      al, r9b
0000000140360502 and      al, 0x3f
0000000140360504 cmp      al, byte ptr [rcx + 0xee]
000000014036050a jne      0x14036051d
000000014036050c mov      al, r9b
000000014036050f xor      al, r14b
0000000140360512 and      al, 0x3f
0000000140360514 xor      al, r9b
0000000140360517 mov      r9b, al
000000014036051a mov      byte ptr [rbx + 0x38], al
000000014036051d mov      rax, qword ptr [rdi + 0x140]
0000000140360524 inc      r14b
0000000140360527 cmp      r14b, byte ptr [rax + 0xee]
000000014036052e jb       0x140360430
0000000140360534 jmp      0x14036058e
0000000140360536 mov      al, byte ptr [rbx + 0x38]
0000000140360539 mov      r9b, al
000000014036053c xor      r9b, byte ptr [rbp + 0x48]
0000000140360540 and      r9b, 0x3f
0000000140360544 xor      r9b, al
0000000140360547 mov      byte ptr [rbx + 0x38], r9b
000000014036054b cmp      sil, 6
000000014036054f jae      0x140360578
0000000140360551 mov      rax, qword ptr [rdi + 0x18]
0000000140360555 lea      r8, [rbp + 0x73]
0000000140360559 mov      rcx, qword ptr [rdi + 8]
000000014036055d lea      rdx, [rbx + 0x63]
0000000140360561 mov      r9d, 6
0000000140360567 mov      rax, qword ptr [rax + 0xa0]
000000014036056e call     qword ptr [rip + 0x323d84]
0000000140360574 mov      r9b, byte ptr [rbx + 0x38]
0000000140360578 cmp      dword ptr [rbx + 0x28], 0
000000014036057c jne      0x14036058e
000000014036057e mov      al, byte ptr [rbx + 0x62]
0000000140360581 mov      cl, al
0000000140360583 xor      cl, byte ptr [rbp + 0x72]
0000000140360586 and      cl, 0x3f
0000000140360589 xor      cl, al
000000014036058b mov      byte ptr [rbx + 0x62], cl
000000014036058e mov      rax, qword ptr [rdi + 0x140]
0000000140360595 and      r9b, 0x3f
0000000140360599 cmp      r9b, byte ptr [rax + 0xee]
00000001403605a0 jne      0x1403605a9
00000001403605a2 mov      eax, 0x31
00000001403605a7 jmp      0x1403605af
00000001403605a9 mov      byte ptr [rbx + 0x5e], r9b
00000001403605ad xor      eax, eax
00000001403605af mov      rbx, qword ptr [rsp + 0x40]
00000001403605b4 mov      rbp, qword ptr [rsp + 0x48]
00000001403605b9 mov      rsi, qword ptr [rsp + 0x50]
00000001403605be mov      rdi, qword ptr [rsp + 0x58]
00000001403605c3 add      rsp, 0x30
00000001403605c7 pop      r14
00000001403605c9 ret      