000000014025d838 sub      rsp, 0x38
000000014025d83c mov      r9d, edx
000000014025d83f cmp      edx, 0x1a
000000014025d842 jg       0x14025daa5
000000014025d848 je       0x14025da94
000000014025d84e cmp      edx, 0xd
000000014025d851 jg       0x14025d985
000000014025d857 je       0x14025d974
000000014025d85d cmp      edx, 6
000000014025d860 jg       0x14025d8ee
000000014025d866 je       0x14025d8e0
000000014025d868 test     edx, edx
000000014025d86a je       0x14025d8d7
000000014025d86c sub      edx, 1
000000014025d86f je       0x14025d8c7
000000014025d871 sub      edx, 1
000000014025d874 je       0x14025d8b6
000000014025d876 sub      edx, 1
000000014025d879 je       0x14025d8a5
000000014025d87b sub      edx, 1
000000014025d87e je       0x14025d897
000000014025d880 cmp      edx, 1
000000014025d883 jne      0x14025dc76
000000014025d889 mov      byte ptr [rcx + 0x7b], r8b
000000014025d88d bts      dword ptr [rcx + 4], 8
000000014025d892 jmp      0x14025dcff
000000014025d897 mov      byte ptr [rcx + 0x7c], r8b
000000014025d89b bts      dword ptr [rcx + 4], 7
000000014025d8a0 jmp      0x14025dcff
000000014025d8a5 mov      byte ptr [rcx + 0x82], r8b
000000014025d8ac bts      dword ptr [rcx + 4], 0xf
000000014025d8b1 jmp      0x14025dcff
000000014025d8b6 mov      byte ptr [rcx + 0x83], r8b
000000014025d8bd bts      dword ptr [rcx + 4], 0xe
000000014025d8c2 jmp      0x14025dcff
000000014025d8c7 mov      byte ptr [rcx + 0x92], r8b
000000014025d8ce or       dword ptr [rcx + 4], 1
000000014025d8d2 jmp      0x14025dcff
000000014025d8d7 mov      byte ptr [rcx + 1], 1
000000014025d8db jmp      0x14025dcff
000000014025d8e0 mov      byte ptr [rcx + 0x7e], r8b
000000014025d8e4 bts      dword ptr [rcx + 4], 9
000000014025d8e9 jmp      0x14025dcff
000000014025d8ee sub      edx, 7
000000014025d8f1 je       0x14025d966
000000014025d8f3 sub      edx, 1
000000014025d8f6 je       0x14025d955
000000014025d8f8 sub      edx, 1
000000014025d8fb je       0x14025d944
000000014025d8fd sub      edx, 1
000000014025d900 je       0x14025d933
000000014025d902 sub      edx, 1
000000014025d905 je       0x14025d921
000000014025d907 cmp      edx, 1
000000014025d90a jne      0x14025dc76
000000014025d910 mov      byte ptr [rcx + 0x89], r8b
000000014025d917 bts      dword ptr [rcx + 4], 0x11
000000014025d91c jmp      0x14025dcff
000000014025d921 mov      word ptr [rcx + 0x80], r8w
000000014025d929 bts      dword ptr [rcx + 4], 0x10
000000014025d92e jmp      0x14025dcff
000000014025d933 mov      byte ptr [rcx + 0xa0], r8b
000000014025d93a bts      dword ptr [rcx + 8], 0x16
000000014025d93f jmp      0x14025dcff
000000014025d944 mov      byte ptr [rcx + 0x8f], r8b
000000014025d94b bts      dword ptr [rcx + 4], 0xd
000000014025d950 jmp      0x14025dcff
000000014025d955 mov      byte ptr [rcx + 0x90], r8b
000000014025d95c bts      dword ptr [rcx + 4], 0xc
000000014025d961 jmp      0x14025dcff
000000014025d966 mov      byte ptr [rcx + 0x7d], r8b
000000014025d96a bts      dword ptr [rcx + 4], 0xa
000000014025d96f jmp      0x14025dcff
000000014025d974 mov      byte ptr [rcx + 0x88], r8b
000000014025d97b bts      dword ptr [rcx + 4], 0x12
000000014025d980 jmp      0x14025dcff
000000014025d985 cmp      r9d, 0x14
000000014025d989 jg       0x14025da2c
000000014025d98f je       0x14025da1b
000000014025d995 sub      edx, 0xe
000000014025d998 je       0x14025da0a
000000014025d99a sub      edx, 1
000000014025d99d je       0x14025d9fc
000000014025d99f sub      edx, 1
000000014025d9a2 je       0x14025d9eb
000000014025d9a4 sub      edx, 1
000000014025d9a7 je       0x14025d9d9
000000014025d9a9 sub      edx, 1
000000014025d9ac je       0x14025d9c8
000000014025d9ae cmp      edx, 1
000000014025d9b1 jne      0x14025dc76
000000014025d9b7 mov      byte ptr [rcx + 0x9e], r8b
000000014025d9be bts      dword ptr [rcx + 8], 0xb
000000014025d9c3 jmp      0x14025dcff
000000014025d9c8 mov      byte ptr [rcx + 0x9c], r8b
000000014025d9cf bts      dword ptr [rcx + 8], 0xe
000000014025d9d4 jmp      0x14025dcff
000000014025d9d9 mov      word ptr [rcx + 0x84], r8w
000000014025d9e1 bts      dword ptr [rcx + 4], 0x18
000000014025d9e6 jmp      0x14025dcff
000000014025d9eb mov      byte ptr [rcx + 0x91], r8b
000000014025d9f2 bts      dword ptr [rcx + 4], 0x16
000000014025d9f7 jmp      0x14025dcff
000000014025d9fc mov      byte ptr [rcx + 0x75], r8b
000000014025da00 bts      dword ptr [rcx + 4], 0x13
000000014025da05 jmp      0x14025dcff
000000014025da0a mov      byte ptr [rcx + 0x87], r8b
000000014025da11 bts      dword ptr [rcx + 4], 0x14
000000014025da16 jmp      0x14025dcff
000000014025da1b mov      byte ptr [rcx + 0x86], r8b
000000014025da22 bts      dword ptr [rcx + 4], 0x1c
000000014025da27 jmp      0x14025dcff
000000014025da2c sub      edx, 0x15
000000014025da2f je       0x14025da83
000000014025da31 sub      edx, 1
000000014025da34 je       0x14025da7a
000000014025da36 sub      edx, 1
000000014025da39 je       0x14025da6a
000000014025da3b sub      edx, 1
000000014025da3e je       0x14025da59
000000014025da40 cmp      edx, 1
000000014025da43 jne      0x14025dc76
000000014025da49 mov      byte ptr [rcx + 0x9f], r8b
000000014025da50 or       dword ptr [rcx + 8], 0x40
000000014025da54 jmp      0x14025dcff
000000014025da59 mov      byte ptr [rcx + 0x9a], r8b
000000014025da60 bts      dword ptr [rcx + 8], 0x11
000000014025da65 jmp      0x14025dcff
000000014025da6a mov      byte ptr [rcx + 0x8a], r8b
000000014025da71 or       dword ptr [rcx + 8], 2
000000014025da75 jmp      0x14025dcff
000000014025da7a mov      byte ptr [rcx + 0x78], r8b
000000014025da7e jmp      0x14025dcf0
000000014025da83 mov      byte ptr [rcx + 0x93], r8b
000000014025da8a bts      dword ptr [rcx + 4], 0x1e
000000014025da8f jmp      0x14025dcff
000000014025da94 mov      byte ptr [rcx + 0x9d], r8b
000000014025da9b bts      dword ptr [rcx + 8], 0xc
000000014025daa0 jmp      0x14025dcff
000000014025daa5 cmp      r9d, 0x27
000000014025daa9 jg       0x14025dbd8
000000014025daaf je       0x14025dbcb
000000014025dab5 cmp      r9d, 0x21
000000014025dab9 jg       0x14025db5e
000000014025dabf je       0x14025db4d
000000014025dac5 sub      edx, 0x1b
000000014025dac8 je       0x14025db3c
000000014025daca sub      edx, 1
000000014025dacd je       0x14025db2b
000000014025dacf sub      edx, 1
000000014025dad2 je       0x14025db1a
000000014025dad4 sub      edx, 1
000000014025dad7 je       0x14025db09
000000014025dad9 sub      edx, 1
000000014025dadc je       0x14025daf8
000000014025dade cmp      edx, 1
000000014025dae1 jne      0x14025dc76
000000014025dae7 mov      byte ptr [rcx + 0x8b], r8b
000000014025daee bts      dword ptr [rcx + 8], 0x15
000000014025daf3 jmp      0x14025dcff
000000014025daf8 mov      byte ptr [rcx + 0x8c], r8b
000000014025daff bts      dword ptr [rcx + 8], 0x14
000000014025db04 jmp      0x14025dcff
000000014025db09 mov      byte ptr [rcx + 0x8d], r8b
000000014025db10 bts      dword ptr [rcx + 8], 0x13
000000014025db15 jmp      0x14025dcff
000000014025db1a mov      byte ptr [rcx + 0x8e], r8b
000000014025db21 bts      dword ptr [rcx + 8], 0x12
000000014025db26 jmp      0x14025dcff
000000014025db2b mov      byte ptr [rcx + 0x94], r8b
000000014025db32 bts      dword ptr [rcx + 8], 0x1e
000000014025db37 jmp      0x14025dcff
000000014025db3c mov      byte ptr [rcx + 0x9b], r8b
000000014025db43 bts      dword ptr [rcx + 8], 0x1d
000000014025db48 jmp      0x14025dcff
000000014025db4d mov      byte ptr [rcx + 0x96], r8b
000000014025db54 bts      dword ptr [rcx + 8], 0x1a
000000014025db59 jmp      0x14025dcff
000000014025db5e sub      edx, 0x22
000000014025db61 je       0x14025dbb9
000000014025db63 sub      edx, 1
000000014025db66 je       0x14025dba9
000000014025db68 sub      edx, 1
000000014025db6b je       0x14025db99
000000014025db6d sub      edx, 1
000000014025db70 je       0x14025db88
000000014025db72 cmp      edx, 1
000000014025db75 jne      0x14025dc76
000000014025db7b mov      byte ptr [rcx + 0x74], r8b
000000014025db7f or       dword ptr [rcx + 4], 2
000000014025db83 jmp      0x14025dcff
000000014025db88 mov      word ptr [rcx + 0xa4], r8w
000000014025db90 or       dword ptr [rcx + 0xc], 8
000000014025db94 jmp      0x14025dcff
000000014025db99 mov      byte ptr [rcx + 0xa2], r8b
000000014025dba0 or       dword ptr [rcx + 0xc], 4
000000014025dba4 jmp      0x14025dcff
000000014025dba9 mov      byte ptr [rcx + 0xa1], r8b
000000014025dbb0 or       dword ptr [rcx + 0xc], 2
000000014025dbb4 jmp      0x14025dcff
000000014025dbb9 mov      word ptr [rcx + 0x98], r8w
000000014025dbc1 bts      dword ptr [rcx + 8], 0x1b
000000014025dbc6 jmp      0x14025dcff
000000014025dbcb mov      byte ptr [rcx + 0x73], r8b
000000014025dbcf or       dword ptr [rcx + 4], 4
000000014025dbd3 jmp      0x14025dcff
000000014025dbd8 cmp      r9d, 0x2e
000000014025dbdc jg       0x14025dc55
000000014025dbde je       0x14025dc4f
000000014025dbe0 sub      edx, 0x28
000000014025dbe3 je       0x14025dc42
000000014025dbe5 sub      edx, 1
000000014025dbe8 je       0x14025dc34
000000014025dbea sub      edx, 1
000000014025dbed je       0x14025dc27
000000014025dbef sub      edx, 1
000000014025dbf2 je       0x14025dc1a
000000014025dbf4 sub      edx, 1
000000014025dbf7 je       0x14025dc0c
000000014025dbf9 cmp      edx, 1
000000014025dbfc jne      0x14025dc76
000000014025dbfe mov      byte ptr [rcx + 0x79], r8b
000000014025dc02 bts      dword ptr [rcx + 4], 0x15
000000014025dc07 jmp      0x14025dcff
000000014025dc0c mov      byte ptr [rcx + 0x6d], r8b
000000014025dc10 bts      dword ptr [rcx + 4], 0xb
000000014025dc15 jmp      0x14025dcff
000000014025dc1a mov      byte ptr [rcx + 0x6e], r8b
000000014025dc1e or       dword ptr [rcx + 4], 0x40
000000014025dc22 jmp      0x14025dcff
000000014025dc27 mov      byte ptr [rcx + 0x6f], r8b
000000014025dc2b or       dword ptr [rcx + 4], 0x20
000000014025dc2f jmp      0x14025dcff
000000014025dc34 mov      word ptr [rcx + 0x70], r8w
000000014025dc39 or       dword ptr [rcx + 4], 0x10
000000014025dc3d jmp      0x14025dcff
000000014025dc42 mov      byte ptr [rcx + 0x72], r8b
000000014025dc46 or       dword ptr [rcx + 4], 8
000000014025dc4a jmp      0x14025dcff
000000014025dc4f mov      byte ptr [rcx + 0x7a], r8b
000000014025dc53 jmp      0x14025dc02
000000014025dc55 sub      edx, 0x2f
000000014025dc58 je       0x14025dcf6
000000014025dc5e sub      edx, 1
000000014025dc61 je       0x14025dcec
000000014025dc67 sub      edx, 1
000000014025dc6a je       0x14025dcde
000000014025dc6c sub      edx, 1
000000014025dc6f je       0x14025dcd0
000000014025dc71 cmp      edx, 1
000000014025dc74 je       0x14025dcc2
000000014025dc76 mov      rcx, qword ptr [rip + 0x6c2383]
000000014025dc7d lea      rax, [rip + 0x6c237c]
000000014025dc84 cmp      rcx, rax
000000014025dc87 je       0x14025dcff
000000014025dc89 cmp      byte ptr [rcx + 0x169], 3
000000014025dc90 jb       0x14025dcff
000000014025dc92 mov      eax, dword ptr [rcx + 0x16c]
000000014025dc98 test     al, 1
000000014025dc9a je       0x14025dcff
000000014025dc9c mov      rcx, qword ptr [rcx + 0x158]
000000014025dca3 lea      r8, [rip + 0x43affe]
000000014025dcaa mov      dword ptr [rsp + 0x20], r9d
000000014025dcaf mov      edx, 0x19
000000014025dcb4 lea      r9, [rip + 0x3b06d5]
000000014025dcbb call     0x1400088d8
000000014025dcc0 jmp      0x14025dcff
000000014025dcc2 mov      byte ptr [rcx + 0xa8], r8b
000000014025dcc9 bts      dword ptr [rcx + 0xc], 0x19
000000014025dcce jmp      0x14025dcff
000000014025dcd0 mov      byte ptr [rcx + 0xa7], r8b
000000014025dcd7 bts      dword ptr [rcx + 0xc], 0x18
000000014025dcdc jmp      0x14025dcff
000000014025dcde mov      byte ptr [rcx + 0xa6], r8b
000000014025dce5 bts      dword ptr [rcx + 0xc], 0x17
000000014025dcea jmp      0x14025dcff
000000014025dcec mov      byte ptr [rcx + 0x76], r8b
000000014025dcf0 or       dword ptr [rcx + 8], 1
000000014025dcf4 jmp      0x14025dcff
000000014025dcf6 mov      byte ptr [rcx + 0x77], r8b
000000014025dcfa bts      dword ptr [rcx + 4], 0x1f
000000014025dcff add      rsp, 0x38
000000014025dd03 ret      