000000014028b244 sub      rsp, 0x38
000000014028b248 mov      rax, qword ptr [rcx + 0x1490]
000000014028b24f mov      rcx, qword ptr [rax + 0x230]
000000014028b256 mov      rax, qword ptr [rcx]
000000014028b259 mov      rax, qword ptr [rax + 0x6b0]
000000014028b260 test     rax, rax
000000014028b263 je       0x14028b2cc
000000014028b265 call     qword ptr [rip + 0x3f908d]
000000014028b26b test     eax, eax
000000014028b26d je       0x14028b2cc
000000014028b26f mov      rcx, qword ptr [rip + 0x694d8a]
000000014028b276 lea      rdx, [rip + 0x694d83]
000000014028b27d cmp      rcx, rdx
000000014028b280 je       0x14028b2c5
000000014028b282 cmp      byte ptr [rcx + 0x169], 2
000000014028b289 jb       0x14028b2c5
000000014028b28b mov      edx, dword ptr [rcx + 0x16c]
000000014028b291 test     dl, 8
000000014028b294 je       0x14028b2c5
000000014028b296 mov      rcx, qword ptr [rcx + 0x158]
000000014028b29d lea      r9, [rip + 0x3830ec]
000000014028b2a4 mov      dword ptr [rsp + 0x28], eax
000000014028b2a8 lea      r8, [rip + 0x40dc31]
000000014028b2af lea      rax, [rip + 0x39184a]
000000014028b2b6 mov      edx, 0x41d
000000014028b2bb mov      qword ptr [rsp + 0x20], rax
000000014028b2c0 call     0x14003ca14
000000014028b2c5 mov      eax, 1
000000014028b2ca jmp      0x14028b2ce
000000014028b2cc xor      eax, eax
000000014028b2ce add      rsp, 0x38
000000014028b2d2 ret      