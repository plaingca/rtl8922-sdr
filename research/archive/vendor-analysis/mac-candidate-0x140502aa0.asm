0000000140502aa0 mov      rax, rsp
0000000140502aa3 mov      qword ptr [rax + 8], rbx
0000000140502aa7 mov      qword ptr [rax + 0x10], rbp
0000000140502aab mov      qword ptr [rax + 0x18], rsi
0000000140502aaf mov      qword ptr [rax + 0x20], rdi
0000000140502ab3 push     r12
0000000140502ab5 push     r14
0000000140502ab7 push     r15
0000000140502ab9 sub      rsp, 0x20
0000000140502abd mov      rdi, rcx
0000000140502ac0 mov      r14d, 1
0000000140502ac6 mov      rcx, qword ptr [rcx + 0x1390]
0000000140502acd mov      esi, r8d
0000000140502ad0 mov      ebx, edx
0000000140502ad2 mov      rax, qword ptr [rdi]
0000000140502ad5 mov      rbp, qword ptr [rax]
0000000140502ad8 mov      al, byte ptr [rdi + 0xef0]
0000000140502ade cmp      al, r14b
0000000140502ae1 je       0x140502af0
0000000140502ae3 sub      al, 2
0000000140502ae5 lea      edx, [r14 + 0x18]
0000000140502ae9 cmp      al, r14b
0000000140502aec cmovbe   r14d, edx
0000000140502af0 mov      rax, qword ptr [rcx + 0x9d0]
0000000140502af7 mov      rcx, rdi
0000000140502afa call     qword ptr [rip + 0x1817f8]
0000000140502b00 mov      r15, rax
0000000140502b03 test     rax, rax
0000000140502b06 jne      0x140502b56
0000000140502b08 mov      rcx, qword ptr [rip + 0x41d4f1]
0000000140502b0f lea      rax, [rip + 0x41d4ea]
0000000140502b16 cmp      rcx, rax
0000000140502b19 je       0x140502b4c
0000000140502b1b cmp      byte ptr [rcx + 0x169], 2
0000000140502b22 jb       0x140502b4c
0000000140502b24 mov      eax, dword ptr [rcx + 0x16c]
0000000140502b2a test     al, 8
0000000140502b2c je       0x140502b4c
0000000140502b2e mov      rcx, qword ptr [rcx + 0x158]
0000000140502b35 lea      edx, [r15 + 0xa]
0000000140502b39 lea      r9, [rip + 0x15b040]
0000000140502b40 lea      r8, [rip + 0x3fe139]
0000000140502b47 call     0x140008874
0000000140502b4c mov      eax, 5
0000000140502b51 jmp      0x140502e68
0000000140502b56 mov      r12d, 0xfe
0000000140502b5c cmp      ebx, 1
0000000140502b5f je       0x140502d27
0000000140502b65 cmp      ebx, r12d
0000000140502b68 jne      0x140502b74
0000000140502b6a cmp      dword ptr [rax + 0x30], 1
0000000140502b6e je       0x140502d27
0000000140502b74 mov      rax, qword ptr [rbp + 0x20]
0000000140502b78 mov      ebx, 0x3050
0000000140502b7d mov      edx, ebx
0000000140502b7f mov      rcx, rdi
0000000140502b82 call     qword ptr [rip + 0x181770]
0000000140502b88 mov      esi, 0xfffffffe
0000000140502b8d mov      edx, ebx
0000000140502b8f mov      r8d, eax
0000000140502b92 mov      rcx, rdi
0000000140502b95 mov      rax, qword ptr [rbp + 0x28]
0000000140502b99 and      r8d, esi
0000000140502b9c call     qword ptr [rip + 0x181756]
0000000140502ba2 mov      rax, qword ptr [rbp + 0x20]
0000000140502ba6 mov      ebx, 0x305c
0000000140502bab mov      edx, ebx
0000000140502bad mov      rcx, rdi
0000000140502bb0 call     qword ptr [rip + 0x181742]
0000000140502bb6 mov      edx, ebx
0000000140502bb8 mov      rcx, rdi
0000000140502bbb and      eax, esi
0000000140502bbd mov      r8d, eax
0000000140502bc0 mov      rax, qword ptr [rbp + 0x28]
0000000140502bc4 call     qword ptr [rip + 0x18172e]
0000000140502bca mov      rax, qword ptr [rbp + 0x20]
0000000140502bce mov      ebx, 0x3068
0000000140502bd3 mov      edx, ebx
0000000140502bd5 mov      rcx, rdi
0000000140502bd8 call     qword ptr [rip + 0x18171a]
0000000140502bde mov      edx, ebx
0000000140502be0 mov      rcx, rdi
0000000140502be3 and      eax, esi
0000000140502be5 mov      r8d, eax
0000000140502be8 mov      rax, qword ptr [rbp + 0x28]
0000000140502bec call     qword ptr [rip + 0x181706]
0000000140502bf2 mov      rax, qword ptr [rbp + 0x20]
0000000140502bf6 mov      ebx, 0x3080
0000000140502bfb mov      edx, ebx
0000000140502bfd mov      rcx, rdi
0000000140502c00 call     qword ptr [rip + 0x1816f2]
0000000140502c06 mov      edx, ebx
0000000140502c08 mov      rcx, rdi
0000000140502c0b and      eax, esi
0000000140502c0d mov      r8d, eax
0000000140502c10 mov      rax, qword ptr [rbp + 0x28]
0000000140502c14 call     qword ptr [rip + 0x1816de]
0000000140502c1a mov      rax, qword ptr [rbp + 0x20]
0000000140502c1e mov      ebx, 0x308c
0000000140502c23 mov      edx, ebx
0000000140502c25 mov      rcx, rdi
0000000140502c28 call     qword ptr [rip + 0x1816ca]
0000000140502c2e mov      edx, ebx
0000000140502c30 mov      rcx, rdi
0000000140502c33 and      eax, esi
0000000140502c35 mov      r8d, eax
0000000140502c38 mov      rax, qword ptr [rbp + 0x28]
0000000140502c3c call     qword ptr [rip + 0x1816b6]
0000000140502c42 mov      rax, qword ptr [rbp + 0x20]
0000000140502c46 mov      ebx, 0x3098
0000000140502c4b mov      edx, ebx
0000000140502c4d mov      rcx, rdi
0000000140502c50 call     qword ptr [rip + 0x1816a2]
0000000140502c56 mov      edx, ebx
0000000140502c58 mov      rcx, rdi
0000000140502c5b and      eax, esi
0000000140502c5d mov      r8d, eax
0000000140502c60 mov      rax, qword ptr [rbp + 0x28]
0000000140502c64 call     qword ptr [rip + 0x18168e]
0000000140502c6a mov      rax, qword ptr [rbp + 0x20]
0000000140502c6e mov      ebx, 0x3140
0000000140502c73 mov      edx, ebx
0000000140502c75 mov      rcx, rdi
0000000140502c78 call     qword ptr [rip + 0x18167a]
0000000140502c7e mov      edx, ebx
0000000140502c80 mov      rcx, rdi
0000000140502c83 and      eax, esi
0000000140502c85 mov      r8d, eax
0000000140502c88 mov      rax, qword ptr [rbp + 0x28]
0000000140502c8c call     qword ptr [rip + 0x181666]
0000000140502c92 mov      rax, qword ptr [rbp + 0x20]
0000000140502c96 mov      ebx, 0x314c
0000000140502c9b mov      edx, ebx
0000000140502c9d mov      rcx, rdi
0000000140502ca0 call     qword ptr [rip + 0x181652]
0000000140502ca6 mov      edx, ebx
0000000140502ca8 mov      rcx, rdi
0000000140502cab and      eax, esi
0000000140502cad mov      r8d, eax
0000000140502cb0 mov      rax, qword ptr [rbp + 0x28]
0000000140502cb4 call     qword ptr [rip + 0x18163e]
0000000140502cba mov      rax, qword ptr [rbp + 0x20]
0000000140502cbe mov      ebx, 0x3158
0000000140502cc3 mov      edx, ebx
0000000140502cc5 mov      rcx, rdi
0000000140502cc8 call     qword ptr [rip + 0x18162a]
0000000140502cce mov      edx, ebx
0000000140502cd0 mov      rcx, rdi
0000000140502cd3 and      eax, esi
0000000140502cd5 mov      r8d, eax
0000000140502cd8 mov      rax, qword ptr [rbp + 0x28]
0000000140502cdc call     qword ptr [rip + 0x181616]
0000000140502ce2 mov      rax, qword ptr [rbp + 0x20]
0000000140502ce6 mov      ebx, 0x3160
0000000140502ceb mov      edx, ebx
0000000140502ced mov      rcx, rdi
0000000140502cf0 call     qword ptr [rip + 0x181602]
0000000140502cf6 mov      edx, ebx
0000000140502cf8 mov      rcx, rdi
0000000140502cfb and      eax, esi
0000000140502cfd mov      r8d, eax
0000000140502d00 mov      rax, qword ptr [rbp + 0x28]
0000000140502d04 call     qword ptr [rip + 0x1815ee]
0000000140502d0a mov      rax, qword ptr [rbp + 0x20]
0000000140502d0e mov      ebx, 0x3168
0000000140502d13 mov      edx, ebx
0000000140502d15 mov      rcx, rdi
0000000140502d18 call     qword ptr [rip + 0x1815da]
0000000140502d1e and      eax, esi
0000000140502d20 mov      edx, ebx
0000000140502d22 jmp      0x140502e56
0000000140502d27 cmp      esi, r12d
0000000140502d2a jne      0x140502d3c
0000000140502d2c mov      eax, dword ptr [rax + 0x34]
0000000140502d2f mov      ecx, 0x800
0000000140502d34 cmp      eax, r12d
0000000140502d37 cmove    eax, ecx
0000000140502d3a jmp      0x140502d3e
0000000140502d3c mov      eax, esi
0000000140502d3e xor      edx, edx
0000000140502d40 mov      rcx, rdi
0000000140502d43 div      r14d
0000000140502d46 mov      edx, 0x306c
0000000140502d4b mov      ebx, eax
0000000140502d4d mov      rax, qword ptr [rbp + 0x28]
0000000140502d51 mov      r8d, ebx
0000000140502d54 call     qword ptr [rip + 0x18159e]
0000000140502d5a mov      rax, qword ptr [rbp + 0x28]
0000000140502d5e mov      r8d, ebx
0000000140502d61 mov      edx, 0x3090
0000000140502d66 mov      rcx, rdi
0000000140502d69 call     qword ptr [rip + 0x181589]
0000000140502d6f mov      rax, qword ptr [rbp + 0x28]
0000000140502d73 mov      r8d, ebx
0000000140502d76 mov      edx, 0x309c
0000000140502d7b mov      rcx, rdi
0000000140502d7e call     qword ptr [rip + 0x181574]
0000000140502d84 mov      rax, qword ptr [rbp + 0x28]
0000000140502d88 mov      r8d, ebx
0000000140502d8b mov      edx, 0x3144
0000000140502d90 mov      rcx, rdi
0000000140502d93 call     qword ptr [rip + 0x18155f]
0000000140502d99 mov      rax, qword ptr [rbp + 0x28]
0000000140502d9d mov      r8d, ebx
0000000140502da0 mov      edx, 0x3150
0000000140502da5 mov      rcx, rdi
0000000140502da8 call     qword ptr [rip + 0x18154a]
0000000140502dae mov      rax, qword ptr [rbp + 0x28]
0000000140502db2 mov      r8d, ebx
0000000140502db5 mov      edx, 0x315c
0000000140502dba mov      rcx, rdi
0000000140502dbd call     qword ptr [rip + 0x181535]
0000000140502dc3 mov      rax, qword ptr [rbp + 0x28]
0000000140502dc7 mov      r8d, ebx
0000000140502dca mov      edx, 0x3164
0000000140502dcf mov      rcx, rdi
0000000140502dd2 call     qword ptr [rip + 0x181520]
0000000140502dd8 mov      rax, qword ptr [rbp + 0x28]
0000000140502ddc mov      r8d, ebx
0000000140502ddf mov      edx, 0x316c
0000000140502de4 mov      rcx, rdi
0000000140502de7 call     qword ptr [rip + 0x18150b]
0000000140502ded cmp      esi, r12d
0000000140502df0 jne      0x140502e03
0000000140502df2 mov      eax, dword ptr [r15 + 0x34]
0000000140502df6 mov      ecx, 0x27100
0000000140502dfb cmp      eax, r12d
0000000140502dfe cmove    eax, ecx
0000000140502e01 jmp      0x140502e05
0000000140502e03 mov      eax, esi
0000000140502e05 xor      edx, edx
0000000140502e07 mov      rcx, rdi
0000000140502e0a div      r14d
0000000140502e0d mov      edx, 0x3054
0000000140502e12 mov      ebx, eax
0000000140502e14 mov      rax, qword ptr [rbp + 0x28]
0000000140502e18 mov      r8d, ebx
0000000140502e1b call     qword ptr [rip + 0x1814d7]
0000000140502e21 mov      rax, qword ptr [rbp + 0x28]
0000000140502e25 mov      r8d, ebx
0000000140502e28 mov      edx, 0x3060
0000000140502e2d mov      rcx, rdi
0000000140502e30 call     qword ptr [rip + 0x1814c2]
0000000140502e36 cmp      esi, r12d
0000000140502e39 jne      0x140502e4a
0000000140502e3b mov      esi, dword ptr [r15 + 0x34]
0000000140502e3f mov      eax, 0x1e848
0000000140502e44 cmp      esi, r12d
0000000140502e47 cmove    esi, eax
0000000140502e4a xor      edx, edx
0000000140502e4c mov      eax, esi
0000000140502e4e div      r14d
0000000140502e51 mov      edx, 0x3084
0000000140502e56 mov      r8d, eax
0000000140502e59 mov      rcx, rdi
0000000140502e5c mov      rax, qword ptr [rbp + 0x28]
0000000140502e60 call     qword ptr [rip + 0x181492]
0000000140502e66 xor      eax, eax
0000000140502e68 mov      rbx, qword ptr [rsp + 0x40]
0000000140502e6d mov      rbp, qword ptr [rsp + 0x48]
0000000140502e72 mov      rsi, qword ptr [rsp + 0x50]
0000000140502e77 mov      rdi, qword ptr [rsp + 0x58]
0000000140502e7c add      rsp, 0x20
0000000140502e80 pop      r15
0000000140502e82 pop      r14
0000000140502e84 pop      r12
0000000140502e86 ret      