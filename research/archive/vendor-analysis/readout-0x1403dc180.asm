00000001403dc180 push     rbx
00000001403dc182 push     rbp
00000001403dc183 push     rsi
00000001403dc184 push     rdi
00000001403dc185 push     r12
00000001403dc187 push     r13
00000001403dc189 push     r14
00000001403dc18b push     r15
00000001403dc18d sub      rsp, 0x48
00000001403dc191 mov      r15, qword ptr [rcx + 0x9a0]
00000001403dc198 xor      r13b, r13b
00000001403dc19b and      dword ptr [rsp + 0xa0], 0
00000001403dc1a3 mov      byte ptr [rsp + 0x90], 1
00000001403dc1ab mov      byte ptr [rsp + 0x98], r13b
00000001403dc1b3 cmp      byte ptr [r15 + 0x145a], r13b
00000001403dc1ba jne      0x1403dc204
00000001403dc1bc mov      rcx, qword ptr [rip + 0x543e3d]
00000001403dc1c3 lea      rsi, [rip + 0x543e36]
00000001403dc1ca cmp      rcx, rsi
00000001403dc1cd je       0x1403dc1fd
00000001403dc1cf cmp      byte ptr [rcx + 0x169], 4
00000001403dc1d6 jb       0x1403dc1fd
00000001403dc1d8 bt       dword ptr [rcx + 0x16c], 0xc
00000001403dc1e0 jae      0x1403dc1fd
00000001403dc1e2 mov      rcx, qword ptr [rcx + 0x158]
00000001403dc1e9 lea      r8, [rip + 0x2f9028]
00000001403dc1f0 mov      edx, 0xb
00000001403dc1f5 xor      r9d, r9d
00000001403dc1f8 call     0x140001bb0
00000001403dc1fd xor      al, al
00000001403dc1ff jmp      0x1403dc414
00000001403dc204 xor      r14d, r14d
00000001403dc207 lea      rbx, [r15 + 0x1460]
00000001403dc20e lea      rsi, [rip + 0x543deb]
00000001403dc215 lea      rbp, [rip + 0x2f8ffc]
00000001403dc21c mov      rcx, qword ptr [rip + 0x543ddd]
00000001403dc223 cmp      rcx, rsi
00000001403dc226 je       0x1403dc266
00000001403dc228 cmp      byte ptr [rcx + 0x169], 4
00000001403dc22f jb       0x1403dc266
00000001403dc231 bt       dword ptr [rcx + 0x16c], 0xc
00000001403dc239 jae      0x1403dc266
00000001403dc23b mov      eax, dword ptr [rbx + 4]
00000001403dc23e mov      edx, 0xc
00000001403dc243 mov      rcx, qword ptr [rcx + 0x158]
00000001403dc24a mov      r9d, r14d
00000001403dc24d mov      dword ptr [rsp + 0x30], eax
00000001403dc251 mov      r8, rbp
00000001403dc254 mov      eax, dword ptr [rbx]
00000001403dc256 mov      dword ptr [rsp + 0x28], eax
00000001403dc25a mov      eax, dword ptr [rbx - 4]
00000001403dc25d mov      dword ptr [rsp + 0x20], eax
00000001403dc261 call     0x140008794
00000001403dc266 inc      r14d
00000001403dc269 add      rbx, 0xc
00000001403dc26d cmp      r14d, 4
00000001403dc271 jb       0x1403dc21c
00000001403dc273 mov      rcx, qword ptr [rip + 0x543d86]
00000001403dc27a cmp      rcx, rsi
00000001403dc27d je       0x1403dc2a6
00000001403dc27f cmp      byte ptr [rcx + 0x169], 4
00000001403dc286 jb       0x1403dc2a6
00000001403dc288 bt       dword ptr [rcx + 0x16c], 0xc
00000001403dc290 jae      0x1403dc2a6
00000001403dc292 mov      rcx, qword ptr [rcx + 0x158]
00000001403dc299 mov      edx, 0xd
00000001403dc29e mov      r8, rbp
00000001403dc2a1 call     0x140001b88
00000001403dc2a6 xor      ebx, ebx
00000001403dc2a8 lea      r12, [r15 + 0x145c]
00000001403dc2af mov      r14d, dword ptr [r12 + 4]
00000001403dc2b4 test     r14d, r14d
00000001403dc2b7 je       0x1403dc3a7
00000001403dc2bd mov      eax, dword ptr [r12 + 8]
00000001403dc2c2 mov      r8d, dword ptr [r12]
00000001403dc2c6 mov      r9, qword ptr [r15 + 0x1328]
00000001403dc2cd mov      dword ptr [rsp + 0xa8], eax
00000001403dc2d4 lea      edx, [r8 + r8]
00000001403dc2d8 lea      eax, [rdx + 1]
00000001403dc2db mov      r13d, dword ptr [r9 + rax*4]
00000001403dc2df mov      rcx, qword ptr [rip + 0x543d1a]
00000001403dc2e6 cmp      rcx, rsi
00000001403dc2e9 je       0x1403dc329
00000001403dc2eb cmp      byte ptr [rcx + 0x169], 4
00000001403dc2f2 jb       0x1403dc329
00000001403dc2f4 bt       dword ptr [rcx + 0x16c], 0xc
00000001403dc2fc jae      0x1403dc329
00000001403dc2fe mov      rcx, qword ptr [rcx + 0x158]
00000001403dc305 mov      eax, edx
00000001403dc307 mov      edx, 0xe
00000001403dc30c mov      eax, dword ptr [r9 + rax*4]
00000001403dc310 mov      r9d, ebx
00000001403dc313 mov      dword ptr [rsp + 0x30], eax
00000001403dc317 mov      dword ptr [rsp + 0x28], r13d
00000001403dc31c mov      dword ptr [rsp + 0x20], r8d
00000001403dc321 mov      r8, rbp
00000001403dc324 call     0x140008794
00000001403dc329 cmp      r14d, -1
00000001403dc32d je       0x1403dc340
00000001403dc32f mov      ecx, r14d
00000001403dc332 call     0x1403e8a84
00000001403dc337 mov      dword ptr [rsp + 0xa0], eax
00000001403dc33e jmp      0x1403dc347
00000001403dc340 mov      eax, dword ptr [rsp + 0xa0]
00000001403dc347 mov      ecx, eax
00000001403dc349 and      r13d, r14d
00000001403dc34c mov      eax, dword ptr [rsp + 0xa8]
00000001403dc353 shl      eax, cl
00000001403dc355 cmp      r13d, eax
00000001403dc358 jne      0x1403dc425
00000001403dc35e mov      r13b, byte ptr [rsp + 0x98]
00000001403dc366 inc      r13b
00000001403dc369 mov      byte ptr [rsp + 0x98], r13b
00000001403dc371 mov      rcx, qword ptr [rip + 0x543c88]
00000001403dc378 cmp      rcx, rsi
00000001403dc37b je       0x1403dc3a7
00000001403dc37d cmp      byte ptr [rcx + 0x169], 4
00000001403dc384 jb       0x1403dc3a7
00000001403dc386 bt       dword ptr [rcx + 0x16c], 0xc
00000001403dc38e jae      0x1403dc3a7
00000001403dc390 mov      rcx, qword ptr [rcx + 0x158]
00000001403dc397 mov      edx, 0xf
00000001403dc39c mov      r9d, ebx
00000001403dc39f mov      r8, rbp
00000001403dc3a2 call     0x140001bb0
00000001403dc3a7 mov      dl, byte ptr [rsp + 0x90]
00000001403dc3ae inc      ebx
00000001403dc3b0 add      r12, 0xc
00000001403dc3b4 cmp      ebx, 4
00000001403dc3b7 jb       0x1403dc2af
00000001403dc3bd mov      rcx, qword ptr [rip + 0x543c3c]
00000001403dc3c4 mov      al, r13b
00000001403dc3c7 neg      al
00000001403dc3c9 sbb      bl, bl
00000001403dc3cb and      bl, dl
00000001403dc3cd cmp      rcx, rsi
00000001403dc3d0 je       0x1403dc406
00000001403dc3d2 cmp      byte ptr [rcx + 0x169], 4
00000001403dc3d9 jb       0x1403dc406
00000001403dc3db bt       dword ptr [rcx + 0x16c], 0xc
00000001403dc3e3 jae      0x1403dc406
00000001403dc3e5 mov      rcx, qword ptr [rcx + 0x158]
00000001403dc3ec mov      edx, 0x11
00000001403dc3f1 movzx    r8d, r13b
00000001403dc3f5 mov      dword ptr [rsp + 0x20], r8d
00000001403dc3fa mov      r8, rbp
00000001403dc3fd movzx    r9d, bl
00000001403dc401 call     0x140001bec
00000001403dc406 test     bl, bl
00000001403dc408 je       0x1403dc412
00000001403dc40a and      dword ptr [r15 + 0x1354], 0
00000001403dc412 mov      al, bl
00000001403dc414 add      rsp, 0x48
00000001403dc418 pop      r15
00000001403dc41a pop      r14
00000001403dc41c pop      r13
00000001403dc41e pop      r12
00000001403dc420 pop      rdi
00000001403dc421 pop      rsi
00000001403dc422 pop      rbp
00000001403dc423 pop      rbx
00000001403dc424 ret      
00000001403dc425 xor      dl, dl
00000001403dc427 mov      byte ptr [rsp + 0x90], dl
00000001403dc42e mov      rcx, qword ptr [rip + 0x543bcb]
00000001403dc435 cmp      rcx, rsi
00000001403dc438 je       0x1403dc471
00000001403dc43a cmp      byte ptr [rcx + 0x169], 4
00000001403dc441 jb       0x1403dc471
00000001403dc443 bt       dword ptr [rcx + 0x16c], 0xc
00000001403dc44b jae      0x1403dc471
00000001403dc44d mov      rcx, qword ptr [rcx + 0x158]
00000001403dc454 mov      edx, 0x10
00000001403dc459 mov      r9d, ebx
00000001403dc45c mov      r8, rbp
00000001403dc45f call     0x140001bb0
00000001403dc464 mov      r13b, byte ptr [rsp + 0x98]
00000001403dc46c jmp      0x1403dc3a7
00000001403dc471 mov      r13b, byte ptr [rsp + 0x98]
00000001403dc479 jmp      0x1403dc3ae