000000014044badc mov      qword ptr [rsp + 8], rbx
000000014044bae1 push     rdi
000000014044bae2 sub      rsp, 0x20
000000014044bae6 mov      rax, qword ptr [rcx + 0x18]
000000014044baea mov      rbx, rcx
000000014044baed mov      rcx, qword ptr [rcx + 8]
000000014044baf1 mov      edx, 0x40
000000014044baf6 mov      rax, qword ptr [rax + 0x98]
000000014044bafd call     qword ptr [rip + 0x2387f5]
000000014044bb03 mov      qword ptr [rbx + 0x3a8], rax
000000014044bb0a test     rax, rax
000000014044bb0d jne      0x14044bb4b
000000014044bb0f mov      rcx, qword ptr [rip + 0x4d44ea]
000000014044bb16 lea      rax, [rip + 0x4d44e3]
000000014044bb1d cmp      rcx, rax
000000014044bb20 je       0x14044be76
000000014044bb26 cmp      byte ptr [rcx + 0x169], 2
000000014044bb2d jb       0x14044be76
000000014044bb33 mov      eax, dword ptr [rcx + 0x16c]
000000014044bb39 test     al, 8
000000014044bb3b je       0x14044be76
000000014044bb41 mov      edx, 0xe
000000014044bb46 jmp      0x14044be5c
000000014044bb4b xor      edx, edx
000000014044bb4d mov      rcx, rbx
000000014044bb50 call     0x14036c090
000000014044bb55 test     al, al
000000014044bb57 je       0x14044bb67
000000014044bb59 mov      edx, dword ptr [rip + 0x4f29a9]
000000014044bb5f mov      edi, dword ptr [rip + 0x4f29ab]
000000014044bb65 jmp      0x14044bb73
000000014044bb67 mov      edx, dword ptr [rip + 0x4f299f]
000000014044bb6d mov      edi, dword ptr [rip + 0x4f29a1]
000000014044bb73 mov      rax, qword ptr [rbx + 0x18]
000000014044bb77 mov      rcx, qword ptr [rbx + 8]
000000014044bb7b mov      rax, qword ptr [rax + 0x98]
000000014044bb82 call     qword ptr [rip + 0x238770]
000000014044bb88 mov      rcx, qword ptr [rbx + 0x3a8]
000000014044bb8f mov      qword ptr [rcx + 8], rax
000000014044bb93 mov      rax, qword ptr [rbx + 0x3a8]
000000014044bb9a cmp      qword ptr [rax + 8], 0
000000014044bb9f jne      0x14044bbdd
000000014044bba1 mov      rcx, qword ptr [rip + 0x4d4458]
000000014044bba8 lea      rax, [rip + 0x4d4451]
000000014044bbaf cmp      rcx, rax
000000014044bbb2 je       0x14044be76
000000014044bbb8 cmp      byte ptr [rcx + 0x169], 2
000000014044bbbf jb       0x14044be76
000000014044bbc5 mov      eax, dword ptr [rcx + 0x16c]
000000014044bbcb test     al, 8
000000014044bbcd je       0x14044be76
000000014044bbd3 mov      edx, 0xf
000000014044bbd8 jmp      0x14044be5c
000000014044bbdd mov      rax, qword ptr [rbx + 0x18]
000000014044bbe1 mov      edx, edi
000000014044bbe3 mov      rcx, qword ptr [rbx + 8]
000000014044bbe7 mov      rax, qword ptr [rax + 0x98]
000000014044bbee call     qword ptr [rip + 0x238704]
000000014044bbf4 mov      rcx, qword ptr [rbx + 0x3a8]
000000014044bbfb mov      qword ptr [rcx + 0x10], rax
000000014044bbff mov      rax, qword ptr [rbx + 0x3a8]
000000014044bc06 cmp      qword ptr [rax + 0x10], 0
000000014044bc0b jne      0x14044bc49
000000014044bc0d mov      rcx, qword ptr [rip + 0x4d43ec]
000000014044bc14 lea      rax, [rip + 0x4d43e5]
000000014044bc1b cmp      rcx, rax
000000014044bc1e je       0x14044be76
000000014044bc24 cmp      byte ptr [rcx + 0x169], 2
000000014044bc2b jb       0x14044be76
000000014044bc31 mov      eax, dword ptr [rcx + 0x16c]
000000014044bc37 test     al, 8
000000014044bc39 je       0x14044be76
000000014044bc3f mov      edx, 0x10
000000014044bc44 jmp      0x14044be5c
000000014044bc49 mov      rax, qword ptr [rbx + 0x18]
000000014044bc4d mov      edx, 8
000000014044bc52 mov      rcx, qword ptr [rbx + 8]
000000014044bc56 mov      rax, qword ptr [rax + 0x98]
000000014044bc5d call     qword ptr [rip + 0x238695]
000000014044bc63 mov      rcx, qword ptr [rbx + 0x3a8]
000000014044bc6a mov      qword ptr [rcx + 0x18], rax
000000014044bc6e mov      rax, qword ptr [rbx + 0x3a8]
000000014044bc75 cmp      qword ptr [rax + 0x18], 0
000000014044bc7a jne      0x14044bcb8
000000014044bc7c mov      rcx, qword ptr [rip + 0x4d437d]
000000014044bc83 lea      rax, [rip + 0x4d4376]
000000014044bc8a cmp      rcx, rax
000000014044bc8d je       0x14044be76
000000014044bc93 cmp      byte ptr [rcx + 0x169], 2
000000014044bc9a jb       0x14044be76
000000014044bca0 mov      eax, dword ptr [rcx + 0x16c]
000000014044bca6 test     al, 8
000000014044bca8 je       0x14044be76
000000014044bcae mov      edx, 0x11
000000014044bcb3 jmp      0x14044be5c
000000014044bcb8 mov      rax, qword ptr [rbx + 0x18]
000000014044bcbc mov      edx, 0xc
000000014044bcc1 mov      rcx, qword ptr [rbx + 8]
000000014044bcc5 mov      rax, qword ptr [rax + 0x98]
000000014044bccc call     qword ptr [rip + 0x238626]
000000014044bcd2 mov      rcx, qword ptr [rbx + 0x3a8]
000000014044bcd9 mov      qword ptr [rcx + 0x28], rax
000000014044bcdd mov      rax, qword ptr [rbx + 0x3a8]
000000014044bce4 cmp      qword ptr [rax + 0x28], 0
000000014044bce9 jne      0x14044bd27
000000014044bceb mov      rcx, qword ptr [rip + 0x4d430e]
000000014044bcf2 lea      rax, [rip + 0x4d4307]
000000014044bcf9 cmp      rcx, rax
000000014044bcfc je       0x14044be76
000000014044bd02 cmp      byte ptr [rcx + 0x169], 2
000000014044bd09 jb       0x14044be76
000000014044bd0f mov      eax, dword ptr [rcx + 0x16c]
000000014044bd15 test     al, 8
000000014044bd17 je       0x14044be76
000000014044bd1d mov      edx, 0x12
000000014044bd22 jmp      0x14044be5c
000000014044bd27 mov      rax, qword ptr [rbx + 0x18]
000000014044bd2b mov      edx, 0x24
000000014044bd30 mov      rcx, qword ptr [rbx + 8]
000000014044bd34 mov      rax, qword ptr [rax + 0x98]
000000014044bd3b call     qword ptr [rip + 0x2385b7]
000000014044bd41 mov      rcx, qword ptr [rbx + 0x3a8]
000000014044bd48 mov      qword ptr [rcx + 0x30], rax
000000014044bd4c mov      rax, qword ptr [rbx + 0x3a8]
000000014044bd53 cmp      qword ptr [rax + 0x30], 0
000000014044bd58 jne      0x14044bd96
000000014044bd5a mov      rcx, qword ptr [rip + 0x4d429f]
000000014044bd61 lea      rax, [rip + 0x4d4298]
000000014044bd68 cmp      rcx, rax
000000014044bd6b je       0x14044be76
000000014044bd71 cmp      byte ptr [rcx + 0x169], 2
000000014044bd78 jb       0x14044be76
000000014044bd7e mov      eax, dword ptr [rcx + 0x16c]
000000014044bd84 test     al, 8
000000014044bd86 je       0x14044be76
000000014044bd8c mov      edx, 0x13
000000014044bd91 jmp      0x14044be5c
000000014044bd96 mov      rax, qword ptr [rbx + 0x18]
000000014044bd9a mov      edx, 0xe
000000014044bd9f mov      rcx, qword ptr [rbx + 8]
000000014044bda3 mov      rax, qword ptr [rax + 0x98]
000000014044bdaa call     qword ptr [rip + 0x238548]
000000014044bdb0 mov      rcx, qword ptr [rbx + 0x3a8]
000000014044bdb7 mov      qword ptr [rcx + 0x38], rax
000000014044bdbb mov      rax, qword ptr [rbx + 0x3a8]
000000014044bdc2 cmp      qword ptr [rax + 0x38], 0
000000014044bdc7 jne      0x14044bdfe
000000014044bdc9 mov      rcx, qword ptr [rip + 0x4d4230]
000000014044bdd0 lea      rax, [rip + 0x4d4229]
000000014044bdd7 cmp      rcx, rax
000000014044bdda je       0x14044be76
000000014044bde0 cmp      byte ptr [rcx + 0x169], 2
000000014044bde7 jb       0x14044be76
000000014044bded mov      eax, dword ptr [rcx + 0x16c]
000000014044bdf3 test     al, 8
000000014044bdf5 je       0x14044be76
000000014044bdf7 mov      edx, 0x14
000000014044bdfc jmp      0x14044be5c
000000014044bdfe mov      rax, qword ptr [rbx + 0x18]
000000014044be02 mov      edx, 4
000000014044be07 mov      rcx, qword ptr [rbx + 8]
000000014044be0b mov      rax, qword ptr [rax + 0x98]
000000014044be12 call     qword ptr [rip + 0x2384e0]
000000014044be18 mov      rcx, qword ptr [rbx + 0x3a8]
000000014044be1f mov      qword ptr [rcx + 0x20], rax
000000014044be23 mov      rax, qword ptr [rbx + 0x3a8]
000000014044be2a cmp      qword ptr [rax + 0x20], 0
000000014044be2f jne      0x14044be7d
000000014044be31 mov      rcx, qword ptr [rip + 0x4d41c8]
000000014044be38 lea      rax, [rip + 0x4d41c1]
000000014044be3f cmp      rcx, rax
000000014044be42 je       0x14044be76
000000014044be44 cmp      byte ptr [rcx + 0x169], 2
000000014044be4b jb       0x14044be76
000000014044be4d mov      eax, dword ptr [rcx + 0x16c]
000000014044be53 test     al, 8
000000014044be55 je       0x14044be76
000000014044be57 mov      edx, 0x15
000000014044be5c mov      rcx, qword ptr [rcx + 0x158]
000000014044be63 lea      r9, [rip + 0x20bc46]
000000014044be6a lea      r8, [rip + 0x291987]
000000014044be71 call     0x140008874
000000014044be76 mov      eax, 9
000000014044be7b jmp      0x14044be98
000000014044be7d mov      byte ptr [rax], 0
000000014044be80 mov      rax, qword ptr [rbx + 0x3a8]
000000014044be87 mov      byte ptr [rax + 1], 0
000000014044be8b mov      rax, qword ptr [rbx + 0x3a8]
000000014044be92 mov      byte ptr [rax + 2], 0
000000014044be96 xor      eax, eax
000000014044be98 mov      rbx, qword ptr [rsp + 0x30]
000000014044be9d add      rsp, 0x20
000000014044bea1 pop      rdi
000000014044bea2 ret      