000000014059eaf0 mov      qword ptr [rsp + 8], rbx
000000014059eaf5 push     rdi
000000014059eaf6 sub      rsp, 0x30
000000014059eafa mov      rdi, rcx
000000014059eafd cmp      edx, 0x17
000000014059eb00 ja       0x14059f352
000000014059eb06 je       0x14059f2db
000000014059eb0c mov      eax, edx
000000014059eb0e sub      eax, 0xc
000000014059eb11 je       0x14059f163
000000014059eb17 sub      eax, 1
000000014059eb1a je       0x14059f002
000000014059eb20 sub      eax, 1
000000014059eb23 je       0x14059eea1
000000014059eb29 sub      eax, 6
000000014059eb2c je       0x14059ee2a
000000014059eb32 sub      eax, 1
000000014059eb35 je       0x14059ece1
000000014059eb3b cmp      eax, 1
000000014059eb3e jne      0x14059f386
000000014059eb44 mov      rax, qword ptr [rcx + 0x18]
000000014059eb48 lea      r8, [rip + 0xcf0c1]
000000014059eb4f mov      rcx, qword ptr [rcx + 8]
000000014059eb53 mov      ebx, 1
000000014059eb58 mov      edx, ebx
000000014059eb5a mov      rax, qword ptr [rax + 0x118]
000000014059eb61 call     qword ptr [rip + 0xe5791]
000000014059eb67 mov      rax, qword ptr [rdi + 0x18]
000000014059eb6b lea      r8, [rip + 0xcf0ce]
000000014059eb72 mov      rcx, qword ptr [rdi + 8]
000000014059eb76 mov      edx, ebx
000000014059eb78 mov      rax, qword ptr [rax + 0x118]
000000014059eb7f call     qword ptr [rip + 0xe5773]
000000014059eb85 lea      edx, [rbx + 0x27]
000000014059eb88 mov      rcx, rdi
000000014059eb8b call     0x14059fafc
000000014059eb90 mov      ebx, eax
000000014059eb92 test     eax, eax
000000014059eb94 jne      0x14059fac8
000000014059eb9a lea      edx, [rax + 0x29]
000000014059eb9d mov      rcx, rdi
000000014059eba0 call     0x14059fafc
000000014059eba5 mov      ebx, eax
000000014059eba7 test     eax, eax
000000014059eba9 jne      0x14059fac8
000000014059ebaf lea      edx, [rax + 0x2a]
000000014059ebb2 mov      rcx, rdi
000000014059ebb5 call     0x14059fafc
000000014059ebba mov      ebx, eax
000000014059ebbc test     eax, eax
000000014059ebbe jne      0x14059fac8
000000014059ebc4 lea      edx, [rax + 0x2b]
000000014059ebc7 mov      rcx, rdi
000000014059ebca call     0x14059fafc
000000014059ebcf mov      ebx, eax
000000014059ebd1 test     eax, eax
000000014059ebd3 jne      0x14059fac8
000000014059ebd9 lea      edx, [rax + 0x2c]
000000014059ebdc mov      rcx, rdi
000000014059ebdf call     0x14059fafc
000000014059ebe4 mov      ebx, eax
000000014059ebe6 test     eax, eax
000000014059ebe8 jne      0x14059fac8
000000014059ebee lea      edx, [rax + 0x2d]
000000014059ebf1 mov      rcx, rdi
000000014059ebf4 call     0x14059fafc
000000014059ebf9 mov      ebx, eax
000000014059ebfb test     eax, eax
000000014059ebfd jne      0x14059fac8
000000014059ec03 lea      edx, [rax + 0x2e]
000000014059ec06 mov      rcx, rdi
000000014059ec09 call     0x14059fafc
000000014059ec0e mov      ebx, eax
000000014059ec10 test     eax, eax
000000014059ec12 jne      0x14059fac8
000000014059ec18 lea      edx, [rax + 0x2f]
000000014059ec1b mov      rcx, rdi
000000014059ec1e call     0x14059fafc
000000014059ec23 mov      ebx, eax
000000014059ec25 test     eax, eax
000000014059ec27 jne      0x14059fac8
000000014059ec2d lea      edx, [rax + 0x30]
000000014059ec30 mov      rcx, rdi
000000014059ec33 call     0x14059fafc
000000014059ec38 mov      ebx, eax
000000014059ec3a test     eax, eax
000000014059ec3c jne      0x14059fac8
000000014059ec42 lea      edx, [rax + 0x31]
000000014059ec45 mov      rcx, rdi
000000014059ec48 call     0x14059fafc
000000014059ec4d mov      ebx, eax
000000014059ec4f test     eax, eax
000000014059ec51 jne      0x14059fac8
000000014059ec57 lea      edx, [rax + 0x32]
000000014059ec5a mov      rcx, rdi
000000014059ec5d call     0x14059fafc
000000014059ec62 mov      ebx, eax
000000014059ec64 test     eax, eax
000000014059ec66 jne      0x14059fac8
000000014059ec6c lea      edx, [rax + 0x33]
000000014059ec6f mov      rcx, rdi
000000014059ec72 call     0x14059fafc
000000014059ec77 mov      ebx, eax
000000014059ec79 test     eax, eax
000000014059ec7b jne      0x14059fac8
000000014059ec81 lea      edx, [rax + 0x34]
000000014059ec84 mov      rcx, rdi
000000014059ec87 call     0x14059fafc
000000014059ec8c mov      ebx, eax
000000014059ec8e test     eax, eax
000000014059ec90 jne      0x14059fac8
000000014059ec96 lea      edx, [rax + 0x35]
000000014059ec99 mov      rcx, rdi
000000014059ec9c call     0x14059fafc
000000014059eca1 mov      ebx, eax
000000014059eca3 test     eax, eax
000000014059eca5 jne      0x14059fac8
000000014059ecab lea      edx, [rax + 0x36]
000000014059ecae mov      rcx, rdi
000000014059ecb1 call     0x14059fafc
000000014059ecb6 mov      ebx, eax
000000014059ecb8 test     eax, eax
000000014059ecba jne      0x14059fac8
000000014059ecc0 lea      edx, [rax + 0x37]
000000014059ecc3 mov      rcx, rdi
000000014059ecc6 call     0x14059fafc
000000014059eccb mov      ebx, eax
000000014059eccd test     eax, eax
000000014059eccf jne      0x14059fac8
000000014059ecd5 lea      r8, [rip + 0xcef84]
000000014059ecdc jmp      0x14059faac
000000014059ece1 mov      rax, qword ptr [rcx + 0x18]
000000014059ece5 lea      r8, [rip + 0xceeb4]
000000014059ecec mov      rcx, qword ptr [rcx + 8]
000000014059ecf0 mov      ebx, 1
000000014059ecf5 mov      edx, ebx
000000014059ecf7 mov      rax, qword ptr [rax + 0x118]
000000014059ecfe call     qword ptr [rip + 0xe55f4]
000000014059ed04 mov      rax, qword ptr [rdi + 0x18]
000000014059ed08 lea      r8, [rip + 0xceec1]
000000014059ed0f mov      rcx, qword ptr [rdi + 8]
000000014059ed13 mov      edx, ebx
000000014059ed15 mov      rax, qword ptr [rax + 0x118]
000000014059ed1c call     qword ptr [rip + 0xe55d6]
000000014059ed22 lea      edx, [rbx + 0x1b]
000000014059ed25 mov      rcx, rdi
000000014059ed28 call     0x14059fafc
000000014059ed2d mov      ebx, eax
000000014059ed2f test     eax, eax
000000014059ed31 jne      0x14059fac8
000000014059ed37 lea      edx, [rax + 0x1d]
000000014059ed3a mov      rcx, rdi
000000014059ed3d call     0x14059fafc
000000014059ed42 mov      ebx, eax
000000014059ed44 test     eax, eax
000000014059ed46 jne      0x14059fac8
000000014059ed4c lea      edx, [rax + 0x1e]
000000014059ed4f mov      rcx, rdi
000000014059ed52 call     0x14059fafc
000000014059ed57 mov      ebx, eax
000000014059ed59 test     eax, eax
000000014059ed5b jne      0x14059fac8
000000014059ed61 lea      edx, [rax + 0x1f]
000000014059ed64 mov      rcx, rdi
000000014059ed67 call     0x14059fafc
000000014059ed6c mov      ebx, eax
000000014059ed6e test     eax, eax
000000014059ed70 jne      0x14059fac8
000000014059ed76 lea      edx, [rax + 0x20]
000000014059ed79 mov      rcx, rdi
000000014059ed7c call     0x14059fafc
000000014059ed81 mov      ebx, eax
000000014059ed83 test     eax, eax
000000014059ed85 jne      0x14059fac8
000000014059ed8b lea      edx, [rax + 0x21]
000000014059ed8e mov      rcx, rdi
000000014059ed91 call     0x14059fafc
000000014059ed96 mov      ebx, eax
000000014059ed98 test     eax, eax
000000014059ed9a jne      0x14059fac8
000000014059eda0 lea      edx, [rax + 0x22]
000000014059eda3 mov      rcx, rdi
000000014059eda6 call     0x14059fafc
000000014059edab mov      ebx, eax
000000014059edad test     eax, eax
000000014059edaf jne      0x14059fac8
000000014059edb5 lea      edx, [rax + 0x23]
000000014059edb8 mov      rcx, rdi
000000014059edbb call     0x14059fafc
000000014059edc0 mov      ebx, eax
000000014059edc2 test     eax, eax
000000014059edc4 jne      0x14059fac8
000000014059edca lea      edx, [rax + 0x24]
000000014059edcd mov      rcx, rdi
000000014059edd0 call     0x14059fafc
000000014059edd5 mov      ebx, eax
000000014059edd7 test     eax, eax
000000014059edd9 jne      0x14059fac8
000000014059eddf lea      edx, [rax + 0x25]
000000014059ede2 mov      rcx, rdi
000000014059ede5 call     0x14059fafc
000000014059edea mov      ebx, eax
000000014059edec test     eax, eax
000000014059edee jne      0x14059fac8
000000014059edf4 lea      edx, [rax + 0x26]
000000014059edf7 mov      rcx, rdi
000000014059edfa call     0x14059fafc
000000014059edff mov      ebx, eax
000000014059ee01 test     eax, eax
000000014059ee03 jne      0x14059fac8
000000014059ee09 lea      edx, [rax + 0x27]
000000014059ee0c mov      rcx, rdi
000000014059ee0f call     0x14059fafc
000000014059ee14 mov      ebx, eax
000000014059ee16 test     eax, eax
000000014059ee18 jne      0x14059fac8
000000014059ee1e lea      r8, [rip + 0xcedcb]
000000014059ee25 jmp      0x14059faac
000000014059ee2a mov      rax, qword ptr [rcx + 0x18]
000000014059ee2e lea      r8, [rip + 0xcecfb]
000000014059ee35 mov      rcx, qword ptr [rcx + 8]
000000014059ee39 mov      ebx, 1
000000014059ee3e mov      edx, ebx
000000014059ee40 mov      rax, qword ptr [rax + 0x118]
000000014059ee47 call     qword ptr [rip + 0xe54ab]
000000014059ee4d mov      rax, qword ptr [rdi + 0x18]
000000014059ee51 lea      r8, [rip + 0xced08]
000000014059ee58 mov      rcx, qword ptr [rdi + 8]
000000014059ee5c mov      edx, ebx
000000014059ee5e mov      rax, qword ptr [rax + 0x118]
000000014059ee65 call     qword ptr [rip + 0xe548d]
000000014059ee6b lea      edx, [rbx + 0x13]
000000014059ee6e mov      rcx, rdi
000000014059ee71 call     0x14059fafc
000000014059ee76 mov      ebx, eax
000000014059ee78 test     eax, eax
000000014059ee7a jne      0x14059fac8
000000014059ee80 lea      edx, [rax + 0x15]
000000014059ee83 mov      rcx, rdi
000000014059ee86 call     0x14059fafc
000000014059ee8b mov      ebx, eax
000000014059ee8d test     eax, eax
000000014059ee8f jne      0x14059fac8
000000014059ee95 lea      r8, [rip + 0xcece4]
000000014059ee9c jmp      0x14059faac
000000014059eea1 mov      rax, qword ptr [rcx + 0x18]
000000014059eea5 lea      r8, [rip + 0xcf0e4]
000000014059eeac mov      rcx, qword ptr [rcx + 8]
000000014059eeb0 mov      ebx, 1
000000014059eeb5 mov      edx, ebx
000000014059eeb7 mov      rax, qword ptr [rax + 0x118]
000000014059eebe call     qword ptr [rip + 0xe5434]
000000014059eec4 mov      rax, qword ptr [rdi + 0x18]
000000014059eec8 lea      r8, [rip + 0xcf0f1]
000000014059eecf mov      rcx, qword ptr [rdi + 8]
000000014059eed3 mov      edx, ebx
000000014059eed5 mov      rax, qword ptr [rax + 0x118]
000000014059eedc call     qword ptr [rip + 0xe5416]
000000014059eee2 mov      edx, 0x9f
000000014059eee7 mov      rcx, rdi
000000014059eeea call     0x14059fafc
000000014059eeef mov      ebx, eax
000000014059eef1 test     eax, eax
000000014059eef3 jne      0x14059fac8
000000014059eef9 mov      edx, 0xa0
000000014059eefe mov      rcx, rdi
000000014059ef01 call     0x14059fafc
000000014059ef06 mov      ebx, eax
000000014059ef08 test     eax, eax
000000014059ef0a jne      0x14059fac8
000000014059ef10 mov      edx, 0xa1
000000014059ef15 mov      rcx, rdi
000000014059ef18 call     0x14059fafc
000000014059ef1d mov      ebx, eax
000000014059ef1f test     eax, eax
000000014059ef21 jne      0x14059fac8
000000014059ef27 mov      edx, 0xa2
000000014059ef2c mov      rcx, rdi
000000014059ef2f call     0x14059fafc
000000014059ef34 mov      ebx, eax
000000014059ef36 test     eax, eax
000000014059ef38 jne      0x14059fac8
000000014059ef3e mov      edx, 0xa3
000000014059ef43 mov      rcx, rdi
000000014059ef46 call     0x14059fafc
000000014059ef4b mov      ebx, eax
000000014059ef4d test     eax, eax
000000014059ef4f jne      0x14059fac8
000000014059ef55 mov      edx, 0xa4
000000014059ef5a mov      rcx, rdi
000000014059ef5d call     0x14059fafc
000000014059ef62 mov      ebx, eax
000000014059ef64 test     eax, eax
000000014059ef66 jne      0x14059fac8
000000014059ef6c mov      edx, 0xa5
000000014059ef71 mov      rcx, rdi
000000014059ef74 call     0x14059fafc
000000014059ef79 mov      ebx, eax
000000014059ef7b test     eax, eax
000000014059ef7d jne      0x14059fac8
000000014059ef83 mov      edx, 0xa6
000000014059ef88 mov      rcx, rdi
000000014059ef8b call     0x14059fafc
000000014059ef90 mov      ebx, eax
000000014059ef92 test     eax, eax
000000014059ef94 jne      0x14059fac8
000000014059ef9a mov      edx, 0xa7
000000014059ef9f mov      rcx, rdi
000000014059efa2 call     0x14059fafc
000000014059efa7 mov      ebx, eax
000000014059efa9 test     eax, eax
000000014059efab jne      0x14059fac8
000000014059efb1 mov      edx, 0xa8
000000014059efb6 mov      rcx, rdi
000000014059efb9 call     0x14059fafc
000000014059efbe mov      ebx, eax
000000014059efc0 test     eax, eax
000000014059efc2 jne      0x14059fac8
000000014059efc8 mov      edx, 0xa9
000000014059efcd mov      rcx, rdi
000000014059efd0 call     0x14059fafc
000000014059efd5 mov      ebx, eax
000000014059efd7 test     eax, eax
000000014059efd9 jne      0x14059fac8
000000014059efdf mov      edx, 0xaa
000000014059efe4 mov      rcx, rdi
000000014059efe7 call     0x14059fafc
000000014059efec mov      ebx, eax
000000014059efee test     eax, eax
000000014059eff0 jne      0x14059fac8
000000014059eff6 lea      r8, [rip + 0xcefe3]
000000014059effd jmp      0x14059faac
000000014059f002 mov      rax, qword ptr [rcx + 0x18]
000000014059f006 lea      r8, [rip + 0xcf003]
000000014059f00d mov      rcx, qword ptr [rcx + 8]
000000014059f011 mov      ebx, 1
000000014059f016 mov      edx, ebx
000000014059f018 mov      rax, qword ptr [rax + 0x118]
000000014059f01f call     qword ptr [rip + 0xe52d3]
000000014059f025 mov      rax, qword ptr [rdi + 0x18]
000000014059f029 lea      r8, [rip + 0xcf010]
000000014059f030 mov      rcx, qword ptr [rdi + 8]
000000014059f034 mov      edx, ebx
000000014059f036 mov      rax, qword ptr [rax + 0x118]
000000014059f03d call     qword ptr [rip + 0xe52b5]
000000014059f043 mov      edx, 0xab
000000014059f048 mov      rcx, rdi
000000014059f04b call     0x14059fafc
000000014059f050 mov      ebx, eax
000000014059f052 test     eax, eax
000000014059f054 jne      0x14059fac8
000000014059f05a mov      edx, 0xac
000000014059f05f mov      rcx, rdi
000000014059f062 call     0x14059fafc
000000014059f067 mov      ebx, eax
000000014059f069 test     eax, eax
000000014059f06b jne      0x14059fac8
000000014059f071 mov      edx, 0xad
000000014059f076 mov      rcx, rdi
000000014059f079 call     0x14059fafc
000000014059f07e mov      ebx, eax
000000014059f080 test     eax, eax
000000014059f082 jne      0x14059fac8
000000014059f088 mov      edx, 0xae
000000014059f08d mov      rcx, rdi
000000014059f090 call     0x14059fafc
000000014059f095 mov      ebx, eax
000000014059f097 test     eax, eax
000000014059f099 jne      0x14059fac8
000000014059f09f mov      edx, 0xaf
000000014059f0a4 mov      rcx, rdi
000000014059f0a7 call     0x14059fafc
000000014059f0ac mov      ebx, eax
000000014059f0ae test     eax, eax
000000014059f0b0 jne      0x14059fac8
000000014059f0b6 mov      edx, 0xb0
000000014059f0bb mov      rcx, rdi
000000014059f0be call     0x14059fafc
000000014059f0c3 mov      ebx, eax
000000014059f0c5 test     eax, eax
000000014059f0c7 jne      0x14059fac8
000000014059f0cd mov      edx, 0xb1
000000014059f0d2 mov      rcx, rdi
000000014059f0d5 call     0x14059fafc
000000014059f0da mov      ebx, eax
000000014059f0dc test     eax, eax
000000014059f0de jne      0x14059fac8
000000014059f0e4 mov      edx, 0xb2
000000014059f0e9 mov      rcx, rdi
000000014059f0ec call     0x14059fafc
000000014059f0f1 mov      ebx, eax
000000014059f0f3 test     eax, eax
000000014059f0f5 jne      0x14059fac8
000000014059f0fb mov      edx, 0xb3
000000014059f100 mov      rcx, rdi
000000014059f103 call     0x14059fafc
000000014059f108 mov      ebx, eax
000000014059f10a test     eax, eax
000000014059f10c jne      0x14059fac8
000000014059f112 mov      edx, 0xb4
000000014059f117 mov      rcx, rdi
000000014059f11a call     0x14059fafc
000000014059f11f mov      ebx, eax
000000014059f121 test     eax, eax
000000014059f123 jne      0x14059fac8
000000014059f129 mov      edx, 0xb5
000000014059f12e mov      rcx, rdi
000000014059f131 call     0x14059fafc
000000014059f136 mov      ebx, eax
000000014059f138 test     eax, eax
000000014059f13a jne      0x14059fac8
000000014059f140 mov      edx, 0xb6
000000014059f145 mov      rcx, rdi
000000014059f148 call     0x14059fafc
000000014059f14d mov      ebx, eax
000000014059f14f test     eax, eax
000000014059f151 jne      0x14059fac8
000000014059f157 lea      r8, [rip + 0xcef02]
000000014059f15e jmp      0x14059faac
000000014059f163 mov      rax, qword ptr [rcx + 0x18]
000000014059f167 lea      r8, [rip + 0xcef22]
000000014059f16e mov      rcx, qword ptr [rcx + 8]
000000014059f172 mov      ebx, 1
000000014059f177 mov      edx, ebx
000000014059f179 mov      rax, qword ptr [rax + 0x118]
000000014059f180 call     qword ptr [rip + 0xe5172]
000000014059f186 mov      rax, qword ptr [rdi + 0x18]
000000014059f18a lea      r8, [rip + 0xcef2f]
000000014059f191 mov      rcx, qword ptr [rdi + 8]
000000014059f195 mov      edx, ebx
000000014059f197 mov      rax, qword ptr [rax + 0x118]
000000014059f19e call     qword ptr [rip + 0xe5154]
000000014059f1a4 mov      edx, 0xb7
000000014059f1a9 mov      rcx, rdi
000000014059f1ac call     0x14059fafc
000000014059f1b1 mov      ebx, eax
000000014059f1b3 test     eax, eax
000000014059f1b5 jne      0x14059fac8
000000014059f1bb mov      edx, 0xb8
000000014059f1c0 mov      rcx, rdi
000000014059f1c3 call     0x14059fafc
000000014059f1c8 mov      ebx, eax
000000014059f1ca test     eax, eax
000000014059f1cc jne      0x14059fac8
000000014059f1d2 mov      edx, 0xb9
000000014059f1d7 mov      rcx, rdi
000000014059f1da call     0x14059fafc
000000014059f1df mov      ebx, eax
000000014059f1e1 test     eax, eax
000000014059f1e3 jne      0x14059fac8
000000014059f1e9 mov      edx, 0xba
000000014059f1ee mov      rcx, rdi
000000014059f1f1 call     0x14059fafc
000000014059f1f6 mov      ebx, eax
000000014059f1f8 test     eax, eax
000000014059f1fa jne      0x14059fac8
000000014059f200 mov      edx, 0xbb
000000014059f205 mov      rcx, rdi
000000014059f208 call     0x14059fafc
000000014059f20d mov      ebx, eax
000000014059f20f test     eax, eax
000000014059f211 jne      0x14059fac8
000000014059f217 mov      edx, 0xbc
000000014059f21c mov      rcx, rdi
000000014059f21f call     0x14059fafc
000000014059f224 mov      ebx, eax
000000014059f226 test     eax, eax
000000014059f228 jne      0x14059fac8
000000014059f22e mov      edx, 0xbd
000000014059f233 mov      rcx, rdi
000000014059f236 call     0x14059fafc
000000014059f23b mov      ebx, eax
000000014059f23d test     eax, eax
000000014059f23f jne      0x14059fac8
000000014059f245 mov      edx, 0xbe
000000014059f24a mov      rcx, rdi
000000014059f24d call     0x14059fafc
000000014059f252 mov      ebx, eax
000000014059f254 test     eax, eax
000000014059f256 jne      0x14059fac8
000000014059f25c mov      edx, 0xbf
000000014059f261 mov      rcx, rdi
000000014059f264 call     0x14059fafc
000000014059f269 mov      ebx, eax
000000014059f26b test     eax, eax
000000014059f26d jne      0x14059fac8
000000014059f273 mov      edx, 0xc0
000000014059f278 mov      rcx, rdi
000000014059f27b call     0x14059fafc
000000014059f280 mov      ebx, eax
000000014059f282 test     eax, eax
000000014059f284 jne      0x14059fac8
000000014059f28a mov      edx, 0xc1
000000014059f28f mov      rcx, rdi
000000014059f292 call     0x14059fafc
000000014059f297 mov      ebx, eax
000000014059f299 test     eax, eax
000000014059f29b jne      0x14059fac8
000000014059f2a1 mov      edx, 0xc2
000000014059f2a6 mov      rcx, rdi
000000014059f2a9 call     0x14059fafc
000000014059f2ae mov      ebx, eax
000000014059f2b0 test     eax, eax
000000014059f2b2 jne      0x14059fac8
000000014059f2b8 mov      edx, 0xc3
000000014059f2bd mov      rcx, rdi
000000014059f2c0 call     0x14059fafc
000000014059f2c5 mov      ebx, eax
000000014059f2c7 test     eax, eax
000000014059f2c9 jne      0x14059fac8
000000014059f2cf lea      r8, [rip + 0xcee0a]
000000014059f2d6 jmp      0x14059faac
000000014059f2db mov      rax, qword ptr [rcx + 0x18]
000000014059f2df lea      r8, [rip + 0xce99a]
000000014059f2e6 mov      rcx, qword ptr [rcx + 8]
000000014059f2ea mov      ebx, 1
000000014059f2ef mov      edx, ebx
000000014059f2f1 mov      rax, qword ptr [rax + 0x118]
000000014059f2f8 call     qword ptr [rip + 0xe4ffa]
000000014059f2fe mov      rax, qword ptr [rdi + 0x18]
000000014059f302 lea      r8, [rip + 0xce9a7]
000000014059f309 mov      rcx, qword ptr [rdi + 8]
000000014059f30d mov      edx, ebx
000000014059f30f mov      rax, qword ptr [rax + 0x118]
000000014059f316 call     qword ptr [rip + 0xe4fdc]
000000014059f31c lea      edx, [rbx + 0x37]
000000014059f31f mov      rcx, rdi
000000014059f322 call     0x14059fafc
000000014059f327 mov      ebx, eax
000000014059f329 test     eax, eax
000000014059f32b jne      0x14059fac8
000000014059f331 lea      edx, [rax + 0x59]
000000014059f334 mov      rcx, rdi
000000014059f337 call     0x14059fafc
000000014059f33c mov      ebx, eax
000000014059f33e test     eax, eax
000000014059f340 jne      0x14059fac8
000000014059f346 lea      r8, [rip + 0xce653]
000000014059f34d jmp      0x14059faac
000000014059f352 mov      eax, edx
000000014059f354 sub      eax, 0x18
000000014059f357 je       0x14059f9c0
000000014059f35d sub      eax, 2
000000014059f360 je       0x14059f8bb
000000014059f366 sub      eax, 2
000000014059f369 je       0x14059f64c
000000014059f36f sub      eax, 1
000000014059f372 je       0x14059f506
000000014059f378 sub      eax, 2
000000014059f37b je       0x14059f45d
000000014059f381 cmp      eax, 1
000000014059f384 je       0x14059f3b4
000000014059f386 mov      rax, qword ptr [rcx + 0x18]
000000014059f38a lea      r8, [rip + 0xce74f]
000000014059f391 mov      rcx, qword ptr [rcx + 8]
000000014059f395 mov      r9d, edx
000000014059f398 mov      edx, 2
000000014059f39d mov      rax, qword ptr [rax + 0x118]
000000014059f3a4 call     qword ptr [rip + 0xe4f4e]
000000014059f3aa mov      ebx, 0x41
000000014059f3af jmp      0x14059faec
000000014059f3b4 mov      rax, qword ptr [rcx + 0x18]
000000014059f3b8 lea      r8, [rip + 0xcedc1]
000000014059f3bf mov      rcx, qword ptr [rcx + 8]
000000014059f3c3 mov      ebx, 1
000000014059f3c8 mov      edx, ebx
000000014059f3ca mov      rax, qword ptr [rax + 0x118]
000000014059f3d1 call     qword ptr [rip + 0xe4f21]
000000014059f3d7 mov      rax, qword ptr [rdi + 0x18]
000000014059f3db lea      r8, [rip + 0xcedce]
000000014059f3e2 mov      rcx, qword ptr [rdi + 8]
000000014059f3e6 mov      edx, ebx
000000014059f3e8 mov      rax, qword ptr [rax + 0x118]
000000014059f3ef call     qword ptr [rip + 0xe4f03]
000000014059f3f5 mov      edx, 0xce
000000014059f3fa mov      rcx, rdi
000000014059f3fd call     0x14059fafc
000000014059f402 mov      ebx, eax
000000014059f404 test     eax, eax
000000014059f406 jne      0x14059fac8
000000014059f40c mov      edx, 0xcf
000000014059f411 mov      rcx, rdi
000000014059f414 call     0x14059fafc
000000014059f419 mov      ebx, eax
000000014059f41b test     eax, eax
000000014059f41d jne      0x14059fac8
000000014059f423 mov      edx, 0xd0
000000014059f428 mov      rcx, rdi
000000014059f42b call     0x14059fafc
000000014059f430 mov      ebx, eax
000000014059f432 test     eax, eax
000000014059f434 jne      0x14059fac8
000000014059f43a mov      edx, 0xd1
000000014059f43f mov      rcx, rdi
000000014059f442 call     0x14059fafc
000000014059f447 mov      ebx, eax
000000014059f449 test     eax, eax
000000014059f44b jne      0x14059fac8
000000014059f451 lea      r8, [rip + 0xced78]
000000014059f458 jmp      0x14059faac
000000014059f45d mov      rax, qword ptr [rcx + 0x18]
000000014059f461 lea      r8, [rip + 0xceab8]
000000014059f468 mov      rcx, qword ptr [rcx + 8]
000000014059f46c mov      ebx, 1
000000014059f471 mov      edx, ebx
000000014059f473 mov      rax, qword ptr [rax + 0x118]
000000014059f47a call     qword ptr [rip + 0xe4e78]
000000014059f480 mov      rax, qword ptr [rdi + 0x18]
000000014059f484 lea      r8, [rip + 0xceac5]
000000014059f48b mov      rcx, qword ptr [rdi + 8]
000000014059f48f mov      edx, ebx
000000014059f491 mov      rax, qword ptr [rax + 0x118]
000000014059f498 call     qword ptr [rip + 0xe4e5a]
000000014059f49e mov      edx, 0x91
000000014059f4a3 mov      rcx, rdi
000000014059f4a6 call     0x14059fafc
000000014059f4ab mov      ebx, eax
000000014059f4ad test     eax, eax
000000014059f4af jne      0x14059fac8
000000014059f4b5 mov      edx, 0x92
000000014059f4ba mov      rcx, rdi
000000014059f4bd call     0x14059fafc
000000014059f4c2 mov      ebx, eax
000000014059f4c4 test     eax, eax
000000014059f4c6 jne      0x14059fac8
000000014059f4cc mov      edx, 0x93
000000014059f4d1 mov      rcx, rdi
000000014059f4d4 call     0x14059fafc
000000014059f4d9 mov      ebx, eax
000000014059f4db test     eax, eax
000000014059f4dd jne      0x14059fac8
000000014059f4e3 mov      edx, 0x94
000000014059f4e8 mov      rcx, rdi
000000014059f4eb call     0x14059fafc
000000014059f4f0 mov      ebx, eax
000000014059f4f2 test     eax, eax
000000014059f4f4 jne      0x14059fac8
000000014059f4fa lea      r8, [rip + 0xcea6f]
000000014059f501 jmp      0x14059faac
000000014059f506 mov      rax, qword ptr [rcx + 0x18]
000000014059f50a lea      r8, [rip + 0xce90f]
000000014059f511 mov      rcx, qword ptr [rcx + 8]
000000014059f515 mov      ebx, 1
000000014059f51a mov      edx, ebx
000000014059f51c mov      rax, qword ptr [rax + 0x118]
000000014059f523 call     qword ptr [rip + 0xe4dcf]
000000014059f529 mov      rax, qword ptr [rdi + 0x18]
000000014059f52d lea      r8, [rip + 0xce91c]
000000014059f534 mov      rcx, qword ptr [rdi + 8]
000000014059f538 mov      edx, ebx
000000014059f53a mov      rax, qword ptr [rax + 0x118]
000000014059f541 call     qword ptr [rip + 0xe4db1]
000000014059f547 lea      edx, [rbx + 0x7d]
000000014059f54a mov      rcx, rdi
000000014059f54d call     0x14059fafc
000000014059f552 mov      ebx, eax
000000014059f554 test     eax, eax
000000014059f556 jne      0x14059fac8
000000014059f55c lea      edx, [rax + 0x7f]
000000014059f55f mov      rcx, rdi
000000014059f562 call     0x14059fafc
000000014059f567 mov      ebx, eax
000000014059f569 test     eax, eax
000000014059f56b jne      0x14059fac8
000000014059f571 mov      edx, 0x80
000000014059f576 mov      rcx, rdi
000000014059f579 call     0x14059fafc
000000014059f57e mov      ebx, eax
000000014059f580 test     eax, eax
000000014059f582 jne      0x14059fac8
000000014059f588 mov      edx, 0x81
000000014059f58d mov      rcx, rdi
000000014059f590 call     0x14059fafc
000000014059f595 mov      ebx, eax
000000014059f597 test     eax, eax
000000014059f599 jne      0x14059fac8
000000014059f59f mov      edx, 0x82
000000014059f5a4 mov      rcx, rdi
000000014059f5a7 call     0x14059fafc
000000014059f5ac mov      ebx, eax
000000014059f5ae test     eax, eax
000000014059f5b0 jne      0x14059fac8
000000014059f5b6 mov      edx, 0x83
000000014059f5bb mov      rcx, rdi
000000014059f5be call     0x14059fafc
000000014059f5c3 mov      ebx, eax
000000014059f5c5 test     eax, eax
000000014059f5c7 jne      0x14059fac8
000000014059f5cd mov      edx, 0x84
000000014059f5d2 mov      rcx, rdi
000000014059f5d5 call     0x14059fafc
000000014059f5da mov      ebx, eax
000000014059f5dc test     eax, eax
000000014059f5de jne      0x14059fac8
000000014059f5e4 mov      edx, 0x85
000000014059f5e9 mov      rcx, rdi
000000014059f5ec call     0x14059fafc
000000014059f5f1 mov      ebx, eax
000000014059f5f3 test     eax, eax
000000014059f5f5 jne      0x14059fac8
000000014059f5fb mov      edx, 0x86
000000014059f600 mov      rcx, rdi
000000014059f603 call     0x14059fafc
000000014059f608 mov      ebx, eax
000000014059f60a test     eax, eax
000000014059f60c jne      0x14059fac8
000000014059f612 mov      edx, 0x87
000000014059f617 mov      rcx, rdi
000000014059f61a call     0x14059fafc
000000014059f61f mov      ebx, eax
000000014059f621 test     eax, eax
000000014059f623 jne      0x14059fac8
000000014059f629 mov      edx, 0x88
000000014059f62e mov      rcx, rdi
000000014059f631 call     0x14059fafc
000000014059f636 mov      ebx, eax
000000014059f638 test     eax, eax
000000014059f63a jne      0x14059fac8
000000014059f640 lea      r8, [rip + 0xce829]
000000014059f647 jmp      0x14059faac
000000014059f64c mov      rax, qword ptr [rcx + 0x18]
000000014059f650 lea      r8, [rip + 0xce759]
000000014059f657 mov      rcx, qword ptr [rcx + 8]
000000014059f65b mov      ebx, 1
000000014059f660 mov      edx, ebx
000000014059f662 mov      rax, qword ptr [rax + 0x118]
000000014059f669 call     qword ptr [rip + 0xe4c89]
000000014059f66f mov      rax, qword ptr [rdi + 0x18]
000000014059f673 lea      r8, [rip + 0xce766]
000000014059f67a mov      rcx, qword ptr [rdi + 8]
000000014059f67e mov      edx, ebx
000000014059f680 mov      rax, qword ptr [rax + 0x118]
000000014059f687 call     qword ptr [rip + 0xe4c6b]
000000014059f68d lea      edx, [rbx + 0x63]
000000014059f690 mov      rcx, rdi
000000014059f693 call     0x14059fafc
000000014059f698 mov      ebx, eax
000000014059f69a test     eax, eax
000000014059f69c jne      0x14059fac8
000000014059f6a2 lea      edx, [rax + 0x65]
000000014059f6a5 mov      rcx, rdi
000000014059f6a8 call     0x14059fafc
000000014059f6ad mov      ebx, eax
000000014059f6af test     eax, eax
000000014059f6b1 jne      0x14059fac8
000000014059f6b7 lea      edx, [rax + 0x66]
000000014059f6ba mov      rcx, rdi
000000014059f6bd call     0x14059fafc
000000014059f6c2 mov      ebx, eax
000000014059f6c4 test     eax, eax
000000014059f6c6 jne      0x14059fac8
000000014059f6cc lea      edx, [rax + 0x67]
000000014059f6cf mov      rcx, rdi
000000014059f6d2 call     0x14059fafc
000000014059f6d7 mov      ebx, eax
000000014059f6d9 test     eax, eax
000000014059f6db jne      0x14059fac8
000000014059f6e1 lea      edx, [rax + 0x68]
000000014059f6e4 mov      rcx, rdi
000000014059f6e7 call     0x14059fafc
000000014059f6ec mov      ebx, eax
000000014059f6ee test     eax, eax
000000014059f6f0 jne      0x14059fac8
000000014059f6f6 lea      edx, [rax + 0x69]
000000014059f6f9 mov      rcx, rdi
000000014059f6fc call     0x14059fafc
000000014059f701 mov      ebx, eax
000000014059f703 test     eax, eax
000000014059f705 jne      0x14059fac8
000000014059f70b lea      edx, [rax + 0x6a]
000000014059f70e mov      rcx, rdi
000000014059f711 call     0x14059fafc
000000014059f716 mov      ebx, eax
000000014059f718 test     eax, eax
000000014059f71a jne      0x14059fac8
000000014059f720 lea      edx, [rax + 0x6b]
000000014059f723 mov      rcx, rdi
000000014059f726 call     0x14059fafc
000000014059f72b mov      ebx, eax
000000014059f72d test     eax, eax
000000014059f72f jne      0x14059fac8
000000014059f735 lea      edx, [rax + 0x6c]
000000014059f738 mov      rcx, rdi
000000014059f73b call     0x14059fafc
000000014059f740 mov      ebx, eax
000000014059f742 test     eax, eax
000000014059f744 jne      0x14059fac8
000000014059f74a lea      edx, [rax + 0x6d]
000000014059f74d mov      rcx, rdi
000000014059f750 call     0x14059fafc
000000014059f755 mov      ebx, eax
000000014059f757 test     eax, eax
000000014059f759 jne      0x14059fac8
000000014059f75f lea      edx, [rax + 0x6e]
000000014059f762 mov      rcx, rdi
000000014059f765 call     0x14059fafc
000000014059f76a mov      ebx, eax
000000014059f76c test     eax, eax
000000014059f76e jne      0x14059fac8
000000014059f774 lea      edx, [rax + 0x6f]
000000014059f777 mov      rcx, rdi
000000014059f77a call     0x14059fafc
000000014059f77f mov      ebx, eax
000000014059f781 test     eax, eax
000000014059f783 jne      0x14059fac8
000000014059f789 lea      edx, [rax + 0x70]
000000014059f78c mov      rcx, rdi
000000014059f78f call     0x14059fafc
000000014059f794 mov      ebx, eax
000000014059f796 test     eax, eax
000000014059f798 jne      0x14059fac8
000000014059f79e lea      edx, [rax + 0x71]
000000014059f7a1 mov      rcx, rdi
000000014059f7a4 call     0x14059fafc
000000014059f7a9 mov      ebx, eax
000000014059f7ab test     eax, eax
000000014059f7ad jne      0x14059fac8
000000014059f7b3 lea      edx, [rax + 0x72]
000000014059f7b6 mov      rcx, rdi
000000014059f7b9 call     0x14059fafc
000000014059f7be mov      ebx, eax
000000014059f7c0 test     eax, eax
000000014059f7c2 jne      0x14059fac8
000000014059f7c8 lea      edx, [rax + 0x73]
000000014059f7cb mov      rcx, rdi
000000014059f7ce call     0x14059fafc
000000014059f7d3 mov      ebx, eax
000000014059f7d5 test     eax, eax
000000014059f7d7 jne      0x14059fac8
000000014059f7dd lea      edx, [rax + 0x74]
000000014059f7e0 mov      rcx, rdi
000000014059f7e3 call     0x14059fafc
000000014059f7e8 mov      ebx, eax
000000014059f7ea test     eax, eax
000000014059f7ec jne      0x14059fac8
000000014059f7f2 lea      edx, [rax + 0x75]
000000014059f7f5 mov      rcx, rdi
000000014059f7f8 call     0x14059fafc
000000014059f7fd mov      ebx, eax
000000014059f7ff test     eax, eax
000000014059f801 jne      0x14059fac8
000000014059f807 lea      edx, [rax + 0x76]
000000014059f80a mov      rcx, rdi
000000014059f80d call     0x14059fafc
000000014059f812 mov      ebx, eax
000000014059f814 test     eax, eax
000000014059f816 jne      0x14059fac8
000000014059f81c lea      edx, [rax + 0x77]
000000014059f81f mov      rcx, rdi
000000014059f822 call     0x14059fafc
000000014059f827 mov      ebx, eax
000000014059f829 test     eax, eax
000000014059f82b jne      0x14059fac8
000000014059f831 lea      edx, [rax + 0x78]
000000014059f834 mov      rcx, rdi
000000014059f837 call     0x14059fafc
000000014059f83c mov      ebx, eax
000000014059f83e test     eax, eax
000000014059f840 jne      0x14059fac8
000000014059f846 lea      edx, [rax + 0x79]
000000014059f849 mov      rcx, rdi
000000014059f84c call     0x14059fafc
000000014059f851 mov      ebx, eax
000000014059f853 test     eax, eax
000000014059f855 jne      0x14059fac8
000000014059f85b lea      edx, [rax + 0x7a]
000000014059f85e mov      rcx, rdi
000000014059f861 call     0x14059fafc
000000014059f866 mov      ebx, eax
000000014059f868 test     eax, eax
000000014059f86a jne      0x14059fac8
000000014059f870 lea      edx, [rax + 0x7b]
000000014059f873 mov      rcx, rdi
000000014059f876 call     0x14059fafc
000000014059f87b mov      ebx, eax
000000014059f87d test     eax, eax
000000014059f87f jne      0x14059fac8
000000014059f885 lea      edx, [rax + 0x7c]
000000014059f888 mov      rcx, rdi
000000014059f88b call     0x14059fafc
000000014059f890 mov      ebx, eax
000000014059f892 test     eax, eax
000000014059f894 jne      0x14059fac8
000000014059f89a lea      edx, [rax + 0x7d]
000000014059f89d mov      rcx, rdi
000000014059f8a0 call     0x14059fafc
000000014059f8a5 mov      ebx, eax
000000014059f8a7 test     eax, eax
000000014059f8a9 jne      0x14059fac8
000000014059f8af lea      r8, [rip + 0xce54a]
000000014059f8b6 jmp      0x14059faac
000000014059f8bb mov      rax, qword ptr [rcx + 0x18]
000000014059f8bf lea      r8, [rip + 0xce84a]
000000014059f8c6 mov      rcx, qword ptr [rcx + 8]
000000014059f8ca mov      ebx, 1
000000014059f8cf mov      edx, ebx
000000014059f8d1 mov      rax, qword ptr [rax + 0x118]
000000014059f8d8 call     qword ptr [rip + 0xe4a1a]
000000014059f8de mov      rax, qword ptr [rdi + 0x18]
000000014059f8e2 lea      r8, [rip + 0xe0657]
000000014059f8e9 mov      rcx, qword ptr [rdi + 8]
000000014059f8ed mov      edx, ebx
000000014059f8ef mov      rax, qword ptr [rax + 0x118]
000000014059f8f6 call     qword ptr [rip + 0xe49fc]
000000014059f8fc mov      edx, 0xc6
000000014059f901 mov      rcx, rdi
000000014059f904 call     0x14059fafc
000000014059f909 mov      ebx, eax
000000014059f90b test     eax, eax
000000014059f90d jne      0x14059fac8
000000014059f913 mov      edx, 0xc7
000000014059f918 mov      rcx, rdi
000000014059f91b call     0x14059fafc
000000014059f920 mov      ebx, eax
000000014059f922 test     eax, eax
000000014059f924 jne      0x14059fac8
000000014059f92a mov      edx, 0xc8
000000014059f92f mov      rcx, rdi
000000014059f932 call     0x14059fafc
000000014059f937 mov      ebx, eax
000000014059f939 test     eax, eax
000000014059f93b jne      0x14059fac8
000000014059f941 mov      edx, 0xc9
000000014059f946 mov      rcx, rdi
000000014059f949 call     0x14059fafc
000000014059f94e mov      ebx, eax
000000014059f950 test     eax, eax
000000014059f952 jne      0x14059fac8
000000014059f958 mov      edx, 0xca
000000014059f95d mov      rcx, rdi
000000014059f960 call     0x14059fafc
000000014059f965 mov      ebx, eax
000000014059f967 test     eax, eax
000000014059f969 jne      0x14059fac8
000000014059f96f mov      edx, 0xcb
000000014059f974 mov      rcx, rdi
000000014059f977 call     0x14059fafc
000000014059f97c mov      ebx, eax
000000014059f97e test     eax, eax
000000014059f980 jne      0x14059fac8
000000014059f986 mov      edx, 0xcc
000000014059f98b mov      rcx, rdi
000000014059f98e call     0x14059fafc
000000014059f993 mov      ebx, eax
000000014059f995 test     eax, eax
000000014059f997 jne      0x14059fac8
000000014059f99d mov      edx, 0xcd
000000014059f9a2 mov      rcx, rdi
000000014059f9a5 call     0x14059fafc
000000014059f9aa mov      ebx, eax
000000014059f9ac test     eax, eax
000000014059f9ae jne      0x14059fac8
000000014059f9b4 lea      r8, [rip + 0xe05a5]
000000014059f9bb jmp      0x14059faac
000000014059f9c0 mov      rax, qword ptr [rcx + 0x18]
000000014059f9c4 lea      r8, [rip + 0xce375]
000000014059f9cb mov      rcx, qword ptr [rcx + 8]
000000014059f9cf mov      ebx, 1
000000014059f9d4 mov      edx, ebx
000000014059f9d6 mov      rax, qword ptr [rax + 0x118]
000000014059f9dd call     qword ptr [rip + 0xe4915]
000000014059f9e3 mov      rax, qword ptr [rdi + 0x18]
000000014059f9e7 lea      r8, [rip + 0xce382]
000000014059f9ee mov      rcx, qword ptr [rdi + 8]
000000014059f9f2 mov      edx, ebx
000000014059f9f4 mov      rax, qword ptr [rax + 0x118]
000000014059f9fb call     qword ptr [rip + 0xe48f7]
000000014059fa01 mov      edx, 0x89
000000014059fa06 mov      rcx, rdi
000000014059fa09 call     0x14059fafc
000000014059fa0e mov      ebx, eax
000000014059fa10 test     eax, eax
000000014059fa12 jne      0x14059fac8
000000014059fa18 mov      edx, 0x8a
000000014059fa1d mov      rcx, rdi
000000014059fa20 call     0x14059fafc
000000014059fa25 mov      ebx, eax
000000014059fa27 test     eax, eax
000000014059fa29 jne      0x14059fac8
000000014059fa2f mov      edx, 0x8b
000000014059fa34 mov      rcx, rdi
000000014059fa37 call     0x14059fafc
000000014059fa3c mov      ebx, eax
000000014059fa3e test     eax, eax
000000014059fa40 jne      0x14059fac8
000000014059fa46 mov      edx, 0x8c
000000014059fa4b mov      rcx, rdi
000000014059fa4e call     0x14059fafc
000000014059fa53 mov      ebx, eax
000000014059fa55 test     eax, eax
000000014059fa57 jne      0x14059fac8
000000014059fa59 mov      edx, 0x8d
000000014059fa5e mov      rcx, rdi
000000014059fa61 call     0x14059fafc
000000014059fa66 mov      ebx, eax
000000014059fa68 test     eax, eax
000000014059fa6a jne      0x14059fac8
000000014059fa6c mov      edx, 0x8e
000000014059fa71 mov      rcx, rdi
000000014059fa74 call     0x14059fafc
000000014059fa79 mov      ebx, eax
000000014059fa7b test     eax, eax
000000014059fa7d jne      0x14059fac8
000000014059fa7f mov      edx, 0x8f
000000014059fa84 mov      rcx, rdi
000000014059fa87 call     0x14059fafc
000000014059fa8c mov      ebx, eax
000000014059fa8e test     eax, eax
000000014059fa90 jne      0x14059fac8
000000014059fa92 mov      edx, 0x90
000000014059fa97 mov      rcx, rdi
000000014059fa9a call     0x14059fafc
000000014059fa9f mov      ebx, eax
000000014059faa1 test     eax, eax
000000014059faa3 jne      0x14059fac8
000000014059faa5 lea      r8, [rip + 0xce2e4]
000000014059faac mov      rax, qword ptr [rdi + 0x18]
000000014059fab0 mov      edx, 2
000000014059fab5 mov      rcx, qword ptr [rdi + 8]
000000014059fab9 mov      rax, qword ptr [rax + 0x118]
000000014059fac0 call     qword ptr [rip + 0xe4832]
000000014059fac6 jmp      0x14059faec
000000014059fac8 mov      rax, qword ptr [rdi + 0x18]
000000014059facc lea      r8, [rip + 0xce72d]
000000014059fad3 mov      rcx, qword ptr [rdi + 8]
000000014059fad7 mov      r9d, ebx
000000014059fada mov      edx, 2
000000014059fadf mov      rax, qword ptr [rax + 0x118]
000000014059fae6 call     qword ptr [rip + 0xe480c]
000000014059faec mov      eax, ebx
000000014059faee mov      rbx, qword ptr [rsp + 0x40]
000000014059faf3 add      rsp, 0x30
000000014059faf7 pop      rdi
000000014059faf8 ret      