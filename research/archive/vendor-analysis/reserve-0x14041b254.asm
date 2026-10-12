000000014041b254 push     rbx
000000014041b256 sub      rsp, 0x20
000000014041b25a cmp      dword ptr [rcx + 0xeec], 2
000000014041b261 jne      0x14041b2bc
000000014041b263 mov      rax, qword ptr [rcx + 0x258]
000000014041b26a mov      r8b, byte ptr [rax + 0x2e]
000000014041b26e cmp      r8b, 8
000000014041b272 je       0x14041b29e
000000014041b274 cmp      r8b, 0xb
000000014041b278 je       0x14041b28f
000000014041b27a cmp      r8b, 0x10
000000014041b27e jne      0x14041b2bc
000000014041b280 mov      eax, dword ptr [rip + 0x4cf55a]
000000014041b286 lea      rbx, [rip + 0x4cf553]
000000014041b28d jmp      0x14041b2b7
000000014041b28f mov      eax, dword ptr [rip + 0x4cf2ab]
000000014041b295 lea      rbx, [rip + 0x4cf2a4]
000000014041b29c jmp      0x14041b2b7
000000014041b29e mov      eax, dword ptr [rip + 0x4cef1c]
000000014041b2a4 lea      rbx, [rip + 0x4cef15]
000000014041b2ab jmp      0x14041b2b7
000000014041b2ad cmp      eax, edx
000000014041b2af je       0x14041b2c4
000000014041b2b1 add      rbx, 0x70
000000014041b2b5 mov      eax, dword ptr [rbx]
000000014041b2b7 cmp      eax, 0x10
000000014041b2ba jne      0x14041b2ad
000000014041b2bc xor      eax, eax
000000014041b2be add      rsp, 0x20
000000014041b2c2 pop      rbx
000000014041b2c3 ret      
000000014041b2c4 mov      rdx, rbx
000000014041b2c7 call     0x14041b9d4
000000014041b2cc mov      rax, rbx
000000014041b2cf jmp      0x14041b2be