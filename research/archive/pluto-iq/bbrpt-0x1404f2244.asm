00000001404f2244 mov      qword ptr [rsp + 0x18], rbx
00000001404f2249 push     rbp
00000001404f224a push     rsi
00000001404f224b push     rdi
00000001404f224c sub      rsp, 0x370
00000001404f2253 mov      rax, qword ptr [rip + 0x435206]
00000001404f225a xor      rax, rsp
00000001404f225d mov      qword ptr [rsp + 0x360], rax
00000001404f2265 mov      rdi, rdx
00000001404f2268 mov      rbx, rcx
00000001404f226b xor      edx, edx
00000001404f226d lea      rcx, [rsp + 0x30]
00000001404f2272 mov      r8d, 0x330
00000001404f2278 call     0x1405f4640
00000001404f227d mov      rsi, qword ptr [rbx + 0x1390]
00000001404f2284 mov      rcx, rbx
00000001404f2287 mov      rax, qword ptr [rsi + 0xc0]
00000001404f228e call     qword ptr [rip + 0x192064]
00000001404f2294 test     eax, eax
00000001404f2296 jne      0x1404f2332
00000001404f229c mov      r8d, dword ptr [rdi + 0x1c]
00000001404f22a0 lea      rbp, [rip + 0x16b2a9]
00000001404f22a7 mov      rdx, qword ptr [rdi + 0x10]
00000001404f22ab lea      r9, [rsp + 0x30]
00000001404f22b0 mov      rcx, rbx
00000001404f22b3 mov      qword ptr [rsp + 0x20], rbp
00000001404f22b8 call     0x1404f3bcc
00000001404f22bd test     eax, eax
00000001404f22bf jne      0x1404f2332
00000001404f22c1 mov      rcx, rbx
00000001404f22c4 call     0x1404f4238
00000001404f22c9 test     eax, eax
00000001404f22cb jne      0x1404f2332
00000001404f22cd mov      rdx, qword ptr [rdi + 0x10]
00000001404f22d1 lea      r8, [rsp + 0x30]
00000001404f22d6 xor      r9d, r9d
00000001404f22d9 mov      qword ptr [rsp + 0x20], rbp
00000001404f22de mov      rcx, rbx
00000001404f22e1 call     0x1404f54c4
00000001404f22e6 test     eax, eax
00000001404f22e8 jne      0x1404f2332
00000001404f22ea mov      rdx, rbp
00000001404f22ed mov      rcx, rbx
00000001404f22f0 call     0x1404f51fc
00000001404f22f5 test     eax, eax
00000001404f22f7 jne      0x1404f2332
00000001404f22f9 mov      r9, rbp
00000001404f22fc lea      rdx, [rsp + 0x30]
00000001404f2301 xor      r8d, r8d
00000001404f2304 mov      rcx, rbx
00000001404f2307 call     0x1404f569c
00000001404f230c test     eax, eax
00000001404f230e jne      0x1404f2332
00000001404f2310 lea      edx, [rax + 2]
00000001404f2313 mov      rcx, rbx
00000001404f2316 call     0x1404f4428
00000001404f231b test     eax, eax
00000001404f231d jne      0x1404f2332
00000001404f231f mov      rax, qword ptr [rsi + 0xc8]
00000001404f2326 mov      rdx, rdi
00000001404f2329 mov      rcx, rbx
00000001404f232c call     qword ptr [rip + 0x191fc6]
00000001404f2332 mov      rcx, qword ptr [rsp + 0x360]
00000001404f233a xor      rcx, rsp
00000001404f233d call     0x1405f45b0
00000001404f2342 mov      rbx, qword ptr [rsp + 0x3a0]
00000001404f234a add      rsp, 0x370
00000001404f2351 pop      rdi
00000001404f2352 pop      rsi
00000001404f2353 pop      rbp
00000001404f2354 ret      