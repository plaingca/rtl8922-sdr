00000001403ef22c mov      rax, rsp
00000001403ef22f mov      qword ptr [rax + 8], rbx
00000001403ef233 mov      qword ptr [rax + 0x10], rbp
00000001403ef237 mov      qword ptr [rax + 0x18], rsi
00000001403ef23b push     r12
00000001403ef23d push     r14
00000001403ef23f push     r15
00000001403ef241 sub      rsp, 0x60
00000001403ef245 movzx    r15d, r9b
00000001403ef249 mov      r12, rcx
00000001403ef24c movzx    r14d, r8b
00000001403ef250 movzx    ebx, dl
00000001403ef253 mov      dword ptr [rax - 0x38], 0x4158
00000001403ef25a mov      dword ptr [rax - 0x34], 0x4558
00000001403ef261 mov      dword ptr [rax - 0x30], 0x4168
00000001403ef268 mov      dword ptr [rax - 0x2c], 0x4568
00000001403ef26f mov      dword ptr [rax - 0x28], 0x4108
00000001403ef276 mov      dword ptr [rax - 0x24], 0x4508
00000001403ef27d mov      rcx, qword ptr [rip + 0x530d7c]
00000001403ef284 lea      rax, [rip + 0x530d75]
00000001403ef28b cmp      rcx, rax
00000001403ef28e je       0x1403ef2cb
00000001403ef290 cmp      byte ptr [rcx + 0x1e9], 4
00000001403ef297 jb       0x1403ef2cb
00000001403ef299 test     dword ptr [rcx + 0x1ec], 0x10000000
00000001403ef2a3 je       0x1403ef2c4
00000001403ef2a5 mov      rcx, qword ptr [rcx + 0x1d8]
00000001403ef2ac lea      r9, [rip + 0x260c9d]
00000001403ef2b3 mov      edx, 0x5b
00000001403ef2b8 lea      r8, [rip + 0x2e6231]
00000001403ef2bf call     0x140008874
00000001403ef2c4 lea      rax, [rip + 0x530d35]
00000001403ef2cb cmp      dword ptr [rsp + 0xa0], 1
00000001403ef2d3 jle      0x1403ef327
00000001403ef2d5 mov      rcx, qword ptr [rip + 0x530d24]
00000001403ef2dc cmp      rcx, rax
00000001403ef2df je       0x1403ef3dd
00000001403ef2e5 cmp      byte ptr [rcx + 0x169], 3
00000001403ef2ec jb       0x1403ef3dd
00000001403ef2f2 test     dword ptr [rcx + 0x16c], 0x1000
00000001403ef2fc je       0x1403ef3dd
00000001403ef302 mov      r9d, dword ptr [rsp + 0xa0]
00000001403ef30a lea      r8, [rip + 0x2e61df]
00000001403ef311 mov      rcx, qword ptr [rcx + 0x158]
00000001403ef318 mov      edx, 0x5c
00000001403ef31d call     0x140001bb0
00000001403ef322 jmp      0x1403ef3dd
00000001403ef327 mov      esi, dword ptr [rsp + 0xa8]
00000001403ef32e mov      ebp, ebx
00000001403ef330 movsxd   rbx, dword ptr [rsp + 0xa0]
00000001403ef338 mov      r9d, ebp
00000001403ef33b mov      r8d, 0x7000
00000001403ef341 mov      dword ptr [rsp + 0x20], esi
00000001403ef345 mov      rcx, r12
00000001403ef348 mov      edx, dword ptr [rsp + rbx*4 + 0x40]
00000001403ef34c call     0x140316994
00000001403ef351 mov      edx, dword ptr [rsp + rbx*4 + 0x48]
00000001403ef355 mov      r9d, r14d
00000001403ef358 mov      r8d, 0x40000
00000001403ef35e mov      dword ptr [rsp + 0x20], esi
00000001403ef362 mov      rcx, r12
00000001403ef365 call     0x140316994
00000001403ef36a mov      edx, dword ptr [rsp + rbx*4 + 0x50]
00000001403ef36e mov      r9d, r15d
00000001403ef371 mov      r8d, 0x3e000000
00000001403ef377 mov      dword ptr [rsp + 0x20], esi
00000001403ef37b mov      rcx, r12
00000001403ef37e call     0x140316994
00000001403ef383 mov      rcx, qword ptr [rip + 0x530c76]
00000001403ef38a lea      rax, [rip + 0x530c6f]
00000001403ef391 cmp      rcx, rax
00000001403ef394 je       0x1403ef3dd
00000001403ef396 cmp      byte ptr [rcx + 0x1e9], 4
00000001403ef39d jb       0x1403ef3dd
00000001403ef39f test     dword ptr [rcx + 0x1ec], 0x10000000
00000001403ef3a9 je       0x1403ef3dd
00000001403ef3ab mov      r9d, dword ptr [rsp + 0xa0]
00000001403ef3b3 lea      r8, [rip + 0x2e6136]
00000001403ef3ba mov      rcx, qword ptr [rcx + 0x1d8]
00000001403ef3c1 mov      edx, 0x5d
00000001403ef3c6 mov      dword ptr [rsp + 0x38], r15d
00000001403ef3cb mov      dword ptr [rsp + 0x30], r14d
00000001403ef3d0 mov      dword ptr [rsp + 0x28], ebp
00000001403ef3d4 mov      dword ptr [rsp + 0x20], esi
00000001403ef3d8 call     0x140039d40
00000001403ef3dd lea      r11, [rsp + 0x60]
00000001403ef3e2 mov      rbx, qword ptr [r11 + 0x20]
00000001403ef3e6 mov      rbp, qword ptr [r11 + 0x28]
00000001403ef3ea mov      rsi, qword ptr [r11 + 0x30]
00000001403ef3ee mov      rsp, r11
00000001403ef3f1 pop      r15
00000001403ef3f3 pop      r14
00000001403ef3f5 pop      r12
00000001403ef3f7 ret      