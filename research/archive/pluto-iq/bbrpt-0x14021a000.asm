000000014021a000 push     rbx
000000014021a002 sub      rsp, 0x30
000000014021a006 mov      rbx, rcx
000000014021a009 mov      rcx, qword ptr [rcx]
000000014021a00c mov      rax, qword ptr [rcx + 0x798]
000000014021a013 mov      edx, dword ptr [rax + 0x9620]
000000014021a019 test     dl, 4
000000014021a01c je       0x14021a05c
000000014021a01e mov      rcx, qword ptr [rip + 0x705fdb]
000000014021a025 lea      rax, [rip + 0x705fd4]
000000014021a02c cmp      rcx, rax
000000014021a02f je       0x14021a2d6
000000014021a035 cmp      byte ptr [rcx + 0x169], 4
000000014021a03c jb       0x14021a2d6
000000014021a042 test     dword ptr [rcx + 0x16c], 0x200
000000014021a04c je       0x14021a2d6
000000014021a052 mov      edx, 0x95
000000014021a057 jmp      0x14021a2b0
000000014021a05c cmp      byte ptr [rbx + 0x286], 1
000000014021a063 jne      0x14021a0a3
000000014021a065 mov      rcx, qword ptr [rip + 0x705f94]
000000014021a06c lea      rax, [rip + 0x705f8d]
000000014021a073 cmp      rcx, rax
000000014021a076 je       0x14021a2d6
000000014021a07c cmp      byte ptr [rcx + 0x169], 3
000000014021a083 jb       0x14021a2d6
000000014021a089 test     dword ptr [rcx + 0x16c], 0x200
000000014021a093 je       0x14021a2d6
000000014021a099 mov      edx, 0x96
000000014021a09e jmp      0x14021a2b0
000000014021a0a3 cmp      byte ptr [rbx + 0x287], 1
000000014021a0aa jne      0x14021a0ea
000000014021a0ac mov      rcx, qword ptr [rip + 0x705f4d]
000000014021a0b3 lea      rax, [rip + 0x705f46]
000000014021a0ba cmp      rcx, rax
000000014021a0bd je       0x14021a2d6
000000014021a0c3 cmp      byte ptr [rcx + 0x169], 3
000000014021a0ca jb       0x14021a2d6
000000014021a0d0 test     dword ptr [rcx + 0x16c], 0x200
000000014021a0da je       0x14021a2d6
000000014021a0e0 mov      edx, 0x97
000000014021a0e5 jmp      0x14021a2b0
000000014021a0ea mov      dl, 2
000000014021a0ec call     0x1401b95c0
000000014021a0f1 test     al, al
000000014021a0f3 jne      0x14021a133
000000014021a0f5 mov      rcx, qword ptr [rip + 0x705f04]
000000014021a0fc lea      rax, [rip + 0x705efd]
000000014021a103 cmp      rcx, rax
000000014021a106 je       0x14021a2d6
000000014021a10c cmp      byte ptr [rcx + 0x169], 5
000000014021a113 jb       0x14021a2d6
000000014021a119 test     dword ptr [rcx + 0x16c], 0x200
000000014021a123 je       0x14021a2d6
000000014021a129 mov      edx, 0x98
000000014021a12e jmp      0x14021a2b0
000000014021a133 cmp      dword ptr [rbx + 0xa0], 0
000000014021a13a je       0x14021a17a
000000014021a13c mov      rcx, qword ptr [rip + 0x705ebd]
000000014021a143 lea      rax, [rip + 0x705eb6]
000000014021a14a cmp      rcx, rax
000000014021a14d je       0x14021a2d6
000000014021a153 cmp      byte ptr [rcx + 0x169], 5
000000014021a15a jb       0x14021a2d6
000000014021a160 test     dword ptr [rcx + 0x16c], 0x200
000000014021a16a je       0x14021a2d6
000000014021a170 mov      edx, 0x99
000000014021a175 jmp      0x14021a2b0
000000014021a17a movzx    edx, byte ptr [rbx + 0x288]
000000014021a181 test     dl, dl
000000014021a183 je       0x14021a1ef
000000014021a185 mov      rcx, qword ptr [rip + 0x705e74]
000000014021a18c lea      rax, [rip + 0x705e6d]
000000014021a193 cmp      rcx, rax
000000014021a196 je       0x14021a2d6
000000014021a19c cmp      byte ptr [rcx + 0x169], 5
000000014021a1a3 jb       0x14021a2d6
000000014021a1a9 test     dword ptr [rcx + 0x16c], 0x200
000000014021a1b3 je       0x14021a2d6
000000014021a1b9 mov      rcx, qword ptr [rcx + 0x158]
000000014021a1c0 lea      r9, [rip + 0x3f41c9]
000000014021a1c7 mov      eax, edx
000000014021a1c9 lea      r8, [rip + 0x47e7f0]
000000014021a1d0 mov      dword ptr [rsp + 0x28], eax
000000014021a1d4 mov      edx, 0x9a
000000014021a1d9 lea      rax, [rip + 0x3fc050]
000000014021a1e0 mov      qword ptr [rsp + 0x20], rax
000000014021a1e5 call     0x14003ca14
000000014021a1ea jmp      0x14021a2d6
000000014021a1ef mov      rax, qword ptr [rbx]
000000014021a1f2 mov      r10, qword ptr [rax + 0x798]
000000014021a1f9 cmp      dword ptr [r10 + 0x961c], 3
000000014021a201 jne      0x14021a23e
000000014021a203 mov      rcx, qword ptr [rip + 0x705df6]
000000014021a20a lea      rax, [rip + 0x705def]
000000014021a211 cmp      rcx, rax
000000014021a214 je       0x14021a2d6
000000014021a21a cmp      byte ptr [rcx + 0x169], 4
000000014021a221 jb       0x14021a2d6
000000014021a227 test     dword ptr [rcx + 0x16c], 0x200
000000014021a231 je       0x14021a2d6
000000014021a237 mov      edx, 0x9b
000000014021a23c jmp      0x14021a2b0
000000014021a23e mov      rcx, rbx
000000014021a241 call     0x140219c0c
000000014021a246 test     al, al
000000014021a248 jne      0x14021a279
000000014021a24a mov      rcx, qword ptr [rip + 0x705daf]
000000014021a251 lea      rax, [rip + 0x705da8]
000000014021a258 cmp      rcx, rax
000000014021a25b je       0x14021a2d6
000000014021a25d cmp      byte ptr [rcx + 0x169], 5
000000014021a264 jb       0x14021a2d6
000000014021a266 test     dword ptr [rcx + 0x16c], 0x200
000000014021a270 je       0x14021a2d6
000000014021a272 mov      edx, 0x9c
000000014021a277 jmp      0x14021a2b0
000000014021a279 cmp      byte ptr [r10 + 0xe254], 0
000000014021a281 je       0x14021a2da
000000014021a283 mov      rcx, qword ptr [rip + 0x705d76]
000000014021a28a lea      rax, [rip + 0x705d6f]
000000014021a291 cmp      rcx, rax
000000014021a294 je       0x14021a2d6
000000014021a296 cmp      byte ptr [rcx + 0x169], 4
000000014021a29d jb       0x14021a2d6
000000014021a29f test     dword ptr [rcx + 0x16c], 0x200
000000014021a2a9 je       0x14021a2d6
000000014021a2ab mov      edx, 0x9d
000000014021a2b0 mov      rcx, qword ptr [rcx + 0x158]
000000014021a2b7 lea      rax, [rip + 0x3fbf72]
000000014021a2be lea      r9, [rip + 0x3f40cb]
000000014021a2c5 mov      qword ptr [rsp + 0x20], rax
000000014021a2ca lea      r8, [rip + 0x47e6ef]
000000014021a2d1 call     0x14003c968
000000014021a2d6 xor      al, al
000000014021a2d8 jmp      0x14021a2dc
000000014021a2da mov      al, 1
000000014021a2dc add      rsp, 0x30
000000014021a2e0 pop      rbx
000000014021a2e1 ret      