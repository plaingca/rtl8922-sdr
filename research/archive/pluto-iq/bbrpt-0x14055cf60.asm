000000014055cf60 mov      qword ptr [rsp + 8], rbx
000000014055cf65 mov      qword ptr [rsp + 0x10], rbp
000000014055cf6a mov      qword ptr [rsp + 0x18], rsi
000000014055cf6f push     rdi
000000014055cf70 push     r12
000000014055cf72 push     r15
000000014055cf74 sub      rsp, 0x30
000000014055cf78 mov      rax, qword ptr [rcx]
000000014055cf7b mov      edx, 0x8400
000000014055cf80 mov      rbx, qword ptr [rcx + 0x18]
000000014055cf84 mov      rdi, rcx
000000014055cf87 mov      r12d, 0x118
000000014055cf8d mov      rsi, qword ptr [rax]
000000014055cf90 mov      rax, qword ptr [rsi + 0x20]
000000014055cf94 call     qword ptr [rip + 0x12735e]
000000014055cf9a mov      rcx, qword ptr [rdi + 8]
000000014055cf9e lea      r8, [rip + 0x10732b]
000000014055cfa5 mov      r9d, eax
000000014055cfa8 mov      r15d, 1
000000014055cfae mov      rax, qword ptr [rbx + r12]
000000014055cfb2 mov      edx, r15d
000000014055cfb5 call     qword ptr [rip + 0x12733d]
000000014055cfbb mov      rax, qword ptr [rsi + 0x20]
000000014055cfbf mov      edx, 0x8404
000000014055cfc4 mov      rbx, qword ptr [rdi + 0x18]
000000014055cfc8 mov      rcx, rdi
000000014055cfcb call     qword ptr [rip + 0x127327]
000000014055cfd1 mov      rcx, qword ptr [rdi + 8]
000000014055cfd5 lea      r8, [rip + 0x107314]
000000014055cfdc mov      r9d, eax
000000014055cfdf mov      edx, r15d
000000014055cfe2 mov      rax, qword ptr [rbx + r12]
000000014055cfe6 call     qword ptr [rip + 0x12730c]
000000014055cfec xor      r8d, r8d
000000014055cfef xor      edx, edx
000000014055cff1 mov      rcx, rdi
000000014055cff4 call     0x140429fcc
000000014055cff9 mov      rbp, qword ptr [rdi + 0x18]
000000014055cffd mov      ebx, eax
000000014055cfff test     eax, eax
000000014055d001 je       0x14055d028
000000014055d003 mov      rax, qword ptr [rbp + 0x118]
000000014055d00a lea      r8, [rip + 0x1072ff]
000000014055d011 mov      rcx, qword ptr [rdi + 8]
000000014055d015 mov      r9d, ebx
000000014055d018 mov      edx, r15d
000000014055d01b call     qword ptr [rip + 0x1272d7]
000000014055d021 mov      eax, ebx
000000014055d023 jmp      0x14055dadc
000000014055d028 mov      rax, qword ptr [rsi + 0x20]
000000014055d02c mov      edx, 0x8424
000000014055d031 mov      rcx, rdi
000000014055d034 call     qword ptr [rip + 0x1272be]
000000014055d03a mov      rcx, qword ptr [rdi + 8]
000000014055d03e lea      r8, [rip + 0x1072eb]
000000014055d045 mov      r9d, eax
000000014055d048 mov      edx, r15d
000000014055d04b mov      rax, qword ptr [rbp + 0x118]
000000014055d052 call     qword ptr [rip + 0x1272a0]
000000014055d058 mov      rax, qword ptr [rsi + 0x20]
000000014055d05c mov      edx, 0x8430
000000014055d061 mov      rbx, qword ptr [rdi + 0x18]
000000014055d065 mov      rcx, rdi
000000014055d068 call     qword ptr [rip + 0x12728a]
000000014055d06e mov      rcx, qword ptr [rdi + 8]
000000014055d072 lea      r8, [rip + 0x106637]
000000014055d079 mov      r9d, eax
000000014055d07c mov      edx, r15d
000000014055d07f mov      rax, qword ptr [rbx + r12]
000000014055d083 call     qword ptr [rip + 0x12726f]
000000014055d089 mov      rax, qword ptr [rsi + 0x20]
000000014055d08d mov      edx, 0x8434
000000014055d092 mov      rbx, qword ptr [rdi + 0x18]
000000014055d096 mov      rcx, rdi
000000014055d099 call     qword ptr [rip + 0x127259]
000000014055d09f mov      rcx, qword ptr [rdi + 8]
000000014055d0a3 lea      r8, [rip + 0x106626]
000000014055d0aa mov      r9d, eax
000000014055d0ad mov      edx, r15d
000000014055d0b0 mov      rax, qword ptr [rbx + r12]
000000014055d0b4 call     qword ptr [rip + 0x12723e]
000000014055d0ba mov      rax, qword ptr [rsi + 0x20]
000000014055d0be mov      edx, 0x8520
000000014055d0c3 mov      rbx, qword ptr [rdi + 0x18]
000000014055d0c7 mov      rcx, rdi
000000014055d0ca call     qword ptr [rip + 0x127228]
000000014055d0d0 mov      rcx, qword ptr [rdi + 8]
000000014055d0d4 lea      r8, [rip + 0x107275]
000000014055d0db mov      r9d, eax
000000014055d0de mov      edx, r15d
000000014055d0e1 mov      rax, qword ptr [rbx + r12]
000000014055d0e5 call     qword ptr [rip + 0x12720d]
000000014055d0eb mov      rax, qword ptr [rsi + 0x20]
000000014055d0ef mov      edx, 0x8524
000000014055d0f4 mov      rbx, qword ptr [rdi + 0x18]
000000014055d0f8 mov      rcx, rdi
000000014055d0fb call     qword ptr [rip + 0x1271f7]
000000014055d101 mov      rcx, qword ptr [rdi + 8]
000000014055d105 lea      r8, [rip + 0x107264]
000000014055d10c mov      r9d, eax
000000014055d10f mov      edx, r15d
000000014055d112 mov      rax, qword ptr [rbx + r12]
000000014055d116 call     qword ptr [rip + 0x1271dc]
000000014055d11c mov      rax, qword ptr [rsi + 0x20]
000000014055d120 mov      edx, 0x9430
000000014055d125 mov      rbx, qword ptr [rdi + 0x18]
000000014055d129 mov      rcx, rdi
000000014055d12c call     qword ptr [rip + 0x1271c6]
000000014055d132 mov      rcx, qword ptr [rdi + 8]
000000014055d136 lea      r8, [rip + 0x107253]
000000014055d13d mov      r9d, eax
000000014055d140 mov      edx, r15d
000000014055d143 mov      rax, qword ptr [rbx + r12]
000000014055d147 call     qword ptr [rip + 0x1271ab]
000000014055d14d mov      rax, qword ptr [rsi + 0x20]
000000014055d151 mov      edx, 0x9434
000000014055d156 mov      rbx, qword ptr [rdi + 0x18]
000000014055d15a mov      rcx, rdi
000000014055d15d call     qword ptr [rip + 0x127195]
000000014055d163 mov      rcx, qword ptr [rdi + 8]
000000014055d167 lea      r8, [rip + 0x107242]
000000014055d16e mov      r9d, eax
000000014055d171 mov      edx, r15d
000000014055d174 mov      rax, qword ptr [rbx + r12]
000000014055d178 call     qword ptr [rip + 0x12717a]
000000014055d17e mov      rax, qword ptr [rsi + 0x20]
000000014055d182 mov      edx, 0x9d1c
000000014055d187 mov      rbx, qword ptr [rdi + 0x18]
000000014055d18b mov      rcx, rdi
000000014055d18e call     qword ptr [rip + 0x127164]
000000014055d194 mov      rcx, qword ptr [rdi + 8]
000000014055d198 lea      r8, [rip + 0x107231]
000000014055d19f mov      r9d, eax
000000014055d1a2 mov      edx, r15d
000000014055d1a5 mov      rax, qword ptr [rbx + r12]
000000014055d1a9 call     qword ptr [rip + 0x127149]
000000014055d1af mov      rax, qword ptr [rsi + 0x20]
000000014055d1b3 mov      edx, 0x9bf4
000000014055d1b8 mov      rbx, qword ptr [rdi + 0x18]
000000014055d1bc mov      rcx, rdi
000000014055d1bf call     qword ptr [rip + 0x127133]
000000014055d1c5 mov      rcx, qword ptr [rdi + 8]
000000014055d1c9 lea      r8, [rip + 0x107220]
000000014055d1d0 mov      r9d, eax
000000014055d1d3 mov      edx, r15d
000000014055d1d6 mov      rax, qword ptr [rbx + r12]
000000014055d1da call     qword ptr [rip + 0x127118]
000000014055d1e0 mov      rax, qword ptr [rsi + 0x20]
000000014055d1e4 mov      ebp, 0x9bf0
000000014055d1e9 mov      rbx, qword ptr [rdi + 0x18]
000000014055d1ed mov      edx, ebp
000000014055d1ef mov      rcx, rdi
000000014055d1f2 call     qword ptr [rip + 0x127100]
000000014055d1f8 mov      rcx, qword ptr [rdi + 8]
000000014055d1fc lea      r8, [rip + 0x10720d]
000000014055d203 mov      r9d, eax
000000014055d206 mov      edx, r15d
000000014055d209 mov      rax, qword ptr [rbx + r12]
000000014055d20d call     qword ptr [rip + 0x1270e5]
000000014055d213 mov      rax, qword ptr [rsi + 0x20]
000000014055d217 mov      edx, 0x9cf4
000000014055d21c mov      rbx, qword ptr [rdi + 0x18]
000000014055d220 mov      rcx, rdi
000000014055d223 call     qword ptr [rip + 0x1270cf]
000000014055d229 mov      rcx, qword ptr [rdi + 8]
000000014055d22d lea      r8, [rip + 0x1071fc]
000000014055d234 mov      r9d, eax
000000014055d237 mov      edx, r15d
000000014055d23a mov      rax, qword ptr [rbx + r12]
000000014055d23e call     qword ptr [rip + 0x1270b4]
000000014055d244 mov      rax, qword ptr [rsi + 0x20]
000000014055d248 mov      edx, 0x9cf0
000000014055d24d mov      rbx, qword ptr [rdi + 0x18]
000000014055d251 mov      rcx, rdi
000000014055d254 call     qword ptr [rip + 0x12709e]
000000014055d25a mov      rcx, qword ptr [rdi + 8]
000000014055d25e lea      r8, [rip + 0x1071eb]
000000014055d265 mov      r9d, eax
000000014055d268 mov      edx, r15d
000000014055d26b mov      rax, qword ptr [rbx + r12]
000000014055d26f call     qword ptr [rip + 0x127083]
000000014055d275 mov      rax, qword ptr [rsi + 0x20]
000000014055d279 mov      edx, 0xa3f0
000000014055d27e mov      rbx, qword ptr [rdi + 0x18]
000000014055d282 mov      rcx, rdi
000000014055d285 call     qword ptr [rip + 0x12706d]
000000014055d28b mov      rcx, qword ptr [rdi + 8]
000000014055d28f lea      r8, [rip + 0x1071da]
000000014055d296 mov      r9d, eax
000000014055d299 mov      edx, r15d
000000014055d29c mov      rax, qword ptr [rbx + r12]
000000014055d2a0 call     qword ptr [rip + 0x127052]
000000014055d2a6 mov      rax, qword ptr [rsi + 0x20]
000000014055d2aa mov      edx, 0xa3f4
000000014055d2af mov      rbx, qword ptr [rdi + 0x18]
000000014055d2b3 mov      rcx, rdi
000000014055d2b6 call     qword ptr [rip + 0x12703c]
000000014055d2bc mov      rcx, qword ptr [rdi + 8]
000000014055d2c0 lea      r8, [rip + 0x1071d9]
000000014055d2c7 mov      r9d, eax
000000014055d2ca mov      edx, r15d
000000014055d2cd mov      rax, qword ptr [rbx + r12]
000000014055d2d1 call     qword ptr [rip + 0x127021]
000000014055d2d7 mov      rax, qword ptr [rsi + 0x20]
000000014055d2db mov      edx, 0x8c38
000000014055d2e0 mov      rbx, qword ptr [rdi + 0x18]
000000014055d2e4 mov      rcx, rdi
000000014055d2e7 call     qword ptr [rip + 0x12700b]
000000014055d2ed mov      r9d, eax
000000014055d2f0 lea      r8, [rip + 0x1071d9]
000000014055d2f7 mov      rax, qword ptr [rbx + r12]
000000014055d2fb mov      rcx, qword ptr [rdi + 8]
000000014055d2ff mov      edx, r15d
000000014055d302 call     qword ptr [rip + 0x126ff0]
000000014055d308 mov      rax, qword ptr [rsi + 0x20]
000000014055d30c mov      edx, 0x8c3c
000000014055d311 mov      rbx, qword ptr [rdi + 0x18]
000000014055d315 mov      rcx, rdi
000000014055d318 call     qword ptr [rip + 0x126fda]
000000014055d31e mov      rcx, qword ptr [rdi + 8]
000000014055d322 lea      r8, [rip + 0x1071c7]
000000014055d329 mov      r9d, eax
000000014055d32c mov      edx, r15d
000000014055d32f mov      rax, qword ptr [rbx + r12]
000000014055d333 call     qword ptr [rip + 0x126fbf]
000000014055d339 mov      rax, qword ptr [rsi + 0x20]
000000014055d33d mov      edx, 0x9f78
000000014055d342 mov      rbx, qword ptr [rdi + 0x18]
000000014055d346 mov      rcx, rdi
000000014055d349 call     qword ptr [rip + 0x126fa9]
000000014055d34f mov      rcx, qword ptr [rdi + 8]
000000014055d353 lea      r8, [rip + 0x1071b6]
000000014055d35a mov      r9d, eax
000000014055d35d mov      edx, r15d
000000014055d360 mov      rax, qword ptr [rbx + r12]
000000014055d364 call     qword ptr [rip + 0x126f8e]
000000014055d36a mov      rax, qword ptr [rsi + 0x20]
000000014055d36e mov      edx, 0x9f7c
000000014055d373 mov      rbx, qword ptr [rdi + 0x18]
000000014055d377 mov      rcx, rdi
000000014055d37a call     qword ptr [rip + 0x126f78]
000000014055d380 mov      rcx, qword ptr [rdi + 8]
000000014055d384 lea      r8, [rip + 0x1071b5]
000000014055d38b mov      r9d, eax
000000014055d38e mov      edx, r15d
000000014055d391 mov      rax, qword ptr [rbx + r12]
000000014055d395 call     qword ptr [rip + 0x126f5d]
000000014055d39b mov      rax, qword ptr [rsi + 0x20]
000000014055d39f mov      edx, 0x9fb8
000000014055d3a4 mov      rbx, qword ptr [rdi + 0x18]
000000014055d3a8 mov      rcx, rdi
000000014055d3ab call     qword ptr [rip + 0x126f47]
000000014055d3b1 mov      rcx, qword ptr [rdi + 8]
000000014055d3b5 lea      r8, [rip + 0x1071b4]
000000014055d3bc mov      r9d, eax
000000014055d3bf mov      edx, r15d
000000014055d3c2 mov      rax, qword ptr [rbx + r12]
000000014055d3c6 call     qword ptr [rip + 0x126f2c]
000000014055d3cc mov      rax, qword ptr [rsi + 0x20]
000000014055d3d0 mov      edx, 0x9fbc
000000014055d3d5 mov      rbx, qword ptr [rdi + 0x18]
000000014055d3d9 mov      rcx, rdi
000000014055d3dc call     qword ptr [rip + 0x126f16]
000000014055d3e2 mov      rcx, qword ptr [rdi + 8]
000000014055d3e6 lea      r8, [rip + 0x1071b3]
000000014055d3ed mov      r9d, eax
000000014055d3f0 mov      edx, r15d
000000014055d3f3 mov      rax, qword ptr [rbx + r12]
000000014055d3f7 call     qword ptr [rip + 0x126efb]
000000014055d3fd mov      rax, qword ptr [rsi + 0x20]
000000014055d401 mov      edx, 0x9038
000000014055d406 mov      rbx, qword ptr [rdi + 0x18]
000000014055d40a mov      rcx, rdi
000000014055d40d call     qword ptr [rip + 0x126ee5]
000000014055d413 mov      rcx, qword ptr [rdi + 8]
000000014055d417 lea      r8, [rip + 0x1071b2]
000000014055d41e mov      r9d, eax
000000014055d421 mov      edx, r15d
000000014055d424 mov      rax, qword ptr [rbx + r12]
000000014055d428 call     qword ptr [rip + 0x126eca]
000000014055d42e mov      rax, qword ptr [rsi + 0x20]
000000014055d432 mov      edx, 0x903c
000000014055d437 mov      rbx, qword ptr [rdi + 0x18]
000000014055d43b mov      rcx, rdi
000000014055d43e call     qword ptr [rip + 0x126eb4]
000000014055d444 mov      rcx, qword ptr [rdi + 8]
000000014055d448 lea      r8, [rip + 0x1071a1]
000000014055d44f mov      r9d, eax
000000014055d452 mov      edx, r15d
000000014055d455 mov      rax, qword ptr [rbx + r12]
000000014055d459 call     qword ptr [rip + 0x126e99]
000000014055d45f mov      rbx, qword ptr [rdi + 0x18]
000000014055d463 mov      rax, qword ptr [rsi + 0x20]
000000014055d467 mov      edx, 0x9a20
000000014055d46c mov      rcx, rdi
000000014055d46f call     qword ptr [rip + 0x126e83]
000000014055d475 mov      rcx, qword ptr [rdi + 8]
000000014055d479 lea      r8, [rip + 0x107190]
000000014055d480 mov      r9d, eax
000000014055d483 mov      edx, r15d
000000014055d486 mov      rax, qword ptr [rbx + r12]
000000014055d48a call     qword ptr [rip + 0x126e68]
000000014055d490 mov      rax, qword ptr [rsi + 0x20]
000000014055d494 mov      edx, 0x9a24
000000014055d499 mov      rbx, qword ptr [rdi + 0x18]
000000014055d49d mov      rcx, rdi
000000014055d4a0 call     qword ptr [rip + 0x126e52]
000000014055d4a6 mov      rcx, qword ptr [rdi + 8]
000000014055d4aa lea      r8, [rip + 0x10717f]
000000014055d4b1 mov      r9d, eax
000000014055d4b4 mov      edx, r15d
000000014055d4b7 mov      rax, qword ptr [rbx + r12]
000000014055d4bb call     qword ptr [rip + 0x126e37]
000000014055d4c1 mov      rax, qword ptr [rsi + 0x20]
000000014055d4c5 mov      edx, 0x8870
000000014055d4ca mov      rbx, qword ptr [rdi + 0x18]
000000014055d4ce mov      rcx, rdi
000000014055d4d1 call     qword ptr [rip + 0x126e21]
000000014055d4d7 mov      rcx, qword ptr [rdi + 8]
000000014055d4db lea      r8, [rip + 0x10716e]
000000014055d4e2 mov      r9d, eax
000000014055d4e5 mov      edx, r15d
000000014055d4e8 mov      rax, qword ptr [rbx + r12]
000000014055d4ec call     qword ptr [rip + 0x126e06]
000000014055d4f2 mov      rax, qword ptr [rsi + 0x20]
000000014055d4f6 mov      edx, 0x8804
000000014055d4fb mov      rbx, qword ptr [rdi + 0x18]
000000014055d4ff mov      rcx, rdi
000000014055d502 call     qword ptr [rip + 0x126df0]
000000014055d508 mov      rcx, qword ptr [rdi + 8]
000000014055d50c lea      r8, [rip + 0x10715d]
000000014055d513 mov      r9d, eax
000000014055d516 mov      edx, r15d
000000014055d519 mov      rax, qword ptr [rbx + r12]
000000014055d51d call     qword ptr [rip + 0x126dd5]
000000014055d523 mov      rax, qword ptr [rsi + 0x20]
000000014055d527 mov      edx, 0x8874
000000014055d52c mov      rbx, qword ptr [rdi + 0x18]
000000014055d530 mov      rcx, rdi
000000014055d533 call     qword ptr [rip + 0x126dbf]
000000014055d539 mov      rcx, qword ptr [rdi + 8]
000000014055d53d lea      r8, [rip + 0x10714c]
000000014055d544 mov      r9d, eax
000000014055d547 mov      edx, r15d
000000014055d54a mov      rax, qword ptr [rbx + r12]
000000014055d54e call     qword ptr [rip + 0x126da4]
000000014055d554 mov      rax, qword ptr [rsi + 0x20]
000000014055d558 mov      edx, 0x8808
000000014055d55d mov      rbx, qword ptr [rdi + 0x18]
000000014055d561 mov      rcx, rdi
000000014055d564 call     qword ptr [rip + 0x126d8e]
000000014055d56a mov      rcx, qword ptr [rdi + 8]
000000014055d56e lea      r8, [rip + 0x10713b]
000000014055d575 mov      r9d, eax
000000014055d578 mov      edx, r15d
000000014055d57b mov      rax, qword ptr [rbx + r12]
000000014055d57f call     qword ptr [rip + 0x126d73]
000000014055d585 mov      rax, qword ptr [rsi + 0x20]
000000014055d589 mov      edx, 0x8878
000000014055d58e mov      rbx, qword ptr [rdi + 0x18]
000000014055d592 mov      rcx, rdi
000000014055d595 call     qword ptr [rip + 0x126d5d]
000000014055d59b mov      rcx, qword ptr [rdi + 8]
000000014055d59f lea      r8, [rip + 0x10712a]
000000014055d5a6 mov      r9d, eax
000000014055d5a9 mov      edx, r15d
000000014055d5ac mov      rax, qword ptr [rbx + r12]
000000014055d5b0 call     qword ptr [rip + 0x126d42]
000000014055d5b6 mov      rax, qword ptr [rsi + 0x20]
000000014055d5ba mov      edx, 0x880c
000000014055d5bf mov      rbx, qword ptr [rdi + 0x18]
000000014055d5c3 mov      rcx, rdi
000000014055d5c6 call     qword ptr [rip + 0x126d2c]
000000014055d5cc mov      rcx, qword ptr [rdi + 8]
000000014055d5d0 lea      r8, [rip + 0x107119]
000000014055d5d7 mov      r9d, eax
000000014055d5da mov      edx, r15d
000000014055d5dd mov      rax, qword ptr [rbx + r12]
000000014055d5e1 call     qword ptr [rip + 0x126d11]
000000014055d5e7 mov      rax, qword ptr [rsi + 0x20]
000000014055d5eb mov      edx, 0x9888
000000014055d5f0 mov      rbx, qword ptr [rdi + 0x18]
000000014055d5f4 mov      rcx, rdi
000000014055d5f7 call     qword ptr [rip + 0x126cfb]
000000014055d5fd mov      rcx, qword ptr [rdi + 8]
000000014055d601 lea      r8, [rip + 0x107108]
000000014055d608 mov      r9d, eax
000000014055d60b mov      edx, r15d
000000014055d60e mov      rax, qword ptr [rbx + r12]
000000014055d612 call     qword ptr [rip + 0x126ce0]
000000014055d618 mov      rax, qword ptr [rsi + 0x20]
000000014055d61c mov      edx, 0x988c
000000014055d621 mov      rbx, qword ptr [rdi + 0x18]
000000014055d625 mov      rcx, rdi
000000014055d628 call     qword ptr [rip + 0x126cca]
000000014055d62e mov      rcx, qword ptr [rdi + 8]
000000014055d632 lea      r8, [rip + 0x1070f7]
000000014055d639 mov      r9d, eax
000000014055d63c mov      edx, r15d
000000014055d63f mov      rax, qword ptr [rbx + r12]
000000014055d643 call     qword ptr [rip + 0x126caf]
000000014055d649 mov      rax, qword ptr [rsi + 0x20]
000000014055d64d mov      edx, 0x960c
000000014055d652 mov      rbx, qword ptr [rdi + 0x18]
000000014055d656 mov      rcx, rdi
000000014055d659 call     qword ptr [rip + 0x126c99]
000000014055d65f mov      rcx, qword ptr [rdi + 8]
000000014055d663 lea      r8, [rip + 0x1070e6]
000000014055d66a mov      r9d, eax
000000014055d66d mov      edx, r15d
000000014055d670 mov      rax, qword ptr [rbx + r12]
000000014055d674 call     qword ptr [rip + 0x126c7e]
000000014055d67a mov      rax, qword ptr [rsi + 0x20]
000000014055d67e mov      edx, 0x962c
000000014055d683 mov      rbx, qword ptr [rdi + 0x18]
000000014055d687 mov      rcx, rdi
000000014055d68a call     qword ptr [rip + 0x126c68]
000000014055d690 mov      rcx, qword ptr [rdi + 8]
000000014055d694 lea      r8, [rip + 0x1070e5]
000000014055d69b mov      r9d, eax
000000014055d69e mov      edx, r15d
000000014055d6a1 mov      rax, qword ptr [rbx + r12]
000000014055d6a5 call     qword ptr [rip + 0x126c4d]
000000014055d6ab mov      rax, qword ptr [rsi + 0x20]
000000014055d6af mov      edx, 0x963c
000000014055d6b4 mov      rbx, qword ptr [rdi + 0x18]
000000014055d6b8 mov      rcx, rdi
000000014055d6bb call     qword ptr [rip + 0x126c37]
000000014055d6c1 mov      rcx, qword ptr [rdi + 8]
000000014055d6c5 lea      r8, [rip + 0x1070e4]
000000014055d6cc mov      r9d, eax
000000014055d6cf mov      edx, r15d
000000014055d6d2 mov      rax, qword ptr [rbx + r12]
000000014055d6d6 call     qword ptr [rip + 0x126c1c]
000000014055d6dc mov      rax, qword ptr [rsi + 0x20]
000000014055d6e0 mov      edx, 0x9668
000000014055d6e5 mov      rbx, qword ptr [rdi + 0x18]
000000014055d6e9 mov      rcx, rdi
000000014055d6ec call     qword ptr [rip + 0x126c06]
000000014055d6f2 mov      rcx, qword ptr [rdi + 8]
000000014055d6f6 lea      r8, [rip + 0x1070e3]
000000014055d6fd mov      r9d, eax
000000014055d700 mov      edx, r15d
000000014055d703 mov      rax, qword ptr [rbx + r12]
000000014055d707 call     qword ptr [rip + 0x126beb]
000000014055d70d mov      rax, qword ptr [rsi + 0x20]
000000014055d711 mov      edx, 0x966c
000000014055d716 mov      rbx, qword ptr [rdi + 0x18]
000000014055d71a mov      rcx, rdi
000000014055d71d call     qword ptr [rip + 0x126bd5]
000000014055d723 lea      r8, [rip + 0x1070d6]
000000014055d72a mov      edx, r15d
000000014055d72d mov      r9d, eax
000000014055d730 mov      rax, qword ptr [rbx + r12]
000000014055d734 mov      rcx, qword ptr [rdi + 8]
000000014055d738 call     qword ptr [rip + 0x126bba]
000000014055d73e mov      rax, qword ptr [rsi + 0x20]
000000014055d742 mov      edx, 0xb714
000000014055d747 mov      rbx, qword ptr [rdi + 0x18]
000000014055d74b mov      rcx, rdi
000000014055d74e call     qword ptr [rip + 0x126ba4]
000000014055d754 mov      rcx, qword ptr [rdi + 8]
000000014055d758 lea      r8, [rip + 0x1070c1]
000000014055d75f mov      r9d, eax
000000014055d762 mov      edx, r15d
000000014055d765 mov      rax, qword ptr [rbx + r12]
000000014055d769 call     qword ptr [rip + 0x126b89]
000000014055d76f mov      rax, qword ptr [rsi + 0x20]
000000014055d773 mov      edx, 0x8800
000000014055d778 mov      rbx, qword ptr [rdi + 0x18]
000000014055d77c mov      rcx, rdi
000000014055d77f call     qword ptr [rip + 0x126b73]
000000014055d785 mov      rcx, qword ptr [rdi + 8]
000000014055d789 lea      r8, [rip + 0x1070b0]
000000014055d790 mov      r9d, eax
000000014055d793 mov      edx, r15d
000000014055d796 mov      rax, qword ptr [rbx + r12]
000000014055d79a call     qword ptr [rip + 0x126b58]
000000014055d7a0 mov      rax, qword ptr [rsi + 0x20]
000000014055d7a4 mov      edx, 0x9a00
000000014055d7a9 mov      rbx, qword ptr [rdi + 0x18]
000000014055d7ad mov      rcx, rdi
000000014055d7b0 call     qword ptr [rip + 0x126b42]
000000014055d7b6 mov      rcx, qword ptr [rdi + 8]
000000014055d7ba lea      r8, [rip + 0x1070af]
000000014055d7c1 mov      r9d, eax
000000014055d7c4 mov      edx, r15d
000000014055d7c7 mov      rax, qword ptr [rbx + r12]
000000014055d7cb call     qword ptr [rip + 0x126b27]
000000014055d7d1 mov      rax, qword ptr [rsi + 0x20]
000000014055d7d5 lea      edx, [rbp - 4]
000000014055d7d8 mov      rbx, qword ptr [rdi + 0x18]
000000014055d7dc mov      rcx, rdi
000000014055d7df call     qword ptr [rip + 0x126b13]
000000014055d7e5 mov      rcx, qword ptr [rdi + 8]
000000014055d7e9 lea      r8, [rip + 0x1070a0]
000000014055d7f0 mov      r9d, eax
000000014055d7f3 mov      edx, r15d
000000014055d7f6 mov      rax, qword ptr [rbx + r12]
000000014055d7fa call     qword ptr [rip + 0x126af8]
000000014055d800 mov      rax, qword ptr [rsi + 0x20]
000000014055d804 mov      edx, ebp
000000014055d806 mov      rbx, qword ptr [rdi + 0x18]
000000014055d80a mov      rcx, rdi
000000014055d80d call     qword ptr [rip + 0x126ae5]
000000014055d813 mov      rcx, qword ptr [rdi + 8]
000000014055d817 lea      r8, [rip + 0x107092]
000000014055d81e mov      r9d, eax
000000014055d821 mov      edx, r15d
000000014055d824 mov      rax, qword ptr [rbx + r12]
000000014055d828 call     qword ptr [rip + 0x126aca]
000000014055d82e mov      rax, qword ptr [rsi + 0x20]
000000014055d832 lea      edx, [rbp + 4]
000000014055d835 mov      rbx, qword ptr [rdi + 0x18]
000000014055d839 mov      rcx, rdi
000000014055d83c call     qword ptr [rip + 0x126ab6]
000000014055d842 mov      rcx, qword ptr [rdi + 8]
000000014055d846 lea      r8, [rip + 0x107083]
000000014055d84d mov      r9d, eax
000000014055d850 mov      edx, r15d
000000014055d853 mov      rax, qword ptr [rbx + r12]
000000014055d857 call     qword ptr [rip + 0x126a9b]
000000014055d85d mov      rax, qword ptr [rsi + 0x20]
000000014055d861 mov      edx, 0x9ce8
000000014055d866 mov      rbx, qword ptr [rdi + 0x18]
000000014055d86a mov      rcx, rdi
000000014055d86d call     qword ptr [rip + 0x126a85]
000000014055d873 mov      rcx, qword ptr [rdi + 8]
000000014055d877 lea      r8, [rip + 0x107072]
000000014055d87e mov      r9d, eax
000000014055d881 mov      edx, r15d
000000014055d884 mov      rax, qword ptr [rbx + r12]
000000014055d888 call     qword ptr [rip + 0x126a6a]
000000014055d88e mov      rax, qword ptr [rsi + 0x20]
000000014055d892 mov      rbx, qword ptr [rdi + 0x18]
000000014055d896 mov      edx, 0x9cec
000000014055d89b mov      rcx, rdi
000000014055d89e call     qword ptr [rip + 0x126a54]
000000014055d8a4 mov      rcx, qword ptr [rdi + 8]
000000014055d8a8 lea      r8, [rip + 0x107061]
000000014055d8af mov      r9d, eax
000000014055d8b2 mov      edx, r15d
000000014055d8b5 mov      rax, qword ptr [rbx + r12]
000000014055d8b9 call     qword ptr [rip + 0x126a39]
000000014055d8bf mov      rax, qword ptr [rsi + 0x20]
000000014055d8c3 mov      edx, 0xa310
000000014055d8c8 mov      rbx, qword ptr [rdi + 0x18]
000000014055d8cc mov      rcx, rdi
000000014055d8cf call     qword ptr [rip + 0x126a23]
000000014055d8d5 mov      rcx, qword ptr [rdi + 8]
000000014055d8d9 lea      r8, [rip + 0x107050]
000000014055d8e0 mov      r9d, eax
000000014055d8e3 mov      edx, r15d
000000014055d8e6 mov      rax, qword ptr [rbx + r12]
000000014055d8ea call     qword ptr [rip + 0x126a08]
000000014055d8f0 mov      rax, qword ptr [rsi + 0x20]
000000014055d8f4 mov      edx, 0xa300
000000014055d8f9 mov      rbx, qword ptr [rdi + 0x18]
000000014055d8fd mov      rcx, rdi
000000014055d900 call     qword ptr [rip + 0x1269f2]
000000014055d906 mov      rcx, qword ptr [rdi + 8]
000000014055d90a lea      r8, [rip + 0x10703f]
000000014055d911 mov      r9d, eax
000000014055d914 mov      edx, r15d
000000014055d917 mov      rax, qword ptr [rbx + r12]
000000014055d91b call     qword ptr [rip + 0x1269d7]
000000014055d921 mov      rax, qword ptr [rsi + 0x20]
000000014055d925 mov      edx, 0xa304
000000014055d92a mov      rbx, qword ptr [rdi + 0x18]
000000014055d92e mov      rcx, rdi
000000014055d931 call     qword ptr [rip + 0x1269c1]
000000014055d937 mov      rcx, qword ptr [rdi + 8]
000000014055d93b lea      r8, [rip + 0x10702e]
000000014055d942 mov      r9d, eax
000000014055d945 mov      edx, r15d
000000014055d948 mov      rax, qword ptr [rbx + r12]
000000014055d94c call     qword ptr [rip + 0x1269a6]
000000014055d952 mov      rax, qword ptr [rsi + 0x20]
000000014055d956 mov      edx, 0xa308
000000014055d95b mov      rbx, qword ptr [rdi + 0x18]
000000014055d95f mov      rcx, rdi
000000014055d962 call     qword ptr [rip + 0x126990]
000000014055d968 mov      rcx, qword ptr [rdi + 8]
000000014055d96c lea      r8, [rip + 0x10701d]
000000014055d973 mov      r9d, eax
000000014055d976 mov      edx, r15d
000000014055d979 mov      rax, qword ptr [rbx + r12]
000000014055d97d call     qword ptr [rip + 0x126975]
000000014055d983 mov      rax, qword ptr [rsi + 0x20]
000000014055d987 mov      edx, 0xa30c
000000014055d98c mov      rbx, qword ptr [rdi + 0x18]
000000014055d990 mov      rcx, rdi
000000014055d993 call     qword ptr [rip + 0x12695f]
000000014055d999 mov      rcx, qword ptr [rdi + 8]
000000014055d99d lea      r8, [rip + 0x10700c]
000000014055d9a4 mov      r9d, eax
000000014055d9a7 mov      edx, r15d
000000014055d9aa mov      rax, qword ptr [rbx + r12]
000000014055d9ae call     qword ptr [rip + 0x126944]
000000014055d9b4 mov      rax, qword ptr [rsi + 0x20]
000000014055d9b8 mov      edx, 0x8c30
000000014055d9bd mov      rbx, qword ptr [rdi + 0x18]
000000014055d9c1 mov      rcx, rdi
000000014055d9c4 call     qword ptr [rip + 0x12692e]
000000014055d9ca mov      rcx, qword ptr [rdi + 8]
000000014055d9ce lea      r8, [rip + 0x106ffb]
000000014055d9d5 mov      r9d, eax
000000014055d9d8 mov      edx, r15d
000000014055d9db mov      rax, qword ptr [rbx + r12]
000000014055d9df call     qword ptr [rip + 0x126913]
000000014055d9e5 mov      rax, qword ptr [rsi + 0x20]
000000014055d9e9 mov      edx, 0x8d20
000000014055d9ee mov      rbx, qword ptr [rdi + 0x18]
000000014055d9f2 mov      rcx, rdi
000000014055d9f5 call     qword ptr [rip + 0x1268fd]
000000014055d9fb mov      r9d, eax
000000014055d9fe mov      rax, qword ptr [rbx + r12]
000000014055da02 lea      r8, [rip + 0x106fe7]
000000014055da09 mov      rcx, qword ptr [rdi + 8]
000000014055da0d mov      edx, r15d
000000014055da10 call     qword ptr [rip + 0x1268e2]
000000014055da16 mov      rax, qword ptr [rsi + 0x20]
000000014055da1a mov      edx, 0x8d24
000000014055da1f mov      rbx, qword ptr [rdi + 0x18]
000000014055da23 mov      rcx, rdi
000000014055da26 call     qword ptr [rip + 0x1268cc]
000000014055da2c mov      rcx, qword ptr [rdi + 8]
000000014055da30 lea      r8, [rip + 0x106fd9]
000000014055da37 mov      r9d, eax
000000014055da3a mov      edx, r15d
000000014055da3d mov      rax, qword ptr [rbx + r12]
000000014055da41 call     qword ptr [rip + 0x1268b1]
000000014055da47 mov      rax, qword ptr [rsi + 0x20]
000000014055da4b mov      edx, 0x9030
000000014055da50 mov      rbx, qword ptr [rdi + 0x18]
000000014055da54 mov      rcx, rdi
000000014055da57 call     qword ptr [rip + 0x12689b]
000000014055da5d mov      rcx, qword ptr [rdi + 8]
000000014055da61 lea      r8, [rip + 0x106fc8]
000000014055da68 mov      r9d, eax
000000014055da6b mov      edx, r15d
000000014055da6e mov      rax, qword ptr [rbx + r12]
000000014055da72 call     qword ptr [rip + 0x126880]
000000014055da78 mov      rax, qword ptr [rsi + 0x20]
000000014055da7c mov      edx, 0x9120
000000014055da81 mov      rbx, qword ptr [rdi + 0x18]
000000014055da85 mov      rcx, rdi
000000014055da88 call     qword ptr [rip + 0x12686a]
000000014055da8e mov      rcx, qword ptr [rdi + 8]
000000014055da92 lea      r8, [rip + 0x106fb7]
000000014055da99 mov      r9d, eax
000000014055da9c mov      edx, r15d
000000014055da9f mov      rax, qword ptr [rbx + r12]
000000014055daa3 call     qword ptr [rip + 0x12684f]
000000014055daa9 mov      rax, qword ptr [rsi + 0x20]
000000014055daad mov      edx, 0x9124
000000014055dab2 mov      rbx, qword ptr [rdi + 0x18]
000000014055dab6 mov      rcx, rdi
000000014055dab9 call     qword ptr [rip + 0x126839]
000000014055dabf mov      rcx, qword ptr [rdi + 8]
000000014055dac3 lea      r8, [rip + 0x106fa6]
000000014055daca mov      r9d, eax
000000014055dacd mov      edx, r15d
000000014055dad0 mov      rax, qword ptr [rbx + r12]
000000014055dad4 call     qword ptr [rip + 0x12681e]
000000014055dada xor      eax, eax
000000014055dadc mov      rbx, qword ptr [rsp + 0x50]
000000014055dae1 mov      rbp, qword ptr [rsp + 0x58]
000000014055dae6 mov      rsi, qword ptr [rsp + 0x60]
000000014055daeb add      rsp, 0x30
000000014055daef pop      r15
000000014055daf1 pop      r12
000000014055daf3 pop      rdi
000000014055daf4 ret      