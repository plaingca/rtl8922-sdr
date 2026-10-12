00000001405edfec mov      rax, rsp
00000001405edfef mov      qword ptr [rax + 8], rbx
00000001405edff3 mov      qword ptr [rax + 0x10], rsi
00000001405edff7 mov      qword ptr [rax + 0x18], rdi
00000001405edffb mov      qword ptr [rax + 0x20], r12
00000001405edfff push     r15
00000001405ee001 sub      rsp, 0x40
00000001405ee005 movsxd   rdi, ecx
00000001405ee008 lea      rsi, [rip + 0x6e6339]
00000001405ee00f mov      rax, rdi
00000001405ee012 mov      rbx, rdx
00000001405ee015 inc      edi
00000001405ee017 mov      rsi, qword ptr [rsi + rax*8]
00000001405ee01b mov      rcx, qword ptr [rip + 0x331fde]
00000001405ee022 lea      r15, [rip + 0x331fd7]
00000001405ee029 lea      r12, [rip + 0x318488]
00000001405ee030 cmp      rcx, r15
00000001405ee033 je       0x1405ee056
00000001405ee035 cmp      byte ptr [rcx + 0x29], 4
00000001405ee039 jb       0x1405ee056
00000001405ee03b mov      eax, dword ptr [rcx + 0x2c]
00000001405ee03e test     al, 8
00000001405ee040 je       0x1405ee056
00000001405ee042 mov      rcx, qword ptr [rcx + 0x18]
00000001405ee046 mov      edx, 0x95
00000001405ee04b mov      r9, rsi
00000001405ee04e mov      r8, r12
00000001405ee051 call     0x140008874
00000001405ee056 mov      rdx, rbx
00000001405ee059 mov      ecx, edi
00000001405ee05b call     0x1405ed1e4
00000001405ee060 mov      rcx, qword ptr [rip + 0x331f99]
00000001405ee067 cmp      rcx, r15
00000001405ee06a je       0x1405ee09f
00000001405ee06c cmp      byte ptr [rcx + 0x29], 4
00000001405ee070 jb       0x1405ee09f
00000001405ee072 mov      eax, dword ptr [rcx + 0x2c]
00000001405ee075 test     al, 8
00000001405ee077 je       0x1405ee09f
00000001405ee079 movzx    r8d, byte ptr [rbx + 4]
00000001405ee07e mov      edx, 0x96
00000001405ee083 movzx    eax, byte ptr [rbx + 5]
00000001405ee087 mov      r9, rsi
00000001405ee08a mov      rcx, qword ptr [rcx + 0x18]
00000001405ee08e mov      dword ptr [rsp + 0x28], eax
00000001405ee092 mov      dword ptr [rsp + 0x20], r8d
00000001405ee097 mov      r8, r12
00000001405ee09a call     0x140002b04
00000001405ee09f mov      eax, dword ptr [rbx]
00000001405ee0a1 test     al, 1
00000001405ee0a3 je       0x1405ee0dd
00000001405ee0a5 mov      rcx, qword ptr [rip + 0x331f54]
00000001405ee0ac cmp      rcx, r15
00000001405ee0af je       0x1405ee0d2
00000001405ee0b1 cmp      byte ptr [rcx + 0x29], 4
00000001405ee0b5 jb       0x1405ee0d2
00000001405ee0b7 mov      eax, dword ptr [rcx + 0x2c]
00000001405ee0ba test     al, 8
00000001405ee0bc je       0x1405ee0d2
00000001405ee0be mov      rcx, qword ptr [rcx + 0x18]
00000001405ee0c2 mov      edx, 0x97
00000001405ee0c7 mov      r9, rsi
00000001405ee0ca mov      r8, r12
00000001405ee0cd call     0x140008874
00000001405ee0d2 lea      rdx, [rbx + 8]
00000001405ee0d6 mov      ecx, edi
00000001405ee0d8 call     0x1405ed318
00000001405ee0dd mov      eax, dword ptr [rbx]
00000001405ee0df test     al, 2
00000001405ee0e1 je       0x1405ee11b
00000001405ee0e3 mov      rcx, qword ptr [rip + 0x331f16]
00000001405ee0ea cmp      rcx, r15
00000001405ee0ed je       0x1405ee110
00000001405ee0ef cmp      byte ptr [rcx + 0x29], 4
00000001405ee0f3 jb       0x1405ee110
00000001405ee0f5 mov      eax, dword ptr [rcx + 0x2c]
00000001405ee0f8 test     al, 8
00000001405ee0fa je       0x1405ee110
00000001405ee0fc mov      rcx, qword ptr [rcx + 0x18]
00000001405ee100 mov      edx, 0x98
00000001405ee105 mov      r9, rsi
00000001405ee108 mov      r8, r12
00000001405ee10b call     0x140008874
00000001405ee110 lea      rdx, [rbx + 0x30]
00000001405ee114 mov      ecx, edi
00000001405ee116 call     0x1405ecd2c
00000001405ee11b mov      eax, dword ptr [rbx]
00000001405ee11d test     al, 4
00000001405ee11f je       0x1405ee159
00000001405ee121 mov      rcx, qword ptr [rip + 0x331ed8]
00000001405ee128 cmp      rcx, r15
00000001405ee12b je       0x1405ee14e
00000001405ee12d cmp      byte ptr [rcx + 0x29], 4
00000001405ee131 jb       0x1405ee14e
00000001405ee133 mov      eax, dword ptr [rcx + 0x2c]
00000001405ee136 test     al, 8
00000001405ee138 je       0x1405ee14e
00000001405ee13a mov      rcx, qword ptr [rcx + 0x18]
00000001405ee13e mov      edx, 0x99
00000001405ee143 mov      r9, rsi
00000001405ee146 mov      r8, r12
00000001405ee149 call     0x140008874
00000001405ee14e lea      rdx, [rbx + 0x50]
00000001405ee152 mov      ecx, edi
00000001405ee154 call     0x1405ecd2c
00000001405ee159 mov      eax, dword ptr [rbx]
00000001405ee15b test     al, 8
00000001405ee15d je       0x1405ee1dd
00000001405ee15f mov      rcx, qword ptr [rip + 0x331e9a]
00000001405ee166 cmp      rcx, r15
00000001405ee169 je       0x1405ee18c
00000001405ee16b cmp      byte ptr [rcx + 0x29], 4
00000001405ee16f jb       0x1405ee18c
00000001405ee171 mov      eax, dword ptr [rcx + 0x2c]
00000001405ee174 test     al, 8
00000001405ee176 je       0x1405ee18c
00000001405ee178 mov      rcx, qword ptr [rcx + 0x18]
00000001405ee17c mov      edx, 0x9a
00000001405ee181 mov      r9, rsi
00000001405ee184 mov      r8, r12
00000001405ee187 call     0x140008874
00000001405ee18c mov      rdx, qword ptr [rbx + 0x78]
00000001405ee190 test     rdx, rdx
00000001405ee193 je       0x1405ee1dd
00000001405ee195 mov      rcx, qword ptr [rip + 0x331e64]
00000001405ee19c cmp      rcx, r15
00000001405ee19f je       0x1405ee1dd
00000001405ee1a1 cmp      byte ptr [rcx + 0x29], 4
00000001405ee1a5 jb       0x1405ee1dd
00000001405ee1a7 mov      eax, dword ptr [rcx + 0x2c]
00000001405ee1aa test     al, 8
00000001405ee1ac je       0x1405ee1dd
00000001405ee1ae mov      eax, dword ptr [rbx + 0x70]
00000001405ee1b1 lea      r9, [rip + 0x7908]
00000001405ee1b8 mov      rcx, qword ptr [rcx + 0x18]
00000001405ee1bc mov      r8, r12
00000001405ee1bf mov      qword ptr [rsp + 0x38], rax
00000001405ee1c4 lea      rax, [rsp + 0x30]
00000001405ee1c9 mov      qword ptr [rsp + 0x30], rdx
00000001405ee1ce mov      edx, 0x9b
00000001405ee1d3 mov      qword ptr [rsp + 0x20], rax
00000001405ee1d8 call     0x140001c88
00000001405ee1dd mov      rbx, qword ptr [rsp + 0x50]
00000001405ee1e2 mov      rsi, qword ptr [rsp + 0x58]
00000001405ee1e7 mov      rdi, qword ptr [rsp + 0x60]
00000001405ee1ec mov      r12, qword ptr [rsp + 0x68]
00000001405ee1f1 add      rsp, 0x40
00000001405ee1f5 pop      r15
00000001405ee1f7 ret      