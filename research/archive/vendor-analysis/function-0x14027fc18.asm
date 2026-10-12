000000014027fc18 push     rbx
000000014027fc1a push     rdi
000000014027fc1b sub      rsp, 0x48
000000014027fc1f mov      rax, qword ptr [rip + 0x6a783a]
000000014027fc26 xor      rax, rsp
000000014027fc29 mov      qword ptr [rsp + 0x30], rax
000000014027fc2e mov      rax, qword ptr [rcx + 0x1490]
000000014027fc35 mov      rdi, r9
000000014027fc38 mov      rbx, r8
000000014027fc3b mov      rcx, qword ptr [rax + 0x230]
000000014027fc42 xor      eax, eax
000000014027fc44 mov      dword ptr [rsp + 0x28], eax
000000014027fc48 mov      byte ptr [rsp + 0x28], dl
000000014027fc4c lea      rdx, [rsp + 0x20]
000000014027fc51 mov      qword ptr [rsp + 0x20], rax
000000014027fc56 mov      rax, qword ptr [rcx]
000000014027fc59 mov      rax, qword ptr [rax + 0x660]
000000014027fc60 call     qword ptr [rip + 0x404692]
000000014027fc66 mov      eax, dword ptr [rsp + 0x20]
000000014027fc6a mov      dword ptr [rbx], eax
000000014027fc6c mov      eax, dword ptr [rsp + 0x24]
000000014027fc70 mov      dword ptr [rdi], eax
000000014027fc72 xor      eax, eax
000000014027fc74 mov      rcx, qword ptr [rsp + 0x30]
000000014027fc79 xor      rcx, rsp
000000014027fc7c call     0x1405f45b0
000000014027fc81 add      rsp, 0x48
000000014027fc85 pop      rdi
000000014027fc86 pop      rbx
000000014027fc87 ret      