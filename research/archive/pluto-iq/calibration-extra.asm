0000000140465a7c mov      rax, rsp
0000000140465a7f mov      qword ptr [rax + 8], rbx
0000000140465a83 mov      qword ptr [rax + 0x10], rbp
0000000140465a87 mov      qword ptr [rax + 0x18], rsi
0000000140465a8b mov      qword ptr [rax + 0x20], rdi
0000000140465a8f push     r14
0000000140465a91 sub      rsp, 0x30
0000000140465a95 mov      dil, dl
0000000140465a98 mov      rsi, rcx
0000000140465a9b cmp      r8b, 2
0000000140465a9f jbe      0x140465af6
0000000140465aa1 mov      rcx, qword ptr [rip + 0x4ba558]
0000000140465aa8 lea      rax, [rip + 0x4ba551]
0000000140465aaf cmp      rcx, rax
0000000140465ab2 je       0x140465c5b
0000000140465ab8 cmp      byte ptr [rcx + 0x169], 3
0000000140465abf jb       0x140465c5b
0000000140465ac5 test     dword ptr [rcx + 0x16c], 0x2000
0000000140465acf je       0x140465c5b
0000000140465ad5 mov      rcx, qword ptr [rcx + 0x158]
0000000140465adc mov      edx, 0x34
0000000140465ae1 movzx    r9d, r8b
0000000140465ae5 lea      r8, [rip + 0x277ff4]
0000000140465aec call     0x140001bb0
0000000140465af1 jmp      0x140465c5b
0000000140465af6 mov      r14d, 1
0000000140465afc movzx    ebp, r8b
0000000140465b00 test     r14b, dil
0000000140465b03 je       0x140465ba8
0000000140465b09 mov      ebx, 0x8104
0000000140465b0e mov      r9d, r14d
0000000140465b11 mov      edx, ebx
0000000140465b13 mov      r8d, 0x80000000
0000000140465b19 call     0x140458dbc
0000000140465b1e mov      r9d, ebp
0000000140465b21 lea      r8d, [r14 + 2]
0000000140465b25 mov      edx, ebx
0000000140465b27 mov      rcx, rsi
0000000140465b2a call     0x140458dbc
0000000140465b2f mov      r9d, ebp
0000000140465b32 mov      r8d, 0x300
0000000140465b38 mov      edx, ebx
0000000140465b3a mov      rcx, rsi
0000000140465b3d call     0x140458dbc
0000000140465b42 mov      ebx, ebp
0000000140465b44 mov      r9d, 0xe0000
0000000140465b4a or       ebx, 4
0000000140465b4d mov      r8d, r14d
0000000140465b50 xor      edx, edx
0000000140465b52 mov      dword ptr [rsp + 0x20], ebx
0000000140465b56 mov      rcx, rsi
0000000140465b59 call     0x14045907c
0000000140465b5e xor      edx, edx
0000000140465b60 mov      dword ptr [rsp + 0x20], ebx
0000000140465b64 mov      r9d, 0xe0000
0000000140465b6a mov      r8d, 0x10001
0000000140465b70 mov      rcx, rsi
0000000140465b73 call     0x14045907c
0000000140465b78 mov      r9d, ebp
0000000140465b7b lea      r8d, [r14 + 7]
0000000140465b7f mov      ebx, 0x8154
0000000140465b84 and      r9d, r14d
0000000140465b87 mov      edx, ebx
0000000140465b89 mov      rcx, rsi
0000000140465b8c call     0x140458dbc
0000000140465b91 mov      r9d, ebp
0000000140465b94 lea      r8d, [r14 + 0x1f]
0000000140465b98 shr      r9d, 1
0000000140465b9b mov      edx, ebx
0000000140465b9d and      r9d, r14d
0000000140465ba0 mov      rcx, rsi
0000000140465ba3 call     0x140458dbc
0000000140465ba8 test     dil, 2
0000000140465bac je       0x140465c5b
0000000140465bb2 mov      ebx, 0x8204
0000000140465bb7 mov      r9d, r14d
0000000140465bba mov      edx, ebx
0000000140465bbc mov      r8d, 0x80000000
0000000140465bc2 mov      rcx, rsi
0000000140465bc5 call     0x140458dbc
0000000140465bca mov      r9d, ebp
0000000140465bcd mov      r8d, 3
0000000140465bd3 mov      edx, ebx
0000000140465bd5 mov      rcx, rsi
0000000140465bd8 call     0x140458dbc
0000000140465bdd mov      r9d, ebp
0000000140465be0 mov      r8d, 0x300
0000000140465be6 mov      edx, ebx
0000000140465be8 mov      rcx, rsi
0000000140465beb call     0x140458dbc
0000000140465bf0 mov      ebx, ebp
0000000140465bf2 mov      r9d, 0xe0000
0000000140465bf8 or       ebx, 4
0000000140465bfb mov      r8d, r14d
0000000140465bfe mov      edx, r14d
0000000140465c01 mov      dword ptr [rsp + 0x20], ebx
0000000140465c05 mov      rcx, rsi
0000000140465c08 call     0x14045907c
0000000140465c0d mov      r9d, 0xe0000
0000000140465c13 mov      dword ptr [rsp + 0x20], ebx
0000000140465c17 mov      r8d, 0x10001
0000000140465c1d mov      edx, r14d
0000000140465c20 mov      rcx, rsi
0000000140465c23 call     0x14045907c
0000000140465c28 mov      r9d, ebp
0000000140465c2b mov      ebx, 0x8254
0000000140465c30 and      r9d, r14d
0000000140465c33 mov      r8d, 8
0000000140465c39 mov      edx, ebx
0000000140465c3b mov      rcx, rsi
0000000140465c3e call     0x140458dbc
0000000140465c43 shr      ebp, 1
0000000140465c45 mov      r8d, 0x20
0000000140465c4b and      ebp, r14d
0000000140465c4e mov      edx, ebx
0000000140465c50 mov      r9d, ebp
0000000140465c53 mov      rcx, rsi
0000000140465c56 call     0x140458dbc
0000000140465c5b mov      rbx, qword ptr [rsp + 0x40]
0000000140465c60 mov      rbp, qword ptr [rsp + 0x48]
0000000140465c65 mov      rsi, qword ptr [rsp + 0x50]
0000000140465c6a mov      rdi, qword ptr [rsp + 0x58]
0000000140465c6f add      rsp, 0x30
0000000140465c73 pop      r14
0000000140465c75 ret      
0000000140467478 mov      qword ptr [rsp + 8], rbx
000000014046747d push     rbp
000000014046747e push     rsi
000000014046747f push     rdi
0000000140467480 push     r12
0000000140467482 push     r13
0000000140467484 push     r14
0000000140467486 push     r15
0000000140467488 sub      rsp, 0x70
000000014046748c xor      r12d, r12d
000000014046748f movsxd   r13, r8d
0000000140467492 movzx    ebx, dl
0000000140467495 cmp      r13d, 1
0000000140467499 mov      esi, 0x4000
000000014046749e mov      edx, 0xe610
00000001404674a3 mov      rdi, rcx
00000001404674a6 cmovne   esi, r12d
00000001404674aa lea      r8d, [r12 + 1]
00000001404674af call     0x140458630
00000001404674b4 imul     rcx, rbx, 0x1ac
00000001404674bb mov      r14d, ebx
00000001404674be mov      dword ptr [rsp + 0xc8], eax
00000001404674c5 mov      ebp, esi
00000001404674c7 lea      rbx, [rdi + 0xaf84]
00000001404674ce or       ebp, 0x11e00
00000001404674d4 lea      r15d, [r12 + 0x6b]
00000001404674d9 add      rbx, rcx
00000001404674dc mov      r8d, dword ptr [rbx]
00000001404674df mov      edx, ebp
00000001404674e1 or       edx, dword ptr [rdi + 0x524]
00000001404674e7 mov      rcx, qword ptr [rdi + 8]
00000001404674eb call     0x1402c1fa0
00000001404674f0 add      ebp, 4
00000001404674f3 lea      rbx, [rbx + 4]
00000001404674f7 sub      r15, 1
00000001404674fb jne      0x1404674dc
00000001404674fd imul     r15, r14, 0x9c
0000000140467504 mov      ebx, esi
0000000140467506 mov      ebp, 0x27
000000014046750b add      r15, 0xb488
0000000140467512 or       ebx, 0x11fac
0000000140467518 add      r15, rdi
000000014046751b mov      r8d, dword ptr [r15]
000000014046751e mov      edx, ebx
0000000140467520 or       edx, dword ptr [rdi + 0x524]
0000000140467526 mov      rcx, qword ptr [rdi + 8]
000000014046752a call     0x1402c1fa0
000000014046752f add      ebx, 4
0000000140467532 lea      r15, [r15 + 4]
0000000140467536 sub      rbp, 1
000000014046753a jne      0x14046751b
000000014046753c lea      rbx, [r14 + r14*4]
0000000140467540 or       esi, 0x12048
0000000140467546 shl      rbx, 5
000000014046754a mov      ebp, 0x28
000000014046754f add      rbx, 0xb65c
0000000140467556 add      rbx, rdi
0000000140467559 mov      r8d, dword ptr [rbx]
000000014046755c mov      edx, esi
000000014046755e or       edx, dword ptr [rdi + 0x524]
0000000140467564 mov      rcx, qword ptr [rdi + 8]
0000000140467568 call     0x1402c1fa0
000000014046756d add      esi, 4
0000000140467570 lea      rbx, [rbx + 4]
0000000140467574 sub      rbp, 1
0000000140467578 jne      0x140467559
000000014046757a lea      rbx, [r13*2]
0000000140467582 mov      qword ptr [rsp + 0x60], r13
0000000140467587 add      rbx, r13
000000014046758a lea      rax, [rip + 0x276563]
0000000140467591 shl      rbx, 4
0000000140467595 mov      rsi, r13
0000000140467598 add      rbx, rax
000000014046759b mov      ebp, 4
00000001404675a0 mov      r9d, dword ptr [rbx + 4]
00000001404675a4 mov      rcx, rdi
00000001404675a7 mov      r8d, dword ptr [rbx]
00000001404675aa mov      edx, dword ptr [rbx - 4]
00000001404675ad call     0x140458dbc
00000001404675b2 lea      rbx, [rbx + 0xc]
00000001404675b6 sub      rbp, 1
00000001404675ba jne      0x1404675a0
00000001404675bc lea      rdx, [rip + 0x2766b5]
00000001404675c3 mov      rax, rsi
00000001404675c6 shl      rax, 5
00000001404675ca lea      r10, [rip + 0x27662f]
00000001404675d1 add      rax, r10
00000001404675d4 lea      r9, [rip + 0x276665]
00000001404675db mov      qword ptr [rsp + 0x40], rax
00000001404675e0 lea      r11, [rip + 0x2765f9]
00000001404675e7 imul     rax, rsi, 0x1c
00000001404675eb or       r13d, 0x74
00000001404675ef lea      rcx, [r14 + r14]
00000001404675f3 add      rax, r9
00000001404675f6 shl      r13d, 9
00000001404675fa mov      qword ptr [rsp + 0x48], rax
00000001404675ff sub      rcx, rsi
0000000140467602 lea      rax, [rsi + rsi*2]
0000000140467606 mov      dword ptr [rsp + 0xc0], r13d
000000014046760e lea      rax, [rdx + rax*4]
0000000140467612 mov      r15, r14
0000000140467615 mov      qword ptr [rsp + 0x50], rax
000000014046761a mov      r8, rsi
000000014046761d lea      rax, [rcx + rcx*2]
0000000140467621 shl      r15, 8
0000000140467625 shl      rax, 2
0000000140467629 add      r15, 0xac3c
0000000140467630 sub      rax, rdx
0000000140467633 shl      r8, 4
0000000140467637 add      rax, 0xaf3c
000000014046763d add      r8, r11
0000000140467640 add      rax, rdi
0000000140467643 mov      qword ptr [rsp + 0x58], r8
0000000140467648 mov      qword ptr [rsp + 0x38], rax
000000014046764d add      r15, rdi
0000000140467650 imul     rdx, rcx, 0x1c
0000000140467654 mov      rax, rcx
0000000140467657 shl      rcx, 4
000000014046765b shl      rax, 5
000000014046765f sub      rdx, r9
0000000140467662 sub      rax, r10
0000000140467665 add      rdx, 0xab94
000000014046766c add      rax, 0xaa74
0000000140467672 add      rdx, rdi
0000000140467675 add      rax, rdi
0000000140467678 mov      qword ptr [rsp + 0x30], rdx
000000014046767d mov      qword ptr [rsp + 0x28], rax
0000000140467682 sub      rcx, r11
0000000140467685 lea      rax, [rdi + 0xab34]
000000014046768c add      rax, rcx
000000014046768f mov      qword ptr [rsp + 0x20], rax
0000000140467694 mov      r13, qword ptr [rsp + 0x20]
0000000140467699 mov      ebp, r12d
000000014046769c shl      ebp, 8
000000014046769f mov      rbx, r8
00000001404676a2 mov      r14d, 4
00000001404676a8 mov      r9d, dword ptr [rbx + r13]
00000001404676ac mov      edx, ebp
00000001404676ae or       edx, dword ptr [rbx]
00000001404676b0 or       r8d, 0xffffffff
00000001404676b4 mov      rcx, rdi
00000001404676b7 call     0x140458dbc
00000001404676bc lea      rbx, [rbx + 4]
00000001404676c0 sub      r14, 1
00000001404676c4 jne      0x1404676a8
00000001404676c6 mov      rbx, qword ptr [rsp + 0x40]
00000001404676cb mov      r14d, 8
00000001404676d1 mov      r13d, dword ptr [rsp + 0xc0]
00000001404676d9 mov      rsi, qword ptr [rsp + 0x28]
00000001404676de mov      r9d, dword ptr [rsi + rbx]
00000001404676e2 mov      edx, ebp
00000001404676e4 or       edx, dword ptr [rbx]
00000001404676e6 or       r8d, 0xffffffff
00000001404676ea mov      rcx, rdi
00000001404676ed call     0x140458dbc
00000001404676f2 lea      rbx, [rbx + 4]
00000001404676f6 sub      r14, 1
00000001404676fa jne      0x1404676de
00000001404676fc mov      rbx, qword ptr [rsp + 0x48]
0000000140467701 mov      r14d, 7
0000000140467707 mov      rsi, qword ptr [rsp + 0x30]
000000014046770c mov      r9d, dword ptr [rsi + rbx]
0000000140467710 mov      edx, ebp
0000000140467712 or       edx, dword ptr [rbx]
0000000140467714 or       r8d, 0xffffffff
0000000140467718 mov      rcx, rdi
000000014046771b call     0x140458dbc
0000000140467720 lea      rbx, [rbx + 4]
0000000140467724 sub      r14, 1
0000000140467728 jne      0x14046770c
000000014046772a mov      ebx, r12d
000000014046772d mov      r14d, 0x20
0000000140467733 shl      ebx, 0xc
0000000140467736 or       ebx, r13d
0000000140467739 mov      r9d, dword ptr [r15]
000000014046773c or       r8d, 0xffffffff
0000000140467740 mov      edx, ebx
0000000140467742 mov      rcx, rdi
0000000140467745 call     0x140458dbc
000000014046774a add      ebx, 4
000000014046774d add      r15, 4
0000000140467751 sub      r14, 1
0000000140467755 jne      0x140467739
0000000140467757 mov      rbx, qword ptr [rsp + 0x50]
000000014046775c mov      r14d, 3
0000000140467762 mov      rsi, qword ptr [rsp + 0x38]
0000000140467767 mov      r9d, dword ptr [rsi + rbx]
000000014046776b mov      edx, ebp
000000014046776d or       edx, dword ptr [rbx]
000000014046776f or       r8d, 0xffffffff
0000000140467773 mov      rcx, rdi
0000000140467776 call     0x140458dbc
000000014046777b lea      rbx, [rbx + 4]
000000014046777f sub      r14, 1
0000000140467783 jne      0x140467767
0000000140467785 add      qword ptr [rsp + 0x20], 0x10
000000014046778b inc      r12d
000000014046778e add      qword ptr [rsp + 0x28], 0x20
0000000140467794 add      qword ptr [rsp + 0x30], 0x1c
000000014046779a add      qword ptr [rsp + 0x38], 0xc
00000001404677a0 mov      r8, qword ptr [rsp + 0x58]
00000001404677a5 cmp      r12d, 2
00000001404677a9 jb       0x140467694
00000001404677af cmp      dword ptr [rsp + 0xc8], 1
00000001404677b7 mov      rsi, qword ptr [rsp + 0x60]
00000001404677bc jne      0x1404677ed
00000001404677be lea      rax, [rsi + rsi*8]
00000001404677c2 lea      rcx, [rip + 0x27638b]
00000001404677c9 lea      rbx, [rcx + rax*8]
00000001404677cd lea      esi, [r14 + 6]
00000001404677d1 mov      r9d, dword ptr [rbx + 4]
00000001404677d5 mov      rcx, rdi
00000001404677d8 mov      r8d, dword ptr [rbx]
00000001404677db mov      edx, dword ptr [rbx - 4]
00000001404677de call     0x140458dbc
00000001404677e3 lea      rbx, [rbx + 0xc]
00000001404677e7 sub      rsi, 1
00000001404677eb jne      0x1404677d1
00000001404677ed mov      rbx, qword ptr [rsp + 0xb0]
00000001404677f5 add      rsp, 0x70
00000001404677f9 pop      r15
00000001404677fb pop      r14
00000001404677fd pop      r13
00000001404677ff pop      r12
0000000140467801 pop      rdi
0000000140467802 pop      rsi
0000000140467803 pop      rbp
0000000140467804 ret      
0000000140464c74 mov      qword ptr [rsp + 8], rbx
0000000140464c79 mov      qword ptr [rsp + 0x10], rsi
0000000140464c7e push     rdi
0000000140464c7f sub      rsp, 0x30
0000000140464c83 mov      ebx, edx
0000000140464c85 mov      rdi, rcx
0000000140464c88 mov      rcx, qword ptr [rip + 0x4bb371]
0000000140464c8f lea      rsi, [rip + 0x4bb36a]
0000000140464c96 cmp      rcx, rsi
0000000140464c99 je       0x140464ce5
0000000140464c9b cmp      byte ptr [rcx + 0x229], 4
0000000140464ca2 jb       0x140464ce5
0000000140464ca4 test     dword ptr [rcx + 0x22c], 0x100
0000000140464cae je       0x140464ce5
0000000140464cb0 movzx    r8d, byte ptr [rdi + 0xb978]
0000000140464cb8 mov      edx, 0xb
0000000140464cbd mov      rax, qword ptr [rdi + 8]
0000000140464cc1 mov      rcx, qword ptr [rcx + 0x218]
0000000140464cc8 mov      dword ptr [rsp + 0x28], ebx
0000000140464ccc mov      dword ptr [rsp + 0x20], r8d
0000000140464cd1 lea      r8, [rip + 0x278bb0]
0000000140464cd8 movzx    r9d, byte ptr [rax + 0x12d4]
0000000140464ce0 call     0x140001c34
0000000140464ce5 cmp      byte ptr [rdi + 0xb978], 0
0000000140464cec je       0x140464d04
0000000140464cee mov      al, byte ptr [rdi + 0xb979]
0000000140464cf4 cmp      al, 1
0000000140464cf6 je       0x140464d0f
0000000140464cf8 cmp      al, 2
0000000140464cfa jne      0x140464d04
0000000140464cfc test     ebx, ebx
0000000140464cfe je       0x140464d5d
0000000140464d00 mov      al, 3
0000000140464d02 jmp      0x140464d5f
0000000140464d04 mov      cl, byte ptr [rdi + 0xb979]
0000000140464d0a cmp      cl, 1
0000000140464d0d jne      0x140464d17
0000000140464d0f test     ebx, ebx
0000000140464d11 je       0x140464d5d
0000000140464d13 mov      al, 1
0000000140464d15 jmp      0x140464d5f
0000000140464d17 cmp      cl, 2
0000000140464d1a jne      0x140464d24
0000000140464d1c test     ebx, ebx
0000000140464d1e je       0x140464d5d
0000000140464d20 mov      al, cl
0000000140464d22 jmp      0x140464d5f
0000000140464d24 mov      rcx, qword ptr [rip + 0x4bb2d5]
0000000140464d2b cmp      rcx, rsi
0000000140464d2e je       0x140464d5d
0000000140464d30 cmp      byte ptr [rcx + 0x169], 3
0000000140464d37 jb       0x140464d5d
0000000140464d39 test     dword ptr [rcx + 0x16c], 0x2000
0000000140464d43 je       0x140464d5d
0000000140464d45 mov      rcx, qword ptr [rcx + 0x158]
0000000140464d4c lea      r8, [rip + 0x278b35]
0000000140464d53 mov      edx, 0xc
0000000140464d58 call     0x140001b88
0000000140464d5d xor      al, al
0000000140464d5f mov      rbx, qword ptr [rsp + 0x40]
0000000140464d64 mov      rsi, qword ptr [rsp + 0x48]
0000000140464d69 add      rsp, 0x30
0000000140464d6d pop      rdi
0000000140464d6e ret      