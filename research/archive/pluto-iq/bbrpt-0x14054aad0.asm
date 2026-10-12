000000014054aad0 mov      qword ptr [rsp + 0x20], rbx
000000014054aad5 push     rbp
000000014054aad6 push     rsi
000000014054aad7 push     rdi
000000014054aad8 push     r12
000000014054aada push     r13
000000014054aadc push     r14
000000014054aade push     r15
000000014054aae0 mov      rbp, rsp
000000014054aae3 sub      rsp, 0x70
000000014054aae7 mov      rax, qword ptr [rip + 0x3dc972]
000000014054aaee xor      rax, rsp
000000014054aaf1 mov      qword ptr [rbp - 8], rax
000000014054aaf5 mov      r13, qword ptr [rcx]
000000014054aaf8 xor      eax, eax
000000014054aafa mov      r15, qword ptr [rcx + 0x140]
000000014054ab01 xorps    xmm0, xmm0
000000014054ab04 movups   xmmword ptr [rbp - 0x27], xmm0
000000014054ab08 mov      qword ptr [rbp - 0x17], rax
000000014054ab0c mov      ebx, r9d
000000014054ab0f mov      dword ptr [rbp - 0xf], eax
000000014054ab12 mov      r14, r8
000000014054ab15 mov      word ptr [rbp - 0xb], ax
000000014054ab19 mov      rdi, rdx
000000014054ab1c mov      byte ptr [rbp - 9], al
000000014054ab1f mov      rsi, rcx
000000014054ab22 call     0x1405202e0
000000014054ab27 cmp      ebx, eax
000000014054ab29 je       0x14054ab35
000000014054ab2b mov      eax, 0xa
000000014054ab30 jmp      0x14054b201
000000014054ab35 movzx    ecx, byte ptr [rdi + 0x57]
000000014054ab39 cmp      cl, 0xb
000000014054ab3c jbe      0x14054ab6c
000000014054ab3e mov      rdx, qword ptr [rsi + 0x18]
000000014054ab42 lea      r8, [rip + 0x114c67]
000000014054ab49 mov      r9d, ecx
000000014054ab4c mov      rcx, qword ptr [rsi + 8]
000000014054ab50 mov      rax, qword ptr [rdx + 0x118]
000000014054ab57 mov      edx, 2
000000014054ab5c call     qword ptr [rip + 0x139796]
000000014054ab62 mov      eax, 0xb
000000014054ab67 jmp      0x14054b201
000000014054ab6c movzx    ecx, word ptr [rdi + 0x36]
000000014054ab70 mov      r8d, 1
000000014054ab76 movzx    eax, cx
000000014054ab79 mov      edx, 0x3ffe
000000014054ab7e sub      ax, r8w
000000014054ab82 cmp      ax, dx
000000014054ab85 ja       0x14054b1d8
000000014054ab8b xor      r12d, r12d
000000014054ab8e mov      ebx, 0x400
000000014054ab93 mov      qword ptr [r14], r12
000000014054ab96 mov      qword ptr [r14 + 8], r12
000000014054ab9a mov      qword ptr [r14 + 0x10], r12
000000014054ab9e mov      qword ptr [r14 + 0x18], r12
000000014054aba2 mov      eax, dword ptr [rsi + 0xeec]
000000014054aba8 cmp      eax, r8d
000000014054abab jne      0x14054abbe
000000014054abad mov      al, byte ptr [rdi + 0x59]
000000014054abb0 neg      al
000000014054abb2 sbb      edx, edx
000000014054abb4 and      edx, 0x80
000000014054abba add      edx, ebx
000000014054abbc jmp      0x14054ac01
000000014054abbe test     eax, eax
000000014054abc0 jne      0x14054abe0
000000014054abc2 mov      al, byte ptr [rdi + 0x5b]
000000014054abc5 neg      al
000000014054abc7 mov      al, byte ptr [rdi + 0x59]
000000014054abca sbb      edx, edx
000000014054abcc and      edx, 0x200000
000000014054abd2 add      edx, ebx
000000014054abd4 neg      al
000000014054abd6 sbb      ecx, ecx
000000014054abd8 and      ecx, 0x80
000000014054abde jmp      0x14054abff
000000014054abe0 mov      eax, dword ptr [rsi + 0x3b0]
000000014054abe6 mov      ecx, ebx
000000014054abe8 sub      eax, 3
000000014054abeb cmp      eax, r8d
000000014054abee mov      al, byte ptr [rdi + 0x58]
000000014054abf1 cmova    ecx, r12d
000000014054abf5 neg      al
000000014054abf7 sbb      edx, edx
000000014054abf9 and      edx, 0x80
000000014054abff or       edx, ecx
000000014054ac01 mov      dword ptr [r14], edx
000000014054ac04 lea      r8, [rbp - 0x40]
000000014054ac08 mov      rdx, rdi
000000014054ac0b mov      rcx, rsi
000000014054ac0e call     0x14050d644
000000014054ac13 test     eax, eax
000000014054ac15 jne      0x14054b201
000000014054ac1b lea      r9, [rbp - 0x3e]
000000014054ac1f mov      rdx, rdi
000000014054ac22 lea      r8, [rbp - 0x3f]
000000014054ac26 mov      rcx, rsi
000000014054ac29 call     0x14050d740
000000014054ac2e test     eax, eax
000000014054ac30 jne      0x14054b201
000000014054ac36 movzx    edx, byte ptr [rdi + 0x51]
000000014054ac3a lea      r8, [rip - 0x54ac41]
000000014054ac41 movzx    eax, byte ptr [rdi + 0x57]
000000014054ac45 and      edx, 0xf
000000014054ac48 shl      edx, 8
000000014054ac4b and      eax, 0xf
000000014054ac4e or       edx, eax
000000014054ac50 movzx    eax, byte ptr [rbp - 0x40]
000000014054ac54 shl      edx, 5
000000014054ac57 and      eax, 0x1f
000000014054ac5a or       edx, eax
000000014054ac5c movzx    eax, byte ptr [rdi + 0x3f]
000000014054ac60 shl      edx, 9
000000014054ac63 and      eax, 7
000000014054ac66 or       edx, eax
000000014054ac68 mov      al, byte ptr [rdi + 0x44]
000000014054ac6b shl      edx, 2
000000014054ac6e neg      al
000000014054ac70 mov      al, byte ptr [rdi + 0x5f]
000000014054ac73 sbb      ecx, ecx
000000014054ac75 and      ecx, 0x100
000000014054ac7b or       edx, ecx
000000014054ac7d neg      al
000000014054ac7f mov      al, byte ptr [rdi + 0x43]
000000014054ac82 sbb      ecx, ecx
000000014054ac84 and      ecx, 0x40
000000014054ac87 or       edx, ecx
000000014054ac89 neg      al
000000014054ac8b mov      al, byte ptr [rdi + 0x56]
000000014054ac8e sbb      ecx, ecx
000000014054ac90 and      ecx, 0x20
000000014054ac93 or       edx, ecx
000000014054ac95 neg      al
000000014054ac97 movzx    eax, byte ptr [rdi + 0x3e]
000000014054ac9b sbb      ecx, ecx
000000014054ac9d and      eax, 3
000000014054aca0 and      ecx, 0x80000000
000000014054aca6 or       edx, ecx
000000014054aca8 or       edx, eax
000000014054acaa mov      al, byte ptr [rdi + 0x59]
000000014054acad neg      al
000000014054acaf mov      al, byte ptr [rbp - 0x3f]
000000014054acb2 sbb      ecx, ecx
000000014054acb4 and      ecx, 0x400000
000000014054acba or       edx, ecx
000000014054acbc neg      al
000000014054acbe sbb      ecx, ecx
000000014054acc0 and      ecx, 0x100000
000000014054acc6 or       edx, ecx
000000014054acc8 or       dword ptr [r14], edx
000000014054accb movzx    edx, byte ptr [rdi + 0x54]
000000014054accf movzx    eax, byte ptr [rdi + 0x5a]
000000014054acd3 and      edx, 3
000000014054acd6 shl      eax, 2
000000014054acd9 or       edx, eax
000000014054acdb movzx    eax, byte ptr [rdi + 0x55]
000000014054acdf shl      edx, 4
000000014054ace2 and      eax, 0xf
000000014054ace5 or       edx, eax
000000014054ace7 movzx    eax, byte ptr [rdi + 0x61]
000000014054aceb shl      edx, 4
000000014054acee and      eax, 3
000000014054acf1 or       edx, eax
000000014054acf3 movzx    eax, byte ptr [rdi + 0x77]
000000014054acf7 shl      edx, 4
000000014054acfa and      eax, 0xf
000000014054acfd or       edx, eax
000000014054acff mov      al, byte ptr [rdi + 0x60]
000000014054ad02 shl      edx, 0xc
000000014054ad05 neg      al
000000014054ad07 sbb      ecx, ecx
000000014054ad09 and      ecx, 0x40000
000000014054ad0f or       edx, ecx
000000014054ad11 mov      dword ptr [r14 + 4], edx
000000014054ad15 cmp      byte ptr [rdi + 0x57], 7
000000014054ad19 mov      cl, byte ptr [rdi + 0x2e]
000000014054ad1c jbe      0x14054ad2a
000000014054ad1e neg      cl
000000014054ad20 sbb      cl, cl
000000014054ad22 and      cl, 8
000000014054ad25 add      cl, 0x11
000000014054ad28 jmp      0x14054ad3e
000000014054ad2a movzx    eax, byte ptr [rdi + 0x34]
000000014054ad2e add      cl, cl
000000014054ad30 or       cl, byte ptr [rdi + 0x2f]
000000014054ad33 shl      cl, 2
000000014054ad36 or       cl, byte ptr [rax + r8 + 0xcc5180]
000000014054ad3e movzx    edx, word ptr [rdi + 0x3c]
000000014054ad42 mov      r10d, 0x4000
000000014054ad48 shl      edx, 7
000000014054ad4b movzx    eax, cl
000000014054ad4e and      eax, 0x3f
000000014054ad51 or       edx, eax
000000014054ad53 movzx    eax, byte ptr [rdi + 0x34]
000000014054ad57 shl      edx, 0xf
000000014054ad5a mov      al, byte ptr [rax + r8 + 0xcc5188]
000000014054ad62 neg      al
000000014054ad64 mov      al, byte ptr [rdi + 0x5d]
000000014054ad67 sbb      ecx, ecx
000000014054ad69 and      ecx, 0x200000
000000014054ad6f or       edx, ecx
000000014054ad71 neg      al
000000014054ad73 movzx    eax, word ptr [rdi + 0x36]
000000014054ad77 sbb      ecx, ecx
000000014054ad79 and      eax, 0x3fff
000000014054ad7e and      ecx, r10d
000000014054ad81 or       edx, ecx
000000014054ad83 or       edx, eax
000000014054ad85 mov      dword ptr [r14 + 8], edx
000000014054ad89 cmp      byte ptr [rdi + 0x5e], r12b
000000014054ad8d jne      0x14054ad9b
000000014054ad8f mov      edx, r12d
000000014054ad92 cmp      byte ptr [rdi + 0x92], r12b
000000014054ad99 je       0x14054ad9e
000000014054ad9b mov      edx, r10d
000000014054ad9e mov      al, byte ptr [rdi + 0x68]
000000014054ada1 mov      r11d, 0x2000
000000014054ada7 neg      al
000000014054ada9 mov      r9d, 0xfff
000000014054adaf movzx    eax, word ptr [rdi + 0x40]
000000014054adb3 sbb      ecx, ecx
000000014054adb5 and      eax, r9d
000000014054adb8 and      ecx, r11d
000000014054adbb or       ecx, eax
000000014054adbd or       ecx, edx
000000014054adbf mov      dword ptr [r14 + 0xc], ecx
000000014054adc3 movzx    eax, byte ptr [rdi + 0x62]
000000014054adc7 movzx    ecx, byte ptr [rdi + 0x63]
000000014054adcb shl      ecx, 8
000000014054adce or       ecx, eax
000000014054add0 shl      ecx, 0x10
000000014054add3 mov      dword ptr [r14 + 0x10], ecx
000000014054add7 movzx    eax, byte ptr [rdi + 0x66]
000000014054addb movzx    ecx, byte ptr [rdi + 0x67]
000000014054addf shl      ecx, 8
000000014054ade2 or       ecx, eax
000000014054ade4 movzx    eax, byte ptr [rdi + 0x65]
000000014054ade8 shl      ecx, 8
000000014054adeb or       ecx, eax
000000014054aded movzx    eax, byte ptr [rdi + 0x64]
000000014054adf1 shl      ecx, 8
000000014054adf4 or       ecx, eax
000000014054adf6 mov      dword ptr [r14 + 0x14], ecx
000000014054adfa cmp      byte ptr [rdi + 0x79], r12b
000000014054adfe jne      0x14054ae09
000000014054ae00 mov      r8d, r12d
000000014054ae03 cmp      byte ptr [rdi + 0x7a], r12b
000000014054ae07 je       0x14054ae0f
000000014054ae09 mov      r8d, 0x800
000000014054ae0f mov      al, byte ptr [rdi + 0x4d]
000000014054ae12 neg      al
000000014054ae14 mov      dword ptr [rbp - 0x38], r12d
000000014054ae18 mov      al, byte ptr [rdi + 0x6a]
000000014054ae1b sbb      edx, edx
000000014054ae1d mov      dword ptr [rbp - 0x30], r9d
000000014054ae21 and      edx, r10d
000000014054ae24 neg      al
000000014054ae26 mov      al, byte ptr [rdi + 0x6b]
000000014054ae29 sbb      ecx, ecx
000000014054ae2b and      ecx, 0x1000
000000014054ae31 or       edx, ecx
000000014054ae33 neg      al
000000014054ae35 mov      al, byte ptr [rbp - 0x3e]
000000014054ae38 sbb      ecx, ecx
000000014054ae3a and      ecx, 0x8000
000000014054ae40 or       edx, ecx
000000014054ae42 neg      al
000000014054ae44 sbb      ecx, ecx
000000014054ae46 and      ecx, r11d
000000014054ae49 or       edx, ecx
000000014054ae4b mov      rcx, rsi
000000014054ae4e or       edx, r8d
000000014054ae51 mov      dword ptr [r14 + 0x18], edx
000000014054ae55 lea      rdx, [rbp - 0x38]
000000014054ae59 movzx    eax, word ptr [rdi + 0x70]
000000014054ae5d mov      dword ptr [rbp - 0x34], eax
000000014054ae60 mov      rax, qword ptr [r13 + 0x5a0]
000000014054ae67 call     qword ptr [rip + 0x13948b]
000000014054ae6d mov      r9d, eax
000000014054ae70 test     eax, eax
000000014054ae72 je       0x14054ae95
000000014054ae74 mov      rcx, qword ptr [rsi + 0x18]
000000014054ae78 lea      r8, [rip + 0x114971]
000000014054ae7f mov      edx, 2
000000014054ae84 mov      rax, qword ptr [rcx + 0x118]
000000014054ae8b mov      rcx, qword ptr [rsi + 8]
000000014054ae8f call     qword ptr [rip + 0x139463]
000000014054ae95 movzx    edx, byte ptr [rdi + 0x73]
000000014054ae99 mov      r10d, 0x1000
000000014054ae9f movzx    eax, byte ptr [rdi + 0x72]
000000014054aea3 and      edx, 7
000000014054aea6 shl      edx, 0xf
000000014054aea9 and      eax, 7
000000014054aeac or       edx, eax
000000014054aeae mov      r9d, 0x800
000000014054aeb4 movzx    eax, byte ptr [rdi + 0x53]
000000014054aeb8 lea      r8d, [r10 - 1]
000000014054aebc and      eax, 0xf
000000014054aebf shl      edx, 7
000000014054aec2 or       edx, eax
000000014054aec4 mov      r11d, 0x80000000
000000014054aeca mov      al, byte ptr [rdi + 0x6e]
000000014054aecd shl      edx, 6
000000014054aed0 neg      al
000000014054aed2 mov      al, byte ptr [rdi + 0x6d]
000000014054aed5 sbb      ecx, ecx
000000014054aed7 and      ecx, r10d
000000014054aeda or       edx, ecx
000000014054aedc neg      al
000000014054aede mov      al, byte ptr [rdi + 0x6f]
000000014054aee1 sbb      ecx, ecx
000000014054aee3 and      ecx, r9d
000000014054aee6 or       edx, ecx
000000014054aee8 neg      al
000000014054aeea mov      al, byte ptr [rdi + 0x74]
000000014054aeed sbb      ecx, ecx
000000014054aeef and      ecx, ebx
000000014054aef1 or       edx, ecx
000000014054aef3 neg      al
000000014054aef5 mov      eax, dword ptr [rbp - 0x30]
000000014054aef8 sbb      ecx, ecx
000000014054aefa and      eax, r8d
000000014054aefd and      ecx, r11d
000000014054af00 shl      eax, 0x10
000000014054af03 or       edx, ecx
000000014054af05 or       edx, eax
000000014054af07 mov      dword ptr [r14 + 0x1c], edx
000000014054af0b movzx    edx, byte ptr [rdi + 0x82]
000000014054af12 movzx    eax, byte ptr [rdi + 0x90]
000000014054af19 and      edx, 0x3f
000000014054af1c and      eax, 7
000000014054af1f shl      edx, 0xc
000000014054af22 or       edx, eax
000000014054af24 mov      al, byte ptr [rdi + 0x7c]
000000014054af27 shl      edx, 4
000000014054af2a neg      al
000000014054af2c mov      al, byte ptr [rdi + 0x7b]
000000014054af2f sbb      ecx, ecx
000000014054af31 and      ecx, r10d
000000014054af34 or       edx, ecx
000000014054af36 neg      al
000000014054af38 mov      al, byte ptr [rdi + 0x7e]
000000014054af3b sbb      ecx, ecx
000000014054af3d and      ecx, r9d
000000014054af40 or       edx, ecx
000000014054af42 neg      al
000000014054af44 mov      al, byte ptr [rdi + 0x7d]
000000014054af47 sbb      ecx, ecx
000000014054af49 and      ecx, ebx
000000014054af4b or       edx, ecx
000000014054af4d neg      al
000000014054af4f mov      al, byte ptr [rdi + 0x83]
000000014054af55 sbb      ecx, ecx
000000014054af57 and      ecx, 0x200
000000014054af5d or       edx, ecx
000000014054af5f neg      al
000000014054af61 movzx    eax, byte ptr [rdi + 0x8f]
000000014054af68 sbb      ecx, ecx
000000014054af6a and      eax, 0xf
000000014054af6d and      ecx, 0x400000
000000014054af73 or       edx, ecx
000000014054af75 or       edx, eax
000000014054af77 mov      al, byte ptr [rdi + 0x92]
000000014054af7d neg      al
000000014054af7f sbb      ecx, ecx
000000014054af81 and      ecx, r11d
000000014054af84 or       edx, ecx
000000014054af86 mov      dword ptr [rbp - 0x28], edx
000000014054af89 movzx    eax, word ptr [rdi + 0x84]
000000014054af90 test     ax, ax
000000014054af93 je       0x14054af9f
000000014054af95 dec      ax
000000014054af98 mov      word ptr [rdi + 0x84], ax
000000014054af9f movzx    eax, word ptr [rdi + 0x80]
000000014054afa6 lea      rdx, [rbp - 0x38]
000000014054afaa mov      dword ptr [rbp - 0x34], eax
000000014054afad mov      rcx, rsi
000000014054afb0 mov      dword ptr [rbp - 0x38], r12d
000000014054afb4 mov      dword ptr [rbp - 0x30], r8d
000000014054afb8 mov      rax, qword ptr [r13 + 0x5a0]
000000014054afbf call     qword ptr [rip + 0x139333]
000000014054afc5 mov      r9d, eax
000000014054afc8 test     eax, eax
000000014054afca je       0x14054afed
000000014054afcc mov      rcx, qword ptr [rsi + 0x18]
000000014054afd0 lea      r8, [rip + 0x114819]
000000014054afd7 mov      edx, 2
000000014054afdc mov      rax, qword ptr [rcx + 0x118]
000000014054afe3 mov      rcx, qword ptr [rsi + 8]
000000014054afe7 call     qword ptr [rip + 0x13930b]
000000014054afed mov      al, byte ptr [rdi + 0x88]
000000014054aff3 mov      r8d, 0x8000
000000014054aff9 movzx    edx, byte ptr [rdi + 0xa0]
000000014054b000 mov      r9d, 0x80000000
000000014054b006 shl      edx, 0x1c
000000014054b009 neg      al
000000014054b00b mov      al, byte ptr [rdi + 0x87]
000000014054b011 sbb      ecx, ecx
000000014054b013 and      ecx, 0x4000
000000014054b019 or       edx, ecx
000000014054b01b neg      al
000000014054b01d mov      al, byte ptr [rdi + 0x91]
000000014054b023 sbb      ecx, ecx
000000014054b025 and      ecx, 0x1000
000000014054b02b or       edx, ecx
000000014054b02d neg      al
000000014054b02f mov      al, byte ptr [rdi + 0x89]
000000014054b035 sbb      ecx, ecx
000000014054b037 and      ecx, ebx
000000014054b039 or       edx, ecx
000000014054b03b neg      al
000000014054b03d movzx    eax, word ptr [rdi + 0x84]
000000014054b044 sbb      ecx, ecx
000000014054b046 and      ecx, r8d
000000014054b049 or       edx, ecx
000000014054b04b movzx    ecx, al
000000014054b04e or       edx, ecx
000000014054b050 mov      eax, dword ptr [rbp - 0x30]
000000014054b053 and      eax, 0xfff
000000014054b058 shl      eax, 0x10
000000014054b05b or       edx, eax
000000014054b05d movzx    eax, byte ptr [rdi + 0x93]
000000014054b064 mov      dword ptr [rbp - 0x24], edx
000000014054b067 and      eax, 7
000000014054b06a movzx    edx, byte ptr [rdi + 0x86]
000000014054b071 and      edx, 7
000000014054b074 shl      edx, 5
000000014054b077 or       edx, eax
000000014054b079 mov      al, byte ptr [rdi + 0x9e]
000000014054b07f shl      edx, 0xd
000000014054b082 neg      al
000000014054b084 mov      al, byte ptr [rdi + 0x78]
000000014054b087 sbb      ecx, ecx
000000014054b089 and      ecx, 0x40000000
000000014054b08f or       edx, ecx
000000014054b091 neg      al
000000014054b093 mov      al, byte ptr [rdi + 0x9c]
000000014054b099 sbb      ecx, ecx
000000014054b09b and      ecx, ebx
000000014054b09d or       edx, ecx
000000014054b09f neg      al
000000014054b0a1 movzx    eax, byte ptr [rdi + 0x8a]
000000014054b0a8 sbb      ecx, ecx
000000014054b0aa and      ecx, r9d
000000014054b0ad or       edx, ecx
000000014054b0af or       edx, eax
000000014054b0b1 mov      al, byte ptr [rdi + 0x9d]
000000014054b0b7 neg      al
000000014054b0b9 mov      dword ptr [rbp - 0x20], edx
000000014054b0bc mov      al, byte ptr [rdi + 0x9f]
000000014054b0c2 sbb      edx, edx
000000014054b0c4 and      edx, 0x200
000000014054b0ca neg      al
000000014054b0cc movzx    eax, byte ptr [rdi + 0xa8]
000000014054b0d3 sbb      ecx, ecx
000000014054b0d5 and      eax, 3
000000014054b0d8 and      ecx, r8d
000000014054b0db or       edx, ecx
000000014054b0dd mov      dword ptr [rbp - 0x1c], edx
000000014054b0e0 movzx    edx, byte ptr [rdi + 0x8d]
000000014054b0e7 and      edx, 3
000000014054b0ea shl      edx, 8
000000014054b0ed or       edx, eax
000000014054b0ef movzx    eax, byte ptr [rdi + 0x96]
000000014054b0f6 and      eax, 3
000000014054b0f9 shl      edx, 5
000000014054b0fc or       edx, eax
000000014054b0fe mov      al, byte ptr [rdi + 0x8c]
000000014054b104 shl      edx, 0x10
000000014054b107 neg      al
000000014054b109 sbb      ecx, ecx
000000014054b10b mov      al, byte ptr [rdi + 0x8b]
000000014054b111 and      ecx, 0x10000000
000000014054b117 or       edx, ecx
000000014054b119 mov      qword ptr [rbp - 0x10], r12
000000014054b11d neg      al
000000014054b11f mov      al, byte ptr [rdi + 0xa7]
000000014054b125 sbb      ecx, ecx
000000014054b127 and      ecx, 0x8000000
000000014054b12d or       edx, ecx
000000014054b12f neg      al
000000014054b131 mov      al, byte ptr [rdi + 0xa1]
000000014054b137 sbb      ecx, ecx
000000014054b139 and      ecx, 0x100000
000000014054b13f or       edx, ecx
000000014054b141 neg      al
000000014054b143 mov      al, byte ptr [rdi + 0x8e]
000000014054b149 sbb      ecx, ecx
000000014054b14b and      ecx, 0x40000
000000014054b151 or       edx, ecx
000000014054b153 neg      al
000000014054b155 movzx    eax, word ptr [rdi + 0x98]
000000014054b15c sbb      ecx, ecx
000000014054b15e and      ecx, r9d
000000014054b161 or       edx, ecx
000000014054b163 or       edx, eax
000000014054b165 mov      al, byte ptr [rdi + 0xa2]
000000014054b16b neg      al
000000014054b16d mov      dword ptr [rbp - 0x18], edx
000000014054b170 movzx    eax, word ptr [rdi + 0xa4]
000000014054b177 sbb      ecx, ecx
000000014054b179 and      eax, 0x1f
000000014054b17c and      ecx, 0x20
000000014054b17f or       ecx, eax
000000014054b181 mov      dword ptr [rbp - 0x14], ecx
000000014054b184 cmp      byte ptr [rdi + 0x59], r12b
000000014054b188 je       0x14054b1b6
000000014054b18a mov      rax, qword ptr [rsi + 0x18]
000000014054b18e lea      r8, [rbp - 0x28]
000000014054b192 movzx    edx, byte ptr [r15 + 0xe2]
000000014054b19a movzx    r9d, byte ptr [r15 + 0xe3]
000000014054b1a2 add      rdx, r14
000000014054b1a5 mov      rcx, qword ptr [rsi + 8]
000000014054b1a9 mov      rax, qword ptr [rax + 0xa0]
000000014054b1b0 call     qword ptr [rip + 0x139142]
000000014054b1b6 mov      rax, qword ptr [rsi + 0x140]
000000014054b1bd cmp      byte ptr [rax + 0xf1], r12b
000000014054b1c4 je       0x14054b1d4
000000014054b1c6 mov      r8, r14
000000014054b1c9 mov      rdx, rdi
000000014054b1cc mov      rcx, rsi
000000014054b1cf call     0x140520338
000000014054b1d4 xor      eax, eax
000000014054b1d6 jmp      0x14054b201
000000014054b1d8 mov      rax, qword ptr [rsi + 0x18]
000000014054b1dc lea      r8, [rip + 0x1145ed]
000000014054b1e3 mov      r9d, ecx
000000014054b1e6 mov      edx, 2
000000014054b1eb mov      rcx, qword ptr [rsi + 8]
000000014054b1ef mov      rax, qword ptr [rax + 0x118]
000000014054b1f6 call     qword ptr [rip + 0x1390fc]
000000014054b1fc mov      eax, 0x2e
000000014054b201 mov      rcx, qword ptr [rbp - 8]
000000014054b205 xor      rcx, rsp
000000014054b208 call     0x1405f45b0
000000014054b20d mov      rbx, qword ptr [rsp + 0xc8]
000000014054b215 add      rsp, 0x70
000000014054b219 pop      r15
000000014054b21b pop      r14
000000014054b21d pop      r13
000000014054b21f pop      r12
000000014054b221 pop      rdi
000000014054b222 pop      rsi
000000014054b223 pop      rbp
000000014054b224 ret      