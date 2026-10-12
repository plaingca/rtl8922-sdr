0000000140270e8c mov      rax, rsp
0000000140270e8f mov      qword ptr [rax + 8], rbx
0000000140270e93 mov      qword ptr [rax + 0x10], rbp
0000000140270e97 mov      qword ptr [rax + 0x18], rsi
0000000140270e9b mov      qword ptr [rax + 0x20], rdi
0000000140270e9f push     r12
0000000140270ea1 push     r14
0000000140270ea3 push     r15
0000000140270ea5 sub      rsp, 0x70
0000000140270ea9 mov      r14, rcx
0000000140270eac mov      rcx, qword ptr [rip + 0x6af14d]
0000000140270eb3 lea      r12, [rip + 0x6af146]
0000000140270eba cmp      rcx, r12
0000000140270ebd je       0x1402710fc
0000000140270ec3 cmp      byte ptr [rcx + 0x169], 4
0000000140270eca lea      rbp, [rip + 0x3abc5f]
0000000140270ed1 mov      r15d, 0xf
0000000140270ed7 jb       0x140270f84
0000000140270edd mov      eax, dword ptr [rcx + 0x16c]
0000000140270ee3 test     al, 8
0000000140270ee5 je       0x140270f84
0000000140270eeb mov      ebp, dword ptr [r14]
0000000140270eee mov      esi, ebp
0000000140270ef0 mov      rcx, qword ptr [rcx + 0x158]
0000000140270ef7 mov      r11d, ebp
0000000140270efa mov      r10d, ebp
0000000140270efd movzx    eax, dx
0000000140270f00 mov      r9d, ebp
0000000140270f03 shr      esi, 0x1c
0000000140270f06 mov      dword ptr [rsp + 0x68], esi
0000000140270f0a mov      r8d, ebp
0000000140270f0d mov      edi, ebp
0000000140270f0f shr      r9d, 8
0000000140270f13 mov      ebx, ebp
0000000140270f15 shr      r8d, 4
0000000140270f19 and      r9d, r15d
0000000140270f1c shr      edi, 0x18
0000000140270f1f and      r8d, r15d
0000000140270f22 shr      ebx, 0x14
0000000140270f25 and      ebp, r15d
0000000140270f28 shr      r11d, 0x10
0000000140270f2c and      edi, r15d
0000000140270f2f shr      r10d, 0xc
0000000140270f33 mov      dword ptr [rsp + 0x60], edi
0000000140270f37 and      ebx, r15d
0000000140270f3a mov      dword ptr [rsp + 0x58], ebx
0000000140270f3e and      r11d, r15d
0000000140270f41 mov      dword ptr [rsp + 0x50], r11d
0000000140270f46 and      r10d, r15d
0000000140270f49 mov      dword ptr [rsp + 0x48], r10d
0000000140270f4e mov      edx, 0x41e
0000000140270f53 mov      dword ptr [rsp + 0x40], r9d
0000000140270f58 lea      r9, [rip + 0x39d431]
0000000140270f5f mov      dword ptr [rsp + 0x38], r8d
0000000140270f64 lea      r8, [rip + 0x427f75]
0000000140270f6b mov      dword ptr [rsp + 0x30], ebp
0000000140270f6f lea      rbp, [rip + 0x3abbba]
0000000140270f76 mov      dword ptr [rsp + 0x28], eax
0000000140270f7a mov      qword ptr [rsp + 0x20], rbp
0000000140270f7f call     0x1401cdfc8
0000000140270f84 mov      rcx, qword ptr [rip + 0x6af075]
0000000140270f8b cmp      rcx, r12
0000000140270f8e je       0x1402710fc
0000000140270f94 cmp      byte ptr [rcx + 0x169], 4
0000000140270f9b jb       0x14027103b
0000000140270fa1 mov      eax, dword ptr [rcx + 0x16c]
0000000140270fa7 test     al, 8
0000000140270fa9 je       0x14027103b
0000000140270faf mov      esi, dword ptr [r14 + 4]
0000000140270fb3 mov      edx, 0x41f
0000000140270fb8 mov      rcx, qword ptr [rcx + 0x158]
0000000140270fbf mov      r11d, esi
0000000140270fc2 mov      r10d, esi
0000000140270fc5 shr      r11d, 0x14
0000000140270fc9 mov      r9d, esi
0000000140270fcc shr      r10d, 0x10
0000000140270fd0 mov      r8d, esi
0000000140270fd3 shr      r9d, 0xc
0000000140270fd7 mov      eax, esi
0000000140270fd9 shr      r8d, 8
0000000140270fdd and      r9d, r15d
0000000140270fe0 shr      eax, 4
0000000140270fe3 and      r8d, r15d
0000000140270fe6 mov      ebx, esi
0000000140270fe8 mov      edi, esi
0000000140270fea shr      ebx, 0x18
0000000140270fed shr      edi, 0x1c
0000000140270ff0 and      ebx, r15d
0000000140270ff3 mov      dword ptr [rsp + 0x60], edi
0000000140270ff7 and      r11d, r15d
0000000140270ffa mov      dword ptr [rsp + 0x58], ebx
0000000140270ffe and      r10d, r15d
0000000140271001 mov      dword ptr [rsp + 0x50], r11d
0000000140271006 and      eax, r15d
0000000140271009 mov      dword ptr [rsp + 0x48], r10d
000000014027100e and      esi, r15d
0000000140271011 mov      dword ptr [rsp + 0x40], r9d
0000000140271016 lea      r9, [rip + 0x39d373]
000000014027101d mov      dword ptr [rsp + 0x38], r8d
0000000140271022 lea      r8, [rip + 0x427eb7]
0000000140271029 mov      dword ptr [rsp + 0x30], eax
000000014027102d mov      dword ptr [rsp + 0x28], esi
0000000140271031 mov      qword ptr [rsp + 0x20], rbp
0000000140271036 call     0x14011f810
000000014027103b mov      rcx, qword ptr [rip + 0x6aefbe]
0000000140271042 cmp      rcx, r12
0000000140271045 je       0x1402710fc
000000014027104b cmp      byte ptr [rcx + 0x169], 4
0000000140271052 jb       0x1402710fc
0000000140271058 mov      eax, dword ptr [rcx + 0x16c]
000000014027105e test     al, 8
0000000140271060 je       0x1402710fc
0000000140271066 mov      r14d, dword ptr [r14 + 8]
000000014027106a lea      r9, [rip + 0x39d31f]
0000000140271071 mov      rcx, qword ptr [rcx + 0x158]
0000000140271078 lea      r8, [rip + 0x427e61]
000000014027107f mov      r11d, r14d
0000000140271082 mov      r10d, r14d
0000000140271085 mov      eax, r14d
0000000140271088 shr      r11d, 0xc
000000014027108c shr      eax, 4
000000014027108f mov      ebp, r14d
0000000140271092 and      eax, r15d
0000000140271095 shr      ebp, 0x13
0000000140271098 mov      esi, r14d
000000014027109b shr      r10d, 8
000000014027109f mov      edi, r14d
00000001402710a2 shr      esi, 0x12
00000001402710a5 mov      ebx, r14d
00000001402710a8 shr      edi, 0x11
00000001402710ab and      ebp, 1
00000001402710ae shr      ebx, 0x10
00000001402710b1 mov      dword ptr [rsp + 0x60], ebp
00000001402710b5 and      esi, 1
00000001402710b8 mov      dword ptr [rsp + 0x58], esi
00000001402710bc and      edi, 1
00000001402710bf mov      dword ptr [rsp + 0x50], edi
00000001402710c3 and      ebx, 1
00000001402710c6 mov      dword ptr [rsp + 0x48], ebx
00000001402710ca and      r11d, r15d
00000001402710cd mov      dword ptr [rsp + 0x40], r11d
00000001402710d2 and      r10d, r15d
00000001402710d5 mov      dword ptr [rsp + 0x38], r10d
00000001402710da and      r14d, r15d
00000001402710dd mov      dword ptr [rsp + 0x30], eax
00000001402710e1 mov      edx, 0x420
00000001402710e6 lea      rax, [rip + 0x3aba43]
00000001402710ed mov      dword ptr [rsp + 0x28], r14d
00000001402710f2 mov      qword ptr [rsp + 0x20], rax
00000001402710f7 call     0x14011f810
00000001402710fc lea      r11, [rsp + 0x70]
0000000140271101 mov      rbx, qword ptr [r11 + 0x20]
0000000140271105 mov      rbp, qword ptr [r11 + 0x28]
0000000140271109 mov      rsi, qword ptr [r11 + 0x30]
000000014027110d mov      rdi, qword ptr [r11 + 0x38]
0000000140271111 mov      rsp, r11
0000000140271114 pop      r15
0000000140271116 pop      r14
0000000140271118 pop      r12
000000014027111a ret      