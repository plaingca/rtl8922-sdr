00000001404ebef0 mov      qword ptr [rsp + 8], rbx
00000001404ebef5 mov      qword ptr [rsp + 0x10], rbp
00000001404ebefa mov      qword ptr [rsp + 0x18], rsi
00000001404ebeff push     rdi
00000001404ebf00 push     r12
00000001404ebf02 push     r13
00000001404ebf04 push     r14
00000001404ebf06 push     r15
00000001404ebf08 sub      rsp, 0x30
00000001404ebf0c mov      rax, qword ptr [rcx]
00000001404ebf0f mov      rbp, r9
00000001404ebf12 mov      esi, r8d
00000001404ebf15 mov      r14d, edx
00000001404ebf18 mov      rdi, rcx
00000001404ebf1b mov      r13, qword ptr [rax]
00000001404ebf1e test     dl, 3
00000001404ebf21 je       0x1404ebf50
00000001404ebf23 mov      rcx, qword ptr [rip + 0x4340d6]
00000001404ebf2a lea      rax, [rip + 0x4340cf]
00000001404ebf31 cmp      rcx, rax
00000001404ebf34 je       0x1404ebf9b
00000001404ebf36 cmp      byte ptr [rcx + 0x169], 2
00000001404ebf3d jb       0x1404ebf9b
00000001404ebf3f mov      eax, dword ptr [rcx + 0x16c]
00000001404ebf45 test     al, 8
00000001404ebf47 je       0x1404ebf9b
00000001404ebf49 mov      edx, 0x3f
00000001404ebf4e jmp      0x1404ebf81
00000001404ebf50 test     sil, 3
00000001404ebf54 je       0x1404ebfa5
00000001404ebf56 mov      rcx, qword ptr [rip + 0x4340a3]
00000001404ebf5d lea      rax, [rip + 0x43409c]
00000001404ebf64 cmp      rcx, rax
00000001404ebf67 je       0x1404ebf9b
00000001404ebf69 cmp      byte ptr [rcx + 0x169], 2
00000001404ebf70 jb       0x1404ebf9b
00000001404ebf72 mov      eax, dword ptr [rcx + 0x16c]
00000001404ebf78 test     al, 8
00000001404ebf7a je       0x1404ebf9b
00000001404ebf7c mov      edx, 0x40
00000001404ebf81 mov      rcx, qword ptr [rcx + 0x158]
00000001404ebf88 lea      r9, [rip + 0x1712f1]
00000001404ebf8f lea      r8, [rip + 0x41474a]
00000001404ebf96 call     0x140008874
00000001404ebf9b mov      eax, 0x96
00000001404ebfa0 jmp      0x1404ec141
00000001404ebfa5 xor      ebx, ebx
00000001404ebfa7 test     rbp, rbp
00000001404ebfaa jne      0x1404ebff9
00000001404ebfac mov      rcx, qword ptr [rip + 0x43404d]
00000001404ebfb3 lea      rax, [rip + 0x434046]
00000001404ebfba cmp      rcx, rax
00000001404ebfbd je       0x1404ebfef
00000001404ebfbf cmp      byte ptr [rcx + 0x169], 2
00000001404ebfc6 jb       0x1404ebfef
00000001404ebfc8 mov      eax, dword ptr [rcx + 0x16c]
00000001404ebfce test     al, 8
00000001404ebfd0 je       0x1404ebfef
00000001404ebfd2 mov      rcx, qword ptr [rcx + 0x158]
00000001404ebfd9 lea      edx, [rbx + 0x41]
00000001404ebfdc lea      r9, [rip + 0x17129d]
00000001404ebfe3 lea      r8, [rip + 0x4146f6]
00000001404ebfea call     0x140008874
00000001404ebfef mov      eax, 9
00000001404ebff4 jmp      0x1404ec141
00000001404ebff9 mov      rax, qword ptr [rcx + 0x18]
00000001404ebffd lea      r12, [rcx + 0x1198]
00000001404ec004 mov      rcx, qword ptr [rcx + 8]
00000001404ec008 mov      rdx, r12
00000001404ec00b mov      rax, qword ptr [rax + 0x108]
00000001404ec012 call     qword ptr [rip + 0x1982e0]
00000001404ec018 inc      dword ptr [rdi + 0xef4]
00000001404ec01e mov      edx, r14d
00000001404ec021 mov      rcx, rdi
00000001404ec024 call     0x1404edbd8
00000001404ec029 mov      r15d, eax
00000001404ec02c cmp      eax, 0x10
00000001404ec02f jne      0x1404ec0d6
00000001404ec035 cmp      byte ptr [rdi + 0x24a], bl
00000001404ec03b je       0x1404ec0db
00000001404ec041 mov      rcx, qword ptr [rip + 0x433fb8]
00000001404ec048 lea      rax, [rip + 0x433fb1]
00000001404ec04f cmp      rcx, rax
00000001404ec052 je       0x1404ec08a
00000001404ec054 cmp      byte ptr [rcx + 0x169], 1
00000001404ec05b jb       0x1404ec08a
00000001404ec05d mov      eax, dword ptr [rcx + 0x16c]
00000001404ec063 test     al, 8
00000001404ec065 je       0x1404ec08a
00000001404ec067 mov      rcx, qword ptr [rcx + 0x158]
00000001404ec06e lea      edx, [r15 + 0x32]
00000001404ec072 lea      r9, [rip + 0x171207]
00000001404ec079 mov      dword ptr [rsp + 0x20], r14d
00000001404ec07e lea      r8, [rip + 0x41465b]
00000001404ec085 call     0x1400088d8
00000001404ec08a mov      rax, qword ptr [rdi + 0x18]
00000001404ec08e mov      rdx, r12
00000001404ec091 dec      dword ptr [rdi + 0xef4]
00000001404ec097 mov      rcx, qword ptr [rdi + 8]
00000001404ec09b mov      rax, qword ptr [rax + 0x110]
00000001404ec0a2 call     qword ptr [rip + 0x198250]
00000001404ec0a8 mov      r9, rbp
00000001404ec0ab mov      r8d, esi
00000001404ec0ae mov      edx, r14d
00000001404ec0b1 mov      rcx, rdi
00000001404ec0b4 call     0x1404ec9e8
00000001404ec0b9 mov      edx, eax
00000001404ec0bb test     eax, eax
00000001404ec0bd je       0x1404ec0d2
00000001404ec0bf shr      esi, 2
00000001404ec0c2 test     esi, esi
00000001404ec0c4 je       0x1404ec0d2
00000001404ec0c6 mov      ecx, esi
00000001404ec0c8 mov      eax, 0xeaeaea99
00000001404ec0cd mov      rdi, rbp
00000001404ec0d0 rep stosd dword ptr [rdi], eax
00000001404ec0d2 mov      eax, edx
00000001404ec0d4 jmp      0x1404ec141
00000001404ec0d6 test     r15d, r15d
00000001404ec0d9 je       0x1404ec0fe
00000001404ec0db mov      rax, qword ptr [rdi + 0x18]
00000001404ec0df mov      rdx, r12
00000001404ec0e2 dec      dword ptr [rdi + 0xef4]
00000001404ec0e8 mov      rcx, qword ptr [rdi + 8]
00000001404ec0ec mov      rax, qword ptr [rax + 0x110]
00000001404ec0f3 call     qword ptr [rip + 0x1981ff]
00000001404ec0f9 mov      eax, r15d
00000001404ec0fc jmp      0x1404ec141
00000001404ec0fe test     esi, esi
00000001404ec100 je       0x1404ec121
00000001404ec102 mov      rax, qword ptr [r13 + 0x20]
00000001404ec106 lea      edx, [rbx + 0x80000]
00000001404ec10c mov      rcx, rdi
00000001404ec10f call     qword ptr [rip + 0x1981e3]
00000001404ec115 mov      ecx, ebx
00000001404ec117 add      ebx, 4
00000001404ec11a mov      dword ptr [rcx + rbp], eax
00000001404ec11d cmp      ebx, esi
00000001404ec11f jb       0x1404ec102
00000001404ec121 mov      rax, qword ptr [rdi + 0x18]
00000001404ec125 mov      rdx, r12
00000001404ec128 dec      dword ptr [rdi + 0xef4]
00000001404ec12e mov      rcx, qword ptr [rdi + 8]
00000001404ec132 mov      rax, qword ptr [rax + 0x110]
00000001404ec139 call     qword ptr [rip + 0x1981b9]
00000001404ec13f xor      eax, eax
00000001404ec141 mov      rbx, qword ptr [rsp + 0x60]
00000001404ec146 mov      rbp, qword ptr [rsp + 0x68]
00000001404ec14b mov      rsi, qword ptr [rsp + 0x70]
00000001404ec150 add      rsp, 0x30
00000001404ec154 pop      r15
00000001404ec156 pop      r14
00000001404ec158 pop      r13
00000001404ec15a pop      r12
00000001404ec15c pop      rdi
00000001404ec15d ret      