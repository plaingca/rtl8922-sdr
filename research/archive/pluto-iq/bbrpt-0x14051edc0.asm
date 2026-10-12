000000014051edc0 mov      qword ptr [rsp + 0x20], rbx
000000014051edc5 push     rbp
000000014051edc6 push     rsi
000000014051edc7 push     rdi
000000014051edc8 push     r12
000000014051edca push     r13
000000014051edcc push     r14
000000014051edce push     r15
000000014051edd0 mov      rbp, rsp
000000014051edd3 sub      rsp, 0x70
000000014051edd7 mov      rax, qword ptr [rip + 0x408682]
000000014051edde xor      rax, rsp
000000014051ede1 mov      qword ptr [rbp - 8], rax
000000014051ede5 mov      r13, qword ptr [rcx]
000000014051ede8 xor      eax, eax
000000014051edea mov      r15, qword ptr [rcx + 0x140]
000000014051edf1 xorps    xmm0, xmm0
000000014051edf4 movups   xmmword ptr [rbp - 0x27], xmm0
000000014051edf8 mov      qword ptr [rbp - 0x17], rax
000000014051edfc mov      ebx, r9d
000000014051edff mov      dword ptr [rbp - 0xf], eax
000000014051ee02 mov      r14, r8
000000014051ee05 mov      word ptr [rbp - 0xb], ax
000000014051ee09 mov      rdi, rdx
000000014051ee0c mov      byte ptr [rbp - 9], al
000000014051ee0f mov      rsi, rcx
000000014051ee12 call     0x1405202e0
000000014051ee17 cmp      ebx, eax
000000014051ee19 je       0x14051ee25
000000014051ee1b mov      eax, 0xa
000000014051ee20 jmp      0x14051f4cf
000000014051ee25 movzx    ecx, byte ptr [rdi + 0x57]
000000014051ee29 cmp      cl, 0xb
000000014051ee2c jbe      0x14051ee5c
000000014051ee2e mov      rdx, qword ptr [rsi + 0x18]
000000014051ee32 lea      r8, [rip + 0x140977]
000000014051ee39 mov      r9d, ecx
000000014051ee3c mov      rcx, qword ptr [rsi + 8]
000000014051ee40 mov      rax, qword ptr [rdx + 0x118]
000000014051ee47 mov      edx, 2
000000014051ee4c call     qword ptr [rip + 0x1654a6]
000000014051ee52 mov      eax, 0xb
000000014051ee57 jmp      0x14051f4cf
000000014051ee5c movzx    ecx, word ptr [rdi + 0x36]
000000014051ee60 mov      r8d, 1
000000014051ee66 movzx    eax, cx
000000014051ee69 mov      edx, 0x3ffe
000000014051ee6e sub      ax, r8w
000000014051ee72 cmp      ax, dx
000000014051ee75 ja       0x14051f4a6
000000014051ee7b xor      r12d, r12d
000000014051ee7e mov      ebx, 0x400
000000014051ee83 mov      qword ptr [r14], r12
000000014051ee86 mov      qword ptr [r14 + 8], r12
000000014051ee8a mov      qword ptr [r14 + 0x10], r12
000000014051ee8e mov      qword ptr [r14 + 0x18], r12
000000014051ee92 mov      eax, dword ptr [rsi + 0xeec]
000000014051ee98 cmp      eax, r8d
000000014051ee9b jne      0x14051eeae
000000014051ee9d mov      al, byte ptr [rdi + 0x59]
000000014051eea0 neg      al
000000014051eea2 sbb      edx, edx
000000014051eea4 and      edx, 0x80
000000014051eeaa add      edx, ebx
000000014051eeac jmp      0x14051eef1
000000014051eeae test     eax, eax
000000014051eeb0 jne      0x14051eed0
000000014051eeb2 mov      al, byte ptr [rdi + 0x5b]
000000014051eeb5 neg      al
000000014051eeb7 mov      al, byte ptr [rdi + 0x59]
000000014051eeba sbb      edx, edx
000000014051eebc and      edx, 0x200000
000000014051eec2 add      edx, ebx
000000014051eec4 neg      al
000000014051eec6 sbb      ecx, ecx
000000014051eec8 and      ecx, 0x80
000000014051eece jmp      0x14051eeef
000000014051eed0 mov      eax, dword ptr [rsi + 0x3b0]
000000014051eed6 mov      ecx, ebx
000000014051eed8 sub      eax, 3
000000014051eedb cmp      eax, r8d
000000014051eede mov      al, byte ptr [rdi + 0x58]
000000014051eee1 cmova    ecx, r12d
000000014051eee5 neg      al
000000014051eee7 sbb      edx, edx
000000014051eee9 and      edx, 0x80
000000014051eeef or       edx, ecx
000000014051eef1 mov      dword ptr [r14], edx
000000014051eef4 lea      r8, [rbp - 0x40]
000000014051eef8 mov      rdx, rdi
000000014051eefb mov      rcx, rsi
000000014051eefe call     0x14050d644
000000014051ef03 test     eax, eax
000000014051ef05 jne      0x14051f4cf
000000014051ef0b lea      r9, [rbp - 0x3e]
000000014051ef0f mov      rdx, rdi
000000014051ef12 lea      r8, [rbp - 0x3f]
000000014051ef16 mov      rcx, rsi
000000014051ef19 call     0x14050d740
000000014051ef1e test     eax, eax
000000014051ef20 jne      0x14051f4cf
000000014051ef26 movzx    edx, byte ptr [rdi + 0x51]
000000014051ef2a lea      r10, [rip - 0x51ef31]
000000014051ef31 movzx    eax, byte ptr [rdi + 0x57]
000000014051ef35 and      edx, 0xf
000000014051ef38 shl      edx, 8
000000014051ef3b and      eax, 0xf
000000014051ef3e or       edx, eax
000000014051ef40 movzx    eax, byte ptr [rbp - 0x40]
000000014051ef44 and      eax, 0x1f
000000014051ef47 shl      edx, 5
000000014051ef4a or       edx, eax
000000014051ef4c movzx    eax, byte ptr [rdi + 0x3f]
000000014051ef50 and      eax, 7
000000014051ef53 shl      edx, 9
000000014051ef56 or       edx, eax
000000014051ef58 mov      al, byte ptr [rdi + 0x44]
000000014051ef5b shl      edx, 2
000000014051ef5e neg      al
000000014051ef60 mov      al, byte ptr [rdi + 0x5f]
000000014051ef63 sbb      ecx, ecx
000000014051ef65 and      ecx, 0x100
000000014051ef6b or       edx, ecx
000000014051ef6d neg      al
000000014051ef6f mov      al, byte ptr [rdi + 0x43]
000000014051ef72 sbb      ecx, ecx
000000014051ef74 and      ecx, 0x40
000000014051ef77 or       edx, ecx
000000014051ef79 neg      al
000000014051ef7b movzx    eax, byte ptr [rdi + 0x3e]
000000014051ef7f sbb      ecx, ecx
000000014051ef81 and      eax, 3
000000014051ef84 and      ecx, 0x20
000000014051ef87 or       edx, ecx
000000014051ef89 or       edx, eax
000000014051ef8b mov      al, byte ptr [rbp - 0x3f]
000000014051ef8e neg      al
000000014051ef90 mov      al, byte ptr [rdi + 0x59]
000000014051ef93 sbb      ecx, ecx
000000014051ef95 and      ecx, 0x100000
000000014051ef9b or       edx, ecx
000000014051ef9d neg      al
000000014051ef9f sbb      ecx, ecx
000000014051efa1 and      ecx, 0x400000
000000014051efa7 or       edx, ecx
000000014051efa9 or       dword ptr [r14], edx
000000014051efac movzx    edx, byte ptr [rdi + 0x54]
000000014051efb0 movzx    eax, byte ptr [rdi + 0x5a]
000000014051efb4 and      edx, 3
000000014051efb7 shl      eax, 2
000000014051efba or       edx, eax
000000014051efbc movzx    eax, byte ptr [rdi + 0x55]
000000014051efc0 and      eax, 0xf
000000014051efc3 shl      edx, 4
000000014051efc6 or       edx, eax
000000014051efc8 movzx    eax, byte ptr [rdi + 0x61]
000000014051efcc and      eax, 3
000000014051efcf shl      edx, 4
000000014051efd2 or       edx, eax
000000014051efd4 movzx    eax, byte ptr [rdi + 0x77]
000000014051efd8 and      eax, 0xf
000000014051efdb shl      edx, 4
000000014051efde or       edx, eax
000000014051efe0 mov      al, byte ptr [rdi + 0x60]
000000014051efe3 shl      edx, 0xc
000000014051efe6 neg      al
000000014051efe8 sbb      ecx, ecx
000000014051efea and      ecx, 0x40000
000000014051eff0 or       edx, ecx
000000014051eff2 mov      dword ptr [r14 + 4], edx
000000014051eff6 mov      al, byte ptr [rdi + 0x57]
000000014051eff9 sub      al, 9
000000014051effb test     al, 0xfd
000000014051effd je       0x14051f018
000000014051efff mov      cl, byte ptr [rdi + 0x2e]
000000014051f002 movzx    eax, byte ptr [rdi + 0x34]
000000014051f006 add      cl, cl
000000014051f008 or       cl, byte ptr [rdi + 0x2f]
000000014051f00b shl      cl, 2
000000014051f00e or       cl, byte ptr [rax + r10 + 0xcc36c0]
000000014051f016 jmp      0x14051f025
000000014051f018 mov      al, byte ptr [rdi + 0x2e]
000000014051f01b neg      al
000000014051f01d sbb      cl, cl
000000014051f01f and      cl, 8
000000014051f022 add      cl, 0x11
000000014051f025 mov      r9d, 0x8000
000000014051f02b cmp      byte ptr [rdi + 0x5e], r12b
000000014051f02f jne      0x14051f03d
000000014051f031 mov      r8d, r12d
000000014051f034 cmp      byte ptr [rdi + 0x92], r12b
000000014051f03b je       0x14051f040
000000014051f03d mov      r8d, r9d
000000014051f040 movzx    edx, word ptr [rdi + 0x3c]
000000014051f044 mov      r11d, 0x2000
000000014051f04a movzx    eax, cl
000000014051f04d and      eax, 0x3f
000000014051f050 shl      edx, 7
000000014051f053 or       edx, eax
000000014051f055 movzx    eax, byte ptr [rdi + 0x34]
000000014051f059 shl      edx, 0x11
000000014051f05c mov      al, byte ptr [rax + r10 + 0xcc36c8]
000000014051f064 mov      r10d, 0xfff
000000014051f06a neg      al
000000014051f06c mov      al, byte ptr [rdi + 0x5d]
000000014051f06f sbb      ecx, ecx
000000014051f071 and      ecx, 0x800000
000000014051f077 or       edx, ecx
000000014051f079 neg      al
000000014051f07b movzx    eax, word ptr [rdi + 0x36]
000000014051f07f sbb      ecx, ecx
000000014051f081 and      eax, 0x3fff
000000014051f086 and      ecx, 0x4000
000000014051f08c or       edx, ecx
000000014051f08e or       edx, eax
000000014051f090 or       edx, r8d
000000014051f093 mov      dword ptr [r14 + 8], edx
000000014051f097 mov      al, byte ptr [rdi + 0x68]
000000014051f09a neg      al
000000014051f09c movzx    eax, word ptr [rdi + 0x40]
000000014051f0a0 sbb      ecx, ecx
000000014051f0a2 and      eax, r10d
000000014051f0a5 and      ecx, r11d
000000014051f0a8 or       ecx, eax
000000014051f0aa mov      dword ptr [r14 + 0xc], ecx
000000014051f0ae movzx    eax, byte ptr [rdi + 0x62]
000000014051f0b2 movzx    ecx, byte ptr [rdi + 0x63]
000000014051f0b6 shl      ecx, 8
000000014051f0b9 or       ecx, eax
000000014051f0bb shl      ecx, 0x10
000000014051f0be mov      dword ptr [r14 + 0x10], ecx
000000014051f0c2 movzx    eax, byte ptr [rdi + 0x66]
000000014051f0c6 movzx    ecx, byte ptr [rdi + 0x67]
000000014051f0ca shl      ecx, 8
000000014051f0cd or       ecx, eax
000000014051f0cf movzx    eax, byte ptr [rdi + 0x65]
000000014051f0d3 shl      ecx, 8
000000014051f0d6 or       ecx, eax
000000014051f0d8 movzx    eax, byte ptr [rdi + 0x64]
000000014051f0dc shl      ecx, 8
000000014051f0df or       ecx, eax
000000014051f0e1 mov      dword ptr [r14 + 0x14], ecx
000000014051f0e5 cmp      byte ptr [rdi + 0x79], r12b
000000014051f0e9 jne      0x14051f0f4
000000014051f0eb mov      r8d, r12d
000000014051f0ee cmp      byte ptr [rdi + 0x7a], r12b
000000014051f0f2 je       0x14051f0fa
000000014051f0f4 mov      r8d, 0x800
000000014051f0fa mov      al, byte ptr [rdi + 0x4d]
000000014051f0fd neg      al
000000014051f0ff mov      dword ptr [rbp - 0x38], r12d
000000014051f103 mov      al, byte ptr [rdi + 0x6a]
000000014051f106 sbb      edx, edx
000000014051f108 mov      dword ptr [rbp - 0x30], r10d
000000014051f10c and      edx, 0x4000
000000014051f112 neg      al
000000014051f114 mov      al, byte ptr [rdi + 0x6b]
000000014051f117 sbb      ecx, ecx
000000014051f119 and      ecx, 0x1000
000000014051f11f or       edx, ecx
000000014051f121 neg      al
000000014051f123 mov      al, byte ptr [rbp - 0x3e]
000000014051f126 sbb      ecx, ecx
000000014051f128 and      ecx, r9d
000000014051f12b or       edx, ecx
000000014051f12d neg      al
000000014051f12f sbb      ecx, ecx
000000014051f131 and      ecx, r11d
000000014051f134 or       edx, ecx
000000014051f136 mov      rcx, rsi
000000014051f139 or       edx, r8d
000000014051f13c mov      dword ptr [r14 + 0x18], edx
000000014051f140 lea      rdx, [rbp - 0x38]
000000014051f144 movzx    eax, word ptr [rdi + 0x70]
000000014051f148 mov      dword ptr [rbp - 0x34], eax
000000014051f14b mov      rax, qword ptr [r13 + 0x5a0]
000000014051f152 call     qword ptr [rip + 0x1651a0]
000000014051f158 mov      r9d, eax
000000014051f15b test     eax, eax
000000014051f15d je       0x14051f180
000000014051f15f mov      rcx, qword ptr [rsi + 0x18]
000000014051f163 lea      r8, [rip + 0x140686]
000000014051f16a mov      edx, 2
000000014051f16f mov      rax, qword ptr [rcx + 0x118]
000000014051f176 mov      rcx, qword ptr [rsi + 8]
000000014051f17a call     qword ptr [rip + 0x165178]
000000014051f180 movzx    edx, byte ptr [rdi + 0x73]
000000014051f184 mov      r9d, 0x1000
000000014051f18a movzx    eax, byte ptr [rdi + 0x72]
000000014051f18e and      edx, 7
000000014051f191 shl      edx, 0xf
000000014051f194 and      eax, 7
000000014051f197 or       edx, eax
000000014051f199 mov      r10d, 0x800
000000014051f19f movzx    eax, byte ptr [rdi + 0x53]
000000014051f1a3 lea      r8d, [r9 - 1]
000000014051f1a7 and      eax, 0xf
000000014051f1aa shl      edx, 7
000000014051f1ad or       edx, eax
000000014051f1af mov      r11d, 0x80000000
000000014051f1b5 mov      al, byte ptr [rdi + 0x6e]
000000014051f1b8 shl      edx, 6
000000014051f1bb neg      al
000000014051f1bd mov      al, byte ptr [rdi + 0x6d]
000000014051f1c0 sbb      ecx, ecx
000000014051f1c2 and      ecx, r9d
000000014051f1c5 or       edx, ecx
000000014051f1c7 neg      al
000000014051f1c9 mov      al, byte ptr [rdi + 0x6f]
000000014051f1cc sbb      ecx, ecx
000000014051f1ce and      ecx, r10d
000000014051f1d1 or       edx, ecx
000000014051f1d3 neg      al
000000014051f1d5 mov      al, byte ptr [rdi + 0x74]
000000014051f1d8 sbb      ecx, ecx
000000014051f1da and      ecx, ebx
000000014051f1dc or       edx, ecx
000000014051f1de neg      al
000000014051f1e0 mov      eax, dword ptr [rbp - 0x30]
000000014051f1e3 sbb      ecx, ecx
000000014051f1e5 and      eax, r8d
000000014051f1e8 and      ecx, r11d
000000014051f1eb shl      eax, 0x10
000000014051f1ee or       edx, ecx
000000014051f1f0 or       edx, eax
000000014051f1f2 mov      dword ptr [r14 + 0x1c], edx
000000014051f1f6 movzx    edx, byte ptr [rdi + 0x82]
000000014051f1fd movzx    eax, byte ptr [rdi + 0x90]
000000014051f204 and      edx, 0x3f
000000014051f207 and      eax, 7
000000014051f20a shl      edx, 0xc
000000014051f20d or       edx, eax
000000014051f20f mov      al, byte ptr [rdi + 0x7c]
000000014051f212 shl      edx, 4
000000014051f215 neg      al
000000014051f217 mov      al, byte ptr [rdi + 0x7b]
000000014051f21a sbb      ecx, ecx
000000014051f21c and      ecx, r9d
000000014051f21f or       edx, ecx
000000014051f221 neg      al
000000014051f223 mov      al, byte ptr [rdi + 0x7e]
000000014051f226 sbb      ecx, ecx
000000014051f228 and      ecx, r10d
000000014051f22b or       edx, ecx
000000014051f22d neg      al
000000014051f22f mov      al, byte ptr [rdi + 0x7d]
000000014051f232 sbb      ecx, ecx
000000014051f234 and      ecx, ebx
000000014051f236 or       edx, ecx
000000014051f238 neg      al
000000014051f23a mov      al, byte ptr [rdi + 0x83]
000000014051f240 sbb      ecx, ecx
000000014051f242 and      ecx, 0x200
000000014051f248 or       edx, ecx
000000014051f24a neg      al
000000014051f24c movzx    eax, byte ptr [rdi + 0x8f]
000000014051f253 sbb      ecx, ecx
000000014051f255 and      eax, 0xf
000000014051f258 and      ecx, 0x400000
000000014051f25e or       edx, ecx
000000014051f260 or       edx, eax
000000014051f262 mov      al, byte ptr [rdi + 0x92]
000000014051f268 neg      al
000000014051f26a sbb      ecx, ecx
000000014051f26c and      ecx, r11d
000000014051f26f or       edx, ecx
000000014051f271 mov      dword ptr [rbp - 0x28], edx
000000014051f274 movzx    eax, word ptr [rdi + 0x84]
000000014051f27b test     ax, ax
000000014051f27e je       0x14051f28a
000000014051f280 dec      ax
000000014051f283 mov      word ptr [rdi + 0x84], ax
000000014051f28a movzx    eax, word ptr [rdi + 0x80]
000000014051f291 lea      rdx, [rbp - 0x38]
000000014051f295 mov      dword ptr [rbp - 0x34], eax
000000014051f298 mov      rcx, rsi
000000014051f29b mov      dword ptr [rbp - 0x38], r12d
000000014051f29f mov      dword ptr [rbp - 0x30], r8d
000000014051f2a3 mov      rax, qword ptr [r13 + 0x5a0]
000000014051f2aa call     qword ptr [rip + 0x165048]
000000014051f2b0 mov      r9d, eax
000000014051f2b3 test     eax, eax
000000014051f2b5 je       0x14051f2d8
000000014051f2b7 mov      rcx, qword ptr [rsi + 0x18]
000000014051f2bb lea      r8, [rip + 0x14052e]
000000014051f2c2 mov      edx, 2
000000014051f2c7 mov      rax, qword ptr [rcx + 0x118]
000000014051f2ce mov      rcx, qword ptr [rsi + 8]
000000014051f2d2 call     qword ptr [rip + 0x165020]
000000014051f2d8 mov      al, byte ptr [rdi + 0x88]
000000014051f2de mov      r8d, 0x8000
000000014051f2e4 movzx    edx, byte ptr [rdi + 0xa0]
000000014051f2eb mov      r9d, 0x80000000
000000014051f2f1 shl      edx, 0x1c
000000014051f2f4 neg      al
000000014051f2f6 mov      al, byte ptr [rdi + 0x87]
000000014051f2fc sbb      ecx, ecx
000000014051f2fe and      ecx, 0x4000
000000014051f304 or       edx, ecx
000000014051f306 neg      al
000000014051f308 mov      al, byte ptr [rdi + 0x91]
000000014051f30e sbb      ecx, ecx
000000014051f310 and      ecx, 0x1000
000000014051f316 or       edx, ecx
000000014051f318 neg      al
000000014051f31a mov      al, byte ptr [rdi + 0x89]
000000014051f320 sbb      ecx, ecx
000000014051f322 and      ecx, ebx
000000014051f324 or       edx, ecx
000000014051f326 neg      al
000000014051f328 movzx    eax, word ptr [rdi + 0x84]
000000014051f32f sbb      ecx, ecx
000000014051f331 and      ecx, r8d
000000014051f334 or       edx, ecx
000000014051f336 movzx    ecx, al
000000014051f339 or       edx, ecx
000000014051f33b mov      eax, dword ptr [rbp - 0x30]
000000014051f33e and      eax, 0xfff
000000014051f343 shl      eax, 0x10
000000014051f346 or       edx, eax
000000014051f348 movzx    eax, byte ptr [rdi + 0x93]
000000014051f34f mov      dword ptr [rbp - 0x24], edx
000000014051f352 and      eax, 7
000000014051f355 movzx    edx, byte ptr [rdi + 0x86]
000000014051f35c and      edx, 7
000000014051f35f shl      edx, 5
000000014051f362 or       edx, eax
000000014051f364 mov      al, byte ptr [rdi + 0x9e]
000000014051f36a shl      edx, 0xd
000000014051f36d neg      al
000000014051f36f mov      al, byte ptr [rdi + 0x78]
000000014051f372 sbb      ecx, ecx
000000014051f374 and      ecx, 0x40000000
000000014051f37a or       edx, ecx
000000014051f37c neg      al
000000014051f37e mov      al, byte ptr [rdi + 0x9c]
000000014051f384 sbb      ecx, ecx
000000014051f386 and      ecx, 0x100
000000014051f38c or       edx, ecx
000000014051f38e neg      al
000000014051f390 movzx    eax, byte ptr [rdi + 0x8a]
000000014051f397 sbb      ecx, ecx
000000014051f399 and      ecx, r9d
000000014051f39c or       edx, ecx
000000014051f39e or       edx, eax
000000014051f3a0 mov      al, byte ptr [rdi + 0x9d]
000000014051f3a6 neg      al
000000014051f3a8 mov      dword ptr [rbp - 0x20], edx
000000014051f3ab mov      al, byte ptr [rdi + 0x9f]
000000014051f3b1 sbb      edx, edx
000000014051f3b3 and      edx, 0x200
000000014051f3b9 neg      al
000000014051f3bb movzx    eax, byte ptr [rdi + 0x96]
000000014051f3c2 sbb      ecx, ecx
000000014051f3c4 and      eax, 3
000000014051f3c7 and      ecx, r8d
000000014051f3ca or       edx, ecx
000000014051f3cc mov      dword ptr [rbp - 0x1c], edx
000000014051f3cf movzx    edx, byte ptr [rdi + 0x8d]
000000014051f3d6 and      edx, 3
000000014051f3d9 shl      edx, 0xd
000000014051f3dc or       edx, eax
000000014051f3de mov      al, byte ptr [rdi + 0x8c]
000000014051f3e4 shl      edx, 0x10
000000014051f3e7 neg      al
000000014051f3e9 mov      al, byte ptr [rdi + 0x8b]
000000014051f3ef sbb      ecx, ecx
000000014051f3f1 and      ecx, 0x10000000
000000014051f3f7 or       edx, ecx
000000014051f3f9 neg      al
000000014051f3fb mov      al, byte ptr [rdi + 0xa1]
000000014051f401 sbb      ecx, ecx
000000014051f403 and      ecx, 0x8000000
000000014051f409 mov      qword ptr [rbp - 0x10], r12
000000014051f40d or       edx, ecx
000000014051f40f neg      al
000000014051f411 mov      al, byte ptr [rdi + 0x8e]
000000014051f417 sbb      ecx, ecx
000000014051f419 and      ecx, 0x40000
000000014051f41f or       edx, ecx
000000014051f421 neg      al
000000014051f423 movzx    eax, word ptr [rdi + 0x98]
000000014051f42a sbb      ecx, ecx
000000014051f42c and      ecx, r9d
000000014051f42f or       edx, ecx
000000014051f431 or       edx, eax
000000014051f433 mov      al, byte ptr [rdi + 0xa2]
000000014051f439 neg      al
000000014051f43b mov      dword ptr [rbp - 0x18], edx
000000014051f43e movzx    eax, word ptr [rdi + 0xa4]
000000014051f445 sbb      ecx, ecx
000000014051f447 and      eax, 0x1f
000000014051f44a and      ecx, 0x20
000000014051f44d or       ecx, eax
000000014051f44f mov      dword ptr [rbp - 0x14], ecx
000000014051f452 cmp      byte ptr [rdi + 0x59], r12b
000000014051f456 je       0x14051f484
000000014051f458 mov      rax, qword ptr [rsi + 0x18]
000000014051f45c lea      r8, [rbp - 0x28]
000000014051f460 movzx    edx, byte ptr [r15 + 0xe2]
000000014051f468 movzx    r9d, byte ptr [r15 + 0xe3]
000000014051f470 add      rdx, r14
000000014051f473 mov      rcx, qword ptr [rsi + 8]
000000014051f477 mov      rax, qword ptr [rax + 0xa0]
000000014051f47e call     qword ptr [rip + 0x164e74]
000000014051f484 mov      rax, qword ptr [rsi + 0x140]
000000014051f48b cmp      byte ptr [rax + 0xf1], r12b
000000014051f492 je       0x14051f4a2
000000014051f494 mov      r8, r14
000000014051f497 mov      rdx, rdi
000000014051f49a mov      rcx, rsi
000000014051f49d call     0x140520338
000000014051f4a2 xor      eax, eax
000000014051f4a4 jmp      0x14051f4cf
000000014051f4a6 mov      rax, qword ptr [rsi + 0x18]
000000014051f4aa lea      r8, [rip + 0x14031f]
000000014051f4b1 mov      r9d, ecx
000000014051f4b4 mov      edx, 2
000000014051f4b9 mov      rcx, qword ptr [rsi + 8]
000000014051f4bd mov      rax, qword ptr [rax + 0x118]
000000014051f4c4 call     qword ptr [rip + 0x164e2e]
000000014051f4ca mov      eax, 0x2e
000000014051f4cf mov      rcx, qword ptr [rbp - 8]
000000014051f4d3 xor      rcx, rsp
000000014051f4d6 call     0x1405f45b0
000000014051f4db mov      rbx, qword ptr [rsp + 0xc8]
000000014051f4e3 add      rsp, 0x70
000000014051f4e7 pop      r15
000000014051f4e9 pop      r14
000000014051f4eb pop      r13
000000014051f4ed pop      r12
000000014051f4ef pop      rdi
000000014051f4f0 pop      rsi
000000014051f4f1 pop      rbp
000000014051f4f2 ret      