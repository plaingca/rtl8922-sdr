0000000140281e88 mov      qword ptr [rsp + 0x20], rbx
0000000140281e8d push     rsi
0000000140281e8e push     rdi
0000000140281e8f push     r14
0000000140281e91 sub      rsp, 0x70
0000000140281e95 mov      rax, qword ptr [rip + 0x6a55c4]
0000000140281e9c xor      rax, rsp
0000000140281e9f mov      qword ptr [rsp + 0x60], rax
0000000140281ea4 mov      r11, qword ptr [rsp + 0xb0]
0000000140281eac xor      eax, eax
0000000140281eae mov      r14, qword ptr [rcx + 0x230]
0000000140281eb5 mov      edi, 1
0000000140281eba mov      r10, rdx
0000000140281ebd mov      qword ptr [rsp + 0x50], rax
0000000140281ec2 mov      dword ptr [rsp + 0x58], eax
0000000140281ec6 lea      ebx, [rdi + 6]
0000000140281ec9 cmp      r9d, ebx
0000000140281ecc jg       0x140281f28
0000000140281ece je       0x140281f1e
0000000140281ed0 mov      ecx, r9d
0000000140281ed3 test     r9d, r9d
0000000140281ed6 je       0x140281f17
0000000140281ed8 sub      ecx, edi
0000000140281eda je       0x140281fbe
0000000140281ee0 sub      ecx, edi
0000000140281ee2 je       0x140281f0d
0000000140281ee4 sub      ecx, edi
0000000140281ee6 je       0x140281f03
0000000140281ee8 sub      ecx, edi
0000000140281eea je       0x140281ef9
0000000140281eec cmp      ecx, 2
0000000140281eef jne      0x140281f44
0000000140281ef1 lea      ebx, [rdi + 0xf]
0000000140281ef4 jmp      0x140281fbe
0000000140281ef9 mov      ebx, 0xd
0000000140281efe jmp      0x140281fbe
0000000140281f03 mov      ebx, 0xc
0000000140281f08 jmp      0x140281fbe
0000000140281f0d mov      ebx, 8
0000000140281f12 jmp      0x140281fbe
0000000140281f17 xor      ebx, ebx
0000000140281f19 jmp      0x140281fbe
0000000140281f1e mov      ebx, 0x17
0000000140281f23 jmp      0x140281fbe
0000000140281f28 mov      ecx, r9d
0000000140281f2b sub      ecx, 8
0000000140281f2e je       0x140281fbc
0000000140281f34 sub      ecx, edi
0000000140281f36 je       0x140281fb5
0000000140281f38 sub      ecx, edi
0000000140281f3a je       0x140281fae
0000000140281f3c sub      ecx, edi
0000000140281f3e je       0x140281fa7
0000000140281f40 cmp      ecx, edi
0000000140281f42 je       0x140281fa0
0000000140281f44 mov      rcx, qword ptr [rip + 0x69e0b5]
0000000140281f4b lea      rsi, [rip + 0x69e0ae]
0000000140281f52 cmp      rcx, rsi
0000000140281f55 je       0x1402820b0
0000000140281f5b cmp      byte ptr [rcx + 0x169], 2
0000000140281f62 jb       0x1402820b0
0000000140281f68 mov      eax, dword ptr [rcx + 0x16c]
0000000140281f6e test     dil, al
0000000140281f71 je       0x1402820b0
0000000140281f77 mov      rcx, qword ptr [rcx + 0x158]
0000000140281f7e lea      r8, [rip + 0x416f5b]
0000000140281f85 mov      dword ptr [rsp + 0x20], r9d
0000000140281f8a mov      edx, 0x89
0000000140281f8f lea      r9, [rip + 0x38c3fa]
0000000140281f96 call     0x1400088d8
0000000140281f9b jmp      0x1402820b0
0000000140281fa0 mov      ebx, 0xb
0000000140281fa5 jmp      0x140281fbe
0000000140281fa7 mov      ebx, 6
0000000140281fac jmp      0x140281fbe
0000000140281fae mov      ebx, 0x19
0000000140281fb3 jmp      0x140281fbe
0000000140281fb5 mov      ebx, 0x13
0000000140281fba jmp      0x140281fbe
0000000140281fbc mov      ebx, edi
0000000140281fbe movzx    r9d, byte ptr [r10 + 0x5fc]
0000000140281fc6 movzx    edx, byte ptr [rdx + 0x19]
0000000140281fca movzx    r8d, byte ptr [r8 + 0x2e]
0000000140281fcf mov      r10d, dword ptr [r11]
0000000140281fd2 mov      byte ptr [rsp + 0x59], dl
0000000140281fd6 mov      byte ptr [rsp + 0x58], r8b
0000000140281fdb mov      dword ptr [rsp + 0x50], r9d
0000000140281fe0 mov      dword ptr [rsp + 0x54], r10d
0000000140281fe5 mov      rcx, qword ptr [rip + 0x69e014]
0000000140281fec lea      rsi, [rip + 0x69e00d]
0000000140281ff3 cmp      rcx, rsi
0000000140281ff6 je       0x14028204f
0000000140281ff8 cmp      byte ptr [rcx + 0x169], 4
0000000140281fff jb       0x14028204f
0000000140282001 mov      eax, dword ptr [rcx + 0x16c]
0000000140282007 test     al, 8
0000000140282009 je       0x14028204f
000000014028200b mov      rcx, qword ptr [rcx + 0x158]
0000000140282012 mov      eax, edx
0000000140282014 mov      dword ptr [rsp + 0x48], eax
0000000140282018 mov      edx, 0x88
000000014028201d mov      dword ptr [rsp + 0x40], r8d
0000000140282022 lea      rax, [rip + 0x399977]
0000000140282029 mov      dword ptr [rsp + 0x38], r10d
000000014028202e lea      r8, [rip + 0x416eab]
0000000140282035 mov      dword ptr [rsp + 0x30], r9d
000000014028203a lea      r9, [rip + 0x38c34f]
0000000140282041 mov      dword ptr [rsp + 0x28], ebx
0000000140282045 mov      qword ptr [rsp + 0x20], rax
000000014028204a call     0x1401ad98c
000000014028204f mov      rax, qword ptr [r14]
0000000140282052 lea      r8, [rsp + 0x50]
0000000140282057 mov      edx, ebx
0000000140282059 mov      rcx, r14
000000014028205c mov      rax, qword ptr [rax + 0x880]
0000000140282063 call     qword ptr [rip + 0x40228f]
0000000140282069 test     eax, eax
000000014028206b jne      0x140282071
000000014028206d xor      edi, edi
000000014028206f jmp      0x1402820b0
0000000140282071 mov      rcx, qword ptr [rip + 0x69df88]
0000000140282078 cmp      rcx, rsi
000000014028207b je       0x1402820b0
000000014028207d cmp      byte ptr [rcx + 0x169], 2
0000000140282084 jb       0x1402820b0
0000000140282086 mov      edx, dword ptr [rcx + 0x16c]
000000014028208c test     dil, dl
000000014028208f je       0x1402820b0
0000000140282091 mov      rcx, qword ptr [rcx + 0x158]
0000000140282098 lea      r9, [rip + 0x38c2f1]
000000014028209f mov      edx, 0x8a
00000001402820a4 lea      r8, [rip + 0x416e35]
00000001402820ab call     0x140008874
00000001402820b0 mov      eax, edi
00000001402820b2 mov      rcx, qword ptr [rsp + 0x60]
00000001402820b7 xor      rcx, rsp
00000001402820ba call     0x1405f45b0
00000001402820bf mov      rbx, qword ptr [rsp + 0xa8]
00000001402820c7 add      rsp, 0x70
00000001402820cb pop      r14
00000001402820cd pop      rdi
00000001402820ce pop      rsi
00000001402820cf ret      