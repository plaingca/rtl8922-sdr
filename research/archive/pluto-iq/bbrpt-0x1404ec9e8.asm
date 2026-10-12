00000001404ec9e8 mov      rax, rsp
00000001404ec9eb mov      qword ptr [rax + 8], rbx
00000001404ec9ef mov      qword ptr [rax + 0x20], r9
00000001404ec9f3 mov      dword ptr [rax + 0x18], r8d
00000001404ec9f7 mov      dword ptr [rax + 0x10], edx
00000001404ec9fa push     rbp
00000001404ec9fb push     rsi
00000001404ec9fc push     rdi
00000001404ec9fd push     r12
00000001404ec9ff push     r13
00000001404eca01 push     r14
00000001404eca03 push     r15
00000001404eca05 sub      rsp, 0x40
00000001404eca09 mov      rax, qword ptr [rcx]
00000001404eca0c mov      rsi, r9
00000001404eca0f mov      r14d, r8d
00000001404eca12 mov      ebx, edx
00000001404eca14 mov      rdi, rcx
00000001404eca17 xor      r15d, r15d
00000001404eca1a mov      r13, qword ptr [rax]
00000001404eca1d call     0x1404ec590
00000001404eca22 mov      r12d, eax
00000001404eca25 test     eax, eax
00000001404eca27 je       0x1404ece8a
00000001404eca2d mov      rcx, qword ptr [rip + 0x4335cc]
00000001404eca34 lea      rax, [rip + 0x4335c5]
00000001404eca3b cmp      rcx, rax
00000001404eca3e je       0x1404eca86
00000001404eca40 cmp      byte ptr [rcx + 0x169], 1
00000001404eca47 jb       0x1404eca86
00000001404eca49 mov      eax, dword ptr [rcx + 0x16c]
00000001404eca4f test     al, 8
00000001404eca51 je       0x1404eca7f
00000001404eca53 mov      rcx, qword ptr [rcx + 0x158]
00000001404eca5a lea      edx, [r15 + 0x32]
00000001404eca5e mov      dword ptr [rsp + 0x30], r12d
00000001404eca63 lea      r9, [rip + 0x1707b6]
00000001404eca6a mov      dword ptr [rsp + 0x28], ebx
00000001404eca6e lea      r8, [rip + 0x413c6b]
00000001404eca75 mov      dword ptr [rsp + 0x20], r14d
00000001404eca7a call     0x14001c670
00000001404eca7f lea      rax, [rip + 0x43357a]
00000001404eca86 cmp      byte ptr [rdi + 0x24a], r15b
00000001404eca8d je       0x1404ece8a
00000001404eca93 test     rsi, rsi
00000001404eca96 jne      0x1404ecade
00000001404eca98 mov      rcx, qword ptr [rip + 0x433561]
00000001404eca9f cmp      rcx, rax
00000001404ecaa2 je       0x1404ecad4
00000001404ecaa4 cmp      byte ptr [rcx + 0x169], 2
00000001404ecaab jb       0x1404ecad4
00000001404ecaad mov      eax, dword ptr [rcx + 0x16c]
00000001404ecab3 test     al, 8
00000001404ecab5 je       0x1404ecad4
00000001404ecab7 mov      rcx, qword ptr [rcx + 0x158]
00000001404ecabe lea      edx, [rsi + 0x33]
00000001404ecac1 lea      r9, [rip + 0x170758]
00000001404ecac8 lea      r8, [rip + 0x413c11]
00000001404ecacf call     0x140008874
00000001404ecad4 mov      eax, 9
00000001404ecad9 jmp      0x1404ece8f
00000001404ecade test     bl, 3
00000001404ecae1 je       0x1404ecb09
00000001404ecae3 mov      rcx, qword ptr [rip + 0x433516]
00000001404ecaea cmp      rcx, rax
00000001404ecaed je       0x1404ecb4d
00000001404ecaef cmp      byte ptr [rcx + 0x169], 2
00000001404ecaf6 jb       0x1404ecb4d
00000001404ecaf8 mov      eax, dword ptr [rcx + 0x16c]
00000001404ecafe test     al, 8
00000001404ecb00 je       0x1404ecb4d
00000001404ecb02 mov      edx, 0x34
00000001404ecb07 jmp      0x1404ecb33
00000001404ecb09 test     r14b, 3
00000001404ecb0d je       0x1404ecb57
00000001404ecb0f mov      rcx, qword ptr [rip + 0x4334ea]
00000001404ecb16 cmp      rcx, rax
00000001404ecb19 je       0x1404ecb4d
00000001404ecb1b cmp      byte ptr [rcx + 0x169], 2
00000001404ecb22 jb       0x1404ecb4d
00000001404ecb24 mov      eax, dword ptr [rcx + 0x16c]
00000001404ecb2a test     al, 8
00000001404ecb2c je       0x1404ecb4d
00000001404ecb2e mov      edx, 0x35
00000001404ecb33 mov      rcx, qword ptr [rcx + 0x158]
00000001404ecb3a lea      r9, [rip + 0x1706df]
00000001404ecb41 lea      r8, [rip + 0x413b98]
00000001404ecb48 call     0x140008874
00000001404ecb4d mov      eax, 0x96
00000001404ecb52 jmp      0x1404ece8f
00000001404ecb57 test     r14d, r14d
00000001404ecb5a je       0x1404eccd1
00000001404ecb60 lea      rbp, [rdi + 0x1198]
00000001404ecb67 mov      rax, qword ptr [rdi + 0x18]
00000001404ecb6b mov      esi, r14d
00000001404ecb6e mov      rcx, qword ptr [rdi + 8]
00000001404ecb72 sub      esi, r15d
00000001404ecb75 cmp      esi, r12d
00000001404ecb78 mov      rdx, rbp
00000001404ecb7b mov      rax, qword ptr [rax + 0x108]
00000001404ecb82 cmova    esi, r12d
00000001404ecb86 call     qword ptr [rip + 0x19776c]
00000001404ecb8c inc      dword ptr [rdi + 0xef4]
00000001404ecb92 mov      edx, 0xffff0001
00000001404ecb97 mov      rcx, rdi
00000001404ecb9a call     0x1404ecea8
00000001404ecb9f mov      ebx, eax
00000001404ecba1 test     eax, eax
00000001404ecba3 jne      0x1404ece68
00000001404ecba9 mov      edx, 0xffff0003
00000001404ecbae mov      rcx, rdi
00000001404ecbb1 call     0x1404ec900
00000001404ecbb6 mov      ebx, eax
00000001404ecbb8 test     eax, eax
00000001404ecbba jne      0x1404ece1a
00000001404ecbc0 mov      ebx, dword ptr [rsp + 0x88]
00000001404ecbc7 mov      edx, 0x80000
00000001404ecbcc mov      rax, qword ptr [r13 + 0x28]
00000001404ecbd0 add      ebx, r15d
00000001404ecbd3 mov      r8d, ebx
00000001404ecbd6 mov      rcx, rdi
00000001404ecbd9 call     qword ptr [rip + 0x197719]
00000001404ecbdf mov      rax, qword ptr [r13 + 0x28]
00000001404ecbe3 mov      r8d, esi
00000001404ecbe6 mov      edx, 0x80004
00000001404ecbeb mov      rcx, rdi
00000001404ecbee call     qword ptr [rip + 0x197704]
00000001404ecbf4 mov      rax, qword ptr [r13 + 0x20]
00000001404ecbf8 mov      edx, 0x80000
00000001404ecbfd mov      rcx, rdi
00000001404ecc00 call     qword ptr [rip + 0x1976f2]
00000001404ecc06 mov      r8d, eax
00000001404ecc09 cmp      eax, ebx
00000001404ecc0b jne      0x1404ecdab
00000001404ecc11 mov      edx, 0xffff0004
00000001404ecc16 mov      rcx, rdi
00000001404ecc19 call     0x1404ecea8
00000001404ecc1e mov      ebx, eax
00000001404ecc20 test     eax, eax
00000001404ecc22 jne      0x1404ecd55
00000001404ecc28 xor      edx, edx
00000001404ecc2a mov      rcx, rdi
00000001404ecc2d call     0x1404ec900
00000001404ecc32 mov      ebx, eax
00000001404ecc34 test     eax, eax
00000001404ecc36 jne      0x1404eccd8
00000001404ecc3c test     esi, esi
00000001404ecc3e je       0x1404ecc7d
00000001404ecc40 mov      r14, qword ptr [rsp + 0x98]
00000001404ecc48 mov      ebp, r15d
00000001404ecc4b mov      rax, qword ptr [r13 + 0x20]
00000001404ecc4f lea      edx, [rbx + 0x80010]
00000001404ecc55 mov      rcx, rdi
00000001404ecc58 call     qword ptr [rip + 0x19769a]
00000001404ecc5e mov      ecx, ebx
00000001404ecc60 add      ebx, 4
00000001404ecc63 add      rcx, rbp
00000001404ecc66 mov      dword ptr [rcx + r14], eax
00000001404ecc6a cmp      ebx, esi
00000001404ecc6c jb       0x1404ecc4b
00000001404ecc6e mov      r14d, dword ptr [rsp + 0x90]
00000001404ecc76 lea      rbp, [rdi + 0x1198]
00000001404ecc7d mov      rax, qword ptr [r13 + 0x28]
00000001404ecc81 xor      r8d, r8d
00000001404ecc84 mov      edx, 0x80000
00000001404ecc89 mov      rcx, rdi
00000001404ecc8c call     qword ptr [rip + 0x197666]
00000001404ecc92 mov      rax, qword ptr [r13 + 0x28]
00000001404ecc96 xor      r8d, r8d
00000001404ecc99 mov      edx, 0x80004
00000001404ecc9e mov      rcx, rdi
00000001404ecca1 call     qword ptr [rip + 0x197651]
00000001404ecca7 mov      rax, qword ptr [rdi + 0x18]
00000001404eccab mov      rdx, rbp
00000001404eccae dec      dword ptr [rdi + 0xef4]
00000001404eccb4 mov      rcx, qword ptr [rdi + 8]
00000001404eccb8 mov      rax, qword ptr [rax + 0x110]
00000001404eccbf call     qword ptr [rip + 0x197633]
00000001404eccc5 add      r15d, esi
00000001404eccc8 cmp      r15d, r14d
00000001404ecccb jb       0x1404ecb67
00000001404eccd1 xor      eax, eax
00000001404eccd3 jmp      0x1404ece8f
00000001404eccd8 mov      rcx, qword ptr [rip + 0x433321]
00000001404eccdf lea      rax, [rip + 0x43331a]
00000001404ecce6 cmp      rcx, rax
00000001404ecce9 je       0x1404ecd26
00000001404ecceb cmp      byte ptr [rcx + 0x169], 2
00000001404eccf2 jb       0x1404ecd26
00000001404eccf4 mov      eax, dword ptr [rcx + 0x16c]
00000001404eccfa test     al, 8
00000001404eccfc je       0x1404ecd26
00000001404eccfe mov      rcx, qword ptr [rcx + 0x158]
00000001404ecd05 lea      r9, [rip + 0x170514]
00000001404ecd0c mov      edx, 0x39
00000001404ecd11 mov      dword ptr [rsp + 0x28], esi
00000001404ecd15 lea      r8, [rip + 0x4139c4]
00000001404ecd1c mov      dword ptr [rsp + 0x20], r15d
00000001404ecd21 call     0x140002b04
00000001404ecd26 mov      rax, qword ptr [r13 + 0x28]
00000001404ecd2a xor      r8d, r8d
00000001404ecd2d mov      edx, 0x80000
00000001404ecd32 mov      rcx, rdi
00000001404ecd35 call     qword ptr [rip + 0x1975bd]
00000001404ecd3b mov      rax, qword ptr [r13 + 0x28]
00000001404ecd3f xor      r8d, r8d
00000001404ecd42 mov      edx, 0x80004
00000001404ecd47 mov      rcx, rdi
00000001404ecd4a call     qword ptr [rip + 0x1975a8]
00000001404ecd50 jmp      0x1404ece68
00000001404ecd55 mov      rcx, qword ptr [rip + 0x4332a4]
00000001404ecd5c lea      rax, [rip + 0x43329d]
00000001404ecd63 cmp      rcx, rax
00000001404ecd66 je       0x1404ece68
00000001404ecd6c cmp      byte ptr [rcx + 0x169], 2
00000001404ecd73 jb       0x1404ece68
00000001404ecd79 mov      eax, dword ptr [rcx + 0x16c]
00000001404ecd7f test     al, 8
00000001404ecd81 je       0x1404ece68
00000001404ecd87 mov      rcx, qword ptr [rcx + 0x158]
00000001404ecd8e lea      r9, [rip + 0x17048b]
00000001404ecd95 mov      edx, 0x38
00000001404ecd9a lea      r8, [rip + 0x41393f]
00000001404ecda1 call     0x140008874
00000001404ecda6 jmp      0x1404ece68
00000001404ecdab mov      rcx, qword ptr [rip + 0x43324e]
00000001404ecdb2 lea      rax, [rip + 0x433247]
00000001404ecdb9 cmp      rcx, rax
00000001404ecdbc je       0x1404ecdf5
00000001404ecdbe cmp      byte ptr [rcx + 0x169], 2
00000001404ecdc5 jb       0x1404ecdf5
00000001404ecdc7 mov      eax, dword ptr [rcx + 0x16c]
00000001404ecdcd test     al, 8
00000001404ecdcf je       0x1404ecdf5
00000001404ecdd1 mov      rcx, qword ptr [rcx + 0x158]
00000001404ecdd8 lea      r9, [rip + 0x170441]
00000001404ecddf mov      dword ptr [rsp + 0x20], r8d
00000001404ecde4 mov      edx, 0x37
00000001404ecde9 lea      r8, [rip + 0x4138f0]
00000001404ecdf0 call     0x1400088d8
00000001404ecdf5 mov      rax, qword ptr [rdi + 0x18]
00000001404ecdf9 mov      rdx, rbp
00000001404ecdfc dec      dword ptr [rdi + 0xef4]
00000001404ece02 mov      rcx, qword ptr [rdi + 8]
00000001404ece06 mov      rax, qword ptr [rax + 0x110]
00000001404ece0d call     qword ptr [rip + 0x1974e5]
00000001404ece13 mov      eax, 0x5c
00000001404ece18 jmp      0x1404ece8f
00000001404ece1a mov      rcx, qword ptr [rip + 0x4331df]
00000001404ece21 lea      rax, [rip + 0x4331d8]
00000001404ece28 cmp      rcx, rax
00000001404ece2b je       0x1404ece68
00000001404ece2d cmp      byte ptr [rcx + 0x169], 2
00000001404ece34 jb       0x1404ece68
00000001404ece36 mov      eax, dword ptr [rcx + 0x16c]
00000001404ece3c test     al, 8
00000001404ece3e je       0x1404ece68
00000001404ece40 mov      rcx, qword ptr [rcx + 0x158]
00000001404ece47 lea      r9, [rip + 0x1703d2]
00000001404ece4e mov      edx, 0x36
00000001404ece53 mov      dword ptr [rsp + 0x28], esi
00000001404ece57 lea      r8, [rip + 0x413882]
00000001404ece5e mov      dword ptr [rsp + 0x20], r15d
00000001404ece63 call     0x140002b04
00000001404ece68 mov      rax, qword ptr [rdi + 0x18]
00000001404ece6c mov      rdx, rbp
00000001404ece6f dec      dword ptr [rdi + 0xef4]
00000001404ece75 mov      rcx, qword ptr [rdi + 8]
00000001404ece79 mov      rax, qword ptr [rax + 0x110]
00000001404ece80 call     qword ptr [rip + 0x197472]
00000001404ece86 mov      eax, ebx
00000001404ece88 jmp      0x1404ece8f
00000001404ece8a mov      eax, 0x52
00000001404ece8f mov      rbx, qword ptr [rsp + 0x80]
00000001404ece97 add      rsp, 0x40
00000001404ece9b pop      r15
00000001404ece9d pop      r14
00000001404ece9f pop      r13
00000001404ecea1 pop      r12
00000001404ecea3 pop      rdi
00000001404ecea4 pop      rsi
00000001404ecea5 pop      rbp
00000001404ecea6 ret      