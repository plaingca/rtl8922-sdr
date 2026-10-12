00000001403a92e0 mov      qword ptr [rsp + 8], rbx
00000001403a92e5 mov      qword ptr [rsp + 0x10], rbp
00000001403a92ea mov      qword ptr [rsp + 0x18], rsi
00000001403a92ef push     rdi
00000001403a92f0 sub      rsp, 0x20
00000001403a92f4 mov      rdi, qword ptr [rdx + 8]
00000001403a92f8 mov      rbx, rdx
00000001403a92fb mov      rsi, rcx
00000001403a92fe call     0x1404d12c8
00000001403a9303 mov      byte ptr [rsi + 0x963c], 4
00000001403a930a mov      eax, 0x3ff
00000001403a930f xor      ebp, ebp
00000001403a9311 mov      rcx, rbx
00000001403a9314 mov      dword ptr [rsi + 0x963e], ebp
00000001403a931a mov      word ptr [rdi + 0x4a4], ax
00000001403a9321 mov      eax, 0x2cc4
00000001403a9326 mov      dword ptr [rdi + 0x4a8], eax
00000001403a932c mov      dword ptr [rdi + 0x4ac], eax
00000001403a9332 mov      dword ptr [rdi + 0x4a0], 0x3ff03ff
00000001403a933c call     0x140289c60
00000001403a9341 mov      rcx, rbx
00000001403a9344 mov      byte ptr [rdi + 0x4b1], al
00000001403a934a call     0x140289c30
00000001403a934f mov      rcx, rbx
00000001403a9352 mov      byte ptr [rdi + 0x4b4], al
00000001403a9358 call     0x140289c48
00000001403a935d mov      dl, 1
00000001403a935f mov      byte ptr [rdi + 0x4b5], al
00000001403a9365 mov      rcx, rbx
00000001403a9368 mov      word ptr [rdi + 0x4b2], 0x808
00000001403a9371 mov      word ptr [rdi + 0x4b6], 0x806
00000001403a937a call     0x140289bf0
00000001403a937f mov      byte ptr [rsi + 0x96cd], al
00000001403a9385 lea      ecx, [rbp + 0xc]
00000001403a9388 mov      word ptr [rsi + 0x96d0], 0x7ff
00000001403a9391 sub      cl, al
00000001403a9393 mov      byte ptr [rsi + 0x96ce], cl
00000001403a9399 lea      ecx, [rbp + 2]
00000001403a939c mov      rax, qword ptr [rbx + 8]
00000001403a93a0 mov      rbx, qword ptr [rsp + 0x30]
00000001403a93a5 mov      dword ptr [rax + 0x488], ecx
00000001403a93ab mov      dword ptr [rax + 0x48c], 1
00000001403a93b5 mov      dword ptr [rax + 0x490], ecx
00000001403a93bb mov      dword ptr [rax + 0x494], ecx
00000001403a93c1 mov      dword ptr [rax + 0x498], ecx
00000001403a93c7 mov      word ptr [rax + 0x49d], 0xfefe
00000001403a93d0 mov      byte ptr [rax + 0x49c], 0xfe
00000001403a93d7 mov      byte ptr [rdi + 0x38b], bpl
00000001403a93de mov      word ptr [rsi + 0x96db], bp
00000001403a93e5 mov      rbp, qword ptr [rsp + 0x38]
00000001403a93ea mov      rsi, qword ptr [rsp + 0x40]
00000001403a93ef mov      byte ptr [rdi + 0x49f], 1
00000001403a93f6 add      rsp, 0x20
00000001403a93fa pop      rdi
00000001403a93fb ret      