000000014048bc7c mov      r11, rsp
000000014048bc7f mov      qword ptr [r11 + 0x10], rbx
000000014048bc83 mov      qword ptr [r11 + 0x20], r9
000000014048bc87 mov      qword ptr [r11 + 0x18], r8
000000014048bc8b push     rbp
000000014048bc8c push     rsi
000000014048bc8d push     rdi
000000014048bc8e push     r12
000000014048bc90 push     r13
000000014048bc92 push     r14
000000014048bc94 push     r15
000000014048bc96 sub      rsp, 0x130
000000014048bc9d mov      r15d, dword ptr [r8]
000000014048bca0 mov      r12, rcx
000000014048bca3 movsxd   rcx, dword ptr [rsp + 0x198]
000000014048bcab mov      r14, r9
000000014048bcae mov      r13, qword ptr [rsp + 0x190]
000000014048bcb6 imul     rdx, rcx, 0x6d0
000000014048bcbd mov      r8, qword ptr [r12 + 8]
000000014048bcc2 mov      rax, qword ptr [r12]
000000014048bcc6 mov      r13d, dword ptr [r13]
000000014048bcca add      rax, 0xf4f0
000000014048bcd0 mov      qword ptr [rsp + 0x110], rax
000000014048bcd8 mov      al, byte ptr [rdx + r8 + 0x544]
000000014048bce0 movzx    esi, byte ptr [rdx + r8 + 0x538]
000000014048bce9 mov      edi, dword ptr [rdx + r8 + 0x53c]
000000014048bcf1 mov      byte ptr [rsp + 0x170], al
000000014048bcf8 mov      eax, dword ptr [rdx + r8 + 0x534]
000000014048bd00 mov      dword ptr [rsp + 0xfc], eax
000000014048bd07 movzx    eax, byte ptr [rcx + r12 + 0x169aa0]
000000014048bd10 movsx    ecx, byte ptr [r12 + 0x17bb75]
000000014048bd19 mov      dword ptr [rsp + 0xc4], eax
000000014048bd20 mov      al, byte ptr [r12 + 0x17bb78]
000000014048bd28 and      al, 1
000000014048bd2a mov      qword ptr [rsp + 0x118], rdx
000000014048bd32 mov      byte ptr [rsp + 0xee], al
000000014048bd39 movsx    eax, byte ptr [r12 + 0x17bb70]
000000014048bd42 mov      word ptr [r11 - 0x78], ax
000000014048bd47 movsx    eax, byte ptr [r12 + 0x17bb71]
000000014048bd50 mov      word ptr [r11 - 0x70], ax
000000014048bd55 xor      eax, eax
000000014048bd57 mov      word ptr [r11 - 0x74], ax
000000014048bd5c movzx    eax, byte ptr [r12 + 0x17bb73]
000000014048bd65 sub      ecx, eax
000000014048bd67 mov      qword ptr [rsp + 0x120], r8
000000014048bd6f mov      dword ptr [rsp + 0xe8], ecx
000000014048bd76 cmp      r15d, r13d
000000014048bd79 jae      0x14048bdec
000000014048bd7b mov      rcx, r12
000000014048bd7e call     0x14037c134
000000014048bd83 mov      edx, r13d
000000014048bd86 mov      dword ptr [rsp + 0x20], eax
000000014048bd8a sub      edx, r15d
000000014048bd8d lea      rcx, [r14 + r15]
000000014048bd91 lea      r9, [rip + 0x1b3b18]
000000014048bd98 lea      r8, [rip + 0x1cd511]
000000014048bd9f call     0x140044426
000000014048bda4 add      r15d, eax
000000014048bda7 cmp      r15d, r13d
000000014048bdaa jae      0x14048bdec
000000014048bdac mov      rcx, qword ptr [r12]
000000014048bdb0 lea      r9, [rip + 0x1cd509]
000000014048bdb7 mov      ebp, dword ptr [rsp + 0x198]
000000014048bdbe mov      edx, r13d
000000014048bdc1 mov      dword ptr [rsp + 0x28], ebp
000000014048bdc5 sub      edx, r15d
000000014048bdc8 movzx    r8d, byte ptr [rcx + 0xe082]
000000014048bdd0 mov      dword ptr [rsp + 0x20], r8d
000000014048bdd5 lea      r8, [rip + 0x1cd4f4]
000000014048bddc mov      ecx, r15d
000000014048bddf add      rcx, r14
000000014048bde2 call     0x140044426
000000014048bde7 add      r15d, eax
000000014048bdea jmp      0x14048bdf3
000000014048bdec mov      ebp, dword ptr [rsp + 0x198]
000000014048bdf3 mov      ecx, 3
000000014048bdf8 cmp      r15d, r13d
000000014048bdfb jae      0x14048beff
000000014048be01 movzx    r9d, byte ptr [rsp + 0x170]
000000014048be0a lea      rax, [rip + 0x17a66f]
000000014048be11 cmp      edi, ecx
000000014048be13 mov      dword ptr [rsp + 0x38], esi
000000014048be17 lea      rcx, [rip + 0x16ecb2]
000000014048be1e mov      edx, r13d
000000014048be21 lea      r10, [rip + 0x199548]
000000014048be28 cmove    r10, rax
000000014048be2c lea      r8, [rip + 0x16ecad]
000000014048be33 cmp      edi, 2
000000014048be36 lea      rax, [rip + 0x17a633]
000000014048be3d cmove    r10, rax
000000014048be41 cmp      edi, 1
000000014048be44 lea      rax, [rip + 0x17a615]
000000014048be4b cmove    r10, rax
000000014048be4f test     edi, edi
000000014048be51 lea      rax, [rip + 0x17a5f8]
000000014048be58 cmove    r10, rax
000000014048be5c mov      eax, dword ptr [rsp + 0xfc]
000000014048be63 cmp      eax, 1
000000014048be66 mov      qword ptr [rsp + 0x30], r10
000000014048be6b mov      dword ptr [rsp + 0x28], r9d
000000014048be70 lea      r9, [rip + 0x1b4029]
000000014048be77 cmove    r8, rcx
000000014048be7b test     eax, eax
000000014048be7d lea      rcx, [rip + 0x16ec3c]
000000014048be84 cmove    r8, rcx
000000014048be88 mov      ecx, r15d
000000014048be8b mov      qword ptr [rsp + 0x20], r8
000000014048be90 add      rcx, r14
000000014048be93 lea      r8, [rip + 0x1cd8e6]
000000014048be9a sub      edx, r15d
000000014048be9d call     0x140044426
000000014048bea2 add      r15d, eax
000000014048bea5 cmp      r15d, r13d
000000014048bea8 jae      0x14048beff
000000014048beaa mov      dl, 2
000000014048beac mov      rcx, r12
000000014048beaf call     0x140387944
000000014048beb4 mov      dl, 1
000000014048beb6 mov      rcx, r12
000000014048beb9 mov      rdi, rax
000000014048bebc call     0x140387944
000000014048bec1 xor      edx, edx
000000014048bec3 mov      rcx, r12
000000014048bec6 mov      rbx, rax
000000014048bec9 call     0x140387944
000000014048bece mov      edx, r13d
000000014048bed1 mov      qword ptr [rsp + 0x30], rdi
000000014048bed6 mov      ecx, r15d
000000014048bed9 lea      r9, [rip + 0x1cd8c0]
000000014048bee0 sub      edx, r15d
000000014048bee3 mov      qword ptr [rsp + 0x28], rbx
000000014048bee8 add      rcx, r14
000000014048beeb mov      qword ptr [rsp + 0x20], rax
000000014048bef0 lea      r8, [rip + 0x1cd8c9]
000000014048bef7 call     0x140044426
000000014048befc add      r15d, eax
000000014048beff mov      edi, 0x11a20
000000014048bf04 mov      r9d, 0x7fc00
000000014048bf0a mov      r8d, edi
000000014048bf0d mov      edx, ebp
000000014048bf0f mov      rcx, r12
000000014048bf12 call     0x1404663c4
000000014048bf17 mov      r9d, 0x3fe
000000014048bf1d mov      r8d, edi
000000014048bf20 mov      edx, ebp
000000014048bf22 mov      rcx, r12
000000014048bf25 mov      ebx, eax
000000014048bf27 call     0x1404663c4
000000014048bf2c bt       ebx, 8
000000014048bf30 mov      r9d, eax
000000014048bf33 mov      eax, 0xfffffe00
000000014048bf38 jae      0x14048bf3c
000000014048bf3a or       ebx, eax
000000014048bf3c bt       r9d, 8
000000014048bf41 jae      0x14048bf46
000000014048bf43 or       r9d, eax
000000014048bf46 imul     r8d, ebx, 0x19
000000014048bf4a mov      eax, ebx
000000014048bf4c cdq      
000000014048bf4d mov      r11d, 0x51eb851f
000000014048bf53 mov      esi, 3
000000014048bf58 and      edx, esi
000000014048bf5a lea      edi, [rdx + rax]
000000014048bf5d mov      eax, r11d
000000014048bf60 imul     r8d
000000014048bf63 sar      edi, 2
000000014048bf66 mov      eax, r9d
000000014048bf69 sar      edx, 5
000000014048bf6c mov      ecx, edx
000000014048bf6e shr      ecx, 0x1f
000000014048bf71 add      edx, ecx
000000014048bf73 imul     ecx, edx, 0x64
000000014048bf76 cdq      
000000014048bf77 sub      r8d, ecx
000000014048bf7a mov      r10d, r8d
000000014048bf7d neg      r10d
000000014048bf80 cmovs    r10d, r8d
000000014048bf84 and      esi, edx
000000014048bf86 add      esi, eax
000000014048bf88 imul     r8d, r9d, 0x19
000000014048bf8c mov      eax, r11d
000000014048bf8f sar      esi, 2
000000014048bf92 imul     r8d
000000014048bf95 lea      rax, [rip + 0x16b3f4]
000000014048bf9c sar      edx, 5
000000014048bf9f mov      ecx, edx
000000014048bfa1 shr      ecx, 0x1f
000000014048bfa4 add      edx, ecx
000000014048bfa6 imul     ecx, edx, 0x64
000000014048bfa9 sub      r8d, ecx
000000014048bfac lea      rcx, [rip + 0x16bded]
000000014048bfb3 mov      r11d, r8d
000000014048bfb6 neg      r11d
000000014048bfb9 cmovs    r11d, r8d
000000014048bfbd cmp      r15d, r13d
000000014048bfc0 jae      0x14048c01d
000000014048bfc2 test     esi, esi
000000014048bfc4 jne      0x14048bfce
000000014048bfc6 test     r9d, r9d
000000014048bfc9 mov      r9, rcx
000000014048bfcc js       0x14048bfd1
000000014048bfce mov      r9, rax
000000014048bfd1 test     edi, edi
000000014048bfd3 jne      0x14048bfdc
000000014048bfd5 mov      r8, rcx
000000014048bfd8 test     ebx, ebx
000000014048bfda js       0x14048bfdf
000000014048bfdc mov      r8, rax
000000014048bfdf mov      dword ptr [rsp + 0x48], r11d
000000014048bfe4 mov      edx, r13d
000000014048bfe7 mov      dword ptr [rsp + 0x40], esi
000000014048bfeb sub      edx, r15d
000000014048bfee mov      qword ptr [rsp + 0x38], r9
000000014048bff3 lea      r9, [rip + 0x1cd3a6]
000000014048bffa mov      dword ptr [rsp + 0x30], r10d
000000014048bfff mov      dword ptr [rsp + 0x28], edi
000000014048c003 mov      qword ptr [rsp + 0x20], r8
000000014048c008 lea      r8, [rip + 0x1cd3b1]
000000014048c00f mov      ecx, r15d
000000014048c012 add      rcx, r14
000000014048c015 call     0x140044426
000000014048c01a add      r15d, eax
000000014048c01d or       r9d, 0xffffffff
000000014048c021 mov      r8d, 0x11a34
000000014048c027 mov      edx, ebp
000000014048c029 mov      rcx, r12
000000014048c02c call     0x1404663c4
000000014048c031 mov      dil, 8
000000014048c034 mov      r8d, eax
000000014048c037 and      r8d, 0xf
000000014048c03b mov      ecx, eax
000000014048c03d mov      edx, r8d
000000014048c040 or       edx, 0xfffffff0
000000014048c043 test     dil, al
000000014048c046 cmove    edx, r8d
000000014048c04a shr      ecx, 4
000000014048c04d and      ecx, 0xf
000000014048c050 lea      ebx, [rdx + rdx*4]
000000014048c053 mov      dword ptr [rsp + 0xb8], ebx
000000014048c05a test     dil, cl
000000014048c05d je       0x14048c062
000000014048c05f or       ecx, 0xfffffff0
000000014048c062 lea      r11d, [rcx + rcx*4]
000000014048c066 mov      ecx, eax
000000014048c068 shr      ecx, 8
000000014048c06b and      ecx, 0xf
000000014048c06e mov      dword ptr [rsp + 0xbc], r11d
000000014048c076 test     dil, cl
000000014048c079 je       0x14048c07e
000000014048c07b or       ecx, 0xfffffff0
000000014048c07e lea      r9d, [rcx + rcx*4]
000000014048c082 mov      ecx, eax
000000014048c084 shr      ecx, 0xc
000000014048c087 and      ecx, 0xf
000000014048c08a mov      dword ptr [rsp + 0xc0], r9d
000000014048c092 test     dil, cl
000000014048c095 je       0x14048c09a
000000014048c097 or       ecx, 0xfffffff0
000000014048c09a shr      eax, 0x10
000000014048c09d lea      r8d, [rcx + rcx*4]
000000014048c0a1 and      eax, 0xf
000000014048c0a4 mov      dword ptr [rsp + 0xe0], r8d
000000014048c0ac test     dil, al
000000014048c0af je       0x14048c0b4
000000014048c0b1 or       eax, 0xfffffff0
000000014048c0b4 lea      r10d, [rax + rax*4]
000000014048c0b8 cmp      r15d, r13d
000000014048c0bb jae      0x14048c35c
000000014048c0c1 mov      eax, 0x66666667
000000014048c0c6 imul     r10d
000000014048c0c9 mov      ebp, edx
000000014048c0cb sar      ebp, 2
000000014048c0ce mov      eax, ebp
000000014048c0d0 shr      eax, 0x1f
000000014048c0d3 add      ebp, eax
000000014048c0d5 mov      eax, r10d
000000014048c0d8 lea      ecx, [rbp*4]
000000014048c0df add      ecx, ebp
000000014048c0e1 add      ecx, ecx
000000014048c0e3 sub      eax, ecx
000000014048c0e5 sub      ecx, r10d
000000014048c0e8 test     r10d, r10d
000000014048c0eb cmovns   ecx, eax
000000014048c0ee mov      dword ptr [rsp + 0xb4], ecx
000000014048c0f5 jns      0x14048c10b
000000014048c0f7 mov      eax, 0x99999999
000000014048c0fc imul     r10d
000000014048c0ff mov      ebp, edx
000000014048c101 sar      ebp, 2
000000014048c104 mov      eax, ebp
000000014048c106 shr      eax, 0x1f
000000014048c109 add      ebp, eax
000000014048c10b mov      ecx, 0x66666667
000000014048c110 mov      eax, ecx
000000014048c112 imul     r8d
000000014048c115 mov      edi, edx
000000014048c117 sar      edi, 2
000000014048c11a mov      eax, edi
000000014048c11c shr      eax, 0x1f
000000014048c11f add      edi, eax
000000014048c121 lea      esi, [rdi + rdi*4]
000000014048c124 add      esi, esi
000000014048c126 test     r8d, r8d
000000014048c129 jns      0x14048c144
000000014048c12b mov      eax, 0x99999999
000000014048c130 sub      esi, r8d
000000014048c133 imul     r8d
000000014048c136 mov      edi, edx
000000014048c138 sar      edi, 2
000000014048c13b mov      eax, edi
000000014048c13d shr      eax, 0x1f
000000014048c140 add      edi, eax
000000014048c142 jmp      0x14048c14b
000000014048c144 mov      eax, r8d
000000014048c147 sub      eax, esi
000000014048c149 mov      esi, eax
000000014048c14b mov      eax, ecx
000000014048c14d imul     r9d
000000014048c150 mov      ecx, edx
000000014048c152 sar      ecx, 2
000000014048c155 mov      eax, ecx
000000014048c157 shr      eax, 0x1f
000000014048c15a add      ecx, eax
000000014048c15c mov      dword ptr [rsp + 0xd0], ecx
000000014048c163 lea      r8d, [rcx + rcx*4]
000000014048c167 add      r8d, r8d
000000014048c16a test     r9d, r9d
000000014048c16d jns      0x14048c18f
000000014048c16f mov      eax, 0x99999999
000000014048c174 sub      r8d, r9d
000000014048c177 imul     r9d
000000014048c17a mov      ecx, edx
000000014048c17c sar      ecx, 2
000000014048c17f mov      eax, ecx
000000014048c181 shr      eax, 0x1f
000000014048c184 add      ecx, eax
000000014048c186 mov      dword ptr [rsp + 0xd0], ecx
000000014048c18d jmp      0x14048c198
000000014048c18f mov      eax, r9d
000000014048c192 sub      eax, r8d
000000014048c195 mov      r8d, eax
000000014048c198 mov      eax, 0x66666667
000000014048c19d mov      dword ptr [rsp + 0xb0], r8d
000000014048c1a5 imul     r11d
000000014048c1a8 mov      ecx, edx
000000014048c1aa sar      ecx, 2
000000014048c1ad mov      eax, ecx
000000014048c1af shr      eax, 0x1f
000000014048c1b2 add      ecx, eax
000000014048c1b4 mov      dword ptr [rsp + 0xd4], ecx
000000014048c1bb lea      r9d, [rcx + rcx*4]
000000014048c1bf add      r9d, r9d
000000014048c1c2 test     r11d, r11d
000000014048c1c5 jns      0x14048c1e7
000000014048c1c7 mov      eax, 0x99999999
000000014048c1cc sub      r9d, r11d
000000014048c1cf imul     r11d
000000014048c1d2 mov      ecx, edx
000000014048c1d4 sar      ecx, 2
000000014048c1d7 mov      eax, ecx
000000014048c1d9 shr      eax, 0x1f
000000014048c1dc add      ecx, eax
000000014048c1de mov      dword ptr [rsp + 0xd4], ecx
000000014048c1e5 jmp      0x14048c1f8
000000014048c1e7 mov      eax, r11d
000000014048c1ea mov      dword ptr [rsp + 0xb0], r8d
000000014048c1f2 sub      eax, r9d
000000014048c1f5 mov      r9d, eax
000000014048c1f8 mov      eax, 0x66666667
000000014048c1fd mov      dword ptr [rsp + 0xc8], r9d
000000014048c205 imul     ebx
000000014048c207 mov      ecx, edx
000000014048c209 sar      ecx, 2
000000014048c20c mov      eax, ecx
000000014048c20e shr      eax, 0x1f
000000014048c211 add      ecx, eax
000000014048c213 mov      dword ptr [rsp + 0xdc], ecx
000000014048c21a lea      ecx, [rcx + rcx*4]
000000014048c21d add      ecx, ecx
000000014048c21f test     ebx, ebx
000000014048c221 jns      0x14048c248
000000014048c223 sub      ecx, ebx
000000014048c225 mov      eax, 0x99999999
000000014048c22a imul     ebx
000000014048c22c mov      dword ptr [rsp + 0xd8], ecx
000000014048c233 mov      ecx, edx
000000014048c235 sar      ecx, 2
000000014048c238 mov      eax, ecx
000000014048c23a shr      eax, 0x1f
000000014048c23d add      ecx, eax
000000014048c23f mov      dword ptr [rsp + 0xdc], ecx
000000014048c246 jmp      0x14048c263
000000014048c248 mov      eax, ebx
000000014048c24a mov      dword ptr [rsp + 0xc8], r9d
000000014048c252 sub      eax, ecx
000000014048c254 mov      dword ptr [rsp + 0xb0], r8d
000000014048c25c mov      dword ptr [rsp + 0xd8], eax
000000014048c263 xor      ecx, ecx
000000014048c265 lea      rax, [rip + 0x16b124]
000000014048c26c mov      rbx, rax
000000014048c26f lea      rdx, [rip + 0x16bb2a]
000000014048c276 mov      r11, rax
000000014048c279 mov      r9, rax
000000014048c27c mov      r8, rax
000000014048c27f test     r10d, r10d
000000014048c282 mov      r10, rax
000000014048c285 mov      eax, dword ptr [rsp + 0xb4]
000000014048c28c mov      dword ptr [rsp + 0x90], eax
000000014048c293 cmovs    rbx, rdx
000000014048c297 cmp      dword ptr [rsp + 0xe0], ecx
000000014048c29e mov      eax, dword ptr [rsp + 0xb0]
000000014048c2a5 mov      dword ptr [rsp + 0x88], ebp
000000014048c2ac cmovl    r11, rdx
000000014048c2b0 cmp      dword ptr [rsp + 0xc0], ecx
000000014048c2b7 mov      qword ptr [rsp + 0x80], rbx
000000014048c2bf mov      dword ptr [rsp + 0x78], esi
000000014048c2c3 cmovl    r10, rdx
000000014048c2c7 cmp      dword ptr [rsp + 0xbc], ecx
000000014048c2ce mov      dword ptr [rsp + 0x70], edi
000000014048c2d2 mov      qword ptr [rsp + 0x68], r11
000000014048c2d7 cmovl    r9, rdx
000000014048c2db cmp      dword ptr [rsp + 0xb8], ecx
000000014048c2e2 mov      dword ptr [rsp + 0x60], eax
000000014048c2e6 mov      eax, dword ptr [rsp + 0xd0]
000000014048c2ed cmovl    r8, rdx
000000014048c2f1 mov      dword ptr [rsp + 0x58], eax
000000014048c2f5 mov      edx, r13d
000000014048c2f8 mov      eax, dword ptr [rsp + 0xc8]
000000014048c2ff sub      edx, r15d
000000014048c302 mov      qword ptr [rsp + 0x50], r10
000000014048c307 mov      dword ptr [rsp + 0x48], eax
000000014048c30b mov      eax, dword ptr [rsp + 0xd4]
000000014048c312 mov      dword ptr [rsp + 0x40], eax
000000014048c316 mov      eax, dword ptr [rsp + 0xd8]
000000014048c31d mov      qword ptr [rsp + 0x38], r9
000000014048c322 lea      r9, [rip + 0x1cd0b7]
000000014048c329 mov      dword ptr [rsp + 0x30], eax
000000014048c32d mov      eax, dword ptr [rsp + 0xdc]
000000014048c334 mov      dword ptr [rsp + 0x28], eax
000000014048c338 mov      qword ptr [rsp + 0x20], r8
000000014048c33d lea      r8, [rip + 0x1cd0bc]
000000014048c344 mov      ecx, r15d
000000014048c347 add      rcx, r14
000000014048c34a call     0x140044426
000000014048c34f mov      ebp, dword ptr [rsp + 0x198]
000000014048c356 add      r15d, eax
000000014048c359 mov      dil, 8
000000014048c35c or       r9d, 0xffffffff
000000014048c360 mov      r8d, 0x11a30
000000014048c366 mov      edx, ebp
000000014048c368 mov      rcx, r12
000000014048c36b call     0x1404663c4
000000014048c370 mov      r8d, eax
000000014048c373 and      r8d, 0xf
000000014048c377 mov      edx, r8d
000000014048c37a or       edx, 0xfffffff0
000000014048c37d test     dil, al
000000014048c380 cmove    edx, r8d
000000014048c384 lea      ecx, [rdx + rdx*4]
000000014048c387 mov      dword ptr [rsp + 0xdc], ecx
000000014048c38e mov      ecx, eax
000000014048c390 shr      ecx, 4
000000014048c393 and      ecx, 0xf
000000014048c396 test     dil, cl
000000014048c399 je       0x14048c39e
000000014048c39b or       ecx, 0xfffffff0
000000014048c39e lea      edi, [rcx + rcx*4]
000000014048c3a1 mov      dl, 8
000000014048c3a3 mov      ecx, eax
000000014048c3a5 mov      dword ptr [rsp + 0xe4], edi
000000014048c3ac shr      ecx, 8
000000014048c3af and      ecx, 0xf
000000014048c3b2 test     dl, cl
000000014048c3b4 je       0x14048c3b9
000000014048c3b6 or       ecx, 0xfffffff0
000000014048c3b9 lea      ebx, [rcx + rcx*4]
000000014048c3bc mov      ecx, eax
000000014048c3be shr      ecx, 0xc
000000014048c3c1 and      ecx, 0xf
000000014048c3c4 mov      dword ptr [rsp + 0x100], ebx
000000014048c3cb test     dl, cl
000000014048c3cd je       0x14048c3d2
000000014048c3cf or       ecx, 0xfffffff0
000000014048c3d2 lea      r9d, [rcx + rcx*4]
000000014048c3d6 mov      ecx, eax
000000014048c3d8 shr      ecx, 0x10
000000014048c3db and      ecx, 0xf
000000014048c3de mov      dword ptr [rsp + 0x108], r9d
000000014048c3e6 test     dl, cl
000000014048c3e8 je       0x14048c3ed
000000014048c3ea or       ecx, 0xfffffff0
000000014048c3ed shr      eax, 0x14
000000014048c3f0 lea      r8d, [rcx + rcx*4]
000000014048c3f4 and      eax, 0xf
000000014048c3f7 mov      dword ptr [rsp + 0xe0], r8d
000000014048c3ff test     dl, al
000000014048c401 je       0x14048c406
000000014048c403 or       eax, 0xfffffff0
000000014048c406 lea      r11d, [rax + rax*4]
000000014048c40a cmp      r15d, r13d
000000014048c40d jae      0x14048c890
000000014048c413 mov      r10d, 0x66666667
000000014048c419 mov      eax, r10d
000000014048c41c imul     r11d
000000014048c41f mov      ecx, edx
000000014048c421 sar      ecx, 2
000000014048c424 mov      eax, ecx
000000014048c426 shr      eax, 0x1f
000000014048c429 add      ecx, eax
000000014048c42b mov      eax, r11d
000000014048c42e mov      dword ptr [rsp + 0xd8], ecx
000000014048c435 lea      ecx, [rcx + rcx*4]
000000014048c438 add      ecx, ecx
000000014048c43a sub      eax, ecx
000000014048c43c sub      ecx, r11d
000000014048c43f test     r11d, r11d
000000014048c442 cmovns   ecx, eax
000000014048c445 mov      dword ptr [rsp + 0xcc], ecx
000000014048c44c jns      0x14048c469
000000014048c44e mov      eax, 0x99999999
000000014048c453 imul     r11d
000000014048c456 mov      ecx, edx
000000014048c458 sar      ecx, 2
000000014048c45b mov      eax, ecx
000000014048c45d shr      eax, 0x1f
000000014048c460 add      ecx, eax
000000014048c462 mov      dword ptr [rsp + 0xd8], ecx
000000014048c469 mov      eax, r10d
000000014048c46c imul     r8d
000000014048c46f mov      ebp, edx
000000014048c471 sar      ebp, 2
000000014048c474 mov      eax, ebp
000000014048c476 shr      eax, 0x1f
000000014048c479 add      ebp, eax
000000014048c47b lea      esi, [rbp*4]
000000014048c482 add      esi, ebp
000000014048c484 add      esi, esi
000000014048c486 test     r8d, r8d
000000014048c489 jns      0x14048c4a4
000000014048c48b mov      eax, 0x99999999
000000014048c490 sub      esi, r8d
000000014048c493 imul     r8d
000000014048c496 mov      ebp, edx
000000014048c498 sar      ebp, 2
000000014048c49b mov      eax, ebp
000000014048c49d shr      eax, 0x1f
000000014048c4a0 add      ebp, eax
000000014048c4a2 jmp      0x14048c4ab
000000014048c4a4 mov      eax, r8d
000000014048c4a7 sub      eax, esi
000000014048c4a9 mov      esi, eax
000000014048c4ab mov      eax, r10d
000000014048c4ae imul     r9d
000000014048c4b1 mov      ecx, edx
000000014048c4b3 sar      ecx, 2
000000014048c4b6 mov      eax, ecx
000000014048c4b8 shr      eax, 0x1f
000000014048c4bb add      ecx, eax
000000014048c4bd mov      dword ptr [rsp + 0xd4], ecx
000000014048c4c4 lea      r8d, [rcx + rcx*4]
000000014048c4c8 add      r8d, r8d
000000014048c4cb test     r9d, r9d
000000014048c4ce jns      0x14048c4f0
000000014048c4d0 mov      eax, 0x99999999
000000014048c4d5 sub      r8d, r9d
000000014048c4d8 imul     r9d
000000014048c4db mov      ecx, edx
000000014048c4dd sar      ecx, 2
000000014048c4e0 mov      eax, ecx
000000014048c4e2 shr      eax, 0x1f
000000014048c4e5 add      ecx, eax
000000014048c4e7 mov      dword ptr [rsp + 0xd4], ecx
000000014048c4ee jmp      0x14048c4f9
000000014048c4f0 mov      eax, r9d
000000014048c4f3 sub      eax, r8d
000000014048c4f6 mov      r8d, eax
000000014048c4f9 mov      eax, r10d
000000014048c4fc mov      dword ptr [rsp + 0xb0], r8d
000000014048c504 imul     ebx
000000014048c506 mov      ecx, edx
000000014048c508 sar      ecx, 2
000000014048c50b mov      eax, ecx
000000014048c50d shr      eax, 0x1f
000000014048c510 add      ecx, eax
000000014048c512 mov      dword ptr [rsp + 0xb4], ecx
000000014048c519 lea      r10d, [rcx + rcx*4]
000000014048c51d add      r10d, r10d
000000014048c520 test     ebx, ebx
000000014048c522 jns      0x14048c543
000000014048c524 mov      eax, 0x99999999
000000014048c529 sub      r10d, ebx
000000014048c52c imul     ebx
000000014048c52e mov      ecx, edx
000000014048c530 sar      ecx, 2
000000014048c533 mov      eax, ecx
000000014048c535 shr      eax, 0x1f
000000014048c538 add      ecx, eax
000000014048c53a mov      dword ptr [rsp + 0xb4], ecx
000000014048c541 jmp      0x14048c553
000000014048c543 mov      eax, ebx
000000014048c545 mov      dword ptr [rsp + 0xb0], r8d
000000014048c54d sub      eax, r10d
000000014048c550 mov      r10d, eax
000000014048c553 mov      ebx, 0x66666667
000000014048c558 mov      dword ptr [rsp + 0xc8], r10d
000000014048c560 mov      eax, ebx
000000014048c562 imul     edi
000000014048c564 mov      r9d, edx
000000014048c567 sar      r9d, 2
000000014048c56b mov      eax, r9d
000000014048c56e shr      eax, 0x1f
000000014048c571 add      r9d, eax
000000014048c574 mov      dword ptr [rsp + 0xb8], r9d
000000014048c57c lea      r9d, [r9 + r9*4]
000000014048c580 add      r9d, r9d
000000014048c583 test     edi, edi
000000014048c585 jns      0x14048c5a6
000000014048c587 mov      eax, 0x99999999
000000014048c58c sub      r9d, edi
000000014048c58f imul     edi
000000014048c591 mov      ecx, edx
000000014048c593 sar      ecx, 2
000000014048c596 mov      eax, ecx
000000014048c598 shr      eax, 0x1f
000000014048c59b add      ecx, eax
000000014048c59d mov      dword ptr [rsp + 0xb8], ecx
000000014048c5a4 jmp      0x14048c5be
000000014048c5a6 mov      eax, edi
000000014048c5a8 mov      dword ptr [rsp + 0xc8], r10d
000000014048c5b0 sub      eax, r9d
000000014048c5b3 mov      dword ptr [rsp + 0xb0], r8d
000000014048c5bb mov      r9d, eax
000000014048c5be mov      eax, ebx
000000014048c5c0 mov      dword ptr [rsp + 0xd0], r9d
000000014048c5c8 mov      ebx, dword ptr [rsp + 0xdc]
000000014048c5cf imul     ebx
000000014048c5d1 mov      eax, edx
000000014048c5d3 xor      edx, edx
000000014048c5d5 sar      eax, 2
000000014048c5d8 mov      ecx, eax
000000014048c5da shr      ecx, 0x1f
000000014048c5dd add      eax, ecx
000000014048c5df mov      dword ptr [rsp + 0xc0], eax
000000014048c5e6 lea      ecx, [rax + rax*4]
000000014048c5e9 add      ecx, ecx
000000014048c5eb test     ebx, ebx
000000014048c5ed jns      0x14048c616
000000014048c5ef sub      ecx, ebx
000000014048c5f1 mov      eax, 0x99999999
000000014048c5f6 imul     ebx
000000014048c5f8 mov      dword ptr [rsp + 0xbc], ecx
000000014048c5ff mov      ecx, edx
000000014048c601 sar      ecx, 2
000000014048c604 mov      eax, ecx
000000014048c606 shr      eax, 0x1f
000000014048c609 add      ecx, eax
000000014048c60b mov      dword ptr [rsp + 0xc0], ecx
000000014048c612 xor      edx, edx
000000014048c614 jmp      0x14048c639
000000014048c616 mov      eax, ebx
000000014048c618 mov      dword ptr [rsp + 0xd0], r9d
000000014048c620 sub      eax, ecx
000000014048c622 mov      dword ptr [rsp + 0xc8], r10d
000000014048c62a mov      dword ptr [rsp + 0xbc], eax
000000014048c631 mov      dword ptr [rsp + 0xb0], r8d
000000014048c639 test     r11d, r11d
000000014048c63c lea      rax, [rip + 0x16ad4d]
000000014048c643 mov      rdi, rax
000000014048c646 lea      rcx, [rip + 0x16b753]
000000014048c64d mov      rbx, rax
000000014048c650 mov      r11, rax
000000014048c653 mov      r10, rax
000000014048c656 mov      r9, rax
000000014048c659 mov      r8, rax
000000014048c65c cmovs    rdi, rcx
000000014048c660 cmp      dword ptr [rsp + 0xe0], edx
000000014048c667 mov      eax, dword ptr [rsp + 0xcc]
000000014048c66e mov      dword ptr [rsp + 0xa8], eax
000000014048c675 cmovl    rbx, rcx
000000014048c679 cmp      dword ptr [rsp + 0x108], edx
000000014048c680 mov      eax, dword ptr [rsp + 0xd8]
000000014048c687 mov      dword ptr [rsp + 0xa0], eax
000000014048c68e cmovl    r11, rcx
000000014048c692 cmp      dword ptr [rsp + 0x100], edx
000000014048c699 mov      eax, dword ptr [rsp + 0xb0]
000000014048c6a0 mov      qword ptr [rsp + 0x98], rdi
000000014048c6a8 cmovl    r10, rcx
000000014048c6ac cmp      dword ptr [rsp + 0xe4], edx
000000014048c6b3 mov      edx, r13d
000000014048c6b6 mov      dword ptr [rsp + 0x90], esi
000000014048c6bd mov      dword ptr [rsp + 0x88], ebp
000000014048c6c4 cmovl    r9, rcx
000000014048c6c8 mov      ecx, dword ptr [rsp + 0xdc]
000000014048c6cf test     ecx, ecx
000000014048c6d1 mov      qword ptr [rsp + 0x80], rbx
000000014048c6d9 lea      rcx, [rip + 0x16b6c0]
000000014048c6e0 mov      dword ptr [rsp + 0x78], eax
000000014048c6e4 cmovs    r8, rcx
000000014048c6e8 mov      eax, dword ptr [rsp + 0xd4]
000000014048c6ef sub      edx, r15d
000000014048c6f2 mov      dword ptr [rsp + 0x70], eax
000000014048c6f6 mov      eax, dword ptr [rsp + 0xc8]
000000014048c6fd mov      qword ptr [rsp + 0x68], r11
000000014048c702 mov      dword ptr [rsp + 0x60], eax
000000014048c706 mov      eax, dword ptr [rsp + 0xb4]
000000014048c70d mov      dword ptr [rsp + 0x58], eax
000000014048c711 mov      eax, dword ptr [rsp + 0xd0]
000000014048c718 mov      qword ptr [rsp + 0x50], r10
000000014048c71d mov      dword ptr [rsp + 0x48], eax
000000014048c721 mov      eax, dword ptr [rsp + 0xb8]
000000014048c728 mov      dword ptr [rsp + 0x40], eax
000000014048c72c mov      eax, dword ptr [rsp + 0xbc]
000000014048c733 mov      qword ptr [rsp + 0x38], r9
000000014048c738 lea      r9, [rip + 0x1ccd01]
000000014048c73f mov      dword ptr [rsp + 0x30], eax
000000014048c743 mov      eax, dword ptr [rsp + 0xc0]
000000014048c74a mov      dword ptr [rsp + 0x28], eax
000000014048c74e mov      qword ptr [rsp + 0x20], r8
000000014048c753 lea      r8, [rip + 0x1ccd06]
000000014048c75a mov      ecx, r15d
000000014048c75d add      rcx, r14
000000014048c760 call     0x140044426
000000014048c765 mov      ebp, dword ptr [rsp + 0x198]
000000014048c76c add      r15d, eax
000000014048c76f cmp      r15d, r13d
000000014048c772 jae      0x14048c890
000000014048c778 mov      r9d, dword ptr [rsp + 0xc4]
000000014048c780 mov      eax, 0xcccccccd
000000014048c785 mov      ecx, r15d
000000014048c788 add      rcx, r14
000000014048c78b lea      r8d, [r9 + r9*4]
000000014048c78f shr      r9d, 2
000000014048c793 add      r8d, r8d
000000014048c796 shr      r8d, 2
000000014048c79a mul      r8d
000000014048c79d shr      edx, 3
000000014048c7a0 lea      eax, [rdx + rdx*4]
000000014048c7a3 mov      edx, r13d
000000014048c7a6 add      eax, eax
000000014048c7a8 sub      edx, r15d
000000014048c7ab sub      r8d, eax
000000014048c7ae mov      dword ptr [rsp + 0x28], r8d
000000014048c7b3 lea      r8, [rip + 0x1ccd16]
000000014048c7ba mov      dword ptr [rsp + 0x20], r9d
000000014048c7bf lea      r9, [rip + 0x1cccea]
000000014048c7c6 call     0x140044426
000000014048c7cb add      r15d, eax
000000014048c7ce cmp      r15d, r13d
000000014048c7d1 jae      0x14048c890
000000014048c7d7 movsx    eax, byte ptr [r12 + 0x169aa2]
000000014048c7e0 mov      rcx, r12
000000014048c7e3 cdq      
000000014048c7e4 sub      eax, edx
000000014048c7e6 sar      eax, 1
000000014048c7e8 mov      edx, eax
000000014048c7ea call     0x14038e3bc
000000014048c7ef mov      edi, eax
000000014048c7f1 mov      ebx, 0x66666667
000000014048c7f6 mov      eax, ebx
000000014048c7f8 imul     edi
000000014048c7fa movsx    eax, byte ptr [r12 + 0x169aa2]
000000014048c803 sar      edx, 2
000000014048c806 mov      ecx, edx
000000014048c808 shr      ecx, 0x1f
000000014048c80b add      edx, ecx
000000014048c80d lea      ecx, [rdx + rdx*4]
000000014048c810 cdq      
000000014048c811 sub      eax, edx
000000014048c813 add      ecx, ecx
000000014048c815 sar      eax, 1
000000014048c817 sub      edi, ecx
000000014048c819 mov      edx, eax
000000014048c81b mov      rcx, r12
000000014048c81e call     0x14038e3bc
000000014048c823 mov      ecx, eax
000000014048c825 mov      eax, ebx
000000014048c827 imul     ecx
000000014048c829 mov      rcx, r12
000000014048c82c mov      ebx, edx
000000014048c82e sar      ebx, 2
000000014048c831 mov      eax, ebx
000000014048c833 shr      eax, 0x1f
000000014048c836 add      ebx, eax
000000014048c838 movsx    eax, byte ptr [r12 + 0x169aa2]
000000014048c841 cdq      
000000014048c842 sub      eax, edx
000000014048c844 sar      eax, 1
000000014048c846 mov      edx, eax
000000014048c848 call     0x14038b838
000000014048c84d test     al, al
000000014048c84f mov      dword ptr [rsp + 0x30], edi
000000014048c853 lea      rax, [rip + 0x16b546]
000000014048c85a mov      ecx, r15d
000000014048c85d mov      edx, r13d
000000014048c860 mov      dword ptr [rsp + 0x28], ebx
000000014048c864 lea      r8, [rip + 0x16ab25]
000000014048c86b cmovne   r8, rax
000000014048c86f lea      r9, [rip + 0x1ccc7a]
000000014048c876 mov      qword ptr [rsp + 0x20], r8
000000014048c87b sub      edx, r15d
000000014048c87e lea      r8, [rip + 0x1ccc8b]
000000014048c885 add      rcx, r14
000000014048c888 call     0x140044426
000000014048c88d add      r15d, eax
000000014048c890 lea      rdi, [rip + 0x1cca99]
000000014048c897 lea      rbx, [rip + 0x1cca72]
000000014048c89e cmp      r15d, r13d
000000014048c8a1 jae      0x14048c8ed
000000014048c8a3 mov      r9d, 0x1000
000000014048c8a9 mov      r8d, 0x11a58
000000014048c8af mov      edx, ebp
000000014048c8b1 mov      rcx, r12
000000014048c8b4 call     0x1404663c4
000000014048c8b9 mov      edx, r13d
000000014048c8bc mov      ecx, r15d
000000014048c8bf xor      ebp, ebp
000000014048c8c1 lea      r9, [rip + 0x1ccf18]
000000014048c8c8 test     eax, eax
000000014048c8ca mov      r8, rbx
000000014048c8cd cmovne   r8, rdi
000000014048c8d1 sub      edx, r15d
000000014048c8d4 mov      qword ptr [rsp + 0x20], r8
000000014048c8d9 add      rcx, r14
000000014048c8dc lea      r8, [rip + 0x1b661d]
000000014048c8e3 call     0x140044426
000000014048c8e8 add      r15d, eax
000000014048c8eb jmp      0x14048c8ef
000000014048c8ed xor      ebp, ebp
000000014048c8ef cmp      r15d, r13d
000000014048c8f2 jae      0x14048c9bd
000000014048c8f8 mov      al, byte ptr [r12 + 0x14496]
000000014048c900 test     al, al
000000014048c902 jne      0x14048c928
000000014048c904 mov      cl, byte ptr [r12 + 0x14494]
000000014048c90c test     cl, cl
000000014048c90e jne      0x14048c915
000000014048c910 mov      r8, rbx
000000014048c913 jmp      0x14048c933
000000014048c915 cmp      cl, 2
000000014048c918 lea      rdx, [rip + 0x1cca01]
000000014048c91f mov      r8, rdi
000000014048c922 cmove    r8, rdx
000000014048c926 jmp      0x14048c933
000000014048c928 lea      r8, [rip + 0x1cca11]
000000014048c92f cmp      al, 1
000000014048c931 je       0x14048c940
000000014048c933 cmp      al, 2
000000014048c935 lea      rbx, [rip + 0x1cca14]
000000014048c93c cmove    rbx, rdi
000000014048c940 mov      qword ptr [rsp + 0x28], r8
000000014048c945 lea      r9, [rip + 0x1cca14]
000000014048c94c mov      edx, r13d
000000014048c94f mov      ecx, r15d
000000014048c952 sub      edx, r15d
000000014048c955 mov      qword ptr [rsp + 0x20], rbx
000000014048c95a add      rcx, r14
000000014048c95d lea      r8, [rip + 0x1cca1c]
000000014048c964 call     0x140044426
000000014048c969 add      r15d, eax
000000014048c96c cmp      r15d, r13d
000000014048c96f jae      0x14048c9bd
000000014048c971 movzx    r8d, byte ptr [r12 + 0x169a98]
000000014048c97a mov      edx, r13d
000000014048c97d movzx    r9d, byte ptr [r12 + 0x169a96]
000000014048c986 sub      edx, r15d
000000014048c989 movzx    r10d, byte ptr [r12 + 0x169a95]
000000014048c992 mov      dword ptr [rsp + 0x30], r8d
000000014048c997 lea      r8, [rip + 0x1b47e2]
000000014048c99e mov      dword ptr [rsp + 0x28], r9d
000000014048c9a3 lea      r9, [rip + 0x1cce56]
000000014048c9aa mov      ecx, r15d
000000014048c9ad add      rcx, r14
000000014048c9b0 mov      dword ptr [rsp + 0x20], r10d
000000014048c9b5 call     0x140044426
000000014048c9ba add      r15d, eax
000000014048c9bd mov      rsi, qword ptr [rsp + 0x110]
000000014048c9c5 mov      edi, ebp
000000014048c9c7 cmp      byte ptr [rsi + 0x68], bpl
000000014048c9cb jbe      0x14048cdc3
000000014048c9d1 movsxd   rbp, dword ptr [rsp + 0x198]
000000014048c9d9 shl      rbp, 2
000000014048c9dd mov      qword ptr [rsp + 0x100], rbp
000000014048c9e5 mov      ebx, edi
000000014048c9e7 add      rbx, rbx
000000014048c9ea cmp      r15d, r13d
000000014048c9ed jae      0x14048ca3c
000000014048c9ef mov      eax, dword ptr [rsi + rbx*8 + 0x28]
000000014048c9f3 test     eax, eax
000000014048c9f5 jne      0x14048ca00
000000014048c9f7 lea      r8, [rip + 0x185fb2]
000000014048c9fe jmp      0x14048ca15
000000014048ca00 cmp      eax, 1
000000014048ca03 lea      rcx, [rip + 0x1cce16]
000000014048ca0a lea      r8, [rip + 0x1cce1f]
000000014048ca11 cmove    r8, rcx
000000014048ca15 mov      edx, r13d
000000014048ca18 mov      qword ptr [rsp + 0x20], r8
000000014048ca1d mov      ecx, r15d
000000014048ca20 lea      r9, [rip + 0x1cce19]
000000014048ca27 sub      edx, r15d
000000014048ca2a lea      r8, [rip + 0x1b64cf]
000000014048ca31 add      rcx, r14
000000014048ca34 call     0x140044426
000000014048ca39 add      r15d, eax
000000014048ca3c cmp      dword ptr [rsi + rbx*8 + 0x28], 2
000000014048ca41 lea      rax, [rsi + rbx*8]
000000014048ca45 jne      0x14048ca64
000000014048ca47 cmp      byte ptr [rax + 0x34], 0
000000014048ca4b jne      0x14048ca64
000000014048ca4d cmp      r15d, r13d
000000014048ca50 jae      0x14048cb05
000000014048ca56 and      dword ptr [rsp + 0x20], 0
000000014048ca5b lea      r8, [rip + 0x1ccdfe]
000000014048ca62 jmp      0x14048ca7e
000000014048ca64 cmp      r15d, r13d
000000014048ca67 jae      0x14048cb05
000000014048ca6d movzx    r8d, byte ptr [rax + 0x34]
000000014048ca72 mov      dword ptr [rsp + 0x20], r8d
000000014048ca77 lea      r8, [rip + 0x1b67e2]
000000014048ca7e mov      edx, r13d
000000014048ca81 mov      ecx, r15d
000000014048ca84 sub      edx, r15d
000000014048ca87 lea      r9, [rip + 0x1ccdc2]
000000014048ca8e add      rcx, r14
000000014048ca91 call     0x140044426
000000014048ca96 add      r15d, eax
000000014048ca99 cmp      r15d, r13d
000000014048ca9c jae      0x14048cb05
000000014048ca9e mov      edx, r13d
000000014048caa1 mov      ecx, r15d
000000014048caa4 sub      edx, r15d
000000014048caa7 mov      dword ptr [rsp + 0x28], 5
000000014048caaf add      rcx, r14
000000014048cab2 mov      dword ptr [rsp + 0x20], 0xfffffffa
000000014048caba lea      r9, [rip + 0x1ccdcf]
000000014048cac1 lea      r8, [rip + 0x1ccde8]
000000014048cac8 call     0x140044426
000000014048cacd add      r15d, eax
000000014048cad0 cmp      r15d, r13d
000000014048cad3 jae      0x14048cb05
000000014048cad5 and      qword ptr [rsp + 0x28], 0
000000014048cadb lea      r9, [rip + 0x1ccdde]
000000014048cae2 mov      edx, r13d
000000014048cae5 mov      ecx, r15d
000000014048cae8 sub      edx, r15d
000000014048caeb mov      dword ptr [rsp + 0x20], 0xfffffffe
000000014048caf3 add      rcx, r14
000000014048caf6 lea      r8, [rip + 0x1ccdb3]
000000014048cafd call     0x140044426
000000014048cb02 add      r15d, eax
000000014048cb05 mov      eax, edi
000000014048cb07 add      rax, rbp
000000014048cb0a shl      rax, 5
000000014048cb0e mov      esi, dword ptr [rax + r12 + 0x16a2c4]
000000014048cb16 mov      r10d, esi
000000014048cb19 mov      ebx, dword ptr [rax + r12 + 0x16a2c8]
000000014048cb21 neg      r10d
000000014048cb24 mov      r11d, dword ptr [rax + r12 + 0x16a2cc]
000000014048cb2c mov      r9d, ebx
000000014048cb2f mov      eax, dword ptr [rax + r12 + 0x16a2d0]
000000014048cb37 cmovs    r10d, esi
000000014048cb3b neg      r9d
000000014048cb3e mov      r8d, r11d
000000014048cb41 mov      ecx, eax
000000014048cb43 cmovs    r9d, ebx
000000014048cb47 neg      r8d
000000014048cb4a cmovs    r8d, r11d
000000014048cb4e neg      ecx
000000014048cb50 cmovs    ecx, eax
000000014048cb53 cmp      r15d, r13d
000000014048cb56 jae      0x14048cc47
000000014048cb5c and      ecx, 0x80000001
000000014048cb62 jge      0x14048cb6b
000000014048cb64 dec      ecx
000000014048cb66 or       ecx, 0xfffffffe
000000014048cb69 inc      ecx
000000014048cb6b cdq      
000000014048cb6c lea      ecx, [rcx + rcx*4]
000000014048cb6f sub      eax, edx
000000014048cb71 mov      dword ptr [rsp + 0xc4], ecx
000000014048cb78 sar      eax, 1
000000014048cb7a mov      ecx, 0x80000001
000000014048cb7f mov      dword ptr [rsp + 0xcc], eax
000000014048cb86 and      r8d, ecx
000000014048cb89 jge      0x14048cb95
000000014048cb8b dec      r8d
000000014048cb8e or       r8d, 0xfffffffe
000000014048cb92 inc      r8d
000000014048cb95 mov      eax, r11d
000000014048cb98 lea      ebp, [r8 + r8*4]
000000014048cb9c cdq      
000000014048cb9d sub      eax, edx
000000014048cb9f sar      eax, 1
000000014048cba1 mov      dword ptr [rsp + 0xe4], eax
000000014048cba8 and      r9d, ecx
000000014048cbab jge      0x14048cbb7
000000014048cbad dec      r9d
000000014048cbb0 or       r9d, 0xfffffffe
000000014048cbb4 inc      r9d
000000014048cbb7 mov      eax, ebx
000000014048cbb9 lea      r11d, [r9 + r9*4]
000000014048cbbd cdq      
000000014048cbbe sub      eax, edx
000000014048cbc0 sar      eax, 1
000000014048cbc2 mov      r9d, eax
000000014048cbc5 and      r10d, ecx
000000014048cbc8 jge      0x14048cbd4
000000014048cbca dec      r10d
000000014048cbcd or       r10d, 0xfffffffe
000000014048cbd1 inc      r10d
000000014048cbd4 lea      r8d, [r10 + r10*4]
000000014048cbd8 mov      ecx, r15d
000000014048cbdb mov      r10d, dword ptr [rsp + 0xc4]
000000014048cbe3 mov      eax, esi
000000014048cbe5 mov      dword ptr [rsp + 0x58], r10d
000000014048cbea cdq      
000000014048cbeb mov      r10d, dword ptr [rsp + 0xcc]
000000014048cbf3 sub      eax, edx
000000014048cbf5 mov      dword ptr [rsp + 0x50], r10d
000000014048cbfa mov      edx, r13d
000000014048cbfd mov      r10d, dword ptr [rsp + 0xe4]
000000014048cc05 sub      edx, r15d
000000014048cc08 mov      dword ptr [rsp + 0x48], ebp
000000014048cc0c add      rcx, r14
000000014048cc0f mov      dword ptr [rsp + 0x40], r10d
000000014048cc14 mov      dword ptr [rsp + 0x38], r11d
000000014048cc19 mov      dword ptr [rsp + 0x30], r9d
000000014048cc1e lea      r9, [rip + 0x1cccbb]
000000014048cc25 mov      dword ptr [rsp + 0x28], r8d
000000014048cc2a lea      r8, [rip + 0x1ccccf]
000000014048cc31 sar      eax, 1
000000014048cc33 mov      dword ptr [rsp + 0x20], eax
000000014048cc37 call     0x140044426
000000014048cc3c mov      rbp, qword ptr [rsp + 0x100]
000000014048cc44 add      r15d, eax
000000014048cc47 mov      ecx, edi
000000014048cc49 add      rcx, 0xaaf2
000000014048cc50 mov      eax, edi
000000014048cc52 add      rcx, rbp
000000014048cc55 shl      rcx, 5
000000014048cc59 mov      esi, dword ptr [rcx + r12 + 0x14494]
000000014048cc61 mov      r10d, esi
000000014048cc64 neg      r10d
000000014048cc67 cmovs    r10d, esi
000000014048cc6b add      rax, rbp
000000014048cc6e shl      rax, 5
000000014048cc72 mov      ebx, dword ptr [rax + r12 + 0x16a2d8]
000000014048cc7a mov      r9d, ebx
000000014048cc7d neg      r9d
000000014048cc80 mov      eax, edi
000000014048cc82 cmovs    r9d, ebx
000000014048cc86 add      rax, rbp
000000014048cc89 shl      rax, 5
000000014048cc8d mov      r11d, dword ptr [rax + r12 + 0x16a2dc]
000000014048cc95 mov      r8d, r11d
000000014048cc98 neg      r8d
000000014048cc9b mov      eax, edi
000000014048cc9d cmovs    r8d, r11d
000000014048cca1 add      rax, rbp
000000014048cca4 shl      rax, 5
000000014048cca8 mov      eax, dword ptr [rax + r12 + 0x16a2e0]
000000014048ccb0 mov      ecx, eax
000000014048ccb2 neg      ecx
000000014048ccb4 cmovs    ecx, eax
000000014048ccb7 cmp      r15d, r13d
000000014048ccba jae      0x14048cdab
000000014048ccc0 and      ecx, 0x80000001
000000014048ccc6 jge      0x14048cccf
000000014048ccc8 dec      ecx
000000014048ccca or       ecx, 0xfffffffe
000000014048cccd inc      ecx
000000014048cccf cdq      
000000014048ccd0 lea      ecx, [rcx + rcx*4]
000000014048ccd3 sub      eax, edx
000000014048ccd5 mov      dword ptr [rsp + 0xc4], ecx
000000014048ccdc sar      eax, 1
000000014048ccde mov      ecx, 0x80000001
000000014048cce3 mov      dword ptr [rsp + 0xcc], eax
000000014048ccea and      r8d, ecx
000000014048cced jge      0x14048ccf9
000000014048ccef dec      r8d
000000014048ccf2 or       r8d, 0xfffffffe
000000014048ccf6 inc      r8d
000000014048ccf9 mov      eax, r11d
000000014048ccfc lea      ebp, [r8 + r8*4]
000000014048cd00 cdq      
000000014048cd01 sub      eax, edx
000000014048cd03 sar      eax, 1
000000014048cd05 mov      dword ptr [rsp + 0xe4], eax
000000014048cd0c and      r9d, ecx
000000014048cd0f jge      0x14048cd1b
000000014048cd11 dec      r9d
000000014048cd14 or       r9d, 0xfffffffe
000000014048cd18 inc      r9d
000000014048cd1b mov      eax, ebx
000000014048cd1d lea      r11d, [r9 + r9*4]
000000014048cd21 cdq      
000000014048cd22 sub      eax, edx
000000014048cd24 sar      eax, 1
000000014048cd26 mov      r9d, eax
000000014048cd29 and      r10d, ecx
000000014048cd2c jge      0x14048cd38
000000014048cd2e dec      r10d
000000014048cd31 or       r10d, 0xfffffffe
000000014048cd35 inc      r10d
000000014048cd38 lea      r8d, [r10 + r10*4]
000000014048cd3c mov      ecx, r15d
000000014048cd3f mov      r10d, dword ptr [rsp + 0xc4]
000000014048cd47 mov      eax, esi
000000014048cd49 mov      dword ptr [rsp + 0x58], r10d
000000014048cd4e cdq      
000000014048cd4f mov      r10d, dword ptr [rsp + 0xcc]
000000014048cd57 sub      eax, edx
000000014048cd59 mov      dword ptr [rsp + 0x50], r10d
000000014048cd5e mov      edx, r13d
000000014048cd61 mov      r10d, dword ptr [rsp + 0xe4]
000000014048cd69 sub      edx, r15d
000000014048cd6c mov      dword ptr [rsp + 0x48], ebp
000000014048cd70 add      rcx, r14
000000014048cd73 mov      dword ptr [rsp + 0x40], r10d
000000014048cd78 mov      dword ptr [rsp + 0x38], r11d
000000014048cd7d mov      dword ptr [rsp + 0x30], r9d
000000014048cd82 lea      r9, [rip + 0x1ccba7]
000000014048cd89 mov      dword ptr [rsp + 0x28], r8d
000000014048cd8e lea      r8, [rip + 0x1ccb6b]
000000014048cd95 sar      eax, 1
000000014048cd97 mov      dword ptr [rsp + 0x20], eax
000000014048cd9b call     0x140044426
000000014048cda0 mov      rbp, qword ptr [rsp + 0x100]
000000014048cda8 add      r15d, eax
000000014048cdab mov      rsi, qword ptr [rsp + 0x110]
000000014048cdb3 inc      edi
000000014048cdb5 movzx    eax, byte ptr [rsi + 0x68]
000000014048cdb9 cmp      edi, eax
000000014048cdbb jb       0x14048c9e5
000000014048cdc1 xor      ebp, ebp
000000014048cdc3 lea      rdx, [rip + 0x177bb6]
000000014048cdca cmp      r15d, r13d
000000014048cdcd jae      0x14048ce1a
000000014048cdcf mov      rax, qword ptr [rsp + 0x118]
000000014048cdd7 lea      r8, [rip + 0x177bb2]
000000014048cdde mov      rcx, qword ptr [rsp + 0x120]
000000014048cde6 lea      r9, [rip + 0x1ccb63]
000000014048cded mov      al, byte ptr [rax + rcx + 0xb74]
000000014048cdf4 test     al, al
000000014048cdf6 mov      ecx, r15d
000000014048cdf9 cmovne   r8, rdx
000000014048cdfd mov      edx, r13d
000000014048ce00 mov      qword ptr [rsp + 0x20], r8
000000014048ce05 sub      edx, r15d
000000014048ce08 lea      r8, [rip + 0x1b60f1]
000000014048ce0f add      rcx, r14
000000014048ce12 call     0x140044426
000000014048ce17 add      r15d, eax
000000014048ce1a movsx    eax, byte ptr [r12 + 0x169b1f]
000000014048ce23 mov      ebx, 3
000000014048ce28 mov      r9d, eax
000000014048ce2b mov      r11d, eax
000000014048ce2e neg      r9d
000000014048ce31 test     al, al
000000014048ce33 cmovns   r9d, eax
000000014048ce37 movsx    eax, byte ptr [r12 + 0x169b20]
000000014048ce40 mov      ecx, eax
000000014048ce42 mov      r8d, eax
000000014048ce45 neg      ecx
000000014048ce47 test     al, al
000000014048ce49 cmovns   ecx, eax
000000014048ce4c cmp      r15d, r13d
000000014048ce4f jae      0x14048cedb
000000014048ce55 imul     r10d, ecx, 0x19
000000014048ce59 mov      eax, 0x51eb851f
000000014048ce5e imul     r9d, r9d, 0x19
000000014048ce62 imul     r10d
000000014048ce65 mov      eax, r8d
000000014048ce68 sar      edx, 5
000000014048ce6b mov      ecx, edx
000000014048ce6d shr      ecx, 0x1f
000000014048ce70 add      edx, ecx
000000014048ce72 imul     ecx, edx, 0x64
000000014048ce75 cdq      
000000014048ce76 and      edx, ebx
000000014048ce78 lea      r8d, [rdx + rax]
000000014048ce7c sub      r10d, ecx
000000014048ce7f mov      dword ptr [rsp + 0x38], r10d
000000014048ce84 mov      eax, 0x51eb851f
000000014048ce89 imul     r9d
000000014048ce8c sar      r8d, 2
000000014048ce90 mov      eax, r11d
000000014048ce93 sar      edx, 5
000000014048ce96 mov      ecx, edx
000000014048ce98 mov      dword ptr [rsp + 0x30], r8d
000000014048ce9d shr      ecx, 0x1f
000000014048cea0 lea      r8, [rip + 0x1ccae9]
000000014048cea7 add      edx, ecx
000000014048cea9 imul     ecx, edx, 0x64
000000014048ceac cdq      
000000014048cead and      edx, ebx
000000014048ceaf add      eax, edx
000000014048ceb1 mov      edx, r13d
000000014048ceb4 sar      eax, 2
000000014048ceb7 sub      edx, r15d
000000014048ceba sub      r9d, ecx
000000014048cebd mov      ecx, r15d
000000014048cec0 mov      dword ptr [rsp + 0x28], r9d
000000014048cec5 add      rcx, r14
000000014048cec8 lea      r9, [rip + 0x1ccaa1]
000000014048cecf mov      dword ptr [rsp + 0x20], eax
000000014048ced3 call     0x140044426
000000014048ced8 add      r15d, eax
000000014048cedb movsx    eax, byte ptr [r12 + 0x169b23]
000000014048cee4 movsx    ecx, byte ptr [r12 + 0x169b24]
000000014048ceed mov      r10d, eax
000000014048cef0 neg      r10d
000000014048cef3 mov      byte ptr [rsp + 0xed], al
000000014048cefa mov      byte ptr [rsp + 0xec], cl
000000014048cf01 mov      r8d, ecx
000000014048cf04 cmovs    r10d, eax
000000014048cf08 mov      dword ptr [rsp + 0xc4], r10d
000000014048cf10 test     cl, cl
000000014048cf12 jns      0x14048cf17
000000014048cf14 neg      r8d
000000014048cf17 mov      r11d, dword ptr [rsp + 0xe8]
000000014048cf1f mov      r9d, r11d
000000014048cf22 test     r11d, r11d
000000014048cf25 jns      0x14048cf2a
000000014048cf27 neg      r9d
000000014048cf2a cmp      r15d, r13d
000000014048cf2d jae      0x14048d04d
000000014048cf33 imul     ebp, r9d, 0x19
000000014048cf37 lea      rdi, [rip + 0x16a452]
000000014048cf3e mov      eax, 0x51eb851f
000000014048cf43 imul     ebp
000000014048cf45 mov      eax, r9d
000000014048cf48 sar      edx, 5
000000014048cf4b mov      ecx, edx
000000014048cf4d shr      ecx, 0x1f
000000014048cf50 add      edx, ecx
000000014048cf52 imul     ecx, edx, 0x64
000000014048cf55 cdq      
000000014048cf56 and      edx, ebx
000000014048cf58 lea      esi, [rdx + rax]
000000014048cf5b sub      ebp, ecx
000000014048cf5d mov      dword ptr [rsp + 0x78], ebp
000000014048cf61 lea      rax, [rip + 0x16ae38]
000000014048cf68 sar      esi, 2
000000014048cf6b mov      dword ptr [rsp + 0x70], esi
000000014048cf6f test     r11d, r11d
000000014048cf72 cmovs    rdi, rax
000000014048cf76 imul     ebx, r8d, 0x19
000000014048cf7a mov      qword ptr [rsp + 0x68], rdi
000000014048cf7f mov      eax, 0x51eb851f
000000014048cf84 imul     ebx
000000014048cf86 mov      eax, r8d
000000014048cf89 lea      r8, [rip + 0x16a400]
000000014048cf90 sar      edx, 5
000000014048cf93 mov      r9, r8
000000014048cf96 mov      ecx, edx
000000014048cf98 shr      ecx, 0x1f
000000014048cf9b add      edx, ecx
000000014048cf9d imul     ecx, edx, 0x64
000000014048cfa0 cdq      
000000014048cfa1 and      edx, 3
000000014048cfa4 lea      r11d, [rdx + rax]
000000014048cfa8 sub      ebx, ecx
000000014048cfaa mov      dword ptr [rsp + 0x60], ebx
000000014048cfae lea      rax, [rip + 0x16adeb]
000000014048cfb5 sar      r11d, 2
000000014048cfb9 cmp      byte ptr [rsp + 0xec], 0
000000014048cfc1 mov      dword ptr [rsp + 0x58], r11d
000000014048cfc6 cmovl    r9, rax
000000014048cfca imul     r10d, r10d, 0x19
000000014048cfce mov      qword ptr [rsp + 0x50], r9
000000014048cfd3 mov      eax, 0x51eb851f
000000014048cfd8 mov      dword ptr [rsp + 0x48], ebp
000000014048cfdc lea      r9, [rip + 0x1cc9cd]
000000014048cfe3 mov      dword ptr [rsp + 0x40], esi
000000014048cfe7 mov      qword ptr [rsp + 0x38], rdi
000000014048cfec imul     r10d
000000014048cfef mov      eax, dword ptr [rsp + 0xc4]
000000014048cff6 sar      edx, 5
000000014048cff9 mov      ecx, edx
000000014048cffb shr      ecx, 0x1f
000000014048cffe add      edx, ecx
000000014048d000 imul     ecx, edx, 0x64
000000014048d003 cdq      
000000014048d004 and      edx, 3
000000014048d007 add      eax, edx
000000014048d009 mov      edx, r13d
000000014048d00c sar      eax, 2
000000014048d00f sub      r10d, ecx
000000014048d012 lea      rcx, [rip + 0x16ad87]
000000014048d019 cmp      byte ptr [rsp + 0xed], 0
000000014048d021 mov      dword ptr [rsp + 0x30], r10d
000000014048d026 cmovl    r8, rcx
000000014048d02a mov      dword ptr [rsp + 0x28], eax
000000014048d02e mov      qword ptr [rsp + 0x20], r8
000000014048d033 sub      edx, r15d
000000014048d036 mov      ecx, r15d
000000014048d039 lea      r8, [rip + 0x1cc990]
000000014048d040 add      rcx, r14
000000014048d043 call     0x140044426
000000014048d048 add      r15d, eax
000000014048d04b xor      ebp, ebp
000000014048d04d mov      r9, qword ptr [r12 + 0x10]
000000014048d052 test     r9, r9
000000014048d055 je       0x14048d0f6
000000014048d05b cmp      r15d, r13d
000000014048d05e jae      0x14048d0f6
000000014048d064 movsx    r11d, byte ptr [r12 + 0x169aa4]
000000014048d06d mov      eax, 0x51eb851f
000000014048d072 imul     r8d, r11d, 0x19
000000014048d076 imul     r8d
000000014048d079 sar      edx, 5
000000014048d07c mov      eax, edx
000000014048d07e shr      eax, 0x1f
000000014048d081 add      edx, eax
000000014048d083 mov      eax, r11d
000000014048d086 imul     ecx, edx, 0x64
000000014048d089 cdq      
000000014048d08a sub      r8d, ecx
000000014048d08d mov      rcx, qword ptr [r9 + 0xb70]
000000014048d094 mov      r9d, r8d
000000014048d097 neg      r9d
000000014048d09a movzx    r10d, byte ptr [rcx + 2]
000000014048d09f mov      rcx, qword ptr [r12]
000000014048d0a3 shr      r10d, 1
000000014048d0a6 sub      r10d, 0x6e
000000014048d0aa mov      dword ptr [rsp + 0x38], r10d
000000014048d0af test     r11b, r11b
000000014048d0b2 cmovns   r9d, r8d
000000014048d0b6 movsx    r8d, byte ptr [rcx + 0xe051]
000000014048d0be and      edx, 3
000000014048d0c1 mov      dword ptr [rsp + 0x30], r9d
000000014048d0c6 add      eax, edx
000000014048d0c8 mov      ecx, r15d
000000014048d0cb sar      eax, 2
000000014048d0ce lea      r9, [rip + 0x1cc93b]
000000014048d0d5 mov      dword ptr [rsp + 0x28], eax
000000014048d0d9 mov      edx, r13d
000000014048d0dc mov      dword ptr [rsp + 0x20], r8d
000000014048d0e1 sub      edx, r15d
000000014048d0e4 lea      r8, [rip + 0x1cc945]
000000014048d0eb add      rcx, r14
000000014048d0ee call     0x140044426
000000014048d0f3 add      r15d, eax
000000014048d0f6 mov      edi, 0x1ff
000000014048d0fb mov      edx, 0xee0c
000000014048d100 mov      r8d, edi
000000014048d103 mov      rcx, r12
000000014048d106 call     0x140458630
000000014048d10b bt       eax, 8
000000014048d10f mov      ebx, eax
000000014048d111 jae      0x14048d119
000000014048d113 or       ebx, 0xfffffe00
000000014048d119 mov      r8d, edi
000000014048d11c mov      edx, 0xef0c
000000014048d121 mov      rcx, r12
000000014048d124 call     0x140458630
000000014048d129 bt       eax, 8
000000014048d12d mov      r8d, eax
000000014048d130 jae      0x14048d139
000000014048d132 or       r8d, 0xfffffe00
000000014048d139 mov      edi, 0x51eb851f
000000014048d13e cmp      r15d, r13d
000000014048d141 jae      0x14048d1f3
000000014048d147 mov      eax, edi
000000014048d149 test     r8d, r8d
000000014048d14c jns      0x14048d154
000000014048d14e imul     r10d, r8d, -0x19
000000014048d152 jmp      0x14048d158
000000014048d154 imul     r10d, r8d, 0x19
000000014048d158 imul     r10d
000000014048d15b sar      edx, 5
000000014048d15e mov      eax, edx
000000014048d160 shr      eax, 0x1f
000000014048d163 add      edx, eax
000000014048d165 imul     eax, edx, 0x64
000000014048d168 sub      r10d, eax
000000014048d16b mov      eax, edi
000000014048d16d test     ebx, ebx
000000014048d16f jns      0x14048d18a
000000014048d171 imul     r9d, ebx, -0x19
000000014048d175 imul     r9d
000000014048d178 sar      edx, 5
000000014048d17b mov      eax, edx
000000014048d17d shr      eax, 0x1f
000000014048d180 add      edx, eax
000000014048d182 imul     eax, edx, 0x64
000000014048d185 sub      r9d, eax
000000014048d188 jmp      0x14048d1a1
000000014048d18a imul     r9d, ebx, 0x19
000000014048d18e imul     r9d
000000014048d191 sar      edx, 5
000000014048d194 mov      ecx, edx
000000014048d196 shr      ecx, 0x1f
000000014048d199 add      edx, ecx
000000014048d19b imul     ecx, edx, 0x64
000000014048d19e sub      r9d, ecx
000000014048d1a1 mov      eax, r8d
000000014048d1a4 mov      dword ptr [rsp + 0x38], r10d
000000014048d1a9 cdq      
000000014048d1aa mov      ecx, 3
000000014048d1af and      edx, ecx
000000014048d1b1 lea      r8d, [rdx + rax]
000000014048d1b5 mov      eax, ebx
000000014048d1b7 cdq      
000000014048d1b8 sar      r8d, 2
000000014048d1bc and      edx, ecx
000000014048d1be mov      dword ptr [rsp + 0x30], r8d
000000014048d1c3 add      eax, edx
000000014048d1c5 mov      dword ptr [rsp + 0x28], r9d
000000014048d1ca mov      edx, r13d
000000014048d1cd sar      eax, 2
000000014048d1d0 mov      ecx, r15d
000000014048d1d3 lea      r9, [rip + 0x1b3c66]
000000014048d1da sub      edx, r15d
000000014048d1dd mov      dword ptr [rsp + 0x20], eax
000000014048d1e1 add      rcx, r14
000000014048d1e4 lea      r8, [rip + 0x1cc875]
000000014048d1eb call     0x140044426
000000014048d1f0 add      r15d, eax
000000014048d1f3 xor      edx, edx
000000014048d1f5 mov      rcx, r12
000000014048d1f8 call     0x1403879a8
000000014048d1fd movzx    eax, al
000000014048d200 xor      edx, edx
000000014048d202 movsx    ecx, byte ptr [r12 + rax*2 + 0x169bc3]
000000014048d20b imul     ebx, ecx, 0x19
000000014048d20e mov      rcx, r12
000000014048d211 call     0x1403879a8
000000014048d216 movzx    eax, al
000000014048d219 movsx    ecx, byte ptr [r12 + rax*2 + 0x169bc4]
000000014048d222 imul     r8d, ecx, 0x19
000000014048d226 mov      ecx, 0xae147ae1
000000014048d22b cmp      r15d, r13d
000000014048d22e jae      0x14048d30e
000000014048d234 mov      eax, edi
000000014048d236 imul     r8d
000000014048d239 mov      r11d, edx
000000014048d23c sar      r11d, 5
000000014048d240 mov      eax, r11d
000000014048d243 shr      eax, 0x1f
000000014048d246 add      r11d, eax
000000014048d249 imul     esi, r11d, 0x64
000000014048d24d test     r8d, r8d
000000014048d250 jns      0x14048d26c
000000014048d252 mov      eax, ecx
000000014048d254 sub      esi, r8d
000000014048d257 imul     r8d
000000014048d25a mov      r11d, edx
000000014048d25d sar      r11d, 5
000000014048d261 mov      eax, r11d
000000014048d264 shr      eax, 0x1f
000000014048d267 add      r11d, eax
000000014048d26a jmp      0x14048d273
000000014048d26c mov      eax, r8d
000000014048d26f sub      eax, esi
000000014048d271 mov      esi, eax
000000014048d273 mov      eax, edi
000000014048d275 imul     ebx
000000014048d277 sar      edx, 5
000000014048d27a mov      eax, edx
000000014048d27c shr      eax, 0x1f
000000014048d27f add      edx, eax
000000014048d281 imul     edi, edx, 0x64
000000014048d284 test     ebx, ebx
000000014048d286 jns      0x14048d28c
000000014048d288 sub      edi, ebx
000000014048d28a jmp      0x14048d292
000000014048d28c mov      eax, ebx
000000014048d28e sub      eax, edi
000000014048d290 mov      edi, eax
000000014048d292 mov      eax, ecx
000000014048d294 test     ebx, ebx
000000014048d296 js       0x14048d29d
000000014048d298 mov      eax, 0x51eb851f
000000014048d29d imul     ebx
000000014048d29f mov      dword ptr [rsp + 0x48], esi
000000014048d2a3 lea      rcx, [rip + 0x16aaf6]
000000014048d2aa mov      dword ptr [rsp + 0x40], r11d
000000014048d2af mov      r10d, edx
000000014048d2b2 sar      r10d, 5
000000014048d2b6 mov      edx, r13d
000000014048d2b9 mov      eax, r10d
000000014048d2bc shr      eax, 0x1f
000000014048d2bf add      r10d, eax
000000014048d2c2 lea      rax, [rip + 0x16a0c7]
000000014048d2c9 test     r8d, r8d
000000014048d2cc mov      r9, rax
000000014048d2cf mov      r8, rax
000000014048d2d2 cmovs    r9, rcx
000000014048d2d6 test     ebx, ebx
000000014048d2d8 mov      qword ptr [rsp + 0x38], r9
000000014048d2dd lea      r9, [rip + 0x1cc79c]
000000014048d2e4 cmovs    r8, rcx
000000014048d2e8 mov      dword ptr [rsp + 0x30], edi
000000014048d2ec mov      dword ptr [rsp + 0x28], r10d
000000014048d2f1 sub      edx, r15d
000000014048d2f4 mov      qword ptr [rsp + 0x20], r8
000000014048d2f9 lea      r8, [rip + 0x1cc7a0]
000000014048d300 mov      ecx, r15d
000000014048d303 add      rcx, r14
000000014048d306 call     0x140044426
000000014048d30b add      r15d, eax
000000014048d30e mov      dl, 1
000000014048d310 mov      rcx, r12
000000014048d313 call     0x1403879a8
000000014048d318 movzx    eax, al
000000014048d31b mov      dl, 1
000000014048d31d movsx    ecx, byte ptr [r12 + rax*8 + 0x169c03]
000000014048d326 imul     eax, ecx, 0x19
000000014048d329 mov      rcx, r12
000000014048d32c mov      dword ptr [rsp + 0xe8], eax
000000014048d333 call     0x1403879a8
000000014048d338 movzx    eax, al
000000014048d33b mov      dl, 1
000000014048d33d movsx    ecx, byte ptr [r12 + rax*8 + 0x169c04]
000000014048d346 imul     ebx, ecx, 0x19
000000014048d349 mov      rcx, r12
000000014048d34c mov      dword ptr [rsp + 0xcc], ebx
000000014048d353 call     0x1403879a8
000000014048d358 movzx    eax, al
000000014048d35b mov      dl, 1
000000014048d35d movsx    ecx, byte ptr [r12 + rax*8 + 0x169c05]
000000014048d366 imul     edi, ecx, 0x19
000000014048d369 mov      rcx, r12
000000014048d36c mov      dword ptr [rsp + 0xc4], edi
000000014048d373 call     0x1403879a8
000000014048d378 movzx    eax, al
000000014048d37b movsx    ecx, byte ptr [r12 + rax*8 + 0x169c06]
000000014048d384 imul     r8d, ecx, 0x19
000000014048d388 cmp      r15d, r13d
000000014048d38b jae      0x14048d562
000000014048d391 mov      r10d, 0x51eb851f
000000014048d397 xor      r9d, r9d
000000014048d39a mov      eax, r10d
000000014048d39d imul     r8d
000000014048d3a0 mov      ebp, edx
000000014048d3a2 sar      ebp, 5
000000014048d3a5 mov      eax, ebp
000000014048d3a7 shr      eax, 0x1f
000000014048d3aa add      ebp, eax
000000014048d3ac imul     ecx, ebp, 0x64
000000014048d3af test     r8d, r8d
000000014048d3b2 jns      0x14048d3d4
000000014048d3b4 sub      ecx, r8d
000000014048d3b7 mov      eax, 0xae147ae1
000000014048d3bc imul     r8d
000000014048d3bf mov      dword ptr [rsp + 0xc0], ecx
000000014048d3c6 mov      ebp, edx
000000014048d3c8 sar      ebp, 5
000000014048d3cb mov      eax, ebp
000000014048d3cd shr      eax, 0x1f
000000014048d3d0 add      ebp, eax
000000014048d3d2 jmp      0x14048d3e0
000000014048d3d4 mov      eax, r8d
000000014048d3d7 sub      eax, ecx
000000014048d3d9 mov      dword ptr [rsp + 0xc0], eax
000000014048d3e0 mov      eax, r10d
000000014048d3e3 imul     edi
000000014048d3e5 sar      edx, 5
000000014048d3e8 mov      eax, edx
000000014048d3ea shr      eax, 0x1f
000000014048d3ed add      edx, eax
000000014048d3ef imul     ecx, edx, 0x64
000000014048d3f2 test     edi, edi
000000014048d3f4 jns      0x14048d401
000000014048d3f6 sub      ecx, edi
000000014048d3f8 mov      dword ptr [rsp + 0xbc], ecx
000000014048d3ff jmp      0x14048d40c
000000014048d401 mov      eax, edi
000000014048d403 sub      eax, ecx
000000014048d405 mov      dword ptr [rsp + 0xbc], eax
000000014048d40c mov      eax, 0xae147ae1
000000014048d411 test     edi, edi
000000014048d413 js       0x14048d418
000000014048d415 mov      eax, r10d
000000014048d418 imul     edi
000000014048d41a mov      esi, edx
000000014048d41c sar      esi, 5
000000014048d41f mov      eax, esi
000000014048d421 shr      eax, 0x1f
000000014048d424 add      esi, eax
000000014048d426 mov      eax, r10d
000000014048d429 imul     ebx
000000014048d42b sar      edx, 5
000000014048d42e mov      eax, edx
000000014048d430 shr      eax, 0x1f
000000014048d433 add      edx, eax
000000014048d435 test     ebx, ebx
000000014048d437 jns      0x14048d440
000000014048d439 imul     ecx, edx, 0x64
000000014048d43c sub      ecx, ebx
000000014048d43e jmp      0x14048d447
000000014048d440 imul     eax, edx, 0x64
000000014048d443 mov      ecx, ebx
000000014048d445 sub      ecx, eax
000000014048d447 mov      dword ptr [rsp + 0xb8], ecx
000000014048d44e mov      eax, 0xae147ae1
000000014048d453 test     ebx, ebx
000000014048d455 js       0x14048d45a
000000014048d457 mov      eax, r10d
000000014048d45a mov      ecx, dword ptr [rsp + 0xe8]
000000014048d461 imul     ebx
000000014048d463 mov      edi, edx
000000014048d465 sar      edi, 5
000000014048d468 mov      eax, edi
000000014048d46a shr      eax, 0x1f
000000014048d46d add      edi, eax
000000014048d46f mov      eax, r10d
000000014048d472 imul     ecx
000000014048d474 sar      edx, 5
000000014048d477 mov      eax, edx
000000014048d479 shr      eax, 0x1f
000000014048d47c add      edx, eax
000000014048d47e test     ecx, ecx
000000014048d480 jns      0x14048d489
000000014048d482 imul     edx, edx, 0x64
000000014048d485 sub      edx, ecx
000000014048d487 jmp      0x14048d490
000000014048d489 imul     eax, edx, 0x64
000000014048d48c mov      edx, ecx
000000014048d48e sub      edx, eax
000000014048d490 mov      dword ptr [rsp + 0xb4], edx
000000014048d497 mov      eax, 0xae147ae1
000000014048d49c test     ecx, ecx
000000014048d49e js       0x14048d4a3
000000014048d4a0 mov      eax, r10d
000000014048d4a3 imul     ecx
000000014048d4a5 mov      ebx, edx
000000014048d4a7 lea      rdx, [rip + 0x16a8f2]
000000014048d4ae sar      ebx, 5
000000014048d4b1 mov      eax, ebx
000000014048d4b3 shr      eax, 0x1f
000000014048d4b6 add      ebx, eax
000000014048d4b8 lea      rax, [rip + 0x169ed1]
000000014048d4bf test     r8d, r8d
000000014048d4c2 mov      r11, rax
000000014048d4c5 mov      r10, rax
000000014048d4c8 mov      r8, rax
000000014048d4cb cmovs    r11, rdx
000000014048d4cf cmp      dword ptr [rsp + 0xc4], r9d
000000014048d4d7 mov      r9, rax
000000014048d4da mov      eax, dword ptr [rsp + 0xc0]
000000014048d4e1 mov      dword ptr [rsp + 0x78], eax
000000014048d4e5 cmovl    r10, rdx
000000014048d4e9 mov      eax, dword ptr [rsp + 0xbc]
000000014048d4f0 cmp      dword ptr [rsp + 0xcc], 0
000000014048d4f8 mov      dword ptr [rsp + 0x70], ebp
000000014048d4fc mov      qword ptr [rsp + 0x68], r11
000000014048d501 cmovl    r9, rdx
000000014048d505 mov      dword ptr [rsp + 0x60], eax
000000014048d509 test     ecx, ecx
000000014048d50b mov      eax, dword ptr [rsp + 0xb8]
000000014048d512 mov      dword ptr [rsp + 0x58], esi
000000014048d516 cmovs    r8, rdx
000000014048d51a mov      qword ptr [rsp + 0x50], r10
000000014048d51f mov      edx, r13d
000000014048d522 mov      dword ptr [rsp + 0x48], eax
000000014048d526 sub      edx, r15d
000000014048d529 mov      eax, dword ptr [rsp + 0xb4]
000000014048d530 mov      dword ptr [rsp + 0x40], edi
000000014048d534 mov      qword ptr [rsp + 0x38], r9
000000014048d539 lea      r9, [rip + 0x1cc580]
000000014048d540 mov      dword ptr [rsp + 0x30], eax
000000014048d544 mov      dword ptr [rsp + 0x28], ebx
000000014048d548 mov      qword ptr [rsp + 0x20], r8
000000014048d54d lea      r8, [rip + 0x1cc58c]
000000014048d554 mov      ecx, r15d
000000014048d557 add      rcx, r14
000000014048d55a call     0x140044426
000000014048d55f add      r15d, eax
000000014048d562 mov      dl, 1
000000014048d564 mov      rcx, r12
000000014048d567 call     0x1403879a8
000000014048d56c movzx    eax, al
000000014048d56f mov      dl, 1
000000014048d571 movsx    ecx, byte ptr [r12 + rax*8 + 0x169c07]
000000014048d57a imul     eax, ecx, 0x19
000000014048d57d mov      rcx, r12
000000014048d580 mov      dword ptr [rsp + 0xe8], eax
000000014048d587 call     0x1403879a8
000000014048d58c movzx    eax, al
000000014048d58f mov      dl, 1
000000014048d591 movsx    ecx, byte ptr [r12 + rax*8 + 0x169c08]
000000014048d59a imul     ebx, ecx, 0x19
000000014048d59d mov      rcx, r12
000000014048d5a0 mov      dword ptr [rsp + 0xcc], ebx
000000014048d5a7 call     0x1403879a8
000000014048d5ac movzx    eax, al
000000014048d5af mov      dl, 1
000000014048d5b1 movsx    ecx, byte ptr [r12 + rax*8 + 0x169c09]
000000014048d5ba imul     edi, ecx, 0x19
000000014048d5bd mov      rcx, r12
000000014048d5c0 mov      dword ptr [rsp + 0xc4], edi
000000014048d5c7 call     0x1403879a8
000000014048d5cc movzx    eax, al
000000014048d5cf movsx    ecx, byte ptr [r12 + rax*8 + 0x169c0a]
000000014048d5d8 imul     r9d, ecx, 0x19
000000014048d5dc cmp      r15d, r13d
000000014048d5df jae      0x14048d7b9
000000014048d5e5 mov      r8d, 0x51eb851f
000000014048d5eb xor      r10d, r10d
000000014048d5ee mov      eax, r8d
000000014048d5f1 mov      r11d, 0xae147ae1
000000014048d5f7 imul     r9d
000000014048d5fa mov      ebp, edx
000000014048d5fc sar      ebp, 5
000000014048d5ff mov      eax, ebp
000000014048d601 shr      eax, 0x1f
000000014048d604 add      ebp, eax
000000014048d606 imul     ecx, ebp, 0x64
000000014048d609 test     r9d, r9d
000000014048d60c jns      0x14048d62c
000000014048d60e sub      ecx, r9d
000000014048d611 mov      eax, r11d
000000014048d614 imul     r9d
000000014048d617 mov      dword ptr [rsp + 0xc0], ecx
000000014048d61e mov      ebp, edx
000000014048d620 sar      ebp, 5
000000014048d623 mov      eax, ebp
000000014048d625 shr      eax, 0x1f
000000014048d628 add      ebp, eax
000000014048d62a jmp      0x14048d638
000000014048d62c mov      eax, r9d
000000014048d62f sub      eax, ecx
000000014048d631 mov      dword ptr [rsp + 0xc0], eax
000000014048d638 mov      eax, r8d
000000014048d63b imul     edi
000000014048d63d sar      edx, 5
000000014048d640 mov      eax, edx
000000014048d642 shr      eax, 0x1f
000000014048d645 add      edx, eax
000000014048d647 imul     ecx, edx, 0x64
000000014048d64a test     edi, edi
000000014048d64c jns      0x14048d659
000000014048d64e sub      ecx, edi
000000014048d650 mov      dword ptr [rsp + 0xbc], ecx
000000014048d657 jmp      0x14048d664
000000014048d659 mov      eax, edi
000000014048d65b sub      eax, ecx
000000014048d65d mov      dword ptr [rsp + 0xbc], eax
000000014048d664 mov      eax, r11d
000000014048d667 test     edi, edi
000000014048d669 js       0x14048d66e
000000014048d66b mov      eax, r8d
000000014048d66e imul     edi
000000014048d670 mov      esi, edx
000000014048d672 sar      esi, 5
000000014048d675 mov      eax, esi
000000014048d677 shr      eax, 0x1f
000000014048d67a add      esi, eax
000000014048d67c mov      eax, r8d
000000014048d67f imul     ebx
000000014048d681 sar      edx, 5
000000014048d684 mov      eax, edx
000000014048d686 shr      eax, 0x1f
000000014048d689 add      edx, eax
000000014048d68b test     ebx, ebx
000000014048d68d jns      0x14048d696
000000014048d68f imul     ecx, edx, 0x64
000000014048d692 sub      ecx, ebx
000000014048d694 jmp      0x14048d69d
000000014048d696 imul     eax, edx, 0x64
000000014048d699 mov      ecx, ebx
000000014048d69b sub      ecx, eax
000000014048d69d mov      dword ptr [rsp + 0xb8], ecx
000000014048d6a4 mov      eax, r11d
000000014048d6a7 test     ebx, ebx
000000014048d6a9 js       0x14048d6ae
000000014048d6ab mov      eax, r8d
000000014048d6ae mov      ecx, dword ptr [rsp + 0xe8]
000000014048d6b5 imul     ebx
000000014048d6b7 mov      edi, edx
000000014048d6b9 sar      edi, 5
000000014048d6bc mov      eax, edi
000000014048d6be shr      eax, 0x1f
000000014048d6c1 add      edi, eax
000000014048d6c3 mov      eax, r8d
000000014048d6c6 imul     ecx
000000014048d6c8 sar      edx, 5
000000014048d6cb mov      eax, edx
000000014048d6cd shr      eax, 0x1f
000000014048d6d0 add      edx, eax
000000014048d6d2 test     ecx, ecx
000000014048d6d4 jns      0x14048d6dd
000000014048d6d6 imul     edx, edx, 0x64
000000014048d6d9 sub      edx, ecx
000000014048d6db jmp      0x14048d6e4
000000014048d6dd imul     eax, edx, 0x64
000000014048d6e0 mov      edx, ecx
000000014048d6e2 sub      edx, eax
000000014048d6e4 mov      dword ptr [rsp + 0xb4], edx
000000014048d6eb mov      eax, r11d
000000014048d6ee test     ecx, ecx
000000014048d6f0 js       0x14048d6f5
000000014048d6f2 mov      eax, r8d
000000014048d6f5 imul     ecx
000000014048d6f7 mov      r8d, edx
000000014048d6fa lea      rdx, [rip + 0x16a69f]
000000014048d701 sar      r8d, 5
000000014048d705 mov      eax, r8d
000000014048d708 shr      eax, 0x1f
000000014048d70b add      r8d, eax
000000014048d70e lea      rax, [rip + 0x169c7b]
000000014048d715 test     r9d, r9d
000000014048d718 mov      rbx, rax
000000014048d71b mov      r11, rax
000000014048d71e mov      r9, rax
000000014048d721 cmovs    rbx, rdx
000000014048d725 cmp      dword ptr [rsp + 0xc4], r10d
000000014048d72d mov      r10, rax
000000014048d730 mov      eax, dword ptr [rsp + 0xc0]
000000014048d737 mov      dword ptr [rsp + 0x78], eax
000000014048d73b cmovl    r11, rdx
000000014048d73f mov      eax, dword ptr [rsp + 0xbc]
000000014048d746 cmp      dword ptr [rsp + 0xcc], 0
000000014048d74e mov      dword ptr [rsp + 0x70], ebp
000000014048d752 mov      qword ptr [rsp + 0x68], rbx
000000014048d757 cmovl    r10, rdx
000000014048d75b mov      dword ptr [rsp + 0x60], eax
000000014048d75f test     ecx, ecx
000000014048d761 mov      eax, dword ptr [rsp + 0xb8]
000000014048d768 mov      dword ptr [rsp + 0x58], esi
000000014048d76c cmovs    r9, rdx
000000014048d770 mov      qword ptr [rsp + 0x50], r11
000000014048d775 mov      edx, r13d
000000014048d778 mov      dword ptr [rsp + 0x48], eax
000000014048d77c sub      edx, r15d
000000014048d77f mov      eax, dword ptr [rsp + 0xb4]
000000014048d786 mov      dword ptr [rsp + 0x40], edi
000000014048d78a mov      qword ptr [rsp + 0x38], r10
000000014048d78f mov      dword ptr [rsp + 0x30], eax
000000014048d793 mov      dword ptr [rsp + 0x28], r8d
000000014048d798 lea      r8, [rip + 0x1cc341]
000000014048d79f mov      qword ptr [rsp + 0x20], r9
000000014048d7a4 lea      r9, [rip + 0x1cc375]
000000014048d7ab mov      ecx, r15d
000000014048d7ae add      rcx, r14
000000014048d7b1 call     0x140044426
000000014048d7b6 add      r15d, eax
000000014048d7b9 mov      dl, 2
000000014048d7bb mov      rcx, r12
000000014048d7be call     0x1403879a8
000000014048d7c3 movzx    eax, al
000000014048d7c6 mov      dl, 2
000000014048d7c8 lea      rcx, [rax + rax*2]
000000014048d7cc movsx    eax, byte ptr [r12 + rcx*4 + 0x169d03]
000000014048d7d5 imul     ecx, eax, 0x19
000000014048d7d8 mov      dword ptr [rsp + 0xc0], ecx
000000014048d7df mov      rcx, r12
000000014048d7e2 call     0x1403879a8
000000014048d7e7 movzx    eax, al
000000014048d7ea mov      dl, 2
000000014048d7ec lea      rcx, [rax + rax*2]
000000014048d7f0 movsx    eax, byte ptr [r12 + rcx*4 + 0x169d04]
000000014048d7f9 mov      rcx, r12
000000014048d7fc imul     esi, eax, 0x19
000000014048d7ff mov      dword ptr [rsp + 0xe4], esi
000000014048d806 call     0x1403879a8
000000014048d80b movzx    eax, al
000000014048d80e mov      dl, 2
000000014048d810 lea      rcx, [rax + rax*2]
000000014048d814 movsx    eax, byte ptr [r12 + rcx*4 + 0x169d05]
000000014048d81d mov      rcx, r12
000000014048d820 imul     edi, eax, 0x19
000000014048d823 mov      dword ptr [rsp + 0xcc], edi
000000014048d82a call     0x1403879a8
000000014048d82f movzx    eax, al
000000014048d832 mov      dl, 2
000000014048d834 lea      rcx, [rax + rax*2]
000000014048d838 movsx    eax, byte ptr [r12 + rcx*4 + 0x169d06]
000000014048d841 mov      rcx, r12
000000014048d844 imul     ebx, eax, 0x19
000000014048d847 mov      dword ptr [rsp + 0xc4], ebx
000000014048d84e call     0x1403879a8
000000014048d853 movzx    eax, al
000000014048d856 mov      dl, 2
000000014048d858 lea      rcx, [rax + rax*2]
000000014048d85c movsx    eax, byte ptr [r12 + rcx*4 + 0x169d07]
000000014048d865 mov      rcx, r12
000000014048d868 imul     ebp, eax, 0x19
000000014048d86b mov      dword ptr [rsp + 0xe8], ebp
000000014048d872 call     0x1403879a8
000000014048d877 movzx    eax, al
000000014048d87a add      rax, 0x1c75f
000000014048d880 lea      rax, [rax + rax*2]
000000014048d884 movsx    ecx, byte ptr [r12 + rax*4 + 0x14494]
000000014048d88d imul     r9d, ecx, 0x19
000000014048d891 cmp      r15d, r13d
000000014048d894 jae      0x14048db90
000000014048d89a mov      r11d, 0x51eb851f
000000014048d8a0 xor      r10d, r10d
000000014048d8a3 mov      eax, r11d
000000014048d8a6 mov      r8d, 0xae147ae1
000000014048d8ac imul     r9d
000000014048d8af mov      ecx, edx
000000014048d8b1 sar      ecx, 5
000000014048d8b4 mov      eax, ecx
000000014048d8b6 shr      eax, 0x1f
000000014048d8b9 add      ecx, eax
000000014048d8bb mov      dword ptr [rsp + 0xb8], ecx
000000014048d8c2 imul     ecx, ecx, 0x64
000000014048d8c5 test     r9d, r9d
000000014048d8c8 jns      0x14048d8ef
000000014048d8ca sub      ecx, r9d
000000014048d8cd mov      eax, r8d
000000014048d8d0 imul     r9d
000000014048d8d3 mov      dword ptr [rsp + 0xbc], ecx
000000014048d8da mov      ecx, edx
000000014048d8dc sar      ecx, 5
000000014048d8df mov      eax, ecx
000000014048d8e1 shr      eax, 0x1f
000000014048d8e4 add      ecx, eax
000000014048d8e6 mov      dword ptr [rsp + 0xb8], ecx
000000014048d8ed jmp      0x14048d8fb
000000014048d8ef mov      eax, r9d
000000014048d8f2 sub      eax, ecx
000000014048d8f4 mov      dword ptr [rsp + 0xbc], eax
000000014048d8fb mov      eax, r11d
000000014048d8fe imul     ebp
000000014048d900 sar      edx, 5
000000014048d903 mov      eax, edx
000000014048d905 shr      eax, 0x1f
000000014048d908 add      edx, eax
000000014048d90a imul     ecx, edx, 0x64
000000014048d90d test     ebp, ebp
000000014048d90f jns      0x14048d91c
000000014048d911 sub      ecx, ebp
000000014048d913 mov      dword ptr [rsp + 0xb4], ecx
000000014048d91a jmp      0x14048d927
000000014048d91c mov      eax, ebp
000000014048d91e sub      eax, ecx
000000014048d920 mov      dword ptr [rsp + 0xb4], eax
000000014048d927 mov      eax, r8d
000000014048d92a test     ebp, ebp
000000014048d92c js       0x14048d931
000000014048d92e mov      eax, r11d
000000014048d931 imul     ebp
000000014048d933 mov      ecx, edx
000000014048d935 sar      ecx, 5
000000014048d938 mov      eax, ecx
000000014048d93a shr      eax, 0x1f
000000014048d93d add      ecx, eax
000000014048d93f mov      eax, r11d
000000014048d942 imul     ebx
000000014048d944 mov      dword ptr [rsp + 0xdc], ecx
000000014048d94b sar      edx, 5
000000014048d94e mov      eax, edx
000000014048d950 shr      eax, 0x1f
000000014048d953 add      edx, eax
000000014048d955 test     ebx, ebx
000000014048d957 jns      0x14048d960
000000014048d959 imul     ecx, edx, 0x64
000000014048d95c sub      ecx, ebx
000000014048d95e jmp      0x14048d967
000000014048d960 imul     eax, edx, 0x64
000000014048d963 mov      ecx, ebx
000000014048d965 sub      ecx, eax
000000014048d967 mov      dword ptr [rsp + 0xd8], ecx
000000014048d96e mov      eax, r8d
000000014048d971 test     ebx, ebx
000000014048d973 js       0x14048d978
000000014048d975 mov      eax, r11d
000000014048d978 imul     ebx
000000014048d97a mov      ecx, edx
000000014048d97c sar      ecx, 5
000000014048d97f mov      eax, ecx
000000014048d981 shr      eax, 0x1f
000000014048d984 add      ecx, eax
000000014048d986 mov      eax, r11d
000000014048d989 imul     edi
000000014048d98b mov      dword ptr [rsp + 0xd4], ecx
000000014048d992 sar      edx, 5
000000014048d995 mov      eax, edx
000000014048d997 shr      eax, 0x1f
000000014048d99a add      edx, eax
000000014048d99c test     edi, edi
000000014048d99e jns      0x14048d9a7
000000014048d9a0 imul     ecx, edx, 0x64
000000014048d9a3 sub      ecx, edi
000000014048d9a5 jmp      0x14048d9ae
000000014048d9a7 imul     eax, edx, 0x64
000000014048d9aa mov      ecx, edi
000000014048d9ac sub      ecx, eax
000000014048d9ae mov      dword ptr [rsp + 0xd0], ecx
000000014048d9b5 mov      eax, r8d
000000014048d9b8 test     edi, edi
000000014048d9ba js       0x14048d9bf
000000014048d9bc mov      eax, r11d
000000014048d9bf imul     edi
000000014048d9c1 mov      ecx, edx
000000014048d9c3 sar      ecx, 5
000000014048d9c6 mov      eax, ecx
000000014048d9c8 shr      eax, 0x1f
000000014048d9cb add      ecx, eax
000000014048d9cd mov      eax, r11d
000000014048d9d0 imul     esi
000000014048d9d2 mov      dword ptr [rsp + 0xc8], ecx
000000014048d9d9 sar      edx, 5
000000014048d9dc mov      eax, edx
000000014048d9de shr      eax, 0x1f
000000014048d9e1 add      edx, eax
000000014048d9e3 test     esi, esi
000000014048d9e5 jns      0x14048d9ee
000000014048d9e7 imul     ecx, edx, 0x64
000000014048d9ea sub      ecx, esi
000000014048d9ec jmp      0x14048d9f5
000000014048d9ee imul     eax, edx, 0x64
000000014048d9f1 mov      ecx, esi
000000014048d9f3 sub      ecx, eax
000000014048d9f5 mov      dword ptr [rsp + 0xb0], ecx
000000014048d9fc mov      eax, r8d
000000014048d9ff test     esi, esi
000000014048da01 js       0x14048da06
000000014048da03 mov      eax, r11d
000000014048da06 mov      r8d, dword ptr [rsp + 0xc0]
000000014048da0e imul     esi
000000014048da10 mov      ebp, edx
000000014048da12 sar      ebp, 5
000000014048da15 mov      eax, ebp
000000014048da17 shr      eax, 0x1f
000000014048da1a add      ebp, eax
000000014048da1c mov      eax, r11d
000000014048da1f imul     r8d
000000014048da22 sar      edx, 5
000000014048da25 mov      eax, edx
000000014048da27 shr      eax, 0x1f
000000014048da2a add      edx, eax
000000014048da2c test     r8d, r8d
000000014048da2f jns      0x14048da39
000000014048da31 imul     ecx, edx, 0x64
000000014048da34 sub      ecx, r8d
000000014048da37 jmp      0x14048da41
000000014048da39 imul     eax, edx, 0x64
000000014048da3c mov      ecx, r8d
000000014048da3f sub      ecx, eax
000000014048da41 mov      dword ptr [rsp + 0xe0], ecx
000000014048da48 mov      eax, 0xae147ae1
000000014048da4d test     r8d, r8d
000000014048da50 js       0x14048da55
000000014048da52 mov      eax, r11d
000000014048da55 mov      ecx, dword ptr [rsp + 0xc0]
000000014048da5c imul     r8d
000000014048da5f mov      esi, edx
000000014048da61 lea      rdx, [rip + 0x16a338]
000000014048da68 sar      esi, 5
000000014048da6b mov      eax, esi
000000014048da6d shr      eax, 0x1f
000000014048da70 add      esi, eax
000000014048da72 lea      rax, [rip + 0x169917]
000000014048da79 mov      rdi, rax
000000014048da7c mov      rbx, rax
000000014048da7f mov      r11, rax
000000014048da82 mov      r8, rax
000000014048da85 test     r9d, r9d
000000014048da88 mov      r9, rax
000000014048da8b cmovs    rdi, rdx
000000014048da8f cmp      dword ptr [rsp + 0xe8], r10d
000000014048da97 cmovl    rbx, rdx
000000014048da9b cmp      dword ptr [rsp + 0xc4], r10d
000000014048daa3 mov      r10, rax
000000014048daa6 mov      eax, dword ptr [rsp + 0xbc]
000000014048daad mov      dword ptr [rsp + 0xa8], eax
000000014048dab4 cmovl    r11, rdx
000000014048dab8 mov      eax, dword ptr [rsp + 0xb8]
000000014048dabf cmp      dword ptr [rsp + 0xcc], 0
000000014048dac7 mov      dword ptr [rsp + 0xa0], eax
000000014048dace mov      eax, dword ptr [rsp + 0xb4]
000000014048dad5 cmovl    r10, rdx
000000014048dad9 cmp      dword ptr [rsp + 0xe4], 0
000000014048dae1 mov      qword ptr [rsp + 0x98], rdi
000000014048dae9 mov      dword ptr [rsp + 0x90], eax
000000014048daf0 cmovl    r9, rdx
000000014048daf4 mov      eax, dword ptr [rsp + 0xdc]
000000014048dafb test     ecx, ecx
000000014048dafd mov      dword ptr [rsp + 0x88], eax
000000014048db04 mov      eax, dword ptr [rsp + 0xd8]
000000014048db0b cmovs    r8, rdx
000000014048db0f mov      qword ptr [rsp + 0x80], rbx
000000014048db17 mov      edx, r13d
000000014048db1a mov      dword ptr [rsp + 0x78], eax
000000014048db1e sub      edx, r15d
000000014048db21 mov      eax, dword ptr [rsp + 0xd4]
000000014048db28 mov      dword ptr [rsp + 0x70], eax
000000014048db2c mov      eax, dword ptr [rsp + 0xd0]
000000014048db33 mov      qword ptr [rsp + 0x68], r11
000000014048db38 mov      dword ptr [rsp + 0x60], eax
000000014048db3c mov      eax, dword ptr [rsp + 0xc8]
000000014048db43 mov      dword ptr [rsp + 0x58], eax
000000014048db47 mov      eax, dword ptr [rsp + 0xb0]
000000014048db4e mov      qword ptr [rsp + 0x50], r10
000000014048db53 mov      dword ptr [rsp + 0x48], eax
000000014048db57 mov      eax, dword ptr [rsp + 0xe0]
000000014048db5e mov      dword ptr [rsp + 0x40], ebp
000000014048db62 mov      qword ptr [rsp + 0x38], r9
000000014048db67 lea      r9, [rip + 0x1cbfd2]
000000014048db6e mov      dword ptr [rsp + 0x30], eax
000000014048db72 mov      dword ptr [rsp + 0x28], esi
000000014048db76 mov      qword ptr [rsp + 0x20], r8
000000014048db7b lea      r8, [rip + 0x1cbfde]
000000014048db82 mov      ecx, r15d
000000014048db85 add      rcx, r14
000000014048db88 call     0x140044426
000000014048db8d add      r15d, eax
000000014048db90 mov      dl, 2
000000014048db92 mov      rcx, r12
000000014048db95 call     0x1403879a8
000000014048db9a movzx    eax, al
000000014048db9d mov      dl, 2
000000014048db9f lea      rcx, [rax + rax*2]
000000014048dba3 movsx    eax, byte ptr [r12 + rcx*4 + 0x169d09]
000000014048dbac imul     ecx, eax, 0x19
000000014048dbaf mov      dword ptr [rsp + 0xe0], ecx
000000014048dbb6 mov      rcx, r12
000000014048dbb9 call     0x1403879a8
000000014048dbbe movzx    eax, al
000000014048dbc1 mov      dl, 2
000000014048dbc3 lea      rcx, [rax + rax*2]
000000014048dbc7 movsx    eax, byte ptr [r12 + rcx*4 + 0x169d0a]
000000014048dbd0 mov      rcx, r12
000000014048dbd3 imul     esi, eax, 0x19
000000014048dbd6 mov      dword ptr [rsp + 0xe4], esi
000000014048dbdd call     0x1403879a8
000000014048dbe2 movzx    eax, al
000000014048dbe5 mov      dl, 2
000000014048dbe7 lea      rcx, [rax + rax*2]
000000014048dbeb movsx    eax, byte ptr [r12 + rcx*4 + 0x169d0b]
000000014048dbf4 mov      rcx, r12
000000014048dbf7 imul     edi, eax, 0x19
000000014048dbfa mov      dword ptr [rsp + 0xcc], edi
000000014048dc01 call     0x1403879a8
000000014048dc06 movzx    eax, al
000000014048dc09 mov      dl, 2
000000014048dc0b lea      rcx, [rax + rax*2]
000000014048dc0f movsx    eax, byte ptr [r12 + rcx*4 + 0x169d0c]
000000014048dc18 mov      rcx, r12
000000014048dc1b imul     ebx, eax, 0x19
000000014048dc1e mov      dword ptr [rsp + 0xc4], ebx
000000014048dc25 call     0x1403879a8
000000014048dc2a movzx    eax, al
000000014048dc2d mov      dl, 2
000000014048dc2f lea      rcx, [rax + rax*2]
000000014048dc33 movsx    eax, byte ptr [r12 + rcx*4 + 0x169d0d]
000000014048dc3c mov      rcx, r12
000000014048dc3f imul     ebp, eax, 0x19
000000014048dc42 mov      dword ptr [rsp + 0xe8], ebp
000000014048dc49 call     0x1403879a8
000000014048dc4e movzx    eax, al
000000014048dc51 lea      rcx, [rax + rax*2]
000000014048dc55 movsx    eax, byte ptr [r12 + rcx*4 + 0x169d0e]
000000014048dc5e imul     r9d, eax, 0x19
000000014048dc62 cmp      r15d, r13d
000000014048dc65 jae      0x14048df68
000000014048dc6b mov      r11d, 0x51eb851f
000000014048dc71 xor      r10d, r10d
000000014048dc74 mov      eax, r11d
000000014048dc77 mov      r8d, 0xae147ae1
000000014048dc7d imul     r9d
000000014048dc80 mov      ecx, edx
000000014048dc82 sar      ecx, 5
000000014048dc85 mov      eax, ecx
000000014048dc87 shr      eax, 0x1f
000000014048dc8a add      ecx, eax
000000014048dc8c mov      dword ptr [rsp + 0xbc], ecx
000000014048dc93 imul     ecx, ecx, 0x64
000000014048dc96 test     r9d, r9d
000000014048dc99 jns      0x14048dcc0
000000014048dc9b sub      ecx, r9d
000000014048dc9e mov      eax, r8d
000000014048dca1 imul     r9d
000000014048dca4 mov      dword ptr [rsp + 0xc0], ecx
000000014048dcab mov      ecx, edx
000000014048dcad sar      ecx, 5
000000014048dcb0 mov      eax, ecx
000000014048dcb2 shr      eax, 0x1f
000000014048dcb5 add      ecx, eax
000000014048dcb7 mov      dword ptr [rsp + 0xbc], ecx
000000014048dcbe jmp      0x14048dccc
000000014048dcc0 mov      eax, r9d
000000014048dcc3 sub      eax, ecx
000000014048dcc5 mov      dword ptr [rsp + 0xc0], eax
000000014048dccc mov      eax, r11d
000000014048dccf imul     ebp
000000014048dcd1 sar      edx, 5
000000014048dcd4 mov      eax, edx
000000014048dcd6 shr      eax, 0x1f
000000014048dcd9 add      edx, eax
000000014048dcdb imul     ecx, edx, 0x64
000000014048dcde test     ebp, ebp
000000014048dce0 jns      0x14048dced
000000014048dce2 sub      ecx, ebp
000000014048dce4 mov      dword ptr [rsp + 0xb8], ecx
000000014048dceb jmp      0x14048dcf8
000000014048dced mov      eax, ebp
000000014048dcef sub      eax, ecx
000000014048dcf1 mov      dword ptr [rsp + 0xb8], eax
000000014048dcf8 mov      eax, r8d
000000014048dcfb test     ebp, ebp
000000014048dcfd js       0x14048dd02
000000014048dcff mov      eax, r11d
000000014048dd02 imul     ebp
000000014048dd04 mov      ecx, edx
000000014048dd06 sar      ecx, 5
000000014048dd09 mov      eax, ecx
000000014048dd0b shr      eax, 0x1f
000000014048dd0e add      ecx, eax
000000014048dd10 mov      eax, r11d
000000014048dd13 imul     ebx
000000014048dd15 mov      dword ptr [rsp + 0xb4], ecx
000000014048dd1c sar      edx, 5
000000014048dd1f mov      eax, edx
000000014048dd21 shr      eax, 0x1f
000000014048dd24 add      edx, eax
000000014048dd26 test     ebx, ebx
000000014048dd28 jns      0x14048dd31
000000014048dd2a imul     ecx, edx, 0x64
000000014048dd2d sub      ecx, ebx
000000014048dd2f jmp      0x14048dd38
000000014048dd31 imul     eax, edx, 0x64
000000014048dd34 mov      ecx, ebx
000000014048dd36 sub      ecx, eax
000000014048dd38 mov      dword ptr [rsp + 0xdc], ecx
000000014048dd3f mov      eax, r8d
000000014048dd42 test     ebx, ebx
000000014048dd44 js       0x14048dd49
000000014048dd46 mov      eax, r11d
000000014048dd49 imul     ebx
000000014048dd4b mov      ecx, edx
000000014048dd4d sar      ecx, 5
000000014048dd50 mov      eax, ecx
000000014048dd52 shr      eax, 0x1f
000000014048dd55 add      ecx, eax
000000014048dd57 mov      eax, r11d
000000014048dd5a imul     edi
000000014048dd5c mov      dword ptr [rsp + 0xd8], ecx
000000014048dd63 sar      edx, 5
000000014048dd66 mov      eax, edx
000000014048dd68 shr      eax, 0x1f
000000014048dd6b add      edx, eax
000000014048dd6d test     edi, edi
000000014048dd6f jns      0x14048dd78
000000014048dd71 imul     ecx, edx, 0x64
000000014048dd74 sub      ecx, edi
000000014048dd76 jmp      0x14048dd7f
000000014048dd78 imul     eax, edx, 0x64
000000014048dd7b mov      ecx, edi
000000014048dd7d sub      ecx, eax
000000014048dd7f mov      dword ptr [rsp + 0xd4], ecx
000000014048dd86 mov      eax, r8d
000000014048dd89 test     edi, edi
000000014048dd8b js       0x14048dd90
000000014048dd8d mov      eax, r11d
000000014048dd90 imul     edi
000000014048dd92 mov      ecx, edx
000000014048dd94 sar      ecx, 5
000000014048dd97 mov      eax, ecx
000000014048dd99 shr      eax, 0x1f
000000014048dd9c add      ecx, eax
000000014048dd9e mov      eax, r11d
000000014048dda1 imul     esi
000000014048dda3 mov      dword ptr [rsp + 0xd0], ecx
000000014048ddaa sar      edx, 5
000000014048ddad mov      eax, edx
000000014048ddaf shr      eax, 0x1f
000000014048ddb2 add      edx, eax
000000014048ddb4 test     esi, esi
000000014048ddb6 jns      0x14048ddbf
000000014048ddb8 imul     ecx, edx, 0x64
000000014048ddbb sub      ecx, esi
000000014048ddbd jmp      0x14048ddc6
000000014048ddbf imul     eax, edx, 0x64
000000014048ddc2 mov      ecx, esi
000000014048ddc4 sub      ecx, eax
000000014048ddc6 mov      dword ptr [rsp + 0xc8], ecx
000000014048ddcd mov      eax, r8d
000000014048ddd0 test     esi, esi
000000014048ddd2 js       0x14048ddd7
000000014048ddd4 mov      eax, r11d
000000014048ddd7 mov      r8d, dword ptr [rsp + 0xe0]
000000014048dddf imul     esi
000000014048dde1 mov      ebp, edx
000000014048dde3 sar      ebp, 5
000000014048dde6 mov      eax, ebp
000000014048dde8 shr      eax, 0x1f
000000014048ddeb add      ebp, eax
000000014048dded mov      eax, r11d
000000014048ddf0 imul     r8d
000000014048ddf3 sar      edx, 5
000000014048ddf6 test     r8d, r8d
000000014048ddf9 jns      0x14048de0a
000000014048ddfb mov      eax, edx
000000014048ddfd shr      eax, 0x1f
000000014048de00 add      edx, eax
000000014048de02 imul     eax, edx, 0x64
000000014048de05 sub      eax, r8d
000000014048de08 jmp      0x14048de19
000000014048de0a mov      ecx, edx
000000014048de0c mov      eax, r8d
000000014048de0f shr      ecx, 0x1f
000000014048de12 add      edx, ecx
000000014048de14 imul     ecx, edx, 0x64
000000014048de17 sub      eax, ecx
000000014048de19 mov      dword ptr [rsp + 0xb0], eax
000000014048de20 mov      eax, 0xae147ae1
000000014048de25 test     r8d, r8d
000000014048de28 js       0x14048de2d
000000014048de2a mov      eax, r11d
000000014048de2d mov      ecx, dword ptr [rsp + 0xe0]
000000014048de34 imul     r8d
000000014048de37 mov      esi, edx
000000014048de39 lea      rdx, [rip + 0x169f60]
000000014048de40 sar      esi, 5
000000014048de43 mov      eax, esi
000000014048de45 shr      eax, 0x1f
000000014048de48 add      esi, eax
000000014048de4a lea      rax, [rip + 0x16953f]
000000014048de51 mov      r8, rax
000000014048de54 mov      rdi, rax
000000014048de57 mov      rbx, rax
000000014048de5a mov      r11, rax
000000014048de5d test     r9d, r9d
000000014048de60 mov      r9, rax
000000014048de63 cmovs    r8, rdx
000000014048de67 cmp      dword ptr [rsp + 0xe8], r10d
000000014048de6f cmovl    rdi, rdx
000000014048de73 cmp      dword ptr [rsp + 0xc4], r10d
000000014048de7b cmovl    rbx, rdx
000000014048de7f cmp      dword ptr [rsp + 0xcc], r10d
000000014048de87 mov      r10, rax
000000014048de8a mov      eax, dword ptr [rsp + 0xc0]
000000014048de91 mov      dword ptr [rsp + 0xa8], eax
000000014048de98 cmovl    r11, rdx
000000014048de9c mov      eax, dword ptr [rsp + 0xbc]
000000014048dea3 cmp      dword ptr [rsp + 0xe4], 0
000000014048deab mov      dword ptr [rsp + 0xa0], eax
000000014048deb2 mov      eax, dword ptr [rsp + 0xb8]
000000014048deb9 cmovl    r10, rdx
000000014048debd mov      qword ptr [rsp + 0x98], r8
000000014048dec5 test     ecx, ecx
000000014048dec7 mov      dword ptr [rsp + 0x90], eax
000000014048dece lea      r8, [rip + 0x1cbc8b]
000000014048ded5 mov      eax, dword ptr [rsp + 0xb4]
000000014048dedc cmovs    r9, rdx
000000014048dee0 mov      dword ptr [rsp + 0x88], eax
000000014048dee7 mov      edx, r13d
000000014048deea mov      eax, dword ptr [rsp + 0xdc]
000000014048def1 sub      edx, r15d
000000014048def4 mov      qword ptr [rsp + 0x80], rdi
000000014048defc mov      dword ptr [rsp + 0x78], eax
000000014048df00 mov      eax, dword ptr [rsp + 0xd8]
000000014048df07 mov      dword ptr [rsp + 0x70], eax
000000014048df0b mov      eax, dword ptr [rsp + 0xd4]
000000014048df12 mov      qword ptr [rsp + 0x68], rbx
000000014048df17 mov      dword ptr [rsp + 0x60], eax
000000014048df1b mov      eax, dword ptr [rsp + 0xd0]
000000014048df22 mov      dword ptr [rsp + 0x58], eax
000000014048df26 mov      eax, dword ptr [rsp + 0xc8]
000000014048df2d mov      qword ptr [rsp + 0x50], r11
000000014048df32 mov      dword ptr [rsp + 0x48], eax
000000014048df36 mov      eax, dword ptr [rsp + 0xb0]
000000014048df3d mov      dword ptr [rsp + 0x40], ebp
000000014048df41 mov      qword ptr [rsp + 0x38], r10
000000014048df46 mov      dword ptr [rsp + 0x30], eax
000000014048df4a mov      dword ptr [rsp + 0x28], esi
000000014048df4e mov      qword ptr [rsp + 0x20], r9
000000014048df53 lea      r9, [rip + 0x1cbc56]
000000014048df5a mov      ecx, r15d
000000014048df5d add      rcx, r14
000000014048df60 call     0x140044426
000000014048df65 add      r15d, eax
000000014048df68 mov      esi, dword ptr [rsp + 0xfc]
000000014048df6f xor      ebp, ebp
000000014048df71 test     esi, esi
000000014048df73 jne      0x14048dfa4
000000014048df75 xor      edx, edx
000000014048df77 mov      rcx, r12
000000014048df7a call     0x1403879a8
000000014048df7f movzx    eax, al
000000014048df82 xor      edx, edx
000000014048df84 mov      rcx, r12
000000014048df87 mov      dil, byte ptr [r12 + rax*2 + 0x169f43]
000000014048df8f call     0x1403879a8
000000014048df94 movzx    eax, al
000000014048df97 mov      cl, byte ptr [r12 + rax*2 + 0x169f44]
000000014048df9f jmp      0x14048e0b4
000000014048dfa4 mov      cl, byte ptr [rsp + 0x170]
000000014048dfab mov      edx, 1
000000014048dfb0 cmp      esi, edx
000000014048dfb2 jne      0x14048e023
000000014048dfb4 lea      eax, [rcx - 0x24]
000000014048dfb7 cmp      al, 0xc
000000014048dfb9 ja       0x14048dfc0
000000014048dfbb mov      rbx, rbp
000000014048dfbe jmp      0x14048dfee
000000014048dfc0 lea      eax, [rcx - 0x32]
000000014048dfc3 cmp      al, 0xe
000000014048dfc5 ja       0x14048dfcc
000000014048dfc7 mov      rbx, rdx
000000014048dfca jmp      0x14048dfee
000000014048dfcc lea      eax, [rcx - 0x64]
000000014048dfcf cmp      al, 0x2c
000000014048dfd1 ja       0x14048dfda
000000014048dfd3 mov      ebx, 2
000000014048dfd8 jmp      0x14048dfee
000000014048dfda mov      rbx, rbp
000000014048dfdd cmp      cl, 0x95
000000014048dfe0 jb       0x14048dfee
000000014048dfe2 cmp      cl, 0xb1
000000014048dfe5 mov      eax, 3
000000014048dfea cmovbe   rbx, rax
000000014048dfee mov      rcx, r12
000000014048dff1 call     0x1403879a8
000000014048dff6 movzx    eax, al
000000014048dff9 mov      dl, 1
000000014048dffb lea      rcx, [rbx + rax*8]
000000014048dfff mov      dil, byte ptr [rcx + r12 + 0x169f83]
000000014048e007 mov      rcx, r12
000000014048e00a call     0x1403879a8
000000014048e00f movzx    eax, al
000000014048e012 lea      rcx, [rbx + rax*8]
000000014048e016 mov      cl, byte ptr [rcx + r12 + 0x169f87]
000000014048e01e jmp      0x14048e0b4
000000014048e023 mov      al, cl
000000014048e025 sub      al, dl
000000014048e027 cmp      al, 0x2c
000000014048e029 ja       0x14048e030
000000014048e02b mov      rbx, rbp
000000014048e02e jmp      0x14048e07a
000000014048e030 lea      eax, [rcx - 0x31]
000000014048e033 cmp      al, 0x2c
000000014048e035 ja       0x14048e03c
000000014048e037 mov      rbx, rdx
000000014048e03a jmp      0x14048e07a
000000014048e03c lea      eax, [rcx - 0x61]
000000014048e03f cmp      al, 0x14
000000014048e041 ja       0x14048e04a
000000014048e043 mov      ebx, 2
000000014048e048 jmp      0x14048e07a
000000014048e04a lea      eax, [rcx - 0x79]
000000014048e04d cmp      al, 0x1c
000000014048e04f ja       0x14048e058
000000014048e051 mov      ebx, 3
000000014048e056 jmp      0x14048e07a
000000014048e058 lea      eax, [rcx + 0x67]
000000014048e05b cmp      al, 0x24
000000014048e05d ja       0x14048e066
000000014048e05f mov      ebx, 4
000000014048e064 jmp      0x14048e07a
000000014048e066 mov      rbx, rbp
000000014048e069 cmp      cl, 0xc1
000000014048e06c jb       0x14048e07a
000000014048e06e cmp      cl, 0xed
000000014048e071 mov      eax, 5
000000014048e076 cmovbe   rbx, rax
000000014048e07a mov      dl, 2
000000014048e07c mov      rcx, r12
000000014048e07f call     0x1403879a8
000000014048e084 movzx    eax, al
000000014048e087 mov      dl, 2
000000014048e089 lea      rcx, [rax + rax*2]
000000014048e08d lea      rax, [rbx + rcx*4]
000000014048e091 mov      rcx, r12
000000014048e094 mov      dil, byte ptr [rax + r12 + 0x16a083]
000000014048e09c call     0x1403879a8
000000014048e0a1 movzx    eax, al
000000014048e0a4 lea      rcx, [rax + rax*2]
000000014048e0a8 lea      rax, [rbx + rcx*4]
000000014048e0ac mov      cl, byte ptr [rax + r12 + 0x16a089]
000000014048e0b4 movsx    r11d, dil
000000014048e0b8 mov      edi, 0x51eb851f
000000014048e0bd movsx    r9d, cl
000000014048e0c1 cmp      r15d, r13d
000000014048e0c4 jae      0x14048e179
000000014048e0ca mov      eax, edi
000000014048e0cc test     cl, cl
000000014048e0ce jns      0x14048e0d6
000000014048e0d0 imul     r10d, r9d, -0x19
000000014048e0d4 jmp      0x14048e0da
000000014048e0d6 imul     r10d, r9d, 0x19
000000014048e0da imul     r10d
000000014048e0dd sar      edx, 5
000000014048e0e0 mov      eax, edx
000000014048e0e2 shr      eax, 0x1f
000000014048e0e5 add      edx, eax
000000014048e0e7 imul     eax, edx, 0x64
000000014048e0ea sub      r10d, eax
000000014048e0ed mov      eax, edi
000000014048e0ef test     r11d, r11d
000000014048e0f2 jns      0x14048e10d
000000014048e0f4 imul     r8d, r11d, -0x19
000000014048e0f8 imul     r8d
000000014048e0fb sar      edx, 5
000000014048e0fe mov      eax, edx
000000014048e100 shr      eax, 0x1f
000000014048e103 add      edx, eax
000000014048e105 imul     eax, edx, 0x64
000000014048e108 sub      r8d, eax
000000014048e10b jmp      0x14048e124
000000014048e10d imul     r8d, r11d, 0x19
000000014048e111 imul     r8d
000000014048e114 sar      edx, 5
000000014048e117 mov      ecx, edx
000000014048e119 shr      ecx, 0x1f
000000014048e11c add      edx, ecx
000000014048e11e imul     ecx, edx, 0x64
000000014048e121 sub      r8d, ecx
000000014048e124 mov      eax, r9d
000000014048e127 mov      dword ptr [rsp + 0x38], r10d
000000014048e12c cdq      
000000014048e12d mov      ecx, r15d
000000014048e130 mov      ebx, 3
000000014048e135 add      rcx, r14
000000014048e138 and      edx, ebx
000000014048e13a lea      r9d, [rdx + rax]
000000014048e13e mov      eax, r11d
000000014048e141 cdq      
000000014048e142 sar      r9d, 2
000000014048e146 and      edx, ebx
000000014048e148 mov      dword ptr [rsp + 0x30], r9d
000000014048e14d add      eax, edx
000000014048e14f mov      dword ptr [rsp + 0x28], r8d
000000014048e154 mov      edx, r13d
000000014048e157 sar      eax, 2
000000014048e15a sub      edx, r15d
000000014048e15d mov      dword ptr [rsp + 0x20], eax
000000014048e161 lea      r9, [rip + 0x1cba68]
000000014048e168 lea      r8, [rip + 0x1cb821]
000000014048e16f call     0x140044426
000000014048e174 add      r15d, eax
000000014048e177 jmp      0x14048e17e
000000014048e179 mov      ebx, 3
000000014048e17e cmp      byte ptr [rsp + 0xee], bpl
000000014048e186 je       0x14048e701
000000014048e18c cmp      r15d, r13d
000000014048e18f jae      0x14048e239
000000014048e195 mov      edx, r13d
000000014048e198 mov      ecx, r15d
000000014048e19b sub      edx, r15d
000000014048e19e mov      dword ptr [rsp + 0x20], ebx
000000014048e1a2 add      rcx, r14
000000014048e1a5 lea      r9, [rip + 0x1b2b34]
000000014048e1ac lea      r8, [rip + 0x1cb0fd]
000000014048e1b3 call     0x140044426
000000014048e1b8 add      r15d, eax
000000014048e1bb cmp      r15d, r13d
000000014048e1be jae      0x14048e239
000000014048e1c0 mov      r8d, dword ptr [r12 + 0x17b440]
000000014048e1c8 lea      r9, [rip + 0x1b2b21]
000000014048e1cf add      r8d, r8d
000000014048e1d2 mov      ecx, r15d
000000014048e1d5 mov      edx, r13d
000000014048e1d8 mov      dword ptr [rsp + 0x20], r8d
000000014048e1dd lea      r8, [rip + 0x1b2f7c]
000000014048e1e4 sub      edx, r15d
000000014048e1e7 add      rcx, r14
000000014048e1ea call     0x140044426
000000014048e1ef add      r15d, eax
000000014048e1f2 cmp      r15d, r13d
000000014048e1f5 jae      0x14048e239
000000014048e1f7 mov      eax, dword ptr [r12 + 0x17bb6c]
000000014048e1ff lea      r9, [rip + 0x1b2b0a]
000000014048e206 mov      dword ptr [rsp + 0x30], eax
000000014048e20a lea      r8, [rip + 0x1b2f6f]
000000014048e211 mov      eax, dword ptr [r12 + 0x17bb68]
000000014048e219 mov      edx, r13d
000000014048e21c mov      dword ptr [rsp + 0x28], eax
000000014048e220 sub      edx, r15d
000000014048e223 mov      ecx, r15d
000000014048e226 add      rcx, r14
000000014048e229 mov      dword ptr [rsp + 0x20], 0xb4
000000014048e231 call     0x140044426
000000014048e236 add      r15d, eax
000000014048e239 mov      ecx, dword ptr [r12 + 0x17bc30]
000000014048e241 mov      eax, ecx
000000014048e243 cdq      
000000014048e244 sub      eax, edx
000000014048e246 sar      eax, 1
000000014048e248 and      eax, 0x80000001
000000014048e24d jge      0x14048e256
000000014048e24f dec      eax
000000014048e251 or       eax, 0xfffffffe
000000014048e254 inc      eax
000000014048e256 test     ecx, ecx
000000014048e258 jns      0x14048e260
000000014048e25a imul     r9d, eax, -5
000000014048e25e jmp      0x14048e264
000000014048e260 lea      r9d, [rax + rax*4]
000000014048e264 cmp      r15d, r13d
000000014048e267 jae      0x14048e49b
000000014048e26d mov      eax, dword ptr [r12 + 0x17bc20]
000000014048e275 cmp      eax, 1
000000014048e278 jne      0x14048e283
000000014048e27a lea      r8, [rip + 0x1b2bdf]
000000014048e281 jmp      0x14048e2a5
000000014048e283 cmp      eax, 2
000000014048e286 jne      0x14048e291
000000014048e288 lea      r8, [rip + 0x1b2be1]
000000014048e28f jmp      0x14048e2a5
000000014048e291 cmp      eax, ebx
000000014048e293 lea      rdx, [rip + 0x1b2be6]
000000014048e29a lea      r8, [rip + 0x1b2bef]
000000014048e2a1 cmove    r8, rdx
000000014048e2a5 mov      eax, ecx
000000014048e2a7 mov      dword ptr [rsp + 0x30], r9d
000000014048e2ac cdq      
000000014048e2ad mov      ecx, r15d
000000014048e2b0 and      edx, ebx
000000014048e2b2 lea      r9, [rip + 0x1b2be7]
000000014048e2b9 add      eax, edx
000000014048e2bb add      rcx, r14
000000014048e2be sar      eax, 2
000000014048e2c1 mov      edx, r13d
000000014048e2c4 mov      dword ptr [rsp + 0x28], eax
000000014048e2c8 sub      edx, r15d
000000014048e2cb mov      qword ptr [rsp + 0x20], r8
000000014048e2d0 lea      r8, [rip + 0x1cb919]
000000014048e2d7 call     0x140044426
000000014048e2dc add      r15d, eax
000000014048e2df cmp      r15d, r13d
000000014048e2e2 jae      0x14048e49b
000000014048e2e8 movsx    r9d, byte ptr [r12 + 0x17bb75]
000000014048e2f1 lea      r8, [rip + 0x1cafd8]
000000014048e2f8 movzx    r10d, byte ptr [r12 + 0x17bb73]
000000014048e301 mov      edx, r13d
000000014048e304 mov      dword ptr [rsp + 0x28], r9d
000000014048e309 sub      edx, r15d
000000014048e30c mov      ecx, r15d
000000014048e30f lea      r9, [rip + 0x1b2baa]
000000014048e316 add      rcx, r14
000000014048e319 mov      dword ptr [rsp + 0x20], r10d
000000014048e31e call     0x140044426
000000014048e323 add      r15d, eax
000000014048e326 cmp      r15d, r13d
000000014048e329 jae      0x14048e49b
000000014048e32f movzx    r8d, byte ptr [r12 + 0x17bc24]
000000014048e338 lea      r9, [rip + 0x1b2ba1]
000000014048e33f mov      edx, r13d
000000014048e342 mov      dword ptr [rsp + 0x20], r8d
000000014048e347 mov      ecx, r15d
000000014048e34a lea      r8, [rip + 0x1b4f0f]
000000014048e351 sub      edx, r15d
000000014048e354 add      rcx, r14
000000014048e357 call     0x140044426
000000014048e35c add      r15d, eax
000000014048e35f cmp      r15d, r13d
000000014048e362 jae      0x14048e49b
000000014048e368 movzx    r9d, byte ptr [r12 + 0x176978]
000000014048e371 lea      r8, [rip + 0x1b4ee8]
000000014048e378 mov      edx, r13d
000000014048e37b mov      dword ptr [rsp + 0x20], r9d
000000014048e380 mov      ecx, r15d
000000014048e383 lea      r9, [rip + 0x1b2b76]
000000014048e38a sub      edx, r15d
000000014048e38d add      rcx, r14
000000014048e390 call     0x140044426
000000014048e395 add      r15d, eax
000000014048e398 cmp      r15d, r13d
000000014048e39b jae      0x14048e49b
000000014048e3a1 mov      r10d, dword ptr [r12 + 0x17bb7c]
000000014048e3a9 lea      r9, [rip + 0x1b2b70]
000000014048e3b0 mov      r8, r9
000000014048e3b3 mov      ecx, r15d
000000014048e3b6 test     r10b, 2
000000014048e3ba lea      rax, [rip + 0x1b2b4f]
000000014048e3c1 mov      edx, r13d
000000014048e3c4 cmovne   r8, rax
000000014048e3c8 lea      rax, [rip + 0x1b2b61]
000000014048e3cf test     r10b, 1
000000014048e3d3 cmovne   r9, rax
000000014048e3d7 mov      eax, dword ptr [r12 + 0x17bb80]
000000014048e3df mov      dword ptr [rsp + 0x38], eax
000000014048e3e3 sub      edx, r15d
000000014048e3e6 mov      qword ptr [rsp + 0x30], r8
000000014048e3eb add      rcx, r14
000000014048e3ee mov      qword ptr [rsp + 0x28], r9
000000014048e3f3 lea      r8, [rip + 0x1cb816]
000000014048e3fa lea      r9, [rip + 0x1b2b3f]
000000014048e401 mov      dword ptr [rsp + 0x20], r10d
000000014048e406 call     0x140044426
000000014048e40b add      r15d, eax
000000014048e40e cmp      r15d, r13d
000000014048e411 jae      0x14048e49b
000000014048e417 movzx    r8d, byte ptr [r12 + 0x17bb85]
000000014048e420 lea      rax, [rip + 0x176559]
000000014048e427 mov      dword ptr [rsp + 0x28], r8d
000000014048e42c lea      r9, [rip + 0x1b28fd]
000000014048e433 mov      edx, r13d
000000014048e436 mov      ecx, r15d
000000014048e439 lea      r8, [rip + 0x1cb7f0]
000000014048e440 mov      qword ptr [rsp + 0x20], rax
000000014048e445 sub      edx, r15d
000000014048e448 add      rcx, r14
000000014048e44b call     0x140044426
000000014048e450 add      r15d, eax
000000014048e453 cmp      r15d, r13d
000000014048e456 jae      0x14048e49b
000000014048e458 mov      rcx, r12
000000014048e45b call     0x140394950
000000014048e460 test     al, al
000000014048e462 lea      rcx, [rip + 0x1b28e7]
000000014048e469 mov      edx, r13d
000000014048e46c lea      r9, [rip + 0x1b28ed]
000000014048e473 cmove    r9, rcx
000000014048e477 lea      r8, [rip + 0x1b4a82]
000000014048e47e mov      qword ptr [rsp + 0x20], r9
000000014048e483 sub      edx, r15d
000000014048e486 mov      ecx, r15d
000000014048e489 lea      r9, [rip + 0x1b28e0]
000000014048e490 add      rcx, r14
000000014048e493 call     0x140044426
000000014048e498 add      r15d, eax
000000014048e49b lea      r9, [rsp + 0xf4]
000000014048e4a3 mov      rcx, r12
000000014048e4a6 lea      r8, [rsp + 0xf8]
000000014048e4ae lea      rdx, [rsp + 0xf0]
000000014048e4b6 call     0x1403947a0
000000014048e4bb movzx    eax, byte ptr [r12 + 0x17bb73]
000000014048e4c4 movsx    edi, word ptr [rsp + 0xf0]
000000014048e4cc cmp      edi, eax
000000014048e4ce jle      0x14048e4db
000000014048e4d0 mov      cl, byte ptr [rsp + 0xf4]
000000014048e4d7 sub      cl, al
000000014048e4d9 jmp      0x14048e4de
000000014048e4db mov      cl, bpl
000000014048e4de cmp      r15d, r13d
000000014048e4e1 jae      0x14048e5b7
000000014048e4e7 movsx    r9d, word ptr [rsp + 0xf8]
000000014048e4f0 mov      eax, 0x51eb851f
000000014048e4f5 movsx    r8d, cl
000000014048e4f9 imul     ebx, r8d, 0x19
000000014048e4fd imul     r11d, r9d, 0x19
000000014048e501 imul     ebx
000000014048e503 mov      eax, r8d
000000014048e506 mov      r8d, 3
000000014048e50c sar      edx, 5
000000014048e50f mov      ecx, edx
000000014048e511 shr      ecx, 0x1f
000000014048e514 add      edx, ecx
000000014048e516 imul     ecx, edx, 0x64
000000014048e519 cdq      
000000014048e51a and      edx, r8d
000000014048e51d lea      r10d, [rdx + rax]
000000014048e521 sub      ebx, ecx
000000014048e523 mov      dword ptr [rsp + 0x48], ebx
000000014048e527 mov      eax, 0x51eb851f
000000014048e52c imul     r11d
000000014048e52f mov      eax, r9d
000000014048e532 sar      r10d, 2
000000014048e536 sar      edx, 5
000000014048e539 mov      ecx, edx
000000014048e53b mov      dword ptr [rsp + 0x40], r10d
000000014048e540 shr      ecx, 0x1f
000000014048e543 add      edx, ecx
000000014048e545 imul     r9d, edi, 0x19
000000014048e549 imul     ecx, edx, 0x64
000000014048e54c cdq      
000000014048e54d and      r8d, edx
000000014048e550 add      r8d, eax
000000014048e553 mov      eax, 0x51eb851f
000000014048e558 sar      r8d, 2
000000014048e55c imul     r9d
000000014048e55f sub      r11d, ecx
000000014048e562 mov      eax, edi
000000014048e564 sar      edx, 5
000000014048e567 mov      ecx, edx
000000014048e569 mov      dword ptr [rsp + 0x38], r11d
000000014048e56e shr      ecx, 0x1f
000000014048e571 add      edx, ecx
000000014048e573 mov      dword ptr [rsp + 0x30], r8d
000000014048e578 imul     ecx, edx, 0x64
000000014048e57b lea      r8, [rip + 0x1cb6ce]
000000014048e582 cdq      
000000014048e583 and      edx, 3
000000014048e586 add      eax, edx
000000014048e588 mov      edx, r13d
000000014048e58b sar      eax, 2
000000014048e58e sub      edx, r15d
000000014048e591 sub      r9d, ecx
000000014048e594 mov      ecx, r15d
000000014048e597 mov      dword ptr [rsp + 0x28], r9d
000000014048e59c add      rcx, r14
000000014048e59f lea      r9, [rip + 0x1b27ea]
000000014048e5a6 mov      dword ptr [rsp + 0x20], eax
000000014048e5aa call     0x140044426
000000014048e5af add      r15d, eax
000000014048e5b2 mov      ebx, 3
000000014048e5b7 movsx    ecx, word ptr [r12 + 0x17bb60]
000000014048e5c0 mov      edi, 0x51eb851f
000000014048e5c5 imul     r8d, ecx, 0x19
000000014048e5c9 mov      eax, ecx
000000014048e5cb cdq      
000000014048e5cc and      edx, ebx
000000014048e5ce lea      r10d, [rdx + rax]
000000014048e5d2 mov      eax, edi
000000014048e5d4 imul     r8d
000000014048e5d7 sar      r10d, 2
000000014048e5db sar      edx, 5
000000014048e5de mov      ecx, edx
000000014048e5e0 shr      ecx, 0x1f
000000014048e5e3 add      edx, ecx
000000014048e5e5 imul     ecx, edx, 0x64
000000014048e5e8 sub      r8d, ecx
000000014048e5eb mov      r9d, r8d
000000014048e5ee neg      r9d
000000014048e5f1 cmovs    r9d, r8d
000000014048e5f5 cmp      r15d, r13d
000000014048e5f8 jae      0x14048e654
000000014048e5fa mov      al, byte ptr [r12 + 0x17bb64]
000000014048e602 test     al, al
000000014048e604 jne      0x14048e60f
000000014048e606 lea      r8, [rip + 0x1b25f3]
000000014048e60d jmp      0x14048e623
000000014048e60f cmp      al, 2
000000014048e611 lea      rcx, [rip + 0x1b2798]
000000014048e618 lea      r8, [rip + 0x1b2601]
000000014048e61f cmove    r8, rcx
000000014048e623 mov      qword ptr [rsp + 0x30], r8
000000014048e628 mov      edx, r13d
000000014048e62b mov      dword ptr [rsp + 0x28], r9d
000000014048e630 lea      r8, [rip + 0x1cb649]
000000014048e637 mov      ecx, r15d
000000014048e63a lea      r9, [rip + 0x1b277f]
000000014048e641 sub      edx, r15d
000000014048e644 mov      dword ptr [rsp + 0x20], r10d
000000014048e649 add      rcx, r14
000000014048e64c call     0x140044426
000000014048e651 add      r15d, eax
000000014048e654 movsx    ecx, word ptr [r12 + 0x17b5b8]
000000014048e65d imul     r8d, ecx, 0x19
000000014048e661 mov      eax, ecx
000000014048e663 cdq      
000000014048e664 and      edx, ebx
000000014048e666 lea      r10d, [rdx + rax]
000000014048e66a mov      eax, edi
000000014048e66c imul     r8d
000000014048e66f sar      r10d, 2
000000014048e673 sar      edx, 5
000000014048e676 mov      ecx, edx
000000014048e678 shr      ecx, 0x1f
000000014048e67b add      edx, ecx
000000014048e67d imul     ecx, edx, 0x64
000000014048e680 sub      r8d, ecx
000000014048e683 mov      r9d, r8d
000000014048e686 neg      r9d
000000014048e689 cmovs    r9d, r8d
000000014048e68d cmp      r15d, r13d
000000014048e690 jae      0x14048e701
000000014048e692 movzx    r8d, byte ptr [r12 + 0x17bb63]
000000014048e69b mov      edx, r13d
000000014048e69e mov      dword ptr [rsp + 0x30], r9d
000000014048e6a3 sub      edx, r15d
000000014048e6a6 mov      dword ptr [rsp + 0x28], r10d
000000014048e6ab lea      r9, [rip + 0x1b272e]
000000014048e6b2 mov      dword ptr [rsp + 0x20], r8d
000000014048e6b7 lea      r8, [rip + 0x1cb5e2]
000000014048e6be mov      ecx, r15d
000000014048e6c1 add      rcx, r14
000000014048e6c4 call     0x140044426
000000014048e6c9 add      r15d, eax
000000014048e6cc cmp      r15d, r13d
000000014048e6cf jae      0x14048e701
000000014048e6d1 movzx    r8d, byte ptr [r12 + 0x17bb62]
000000014048e6da lea      r9, [rip + 0x1b271f]
000000014048e6e1 mov      edx, r13d
000000014048e6e4 mov      dword ptr [rsp + 0x20], r8d
000000014048e6e9 mov      ecx, r15d
000000014048e6ec lea      r8, [rip + 0x1cb5cd]
000000014048e6f3 sub      edx, r15d
000000014048e6f6 add      rcx, r14
000000014048e6f9 call     0x140044426
000000014048e6fe add      r15d, eax
000000014048e701 movsx    r10d, byte ptr [r12 + 0x169aa5]
000000014048e70a cmp      r10b, 0x80
000000014048e70e je       0x14048e798
000000014048e714 cmp      esi, 2
000000014048e717 jne      0x14048e798
000000014048e719 cmp      r15d, r13d
000000014048e71c jae      0x14048e7b8
000000014048e722 movsx    r9d, byte ptr [r12 + 0x169aa4]
000000014048e72b mov      r11d, r10d
000000014048e72e imul     r8d, r9d, 0x19
000000014048e732 mov      eax, edi
000000014048e734 mov      dword ptr [rsp + 0x38], r11d
000000014048e739 imul     r8d
000000014048e73c mov      eax, r9d
000000014048e73f sar      edx, 5
000000014048e742 mov      ecx, edx
000000014048e744 shr      ecx, 0x1f
000000014048e747 add      edx, ecx
000000014048e749 imul     ecx, edx, 0x64
000000014048e74c cdq      
000000014048e74d sub      r8d, ecx
000000014048e750 mov      ecx, r15d
000000014048e753 mov      r10d, r8d
000000014048e756 neg      r10d
000000014048e759 test     r9b, r9b
000000014048e75c lea      r9, [rip + 0x1cb2ad]
000000014048e763 cmovns   r10d, r8d
000000014048e767 and      edx, 3
000000014048e76a add      eax, edx
000000014048e76c mov      dword ptr [rsp + 0x30], r10d
000000014048e771 sar      eax, 2
000000014048e774 lea      r8, [rip + 0x1cb2b5]
000000014048e77b mov      edx, r13d
000000014048e77e mov      dword ptr [rsp + 0x28], eax
000000014048e782 sub      edx, r15d
000000014048e785 mov      dword ptr [rsp + 0x20], 0xfffffff6
000000014048e78d add      rcx, r14
000000014048e790 call     0x140044426
000000014048e795 add      r15d, eax
000000014048e798 cmp      r15d, r13d
000000014048e79b jae      0x14048e7b8
000000014048e79d mov      edx, r13d
000000014048e7a0 mov      ecx, r15d
000000014048e7a3 sub      edx, r15d
000000014048e7a6 lea      r8, [rip + 0x1cadd3]
000000014048e7ad add      rcx, r14
000000014048e7b0 call     0x140044426
000000014048e7b5 add      r15d, eax
000000014048e7b8 mov      esi, dword ptr [rsp + 0x198]
000000014048e7bf or       r9d, 0xffffffff
000000014048e7c3 mov      edx, esi
000000014048e7c5 mov      r8d, 0x11fac
000000014048e7cb mov      rcx, r12
000000014048e7ce call     0x1404663c4
000000014048e7d3 mov      ebp, eax
000000014048e7d5 cmp      r15d, r13d
000000014048e7d8 jae      0x14048e917
000000014048e7de mov      edi, eax
000000014048e7e0 mov      rcx, r12
000000014048e7e3 and      edi, 0x7f
000000014048e7e6 mov      edx, edi
000000014048e7e8 call     0x14038e3bc
000000014048e7ed mov      esi, eax
000000014048e7ef mov      ebx, 0x66666667
000000014048e7f4 mov      eax, ebx
000000014048e7f6 imul     esi
000000014048e7f8 sar      edx, 2
000000014048e7fb mov      ecx, edx
000000014048e7fd shr      ecx, 0x1f
000000014048e800 add      edx, ecx
000000014048e802 lea      ecx, [rdx + rdx*4]
000000014048e805 mov      edx, edi
000000014048e807 add      ecx, ecx
000000014048e809 sub      esi, ecx
000000014048e80b mov      rcx, r12
000000014048e80e call     0x14038e3bc
000000014048e813 mov      ecx, eax
000000014048e815 mov      eax, ebx
000000014048e817 imul     ecx
000000014048e819 mov      rcx, r12
000000014048e81c mov      ebx, edx
000000014048e81e mov      edx, edi
000000014048e820 sar      ebx, 2
000000014048e823 mov      eax, ebx
000000014048e825 shr      eax, 0x1f
000000014048e828 add      ebx, eax
000000014048e82a call     0x14038b838
000000014048e82f test     al, al
000000014048e831 mov      dword ptr [rsp + 0x30], esi
000000014048e835 lea      rax, [rip + 0x169564]
000000014048e83c mov      ecx, r15d
000000014048e83f mov      edx, r13d
000000014048e842 mov      dword ptr [rsp + 0x28], ebx
000000014048e846 lea      r8, [rip + 0x168b43]
000000014048e84d cmovne   r8, rax
000000014048e851 lea      r9, [rip + 0x1cb478]
000000014048e858 mov      qword ptr [rsp + 0x20], r8
000000014048e85d sub      edx, r15d
000000014048e860 lea      r8, [rip + 0x1cb479]
000000014048e867 add      rcx, r14
000000014048e86a call     0x140044426
000000014048e86f mov      esi, dword ptr [rsp + 0x198]
000000014048e876 add      r15d, eax
000000014048e879 cmp      r15d, r13d
000000014048e87c jae      0x14048e917
000000014048e882 shr      ebp, 0x10
000000014048e885 mov      rcx, r12
000000014048e888 and      ebp, 0x7f
000000014048e88b mov      edx, ebp
000000014048e88d call     0x14038e3bc
000000014048e892 mov      edi, eax
000000014048e894 mov      ebx, 0x66666667
000000014048e899 mov      eax, ebx
000000014048e89b imul     edi
000000014048e89d sar      edx, 2
000000014048e8a0 mov      ecx, edx
000000014048e8a2 shr      ecx, 0x1f
000000014048e8a5 add      edx, ecx
000000014048e8a7 lea      ecx, [rdx + rdx*4]
000000014048e8aa mov      edx, ebp
000000014048e8ac add      ecx, ecx
000000014048e8ae sub      edi, ecx
000000014048e8b0 mov      rcx, r12
000000014048e8b3 call     0x14038e3bc
000000014048e8b8 mov      ecx, eax
000000014048e8ba mov      eax, ebx
000000014048e8bc imul     ecx
000000014048e8be mov      rcx, r12
000000014048e8c1 mov      ebx, edx
000000014048e8c3 mov      edx, ebp
000000014048e8c5 sar      ebx, 2
000000014048e8c8 mov      eax, ebx
000000014048e8ca shr      eax, 0x1f
000000014048e8cd add      ebx, eax
000000014048e8cf call     0x14038b838
000000014048e8d4 test     al, al
000000014048e8d6 mov      dword ptr [rsp + 0x30], edi
000000014048e8da lea      rax, [rip + 0x1694bf]
000000014048e8e1 mov      ecx, r15d
000000014048e8e4 mov      edx, r13d
000000014048e8e7 mov      dword ptr [rsp + 0x28], ebx
000000014048e8eb lea      r8, [rip + 0x168a9e]
000000014048e8f2 cmovne   r8, rax
000000014048e8f6 lea      r9, [rip + 0x1cb403]
000000014048e8fd mov      qword ptr [rsp + 0x20], r8
000000014048e902 sub      edx, r15d
000000014048e905 lea      r8, [rip + 0x1cb3d4]
000000014048e90c add      rcx, r14
000000014048e90f call     0x140044426
000000014048e914 add      r15d, eax
000000014048e917 or       r9d, 0xffffffff
000000014048e91b mov      r8d, 0x11fb0
000000014048e921 mov      edx, esi
000000014048e923 mov      rcx, r12
000000014048e926 call     0x1404663c4
000000014048e92b mov      ebp, eax
000000014048e92d cmp      r15d, r13d
000000014048e930 jae      0x14048ea74
000000014048e936 mov      edi, eax
000000014048e938 mov      rcx, r12
000000014048e93b and      edi, 0x7f
000000014048e93e mov      edx, edi
000000014048e940 call     0x14038e3bc
000000014048e945 mov      esi, eax
000000014048e947 mov      ebx, 0x66666667
000000014048e94c mov      eax, ebx
000000014048e94e imul     esi
000000014048e950 sar      edx, 2
000000014048e953 mov      ecx, edx
000000014048e955 shr      ecx, 0x1f
000000014048e958 add      edx, ecx
000000014048e95a lea      ecx, [rdx + rdx*4]
000000014048e95d mov      edx, edi
000000014048e95f add      ecx, ecx
000000014048e961 sub      esi, ecx
000000014048e963 mov      rcx, r12
000000014048e966 call     0x14038e3bc
000000014048e96b mov      ecx, eax
000000014048e96d mov      eax, ebx
000000014048e96f imul     ecx
000000014048e971 mov      rcx, r12
000000014048e974 mov      ebx, edx
000000014048e976 mov      edx, edi
000000014048e978 sar      ebx, 2
000000014048e97b mov      eax, ebx
000000014048e97d shr      eax, 0x1f
000000014048e980 add      ebx, eax
000000014048e982 call     0x14038b838
000000014048e987 test     al, al
000000014048e989 mov      dword ptr [rsp + 0x30], esi
000000014048e98d lea      rax, [rip + 0x16940c]
000000014048e994 mov      ecx, r15d
000000014048e997 mov      edx, r13d
000000014048e99a mov      dword ptr [rsp + 0x28], ebx
000000014048e99e lea      r8, [rip + 0x1689eb]
000000014048e9a5 cmovne   r8, rax
000000014048e9a9 lea      r9, [rip + 0x1cb360]
000000014048e9b0 mov      qword ptr [rsp + 0x20], r8
000000014048e9b5 sub      edx, r15d
000000014048e9b8 lea      r8, [rip + 0x1cb321]
000000014048e9bf add      rcx, r14
000000014048e9c2 call     0x140044426
000000014048e9c7 mov      esi, dword ptr [rsp + 0x198]
000000014048e9ce add      r15d, eax
000000014048e9d1 cmp      r15d, r13d
000000014048e9d4 jae      0x14048ea74
000000014048e9da shr      ebp, 0x10
000000014048e9dd mov      rcx, r12
000000014048e9e0 and      ebp, 0x7f
000000014048e9e3 mov      edx, ebp
000000014048e9e5 call     0x14038e3bc
000000014048e9ea mov      edi, eax
000000014048e9ec mov      ebx, 0x66666667
000000014048e9f1 mov      eax, ebx
000000014048e9f3 imul     edi
000000014048e9f5 sar      edx, 2
000000014048e9f8 mov      ecx, edx
000000014048e9fa shr      ecx, 0x1f
000000014048e9fd add      edx, ecx
000000014048e9ff lea      ecx, [rdx + rdx*4]
000000014048ea02 mov      edx, ebp
000000014048ea04 add      ecx, ecx
000000014048ea06 sub      edi, ecx
000000014048ea08 mov      rcx, r12
000000014048ea0b call     0x14038e3bc
000000014048ea10 mov      ecx, eax
000000014048ea12 mov      eax, ebx
000000014048ea14 imul     ecx
000000014048ea16 mov      rcx, r12
000000014048ea19 mov      ebx, edx
000000014048ea1b mov      edx, ebp
000000014048ea1d sar      ebx, 2
000000014048ea20 mov      eax, ebx
000000014048ea22 shr      eax, 0x1f
000000014048ea25 add      ebx, eax
000000014048ea27 call     0x14038b838
000000014048ea2c test     al, al
000000014048ea2e mov      dword ptr [rsp + 0x30], edi
000000014048ea32 lea      rax, [rip + 0x169367]
000000014048ea39 mov      ecx, r15d
000000014048ea3c mov      edx, r13d
000000014048ea3f mov      dword ptr [rsp + 0x28], ebx
000000014048ea43 lea      rbp, [rip + 0x168946]
000000014048ea4a mov      r8, rbp
000000014048ea4d lea      r9, [rip + 0x1cb2cc]
000000014048ea54 cmovne   r8, rax
000000014048ea58 sub      edx, r15d
000000014048ea5b mov      qword ptr [rsp + 0x20], r8
000000014048ea60 add      rcx, r14
000000014048ea63 lea      r8, [rip + 0x1cb276]
000000014048ea6a call     0x140044426
000000014048ea6f add      r15d, eax
000000014048ea72 jmp      0x14048ea7b
000000014048ea74 lea      rbp, [rip + 0x168915]
000000014048ea7b or       r9d, 0xffffffff
000000014048ea7f mov      r8d, 0x11fd0
000000014048ea85 mov      edx, esi
000000014048ea87 mov      rcx, r12
000000014048ea8a call     0x1404663c4
000000014048ea8f mov      esi, eax
000000014048ea91 cmp      r15d, r13d
000000014048ea94 jae      0x14048eb2b
000000014048ea9a shr      esi, 0x10
000000014048ea9d mov      rcx, r12
000000014048eaa0 and      esi, 0x7f
000000014048eaa3 mov      edx, esi
000000014048eaa5 call     0x14038e3bc
000000014048eaaa mov      edi, eax
000000014048eaac mov      ebx, 0x66666667
000000014048eab1 mov      eax, ebx
000000014048eab3 imul     edi
000000014048eab5 sar      edx, 2
000000014048eab8 mov      ecx, edx
000000014048eaba shr      ecx, 0x1f
000000014048eabd add      edx, ecx
000000014048eabf lea      ecx, [rdx + rdx*4]
000000014048eac2 mov      edx, esi
000000014048eac4 add      ecx, ecx
000000014048eac6 sub      edi, ecx
000000014048eac8 mov      rcx, r12
000000014048eacb call     0x14038e3bc
000000014048ead0 mov      ecx, eax
000000014048ead2 mov      eax, ebx
000000014048ead4 imul     ecx
000000014048ead6 mov      rcx, r12
000000014048ead9 mov      ebx, edx
000000014048eadb mov      edx, esi
000000014048eadd sar      ebx, 2
000000014048eae0 mov      eax, ebx
000000014048eae2 shr      eax, 0x1f
000000014048eae5 add      ebx, eax
000000014048eae7 call     0x14038b838
000000014048eaec test     al, al
000000014048eaee mov      dword ptr [rsp + 0x30], edi
000000014048eaf2 lea      rax, [rip + 0x1692a7]
000000014048eaf9 mov      ecx, r15d
000000014048eafc mov      edx, r13d
000000014048eaff mov      dword ptr [rsp + 0x28], ebx
000000014048eb03 mov      r8, rbp
000000014048eb06 lea      r9, [rip + 0x1cb223]
000000014048eb0d cmovne   r8, rax
000000014048eb11 sub      edx, r15d
000000014048eb14 mov      qword ptr [rsp + 0x20], r8
000000014048eb19 add      rcx, r14
000000014048eb1c lea      r8, [rip + 0x1cb1bd]
000000014048eb23 call     0x140044426
000000014048eb28 add      r15d, eax
000000014048eb2b mov      ebx, dword ptr [rsp + 0x198]
000000014048eb32 or       r9d, 0xffffffff
000000014048eb36 mov      edx, ebx
000000014048eb38 mov      r8d, 0x11fe0
000000014048eb3e mov      rcx, r12
000000014048eb41 call     0x1404663c4
000000014048eb46 mov      esi, eax
000000014048eb48 cmp      r15d, r13d
000000014048eb4b jae      0x14048ebe9
000000014048eb51 shr      esi, 0x10
000000014048eb54 mov      rcx, r12
000000014048eb57 and      esi, 0x7f
000000014048eb5a mov      edx, esi
000000014048eb5c call     0x14038e3bc
000000014048eb61 mov      edi, eax
000000014048eb63 mov      ebx, 0x66666667
000000014048eb68 mov      eax, ebx
000000014048eb6a imul     edi
000000014048eb6c sar      edx, 2
000000014048eb6f mov      ecx, edx
000000014048eb71 shr      ecx, 0x1f
000000014048eb74 add      edx, ecx
000000014048eb76 lea      ecx, [rdx + rdx*4]
000000014048eb79 mov      edx, esi
000000014048eb7b add      ecx, ecx
000000014048eb7d sub      edi, ecx
000000014048eb7f mov      rcx, r12
000000014048eb82 call     0x14038e3bc
000000014048eb87 mov      ecx, eax
000000014048eb89 mov      eax, ebx
000000014048eb8b imul     ecx
000000014048eb8d mov      rcx, r12
000000014048eb90 mov      ebx, edx
000000014048eb92 mov      edx, esi
000000014048eb94 sar      ebx, 2
000000014048eb97 mov      eax, ebx
000000014048eb99 shr      eax, 0x1f
000000014048eb9c add      ebx, eax
000000014048eb9e call     0x14038b838
000000014048eba3 test     al, al
000000014048eba5 mov      dword ptr [rsp + 0x30], edi
000000014048eba9 lea      rax, [rip + 0x1691f0]
000000014048ebb0 mov      ecx, r15d
000000014048ebb3 mov      edx, r13d
000000014048ebb6 mov      dword ptr [rsp + 0x28], ebx
000000014048ebba mov      r8, rbp
000000014048ebbd lea      r9, [rip + 0x1cb17c]
000000014048ebc4 cmovne   r8, rax
000000014048ebc8 sub      edx, r15d
000000014048ebcb mov      qword ptr [rsp + 0x20], r8
000000014048ebd0 add      rcx, r14
000000014048ebd3 lea      r8, [rip + 0x1cb106]
000000014048ebda call     0x140044426
000000014048ebdf mov      ebx, dword ptr [rsp + 0x198]
000000014048ebe6 add      r15d, eax
000000014048ebe9 or       r9d, 0xffffffff
000000014048ebed mov      r8d, 0x11fe8
000000014048ebf3 mov      edx, ebx
000000014048ebf5 mov      rcx, r12
000000014048ebf8 call     0x1404663c4
000000014048ebfd mov      esi, eax
000000014048ebff cmp      r15d, r13d
000000014048ec02 jae      0x14048eca0
000000014048ec08 shr      esi, 0x10
000000014048ec0b mov      rcx, r12
000000014048ec0e and      esi, 0x7f
000000014048ec11 mov      edx, esi
000000014048ec13 call     0x14038e3bc
000000014048ec18 mov      edi, eax
000000014048ec1a mov      ebx, 0x66666667
000000014048ec1f mov      eax, ebx
000000014048ec21 imul     edi
000000014048ec23 sar      edx, 2
000000014048ec26 mov      ecx, edx
000000014048ec28 shr      ecx, 0x1f
000000014048ec2b add      edx, ecx
000000014048ec2d lea      ecx, [rdx + rdx*4]
000000014048ec30 mov      edx, esi
000000014048ec32 add      ecx, ecx
000000014048ec34 sub      edi, ecx
000000014048ec36 mov      rcx, r12
000000014048ec39 call     0x14038e3bc
000000014048ec3e mov      ecx, eax
000000014048ec40 mov      eax, ebx
000000014048ec42 imul     ecx
000000014048ec44 mov      rcx, r12
000000014048ec47 mov      ebx, edx
000000014048ec49 mov      edx, esi
000000014048ec4b sar      ebx, 2
000000014048ec4e mov      eax, ebx
000000014048ec50 shr      eax, 0x1f
000000014048ec53 add      ebx, eax
000000014048ec55 call     0x14038b838
000000014048ec5a test     al, al
000000014048ec5c mov      dword ptr [rsp + 0x30], edi
000000014048ec60 lea      rax, [rip + 0x169139]
000000014048ec67 mov      ecx, r15d
000000014048ec6a mov      edx, r13d
000000014048ec6d mov      dword ptr [rsp + 0x28], ebx
000000014048ec71 mov      r8, rbp
000000014048ec74 lea      r9, [rip + 0x1cb0d5]
000000014048ec7b cmovne   r8, rax
000000014048ec7f sub      edx, r15d
000000014048ec82 mov      qword ptr [rsp + 0x20], r8
000000014048ec87 add      rcx, r14
000000014048ec8a lea      r8, [rip + 0x1cb04f]
000000014048ec91 call     0x140044426
000000014048ec96 mov      ebx, dword ptr [rsp + 0x198]
000000014048ec9d add      r15d, eax
000000014048eca0 or       r9d, 0xffffffff
000000014048eca4 mov      r8d, 0x11fec
000000014048ecaa mov      edx, ebx
000000014048ecac mov      rcx, r12
000000014048ecaf call     0x1404663c4
000000014048ecb4 mov      esi, eax
000000014048ecb6 cmp      r15d, r13d
000000014048ecb9 jae      0x14048ed77
000000014048ecbf shr      esi, 0x10
000000014048ecc2 mov      rcx, r12
000000014048ecc5 and      esi, 0x7f
000000014048ecc8 mov      edx, esi
000000014048ecca call     0x14038e3bc
000000014048eccf mov      edi, eax
000000014048ecd1 mov      ebx, 0x66666667
000000014048ecd6 mov      eax, ebx
000000014048ecd8 imul     edi
000000014048ecda sar      edx, 2
000000014048ecdd mov      ecx, edx
000000014048ecdf shr      ecx, 0x1f
000000014048ece2 add      edx, ecx
000000014048ece4 lea      ecx, [rdx + rdx*4]
000000014048ece7 mov      edx, esi
000000014048ece9 add      ecx, ecx
000000014048eceb sub      edi, ecx
000000014048eced mov      rcx, r12
000000014048ecf0 call     0x14038e3bc
000000014048ecf5 mov      ecx, eax
000000014048ecf7 mov      eax, ebx
000000014048ecf9 imul     ecx
000000014048ecfb mov      rcx, r12
000000014048ecfe mov      ebx, edx
000000014048ed00 mov      edx, esi
000000014048ed02 sar      ebx, 2
000000014048ed05 mov      eax, ebx
000000014048ed07 shr      eax, 0x1f
000000014048ed0a add      ebx, eax
000000014048ed0c call     0x14038b838
000000014048ed11 test     al, al
000000014048ed13 mov      dword ptr [rsp + 0x30], edi
000000014048ed17 lea      rax, [rip + 0x169082]
000000014048ed1e mov      ecx, r15d
000000014048ed21 mov      edx, r13d
000000014048ed24 mov      dword ptr [rsp + 0x28], ebx
000000014048ed28 mov      r8, rbp
000000014048ed2b lea      r9, [rip + 0x1cb02e]
000000014048ed32 cmovne   r8, rax
000000014048ed36 sub      edx, r15d
000000014048ed39 mov      qword ptr [rsp + 0x20], r8
000000014048ed3e add      rcx, r14
000000014048ed41 lea      r8, [rip + 0x1caf98]
000000014048ed48 call     0x140044426
000000014048ed4d mov      ebx, dword ptr [rsp + 0x198]
000000014048ed54 add      r15d, eax
000000014048ed57 cmp      r15d, r13d
000000014048ed5a jae      0x14048ed77
000000014048ed5c mov      edx, r13d
000000014048ed5f mov      ecx, r15d
000000014048ed62 sub      edx, r15d
000000014048ed65 lea      r8, [rip + 0x1ca984]
000000014048ed6c add      rcx, r14
000000014048ed6f call     0x140044426
000000014048ed74 add      r15d, eax
000000014048ed77 or       r9d, 0xffffffff
000000014048ed7b mov      r8d, 0x11ff8
000000014048ed81 mov      edx, ebx
000000014048ed83 mov      rcx, r12
000000014048ed86 call     0x1404663c4
000000014048ed8b mov      ebp, eax
000000014048ed8d cmp      r15d, r13d
000000014048ed90 jae      0x14048eec8
000000014048ed96 mov      edi, eax
000000014048ed98 mov      rcx, r12
000000014048ed9b and      edi, 0x7f
000000014048ed9e mov      edx, edi
000000014048eda0 call     0x14038e3bc
000000014048eda5 mov      esi, eax
000000014048eda7 mov      ebx, 0x66666667
000000014048edac mov      eax, ebx
000000014048edae imul     esi
000000014048edb0 sar      edx, 2
000000014048edb3 mov      ecx, edx
000000014048edb5 shr      ecx, 0x1f
000000014048edb8 add      edx, ecx
000000014048edba lea      ecx, [rdx + rdx*4]
000000014048edbd mov      edx, edi
000000014048edbf add      ecx, ecx
000000014048edc1 sub      esi, ecx
000000014048edc3 mov      rcx, r12
000000014048edc6 call     0x14038e3bc
000000014048edcb mov      ecx, eax
000000014048edcd mov      eax, ebx
000000014048edcf imul     ecx
000000014048edd1 mov      rcx, r12
000000014048edd4 mov      ebx, edx
000000014048edd6 mov      edx, edi
000000014048edd8 sar      ebx, 2
000000014048eddb mov      eax, ebx
000000014048eddd shr      eax, 0x1f
000000014048ede0 add      ebx, eax
000000014048ede2 call     0x14038b838
000000014048ede7 test     al, al
000000014048ede9 mov      dword ptr [rsp + 0x30], esi
000000014048eded lea      rax, [rip + 0x168fac]
000000014048edf4 mov      ecx, r15d
000000014048edf7 mov      edx, r13d
000000014048edfa mov      dword ptr [rsp + 0x28], ebx
000000014048edfe lea      r8, [rip + 0x16858b]
000000014048ee05 cmovne   r8, rax
000000014048ee09 lea      r9, [rip + 0x1caec0]
000000014048ee10 mov      qword ptr [rsp + 0x20], r8
000000014048ee15 sub      edx, r15d
000000014048ee18 lea      r8, [rip + 0x1caec1]
000000014048ee1f add      rcx, r14
000000014048ee22 call     0x140044426
000000014048ee27 add      r15d, eax
000000014048ee2a cmp      r15d, r13d
000000014048ee2d jae      0x14048eec8
000000014048ee33 shr      ebp, 0x10
000000014048ee36 mov      rcx, r12
000000014048ee39 and      ebp, 0x7f
000000014048ee3c mov      edx, ebp
000000014048ee3e call     0x14038e3bc
000000014048ee43 mov      edi, eax
000000014048ee45 mov      ebx, 0x66666667
000000014048ee4a mov      eax, ebx
000000014048ee4c imul     edi
000000014048ee4e sar      edx, 2
000000014048ee51 mov      ecx, edx
000000014048ee53 shr      ecx, 0x1f
000000014048ee56 add      edx, ecx
000000014048ee58 lea      ecx, [rdx + rdx*4]
000000014048ee5b mov      edx, ebp
000000014048ee5d add      ecx, ecx
000000014048ee5f sub      edi, ecx
000000014048ee61 mov      rcx, r12
000000014048ee64 call     0x14038e3bc
000000014048ee69 mov      ecx, eax
000000014048ee6b mov      eax, ebx
000000014048ee6d imul     ecx
000000014048ee6f mov      rcx, r12
000000014048ee72 mov      ebx, edx
000000014048ee74 mov      edx, ebp
000000014048ee76 sar      ebx, 2
000000014048ee79 mov      eax, ebx
000000014048ee7b shr      eax, 0x1f
000000014048ee7e add      ebx, eax
000000014048ee80 call     0x14038b838
000000014048ee85 test     al, al
000000014048ee87 mov      dword ptr [rsp + 0x30], edi
000000014048ee8b lea      rax, [rip + 0x168f0e]
000000014048ee92 mov      ecx, r15d
000000014048ee95 mov      edx, r13d
000000014048ee98 mov      dword ptr [rsp + 0x28], ebx
000000014048ee9c lea      r8, [rip + 0x1684ed]
000000014048eea3 cmovne   r8, rax
000000014048eea7 lea      r9, [rip + 0x1cae52]
000000014048eeae mov      qword ptr [rsp + 0x20], r8
000000014048eeb3 sub      edx, r15d
000000014048eeb6 lea      r8, [rip + 0x1cae23]
000000014048eebd add      rcx, r14
000000014048eec0 call     0x140044426
000000014048eec5 add      r15d, eax
000000014048eec8 mov      edx, dword ptr [rsp + 0x198]
000000014048eecf or       r9d, 0xffffffff
000000014048eed3 mov      r8d, 0x11ffc
000000014048eed9 mov      rcx, r12
000000014048eedc call     0x1404663c4
000000014048eee1 mov      dword ptr [rsp + 0x170], eax
000000014048eee8 mov      edi, eax
000000014048eeea cmp      r15d, r13d
000000014048eeed jae      0x14048ef8e
000000014048eef3 and      edi, 0x7f
000000014048eef6 mov      rcx, r12
000000014048eef9 mov      edx, edi
000000014048eefb call     0x14038e3bc
000000014048ef00 mov      esi, eax
000000014048ef02 mov      ebp, 0x66666667
000000014048ef07 mov      eax, ebp
000000014048ef09 imul     esi
000000014048ef0b sar      edx, 2
000000014048ef0e mov      ecx, edx
000000014048ef10 shr      ecx, 0x1f
000000014048ef13 add      edx, ecx
000000014048ef15 lea      ecx, [rdx + rdx*4]
000000014048ef18 mov      edx, edi
000000014048ef1a add      ecx, ecx
000000014048ef1c sub      esi, ecx
000000014048ef1e mov      rcx, r12
000000014048ef21 call     0x14038e3bc
000000014048ef26 mov      ecx, eax
000000014048ef28 mov      eax, ebp
000000014048ef2a imul     ecx
000000014048ef2c mov      rcx, r12
000000014048ef2f mov      ebx, edx
000000014048ef31 mov      edx, edi
000000014048ef33 sar      ebx, 2
000000014048ef36 mov      eax, ebx
000000014048ef38 shr      eax, 0x1f
000000014048ef3b add      ebx, eax
000000014048ef3d call     0x14038b838
000000014048ef42 test     al, al
000000014048ef44 mov      dword ptr [rsp + 0x30], esi
000000014048ef48 lea      rax, [rip + 0x168e51]
000000014048ef4f mov      ecx, r15d
000000014048ef52 mov      edx, r13d
000000014048ef55 mov      dword ptr [rsp + 0x28], ebx
000000014048ef59 lea      r10, [rip + 0x168430]
000000014048ef60 cmovne   r10, rax
000000014048ef64 lea      r9, [rip + 0x1cada5]
000000014048ef6b sub      edx, r15d
000000014048ef6e mov      qword ptr [rsp + 0x20], r10
000000014048ef73 add      rcx, r14
000000014048ef76 lea      r8, [rip + 0x1cad63]
000000014048ef7d call     0x140044426
000000014048ef82 mov      edi, dword ptr [rsp + 0x170]
000000014048ef89 add      r15d, eax
000000014048ef8c jmp      0x14048ef93
000000014048ef8e mov      ebp, 0x66666667
000000014048ef93 cmp      r15d, r13d
000000014048ef96 jae      0x14048f0bb
000000014048ef9c mov      ebx, edi
000000014048ef9e mov      rcx, r12
000000014048efa1 shr      ebx, 0x10
000000014048efa4 shr      edi, 0x18
000000014048efa7 and      ebx, 0x7f
000000014048efaa and      edi, 0x7f
000000014048efad mov      edx, ebx
000000014048efaf mov      dword ptr [rsp + 0x170], edi
000000014048efb6 call     0x14038e3bc
000000014048efbb mov      r14d, eax
000000014048efbe mov      eax, ebp
000000014048efc0 imul     r14d
000000014048efc3 sar      edx, 2
000000014048efc6 mov      ecx, edx
000000014048efc8 shr      ecx, 0x1f
000000014048efcb add      edx, ecx
000000014048efcd lea      ecx, [rdx + rdx*4]
000000014048efd0 mov      edx, ebx
000000014048efd2 add      ecx, ecx
000000014048efd4 sub      r14d, ecx
000000014048efd7 mov      rcx, r12
000000014048efda call     0x14038e3bc
000000014048efdf mov      ecx, eax
000000014048efe1 mov      eax, ebp
000000014048efe3 imul     ecx
000000014048efe5 mov      rcx, r12
000000014048efe8 mov      ebp, edx
000000014048efea mov      edx, ebx
000000014048efec sar      ebp, 2
000000014048efef mov      eax, ebp
000000014048eff1 shr      eax, 0x1f
000000014048eff4 add      ebp, eax
000000014048eff6 call     0x14038b838
000000014048effb test     al, al
000000014048effd lea      rsi, [rip + 0x16838c]
000000014048f004 lea      rax, [rip + 0x168d95]
000000014048f00b mov      edx, edi
000000014048f00d mov      rcx, r12
000000014048f010 cmovne   rsi, rax
000000014048f014 call     0x14038e3bc
000000014048f019 mov      edi, eax
000000014048f01b mov      ebx, 0x66666667
000000014048f020 mov      eax, ebx
000000014048f022 imul     edi
000000014048f024 sar      edx, 2
000000014048f027 mov      ecx, edx
000000014048f029 shr      ecx, 0x1f
000000014048f02c add      edx, ecx
000000014048f02e lea      ecx, [rdx + rdx*4]
000000014048f031 mov      edx, dword ptr [rsp + 0x170]
000000014048f038 add      ecx, ecx
000000014048f03a sub      edi, ecx
000000014048f03c mov      rcx, r12
000000014048f03f call     0x14038e3bc
000000014048f044 mov      ecx, eax
000000014048f046 mov      eax, ebx
000000014048f048 imul     ecx
000000014048f04a mov      rcx, r12
000000014048f04d mov      ebx, edx
000000014048f04f mov      edx, dword ptr [rsp + 0x170]
000000014048f056 sar      ebx, 2
000000014048f059 mov      eax, ebx
000000014048f05b shr      eax, 0x1f
000000014048f05e add      ebx, eax
000000014048f060 call     0x14038b838
000000014048f065 mov      dword ptr [rsp + 0x48], r14d
000000014048f06a lea      r8, [rip + 0x16831f]
000000014048f071 mov      dword ptr [rsp + 0x40], ebp
000000014048f075 lea      r9, [rip + 0x1cacf4]
000000014048f07c test     al, al
000000014048f07e mov      qword ptr [rsp + 0x38], rsi
000000014048f083 mov      dword ptr [rsp + 0x30], edi
000000014048f087 lea      rax, [rip + 0x168d12]
000000014048f08e cmovne   r8, rax
000000014048f092 mov      ecx, r15d
000000014048f095 mov      edx, r13d
000000014048f098 mov      dword ptr [rsp + 0x28], ebx
000000014048f09c sub      edx, r15d
000000014048f09f mov      qword ptr [rsp + 0x20], r8
000000014048f0a4 add      rcx, qword ptr [rsp + 0x188]
000000014048f0ac lea      r8, [rip + 0x1cacdd]
000000014048f0b3 call     0x140044426
000000014048f0b8 add      r15d, eax
000000014048f0bb mov      edx, dword ptr [rsp + 0x198]
000000014048f0c2 or       r9d, 0xffffffff
000000014048f0c6 mov      r8d, 0x1201c
000000014048f0cc mov      rcx, r12
000000014048f0cf call     0x1404663c4
000000014048f0d4 mov      edi, eax
000000014048f0d6 cmp      r15d, r13d
000000014048f0d9 jae      0x14048f203
000000014048f0df mov      ebx, eax
000000014048f0e1 shr      edi, 0x18
000000014048f0e4 shr      ebx, 0x10
000000014048f0e7 and      edi, 0x7f
000000014048f0ea and      ebx, 0x7f
000000014048f0ed mov      dword ptr [rsp + 0x170], edi
000000014048f0f4 mov      edx, ebx
000000014048f0f6 mov      rcx, r12
000000014048f0f9 call     0x14038e3bc
000000014048f0fe mov      r14d, eax
000000014048f101 mov      esi, 0x66666667
000000014048f106 mov      eax, esi
000000014048f108 imul     r14d
000000014048f10b sar      edx, 2
000000014048f10e mov      ecx, edx
000000014048f110 shr      ecx, 0x1f
000000014048f113 add      edx, ecx
000000014048f115 lea      ecx, [rdx + rdx*4]
000000014048f118 mov      edx, ebx
000000014048f11a add      ecx, ecx
000000014048f11c sub      r14d, ecx
000000014048f11f mov      rcx, r12
000000014048f122 call     0x14038e3bc
000000014048f127 mov      ecx, eax
000000014048f129 mov      eax, esi
000000014048f12b imul     ecx
000000014048f12d mov      rcx, r12
000000014048f130 mov      ebp, edx
000000014048f132 mov      edx, ebx
000000014048f134 sar      ebp, 2
000000014048f137 mov      eax, ebp
000000014048f139 shr      eax, 0x1f
000000014048f13c add      ebp, eax
000000014048f13e call     0x14038b838
000000014048f143 test     al, al
000000014048f145 lea      rsi, [rip + 0x168244]
000000014048f14c lea      rax, [rip + 0x168c4d]
000000014048f153 mov      edx, edi
000000014048f155 mov      rcx, r12
000000014048f158 cmovne   rsi, rax
000000014048f15c call     0x14038e3bc
000000014048f161 mov      edi, eax
000000014048f163 mov      ebx, 0x66666667
000000014048f168 mov      eax, ebx
000000014048f16a imul     edi
000000014048f16c sar      edx, 2
000000014048f16f mov      ecx, edx
000000014048f171 shr      ecx, 0x1f
000000014048f174 add      edx, ecx
000000014048f176 lea      ecx, [rdx + rdx*4]
000000014048f179 mov      edx, dword ptr [rsp + 0x170]
000000014048f180 add      ecx, ecx
000000014048f182 sub      edi, ecx
000000014048f184 mov      rcx, r12
000000014048f187 call     0x14038e3bc
000000014048f18c mov      ecx, eax
000000014048f18e mov      eax, ebx
000000014048f190 imul     ecx
000000014048f192 mov      rcx, r12
000000014048f195 mov      ebx, edx
000000014048f197 mov      edx, dword ptr [rsp + 0x170]
000000014048f19e sar      ebx, 2
000000014048f1a1 mov      eax, ebx
000000014048f1a3 shr      eax, 0x1f
000000014048f1a6 add      ebx, eax
000000014048f1a8 call     0x14038b838
000000014048f1ad mov      dword ptr [rsp + 0x48], r14d
000000014048f1b2 lea      r8, [rip + 0x1681d7]
000000014048f1b9 mov      dword ptr [rsp + 0x40], ebp
000000014048f1bd lea      r9, [rip + 0x1cabec]
000000014048f1c4 test     al, al
000000014048f1c6 mov      qword ptr [rsp + 0x38], rsi
000000014048f1cb mov      dword ptr [rsp + 0x30], edi
000000014048f1cf lea      rax, [rip + 0x168bca]
000000014048f1d6 cmovne   r8, rax
000000014048f1da mov      ecx, r15d
000000014048f1dd mov      edx, r13d
000000014048f1e0 mov      dword ptr [rsp + 0x28], ebx
000000014048f1e4 sub      edx, r15d
000000014048f1e7 mov      qword ptr [rsp + 0x20], r8
000000014048f1ec add      rcx, qword ptr [rsp + 0x188]
000000014048f1f4 lea      r8, [rip + 0x1cab95]
000000014048f1fb call     0x140044426
000000014048f200 add      r15d, eax
000000014048f203 mov      edx, dword ptr [rsp + 0x198]
000000014048f20a or       r9d, 0xffffffff
000000014048f20e mov      r8d, 0x1202c
000000014048f214 mov      rcx, r12
000000014048f217 call     0x1404663c4
000000014048f21c mov      edi, eax
000000014048f21e cmp      r15d, r13d
000000014048f221 jae      0x14048f34b
000000014048f227 mov      ebx, eax
000000014048f229 shr      edi, 0x18
000000014048f22c shr      ebx, 0x10
000000014048f22f and      edi, 0x7f
000000014048f232 and      ebx, 0x7f
000000014048f235 mov      dword ptr [rsp + 0x170], edi
000000014048f23c mov      edx, ebx
000000014048f23e mov      rcx, r12
000000014048f241 call     0x14038e3bc
000000014048f246 mov      r14d, eax
000000014048f249 mov      esi, 0x66666667
000000014048f24e mov      eax, esi
000000014048f250 imul     r14d
000000014048f253 sar      edx, 2
000000014048f256 mov      ecx, edx
000000014048f258 shr      ecx, 0x1f
000000014048f25b add      edx, ecx
000000014048f25d lea      ecx, [rdx + rdx*4]
000000014048f260 mov      edx, ebx
000000014048f262 add      ecx, ecx
000000014048f264 sub      r14d, ecx
000000014048f267 mov      rcx, r12
000000014048f26a call     0x14038e3bc
000000014048f26f mov      ecx, eax
000000014048f271 mov      eax, esi
000000014048f273 imul     ecx
000000014048f275 mov      rcx, r12
000000014048f278 mov      ebp, edx
000000014048f27a mov      edx, ebx
000000014048f27c sar      ebp, 2
000000014048f27f mov      eax, ebp
000000014048f281 shr      eax, 0x1f
000000014048f284 add      ebp, eax
000000014048f286 call     0x14038b838
000000014048f28b test     al, al
000000014048f28d lea      rsi, [rip + 0x1680fc]
000000014048f294 lea      rax, [rip + 0x168b05]
000000014048f29b mov      edx, edi
000000014048f29d mov      rcx, r12
000000014048f2a0 cmovne   rsi, rax
000000014048f2a4 call     0x14038e3bc
000000014048f2a9 mov      edi, eax
000000014048f2ab mov      ebx, 0x66666667
000000014048f2b0 mov      eax, ebx
000000014048f2b2 imul     edi
000000014048f2b4 sar      edx, 2
000000014048f2b7 mov      ecx, edx
000000014048f2b9 shr      ecx, 0x1f
000000014048f2bc add      edx, ecx
000000014048f2be lea      ecx, [rdx + rdx*4]
000000014048f2c1 mov      edx, dword ptr [rsp + 0x170]
000000014048f2c8 add      ecx, ecx
000000014048f2ca sub      edi, ecx
000000014048f2cc mov      rcx, r12
000000014048f2cf call     0x14038e3bc
000000014048f2d4 mov      ecx, eax
000000014048f2d6 mov      eax, ebx
000000014048f2d8 imul     ecx
000000014048f2da mov      rcx, r12
000000014048f2dd mov      ebx, edx
000000014048f2df mov      edx, dword ptr [rsp + 0x170]
000000014048f2e6 sar      ebx, 2
000000014048f2e9 mov      eax, ebx
000000014048f2eb shr      eax, 0x1f
000000014048f2ee add      ebx, eax
000000014048f2f0 call     0x14038b838
000000014048f2f5 mov      dword ptr [rsp + 0x48], r14d
000000014048f2fa lea      r8, [rip + 0x16808f]
000000014048f301 mov      dword ptr [rsp + 0x40], ebp
000000014048f305 lea      r9, [rip + 0x1caac4]
000000014048f30c test     al, al
000000014048f30e mov      qword ptr [rsp + 0x38], rsi
000000014048f313 mov      dword ptr [rsp + 0x30], edi
000000014048f317 lea      rax, [rip + 0x168a82]
000000014048f31e cmovne   r8, rax
000000014048f322 mov      ecx, r15d
000000014048f325 mov      edx, r13d
000000014048f328 mov      dword ptr [rsp + 0x28], ebx
000000014048f32c sub      edx, r15d
000000014048f32f mov      qword ptr [rsp + 0x20], r8
000000014048f334 add      rcx, qword ptr [rsp + 0x188]
000000014048f33c lea      r8, [rip + 0x1caa4d]
000000014048f343 call     0x140044426
000000014048f348 add      r15d, eax
000000014048f34b mov      edx, dword ptr [rsp + 0x198]
000000014048f352 or       r9d, 0xffffffff
000000014048f356 mov      r8d, 0x12034
000000014048f35c mov      rcx, r12
000000014048f35f call     0x1404663c4
000000014048f364 mov      edi, eax
000000014048f366 cmp      r15d, r13d
000000014048f369 jae      0x14048f493
000000014048f36f mov      ebx, eax
000000014048f371 shr      edi, 0x18
000000014048f374 shr      ebx, 0x10
000000014048f377 and      edi, 0x7f
000000014048f37a and      ebx, 0x7f
000000014048f37d mov      dword ptr [rsp + 0x170], edi
000000014048f384 mov      edx, ebx
000000014048f386 mov      rcx, r12
000000014048f389 call     0x14038e3bc
000000014048f38e mov      r14d, eax
000000014048f391 mov      esi, 0x66666667
000000014048f396 mov      eax, esi
000000014048f398 imul     r14d
000000014048f39b sar      edx, 2
000000014048f39e mov      ecx, edx
000000014048f3a0 shr      ecx, 0x1f
000000014048f3a3 add      edx, ecx
000000014048f3a5 lea      ecx, [rdx + rdx*4]
000000014048f3a8 mov      edx, ebx
000000014048f3aa add      ecx, ecx
000000014048f3ac sub      r14d, ecx
000000014048f3af mov      rcx, r12
000000014048f3b2 call     0x14038e3bc
000000014048f3b7 mov      ecx, eax
000000014048f3b9 mov      eax, esi
000000014048f3bb imul     ecx
000000014048f3bd mov      rcx, r12
000000014048f3c0 mov      ebp, edx
000000014048f3c2 mov      edx, ebx
000000014048f3c4 sar      ebp, 2
000000014048f3c7 mov      eax, ebp
000000014048f3c9 shr      eax, 0x1f
000000014048f3cc add      ebp, eax
000000014048f3ce call     0x14038b838
000000014048f3d3 test     al, al
000000014048f3d5 lea      rsi, [rip + 0x167fb4]
000000014048f3dc lea      rax, [rip + 0x1689bd]
000000014048f3e3 mov      edx, edi
000000014048f3e5 mov      rcx, r12
000000014048f3e8 cmovne   rsi, rax
000000014048f3ec call     0x14038e3bc
000000014048f3f1 mov      edi, eax
000000014048f3f3 mov      ebx, 0x66666667
000000014048f3f8 mov      eax, ebx
000000014048f3fa imul     edi
000000014048f3fc sar      edx, 2
000000014048f3ff mov      ecx, edx
000000014048f401 shr      ecx, 0x1f
000000014048f404 add      edx, ecx
000000014048f406 lea      ecx, [rdx + rdx*4]
000000014048f409 mov      edx, dword ptr [rsp + 0x170]
000000014048f410 add      ecx, ecx
000000014048f412 sub      edi, ecx
000000014048f414 mov      rcx, r12
000000014048f417 call     0x14038e3bc
000000014048f41c mov      ecx, eax
000000014048f41e mov      eax, ebx
000000014048f420 imul     ecx
000000014048f422 mov      rcx, r12
000000014048f425 mov      ebx, edx
000000014048f427 mov      edx, dword ptr [rsp + 0x170]
000000014048f42e sar      ebx, 2
000000014048f431 mov      eax, ebx
000000014048f433 shr      eax, 0x1f
000000014048f436 add      ebx, eax
000000014048f438 call     0x14038b838
000000014048f43d mov      dword ptr [rsp + 0x48], r14d
000000014048f442 lea      r8, [rip + 0x167f47]
000000014048f449 mov      dword ptr [rsp + 0x40], ebp
000000014048f44d lea      r9, [rip + 0x1ca99c]
000000014048f454 test     al, al
000000014048f456 mov      qword ptr [rsp + 0x38], rsi
000000014048f45b mov      dword ptr [rsp + 0x30], edi
000000014048f45f lea      rax, [rip + 0x16893a]
000000014048f466 cmovne   r8, rax
000000014048f46a mov      ecx, r15d
000000014048f46d mov      edx, r13d
000000014048f470 mov      dword ptr [rsp + 0x28], ebx
000000014048f474 sub      edx, r15d
000000014048f477 mov      qword ptr [rsp + 0x20], r8
000000014048f47c add      rcx, qword ptr [rsp + 0x188]
000000014048f484 lea      r8, [rip + 0x1ca905]
000000014048f48b call     0x140044426
000000014048f490 add      r15d, eax
000000014048f493 mov      edx, dword ptr [rsp + 0x198]
000000014048f49a or       r9d, 0xffffffff
000000014048f49e mov      r8d, 0x12038
000000014048f4a4 mov      rcx, r12
000000014048f4a7 call     0x1404663c4
000000014048f4ac mov      edi, eax
000000014048f4ae cmp      r15d, r13d
000000014048f4b1 jae      0x14048f5db
000000014048f4b7 mov      ebx, eax
000000014048f4b9 shr      edi, 0x18
000000014048f4bc shr      ebx, 0x10
000000014048f4bf and      edi, 0x7f
000000014048f4c2 and      ebx, 0x7f
000000014048f4c5 mov      dword ptr [rsp + 0x198], edi
000000014048f4cc mov      edx, ebx
000000014048f4ce mov      rcx, r12
000000014048f4d1 call     0x14038e3bc
000000014048f4d6 mov      r14d, eax
000000014048f4d9 mov      esi, 0x66666667
000000014048f4de mov      eax, esi
000000014048f4e0 imul     r14d
000000014048f4e3 sar      edx, 2
000000014048f4e6 mov      ecx, edx
000000014048f4e8 shr      ecx, 0x1f
000000014048f4eb add      edx, ecx
000000014048f4ed lea      ecx, [rdx + rdx*4]
000000014048f4f0 mov      edx, ebx
000000014048f4f2 add      ecx, ecx
000000014048f4f4 sub      r14d, ecx
000000014048f4f7 mov      rcx, r12
000000014048f4fa call     0x14038e3bc
000000014048f4ff mov      ecx, eax
000000014048f501 mov      eax, esi
000000014048f503 imul     ecx
000000014048f505 mov      rcx, r12
000000014048f508 mov      ebp, edx
000000014048f50a mov      edx, ebx
000000014048f50c sar      ebp, 2
000000014048f50f mov      eax, ebp
000000014048f511 shr      eax, 0x1f
000000014048f514 add      ebp, eax
000000014048f516 call     0x14038b838
000000014048f51b test     al, al
000000014048f51d lea      rsi, [rip + 0x167e6c]
000000014048f524 lea      rax, [rip + 0x168875]
000000014048f52b mov      edx, edi
000000014048f52d mov      rcx, r12
000000014048f530 cmovne   rsi, rax
000000014048f534 call     0x14038e3bc
000000014048f539 mov      edi, eax
000000014048f53b mov      ebx, 0x66666667
000000014048f540 mov      eax, ebx
000000014048f542 imul     edi
000000014048f544 sar      edx, 2
000000014048f547 mov      ecx, edx
000000014048f549 shr      ecx, 0x1f
000000014048f54c add      edx, ecx
000000014048f54e lea      ecx, [rdx + rdx*4]
000000014048f551 mov      edx, dword ptr [rsp + 0x198]
000000014048f558 add      ecx, ecx
000000014048f55a sub      edi, ecx
000000014048f55c mov      rcx, r12
000000014048f55f call     0x14038e3bc
000000014048f564 mov      ecx, eax
000000014048f566 mov      eax, ebx
000000014048f568 imul     ecx
000000014048f56a mov      rcx, r12
000000014048f56d mov      ebx, edx
000000014048f56f mov      edx, dword ptr [rsp + 0x198]
000000014048f576 sar      ebx, 2
000000014048f579 mov      eax, ebx
000000014048f57b shr      eax, 0x1f
000000014048f57e add      ebx, eax
000000014048f580 call     0x14038b838
000000014048f585 mov      dword ptr [rsp + 0x48], r14d
000000014048f58a lea      r8, [rip + 0x167dff]
000000014048f591 mov      dword ptr [rsp + 0x40], ebp
000000014048f595 lea      r9, [rip + 0x1ca874]
000000014048f59c test     al, al
000000014048f59e mov      qword ptr [rsp + 0x38], rsi
000000014048f5a3 mov      dword ptr [rsp + 0x30], edi
000000014048f5a7 lea      rax, [rip + 0x1687f2]
000000014048f5ae cmovne   r8, rax
000000014048f5b2 mov      ecx, r15d
000000014048f5b5 mov      edx, r13d
000000014048f5b8 mov      dword ptr [rsp + 0x28], ebx
000000014048f5bc sub      edx, r15d
000000014048f5bf mov      qword ptr [rsp + 0x20], r8
000000014048f5c4 add      rcx, qword ptr [rsp + 0x188]
000000014048f5cc lea      r8, [rip + 0x1ca7bd]
000000014048f5d3 call     0x140044426
000000014048f5d8 add      r15d, eax
000000014048f5db mov      rax, qword ptr [rsp + 0x180]
000000014048f5e3 mov      rbx, qword ptr [rsp + 0x178]
000000014048f5eb mov      dword ptr [rax], r15d
000000014048f5ee mov      rax, qword ptr [rsp + 0x190]
000000014048f5f6 mov      dword ptr [rax], r13d
000000014048f5f9 add      rsp, 0x130
000000014048f600 pop      r15
000000014048f602 pop      r14
000000014048f604 pop      r13
000000014048f606 pop      r12
000000014048f608 pop      rdi
000000014048f609 pop      rsi
000000014048f60a pop      rbp
000000014048f60b ret      