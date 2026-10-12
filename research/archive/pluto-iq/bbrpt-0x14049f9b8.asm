000000014049f9b8 mov      qword ptr [rsp + 0x10], rbx
000000014049f9bd mov      qword ptr [rsp + 0x18], rsi
000000014049f9c2 push     rbp
000000014049f9c3 push     rdi
000000014049f9c4 push     r12
000000014049f9c6 push     r13
000000014049f9c8 push     r14
000000014049f9ca mov      rbp, rsp
000000014049f9cd sub      rsp, 0x30
000000014049f9d1 mov      rbx, rcx
000000014049f9d4 mov      byte ptr [rbp + 0x30], 0
000000014049f9d8 mov      rcx, qword ptr [rip + 0x480621]
000000014049f9df lea      r13, [rip + 0x48061a]
000000014049f9e6 lea      r12, [rip + 0x448603]
000000014049f9ed mov      r14d, 1
000000014049f9f3 cmp      rcx, r13
000000014049f9f6 je       0x14049fa27
000000014049f9f8 cmp      byte ptr [rcx + 0x229], 4
000000014049f9ff jb       0x14049fa27
000000014049fa01 mov      eax, dword ptr [rcx + 0x22c]
000000014049fa07 test     r14b, al
000000014049fa0a je       0x14049fa27
000000014049fa0c mov      rcx, qword ptr [rcx + 0x218]
000000014049fa13 lea      r9, [rip + 0x1ba9b6]
000000014049fa1a mov      edx, 0x92
000000014049fa1f mov      r8, r12
000000014049fa22 call     0x140008874
000000014049fa27 mov      edi, 0x18
000000014049fa2c lea      rsi, [rbx + 0xc9da]
000000014049fa33 mov      rcx, qword ptr [rbx + 8]
000000014049fa37 lea      r8, [rbp + 0x30]
000000014049fa3b mov      r9b, r14b
000000014049fa3e mov      edx, edi
000000014049fa40 call     0x140265ab4
000000014049fa45 movsx    edx, byte ptr [rbp + 0x30]
000000014049fa49 mov      byte ptr [rsi], dl
000000014049fa4b mov      rcx, qword ptr [rip + 0x4805ae]
000000014049fa52 cmp      rcx, r13
000000014049fa55 je       0x14049fa88
000000014049fa57 cmp      byte ptr [rcx + 0x229], 4
000000014049fa5e jb       0x14049fa88
000000014049fa60 mov      eax, dword ptr [rcx + 0x22c]
000000014049fa66 test     r14b, al
000000014049fa69 je       0x14049fa88
000000014049fa6b mov      rcx, qword ptr [rcx + 0x218]
000000014049fa72 mov      eax, edx
000000014049fa74 mov      edx, 0x93
000000014049fa79 mov      dword ptr [rsp + 0x20], eax
000000014049fa7d mov      r9d, edi
000000014049fa80 mov      r8, r12
000000014049fa83 call     0x140001bec
000000014049fa88 add      edi, r14d
000000014049fa8b add      rsi, r14
000000014049fa8e cmp      edi, 0x1d
000000014049fa91 jbe      0x14049fa33
000000014049fa93 mov      edi, 0x1e
000000014049fa98 lea      rsi, [rbx + 0xc9fa]
000000014049fa9f mov      rcx, qword ptr [rbx + 8]
000000014049faa3 lea      r8, [rbp + 0x30]
000000014049faa7 mov      r9b, r14b
000000014049faaa mov      edx, edi
000000014049faac call     0x140265ab4
000000014049fab1 movsx    edx, byte ptr [rbp + 0x30]
000000014049fab5 mov      byte ptr [rsi], dl
000000014049fab7 mov      rcx, qword ptr [rip + 0x480542]
000000014049fabe cmp      rcx, r13
000000014049fac1 je       0x14049faf4
000000014049fac3 cmp      byte ptr [rcx + 0x229], 4
000000014049faca jb       0x14049faf4
000000014049facc mov      eax, dword ptr [rcx + 0x22c]
000000014049fad2 test     r14b, al
000000014049fad5 je       0x14049faf4
000000014049fad7 mov      rcx, qword ptr [rcx + 0x218]
000000014049fade mov      eax, edx
000000014049fae0 mov      edx, 0x94
000000014049fae5 mov      dword ptr [rsp + 0x20], eax
000000014049fae9 mov      r9d, edi
000000014049faec mov      r8, r12
000000014049faef call     0x140001bec
000000014049faf4 add      edi, r14d
000000014049faf7 add      rsi, r14
000000014049fafa cmp      edi, 0x30
000000014049fafd jbe      0x14049fa9f
000000014049faff mov      edi, 0xce
000000014049fb04 lea      rsi, [rbx + 0xca1a]
000000014049fb0b mov      rcx, qword ptr [rbx + 8]
000000014049fb0f lea      r8, [rbp + 0x30]
000000014049fb13 mov      r9b, r14b
000000014049fb16 mov      edx, edi
000000014049fb18 call     0x140265ab4
000000014049fb1d movsx    edx, byte ptr [rbp + 0x30]
000000014049fb21 mov      byte ptr [rsi], dl
000000014049fb23 mov      rcx, qword ptr [rip + 0x4804d6]
000000014049fb2a cmp      rcx, r13
000000014049fb2d je       0x14049fb60
000000014049fb2f cmp      byte ptr [rcx + 0x229], 4
000000014049fb36 jb       0x14049fb60
000000014049fb38 mov      eax, dword ptr [rcx + 0x22c]
000000014049fb3e test     r14b, al
000000014049fb41 je       0x14049fb60
000000014049fb43 mov      rcx, qword ptr [rcx + 0x218]
000000014049fb4a mov      eax, edx
000000014049fb4c mov      edx, 0x95
000000014049fb51 mov      dword ptr [rsp + 0x20], eax
000000014049fb55 mov      r9d, edi
000000014049fb58 mov      r8, r12
000000014049fb5b call     0x140001bec
000000014049fb60 add      edi, r14d
000000014049fb63 add      rsi, r14
000000014049fb66 cmp      edi, 0xed
000000014049fb6c jbe      0x14049fb0b
000000014049fb6e mov      edi, 0x44
000000014049fb73 lea      rsi, [rbx + 0xca3a]
000000014049fb7a mov      rcx, qword ptr [rbx + 8]
000000014049fb7e lea      r8, [rbp + 0x30]
000000014049fb82 mov      r9b, r14b
000000014049fb85 mov      edx, edi
000000014049fb87 call     0x140265ab4
000000014049fb8c movsx    edx, byte ptr [rbp + 0x30]
000000014049fb90 mov      byte ptr [rsi], dl
000000014049fb92 mov      rcx, qword ptr [rip + 0x480467]
000000014049fb99 cmp      rcx, r13
000000014049fb9c je       0x14049fbcf
000000014049fb9e cmp      byte ptr [rcx + 0x229], 4
000000014049fba5 jb       0x14049fbcf
000000014049fba7 mov      eax, dword ptr [rcx + 0x22c]
000000014049fbad test     r14b, al
000000014049fbb0 je       0x14049fbcf
000000014049fbb2 mov      rcx, qword ptr [rcx + 0x218]
000000014049fbb9 mov      eax, edx
000000014049fbbb mov      edx, 0x96
000000014049fbc0 mov      dword ptr [rsp + 0x20], eax
000000014049fbc4 mov      r9d, edi
000000014049fbc7 mov      r8, r12
000000014049fbca call     0x140001bec
000000014049fbcf add      edi, r14d
000000014049fbd2 add      rsi, r14
000000014049fbd5 cmp      edi, 0x49
000000014049fbd8 jbe      0x14049fb7a
000000014049fbda mov      edi, 0x4a
000000014049fbdf lea      rsi, [rbx + 0xca5a]
000000014049fbe6 mov      rcx, qword ptr [rbx + 8]
000000014049fbea lea      r8, [rbp + 0x30]
000000014049fbee mov      r9b, r14b
000000014049fbf1 mov      edx, edi
000000014049fbf3 call     0x140265ab4
000000014049fbf8 movsx    edx, byte ptr [rbp + 0x30]
000000014049fbfc mov      byte ptr [rsi], dl
000000014049fbfe mov      rcx, qword ptr [rip + 0x4803fb]
000000014049fc05 cmp      rcx, r13
000000014049fc08 je       0x14049fc3b
000000014049fc0a cmp      byte ptr [rcx + 0x229], 4
000000014049fc11 jb       0x14049fc3b
000000014049fc13 mov      eax, dword ptr [rcx + 0x22c]
000000014049fc19 test     r14b, al
000000014049fc1c je       0x14049fc3b
000000014049fc1e mov      rcx, qword ptr [rcx + 0x218]
000000014049fc25 mov      eax, edx
000000014049fc27 mov      edx, 0x97
000000014049fc2c mov      dword ptr [rsp + 0x20], eax
000000014049fc30 mov      r9d, edi
000000014049fc33 mov      r8, r12
000000014049fc36 call     0x140001bec
000000014049fc3b add      edi, r14d
000000014049fc3e add      rsi, r14
000000014049fc41 cmp      edi, 0x5c
000000014049fc44 jbe      0x14049fbe6
000000014049fc46 mov      edi, 0xee
000000014049fc4b lea      rsi, [rbx + 0xca7a]
000000014049fc52 mov      rcx, qword ptr [rbx + 8]
000000014049fc56 lea      r8, [rbp + 0x30]
000000014049fc5a mov      r9b, r14b
000000014049fc5d mov      edx, edi
000000014049fc5f call     0x140265ab4
000000014049fc64 movsx    edx, byte ptr [rbp + 0x30]
000000014049fc68 mov      byte ptr [rsi], dl
000000014049fc6a mov      rcx, qword ptr [rip + 0x48038f]
000000014049fc71 cmp      rcx, r13
000000014049fc74 je       0x14049fca7
000000014049fc76 cmp      byte ptr [rcx + 0x229], 4
000000014049fc7d jb       0x14049fca7
000000014049fc7f mov      eax, dword ptr [rcx + 0x22c]
000000014049fc85 test     r14b, al
000000014049fc88 je       0x14049fca7
000000014049fc8a mov      rcx, qword ptr [rcx + 0x218]
000000014049fc91 mov      eax, edx
000000014049fc93 mov      edx, 0x98
000000014049fc98 mov      dword ptr [rsp + 0x20], eax
000000014049fc9c mov      r9d, edi
000000014049fc9f mov      r8, r12
000000014049fca2 call     0x140001bec
000000014049fca7 add      edi, r14d
000000014049fcaa add      rsi, r14
000000014049fcad cmp      edi, 0x10d
000000014049fcb3 jbe      0x14049fc52
000000014049fcb5 mov      rbx, qword ptr [rsp + 0x68]
000000014049fcba mov      rsi, qword ptr [rsp + 0x70]
000000014049fcbf add      rsp, 0x30
000000014049fcc3 pop      r14
000000014049fcc5 pop      r13
000000014049fcc7 pop      r12
000000014049fcc9 pop      rdi
000000014049fcca pop      rbp
000000014049fccb ret      