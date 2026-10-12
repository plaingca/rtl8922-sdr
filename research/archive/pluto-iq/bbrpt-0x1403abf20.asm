00000001403abf20 mov      qword ptr [rsp + 8], rbx
00000001403abf25 mov      qword ptr [rsp + 0x10], rbp
00000001403abf2a mov      qword ptr [rsp + 0x18], rsi
00000001403abf2f push     rdi
00000001403abf30 sub      rsp, 0x20
00000001403abf34 mov      rdi, qword ptr [rdx + 8]
00000001403abf38 mov      rbx, rdx
00000001403abf3b mov      rsi, rcx
00000001403abf3e call     0x1404d56b4
00000001403abf43 mov      byte ptr [rsi + 0x963c], 4
00000001403abf4a mov      eax, 0x3ff
00000001403abf4f xor      ebp, ebp
00000001403abf51 mov      rcx, rbx
00000001403abf54 mov      dword ptr [rsi + 0x963e], ebp
00000001403abf5a mov      word ptr [rdi + 0x4a4], ax
00000001403abf61 mov      eax, 0x2cc4
00000001403abf66 mov      dword ptr [rdi + 0x4a8], eax
00000001403abf6c mov      dword ptr [rdi + 0x4ac], eax
00000001403abf72 mov      dword ptr [rdi + 0x4a0], 0x3ff03ff
00000001403abf7c call     0x140289c60
00000001403abf81 mov      rcx, rbx
00000001403abf84 mov      byte ptr [rdi + 0x4b1], al
00000001403abf8a call     0x140289c30
00000001403abf8f mov      rcx, rbx
00000001403abf92 mov      byte ptr [rdi + 0x4b4], al
00000001403abf98 call     0x140289c48
00000001403abf9d mov      dl, 1
00000001403abf9f mov      byte ptr [rdi + 0x4b5], al
00000001403abfa5 mov      rcx, rbx
00000001403abfa8 mov      word ptr [rdi + 0x4b2], 0x808
00000001403abfb1 mov      word ptr [rdi + 0x4b6], 0x806
00000001403abfba call     0x140289bf0
00000001403abfbf mov      byte ptr [rsi + 0x96cd], al
00000001403abfc5 lea      ecx, [rbp + 0xc]
00000001403abfc8 mov      word ptr [rsi + 0x96d0], 0x7ff
00000001403abfd1 sub      cl, al
00000001403abfd3 mov      byte ptr [rsi + 0x96ce], cl
00000001403abfd9 lea      ecx, [rbp + 2]
00000001403abfdc mov      rax, qword ptr [rbx + 8]
00000001403abfe0 mov      rbx, qword ptr [rsp + 0x30]
00000001403abfe5 mov      dword ptr [rax + 0x488], ecx
00000001403abfeb mov      dword ptr [rax + 0x48c], 1
00000001403abff5 mov      dword ptr [rax + 0x490], ecx
00000001403abffb mov      dword ptr [rax + 0x494], ecx
00000001403ac001 mov      dword ptr [rax + 0x498], ecx
00000001403ac007 mov      word ptr [rax + 0x49d], 0xfefe
00000001403ac010 mov      byte ptr [rax + 0x49c], 0xfe
00000001403ac017 mov      byte ptr [rdi + 0x38b], bpl
00000001403ac01e mov      word ptr [rsi + 0x96db], bp
00000001403ac025 mov      rbp, qword ptr [rsp + 0x38]
00000001403ac02a mov      rsi, qword ptr [rsp + 0x40]
00000001403ac02f mov      byte ptr [rdi + 0x49f], 1
00000001403ac036 add      rsp, 0x20
00000001403ac03a pop      rdi
00000001403ac03b ret      