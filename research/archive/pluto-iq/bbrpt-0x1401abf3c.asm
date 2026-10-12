00000001401abf3c mov      qword ptr [rsp + 0x10], rbx
00000001401abf41 mov      qword ptr [rsp + 0x18], rbp
00000001401abf46 push     rsi
00000001401abf47 push     rdi
00000001401abf48 push     r14
00000001401abf4a sub      rsp, 0x30
00000001401abf4e mov      rbp, qword ptr [rcx + 0x798]
00000001401abf55 mov      rdi, rcx
00000001401abf58 xor      ebx, ebx
00000001401abf5a and      qword ptr [rsp + 0x50], rbx
00000001401abf5f inc      dword ptr [rbp + 0x10430]
00000001401abf65 mov      rcx, qword ptr [rcx + 0x8d08]
00000001401abf6c call     0x140241f68
00000001401abf71 mov      esi, eax
00000001401abf73 test     eax, eax
00000001401abf75 jne      0x1401abfdc
00000001401abf77 inc      dword ptr [rbp + 0x10434]
00000001401abf7d mov      rcx, qword ptr [rip + 0x77407c]
00000001401abf84 lea      r14, [rip + 0x774075]
00000001401abf8b cmp      rcx, r14
00000001401abf8e je       0x1401abfd2
00000001401abf90 cmp      byte ptr [rcx + 0x169], 3
00000001401abf97 jb       0x1401abfd2
00000001401abf99 mov      eax, dword ptr [rcx + 0x16c]
00000001401abf9f test     al, 1
00000001401abfa1 je       0x1401abfd2
00000001401abfa3 and      dword ptr [rsp + 0x28], ebx
00000001401abfa7 lea      rax, [rip + 0x462e72]
00000001401abfae mov      rcx, qword ptr [rcx + 0x158]
00000001401abfb5 lea      r9, [rip + 0x4623d4]
00000001401abfbc mov      edx, 0x95
00000001401abfc1 mov      qword ptr [rsp + 0x20], rax
00000001401abfc6 lea      r8, [rip + 0x4ec1b3]
00000001401abfcd call     0x14003ca14
00000001401abfd2 mov      ebx, 1
00000001401abfd7 jmp      0x1401ac15d
00000001401abfdc mov      rcx, qword ptr [rip + 0x77401d]
00000001401abfe3 lea      r14, [rip + 0x774016]
00000001401abfea cmp      rcx, r14
00000001401abfed je       0x1401ac031
00000001401abfef cmp      byte ptr [rcx + 0x169], 5
00000001401abff6 jb       0x1401ac031
00000001401abff8 mov      eax, dword ptr [rcx + 0x16c]
00000001401abffe test     al, 1
00000001401ac000 je       0x1401ac031
00000001401ac002 mov      rcx, qword ptr [rcx + 0x158]
00000001401ac009 lea      rax, [rip + 0x462e10]
00000001401ac010 mov      edx, 0x96
00000001401ac015 mov      dword ptr [rsp + 0x28], esi
00000001401ac019 lea      r9, [rip + 0x462370]
00000001401ac020 mov      qword ptr [rsp + 0x20], rax
00000001401ac025 lea      r8, [rip + 0x4ec154]
00000001401ac02c call     0x14003ca14
00000001401ac031 test     sil, 2
00000001401ac035 je       0x1401ac05e
00000001401ac037 inc      dword ptr [rbp + 0x1043c]
00000001401ac03d mov      rcx, rdi
00000001401ac040 mov      rax, qword ptr [rdi + 0x8b88]
00000001401ac047 mov      rax, qword ptr [rax + 0xe0]
00000001401ac04e call     qword ptr [rip + 0x4d82a4]
00000001401ac054 mov      rcx, rdi
00000001401ac057 call     0x1401d6b44
00000001401ac05c mov      ebx, eax
00000001401ac05e test     sil, 4
00000001401ac062 je       0x1401ac06a
00000001401ac064 inc      dword ptr [rbp + 0x10438]
00000001401ac06a test     sil, 0x10
00000001401ac06e je       0x1401ac087
00000001401ac070 mov      dword ptr [rsp + 0x50], 7
00000001401ac078 mov      rcx, rdi
00000001401ac07b mov      rdx, qword ptr [rsp + 0x50]
00000001401ac080 call     0x140253030
00000001401ac085 mov      ebx, eax
00000001401ac087 test     sil, 0x20
00000001401ac08b je       0x1401ac097
00000001401ac08d mov      rcx, rdi
00000001401ac090 call     0x140252f60
00000001401ac095 mov      ebx, eax
00000001401ac097 test     sil, 0x40
00000001401ac09b je       0x1401ac0b4
00000001401ac09d mov      dword ptr [rsp + 0x50], 7
00000001401ac0a5 mov      rcx, rdi
00000001401ac0a8 mov      rdx, qword ptr [rsp + 0x50]
00000001401ac0ad call     0x140253030
00000001401ac0b2 mov      ebx, eax
00000001401ac0b4 test     sil, sil
00000001401ac0b7 jns      0x1401ac0c9
00000001401ac0b9 xor      ebx, ebx
00000001401ac0bb cmp      byte ptr [rdi + 0xbdbd], 1
00000001401ac0c2 jne      0x1401ac0c9
00000001401ac0c4 mov      ebx, 0xe
00000001401ac0c9 bt       esi, 8
00000001401ac0cd jae      0x1401ac109
00000001401ac0cf inc      dword ptr [rbp + 0x10440]
00000001401ac0d5 mov      rcx, rdi
00000001401ac0d8 mov      rax, qword ptr [rdi + 0x8b88]
00000001401ac0df mov      rax, qword ptr [rax + 0xe0]
00000001401ac0e6 call     qword ptr [rip + 0x4d820c]
00000001401ac0ec mov      rcx, rdi
00000001401ac0ef call     0x1401d6b44
00000001401ac0f4 mov      rcx, qword ptr [rdi + 0x798]
00000001401ac0fb lea      rdx, [rdi + 0x7a0]
00000001401ac102 call     0x1401db590
00000001401ac107 mov      ebx, eax
00000001401ac109 test     esi, 0xc00
00000001401ac10f je       0x1401ac11b
00000001401ac111 mov      rcx, rdi
00000001401ac114 call     0x1401a8cc0
00000001401ac119 mov      ebx, eax
00000001401ac11b test     ebx, ebx
00000001401ac11d je       0x1401ac15d
00000001401ac11f mov      rcx, qword ptr [rip + 0x773eda]
00000001401ac126 cmp      rcx, r14
00000001401ac129 je       0x1401ac15d
00000001401ac12b cmp      byte ptr [rcx + 0x169], 4
00000001401ac132 jb       0x1401ac15d
00000001401ac134 mov      eax, dword ptr [rcx + 0x16c]
00000001401ac13a test     al, 1
00000001401ac13c je       0x1401ac15d
00000001401ac13e mov      rcx, qword ptr [rcx + 0x158]
00000001401ac145 lea      r9, [rip + 0x462244]
00000001401ac14c mov      edx, 0x97
00000001401ac151 lea      r8, [rip + 0x4ec028]
00000001401ac158 call     0x140008874
00000001401ac15d mov      rcx, qword ptr [rdi + 0x798]
00000001401ac164 xor      edx, edx
00000001401ac166 mov      rax, qword ptr [rcx + 0x95b0]
00000001401ac16d mov      rcx, qword ptr [rcx + 0x10330]
00000001401ac174 call     qword ptr [rip + 0x4d817e]
00000001401ac17a mov      rbp, qword ptr [rsp + 0x60]
00000001401ac17f mov      eax, ebx
00000001401ac181 mov      rbx, qword ptr [rsp + 0x58]
00000001401ac186 add      rsp, 0x30
00000001401ac18a pop      r14
00000001401ac18c pop      rdi
00000001401ac18d pop      rsi
00000001401ac18e ret      