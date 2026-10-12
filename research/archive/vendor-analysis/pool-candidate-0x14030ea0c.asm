000000014030ea0c mov      rax, rsp
000000014030ea0f mov      qword ptr [rax + 8], rbx
000000014030ea13 mov      qword ptr [rax + 0x10], rbp
000000014030ea17 mov      qword ptr [rax + 0x18], rsi
000000014030ea1b mov      qword ptr [rax + 0x20], rdi
000000014030ea1f push     r12
000000014030ea21 push     r14
000000014030ea23 push     r15
000000014030ea25 sub      rsp, 0x30
000000014030ea29 mov      rbx, qword ptr [rcx + 0x9a0]
000000014030ea30 mov      rdi, rcx
000000014030ea33 add      rbx, 0x32d4
000000014030ea3a mov      rcx, qword ptr [rip + 0x6115bf]
000000014030ea41 lea      rbp, [rip + 0x6115b8]
000000014030ea48 cmp      rcx, rbp
000000014030ea4b je       0x14030ea89
000000014030ea4d cmp      byte ptr [rcx + 0x1e9], 4
000000014030ea54 jb       0x14030ea89
000000014030ea56 mov      eax, dword ptr [rcx + 0x1ec]
000000014030ea5c test     al, al
000000014030ea5e jns      0x14030ea89
000000014030ea60 mov      eax, dword ptr [rdi + 0x13f0]
000000014030ea66 lea      r9, [rip + 0x323133]
000000014030ea6d mov      rcx, qword ptr [rcx + 0x1d8]
000000014030ea74 lea      r8, [rip + 0x3c2a15]
000000014030ea7b mov      edx, 0x52
000000014030ea80 mov      dword ptr [rsp + 0x20], eax
000000014030ea84 call     0x1400088d8
000000014030ea89 mov      eax, dword ptr [rdi + 0x13f0]
000000014030ea8f mov      r10d, 0x100000
000000014030ea95 cmp      eax, r10d
000000014030ea98 je       0x14030eb45
000000014030ea9e mov      esi, 0x1000
000000014030eaa3 test     eax, 0x1f80000
000000014030eaa8 je       0x14030eae6
000000014030eaaa mov      rcx, qword ptr [rip + 0x61154f]
000000014030eab1 cmp      rcx, rbp
000000014030eab4 je       0x14030eae6
000000014030eab6 cmp      byte ptr [rcx + 0x169], 3
000000014030eabd jb       0x14030eae6
000000014030eabf test     dword ptr [rcx + 0x16c], esi
000000014030eac5 je       0x14030eae6
000000014030eac7 mov      rcx, qword ptr [rcx + 0x158]
000000014030eace lea      r9, [rip + 0x3230cb]
000000014030ead5 mov      edx, 0x53
000000014030eada lea      r8, [rip + 0x3c29af]
000000014030eae1 call     0x140008874
000000014030eae6 cmp      byte ptr [rdi + 0x49cd], 0
000000014030eaed je       0x14030fbc1
000000014030eaf3 mov      rcx, qword ptr [rip + 0x611506]
000000014030eafa cmp      rcx, rbp
000000014030eafd je       0x14030eb2f
000000014030eaff cmp      byte ptr [rcx + 0x169], 4
000000014030eb06 jb       0x14030eb2f
000000014030eb08 test     dword ptr [rcx + 0x16c], esi
000000014030eb0e je       0x14030eb2f
000000014030eb10 mov      rcx, qword ptr [rcx + 0x158]
000000014030eb17 lea      r9, [rip + 0x323082]
000000014030eb1e mov      edx, 0x54
000000014030eb23 lea      r8, [rip + 0x3c2966]
000000014030eb2a call     0x140008874
000000014030eb2f mov      r8d, 0x292
000000014030eb35 mov      rdx, rbx
000000014030eb38 mov      rcx, rdi
000000014030eb3b call     0x1403c9a3c
000000014030eb40 jmp      0x14030fbc1
000000014030eb45 mov      eax, 0x11b6c
000000014030eb4a mov      dword ptr [rbx + 0xac], 0x7fc
000000014030eb54 mov      dword ptr [rbx + 0x28], eax
000000014030eb57 mov      r9d, 0x7f
000000014030eb5d mov      dword ptr [rbx + 0x30], eax
000000014030eb60 mov      r8d, 0x3f80
000000014030eb66 mov      dword ptr [rbx + 0x38], eax
000000014030eb69 mov      edx, 0x1fc000
000000014030eb6e mov      dword ptr [rbx + 0x40], eax
000000014030eb71 mov      ecx, 0xfe00000
000000014030eb76 mov      eax, 0x11b70
000000014030eb7b mov      dword ptr [rbx + 0x2c], r9d
000000014030eb7f mov      dword ptr [rbx + 0x48], eax
000000014030eb82 mov      dword ptr [rbx + 0x50], eax
000000014030eb85 mov      dword ptr [rbx + 0x58], eax
000000014030eb88 mov      dword ptr [rbx + 0x60], eax
000000014030eb8b mov      eax, 0x11b74
000000014030eb90 mov      dword ptr [rbx + 0x68], eax
000000014030eb93 mov      dword ptr [rbx + 0x70], eax
000000014030eb96 mov      dword ptr [rbx + 0x78], eax
000000014030eb99 mov      dword ptr [rbx + 0x80], eax
000000014030eb9f mov      eax, 0x11b78
000000014030eba4 mov      dword ptr [rbx + 0x88], eax
000000014030ebaa mov      dword ptr [rbx + 0x90], eax
000000014030ebb0 mov      dword ptr [rbx + 0x98], eax
000000014030ebb6 mov      dword ptr [rbx + 0xa0], eax
000000014030ebbc mov      eax, 0x11ad0
000000014030ebc1 mov      dword ptr [rbx + 0xa8], eax
000000014030ebc7 mov      dword ptr [rbx + 0xb0], eax
000000014030ebcd mov      eax, 0x11ad4
000000014030ebd2 mov      dword ptr [rbx + 0xb8], eax
000000014030ebd8 mov      dword ptr [rbx + 0xc0], eax
000000014030ebde mov      eax, 0x7fc00000
000000014030ebe3 mov      dword ptr [rbx + 0xc4], eax
000000014030ebe9 mov      dword ptr [rbx + 0xcc], eax
000000014030ebef mov      eax, 0x119f0
000000014030ebf4 mov      dword ptr [rbx + 0xd0], eax
000000014030ebfa mov      dword ptr [rbx + 0xd8], eax
000000014030ec00 mov      dword ptr [rbx + 0xe0], eax
000000014030ec06 mov      dword ptr [rbx + 0xe8], eax
000000014030ec0c mov      eax, 0x119f4
000000014030ec11 mov      dword ptr [rbx + 0xf0], eax
000000014030ec17 mov      dword ptr [rbx + 0xf8], eax
000000014030ec1d mov      dword ptr [rbx + 0x100], eax
000000014030ec23 mov      dword ptr [rbx + 0x108], eax
000000014030ec29 mov      dword ptr [rbx + 0x110], eax
000000014030ec2f mov      dword ptr [rbx + 0x118], eax
000000014030ec35 mov      dword ptr [rbx + 0x120], eax
000000014030ec3b mov      dword ptr [rbx + 0x34], r8d
000000014030ec3f mov      dword ptr [rbx + 0x3c], edx
000000014030ec42 mov      dword ptr [rbx + 0x44], ecx
000000014030ec45 mov      dword ptr [rbx + 0x4c], r9d
000000014030ec49 mov      dword ptr [rbx + 0x54], r8d
000000014030ec4d mov      dword ptr [rbx + 0x5c], edx
000000014030ec50 mov      dword ptr [rbx + 0x64], ecx
000000014030ec53 mov      dword ptr [rbx + 0x6c], r9d
000000014030ec57 mov      dword ptr [rbx + 0x74], r8d
000000014030ec5b mov      dword ptr [rbx + 0x7c], edx
000000014030ec5e mov      dword ptr [rbx + 0x84], ecx
000000014030ec64 mov      dword ptr [rbx + 0x8c], r9d
000000014030ec6b mov      dword ptr [rbx + 0x94], r8d
000000014030ec72 mov      dword ptr [rbx + 0x9c], edx
000000014030ec78 mov      dword ptr [rbx + 0xa4], ecx
000000014030ec7e mov      dword ptr [rbx + 0xb4], 0xff800
000000014030ec88 mov      dword ptr [rbx + 0xbc], 0x3fe000
000000014030ec92 mov      dword ptr [rbx + 0xc8], 0x11ad8
000000014030ec9c mov      dword ptr [rbx + 0xd4], 0x78000
000000014030eca6 mov      dword ptr [rbx + 0xdc], 0x780000
000000014030ecb0 mov      dword ptr [rbx + 0xe4], 0x7800000
000000014030ecba mov      dword ptr [rbx + 0xec], 0x78000000
000000014030ecc4 mov      dword ptr [rbx + 0xf4], 0xf
000000014030ecce mov      dword ptr [rbx + 0xfc], 0xf0
000000014030ecd8 mov      dword ptr [rbx + 0x104], 0xf00
000000014030ece2 mov      dword ptr [rbx + 0x10c], 0xf000
000000014030ecec mov      dword ptr [rbx + 0x114], 0xf0000
000000014030ecf6 mov      dword ptr [rbx + 0x11c], 0xf00000
000000014030ed00 mov      dword ptr [rbx + 0x124], 0xf000000
000000014030ed0a mov      dword ptr [rbx + 0x128], 0x11acc
000000014030ed14 mov      dword ptr [rbx + 0x12c], 0x10000
000000014030ed1e mov      dword ptr [rbx + 0x130], 0x20000
000000014030ed28 mov      dword ptr [rbx + 0x134], 0x40000
000000014030ed32 mov      dword ptr [rbx + 0x13c], r10d
000000014030ed39 lea      edx, [rax - 0xc]
000000014030ed3c mov      dword ptr [rbx + 0x168], edx
000000014030ed42 lea      ecx, [rax - 0x10]
000000014030ed45 mov      dword ptr [rbx + 0x158], ecx
000000014030ed4b lea      eax, [rcx + 8]
000000014030ed4e mov      dword ptr [rbx + 0x160], ecx
000000014030ed54 lea      r12d, [r9 - 0x78]
000000014030ed58 mov      dword ptr [rbx + 0x170], edx
000000014030ed5e mov      esi, 0x7000
000000014030ed63 mov      dword ptr [rbx + 0x174], esi
000000014030ed69 mov      r11d, 0xe00000
000000014030ed6f mov      dword ptr [rbx + 0x178], edx
000000014030ed75 mov      r9d, 0x1c0
000000014030ed7b mov      dword ptr [rbx + 0x138], 0x80000
000000014030ed85 mov      r10d, 0x38000
000000014030ed8b mov      dword ptr [rbx + 0x140], 0x200000
000000014030ed95 mov      r8d, 0x7000000
000000014030ed9b mov      dword ptr [rbx + 0x144], 0x400000
000000014030eda5 mov      r14d, 0x70000
000000014030edab mov      dword ptr [rbx + 0x148], 0x800000
000000014030edb5 mov      r15d, 0xe000000
000000014030edbb mov      dword ptr [rbx + 0x14c], 0x1000000
000000014030edc5 mov      ebp, 0x380000
000000014030edca mov      dword ptr [rbx + 0x150], 0x8000000
000000014030edd4 mov      dword ptr [rbx + 0x154], 0x10000000
000000014030edde mov      dword ptr [rbx + 0x15c], r14d
000000014030ede5 mov      dword ptr [rbx + 0x164], r15d
000000014030edec mov      dword ptr [rbx + 0x16c], 0x38
000000014030edf6 mov      dword ptr [rbx + 0x17c], r11d
000000014030edfd mov      dword ptr [rbx + 0x180], eax
000000014030ee03 mov      dword ptr [rbx + 0x184], r12d
000000014030ee0a mov      dword ptr [rbx + 0x188], eax
000000014030ee10 mov      dword ptr [rbx + 0x18c], 0xe00
000000014030ee1a mov      dword ptr [rbx + 0x190], eax
000000014030ee20 mov      dword ptr [rbx + 0x194], 0x1c0000
000000014030ee2a mov      dword ptr [rbx + 0x198], ecx
000000014030ee30 mov      dword ptr [rbx + 0x19c], ebp
000000014030ee36 mov      dword ptr [rbx + 0x1a0], ecx
000000014030ee3c mov      dword ptr [rbx + 0x1a4], 0x70000000
000000014030ee46 mov      dword ptr [rbx + 0x1a8], edx
000000014030ee4c mov      dword ptr [rbx + 0x1ac], r9d
000000014030ee53 mov      dword ptr [rbx + 0x1b0], edx
000000014030ee59 mov      dword ptr [rbx + 0x1b4], r10d
000000014030ee60 mov      dword ptr [rbx + 0x1b8], edx
000000014030ee66 mov      dword ptr [rbx + 0x1bc], r8d
000000014030ee6d mov      dword ptr [rbx + 0x1c0], eax
000000014030ee73 mov      dword ptr [rbx + 0x1c4], 0x38
000000014030ee7d mov      dword ptr [rbx + 0x1c8], eax
000000014030ee83 mov      dword ptr [rbx + 0x1cc], esi
000000014030ee89 mov      esi, 0x1c00000
000000014030ee8e mov      dword ptr [rbx + 0x1d0], eax
000000014030ee94 mov      dword ptr [rbx + 0x1d4], r11d
000000014030ee9b mov      dword ptr [rbx + 0x1d8], ecx
000000014030eea1 mov      ecx, 0xffff0000
000000014030eea6 mov      dword ptr [rbx + 0x1dc], esi
000000014030eeac mov      dword ptr [rbx + 0x1e0], edx
000000014030eeb2 mov      dword ptr [rbx + 0x1e4], r12d
000000014030eeb9 mov      dword ptr [rbx + 0x1e8], edx
000000014030eebf mov      dword ptr [rbx + 0x1ec], 0xe00
000000014030eec9 mov      dword ptr [rbx + 0x1f0], edx
000000014030eecf mov      dword ptr [rbx + 0x1f4], 0x1c0000
000000014030eed9 mov      dword ptr [rbx + 0x1f8], edx
000000014030eedf mov      edx, 0xffff
000000014030eee4 mov      dword ptr [rbx + 0x1fc], 0x38000000
000000014030eeee mov      dword ptr [rbx + 0x200], eax
000000014030eef4 mov      dword ptr [rbx + 0x204], r9d
000000014030eefb mov      dword ptr [rbx + 0x208], eax
000000014030ef01 mov      dword ptr [rbx + 0x20c], r10d
000000014030ef08 mov      dword ptr [rbx + 0x210], eax
000000014030ef0e mov      eax, 0x11a9c
000000014030ef13 mov      dword ptr [rbx + 0x214], r8d
000000014030ef1a mov      dword ptr [rbx + 0x218], eax
000000014030ef20 mov      dword ptr [rbx + 0x21c], edx
000000014030ef26 mov      dword ptr [rbx + 0x238], eax
000000014030ef2c mov      eax, 0x11aa0
000000014030ef31 mov      dword ptr [rbx + 0x23c], ecx
000000014030ef37 mov      dword ptr [rbx + 0x258], eax
000000014030ef3d mov      dword ptr [rbx + 0x25c], edx
000000014030ef43 mov      dword ptr [rbx + 0x278], eax
000000014030ef49 mov      dword ptr [rbx + 0x27c], ecx
000000014030ef4f lea      r11d, [r12 + 0x18]
000000014030ef54 mov      eax, 0x11aa4
000000014030ef59 mov      dword ptr [rbx + 0x298], eax
000000014030ef5f mov      r12d, 0x119bc
000000014030ef65 mov      dword ptr [rbx + 0x29c], edx
000000014030ef6b mov      r10d, 0x3e0
000000014030ef71 mov      dword ptr [rbx + 0x2b8], eax
000000014030ef77 mov      r9d, 0x7c00
000000014030ef7d mov      dword ptr [rbx + 0x2bc], ecx
000000014030ef83 mov      eax, 0x11aa8
000000014030ef88 mov      dword ptr [rbx + 0x2d8], eax
000000014030ef8e mov      r8d, 0xf8000
000000014030ef94 mov      dword ptr [rbx + 0x2dc], edx
000000014030ef9a mov      dword ptr [rbx + 0x2f8], eax
000000014030efa0 mov      eax, 0x11aac
000000014030efa5 mov      dword ptr [rbx + 0x2fc], ecx
000000014030efab mov      dword ptr [rbx + 0x230], eax
000000014030efb1 mov      dword ptr [rbx + 0x234], edx
000000014030efb7 mov      dword ptr [rbx + 0x250], eax
000000014030efbd mov      eax, 0x11ab0
000000014030efc2 mov      dword ptr [rbx + 0x254], ecx
000000014030efc8 mov      dword ptr [rbx + 0x270], eax
000000014030efce mov      dword ptr [rbx + 0x274], edx
000000014030efd4 mov      dword ptr [rbx + 0x290], eax
000000014030efda mov      eax, 0x11ab4
000000014030efdf mov      dword ptr [rbx + 0x294], ecx
000000014030efe5 mov      dword ptr [rbx + 0x2b0], eax
000000014030efeb mov      dword ptr [rbx + 0x2b4], edx
000000014030eff1 mov      dword ptr [rbx + 0x2d0], eax
000000014030eff7 mov      eax, 0x11ab8
000000014030effc mov      dword ptr [rbx + 0x2d4], ecx
000000014030f002 mov      dword ptr [rbx + 0x2f0], eax
000000014030f008 mov      dword ptr [rbx + 0x2f4], edx
000000014030f00e mov      edx, 0x1f00000
000000014030f013 mov      dword ptr [rbx + 0x310], eax
000000014030f019 mov      eax, 0x11abc
000000014030f01e mov      dword ptr [rbx + 0x314], ecx
000000014030f024 mov      ecx, 0x3e000000
000000014030f029 mov      dword ptr [rbx + 0x220], eax
000000014030f02f mov      dword ptr [rbx + 0x224], r11d
000000014030f036 mov      dword ptr [rbx + 0x228], eax
000000014030f03c mov      dword ptr [rbx + 0x22c], r10d
000000014030f043 mov      dword ptr [rbx + 0x240], eax
000000014030f049 mov      dword ptr [rbx + 0x244], r9d
000000014030f050 mov      dword ptr [rbx + 0x248], eax
000000014030f056 mov      dword ptr [rbx + 0x24c], r8d
000000014030f05d mov      dword ptr [rbx + 0x260], eax
000000014030f063 mov      dword ptr [rbx + 0x264], edx
000000014030f069 mov      dword ptr [rbx + 0x268], eax
000000014030f06f mov      eax, 0x11ac0
000000014030f074 mov      dword ptr [rbx + 0x26c], ecx
000000014030f07a mov      dword ptr [rbx + 0x280], eax
000000014030f080 mov      dword ptr [rbx + 0x284], r11d
000000014030f087 mov      dword ptr [rbx + 0x288], eax
000000014030f08d mov      dword ptr [rbx + 0x28c], r10d
000000014030f094 mov      dword ptr [rbx + 0x2a0], eax
000000014030f09a mov      dword ptr [rbx + 0x2a4], r9d
000000014030f0a1 mov      dword ptr [rbx + 0x2a8], eax
000000014030f0a7 mov      dword ptr [rbx + 0x2ac], r8d
000000014030f0ae mov      dword ptr [rbx + 0x2c0], eax
000000014030f0b4 mov      dword ptr [rbx + 0x2c4], edx
000000014030f0ba mov      dword ptr [rbx + 0x2c8], eax
000000014030f0c0 mov      eax, 0x11ac4
000000014030f0c5 mov      dword ptr [rbx + 0x2cc], ecx
000000014030f0cb mov      dword ptr [rbx + 0x2e0], eax
000000014030f0d1 mov      dword ptr [rbx + 0x2e4], r11d
000000014030f0d8 mov      dword ptr [rbx + 0x2e8], eax
000000014030f0de mov      dword ptr [rbx + 0x2ec], r10d
000000014030f0e5 mov      dword ptr [rbx + 0x300], eax
000000014030f0eb mov      dword ptr [rbx + 0x304], r9d
000000014030f0f2 mov      dword ptr [rbx + 0x308], eax
000000014030f0f8 mov      dword ptr [rbx + 0x30c], r8d
000000014030f0ff mov      dword ptr [rbx + 0x318], r12d
000000014030f106 mov      dword ptr [rbx + 0x31c], r14d
000000014030f10d mov      dword ptr [rbx + 0x320], r12d
000000014030f114 mov      dword ptr [rbx + 0x324], ebp
000000014030f11a mov      dword ptr [rbx + 0x328], r12d
000000014030f121 mov      dword ptr [rbx + 0x32c], esi
000000014030f127 mov      dword ptr [rbx + 0x330], r12d
000000014030f12e mov      dword ptr [rbx + 0x334], r15d
000000014030f135 mov      dword ptr [rbx + 0x338], r12d
000000014030f13c mov      dword ptr [rbx + 0x33c], 0x70000000
000000014030f146 lea      edx, [r11 - 0x18]
000000014030f14a lea      r8d, [r11 + 0x19]
000000014030f14e mov      ecx, 0x1c0
000000014030f153 lea      eax, [r12 + 0xc]
000000014030f158 mov      esi, 0x1000
000000014030f15d lea      r15d, [r12 + 4]
000000014030f162 mov      dword ptr [rbx + 0x340], r15d
000000014030f169 lea      r11d, [rdx + 1]
000000014030f16d mov      dword ptr [rbx + 0x344], edx
000000014030f173 lea      r10d, [rdx + 9]
000000014030f177 mov      dword ptr [rbx + 0x348], r15d
000000014030f17e lea      r9d, [rdx + 0x19]
000000014030f182 mov      dword ptr [rbx + 0x34c], r8d
000000014030f189 mov      dword ptr [rbx + 0x350], r15d
000000014030f190 mov      dword ptr [rbx + 0x354], ecx
000000014030f196 mov      dword ptr [rbx + 0x358], eax
000000014030f19c mov      dword ptr [rbx + 0x35c], 0xe00000
000000014030f1a6 mov      dword ptr [rbx + 0x360], eax
000000014030f1ac mov      dword ptr [rbx + 0x364], 0x7000000
000000014030f1b6 mov      dword ptr [rbx + 0x368], eax
000000014030f1bc lea      eax, [r12 + 0x10]
000000014030f1c1 mov      dword ptr [rbx + 0x36c], 0x38000000
000000014030f1cb mov      dword ptr [rbx + 0x370], eax
000000014030f1d1 mov      dword ptr [rbx + 0x374], edx
000000014030f1d7 mov      dword ptr [rbx + 0x378], eax
000000014030f1dd mov      dword ptr [rbx + 0x37c], r8d
000000014030f1e4 lea      r8d, [r12 - 8]
000000014030f1e9 mov      dword ptr [rbx + 0x380], eax
000000014030f1ef mov      dword ptr [rbx + 0x384], ecx
000000014030f1f5 mov      ecx, 0x8000
000000014030f1fa mov      dword ptr [rbx + 0x388], eax
000000014030f200 mov      dword ptr [rbx + 0x38c], 0xe00
000000014030f20a mov      dword ptr [rbx + 0x390], eax
000000014030f210 mov      dword ptr [rbx + 0x394], 0x7000
000000014030f21a mov      dword ptr [rbx + 0x398], r8d
000000014030f221 mov      dword ptr [rbx + 0x39c], 1
000000014030f22b mov      dword ptr [rbx + 0x3a0], r8d
000000014030f232 mov      dword ptr [rbx + 0x3a4], 2
000000014030f23c mov      dword ptr [rbx + 0x3a8], r8d
000000014030f243 mov      dword ptr [rbx + 0x3ac], 4
000000014030f24d mov      dword ptr [rbx + 0x3b0], r8d
000000014030f254 mov      dword ptr [rbx + 0x3b4], r11d
000000014030f25b mov      dword ptr [rbx + 0x3b8], r8d
000000014030f262 mov      dword ptr [rbx + 0x3bc], r10d
000000014030f269 mov      dword ptr [rbx + 0x3c0], r8d
000000014030f270 mov      dword ptr [rbx + 0x3c4], r9d
000000014030f277 mov      dword ptr [rbx + 0x3c8], r8d
000000014030f27e mov      dword ptr [rbx + 0x3cc], 0x40
000000014030f288 mov      dword ptr [rbx + 0x3d0], r8d
000000014030f28f mov      dword ptr [rbx + 0x3d4], 0x80
000000014030f299 mov      dword ptr [rbx + 0x3d8], eax
000000014030f29f mov      dword ptr [rbx + 0x3dc], ecx
000000014030f2a5 mov      dword ptr [rbx + 0x3e0], eax
000000014030f2ab mov      dword ptr [rbx + 0x3e4], 0x10000
000000014030f2b5 mov      dword ptr [rbx + 0x3e8], eax
000000014030f2bb mov      dword ptr [rbx + 0x3ec], 0x20000
000000014030f2c5 mov      dword ptr [rbx + 0x3f0], eax
000000014030f2cb mov      dword ptr [rbx + 0x3f4], 0x40000
000000014030f2d5 mov      dword ptr [rbx + 0x3f8], eax
000000014030f2db mov      dword ptr [rbx + 0x3fc], 0x80000
000000014030f2e5 mov      dword ptr [rbx + 0x400], eax
000000014030f2eb mov      dword ptr [rbx + 0x404], 0x100000
000000014030f2f5 mov      dword ptr [rbx + 0x408], eax
000000014030f2fb mov      dword ptr [rbx + 0x40c], 0x200000
000000014030f305 mov      dword ptr [rbx + 0x410], eax
000000014030f30b mov      dword ptr [rbx + 0x414], 0x400000
000000014030f315 mov      dword ptr [rbx + 0x418], r8d
000000014030f31c mov      dword ptr [rbx + 0x41c], 0x100
000000014030f326 mov      dword ptr [rbx + 0x420], r8d
000000014030f32d mov      dword ptr [rbx + 0x424], 0x200
000000014030f337 mov      dword ptr [rbx + 0x428], r8d
000000014030f33e mov      dword ptr [rbx + 0x42c], 0x400
000000014030f348 mov      dword ptr [rbx + 0x430], r8d
000000014030f34f mov      dword ptr [rbx + 0x434], 0x800
000000014030f359 mov      dword ptr [rbx + 0x438], r8d
000000014030f360 mov      dword ptr [rbx + 0x43c], esi
000000014030f366 mov      dword ptr [rbx + 0x440], r8d
000000014030f36d mov      dword ptr [rbx + 0x444], 0x2000
000000014030f377 mov      dword ptr [rbx + 0x448], r8d
000000014030f37e mov      dword ptr [rbx + 0x44c], 0x4000
000000014030f388 mov      dword ptr [rbx + 0x450], r8d
000000014030f38f mov      edx, 0x2000000
000000014030f394 mov      dword ptr [rbx + 0x454], ecx
000000014030f39a mov      ebp, 0x20000000
000000014030f39f mov      dword ptr [rbx + 0x458], eax
000000014030f3a5 mov      ecx, 0x4000000
000000014030f3aa mov      dword ptr [rbx + 0x45c], 0x800000
000000014030f3b4 mov      r14d, 0x40000000
000000014030f3ba mov      dword ptr [rbx + 0x460], eax
000000014030f3c0 mov      dword ptr [rbx + 0x464], 0x1000000
000000014030f3ca mov      dword ptr [rbx + 0x468], eax
000000014030f3d0 mov      dword ptr [rbx + 0x46c], edx
000000014030f3d6 mov      dword ptr [rbx + 0x470], eax
000000014030f3dc mov      dword ptr [rbx + 0x474], ecx
000000014030f3e2 mov      dword ptr [rbx + 0x478], eax
000000014030f3e8 mov      dword ptr [rbx + 0x47c], 0x8000000
000000014030f3f2 mov      dword ptr [rbx + 0x480], eax
000000014030f3f8 mov      dword ptr [rbx + 0x484], 0x10000000
000000014030f402 mov      dword ptr [rbx + 0x488], eax
000000014030f408 mov      dword ptr [rbx + 0x48c], ebp
000000014030f40e mov      dword ptr [rbx + 0x490], eax
000000014030f414 lea      eax, [r12 - 4]
000000014030f419 mov      dword ptr [rbx + 0x494], r14d
000000014030f420 mov      dword ptr [rbx + 0x498], r8d
000000014030f427 mov      dword ptr [rbx + 0x49c], 0x10000
000000014030f431 mov      dword ptr [rbx + 0x4a0], r8d
000000014030f438 mov      dword ptr [rbx + 0x4a4], 0x20000
000000014030f442 mov      dword ptr [rbx + 0x4a8], r8d
000000014030f449 mov      dword ptr [rbx + 0x4ac], 0x40000
000000014030f453 mov      dword ptr [rbx + 0x4b0], r8d
000000014030f45a mov      dword ptr [rbx + 0x4b4], 0x80000
000000014030f464 mov      dword ptr [rbx + 0x4b8], r8d
000000014030f46b mov      dword ptr [rbx + 0x4bc], 0x100000
000000014030f475 mov      dword ptr [rbx + 0x4c0], r8d
000000014030f47c mov      dword ptr [rbx + 0x4c4], 0x200000
000000014030f486 mov      dword ptr [rbx + 0x4c8], r8d
000000014030f48d mov      dword ptr [rbx + 0x4cc], 0x400000
000000014030f497 mov      dword ptr [rbx + 0x4d0], r8d
000000014030f49e mov      dword ptr [rbx + 0x4d4], 0x800000
000000014030f4a8 mov      dword ptr [rbx + 0x4d8], eax
000000014030f4ae mov      dword ptr [rbx + 0x4dc], 0x100
000000014030f4b8 mov      dword ptr [rbx + 0x4e0], eax
000000014030f4be mov      dword ptr [rbx + 0x4e4], 0x200
000000014030f4c8 mov      dword ptr [rbx + 0x4e8], eax
000000014030f4ce mov      dword ptr [rbx + 0x4ec], 0x400
000000014030f4d8 mov      dword ptr [rbx + 0x4f0], eax
000000014030f4de mov      dword ptr [rbx + 0x4f4], 0x800
000000014030f4e8 mov      dword ptr [rbx + 0x4f8], eax
000000014030f4ee mov      dword ptr [rbx + 0x4fc], esi
000000014030f4f4 mov      dword ptr [rbx + 0x500], eax
000000014030f4fa mov      dword ptr [rbx + 0x504], 0x2000
000000014030f504 mov      dword ptr [rbx + 0x508], eax
000000014030f50a mov      dword ptr [rbx + 0x50c], 0x4000
000000014030f514 mov      dword ptr [rbx + 0x510], eax
000000014030f51a mov      dword ptr [rbx + 0x514], 0x8000
000000014030f524 mov      dword ptr [rbx + 0x518], r8d
000000014030f52b mov      dword ptr [rbx + 0x51c], 0x1000000
000000014030f535 mov      dword ptr [rbx + 0x520], r8d
000000014030f53c mov      dword ptr [rbx + 0x524], edx
000000014030f542 mov      dword ptr [rbx + 0x528], r8d
000000014030f549 mov      dword ptr [rbx + 0x52c], ecx
000000014030f54f mov      dword ptr [rbx + 0x530], r8d
000000014030f556 mov      dword ptr [rbx + 0x534], 0x8000000
000000014030f560 mov      dword ptr [rbx + 0x538], r8d
000000014030f567 mov      dword ptr [rbx + 0x53c], 0x10000000
000000014030f571 mov      dword ptr [rbx + 0x540], r8d
000000014030f578 mov      dword ptr [rbx + 0x544], ebp
000000014030f57e mov      dword ptr [rbx + 0x548], r8d
000000014030f585 mov      dword ptr [rbx + 0x54c], r14d
000000014030f58c mov      dword ptr [rbx + 0x550], r8d
000000014030f593 mov      r8d, 0x80000000
000000014030f599 mov      dword ptr [rbx + 0x554], r8d
000000014030f5a0 mov      dword ptr [rbx + 0x558], eax
000000014030f5a6 mov      dword ptr [rbx + 0x55c], 0x10000
000000014030f5b0 mov      dword ptr [rbx + 0x560], eax
000000014030f5b6 mov      dword ptr [rbx + 0x564], 0x20000
000000014030f5c0 mov      dword ptr [rbx + 0x568], eax
000000014030f5c6 mov      dword ptr [rbx + 0x56c], 0x40000
000000014030f5d0 mov      dword ptr [rbx + 0x570], eax
000000014030f5d6 mov      dword ptr [rbx + 0x574], 0x80000
000000014030f5e0 mov      dword ptr [rbx + 0x578], eax
000000014030f5e6 mov      dword ptr [rbx + 0x57c], 0x100000
000000014030f5f0 mov      dword ptr [rbx + 0x580], eax
000000014030f5f6 mov      dword ptr [rbx + 0x584], 0x200000
000000014030f600 mov      dword ptr [rbx + 0x588], eax
000000014030f606 mov      dword ptr [rbx + 0x58c], 0x400000
000000014030f610 mov      dword ptr [rbx + 0x590], eax
000000014030f616 mov      dword ptr [rbx + 0x594], 0x800000
000000014030f620 mov      dword ptr [rbx + 0x598], r12d
000000014030f627 mov      dword ptr [rbx + 0x59c], 1
000000014030f631 mov      dword ptr [rbx + 0x5a0], r12d
000000014030f638 mov      dword ptr [rbx + 0x5a4], 2
000000014030f642 mov      dword ptr [rbx + 0x5a8], r12d
000000014030f649 mov      dword ptr [rbx + 0x5ac], 4
000000014030f653 mov      dword ptr [rbx + 0x5b0], r12d
000000014030f65a mov      dword ptr [rbx + 0x5b4], r11d
000000014030f661 mov      dword ptr [rbx + 0x5b8], r12d
000000014030f668 mov      dword ptr [rbx + 0x5bc], r10d
000000014030f66f mov      dword ptr [rbx + 0x5c0], r12d
000000014030f676 mov      dword ptr [rbx + 0x5c4], r9d
000000014030f67d mov      dword ptr [rbx + 0x5c8], r12d
000000014030f684 mov      dword ptr [rbx + 0x5cc], 0x40
000000014030f68e mov      dword ptr [rbx + 0x5d0], r12d
000000014030f695 mov      dword ptr [rbx + 0x5d4], 0x80
000000014030f69f mov      dword ptr [rbx + 0x5d8], eax
000000014030f6a5 mov      dword ptr [rbx + 0x5dc], 1
000000014030f6af mov      dword ptr [rbx + 0x5e0], eax
000000014030f6b5 mov      dword ptr [rbx + 0x5e4], 2
000000014030f6bf mov      dword ptr [rbx + 0x5e8], eax
000000014030f6c5 mov      dword ptr [rbx + 0x5ec], 4
000000014030f6cf mov      dword ptr [rbx + 0x5f0], eax
000000014030f6d5 mov      dword ptr [rbx + 0x5f4], r11d
000000014030f6dc lea      r11d, [r10 + 0x30]
000000014030f6e0 mov      dword ptr [rbx + 0x5f8], eax
000000014030f6e6 mov      dword ptr [rbx + 0x5fc], r10d
000000014030f6ed mov      r10d, 0x400
000000014030f6f3 mov      dword ptr [rbx + 0x600], eax
000000014030f6f9 mov      dword ptr [rbx + 0x604], r9d
000000014030f700 mov      r9d, 0x800
000000014030f706 mov      dword ptr [rbx + 0x608], eax
000000014030f70c mov      dword ptr [rbx + 0x60c], r11d
000000014030f713 mov      dword ptr [rbx + 0x610], eax
000000014030f719 mov      dword ptr [rbx + 0x614], 0x80
000000014030f723 mov      dword ptr [rbx + 0x618], eax
000000014030f729 mov      dword ptr [rbx + 0x61c], 0x1000000
000000014030f733 mov      dword ptr [rbx + 0x620], eax
000000014030f739 mov      dword ptr [rbx + 0x624], edx
000000014030f73f mov      dword ptr [rbx + 0x628], eax
000000014030f745 mov      dword ptr [rbx + 0x62c], ecx
000000014030f74b mov      ecx, 0x2000
000000014030f750 mov      dword ptr [rbx + 0x630], eax
000000014030f756 mov      dword ptr [rbx + 0x634], 0x8000000
000000014030f760 mov      dword ptr [rbx + 0x638], eax
000000014030f766 mov      dword ptr [rbx + 0x63c], 0x10000000
000000014030f770 mov      dword ptr [rbx + 0x640], eax
000000014030f776 mov      dword ptr [rbx + 0x644], ebp
000000014030f77c mov      dword ptr [rbx + 0x648], eax
000000014030f782 mov      dword ptr [rbx + 0x64c], r14d
000000014030f789 mov      dword ptr [rbx + 0x650], eax
000000014030f78f mov      dword ptr [rbx + 0x654], r8d
000000014030f796 mov      dword ptr [rbx + 0x658], r12d
000000014030f79d mov      dword ptr [rbx + 0x65c], 0x100
000000014030f7a7 mov      dword ptr [rbx + 0x660], r12d
000000014030f7ae mov      dword ptr [rbx + 0x664], 0x200
000000014030f7b8 mov      dword ptr [rbx + 0x668], r12d
000000014030f7bf mov      dword ptr [rbx + 0x66c], r10d
000000014030f7c6 mov      dword ptr [rbx + 0x670], r12d
000000014030f7cd mov      dword ptr [rbx + 0x674], r9d
000000014030f7d4 mov      dword ptr [rbx + 0x678], r12d
000000014030f7db mov      dword ptr [rbx + 0x67c], esi
000000014030f7e1 mov      dword ptr [rbx + 0x680], r12d
000000014030f7e8 mov      dword ptr [rbx + 0x684], ecx
000000014030f7ee mov      dword ptr [rbx + 0x688], r12d
000000014030f7f5 mov      dword ptr [rbx + 0x68c], 0x4000
000000014030f7ff mov      dword ptr [rbx + 0x690], r12d
000000014030f806 mov      r12d, 0x8000
000000014030f80c mov      dword ptr [rbx + 0x694], r12d
000000014030f813 mov      dword ptr [rbx + 0x698], r15d
000000014030f81a mov      dword ptr [rbx + 0x69c], 0xe00
000000014030f824 mov      dword ptr [rbx + 0x6a0], r15d
000000014030f82b mov      dword ptr [rbx + 0x6a4], 0x7000
000000014030f835 mov      dword ptr [rbx + 0x6a8], r15d
000000014030f83c mov      dword ptr [rbx + 0x6ac], 0x38000
000000014030f846 lea      eax, [r15 + 4]
000000014030f84a mov      dword ptr [rbx + 0x6b0], r15d
000000014030f851 mov      edx, 0x38000000
000000014030f856 mov      dword ptr [rbx + 0x6b4], 0x1c0000
000000014030f860 mov      dword ptr [rbx + 0x6b8], r15d
000000014030f867 mov      dword ptr [rbx + 0x6bc], 0xe00000
000000014030f871 mov      dword ptr [rbx + 0x6c0], r15d
000000014030f878 mov      dword ptr [rbx + 0x6c4], 0x7000000
000000014030f882 mov      dword ptr [rbx + 0x6c8], r15d
000000014030f889 mov      r15d, 0x1c0
000000014030f88f mov      dword ptr [rbx + 0x6cc], edx
000000014030f895 mov      dword ptr [rbx + 0x6d0], eax
000000014030f89b mov      dword ptr [rbx + 0x6d4], 7
000000014030f8a5 mov      dword ptr [rbx + 0x6d8], eax
000000014030f8ab mov      dword ptr [rbx + 0x6dc], 0x38
000000014030f8b5 mov      dword ptr [rbx + 0x6e0], eax
000000014030f8bb mov      dword ptr [rbx + 0x6e4], r15d
000000014030f8c2 mov      dword ptr [rbx + 0x6e8], eax
000000014030f8c8 mov      dword ptr [rbx + 0x6ec], 0xe00
000000014030f8d2 mov      dword ptr [rbx + 0x6f0], eax
000000014030f8d8 mov      dword ptr [rbx + 0x6f4], 0x7000
000000014030f8e2 mov      dword ptr [rbx + 0x6f8], eax
000000014030f8e8 mov      dword ptr [rbx + 0x6fc], 0x38000
000000014030f8f2 mov      dword ptr [rbx + 0x700], eax
000000014030f8f8 mov      dword ptr [rbx + 0x704], 0x1c0000
000000014030f902 mov      dword ptr [rbx + 0x708], eax
000000014030f908 mov      dword ptr [rbx + 0x70c], 0xe00000
000000014030f912 mov      dword ptr [rbx + 0x710], eax
000000014030f918 mov      dword ptr [rbx + 0x714], 0x7000000
000000014030f922 mov      dword ptr [rbx + 0x718], eax
000000014030f928 mov      eax, 0x119c8
000000014030f92d mov      dword ptr [rbx + 0x71c], edx
000000014030f933 lea      edx, [r11 - 0x3e]
000000014030f937 mov      dword ptr [rbx + 0x720], eax
000000014030f93d mov      dword ptr [rbx + 0x724], 7
000000014030f947 mov      dword ptr [rbx + 0x728], eax
000000014030f94d mov      dword ptr [rbx + 0x72c], 0x38
000000014030f957 mov      dword ptr [rbx + 0x730], eax
000000014030f95d mov      dword ptr [rbx + 0x734], r15d
000000014030f964 lea      r15d, [r11 - 0x3f]
000000014030f968 mov      dword ptr [rbx + 0x738], eax
000000014030f96e mov      dword ptr [rbx + 0x73c], 0xe00
000000014030f978 mov      dword ptr [rbx + 0x740], eax
000000014030f97e mov      dword ptr [rbx + 0x744], 0x7000
000000014030f988 mov      dword ptr [rbx + 0x748], eax
000000014030f98e mov      dword ptr [rbx + 0x74c], 0x38000
000000014030f998 mov      dword ptr [rbx + 0x750], eax
000000014030f99e or       eax, 0xffffffff
000000014030f9a1 mov      dword ptr [rbx + 0x754], 0x1c0000
000000014030f9ab mov      dword ptr [rbx + 0x780], 0x11a94
000000014030f9b5 mov      dword ptr [rbx + 0x784], eax
000000014030f9bb mov      dword ptr [rbx + 0x788], 0x11a98
000000014030f9c5 mov      dword ptr [rbx + 0x78c], eax
000000014030f9cb mov      eax, 0x11acc
000000014030f9d0 mov      dword ptr [rbx], eax
000000014030f9d2 mov      dword ptr [rbx + 8], eax
000000014030f9d5 mov      dword ptr [rbx + 0x10], eax
000000014030f9d8 mov      eax, 0x11ad0
000000014030f9dd mov      dword ptr [rbx + 0x18], eax
000000014030f9e0 mov      dword ptr [rbx + 0x20], eax
000000014030f9e3 mov      eax, 0x11998
000000014030f9e8 mov      dword ptr [rbx + 4], ebp
000000014030f9eb mov      ebp, 0x100
000000014030f9f0 mov      dword ptr [rbx + 0xc], r14d
000000014030f9f4 mov      dword ptr [rbx + 0x14], r8d
000000014030f9f8 mov      dword ptr [rbx + 0x1c], r15d
000000014030f9fc mov      dword ptr [rbx + 0x24], edx
000000014030f9ff mov      dword ptr [rbx + 0x790], 0x119f4
000000014030fa09 mov      dword ptr [rbx + 0x794], 0x70000000
000000014030fa13 mov      dword ptr [rbx + 0x758], eax
000000014030fa19 mov      dword ptr [rbx + 0x75c], edx
000000014030fa1f mov      dword ptr [rbx + 0x760], eax
000000014030fa25 mov      dword ptr [rbx + 0x764], 4
000000014030fa2f mov      dword ptr [rbx + 0x768], eax
000000014030fa35 mov      dword ptr [rbx + 0x76c], 0x38
000000014030fa3f mov      dword ptr [rbx + 0x770], eax
000000014030fa45 mov      dword ptr [rbx + 0x774], 0x80
000000014030fa4f mov      dword ptr [rbx + 0x778], eax
000000014030fa55 mov      eax, 0x24e54
000000014030fa5a mov      dword ptr [rbx + 0x77c], ebp
000000014030fa60 mov      dword ptr [rbx + 0x798], eax
000000014030fa66 lea      edx, [rax + 0x6c]
000000014030fa69 mov      dword ptr [rbx + 0x79c], 0xf00
000000014030fa73 mov      dword ptr [rbx + 0x7a0], eax
000000014030fa79 mov      eax, 0x24844
000000014030fa7e mov      dword ptr [rbx + 0x7a4], 0xc0000000
000000014030fa88 mov      dword ptr [rbx + 0x7a8], 0x24e74
000000014030fa92 mov      dword ptr [rbx + 0x7ac], r8d
000000014030fa99 mov      dword ptr [rbx + 0x7b0], 0x24e78
000000014030faa3 mov      dword ptr [rbx + 0x7b4], r15d
000000014030faaa mov      dword ptr [rbx + 0x7b8], edx
000000014030fab0 mov      dword ptr [rbx + 0x7bc], 3
000000014030faba mov      dword ptr [rbx + 0x7c0], edx
000000014030fac0 mov      dword ptr [rbx + 0x7c4], 0xc
000000014030faca mov      dword ptr [rbx + 0x7c8], edx
000000014030fad0 mov      dword ptr [rbx + 0x7cc], 0x30
000000014030fada mov      dword ptr [rbx + 0x7d0], edx
000000014030fae0 mov      dword ptr [rbx + 0x7d4], r11d
000000014030fae7 mov      dword ptr [rbx + 0x7d8], edx
000000014030faed mov      dword ptr [rbx + 0x7dc], 0x80
000000014030faf7 mov      dword ptr [rbx + 0x7e0], eax
000000014030fafd mov      dword ptr [rbx + 0x7e4], ecx
000000014030fb03 lea      ecx, [rax - 8]
000000014030fb06 mov      dword ptr [rbx + 0x7e8], eax
000000014030fb0c mov      dword ptr [rbx + 0x7ec], 0x4000
000000014030fb16 mov      dword ptr [rbx + 0x7f0], eax
000000014030fb1c lea      eax, [rcx - 8]
000000014030fb1f mov      dword ptr [rbx + 0x7f4], r12d
000000014030fb26 mov      dword ptr [rbx + 0x7f8], ecx
000000014030fb2c mov      dword ptr [rbx + 0x7fc], r14d
000000014030fb33 mov      dword ptr [rbx + 0x800], eax
000000014030fb39 mov      dword ptr [rbx + 0x804], 0x8000000
000000014030fb43 mov      dword ptr [rbx + 0x808], ecx
000000014030fb49 mov      dword ptr [rbx + 0x80c], r8d
000000014030fb50 mov      dword ptr [rbx + 0x810], eax
000000014030fb56 mov      dword ptr [rbx + 0x814], 0x400000
000000014030fb60 mov      dword ptr [rbx + 0x818], 0x249ec
000000014030fb6a mov      dword ptr [rbx + 0x81c], 3
000000014030fb74 mov      dword ptr [rbx + 0x820], edx
000000014030fb7a mov      dword ptr [rbx + 0x824], ebp
000000014030fb80 lea      rbp, [rip + 0x610479]
000000014030fb87 mov      dword ptr [rbx + 0x828], edx
000000014030fb8d mov      dword ptr [rbx + 0x82c], 0x200
000000014030fb97 mov      dword ptr [rbx + 0x830], edx
000000014030fb9d mov      dword ptr [rbx + 0x834], r10d
000000014030fba4 mov      dword ptr [rbx + 0x838], edx
000000014030fbaa mov      dword ptr [rbx + 0x83c], r9d
000000014030fbb1 mov      dword ptr [rbx + 0x840], edx
000000014030fbb7 mov      dword ptr [rbx + 0x844], 0xff000
000000014030fbc1 cmp      byte ptr [rdi + 0x49cc], 0
000000014030fbc8 je       0x14030fc17
000000014030fbca mov      rcx, qword ptr [rip + 0x61042f]
000000014030fbd1 cmp      rcx, rbp
000000014030fbd4 je       0x14030fc06
000000014030fbd6 cmp      byte ptr [rcx + 0x169], 4
000000014030fbdd jb       0x14030fc06
000000014030fbdf test     dword ptr [rcx + 0x16c], esi
000000014030fbe5 je       0x14030fc06
000000014030fbe7 mov      rcx, qword ptr [rcx + 0x158]
000000014030fbee lea      r9, [rip + 0x321fab]
000000014030fbf5 mov      edx, 0x55
000000014030fbfa lea      r8, [rip + 0x3c188f]
000000014030fc01 call     0x140008874
000000014030fc06 mov      r8d, 0x292
000000014030fc0c mov      rdx, rbx
000000014030fc0f mov      rcx, rdi
000000014030fc12 call     0x1403c9ac0
000000014030fc17 mov      rbx, qword ptr [rsp + 0x50]
000000014030fc1c mov      rbp, qword ptr [rsp + 0x58]
000000014030fc21 mov      rsi, qword ptr [rsp + 0x60]
000000014030fc26 mov      rdi, qword ptr [rsp + 0x68]
000000014030fc2b add      rsp, 0x30
000000014030fc2f pop      r15
000000014030fc31 pop      r14
000000014030fc33 pop      r12
000000014030fc35 ret      