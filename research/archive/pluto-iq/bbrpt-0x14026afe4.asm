000000014026afe4 mov      r11, rsp
000000014026afe7 mov      qword ptr [r11 + 0x20], rbx
000000014026afeb push     rbp
000000014026afec push     rsi
000000014026afed push     rdi
000000014026afee push     r12
000000014026aff0 push     r13
000000014026aff2 push     r14
000000014026aff4 push     r15
000000014026aff6 sub      rsp, 0x40
000000014026affa mov      rsi, qword ptr [rdx + 8]
000000014026affe lea      r9, [r11 + 8]
000000014026b002 and      qword ptr [r11 + 0x18], 0
000000014026b007 lea      r8, [r11 + 0x10]
000000014026b00b mov      rax, rdx
000000014026b00e mov      r13, rcx
000000014026b011 xor      ebp, ebp
000000014026b013 lea      rdx, [r11 + 0x18]
000000014026b017 mov      byte ptr [r11 + 0x10], bpl
000000014026b01b mov      rcx, qword ptr [rax + 0x238]
000000014026b022 call     0x14035ef38
000000014026b027 mov      rcx, qword ptr [rip + 0x6b4fd2]
000000014026b02e lea      rax, [rip + 0x6b4fcb]
000000014026b035 cmp      rcx, rax
000000014026b038 je       0x14026b090
000000014026b03a cmp      byte ptr [rcx + 0x169], 5
000000014026b041 jb       0x14026b090
000000014026b043 mov      eax, dword ptr [rcx + 0x16c]
000000014026b049 test     al, 1
000000014026b04b je       0x14026b090
000000014026b04d movzx    eax, byte ptr [rsp + 0x80]
000000014026b055 lea      edx, [rbp + 0x3d]
000000014026b058 movzx    r8d, byte ptr [rsp + 0x88]
000000014026b061 lea      r9, [rip + 0x3a3328]
000000014026b068 mov      rcx, qword ptr [rcx + 0x158]
000000014026b06f mov      dword ptr [rsp + 0x30], eax
000000014026b073 lea      rax, [rip + 0x3b0276]
000000014026b07a mov      dword ptr [rsp + 0x28], r8d
000000014026b07f lea      r8, [rip + 0x42dcea]
000000014026b086 mov      qword ptr [rsp + 0x20], rax
000000014026b08b call     0x1400aa578
000000014026b090 cmp      byte ptr [rsi + 0x339], 1
000000014026b097 je       0x14026b0a4
000000014026b099 mov      al, 1
000000014026b09b mov      byte ptr [rsp + 0x80], al
000000014026b0a2 jmp      0x14026b0ab
000000014026b0a4 mov      al, byte ptr [rsp + 0x80]
000000014026b0ab test     al, al
000000014026b0ad je       0x14026b36d
000000014026b0b3 xor      r12d, r12d
000000014026b0b6 lea      r15, [rsi + 0x320]
000000014026b0bd lea      rbx, [rsi + 0x1d6]
000000014026b0c4 lea      r14, [rsi + 0x2dd]
000000014026b0cb mov      rdi, qword ptr [rsp + 0x90]
000000014026b0d3 mov      edx, ebp
000000014026b0d5 add      rdi, r12
000000014026b0d8 xor      ecx, ecx
000000014026b0da mov      r8, rdi
000000014026b0dd call     0x1402685ac
000000014026b0e2 xor      r8d, r8d
000000014026b0e5 cmp      byte ptr [rdi], r8b
000000014026b0e8 je       0x14026b348
000000014026b0ee mov      al, byte ptr [rdi + 0x14]
000000014026b0f1 mov      byte ptr [r14 - 3], al
000000014026b0f5 mov      al, byte ptr [rdi + 0x14]
000000014026b0f8 mov      byte ptr [r14 - 1], al
000000014026b0fc mov      al, byte ptr [rdi + 0x15]
000000014026b0ff mov      byte ptr [r14 - 4], al
000000014026b103 mov      al, byte ptr [rdi + 0x15]
000000014026b106 mov      byte ptr [r14 - 2], al
000000014026b10a mov      al, byte ptr [rdi + 0x17]
000000014026b10d mov      byte ptr [r14 + 0xf], al
000000014026b111 test     ebp, ebp
000000014026b113 jne      0x14026b11e
000000014026b115 mov      al, byte ptr [rdi + 0x17]
000000014026b118 mov      byte ptr [rsi + 0x404], al
000000014026b11e movzx    eax, byte ptr [rdi + 0x18]
000000014026b122 mov      word ptr [r14 + 0x11], ax
000000014026b127 test     ebp, ebp
000000014026b129 jne      0x14026b136
000000014026b12b movzx    eax, byte ptr [rdi + 0x18]
000000014026b12f mov      word ptr [rsi + 0x406], ax
000000014026b136 mov      ecx, dword ptr [rdi + 0xc]
000000014026b139 cmp      ecx, 0x40
000000014026b13c jne      0x14026b144
000000014026b13e mov      byte ptr [r14], 0x7f
000000014026b142 jmp      0x14026b181
000000014026b144 cmp      ecx, 0x20
000000014026b147 jne      0x14026b14f
000000014026b149 mov      byte ptr [r14], 0x3f
000000014026b14d jmp      0x14026b181
000000014026b14f cmp      ecx, 0x10
000000014026b152 jne      0x14026b15a
000000014026b154 mov      byte ptr [r14], 0x1f
000000014026b158 jmp      0x14026b181
000000014026b15a cmp      ecx, 8
000000014026b15d jne      0x14026b165
000000014026b15f mov      byte ptr [r14], 0xf
000000014026b163 jmp      0x14026b181
000000014026b165 cmp      ecx, 4
000000014026b168 jne      0x14026b170
000000014026b16a mov      byte ptr [r14], 7
000000014026b16e jmp      0x14026b181
000000014026b170 mov      eax, 1
000000014026b175 cmp      ecx, 2
000000014026b178 lea      edx, [rax + 2]
000000014026b17b cmove    eax, edx
000000014026b17e mov      byte ptr [r14], al
000000014026b181 test     ebp, ebp
000000014026b183 jne      0x14026b199
000000014026b185 mov      al, byte ptr [rdi + 0x32]
000000014026b188 mov      byte ptr [r13 + 0x96d6], al
000000014026b18f mov      al, byte ptr [rdi + 0x33]
000000014026b192 mov      byte ptr [r13 + 0x96d7], al
000000014026b199 test     dword ptr [rdi + 0x1c], 0x1000
000000014026b1a0 je       0x14026b1a5
000000014026b1a2 or       byte ptr [rbx], 2
000000014026b1a5 test     dword ptr [rdi + 0x1c], 0x2000
000000014026b1ac je       0x14026b1b1
000000014026b1ae or       byte ptr [rbx], 1
000000014026b1b1 test     dword ptr [rdi + 0x1c], 0x4000
000000014026b1b8 je       0x14026b1bd
000000014026b1ba or       byte ptr [rbx], 0x20
000000014026b1bd test     dword ptr [rdi + 0x1c], 0x8000
000000014026b1c4 je       0x14026b1ee
000000014026b1c6 mov      cl, byte ptr [rbx]
000000014026b1c8 and      cl, 0xe7
000000014026b1cb or       cl, 4
000000014026b1ce mov      byte ptr [rbx], cl
000000014026b1d0 test     byte ptr [rdi + 0x31], 0x10
000000014026b1d4 je       0x14026b1db
000000014026b1d6 or       cl, 0x10
000000014026b1d9 mov      byte ptr [rbx], cl
000000014026b1db test     byte ptr [rdi + 0x31], 8
000000014026b1df je       0x14026b1e6
000000014026b1e1 or       cl, 8
000000014026b1e4 mov      byte ptr [rbx], cl
000000014026b1e6 test     byte ptr [rdi + 0x31], 4
000000014026b1ea je       0x14026b1ee
000000014026b1ec mov      byte ptr [rbx], cl
000000014026b1ee mov      eax, dword ptr [rdi + 0x1c]
000000014026b1f1 test     al, 0x40
000000014026b1f3 je       0x14026b1fc
000000014026b1f5 or       byte ptr [rbx - 0xab], 2
000000014026b1fc mov      eax, dword ptr [rdi + 0x1c]
000000014026b1ff mov      cl, 0x80
000000014026b201 test     cl, al
000000014026b203 je       0x14026b20c
000000014026b205 or       byte ptr [rbx - 0xab], 1
000000014026b20c test     dword ptr [rdi + 0x1c], 0x100
000000014026b213 je       0x14026b21c
000000014026b215 or       byte ptr [rbx - 0xab], 8
000000014026b21c test     dword ptr [rdi + 0x1c], 0x200
000000014026b223 je       0x14026b22c
000000014026b225 or       byte ptr [rbx - 0xab], 4
000000014026b22c test     dword ptr [rdi + 0x1c], 0x800
000000014026b233 je       0x14026b239
000000014026b235 or       byte ptr [rbx - 0x5b], 0x10
000000014026b239 test     dword ptr [rdi + 0x1c], 0x400
000000014026b240 je       0x14026b245
000000014026b242 or       byte ptr [rbx - 0x39], cl
000000014026b245 mov      eax, dword ptr [rdi + 0x1c]
000000014026b248 test     al, 4
000000014026b24a je       0x14026b253
000000014026b24c or       byte ptr [rbx - 0xaa], 0x40
000000014026b253 mov      eax, dword ptr [rdi + 0x1c]
000000014026b256 test     al, 8
000000014026b258 je       0x14026b261
000000014026b25a or       byte ptr [rbx - 0xaa], 0x20
000000014026b261 mov      eax, dword ptr [rdi + 0x1c]
000000014026b264 test     al, 0x10
000000014026b266 je       0x14026b26f
000000014026b268 or       byte ptr [rbx - 0xa9], 1
000000014026b26f mov      eax, dword ptr [rdi + 0x1c]
000000014026b272 test     al, 0x20
000000014026b274 je       0x14026b27c
000000014026b276 or       byte ptr [rbx - 0xaa], cl
000000014026b27c mov      eax, dword ptr [rdi + 0x1c]
000000014026b27f test     al, 1
000000014026b281 je       0x14026b28a
000000014026b283 or       byte ptr [rbx - 0xaa], 0x10
000000014026b28a mov      eax, dword ptr [rdi + 0x1c]
000000014026b28d test     al, 2
000000014026b28f je       0x14026b298
000000014026b291 or       byte ptr [rbx - 0xaa], 8
000000014026b298 cmp      byte ptr [rdi + 0x20], r8b
000000014026b29c je       0x14026b2a9
000000014026b29e or       byte ptr [rbx - 0x62], 0xc0
000000014026b2a2 or       byte ptr [rbx - 0x61], 1
000000014026b2a6 or       byte ptr [rbx - 0x5e], cl
000000014026b2a9 cmp      byte ptr [rdi + 0x21], r8b
000000014026b2ad je       0x14026b2bd
000000014026b2af mov      al, byte ptr [rbx - 0x62]
000000014026b2b2 and      al, 0xe5
000000014026b2b4 or       al, 0x25
000000014026b2b6 or       byte ptr [rbx - 0x5d], 1
000000014026b2ba mov      byte ptr [rbx - 0x62], al
000000014026b2bd test     ebp, ebp
000000014026b2bf jne      0x14026b31f
000000014026b2c1 mov      al, byte ptr [rdi + 0x37]
000000014026b2c4 mov      byte ptr [rsi + 0x308], al
000000014026b2ca cmp      byte ptr [rdi + 0x2f], r8b
000000014026b2ce je       0x14026b2d7
000000014026b2d0 mov      byte ptr [rsi + 0x3ee], 2
000000014026b2d7 cmp      byte ptr [rdi + 0x30], r8b
000000014026b2db setne    al
000000014026b2de inc      al
000000014026b2e0 mov      byte ptr [rsi + 0x3ef], al
000000014026b2e6 mov      al, byte ptr [rdi + 0x38]
000000014026b2e9 mov      byte ptr [rsi + 0x400], al
000000014026b2ef mov      al, byte ptr [rdi + 0x2a]
000000014026b2f2 mov      byte ptr [rsi + 0x410], al
000000014026b2f8 mov      al, byte ptr [rdi + 0x29]
000000014026b2fb mov      byte ptr [rsi + 0x411], al
000000014026b301 mov      al, byte ptr [rdi + 0x36]
000000014026b304 mov      byte ptr [rsi + 0x318], al
000000014026b30a cmp      dword ptr [rdi + 0x24], 2
000000014026b30e jne      0x14026b31f
000000014026b310 mov      byte ptr [rsi + 0x33a], 1
000000014026b317 mov      byte ptr [r13 + 0xe0b2], 1
000000014026b31f cmp      byte ptr [rsi + 0x318], r8b
000000014026b326 je       0x14026b341
000000014026b328 test     ebp, ebp
000000014026b32a jne      0x14026b334
000000014026b32c mov      word ptr [r15], 0x101
000000014026b332 jmp      0x14026b33d
000000014026b334 cmp      ebp, 1
000000014026b337 jne      0x14026b341
000000014026b339 mov      word ptr [r15], r8w
000000014026b33d mov      dword ptr [r15 - 4], r8d
000000014026b341 mov      eax, dword ptr [rdi + 0x10]
000000014026b344 mov      dword ptr [r14 + 0xb], eax
000000014026b348 movzx    eax, byte ptr [rsp + 0x80]
000000014026b350 inc      ebp
000000014026b352 add      r12, 0x3c
000000014026b356 add      r14, 0x18
000000014026b35a add      rbx, 0xf8
000000014026b361 add      r15, 8
000000014026b365 cmp      ebp, eax
000000014026b367 jl       0x14026b0cb
000000014026b36d mov      rbx, qword ptr [rsp + 0x98]
000000014026b375 xor      eax, eax
000000014026b377 add      rsp, 0x40
000000014026b37b pop      r15
000000014026b37d pop      r14
000000014026b37f pop      r13
000000014026b381 pop      r12
000000014026b383 pop      rdi
000000014026b384 pop      rsi
000000014026b385 pop      rbp
000000014026b386 ret      