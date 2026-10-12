00000001404b88d4 mov      qword ptr [rsp + 0x10], rbx
00000001404b88d9 push     rbp
00000001404b88da push     rsi
00000001404b88db push     rdi
00000001404b88dc push     r12
00000001404b88de push     r13
00000001404b88e0 push     r14
00000001404b88e2 push     r15
00000001404b88e4 sub      rsp, 0x60
00000001404b88e8 mov      r15, qword ptr [rcx + 8]
00000001404b88ec mov      rdi, rcx
00000001404b88ef movsxd   rbx, edx
00000001404b88f2 add      r15, 0x69c
00000001404b88f9 imul     r8, rbx, 0x6d0
00000001404b8900 add      r15, r8
00000001404b8903 mov      qword ptr [rsp + 0xa0], r15
00000001404b890b mov      rcx, qword ptr [rip + 0x4676ee]
00000001404b8912 lea      rdx, [rip + 0x4676e7]
00000001404b8919 mov      eax, 4
00000001404b891e cmp      rcx, rdx
00000001404b8921 je       0x1404b8954
00000001404b8923 cmp      byte ptr [rcx + 0x229], al
00000001404b8929 jb       0x1404b8954
00000001404b892b test     dword ptr [rcx + 0x22c], 0x400
00000001404b8935 je       0x1404b8954
00000001404b8937 mov      rcx, qword ptr [rcx + 0x218]
00000001404b893e lea      edx, [rax + 0xa]
00000001404b8941 lea      r9, [rip + 0x1a2278]
00000001404b8948 lea      r8, [rip + 0x42f701]
00000001404b894f call     0x140008874
00000001404b8954 xor      r13d, r13d
00000001404b8957 lea      r14, [r15 + 2]
00000001404b895b mov      bpl, r13b
00000001404b895e lea      esi, [r13 + 4]
00000001404b8962 lea      r12d, [r13 + 1]
00000001404b8966 lea      r15d, [r13 + 2]
00000001404b896a mov      byte ptr [rsp + 0x38], r13b
00000001404b896f mov      r9b, bpl
00000001404b8972 mov      byte ptr [rsp + 0x30], r13b
00000001404b8977 xor      r8d, r8d
00000001404b897a mov      word ptr [rsp + 0x28], r13w
00000001404b8980 mov      edx, ebx
00000001404b8982 mov      rcx, rdi
00000001404b8985 mov      byte ptr [rsp + 0x20], r13b
00000001404b898a call     0x140386630
00000001404b898f movsx    eax, al
00000001404b8992 mov      r9b, bpl
00000001404b8995 cdq      
00000001404b8996 mov      byte ptr [rsp + 0x38], r13b
00000001404b899b sub      eax, edx
00000001404b899d mov      byte ptr [rsp + 0x30], r13b
00000001404b89a2 sar      eax, 1
00000001404b89a4 xor      r8d, r8d
00000001404b89a7 mov      word ptr [rsp + 0x28], r12w
00000001404b89ad mov      edx, ebx
00000001404b89af mov      rcx, rdi
00000001404b89b2 mov      byte ptr [r14 - 2], al
00000001404b89b6 mov      byte ptr [rsp + 0x20], r13b
00000001404b89bb call     0x140386630
00000001404b89c0 movsx    eax, al
00000001404b89c3 mov      r9b, bpl
00000001404b89c6 cdq      
00000001404b89c7 mov      byte ptr [rsp + 0x38], r13b
00000001404b89cc sub      eax, edx
00000001404b89ce mov      byte ptr [rsp + 0x30], r13b
00000001404b89d3 sar      eax, 1
00000001404b89d5 xor      r8d, r8d
00000001404b89d8 mov      word ptr [rsp + 0x28], r15w
00000001404b89de mov      edx, ebx
00000001404b89e0 mov      rcx, rdi
00000001404b89e3 mov      byte ptr [r14 - 1], al
00000001404b89e7 mov      byte ptr [rsp + 0x20], r13b
00000001404b89ec call     0x140386630
00000001404b89f1 movsx    eax, al
00000001404b89f4 mov      r9b, bpl
00000001404b89f7 cdq      
00000001404b89f8 mov      byte ptr [rsp + 0x38], r13b
00000001404b89fd sub      eax, edx
00000001404b89ff mov      byte ptr [rsp + 0x30], r13b
00000001404b8a04 sar      eax, 1
00000001404b8a06 xor      r8d, r8d
00000001404b8a09 mov      word ptr [rsp + 0x28], 3
00000001404b8a10 mov      edx, ebx
00000001404b8a12 mov      rcx, rdi
00000001404b8a15 mov      byte ptr [r14], al
00000001404b8a18 mov      byte ptr [rsp + 0x20], r13b
00000001404b8a1d call     0x140386630
00000001404b8a22 movsx    eax, al
00000001404b8a25 add      bpl, r12b
00000001404b8a28 cdq      
00000001404b8a29 sub      eax, edx
00000001404b8a2b sar      eax, 1
00000001404b8a2d mov      byte ptr [r14 + 1], al
00000001404b8a31 add      r14, rsi
00000001404b8a34 cmp      bpl, r15b
00000001404b8a37 jb       0x1404b896a
00000001404b8a3d mov      r15, qword ptr [rsp + 0xa0]
00000001404b8a45 mov      bpl, r13b
00000001404b8a48 lea      r14, [r15 + 9]
00000001404b8a4c mov      byte ptr [rsp + 0x38], r13b
00000001404b8a51 mov      r9b, bpl
00000001404b8a54 mov      byte ptr [rsp + 0x30], r13b
00000001404b8a59 xor      r8d, r8d
00000001404b8a5c mov      word ptr [rsp + 0x28], 4
00000001404b8a63 mov      edx, ebx
00000001404b8a65 mov      rcx, rdi
00000001404b8a68 mov      byte ptr [rsp + 0x20], r13b
00000001404b8a6d call     0x140386630
00000001404b8a72 movsx    eax, al
00000001404b8a75 mov      r9b, bpl
00000001404b8a78 cdq      
00000001404b8a79 mov      byte ptr [rsp + 0x38], r13b
00000001404b8a7e sub      eax, edx
00000001404b8a80 mov      byte ptr [rsp + 0x30], r13b
00000001404b8a85 sar      eax, 1
00000001404b8a87 xor      r8d, r8d
00000001404b8a8a mov      word ptr [rsp + 0x28], 5
00000001404b8a91 mov      edx, ebx
00000001404b8a93 mov      rcx, rdi
00000001404b8a96 mov      byte ptr [r14 - 1], al
00000001404b8a9a mov      byte ptr [rsp + 0x20], r13b
00000001404b8a9f call     0x140386630
00000001404b8aa4 movsx    eax, al
00000001404b8aa7 mov      r9b, bpl
00000001404b8aaa cdq      
00000001404b8aab mov      byte ptr [rsp + 0x38], r13b
00000001404b8ab0 sub      eax, edx
00000001404b8ab2 mov      byte ptr [rsp + 0x30], r13b
00000001404b8ab7 sar      eax, 1
00000001404b8ab9 xor      r8d, r8d
00000001404b8abc mov      word ptr [rsp + 0x28], 6
00000001404b8ac3 mov      edx, ebx
00000001404b8ac5 mov      rcx, rdi
00000001404b8ac8 mov      byte ptr [r14], al
00000001404b8acb mov      byte ptr [rsp + 0x20], r13b
00000001404b8ad0 call     0x140386630
00000001404b8ad5 movsx    eax, al
00000001404b8ad8 mov      r9b, bpl
00000001404b8adb cdq      
00000001404b8adc mov      byte ptr [rsp + 0x38], r13b
00000001404b8ae1 sub      eax, edx
00000001404b8ae3 mov      byte ptr [rsp + 0x30], r13b
00000001404b8ae8 sar      eax, 1
00000001404b8aea xor      r8d, r8d
00000001404b8aed mov      word ptr [rsp + 0x28], 7
00000001404b8af4 mov      edx, ebx
00000001404b8af6 mov      rcx, rdi
00000001404b8af9 mov      byte ptr [r14 + 1], al
00000001404b8afd mov      byte ptr [rsp + 0x20], r13b
00000001404b8b02 call     0x140386630
00000001404b8b07 movsx    eax, al
00000001404b8b0a mov      r9b, bpl
00000001404b8b0d cdq      
00000001404b8b0e mov      byte ptr [rsp + 0x38], r13b
00000001404b8b13 sub      eax, edx
00000001404b8b15 mov      byte ptr [rsp + 0x30], r13b
00000001404b8b1a sar      eax, 1
00000001404b8b1c xor      r8d, r8d
00000001404b8b1f mov      word ptr [rsp + 0x28], 8
00000001404b8b26 mov      edx, ebx
00000001404b8b28 mov      rcx, rdi
00000001404b8b2b mov      byte ptr [r14 + 2], al
00000001404b8b2f mov      byte ptr [rsp + 0x20], r13b
00000001404b8b34 call     0x140386630
00000001404b8b39 movsx    eax, al
00000001404b8b3c mov      r9b, bpl
00000001404b8b3f cdq      
00000001404b8b40 mov      byte ptr [rsp + 0x38], r13b
00000001404b8b45 sub      eax, edx
00000001404b8b47 mov      byte ptr [rsp + 0x30], r13b
00000001404b8b4c sar      eax, 1
00000001404b8b4e xor      r8d, r8d
00000001404b8b51 mov      word ptr [rsp + 0x28], 9
00000001404b8b58 mov      edx, ebx
00000001404b8b5a mov      rcx, rdi
00000001404b8b5d mov      byte ptr [r14 + 3], al
00000001404b8b61 mov      byte ptr [rsp + 0x20], r13b
00000001404b8b66 call     0x140386630
00000001404b8b6b movsx    eax, al
00000001404b8b6e cdq      
00000001404b8b6f sub      eax, edx
00000001404b8b71 mov      byte ptr [rsp + 0x38], r13b
00000001404b8b76 sar      eax, 1
00000001404b8b78 mov      r9b, bpl
00000001404b8b7b mov      byte ptr [rsp + 0x30], r13b
00000001404b8b80 xor      r8d, r8d
00000001404b8b83 mov      word ptr [rsp + 0x28], 0xa
00000001404b8b8a mov      edx, ebx
00000001404b8b8c mov      rcx, rdi
00000001404b8b8f mov      byte ptr [r14 + 4], al
00000001404b8b93 mov      byte ptr [rsp + 0x20], r13b
00000001404b8b98 call     0x140386630
00000001404b8b9d movsx    eax, al
00000001404b8ba0 mov      r9b, bpl
00000001404b8ba3 cdq      
00000001404b8ba4 mov      byte ptr [rsp + 0x38], r13b
00000001404b8ba9 sub      eax, edx
00000001404b8bab mov      byte ptr [rsp + 0x30], r13b
00000001404b8bb0 sar      eax, 1
00000001404b8bb2 xor      r8d, r8d
00000001404b8bb5 mov      word ptr [rsp + 0x28], 0xb
00000001404b8bbc mov      edx, ebx
00000001404b8bbe mov      rcx, rdi
00000001404b8bc1 mov      byte ptr [r14 + 5], al
00000001404b8bc5 mov      byte ptr [rsp + 0x20], r13b
00000001404b8bca call     0x140386630
00000001404b8bcf movsx    eax, al
00000001404b8bd2 lea      r14, [r14 + 8]
00000001404b8bd6 cdq      
00000001404b8bd7 add      bpl, r12b
00000001404b8bda sub      eax, edx
00000001404b8bdc sar      eax, 1
00000001404b8bde mov      byte ptr [r14 - 2], al
00000001404b8be2 mov      eax, 5
00000001404b8be7 cmp      bpl, al
00000001404b8bea jb       0x1404b8a4c
00000001404b8bf0 mov      bpl, r13b
00000001404b8bf3 lea      r12, [r15 + 0xe5]
00000001404b8bfa lea      r14, [r15 + 0x31]
00000001404b8bfe mov      ecx, 0x8c
00000001404b8c03 lea      esi, [rax - 1]
00000001404b8c06 mov      byte ptr [rsp + 0x38], r13b
00000001404b8c0b mov      r9b, bpl
00000001404b8c0e mov      byte ptr [rsp + 0x30], r13b
00000001404b8c13 xor      r8d, r8d
00000001404b8c16 mov      word ptr [rsp + 0x28], cx
00000001404b8c1b mov      edx, ebx
00000001404b8c1d mov      rcx, rdi
00000001404b8c20 mov      byte ptr [rsp + 0x20], r13b
00000001404b8c25 call     0x140386630
00000001404b8c2a movsx    eax, al
00000001404b8c2d mov      r9b, bpl
00000001404b8c30 cdq      
00000001404b8c31 mov      byte ptr [rsp + 0x38], r13b
00000001404b8c36 sub      eax, edx
00000001404b8c38 mov      byte ptr [rsp + 0x30], r13b
00000001404b8c3d sar      eax, 1
00000001404b8c3f xor      r8d, r8d
00000001404b8c42 mov      word ptr [rsp + 0x28], 0x8d
00000001404b8c49 mov      edx, ebx
00000001404b8c4b mov      rcx, rdi
00000001404b8c4e mov      byte ptr [r14 - 1], al
00000001404b8c52 mov      byte ptr [rsp + 0x20], r13b
00000001404b8c57 call     0x140386630
00000001404b8c5c movsx    eax, al
00000001404b8c5f mov      r9b, bpl
00000001404b8c62 cdq      
00000001404b8c63 mov      byte ptr [rsp + 0x38], r13b
00000001404b8c68 sub      eax, edx
00000001404b8c6a mov      byte ptr [rsp + 0x30], r13b
00000001404b8c6f sar      eax, 1
00000001404b8c71 xor      r8d, r8d
00000001404b8c74 mov      word ptr [rsp + 0x28], 0x8e
00000001404b8c7b mov      edx, ebx
00000001404b8c7d mov      rcx, rdi
00000001404b8c80 mov      byte ptr [r14], al
00000001404b8c83 mov      byte ptr [rsp + 0x20], r13b
00000001404b8c88 call     0x140386630
00000001404b8c8d movsx    eax, al
00000001404b8c90 mov      r9b, bpl
00000001404b8c93 cdq      
00000001404b8c94 mov      byte ptr [rsp + 0x38], r13b
00000001404b8c99 sub      eax, edx
00000001404b8c9b mov      byte ptr [rsp + 0x30], r13b
00000001404b8ca0 sar      eax, 1
00000001404b8ca2 xor      r8d, r8d
00000001404b8ca5 mov      word ptr [rsp + 0x28], 0x8f
00000001404b8cac mov      edx, ebx
00000001404b8cae mov      rcx, rdi
00000001404b8cb1 mov      byte ptr [r14 + 1], al
00000001404b8cb5 mov      byte ptr [rsp + 0x20], r13b
00000001404b8cba call     0x140386630
00000001404b8cbf movsx    eax, al
00000001404b8cc2 mov      r9b, bpl
00000001404b8cc5 cdq      
00000001404b8cc6 mov      byte ptr [rsp + 0x38], r13b
00000001404b8ccb sub      eax, edx
00000001404b8ccd mov      byte ptr [rsp + 0x30], r13b
00000001404b8cd2 sar      eax, 1
00000001404b8cd4 xor      r8d, r8d
00000001404b8cd7 mov      word ptr [rsp + 0x28], 0x90
00000001404b8cde mov      edx, ebx
00000001404b8ce0 mov      rcx, rdi
00000001404b8ce3 mov      byte ptr [r14 + 2], al
00000001404b8ce7 mov      byte ptr [rsp + 0x20], r13b
00000001404b8cec call     0x140386630
00000001404b8cf1 movsx    eax, al
00000001404b8cf4 mov      r9b, bpl
00000001404b8cf7 cdq      
00000001404b8cf8 mov      byte ptr [rsp + 0x38], r13b
00000001404b8cfd sub      eax, edx
00000001404b8cff mov      byte ptr [rsp + 0x30], r13b
00000001404b8d04 sar      eax, 1
00000001404b8d06 xor      r8d, r8d
00000001404b8d09 mov      word ptr [rsp + 0x28], 0x91
00000001404b8d10 mov      edx, ebx
00000001404b8d12 mov      rcx, rdi
00000001404b8d15 mov      byte ptr [r14 + 3], al
00000001404b8d19 mov      byte ptr [rsp + 0x20], r13b
00000001404b8d1e call     0x140386630
00000001404b8d23 movsx    eax, al
00000001404b8d26 cdq      
00000001404b8d27 sub      eax, edx
00000001404b8d29 mov      byte ptr [rsp + 0x38], r13b
00000001404b8d2e sar      eax, 1
00000001404b8d30 mov      r9b, bpl
00000001404b8d33 mov      byte ptr [rsp + 0x30], r13b
00000001404b8d38 xor      r8d, r8d
00000001404b8d3b mov      word ptr [rsp + 0x28], 0x92
00000001404b8d42 mov      edx, ebx
00000001404b8d44 mov      rcx, rdi
00000001404b8d47 mov      byte ptr [r14 + 4], al
00000001404b8d4b mov      byte ptr [rsp + 0x20], r13b
00000001404b8d50 call     0x140386630
00000001404b8d55 movsx    eax, al
00000001404b8d58 mov      r9b, bpl
00000001404b8d5b cdq      
00000001404b8d5c mov      byte ptr [rsp + 0x38], r13b
00000001404b8d61 sub      eax, edx
00000001404b8d63 mov      byte ptr [rsp + 0x30], r13b
00000001404b8d68 sar      eax, 1
00000001404b8d6a xor      r8d, r8d
00000001404b8d6d mov      word ptr [rsp + 0x28], 0x93
00000001404b8d74 mov      edx, ebx
00000001404b8d76 mov      rcx, rdi
00000001404b8d79 mov      byte ptr [r14 + 5], al
00000001404b8d7d mov      byte ptr [rsp + 0x20], r13b
00000001404b8d82 call     0x140386630
00000001404b8d87 movsx    eax, al
00000001404b8d8a mov      r9b, bpl
00000001404b8d8d cdq      
00000001404b8d8e mov      byte ptr [rsp + 0x38], r13b
00000001404b8d93 sub      eax, edx
00000001404b8d95 mov      byte ptr [rsp + 0x30], r13b
00000001404b8d9a sar      eax, 1
00000001404b8d9c xor      r8d, r8d
00000001404b8d9f mov      word ptr [rsp + 0x28], 0x94
00000001404b8da6 mov      edx, ebx
00000001404b8da8 mov      rcx, rdi
00000001404b8dab mov      byte ptr [r14 + 6], al
00000001404b8daf mov      byte ptr [rsp + 0x20], r13b
00000001404b8db4 call     0x140386630
00000001404b8db9 movsx    eax, al
00000001404b8dbc mov      r9b, bpl
00000001404b8dbf cdq      
00000001404b8dc0 mov      byte ptr [rsp + 0x38], r13b
00000001404b8dc5 sub      eax, edx
00000001404b8dc7 mov      byte ptr [rsp + 0x30], r13b
00000001404b8dcc sar      eax, 1
00000001404b8dce xor      r8d, r8d
00000001404b8dd1 mov      word ptr [rsp + 0x28], 0x95
00000001404b8dd8 mov      edx, ebx
00000001404b8dda mov      rcx, rdi
00000001404b8ddd mov      byte ptr [r14 + 7], al
00000001404b8de1 mov      byte ptr [rsp + 0x20], r13b
00000001404b8de6 call     0x140386630
00000001404b8deb movsx    eax, al
00000001404b8dee mov      r9b, bpl
00000001404b8df1 cdq      
00000001404b8df2 mov      byte ptr [rsp + 0x38], r13b
00000001404b8df7 sub      eax, edx
00000001404b8df9 mov      byte ptr [rsp + 0x30], r13b
00000001404b8dfe sar      eax, 1
00000001404b8e00 xor      r8d, r8d
00000001404b8e03 mov      word ptr [rsp + 0x28], 0x96
00000001404b8e0a mov      edx, ebx
00000001404b8e0c mov      rcx, rdi
00000001404b8e0f mov      byte ptr [r14 + 8], al
00000001404b8e13 mov      byte ptr [rsp + 0x20], r13b
00000001404b8e18 call     0x140386630
00000001404b8e1d movsx    eax, al
00000001404b8e20 mov      r9b, bpl
00000001404b8e23 cdq      
00000001404b8e24 mov      byte ptr [rsp + 0x38], r13b
00000001404b8e29 sub      eax, edx
00000001404b8e2b mov      byte ptr [rsp + 0x30], r13b
00000001404b8e30 sar      eax, 1
00000001404b8e32 mov      edx, ebx
00000001404b8e34 mov      word ptr [rsp + 0x28], 0x97
00000001404b8e3b xor      r8d, r8d
00000001404b8e3e mov      byte ptr [r14 + 9], al
00000001404b8e42 mov      rcx, rdi
00000001404b8e45 mov      byte ptr [rsp + 0x20], r13b
00000001404b8e4a call     0x140386630
00000001404b8e4f movsx    eax, al
00000001404b8e52 mov      r9b, bpl
00000001404b8e55 cdq      
00000001404b8e56 mov      byte ptr [rsp + 0x38], r13b
00000001404b8e5b sub      eax, edx
00000001404b8e5d mov      byte ptr [rsp + 0x30], r13b
00000001404b8e62 sar      eax, 1
00000001404b8e64 xor      r8d, r8d
00000001404b8e67 mov      word ptr [rsp + 0x28], 0x98
00000001404b8e6e mov      edx, ebx
00000001404b8e70 mov      rcx, rdi
00000001404b8e73 mov      byte ptr [r14 + 0xa], al
00000001404b8e77 mov      byte ptr [rsp + 0x20], r13b
00000001404b8e7c call     0x140386630
00000001404b8e81 movsx    eax, al
00000001404b8e84 mov      r9b, bpl
00000001404b8e87 cdq      
00000001404b8e88 mov      byte ptr [rsp + 0x38], r13b
00000001404b8e8d sub      eax, edx
00000001404b8e8f mov      byte ptr [rsp + 0x30], r13b
00000001404b8e94 sar      eax, 1
00000001404b8e96 xor      r8d, r8d
00000001404b8e99 mov      word ptr [rsp + 0x28], 0x99
00000001404b8ea0 mov      edx, ebx
00000001404b8ea2 mov      rcx, rdi
00000001404b8ea5 mov      byte ptr [r14 + 0xb], al
00000001404b8ea9 mov      byte ptr [rsp + 0x20], r13b
00000001404b8eae call     0x140386630
00000001404b8eb3 movsx    eax, al
00000001404b8eb6 mov      r9b, bpl
00000001404b8eb9 cdq      
00000001404b8eba mov      byte ptr [rsp + 0x38], r13b
00000001404b8ebf sub      eax, edx
00000001404b8ec1 mov      byte ptr [rsp + 0x30], 1
00000001404b8ec6 sar      eax, 1
00000001404b8ec8 xor      r8d, r8d
00000001404b8ecb mov      word ptr [rsp + 0x28], 0x5c
00000001404b8ed2 mov      edx, ebx
00000001404b8ed4 mov      rcx, rdi
00000001404b8ed7 mov      byte ptr [r14 + 0xc], al
00000001404b8edb mov      byte ptr [rsp + 0x20], r13b
00000001404b8ee0 call     0x140386630
00000001404b8ee5 movsx    eax, al
00000001404b8ee8 mov      r9b, bpl
00000001404b8eeb cdq      
00000001404b8eec mov      byte ptr [rsp + 0x38], r13b
00000001404b8ef1 sub      eax, edx
00000001404b8ef3 mov      byte ptr [rsp + 0x30], 1
00000001404b8ef8 sar      eax, 1
00000001404b8efa xor      r8d, r8d
00000001404b8efd mov      word ptr [rsp + 0x28], 0x5d
00000001404b8f04 mov      edx, ebx
00000001404b8f06 mov      rcx, rdi
00000001404b8f09 mov      byte ptr [r14 + 0xd], al
00000001404b8f0d mov      byte ptr [rsp + 0x20], r13b
00000001404b8f12 call     0x140386630
00000001404b8f17 movsx    eax, al
00000001404b8f1a mov      r9b, bpl
00000001404b8f1d cdq      
00000001404b8f1e mov      byte ptr [rsp + 0x38], r13b
00000001404b8f23 sub      eax, edx
00000001404b8f25 mov      byte ptr [rsp + 0x30], 1
00000001404b8f2a sar      eax, 1
00000001404b8f2c xor      r8d, r8d
00000001404b8f2f mov      word ptr [rsp + 0x28], 0x5f
00000001404b8f36 mov      edx, ebx
00000001404b8f38 mov      rcx, rdi
00000001404b8f3b mov      byte ptr [r14 + 0xe], al
00000001404b8f3f mov      byte ptr [rsp + 0x20], r13b
00000001404b8f44 call     0x140386630
00000001404b8f49 movsx    eax, al
00000001404b8f4c mov      r9b, bpl
00000001404b8f4f mov      byte ptr [rsp + 0x38], r13b
00000001404b8f54 cdq      
00000001404b8f55 mov      byte ptr [rsp + 0x30], 1
00000001404b8f5a sub      eax, edx
00000001404b8f5c sar      eax, 1
00000001404b8f5e mov      word ptr [rsp + 0x28], 0x60
00000001404b8f65 mov      byte ptr [r14 + 0xf], al
00000001404b8f69 mov      byte ptr [rsp + 0x20], r13b
00000001404b8f6e xor      r8d, r8d
00000001404b8f71 mov      edx, ebx
00000001404b8f73 mov      rcx, rdi
00000001404b8f76 call     0x140386630
00000001404b8f7b movsx    eax, al
00000001404b8f7e mov      r9b, bpl
00000001404b8f81 cdq      
00000001404b8f82 mov      byte ptr [rsp + 0x38], r13b
00000001404b8f87 sub      eax, edx
00000001404b8f89 mov      byte ptr [rsp + 0x30], r13b
00000001404b8f8e sar      eax, 1
00000001404b8f90 xor      r8d, r8d
00000001404b8f93 mov      word ptr [rsp + 0x28], 0x9c
00000001404b8f9a mov      edx, ebx
00000001404b8f9c mov      rcx, rdi
00000001404b8f9f mov      byte ptr [r14 + 0x10], al
00000001404b8fa3 mov      byte ptr [rsp + 0x20], r13b
00000001404b8fa8 call     0x140386630
00000001404b8fad movsx    eax, al
00000001404b8fb0 mov      r9b, bpl
00000001404b8fb3 cdq      
00000001404b8fb4 mov      byte ptr [rsp + 0x38], r13b
00000001404b8fb9 sub      eax, edx
00000001404b8fbb mov      byte ptr [rsp + 0x30], r13b
00000001404b8fc0 sar      eax, 1
00000001404b8fc2 xor      r8d, r8d
00000001404b8fc5 mov      word ptr [rsp + 0x28], 0x9d
00000001404b8fcc mov      edx, ebx
00000001404b8fce mov      rcx, rdi
00000001404b8fd1 mov      byte ptr [r14 + 0x11], al
00000001404b8fd5 mov      byte ptr [rsp + 0x20], r13b
00000001404b8fda call     0x140386630
00000001404b8fdf movsx    eax, al
00000001404b8fe2 mov      r9b, bpl
00000001404b8fe5 cdq      
00000001404b8fe6 mov      byte ptr [rsp + 0x38], r13b
00000001404b8feb sub      eax, edx
00000001404b8fed mov      byte ptr [rsp + 0x30], r13b
00000001404b8ff2 sar      eax, 1
00000001404b8ff4 xor      r8d, r8d
00000001404b8ff7 mov      word ptr [rsp + 0x28], 0x9e
00000001404b8ffe mov      edx, ebx
00000001404b9000 mov      rcx, rdi
00000001404b9003 mov      byte ptr [r14 + 0x12], al
00000001404b9007 mov      byte ptr [rsp + 0x20], r13b
00000001404b900c call     0x140386630
00000001404b9011 movsx    eax, al
00000001404b9014 mov      r9b, bpl
00000001404b9017 cdq      
00000001404b9018 mov      byte ptr [rsp + 0x38], r13b
00000001404b901d sub      eax, edx
00000001404b901f mov      byte ptr [rsp + 0x30], r13b
00000001404b9024 sar      eax, 1
00000001404b9026 xor      r8d, r8d
00000001404b9029 mov      word ptr [rsp + 0x28], 0x9f
00000001404b9030 mov      edx, ebx
00000001404b9032 mov      rcx, rdi
00000001404b9035 mov      byte ptr [r14 + 0x13], al
00000001404b9039 mov      byte ptr [rsp + 0x20], r13b
00000001404b903e call     0x140386630
00000001404b9043 movsx    eax, al
00000001404b9046 mov      r9b, bpl
00000001404b9049 cdq      
00000001404b904a mov      byte ptr [rsp + 0x38], r13b
00000001404b904f sub      eax, edx
00000001404b9051 mov      byte ptr [rsp + 0x30], r13b
00000001404b9056 sar      eax, 1
00000001404b9058 xor      r8d, r8d
00000001404b905b mov      word ptr [rsp + 0x28], 0xa0
00000001404b9062 mov      edx, ebx
00000001404b9064 mov      rcx, rdi
00000001404b9067 mov      byte ptr [r14 + 0x14], al
00000001404b906b mov      byte ptr [rsp + 0x20], r13b
00000001404b9070 call     0x140386630
00000001404b9075 movsx    eax, al
00000001404b9078 cdq      
00000001404b9079 mov      byte ptr [rsp + 0x38], r13b
00000001404b907e sub      eax, edx
00000001404b9080 mov      byte ptr [rsp + 0x30], r13b
00000001404b9085 sar      eax, 1
00000001404b9087 mov      byte ptr [r14 + 0x15], al
00000001404b908b mov      word ptr [rsp + 0x28], 0xa1
00000001404b9092 mov      r9b, bpl
00000001404b9095 xor      r8d, r8d
00000001404b9098 mov      byte ptr [rsp + 0x20], r13b
00000001404b909d mov      edx, ebx
00000001404b909f mov      rcx, rdi
00000001404b90a2 call     0x140386630
00000001404b90a7 movsx    eax, al
00000001404b90aa mov      r9b, bpl
00000001404b90ad cdq      
00000001404b90ae mov      byte ptr [rsp + 0x38], r13b
00000001404b90b3 sub      eax, edx
00000001404b90b5 mov      byte ptr [rsp + 0x30], r13b
00000001404b90ba sar      eax, 1
00000001404b90bc xor      r8d, r8d
00000001404b90bf mov      word ptr [rsp + 0x28], 0xa2
00000001404b90c6 mov      edx, ebx
00000001404b90c8 mov      rcx, rdi
00000001404b90cb mov      byte ptr [r14 + 0x16], al
00000001404b90cf mov      byte ptr [rsp + 0x20], r13b
00000001404b90d4 call     0x140386630
00000001404b90d9 movsx    eax, al
00000001404b90dc mov      r9b, bpl
00000001404b90df cdq      
00000001404b90e0 mov      byte ptr [rsp + 0x38], r13b
00000001404b90e5 sub      eax, edx
00000001404b90e7 mov      byte ptr [rsp + 0x30], r13b
00000001404b90ec sar      eax, 1
00000001404b90ee xor      r8d, r8d
00000001404b90f1 mov      word ptr [rsp + 0x28], 0xa3
00000001404b90f8 mov      edx, ebx
00000001404b90fa mov      rcx, rdi
00000001404b90fd mov      byte ptr [r14 + 0x17], al
00000001404b9101 mov      byte ptr [rsp + 0x20], r13b
00000001404b9106 call     0x140386630
00000001404b910b movsx    eax, al
00000001404b910e mov      r9b, bpl
00000001404b9111 cdq      
00000001404b9112 mov      byte ptr [rsp + 0x38], r13b
00000001404b9117 sub      eax, edx
00000001404b9119 mov      byte ptr [rsp + 0x30], r13b
00000001404b911e sar      eax, 1
00000001404b9120 xor      r8d, r8d
00000001404b9123 mov      word ptr [rsp + 0x28], 0xa4
00000001404b912a mov      edx, ebx
00000001404b912c mov      rcx, rdi
00000001404b912f mov      byte ptr [r14 + 0x18], al
00000001404b9133 mov      byte ptr [rsp + 0x20], r13b
00000001404b9138 call     0x140386630
00000001404b913d movsx    eax, al
00000001404b9140 mov      r9b, bpl
00000001404b9143 cdq      
00000001404b9144 mov      byte ptr [rsp + 0x38], r13b
00000001404b9149 sub      eax, edx
00000001404b914b mov      byte ptr [rsp + 0x30], r13b
00000001404b9150 sar      eax, 1
00000001404b9152 xor      r8d, r8d
00000001404b9155 mov      word ptr [rsp + 0x28], 0xa5
00000001404b915c mov      edx, ebx
00000001404b915e mov      rcx, rdi
00000001404b9161 mov      byte ptr [r14 + 0x19], al
00000001404b9165 mov      byte ptr [rsp + 0x20], r13b
00000001404b916a call     0x140386630
00000001404b916f movsx    eax, al
00000001404b9172 mov      r9b, bpl
00000001404b9175 cdq      
00000001404b9176 mov      byte ptr [rsp + 0x38], r13b
00000001404b917b sub      eax, edx
00000001404b917d mov      byte ptr [rsp + 0x30], r13b
00000001404b9182 sar      eax, 1
00000001404b9184 xor      r8d, r8d
00000001404b9187 mov      word ptr [rsp + 0x28], 0xa6
00000001404b918e mov      edx, ebx
00000001404b9190 mov      rcx, rdi
00000001404b9193 mov      byte ptr [r14 + 0x1a], al
00000001404b9197 mov      byte ptr [rsp + 0x20], r13b
00000001404b919c call     0x140386630
00000001404b91a1 movsx    eax, al
00000001404b91a4 cdq      
00000001404b91a5 sub      eax, edx
00000001404b91a7 sar      eax, 1
00000001404b91a9 mov      byte ptr [rsp + 0x38], r13b
00000001404b91ae mov      r9b, bpl
00000001404b91b1 mov      byte ptr [rsp + 0x30], r13b
00000001404b91b6 xor      r8d, r8d
00000001404b91b9 mov      word ptr [rsp + 0x28], 0xa7
00000001404b91c0 mov      edx, ebx
00000001404b91c2 mov      rcx, rdi
00000001404b91c5 mov      byte ptr [rsp + 0x20], r13b
00000001404b91ca mov      byte ptr [r14 + 0x1b], al
00000001404b91ce call     0x140386630
00000001404b91d3 movsx    eax, al
00000001404b91d6 mov      r9b, bpl
00000001404b91d9 cdq      
00000001404b91da mov      byte ptr [rsp + 0x38], r13b
00000001404b91df sub      eax, edx
00000001404b91e1 mov      byte ptr [rsp + 0x30], r13b
00000001404b91e6 sar      eax, 1
00000001404b91e8 xor      r8d, r8d
00000001404b91eb mov      word ptr [rsp + 0x28], 0xa8
00000001404b91f2 mov      edx, ebx
00000001404b91f4 mov      rcx, rdi
00000001404b91f7 mov      byte ptr [r14 + 0x1c], al
00000001404b91fb mov      byte ptr [rsp + 0x20], r13b
00000001404b9200 call     0x140386630
00000001404b9205 movsx    eax, al
00000001404b9208 mov      r9b, bpl
00000001404b920b cdq      
00000001404b920c mov      byte ptr [rsp + 0x38], r13b
00000001404b9211 sub      eax, edx
00000001404b9213 mov      byte ptr [rsp + 0x30], r13b
00000001404b9218 sar      eax, 1
00000001404b921a xor      r8d, r8d
00000001404b921d mov      word ptr [rsp + 0x28], 0xa9
00000001404b9224 mov      edx, ebx
00000001404b9226 mov      rcx, rdi
00000001404b9229 mov      byte ptr [r14 + 0x1d], al
00000001404b922d mov      byte ptr [rsp + 0x20], r13b
00000001404b9232 call     0x140386630
00000001404b9237 movsx    eax, al
00000001404b923a mov      r9b, bpl
00000001404b923d cdq      
00000001404b923e mov      byte ptr [rsp + 0x38], r13b
00000001404b9243 sub      eax, edx
00000001404b9245 mov      byte ptr [rsp + 0x30], 1
00000001404b924a sar      eax, 1
00000001404b924c xor      r8d, r8d
00000001404b924f mov      word ptr [rsp + 0x28], 0x68
00000001404b9256 mov      edx, ebx
00000001404b9258 mov      rcx, rdi
00000001404b925b mov      byte ptr [r14 + 0x1e], al
00000001404b925f mov      byte ptr [rsp + 0x20], r13b
00000001404b9264 call     0x140386630
00000001404b9269 movsx    eax, al
00000001404b926c mov      r9b, bpl
00000001404b926f cdq      
00000001404b9270 mov      byte ptr [rsp + 0x38], r13b
00000001404b9275 sub      eax, edx
00000001404b9277 mov      byte ptr [rsp + 0x30], 1
00000001404b927c sar      eax, 1
00000001404b927e xor      r8d, r8d
00000001404b9281 mov      word ptr [rsp + 0x28], 0x69
00000001404b9288 mov      edx, ebx
00000001404b928a mov      rcx, rdi
00000001404b928d mov      byte ptr [r14 + 0x1f], al
00000001404b9291 mov      byte ptr [rsp + 0x20], r13b
00000001404b9296 call     0x140386630
00000001404b929b movsx    eax, al
00000001404b929e mov      r9b, bpl
00000001404b92a1 cdq      
00000001404b92a2 mov      byte ptr [rsp + 0x38], r13b
00000001404b92a7 sub      eax, edx
00000001404b92a9 mov      byte ptr [rsp + 0x30], 1
00000001404b92ae sar      eax, 1
00000001404b92b0 xor      r8d, r8d
00000001404b92b3 mov      word ptr [rsp + 0x28], 0x6b
00000001404b92ba mov      edx, ebx
00000001404b92bc mov      rcx, rdi
00000001404b92bf mov      byte ptr [r14 + 0x20], al
00000001404b92c3 mov      byte ptr [rsp + 0x20], r13b
00000001404b92c8 call     0x140386630
00000001404b92cd movsx    eax, al
00000001404b92d0 cdq      
00000001404b92d1 mov      byte ptr [rsp + 0x38], r13b
00000001404b92d6 sub      eax, edx
00000001404b92d8 mov      byte ptr [rsp + 0x30], 1
00000001404b92dd sar      eax, 1
00000001404b92df mov      r9b, bpl
00000001404b92e2 mov      word ptr [rsp + 0x28], 0x6c
00000001404b92e9 xor      r8d, r8d
00000001404b92ec mov      edx, ebx
00000001404b92ee mov      byte ptr [r14 + 0x21], al
00000001404b92f2 mov      rcx, rdi
00000001404b92f5 mov      byte ptr [rsp + 0x20], r13b
00000001404b92fa call     0x140386630
00000001404b92ff movsx    eax, al
00000001404b9302 mov      r9b, bpl
00000001404b9305 cdq      
00000001404b9306 mov      byte ptr [rsp + 0x38], r13b
00000001404b930b sub      eax, edx
00000001404b930d mov      byte ptr [rsp + 0x30], r13b
00000001404b9312 sar      eax, 1
00000001404b9314 xor      r8d, r8d
00000001404b9317 mov      word ptr [rsp + 0x28], 0x9a
00000001404b931e mov      edx, ebx
00000001404b9320 mov      rcx, rdi
00000001404b9323 mov      byte ptr [r14 + 0x22], al
00000001404b9327 mov      byte ptr [rsp + 0x20], r13b
00000001404b932c call     0x140386630
00000001404b9331 movsx    eax, al
00000001404b9334 mov      r9b, bpl
00000001404b9337 cdq      
00000001404b9338 mov      byte ptr [rsp + 0x38], r13b
00000001404b933d sub      eax, edx
00000001404b933f mov      byte ptr [rsp + 0x30], r13b
00000001404b9344 sar      eax, 1
00000001404b9346 xor      r8d, r8d
00000001404b9349 mov      word ptr [rsp + 0x28], 0x9b
00000001404b9350 mov      edx, ebx
00000001404b9352 mov      rcx, rdi
00000001404b9355 mov      byte ptr [r12 - 1], al
00000001404b935a mov      byte ptr [rsp + 0x20], r13b
00000001404b935f call     0x140386630
00000001404b9364 movsx    eax, al
00000001404b9367 mov      r9b, bpl
00000001404b936a cdq      
00000001404b936b mov      byte ptr [rsp + 0x38], 1
00000001404b9370 sub      eax, edx
00000001404b9372 mov      byte ptr [rsp + 0x30], r13b
00000001404b9377 sar      eax, 1
00000001404b9379 xor      r8d, r8d
00000001404b937c mov      word ptr [rsp + 0x28], 3
00000001404b9383 mov      edx, ebx
00000001404b9385 mov      rcx, rdi
00000001404b9388 mov      byte ptr [r12], al
00000001404b938c mov      byte ptr [rsp + 0x20], r13b
00000001404b9391 call     0x140386630
00000001404b9396 movsx    eax, al
00000001404b9399 mov      r9b, bpl
00000001404b939c cdq      
00000001404b939d mov      byte ptr [rsp + 0x38], 1
00000001404b93a2 sub      eax, edx
00000001404b93a4 mov      byte ptr [rsp + 0x30], r13b
00000001404b93a9 sar      eax, 1
00000001404b93ab xor      r8d, r8d
00000001404b93ae mov      word ptr [rsp + 0x28], 0xb
00000001404b93b5 mov      edx, ebx
00000001404b93b7 mov      rcx, rdi
00000001404b93ba mov      byte ptr [r15 + 0x310], al
00000001404b93c1 mov      byte ptr [rsp + 0x20], r13b
00000001404b93c6 call     0x140386630
00000001404b93cb movsx    eax, al
00000001404b93ce mov      r9b, bpl
00000001404b93d1 cdq      
00000001404b93d2 mov      byte ptr [rsp + 0x38], 1
00000001404b93d7 sub      eax, edx
00000001404b93d9 mov      byte ptr [rsp + 0x30], r13b
00000001404b93de sar      eax, 1
00000001404b93e0 mov      edx, ebx
00000001404b93e2 mov      word ptr [rsp + 0x28], 0x13
00000001404b93e9 xor      r8d, r8d
00000001404b93ec mov      byte ptr [r15 + 0x311], al
00000001404b93f3 mov      byte ptr [rsp + 0x20], r13b
00000001404b93f8 mov      rcx, rdi
00000001404b93fb call     0x140386630
00000001404b9400 movsx    eax, al
00000001404b9403 mov      r9b, bpl
00000001404b9406 cdq      
00000001404b9407 mov      byte ptr [rsp + 0x38], 1
00000001404b940c sub      eax, edx
00000001404b940e mov      byte ptr [rsp + 0x30], r13b
00000001404b9413 sar      eax, 1
00000001404b9415 xor      r8d, r8d
00000001404b9418 mov      word ptr [rsp + 0x28], 0x35
00000001404b941f mov      edx, ebx
00000001404b9421 mov      rcx, rdi
00000001404b9424 mov      byte ptr [r15 + 0x312], al
00000001404b942b mov      byte ptr [rsp + 0x20], r13b
00000001404b9430 call     0x140386630
00000001404b9435 movsx    eax, al
00000001404b9438 mov      r9b, bpl
00000001404b943b cdq      
00000001404b943c mov      byte ptr [rsp + 0x38], 1
00000001404b9441 sub      eax, edx
00000001404b9443 mov      byte ptr [rsp + 0x30], r13b
00000001404b9448 sar      eax, 1
00000001404b944a xor      r8d, r8d
00000001404b944d mov      word ptr [rsp + 0x28], 0x67
00000001404b9454 mov      edx, ebx
00000001404b9456 mov      rcx, rdi
00000001404b9459 mov      byte ptr [r15 + 0x313], al
00000001404b9460 mov      byte ptr [rsp + 0x20], r13b
00000001404b9465 call     0x140386630
00000001404b946a movsx    eax, al
00000001404b946d mov      r9b, bpl
00000001404b9470 cdq      
00000001404b9471 mov      byte ptr [rsp + 0x38], 1
00000001404b9476 sub      eax, edx
00000001404b9478 mov      byte ptr [rsp + 0x30], r13b
00000001404b947d sar      eax, 1
00000001404b947f xor      r8d, r8d
00000001404b9482 mov      word ptr [rsp + 0x28], 0x99
00000001404b9489 mov      edx, ebx
00000001404b948b mov      rcx, rdi
00000001404b948e mov      byte ptr [r15 + 0x314], al
00000001404b9495 mov      byte ptr [rsp + 0x20], r13b
00000001404b949a call     0x140386630
00000001404b949f movsx    eax, al
00000001404b94a2 lea      r14, [r14 + 0x24]
00000001404b94a6 cdq      
00000001404b94a7 add      r12, rsi
00000001404b94aa sub      eax, edx
00000001404b94ac mov      ecx, 0x8c
00000001404b94b1 sar      eax, 1
00000001404b94b3 mov      edx, 1
00000001404b94b8 mov      byte ptr [r15 + 0x315], al
00000001404b94bf add      bpl, dl
00000001404b94c2 lea      eax, [rdx + 4]
00000001404b94c5 cmp      bpl, al
00000001404b94c8 jb       0x1404b8c06
00000001404b94ce mov      bpl, r13b
00000001404b94d1 lea      r12, [r15 + 0xe7]
00000001404b94d8 lea      r14, [r15 + 0xf9]
00000001404b94df lea      rsi, [r15 + 2]
00000001404b94e3 mov      byte ptr [rsp + 0x38], r13b
00000001404b94e8 mov      r9b, bpl
00000001404b94eb mov      byte ptr [rsp + 0x30], r13b
00000001404b94f0 xor      r8d, r8d
00000001404b94f3 mov      word ptr [rsp + 0x28], 0x8c
00000001404b94fa mov      rcx, rdi
00000001404b94fd mov      byte ptr [rsp + 0x20], dl
00000001404b9501 mov      edx, ebx
00000001404b9503 call     0x140386630
00000001404b9508 movsx    eax, al
00000001404b950b mov      r9b, bpl
00000001404b950e cdq      
00000001404b950f mov      byte ptr [rsp + 0x38], r13b
00000001404b9514 sub      eax, edx
00000001404b9516 mov      byte ptr [rsp + 0x30], r13b
00000001404b951b sar      eax, 1
00000001404b951d xor      r8d, r8d
00000001404b9520 mov      word ptr [rsp + 0x28], 0x8d
00000001404b9527 mov      edx, ebx
00000001404b9529 mov      rcx, rdi
00000001404b952c mov      byte ptr [r14 - 1], al
00000001404b9530 mov      byte ptr [rsp + 0x20], 1
00000001404b9535 call     0x140386630
00000001404b953a movsx    eax, al
00000001404b953d mov      r9b, bpl
00000001404b9540 cdq      
00000001404b9541 mov      byte ptr [rsp + 0x38], r13b
00000001404b9546 sub      eax, edx
00000001404b9548 mov      byte ptr [rsp + 0x30], r13b
00000001404b954d sar      eax, 1
00000001404b954f xor      r8d, r8d
00000001404b9552 mov      word ptr [rsp + 0x28], 0x8e
00000001404b9559 mov      edx, ebx
00000001404b955b mov      rcx, rdi
00000001404b955e mov      byte ptr [r14], al
00000001404b9561 mov      byte ptr [rsp + 0x20], 1
00000001404b9566 call     0x140386630
00000001404b956b movsx    eax, al
00000001404b956e mov      r9b, bpl
00000001404b9571 cdq      
00000001404b9572 mov      byte ptr [rsp + 0x38], r13b
00000001404b9577 sub      eax, edx
00000001404b9579 mov      byte ptr [rsp + 0x30], r13b
00000001404b957e sar      eax, 1
00000001404b9580 xor      r8d, r8d
00000001404b9583 mov      word ptr [rsp + 0x28], 0x8f
00000001404b958a mov      edx, ebx
00000001404b958c mov      rcx, rdi
00000001404b958f mov      byte ptr [r14 + 1], al
00000001404b9593 mov      byte ptr [rsp + 0x20], 1
00000001404b9598 call     0x140386630
00000001404b959d movsx    eax, al
00000001404b95a0 mov      r9b, bpl
00000001404b95a3 cdq      
00000001404b95a4 mov      byte ptr [rsp + 0x38], r13b
00000001404b95a9 sub      eax, edx
00000001404b95ab mov      byte ptr [rsp + 0x30], r13b
00000001404b95b0 sar      eax, 1
00000001404b95b2 xor      r8d, r8d
00000001404b95b5 mov      word ptr [rsp + 0x28], 0x90
00000001404b95bc mov      edx, ebx
00000001404b95be mov      rcx, rdi
00000001404b95c1 mov      byte ptr [r14 + 2], al
00000001404b95c5 mov      byte ptr [rsp + 0x20], 1
00000001404b95ca call     0x140386630
00000001404b95cf movsx    eax, al
00000001404b95d2 mov      r9b, bpl
00000001404b95d5 cdq      
00000001404b95d6 mov      byte ptr [rsp + 0x38], r13b
00000001404b95db sub      eax, edx
00000001404b95dd mov      byte ptr [rsp + 0x30], r13b
00000001404b95e2 sar      eax, 1
00000001404b95e4 xor      r8d, r8d
00000001404b95e7 mov      word ptr [rsp + 0x28], 0x91
00000001404b95ee mov      edx, ebx
00000001404b95f0 mov      rcx, rdi
00000001404b95f3 mov      byte ptr [r14 + 3], al
00000001404b95f7 mov      byte ptr [rsp + 0x20], 1
00000001404b95fc call     0x140386630
00000001404b9601 movsx    eax, al
00000001404b9604 cdq      
00000001404b9605 sub      eax, edx
00000001404b9607 mov      byte ptr [rsp + 0x38], r13b
00000001404b960c sar      eax, 1
00000001404b960e mov      r9b, bpl
00000001404b9611 mov      byte ptr [rsp + 0x30], r13b
00000001404b9616 xor      r8d, r8d
00000001404b9619 mov      word ptr [rsp + 0x28], 0x92
00000001404b9620 mov      edx, ebx
00000001404b9622 mov      rcx, rdi
00000001404b9625 mov      byte ptr [r14 + 4], al
00000001404b9629 mov      byte ptr [rsp + 0x20], 1
00000001404b962e call     0x140386630
00000001404b9633 movsx    eax, al
00000001404b9636 mov      r9b, bpl
00000001404b9639 cdq      
00000001404b963a mov      byte ptr [rsp + 0x38], r13b
00000001404b963f sub      eax, edx
00000001404b9641 mov      byte ptr [rsp + 0x30], r13b
00000001404b9646 sar      eax, 1
00000001404b9648 xor      r8d, r8d
00000001404b964b mov      word ptr [rsp + 0x28], 0x93
00000001404b9652 mov      edx, ebx
00000001404b9654 mov      rcx, rdi
00000001404b9657 mov      byte ptr [r14 + 5], al
00000001404b965b mov      byte ptr [rsp + 0x20], 1
00000001404b9660 call     0x140386630
00000001404b9665 movsx    eax, al
00000001404b9668 mov      r9b, bpl
00000001404b966b cdq      
00000001404b966c mov      byte ptr [rsp + 0x38], r13b
00000001404b9671 sub      eax, edx
00000001404b9673 mov      byte ptr [rsp + 0x30], r13b
00000001404b9678 sar      eax, 1
00000001404b967a xor      r8d, r8d
00000001404b967d mov      word ptr [rsp + 0x28], 0x94
00000001404b9684 mov      edx, ebx
00000001404b9686 mov      rcx, rdi
00000001404b9689 mov      byte ptr [r14 + 6], al
00000001404b968d mov      byte ptr [rsp + 0x20], 1
00000001404b9692 call     0x140386630
00000001404b9697 movsx    eax, al
00000001404b969a mov      r9b, bpl
00000001404b969d cdq      
00000001404b969e mov      byte ptr [rsp + 0x38], r13b
00000001404b96a3 sub      eax, edx
00000001404b96a5 mov      byte ptr [rsp + 0x30], r13b
00000001404b96aa sar      eax, 1
00000001404b96ac xor      r8d, r8d
00000001404b96af mov      word ptr [rsp + 0x28], 0x95
00000001404b96b6 mov      edx, ebx
00000001404b96b8 mov      rcx, rdi
00000001404b96bb mov      byte ptr [r14 + 7], al
00000001404b96bf mov      byte ptr [rsp + 0x20], 1
00000001404b96c4 call     0x140386630
00000001404b96c9 movsx    eax, al
00000001404b96cc mov      r9b, bpl
00000001404b96cf cdq      
00000001404b96d0 mov      byte ptr [rsp + 0x38], r13b
00000001404b96d5 sub      eax, edx
00000001404b96d7 mov      byte ptr [rsp + 0x30], r13b
00000001404b96dc sar      eax, 1
00000001404b96de xor      r8d, r8d
00000001404b96e1 mov      word ptr [rsp + 0x28], 0x96
00000001404b96e8 mov      edx, ebx
00000001404b96ea mov      rcx, rdi
00000001404b96ed mov      byte ptr [r14 + 8], al
00000001404b96f1 mov      byte ptr [rsp + 0x20], 1
00000001404b96f6 call     0x140386630
00000001404b96fb movsx    eax, al
00000001404b96fe mov      r9b, bpl
00000001404b9701 cdq      
00000001404b9702 mov      byte ptr [rsp + 0x38], r13b
00000001404b9707 sub      eax, edx
00000001404b9709 mov      byte ptr [rsp + 0x30], r13b
00000001404b970e sar      eax, 1
00000001404b9710 mov      edx, ebx
00000001404b9712 mov      word ptr [rsp + 0x28], 0x97
00000001404b9719 xor      r8d, r8d
00000001404b971c mov      byte ptr [r14 + 9], al
00000001404b9720 mov      rcx, rdi
00000001404b9723 mov      byte ptr [rsp + 0x20], 1
00000001404b9728 call     0x140386630
00000001404b972d movsx    eax, al
00000001404b9730 mov      r9b, bpl
00000001404b9733 cdq      
00000001404b9734 mov      byte ptr [rsp + 0x38], r13b
00000001404b9739 sub      eax, edx
00000001404b973b mov      byte ptr [rsp + 0x30], r13b
00000001404b9740 sar      eax, 1
00000001404b9742 xor      r8d, r8d
00000001404b9745 mov      word ptr [rsp + 0x28], 0x98
00000001404b974c mov      edx, ebx
00000001404b974e mov      rcx, rdi
00000001404b9751 mov      byte ptr [r14 + 0xa], al
00000001404b9755 mov      byte ptr [rsp + 0x20], 1
00000001404b975a call     0x140386630
00000001404b975f movsx    eax, al
00000001404b9762 mov      r9b, bpl
00000001404b9765 cdq      
00000001404b9766 mov      byte ptr [rsp + 0x38], r13b
00000001404b976b sub      eax, edx
00000001404b976d mov      byte ptr [rsp + 0x30], r13b
00000001404b9772 sar      eax, 1
00000001404b9774 xor      r8d, r8d
00000001404b9777 mov      word ptr [rsp + 0x28], 0x99
00000001404b977e mov      edx, ebx
00000001404b9780 mov      rcx, rdi
00000001404b9783 mov      byte ptr [r14 + 0xb], al
00000001404b9787 mov      byte ptr [rsp + 0x20], 1
00000001404b978c call     0x140386630
00000001404b9791 movsx    eax, al
00000001404b9794 mov      r9b, bpl
00000001404b9797 cdq      
00000001404b9798 mov      byte ptr [rsp + 0x38], r13b
00000001404b979d sub      eax, edx
00000001404b979f mov      byte ptr [rsp + 0x30], 1
00000001404b97a4 sar      eax, 1
00000001404b97a6 xor      r8d, r8d
00000001404b97a9 mov      word ptr [rsp + 0x28], 0x5c
00000001404b97b0 mov      edx, ebx
00000001404b97b2 mov      rcx, rdi
00000001404b97b5 mov      byte ptr [r14 + 0xc], al
00000001404b97b9 mov      byte ptr [rsp + 0x20], 1
00000001404b97be call     0x140386630
00000001404b97c3 movsx    eax, al
00000001404b97c6 mov      r9b, bpl
00000001404b97c9 cdq      
00000001404b97ca mov      byte ptr [rsp + 0x38], r13b
00000001404b97cf sub      eax, edx
00000001404b97d1 mov      byte ptr [rsp + 0x30], 1
00000001404b97d6 sar      eax, 1
00000001404b97d8 xor      r8d, r8d
00000001404b97db mov      word ptr [rsp + 0x28], 0x5d
00000001404b97e2 mov      edx, ebx
00000001404b97e4 mov      rcx, rdi
00000001404b97e7 mov      byte ptr [r14 + 0xd], al
00000001404b97eb mov      byte ptr [rsp + 0x20], 1
00000001404b97f0 call     0x140386630
00000001404b97f5 movsx    eax, al
00000001404b97f8 mov      r9b, bpl
00000001404b97fb cdq      
00000001404b97fc mov      byte ptr [rsp + 0x38], r13b
00000001404b9801 sub      eax, edx
00000001404b9803 mov      byte ptr [rsp + 0x30], 1
00000001404b9808 sar      eax, 1
00000001404b980a xor      r8d, r8d
00000001404b980d mov      word ptr [rsp + 0x28], 0x5f
00000001404b9814 mov      edx, ebx
00000001404b9816 mov      rcx, rdi
00000001404b9819 mov      byte ptr [r14 + 0xe], al
00000001404b981d mov      byte ptr [rsp + 0x20], 1
00000001404b9822 call     0x140386630
00000001404b9827 movsx    eax, al
00000001404b982a mov      r9b, bpl
00000001404b982d mov      byte ptr [rsp + 0x38], r13b
00000001404b9832 cdq      
00000001404b9833 mov      byte ptr [rsp + 0x30], 1
00000001404b9838 sub      eax, edx
00000001404b983a sar      eax, 1
00000001404b983c mov      word ptr [rsp + 0x28], 0x60
00000001404b9843 mov      byte ptr [r14 + 0xf], al
00000001404b9847 mov      byte ptr [rsp + 0x20], 1
00000001404b984c xor      r8d, r8d
00000001404b984f mov      edx, ebx
00000001404b9851 mov      rcx, rdi
00000001404b9854 call     0x140386630
00000001404b9859 movsx    eax, al
00000001404b985c mov      r9b, bpl
00000001404b985f cdq      
00000001404b9860 mov      byte ptr [rsp + 0x38], r13b
00000001404b9865 sub      eax, edx
00000001404b9867 mov      byte ptr [rsp + 0x30], r13b
00000001404b986c sar      eax, 1
00000001404b986e xor      r8d, r8d
00000001404b9871 mov      word ptr [rsp + 0x28], 0x9c
00000001404b9878 mov      edx, ebx
00000001404b987a mov      rcx, rdi
00000001404b987d mov      byte ptr [r14 + 0x10], al
00000001404b9881 mov      byte ptr [rsp + 0x20], 1
00000001404b9886 call     0x140386630
00000001404b988b movsx    eax, al
00000001404b988e mov      r9b, bpl
00000001404b9891 cdq      
00000001404b9892 mov      byte ptr [rsp + 0x38], r13b
00000001404b9897 sub      eax, edx
00000001404b9899 mov      byte ptr [rsp + 0x30], r13b
00000001404b989e sar      eax, 1
00000001404b98a0 xor      r8d, r8d
00000001404b98a3 mov      word ptr [rsp + 0x28], 0x9d
00000001404b98aa mov      edx, ebx
00000001404b98ac mov      rcx, rdi
00000001404b98af mov      byte ptr [r14 + 0x11], al
00000001404b98b3 mov      byte ptr [rsp + 0x20], 1
00000001404b98b8 call     0x140386630
00000001404b98bd movsx    eax, al
00000001404b98c0 mov      r9b, bpl
00000001404b98c3 cdq      
00000001404b98c4 mov      byte ptr [rsp + 0x38], r13b
00000001404b98c9 sub      eax, edx
00000001404b98cb mov      byte ptr [rsp + 0x30], r13b
00000001404b98d0 sar      eax, 1
00000001404b98d2 xor      r8d, r8d
00000001404b98d5 mov      word ptr [rsp + 0x28], 0x9e
00000001404b98dc mov      edx, ebx
00000001404b98de mov      rcx, rdi
00000001404b98e1 mov      byte ptr [r14 + 0x12], al
00000001404b98e5 mov      byte ptr [rsp + 0x20], 1
00000001404b98ea call     0x140386630
00000001404b98ef movsx    eax, al
00000001404b98f2 mov      r9b, bpl
00000001404b98f5 cdq      
00000001404b98f6 mov      byte ptr [rsp + 0x38], r13b
00000001404b98fb sub      eax, edx
00000001404b98fd mov      byte ptr [rsp + 0x30], r13b
00000001404b9902 sar      eax, 1
00000001404b9904 xor      r8d, r8d
00000001404b9907 mov      word ptr [rsp + 0x28], 0x9f
00000001404b990e mov      edx, ebx
00000001404b9910 mov      rcx, rdi
00000001404b9913 mov      byte ptr [r14 + 0x13], al
00000001404b9917 mov      byte ptr [rsp + 0x20], 1
00000001404b991c call     0x140386630
00000001404b9921 movsx    eax, al
00000001404b9924 mov      r9b, bpl
00000001404b9927 cdq      
00000001404b9928 mov      byte ptr [rsp + 0x38], r13b
00000001404b992d sub      eax, edx
00000001404b992f mov      byte ptr [rsp + 0x30], r13b
00000001404b9934 sar      eax, 1
00000001404b9936 xor      r8d, r8d
00000001404b9939 mov      word ptr [rsp + 0x28], 0xa0
00000001404b9940 mov      edx, ebx
00000001404b9942 mov      rcx, rdi
00000001404b9945 mov      byte ptr [r14 + 0x14], al
00000001404b9949 mov      byte ptr [rsp + 0x20], 1
00000001404b994e call     0x140386630
00000001404b9953 movsx    eax, al
00000001404b9956 cdq      
00000001404b9957 mov      byte ptr [rsp + 0x38], r13b
00000001404b995c sub      eax, edx
00000001404b995e mov      byte ptr [rsp + 0x30], r13b
00000001404b9963 sar      eax, 1
00000001404b9965 mov      byte ptr [r14 + 0x15], al
00000001404b9969 mov      word ptr [rsp + 0x28], 0xa1
00000001404b9970 mov      r9b, bpl
00000001404b9973 xor      r8d, r8d
00000001404b9976 mov      byte ptr [rsp + 0x20], 1
00000001404b997b mov      edx, ebx
00000001404b997d mov      rcx, rdi
00000001404b9980 call     0x140386630
00000001404b9985 movsx    eax, al
00000001404b9988 mov      r9b, bpl
00000001404b998b cdq      
00000001404b998c mov      byte ptr [rsp + 0x38], r13b
00000001404b9991 sub      eax, edx
00000001404b9993 mov      byte ptr [rsp + 0x30], r13b
00000001404b9998 sar      eax, 1
00000001404b999a xor      r8d, r8d
00000001404b999d mov      word ptr [rsp + 0x28], 0xa2
00000001404b99a4 mov      edx, ebx
00000001404b99a6 mov      rcx, rdi
00000001404b99a9 mov      byte ptr [r14 + 0x16], al
00000001404b99ad mov      byte ptr [rsp + 0x20], 1
00000001404b99b2 call     0x140386630
00000001404b99b7 movsx    eax, al
00000001404b99ba mov      r9b, bpl
00000001404b99bd cdq      
00000001404b99be mov      byte ptr [rsp + 0x38], r13b
00000001404b99c3 sub      eax, edx
00000001404b99c5 mov      byte ptr [rsp + 0x30], r13b
00000001404b99ca sar      eax, 1
00000001404b99cc xor      r8d, r8d
00000001404b99cf mov      word ptr [rsp + 0x28], 0xa3
00000001404b99d6 mov      edx, ebx
00000001404b99d8 mov      rcx, rdi
00000001404b99db mov      byte ptr [r14 + 0x17], al
00000001404b99df mov      byte ptr [rsp + 0x20], 1
00000001404b99e4 call     0x140386630
00000001404b99e9 movsx    eax, al
00000001404b99ec mov      r9b, bpl
00000001404b99ef cdq      
00000001404b99f0 mov      byte ptr [rsp + 0x38], r13b
00000001404b99f5 sub      eax, edx
00000001404b99f7 mov      byte ptr [rsp + 0x30], r13b
00000001404b99fc sar      eax, 1
00000001404b99fe xor      r8d, r8d
00000001404b9a01 mov      word ptr [rsp + 0x28], 0xa4
00000001404b9a08 mov      edx, ebx
00000001404b9a0a mov      rcx, rdi
00000001404b9a0d mov      byte ptr [r14 + 0x18], al
00000001404b9a11 mov      byte ptr [rsp + 0x20], 1
00000001404b9a16 call     0x140386630
00000001404b9a1b movsx    eax, al
00000001404b9a1e mov      r9b, bpl
00000001404b9a21 cdq      
00000001404b9a22 mov      byte ptr [rsp + 0x38], r13b
00000001404b9a27 sub      eax, edx
00000001404b9a29 mov      byte ptr [rsp + 0x30], r13b
00000001404b9a2e sar      eax, 1
00000001404b9a30 xor      r8d, r8d
00000001404b9a33 mov      word ptr [rsp + 0x28], 0xa5
00000001404b9a3a mov      edx, ebx
00000001404b9a3c mov      rcx, rdi
00000001404b9a3f mov      byte ptr [r14 + 0x19], al
00000001404b9a43 mov      byte ptr [rsp + 0x20], 1
00000001404b9a48 call     0x140386630
00000001404b9a4d movsx    eax, al
00000001404b9a50 mov      r9b, bpl
00000001404b9a53 cdq      
00000001404b9a54 mov      byte ptr [rsp + 0x38], r13b
00000001404b9a59 sub      eax, edx
00000001404b9a5b mov      byte ptr [rsp + 0x30], r13b
00000001404b9a60 sar      eax, 1
00000001404b9a62 xor      r8d, r8d
00000001404b9a65 mov      word ptr [rsp + 0x28], 0xa6
00000001404b9a6c mov      edx, ebx
00000001404b9a6e mov      rcx, rdi
00000001404b9a71 mov      byte ptr [r14 + 0x1a], al
00000001404b9a75 mov      byte ptr [rsp + 0x20], 1
00000001404b9a7a call     0x140386630
00000001404b9a7f movsx    eax, al
00000001404b9a82 cdq      
00000001404b9a83 sub      eax, edx
00000001404b9a85 sar      eax, 1
00000001404b9a87 mov      byte ptr [rsp + 0x38], r13b
00000001404b9a8c mov      r9b, bpl
00000001404b9a8f mov      byte ptr [rsp + 0x30], r13b
00000001404b9a94 xor      r8d, r8d
00000001404b9a97 mov      word ptr [rsp + 0x28], 0xa7
00000001404b9a9e mov      edx, ebx
00000001404b9aa0 mov      rcx, rdi
00000001404b9aa3 mov      byte ptr [rsp + 0x20], 1
00000001404b9aa8 mov      byte ptr [r14 + 0x1b], al
00000001404b9aac call     0x140386630
00000001404b9ab1 movsx    eax, al
00000001404b9ab4 mov      r9b, bpl
00000001404b9ab7 cdq      
00000001404b9ab8 mov      byte ptr [rsp + 0x38], r13b
00000001404b9abd sub      eax, edx
00000001404b9abf mov      byte ptr [rsp + 0x30], r13b
00000001404b9ac4 sar      eax, 1
00000001404b9ac6 xor      r8d, r8d
00000001404b9ac9 mov      word ptr [rsp + 0x28], 0xa8
00000001404b9ad0 mov      edx, ebx
00000001404b9ad2 mov      rcx, rdi
00000001404b9ad5 mov      byte ptr [r14 + 0x1c], al
00000001404b9ad9 mov      byte ptr [rsp + 0x20], 1
00000001404b9ade call     0x140386630
00000001404b9ae3 movsx    eax, al
00000001404b9ae6 mov      r9b, bpl
00000001404b9ae9 cdq      
00000001404b9aea mov      byte ptr [rsp + 0x38], r13b
00000001404b9aef sub      eax, edx
00000001404b9af1 mov      byte ptr [rsp + 0x30], r13b
00000001404b9af6 sar      eax, 1
00000001404b9af8 xor      r8d, r8d
00000001404b9afb mov      word ptr [rsp + 0x28], 0xa9
00000001404b9b02 mov      edx, ebx
00000001404b9b04 mov      rcx, rdi
00000001404b9b07 mov      byte ptr [r14 + 0x1d], al
00000001404b9b0b mov      byte ptr [rsp + 0x20], 1
00000001404b9b10 call     0x140386630
00000001404b9b15 movsx    eax, al
00000001404b9b18 mov      r9b, bpl
00000001404b9b1b cdq      
00000001404b9b1c mov      byte ptr [rsp + 0x38], r13b
00000001404b9b21 sub      eax, edx
00000001404b9b23 mov      byte ptr [rsp + 0x30], 1
00000001404b9b28 sar      eax, 1
00000001404b9b2a xor      r8d, r8d
00000001404b9b2d mov      word ptr [rsp + 0x28], 0x68
00000001404b9b34 mov      edx, ebx
00000001404b9b36 mov      rcx, rdi
00000001404b9b39 mov      byte ptr [r14 + 0x1e], al
00000001404b9b3d mov      byte ptr [rsp + 0x20], 1
00000001404b9b42 call     0x140386630
00000001404b9b47 movsx    eax, al
00000001404b9b4a mov      r9b, bpl
00000001404b9b4d cdq      
00000001404b9b4e mov      byte ptr [rsp + 0x38], r13b
00000001404b9b53 sub      eax, edx
00000001404b9b55 mov      byte ptr [rsp + 0x30], 1
00000001404b9b5a sar      eax, 1
00000001404b9b5c xor      r8d, r8d
00000001404b9b5f mov      word ptr [rsp + 0x28], 0x69
00000001404b9b66 mov      edx, ebx
00000001404b9b68 mov      rcx, rdi
00000001404b9b6b mov      byte ptr [r14 + 0x1f], al
00000001404b9b6f mov      byte ptr [rsp + 0x20], 1
00000001404b9b74 call     0x140386630
00000001404b9b79 movsx    eax, al
00000001404b9b7c mov      r9b, bpl
00000001404b9b7f cdq      
00000001404b9b80 mov      byte ptr [rsp + 0x38], r13b
00000001404b9b85 sub      eax, edx
00000001404b9b87 mov      byte ptr [rsp + 0x30], 1
00000001404b9b8c sar      eax, 1
00000001404b9b8e xor      r8d, r8d
00000001404b9b91 mov      word ptr [rsp + 0x28], 0x6b
00000001404b9b98 mov      edx, ebx
00000001404b9b9a mov      rcx, rdi
00000001404b9b9d mov      byte ptr [r14 + 0x20], al
00000001404b9ba1 mov      byte ptr [rsp + 0x20], 1
00000001404b9ba6 call     0x140386630
00000001404b9bab movsx    eax, al
00000001404b9bae cdq      
00000001404b9baf mov      byte ptr [rsp + 0x38], r13b
00000001404b9bb4 sub      eax, edx
00000001404b9bb6 mov      byte ptr [rsp + 0x30], 1
00000001404b9bbb sar      eax, 1
00000001404b9bbd mov      r9b, bpl
00000001404b9bc0 mov      word ptr [rsp + 0x28], 0x6c
00000001404b9bc7 xor      r8d, r8d
00000001404b9bca mov      edx, ebx
00000001404b9bcc mov      byte ptr [r14 + 0x21], al
00000001404b9bd0 mov      rcx, rdi
00000001404b9bd3 mov      byte ptr [rsp + 0x20], 1
00000001404b9bd8 call     0x140386630
00000001404b9bdd movsx    eax, al
00000001404b9be0 mov      r9b, bpl
00000001404b9be3 cdq      
00000001404b9be4 mov      byte ptr [rsp + 0x38], r13b
00000001404b9be9 sub      eax, edx
00000001404b9beb mov      byte ptr [rsp + 0x30], r13b
00000001404b9bf0 sar      eax, 1
00000001404b9bf2 xor      r8d, r8d
00000001404b9bf5 mov      word ptr [rsp + 0x28], 0x9a
00000001404b9bfc mov      edx, ebx
00000001404b9bfe mov      rcx, rdi
00000001404b9c01 mov      byte ptr [r14 + 0x22], al
00000001404b9c05 mov      byte ptr [rsp + 0x20], 1
00000001404b9c0a call     0x140386630
00000001404b9c0f movsx    eax, al
00000001404b9c12 mov      r9b, bpl
00000001404b9c15 cdq      
00000001404b9c16 mov      byte ptr [rsp + 0x38], r13b
00000001404b9c1b sub      eax, edx
00000001404b9c1d mov      byte ptr [rsp + 0x30], r13b
00000001404b9c22 sar      eax, 1
00000001404b9c24 xor      r8d, r8d
00000001404b9c27 mov      word ptr [rsp + 0x28], 0x9b
00000001404b9c2e mov      edx, ebx
00000001404b9c30 mov      rcx, rdi
00000001404b9c33 mov      byte ptr [r12 - 1], al
00000001404b9c38 mov      byte ptr [rsp + 0x20], 1
00000001404b9c3d call     0x140386630
00000001404b9c42 movsx    eax, al
00000001404b9c45 lea      r14, [r14 + 0x24]
00000001404b9c49 cdq      
00000001404b9c4a sub      eax, edx
00000001404b9c4c mov      edx, 1
00000001404b9c51 sar      eax, 1
00000001404b9c53 add      bpl, dl
00000001404b9c56 mov      byte ptr [r12], al
00000001404b9c5a lea      r8d, [rdx + 3]
00000001404b9c5e add      r12, r8
00000001404b9c61 lea      eax, [rdx + 4]
00000001404b9c64 cmp      bpl, al
00000001404b9c67 jb       0x1404b94e3
00000001404b9c6d xor      r14d, r14d
00000001404b9c70 lea      r9, [rip + 0x466389]
00000001404b9c77 mov      qword ptr [rsp + 0xa0], r14
00000001404b9c7f mov      ebx, r13d
00000001404b9c82 mov      rcx, qword ptr [rip + 0x466377]
00000001404b9c89 cmp      rcx, r9
00000001404b9c8c je       0x1404b9cf0
00000001404b9c8e cmp      byte ptr [rcx + 0x229], r8b
00000001404b9c95 jb       0x1404b9cf0
00000001404b9c97 test     dword ptr [rcx + 0x22c], 0x400
00000001404b9ca1 je       0x1404b9cf0
00000001404b9ca3 movsx    r8d, byte ptr [rsi - 1]
00000001404b9ca8 mov      edx, 0xf
00000001404b9cad movsx    r9d, byte ptr [rsi]
00000001404b9cb1 movsx    eax, byte ptr [rsi - 2]
00000001404b9cb5 movsx    r10d, byte ptr [rsi + 1]
00000001404b9cba mov      rcx, qword ptr [rcx + 0x218]
00000001404b9cc1 mov      dword ptr [rsp + 0x38], eax
00000001404b9cc5 mov      dword ptr [rsp + 0x30], r8d
00000001404b9cca lea      r8, [rip + 0x42e37f]
00000001404b9cd1 mov      dword ptr [rsp + 0x28], r9d
00000001404b9cd6 mov      r9d, ebx
00000001404b9cd9 mov      dword ptr [rsp + 0x20], r10d
00000001404b9cde call     0x140039d40
00000001404b9ce3 mov      r8d, 4
00000001404b9ce9 lea      r9, [rip + 0x466310]
00000001404b9cf0 xor      edi, edi
00000001404b9cf2 lea      eax, [rdi + 8]
00000001404b9cf5 mov      r11, qword ptr [rip + 0x466304]
00000001404b9cfc cmp      r11, r9
00000001404b9cff je       0x1404b9d93
00000001404b9d05 cmp      byte ptr [r11 + 0x229], r8b
00000001404b9d0c jb       0x1404b9d93
00000001404b9d12 test     dword ptr [r11 + 0x22c], 0x400
00000001404b9d1d je       0x1404b9d8e
00000001404b9d1f lea      ecx, [rdi + 2]
00000001404b9d22 mov      eax, edi
00000001404b9d24 mov      edx, ecx
00000001404b9d26 add      rax, r14
00000001404b9d29 dec      ecx
00000001404b9d2b add      rcx, r14
00000001404b9d2e movsx    r10d, byte ptr [rax + r15 + 8]
00000001404b9d34 lea      rax, [r14 + rdx]
00000001404b9d38 movsx    r8d, byte ptr [rax + r15 + 8]
00000001404b9d3e inc      edx
00000001404b9d40 movsx    r9d, byte ptr [rcx + r15 + 8]
00000001404b9d46 add      rdx, r14
00000001404b9d49 mov      rcx, qword ptr [r11 + 0x218]
00000001404b9d50 mov      dword ptr [rsp + 0x40], r10d
00000001404b9d55 mov      dword ptr [rsp + 0x38], r9d
00000001404b9d5a mov      r9d, ebx
00000001404b9d5d movsx    eax, byte ptr [rdx + r15 + 8]
00000001404b9d63 mov      edx, 0x10
00000001404b9d68 mov      dword ptr [rsp + 0x30], r8d
00000001404b9d6d lea      r8, [rip + 0x42e2dc]
00000001404b9d74 mov      dword ptr [rsp + 0x28], eax
00000001404b9d78 mov      dword ptr [rsp + 0x20], edi
00000001404b9d7c call     0x1400087f4
00000001404b9d81 mov      r8d, 4
00000001404b9d87 lea      r9, [rip + 0x466272]
00000001404b9d8e mov      eax, 8
00000001404b9d93 add      edi, r8d
00000001404b9d96 cmp      edi, eax
00000001404b9d98 jb       0x1404b9cf5
00000001404b9d9e mov      rcx, qword ptr [rip + 0x46625b]
00000001404b9da5 cmp      rcx, r9
00000001404b9da8 je       0x1404b9e19
00000001404b9daa cmp      byte ptr [rcx + 0x229], r8b
00000001404b9db1 jb       0x1404b9e19
00000001404b9db3 test     dword ptr [rcx + 0x22c], 0x400
00000001404b9dbd je       0x1404b9e19
00000001404b9dbf movsx    r8d, byte ptr [rsi + 0xe3]
00000001404b9dc7 mov      edx, 0x11
00000001404b9dcc movsx    r9d, byte ptr [rsi + 0xe4]
00000001404b9dd4 movsx    eax, byte ptr [rsi + 0xe2]
00000001404b9ddb movsx    r10d, byte ptr [rsi + 0xe5]
00000001404b9de3 mov      rcx, qword ptr [rcx + 0x218]
00000001404b9dea mov      dword ptr [rsp + 0x38], eax
00000001404b9dee mov      dword ptr [rsp + 0x30], r8d
00000001404b9df3 lea      r8, [rip + 0x42e256]
00000001404b9dfa mov      dword ptr [rsp + 0x28], r9d
00000001404b9dff mov      r9d, ebx
00000001404b9e02 mov      dword ptr [rsp + 0x20], r10d
00000001404b9e07 call     0x140039d40
00000001404b9e0c mov      r8d, 4
00000001404b9e12 lea      r9, [rip + 0x4661e7]
00000001404b9e19 xor      ebp, ebp
00000001404b9e1b xor      r12d, r12d
00000001404b9e1e lea      r14d, [rbp + 2]
00000001404b9e22 xor      edi, edi
00000001404b9e24 mov      rax, qword ptr [rip + 0x4661d5]
00000001404b9e2b mov      qword ptr [rsp + 0xb0], rax
00000001404b9e33 cmp      rax, r9
00000001404b9e36 je       0x1404b9edf
00000001404b9e3c cmp      byte ptr [rax + 0x229], r8b
00000001404b9e43 jb       0x1404b9edf
00000001404b9e49 test     dword ptr [rax + 0x22c], 0x400
00000001404b9e53 je       0x1404b9edf
00000001404b9e59 lea      ecx, [rdi + 2]
00000001404b9e5c mov      edx, ecx
00000001404b9e5e lea      rax, [r12 + r13]
00000001404b9e62 lea      r11, [rax + rax*8]
00000001404b9e66 dec      ecx
00000001404b9e68 add      r11, r11
00000001404b9e6b mov      eax, edi
00000001404b9e6d add      rax, r11
00000001404b9e70 add      rcx, r11
00000001404b9e73 movsx    r9d, byte ptr [rcx + r15 + 0x30]
00000001404b9e79 movsx    r10d, byte ptr [rax + r15 + 0x30]
00000001404b9e7f lea      rax, [r11 + rdx]
00000001404b9e83 movsx    r8d, byte ptr [rax + r15 + 0x30]
00000001404b9e89 inc      edx
00000001404b9e8b mov      rcx, qword ptr [rsp + 0xb0]
00000001404b9e93 add      rdx, r11
00000001404b9e96 mov      dword ptr [rsp + 0x48], r10d
00000001404b9e9b mov      dword ptr [rsp + 0x40], r9d
00000001404b9ea0 mov      r9d, ebx
00000001404b9ea3 mov      dword ptr [rsp + 0x38], r8d
00000001404b9ea8 lea      r8, [rip + 0x42e1a1]
00000001404b9eaf movsx    eax, byte ptr [rdx + r15 + 0x30]
00000001404b9eb5 mov      edx, 0x12
00000001404b9eba mov      rcx, qword ptr [rcx + 0x218]
00000001404b9ec1 mov      dword ptr [rsp + 0x30], eax
00000001404b9ec5 mov      dword ptr [rsp + 0x28], edi
00000001404b9ec9 mov      dword ptr [rsp + 0x20], ebp
00000001404b9ecd call     0x140072f40
00000001404b9ed2 mov      r8d, 4
00000001404b9ed8 lea      r9, [rip + 0x466121]
00000001404b9edf add      edi, r8d
00000001404b9ee2 cmp      edi, 0xe
00000001404b9ee5 jb       0x1404b9e24
00000001404b9eeb mov      rcx, qword ptr [rip + 0x46610e]
00000001404b9ef2 cmp      rcx, r9
00000001404b9ef5 je       0x1404b9f75
00000001404b9ef7 cmp      byte ptr [rcx + 0x229], r8b
00000001404b9efe jb       0x1404b9f75
00000001404b9f00 test     dword ptr [rcx + 0x22c], 0x400
00000001404b9f0a je       0x1404b9f75
00000001404b9f0c mov      rcx, qword ptr [rcx + 0x218]
00000001404b9f13 lea      rax, [r12 + r13]
00000001404b9f17 lea      rdx, [rax + rax*8]
00000001404b9f1b movsx    r8d, byte ptr [r15 + rdx*2 + 0x41]
00000001404b9f21 movsx    r9d, byte ptr [r15 + rdx*2 + 0xf8]
00000001404b9f2a movsx    eax, byte ptr [r15 + rdx*2 + 0x40]
00000001404b9f30 movsx    r10d, byte ptr [r15 + rdx*2 + 0xf9]
00000001404b9f39 mov      edx, 0x13
00000001404b9f3e mov      dword ptr [rsp + 0x48], eax
00000001404b9f42 mov      dword ptr [rsp + 0x40], r8d
00000001404b9f47 lea      r8, [rip + 0x42e102]
00000001404b9f4e mov      dword ptr [rsp + 0x38], r9d
00000001404b9f53 mov      r9d, ebx
00000001404b9f56 mov      dword ptr [rsp + 0x30], r10d
00000001404b9f5b mov      dword ptr [rsp + 0x28], edi
00000001404b9f5f mov      dword ptr [rsp + 0x20], ebp
00000001404b9f63 call     0x140072f40
00000001404b9f68 mov      r8d, 4
00000001404b9f6e lea      r9, [rip + 0x46608b]
00000001404b9f75 mov      edi, r14d
00000001404b9f78 mov      rax, qword ptr [rip + 0x466081]
00000001404b9f7f mov      qword ptr [rsp + 0xb0], rax
00000001404b9f87 cmp      rax, r9
00000001404b9f8a je       0x1404ba03f
00000001404b9f90 cmp      byte ptr [rax + 0x229], r8b
00000001404b9f97 jb       0x1404ba03f
00000001404b9f9d test     dword ptr [rax + 0x22c], 0x400
00000001404b9fa7 je       0x1404ba03f
00000001404b9fad lea      ecx, [rdi + 2]
00000001404b9fb0 mov      edx, ecx
00000001404b9fb2 lea      rax, [r12 + r13]
00000001404b9fb6 lea      r11, [rax + rax*8]
00000001404b9fba dec      ecx
00000001404b9fbc add      r11, r11
00000001404b9fbf mov      eax, edi
00000001404b9fc1 add      rax, r11
00000001404b9fc4 add      rcx, r11
00000001404b9fc7 movsx    r9d, byte ptr [rcx + r15 + 0xf8]
00000001404b9fd0 movsx    r10d, byte ptr [rax + r15 + 0xf8]
00000001404b9fd9 lea      rax, [r11 + rdx]
00000001404b9fdd movsx    r8d, byte ptr [rax + r15 + 0xf8]
00000001404b9fe6 inc      edx
00000001404b9fe8 mov      rcx, qword ptr [rsp + 0xb0]
00000001404b9ff0 add      rdx, r11
00000001404b9ff3 mov      dword ptr [rsp + 0x48], r10d
00000001404b9ff8 mov      dword ptr [rsp + 0x40], r9d
00000001404b9ffd mov      r9d, ebx
00000001404ba000 mov      dword ptr [rsp + 0x38], r8d
00000001404ba005 lea      r8, [rip + 0x42e044]
00000001404ba00c movsx    eax, byte ptr [rdx + r15 + 0xf8]
00000001404ba015 mov      edx, 0x14
00000001404ba01a mov      rcx, qword ptr [rcx + 0x218]
00000001404ba021 mov      dword ptr [rsp + 0x30], eax
00000001404ba025 mov      dword ptr [rsp + 0x28], edi
00000001404ba029 mov      dword ptr [rsp + 0x20], ebp
00000001404ba02d call     0x140072f40
00000001404ba032 mov      r8d, 4
00000001404ba038 lea      r9, [rip + 0x465fc1]
00000001404ba03f add      edi, r8d
00000001404ba042 cmp      edi, 0xe
00000001404ba045 jb       0x1404b9f78
00000001404ba04b mov      edx, 1
00000001404ba050 add      ebp, edx
00000001404ba052 add      r12, rdx
00000001404ba055 cmp      ebp, edx
00000001404ba057 jbe      0x1404b9e22
00000001404ba05d mov      r14, qword ptr [rsp + 0xa0]
00000001404ba065 lea      eax, [rdx + 1]
00000001404ba068 add      r14, 8
00000001404ba06c add      r13, rax
00000001404ba06f add      ebx, edx
00000001404ba071 mov      qword ptr [rsp + 0xa0], r14
00000001404ba079 add      rsi, r8
00000001404ba07c cmp      ebx, eax
00000001404ba07e jb       0x1404b9c82
00000001404ba084 mov      rcx, qword ptr [rip + 0x465f75]
00000001404ba08b cmp      rcx, r9
00000001404ba08e je       0x1404ba127
00000001404ba094 cmp      byte ptr [rcx + 0x229], r8b
00000001404ba09b jb       0x1404ba127
00000001404ba0a1 test     dword ptr [rcx + 0x22c], 0x400
00000001404ba0ab je       0x1404ba127
00000001404ba0ad movsx    r10d, byte ptr [r15 + 0x310]
00000001404ba0b5 lea      edx, [rax + 0x13]
00000001404ba0b8 movsx    r11d, byte ptr [r15 + 0x311]
00000001404ba0c0 lea      r8, [rip + 0x42df89]
00000001404ba0c7 movsx    ebx, byte ptr [r15 + 0x312]
00000001404ba0cf movsx    edi, byte ptr [r15 + 0x313]
00000001404ba0d7 movsx    esi, byte ptr [r15 + 0x314]
00000001404ba0df movsx    ebp, byte ptr [r15 + 0x315]
00000001404ba0e7 movsx    r14d, byte ptr [r15 + 0x316]
00000001404ba0ef movsx    r9d, byte ptr [r15 + 0x317]
00000001404ba0f7 mov      rcx, qword ptr [rcx + 0x218]
00000001404ba0fe mov      dword ptr [rsp + 0x50], r10d
00000001404ba103 mov      dword ptr [rsp + 0x48], r11d
00000001404ba108 mov      dword ptr [rsp + 0x40], ebx
00000001404ba10c mov      dword ptr [rsp + 0x38], edi
00000001404ba110 mov      dword ptr [rsp + 0x30], esi
00000001404ba114 mov      dword ptr [rsp + 0x28], ebp
00000001404ba118 mov      dword ptr [rsp + 0x20], r14d
00000001404ba11d call     0x1400b9df8
00000001404ba122 mov      edx, 1
00000001404ba127 mov      rbx, qword ptr [rsp + 0xa8]
00000001404ba12f mov      al, dl
00000001404ba131 add      rsp, 0x60
00000001404ba135 pop      r15
00000001404ba137 pop      r14
00000001404ba139 pop      r13
00000001404ba13b pop      r12
00000001404ba13d pop      rdi
00000001404ba13e pop      rsi
00000001404ba13f pop      rbp
00000001404ba140 ret      