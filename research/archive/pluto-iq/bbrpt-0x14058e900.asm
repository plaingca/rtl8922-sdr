000000014058e900 mov      rax, rsp
000000014058e903 mov      qword ptr [rax + 0x20], r9
000000014058e907 mov      dword ptr [rax + 0x18], r8d
000000014058e90b mov      qword ptr [rax + 0x10], rdx
000000014058e90f mov      qword ptr [rax + 8], rcx
000000014058e913 push     rbp
000000014058e914 push     rbx
000000014058e915 push     rsi
000000014058e916 push     rdi
000000014058e917 push     r12
000000014058e919 push     r13
000000014058e91b push     r14
000000014058e91d push     r15
000000014058e91f mov      rbp, rsp
000000014058e922 sub      rsp, 0x68
000000014058e926 mov      rax, qword ptr [rcx]
000000014058e929 mov      r15, rdx
000000014058e92c xor      r14d, r14d
000000014058e92f mov      rdi, r9
000000014058e932 mov      dword ptr [rbp - 0x34], r14d
000000014058e936 mov      rsi, qword ptr [rax]
000000014058e939 mov      rax, qword ptr [rbp + 0x48]
000000014058e93d mov      qword ptr [rbp - 0x28], rsi
000000014058e941 lea      rcx, [rax + 0x1208]
000000014058e948 mov      rax, qword ptr [rax + 0x18]
000000014058e94c mov      qword ptr [rbp - 0x10], rcx
000000014058e950 mov      rdx, rcx
000000014058e953 mov      rcx, qword ptr [rbp + 0x48]
000000014058e957 mov      rax, qword ptr [rax + 0x108]
000000014058e95e mov      rcx, qword ptr [rcx + 8]
000000014058e962 call     qword ptr [rip + 0xf5990]
000000014058e968 mov      rax, qword ptr [rbp + 0x48]
000000014058e96c lea      r13d, [r14 + 1]
000000014058e970 mov      ecx, dword ptr [rax + 0xef8]
000000014058e976 inc      ecx
000000014058e978 mov      dword ptr [rax + 0xef8], ecx
000000014058e97e cmp      ecx, r13d
000000014058e981 je       0x14058e9df
000000014058e983 mov      rax, qword ptr [rax + 0x18]
000000014058e987 lea      r8, [rip + 0xd6b72]
000000014058e98e mov      r9d, dword ptr [rbp + 0x68]
000000014058e992 lea      edx, [r14 + 2]
000000014058e996 mov      dword ptr [rsp + 0x20], ecx
000000014058e99a mov      rcx, qword ptr [rbp + 0x48]
000000014058e99e mov      rax, qword ptr [rax + 0x118]
000000014058e9a5 mov      rcx, qword ptr [rcx + 8]
000000014058e9a9 call     qword ptr [rip + 0xf5949]
000000014058e9af mov      rax, qword ptr [rbp + 0x48]
000000014058e9b3 mov      rcx, qword ptr [rbp + 0x48]
000000014058e9b7 mov      rdx, qword ptr [rbp - 0x10]
000000014058e9bb dec      dword ptr [rax + 0xef8]
000000014058e9c1 mov      rax, qword ptr [rax + 0x18]
000000014058e9c5 mov      rcx, qword ptr [rcx + 8]
000000014058e9c9 mov      rax, qword ptr [rax + 0x110]
000000014058e9d0 call     qword ptr [rip + 0xf5922]
000000014058e9d6 lea      eax, [r14 + 0x10]
000000014058e9da jmp      0x14058ebdb
000000014058e9df cmp      dword ptr [rbp + 0x68], 0x1be
000000014058e9e6 ja       0x14058ebb5
000000014058e9ec mov      eax, dword ptr [rbp + 0x68]
000000014058e9ef lea      rdx, [rip - 0x58e9f6]
000000014058e9f6 mov      ecx, dword ptr [rdx + rax*4 + 0x59d694]
000000014058e9fd add      rcx, rdx
000000014058ea00 jmp      rcx
000000014058ea02 mov      rbx, qword ptr [rbp + 0x48]
000000014058ea06 mov      edi, 0x10e10
000000014058ea0b mov      rax, qword ptr [rsi + 0x10]
000000014058ea0f mov      edx, edi
000000014058ea11 mov      rcx, rbx
000000014058ea14 call     qword ptr [rip + 0xf58de]
000000014058ea1a movzx    eax, ax
000000014058ea1d mov      dword ptr [rbp - 0x38], eax
000000014058ea20 test     eax, eax
000000014058ea22 je       0x14058ebb1
000000014058ea28 mov      rax, qword ptr [rsi + 0x10]
000000014058ea2c mov      edx, edi
000000014058ea2e mov      rcx, rbx
000000014058ea31 call     qword ptr [rip + 0xf58c1]
000000014058ea37 mov      rcx, qword ptr [rbp + 0x48]
000000014058ea3b movzx    eax, ax
000000014058ea3e mov      dword ptr [rbp - 0x38], eax
000000014058ea41 mov      rax, rbx
000000014058ea44 lea      rbx, [rbx + 0x1320]
000000014058ea4b mov      rcx, qword ptr [rcx + 8]
000000014058ea4f mov      rdx, rbx
000000014058ea52 mov      rax, qword ptr [rax + 0x18]
000000014058ea56 mov      rax, qword ptr [rax + 0x108]
000000014058ea5d call     qword ptr [rip + 0xf5895]
000000014058ea63 mov      rax, qword ptr [rbp + 0x60]
000000014058ea67 mov      esi, dword ptr [rbp + 0x58]
000000014058ea6a cmp      dword ptr [rax], esi
000000014058ea6c jae      0x14058eaac
000000014058ea6e lea      r9, [rip + 0xe072b]
000000014058ea75 mov      edx, dword ptr [rax]
000000014058ea77 mov      rax, qword ptr [rbp + 0x48]
000000014058ea7b sub      esi, edx
000000014058ea7d add      rdx, r15
000000014058ea80 mov      r8d, esi
000000014058ea83 mov      rax, qword ptr [rax + 0x18]
000000014058ea87 mov      r10, qword ptr [rax + 0x128]
000000014058ea8e mov      eax, dword ptr [rbp - 0x38]
000000014058ea91 mov      dword ptr [rsp + 0x20], eax
000000014058ea95 mov      rax, qword ptr [rbp + 0x48]
000000014058ea99 mov      rcx, qword ptr [rax + 8]
000000014058ea9d mov      rax, r10
000000014058eaa0 call     qword ptr [rip + 0xf5852]
000000014058eaa6 mov      rdi, qword ptr [rbp + 0x60]
000000014058eaaa add      dword ptr [rdi], eax
000000014058eaac mov      rdx, rbx
000000014058eaaf mov      rax, qword ptr [rbp + 0x48]
000000014058eab3 mov      rcx, qword ptr [rbp + 0x48]
000000014058eab7 mov      rax, qword ptr [rax + 0x18]
000000014058eabb mov      rcx, qword ptr [rcx + 8]
000000014058eabf mov      rax, qword ptr [rax + 0x110]
000000014058eac6 call     qword ptr [rip + 0xf582c]
000000014058eacc mov      r14d, 0x10
000000014058ead2 jmp      0x14058ebb1
000000014058ead7 mov      rbx, qword ptr [rbp + 0x48]
000000014058eadb mov      edi, 0x10e10
000000014058eae0 mov      rax, qword ptr [rsi + 0x20]
000000014058eae4 mov      edx, edi
000000014058eae6 mov      rcx, rbx
000000014058eae9 call     qword ptr [rip + 0xf5809]
000000014058eaef shr      eax, 0x14
000000014058eaf2 and      eax, r13d
000000014058eaf5 mov      dword ptr [rbp - 0x38], eax
000000014058eaf8 je       0x14058ebb1
000000014058eafe mov      rax, qword ptr [rsi + 0x20]
000000014058eb02 mov      edx, edi
000000014058eb04 mov      rcx, rbx
000000014058eb07 call     qword ptr [rip + 0xf57eb]
000000014058eb0d mov      rcx, qword ptr [rbp + 0x48]
000000014058eb11 shr      eax, 0x14
000000014058eb14 and      eax, r13d
000000014058eb17 mov      dword ptr [rbp - 0x38], eax
000000014058eb1a mov      rax, rbx
000000014058eb1d mov      rcx, qword ptr [rcx + 8]
000000014058eb21 lea      rbx, [rbx + 0x1320]
000000014058eb28 mov      rdx, rbx
000000014058eb2b mov      rax, qword ptr [rax + 0x18]
000000014058eb2f mov      rax, qword ptr [rax + 0x108]
000000014058eb36 call     qword ptr [rip + 0xf57bc]
000000014058eb3c mov      rax, qword ptr [rbp + 0x60]
000000014058eb40 mov      esi, dword ptr [rbp + 0x58]
000000014058eb43 cmp      dword ptr [rax], esi
000000014058eb45 jae      0x14058eb85
000000014058eb47 lea      r9, [rip + 0xe0682]
000000014058eb4e mov      edx, dword ptr [rax]
000000014058eb50 mov      rax, qword ptr [rbp + 0x48]
000000014058eb54 sub      esi, edx
000000014058eb56 add      rdx, r15
000000014058eb59 mov      r8d, esi
000000014058eb5c mov      rax, qword ptr [rax + 0x18]
000000014058eb60 mov      r10, qword ptr [rax + 0x128]
000000014058eb67 mov      eax, dword ptr [rbp - 0x38]
000000014058eb6a mov      dword ptr [rsp + 0x20], eax
000000014058eb6e mov      rax, qword ptr [rbp + 0x48]
000000014058eb72 mov      rcx, qword ptr [rax + 8]
000000014058eb76 mov      rax, r10
000000014058eb79 call     qword ptr [rip + 0xf5779]
000000014058eb7f mov      rdi, qword ptr [rbp + 0x60]
000000014058eb83 add      dword ptr [rdi], eax
000000014058eb85 mov      rax, qword ptr [rbp + 0x48]
000000014058eb89 mov      rdx, rbx
000000014058eb8c mov      rcx, qword ptr [rbp + 0x48]
000000014058eb90 mov      rax, qword ptr [rax + 0x18]
000000014058eb94 mov      rcx, qword ptr [rcx + 8]
000000014058eb98 mov      rax, qword ptr [rax + 0x110]
000000014058eb9f call     qword ptr [rip + 0xf5753]
000000014058eba5 mov      eax, 0x10
000000014058ebaa mov      dword ptr [rbp - 0x34], eax
000000014058ebad mov      r14d, dword ptr [rbp - 0x34]
000000014058ebb1 mov      rax, qword ptr [rbp + 0x48]
000000014058ebb5 dec      dword ptr [rax + 0xef8]
000000014058ebbb mov      rcx, qword ptr [rax + 0x18]
000000014058ebbf mov      rdx, qword ptr [rbp - 0x10]
000000014058ebc3 mov      rax, qword ptr [rcx + 0x110]
000000014058ebca mov      rcx, qword ptr [rbp + 0x48]
000000014058ebce mov      rcx, qword ptr [rcx + 8]
000000014058ebd2 call     qword ptr [rip + 0xf5720]
000000014058ebd8 mov      eax, r14d
000000014058ebdb add      rsp, 0x68
000000014058ebdf pop      r15
000000014058ebe1 pop      r14
000000014058ebe3 pop      r13
000000014058ebe5 pop      r12
000000014058ebe7 pop      rdi
000000014058ebe8 pop      rsi
000000014058ebe9 pop      rbx
000000014058ebea pop      rbp
000000014058ebeb ret      
000000014058ebec mov      rbx, qword ptr [rbp + 0x48]
000000014058ebf0 mov      edi, 0x10e10
000000014058ebf5 mov      rax, qword ptr [rsi + 0x20]
000000014058ebf9 mov      edx, edi
000000014058ebfb mov      rcx, rbx
000000014058ebfe call     qword ptr [rip + 0xf56f4]
000000014058ec04 shr      eax, 0x13
000000014058ec07 and      eax, r13d
000000014058ec0a mov      dword ptr [rbp - 0x38], eax
000000014058ec0d je       0x14058ebb1
000000014058ec0f mov      rax, qword ptr [rsi + 0x20]
000000014058ec13 mov      edx, edi
000000014058ec15 mov      rcx, rbx
000000014058ec18 call     qword ptr [rip + 0xf56da]
000000014058ec1e mov      rcx, qword ptr [rbp + 0x48]
000000014058ec22 shr      eax, 0x13
000000014058ec25 and      eax, r13d
000000014058ec28 mov      dword ptr [rbp - 0x38], eax
000000014058ec2b mov      rax, rbx
000000014058ec2e mov      rcx, qword ptr [rcx + 8]
000000014058ec32 lea      rbx, [rbx + 0x1320]
000000014058ec39 mov      rdx, rbx
000000014058ec3c mov      rax, qword ptr [rax + 0x18]
000000014058ec40 mov      rax, qword ptr [rax + 0x108]
000000014058ec47 call     qword ptr [rip + 0xf56ab]
000000014058ec4d mov      rax, qword ptr [rbp + 0x60]
000000014058ec51 mov      esi, dword ptr [rbp + 0x58]
000000014058ec54 cmp      dword ptr [rax], esi
000000014058ec56 jae      0x14058eb85
000000014058ec5c lea      r9, [rip + 0xe059d]
000000014058ec63 jmp      0x14058eb4e
000000014058ec68 mov      rbx, qword ptr [rbp + 0x48]
000000014058ec6c mov      edi, 0x10e10
000000014058ec71 mov      rax, qword ptr [rsi + 0x20]
000000014058ec75 mov      edx, edi
000000014058ec77 mov      rcx, rbx
000000014058ec7a call     qword ptr [rip + 0xf5678]
000000014058ec80 shr      eax, 0x12
000000014058ec83 and      eax, r13d
000000014058ec86 mov      dword ptr [rbp - 0x38], eax
000000014058ec89 je       0x14058ebb1
000000014058ec8f mov      rax, qword ptr [rsi + 0x20]
000000014058ec93 mov      edx, edi
000000014058ec95 mov      rcx, rbx
000000014058ec98 call     qword ptr [rip + 0xf565a]
000000014058ec9e mov      rcx, qword ptr [rbp + 0x48]
000000014058eca2 shr      eax, 0x12
000000014058eca5 and      eax, r13d
000000014058eca8 mov      dword ptr [rbp - 0x38], eax
000000014058ecab mov      rax, rbx
000000014058ecae mov      rcx, qword ptr [rcx + 8]
000000014058ecb2 lea      rbx, [rbx + 0x1320]
000000014058ecb9 mov      rdx, rbx
000000014058ecbc mov      rax, qword ptr [rax + 0x18]
000000014058ecc0 mov      rax, qword ptr [rax + 0x108]
000000014058ecc7 call     qword ptr [rip + 0xf562b]
000000014058eccd mov      rax, qword ptr [rbp + 0x60]
000000014058ecd1 mov      esi, dword ptr [rbp + 0x58]
000000014058ecd4 cmp      dword ptr [rax], esi
000000014058ecd6 jae      0x14058eb85
000000014058ecdc lea      r9, [rip + 0xe054d]
000000014058ece3 jmp      0x14058eb4e
000000014058ece8 mov      rbx, qword ptr [rbp + 0x48]
000000014058ecec mov      edi, 0x10e10
000000014058ecf1 mov      rax, qword ptr [rsi + 0x20]
000000014058ecf5 mov      edx, edi
000000014058ecf7 mov      rcx, rbx
000000014058ecfa call     qword ptr [rip + 0xf55f8]
000000014058ed00 shr      eax, 0x11
000000014058ed03 and      eax, r13d
000000014058ed06 mov      dword ptr [rbp - 0x38], eax
000000014058ed09 je       0x14058ebb1
000000014058ed0f mov      rax, qword ptr [rsi + 0x20]
000000014058ed13 mov      edx, edi
000000014058ed15 mov      rcx, rbx
000000014058ed18 call     qword ptr [rip + 0xf55da]
000000014058ed1e mov      rcx, qword ptr [rbp + 0x48]
000000014058ed22 shr      eax, 0x11
000000014058ed25 and      eax, r13d
000000014058ed28 mov      dword ptr [rbp - 0x38], eax
000000014058ed2b mov      rax, rbx
000000014058ed2e mov      rcx, qword ptr [rcx + 8]
000000014058ed32 lea      rbx, [rbx + 0x1320]
000000014058ed39 mov      rdx, rbx
000000014058ed3c mov      rax, qword ptr [rax + 0x18]
000000014058ed40 mov      rax, qword ptr [rax + 0x108]
000000014058ed47 call     qword ptr [rip + 0xf55ab]
000000014058ed4d mov      rax, qword ptr [rbp + 0x60]
000000014058ed51 mov      esi, dword ptr [rbp + 0x58]
000000014058ed54 cmp      dword ptr [rax], esi
000000014058ed56 jae      0x14058eb85
000000014058ed5c lea      r9, [rip + 0xe04fd]
000000014058ed63 jmp      0x14058eb4e
000000014058ed68 mov      rbx, qword ptr [rbp + 0x48]
000000014058ed6c mov      edi, 0x10e10
000000014058ed71 mov      rax, qword ptr [rsi + 0x20]
000000014058ed75 mov      edx, edi
000000014058ed77 mov      rcx, rbx
000000014058ed7a call     qword ptr [rip + 0xf5578]
000000014058ed80 shr      eax, 0x10
000000014058ed83 and      eax, r13d
000000014058ed86 mov      dword ptr [rbp - 0x38], eax
000000014058ed89 je       0x14058ebb1
000000014058ed8f mov      rax, qword ptr [rsi + 0x20]
000000014058ed93 mov      edx, edi
000000014058ed95 mov      rcx, rbx
000000014058ed98 call     qword ptr [rip + 0xf555a]
000000014058ed9e mov      rcx, qword ptr [rbp + 0x48]
000000014058eda2 shr      eax, 0x10
000000014058eda5 and      eax, r13d
000000014058eda8 mov      dword ptr [rbp - 0x38], eax
000000014058edab mov      rax, rbx
000000014058edae mov      rcx, qword ptr [rcx + 8]
000000014058edb2 lea      rbx, [rbx + 0x1320]
000000014058edb9 mov      rdx, rbx
000000014058edbc mov      rax, qword ptr [rax + 0x18]
000000014058edc0 mov      rax, qword ptr [rax + 0x108]
000000014058edc7 call     qword ptr [rip + 0xf552b]
000000014058edcd mov      rax, qword ptr [rbp + 0x60]
000000014058edd1 mov      esi, dword ptr [rbp + 0x58]
000000014058edd4 cmp      dword ptr [rax], esi
000000014058edd6 jae      0x14058eb85
000000014058eddc lea      r9, [rip + 0xe04ad]
000000014058ede3 jmp      0x14058eb4e
000000014058ede8 mov      rbx, qword ptr [rbp + 0x48]
000000014058edec mov      edi, 0x10e24
000000014058edf1 mov      rax, qword ptr [rsi + 0x20]
000000014058edf5 mov      edx, edi
000000014058edf7 mov      rcx, rbx
000000014058edfa call     qword ptr [rip + 0xf54f8]
000000014058ee00 shr      eax, 0x10
000000014058ee03 mov      dword ptr [rbp - 0x38], eax
000000014058ee06 test     eax, eax
000000014058ee08 je       0x14058ebb1
000000014058ee0e mov      rax, qword ptr [rsi + 0x20]
000000014058ee12 mov      edx, edi
000000014058ee14 mov      rcx, rbx
000000014058ee17 call     qword ptr [rip + 0xf54db]
000000014058ee1d mov      rcx, qword ptr [rbp + 0x48]
000000014058ee21 shr      eax, 0x10
000000014058ee24 mov      dword ptr [rbp - 0x38], eax
000000014058ee27 mov      rax, rbx
000000014058ee2a lea      rbx, [rbx + 0x1320]
000000014058ee31 mov      rcx, qword ptr [rcx + 8]
000000014058ee35 mov      rdx, rbx
000000014058ee38 mov      rax, qword ptr [rax + 0x18]
000000014058ee3c mov      rax, qword ptr [rax + 0x108]
000000014058ee43 call     qword ptr [rip + 0xf54af]
000000014058ee49 mov      rax, qword ptr [rbp + 0x60]
000000014058ee4d mov      esi, dword ptr [rbp + 0x58]
000000014058ee50 cmp      dword ptr [rax], esi
000000014058ee52 jae      0x14058eb85
000000014058ee58 lea      r9, [rip + 0xe0461]
000000014058ee5f jmp      0x14058eb4e
000000014058ee64 mov      rbx, qword ptr [rbp + 0x48]
000000014058ee68 mov      edi, 0x10e24
000000014058ee6d mov      rax, qword ptr [rsi + 0x10]
000000014058ee71 mov      edx, edi
000000014058ee73 mov      rcx, rbx
000000014058ee76 call     qword ptr [rip + 0xf547c]
000000014058ee7c mov      r12d, 0x3ff
000000014058ee82 and      eax, r12d
000000014058ee85 mov      dword ptr [rbp - 0x38], eax
000000014058ee88 je       0x14058ebb1
000000014058ee8e mov      rax, qword ptr [rsi + 0x10]
000000014058ee92 mov      edx, edi
000000014058ee94 mov      rcx, rbx
000000014058ee97 call     qword ptr [rip + 0xf545b]
000000014058ee9d mov      rcx, qword ptr [rbp + 0x48]
000000014058eea1 and      eax, r12d
000000014058eea4 mov      dword ptr [rbp - 0x38], eax
000000014058eea7 mov      rax, rbx
000000014058eeaa lea      rbx, [rbx + 0x1320]
000000014058eeb1 mov      rdx, rbx
000000014058eeb4 mov      rcx, qword ptr [rcx + 8]
000000014058eeb8 mov      rax, qword ptr [rax + 0x18]
000000014058eebc mov      rax, qword ptr [rax + 0x108]
000000014058eec3 call     qword ptr [rip + 0xf542f]
000000014058eec9 mov      rax, qword ptr [rbp + 0x60]
000000014058eecd mov      esi, dword ptr [rbp + 0x58]
000000014058eed0 cmp      dword ptr [rax], esi
000000014058eed2 jae      0x14058eb85
000000014058eed8 lea      r9, [rip + 0xe0411]
000000014058eedf jmp      0x14058eb4e
000000014058eee4 mov      rbx, qword ptr [rbp + 0x48]
000000014058eee8 mov      edi, 0x10e28
000000014058eeed mov      rax, qword ptr [rsi + 0x20]
000000014058eef1 mov      edx, edi
000000014058eef3 mov      rcx, rbx
000000014058eef6 call     qword ptr [rip + 0xf53fc]
000000014058eefc shr      eax, 0x10
000000014058eeff mov      dword ptr [rbp - 0x38], eax
000000014058ef02 test     eax, eax
000000014058ef04 je       0x14058ebb1
000000014058ef0a mov      rax, qword ptr [rsi + 0x20]
000000014058ef0e mov      edx, edi
000000014058ef10 mov      rcx, rbx
000000014058ef13 call     qword ptr [rip + 0xf53df]
000000014058ef19 mov      rcx, qword ptr [rbp + 0x48]
000000014058ef1d shr      eax, 0x10
000000014058ef20 mov      dword ptr [rbp - 0x38], eax
000000014058ef23 mov      rax, rbx
000000014058ef26 lea      rbx, [rbx + 0x1320]
000000014058ef2d mov      rcx, qword ptr [rcx + 8]
000000014058ef31 mov      rdx, rbx
000000014058ef34 mov      rax, qword ptr [rax + 0x18]
000000014058ef38 mov      rax, qword ptr [rax + 0x108]
000000014058ef3f call     qword ptr [rip + 0xf53b3]
000000014058ef45 mov      rax, qword ptr [rbp + 0x60]
000000014058ef49 mov      esi, dword ptr [rbp + 0x58]
000000014058ef4c cmp      dword ptr [rax], esi
000000014058ef4e jae      0x14058eb85
000000014058ef54 lea      r9, [rip + 0xe03c5]
000000014058ef5b jmp      0x14058eb4e
000000014058ef60 mov      rbx, qword ptr [rbp + 0x48]
000000014058ef64 mov      edi, 0x10e28
000000014058ef69 mov      rax, qword ptr [rsi + 0x10]
000000014058ef6d mov      edx, edi
000000014058ef6f mov      rcx, rbx
000000014058ef72 call     qword ptr [rip + 0xf5380]
000000014058ef78 movzx    eax, ax
000000014058ef7b mov      dword ptr [rbp - 0x38], eax
000000014058ef7e test     eax, eax
000000014058ef80 je       0x14058ebb1
000000014058ef86 mov      rax, qword ptr [rsi + 0x10]
000000014058ef8a mov      edx, edi
000000014058ef8c mov      rcx, rbx
000000014058ef8f call     qword ptr [rip + 0xf5363]
000000014058ef95 mov      rcx, qword ptr [rbp + 0x48]
000000014058ef99 movzx    eax, ax
000000014058ef9c mov      dword ptr [rbp - 0x38], eax
000000014058ef9f mov      rax, rbx
000000014058efa2 lea      rbx, [rbx + 0x1320]
000000014058efa9 mov      rcx, qword ptr [rcx + 8]
000000014058efad mov      rdx, rbx
000000014058efb0 mov      rax, qword ptr [rax + 0x18]
000000014058efb4 mov      rax, qword ptr [rax + 0x108]
000000014058efbb call     qword ptr [rip + 0xf5337]
000000014058efc1 mov      rax, qword ptr [rbp + 0x60]
000000014058efc5 mov      esi, dword ptr [rbp + 0x58]
000000014058efc8 cmp      dword ptr [rax], esi
000000014058efca jae      0x14058eb85
000000014058efd0 lea      r9, [rip + 0xe0379]
000000014058efd7 jmp      0x14058eb4e
000000014058efdc mov      rbx, qword ptr [rbp + 0x48]
000000014058efe0 mov      edi, 0x10e20
000000014058efe5 mov      rax, qword ptr [rsi + 0x10]
000000014058efe9 mov      edx, edi
000000014058efeb mov      rcx, rbx
000000014058efee call     qword ptr [rip + 0xf5304]
000000014058eff4 shr      eax, 0xe
000000014058eff7 and      eax, r13d
000000014058effa mov      dword ptr [rbp - 0x38], eax
000000014058effd je       0x14058ebb1
000000014058f003 mov      rax, qword ptr [rsi + 0x10]
000000014058f007 mov      edx, edi
000000014058f009 mov      rcx, rbx
000000014058f00c call     qword ptr [rip + 0xf52e6]
000000014058f012 mov      rcx, qword ptr [rbp + 0x48]
000000014058f016 shr      eax, 0xe
000000014058f019 and      eax, r13d
000000014058f01c mov      dword ptr [rbp - 0x38], eax
000000014058f01f mov      rax, rbx
000000014058f022 mov      rcx, qword ptr [rcx + 8]
000000014058f026 lea      rbx, [rbx + 0x1320]
000000014058f02d mov      rdx, rbx
000000014058f030 mov      rax, qword ptr [rax + 0x18]
000000014058f034 mov      rax, qword ptr [rax + 0x108]
000000014058f03b call     qword ptr [rip + 0xf52b7]
000000014058f041 mov      rax, qword ptr [rbp + 0x60]
000000014058f045 mov      esi, dword ptr [rbp + 0x58]
000000014058f048 cmp      dword ptr [rax], esi
000000014058f04a jae      0x14058eb85
000000014058f050 lea      r9, [rip + 0xe0329]
000000014058f057 jmp      0x14058eb4e
000000014058f05c mov      rbx, qword ptr [rbp + 0x48]
000000014058f060 mov      edi, 0x10e40
000000014058f065 mov      rax, qword ptr [rsi + 0x20]
000000014058f069 mov      edx, edi
000000014058f06b mov      rcx, rbx
000000014058f06e call     qword ptr [rip + 0xf5284]
000000014058f074 shr      eax, 0x10
000000014058f077 mov      dword ptr [rbp - 0x38], eax
000000014058f07a test     eax, eax
000000014058f07c je       0x14058ebb1
000000014058f082 mov      rax, qword ptr [rsi + 0x20]
000000014058f086 mov      edx, edi
000000014058f088 mov      rcx, rbx
000000014058f08b call     qword ptr [rip + 0xf5267]
000000014058f091 mov      rcx, qword ptr [rbp + 0x48]
000000014058f095 shr      eax, 0x10
000000014058f098 mov      dword ptr [rbp - 0x38], eax
000000014058f09b mov      rax, rbx
000000014058f09e lea      rbx, [rbx + 0x1320]
000000014058f0a5 mov      rcx, qword ptr [rcx + 8]
000000014058f0a9 mov      rdx, rbx
000000014058f0ac mov      rax, qword ptr [rax + 0x18]
000000014058f0b0 mov      rax, qword ptr [rax + 0x108]
000000014058f0b7 call     qword ptr [rip + 0xf523b]
000000014058f0bd mov      rax, qword ptr [rbp + 0x60]
000000014058f0c1 mov      esi, dword ptr [rbp + 0x58]
000000014058f0c4 cmp      dword ptr [rax], esi
000000014058f0c6 jae      0x14058eb85
000000014058f0cc lea      r9, [rip + 0xe02dd]
000000014058f0d3 jmp      0x14058eb4e
000000014058f0d8 mov      rbx, qword ptr [rbp + 0x48]
000000014058f0dc mov      edi, 0x10e40
000000014058f0e1 mov      rax, qword ptr [rsi + 0x10]
000000014058f0e5 mov      edx, edi
000000014058f0e7 mov      rcx, rbx
000000014058f0ea call     qword ptr [rip + 0xf5208]
000000014058f0f0 movzx    eax, ax
000000014058f0f3 mov      dword ptr [rbp - 0x38], eax
000000014058f0f6 test     eax, eax
000000014058f0f8 je       0x14058ebb1
000000014058f0fe mov      rax, qword ptr [rsi + 0x10]
000000014058f102 mov      edx, edi
000000014058f104 mov      rcx, rbx
000000014058f107 call     qword ptr [rip + 0xf51eb]
000000014058f10d mov      rcx, qword ptr [rbp + 0x48]
000000014058f111 movzx    eax, ax
000000014058f114 mov      dword ptr [rbp - 0x38], eax
000000014058f117 mov      rax, rbx
000000014058f11a lea      rbx, [rbx + 0x1320]
000000014058f121 mov      rcx, qword ptr [rcx + 8]
000000014058f125 mov      rdx, rbx
000000014058f128 mov      rax, qword ptr [rax + 0x18]
000000014058f12c mov      rax, qword ptr [rax + 0x108]
000000014058f133 call     qword ptr [rip + 0xf51bf]
000000014058f139 mov      rax, qword ptr [rbp + 0x60]
000000014058f13d mov      esi, dword ptr [rbp + 0x58]
000000014058f140 cmp      dword ptr [rax], esi
000000014058f142 jae      0x14058eb85
000000014058f148 lea      r9, [rip + 0xe0291]
000000014058f14f jmp      0x14058eb4e
000000014058f154 mov      rbx, qword ptr [rbp + 0x48]
000000014058f158 mov      edi, 0x10ef4
000000014058f15d mov      rax, qword ptr [rsi + 0x10]
000000014058f161 mov      edx, edi
000000014058f163 mov      rcx, rbx
000000014058f166 call     qword ptr [rip + 0xf518c]
000000014058f16c shr      eax, 0xb
000000014058f16f and      eax, r13d
000000014058f172 mov      dword ptr [rbp - 0x38], eax
000000014058f175 je       0x14058ebb1
000000014058f17b mov      rax, qword ptr [rsi + 0x10]
000000014058f17f mov      edx, edi
000000014058f181 mov      rcx, rbx
000000014058f184 call     qword ptr [rip + 0xf516e]
000000014058f18a mov      rcx, qword ptr [rbp + 0x48]
000000014058f18e shr      eax, 0xb
000000014058f191 and      eax, r13d
000000014058f194 mov      dword ptr [rbp - 0x38], eax
000000014058f197 mov      rax, rbx
000000014058f19a mov      rcx, qword ptr [rcx + 8]
000000014058f19e lea      rbx, [rbx + 0x1320]
000000014058f1a5 mov      rdx, rbx
000000014058f1a8 mov      rax, qword ptr [rax + 0x18]
000000014058f1ac mov      rax, qword ptr [rax + 0x108]
000000014058f1b3 call     qword ptr [rip + 0xf513f]
000000014058f1b9 mov      rax, qword ptr [rbp + 0x60]
000000014058f1bd mov      esi, dword ptr [rbp + 0x58]
000000014058f1c0 cmp      dword ptr [rax], esi
000000014058f1c2 jae      0x14058eb85
000000014058f1c8 lea      r9, [rip + 0xe0241]
000000014058f1cf jmp      0x14058eb4e
000000014058f1d4 mov      rbx, qword ptr [rbp + 0x48]
000000014058f1d8 mov      edi, 0x10ef4
000000014058f1dd mov      rax, qword ptr [rsi + 0x10]
000000014058f1e1 mov      edx, edi
000000014058f1e3 mov      rcx, rbx
000000014058f1e6 call     qword ptr [rip + 0xf510c]
000000014058f1ec shr      eax, 0xa
000000014058f1ef and      eax, r13d
000000014058f1f2 mov      dword ptr [rbp - 0x38], eax
000000014058f1f5 je       0x14058ebb1
000000014058f1fb mov      rax, qword ptr [rsi + 0x10]
000000014058f1ff mov      edx, edi
000000014058f201 mov      rcx, rbx
000000014058f204 call     qword ptr [rip + 0xf50ee]
000000014058f20a mov      rcx, qword ptr [rbp + 0x48]
000000014058f20e shr      eax, 0xa
000000014058f211 and      eax, r13d
000000014058f214 mov      dword ptr [rbp - 0x38], eax
000000014058f217 mov      rax, rbx
000000014058f21a mov      rcx, qword ptr [rcx + 8]
000000014058f21e lea      rbx, [rbx + 0x1320]
000000014058f225 mov      rdx, rbx
000000014058f228 mov      rax, qword ptr [rax + 0x18]
000000014058f22c mov      rax, qword ptr [rax + 0x108]
000000014058f233 call     qword ptr [rip + 0xf50bf]
000000014058f239 mov      rax, qword ptr [rbp + 0x60]
000000014058f23d mov      esi, dword ptr [rbp + 0x58]
000000014058f240 cmp      dword ptr [rax], esi
000000014058f242 jae      0x14058eb85
000000014058f248 lea      r9, [rip + 0xe01f1]
000000014058f24f jmp      0x14058eb4e
000000014058f254 mov      rbx, qword ptr [rbp + 0x48]
000000014058f258 mov      edi, 0x10ef4
000000014058f25d mov      rax, qword ptr [rsi + 0x10]
000000014058f261 mov      edx, edi
000000014058f263 mov      rcx, rbx
000000014058f266 call     qword ptr [rip + 0xf508c]
000000014058f26c shr      eax, 9
000000014058f26f and      eax, r13d
000000014058f272 mov      dword ptr [rbp - 0x38], eax
000000014058f275 je       0x14058ebb1
000000014058f27b mov      rax, qword ptr [rsi + 0x10]
000000014058f27f mov      edx, edi
000000014058f281 mov      rcx, rbx
000000014058f284 call     qword ptr [rip + 0xf506e]
000000014058f28a mov      rcx, qword ptr [rbp + 0x48]
000000014058f28e shr      eax, 9
000000014058f291 and      eax, r13d
000000014058f294 mov      dword ptr [rbp - 0x38], eax
000000014058f297 mov      rax, rbx
000000014058f29a mov      rcx, qword ptr [rcx + 8]
000000014058f29e lea      rbx, [rbx + 0x1320]
000000014058f2a5 mov      rdx, rbx
000000014058f2a8 mov      rax, qword ptr [rax + 0x18]
000000014058f2ac mov      rax, qword ptr [rax + 0x108]
000000014058f2b3 call     qword ptr [rip + 0xf503f]
000000014058f2b9 mov      rax, qword ptr [rbp + 0x60]
000000014058f2bd mov      esi, dword ptr [rbp + 0x58]
000000014058f2c0 cmp      dword ptr [rax], esi
000000014058f2c2 jae      0x14058eb85
000000014058f2c8 lea      r9, [rip + 0xe01a1]
000000014058f2cf jmp      0x14058eb4e
000000014058f2d4 mov      rbx, qword ptr [rbp + 0x48]
000000014058f2d8 mov      edi, 0x14e10
000000014058f2dd mov      rax, qword ptr [rsi + 0x10]
000000014058f2e1 mov      edx, edi
000000014058f2e3 mov      rcx, rbx
000000014058f2e6 call     qword ptr [rip + 0xf500c]
000000014058f2ec movzx    eax, ax
000000014058f2ef mov      dword ptr [rbp - 0x38], eax
000000014058f2f2 test     eax, eax
000000014058f2f4 je       0x14058ebb1
000000014058f2fa mov      rax, qword ptr [rsi + 0x10]
000000014058f2fe mov      edx, edi
000000014058f300 mov      rcx, rbx
000000014058f303 call     qword ptr [rip + 0xf4fef]
000000014058f309 mov      rcx, qword ptr [rbp + 0x48]
000000014058f30d movzx    eax, ax
000000014058f310 mov      dword ptr [rbp - 0x38], eax
000000014058f313 mov      rax, rbx
000000014058f316 lea      rbx, [rbx + 0x1320]
000000014058f31d mov      rcx, qword ptr [rcx + 8]
000000014058f321 mov      rdx, rbx
000000014058f324 mov      rax, qword ptr [rax + 0x18]
000000014058f328 mov      rax, qword ptr [rax + 0x108]
000000014058f32f call     qword ptr [rip + 0xf4fc3]
000000014058f335 mov      rax, qword ptr [rbp + 0x60]
000000014058f339 mov      esi, dword ptr [rbp + 0x58]
000000014058f33c cmp      dword ptr [rax], esi
000000014058f33e jae      0x14058eb85
000000014058f344 lea      r9, [rip + 0xe0145]
000000014058f34b jmp      0x14058eb4e
000000014058f350 mov      rbx, qword ptr [rbp + 0x48]
000000014058f354 mov      edi, 0x14e10
000000014058f359 mov      rax, qword ptr [rsi + 0x20]
000000014058f35d mov      edx, edi
000000014058f35f mov      rcx, rbx
000000014058f362 call     qword ptr [rip + 0xf4f90]
000000014058f368 shr      eax, 0x14
000000014058f36b and      eax, r13d
000000014058f36e mov      dword ptr [rbp - 0x38], eax
000000014058f371 je       0x14058ebb1
000000014058f377 mov      rax, qword ptr [rsi + 0x20]
000000014058f37b mov      edx, edi
000000014058f37d mov      rcx, rbx
000000014058f380 call     qword ptr [rip + 0xf4f72]
000000014058f386 mov      rcx, qword ptr [rbp + 0x48]
000000014058f38a shr      eax, 0x14
000000014058f38d and      eax, r13d
000000014058f390 mov      dword ptr [rbp - 0x38], eax
000000014058f393 mov      rax, rbx
000000014058f396 mov      rcx, qword ptr [rcx + 8]
000000014058f39a lea      rbx, [rbx + 0x1320]
000000014058f3a1 mov      rdx, rbx
000000014058f3a4 mov      rax, qword ptr [rax + 0x18]
000000014058f3a8 mov      rax, qword ptr [rax + 0x108]
000000014058f3af call     qword ptr [rip + 0xf4f43]
000000014058f3b5 mov      rax, qword ptr [rbp + 0x60]
000000014058f3b9 mov      esi, dword ptr [rbp + 0x58]
000000014058f3bc cmp      dword ptr [rax], esi
000000014058f3be jae      0x14058eb85
000000014058f3c4 lea      r9, [rip + 0xe00f5]
000000014058f3cb jmp      0x14058eb4e
000000014058f3d0 mov      rbx, qword ptr [rbp + 0x48]
000000014058f3d4 mov      edi, 0x14e10
000000014058f3d9 mov      rax, qword ptr [rsi + 0x20]
000000014058f3dd mov      edx, edi
000000014058f3df mov      rcx, rbx
000000014058f3e2 call     qword ptr [rip + 0xf4f10]
000000014058f3e8 shr      eax, 0x13
000000014058f3eb and      eax, r13d
000000014058f3ee mov      dword ptr [rbp - 0x38], eax
000000014058f3f1 je       0x14058ebb1
000000014058f3f7 mov      rax, qword ptr [rsi + 0x20]
000000014058f3fb mov      edx, edi
000000014058f3fd mov      rcx, rbx
000000014058f400 call     qword ptr [rip + 0xf4ef2]
000000014058f406 mov      rcx, qword ptr [rbp + 0x48]
000000014058f40a shr      eax, 0x13
000000014058f40d and      eax, r13d
000000014058f410 mov      dword ptr [rbp - 0x38], eax
000000014058f413 mov      rax, rbx
000000014058f416 mov      rcx, qword ptr [rcx + 8]
000000014058f41a lea      rbx, [rbx + 0x1320]
000000014058f421 mov      rdx, rbx
000000014058f424 mov      rax, qword ptr [rax + 0x18]
000000014058f428 mov      rax, qword ptr [rax + 0x108]
000000014058f42f call     qword ptr [rip + 0xf4ec3]
000000014058f435 mov      rax, qword ptr [rbp + 0x60]
000000014058f439 mov      esi, dword ptr [rbp + 0x58]
000000014058f43c cmp      dword ptr [rax], esi
000000014058f43e jae      0x14058eb85
000000014058f444 lea      r9, [rip + 0xe00a5]
000000014058f44b jmp      0x14058eb4e
000000014058f450 mov      rbx, qword ptr [rbp + 0x48]
000000014058f454 mov      edi, 0x14e10
000000014058f459 mov      rax, qword ptr [rsi + 0x20]
000000014058f45d mov      edx, edi
000000014058f45f mov      rcx, rbx
000000014058f462 call     qword ptr [rip + 0xf4e90]
000000014058f468 shr      eax, 0x12
000000014058f46b and      eax, r13d
000000014058f46e mov      dword ptr [rbp - 0x38], eax
000000014058f471 je       0x14058ebb1
000000014058f477 mov      rax, qword ptr [rsi + 0x20]
000000014058f47b mov      edx, edi
000000014058f47d mov      rcx, rbx
000000014058f480 call     qword ptr [rip + 0xf4e72]
000000014058f486 mov      rcx, qword ptr [rbp + 0x48]
000000014058f48a shr      eax, 0x12
000000014058f48d and      eax, r13d
000000014058f490 mov      dword ptr [rbp - 0x38], eax
000000014058f493 mov      rax, rbx
000000014058f496 mov      rcx, qword ptr [rcx + 8]
000000014058f49a lea      rbx, [rbx + 0x1320]
000000014058f4a1 mov      rdx, rbx
000000014058f4a4 mov      rax, qword ptr [rax + 0x18]
000000014058f4a8 mov      rax, qword ptr [rax + 0x108]
000000014058f4af call     qword ptr [rip + 0xf4e43]
000000014058f4b5 mov      rax, qword ptr [rbp + 0x60]
000000014058f4b9 mov      esi, dword ptr [rbp + 0x58]
000000014058f4bc cmp      dword ptr [rax], esi
000000014058f4be jae      0x14058eb85
000000014058f4c4 lea      r9, [rip + 0xe0055]
000000014058f4cb jmp      0x14058eb4e
000000014058f4d0 mov      rbx, qword ptr [rbp + 0x48]
000000014058f4d4 mov      edi, 0x14e10
000000014058f4d9 mov      rax, qword ptr [rsi + 0x20]
000000014058f4dd mov      edx, edi
000000014058f4df mov      rcx, rbx
000000014058f4e2 call     qword ptr [rip + 0xf4e10]
000000014058f4e8 shr      eax, 0x11
000000014058f4eb and      eax, r13d
000000014058f4ee mov      dword ptr [rbp - 0x38], eax
000000014058f4f1 je       0x14058ebb1
000000014058f4f7 mov      rax, qword ptr [rsi + 0x20]
000000014058f4fb mov      edx, edi
000000014058f4fd mov      rcx, rbx
000000014058f500 call     qword ptr [rip + 0xf4df2]
000000014058f506 mov      rcx, qword ptr [rbp + 0x48]
000000014058f50a shr      eax, 0x11
000000014058f50d and      eax, r13d
000000014058f510 mov      dword ptr [rbp - 0x38], eax
000000014058f513 mov      rax, rbx
000000014058f516 mov      rcx, qword ptr [rcx + 8]
000000014058f51a lea      rbx, [rbx + 0x1320]
000000014058f521 mov      rdx, rbx
000000014058f524 mov      rax, qword ptr [rax + 0x18]
000000014058f528 mov      rax, qword ptr [rax + 0x108]
000000014058f52f call     qword ptr [rip + 0xf4dc3]
000000014058f535 mov      rax, qword ptr [rbp + 0x60]
000000014058f539 mov      esi, dword ptr [rbp + 0x58]
000000014058f53c cmp      dword ptr [rax], esi
000000014058f53e jae      0x14058eb85
000000014058f544 lea      r9, [rip + 0xe0005]
000000014058f54b jmp      0x14058eb4e
000000014058f550 mov      rbx, qword ptr [rbp + 0x48]
000000014058f554 mov      edi, 0x14e10
000000014058f559 mov      rax, qword ptr [rsi + 0x20]
000000014058f55d mov      edx, edi
000000014058f55f mov      rcx, rbx
000000014058f562 call     qword ptr [rip + 0xf4d90]
000000014058f568 shr      eax, 0x10
000000014058f56b and      eax, r13d
000000014058f56e mov      dword ptr [rbp - 0x38], eax
000000014058f571 je       0x14058ebb1
000000014058f577 mov      rax, qword ptr [rsi + 0x20]
000000014058f57b mov      edx, edi
000000014058f57d mov      rcx, rbx
000000014058f580 call     qword ptr [rip + 0xf4d72]
000000014058f586 mov      rcx, qword ptr [rbp + 0x48]
000000014058f58a shr      eax, 0x10
000000014058f58d and      eax, r13d
000000014058f590 mov      dword ptr [rbp - 0x38], eax
000000014058f593 mov      rax, rbx
000000014058f596 mov      rcx, qword ptr [rcx + 8]
000000014058f59a lea      rbx, [rbx + 0x1320]
000000014058f5a1 mov      rdx, rbx
000000014058f5a4 mov      rax, qword ptr [rax + 0x18]
000000014058f5a8 mov      rax, qword ptr [rax + 0x108]
000000014058f5af call     qword ptr [rip + 0xf4d43]
000000014058f5b5 mov      rax, qword ptr [rbp + 0x60]
000000014058f5b9 mov      esi, dword ptr [rbp + 0x58]
000000014058f5bc cmp      dword ptr [rax], esi
000000014058f5be jae      0x14058eb85
000000014058f5c4 lea      r9, [rip + 0xdffb5]
000000014058f5cb jmp      0x14058eb4e
000000014058f5d0 mov      rbx, qword ptr [rbp + 0x48]
000000014058f5d4 mov      edi, 0x14e24
000000014058f5d9 mov      rax, qword ptr [rsi + 0x20]
000000014058f5dd mov      edx, edi
000000014058f5df mov      rcx, rbx
000000014058f5e2 call     qword ptr [rip + 0xf4d10]
000000014058f5e8 shr      eax, 0x10
000000014058f5eb mov      dword ptr [rbp - 0x38], eax
000000014058f5ee test     eax, eax
000000014058f5f0 je       0x14058ebb1
000000014058f5f6 mov      rax, qword ptr [rsi + 0x20]
000000014058f5fa mov      edx, edi
000000014058f5fc mov      rcx, rbx
000000014058f5ff call     qword ptr [rip + 0xf4cf3]
000000014058f605 mov      rcx, qword ptr [rbp + 0x48]
000000014058f609 shr      eax, 0x10
000000014058f60c mov      dword ptr [rbp - 0x38], eax
000000014058f60f mov      rax, rbx
000000014058f612 lea      rbx, [rbx + 0x1320]
000000014058f619 mov      rcx, qword ptr [rcx + 8]
000000014058f61d mov      rdx, rbx
000000014058f620 mov      rax, qword ptr [rax + 0x18]
000000014058f624 mov      rax, qword ptr [rax + 0x108]
000000014058f62b call     qword ptr [rip + 0xf4cc7]
000000014058f631 mov      rax, qword ptr [rbp + 0x60]
000000014058f635 mov      esi, dword ptr [rbp + 0x58]
000000014058f638 cmp      dword ptr [rax], esi
000000014058f63a jae      0x14058eb85
000000014058f640 lea      r9, [rip + 0xdff69]
000000014058f647 jmp      0x14058eb4e
000000014058f64c mov      rbx, qword ptr [rbp + 0x48]
000000014058f650 mov      edi, 0x14e24
000000014058f655 mov      rax, qword ptr [rsi + 0x10]
000000014058f659 mov      edx, edi
000000014058f65b mov      rcx, rbx
000000014058f65e call     qword ptr [rip + 0xf4c94]
000000014058f664 mov      r12d, 0x3ff
000000014058f66a and      eax, r12d
000000014058f66d mov      dword ptr [rbp - 0x38], eax
000000014058f670 je       0x14058ebb1
000000014058f676 mov      rax, qword ptr [rsi + 0x10]
000000014058f67a mov      edx, edi
000000014058f67c mov      rcx, rbx
000000014058f67f call     qword ptr [rip + 0xf4c73]
000000014058f685 mov      rcx, qword ptr [rbp + 0x48]
000000014058f689 and      eax, r12d
000000014058f68c mov      dword ptr [rbp - 0x38], eax
000000014058f68f mov      rax, rbx
000000014058f692 lea      rbx, [rbx + 0x1320]
000000014058f699 mov      rdx, rbx
000000014058f69c mov      rcx, qword ptr [rcx + 8]
000000014058f6a0 mov      rax, qword ptr [rax + 0x18]
000000014058f6a4 mov      rax, qword ptr [rax + 0x108]
000000014058f6ab call     qword ptr [rip + 0xf4c47]
000000014058f6b1 mov      rax, qword ptr [rbp + 0x60]
000000014058f6b5 mov      esi, dword ptr [rbp + 0x58]
000000014058f6b8 cmp      dword ptr [rax], esi
000000014058f6ba jae      0x14058eb85
000000014058f6c0 lea      r9, [rip + 0xdff19]
000000014058f6c7 jmp      0x14058eb4e
000000014058f6cc mov      rbx, qword ptr [rbp + 0x48]
000000014058f6d0 mov      edi, 0x14e28
000000014058f6d5 mov      rax, qword ptr [rsi + 0x20]
000000014058f6d9 mov      edx, edi
000000014058f6db mov      rcx, rbx
000000014058f6de call     qword ptr [rip + 0xf4c14]
000000014058f6e4 shr      eax, 0x10
000000014058f6e7 mov      dword ptr [rbp - 0x38], eax
000000014058f6ea test     eax, eax
000000014058f6ec je       0x14058ebb1
000000014058f6f2 mov      rax, qword ptr [rsi + 0x20]
000000014058f6f6 mov      edx, edi
000000014058f6f8 mov      rcx, rbx
000000014058f6fb call     qword ptr [rip + 0xf4bf7]
000000014058f701 mov      rcx, qword ptr [rbp + 0x48]
000000014058f705 shr      eax, 0x10
000000014058f708 mov      dword ptr [rbp - 0x38], eax
000000014058f70b mov      rax, rbx
000000014058f70e lea      rbx, [rbx + 0x1320]
000000014058f715 mov      rcx, qword ptr [rcx + 8]
000000014058f719 mov      rdx, rbx
000000014058f71c mov      rax, qword ptr [rax + 0x18]
000000014058f720 mov      rax, qword ptr [rax + 0x108]
000000014058f727 call     qword ptr [rip + 0xf4bcb]
000000014058f72d mov      rax, qword ptr [rbp + 0x60]
000000014058f731 mov      esi, dword ptr [rbp + 0x58]
000000014058f734 cmp      dword ptr [rax], esi
000000014058f736 jae      0x14058eb85
000000014058f73c lea      r9, [rip + 0xdfecd]
000000014058f743 jmp      0x14058eb4e
000000014058f748 mov      rbx, qword ptr [rbp + 0x48]
000000014058f74c mov      edi, 0x14e28
000000014058f751 mov      rax, qword ptr [rsi + 0x10]
000000014058f755 mov      edx, edi
000000014058f757 mov      rcx, rbx
000000014058f75a call     qword ptr [rip + 0xf4b98]
000000014058f760 movzx    eax, ax
000000014058f763 mov      dword ptr [rbp - 0x38], eax
000000014058f766 test     eax, eax
000000014058f768 je       0x14058ebb1
000000014058f76e mov      rax, qword ptr [rsi + 0x10]
000000014058f772 mov      edx, edi
000000014058f774 mov      rcx, rbx
000000014058f777 call     qword ptr [rip + 0xf4b7b]
000000014058f77d mov      rcx, qword ptr [rbp + 0x48]
000000014058f781 movzx    eax, ax
000000014058f784 mov      dword ptr [rbp - 0x38], eax
000000014058f787 mov      rax, rbx
000000014058f78a lea      rbx, [rbx + 0x1320]
000000014058f791 mov      rcx, qword ptr [rcx + 8]
000000014058f795 mov      rdx, rbx
000000014058f798 mov      rax, qword ptr [rax + 0x18]
000000014058f79c mov      rax, qword ptr [rax + 0x108]
000000014058f7a3 call     qword ptr [rip + 0xf4b4f]
000000014058f7a9 mov      rax, qword ptr [rbp + 0x60]
000000014058f7ad mov      esi, dword ptr [rbp + 0x58]
000000014058f7b0 cmp      dword ptr [rax], esi
000000014058f7b2 jae      0x14058eb85
000000014058f7b8 lea      r9, [rip + 0xdfe81]
000000014058f7bf jmp      0x14058eb4e
000000014058f7c4 mov      rbx, qword ptr [rbp + 0x48]
000000014058f7c8 mov      edi, 0x14e20
000000014058f7cd mov      rax, qword ptr [rsi + 0x10]
000000014058f7d1 mov      edx, edi
000000014058f7d3 mov      rcx, rbx
000000014058f7d6 call     qword ptr [rip + 0xf4b1c]
000000014058f7dc shr      eax, 0xe
000000014058f7df and      eax, r13d
000000014058f7e2 mov      dword ptr [rbp - 0x38], eax
000000014058f7e5 je       0x14058ebb1
000000014058f7eb mov      rax, qword ptr [rsi + 0x10]
000000014058f7ef mov      edx, edi
000000014058f7f1 mov      rcx, rbx
000000014058f7f4 call     qword ptr [rip + 0xf4afe]
000000014058f7fa mov      rcx, qword ptr [rbp + 0x48]
000000014058f7fe shr      eax, 0xe
000000014058f801 and      eax, r13d
000000014058f804 mov      dword ptr [rbp - 0x38], eax
000000014058f807 mov      rax, rbx
000000014058f80a mov      rcx, qword ptr [rcx + 8]
000000014058f80e lea      rbx, [rbx + 0x1320]
000000014058f815 mov      rdx, rbx
000000014058f818 mov      rax, qword ptr [rax + 0x18]
000000014058f81c mov      rax, qword ptr [rax + 0x108]
000000014058f823 call     qword ptr [rip + 0xf4acf]
000000014058f829 mov      rax, qword ptr [rbp + 0x60]
000000014058f82d mov      esi, dword ptr [rbp + 0x58]
000000014058f830 cmp      dword ptr [rax], esi
000000014058f832 jae      0x14058eb85
000000014058f838 lea      r9, [rip + 0xdfe31]
000000014058f83f jmp      0x14058eb4e
000000014058f844 mov      rbx, qword ptr [rbp + 0x48]
000000014058f848 mov      edi, 0x14e40
000000014058f84d mov      rax, qword ptr [rsi + 0x20]
000000014058f851 mov      edx, edi
000000014058f853 mov      rcx, rbx
000000014058f856 call     qword ptr [rip + 0xf4a9c]
000000014058f85c shr      eax, 0x10
000000014058f85f mov      dword ptr [rbp - 0x38], eax
000000014058f862 test     eax, eax
000000014058f864 je       0x14058ebb1
000000014058f86a mov      rax, qword ptr [rsi + 0x20]
000000014058f86e mov      edx, edi
000000014058f870 mov      rcx, rbx
000000014058f873 call     qword ptr [rip + 0xf4a7f]
000000014058f879 mov      rcx, qword ptr [rbp + 0x48]
000000014058f87d shr      eax, 0x10
000000014058f880 mov      dword ptr [rbp - 0x38], eax
000000014058f883 mov      rax, rbx
000000014058f886 lea      rbx, [rbx + 0x1320]
000000014058f88d mov      rcx, qword ptr [rcx + 8]
000000014058f891 mov      rdx, rbx
000000014058f894 mov      rax, qword ptr [rax + 0x18]
000000014058f898 mov      rax, qword ptr [rax + 0x108]
000000014058f89f call     qword ptr [rip + 0xf4a53]
000000014058f8a5 mov      rax, qword ptr [rbp + 0x60]
000000014058f8a9 mov      esi, dword ptr [rbp + 0x58]
000000014058f8ac cmp      dword ptr [rax], esi
000000014058f8ae jae      0x14058eb85
000000014058f8b4 lea      r9, [rip + 0xdfde5]
000000014058f8bb jmp      0x14058eb4e
000000014058f8c0 mov      rbx, qword ptr [rbp + 0x48]
000000014058f8c4 mov      edi, 0x14e40
000000014058f8c9 mov      rax, qword ptr [rsi + 0x10]
000000014058f8cd mov      edx, edi
000000014058f8cf mov      rcx, rbx
000000014058f8d2 call     qword ptr [rip + 0xf4a20]
000000014058f8d8 movzx    eax, ax
000000014058f8db mov      dword ptr [rbp - 0x38], eax
000000014058f8de test     eax, eax
000000014058f8e0 je       0x14058ebb1
000000014058f8e6 mov      rax, qword ptr [rsi + 0x10]
000000014058f8ea mov      edx, edi
000000014058f8ec mov      rcx, rbx
000000014058f8ef call     qword ptr [rip + 0xf4a03]
000000014058f8f5 mov      rcx, qword ptr [rbp + 0x48]
000000014058f8f9 movzx    eax, ax
000000014058f8fc mov      dword ptr [rbp - 0x38], eax
000000014058f8ff mov      rax, rbx
000000014058f902 lea      rbx, [rbx + 0x1320]
000000014058f909 mov      rcx, qword ptr [rcx + 8]
000000014058f90d mov      rdx, rbx
000000014058f910 mov      rax, qword ptr [rax + 0x18]
000000014058f914 mov      rax, qword ptr [rax + 0x108]
000000014058f91b call     qword ptr [rip + 0xf49d7]
000000014058f921 mov      rax, qword ptr [rbp + 0x60]
000000014058f925 mov      esi, dword ptr [rbp + 0x58]
000000014058f928 cmp      dword ptr [rax], esi
000000014058f92a jae      0x14058eb85
000000014058f930 lea      r9, [rip + 0xdfd99]
000000014058f937 jmp      0x14058eb4e
000000014058f93c mov      rbx, qword ptr [rbp + 0x48]
000000014058f940 mov      edi, 0x14ef4
000000014058f945 mov      rax, qword ptr [rsi + 0x10]
000000014058f949 mov      edx, edi
000000014058f94b mov      rcx, rbx
000000014058f94e call     qword ptr [rip + 0xf49a4]
000000014058f954 shr      eax, 0xb
000000014058f957 and      eax, r13d
000000014058f95a mov      dword ptr [rbp - 0x38], eax
000000014058f95d je       0x14058ebb1
000000014058f963 mov      rax, qword ptr [rsi + 0x10]
000000014058f967 mov      edx, edi
000000014058f969 mov      rcx, rbx
000000014058f96c call     qword ptr [rip + 0xf4986]
000000014058f972 mov      rcx, qword ptr [rbp + 0x48]
000000014058f976 shr      eax, 0xb
000000014058f979 and      eax, r13d
000000014058f97c mov      dword ptr [rbp - 0x38], eax
000000014058f97f mov      rax, rbx
000000014058f982 mov      rcx, qword ptr [rcx + 8]
000000014058f986 lea      rbx, [rbx + 0x1320]
000000014058f98d mov      rdx, rbx
000000014058f990 mov      rax, qword ptr [rax + 0x18]
000000014058f994 mov      rax, qword ptr [rax + 0x108]
000000014058f99b call     qword ptr [rip + 0xf4957]
000000014058f9a1 mov      rax, qword ptr [rbp + 0x60]
000000014058f9a5 mov      esi, dword ptr [rbp + 0x58]
000000014058f9a8 cmp      dword ptr [rax], esi
000000014058f9aa jae      0x14058eb85
000000014058f9b0 lea      r9, [rip + 0xdfd49]
000000014058f9b7 jmp      0x14058eb4e
000000014058f9bc mov      rbx, qword ptr [rbp + 0x48]
000000014058f9c0 mov      edi, 0x14ef4
000000014058f9c5 mov      rax, qword ptr [rsi + 0x10]
000000014058f9c9 mov      edx, edi
000000014058f9cb mov      rcx, rbx
000000014058f9ce call     qword ptr [rip + 0xf4924]
000000014058f9d4 shr      eax, 0xa
000000014058f9d7 and      eax, r13d
000000014058f9da mov      dword ptr [rbp - 0x38], eax
000000014058f9dd je       0x14058ebb1
000000014058f9e3 mov      rax, qword ptr [rsi + 0x10]
000000014058f9e7 mov      edx, edi
000000014058f9e9 mov      rcx, rbx
000000014058f9ec call     qword ptr [rip + 0xf4906]
000000014058f9f2 mov      rcx, qword ptr [rbp + 0x48]
000000014058f9f6 shr      eax, 0xa
000000014058f9f9 and      eax, r13d
000000014058f9fc mov      dword ptr [rbp - 0x38], eax
000000014058f9ff mov      rax, rbx
000000014058fa02 mov      rcx, qword ptr [rcx + 8]
000000014058fa06 lea      rbx, [rbx + 0x1320]
000000014058fa0d mov      rdx, rbx
000000014058fa10 mov      rax, qword ptr [rax + 0x18]
000000014058fa14 mov      rax, qword ptr [rax + 0x108]
000000014058fa1b call     qword ptr [rip + 0xf48d7]
000000014058fa21 mov      rax, qword ptr [rbp + 0x60]
000000014058fa25 mov      esi, dword ptr [rbp + 0x58]
000000014058fa28 cmp      dword ptr [rax], esi
000000014058fa2a jae      0x14058eb85
000000014058fa30 lea      r9, [rip + 0xdfcf9]
000000014058fa37 jmp      0x14058eb4e
000000014058fa3c mov      rbx, qword ptr [rbp + 0x48]
000000014058fa40 mov      edi, 0x14ef4
000000014058fa45 mov      rax, qword ptr [rsi + 0x10]
000000014058fa49 mov      edx, edi
000000014058fa4b mov      rcx, rbx
000000014058fa4e call     qword ptr [rip + 0xf48a4]
000000014058fa54 shr      eax, 9
000000014058fa57 and      eax, r13d
000000014058fa5a mov      dword ptr [rbp - 0x38], eax
000000014058fa5d je       0x14058ebb1
000000014058fa63 mov      rax, qword ptr [rsi + 0x10]
000000014058fa67 mov      edx, edi
000000014058fa69 mov      rcx, rbx
000000014058fa6c call     qword ptr [rip + 0xf4886]
000000014058fa72 mov      rcx, qword ptr [rbp + 0x48]
000000014058fa76 shr      eax, 9
000000014058fa79 and      eax, r13d
000000014058fa7c mov      dword ptr [rbp - 0x38], eax
000000014058fa7f mov      rax, rbx
000000014058fa82 mov      rcx, qword ptr [rcx + 8]
000000014058fa86 lea      rbx, [rbx + 0x1320]
000000014058fa8d mov      rdx, rbx
000000014058fa90 mov      rax, qword ptr [rax + 0x18]
000000014058fa94 mov      rax, qword ptr [rax + 0x108]
000000014058fa9b call     qword ptr [rip + 0xf4857]
000000014058faa1 mov      rax, qword ptr [rbp + 0x60]
000000014058faa5 mov      esi, dword ptr [rbp + 0x58]
000000014058faa8 cmp      dword ptr [rax], esi
000000014058faaa jae      0x14058eb85
000000014058fab0 lea      r9, [rip + 0xdfca9]
000000014058fab7 jmp      0x14058eb4e
000000014058fabc mov      rbx, qword ptr [rbp + 0x48]
000000014058fac0 mov      edi, 0x11442
000000014058fac5 mov      rax, qword ptr [rsi]
000000014058fac8 mov      edx, edi
000000014058faca mov      rcx, rbx
000000014058facd call     qword ptr [rip + 0xf4825]
000000014058fad3 and      eax, r13d
000000014058fad6 mov      dword ptr [rbp - 0x38], eax
000000014058fad9 je       0x14058ebb1
000000014058fadf mov      rax, qword ptr [rsi]
000000014058fae2 mov      edx, edi
000000014058fae4 mov      rcx, rbx
000000014058fae7 call     qword ptr [rip + 0xf480b]
000000014058faed mov      rcx, qword ptr [rbp + 0x48]
000000014058faf1 and      eax, r13d
000000014058faf4 mov      dword ptr [rbp - 0x38], eax
000000014058faf7 mov      rax, rbx
000000014058fafa lea      rbx, [rbx + 0x1320]
000000014058fb01 mov      rdx, rbx
000000014058fb04 mov      rcx, qword ptr [rcx + 8]
000000014058fb08 mov      rax, qword ptr [rax + 0x18]
000000014058fb0c mov      rax, qword ptr [rax + 0x108]
000000014058fb13 call     qword ptr [rip + 0xf47df]
000000014058fb19 mov      rax, qword ptr [rbp + 0x60]
000000014058fb1d mov      esi, dword ptr [rbp + 0x58]
000000014058fb20 cmp      dword ptr [rax], esi
000000014058fb22 jae      0x14058eb85
000000014058fb28 lea      r9, [rip + 0xdfc51]
000000014058fb2f jmp      0x14058eb4e
000000014058fb34 mov      rbx, qword ptr [rbp + 0x48]
000000014058fb38 mov      edi, 0x11442
000000014058fb3d mov      rax, qword ptr [rsi]
000000014058fb40 mov      edx, edi
000000014058fb42 mov      rcx, rbx
000000014058fb45 call     qword ptr [rip + 0xf47ad]
000000014058fb4b shr      eax, 1
000000014058fb4d and      eax, r13d
000000014058fb50 mov      dword ptr [rbp - 0x38], eax
000000014058fb53 je       0x14058ebb1
000000014058fb59 mov      rax, qword ptr [rsi]
000000014058fb5c mov      edx, edi
000000014058fb5e mov      rcx, rbx
000000014058fb61 call     qword ptr [rip + 0xf4791]
000000014058fb67 mov      rcx, qword ptr [rbp + 0x48]
000000014058fb6b shr      eax, 1
000000014058fb6d and      eax, r13d
000000014058fb70 mov      dword ptr [rbp - 0x38], eax
000000014058fb73 mov      rax, rbx
000000014058fb76 mov      rcx, qword ptr [rcx + 8]
000000014058fb7a lea      rbx, [rbx + 0x1320]
000000014058fb81 mov      rdx, rbx
000000014058fb84 mov      rax, qword ptr [rax + 0x18]
000000014058fb88 mov      rax, qword ptr [rax + 0x108]
000000014058fb8f call     qword ptr [rip + 0xf4763]
000000014058fb95 mov      rax, qword ptr [rbp + 0x60]
000000014058fb99 mov      esi, dword ptr [rbp + 0x58]
000000014058fb9c cmp      dword ptr [rax], esi
000000014058fb9e jae      0x14058eb85
000000014058fba4 lea      r9, [rip + 0xdfc05]
000000014058fbab jmp      0x14058eb4e
000000014058fbb0 mov      rbx, qword ptr [rbp + 0x48]
000000014058fbb4 mov      edi, 0x11442
000000014058fbb9 mov      rax, qword ptr [rsi]
000000014058fbbc mov      edx, edi
000000014058fbbe mov      rcx, rbx
000000014058fbc1 call     qword ptr [rip + 0xf4731]
000000014058fbc7 shr      eax, 2
000000014058fbca and      eax, r13d
000000014058fbcd mov      dword ptr [rbp - 0x38], eax
000000014058fbd0 je       0x14058ebb1
000000014058fbd6 mov      rax, qword ptr [rsi]
000000014058fbd9 mov      edx, edi
000000014058fbdb mov      rcx, rbx
000000014058fbde call     qword ptr [rip + 0xf4714]
000000014058fbe4 mov      rcx, qword ptr [rbp + 0x48]
000000014058fbe8 shr      eax, 2
000000014058fbeb and      eax, r13d
000000014058fbee mov      dword ptr [rbp - 0x38], eax
000000014058fbf1 mov      rax, rbx
000000014058fbf4 mov      rcx, qword ptr [rcx + 8]
000000014058fbf8 lea      rbx, [rbx + 0x1320]
000000014058fbff mov      rdx, rbx
000000014058fc02 mov      rax, qword ptr [rax + 0x18]
000000014058fc06 mov      rax, qword ptr [rax + 0x108]
000000014058fc0d call     qword ptr [rip + 0xf46e5]
000000014058fc13 mov      rax, qword ptr [rbp + 0x60]
000000014058fc17 mov      esi, dword ptr [rbp + 0x58]
000000014058fc1a cmp      dword ptr [rax], esi
000000014058fc1c jae      0x14058eb85
000000014058fc22 lea      r9, [rip + 0xdfbb7]
000000014058fc29 jmp      0x14058eb4e
000000014058fc2e mov      rbx, qword ptr [rbp + 0x48]
000000014058fc32 mov      edi, 0x114f4
000000014058fc37 mov      rax, qword ptr [rsi]
000000014058fc3a mov      edx, edi
000000014058fc3c mov      rcx, rbx
000000014058fc3f call     qword ptr [rip + 0xf46b3]
000000014058fc45 and      eax, r13d
000000014058fc48 mov      dword ptr [rbp - 0x38], eax
000000014058fc4b je       0x14058ebb1
000000014058fc51 mov      rax, qword ptr [rsi]
000000014058fc54 mov      edx, edi
000000014058fc56 mov      rcx, rbx
000000014058fc59 call     qword ptr [rip + 0xf4699]
000000014058fc5f mov      rcx, qword ptr [rbp + 0x48]
000000014058fc63 and      eax, r13d
000000014058fc66 mov      dword ptr [rbp - 0x38], eax
000000014058fc69 mov      rax, rbx
000000014058fc6c lea      rbx, [rbx + 0x1320]
000000014058fc73 mov      rdx, rbx
000000014058fc76 mov      rcx, qword ptr [rcx + 8]
000000014058fc7a mov      rax, qword ptr [rax + 0x18]
000000014058fc7e mov      rax, qword ptr [rax + 0x108]
000000014058fc85 call     qword ptr [rip + 0xf466d]
000000014058fc8b mov      rax, qword ptr [rbp + 0x60]
000000014058fc8f mov      esi, dword ptr [rbp + 0x58]
000000014058fc92 cmp      dword ptr [rax], esi
000000014058fc94 jae      0x14058eb85
000000014058fc9a lea      r9, [rip + 0xdfb6f]
000000014058fca1 jmp      0x14058eb4e
000000014058fca6 mov      rbx, qword ptr [rbp + 0x48]
000000014058fcaa mov      edi, 0x114f4
000000014058fcaf mov      rax, qword ptr [rsi]
000000014058fcb2 mov      edx, edi
000000014058fcb4 mov      rcx, rbx
000000014058fcb7 call     qword ptr [rip + 0xf463b]
000000014058fcbd shr      eax, 1
000000014058fcbf and      eax, r13d
000000014058fcc2 mov      dword ptr [rbp - 0x38], eax
000000014058fcc5 je       0x14058ebb1
000000014058fccb mov      rax, qword ptr [rsi]
000000014058fcce mov      edx, edi
000000014058fcd0 mov      rcx, rbx
000000014058fcd3 call     qword ptr [rip + 0xf461f]
000000014058fcd9 mov      rcx, qword ptr [rbp + 0x48]
000000014058fcdd shr      eax, 1
000000014058fcdf and      eax, r13d
000000014058fce2 mov      dword ptr [rbp - 0x38], eax
000000014058fce5 mov      rax, rbx
000000014058fce8 mov      rcx, qword ptr [rcx + 8]
000000014058fcec lea      rbx, [rbx + 0x1320]
000000014058fcf3 mov      rdx, rbx
000000014058fcf6 mov      rax, qword ptr [rax + 0x18]
000000014058fcfa mov      rax, qword ptr [rax + 0x108]
000000014058fd01 call     qword ptr [rip + 0xf45f1]
000000014058fd07 mov      rax, qword ptr [rbp + 0x60]
000000014058fd0b mov      esi, dword ptr [rbp + 0x58]
000000014058fd0e cmp      dword ptr [rax], esi
000000014058fd10 jae      0x14058eb85
000000014058fd16 lea      r9, [rip + 0xdfb13]
000000014058fd1d jmp      0x14058eb4e
000000014058fd22 mov      rbx, qword ptr [rbp + 0x48]
000000014058fd26 mov      edi, 0x114f4
000000014058fd2b mov      rax, qword ptr [rsi]
000000014058fd2e mov      edx, edi
000000014058fd30 mov      rcx, rbx
000000014058fd33 call     qword ptr [rip + 0xf45bf]
000000014058fd39 shr      eax, 2
000000014058fd3c and      eax, r13d
000000014058fd3f mov      dword ptr [rbp - 0x38], eax
000000014058fd42 je       0x14058ebb1
000000014058fd48 mov      rax, qword ptr [rsi]
000000014058fd4b mov      edx, edi
000000014058fd4d mov      rcx, rbx
000000014058fd50 call     qword ptr [rip + 0xf45a2]
000000014058fd56 mov      rcx, qword ptr [rbp + 0x48]
000000014058fd5a shr      eax, 2
000000014058fd5d and      eax, r13d
000000014058fd60 mov      dword ptr [rbp - 0x38], eax
000000014058fd63 mov      rax, rbx
000000014058fd66 mov      rcx, qword ptr [rcx + 8]
000000014058fd6a lea      rbx, [rbx + 0x1320]
000000014058fd71 mov      rdx, rbx
000000014058fd74 mov      rax, qword ptr [rax + 0x18]
000000014058fd78 mov      rax, qword ptr [rax + 0x108]
000000014058fd7f call     qword ptr [rip + 0xf4573]
000000014058fd85 mov      rax, qword ptr [rbp + 0x60]
000000014058fd89 mov      esi, dword ptr [rbp + 0x58]
000000014058fd8c cmp      dword ptr [rax], esi
000000014058fd8e jae      0x14058eb85
000000014058fd94 lea      r9, [rip + 0xdfab5]
000000014058fd9b jmp      0x14058eb4e
000000014058fda0 mov      rbx, qword ptr [rbp + 0x48]
000000014058fda4 mov      edi, 0x114f4
000000014058fda9 mov      rax, qword ptr [rsi]
000000014058fdac mov      edx, edi
000000014058fdae mov      rcx, rbx
000000014058fdb1 call     qword ptr [rip + 0xf4541]
000000014058fdb7 shr      eax, 3
000000014058fdba and      eax, r13d
000000014058fdbd mov      dword ptr [rbp - 0x38], eax
000000014058fdc0 je       0x14058ebb1
000000014058fdc6 mov      rax, qword ptr [rsi]
000000014058fdc9 mov      edx, edi
000000014058fdcb mov      rcx, rbx
000000014058fdce call     qword ptr [rip + 0xf4524]
000000014058fdd4 mov      rcx, qword ptr [rbp + 0x48]
000000014058fdd8 shr      eax, 3
000000014058fddb and      eax, r13d
000000014058fdde mov      dword ptr [rbp - 0x38], eax
000000014058fde1 mov      rax, rbx
000000014058fde4 mov      rcx, qword ptr [rcx + 8]
000000014058fde8 lea      rbx, [rbx + 0x1320]
000000014058fdef mov      rdx, rbx
000000014058fdf2 mov      rax, qword ptr [rax + 0x18]
000000014058fdf6 mov      rax, qword ptr [rax + 0x108]
000000014058fdfd call     qword ptr [rip + 0xf44f5]
000000014058fe03 mov      rax, qword ptr [rbp + 0x60]
000000014058fe07 mov      esi, dword ptr [rbp + 0x58]
000000014058fe0a cmp      dword ptr [rax], esi
000000014058fe0c jae      0x14058eb85
000000014058fe12 lea      r9, [rip + 0xdfa57]
000000014058fe19 jmp      0x14058eb4e
000000014058fe1e mov      rbx, qword ptr [rbp + 0x48]
000000014058fe22 mov      edi, 0x114f4
000000014058fe27 mov      rax, qword ptr [rsi]
000000014058fe2a mov      edx, edi
000000014058fe2c mov      rcx, rbx
000000014058fe2f call     qword ptr [rip + 0xf44c3]
000000014058fe35 shr      eax, 4
000000014058fe38 and      eax, r13d
000000014058fe3b mov      dword ptr [rbp - 0x38], eax
000000014058fe3e je       0x14058ebb1
000000014058fe44 mov      rax, qword ptr [rsi]
000000014058fe47 mov      edx, edi
000000014058fe49 mov      rcx, rbx
000000014058fe4c call     qword ptr [rip + 0xf44a6]
000000014058fe52 mov      rcx, qword ptr [rbp + 0x48]
000000014058fe56 shr      eax, 4
000000014058fe59 and      eax, r13d
000000014058fe5c mov      dword ptr [rbp - 0x38], eax
000000014058fe5f mov      rax, rbx
000000014058fe62 mov      rcx, qword ptr [rcx + 8]
000000014058fe66 lea      rbx, [rbx + 0x1320]
000000014058fe6d mov      rdx, rbx
000000014058fe70 mov      rax, qword ptr [rax + 0x18]
000000014058fe74 mov      rax, qword ptr [rax + 0x108]
000000014058fe7b call     qword ptr [rip + 0xf4477]
000000014058fe81 mov      rax, qword ptr [rbp + 0x60]
000000014058fe85 mov      esi, dword ptr [rbp + 0x58]
000000014058fe88 cmp      dword ptr [rax], esi
000000014058fe8a jae      0x14058eb85
000000014058fe90 lea      r9, [rip + 0xdf9f9]
000000014058fe97 jmp      0x14058eb4e
000000014058fe9c mov      rbx, qword ptr [rbp + 0x48]
000000014058fea0 mov      edi, 0x114f4
000000014058fea5 mov      rax, qword ptr [rsi]
000000014058fea8 mov      edx, edi
000000014058feaa mov      rcx, rbx
000000014058fead call     qword ptr [rip + 0xf4445]
000000014058feb3 shr      eax, 5
000000014058feb6 and      eax, r13d
000000014058feb9 mov      dword ptr [rbp - 0x38], eax
000000014058febc je       0x14058ebb1
000000014058fec2 mov      rax, qword ptr [rsi]
000000014058fec5 mov      edx, edi
000000014058fec7 mov      rcx, rbx
000000014058feca call     qword ptr [rip + 0xf4428]
000000014058fed0 mov      rcx, qword ptr [rbp + 0x48]
000000014058fed4 shr      eax, 5
000000014058fed7 and      eax, r13d
000000014058feda mov      dword ptr [rbp - 0x38], eax
000000014058fedd mov      rax, rbx
000000014058fee0 mov      rcx, qword ptr [rcx + 8]
000000014058fee4 lea      rbx, [rbx + 0x1320]
000000014058feeb mov      rdx, rbx
000000014058feee mov      rax, qword ptr [rax + 0x18]
000000014058fef2 mov      rax, qword ptr [rax + 0x108]
000000014058fef9 call     qword ptr [rip + 0xf43f9]
000000014058feff mov      rax, qword ptr [rbp + 0x60]
000000014058ff03 mov      esi, dword ptr [rbp + 0x58]
000000014058ff06 cmp      dword ptr [rax], esi
000000014058ff08 jae      0x14058eb85
000000014058ff0e lea      r9, [rip + 0xdf99b]
000000014058ff15 jmp      0x14058eb4e
000000014058ff1a mov      rbx, qword ptr [rbp + 0x48]
000000014058ff1e mov      edi, 0x114f4
000000014058ff23 mov      rax, qword ptr [rsi]
000000014058ff26 mov      edx, edi
000000014058ff28 mov      rcx, rbx
000000014058ff2b call     qword ptr [rip + 0xf43c7]
000000014058ff31 shr      eax, 6
000000014058ff34 and      eax, r13d
000000014058ff37 mov      dword ptr [rbp - 0x38], eax
000000014058ff3a je       0x14058ebb1
000000014058ff40 mov      rax, qword ptr [rsi]
000000014058ff43 mov      edx, edi
000000014058ff45 mov      rcx, rbx
000000014058ff48 call     qword ptr [rip + 0xf43aa]
000000014058ff4e mov      rcx, qword ptr [rbp + 0x48]
000000014058ff52 shr      eax, 6
000000014058ff55 and      eax, r13d
000000014058ff58 mov      dword ptr [rbp - 0x38], eax
000000014058ff5b mov      rax, rbx
000000014058ff5e mov      rcx, qword ptr [rcx + 8]
000000014058ff62 lea      rbx, [rbx + 0x1320]
000000014058ff69 mov      rdx, rbx
000000014058ff6c mov      rax, qword ptr [rax + 0x18]
000000014058ff70 mov      rax, qword ptr [rax + 0x108]
000000014058ff77 call     qword ptr [rip + 0xf437b]
000000014058ff7d mov      rax, qword ptr [rbp + 0x60]
000000014058ff81 mov      esi, dword ptr [rbp + 0x58]
000000014058ff84 cmp      dword ptr [rax], esi
000000014058ff86 jae      0x14058eb85
000000014058ff8c lea      r9, [rip + 0xdf93d]
000000014058ff93 jmp      0x14058eb4e
000000014058ff98 mov      rbx, qword ptr [rbp + 0x48]
000000014058ff9c mov      edi, 0x114f4
000000014058ffa1 mov      rax, qword ptr [rsi]
000000014058ffa4 mov      edx, edi
000000014058ffa6 mov      rcx, rbx
000000014058ffa9 call     qword ptr [rip + 0xf4349]
000000014058ffaf movzx    eax, al
000000014058ffb2 shr      eax, 7
000000014058ffb5 mov      dword ptr [rbp - 0x38], eax
000000014058ffb8 test     eax, eax
000000014058ffba je       0x14058ebb1
000000014058ffc0 mov      rax, qword ptr [rsi]
000000014058ffc3 mov      edx, edi
000000014058ffc5 mov      rcx, rbx
000000014058ffc8 call     qword ptr [rip + 0xf432a]
000000014058ffce mov      rcx, qword ptr [rbp + 0x48]
000000014058ffd2 movzx    eax, al
000000014058ffd5 shr      eax, 7
000000014058ffd8 mov      dword ptr [rbp - 0x38], eax
000000014058ffdb mov      rax, rbx
000000014058ffde mov      rcx, qword ptr [rcx + 8]
000000014058ffe2 lea      rbx, [rbx + 0x1320]
000000014058ffe9 mov      rdx, rbx
000000014058ffec mov      rax, qword ptr [rax + 0x18]
000000014058fff0 mov      rax, qword ptr [rax + 0x108]
000000014058fff7 call     qword ptr [rip + 0xf42fb]
000000014058fffd mov      rax, qword ptr [rbp + 0x60]
0000000140590001 mov      esi, dword ptr [rbp + 0x58]
0000000140590004 cmp      dword ptr [rax], esi
0000000140590006 jae      0x14058eb85
000000014059000c lea      r9, [rip + 0xdf8dd]
0000000140590013 jmp      0x14058eb4e
0000000140590018 mov      rbx, qword ptr [rbp + 0x48]
000000014059001c mov      edi, 0x114f4
0000000140590021 mov      rax, qword ptr [rsi + 0x10]
0000000140590025 mov      edx, edi
0000000140590027 mov      rcx, rbx
000000014059002a call     qword ptr [rip + 0xf42c8]
0000000140590030 shr      eax, 8
0000000140590033 and      eax, r13d
0000000140590036 mov      dword ptr [rbp - 0x38], eax
0000000140590039 je       0x14058ebb1
000000014059003f mov      rax, qword ptr [rsi + 0x10]
0000000140590043 mov      edx, edi
0000000140590045 mov      rcx, rbx
0000000140590048 call     qword ptr [rip + 0xf42aa]
000000014059004e mov      rcx, qword ptr [rbp + 0x48]
0000000140590052 shr      eax, 8
0000000140590055 and      eax, r13d
0000000140590058 mov      dword ptr [rbp - 0x38], eax
000000014059005b mov      rax, rbx
000000014059005e mov      rcx, qword ptr [rcx + 8]
0000000140590062 lea      rbx, [rbx + 0x1320]
0000000140590069 mov      rdx, rbx
000000014059006c mov      rax, qword ptr [rax + 0x18]
0000000140590070 mov      rax, qword ptr [rax + 0x108]
0000000140590077 call     qword ptr [rip + 0xf427b]
000000014059007d mov      rax, qword ptr [rbp + 0x60]
0000000140590081 mov      esi, dword ptr [rbp + 0x58]
0000000140590084 cmp      dword ptr [rax], esi
0000000140590086 jae      0x14058eb85
000000014059008c lea      r9, [rip + 0xdf87d]
0000000140590093 jmp      0x14058eb4e
0000000140590098 mov      rbx, qword ptr [rbp + 0x48]
000000014059009c mov      edi, 0x114f4
00000001405900a1 mov      rax, qword ptr [rsi + 0x10]
00000001405900a5 mov      edx, edi
00000001405900a7 mov      rcx, rbx
00000001405900aa call     qword ptr [rip + 0xf4248]
00000001405900b0 shr      eax, 9
00000001405900b3 and      eax, r13d
00000001405900b6 mov      dword ptr [rbp - 0x38], eax
00000001405900b9 je       0x14058ebb1
00000001405900bf mov      rax, qword ptr [rsi + 0x10]
00000001405900c3 mov      edx, edi
00000001405900c5 mov      rcx, rbx
00000001405900c8 call     qword ptr [rip + 0xf422a]
00000001405900ce mov      rcx, qword ptr [rbp + 0x48]
00000001405900d2 shr      eax, 9
00000001405900d5 and      eax, r13d
00000001405900d8 mov      dword ptr [rbp - 0x38], eax
00000001405900db mov      rax, rbx
00000001405900de mov      rcx, qword ptr [rcx + 8]
00000001405900e2 lea      rbx, [rbx + 0x1320]
00000001405900e9 mov      rdx, rbx
00000001405900ec mov      rax, qword ptr [rax + 0x18]
00000001405900f0 mov      rax, qword ptr [rax + 0x108]
00000001405900f7 call     qword ptr [rip + 0xf41fb]
00000001405900fd mov      rax, qword ptr [rbp + 0x60]
0000000140590101 mov      esi, dword ptr [rbp + 0x58]
0000000140590104 cmp      dword ptr [rax], esi
0000000140590106 jae      0x14058eb85
000000014059010c lea      r9, [rip + 0xdf81d]
0000000140590113 jmp      0x14058eb4e
0000000140590118 mov      rbx, qword ptr [rbp + 0x48]
000000014059011c mov      edi, 0x15442
0000000140590121 mov      rax, qword ptr [rsi]
0000000140590124 mov      edx, edi
0000000140590126 mov      rcx, rbx
0000000140590129 call     qword ptr [rip + 0xf41c9]
000000014059012f and      eax, r13d
0000000140590132 mov      dword ptr [rbp - 0x38], eax
0000000140590135 je       0x14058ebb1
000000014059013b mov      rax, qword ptr [rsi]
000000014059013e mov      edx, edi
0000000140590140 mov      rcx, rbx
0000000140590143 call     qword ptr [rip + 0xf41af]
0000000140590149 mov      rcx, qword ptr [rbp + 0x48]
000000014059014d and      eax, r13d
0000000140590150 mov      dword ptr [rbp - 0x38], eax
0000000140590153 mov      rax, rbx
0000000140590156 lea      rbx, [rbx + 0x1320]
000000014059015d mov      rdx, rbx
0000000140590160 mov      rcx, qword ptr [rcx + 8]
0000000140590164 mov      rax, qword ptr [rax + 0x18]
0000000140590168 mov      rax, qword ptr [rax + 0x108]
000000014059016f call     qword ptr [rip + 0xf4183]
0000000140590175 mov      rax, qword ptr [rbp + 0x60]
0000000140590179 mov      esi, dword ptr [rbp + 0x58]
000000014059017c cmp      dword ptr [rax], esi
000000014059017e jae      0x14058eb85
0000000140590184 lea      r9, [rip + 0xdf7c5]
000000014059018b jmp      0x14058eb4e
0000000140590190 mov      rbx, qword ptr [rbp + 0x48]
0000000140590194 mov      edi, 0x15442
0000000140590199 mov      rax, qword ptr [rsi]
000000014059019c mov      edx, edi
000000014059019e mov      rcx, rbx
00000001405901a1 call     qword ptr [rip + 0xf4151]
00000001405901a7 shr      eax, 1
00000001405901a9 and      eax, r13d
00000001405901ac mov      dword ptr [rbp - 0x38], eax
00000001405901af je       0x14058ebb1
00000001405901b5 mov      rax, qword ptr [rsi]
00000001405901b8 mov      edx, edi
00000001405901ba mov      rcx, rbx
00000001405901bd call     qword ptr [rip + 0xf4135]
00000001405901c3 mov      rcx, qword ptr [rbp + 0x48]
00000001405901c7 shr      eax, 1
00000001405901c9 and      eax, r13d
00000001405901cc mov      dword ptr [rbp - 0x38], eax
00000001405901cf mov      rax, rbx
00000001405901d2 mov      rcx, qword ptr [rcx + 8]
00000001405901d6 lea      rbx, [rbx + 0x1320]
00000001405901dd mov      rdx, rbx
00000001405901e0 mov      rax, qword ptr [rax + 0x18]
00000001405901e4 mov      rax, qword ptr [rax + 0x108]
00000001405901eb call     qword ptr [rip + 0xf4107]
00000001405901f1 mov      rax, qword ptr [rbp + 0x60]
00000001405901f5 mov      esi, dword ptr [rbp + 0x58]
00000001405901f8 cmp      dword ptr [rax], esi
00000001405901fa jae      0x14058eb85
0000000140590200 lea      r9, [rip + 0xdf779]
0000000140590207 jmp      0x14058eb4e
000000014059020c mov      rbx, qword ptr [rbp + 0x48]
0000000140590210 mov      edi, 0x15442
0000000140590215 mov      rax, qword ptr [rsi]
0000000140590218 mov      edx, edi
000000014059021a mov      rcx, rbx
000000014059021d call     qword ptr [rip + 0xf40d5]
0000000140590223 shr      eax, 2
0000000140590226 and      eax, r13d
0000000140590229 mov      dword ptr [rbp - 0x38], eax
000000014059022c je       0x14058ebb1
0000000140590232 mov      rax, qword ptr [rsi]
0000000140590235 mov      edx, edi
0000000140590237 mov      rcx, rbx
000000014059023a call     qword ptr [rip + 0xf40b8]
0000000140590240 mov      rcx, qword ptr [rbp + 0x48]
0000000140590244 shr      eax, 2
0000000140590247 and      eax, r13d
000000014059024a mov      dword ptr [rbp - 0x38], eax
000000014059024d mov      rax, rbx
0000000140590250 mov      rcx, qword ptr [rcx + 8]
0000000140590254 lea      rbx, [rbx + 0x1320]
000000014059025b mov      rdx, rbx
000000014059025e mov      rax, qword ptr [rax + 0x18]
0000000140590262 mov      rax, qword ptr [rax + 0x108]
0000000140590269 call     qword ptr [rip + 0xf4089]
000000014059026f mov      rax, qword ptr [rbp + 0x60]
0000000140590273 mov      esi, dword ptr [rbp + 0x58]
0000000140590276 cmp      dword ptr [rax], esi
0000000140590278 jae      0x14058eb85
000000014059027e lea      r9, [rip + 0xdf72b]
0000000140590285 jmp      0x14058eb4e
000000014059028a mov      rbx, qword ptr [rbp + 0x48]
000000014059028e mov      edi, 0x154f4
0000000140590293 mov      rax, qword ptr [rsi]
0000000140590296 mov      edx, edi
0000000140590298 mov      rcx, rbx
000000014059029b call     qword ptr [rip + 0xf4057]
00000001405902a1 and      eax, r13d
00000001405902a4 mov      dword ptr [rbp - 0x38], eax
00000001405902a7 je       0x14058ebb1
00000001405902ad mov      rax, qword ptr [rsi]
00000001405902b0 mov      edx, edi
00000001405902b2 mov      rcx, rbx
00000001405902b5 call     qword ptr [rip + 0xf403d]
00000001405902bb mov      rcx, qword ptr [rbp + 0x48]
00000001405902bf and      eax, r13d
00000001405902c2 mov      dword ptr [rbp - 0x38], eax
00000001405902c5 mov      rax, rbx
00000001405902c8 lea      rbx, [rbx + 0x1320]
00000001405902cf mov      rdx, rbx
00000001405902d2 mov      rcx, qword ptr [rcx + 8]
00000001405902d6 mov      rax, qword ptr [rax + 0x18]
00000001405902da mov      rax, qword ptr [rax + 0x108]
00000001405902e1 call     qword ptr [rip + 0xf4011]
00000001405902e7 mov      rax, qword ptr [rbp + 0x60]
00000001405902eb mov      esi, dword ptr [rbp + 0x58]
00000001405902ee cmp      dword ptr [rax], esi
00000001405902f0 jae      0x14058eb85
00000001405902f6 lea      r9, [rip + 0xdf6e3]
00000001405902fd jmp      0x14058eb4e
0000000140590302 mov      rbx, qword ptr [rbp + 0x48]
0000000140590306 mov      edi, 0x154f4
000000014059030b mov      rax, qword ptr [rsi]
000000014059030e mov      edx, edi
0000000140590310 mov      rcx, rbx
0000000140590313 call     qword ptr [rip + 0xf3fdf]
0000000140590319 shr      eax, 1
000000014059031b and      eax, r13d
000000014059031e mov      dword ptr [rbp - 0x38], eax
0000000140590321 je       0x14058ebb1
0000000140590327 mov      rax, qword ptr [rsi]
000000014059032a mov      edx, edi
000000014059032c mov      rcx, rbx
000000014059032f call     qword ptr [rip + 0xf3fc3]
0000000140590335 mov      rcx, qword ptr [rbp + 0x48]
0000000140590339 shr      eax, 1
000000014059033b and      eax, r13d
000000014059033e mov      dword ptr [rbp - 0x38], eax
0000000140590341 mov      rax, rbx
0000000140590344 mov      rcx, qword ptr [rcx + 8]
0000000140590348 lea      rbx, [rbx + 0x1320]
000000014059034f mov      rdx, rbx
0000000140590352 mov      rax, qword ptr [rax + 0x18]
0000000140590356 mov      rax, qword ptr [rax + 0x108]
000000014059035d call     qword ptr [rip + 0xf3f95]
0000000140590363 mov      rax, qword ptr [rbp + 0x60]
0000000140590367 mov      esi, dword ptr [rbp + 0x58]
000000014059036a cmp      dword ptr [rax], esi
000000014059036c jae      0x14058eb85
0000000140590372 lea      r9, [rip + 0xdf687]
0000000140590379 jmp      0x14058eb4e
000000014059037e mov      rbx, qword ptr [rbp + 0x48]
0000000140590382 mov      edi, 0x154f4
0000000140590387 mov      rax, qword ptr [rsi]
000000014059038a mov      edx, edi
000000014059038c mov      rcx, rbx
000000014059038f call     qword ptr [rip + 0xf3f63]
0000000140590395 shr      eax, 2
0000000140590398 and      eax, r13d
000000014059039b mov      dword ptr [rbp - 0x38], eax
000000014059039e je       0x14058ebb1
00000001405903a4 mov      rax, qword ptr [rsi]
00000001405903a7 mov      edx, edi
00000001405903a9 mov      rcx, rbx
00000001405903ac call     qword ptr [rip + 0xf3f46]
00000001405903b2 mov      rcx, qword ptr [rbp + 0x48]
00000001405903b6 shr      eax, 2
00000001405903b9 and      eax, r13d
00000001405903bc mov      dword ptr [rbp - 0x38], eax
00000001405903bf mov      rax, rbx
00000001405903c2 mov      rcx, qword ptr [rcx + 8]
00000001405903c6 lea      rbx, [rbx + 0x1320]
00000001405903cd mov      rdx, rbx
00000001405903d0 mov      rax, qword ptr [rax + 0x18]
00000001405903d4 mov      rax, qword ptr [rax + 0x108]
00000001405903db call     qword ptr [rip + 0xf3f17]
00000001405903e1 mov      rax, qword ptr [rbp + 0x60]
00000001405903e5 mov      esi, dword ptr [rbp + 0x58]
00000001405903e8 cmp      dword ptr [rax], esi
00000001405903ea jae      0x14058eb85
00000001405903f0 lea      r9, [rip + 0xdf629]
00000001405903f7 jmp      0x14058eb4e
00000001405903fc mov      rbx, qword ptr [rbp + 0x48]
0000000140590400 mov      edi, 0x154f4
0000000140590405 mov      rax, qword ptr [rsi]
0000000140590408 mov      edx, edi
000000014059040a mov      rcx, rbx
000000014059040d call     qword ptr [rip + 0xf3ee5]
0000000140590413 shr      eax, 3
0000000140590416 and      eax, r13d
0000000140590419 mov      dword ptr [rbp - 0x38], eax
000000014059041c je       0x14058ebb1
0000000140590422 mov      rax, qword ptr [rsi]
0000000140590425 mov      edx, edi
0000000140590427 mov      rcx, rbx
000000014059042a call     qword ptr [rip + 0xf3ec8]
0000000140590430 mov      rcx, qword ptr [rbp + 0x48]
0000000140590434 shr      eax, 3
0000000140590437 and      eax, r13d
000000014059043a mov      dword ptr [rbp - 0x38], eax
000000014059043d mov      rax, rbx
0000000140590440 mov      rcx, qword ptr [rcx + 8]
0000000140590444 lea      rbx, [rbx + 0x1320]
000000014059044b mov      rdx, rbx
000000014059044e mov      rax, qword ptr [rax + 0x18]
0000000140590452 mov      rax, qword ptr [rax + 0x108]
0000000140590459 call     qword ptr [rip + 0xf3e99]
000000014059045f mov      rax, qword ptr [rbp + 0x60]
0000000140590463 mov      esi, dword ptr [rbp + 0x58]
0000000140590466 cmp      dword ptr [rax], esi
0000000140590468 jae      0x14058eb85
000000014059046e lea      r9, [rip + 0xdf5cb]
0000000140590475 jmp      0x14058eb4e
000000014059047a mov      rbx, qword ptr [rbp + 0x48]
000000014059047e mov      edi, 0x154f4
0000000140590483 mov      rax, qword ptr [rsi]
0000000140590486 mov      edx, edi
0000000140590488 mov      rcx, rbx
000000014059048b call     qword ptr [rip + 0xf3e67]
0000000140590491 shr      eax, 4
0000000140590494 and      eax, r13d
0000000140590497 mov      dword ptr [rbp - 0x38], eax
000000014059049a je       0x14058ebb1
00000001405904a0 mov      rax, qword ptr [rsi]
00000001405904a3 mov      edx, edi
00000001405904a5 mov      rcx, rbx
00000001405904a8 call     qword ptr [rip + 0xf3e4a]
00000001405904ae mov      rcx, qword ptr [rbp + 0x48]
00000001405904b2 shr      eax, 4
00000001405904b5 and      eax, r13d
00000001405904b8 mov      dword ptr [rbp - 0x38], eax
00000001405904bb mov      rax, rbx
00000001405904be mov      rcx, qword ptr [rcx + 8]
00000001405904c2 lea      rbx, [rbx + 0x1320]
00000001405904c9 mov      rdx, rbx
00000001405904cc mov      rax, qword ptr [rax + 0x18]
00000001405904d0 mov      rax, qword ptr [rax + 0x108]
00000001405904d7 call     qword ptr [rip + 0xf3e1b]
00000001405904dd mov      rax, qword ptr [rbp + 0x60]
00000001405904e1 mov      esi, dword ptr [rbp + 0x58]
00000001405904e4 cmp      dword ptr [rax], esi
00000001405904e6 jae      0x14058eb85
00000001405904ec lea      r9, [rip + 0xdf56d]
00000001405904f3 jmp      0x14058eb4e
00000001405904f8 mov      rbx, qword ptr [rbp + 0x48]
00000001405904fc mov      edi, 0x154f4
0000000140590501 mov      rax, qword ptr [rsi]
0000000140590504 mov      edx, edi
0000000140590506 mov      rcx, rbx
0000000140590509 call     qword ptr [rip + 0xf3de9]
000000014059050f shr      eax, 5
0000000140590512 and      eax, r13d
0000000140590515 mov      dword ptr [rbp - 0x38], eax
0000000140590518 je       0x14058ebb1
000000014059051e mov      rax, qword ptr [rsi]
0000000140590521 mov      edx, edi
0000000140590523 mov      rcx, rbx
0000000140590526 call     qword ptr [rip + 0xf3dcc]
000000014059052c mov      rcx, qword ptr [rbp + 0x48]
0000000140590530 shr      eax, 5
0000000140590533 and      eax, r13d
0000000140590536 mov      dword ptr [rbp - 0x38], eax
0000000140590539 mov      rax, rbx
000000014059053c mov      rcx, qword ptr [rcx + 8]
0000000140590540 lea      rbx, [rbx + 0x1320]
0000000140590547 mov      rdx, rbx
000000014059054a mov      rax, qword ptr [rax + 0x18]
000000014059054e mov      rax, qword ptr [rax + 0x108]
0000000140590555 call     qword ptr [rip + 0xf3d9d]
000000014059055b mov      rax, qword ptr [rbp + 0x60]
000000014059055f mov      esi, dword ptr [rbp + 0x58]
0000000140590562 cmp      dword ptr [rax], esi
0000000140590564 jae      0x14058eb85
000000014059056a lea      r9, [rip + 0xdf50f]
0000000140590571 jmp      0x14058eb4e
0000000140590576 mov      rbx, qword ptr [rbp + 0x48]
000000014059057a mov      edi, 0x154f4
000000014059057f mov      rax, qword ptr [rsi]
0000000140590582 mov      edx, edi
0000000140590584 mov      rcx, rbx
0000000140590587 call     qword ptr [rip + 0xf3d6b]
000000014059058d shr      eax, 6
0000000140590590 and      eax, r13d
0000000140590593 mov      dword ptr [rbp - 0x38], eax
0000000140590596 je       0x14058ebb1
000000014059059c mov      rax, qword ptr [rsi]
000000014059059f mov      edx, edi
00000001405905a1 mov      rcx, rbx
00000001405905a4 call     qword ptr [rip + 0xf3d4e]
00000001405905aa mov      rcx, qword ptr [rbp + 0x48]
00000001405905ae shr      eax, 6
00000001405905b1 and      eax, r13d
00000001405905b4 mov      dword ptr [rbp - 0x38], eax
00000001405905b7 mov      rax, rbx
00000001405905ba mov      rcx, qword ptr [rcx + 8]
00000001405905be lea      rbx, [rbx + 0x1320]
00000001405905c5 mov      rdx, rbx
00000001405905c8 mov      rax, qword ptr [rax + 0x18]
00000001405905cc mov      rax, qword ptr [rax + 0x108]
00000001405905d3 call     qword ptr [rip + 0xf3d1f]
00000001405905d9 mov      rax, qword ptr [rbp + 0x60]
00000001405905dd mov      esi, dword ptr [rbp + 0x58]
00000001405905e0 cmp      dword ptr [rax], esi
00000001405905e2 jae      0x14058eb85
00000001405905e8 lea      r9, [rip + 0xdf4b1]
00000001405905ef jmp      0x14058eb4e
00000001405905f4 mov      rbx, qword ptr [rbp + 0x48]
00000001405905f8 mov      edi, 0x154f4
00000001405905fd mov      rax, qword ptr [rsi]
0000000140590600 mov      edx, edi
0000000140590602 mov      rcx, rbx
0000000140590605 call     qword ptr [rip + 0xf3ced]
000000014059060b movzx    eax, al
000000014059060e shr      eax, 7
0000000140590611 mov      dword ptr [rbp - 0x38], eax
0000000140590614 test     eax, eax
0000000140590616 je       0x14058ebb1
000000014059061c mov      rax, qword ptr [rsi]
000000014059061f mov      edx, edi
0000000140590621 mov      rcx, rbx
0000000140590624 call     qword ptr [rip + 0xf3cce]
000000014059062a mov      rcx, qword ptr [rbp + 0x48]
000000014059062e movzx    eax, al
0000000140590631 shr      eax, 7
0000000140590634 mov      dword ptr [rbp - 0x38], eax
0000000140590637 mov      rax, rbx
000000014059063a mov      rcx, qword ptr [rcx + 8]
000000014059063e lea      rbx, [rbx + 0x1320]
0000000140590645 mov      rdx, rbx
0000000140590648 mov      rax, qword ptr [rax + 0x18]
000000014059064c mov      rax, qword ptr [rax + 0x108]
0000000140590653 call     qword ptr [rip + 0xf3c9f]
0000000140590659 mov      rax, qword ptr [rbp + 0x60]
000000014059065d mov      esi, dword ptr [rbp + 0x58]
0000000140590660 cmp      dword ptr [rax], esi
0000000140590662 jae      0x14058eb85
0000000140590668 lea      r9, [rip + 0xdf451]
000000014059066f jmp      0x14058eb4e
0000000140590674 mov      rbx, qword ptr [rbp + 0x48]
0000000140590678 mov      edi, 0x154f4
000000014059067d mov      rax, qword ptr [rsi + 0x10]
0000000140590681 mov      edx, edi
0000000140590683 mov      rcx, rbx
0000000140590686 call     qword ptr [rip + 0xf3c6c]
000000014059068c shr      eax, 8
000000014059068f and      eax, r13d
0000000140590692 mov      dword ptr [rbp - 0x38], eax
0000000140590695 je       0x14058ebb1
000000014059069b mov      rax, qword ptr [rsi + 0x10]
000000014059069f mov      edx, edi
00000001405906a1 mov      rcx, rbx
00000001405906a4 call     qword ptr [rip + 0xf3c4e]
00000001405906aa mov      rcx, qword ptr [rbp + 0x48]
00000001405906ae shr      eax, 8
00000001405906b1 and      eax, r13d
00000001405906b4 mov      dword ptr [rbp - 0x38], eax
00000001405906b7 mov      rax, rbx
00000001405906ba mov      rcx, qword ptr [rcx + 8]
00000001405906be lea      rbx, [rbx + 0x1320]
00000001405906c5 mov      rdx, rbx
00000001405906c8 mov      rax, qword ptr [rax + 0x18]
00000001405906cc mov      rax, qword ptr [rax + 0x108]
00000001405906d3 call     qword ptr [rip + 0xf3c1f]
00000001405906d9 mov      rax, qword ptr [rbp + 0x60]
00000001405906dd mov      esi, dword ptr [rbp + 0x58]
00000001405906e0 cmp      dword ptr [rax], esi
00000001405906e2 jae      0x14058eb85
00000001405906e8 lea      r9, [rip + 0xdf3f1]
00000001405906ef jmp      0x14058eb4e
00000001405906f4 mov      rbx, qword ptr [rbp + 0x48]
00000001405906f8 mov      edi, 0x154f4
00000001405906fd mov      rax, qword ptr [rsi + 0x10]
0000000140590701 mov      edx, edi
0000000140590703 mov      rcx, rbx
0000000140590706 call     qword ptr [rip + 0xf3bec]
000000014059070c shr      eax, 9
000000014059070f and      eax, r13d
0000000140590712 mov      dword ptr [rbp - 0x38], eax
0000000140590715 je       0x14058ebb1
000000014059071b mov      rax, qword ptr [rsi + 0x10]
000000014059071f mov      edx, edi
0000000140590721 mov      rcx, rbx
0000000140590724 call     qword ptr [rip + 0xf3bce]
000000014059072a mov      rcx, qword ptr [rbp + 0x48]
000000014059072e shr      eax, 9
0000000140590731 and      eax, r13d
0000000140590734 mov      dword ptr [rbp - 0x38], eax
0000000140590737 mov      rax, rbx
000000014059073a mov      rcx, qword ptr [rcx + 8]
000000014059073e lea      rbx, [rbx + 0x1320]
0000000140590745 mov      rdx, rbx
0000000140590748 mov      rax, qword ptr [rax + 0x18]
000000014059074c mov      rax, qword ptr [rax + 0x108]
0000000140590753 call     qword ptr [rip + 0xf3b9f]
0000000140590759 mov      rax, qword ptr [rbp + 0x60]
000000014059075d mov      esi, dword ptr [rbp + 0x58]
0000000140590760 cmp      dword ptr [rax], esi
0000000140590762 jae      0x14058eb85
0000000140590768 lea      r9, [rip + 0xdf391]
000000014059076f jmp      0x14058eb4e
0000000140590774 mov      rbx, qword ptr [rbp + 0x48]
0000000140590778 mov      edi, 0x1100c
000000014059077d mov      rax, qword ptr [rsi + 0x20]
0000000140590781 mov      edx, edi
0000000140590783 mov      rcx, rbx
0000000140590786 call     qword ptr [rip + 0xf3b6c]
000000014059078c shr      eax, 0x18
000000014059078f mov      dword ptr [rbp - 0x38], eax
0000000140590792 test     eax, eax
0000000140590794 je       0x14058ebb1
000000014059079a mov      rax, qword ptr [rsi + 0x20]
000000014059079e mov      edx, edi
00000001405907a0 mov      rcx, rbx
00000001405907a3 call     qword ptr [rip + 0xf3b4f]
00000001405907a9 mov      rcx, qword ptr [rbp + 0x48]
00000001405907ad shr      eax, 0x18
00000001405907b0 mov      dword ptr [rbp - 0x38], eax
00000001405907b3 mov      rax, rbx
00000001405907b6 lea      rbx, [rbx + 0x1320]
00000001405907bd mov      rcx, qword ptr [rcx + 8]
00000001405907c1 mov      rdx, rbx
00000001405907c4 mov      rax, qword ptr [rax + 0x18]
00000001405907c8 mov      rax, qword ptr [rax + 0x108]
00000001405907cf call     qword ptr [rip + 0xf3b23]
00000001405907d5 mov      rax, qword ptr [rbp + 0x60]
00000001405907d9 mov      esi, dword ptr [rbp + 0x58]
00000001405907dc cmp      dword ptr [rax], esi
00000001405907de jae      0x14058eb85
00000001405907e4 lea      r9, [rip + 0xdf335]
00000001405907eb jmp      0x14058eb4e
00000001405907f0 mov      rbx, qword ptr [rbp + 0x48]
00000001405907f4 mov      edi, 0x1100c
00000001405907f9 mov      rax, qword ptr [rsi + 0x20]
00000001405907fd mov      edx, edi
00000001405907ff mov      rcx, rbx
0000000140590802 call     qword ptr [rip + 0xf3af0]
0000000140590808 shr      eax, 0x10
000000014059080b movzx    ecx, al
000000014059080e mov      dword ptr [rbp - 0x38], ecx
0000000140590811 test     al, al
0000000140590813 je       0x14058ebb1
0000000140590819 mov      rax, qword ptr [rsi + 0x20]
000000014059081d mov      edx, edi
000000014059081f mov      rcx, rbx
0000000140590822 call     qword ptr [rip + 0xf3ad0]
0000000140590828 mov      rcx, qword ptr [rbp + 0x48]
000000014059082c shr      eax, 0x10
000000014059082f movzx    eax, al
0000000140590832 mov      dword ptr [rbp - 0x38], eax
0000000140590835 mov      rax, rbx
0000000140590838 mov      rcx, qword ptr [rcx + 8]
000000014059083c lea      rbx, [rbx + 0x1320]
0000000140590843 mov      rdx, rbx
0000000140590846 mov      rax, qword ptr [rax + 0x18]
000000014059084a mov      rax, qword ptr [rax + 0x108]
0000000140590851 call     qword ptr [rip + 0xf3aa1]
0000000140590857 mov      rax, qword ptr [rbp + 0x60]
000000014059085b mov      esi, dword ptr [rbp + 0x58]
000000014059085e cmp      dword ptr [rax], esi
0000000140590860 jae      0x14058eb85
0000000140590866 lea      r9, [rip + 0xdf2e3]
000000014059086d jmp      0x14058eb4e
0000000140590872 mov      rbx, qword ptr [rbp + 0x48]
0000000140590876 mov      edi, 0x1100c
000000014059087b mov      rax, qword ptr [rsi + 0x10]
000000014059087f mov      edx, edi
0000000140590881 mov      rcx, rbx
0000000140590884 call     qword ptr [rip + 0xf3a6e]
000000014059088a movzx    eax, ax
000000014059088d shr      eax, 8
0000000140590890 mov      dword ptr [rbp - 0x38], eax
0000000140590893 test     eax, eax
0000000140590895 je       0x14058ebb1
000000014059089b mov      rax, qword ptr [rsi + 0x10]
000000014059089f mov      edx, edi
00000001405908a1 mov      rcx, rbx
00000001405908a4 call     qword ptr [rip + 0xf3a4e]
00000001405908aa mov      rcx, qword ptr [rbp + 0x48]
00000001405908ae movzx    eax, ax
00000001405908b1 shr      eax, 8
00000001405908b4 mov      dword ptr [rbp - 0x38], eax
00000001405908b7 mov      rax, rbx
00000001405908ba mov      rcx, qword ptr [rcx + 8]
00000001405908be lea      rbx, [rbx + 0x1320]
00000001405908c5 mov      rdx, rbx
00000001405908c8 mov      rax, qword ptr [rax + 0x18]
00000001405908cc mov      rax, qword ptr [rax + 0x108]
00000001405908d3 call     qword ptr [rip + 0xf3a1f]
00000001405908d9 mov      rax, qword ptr [rbp + 0x60]
00000001405908dd mov      esi, dword ptr [rbp + 0x58]
00000001405908e0 cmp      dword ptr [rax], esi
00000001405908e2 jae      0x14058eb85
00000001405908e8 lea      r9, [rip + 0xdf291]
00000001405908ef jmp      0x14058eb4e
00000001405908f4 mov      rbx, qword ptr [rbp + 0x48]
00000001405908f8 mov      edi, 0x1100c
00000001405908fd mov      rax, qword ptr [rsi]
0000000140590900 mov      edx, edi
0000000140590902 mov      rcx, rbx
0000000140590905 call     qword ptr [rip + 0xf39ed]
000000014059090b movzx    eax, al
000000014059090e mov      dword ptr [rbp - 0x38], eax
0000000140590911 test     eax, eax
0000000140590913 je       0x14058ebb1
0000000140590919 mov      rax, qword ptr [rsi]
000000014059091c mov      edx, edi
000000014059091e mov      rcx, rbx
0000000140590921 call     qword ptr [rip + 0xf39d1]
0000000140590927 mov      rcx, qword ptr [rbp + 0x48]
000000014059092b movzx    eax, al
000000014059092e mov      dword ptr [rbp - 0x38], eax
0000000140590931 mov      rax, rbx
0000000140590934 lea      rbx, [rbx + 0x1320]
000000014059093b mov      rcx, qword ptr [rcx + 8]
000000014059093f mov      rdx, rbx
0000000140590942 mov      rax, qword ptr [rax + 0x18]
0000000140590946 mov      rax, qword ptr [rax + 0x108]
000000014059094d call     qword ptr [rip + 0xf39a5]
0000000140590953 mov      rax, qword ptr [rbp + 0x60]
0000000140590957 mov      esi, dword ptr [rbp + 0x58]
000000014059095a cmp      dword ptr [rax], esi
000000014059095c jae      0x14058eb85
0000000140590962 lea      r9, [rip + 0xdf247]
0000000140590969 jmp      0x14058eb4e
000000014059096e mov      rbx, qword ptr [rbp + 0x48]
0000000140590972 mov      edi, 0x11010
0000000140590977 mov      rax, qword ptr [rsi + 0x20]
000000014059097b mov      edx, edi
000000014059097d mov      rcx, rbx
0000000140590980 call     qword ptr [rip + 0xf3972]
0000000140590986 shr      eax, 0x18
0000000140590989 mov      dword ptr [rbp - 0x38], eax
000000014059098c test     eax, eax
000000014059098e je       0x14058ebb1
0000000140590994 mov      rax, qword ptr [rsi + 0x20]
0000000140590998 mov      edx, edi
000000014059099a mov      rcx, rbx
000000014059099d call     qword ptr [rip + 0xf3955]
00000001405909a3 mov      rcx, qword ptr [rbp + 0x48]
00000001405909a7 shr      eax, 0x18
00000001405909aa mov      dword ptr [rbp - 0x38], eax
00000001405909ad mov      rax, rbx
00000001405909b0 lea      rbx, [rbx + 0x1320]
00000001405909b7 mov      rcx, qword ptr [rcx + 8]
00000001405909bb mov      rdx, rbx
00000001405909be mov      rax, qword ptr [rax + 0x18]
00000001405909c2 mov      rax, qword ptr [rax + 0x108]
00000001405909c9 call     qword ptr [rip + 0xf3929]
00000001405909cf mov      rax, qword ptr [rbp + 0x60]
00000001405909d3 mov      esi, dword ptr [rbp + 0x58]
00000001405909d6 cmp      dword ptr [rax], esi
00000001405909d8 jae      0x14058eb85
00000001405909de lea      r9, [rip + 0xdf1fb]
00000001405909e5 jmp      0x14058eb4e
00000001405909ea mov      rbx, qword ptr [rbp + 0x48]
00000001405909ee mov      edi, 0x11010
00000001405909f3 mov      rax, qword ptr [rsi + 0x20]
00000001405909f7 mov      edx, edi
00000001405909f9 mov      rcx, rbx
00000001405909fc call     qword ptr [rip + 0xf38f6]
0000000140590a02 shr      eax, 0x10
0000000140590a05 movzx    ecx, al
0000000140590a08 mov      dword ptr [rbp - 0x38], ecx
0000000140590a0b test     al, al
0000000140590a0d je       0x14058ebb1
0000000140590a13 mov      rax, qword ptr [rsi + 0x20]
0000000140590a17 mov      edx, edi
0000000140590a19 mov      rcx, rbx
0000000140590a1c call     qword ptr [rip + 0xf38d6]
0000000140590a22 mov      rcx, qword ptr [rbp + 0x48]
0000000140590a26 shr      eax, 0x10
0000000140590a29 movzx    eax, al
0000000140590a2c mov      dword ptr [rbp - 0x38], eax
0000000140590a2f mov      rax, rbx
0000000140590a32 mov      rcx, qword ptr [rcx + 8]
0000000140590a36 lea      rbx, [rbx + 0x1320]
0000000140590a3d mov      rdx, rbx
0000000140590a40 mov      rax, qword ptr [rax + 0x18]
0000000140590a44 mov      rax, qword ptr [rax + 0x108]
0000000140590a4b call     qword ptr [rip + 0xf38a7]
0000000140590a51 mov      rax, qword ptr [rbp + 0x60]
0000000140590a55 mov      esi, dword ptr [rbp + 0x58]
0000000140590a58 cmp      dword ptr [rax], esi
0000000140590a5a jae      0x14058eb85
0000000140590a60 lea      r9, [rip + 0xdf1a9]
0000000140590a67 jmp      0x14058eb4e
0000000140590a6c mov      rbx, qword ptr [rbp + 0x48]
0000000140590a70 mov      edi, 0x11010
0000000140590a75 mov      rax, qword ptr [rsi + 0x10]
0000000140590a79 mov      edx, edi
0000000140590a7b mov      rcx, rbx
0000000140590a7e call     qword ptr [rip + 0xf3874]
0000000140590a84 movzx    eax, ax
0000000140590a87 shr      eax, 8
0000000140590a8a mov      dword ptr [rbp - 0x38], eax
0000000140590a8d test     eax, eax
0000000140590a8f je       0x14058ebb1
0000000140590a95 mov      rax, qword ptr [rsi + 0x10]
0000000140590a99 mov      edx, edi
0000000140590a9b mov      rcx, rbx
0000000140590a9e call     qword ptr [rip + 0xf3854]
0000000140590aa4 mov      rcx, qword ptr [rbp + 0x48]
0000000140590aa8 movzx    eax, ax
0000000140590aab shr      eax, 8
0000000140590aae mov      dword ptr [rbp - 0x38], eax
0000000140590ab1 mov      rax, rbx
0000000140590ab4 mov      rcx, qword ptr [rcx + 8]
0000000140590ab8 lea      rbx, [rbx + 0x1320]
0000000140590abf mov      rdx, rbx
0000000140590ac2 mov      rax, qword ptr [rax + 0x18]
0000000140590ac6 mov      rax, qword ptr [rax + 0x108]
0000000140590acd call     qword ptr [rip + 0xf3825]
0000000140590ad3 mov      rax, qword ptr [rbp + 0x60]
0000000140590ad7 mov      esi, dword ptr [rbp + 0x58]
0000000140590ada cmp      dword ptr [rax], esi
0000000140590adc jae      0x14058eb85
0000000140590ae2 lea      r9, [rip + 0xdf157]
0000000140590ae9 jmp      0x14058eb4e
0000000140590aee mov      rbx, qword ptr [rbp + 0x48]
0000000140590af2 mov      edi, 0x11010
0000000140590af7 mov      rax, qword ptr [rsi]
0000000140590afa mov      edx, edi
0000000140590afc mov      rcx, rbx
0000000140590aff call     qword ptr [rip + 0xf37f3]
0000000140590b05 movzx    eax, al
0000000140590b08 mov      dword ptr [rbp - 0x38], eax
0000000140590b0b test     eax, eax
0000000140590b0d je       0x14058ebb1
0000000140590b13 mov      rax, qword ptr [rsi]
0000000140590b16 mov      edx, edi
0000000140590b18 mov      rcx, rbx
0000000140590b1b call     qword ptr [rip + 0xf37d7]
0000000140590b21 mov      rcx, qword ptr [rbp + 0x48]
0000000140590b25 movzx    eax, al
0000000140590b28 mov      dword ptr [rbp - 0x38], eax
0000000140590b2b mov      rax, rbx
0000000140590b2e lea      rbx, [rbx + 0x1320]
0000000140590b35 mov      rcx, qword ptr [rcx + 8]
0000000140590b39 mov      rdx, rbx
0000000140590b3c mov      rax, qword ptr [rax + 0x18]
0000000140590b40 mov      rax, qword ptr [rax + 0x108]
0000000140590b47 call     qword ptr [rip + 0xf37ab]
0000000140590b4d mov      rax, qword ptr [rbp + 0x60]
0000000140590b51 mov      esi, dword ptr [rbp + 0x58]
0000000140590b54 cmp      dword ptr [rax], esi
0000000140590b56 jae      0x14058eb85
0000000140590b5c lea      r9, [rip + 0xdf10d]
0000000140590b63 jmp      0x14058eb4e
0000000140590b68 mov      rbx, qword ptr [rbp + 0x48]
0000000140590b6c mov      edi, 0x11014
0000000140590b71 mov      rax, qword ptr [rsi + 0x20]
0000000140590b75 mov      edx, edi
0000000140590b77 mov      rcx, rbx
0000000140590b7a call     qword ptr [rip + 0xf3778]
0000000140590b80 shr      eax, 0x18
0000000140590b83 mov      dword ptr [rbp - 0x38], eax
0000000140590b86 test     eax, eax
0000000140590b88 je       0x14058ebb1
0000000140590b8e mov      rax, qword ptr [rsi + 0x20]
0000000140590b92 mov      edx, edi
0000000140590b94 mov      rcx, rbx
0000000140590b97 call     qword ptr [rip + 0xf375b]
0000000140590b9d mov      rcx, qword ptr [rbp + 0x48]
0000000140590ba1 shr      eax, 0x18
0000000140590ba4 mov      dword ptr [rbp - 0x38], eax
0000000140590ba7 mov      rax, rbx
0000000140590baa lea      rbx, [rbx + 0x1320]
0000000140590bb1 mov      rcx, qword ptr [rcx + 8]
0000000140590bb5 mov      rdx, rbx
0000000140590bb8 mov      rax, qword ptr [rax + 0x18]
0000000140590bbc mov      rax, qword ptr [rax + 0x108]
0000000140590bc3 call     qword ptr [rip + 0xf372f]
0000000140590bc9 mov      rax, qword ptr [rbp + 0x60]
0000000140590bcd mov      esi, dword ptr [rbp + 0x58]
0000000140590bd0 cmp      dword ptr [rax], esi
0000000140590bd2 jae      0x14058eb85
0000000140590bd8 lea      r9, [rip + 0xdf0c1]
0000000140590bdf jmp      0x14058eb4e
0000000140590be4 mov      rbx, qword ptr [rbp + 0x48]
0000000140590be8 mov      edi, 0x11014
0000000140590bed mov      rax, qword ptr [rsi + 0x20]
0000000140590bf1 mov      edx, edi
0000000140590bf3 mov      rcx, rbx
0000000140590bf6 call     qword ptr [rip + 0xf36fc]
0000000140590bfc shr      eax, 0x10
0000000140590bff movzx    ecx, al
0000000140590c02 mov      dword ptr [rbp - 0x38], ecx
0000000140590c05 test     al, al
0000000140590c07 je       0x14058ebb1
0000000140590c0d mov      rax, qword ptr [rsi + 0x20]
0000000140590c11 mov      edx, edi
0000000140590c13 mov      rcx, rbx
0000000140590c16 call     qword ptr [rip + 0xf36dc]
0000000140590c1c mov      rcx, qword ptr [rbp + 0x48]
0000000140590c20 shr      eax, 0x10
0000000140590c23 movzx    eax, al
0000000140590c26 mov      dword ptr [rbp - 0x38], eax
0000000140590c29 mov      rax, rbx
0000000140590c2c mov      rcx, qword ptr [rcx + 8]
0000000140590c30 lea      rbx, [rbx + 0x1320]
0000000140590c37 mov      rdx, rbx
0000000140590c3a mov      rax, qword ptr [rax + 0x18]
0000000140590c3e mov      rax, qword ptr [rax + 0x108]
0000000140590c45 call     qword ptr [rip + 0xf36ad]
0000000140590c4b mov      rax, qword ptr [rbp + 0x60]
0000000140590c4f mov      esi, dword ptr [rbp + 0x58]
0000000140590c52 cmp      dword ptr [rax], esi
0000000140590c54 jae      0x14058eb85
0000000140590c5a lea      r9, [rip + 0xdf06f]
0000000140590c61 jmp      0x14058eb4e
0000000140590c66 mov      rbx, qword ptr [rbp + 0x48]
0000000140590c6a mov      edi, 0x11014
0000000140590c6f mov      rax, qword ptr [rsi + 0x10]
0000000140590c73 mov      edx, edi
0000000140590c75 mov      rcx, rbx
0000000140590c78 call     qword ptr [rip + 0xf367a]
0000000140590c7e movzx    eax, ax
0000000140590c81 shr      eax, 8
0000000140590c84 mov      dword ptr [rbp - 0x38], eax
0000000140590c87 test     eax, eax
0000000140590c89 je       0x14058ebb1
0000000140590c8f mov      rax, qword ptr [rsi + 0x10]
0000000140590c93 mov      edx, edi
0000000140590c95 mov      rcx, rbx
0000000140590c98 call     qword ptr [rip + 0xf365a]
0000000140590c9e mov      rcx, qword ptr [rbp + 0x48]
0000000140590ca2 movzx    eax, ax
0000000140590ca5 shr      eax, 8
0000000140590ca8 mov      dword ptr [rbp - 0x38], eax
0000000140590cab mov      rax, rbx
0000000140590cae mov      rcx, qword ptr [rcx + 8]
0000000140590cb2 lea      rbx, [rbx + 0x1320]
0000000140590cb9 mov      rdx, rbx
0000000140590cbc mov      rax, qword ptr [rax + 0x18]
0000000140590cc0 mov      rax, qword ptr [rax + 0x108]
0000000140590cc7 call     qword ptr [rip + 0xf362b]
0000000140590ccd mov      rax, qword ptr [rbp + 0x60]
0000000140590cd1 mov      esi, dword ptr [rbp + 0x58]
0000000140590cd4 cmp      dword ptr [rax], esi
0000000140590cd6 jae      0x14058eb85
0000000140590cdc lea      r9, [rip + 0xdf01d]
0000000140590ce3 jmp      0x14058eb4e
0000000140590ce8 mov      rbx, qword ptr [rbp + 0x48]
0000000140590cec mov      edi, 0x11014
0000000140590cf1 mov      rax, qword ptr [rsi]
0000000140590cf4 mov      edx, edi
0000000140590cf6 mov      rcx, rbx
0000000140590cf9 call     qword ptr [rip + 0xf35f9]
0000000140590cff movzx    eax, al
0000000140590d02 mov      dword ptr [rbp - 0x38], eax
0000000140590d05 test     eax, eax
0000000140590d07 je       0x14058ebb1
0000000140590d0d mov      rax, qword ptr [rsi]
0000000140590d10 mov      edx, edi
0000000140590d12 mov      rcx, rbx
0000000140590d15 call     qword ptr [rip + 0xf35dd]
0000000140590d1b mov      rcx, qword ptr [rbp + 0x48]
0000000140590d1f movzx    eax, al
0000000140590d22 mov      dword ptr [rbp - 0x38], eax
0000000140590d25 mov      rax, rbx
0000000140590d28 lea      rbx, [rbx + 0x1320]
0000000140590d2f mov      rcx, qword ptr [rcx + 8]
0000000140590d33 mov      rdx, rbx
0000000140590d36 mov      rax, qword ptr [rax + 0x18]
0000000140590d3a mov      rax, qword ptr [rax + 0x108]
0000000140590d41 call     qword ptr [rip + 0xf35b1]
0000000140590d47 mov      rax, qword ptr [rbp + 0x60]
0000000140590d4b mov      esi, dword ptr [rbp + 0x58]
0000000140590d4e cmp      dword ptr [rax], esi
0000000140590d50 jae      0x14058eb85
0000000140590d56 lea      r9, [rip + 0xdefd3]
0000000140590d5d jmp      0x14058eb4e
0000000140590d62 mov      rbx, qword ptr [rbp + 0x48]
0000000140590d66 mov      edi, 0x11018
0000000140590d6b mov      rax, qword ptr [rsi + 0x20]
0000000140590d6f mov      edx, edi
0000000140590d71 mov      rcx, rbx
0000000140590d74 call     qword ptr [rip + 0xf357e]
0000000140590d7a shr      eax, 0x18
0000000140590d7d mov      dword ptr [rbp - 0x38], eax
0000000140590d80 test     eax, eax
0000000140590d82 je       0x14058ebb1
0000000140590d88 mov      rax, qword ptr [rsi + 0x20]
0000000140590d8c mov      edx, edi
0000000140590d8e mov      rcx, rbx
0000000140590d91 call     qword ptr [rip + 0xf3561]
0000000140590d97 mov      rcx, qword ptr [rbp + 0x48]
0000000140590d9b shr      eax, 0x18
0000000140590d9e mov      dword ptr [rbp - 0x38], eax
0000000140590da1 mov      rax, rbx
0000000140590da4 lea      rbx, [rbx + 0x1320]
0000000140590dab mov      rcx, qword ptr [rcx + 8]
0000000140590daf mov      rdx, rbx
0000000140590db2 mov      rax, qword ptr [rax + 0x18]
0000000140590db6 mov      rax, qword ptr [rax + 0x108]
0000000140590dbd call     qword ptr [rip + 0xf3535]
0000000140590dc3 mov      rax, qword ptr [rbp + 0x60]
0000000140590dc7 mov      esi, dword ptr [rbp + 0x58]
0000000140590dca cmp      dword ptr [rax], esi
0000000140590dcc jae      0x14058eb85
0000000140590dd2 lea      r9, [rip + 0xdef87]
0000000140590dd9 jmp      0x14058eb4e
0000000140590dde mov      rbx, qword ptr [rbp + 0x48]
0000000140590de2 mov      edi, 0x11018
0000000140590de7 mov      rax, qword ptr [rsi + 0x20]
0000000140590deb mov      edx, edi
0000000140590ded mov      rcx, rbx
0000000140590df0 call     qword ptr [rip + 0xf3502]
0000000140590df6 shr      eax, 0x10
0000000140590df9 movzx    ecx, al
0000000140590dfc mov      dword ptr [rbp - 0x38], ecx
0000000140590dff test     al, al
0000000140590e01 je       0x14058ebb1
0000000140590e07 mov      rax, qword ptr [rsi + 0x20]
0000000140590e0b mov      edx, edi
0000000140590e0d mov      rcx, rbx
0000000140590e10 call     qword ptr [rip + 0xf34e2]
0000000140590e16 mov      rcx, qword ptr [rbp + 0x48]
0000000140590e1a shr      eax, 0x10
0000000140590e1d movzx    eax, al
0000000140590e20 mov      dword ptr [rbp - 0x38], eax
0000000140590e23 mov      rax, rbx
0000000140590e26 mov      rcx, qword ptr [rcx + 8]
0000000140590e2a lea      rbx, [rbx + 0x1320]
0000000140590e31 mov      rdx, rbx
0000000140590e34 mov      rax, qword ptr [rax + 0x18]
0000000140590e38 mov      rax, qword ptr [rax + 0x108]
0000000140590e3f call     qword ptr [rip + 0xf34b3]
0000000140590e45 mov      rax, qword ptr [rbp + 0x60]
0000000140590e49 mov      esi, dword ptr [rbp + 0x58]
0000000140590e4c cmp      dword ptr [rax], esi
0000000140590e4e jae      0x14058eb85
0000000140590e54 lea      r9, [rip + 0xdef35]
0000000140590e5b jmp      0x14058eb4e
0000000140590e60 mov      rbx, qword ptr [rbp + 0x48]
0000000140590e64 mov      edi, 0x11018
0000000140590e69 mov      rax, qword ptr [rsi + 0x10]
0000000140590e6d mov      edx, edi
0000000140590e6f mov      rcx, rbx
0000000140590e72 call     qword ptr [rip + 0xf3480]
0000000140590e78 movzx    eax, ax
0000000140590e7b shr      eax, 8
0000000140590e7e mov      dword ptr [rbp - 0x38], eax
0000000140590e81 test     eax, eax
0000000140590e83 je       0x14058ebb1
0000000140590e89 mov      rax, qword ptr [rsi + 0x10]
0000000140590e8d mov      edx, edi
0000000140590e8f mov      rcx, rbx
0000000140590e92 call     qword ptr [rip + 0xf3460]
0000000140590e98 mov      rcx, qword ptr [rbp + 0x48]
0000000140590e9c movzx    eax, ax
0000000140590e9f shr      eax, 8
0000000140590ea2 mov      dword ptr [rbp - 0x38], eax
0000000140590ea5 mov      rax, rbx
0000000140590ea8 mov      rcx, qword ptr [rcx + 8]
0000000140590eac lea      rbx, [rbx + 0x1320]
0000000140590eb3 mov      rdx, rbx
0000000140590eb6 mov      rax, qword ptr [rax + 0x18]
0000000140590eba mov      rax, qword ptr [rax + 0x108]
0000000140590ec1 call     qword ptr [rip + 0xf3431]
0000000140590ec7 mov      rax, qword ptr [rbp + 0x60]
0000000140590ecb mov      esi, dword ptr [rbp + 0x58]
0000000140590ece cmp      dword ptr [rax], esi
0000000140590ed0 jae      0x14058eb85
0000000140590ed6 lea      r9, [rip + 0xdeee3]
0000000140590edd jmp      0x14058eb4e
0000000140590ee2 mov      rbx, qword ptr [rbp + 0x48]
0000000140590ee6 mov      edi, 0x11018
0000000140590eeb mov      rax, qword ptr [rsi]
0000000140590eee mov      edx, edi
0000000140590ef0 mov      rcx, rbx
0000000140590ef3 call     qword ptr [rip + 0xf33ff]
0000000140590ef9 movzx    eax, al
0000000140590efc mov      dword ptr [rbp - 0x38], eax
0000000140590eff test     eax, eax
0000000140590f01 je       0x14058ebb1
0000000140590f07 mov      rax, qword ptr [rsi]
0000000140590f0a mov      edx, edi
0000000140590f0c mov      rcx, rbx
0000000140590f0f call     qword ptr [rip + 0xf33e3]
0000000140590f15 mov      rcx, qword ptr [rbp + 0x48]
0000000140590f19 movzx    eax, al
0000000140590f1c mov      dword ptr [rbp - 0x38], eax
0000000140590f1f mov      rax, rbx
0000000140590f22 lea      rbx, [rbx + 0x1320]
0000000140590f29 mov      rcx, qword ptr [rcx + 8]
0000000140590f2d mov      rdx, rbx
0000000140590f30 mov      rax, qword ptr [rax + 0x18]
0000000140590f34 mov      rax, qword ptr [rax + 0x108]
0000000140590f3b call     qword ptr [rip + 0xf33b7]
0000000140590f41 mov      rax, qword ptr [rbp + 0x60]
0000000140590f45 mov      esi, dword ptr [rbp + 0x58]
0000000140590f48 cmp      dword ptr [rax], esi
0000000140590f4a jae      0x14058eb85
0000000140590f50 lea      r9, [rip + 0xdee99]
0000000140590f57 jmp      0x14058eb4e
0000000140590f5c mov      rbx, qword ptr [rbp + 0x48]
0000000140590f60 mov      edi, 0x1101c
0000000140590f65 mov      rax, qword ptr [rsi + 0x20]
0000000140590f69 mov      edx, edi
0000000140590f6b mov      rcx, rbx
0000000140590f6e call     qword ptr [rip + 0xf3384]
0000000140590f74 shr      eax, 0x18
0000000140590f77 mov      dword ptr [rbp - 0x38], eax
0000000140590f7a test     eax, eax
0000000140590f7c je       0x14058ebb1
0000000140590f82 mov      rax, qword ptr [rsi + 0x20]
0000000140590f86 mov      edx, edi
0000000140590f88 mov      rcx, rbx
0000000140590f8b call     qword ptr [rip + 0xf3367]
0000000140590f91 mov      rcx, qword ptr [rbp + 0x48]
0000000140590f95 shr      eax, 0x18
0000000140590f98 mov      dword ptr [rbp - 0x38], eax
0000000140590f9b mov      rax, rbx
0000000140590f9e lea      rbx, [rbx + 0x1320]
0000000140590fa5 mov      rcx, qword ptr [rcx + 8]
0000000140590fa9 mov      rdx, rbx
0000000140590fac mov      rax, qword ptr [rax + 0x18]
0000000140590fb0 mov      rax, qword ptr [rax + 0x108]
0000000140590fb7 call     qword ptr [rip + 0xf333b]
0000000140590fbd mov      rax, qword ptr [rbp + 0x60]
0000000140590fc1 mov      esi, dword ptr [rbp + 0x58]
0000000140590fc4 cmp      dword ptr [rax], esi
0000000140590fc6 jae      0x14058eb85
0000000140590fcc lea      r9, [rip + 0xdee4d]
0000000140590fd3 jmp      0x14058eb4e
0000000140590fd8 mov      rbx, qword ptr [rbp + 0x48]
0000000140590fdc mov      edi, 0x1101c
0000000140590fe1 mov      rax, qword ptr [rsi + 0x20]
0000000140590fe5 mov      edx, edi
0000000140590fe7 mov      rcx, rbx
0000000140590fea call     qword ptr [rip + 0xf3308]
0000000140590ff0 shr      eax, 0x10
0000000140590ff3 movzx    ecx, al
0000000140590ff6 mov      dword ptr [rbp - 0x38], ecx
0000000140590ff9 test     al, al
0000000140590ffb je       0x14058ebb1
0000000140591001 mov      rax, qword ptr [rsi + 0x20]
0000000140591005 mov      edx, edi
0000000140591007 mov      rcx, rbx
000000014059100a call     qword ptr [rip + 0xf32e8]
0000000140591010 mov      rcx, qword ptr [rbp + 0x48]
0000000140591014 shr      eax, 0x10
0000000140591017 movzx    eax, al
000000014059101a mov      dword ptr [rbp - 0x38], eax
000000014059101d mov      rax, rbx
0000000140591020 mov      rcx, qword ptr [rcx + 8]
0000000140591024 lea      rbx, [rbx + 0x1320]
000000014059102b mov      rdx, rbx
000000014059102e mov      rax, qword ptr [rax + 0x18]
0000000140591032 mov      rax, qword ptr [rax + 0x108]
0000000140591039 call     qword ptr [rip + 0xf32b9]
000000014059103f mov      rax, qword ptr [rbp + 0x60]
0000000140591043 mov      esi, dword ptr [rbp + 0x58]
0000000140591046 cmp      dword ptr [rax], esi
0000000140591048 jae      0x14058eb85
000000014059104e lea      r9, [rip + 0xdedfb]
0000000140591055 jmp      0x14058eb4e
000000014059105a mov      rbx, qword ptr [rbp + 0x48]
000000014059105e mov      edi, 0x1101c
0000000140591063 mov      rax, qword ptr [rsi + 0x10]
0000000140591067 mov      edx, edi
0000000140591069 mov      rcx, rbx
000000014059106c call     qword ptr [rip + 0xf3286]
0000000140591072 movzx    eax, ax
0000000140591075 shr      eax, 8
0000000140591078 mov      dword ptr [rbp - 0x38], eax
000000014059107b test     eax, eax
000000014059107d je       0x14058ebb1
0000000140591083 mov      rax, qword ptr [rsi + 0x10]
0000000140591087 mov      edx, edi
0000000140591089 mov      rcx, rbx
000000014059108c call     qword ptr [rip + 0xf3266]
0000000140591092 mov      rcx, qword ptr [rbp + 0x48]
0000000140591096 movzx    eax, ax
0000000140591099 shr      eax, 8
000000014059109c mov      dword ptr [rbp - 0x38], eax
000000014059109f mov      rax, rbx
00000001405910a2 mov      rcx, qword ptr [rcx + 8]
00000001405910a6 lea      rbx, [rbx + 0x1320]
00000001405910ad mov      rdx, rbx
00000001405910b0 mov      rax, qword ptr [rax + 0x18]
00000001405910b4 mov      rax, qword ptr [rax + 0x108]
00000001405910bb call     qword ptr [rip + 0xf3237]
00000001405910c1 mov      rax, qword ptr [rbp + 0x60]
00000001405910c5 mov      esi, dword ptr [rbp + 0x58]
00000001405910c8 cmp      dword ptr [rax], esi
00000001405910ca jae      0x14058eb85
00000001405910d0 lea      r9, [rip + 0xdeda9]
00000001405910d7 jmp      0x14058eb4e
00000001405910dc mov      rbx, qword ptr [rbp + 0x48]
00000001405910e0 mov      edi, 0x1101c
00000001405910e5 mov      rax, qword ptr [rsi]
00000001405910e8 mov      edx, edi
00000001405910ea mov      rcx, rbx
00000001405910ed call     qword ptr [rip + 0xf3205]
00000001405910f3 movzx    eax, al
00000001405910f6 mov      dword ptr [rbp - 0x38], eax
00000001405910f9 test     eax, eax
00000001405910fb je       0x14058ebb1
0000000140591101 mov      rax, qword ptr [rsi]
0000000140591104 mov      edx, edi
0000000140591106 mov      rcx, rbx
0000000140591109 call     qword ptr [rip + 0xf31e9]
000000014059110f mov      rcx, qword ptr [rbp + 0x48]
0000000140591113 movzx    eax, al
0000000140591116 mov      dword ptr [rbp - 0x38], eax
0000000140591119 mov      rax, rbx
000000014059111c lea      rbx, [rbx + 0x1320]
0000000140591123 mov      rcx, qword ptr [rcx + 8]
0000000140591127 mov      rdx, rbx
000000014059112a mov      rax, qword ptr [rax + 0x18]
000000014059112e mov      rax, qword ptr [rax + 0x108]
0000000140591135 call     qword ptr [rip + 0xf31bd]
000000014059113b mov      rax, qword ptr [rbp + 0x60]
000000014059113f mov      esi, dword ptr [rbp + 0x58]
0000000140591142 cmp      dword ptr [rax], esi
0000000140591144 jae      0x14058eb85
000000014059114a lea      r9, [rip + 0xded5f]
0000000140591151 jmp      0x14058eb4e
0000000140591156 mov      rbx, qword ptr [rbp + 0x48]
000000014059115a mov      edi, 0x1102c
000000014059115f mov      rax, qword ptr [rsi + 0x10]
0000000140591163 mov      edx, edi
0000000140591165 mov      rcx, rbx
0000000140591168 call     qword ptr [rip + 0xf318a]
000000014059116e movzx    eax, ax
0000000140591171 shr      eax, 8
0000000140591174 mov      dword ptr [rbp - 0x38], eax
0000000140591177 test     eax, eax
0000000140591179 je       0x14058ebb1
000000014059117f mov      rax, qword ptr [rsi + 0x10]
0000000140591183 mov      edx, edi
0000000140591185 mov      rcx, rbx
0000000140591188 call     qword ptr [rip + 0xf316a]
000000014059118e mov      rcx, qword ptr [rbp + 0x48]
0000000140591192 movzx    eax, ax
0000000140591195 shr      eax, 8
0000000140591198 mov      dword ptr [rbp - 0x38], eax
000000014059119b mov      rax, rbx
000000014059119e mov      rcx, qword ptr [rcx + 8]
00000001405911a2 lea      rbx, [rbx + 0x1320]
00000001405911a9 mov      rdx, rbx
00000001405911ac mov      rax, qword ptr [rax + 0x18]
00000001405911b0 mov      rax, qword ptr [rax + 0x108]
00000001405911b7 call     qword ptr [rip + 0xf313b]
00000001405911bd mov      rax, qword ptr [rbp + 0x60]
00000001405911c1 mov      esi, dword ptr [rbp + 0x58]
00000001405911c4 cmp      dword ptr [rax], esi
00000001405911c6 jae      0x14058eb85
00000001405911cc lea      r9, [rip + 0xded0d]
00000001405911d3 jmp      0x14058eb4e
00000001405911d8 mov      rbx, qword ptr [rbp + 0x48]
00000001405911dc mov      edi, 0x1102c
00000001405911e1 mov      rax, qword ptr [rsi]
00000001405911e4 mov      edx, edi
00000001405911e6 mov      rcx, rbx
00000001405911e9 call     qword ptr [rip + 0xf3109]
00000001405911ef movzx    eax, al
00000001405911f2 mov      dword ptr [rbp - 0x38], eax
00000001405911f5 test     eax, eax
00000001405911f7 je       0x14058ebb1
00000001405911fd mov      rax, qword ptr [rsi]
0000000140591200 mov      edx, edi
0000000140591202 mov      rcx, rbx
0000000140591205 call     qword ptr [rip + 0xf30ed]
000000014059120b mov      rcx, qword ptr [rbp + 0x48]
000000014059120f movzx    eax, al
0000000140591212 mov      dword ptr [rbp - 0x38], eax
0000000140591215 mov      rax, rbx
0000000140591218 lea      rbx, [rbx + 0x1320]
000000014059121f mov      rcx, qword ptr [rcx + 8]
0000000140591223 mov      rdx, rbx
0000000140591226 mov      rax, qword ptr [rax + 0x18]
000000014059122a mov      rax, qword ptr [rax + 0x108]
0000000140591231 call     qword ptr [rip + 0xf30c1]
0000000140591237 mov      rax, qword ptr [rbp + 0x60]
000000014059123b mov      esi, dword ptr [rbp + 0x58]
000000014059123e cmp      dword ptr [rax], esi
0000000140591240 jae      0x14058eb85
0000000140591246 lea      r9, [rip + 0xdecc3]
000000014059124d jmp      0x14058eb4e
0000000140591252 mov      rbx, qword ptr [rbp + 0x48]
0000000140591256 mov      edi, 0x110c0
000000014059125b mov      rax, qword ptr [rsi + 0x10]
000000014059125f mov      edx, edi
0000000140591261 mov      rcx, rbx
0000000140591264 call     qword ptr [rip + 0xf308e]
000000014059126a shr      eax, 0xa
000000014059126d and      eax, r13d
0000000140591270 mov      dword ptr [rbp - 0x38], eax
0000000140591273 je       0x14058ebb1
0000000140591279 mov      rax, qword ptr [rsi + 0x10]
000000014059127d mov      edx, edi
000000014059127f mov      rcx, rbx
0000000140591282 call     qword ptr [rip + 0xf3070]
0000000140591288 mov      rcx, qword ptr [rbp + 0x48]
000000014059128c shr      eax, 0xa
000000014059128f and      eax, r13d
0000000140591292 mov      dword ptr [rbp - 0x38], eax
0000000140591295 mov      rax, rbx
0000000140591298 mov      rcx, qword ptr [rcx + 8]
000000014059129c lea      rbx, [rbx + 0x1320]
00000001405912a3 mov      rdx, rbx
00000001405912a6 mov      rax, qword ptr [rax + 0x18]
00000001405912aa mov      rax, qword ptr [rax + 0x108]
00000001405912b1 call     qword ptr [rip + 0xf3041]
00000001405912b7 mov      rax, qword ptr [rbp + 0x60]
00000001405912bb mov      esi, dword ptr [rbp + 0x58]
00000001405912be cmp      dword ptr [rax], esi
00000001405912c0 jae      0x14058eb85
00000001405912c6 lea      r9, [rip + 0xdec73]
00000001405912cd jmp      0x14058eb4e
00000001405912d2 mov      rbx, qword ptr [rbp + 0x48]
00000001405912d6 mov      edi, 0x110c0
00000001405912db mov      rax, qword ptr [rsi + 0x10]
00000001405912df mov      edx, edi
00000001405912e1 mov      rcx, rbx
00000001405912e4 call     qword ptr [rip + 0xf300e]
00000001405912ea shr      eax, 9
00000001405912ed and      eax, r13d
00000001405912f0 mov      dword ptr [rbp - 0x38], eax
00000001405912f3 je       0x14058ebb1
00000001405912f9 mov      rax, qword ptr [rsi + 0x10]
00000001405912fd mov      edx, edi
00000001405912ff mov      rcx, rbx
0000000140591302 call     qword ptr [rip + 0xf2ff0]
0000000140591308 mov      rcx, qword ptr [rbp + 0x48]
000000014059130c shr      eax, 9
000000014059130f and      eax, r13d
0000000140591312 mov      dword ptr [rbp - 0x38], eax
0000000140591315 mov      rax, rbx
0000000140591318 mov      rcx, qword ptr [rcx + 8]
000000014059131c lea      rbx, [rbx + 0x1320]
0000000140591323 mov      rdx, rbx
0000000140591326 mov      rax, qword ptr [rax + 0x18]
000000014059132a mov      rax, qword ptr [rax + 0x108]
0000000140591331 call     qword ptr [rip + 0xf2fc1]
0000000140591337 mov      rax, qword ptr [rbp + 0x60]
000000014059133b mov      esi, dword ptr [rbp + 0x58]
000000014059133e cmp      dword ptr [rax], esi
0000000140591340 jae      0x14058eb85
0000000140591346 lea      r9, [rip + 0xdec23]
000000014059134d jmp      0x14058eb4e
0000000140591352 mov      rbx, qword ptr [rbp + 0x48]
0000000140591356 mov      edi, 0x110c0
000000014059135b mov      rax, qword ptr [rsi + 0x10]
000000014059135f mov      edx, edi
0000000140591361 mov      rcx, rbx
0000000140591364 call     qword ptr [rip + 0xf2f8e]
000000014059136a shr      eax, 8
000000014059136d and      eax, r13d
0000000140591370 mov      dword ptr [rbp - 0x38], eax
0000000140591373 je       0x14058ebb1
0000000140591379 mov      rax, qword ptr [rsi + 0x10]
000000014059137d mov      edx, edi
000000014059137f mov      rcx, rbx
0000000140591382 call     qword ptr [rip + 0xf2f70]
0000000140591388 mov      rcx, qword ptr [rbp + 0x48]
000000014059138c shr      eax, 8
000000014059138f and      eax, r13d
0000000140591392 mov      dword ptr [rbp - 0x38], eax
0000000140591395 mov      rax, rbx
0000000140591398 mov      rcx, qword ptr [rcx + 8]
000000014059139c lea      rbx, [rbx + 0x1320]
00000001405913a3 mov      rdx, rbx
00000001405913a6 mov      rax, qword ptr [rax + 0x18]
00000001405913aa mov      rax, qword ptr [rax + 0x108]
00000001405913b1 call     qword ptr [rip + 0xf2f41]
00000001405913b7 mov      rax, qword ptr [rbp + 0x60]
00000001405913bb mov      esi, dword ptr [rbp + 0x58]
00000001405913be cmp      dword ptr [rax], esi
00000001405913c0 jae      0x14058eb85
00000001405913c6 lea      r9, [rip + 0xdebc3]
00000001405913cd jmp      0x14058eb4e
00000001405913d2 mov      rbx, qword ptr [rbp + 0x48]
00000001405913d6 mov      edi, 0x110c0
00000001405913db mov      rax, qword ptr [rsi]
00000001405913de mov      edx, edi
00000001405913e0 mov      rcx, rbx
00000001405913e3 call     qword ptr [rip + 0xf2f0f]
00000001405913e9 movzx    eax, al
00000001405913ec shr      eax, 7
00000001405913ef mov      dword ptr [rbp - 0x38], eax
00000001405913f2 test     eax, eax
00000001405913f4 je       0x14058ebb1
00000001405913fa mov      rax, qword ptr [rsi]
00000001405913fd mov      edx, edi
00000001405913ff mov      rcx, rbx
0000000140591402 call     qword ptr [rip + 0xf2ef0]
0000000140591408 mov      rcx, qword ptr [rbp + 0x48]
000000014059140c movzx    eax, al
000000014059140f shr      eax, 7
0000000140591412 mov      dword ptr [rbp - 0x38], eax
0000000140591415 mov      rax, rbx
0000000140591418 mov      rcx, qword ptr [rcx + 8]
000000014059141c lea      rbx, [rbx + 0x1320]
0000000140591423 mov      rdx, rbx
0000000140591426 mov      rax, qword ptr [rax + 0x18]
000000014059142a mov      rax, qword ptr [rax + 0x108]
0000000140591431 call     qword ptr [rip + 0xf2ec1]
0000000140591437 mov      rax, qword ptr [rbp + 0x60]
000000014059143b mov      esi, dword ptr [rbp + 0x58]
000000014059143e cmp      dword ptr [rax], esi
0000000140591440 jae      0x14058eb85
0000000140591446 lea      r9, [rip + 0xdeb63]
000000014059144d jmp      0x14058eb4e
0000000140591452 mov      rbx, qword ptr [rbp + 0x48]
0000000140591456 mov      edi, 0x110c0
000000014059145b mov      rax, qword ptr [rsi]
000000014059145e mov      edx, edi
0000000140591460 mov      rcx, rbx
0000000140591463 call     qword ptr [rip + 0xf2e8f]
0000000140591469 shr      eax, 6
000000014059146c and      eax, r13d
000000014059146f mov      dword ptr [rbp - 0x38], eax
0000000140591472 je       0x14058ebb1
0000000140591478 mov      rax, qword ptr [rsi]
000000014059147b mov      edx, edi
000000014059147d mov      rcx, rbx
0000000140591480 call     qword ptr [rip + 0xf2e72]
0000000140591486 mov      rcx, qword ptr [rbp + 0x48]
000000014059148a shr      eax, 6
000000014059148d and      eax, r13d
0000000140591490 mov      dword ptr [rbp - 0x38], eax
0000000140591493 mov      rax, rbx
0000000140591496 mov      rcx, qword ptr [rcx + 8]
000000014059149a lea      rbx, [rbx + 0x1320]
00000001405914a1 mov      rdx, rbx
00000001405914a4 mov      rax, qword ptr [rax + 0x18]
00000001405914a8 mov      rax, qword ptr [rax + 0x108]
00000001405914af call     qword ptr [rip + 0xf2e43]
00000001405914b5 mov      rax, qword ptr [rbp + 0x60]
00000001405914b9 mov      esi, dword ptr [rbp + 0x58]
00000001405914bc cmp      dword ptr [rax], esi
00000001405914be jae      0x14058eb85
00000001405914c4 lea      r9, [rip + 0xdeb05]
00000001405914cb jmp      0x14058eb4e
00000001405914d0 mov      rbx, qword ptr [rbp + 0x48]
00000001405914d4 mov      edi, 0x110c0
00000001405914d9 mov      rax, qword ptr [rsi]
00000001405914dc mov      edx, edi
00000001405914de mov      rcx, rbx
00000001405914e1 call     qword ptr [rip + 0xf2e11]
00000001405914e7 shr      eax, 5
00000001405914ea and      eax, r13d
00000001405914ed mov      dword ptr [rbp - 0x38], eax
00000001405914f0 je       0x14058ebb1
00000001405914f6 mov      rax, qword ptr [rsi]
00000001405914f9 mov      edx, edi
00000001405914fb mov      rcx, rbx
00000001405914fe call     qword ptr [rip + 0xf2df4]
0000000140591504 mov      rcx, qword ptr [rbp + 0x48]
0000000140591508 shr      eax, 5
000000014059150b and      eax, r13d
000000014059150e mov      dword ptr [rbp - 0x38], eax
0000000140591511 mov      rax, rbx
0000000140591514 mov      rcx, qword ptr [rcx + 8]
0000000140591518 lea      rbx, [rbx + 0x1320]
000000014059151f mov      rdx, rbx
0000000140591522 mov      rax, qword ptr [rax + 0x18]
0000000140591526 mov      rax, qword ptr [rax + 0x108]
000000014059152d call     qword ptr [rip + 0xf2dc5]
0000000140591533 mov      rax, qword ptr [rbp + 0x60]
0000000140591537 mov      esi, dword ptr [rbp + 0x58]
000000014059153a cmp      dword ptr [rax], esi
000000014059153c jae      0x14058eb85
0000000140591542 lea      r9, [rip + 0xdeaa7]
0000000140591549 jmp      0x14058eb4e
000000014059154e mov      rbx, qword ptr [rbp + 0x48]
0000000140591552 mov      edi, 0x110c0
0000000140591557 mov      rax, qword ptr [rsi]
000000014059155a mov      edx, edi
000000014059155c mov      rcx, rbx
000000014059155f call     qword ptr [rip + 0xf2d93]
0000000140591565 shr      eax, 4
0000000140591568 and      eax, r13d
000000014059156b mov      dword ptr [rbp - 0x38], eax
000000014059156e je       0x14058ebb1
0000000140591574 mov      rax, qword ptr [rsi]
0000000140591577 mov      edx, edi
0000000140591579 mov      rcx, rbx
000000014059157c call     qword ptr [rip + 0xf2d76]
0000000140591582 mov      rcx, qword ptr [rbp + 0x48]
0000000140591586 shr      eax, 4
0000000140591589 and      eax, r13d
000000014059158c mov      dword ptr [rbp - 0x38], eax
000000014059158f mov      rax, rbx
0000000140591592 mov      rcx, qword ptr [rcx + 8]
0000000140591596 lea      rbx, [rbx + 0x1320]
000000014059159d mov      rdx, rbx
00000001405915a0 mov      rax, qword ptr [rax + 0x18]
00000001405915a4 mov      rax, qword ptr [rax + 0x108]
00000001405915ab call     qword ptr [rip + 0xf2d47]
00000001405915b1 mov      rax, qword ptr [rbp + 0x60]
00000001405915b5 mov      esi, dword ptr [rbp + 0x58]
00000001405915b8 cmp      dword ptr [rax], esi
00000001405915ba jae      0x14058eb85
00000001405915c0 lea      r9, [rip + 0xdea49]
00000001405915c7 jmp      0x14058eb4e
00000001405915cc mov      rbx, qword ptr [rbp + 0x48]
00000001405915d0 mov      edi, 0x110c0
00000001405915d5 mov      rax, qword ptr [rsi]
00000001405915d8 mov      edx, edi
00000001405915da mov      rcx, rbx
00000001405915dd call     qword ptr [rip + 0xf2d15]
00000001405915e3 shr      eax, 3
00000001405915e6 and      eax, r13d
00000001405915e9 mov      dword ptr [rbp - 0x38], eax
00000001405915ec je       0x14058ebb1
00000001405915f2 mov      rax, qword ptr [rsi]
00000001405915f5 mov      edx, edi
00000001405915f7 mov      rcx, rbx
00000001405915fa call     qword ptr [rip + 0xf2cf8]
0000000140591600 mov      rcx, qword ptr [rbp + 0x48]
0000000140591604 shr      eax, 3
0000000140591607 and      eax, r13d
000000014059160a mov      dword ptr [rbp - 0x38], eax
000000014059160d mov      rax, rbx
0000000140591610 mov      rcx, qword ptr [rcx + 8]
0000000140591614 lea      rbx, [rbx + 0x1320]
000000014059161b mov      rdx, rbx
000000014059161e mov      rax, qword ptr [rax + 0x18]
0000000140591622 mov      rax, qword ptr [rax + 0x108]
0000000140591629 call     qword ptr [rip + 0xf2cc9]
000000014059162f mov      rax, qword ptr [rbp + 0x60]
0000000140591633 mov      esi, dword ptr [rbp + 0x58]
0000000140591636 cmp      dword ptr [rax], esi
0000000140591638 jae      0x14058eb85
000000014059163e lea      r9, [rip + 0xde9eb]
0000000140591645 jmp      0x14058eb4e
000000014059164a mov      rbx, qword ptr [rbp + 0x48]
000000014059164e mov      edi, 0x110c0
0000000140591653 mov      rax, qword ptr [rsi]
0000000140591656 mov      edx, edi
0000000140591658 mov      rcx, rbx
000000014059165b call     qword ptr [rip + 0xf2c97]
0000000140591661 shr      eax, 2
0000000140591664 and      eax, r13d
0000000140591667 mov      dword ptr [rbp - 0x38], eax
000000014059166a je       0x14058ebb1
0000000140591670 mov      rax, qword ptr [rsi]
0000000140591673 mov      edx, edi
0000000140591675 mov      rcx, rbx
0000000140591678 call     qword ptr [rip + 0xf2c7a]
000000014059167e mov      rcx, qword ptr [rbp + 0x48]
0000000140591682 shr      eax, 2
0000000140591685 and      eax, r13d
0000000140591688 mov      dword ptr [rbp - 0x38], eax
000000014059168b mov      rax, rbx
000000014059168e mov      rcx, qword ptr [rcx + 8]
0000000140591692 lea      rbx, [rbx + 0x1320]
0000000140591699 mov      rdx, rbx
000000014059169c mov      rax, qword ptr [rax + 0x18]
00000001405916a0 mov      rax, qword ptr [rax + 0x108]
00000001405916a7 call     qword ptr [rip + 0xf2c4b]
00000001405916ad mov      rax, qword ptr [rbp + 0x60]
00000001405916b1 mov      esi, dword ptr [rbp + 0x58]
00000001405916b4 cmp      dword ptr [rax], esi
00000001405916b6 jae      0x14058eb85
00000001405916bc lea      r9, [rip + 0xde98d]
00000001405916c3 jmp      0x14058eb4e
00000001405916c8 mov      rbx, qword ptr [rbp + 0x48]
00000001405916cc mov      edi, 0x110c0
00000001405916d1 mov      rax, qword ptr [rsi]
00000001405916d4 mov      edx, edi
00000001405916d6 mov      rcx, rbx
00000001405916d9 call     qword ptr [rip + 0xf2c19]
00000001405916df shr      eax, 1
00000001405916e1 and      eax, r13d
00000001405916e4 mov      dword ptr [rbp - 0x38], eax
00000001405916e7 je       0x14058ebb1
00000001405916ed mov      rax, qword ptr [rsi]
00000001405916f0 mov      edx, edi
00000001405916f2 mov      rcx, rbx
00000001405916f5 call     qword ptr [rip + 0xf2bfd]
00000001405916fb mov      rcx, qword ptr [rbp + 0x48]
00000001405916ff shr      eax, 1
0000000140591701 and      eax, r13d
0000000140591704 mov      dword ptr [rbp - 0x38], eax
0000000140591707 mov      rax, rbx
000000014059170a mov      rcx, qword ptr [rcx + 8]
000000014059170e lea      rbx, [rbx + 0x1320]
0000000140591715 mov      rdx, rbx
0000000140591718 mov      rax, qword ptr [rax + 0x18]
000000014059171c mov      rax, qword ptr [rax + 0x108]
0000000140591723 call     qword ptr [rip + 0xf2bcf]
0000000140591729 mov      rax, qword ptr [rbp + 0x60]
000000014059172d mov      esi, dword ptr [rbp + 0x58]
0000000140591730 cmp      dword ptr [rax], esi
0000000140591732 jae      0x14058eb85
0000000140591738 lea      r9, [rip + 0xde931]
000000014059173f jmp      0x14058eb4e
0000000140591744 mov      rbx, qword ptr [rbp + 0x48]
0000000140591748 mov      edi, 0x110c0
000000014059174d mov      rax, qword ptr [rsi]
0000000140591750 mov      edx, edi
0000000140591752 mov      rcx, rbx
0000000140591755 call     qword ptr [rip + 0xf2b9d]
000000014059175b and      eax, r13d
000000014059175e mov      dword ptr [rbp - 0x38], eax
0000000140591761 je       0x14058ebb1
0000000140591767 mov      rax, qword ptr [rsi]
000000014059176a mov      edx, edi
000000014059176c mov      rcx, rbx
000000014059176f call     qword ptr [rip + 0xf2b83]
0000000140591775 mov      rcx, qword ptr [rbp + 0x48]
0000000140591779 and      eax, r13d
000000014059177c mov      dword ptr [rbp - 0x38], eax
000000014059177f mov      rax, rbx
0000000140591782 lea      rbx, [rbx + 0x1320]
0000000140591789 mov      rdx, rbx
000000014059178c mov      rcx, qword ptr [rcx + 8]
0000000140591790 mov      rax, qword ptr [rax + 0x18]
0000000140591794 mov      rax, qword ptr [rax + 0x108]
000000014059179b call     qword ptr [rip + 0xf2b57]
00000001405917a1 mov      rax, qword ptr [rbp + 0x60]
00000001405917a5 mov      esi, dword ptr [rbp + 0x58]
00000001405917a8 cmp      dword ptr [rax], esi
00000001405917aa jae      0x14058eb85
00000001405917b0 lea      r9, [rip + 0xde8d9]
00000001405917b7 jmp      0x14058eb4e
00000001405917bc mov      rbx, qword ptr [rbp + 0x48]
00000001405917c0 mov      edi, 0x110fc
00000001405917c5 mov      rax, qword ptr [rsi]
00000001405917c8 mov      edx, edi
00000001405917ca mov      rcx, rbx
00000001405917cd call     qword ptr [rip + 0xf2b25]
00000001405917d3 shr      eax, 5
00000001405917d6 and      eax, r13d
00000001405917d9 mov      dword ptr [rbp - 0x38], eax
00000001405917dc je       0x14058ebb1
00000001405917e2 mov      rax, qword ptr [rsi]
00000001405917e5 mov      edx, edi
00000001405917e7 mov      rcx, rbx
00000001405917ea call     qword ptr [rip + 0xf2b08]
00000001405917f0 mov      rcx, qword ptr [rbp + 0x48]
00000001405917f4 shr      eax, 5
00000001405917f7 and      eax, r13d
00000001405917fa mov      dword ptr [rbp - 0x38], eax
00000001405917fd mov      rax, rbx
0000000140591800 mov      rcx, qword ptr [rcx + 8]
0000000140591804 lea      rbx, [rbx + 0x1320]
000000014059180b mov      rdx, rbx
000000014059180e mov      rax, qword ptr [rax + 0x18]
0000000140591812 mov      rax, qword ptr [rax + 0x108]
0000000140591819 call     qword ptr [rip + 0xf2ad9]
000000014059181f mov      rax, qword ptr [rbp + 0x60]
0000000140591823 mov      esi, dword ptr [rbp + 0x58]
0000000140591826 cmp      dword ptr [rax], esi
0000000140591828 jae      0x14058eb85
000000014059182e lea      r9, [rip + 0xde87b]
0000000140591835 jmp      0x14058eb4e
000000014059183a mov      rbx, qword ptr [rbp + 0x48]
000000014059183e mov      edi, 0x110fc
0000000140591843 mov      rax, qword ptr [rsi]
0000000140591846 mov      edx, edi
0000000140591848 mov      rcx, rbx
000000014059184b call     qword ptr [rip + 0xf2aa7]
0000000140591851 shr      eax, 4
0000000140591854 and      eax, r13d
0000000140591857 mov      dword ptr [rbp - 0x38], eax
000000014059185a je       0x14058ebb1
0000000140591860 mov      rax, qword ptr [rsi]
0000000140591863 mov      edx, edi
0000000140591865 mov      rcx, rbx
0000000140591868 call     qword ptr [rip + 0xf2a8a]
000000014059186e mov      rcx, qword ptr [rbp + 0x48]
0000000140591872 shr      eax, 4
0000000140591875 and      eax, r13d
0000000140591878 mov      dword ptr [rbp - 0x38], eax
000000014059187b mov      rax, rbx
000000014059187e mov      rcx, qword ptr [rcx + 8]
0000000140591882 lea      rbx, [rbx + 0x1320]
0000000140591889 mov      rdx, rbx
000000014059188c mov      rax, qword ptr [rax + 0x18]
0000000140591890 mov      rax, qword ptr [rax + 0x108]
0000000140591897 call     qword ptr [rip + 0xf2a5b]
000000014059189d mov      rax, qword ptr [rbp + 0x60]
00000001405918a1 mov      esi, dword ptr [rbp + 0x58]
00000001405918a4 cmp      dword ptr [rax], esi
00000001405918a6 jae      0x14058eb85
00000001405918ac lea      r9, [rip + 0xde81d]
00000001405918b3 jmp      0x14058eb4e
00000001405918b8 mov      rbx, qword ptr [rbp + 0x48]
00000001405918bc mov      edi, 0x110fc
00000001405918c1 mov      rax, qword ptr [rsi]
00000001405918c4 mov      edx, edi
00000001405918c6 mov      rcx, rbx
00000001405918c9 call     qword ptr [rip + 0xf2a29]
00000001405918cf shr      eax, 3
00000001405918d2 and      eax, r13d
00000001405918d5 mov      dword ptr [rbp - 0x38], eax
00000001405918d8 je       0x14058ebb1
00000001405918de mov      rax, qword ptr [rsi]
00000001405918e1 mov      edx, edi
00000001405918e3 mov      rcx, rbx
00000001405918e6 call     qword ptr [rip + 0xf2a0c]
00000001405918ec mov      rcx, qword ptr [rbp + 0x48]
00000001405918f0 shr      eax, 3
00000001405918f3 and      eax, r13d
00000001405918f6 mov      dword ptr [rbp - 0x38], eax
00000001405918f9 mov      rax, rbx
00000001405918fc mov      rcx, qword ptr [rcx + 8]
0000000140591900 lea      rbx, [rbx + 0x1320]
0000000140591907 mov      rdx, rbx
000000014059190a mov      rax, qword ptr [rax + 0x18]
000000014059190e mov      rax, qword ptr [rax + 0x108]
0000000140591915 call     qword ptr [rip + 0xf29dd]
000000014059191b mov      rax, qword ptr [rbp + 0x60]
000000014059191f mov      esi, dword ptr [rbp + 0x58]
0000000140591922 cmp      dword ptr [rax], esi
0000000140591924 jae      0x14058eb85
000000014059192a lea      r9, [rip + 0xde7bf]
0000000140591931 jmp      0x14058eb4e
0000000140591936 mov      rbx, qword ptr [rbp + 0x48]
000000014059193a mov      edi, 0x110fc
000000014059193f mov      rax, qword ptr [rsi]
0000000140591942 mov      edx, edi
0000000140591944 mov      rcx, rbx
0000000140591947 call     qword ptr [rip + 0xf29ab]
000000014059194d shr      eax, 2
0000000140591950 and      eax, r13d
0000000140591953 mov      dword ptr [rbp - 0x38], eax
0000000140591956 je       0x14058ebb1
000000014059195c mov      rax, qword ptr [rsi]
000000014059195f mov      edx, edi
0000000140591961 mov      rcx, rbx
0000000140591964 call     qword ptr [rip + 0xf298e]
000000014059196a mov      rcx, qword ptr [rbp + 0x48]
000000014059196e shr      eax, 2
0000000140591971 and      eax, r13d
0000000140591974 mov      dword ptr [rbp - 0x38], eax
0000000140591977 mov      rax, rbx
000000014059197a mov      rcx, qword ptr [rcx + 8]
000000014059197e lea      rbx, [rbx + 0x1320]
0000000140591985 mov      rdx, rbx
0000000140591988 mov      rax, qword ptr [rax + 0x18]
000000014059198c mov      rax, qword ptr [rax + 0x108]
0000000140591993 call     qword ptr [rip + 0xf295f]
0000000140591999 mov      rax, qword ptr [rbp + 0x60]
000000014059199d mov      esi, dword ptr [rbp + 0x58]
00000001405919a0 cmp      dword ptr [rax], esi
00000001405919a2 jae      0x14058eb85
00000001405919a8 lea      r9, [rip + 0xde761]
00000001405919af jmp      0x14058eb4e
00000001405919b4 mov      rbx, qword ptr [rbp + 0x48]
00000001405919b8 mov      edi, 0x110fc
00000001405919bd mov      rax, qword ptr [rsi]
00000001405919c0 mov      edx, edi
00000001405919c2 mov      rcx, rbx
00000001405919c5 call     qword ptr [rip + 0xf292d]
00000001405919cb shr      eax, 1
00000001405919cd and      eax, r13d
00000001405919d0 mov      dword ptr [rbp - 0x38], eax
00000001405919d3 je       0x14058ebb1
00000001405919d9 mov      rax, qword ptr [rsi]
00000001405919dc mov      edx, edi
00000001405919de mov      rcx, rbx
00000001405919e1 call     qword ptr [rip + 0xf2911]
00000001405919e7 mov      rcx, qword ptr [rbp + 0x48]
00000001405919eb shr      eax, 1
00000001405919ed and      eax, r13d
00000001405919f0 mov      dword ptr [rbp - 0x38], eax
00000001405919f3 mov      rax, rbx
00000001405919f6 mov      rcx, qword ptr [rcx + 8]
00000001405919fa lea      rbx, [rbx + 0x1320]
0000000140591a01 mov      rdx, rbx
0000000140591a04 mov      rax, qword ptr [rax + 0x18]
0000000140591a08 mov      rax, qword ptr [rax + 0x108]
0000000140591a0f call     qword ptr [rip + 0xf28e3]
0000000140591a15 mov      rax, qword ptr [rbp + 0x60]
0000000140591a19 mov      esi, dword ptr [rbp + 0x58]
0000000140591a1c cmp      dword ptr [rax], esi
0000000140591a1e jae      0x14058eb85
0000000140591a24 lea      r9, [rip + 0xde705]
0000000140591a2b jmp      0x14058eb4e
0000000140591a30 mov      rbx, qword ptr [rbp + 0x48]
0000000140591a34 mov      edi, 0x110fc
0000000140591a39 mov      rax, qword ptr [rsi]
0000000140591a3c mov      edx, edi
0000000140591a3e mov      rcx, rbx
0000000140591a41 call     qword ptr [rip + 0xf28b1]
0000000140591a47 and      eax, r13d
0000000140591a4a mov      dword ptr [rbp - 0x38], eax
0000000140591a4d je       0x14058ebb1
0000000140591a53 mov      rax, qword ptr [rsi]
0000000140591a56 mov      edx, edi
0000000140591a58 mov      rcx, rbx
0000000140591a5b call     qword ptr [rip + 0xf2897]
0000000140591a61 mov      rcx, qword ptr [rbp + 0x48]
0000000140591a65 and      eax, r13d
0000000140591a68 mov      dword ptr [rbp - 0x38], eax
0000000140591a6b mov      rax, rbx
0000000140591a6e lea      rbx, [rbx + 0x1320]
0000000140591a75 mov      rdx, rbx
0000000140591a78 mov      rcx, qword ptr [rcx + 8]
0000000140591a7c mov      rax, qword ptr [rax + 0x18]
0000000140591a80 mov      rax, qword ptr [rax + 0x108]
0000000140591a87 call     qword ptr [rip + 0xf286b]
0000000140591a8d mov      rax, qword ptr [rbp + 0x60]
0000000140591a91 mov      esi, dword ptr [rbp + 0x58]
0000000140591a94 cmp      dword ptr [rax], esi
0000000140591a96 jae      0x14058eb85
0000000140591a9c lea      r9, [rip + 0xde6ad]
0000000140591aa3 jmp      0x14058eb4e
0000000140591aa8 mov      rbx, qword ptr [rbp + 0x48]
0000000140591aac mov      edi, 0x111a4
0000000140591ab1 mov      rax, qword ptr [rsi + 0x20]
0000000140591ab5 mov      edx, edi
0000000140591ab7 mov      rcx, rbx
0000000140591aba call     qword ptr [rip + 0xf2838]
0000000140591ac0 shr      eax, 0x1f
0000000140591ac3 mov      dword ptr [rbp - 0x38], eax
0000000140591ac6 test     eax, eax
0000000140591ac8 je       0x14058ebb1
0000000140591ace mov      rax, qword ptr [rsi + 0x20]
0000000140591ad2 mov      edx, edi
0000000140591ad4 mov      rcx, rbx
0000000140591ad7 call     qword ptr [rip + 0xf281b]
0000000140591add mov      rcx, qword ptr [rbp + 0x48]
0000000140591ae1 shr      eax, 0x1f
0000000140591ae4 mov      dword ptr [rbp - 0x38], eax
0000000140591ae7 mov      rax, rbx
0000000140591aea lea      rbx, [rbx + 0x1320]
0000000140591af1 mov      rcx, qword ptr [rcx + 8]
0000000140591af5 mov      rdx, rbx
0000000140591af8 mov      rax, qword ptr [rax + 0x18]
0000000140591afc mov      rax, qword ptr [rax + 0x108]
0000000140591b03 call     qword ptr [rip + 0xf27ef]
0000000140591b09 mov      rax, qword ptr [rbp + 0x60]
0000000140591b0d mov      esi, dword ptr [rbp + 0x58]
0000000140591b10 cmp      dword ptr [rax], esi
0000000140591b12 jae      0x14058eb85
0000000140591b18 lea      r9, [rip + 0xde651]
0000000140591b1f jmp      0x14058eb4e
0000000140591b24 mov      rbx, qword ptr [rbp + 0x48]
0000000140591b28 mov      edi, 0x111a4
0000000140591b2d mov      rax, qword ptr [rsi + 0x20]
0000000140591b31 mov      edx, edi
0000000140591b33 mov      rcx, rbx
0000000140591b36 call     qword ptr [rip + 0xf27bc]
0000000140591b3c shr      eax, 0x1e
0000000140591b3f and      eax, r13d
0000000140591b42 mov      dword ptr [rbp - 0x38], eax
0000000140591b45 je       0x14058ebb1
0000000140591b4b mov      rax, qword ptr [rsi + 0x20]
0000000140591b4f mov      edx, edi
0000000140591b51 mov      rcx, rbx
0000000140591b54 call     qword ptr [rip + 0xf279e]
0000000140591b5a mov      rcx, qword ptr [rbp + 0x48]
0000000140591b5e shr      eax, 0x1e
0000000140591b61 and      eax, r13d
0000000140591b64 mov      dword ptr [rbp - 0x38], eax
0000000140591b67 mov      rax, rbx
0000000140591b6a mov      rcx, qword ptr [rcx + 8]
0000000140591b6e lea      rbx, [rbx + 0x1320]
0000000140591b75 mov      rdx, rbx
0000000140591b78 mov      rax, qword ptr [rax + 0x18]
0000000140591b7c mov      rax, qword ptr [rax + 0x108]
0000000140591b83 call     qword ptr [rip + 0xf276f]
0000000140591b89 mov      rax, qword ptr [rbp + 0x60]
0000000140591b8d mov      esi, dword ptr [rbp + 0x58]
0000000140591b90 cmp      dword ptr [rax], esi
0000000140591b92 jae      0x14058eb85
0000000140591b98 lea      r9, [rip + 0xde601]
0000000140591b9f jmp      0x14058eb4e
0000000140591ba4 mov      rbx, qword ptr [rbp + 0x48]
0000000140591ba8 mov      edi, 0x111a4
0000000140591bad mov      rax, qword ptr [rsi + 0x20]
0000000140591bb1 mov      edx, edi
0000000140591bb3 mov      rcx, rbx
0000000140591bb6 call     qword ptr [rip + 0xf273c]
0000000140591bbc shr      eax, 0x1d
0000000140591bbf and      eax, r13d
0000000140591bc2 mov      dword ptr [rbp - 0x38], eax
0000000140591bc5 je       0x14058ebb1
0000000140591bcb mov      rax, qword ptr [rsi + 0x20]
0000000140591bcf mov      edx, edi
0000000140591bd1 mov      rcx, rbx
0000000140591bd4 call     qword ptr [rip + 0xf271e]
0000000140591bda mov      rcx, qword ptr [rbp + 0x48]
0000000140591bde shr      eax, 0x1d
0000000140591be1 and      eax, r13d
0000000140591be4 mov      dword ptr [rbp - 0x38], eax
0000000140591be7 mov      rax, rbx
0000000140591bea mov      rcx, qword ptr [rcx + 8]
0000000140591bee lea      rbx, [rbx + 0x1320]
0000000140591bf5 mov      rdx, rbx
0000000140591bf8 mov      rax, qword ptr [rax + 0x18]
0000000140591bfc mov      rax, qword ptr [rax + 0x108]
0000000140591c03 call     qword ptr [rip + 0xf26ef]
0000000140591c09 mov      rax, qword ptr [rbp + 0x60]
0000000140591c0d mov      esi, dword ptr [rbp + 0x58]
0000000140591c10 cmp      dword ptr [rax], esi
0000000140591c12 jae      0x14058eb85
0000000140591c18 lea      r9, [rip + 0xde5b1]
0000000140591c1f jmp      0x14058eb4e
0000000140591c24 mov      rbx, qword ptr [rbp + 0x48]
0000000140591c28 mov      edi, 0x111a4
0000000140591c2d mov      rax, qword ptr [rsi + 0x20]
0000000140591c31 mov      edx, edi
0000000140591c33 mov      rcx, rbx
0000000140591c36 call     qword ptr [rip + 0xf26bc]
0000000140591c3c shr      eax, 0x1c
0000000140591c3f and      eax, r13d
0000000140591c42 mov      dword ptr [rbp - 0x38], eax
0000000140591c45 je       0x14058ebb1
0000000140591c4b mov      rax, qword ptr [rsi + 0x20]
0000000140591c4f mov      edx, edi
0000000140591c51 mov      rcx, rbx
0000000140591c54 call     qword ptr [rip + 0xf269e]
0000000140591c5a mov      rcx, qword ptr [rbp + 0x48]
0000000140591c5e shr      eax, 0x1c
0000000140591c61 and      eax, r13d
0000000140591c64 mov      dword ptr [rbp - 0x38], eax
0000000140591c67 mov      rax, rbx
0000000140591c6a mov      rcx, qword ptr [rcx + 8]
0000000140591c6e lea      rbx, [rbx + 0x1320]
0000000140591c75 mov      rdx, rbx
0000000140591c78 mov      rax, qword ptr [rax + 0x18]
0000000140591c7c mov      rax, qword ptr [rax + 0x108]
0000000140591c83 call     qword ptr [rip + 0xf266f]
0000000140591c89 mov      rax, qword ptr [rbp + 0x60]
0000000140591c8d mov      esi, dword ptr [rbp + 0x58]
0000000140591c90 cmp      dword ptr [rax], esi
0000000140591c92 jae      0x14058eb85
0000000140591c98 lea      r9, [rip + 0xde561]
0000000140591c9f jmp      0x14058eb4e
0000000140591ca4 mov      rbx, qword ptr [rbp + 0x48]
0000000140591ca8 mov      edi, 0x111a4
0000000140591cad mov      rax, qword ptr [rsi + 0x20]
0000000140591cb1 mov      edx, edi
0000000140591cb3 mov      rcx, rbx
0000000140591cb6 call     qword ptr [rip + 0xf263c]
0000000140591cbc shr      eax, 0x1b
0000000140591cbf and      eax, r13d
0000000140591cc2 mov      dword ptr [rbp - 0x38], eax
0000000140591cc5 je       0x14058ebb1
0000000140591ccb mov      rax, qword ptr [rsi + 0x20]
0000000140591ccf mov      edx, edi
0000000140591cd1 mov      rcx, rbx
0000000140591cd4 call     qword ptr [rip + 0xf261e]
0000000140591cda mov      rcx, qword ptr [rbp + 0x48]
0000000140591cde shr      eax, 0x1b
0000000140591ce1 and      eax, r13d
0000000140591ce4 mov      dword ptr [rbp - 0x38], eax
0000000140591ce7 mov      rax, rbx
0000000140591cea mov      rcx, qword ptr [rcx + 8]
0000000140591cee lea      rbx, [rbx + 0x1320]
0000000140591cf5 mov      rdx, rbx
0000000140591cf8 mov      rax, qword ptr [rax + 0x18]
0000000140591cfc mov      rax, qword ptr [rax + 0x108]
0000000140591d03 call     qword ptr [rip + 0xf25ef]
0000000140591d09 mov      rax, qword ptr [rbp + 0x60]
0000000140591d0d mov      esi, dword ptr [rbp + 0x58]
0000000140591d10 cmp      dword ptr [rax], esi
0000000140591d12 jae      0x14058eb85
0000000140591d18 lea      r9, [rip + 0xde511]
0000000140591d1f jmp      0x14058eb4e
0000000140591d24 mov      rbx, qword ptr [rbp + 0x48]
0000000140591d28 mov      edi, 0x111a4
0000000140591d2d mov      rax, qword ptr [rsi + 0x20]
0000000140591d31 mov      edx, edi
0000000140591d33 mov      rcx, rbx
0000000140591d36 call     qword ptr [rip + 0xf25bc]
0000000140591d3c shr      eax, 0x1a
0000000140591d3f and      eax, r13d
0000000140591d42 mov      dword ptr [rbp - 0x38], eax
0000000140591d45 je       0x14058ebb1
0000000140591d4b mov      rax, qword ptr [rsi + 0x20]
0000000140591d4f mov      edx, edi
0000000140591d51 mov      rcx, rbx
0000000140591d54 call     qword ptr [rip + 0xf259e]
0000000140591d5a mov      rcx, qword ptr [rbp + 0x48]
0000000140591d5e shr      eax, 0x1a
0000000140591d61 and      eax, r13d
0000000140591d64 mov      dword ptr [rbp - 0x38], eax
0000000140591d67 mov      rax, rbx
0000000140591d6a mov      rcx, qword ptr [rcx + 8]
0000000140591d6e lea      rbx, [rbx + 0x1320]
0000000140591d75 mov      rdx, rbx
0000000140591d78 mov      rax, qword ptr [rax + 0x18]
0000000140591d7c mov      rax, qword ptr [rax + 0x108]
0000000140591d83 call     qword ptr [rip + 0xf256f]
0000000140591d89 mov      rax, qword ptr [rbp + 0x60]
0000000140591d8d mov      esi, dword ptr [rbp + 0x58]
0000000140591d90 cmp      dword ptr [rax], esi
0000000140591d92 jae      0x14058eb85
0000000140591d98 lea      r9, [rip + 0xde4c1]
0000000140591d9f jmp      0x14058eb4e
0000000140591da4 mov      rbx, qword ptr [rbp + 0x48]
0000000140591da8 mov      edi, 0x111a4
0000000140591dad mov      rax, qword ptr [rsi + 0x20]
0000000140591db1 mov      edx, edi
0000000140591db3 mov      rcx, rbx
0000000140591db6 call     qword ptr [rip + 0xf253c]
0000000140591dbc shr      eax, 0x19
0000000140591dbf and      eax, r13d
0000000140591dc2 mov      dword ptr [rbp - 0x38], eax
0000000140591dc5 je       0x14058ebb1
0000000140591dcb mov      rax, qword ptr [rsi + 0x20]
0000000140591dcf mov      edx, edi
0000000140591dd1 mov      rcx, rbx
0000000140591dd4 call     qword ptr [rip + 0xf251e]
0000000140591dda mov      rcx, qword ptr [rbp + 0x48]
0000000140591dde shr      eax, 0x19
0000000140591de1 and      eax, r13d
0000000140591de4 mov      dword ptr [rbp - 0x38], eax
0000000140591de7 mov      rax, rbx
0000000140591dea mov      rcx, qword ptr [rcx + 8]
0000000140591dee lea      rbx, [rbx + 0x1320]
0000000140591df5 mov      rdx, rbx
0000000140591df8 mov      rax, qword ptr [rax + 0x18]
0000000140591dfc mov      rax, qword ptr [rax + 0x108]
0000000140591e03 call     qword ptr [rip + 0xf24ef]
0000000140591e09 mov      rax, qword ptr [rbp + 0x60]
0000000140591e0d mov      esi, dword ptr [rbp + 0x58]
0000000140591e10 cmp      dword ptr [rax], esi
0000000140591e12 jae      0x14058eb85
0000000140591e18 lea      r9, [rip + 0xde471]
0000000140591e1f jmp      0x14058eb4e
0000000140591e24 mov      rbx, qword ptr [rbp + 0x48]
0000000140591e28 mov      edi, 0x111a4
0000000140591e2d mov      rax, qword ptr [rsi + 0x20]
0000000140591e31 mov      edx, edi
0000000140591e33 mov      rcx, rbx
0000000140591e36 call     qword ptr [rip + 0xf24bc]
0000000140591e3c shr      eax, 0x18
0000000140591e3f and      eax, r13d
0000000140591e42 mov      dword ptr [rbp - 0x38], eax
0000000140591e45 je       0x14058ebb1
0000000140591e4b mov      rax, qword ptr [rsi + 0x20]
0000000140591e4f mov      edx, edi
0000000140591e51 mov      rcx, rbx
0000000140591e54 call     qword ptr [rip + 0xf249e]
0000000140591e5a mov      rcx, qword ptr [rbp + 0x48]
0000000140591e5e shr      eax, 0x18
0000000140591e61 and      eax, r13d
0000000140591e64 mov      dword ptr [rbp - 0x38], eax
0000000140591e67 mov      rax, rbx
0000000140591e6a mov      rcx, qword ptr [rcx + 8]
0000000140591e6e lea      rbx, [rbx + 0x1320]
0000000140591e75 mov      rdx, rbx
0000000140591e78 mov      rax, qword ptr [rax + 0x18]
0000000140591e7c mov      rax, qword ptr [rax + 0x108]
0000000140591e83 call     qword ptr [rip + 0xf246f]
0000000140591e89 mov      rax, qword ptr [rbp + 0x60]
0000000140591e8d mov      esi, dword ptr [rbp + 0x58]
0000000140591e90 cmp      dword ptr [rax], esi
0000000140591e92 jae      0x14058eb85
0000000140591e98 lea      r9, [rip + 0xde421]
0000000140591e9f jmp      0x14058eb4e
0000000140591ea4 mov      rbx, qword ptr [rbp + 0x48]
0000000140591ea8 mov      edi, 0x11228
0000000140591ead mov      rax, qword ptr [rsi]
0000000140591eb0 mov      edx, edi
0000000140591eb2 mov      rcx, rbx
0000000140591eb5 call     qword ptr [rip + 0xf243d]
0000000140591ebb and      eax, r13d
0000000140591ebe mov      dword ptr [rbp - 0x38], eax
0000000140591ec1 je       0x14058ebb1
0000000140591ec7 mov      rax, qword ptr [rsi]
0000000140591eca mov      edx, edi
0000000140591ecc mov      rcx, rbx
0000000140591ecf call     qword ptr [rip + 0xf2423]
0000000140591ed5 mov      rcx, qword ptr [rbp + 0x48]
0000000140591ed9 and      eax, r13d
0000000140591edc mov      dword ptr [rbp - 0x38], eax
0000000140591edf mov      rax, rbx
0000000140591ee2 lea      rbx, [rbx + 0x1320]
0000000140591ee9 mov      rdx, rbx
0000000140591eec mov      rcx, qword ptr [rcx + 8]
0000000140591ef0 mov      rax, qword ptr [rax + 0x18]
0000000140591ef4 mov      rax, qword ptr [rax + 0x108]
0000000140591efb call     qword ptr [rip + 0xf23f7]
0000000140591f01 mov      rax, qword ptr [rbp + 0x60]
0000000140591f05 mov      esi, dword ptr [rbp + 0x58]
0000000140591f08 cmp      dword ptr [rax], esi
0000000140591f0a jae      0x14058eb85
0000000140591f10 lea      r9, [rip + 0xde3d9]
0000000140591f17 jmp      0x14058eb4e
0000000140591f1c mov      rbx, qword ptr [rbp + 0x48]
0000000140591f20 mov      edi, 0x11270
0000000140591f25 mov      rax, qword ptr [rsi + 0x10]
0000000140591f29 mov      edx, edi
0000000140591f2b mov      rcx, rbx
0000000140591f2e call     qword ptr [rip + 0xf23c4]
0000000140591f34 shr      eax, 0xb
0000000140591f37 and      eax, r13d
0000000140591f3a mov      dword ptr [rbp - 0x38], eax
0000000140591f3d je       0x14058ebb1
0000000140591f43 mov      rax, qword ptr [rsi + 0x10]
0000000140591f47 mov      edx, edi
0000000140591f49 mov      rcx, rbx
0000000140591f4c call     qword ptr [rip + 0xf23a6]
0000000140591f52 mov      rcx, qword ptr [rbp + 0x48]
0000000140591f56 shr      eax, 0xb
0000000140591f59 and      eax, r13d
0000000140591f5c mov      dword ptr [rbp - 0x38], eax
0000000140591f5f mov      rax, rbx
0000000140591f62 mov      rcx, qword ptr [rcx + 8]
0000000140591f66 lea      rbx, [rbx + 0x1320]
0000000140591f6d mov      rdx, rbx
0000000140591f70 mov      rax, qword ptr [rax + 0x18]
0000000140591f74 mov      rax, qword ptr [rax + 0x108]
0000000140591f7b call     qword ptr [rip + 0xf2377]
0000000140591f81 mov      rax, qword ptr [rbp + 0x60]
0000000140591f85 mov      esi, dword ptr [rbp + 0x58]
0000000140591f88 cmp      dword ptr [rax], esi
0000000140591f8a jae      0x14058eb85
0000000140591f90 lea      r9, [rip + 0xde379]
0000000140591f97 jmp      0x14058eb4e
0000000140591f9c mov      rbx, qword ptr [rbp + 0x48]
0000000140591fa0 mov      edi, 0x11270
0000000140591fa5 mov      rax, qword ptr [rsi + 0x10]
0000000140591fa9 mov      edx, edi
0000000140591fab mov      rcx, rbx
0000000140591fae call     qword ptr [rip + 0xf2344]
0000000140591fb4 shr      eax, 0xa
0000000140591fb7 and      eax, r13d
0000000140591fba mov      dword ptr [rbp - 0x38], eax
0000000140591fbd je       0x14058ebb1
0000000140591fc3 mov      rax, qword ptr [rsi + 0x10]
0000000140591fc7 mov      edx, edi
0000000140591fc9 mov      rcx, rbx
0000000140591fcc call     qword ptr [rip + 0xf2326]
0000000140591fd2 mov      rcx, qword ptr [rbp + 0x48]
0000000140591fd6 shr      eax, 0xa
0000000140591fd9 and      eax, r13d
0000000140591fdc mov      dword ptr [rbp - 0x38], eax
0000000140591fdf mov      rax, rbx
0000000140591fe2 mov      rcx, qword ptr [rcx + 8]
0000000140591fe6 lea      rbx, [rbx + 0x1320]
0000000140591fed mov      rdx, rbx
0000000140591ff0 mov      rax, qword ptr [rax + 0x18]
0000000140591ff4 mov      rax, qword ptr [rax + 0x108]
0000000140591ffb call     qword ptr [rip + 0xf22f7]
0000000140592001 mov      rax, qword ptr [rbp + 0x60]
0000000140592005 mov      esi, dword ptr [rbp + 0x58]
0000000140592008 cmp      dword ptr [rax], esi
000000014059200a jae      0x14058eb85
0000000140592010 lea      r9, [rip + 0xde329]
0000000140592017 jmp      0x14058eb4e
000000014059201c mov      rbx, qword ptr [rbp + 0x48]
0000000140592020 mov      edi, 0x11270
0000000140592025 mov      rax, qword ptr [rsi + 0x10]
0000000140592029 mov      edx, edi
000000014059202b mov      rcx, rbx
000000014059202e call     qword ptr [rip + 0xf22c4]
0000000140592034 shr      eax, 9
0000000140592037 and      eax, r13d
000000014059203a mov      dword ptr [rbp - 0x38], eax
000000014059203d je       0x14058ebb1
0000000140592043 mov      rax, qword ptr [rsi + 0x10]
0000000140592047 mov      edx, edi
0000000140592049 mov      rcx, rbx
000000014059204c call     qword ptr [rip + 0xf22a6]
0000000140592052 mov      rcx, qword ptr [rbp + 0x48]
0000000140592056 shr      eax, 9
0000000140592059 and      eax, r13d
000000014059205c mov      dword ptr [rbp - 0x38], eax
000000014059205f mov      rax, rbx
0000000140592062 mov      rcx, qword ptr [rcx + 8]
0000000140592066 lea      rbx, [rbx + 0x1320]
000000014059206d mov      rdx, rbx
0000000140592070 mov      rax, qword ptr [rax + 0x18]
0000000140592074 mov      rax, qword ptr [rax + 0x108]
000000014059207b call     qword ptr [rip + 0xf2277]
0000000140592081 mov      rax, qword ptr [rbp + 0x60]
0000000140592085 mov      esi, dword ptr [rbp + 0x58]
0000000140592088 cmp      dword ptr [rax], esi
000000014059208a jae      0x14058eb85
0000000140592090 lea      r9, [rip + 0xde2d9]
0000000140592097 jmp      0x14058eb4e
000000014059209c mov      rbx, qword ptr [rbp + 0x48]
00000001405920a0 mov      edi, 0x11270
00000001405920a5 mov      rax, qword ptr [rsi + 0x10]
00000001405920a9 mov      edx, edi
00000001405920ab mov      rcx, rbx
00000001405920ae call     qword ptr [rip + 0xf2244]
00000001405920b4 shr      eax, 8
00000001405920b7 and      eax, r13d
00000001405920ba mov      dword ptr [rbp - 0x38], eax
00000001405920bd je       0x14058ebb1
00000001405920c3 mov      rax, qword ptr [rsi + 0x10]
00000001405920c7 mov      edx, edi
00000001405920c9 mov      rcx, rbx
00000001405920cc call     qword ptr [rip + 0xf2226]
00000001405920d2 mov      rcx, qword ptr [rbp + 0x48]
00000001405920d6 shr      eax, 8
00000001405920d9 and      eax, r13d
00000001405920dc mov      dword ptr [rbp - 0x38], eax
00000001405920df mov      rax, rbx
00000001405920e2 mov      rcx, qword ptr [rcx + 8]
00000001405920e6 lea      rbx, [rbx + 0x1320]
00000001405920ed mov      rdx, rbx
00000001405920f0 mov      rax, qword ptr [rax + 0x18]
00000001405920f4 mov      rax, qword ptr [rax + 0x108]
00000001405920fb call     qword ptr [rip + 0xf21f7]
0000000140592101 mov      rax, qword ptr [rbp + 0x60]
0000000140592105 mov      esi, dword ptr [rbp + 0x58]
0000000140592108 cmp      dword ptr [rax], esi
000000014059210a jae      0x14058eb85
0000000140592110 lea      r9, [rip + 0xde279]
0000000140592117 jmp      0x14058eb4e
000000014059211c mov      rbx, qword ptr [rbp + 0x48]
0000000140592120 mov      edi, 0x1500c
0000000140592125 mov      rax, qword ptr [rsi + 0x20]
0000000140592129 mov      edx, edi
000000014059212b mov      rcx, rbx
000000014059212e call     qword ptr [rip + 0xf21c4]
0000000140592134 shr      eax, 0x18
0000000140592137 mov      dword ptr [rbp - 0x38], eax
000000014059213a test     eax, eax
000000014059213c je       0x14058ebb1
0000000140592142 mov      rax, qword ptr [rsi + 0x20]
0000000140592146 mov      edx, edi
0000000140592148 mov      rcx, rbx
000000014059214b call     qword ptr [rip + 0xf21a7]
0000000140592151 mov      rcx, qword ptr [rbp + 0x48]
0000000140592155 shr      eax, 0x18
0000000140592158 mov      dword ptr [rbp - 0x38], eax
000000014059215b mov      rax, rbx
000000014059215e lea      rbx, [rbx + 0x1320]
0000000140592165 mov      rcx, qword ptr [rcx + 8]
0000000140592169 mov      rdx, rbx
000000014059216c mov      rax, qword ptr [rax + 0x18]
0000000140592170 mov      rax, qword ptr [rax + 0x108]
0000000140592177 call     qword ptr [rip + 0xf217b]
000000014059217d mov      rax, qword ptr [rbp + 0x60]
0000000140592181 mov      esi, dword ptr [rbp + 0x58]
0000000140592184 cmp      dword ptr [rax], esi
0000000140592186 jae      0x14058eb85
000000014059218c lea      r9, [rip + 0xde21d]
0000000140592193 jmp      0x14058eb4e
0000000140592198 mov      rbx, qword ptr [rbp + 0x48]
000000014059219c mov      edi, 0x1500c
00000001405921a1 mov      rax, qword ptr [rsi + 0x20]
00000001405921a5 mov      edx, edi
00000001405921a7 mov      rcx, rbx
00000001405921aa call     qword ptr [rip + 0xf2148]
00000001405921b0 shr      eax, 0x10
00000001405921b3 movzx    ecx, al
00000001405921b6 mov      dword ptr [rbp - 0x38], ecx
00000001405921b9 test     al, al
00000001405921bb je       0x14058ebb1
00000001405921c1 mov      rax, qword ptr [rsi + 0x20]
00000001405921c5 mov      edx, edi
00000001405921c7 mov      rcx, rbx
00000001405921ca call     qword ptr [rip + 0xf2128]
00000001405921d0 mov      rcx, qword ptr [rbp + 0x48]
00000001405921d4 shr      eax, 0x10
00000001405921d7 movzx    eax, al
00000001405921da mov      dword ptr [rbp - 0x38], eax
00000001405921dd mov      rax, rbx
00000001405921e0 mov      rcx, qword ptr [rcx + 8]
00000001405921e4 lea      rbx, [rbx + 0x1320]
00000001405921eb mov      rdx, rbx
00000001405921ee mov      rax, qword ptr [rax + 0x18]
00000001405921f2 mov      rax, qword ptr [rax + 0x108]
00000001405921f9 call     qword ptr [rip + 0xf20f9]
00000001405921ff mov      rax, qword ptr [rbp + 0x60]
0000000140592203 mov      esi, dword ptr [rbp + 0x58]
0000000140592206 cmp      dword ptr [rax], esi
0000000140592208 jae      0x14058eb85
000000014059220e lea      r9, [rip + 0xde1cb]
0000000140592215 jmp      0x14058eb4e
000000014059221a mov      rbx, qword ptr [rbp + 0x48]
000000014059221e mov      edi, 0x1500c
0000000140592223 mov      rax, qword ptr [rsi + 0x10]
0000000140592227 mov      edx, edi
0000000140592229 mov      rcx, rbx
000000014059222c call     qword ptr [rip + 0xf20c6]
0000000140592232 movzx    eax, ax
0000000140592235 shr      eax, 8
0000000140592238 mov      dword ptr [rbp - 0x38], eax
000000014059223b test     eax, eax
000000014059223d je       0x14058ebb1
0000000140592243 mov      rax, qword ptr [rsi + 0x10]
0000000140592247 mov      edx, edi
0000000140592249 mov      rcx, rbx
000000014059224c call     qword ptr [rip + 0xf20a6]
0000000140592252 mov      rcx, qword ptr [rbp + 0x48]
0000000140592256 movzx    eax, ax
0000000140592259 shr      eax, 8
000000014059225c mov      dword ptr [rbp - 0x38], eax
000000014059225f mov      rax, rbx
0000000140592262 mov      rcx, qword ptr [rcx + 8]
0000000140592266 lea      rbx, [rbx + 0x1320]
000000014059226d mov      rdx, rbx
0000000140592270 mov      rax, qword ptr [rax + 0x18]
0000000140592274 mov      rax, qword ptr [rax + 0x108]
000000014059227b call     qword ptr [rip + 0xf2077]
0000000140592281 mov      rax, qword ptr [rbp + 0x60]
0000000140592285 mov      esi, dword ptr [rbp + 0x58]
0000000140592288 cmp      dword ptr [rax], esi
000000014059228a jae      0x14058eb85
0000000140592290 lea      r9, [rip + 0xde179]
0000000140592297 jmp      0x14058eb4e
000000014059229c mov      rbx, qword ptr [rbp + 0x48]
00000001405922a0 mov      edi, 0x1500c
00000001405922a5 mov      rax, qword ptr [rsi]
00000001405922a8 mov      edx, edi
00000001405922aa mov      rcx, rbx
00000001405922ad call     qword ptr [rip + 0xf2045]
00000001405922b3 movzx    eax, al
00000001405922b6 mov      dword ptr [rbp - 0x38], eax
00000001405922b9 test     eax, eax
00000001405922bb je       0x14058ebb1
00000001405922c1 mov      rax, qword ptr [rsi]
00000001405922c4 mov      edx, edi
00000001405922c6 mov      rcx, rbx
00000001405922c9 call     qword ptr [rip + 0xf2029]
00000001405922cf mov      rcx, qword ptr [rbp + 0x48]
00000001405922d3 movzx    eax, al
00000001405922d6 mov      dword ptr [rbp - 0x38], eax
00000001405922d9 mov      rax, rbx
00000001405922dc lea      rbx, [rbx + 0x1320]
00000001405922e3 mov      rcx, qword ptr [rcx + 8]
00000001405922e7 mov      rdx, rbx
00000001405922ea mov      rax, qword ptr [rax + 0x18]
00000001405922ee mov      rax, qword ptr [rax + 0x108]
00000001405922f5 call     qword ptr [rip + 0xf1ffd]
00000001405922fb mov      rax, qword ptr [rbp + 0x60]
00000001405922ff mov      esi, dword ptr [rbp + 0x58]
0000000140592302 cmp      dword ptr [rax], esi
0000000140592304 jae      0x14058eb85
000000014059230a lea      r9, [rip + 0xde12f]
0000000140592311 jmp      0x14058eb4e
0000000140592316 mov      rbx, qword ptr [rbp + 0x48]
000000014059231a mov      edi, 0x15010
000000014059231f mov      rax, qword ptr [rsi + 0x20]
0000000140592323 mov      edx, edi
0000000140592325 mov      rcx, rbx
0000000140592328 call     qword ptr [rip + 0xf1fca]
000000014059232e shr      eax, 0x18
0000000140592331 mov      dword ptr [rbp - 0x38], eax
0000000140592334 test     eax, eax
0000000140592336 je       0x14058ebb1
000000014059233c mov      rax, qword ptr [rsi + 0x20]
0000000140592340 mov      edx, edi
0000000140592342 mov      rcx, rbx
0000000140592345 call     qword ptr [rip + 0xf1fad]
000000014059234b mov      rcx, qword ptr [rbp + 0x48]
000000014059234f shr      eax, 0x18
0000000140592352 mov      dword ptr [rbp - 0x38], eax
0000000140592355 mov      rax, rbx
0000000140592358 lea      rbx, [rbx + 0x1320]
000000014059235f mov      rcx, qword ptr [rcx + 8]
0000000140592363 mov      rdx, rbx
0000000140592366 mov      rax, qword ptr [rax + 0x18]
000000014059236a mov      rax, qword ptr [rax + 0x108]
0000000140592371 call     qword ptr [rip + 0xf1f81]
0000000140592377 mov      rax, qword ptr [rbp + 0x60]
000000014059237b mov      esi, dword ptr [rbp + 0x58]
000000014059237e cmp      dword ptr [rax], esi
0000000140592380 jae      0x14058eb85
0000000140592386 lea      r9, [rip + 0xde0e3]
000000014059238d jmp      0x14058eb4e
0000000140592392 mov      rbx, qword ptr [rbp + 0x48]
0000000140592396 mov      edi, 0x15010
000000014059239b mov      rax, qword ptr [rsi + 0x20]
000000014059239f mov      edx, edi
00000001405923a1 mov      rcx, rbx
00000001405923a4 call     qword ptr [rip + 0xf1f4e]
00000001405923aa shr      eax, 0x10
00000001405923ad movzx    ecx, al
00000001405923b0 mov      dword ptr [rbp - 0x38], ecx
00000001405923b3 test     al, al
00000001405923b5 je       0x14058ebb1
00000001405923bb mov      rax, qword ptr [rsi + 0x20]
00000001405923bf mov      edx, edi
00000001405923c1 mov      rcx, rbx
00000001405923c4 call     qword ptr [rip + 0xf1f2e]
00000001405923ca mov      rcx, qword ptr [rbp + 0x48]
00000001405923ce shr      eax, 0x10
00000001405923d1 movzx    eax, al
00000001405923d4 mov      dword ptr [rbp - 0x38], eax
00000001405923d7 mov      rax, rbx
00000001405923da mov      rcx, qword ptr [rcx + 8]
00000001405923de lea      rbx, [rbx + 0x1320]
00000001405923e5 mov      rdx, rbx
00000001405923e8 mov      rax, qword ptr [rax + 0x18]
00000001405923ec mov      rax, qword ptr [rax + 0x108]
00000001405923f3 call     qword ptr [rip + 0xf1eff]
00000001405923f9 mov      rax, qword ptr [rbp + 0x60]
00000001405923fd mov      esi, dword ptr [rbp + 0x58]
0000000140592400 cmp      dword ptr [rax], esi
0000000140592402 jae      0x14058eb85
0000000140592408 lea      r9, [rip + 0xde091]
000000014059240f jmp      0x14058eb4e
0000000140592414 mov      rbx, qword ptr [rbp + 0x48]
0000000140592418 mov      edi, 0x15010
000000014059241d mov      rax, qword ptr [rsi + 0x10]
0000000140592421 mov      edx, edi
0000000140592423 mov      rcx, rbx
0000000140592426 call     qword ptr [rip + 0xf1ecc]
000000014059242c movzx    eax, ax
000000014059242f shr      eax, 8
0000000140592432 mov      dword ptr [rbp - 0x38], eax
0000000140592435 test     eax, eax
0000000140592437 je       0x14058ebb1
000000014059243d mov      rax, qword ptr [rsi + 0x10]
0000000140592441 mov      edx, edi
0000000140592443 mov      rcx, rbx
0000000140592446 call     qword ptr [rip + 0xf1eac]
000000014059244c mov      rcx, qword ptr [rbp + 0x48]
0000000140592450 movzx    eax, ax
0000000140592453 shr      eax, 8
0000000140592456 mov      dword ptr [rbp - 0x38], eax
0000000140592459 mov      rax, rbx
000000014059245c mov      rcx, qword ptr [rcx + 8]
0000000140592460 lea      rbx, [rbx + 0x1320]
0000000140592467 mov      rdx, rbx
000000014059246a mov      rax, qword ptr [rax + 0x18]
000000014059246e mov      rax, qword ptr [rax + 0x108]
0000000140592475 call     qword ptr [rip + 0xf1e7d]
000000014059247b mov      rax, qword ptr [rbp + 0x60]
000000014059247f mov      esi, dword ptr [rbp + 0x58]
0000000140592482 cmp      dword ptr [rax], esi
0000000140592484 jae      0x14058eb85
000000014059248a lea      r9, [rip + 0xde03f]
0000000140592491 jmp      0x14058eb4e
0000000140592496 mov      rbx, qword ptr [rbp + 0x48]
000000014059249a mov      edi, 0x15010
000000014059249f mov      rax, qword ptr [rsi]
00000001405924a2 mov      edx, edi
00000001405924a4 mov      rcx, rbx
00000001405924a7 call     qword ptr [rip + 0xf1e4b]
00000001405924ad movzx    eax, al
00000001405924b0 mov      dword ptr [rbp - 0x38], eax
00000001405924b3 test     eax, eax
00000001405924b5 je       0x14058ebb1
00000001405924bb mov      rax, qword ptr [rsi]
00000001405924be mov      edx, edi
00000001405924c0 mov      rcx, rbx
00000001405924c3 call     qword ptr [rip + 0xf1e2f]
00000001405924c9 mov      rcx, qword ptr [rbp + 0x48]
00000001405924cd movzx    eax, al
00000001405924d0 mov      dword ptr [rbp - 0x38], eax
00000001405924d3 mov      rax, rbx
00000001405924d6 lea      rbx, [rbx + 0x1320]
00000001405924dd mov      rcx, qword ptr [rcx + 8]
00000001405924e1 mov      rdx, rbx
00000001405924e4 mov      rax, qword ptr [rax + 0x18]
00000001405924e8 mov      rax, qword ptr [rax + 0x108]
00000001405924ef call     qword ptr [rip + 0xf1e03]
00000001405924f5 mov      rax, qword ptr [rbp + 0x60]
00000001405924f9 mov      esi, dword ptr [rbp + 0x58]
00000001405924fc cmp      dword ptr [rax], esi
00000001405924fe jae      0x14058eb85
0000000140592504 lea      r9, [rip + 0xddff5]
000000014059250b jmp      0x14058eb4e
0000000140592510 mov      rbx, qword ptr [rbp + 0x48]
0000000140592514 mov      edi, 0x15014
0000000140592519 mov      rax, qword ptr [rsi + 0x20]
000000014059251d mov      edx, edi
000000014059251f mov      rcx, rbx
0000000140592522 call     qword ptr [rip + 0xf1dd0]
0000000140592528 shr      eax, 0x18
000000014059252b mov      dword ptr [rbp - 0x38], eax
000000014059252e test     eax, eax
0000000140592530 je       0x14058ebb1
0000000140592536 mov      rax, qword ptr [rsi + 0x20]
000000014059253a mov      edx, edi
000000014059253c mov      rcx, rbx
000000014059253f call     qword ptr [rip + 0xf1db3]
0000000140592545 mov      rcx, qword ptr [rbp + 0x48]
0000000140592549 shr      eax, 0x18
000000014059254c mov      dword ptr [rbp - 0x38], eax
000000014059254f mov      rax, rbx
0000000140592552 lea      rbx, [rbx + 0x1320]
0000000140592559 mov      rcx, qword ptr [rcx + 8]
000000014059255d mov      rdx, rbx
0000000140592560 mov      rax, qword ptr [rax + 0x18]
0000000140592564 mov      rax, qword ptr [rax + 0x108]
000000014059256b call     qword ptr [rip + 0xf1d87]
0000000140592571 mov      rax, qword ptr [rbp + 0x60]
0000000140592575 mov      esi, dword ptr [rbp + 0x58]
0000000140592578 cmp      dword ptr [rax], esi
000000014059257a jae      0x14058eb85
0000000140592580 lea      r9, [rip + 0xddfa9]
0000000140592587 jmp      0x14058eb4e
000000014059258c mov      rbx, qword ptr [rbp + 0x48]
0000000140592590 mov      edi, 0x15014
0000000140592595 mov      rax, qword ptr [rsi + 0x20]
0000000140592599 mov      edx, edi
000000014059259b mov      rcx, rbx
000000014059259e call     qword ptr [rip + 0xf1d54]
00000001405925a4 shr      eax, 0x10
00000001405925a7 movzx    ecx, al
00000001405925aa mov      dword ptr [rbp - 0x38], ecx
00000001405925ad test     al, al
00000001405925af je       0x14058ebb1
00000001405925b5 mov      rax, qword ptr [rsi + 0x20]
00000001405925b9 mov      edx, edi
00000001405925bb mov      rcx, rbx
00000001405925be call     qword ptr [rip + 0xf1d34]
00000001405925c4 mov      rcx, qword ptr [rbp + 0x48]
00000001405925c8 shr      eax, 0x10
00000001405925cb movzx    eax, al
00000001405925ce mov      dword ptr [rbp - 0x38], eax
00000001405925d1 mov      rax, rbx
00000001405925d4 mov      rcx, qword ptr [rcx + 8]
00000001405925d8 lea      rbx, [rbx + 0x1320]
00000001405925df mov      rdx, rbx
00000001405925e2 mov      rax, qword ptr [rax + 0x18]
00000001405925e6 mov      rax, qword ptr [rax + 0x108]
00000001405925ed call     qword ptr [rip + 0xf1d05]
00000001405925f3 mov      rax, qword ptr [rbp + 0x60]
00000001405925f7 mov      esi, dword ptr [rbp + 0x58]
00000001405925fa cmp      dword ptr [rax], esi
00000001405925fc jae      0x14058eb85
0000000140592602 lea      r9, [rip + 0xddf57]
0000000140592609 jmp      0x14058eb4e
000000014059260e mov      rbx, qword ptr [rbp + 0x48]
0000000140592612 mov      edi, 0x15014
0000000140592617 mov      rax, qword ptr [rsi + 0x10]
000000014059261b mov      edx, edi
000000014059261d mov      rcx, rbx
0000000140592620 call     qword ptr [rip + 0xf1cd2]
0000000140592626 movzx    eax, ax
0000000140592629 shr      eax, 8
000000014059262c mov      dword ptr [rbp - 0x38], eax
000000014059262f test     eax, eax
0000000140592631 je       0x14058ebb1
0000000140592637 mov      rax, qword ptr [rsi + 0x10]
000000014059263b mov      edx, edi
000000014059263d mov      rcx, rbx
0000000140592640 call     qword ptr [rip + 0xf1cb2]
0000000140592646 mov      rcx, qword ptr [rbp + 0x48]
000000014059264a movzx    eax, ax
000000014059264d shr      eax, 8
0000000140592650 mov      dword ptr [rbp - 0x38], eax
0000000140592653 mov      rax, rbx
0000000140592656 mov      rcx, qword ptr [rcx + 8]
000000014059265a lea      rbx, [rbx + 0x1320]
0000000140592661 mov      rdx, rbx
0000000140592664 mov      rax, qword ptr [rax + 0x18]
0000000140592668 mov      rax, qword ptr [rax + 0x108]
000000014059266f call     qword ptr [rip + 0xf1c83]
0000000140592675 mov      rax, qword ptr [rbp + 0x60]
0000000140592679 mov      esi, dword ptr [rbp + 0x58]
000000014059267c cmp      dword ptr [rax], esi
000000014059267e jae      0x14058eb85
0000000140592684 lea      r9, [rip + 0xddf05]
000000014059268b jmp      0x14058eb4e
0000000140592690 mov      rbx, qword ptr [rbp + 0x48]
0000000140592694 mov      edi, 0x15014
0000000140592699 mov      rax, qword ptr [rsi]
000000014059269c mov      edx, edi
000000014059269e mov      rcx, rbx
00000001405926a1 call     qword ptr [rip + 0xf1c51]
00000001405926a7 movzx    eax, al
00000001405926aa mov      dword ptr [rbp - 0x38], eax
00000001405926ad test     eax, eax
00000001405926af je       0x14058ebb1
00000001405926b5 mov      rax, qword ptr [rsi]
00000001405926b8 mov      edx, edi
00000001405926ba mov      rcx, rbx
00000001405926bd call     qword ptr [rip + 0xf1c35]
00000001405926c3 mov      rcx, qword ptr [rbp + 0x48]
00000001405926c7 movzx    eax, al
00000001405926ca mov      dword ptr [rbp - 0x38], eax
00000001405926cd mov      rax, rbx
00000001405926d0 lea      rbx, [rbx + 0x1320]
00000001405926d7 mov      rcx, qword ptr [rcx + 8]
00000001405926db mov      rdx, rbx
00000001405926de mov      rax, qword ptr [rax + 0x18]
00000001405926e2 mov      rax, qword ptr [rax + 0x108]
00000001405926e9 call     qword ptr [rip + 0xf1c09]
00000001405926ef mov      rax, qword ptr [rbp + 0x60]
00000001405926f3 mov      esi, dword ptr [rbp + 0x58]
00000001405926f6 cmp      dword ptr [rax], esi
00000001405926f8 jae      0x14058eb85
00000001405926fe lea      r9, [rip + 0xddebb]
0000000140592705 jmp      0x14058eb4e
000000014059270a mov      rbx, qword ptr [rbp + 0x48]
000000014059270e mov      edi, 0x15018
0000000140592713 mov      rax, qword ptr [rsi + 0x20]
0000000140592717 mov      edx, edi
0000000140592719 mov      rcx, rbx
000000014059271c call     qword ptr [rip + 0xf1bd6]
0000000140592722 shr      eax, 0x18
0000000140592725 mov      dword ptr [rbp - 0x38], eax
0000000140592728 test     eax, eax
000000014059272a je       0x14058ebb1
0000000140592730 mov      rax, qword ptr [rsi + 0x20]
0000000140592734 mov      edx, edi
0000000140592736 mov      rcx, rbx
0000000140592739 call     qword ptr [rip + 0xf1bb9]
000000014059273f mov      rcx, qword ptr [rbp + 0x48]
0000000140592743 shr      eax, 0x18
0000000140592746 mov      dword ptr [rbp - 0x38], eax
0000000140592749 mov      rax, rbx
000000014059274c lea      rbx, [rbx + 0x1320]
0000000140592753 mov      rcx, qword ptr [rcx + 8]
0000000140592757 mov      rdx, rbx
000000014059275a mov      rax, qword ptr [rax + 0x18]
000000014059275e mov      rax, qword ptr [rax + 0x108]
0000000140592765 call     qword ptr [rip + 0xf1b8d]
000000014059276b mov      rax, qword ptr [rbp + 0x60]
000000014059276f mov      esi, dword ptr [rbp + 0x58]
0000000140592772 cmp      dword ptr [rax], esi
0000000140592774 jae      0x14058eb85
000000014059277a lea      r9, [rip + 0xdde6f]
0000000140592781 jmp      0x14058eb4e
0000000140592786 mov      rbx, qword ptr [rbp + 0x48]
000000014059278a mov      edi, 0x15018
000000014059278f mov      rax, qword ptr [rsi + 0x20]
0000000140592793 mov      edx, edi
0000000140592795 mov      rcx, rbx
0000000140592798 call     qword ptr [rip + 0xf1b5a]
000000014059279e shr      eax, 0x10
00000001405927a1 movzx    ecx, al
00000001405927a4 mov      dword ptr [rbp - 0x38], ecx
00000001405927a7 test     al, al
00000001405927a9 je       0x14058ebb1
00000001405927af mov      rax, qword ptr [rsi + 0x20]
00000001405927b3 mov      edx, edi
00000001405927b5 mov      rcx, rbx
00000001405927b8 call     qword ptr [rip + 0xf1b3a]
00000001405927be mov      rcx, qword ptr [rbp + 0x48]
00000001405927c2 shr      eax, 0x10
00000001405927c5 movzx    eax, al
00000001405927c8 mov      dword ptr [rbp - 0x38], eax
00000001405927cb mov      rax, rbx
00000001405927ce mov      rcx, qword ptr [rcx + 8]
00000001405927d2 lea      rbx, [rbx + 0x1320]
00000001405927d9 mov      rdx, rbx
00000001405927dc mov      rax, qword ptr [rax + 0x18]
00000001405927e0 mov      rax, qword ptr [rax + 0x108]
00000001405927e7 call     qword ptr [rip + 0xf1b0b]
00000001405927ed mov      rax, qword ptr [rbp + 0x60]
00000001405927f1 mov      esi, dword ptr [rbp + 0x58]
00000001405927f4 cmp      dword ptr [rax], esi
00000001405927f6 jae      0x14058eb85
00000001405927fc lea      r9, [rip + 0xdde1d]
0000000140592803 jmp      0x14058eb4e
0000000140592808 mov      rbx, qword ptr [rbp + 0x48]
000000014059280c mov      edi, 0x15018
0000000140592811 mov      rax, qword ptr [rsi + 0x10]
0000000140592815 mov      edx, edi
0000000140592817 mov      rcx, rbx
000000014059281a call     qword ptr [rip + 0xf1ad8]
0000000140592820 movzx    eax, ax
0000000140592823 shr      eax, 8
0000000140592826 mov      dword ptr [rbp - 0x38], eax
0000000140592829 test     eax, eax
000000014059282b je       0x14058ebb1
0000000140592831 mov      rax, qword ptr [rsi + 0x10]
0000000140592835 mov      edx, edi
0000000140592837 mov      rcx, rbx
000000014059283a call     qword ptr [rip + 0xf1ab8]
0000000140592840 mov      rcx, qword ptr [rbp + 0x48]
0000000140592844 movzx    eax, ax
0000000140592847 shr      eax, 8
000000014059284a mov      dword ptr [rbp - 0x38], eax
000000014059284d mov      rax, rbx
0000000140592850 mov      rcx, qword ptr [rcx + 8]
0000000140592854 lea      rbx, [rbx + 0x1320]
000000014059285b mov      rdx, rbx
000000014059285e mov      rax, qword ptr [rax + 0x18]
0000000140592862 mov      rax, qword ptr [rax + 0x108]
0000000140592869 call     qword ptr [rip + 0xf1a89]
000000014059286f mov      rax, qword ptr [rbp + 0x60]
0000000140592873 mov      esi, dword ptr [rbp + 0x58]
0000000140592876 cmp      dword ptr [rax], esi
0000000140592878 jae      0x14058eb85
000000014059287e lea      r9, [rip + 0xdddcb]
0000000140592885 jmp      0x14058eb4e
000000014059288a mov      rbx, qword ptr [rbp + 0x48]
000000014059288e mov      edi, 0x15018
0000000140592893 mov      rax, qword ptr [rsi]
0000000140592896 mov      edx, edi
0000000140592898 mov      rcx, rbx
000000014059289b call     qword ptr [rip + 0xf1a57]
00000001405928a1 movzx    eax, al
00000001405928a4 mov      dword ptr [rbp - 0x38], eax
00000001405928a7 test     eax, eax
00000001405928a9 je       0x14058ebb1
00000001405928af mov      rax, qword ptr [rsi]
00000001405928b2 mov      edx, edi
00000001405928b4 mov      rcx, rbx
00000001405928b7 call     qword ptr [rip + 0xf1a3b]
00000001405928bd mov      rcx, qword ptr [rbp + 0x48]
00000001405928c1 movzx    eax, al
00000001405928c4 mov      dword ptr [rbp - 0x38], eax
00000001405928c7 mov      rax, rbx
00000001405928ca lea      rbx, [rbx + 0x1320]
00000001405928d1 mov      rcx, qword ptr [rcx + 8]
00000001405928d5 mov      rdx, rbx
00000001405928d8 mov      rax, qword ptr [rax + 0x18]
00000001405928dc mov      rax, qword ptr [rax + 0x108]
00000001405928e3 call     qword ptr [rip + 0xf1a0f]
00000001405928e9 mov      rax, qword ptr [rbp + 0x60]
00000001405928ed mov      esi, dword ptr [rbp + 0x58]
00000001405928f0 cmp      dword ptr [rax], esi
00000001405928f2 jae      0x14058eb85
00000001405928f8 lea      r9, [rip + 0xddd81]
00000001405928ff jmp      0x14058eb4e
0000000140592904 mov      rbx, qword ptr [rbp + 0x48]
0000000140592908 mov      edi, 0x1501c
000000014059290d mov      rax, qword ptr [rsi + 0x20]
0000000140592911 mov      edx, edi
0000000140592913 mov      rcx, rbx
0000000140592916 call     qword ptr [rip + 0xf19dc]
000000014059291c shr      eax, 0x18
000000014059291f mov      dword ptr [rbp - 0x38], eax
0000000140592922 test     eax, eax
0000000140592924 je       0x14058ebb1
000000014059292a mov      rax, qword ptr [rsi + 0x20]
000000014059292e mov      edx, edi
0000000140592930 mov      rcx, rbx
0000000140592933 call     qword ptr [rip + 0xf19bf]
0000000140592939 mov      rcx, qword ptr [rbp + 0x48]
000000014059293d shr      eax, 0x18
0000000140592940 mov      dword ptr [rbp - 0x38], eax
0000000140592943 mov      rax, rbx
0000000140592946 lea      rbx, [rbx + 0x1320]
000000014059294d mov      rcx, qword ptr [rcx + 8]
0000000140592951 mov      rdx, rbx
0000000140592954 mov      rax, qword ptr [rax + 0x18]
0000000140592958 mov      rax, qword ptr [rax + 0x108]
000000014059295f call     qword ptr [rip + 0xf1993]
0000000140592965 mov      rax, qword ptr [rbp + 0x60]
0000000140592969 mov      esi, dword ptr [rbp + 0x58]
000000014059296c cmp      dword ptr [rax], esi
000000014059296e jae      0x14058eb85
0000000140592974 lea      r9, [rip + 0xddd35]
000000014059297b jmp      0x14058eb4e
0000000140592980 mov      rbx, qword ptr [rbp + 0x48]
0000000140592984 mov      edi, 0x1501c
0000000140592989 mov      rax, qword ptr [rsi + 0x20]
000000014059298d mov      edx, edi
000000014059298f mov      rcx, rbx
0000000140592992 call     qword ptr [rip + 0xf1960]
0000000140592998 shr      eax, 0x10
000000014059299b movzx    ecx, al
000000014059299e mov      dword ptr [rbp - 0x38], ecx
00000001405929a1 test     al, al
00000001405929a3 je       0x14058ebb1
00000001405929a9 mov      rax, qword ptr [rsi + 0x20]
00000001405929ad mov      edx, edi
00000001405929af mov      rcx, rbx
00000001405929b2 call     qword ptr [rip + 0xf1940]
00000001405929b8 mov      rcx, qword ptr [rbp + 0x48]
00000001405929bc shr      eax, 0x10
00000001405929bf movzx    eax, al
00000001405929c2 mov      dword ptr [rbp - 0x38], eax
00000001405929c5 mov      rax, rbx
00000001405929c8 mov      rcx, qword ptr [rcx + 8]
00000001405929cc lea      rbx, [rbx + 0x1320]
00000001405929d3 mov      rdx, rbx
00000001405929d6 mov      rax, qword ptr [rax + 0x18]
00000001405929da mov      rax, qword ptr [rax + 0x108]
00000001405929e1 call     qword ptr [rip + 0xf1911]
00000001405929e7 mov      rax, qword ptr [rbp + 0x60]
00000001405929eb mov      esi, dword ptr [rbp + 0x58]
00000001405929ee cmp      dword ptr [rax], esi
00000001405929f0 jae      0x14058eb85
00000001405929f6 lea      r9, [rip + 0xddce3]
00000001405929fd jmp      0x14058eb4e
0000000140592a02 mov      rbx, qword ptr [rbp + 0x48]
0000000140592a06 mov      edi, 0x1501c
0000000140592a0b mov      rax, qword ptr [rsi + 0x10]
0000000140592a0f mov      edx, edi
0000000140592a11 mov      rcx, rbx
0000000140592a14 call     qword ptr [rip + 0xf18de]
0000000140592a1a movzx    eax, ax
0000000140592a1d shr      eax, 8
0000000140592a20 mov      dword ptr [rbp - 0x38], eax
0000000140592a23 test     eax, eax
0000000140592a25 je       0x14058ebb1
0000000140592a2b mov      rax, qword ptr [rsi + 0x10]
0000000140592a2f mov      edx, edi
0000000140592a31 mov      rcx, rbx
0000000140592a34 call     qword ptr [rip + 0xf18be]
0000000140592a3a mov      rcx, qword ptr [rbp + 0x48]
0000000140592a3e movzx    eax, ax
0000000140592a41 shr      eax, 8
0000000140592a44 mov      dword ptr [rbp - 0x38], eax
0000000140592a47 mov      rax, rbx
0000000140592a4a mov      rcx, qword ptr [rcx + 8]
0000000140592a4e lea      rbx, [rbx + 0x1320]
0000000140592a55 mov      rdx, rbx
0000000140592a58 mov      rax, qword ptr [rax + 0x18]
0000000140592a5c mov      rax, qword ptr [rax + 0x108]
0000000140592a63 call     qword ptr [rip + 0xf188f]
0000000140592a69 mov      rax, qword ptr [rbp + 0x60]
0000000140592a6d mov      esi, dword ptr [rbp + 0x58]
0000000140592a70 cmp      dword ptr [rax], esi
0000000140592a72 jae      0x14058eb85
0000000140592a78 lea      r9, [rip + 0xddc91]
0000000140592a7f jmp      0x14058eb4e
0000000140592a84 mov      rbx, qword ptr [rbp + 0x48]
0000000140592a88 mov      edi, 0x1501c
0000000140592a8d mov      rax, qword ptr [rsi]
0000000140592a90 mov      edx, edi
0000000140592a92 mov      rcx, rbx
0000000140592a95 call     qword ptr [rip + 0xf185d]
0000000140592a9b movzx    eax, al
0000000140592a9e mov      dword ptr [rbp - 0x38], eax
0000000140592aa1 test     eax, eax
0000000140592aa3 je       0x14058ebb1
0000000140592aa9 mov      rax, qword ptr [rsi]
0000000140592aac mov      edx, edi
0000000140592aae mov      rcx, rbx
0000000140592ab1 call     qword ptr [rip + 0xf1841]
0000000140592ab7 mov      rcx, qword ptr [rbp + 0x48]
0000000140592abb movzx    eax, al
0000000140592abe mov      dword ptr [rbp - 0x38], eax
0000000140592ac1 mov      rax, rbx
0000000140592ac4 lea      rbx, [rbx + 0x1320]
0000000140592acb mov      rcx, qword ptr [rcx + 8]
0000000140592acf mov      rdx, rbx
0000000140592ad2 mov      rax, qword ptr [rax + 0x18]
0000000140592ad6 mov      rax, qword ptr [rax + 0x108]
0000000140592add call     qword ptr [rip + 0xf1815]
0000000140592ae3 mov      rax, qword ptr [rbp + 0x60]
0000000140592ae7 mov      esi, dword ptr [rbp + 0x58]
0000000140592aea cmp      dword ptr [rax], esi
0000000140592aec jae      0x14058eb85
0000000140592af2 lea      r9, [rip + 0xddc47]
0000000140592af9 jmp      0x14058eb4e
0000000140592afe mov      rbx, qword ptr [rbp + 0x48]
0000000140592b02 mov      edi, 0x1502c
0000000140592b07 mov      rax, qword ptr [rsi + 0x10]
0000000140592b0b mov      edx, edi
0000000140592b0d mov      rcx, rbx
0000000140592b10 call     qword ptr [rip + 0xf17e2]
0000000140592b16 movzx    eax, ax
0000000140592b19 shr      eax, 8
0000000140592b1c mov      dword ptr [rbp - 0x38], eax
0000000140592b1f test     eax, eax
0000000140592b21 je       0x14058ebb1
0000000140592b27 mov      rax, qword ptr [rsi + 0x10]
0000000140592b2b mov      edx, edi
0000000140592b2d mov      rcx, rbx
0000000140592b30 call     qword ptr [rip + 0xf17c2]
0000000140592b36 mov      rcx, qword ptr [rbp + 0x48]
0000000140592b3a movzx    eax, ax
0000000140592b3d shr      eax, 8
0000000140592b40 mov      dword ptr [rbp - 0x38], eax
0000000140592b43 mov      rax, rbx
0000000140592b46 mov      rcx, qword ptr [rcx + 8]
0000000140592b4a lea      rbx, [rbx + 0x1320]
0000000140592b51 mov      rdx, rbx
0000000140592b54 mov      rax, qword ptr [rax + 0x18]
0000000140592b58 mov      rax, qword ptr [rax + 0x108]
0000000140592b5f call     qword ptr [rip + 0xf1793]
0000000140592b65 mov      rax, qword ptr [rbp + 0x60]
0000000140592b69 mov      esi, dword ptr [rbp + 0x58]
0000000140592b6c cmp      dword ptr [rax], esi
0000000140592b6e jae      0x14058eb85
0000000140592b74 lea      r9, [rip + 0xddbf5]
0000000140592b7b jmp      0x14058eb4e
0000000140592b80 mov      rbx, qword ptr [rbp + 0x48]
0000000140592b84 mov      edi, 0x1502c
0000000140592b89 mov      rax, qword ptr [rsi]
0000000140592b8c mov      edx, edi
0000000140592b8e mov      rcx, rbx
0000000140592b91 call     qword ptr [rip + 0xf1761]
0000000140592b97 movzx    eax, al
0000000140592b9a mov      dword ptr [rbp - 0x38], eax
0000000140592b9d test     eax, eax
0000000140592b9f je       0x14058ebb1
0000000140592ba5 mov      rax, qword ptr [rsi]
0000000140592ba8 mov      edx, edi
0000000140592baa mov      rcx, rbx
0000000140592bad call     qword ptr [rip + 0xf1745]
0000000140592bb3 mov      rcx, qword ptr [rbp + 0x48]
0000000140592bb7 movzx    eax, al
0000000140592bba mov      dword ptr [rbp - 0x38], eax
0000000140592bbd mov      rax, rbx
0000000140592bc0 lea      rbx, [rbx + 0x1320]
0000000140592bc7 mov      rcx, qword ptr [rcx + 8]
0000000140592bcb mov      rdx, rbx
0000000140592bce mov      rax, qword ptr [rax + 0x18]
0000000140592bd2 mov      rax, qword ptr [rax + 0x108]
0000000140592bd9 call     qword ptr [rip + 0xf1719]
0000000140592bdf mov      rax, qword ptr [rbp + 0x60]
0000000140592be3 mov      esi, dword ptr [rbp + 0x58]
0000000140592be6 cmp      dword ptr [rax], esi
0000000140592be8 jae      0x14058eb85
0000000140592bee lea      r9, [rip + 0xddbab]
0000000140592bf5 jmp      0x14058eb4e
0000000140592bfa mov      rbx, qword ptr [rbp + 0x48]
0000000140592bfe mov      edi, 0x150c0
0000000140592c03 mov      rax, qword ptr [rsi + 0x10]
0000000140592c07 mov      edx, edi
0000000140592c09 mov      rcx, rbx
0000000140592c0c call     qword ptr [rip + 0xf16e6]
0000000140592c12 shr      eax, 0xa
0000000140592c15 and      eax, r13d
0000000140592c18 mov      dword ptr [rbp - 0x38], eax
0000000140592c1b je       0x14058ebb1
0000000140592c21 mov      rax, qword ptr [rsi + 0x10]
0000000140592c25 mov      edx, edi
0000000140592c27 mov      rcx, rbx
0000000140592c2a call     qword ptr [rip + 0xf16c8]
0000000140592c30 mov      rcx, qword ptr [rbp + 0x48]
0000000140592c34 shr      eax, 0xa
0000000140592c37 and      eax, r13d
0000000140592c3a mov      dword ptr [rbp - 0x38], eax
0000000140592c3d mov      rax, rbx
0000000140592c40 mov      rcx, qword ptr [rcx + 8]
0000000140592c44 lea      rbx, [rbx + 0x1320]
0000000140592c4b mov      rdx, rbx
0000000140592c4e mov      rax, qword ptr [rax + 0x18]
0000000140592c52 mov      rax, qword ptr [rax + 0x108]
0000000140592c59 call     qword ptr [rip + 0xf1699]
0000000140592c5f mov      rax, qword ptr [rbp + 0x60]
0000000140592c63 mov      esi, dword ptr [rbp + 0x58]
0000000140592c66 cmp      dword ptr [rax], esi
0000000140592c68 jae      0x14058eb85
0000000140592c6e lea      r9, [rip + 0xddb5b]
0000000140592c75 jmp      0x14058eb4e
0000000140592c7a mov      rbx, qword ptr [rbp + 0x48]
0000000140592c7e mov      edi, 0x150c0
0000000140592c83 mov      rax, qword ptr [rsi + 0x10]
0000000140592c87 mov      edx, edi
0000000140592c89 mov      rcx, rbx
0000000140592c8c call     qword ptr [rip + 0xf1666]
0000000140592c92 shr      eax, 9
0000000140592c95 and      eax, r13d
0000000140592c98 mov      dword ptr [rbp - 0x38], eax
0000000140592c9b je       0x14058ebb1
0000000140592ca1 mov      rax, qword ptr [rsi + 0x10]
0000000140592ca5 mov      edx, edi
0000000140592ca7 mov      rcx, rbx
0000000140592caa call     qword ptr [rip + 0xf1648]
0000000140592cb0 mov      rcx, qword ptr [rbp + 0x48]
0000000140592cb4 shr      eax, 9
0000000140592cb7 and      eax, r13d
0000000140592cba mov      dword ptr [rbp - 0x38], eax
0000000140592cbd mov      rax, rbx
0000000140592cc0 mov      rcx, qword ptr [rcx + 8]
0000000140592cc4 lea      rbx, [rbx + 0x1320]
0000000140592ccb mov      rdx, rbx
0000000140592cce mov      rax, qword ptr [rax + 0x18]
0000000140592cd2 mov      rax, qword ptr [rax + 0x108]
0000000140592cd9 call     qword ptr [rip + 0xf1619]
0000000140592cdf mov      rax, qword ptr [rbp + 0x60]
0000000140592ce3 mov      esi, dword ptr [rbp + 0x58]
0000000140592ce6 cmp      dword ptr [rax], esi
0000000140592ce8 jae      0x14058eb85
0000000140592cee lea      r9, [rip + 0xddb0b]
0000000140592cf5 jmp      0x14058eb4e
0000000140592cfa mov      rbx, qword ptr [rbp + 0x48]
0000000140592cfe mov      edi, 0x150c0
0000000140592d03 mov      rax, qword ptr [rsi + 0x10]
0000000140592d07 mov      edx, edi
0000000140592d09 mov      rcx, rbx
0000000140592d0c call     qword ptr [rip + 0xf15e6]
0000000140592d12 shr      eax, 8
0000000140592d15 and      eax, r13d
0000000140592d18 mov      dword ptr [rbp - 0x38], eax
0000000140592d1b je       0x14058ebb1
0000000140592d21 mov      rax, qword ptr [rsi + 0x10]
0000000140592d25 mov      edx, edi
0000000140592d27 mov      rcx, rbx
0000000140592d2a call     qword ptr [rip + 0xf15c8]
0000000140592d30 mov      rcx, qword ptr [rbp + 0x48]
0000000140592d34 shr      eax, 8
0000000140592d37 and      eax, r13d
0000000140592d3a mov      dword ptr [rbp - 0x38], eax
0000000140592d3d mov      rax, rbx
0000000140592d40 mov      rcx, qword ptr [rcx + 8]
0000000140592d44 lea      rbx, [rbx + 0x1320]
0000000140592d4b mov      rdx, rbx
0000000140592d4e mov      rax, qword ptr [rax + 0x18]
0000000140592d52 mov      rax, qword ptr [rax + 0x108]
0000000140592d59 call     qword ptr [rip + 0xf1599]
0000000140592d5f mov      rax, qword ptr [rbp + 0x60]
0000000140592d63 mov      esi, dword ptr [rbp + 0x58]
0000000140592d66 cmp      dword ptr [rax], esi
0000000140592d68 jae      0x14058eb85
0000000140592d6e lea      r9, [rip + 0xddaab]
0000000140592d75 jmp      0x14058eb4e
0000000140592d7a mov      rbx, qword ptr [rbp + 0x48]
0000000140592d7e mov      edi, 0x150c0
0000000140592d83 mov      rax, qword ptr [rsi]
0000000140592d86 mov      edx, edi
0000000140592d88 mov      rcx, rbx
0000000140592d8b call     qword ptr [rip + 0xf1567]
0000000140592d91 movzx    eax, al
0000000140592d94 shr      eax, 7
0000000140592d97 mov      dword ptr [rbp - 0x38], eax
0000000140592d9a test     eax, eax
0000000140592d9c je       0x14058ebb1
0000000140592da2 mov      rax, qword ptr [rsi]
0000000140592da5 mov      edx, edi
0000000140592da7 mov      rcx, rbx
0000000140592daa call     qword ptr [rip + 0xf1548]
0000000140592db0 mov      rcx, qword ptr [rbp + 0x48]
0000000140592db4 movzx    eax, al
0000000140592db7 shr      eax, 7
0000000140592dba mov      dword ptr [rbp - 0x38], eax
0000000140592dbd mov      rax, rbx
0000000140592dc0 mov      rcx, qword ptr [rcx + 8]
0000000140592dc4 lea      rbx, [rbx + 0x1320]
0000000140592dcb mov      rdx, rbx
0000000140592dce mov      rax, qword ptr [rax + 0x18]
0000000140592dd2 mov      rax, qword ptr [rax + 0x108]
0000000140592dd9 call     qword ptr [rip + 0xf1519]
0000000140592ddf mov      rax, qword ptr [rbp + 0x60]
0000000140592de3 mov      esi, dword ptr [rbp + 0x58]
0000000140592de6 cmp      dword ptr [rax], esi
0000000140592de8 jae      0x14058eb85
0000000140592dee lea      r9, [rip + 0xdda4b]
0000000140592df5 jmp      0x14058eb4e
0000000140592dfa mov      rbx, qword ptr [rbp + 0x48]
0000000140592dfe mov      edi, 0x150c0
0000000140592e03 mov      rax, qword ptr [rsi]
0000000140592e06 mov      edx, edi
0000000140592e08 mov      rcx, rbx
0000000140592e0b call     qword ptr [rip + 0xf14e7]
0000000140592e11 shr      eax, 6
0000000140592e14 and      eax, r13d
0000000140592e17 mov      dword ptr [rbp - 0x38], eax
0000000140592e1a je       0x14058ebb1
0000000140592e20 mov      rax, qword ptr [rsi]
0000000140592e23 mov      edx, edi
0000000140592e25 mov      rcx, rbx
0000000140592e28 call     qword ptr [rip + 0xf14ca]
0000000140592e2e mov      rcx, qword ptr [rbp + 0x48]
0000000140592e32 shr      eax, 6
0000000140592e35 and      eax, r13d
0000000140592e38 mov      dword ptr [rbp - 0x38], eax
0000000140592e3b mov      rax, rbx
0000000140592e3e mov      rcx, qword ptr [rcx + 8]
0000000140592e42 lea      rbx, [rbx + 0x1320]
0000000140592e49 mov      rdx, rbx
0000000140592e4c mov      rax, qword ptr [rax + 0x18]
0000000140592e50 mov      rax, qword ptr [rax + 0x108]
0000000140592e57 call     qword ptr [rip + 0xf149b]
0000000140592e5d mov      rax, qword ptr [rbp + 0x60]
0000000140592e61 mov      esi, dword ptr [rbp + 0x58]
0000000140592e64 cmp      dword ptr [rax], esi
0000000140592e66 jae      0x14058eb85
0000000140592e6c lea      r9, [rip + 0xdd9ed]
0000000140592e73 jmp      0x14058eb4e
0000000140592e78 mov      rbx, qword ptr [rbp + 0x48]
0000000140592e7c mov      edi, 0x150c0
0000000140592e81 mov      rax, qword ptr [rsi]
0000000140592e84 mov      edx, edi
0000000140592e86 mov      rcx, rbx
0000000140592e89 call     qword ptr [rip + 0xf1469]
0000000140592e8f shr      eax, 5
0000000140592e92 and      eax, r13d
0000000140592e95 mov      dword ptr [rbp - 0x38], eax
0000000140592e98 je       0x14058ebb1
0000000140592e9e mov      rax, qword ptr [rsi]
0000000140592ea1 mov      edx, edi
0000000140592ea3 mov      rcx, rbx
0000000140592ea6 call     qword ptr [rip + 0xf144c]
0000000140592eac mov      rcx, qword ptr [rbp + 0x48]
0000000140592eb0 shr      eax, 5
0000000140592eb3 and      eax, r13d
0000000140592eb6 mov      dword ptr [rbp - 0x38], eax
0000000140592eb9 mov      rax, rbx
0000000140592ebc mov      rcx, qword ptr [rcx + 8]
0000000140592ec0 lea      rbx, [rbx + 0x1320]
0000000140592ec7 mov      rdx, rbx
0000000140592eca mov      rax, qword ptr [rax + 0x18]
0000000140592ece mov      rax, qword ptr [rax + 0x108]
0000000140592ed5 call     qword ptr [rip + 0xf141d]
0000000140592edb mov      rax, qword ptr [rbp + 0x60]
0000000140592edf mov      esi, dword ptr [rbp + 0x58]
0000000140592ee2 cmp      dword ptr [rax], esi
0000000140592ee4 jae      0x14058eb85
0000000140592eea lea      r9, [rip + 0xdd98f]
0000000140592ef1 jmp      0x14058eb4e
0000000140592ef6 mov      rbx, qword ptr [rbp + 0x48]
0000000140592efa mov      edi, 0x150c0
0000000140592eff mov      rax, qword ptr [rsi]
0000000140592f02 mov      edx, edi
0000000140592f04 mov      rcx, rbx
0000000140592f07 call     qword ptr [rip + 0xf13eb]
0000000140592f0d shr      eax, 4
0000000140592f10 and      eax, r13d
0000000140592f13 mov      dword ptr [rbp - 0x38], eax
0000000140592f16 je       0x14058ebb1
0000000140592f1c mov      rax, qword ptr [rsi]
0000000140592f1f mov      edx, edi
0000000140592f21 mov      rcx, rbx
0000000140592f24 call     qword ptr [rip + 0xf13ce]
0000000140592f2a mov      rcx, qword ptr [rbp + 0x48]
0000000140592f2e shr      eax, 4
0000000140592f31 and      eax, r13d
0000000140592f34 mov      dword ptr [rbp - 0x38], eax
0000000140592f37 mov      rax, rbx
0000000140592f3a mov      rcx, qword ptr [rcx + 8]
0000000140592f3e lea      rbx, [rbx + 0x1320]
0000000140592f45 mov      rdx, rbx
0000000140592f48 mov      rax, qword ptr [rax + 0x18]
0000000140592f4c mov      rax, qword ptr [rax + 0x108]
0000000140592f53 call     qword ptr [rip + 0xf139f]
0000000140592f59 mov      rax, qword ptr [rbp + 0x60]
0000000140592f5d mov      esi, dword ptr [rbp + 0x58]
0000000140592f60 cmp      dword ptr [rax], esi
0000000140592f62 jae      0x14058eb85
0000000140592f68 lea      r9, [rip + 0xdd931]
0000000140592f6f jmp      0x14058eb4e
0000000140592f74 mov      rbx, qword ptr [rbp + 0x48]
0000000140592f78 mov      edi, 0x150c0
0000000140592f7d mov      rax, qword ptr [rsi]
0000000140592f80 mov      edx, edi
0000000140592f82 mov      rcx, rbx
0000000140592f85 call     qword ptr [rip + 0xf136d]
0000000140592f8b shr      eax, 3
0000000140592f8e and      eax, r13d
0000000140592f91 mov      dword ptr [rbp - 0x38], eax
0000000140592f94 je       0x14058ebb1
0000000140592f9a mov      rax, qword ptr [rsi]
0000000140592f9d mov      edx, edi
0000000140592f9f mov      rcx, rbx
0000000140592fa2 call     qword ptr [rip + 0xf1350]
0000000140592fa8 mov      rcx, qword ptr [rbp + 0x48]
0000000140592fac shr      eax, 3
0000000140592faf and      eax, r13d
0000000140592fb2 mov      dword ptr [rbp - 0x38], eax
0000000140592fb5 mov      rax, rbx
0000000140592fb8 mov      rcx, qword ptr [rcx + 8]
0000000140592fbc lea      rbx, [rbx + 0x1320]
0000000140592fc3 mov      rdx, rbx
0000000140592fc6 mov      rax, qword ptr [rax + 0x18]
0000000140592fca mov      rax, qword ptr [rax + 0x108]
0000000140592fd1 call     qword ptr [rip + 0xf1321]
0000000140592fd7 mov      rax, qword ptr [rbp + 0x60]
0000000140592fdb mov      esi, dword ptr [rbp + 0x58]
0000000140592fde cmp      dword ptr [rax], esi
0000000140592fe0 jae      0x14058eb85
0000000140592fe6 lea      r9, [rip + 0xdd8d3]
0000000140592fed jmp      0x14058eb4e
0000000140592ff2 mov      rbx, qword ptr [rbp + 0x48]
0000000140592ff6 mov      edi, 0x150c0
0000000140592ffb mov      rax, qword ptr [rsi]
0000000140592ffe mov      edx, edi
0000000140593000 mov      rcx, rbx
0000000140593003 call     qword ptr [rip + 0xf12ef]
0000000140593009 shr      eax, 2
000000014059300c and      eax, r13d
000000014059300f mov      dword ptr [rbp - 0x38], eax
0000000140593012 je       0x14058ebb1
0000000140593018 mov      rax, qword ptr [rsi]
000000014059301b mov      edx, edi
000000014059301d mov      rcx, rbx
0000000140593020 call     qword ptr [rip + 0xf12d2]
0000000140593026 mov      rcx, qword ptr [rbp + 0x48]
000000014059302a shr      eax, 2
000000014059302d and      eax, r13d
0000000140593030 mov      dword ptr [rbp - 0x38], eax
0000000140593033 mov      rax, rbx
0000000140593036 mov      rcx, qword ptr [rcx + 8]
000000014059303a lea      rbx, [rbx + 0x1320]
0000000140593041 mov      rdx, rbx
0000000140593044 mov      rax, qword ptr [rax + 0x18]
0000000140593048 mov      rax, qword ptr [rax + 0x108]
000000014059304f call     qword ptr [rip + 0xf12a3]
0000000140593055 mov      rax, qword ptr [rbp + 0x60]
0000000140593059 mov      esi, dword ptr [rbp + 0x58]
000000014059305c cmp      dword ptr [rax], esi
000000014059305e jae      0x14058eb85
0000000140593064 lea      r9, [rip + 0xdd875]
000000014059306b jmp      0x14058eb4e
0000000140593070 mov      rbx, qword ptr [rbp + 0x48]
0000000140593074 mov      edi, 0x150c0
0000000140593079 mov      rax, qword ptr [rsi]
000000014059307c mov      edx, edi
000000014059307e mov      rcx, rbx
0000000140593081 call     qword ptr [rip + 0xf1271]
0000000140593087 shr      eax, 1
0000000140593089 and      eax, r13d
000000014059308c mov      dword ptr [rbp - 0x38], eax
000000014059308f je       0x14058ebb1
0000000140593095 mov      rax, qword ptr [rsi]
0000000140593098 mov      edx, edi
000000014059309a mov      rcx, rbx
000000014059309d call     qword ptr [rip + 0xf1255]
00000001405930a3 mov      rcx, qword ptr [rbp + 0x48]
00000001405930a7 shr      eax, 1
00000001405930a9 and      eax, r13d
00000001405930ac mov      dword ptr [rbp - 0x38], eax
00000001405930af mov      rax, rbx
00000001405930b2 mov      rcx, qword ptr [rcx + 8]
00000001405930b6 lea      rbx, [rbx + 0x1320]
00000001405930bd mov      rdx, rbx
00000001405930c0 mov      rax, qword ptr [rax + 0x18]
00000001405930c4 mov      rax, qword ptr [rax + 0x108]
00000001405930cb call     qword ptr [rip + 0xf1227]
00000001405930d1 mov      rax, qword ptr [rbp + 0x60]
00000001405930d5 mov      esi, dword ptr [rbp + 0x58]
00000001405930d8 cmp      dword ptr [rax], esi
00000001405930da jae      0x14058eb85
00000001405930e0 lea      r9, [rip + 0xdd819]
00000001405930e7 jmp      0x14058eb4e
00000001405930ec mov      rbx, qword ptr [rbp + 0x48]
00000001405930f0 mov      edi, 0x150c0
00000001405930f5 mov      rax, qword ptr [rsi]
00000001405930f8 mov      edx, edi
00000001405930fa mov      rcx, rbx
00000001405930fd call     qword ptr [rip + 0xf11f5]
0000000140593103 and      eax, r13d
0000000140593106 mov      dword ptr [rbp - 0x38], eax
0000000140593109 je       0x14058ebb1
000000014059310f mov      rax, qword ptr [rsi]
0000000140593112 mov      edx, edi
0000000140593114 mov      rcx, rbx
0000000140593117 call     qword ptr [rip + 0xf11db]
000000014059311d mov      rcx, qword ptr [rbp + 0x48]
0000000140593121 and      eax, r13d
0000000140593124 mov      dword ptr [rbp - 0x38], eax
0000000140593127 mov      rax, rbx
000000014059312a lea      rbx, [rbx + 0x1320]
0000000140593131 mov      rdx, rbx
0000000140593134 mov      rcx, qword ptr [rcx + 8]
0000000140593138 mov      rax, qword ptr [rax + 0x18]
000000014059313c mov      rax, qword ptr [rax + 0x108]
0000000140593143 call     qword ptr [rip + 0xf11af]
0000000140593149 mov      rax, qword ptr [rbp + 0x60]
000000014059314d mov      esi, dword ptr [rbp + 0x58]
0000000140593150 cmp      dword ptr [rax], esi
0000000140593152 jae      0x14058eb85
0000000140593158 lea      r9, [rip + 0xdd7c1]
000000014059315f jmp      0x14058eb4e
0000000140593164 mov      rbx, qword ptr [rbp + 0x48]
0000000140593168 mov      edi, 0x150fc
000000014059316d mov      rax, qword ptr [rsi]
0000000140593170 mov      edx, edi
0000000140593172 mov      rcx, rbx
0000000140593175 call     qword ptr [rip + 0xf117d]
000000014059317b shr      eax, 5
000000014059317e and      eax, r13d
0000000140593181 mov      dword ptr [rbp - 0x38], eax
0000000140593184 je       0x14058ebb1
000000014059318a mov      rax, qword ptr [rsi]
000000014059318d mov      edx, edi
000000014059318f mov      rcx, rbx
0000000140593192 call     qword ptr [rip + 0xf1160]
0000000140593198 mov      rcx, qword ptr [rbp + 0x48]
000000014059319c shr      eax, 5
000000014059319f and      eax, r13d
00000001405931a2 mov      dword ptr [rbp - 0x38], eax
00000001405931a5 mov      rax, rbx
00000001405931a8 mov      rcx, qword ptr [rcx + 8]
00000001405931ac lea      rbx, [rbx + 0x1320]
00000001405931b3 mov      rdx, rbx
00000001405931b6 mov      rax, qword ptr [rax + 0x18]
00000001405931ba mov      rax, qword ptr [rax + 0x108]
00000001405931c1 call     qword ptr [rip + 0xf1131]
00000001405931c7 mov      rax, qword ptr [rbp + 0x60]
00000001405931cb mov      esi, dword ptr [rbp + 0x58]
00000001405931ce cmp      dword ptr [rax], esi
00000001405931d0 jae      0x14058eb85
00000001405931d6 lea      r9, [rip + 0xdd763]
00000001405931dd jmp      0x14058eb4e
00000001405931e2 mov      rbx, qword ptr [rbp + 0x48]
00000001405931e6 mov      edi, 0x150fc
00000001405931eb mov      rax, qword ptr [rsi]
00000001405931ee mov      edx, edi
00000001405931f0 mov      rcx, rbx
00000001405931f3 call     qword ptr [rip + 0xf10ff]
00000001405931f9 shr      eax, 4
00000001405931fc and      eax, r13d
00000001405931ff mov      dword ptr [rbp - 0x38], eax
0000000140593202 je       0x14058ebb1
0000000140593208 mov      rax, qword ptr [rsi]
000000014059320b mov      edx, edi
000000014059320d mov      rcx, rbx
0000000140593210 call     qword ptr [rip + 0xf10e2]
0000000140593216 mov      rcx, qword ptr [rbp + 0x48]
000000014059321a shr      eax, 4
000000014059321d and      eax, r13d
0000000140593220 mov      dword ptr [rbp - 0x38], eax
0000000140593223 mov      rax, rbx
0000000140593226 mov      rcx, qword ptr [rcx + 8]
000000014059322a lea      rbx, [rbx + 0x1320]
0000000140593231 mov      rdx, rbx
0000000140593234 mov      rax, qword ptr [rax + 0x18]
0000000140593238 mov      rax, qword ptr [rax + 0x108]
000000014059323f call     qword ptr [rip + 0xf10b3]
0000000140593245 mov      rax, qword ptr [rbp + 0x60]
0000000140593249 mov      esi, dword ptr [rbp + 0x58]
000000014059324c cmp      dword ptr [rax], esi
000000014059324e jae      0x14058eb85
0000000140593254 lea      r9, [rip + 0xdd705]
000000014059325b jmp      0x14058eb4e
0000000140593260 mov      rbx, qword ptr [rbp + 0x48]
0000000140593264 mov      edi, 0x150fc
0000000140593269 mov      rax, qword ptr [rsi]
000000014059326c mov      edx, edi
000000014059326e mov      rcx, rbx
0000000140593271 call     qword ptr [rip + 0xf1081]
0000000140593277 shr      eax, 3
000000014059327a and      eax, r13d
000000014059327d mov      dword ptr [rbp - 0x38], eax
0000000140593280 je       0x14058ebb1
0000000140593286 mov      rax, qword ptr [rsi]
0000000140593289 mov      edx, edi
000000014059328b mov      rcx, rbx
000000014059328e call     qword ptr [rip + 0xf1064]
0000000140593294 mov      rcx, qword ptr [rbp + 0x48]
0000000140593298 shr      eax, 3
000000014059329b and      eax, r13d
000000014059329e mov      dword ptr [rbp - 0x38], eax
00000001405932a1 mov      rax, rbx
00000001405932a4 mov      rcx, qword ptr [rcx + 8]
00000001405932a8 lea      rbx, [rbx + 0x1320]
00000001405932af mov      rdx, rbx
00000001405932b2 mov      rax, qword ptr [rax + 0x18]
00000001405932b6 mov      rax, qword ptr [rax + 0x108]
00000001405932bd call     qword ptr [rip + 0xf1035]
00000001405932c3 mov      rax, qword ptr [rbp + 0x60]
00000001405932c7 mov      esi, dword ptr [rbp + 0x58]
00000001405932ca cmp      dword ptr [rax], esi
00000001405932cc jae      0x14058eaac
00000001405932d2 lea      r9, [rip + 0xdd6a7]
00000001405932d9 jmp      0x14058ea75
00000001405932de mov      rbx, qword ptr [rbp + 0x48]
00000001405932e2 mov      edi, 0x150fc
00000001405932e7 mov      rax, qword ptr [rsi]
00000001405932ea mov      edx, edi
00000001405932ec mov      rcx, rbx
00000001405932ef call     qword ptr [rip + 0xf1003]
00000001405932f5 shr      eax, 2
00000001405932f8 and      eax, r13d
00000001405932fb mov      dword ptr [rbp - 0x38], eax
00000001405932fe je       0x14058ebb1
0000000140593304 mov      rax, qword ptr [rsi]
0000000140593307 mov      edx, edi
0000000140593309 mov      rcx, rbx
000000014059330c call     qword ptr [rip + 0xf0fe6]
0000000140593312 mov      rcx, qword ptr [rbp + 0x48]
0000000140593316 shr      eax, 2
0000000140593319 and      eax, r13d
000000014059331c mov      dword ptr [rbp - 0x38], eax
000000014059331f mov      rax, rbx
0000000140593322 mov      rcx, qword ptr [rcx + 8]
0000000140593326 lea      rbx, [rbx + 0x1320]
000000014059332d mov      rdx, rbx
0000000140593330 mov      rax, qword ptr [rax + 0x18]
0000000140593334 mov      rax, qword ptr [rax + 0x108]
000000014059333b call     qword ptr [rip + 0xf0fb7]
0000000140593341 mov      rax, qword ptr [rbp + 0x60]
0000000140593345 mov      esi, dword ptr [rbp + 0x58]
0000000140593348 cmp      dword ptr [rax], esi
000000014059334a jae      0x14058eaac
0000000140593350 lea      r9, [rip + 0xdd649]
0000000140593357 jmp      0x14058ea75
000000014059335c mov      rbx, qword ptr [rbp + 0x48]
0000000140593360 mov      edi, 0x150fc
0000000140593365 mov      rax, qword ptr [rsi]
0000000140593368 mov      edx, edi
000000014059336a mov      rcx, rbx
000000014059336d call     qword ptr [rip + 0xf0f85]
0000000140593373 shr      eax, 1
0000000140593375 and      eax, r13d
0000000140593378 mov      dword ptr [rbp - 0x38], eax
000000014059337b je       0x14058ebb1
0000000140593381 mov      rax, qword ptr [rsi]
0000000140593384 mov      edx, edi
0000000140593386 mov      rcx, rbx
0000000140593389 call     qword ptr [rip + 0xf0f69]
000000014059338f mov      rcx, qword ptr [rbp + 0x48]
0000000140593393 shr      eax, 1
0000000140593395 and      eax, r13d
0000000140593398 mov      dword ptr [rbp - 0x38], eax
000000014059339b mov      rax, rbx
000000014059339e mov      rcx, qword ptr [rcx + 8]
00000001405933a2 lea      rbx, [rbx + 0x1320]
00000001405933a9 mov      rdx, rbx
00000001405933ac mov      rax, qword ptr [rax + 0x18]
00000001405933b0 mov      rax, qword ptr [rax + 0x108]
00000001405933b7 call     qword ptr [rip + 0xf0f3b]
00000001405933bd mov      rax, qword ptr [rbp + 0x60]
00000001405933c1 mov      esi, dword ptr [rbp + 0x58]
00000001405933c4 cmp      dword ptr [rax], esi
00000001405933c6 jae      0x14058eaac
00000001405933cc lea      r9, [rip + 0xdd5ed]
00000001405933d3 jmp      0x14058ea75
00000001405933d8 mov      rbx, qword ptr [rbp + 0x48]
00000001405933dc mov      edi, 0x150fc
00000001405933e1 mov      rax, qword ptr [rsi]
00000001405933e4 mov      edx, edi
00000001405933e6 mov      rcx, rbx
00000001405933e9 call     qword ptr [rip + 0xf0f09]
00000001405933ef and      eax, r13d
00000001405933f2 mov      dword ptr [rbp - 0x38], eax
00000001405933f5 je       0x14058ebb1
00000001405933fb mov      rax, qword ptr [rsi]
00000001405933fe mov      edx, edi
0000000140593400 mov      rcx, rbx
0000000140593403 call     qword ptr [rip + 0xf0eef]
0000000140593409 mov      rcx, qword ptr [rbp + 0x48]
000000014059340d and      eax, r13d
0000000140593410 mov      dword ptr [rbp - 0x38], eax
0000000140593413 mov      rax, rbx
0000000140593416 lea      rbx, [rbx + 0x1320]
000000014059341d mov      rdx, rbx
0000000140593420 mov      rcx, qword ptr [rcx + 8]
0000000140593424 mov      rax, qword ptr [rax + 0x18]
0000000140593428 mov      rax, qword ptr [rax + 0x108]
000000014059342f call     qword ptr [rip + 0xf0ec3]
0000000140593435 mov      rax, qword ptr [rbp + 0x60]
0000000140593439 mov      esi, dword ptr [rbp + 0x58]
000000014059343c cmp      dword ptr [rax], esi
000000014059343e jae      0x14058eaac
0000000140593444 lea      r9, [rip + 0xdd595]
000000014059344b jmp      0x14058ea75
0000000140593450 mov      rbx, qword ptr [rbp + 0x48]
0000000140593454 mov      edi, 0x151a4
0000000140593459 mov      rax, qword ptr [rsi + 0x20]
000000014059345d mov      edx, edi
000000014059345f mov      rcx, rbx
0000000140593462 call     qword ptr [rip + 0xf0e90]
0000000140593468 shr      eax, 0x1f
000000014059346b mov      dword ptr [rbp - 0x38], eax
000000014059346e test     eax, eax
0000000140593470 je       0x14058ebb1
0000000140593476 mov      rax, qword ptr [rsi + 0x20]
000000014059347a mov      edx, edi
000000014059347c mov      rcx, rbx
000000014059347f call     qword ptr [rip + 0xf0e73]
0000000140593485 mov      rcx, qword ptr [rbp + 0x48]
0000000140593489 shr      eax, 0x1f
000000014059348c mov      dword ptr [rbp - 0x38], eax
000000014059348f mov      rax, rbx
0000000140593492 lea      rbx, [rbx + 0x1320]
0000000140593499 mov      rcx, qword ptr [rcx + 8]
000000014059349d mov      rdx, rbx
00000001405934a0 mov      rax, qword ptr [rax + 0x18]
00000001405934a4 mov      rax, qword ptr [rax + 0x108]
00000001405934ab call     qword ptr [rip + 0xf0e47]
00000001405934b1 mov      rax, qword ptr [rbp + 0x60]
00000001405934b5 mov      esi, dword ptr [rbp + 0x58]
00000001405934b8 cmp      dword ptr [rax], esi
00000001405934ba jae      0x14058eaac
00000001405934c0 lea      r9, [rip + 0xdd539]
00000001405934c7 jmp      0x14058ea75
00000001405934cc mov      rbx, qword ptr [rbp + 0x48]
00000001405934d0 mov      edi, 0x151a4
00000001405934d5 mov      rax, qword ptr [rsi + 0x20]
00000001405934d9 mov      edx, edi
00000001405934db mov      rcx, rbx
00000001405934de call     qword ptr [rip + 0xf0e14]
00000001405934e4 shr      eax, 0x1e
00000001405934e7 and      eax, r13d
00000001405934ea mov      dword ptr [rbp - 0x38], eax
00000001405934ed je       0x14058ebb1
00000001405934f3 mov      rax, qword ptr [rsi + 0x20]
00000001405934f7 mov      edx, edi
00000001405934f9 mov      rcx, rbx
00000001405934fc call     qword ptr [rip + 0xf0df6]
0000000140593502 mov      rcx, qword ptr [rbp + 0x48]
0000000140593506 shr      eax, 0x1e
0000000140593509 and      eax, r13d
000000014059350c mov      dword ptr [rbp - 0x38], eax
000000014059350f mov      rax, rbx
0000000140593512 mov      rcx, qword ptr [rcx + 8]
0000000140593516 lea      rbx, [rbx + 0x1320]
000000014059351d mov      rdx, rbx
0000000140593520 mov      rax, qword ptr [rax + 0x18]
0000000140593524 mov      rax, qword ptr [rax + 0x108]
000000014059352b call     qword ptr [rip + 0xf0dc7]
0000000140593531 mov      rax, qword ptr [rbp + 0x60]
0000000140593535 mov      esi, dword ptr [rbp + 0x58]
0000000140593538 cmp      dword ptr [rax], esi
000000014059353a jae      0x14058eaac
0000000140593540 lea      r9, [rip + 0xdd4e9]
0000000140593547 jmp      0x14058ea75
000000014059354c mov      rbx, qword ptr [rbp + 0x48]
0000000140593550 mov      edi, 0x151a4
0000000140593555 mov      rax, qword ptr [rsi + 0x20]
0000000140593559 mov      edx, edi
000000014059355b mov      rcx, rbx
000000014059355e call     qword ptr [rip + 0xf0d94]
0000000140593564 shr      eax, 0x1d
0000000140593567 and      eax, r13d
000000014059356a mov      dword ptr [rbp - 0x38], eax
000000014059356d je       0x14058ebb1
0000000140593573 mov      rax, qword ptr [rsi + 0x20]
0000000140593577 mov      edx, edi
0000000140593579 mov      rcx, rbx
000000014059357c call     qword ptr [rip + 0xf0d76]
0000000140593582 mov      rcx, qword ptr [rbp + 0x48]
0000000140593586 shr      eax, 0x1d
0000000140593589 and      eax, r13d
000000014059358c mov      dword ptr [rbp - 0x38], eax
000000014059358f mov      rax, rbx
0000000140593592 mov      rcx, qword ptr [rcx + 8]
0000000140593596 lea      rbx, [rbx + 0x1320]
000000014059359d mov      rdx, rbx
00000001405935a0 mov      rax, qword ptr [rax + 0x18]
00000001405935a4 mov      rax, qword ptr [rax + 0x108]
00000001405935ab call     qword ptr [rip + 0xf0d47]
00000001405935b1 mov      rax, qword ptr [rbp + 0x60]
00000001405935b5 mov      esi, dword ptr [rbp + 0x58]
00000001405935b8 cmp      dword ptr [rax], esi
00000001405935ba jae      0x14058eaac
00000001405935c0 lea      r9, [rip + 0xdd499]
00000001405935c7 jmp      0x14058ea75
00000001405935cc mov      rbx, qword ptr [rbp + 0x48]
00000001405935d0 mov      edi, 0x151a4
00000001405935d5 mov      rax, qword ptr [rsi + 0x20]
00000001405935d9 mov      edx, edi
00000001405935db mov      rcx, rbx
00000001405935de call     qword ptr [rip + 0xf0d14]
00000001405935e4 shr      eax, 0x1c
00000001405935e7 and      eax, r13d
00000001405935ea mov      dword ptr [rbp - 0x38], eax
00000001405935ed je       0x14058ebb1
00000001405935f3 mov      rax, qword ptr [rsi + 0x20]
00000001405935f7 mov      edx, edi
00000001405935f9 mov      rcx, rbx
00000001405935fc call     qword ptr [rip + 0xf0cf6]
0000000140593602 mov      rcx, qword ptr [rbp + 0x48]
0000000140593606 shr      eax, 0x1c
0000000140593609 and      eax, r13d
000000014059360c mov      dword ptr [rbp - 0x38], eax
000000014059360f mov      rax, rbx
0000000140593612 mov      rcx, qword ptr [rcx + 8]
0000000140593616 lea      rbx, [rbx + 0x1320]
000000014059361d mov      rdx, rbx
0000000140593620 mov      rax, qword ptr [rax + 0x18]
0000000140593624 mov      rax, qword ptr [rax + 0x108]
000000014059362b call     qword ptr [rip + 0xf0cc7]
0000000140593631 mov      rax, qword ptr [rbp + 0x60]
0000000140593635 mov      esi, dword ptr [rbp + 0x58]
0000000140593638 cmp      dword ptr [rax], esi
000000014059363a jae      0x14058eaac
0000000140593640 lea      r9, [rip + 0xdd449]
0000000140593647 jmp      0x14058ea75
000000014059364c mov      rbx, qword ptr [rbp + 0x48]
0000000140593650 mov      edi, 0x151a4
0000000140593655 mov      rax, qword ptr [rsi + 0x20]
0000000140593659 mov      edx, edi
000000014059365b mov      rcx, rbx
000000014059365e call     qword ptr [rip + 0xf0c94]
0000000140593664 shr      eax, 0x1b
0000000140593667 and      eax, r13d
000000014059366a mov      dword ptr [rbp - 0x38], eax
000000014059366d je       0x14058ebb1
0000000140593673 mov      rax, qword ptr [rsi + 0x20]
0000000140593677 mov      edx, edi
0000000140593679 mov      rcx, rbx
000000014059367c call     qword ptr [rip + 0xf0c76]
0000000140593682 mov      rcx, qword ptr [rbp + 0x48]
0000000140593686 shr      eax, 0x1b
0000000140593689 and      eax, r13d
000000014059368c mov      dword ptr [rbp - 0x38], eax
000000014059368f mov      rax, rbx
0000000140593692 mov      rcx, qword ptr [rcx + 8]
0000000140593696 lea      rbx, [rbx + 0x1320]
000000014059369d mov      rdx, rbx
00000001405936a0 mov      rax, qword ptr [rax + 0x18]
00000001405936a4 mov      rax, qword ptr [rax + 0x108]
00000001405936ab call     qword ptr [rip + 0xf0c47]
00000001405936b1 mov      rax, qword ptr [rbp + 0x60]
00000001405936b5 mov      esi, dword ptr [rbp + 0x58]
00000001405936b8 cmp      dword ptr [rax], esi
00000001405936ba jae      0x14058eaac
00000001405936c0 lea      r9, [rip + 0xdd3f9]
00000001405936c7 jmp      0x14058ea75
00000001405936cc mov      rbx, qword ptr [rbp + 0x48]
00000001405936d0 mov      edi, 0x151a4
00000001405936d5 mov      rax, qword ptr [rsi + 0x20]
00000001405936d9 mov      edx, edi
00000001405936db mov      rcx, rbx
00000001405936de call     qword ptr [rip + 0xf0c14]
00000001405936e4 shr      eax, 0x1a
00000001405936e7 and      eax, r13d
00000001405936ea mov      dword ptr [rbp - 0x38], eax
00000001405936ed je       0x14058ebb1
00000001405936f3 mov      rax, qword ptr [rsi + 0x20]
00000001405936f7 mov      edx, edi
00000001405936f9 mov      rcx, rbx
00000001405936fc call     qword ptr [rip + 0xf0bf6]
0000000140593702 mov      rcx, qword ptr [rbp + 0x48]
0000000140593706 shr      eax, 0x1a
0000000140593709 and      eax, r13d
000000014059370c mov      dword ptr [rbp - 0x38], eax
000000014059370f mov      rax, rbx
0000000140593712 mov      rcx, qword ptr [rcx + 8]
0000000140593716 lea      rbx, [rbx + 0x1320]
000000014059371d mov      rdx, rbx
0000000140593720 mov      rax, qword ptr [rax + 0x18]
0000000140593724 mov      rax, qword ptr [rax + 0x108]
000000014059372b call     qword ptr [rip + 0xf0bc7]
0000000140593731 mov      rax, qword ptr [rbp + 0x60]
0000000140593735 mov      esi, dword ptr [rbp + 0x58]
0000000140593738 cmp      dword ptr [rax], esi
000000014059373a jae      0x14058eaac
0000000140593740 lea      r9, [rip + 0xdd3a9]
0000000140593747 jmp      0x14058ea75
000000014059374c mov      rbx, qword ptr [rbp + 0x48]
0000000140593750 mov      edi, 0x151a4
0000000140593755 mov      rax, qword ptr [rsi + 0x20]
0000000140593759 mov      edx, edi
000000014059375b mov      rcx, rbx
000000014059375e call     qword ptr [rip + 0xf0b94]
0000000140593764 shr      eax, 0x19
0000000140593767 and      eax, r13d
000000014059376a mov      dword ptr [rbp - 0x38], eax
000000014059376d je       0x14058ebb1
0000000140593773 mov      rax, qword ptr [rsi + 0x20]
0000000140593777 mov      edx, edi
0000000140593779 mov      rcx, rbx
000000014059377c call     qword ptr [rip + 0xf0b76]
0000000140593782 mov      rcx, qword ptr [rbp + 0x48]
0000000140593786 shr      eax, 0x19
0000000140593789 and      eax, r13d
000000014059378c mov      dword ptr [rbp - 0x38], eax
000000014059378f mov      rax, rbx
0000000140593792 mov      rcx, qword ptr [rcx + 8]
0000000140593796 lea      rbx, [rbx + 0x1320]
000000014059379d mov      rdx, rbx
00000001405937a0 mov      rax, qword ptr [rax + 0x18]
00000001405937a4 mov      rax, qword ptr [rax + 0x108]
00000001405937ab call     qword ptr [rip + 0xf0b47]
00000001405937b1 mov      rax, qword ptr [rbp + 0x60]
00000001405937b5 mov      esi, dword ptr [rbp + 0x58]
00000001405937b8 cmp      dword ptr [rax], esi
00000001405937ba jae      0x14058eaac
00000001405937c0 lea      r9, [rip + 0xdd359]
00000001405937c7 jmp      0x14058ea75
00000001405937cc mov      rbx, qword ptr [rbp + 0x48]
00000001405937d0 mov      edi, 0x151a4
00000001405937d5 mov      rax, qword ptr [rsi + 0x20]
00000001405937d9 mov      edx, edi
00000001405937db mov      rcx, rbx
00000001405937de call     qword ptr [rip + 0xf0b14]
00000001405937e4 shr      eax, 0x18
00000001405937e7 and      eax, r13d
00000001405937ea mov      dword ptr [rbp - 0x38], eax
00000001405937ed je       0x14058ebb1
00000001405937f3 mov      rax, qword ptr [rsi + 0x20]
00000001405937f7 mov      edx, edi
00000001405937f9 mov      rcx, rbx
00000001405937fc call     qword ptr [rip + 0xf0af6]
0000000140593802 mov      rcx, qword ptr [rbp + 0x48]
0000000140593806 shr      eax, 0x18
0000000140593809 and      eax, r13d
000000014059380c mov      dword ptr [rbp - 0x38], eax
000000014059380f mov      rax, rbx
0000000140593812 mov      rcx, qword ptr [rcx + 8]
0000000140593816 lea      rbx, [rbx + 0x1320]
000000014059381d mov      rdx, rbx
0000000140593820 mov      rax, qword ptr [rax + 0x18]
0000000140593824 mov      rax, qword ptr [rax + 0x108]
000000014059382b call     qword ptr [rip + 0xf0ac7]
0000000140593831 mov      rax, qword ptr [rbp + 0x60]
0000000140593835 mov      esi, dword ptr [rbp + 0x58]
0000000140593838 cmp      dword ptr [rax], esi
000000014059383a jae      0x14058eaac
0000000140593840 lea      r9, [rip + 0xdd309]
0000000140593847 jmp      0x14058ea75
000000014059384c mov      rbx, qword ptr [rbp + 0x48]
0000000140593850 mov      edi, 0x15228
0000000140593855 mov      rax, qword ptr [rsi]
0000000140593858 mov      edx, edi
000000014059385a mov      rcx, rbx
000000014059385d call     qword ptr [rip + 0xf0a95]
0000000140593863 and      eax, r13d
0000000140593866 mov      dword ptr [rbp - 0x38], eax
0000000140593869 je       0x14058ebb1
000000014059386f mov      rax, qword ptr [rsi]
0000000140593872 mov      edx, edi
0000000140593874 mov      rcx, rbx
0000000140593877 call     qword ptr [rip + 0xf0a7b]
000000014059387d mov      rcx, qword ptr [rbp + 0x48]
0000000140593881 and      eax, r13d
0000000140593884 mov      dword ptr [rbp - 0x38], eax
0000000140593887 mov      rax, rbx
000000014059388a lea      rbx, [rbx + 0x1320]
0000000140593891 mov      rdx, rbx
0000000140593894 mov      rcx, qword ptr [rcx + 8]
0000000140593898 mov      rax, qword ptr [rax + 0x18]
000000014059389c mov      rax, qword ptr [rax + 0x108]
00000001405938a3 call     qword ptr [rip + 0xf0a4f]
00000001405938a9 mov      rax, qword ptr [rbp + 0x60]
00000001405938ad mov      esi, dword ptr [rbp + 0x58]
00000001405938b0 cmp      dword ptr [rax], esi
00000001405938b2 jae      0x14058eaac
00000001405938b8 lea      r9, [rip + 0xdd2c1]
00000001405938bf jmp      0x14058ea75
00000001405938c4 mov      rbx, qword ptr [rbp + 0x48]
00000001405938c8 mov      edi, 0x15270
00000001405938cd mov      rax, qword ptr [rsi + 0x10]
00000001405938d1 mov      edx, edi
00000001405938d3 mov      rcx, rbx
00000001405938d6 call     qword ptr [rip + 0xf0a1c]
00000001405938dc shr      eax, 0xb
00000001405938df and      eax, r13d
00000001405938e2 mov      dword ptr [rbp - 0x38], eax
00000001405938e5 je       0x14058ebb1
00000001405938eb mov      rax, qword ptr [rsi + 0x10]
00000001405938ef mov      edx, edi
00000001405938f1 mov      rcx, rbx
00000001405938f4 call     qword ptr [rip + 0xf09fe]
00000001405938fa mov      rcx, qword ptr [rbp + 0x48]
00000001405938fe shr      eax, 0xb
0000000140593901 and      eax, r13d
0000000140593904 mov      dword ptr [rbp - 0x38], eax
0000000140593907 mov      rax, rbx
000000014059390a mov      rcx, qword ptr [rcx + 8]
000000014059390e lea      rbx, [rbx + 0x1320]
0000000140593915 mov      rdx, rbx
0000000140593918 mov      rax, qword ptr [rax + 0x18]
000000014059391c mov      rax, qword ptr [rax + 0x108]
0000000140593923 call     qword ptr [rip + 0xf09cf]
0000000140593929 mov      rax, qword ptr [rbp + 0x60]
000000014059392d mov      esi, dword ptr [rbp + 0x58]
0000000140593930 cmp      dword ptr [rax], esi
0000000140593932 jae      0x14058eaac
0000000140593938 lea      r9, [rip + 0xdd261]
000000014059393f jmp      0x14058ea75
0000000140593944 mov      rbx, qword ptr [rbp + 0x48]
0000000140593948 mov      edi, 0x15270
000000014059394d mov      rax, qword ptr [rsi + 0x10]
0000000140593951 mov      edx, edi
0000000140593953 mov      rcx, rbx
0000000140593956 call     qword ptr [rip + 0xf099c]
000000014059395c shr      eax, 0xa
000000014059395f and      eax, r13d
0000000140593962 mov      dword ptr [rbp - 0x38], eax
0000000140593965 je       0x14058ebb1
000000014059396b mov      rax, qword ptr [rsi + 0x10]
000000014059396f mov      edx, edi
0000000140593971 mov      rcx, rbx
0000000140593974 call     qword ptr [rip + 0xf097e]
000000014059397a mov      rcx, qword ptr [rbp + 0x48]
000000014059397e shr      eax, 0xa
0000000140593981 and      eax, r13d
0000000140593984 mov      dword ptr [rbp - 0x38], eax
0000000140593987 mov      rax, rbx
000000014059398a mov      rcx, qword ptr [rcx + 8]
000000014059398e lea      rbx, [rbx + 0x1320]
0000000140593995 mov      rdx, rbx
0000000140593998 mov      rax, qword ptr [rax + 0x18]
000000014059399c mov      rax, qword ptr [rax + 0x108]
00000001405939a3 call     qword ptr [rip + 0xf094f]
00000001405939a9 mov      rax, qword ptr [rbp + 0x60]
00000001405939ad mov      esi, dword ptr [rbp + 0x58]
00000001405939b0 cmp      dword ptr [rax], esi
00000001405939b2 jae      0x14058eaac
00000001405939b8 lea      r9, [rip + 0xdd211]
00000001405939bf jmp      0x14058ea75
00000001405939c4 mov      rbx, qword ptr [rbp + 0x48]
00000001405939c8 mov      edi, 0x15270
00000001405939cd mov      rax, qword ptr [rsi + 0x10]
00000001405939d1 mov      edx, edi
00000001405939d3 mov      rcx, rbx
00000001405939d6 call     qword ptr [rip + 0xf091c]
00000001405939dc shr      eax, 9
00000001405939df and      eax, r13d
00000001405939e2 mov      dword ptr [rbp - 0x38], eax
00000001405939e5 je       0x14058ebb1
00000001405939eb mov      rax, qword ptr [rsi + 0x10]
00000001405939ef mov      edx, edi
00000001405939f1 mov      rcx, rbx
00000001405939f4 call     qword ptr [rip + 0xf08fe]
00000001405939fa mov      rcx, qword ptr [rbp + 0x48]
00000001405939fe shr      eax, 9
0000000140593a01 and      eax, r13d
0000000140593a04 mov      dword ptr [rbp - 0x38], eax
0000000140593a07 mov      rax, rbx
0000000140593a0a mov      rcx, qword ptr [rcx + 8]
0000000140593a0e lea      rbx, [rbx + 0x1320]
0000000140593a15 mov      rdx, rbx
0000000140593a18 mov      rax, qword ptr [rax + 0x18]
0000000140593a1c mov      rax, qword ptr [rax + 0x108]
0000000140593a23 call     qword ptr [rip + 0xf08cf]
0000000140593a29 mov      rax, qword ptr [rbp + 0x60]
0000000140593a2d mov      esi, dword ptr [rbp + 0x58]
0000000140593a30 cmp      dword ptr [rax], esi
0000000140593a32 jae      0x14058eaac
0000000140593a38 lea      r9, [rip + 0xdd1c1]
0000000140593a3f jmp      0x14058ea75
0000000140593a44 mov      rbx, qword ptr [rbp + 0x48]
0000000140593a48 mov      edi, 0x15270
0000000140593a4d mov      rax, qword ptr [rsi + 0x10]
0000000140593a51 mov      edx, edi
0000000140593a53 mov      rcx, rbx
0000000140593a56 call     qword ptr [rip + 0xf089c]
0000000140593a5c shr      eax, 8
0000000140593a5f and      eax, r13d
0000000140593a62 mov      dword ptr [rbp - 0x38], eax
0000000140593a65 je       0x14058ebb1
0000000140593a6b mov      rax, qword ptr [rsi + 0x10]
0000000140593a6f mov      edx, edi
0000000140593a71 mov      rcx, rbx
0000000140593a74 call     qword ptr [rip + 0xf087e]
0000000140593a7a mov      rcx, qword ptr [rbp + 0x48]
0000000140593a7e shr      eax, 8
0000000140593a81 and      eax, r13d
0000000140593a84 mov      dword ptr [rbp - 0x38], eax
0000000140593a87 mov      rax, rbx
0000000140593a8a mov      rcx, qword ptr [rcx + 8]
0000000140593a8e lea      rbx, [rbx + 0x1320]
0000000140593a95 mov      rdx, rbx
0000000140593a98 mov      rax, qword ptr [rax + 0x18]
0000000140593a9c mov      rax, qword ptr [rax + 0x108]
0000000140593aa3 call     qword ptr [rip + 0xf084f]
0000000140593aa9 mov      rax, qword ptr [rbp + 0x60]
0000000140593aad mov      esi, dword ptr [rbp + 0x58]
0000000140593ab0 cmp      dword ptr [rax], esi
0000000140593ab2 jae      0x14058eaac
0000000140593ab8 lea      r9, [rip + 0xdd161]
0000000140593abf jmp      0x14058ea75
0000000140593ac4 mov      rbx, qword ptr [rbp + 0x48]
0000000140593ac8 mov      edi, 0x960c
0000000140593acd mov      rax, qword ptr [rsi]
0000000140593ad0 mov      edx, edi
0000000140593ad2 mov      rcx, rbx
0000000140593ad5 call     qword ptr [rip + 0xf081d]
0000000140593adb and      eax, r13d
0000000140593ade mov      dword ptr [rbp - 0x38], eax
0000000140593ae1 je       0x14058ebb1
0000000140593ae7 mov      rax, qword ptr [rsi]
0000000140593aea mov      edx, edi
0000000140593aec mov      rcx, rbx
0000000140593aef call     qword ptr [rip + 0xf0803]
0000000140593af5 mov      rcx, qword ptr [rbp + 0x48]
0000000140593af9 and      eax, r13d
0000000140593afc mov      dword ptr [rbp - 0x38], eax
0000000140593aff mov      rax, rbx
0000000140593b02 lea      rbx, [rbx + 0x1320]
0000000140593b09 mov      rdx, rbx
0000000140593b0c mov      rcx, qword ptr [rcx + 8]
0000000140593b10 mov      rax, qword ptr [rax + 0x18]
0000000140593b14 mov      rax, qword ptr [rax + 0x108]
0000000140593b1b call     qword ptr [rip + 0xf07d7]
0000000140593b21 mov      rax, qword ptr [rbp + 0x60]
0000000140593b25 mov      esi, dword ptr [rbp + 0x58]
0000000140593b28 cmp      dword ptr [rax], esi
0000000140593b2a jae      0x14058eaac
0000000140593b30 lea      r9, [rip + 0xdd109]
0000000140593b37 jmp      0x14058ea75
0000000140593b3c mov      rbx, qword ptr [rbp + 0x48]
0000000140593b40 mov      edi, 0x960c
0000000140593b45 mov      rax, qword ptr [rsi]
0000000140593b48 mov      edx, edi
0000000140593b4a mov      rcx, rbx
0000000140593b4d call     qword ptr [rip + 0xf07a5]
0000000140593b53 shr      eax, 1
0000000140593b55 and      eax, r13d
0000000140593b58 mov      dword ptr [rbp - 0x38], eax
0000000140593b5b je       0x14058ebb1
0000000140593b61 mov      rax, qword ptr [rsi]
0000000140593b64 mov      edx, edi
0000000140593b66 mov      rcx, rbx
0000000140593b69 call     qword ptr [rip + 0xf0789]
0000000140593b6f mov      rcx, qword ptr [rbp + 0x48]
0000000140593b73 shr      eax, 1
0000000140593b75 and      eax, r13d
0000000140593b78 mov      dword ptr [rbp - 0x38], eax
0000000140593b7b mov      rax, rbx
0000000140593b7e mov      rcx, qword ptr [rcx + 8]
0000000140593b82 lea      rbx, [rbx + 0x1320]
0000000140593b89 mov      rdx, rbx
0000000140593b8c mov      rax, qword ptr [rax + 0x18]
0000000140593b90 mov      rax, qword ptr [rax + 0x108]
0000000140593b97 call     qword ptr [rip + 0xf075b]
0000000140593b9d mov      rax, qword ptr [rbp + 0x60]
0000000140593ba1 mov      esi, dword ptr [rbp + 0x58]
0000000140593ba4 cmp      dword ptr [rax], esi
0000000140593ba6 jae      0x14058eaac
0000000140593bac lea      r9, [rip + 0xdd0ad]
0000000140593bb3 jmp      0x14058ea75
0000000140593bb8 mov      rbx, qword ptr [rbp + 0x48]
0000000140593bbc mov      edi, 0x962c
0000000140593bc1 mov      rax, qword ptr [rsi]
0000000140593bc4 mov      edx, edi
0000000140593bc6 mov      rcx, rbx
0000000140593bc9 call     qword ptr [rip + 0xf0729]
0000000140593bcf and      eax, r13d
0000000140593bd2 mov      dword ptr [rbp - 0x38], eax
0000000140593bd5 je       0x14058ebb1
0000000140593bdb mov      rax, qword ptr [rsi]
0000000140593bde mov      edx, edi
0000000140593be0 mov      rcx, rbx
0000000140593be3 call     qword ptr [rip + 0xf070f]
0000000140593be9 mov      rcx, qword ptr [rbp + 0x48]
0000000140593bed and      eax, r13d
0000000140593bf0 mov      dword ptr [rbp - 0x38], eax
0000000140593bf3 mov      rax, rbx
0000000140593bf6 lea      rbx, [rbx + 0x1320]
0000000140593bfd mov      rdx, rbx
0000000140593c00 mov      rcx, qword ptr [rcx + 8]
0000000140593c04 mov      rax, qword ptr [rax + 0x18]
0000000140593c08 mov      rax, qword ptr [rax + 0x108]
0000000140593c0f call     qword ptr [rip + 0xf06e3]
0000000140593c15 mov      rax, qword ptr [rbp + 0x60]
0000000140593c19 mov      esi, dword ptr [rbp + 0x58]
0000000140593c1c cmp      dword ptr [rax], esi
0000000140593c1e jae      0x14058eaac
0000000140593c24 lea      r9, [rip + 0xdd055]
0000000140593c2b jmp      0x14058ea75
0000000140593c30 mov      rbx, qword ptr [rbp + 0x48]
0000000140593c34 mov      edi, 0x962c
0000000140593c39 mov      rax, qword ptr [rsi]
0000000140593c3c mov      edx, edi
0000000140593c3e mov      rcx, rbx
0000000140593c41 call     qword ptr [rip + 0xf06b1]
0000000140593c47 shr      eax, 1
0000000140593c49 and      eax, r13d
0000000140593c4c mov      dword ptr [rbp - 0x38], eax
0000000140593c4f je       0x14058ebb1
0000000140593c55 mov      rax, qword ptr [rsi]
0000000140593c58 mov      edx, edi
0000000140593c5a mov      rcx, rbx
0000000140593c5d call     qword ptr [rip + 0xf0695]
0000000140593c63 mov      rcx, qword ptr [rbp + 0x48]
0000000140593c67 shr      eax, 1
0000000140593c69 and      eax, r13d
0000000140593c6c mov      dword ptr [rbp - 0x38], eax
0000000140593c6f mov      rax, rbx
0000000140593c72 mov      rcx, qword ptr [rcx + 8]
0000000140593c76 lea      rbx, [rbx + 0x1320]
0000000140593c7d mov      rdx, rbx
0000000140593c80 mov      rax, qword ptr [rax + 0x18]
0000000140593c84 mov      rax, qword ptr [rax + 0x108]
0000000140593c8b call     qword ptr [rip + 0xf0667]
0000000140593c91 mov      rax, qword ptr [rbp + 0x60]
0000000140593c95 mov      esi, dword ptr [rbp + 0x58]
0000000140593c98 cmp      dword ptr [rax], esi
0000000140593c9a jae      0x14058eaac
0000000140593ca0 lea      r9, [rip + 0xdcff9]
0000000140593ca7 jmp      0x14058ea75
0000000140593cac mov      rbx, qword ptr [rbp + 0x48]
0000000140593cb0 mov      edi, 0x963c
0000000140593cb5 mov      rax, qword ptr [rsi]
0000000140593cb8 mov      edx, edi
0000000140593cba mov      rcx, rbx
0000000140593cbd call     qword ptr [rip + 0xf0635]
0000000140593cc3 and      eax, r13d
0000000140593cc6 mov      dword ptr [rbp - 0x38], eax
0000000140593cc9 je       0x14058ebb1
0000000140593ccf mov      rax, qword ptr [rsi]
0000000140593cd2 mov      edx, edi
0000000140593cd4 mov      rcx, rbx
0000000140593cd7 call     qword ptr [rip + 0xf061b]
0000000140593cdd mov      rcx, qword ptr [rbp + 0x48]
0000000140593ce1 and      eax, r13d
0000000140593ce4 mov      dword ptr [rbp - 0x38], eax
0000000140593ce7 mov      rax, rbx
0000000140593cea lea      rbx, [rbx + 0x1320]
0000000140593cf1 mov      rdx, rbx
0000000140593cf4 mov      rcx, qword ptr [rcx + 8]
0000000140593cf8 mov      rax, qword ptr [rax + 0x18]
0000000140593cfc mov      rax, qword ptr [rax + 0x108]
0000000140593d03 call     qword ptr [rip + 0xf05ef]
0000000140593d09 mov      rax, qword ptr [rbp + 0x60]
0000000140593d0d mov      esi, dword ptr [rbp + 0x58]
0000000140593d10 cmp      dword ptr [rax], esi
0000000140593d12 jae      0x14058eaac
0000000140593d18 lea      r9, [rip + 0xdcfa1]
0000000140593d1f jmp      0x14058ea75
0000000140593d24 mov      rbx, qword ptr [rbp + 0x48]
0000000140593d28 mov      edi, 0x966c
0000000140593d2d mov      rax, qword ptr [rsi]
0000000140593d30 mov      edx, edi
0000000140593d32 mov      rcx, rbx
0000000140593d35 call     qword ptr [rip + 0xf05bd]
0000000140593d3b and      eax, r13d
0000000140593d3e mov      dword ptr [rbp - 0x38], eax
0000000140593d41 je       0x14058ebb1
0000000140593d47 mov      rax, qword ptr [rsi]
0000000140593d4a mov      edx, edi
0000000140593d4c mov      rcx, rbx
0000000140593d4f call     qword ptr [rip + 0xf05a3]
0000000140593d55 mov      rcx, qword ptr [rbp + 0x48]
0000000140593d59 and      eax, r13d
0000000140593d5c mov      dword ptr [rbp - 0x38], eax
0000000140593d5f mov      rax, rbx
0000000140593d62 lea      rbx, [rbx + 0x1320]
0000000140593d69 mov      rdx, rbx
0000000140593d6c mov      rcx, qword ptr [rcx + 8]
0000000140593d70 mov      rax, qword ptr [rax + 0x18]
0000000140593d74 mov      rax, qword ptr [rax + 0x108]
0000000140593d7b call     qword ptr [rip + 0xf0577]
0000000140593d81 mov      rax, qword ptr [rbp + 0x60]
0000000140593d85 mov      esi, dword ptr [rbp + 0x58]
0000000140593d88 cmp      dword ptr [rax], esi
0000000140593d8a jae      0x14058eaac
0000000140593d90 lea      r9, [rip + 0xdcf49]
0000000140593d97 jmp      0x14058ea75
0000000140593d9c mov      rbx, qword ptr [rbp + 0x48]
0000000140593da0 mov      edi, 0x968c
0000000140593da5 mov      rax, qword ptr [rsi]
0000000140593da8 mov      edx, edi
0000000140593daa mov      rcx, rbx
0000000140593dad call     qword ptr [rip + 0xf0545]
0000000140593db3 and      eax, r13d
0000000140593db6 mov      dword ptr [rbp - 0x38], eax
0000000140593db9 je       0x14058ebb1
0000000140593dbf mov      rax, qword ptr [rsi]
0000000140593dc2 mov      edx, edi
0000000140593dc4 mov      rcx, rbx
0000000140593dc7 call     qword ptr [rip + 0xf052b]
0000000140593dcd mov      rcx, qword ptr [rbp + 0x48]
0000000140593dd1 and      eax, r13d
0000000140593dd4 mov      dword ptr [rbp - 0x38], eax
0000000140593dd7 mov      rax, rbx
0000000140593dda lea      rbx, [rbx + 0x1320]
0000000140593de1 mov      rdx, rbx
0000000140593de4 mov      rcx, qword ptr [rcx + 8]
0000000140593de8 mov      rax, qword ptr [rax + 0x18]
0000000140593dec mov      rax, qword ptr [rax + 0x108]
0000000140593df3 call     qword ptr [rip + 0xf04ff]
0000000140593df9 mov      rax, qword ptr [rbp + 0x60]
0000000140593dfd mov      esi, dword ptr [rbp + 0x58]
0000000140593e00 cmp      dword ptr [rax], esi
0000000140593e02 jae      0x14058eaac
0000000140593e08 lea      r9, [rip + 0xdcef1]
0000000140593e0f jmp      0x14058ea75
0000000140593e14 mov      rbx, qword ptr [rbp + 0x48]
0000000140593e18 mov      edi, 0x968c
0000000140593e1d mov      rax, qword ptr [rsi]
0000000140593e20 mov      edx, edi
0000000140593e22 mov      rcx, rbx
0000000140593e25 call     qword ptr [rip + 0xf04cd]
0000000140593e2b shr      eax, 1
0000000140593e2d and      eax, r13d
0000000140593e30 mov      dword ptr [rbp - 0x38], eax
0000000140593e33 je       0x14058ebb1
0000000140593e39 mov      rax, qword ptr [rsi]
0000000140593e3c mov      edx, edi
0000000140593e3e mov      rcx, rbx
0000000140593e41 call     qword ptr [rip + 0xf04b1]
0000000140593e47 mov      rcx, qword ptr [rbp + 0x48]
0000000140593e4b shr      eax, 1
0000000140593e4d and      eax, r13d
0000000140593e50 mov      dword ptr [rbp - 0x38], eax
0000000140593e53 mov      rax, rbx
0000000140593e56 mov      rcx, qword ptr [rcx + 8]
0000000140593e5a lea      rbx, [rbx + 0x1320]
0000000140593e61 mov      rdx, rbx
0000000140593e64 mov      rax, qword ptr [rax + 0x18]
0000000140593e68 mov      rax, qword ptr [rax + 0x108]
0000000140593e6f call     qword ptr [rip + 0xf0483]
0000000140593e75 mov      rax, qword ptr [rbp + 0x60]
0000000140593e79 mov      esi, dword ptr [rbp + 0x58]
0000000140593e7c cmp      dword ptr [rax], esi
0000000140593e7e jae      0x14058eaac
0000000140593e84 lea      r9, [rip + 0xdce95]
0000000140593e8b jmp      0x14058ea75
0000000140593e90 mov      rbx, qword ptr [rbp + 0x48]
0000000140593e94 mov      edi, 0x968c
0000000140593e99 mov      rax, qword ptr [rsi]
0000000140593e9c mov      edx, edi
0000000140593e9e mov      rcx, rbx
0000000140593ea1 call     qword ptr [rip + 0xf0451]
0000000140593ea7 shr      eax, 2
0000000140593eaa and      eax, r13d
0000000140593ead mov      dword ptr [rbp - 0x38], eax
0000000140593eb0 je       0x14058ebb1
0000000140593eb6 mov      rax, qword ptr [rsi]
0000000140593eb9 mov      edx, edi
0000000140593ebb mov      rcx, rbx
0000000140593ebe call     qword ptr [rip + 0xf0434]
0000000140593ec4 mov      rcx, qword ptr [rbp + 0x48]
0000000140593ec8 shr      eax, 2
0000000140593ecb and      eax, r13d
0000000140593ece mov      dword ptr [rbp - 0x38], eax
0000000140593ed1 mov      rax, rbx
0000000140593ed4 mov      rcx, qword ptr [rcx + 8]
0000000140593ed8 lea      rbx, [rbx + 0x1320]
0000000140593edf mov      rdx, rbx
0000000140593ee2 mov      rax, qword ptr [rax + 0x18]
0000000140593ee6 mov      rax, qword ptr [rax + 0x108]
0000000140593eed call     qword ptr [rip + 0xf0405]
0000000140593ef3 mov      rax, qword ptr [rbp + 0x60]
0000000140593ef7 mov      esi, dword ptr [rbp + 0x58]
0000000140593efa cmp      dword ptr [rax], esi
0000000140593efc jae      0x14058eaac
0000000140593f02 lea      r9, [rip + 0xdce37]
0000000140593f09 jmp      0x14058ea75
0000000140593f0e mov      rbx, qword ptr [rbp + 0x48]
0000000140593f12 mov      edi, 0x968c
0000000140593f17 mov      rax, qword ptr [rsi]
0000000140593f1a mov      edx, edi
0000000140593f1c mov      rcx, rbx
0000000140593f1f call     qword ptr [rip + 0xf03d3]
0000000140593f25 shr      eax, 3
0000000140593f28 and      eax, r13d
0000000140593f2b mov      dword ptr [rbp - 0x38], eax
0000000140593f2e je       0x14058ebb1
0000000140593f34 mov      rax, qword ptr [rsi]
0000000140593f37 mov      edx, edi
0000000140593f39 mov      rcx, rbx
0000000140593f3c call     qword ptr [rip + 0xf03b6]
0000000140593f42 mov      rcx, qword ptr [rbp + 0x48]
0000000140593f46 shr      eax, 3
0000000140593f49 and      eax, r13d
0000000140593f4c mov      dword ptr [rbp - 0x38], eax
0000000140593f4f mov      rax, rbx
0000000140593f52 mov      rcx, qword ptr [rcx + 8]
0000000140593f56 lea      rbx, [rbx + 0x1320]
0000000140593f5d mov      rdx, rbx
0000000140593f60 mov      rax, qword ptr [rax + 0x18]
0000000140593f64 mov      rax, qword ptr [rax + 0x108]
0000000140593f6b call     qword ptr [rip + 0xf0387]
0000000140593f71 mov      rax, qword ptr [rbp + 0x60]
0000000140593f75 mov      esi, dword ptr [rbp + 0x58]
0000000140593f78 cmp      dword ptr [rax], esi
0000000140593f7a jae      0x14058eaac
0000000140593f80 lea      r9, [rip + 0xdcdd9]
0000000140593f87 jmp      0x14058ea75
0000000140593f8c mov      rbx, qword ptr [rbp + 0x48]
0000000140593f90 mov      edi, 0x968c
0000000140593f95 mov      rax, qword ptr [rsi]
0000000140593f98 mov      edx, edi
0000000140593f9a mov      rcx, rbx
0000000140593f9d call     qword ptr [rip + 0xf0355]
0000000140593fa3 shr      eax, 4
0000000140593fa6 and      eax, r13d
0000000140593fa9 mov      dword ptr [rbp - 0x38], eax
0000000140593fac je       0x14058ebb1
0000000140593fb2 mov      rax, qword ptr [rsi]
0000000140593fb5 mov      edx, edi
0000000140593fb7 mov      rcx, rbx
0000000140593fba call     qword ptr [rip + 0xf0338]
0000000140593fc0 mov      rcx, qword ptr [rbp + 0x48]
0000000140593fc4 shr      eax, 4
0000000140593fc7 and      eax, r13d
0000000140593fca mov      dword ptr [rbp - 0x38], eax
0000000140593fcd mov      rax, rbx
0000000140593fd0 mov      rcx, qword ptr [rcx + 8]
0000000140593fd4 lea      rbx, [rbx + 0x1320]
0000000140593fdb mov      rdx, rbx
0000000140593fde mov      rax, qword ptr [rax + 0x18]
0000000140593fe2 mov      rax, qword ptr [rax + 0x108]
0000000140593fe9 call     qword ptr [rip + 0xf0309]
0000000140593fef mov      rax, qword ptr [rbp + 0x60]
0000000140593ff3 mov      esi, dword ptr [rbp + 0x58]
0000000140593ff6 cmp      dword ptr [rax], esi
0000000140593ff8 jae      0x14058eaac
0000000140593ffe lea      r9, [rip + 0xdcd7b]
0000000140594005 jmp      0x14058ea75
000000014059400a mov      rbx, qword ptr [rbp + 0x48]
000000014059400e mov      edi, 0x968c
0000000140594013 mov      rax, qword ptr [rsi + 0x10]
0000000140594017 mov      edx, edi
0000000140594019 mov      rcx, rbx
000000014059401c call     qword ptr [rip + 0xf02d6]
0000000140594022 shr      eax, 8
0000000140594025 and      eax, r13d
0000000140594028 mov      dword ptr [rbp - 0x38], eax
000000014059402b je       0x14058ebb1
0000000140594031 mov      rax, qword ptr [rsi + 0x10]
0000000140594035 mov      edx, edi
0000000140594037 mov      rcx, rbx
000000014059403a call     qword ptr [rip + 0xf02b8]
0000000140594040 mov      rcx, qword ptr [rbp + 0x48]
0000000140594044 shr      eax, 8
0000000140594047 and      eax, r13d
000000014059404a mov      dword ptr [rbp - 0x38], eax
000000014059404d mov      rax, rbx
0000000140594050 mov      rcx, qword ptr [rcx + 8]
0000000140594054 lea      rbx, [rbx + 0x1320]
000000014059405b mov      rdx, rbx
000000014059405e mov      rax, qword ptr [rax + 0x18]
0000000140594062 mov      rax, qword ptr [rax + 0x108]
0000000140594069 call     qword ptr [rip + 0xf0289]
000000014059406f mov      rax, qword ptr [rbp + 0x60]
0000000140594073 mov      esi, dword ptr [rbp + 0x58]
0000000140594076 cmp      dword ptr [rax], esi
0000000140594078 jae      0x14058eaac
000000014059407e lea      r9, [rip + 0xdcd1b]
0000000140594085 jmp      0x14058ea75
000000014059408a mov      rbx, qword ptr [rbp + 0x48]
000000014059408e mov      edi, 0x968c
0000000140594093 mov      rax, qword ptr [rsi + 0x10]
0000000140594097 mov      edx, edi
0000000140594099 mov      rcx, rbx
000000014059409c call     qword ptr [rip + 0xf0256]
00000001405940a2 shr      eax, 9
00000001405940a5 and      eax, r13d
00000001405940a8 mov      dword ptr [rbp - 0x38], eax
00000001405940ab je       0x14058ebb1
00000001405940b1 mov      rax, qword ptr [rsi + 0x10]
00000001405940b5 mov      edx, edi
00000001405940b7 mov      rcx, rbx
00000001405940ba call     qword ptr [rip + 0xf0238]
00000001405940c0 mov      rcx, qword ptr [rbp + 0x48]
00000001405940c4 shr      eax, 9
00000001405940c7 and      eax, r13d
00000001405940ca mov      dword ptr [rbp - 0x38], eax
00000001405940cd mov      rax, rbx
00000001405940d0 mov      rcx, qword ptr [rcx + 8]
00000001405940d4 lea      rbx, [rbx + 0x1320]
00000001405940db mov      rdx, rbx
00000001405940de mov      rax, qword ptr [rax + 0x18]
00000001405940e2 mov      rax, qword ptr [rax + 0x108]
00000001405940e9 call     qword ptr [rip + 0xf0209]
00000001405940ef mov      rax, qword ptr [rbp + 0x60]
00000001405940f3 mov      esi, dword ptr [rbp + 0x58]
00000001405940f6 cmp      dword ptr [rax], esi
00000001405940f8 jae      0x14058eaac
00000001405940fe lea      r9, [rip + 0xdccbb]
0000000140594105 jmp      0x14058ea75
000000014059410a mov      rbx, qword ptr [rbp + 0x48]
000000014059410e mov      edi, 0x968c
0000000140594113 mov      rax, qword ptr [rsi + 0x10]
0000000140594117 mov      edx, edi
0000000140594119 mov      rcx, rbx
000000014059411c call     qword ptr [rip + 0xf01d6]
0000000140594122 shr      eax, 0xa
0000000140594125 and      eax, r13d
0000000140594128 mov      dword ptr [rbp - 0x38], eax
000000014059412b je       0x14058ebb1
0000000140594131 mov      rax, qword ptr [rsi + 0x10]
0000000140594135 mov      edx, edi
0000000140594137 mov      rcx, rbx
000000014059413a call     qword ptr [rip + 0xf01b8]
0000000140594140 mov      rcx, qword ptr [rbp + 0x48]
0000000140594144 shr      eax, 0xa
0000000140594147 and      eax, r13d
000000014059414a mov      dword ptr [rbp - 0x38], eax
000000014059414d mov      rax, rbx
0000000140594150 mov      rcx, qword ptr [rcx + 8]
0000000140594154 lea      rbx, [rbx + 0x1320]
000000014059415b mov      rdx, rbx
000000014059415e mov      rax, qword ptr [rax + 0x18]
0000000140594162 mov      rax, qword ptr [rax + 0x108]
0000000140594169 call     qword ptr [rip + 0xf0189]
000000014059416f mov      rax, qword ptr [rbp + 0x60]
0000000140594173 mov      esi, dword ptr [rbp + 0x58]
0000000140594176 cmp      dword ptr [rax], esi
0000000140594178 jae      0x14058eaac
000000014059417e lea      r9, [rip + 0xdcc5b]
0000000140594185 jmp      0x14058ea75
000000014059418a mov      rbx, qword ptr [rbp + 0x48]
000000014059418e mov      edi, 0x968c
0000000140594193 mov      rax, qword ptr [rsi + 0x10]
0000000140594197 mov      edx, edi
0000000140594199 mov      rcx, rbx
000000014059419c call     qword ptr [rip + 0xf0156]
00000001405941a2 shr      eax, 0xb
00000001405941a5 and      eax, r13d
00000001405941a8 mov      dword ptr [rbp - 0x38], eax
00000001405941ab je       0x14058ebb1
00000001405941b1 mov      rax, qword ptr [rsi + 0x10]
00000001405941b5 mov      edx, edi
00000001405941b7 mov      rcx, rbx
00000001405941ba call     qword ptr [rip + 0xf0138]
00000001405941c0 mov      rcx, qword ptr [rbp + 0x48]
00000001405941c4 shr      eax, 0xb
00000001405941c7 and      eax, r13d
00000001405941ca mov      dword ptr [rbp - 0x38], eax
00000001405941cd mov      rax, rbx
00000001405941d0 mov      rcx, qword ptr [rcx + 8]
00000001405941d4 lea      rbx, [rbx + 0x1320]
00000001405941db mov      rdx, rbx
00000001405941de mov      rax, qword ptr [rax + 0x18]
00000001405941e2 mov      rax, qword ptr [rax + 0x108]
00000001405941e9 call     qword ptr [rip + 0xf0109]
00000001405941ef mov      rax, qword ptr [rbp + 0x60]
00000001405941f3 mov      esi, dword ptr [rbp + 0x58]
00000001405941f6 cmp      dword ptr [rax], esi
00000001405941f8 jae      0x14058eaac
00000001405941fe lea      r9, [rip + 0xdcc0b]
0000000140594205 jmp      0x14058ea75
000000014059420a mov      rbx, qword ptr [rbp + 0x48]
000000014059420e mov      edi, 0x968c
0000000140594213 mov      rax, qword ptr [rsi + 0x20]
0000000140594217 mov      edx, edi
0000000140594219 mov      rcx, rbx
000000014059421c call     qword ptr [rip + 0xf00d6]
0000000140594222 shr      eax, 0x1c
0000000140594225 and      eax, r13d
0000000140594228 mov      dword ptr [rbp - 0x38], eax
000000014059422b je       0x14058ebb1
0000000140594231 mov      rax, qword ptr [rsi + 0x20]
0000000140594235 mov      edx, edi
0000000140594237 mov      rcx, rbx
000000014059423a call     qword ptr [rip + 0xf00b8]
0000000140594240 mov      rcx, qword ptr [rbp + 0x48]
0000000140594244 shr      eax, 0x1c
0000000140594247 and      eax, r13d
000000014059424a mov      dword ptr [rbp - 0x38], eax
000000014059424d mov      rax, rbx
0000000140594250 mov      rcx, qword ptr [rcx + 8]
0000000140594254 lea      rbx, [rbx + 0x1320]
000000014059425b mov      rdx, rbx
000000014059425e mov      rax, qword ptr [rax + 0x18]
0000000140594262 mov      rax, qword ptr [rax + 0x108]
0000000140594269 call     qword ptr [rip + 0xf0089]
000000014059426f mov      rax, qword ptr [rbp + 0x60]
0000000140594273 mov      esi, dword ptr [rbp + 0x58]
0000000140594276 cmp      dword ptr [rax], esi
0000000140594278 jae      0x14058eaac
000000014059427e lea      r9, [rip + 0xdcbbb]
0000000140594285 jmp      0x14058ea75
000000014059428a mov      rbx, qword ptr [rbp + 0x48]
000000014059428e mov      edi, 0x968c
0000000140594293 mov      rax, qword ptr [rsi + 0x20]
0000000140594297 mov      edx, edi
0000000140594299 mov      rcx, rbx
000000014059429c call     qword ptr [rip + 0xf0056]
00000001405942a2 shr      eax, 0x1d
00000001405942a5 and      eax, r13d
00000001405942a8 mov      dword ptr [rbp - 0x38], eax
00000001405942ab je       0x14058ebb1
00000001405942b1 mov      rax, qword ptr [rsi + 0x20]
00000001405942b5 mov      edx, edi
00000001405942b7 mov      rcx, rbx
00000001405942ba call     qword ptr [rip + 0xf0038]
00000001405942c0 mov      rcx, qword ptr [rbp + 0x48]
00000001405942c4 shr      eax, 0x1d
00000001405942c7 and      eax, r13d
00000001405942ca mov      dword ptr [rbp - 0x38], eax
00000001405942cd mov      rax, rbx
00000001405942d0 mov      rcx, qword ptr [rcx + 8]
00000001405942d4 lea      rbx, [rbx + 0x1320]
00000001405942db mov      rdx, rbx
00000001405942de mov      rax, qword ptr [rax + 0x18]
00000001405942e2 mov      rax, qword ptr [rax + 0x108]
00000001405942e9 call     qword ptr [rip + 0xf0009]
00000001405942ef mov      rax, qword ptr [rbp + 0x60]
00000001405942f3 mov      esi, dword ptr [rbp + 0x58]
00000001405942f6 cmp      dword ptr [rax], esi
00000001405942f8 jae      0x14058eaac
00000001405942fe lea      r9, [rip + 0xdcb6b]
0000000140594305 jmp      0x14058ea75
000000014059430a mov      rbx, qword ptr [rbp + 0x48]
000000014059430e mov      edi, 0xb714
0000000140594313 mov      rax, qword ptr [rsi]
0000000140594316 mov      edx, edi
0000000140594318 mov      rcx, rbx
000000014059431b call     qword ptr [rip + 0xeffd7]
0000000140594321 and      eax, r13d
0000000140594324 mov      dword ptr [rbp - 0x38], eax
0000000140594327 je       0x14058ebb1
000000014059432d mov      rax, qword ptr [rsi]
0000000140594330 mov      edx, edi
0000000140594332 mov      rcx, rbx
0000000140594335 call     qword ptr [rip + 0xeffbd]
000000014059433b mov      rcx, qword ptr [rbp + 0x48]
000000014059433f and      eax, r13d
0000000140594342 mov      dword ptr [rbp - 0x38], eax
0000000140594345 mov      rax, rbx
0000000140594348 lea      rbx, [rbx + 0x1320]
000000014059434f mov      rdx, rbx
0000000140594352 mov      rcx, qword ptr [rcx + 8]
0000000140594356 mov      rax, qword ptr [rax + 0x18]
000000014059435a mov      rax, qword ptr [rax + 0x108]
0000000140594361 call     qword ptr [rip + 0xeff91]
0000000140594367 mov      rax, qword ptr [rbp + 0x60]
000000014059436b mov      esi, dword ptr [rbp + 0x58]
000000014059436e cmp      dword ptr [rax], esi
0000000140594370 jae      0x14058eaac
0000000140594376 lea      r9, [rip + 0xdcb23]
000000014059437d jmp      0x14058ea75
0000000140594382 mov      rbx, qword ptr [rbp + 0x48]
0000000140594386 mov      edi, 0xb714
000000014059438b mov      rax, qword ptr [rsi]
000000014059438e mov      edx, edi
0000000140594390 mov      rcx, rbx
0000000140594393 call     qword ptr [rip + 0xeff5f]
0000000140594399 shr      eax, 1
000000014059439b and      eax, r13d
000000014059439e mov      dword ptr [rbp - 0x38], eax
00000001405943a1 je       0x14058ebb1
00000001405943a7 mov      rax, qword ptr [rsi]
00000001405943aa mov      edx, edi
00000001405943ac mov      rcx, rbx
00000001405943af call     qword ptr [rip + 0xeff43]
00000001405943b5 mov      rcx, qword ptr [rbp + 0x48]
00000001405943b9 shr      eax, 1
00000001405943bb and      eax, r13d
00000001405943be mov      dword ptr [rbp - 0x38], eax
00000001405943c1 mov      rax, rbx
00000001405943c4 mov      rcx, qword ptr [rcx + 8]
00000001405943c8 lea      rbx, [rbx + 0x1320]
00000001405943cf mov      rdx, rbx
00000001405943d2 mov      rax, qword ptr [rax + 0x18]
00000001405943d6 mov      rax, qword ptr [rax + 0x108]
00000001405943dd call     qword ptr [rip + 0xeff15]
00000001405943e3 mov      rax, qword ptr [rbp + 0x60]
00000001405943e7 mov      esi, dword ptr [rbp + 0x58]
00000001405943ea cmp      dword ptr [rax], esi
00000001405943ec jae      0x14058eaac
00000001405943f2 lea      r9, [rip + 0xdcac7]
00000001405943f9 jmp      0x14058ea75
00000001405943fe mov      rbx, qword ptr [rbp + 0x48]
0000000140594402 mov      edi, 0xb714
0000000140594407 mov      rax, qword ptr [rsi]
000000014059440a mov      edx, edi
000000014059440c mov      rcx, rbx
000000014059440f call     qword ptr [rip + 0xefee3]
0000000140594415 shr      eax, 2
0000000140594418 and      eax, r13d
000000014059441b mov      dword ptr [rbp - 0x38], eax
000000014059441e je       0x14058ebb1
0000000140594424 mov      rax, qword ptr [rsi]
0000000140594427 mov      edx, edi
0000000140594429 mov      rcx, rbx
000000014059442c call     qword ptr [rip + 0xefec6]
0000000140594432 mov      rcx, qword ptr [rbp + 0x48]
0000000140594436 shr      eax, 2
0000000140594439 and      eax, r13d
000000014059443c mov      dword ptr [rbp - 0x38], eax
000000014059443f mov      rax, rbx
0000000140594442 mov      rcx, qword ptr [rcx + 8]
0000000140594446 lea      rbx, [rbx + 0x1320]
000000014059444d mov      rdx, rbx
0000000140594450 mov      rax, qword ptr [rax + 0x18]
0000000140594454 mov      rax, qword ptr [rax + 0x108]
000000014059445b call     qword ptr [rip + 0xefe97]
0000000140594461 mov      rax, qword ptr [rbp + 0x60]
0000000140594465 mov      esi, dword ptr [rbp + 0x58]
0000000140594468 cmp      dword ptr [rax], esi
000000014059446a jae      0x14058eaac
0000000140594470 lea      r9, [rip + 0xdca69]
0000000140594477 jmp      0x14058ea75
000000014059447c mov      rbx, qword ptr [rbp + 0x48]
0000000140594480 mov      edi, 0xb714
0000000140594485 mov      rax, qword ptr [rsi]
0000000140594488 mov      edx, edi
000000014059448a mov      rcx, rbx
000000014059448d call     qword ptr [rip + 0xefe65]
0000000140594493 shr      eax, 3
0000000140594496 and      eax, r13d
0000000140594499 mov      dword ptr [rbp - 0x38], eax
000000014059449c je       0x14058ebb1
00000001405944a2 mov      rax, qword ptr [rsi]
00000001405944a5 mov      edx, edi
00000001405944a7 mov      rcx, rbx
00000001405944aa call     qword ptr [rip + 0xefe48]
00000001405944b0 mov      rcx, qword ptr [rbp + 0x48]
00000001405944b4 shr      eax, 3
00000001405944b7 and      eax, r13d
00000001405944ba mov      dword ptr [rbp - 0x38], eax
00000001405944bd mov      rax, rbx
00000001405944c0 mov      rcx, qword ptr [rcx + 8]
00000001405944c4 lea      rbx, [rbx + 0x1320]
00000001405944cb mov      rdx, rbx
00000001405944ce mov      rax, qword ptr [rax + 0x18]
00000001405944d2 mov      rax, qword ptr [rax + 0x108]
00000001405944d9 call     qword ptr [rip + 0xefe19]
00000001405944df mov      rax, qword ptr [rbp + 0x60]
00000001405944e3 mov      esi, dword ptr [rbp + 0x58]
00000001405944e6 cmp      dword ptr [rax], esi
00000001405944e8 jae      0x14058eaac
00000001405944ee lea      r9, [rip + 0xdca0b]
00000001405944f5 jmp      0x14058ea75
00000001405944fa mov      rbx, qword ptr [rbp + 0x48]
00000001405944fe mov      edi, 0xb028
0000000140594503 mov      rax, qword ptr [rsi]
0000000140594506 mov      edx, edi
0000000140594508 mov      rcx, rbx
000000014059450b call     qword ptr [rip + 0xefde7]
0000000140594511 and      eax, r13d
0000000140594514 mov      dword ptr [rbp - 0x38], eax
0000000140594517 je       0x14058ebb1
000000014059451d mov      rax, qword ptr [rsi]
0000000140594520 mov      edx, edi
0000000140594522 mov      rcx, rbx
0000000140594525 call     qword ptr [rip + 0xefdcd]
000000014059452b mov      rcx, qword ptr [rbp + 0x48]
000000014059452f and      eax, r13d
0000000140594532 mov      dword ptr [rbp - 0x38], eax
0000000140594535 mov      rax, rbx
0000000140594538 lea      rbx, [rbx + 0x1320]
000000014059453f mov      rdx, rbx
0000000140594542 mov      rcx, qword ptr [rcx + 8]
0000000140594546 mov      rax, qword ptr [rax + 0x18]
000000014059454a mov      rax, qword ptr [rax + 0x108]
0000000140594551 call     qword ptr [rip + 0xefda1]
0000000140594557 mov      rax, qword ptr [rbp + 0x60]
000000014059455b mov      esi, dword ptr [rbp + 0x58]
000000014059455e cmp      dword ptr [rax], esi
0000000140594560 jae      0x14058eaac
0000000140594566 lea      r9, [rip + 0xdc9b3]
000000014059456d jmp      0x14058ea75
0000000140594572 mov      rbx, qword ptr [rbp + 0x48]
0000000140594576 mov      edi, 0xb028
000000014059457b mov      rax, qword ptr [rsi]
000000014059457e mov      edx, edi
0000000140594580 mov      rcx, rbx
0000000140594583 call     qword ptr [rip + 0xefd6f]
0000000140594589 shr      eax, 1
000000014059458b and      eax, r13d
000000014059458e mov      dword ptr [rbp - 0x38], eax
0000000140594591 je       0x14058ebb1
0000000140594597 mov      rax, qword ptr [rsi]
000000014059459a mov      edx, edi
000000014059459c mov      rcx, rbx
000000014059459f call     qword ptr [rip + 0xefd53]
00000001405945a5 mov      rcx, qword ptr [rbp + 0x48]
00000001405945a9 shr      eax, 1
00000001405945ab and      eax, r13d
00000001405945ae mov      dword ptr [rbp - 0x38], eax
00000001405945b1 mov      rax, rbx
00000001405945b4 mov      rcx, qword ptr [rcx + 8]
00000001405945b8 lea      rbx, [rbx + 0x1320]
00000001405945bf mov      rdx, rbx
00000001405945c2 mov      rax, qword ptr [rax + 0x18]
00000001405945c6 mov      rax, qword ptr [rax + 0x108]
00000001405945cd call     qword ptr [rip + 0xefd25]
00000001405945d3 mov      rax, qword ptr [rbp + 0x60]
00000001405945d7 mov      esi, dword ptr [rbp + 0x58]
00000001405945da cmp      dword ptr [rax], esi
00000001405945dc jae      0x14058eaac
00000001405945e2 lea      r9, [rip + 0xdc957]
00000001405945e9 jmp      0x14058ea75
00000001405945ee mov      rbx, qword ptr [rbp + 0x48]
00000001405945f2 mov      edi, 0xb028
00000001405945f7 mov      rax, qword ptr [rsi]
00000001405945fa mov      edx, edi
00000001405945fc mov      rcx, rbx
00000001405945ff call     qword ptr [rip + 0xefcf3]
0000000140594605 shr      eax, 2
0000000140594608 and      eax, r13d
000000014059460b mov      dword ptr [rbp - 0x38], eax
000000014059460e je       0x14058ebb1
0000000140594614 mov      rax, qword ptr [rsi]
0000000140594617 mov      edx, edi
0000000140594619 mov      rcx, rbx
000000014059461c call     qword ptr [rip + 0xefcd6]
0000000140594622 mov      rcx, qword ptr [rbp + 0x48]
0000000140594626 shr      eax, 2
0000000140594629 and      eax, r13d
000000014059462c mov      dword ptr [rbp - 0x38], eax
000000014059462f mov      rax, rbx
0000000140594632 mov      rcx, qword ptr [rcx + 8]
0000000140594636 lea      rbx, [rbx + 0x1320]
000000014059463d mov      rdx, rbx
0000000140594640 mov      rax, qword ptr [rax + 0x18]
0000000140594644 mov      rax, qword ptr [rax + 0x108]
000000014059464b call     qword ptr [rip + 0xefca7]
0000000140594651 mov      rax, qword ptr [rbp + 0x60]
0000000140594655 mov      esi, dword ptr [rbp + 0x58]
0000000140594658 cmp      dword ptr [rax], esi
000000014059465a jae      0x14058eaac
0000000140594660 lea      r9, [rip + 0xdc8f9]
0000000140594667 jmp      0x14058ea75
000000014059466c mov      rbx, qword ptr [rbp + 0x48]
0000000140594670 mov      edi, 0xb028
0000000140594675 mov      rax, qword ptr [rsi]
0000000140594678 mov      edx, edi
000000014059467a mov      rcx, rbx
000000014059467d call     qword ptr [rip + 0xefc75]
0000000140594683 shr      eax, 3
0000000140594686 and      eax, r13d
0000000140594689 mov      dword ptr [rbp - 0x38], eax
000000014059468c je       0x14058ebb1
0000000140594692 mov      rax, qword ptr [rsi]
0000000140594695 mov      edx, edi
0000000140594697 mov      rcx, rbx
000000014059469a call     qword ptr [rip + 0xefc58]
00000001405946a0 mov      rcx, qword ptr [rbp + 0x48]
00000001405946a4 shr      eax, 3
00000001405946a7 and      eax, r13d
00000001405946aa mov      dword ptr [rbp - 0x38], eax
00000001405946ad mov      rax, rbx
00000001405946b0 mov      rcx, qword ptr [rcx + 8]
00000001405946b4 lea      rbx, [rbx + 0x1320]
00000001405946bb mov      rdx, rbx
00000001405946be mov      rax, qword ptr [rax + 0x18]
00000001405946c2 mov      rax, qword ptr [rax + 0x108]
00000001405946c9 call     qword ptr [rip + 0xefc29]
00000001405946cf mov      rax, qword ptr [rbp + 0x60]
00000001405946d3 mov      esi, dword ptr [rbp + 0x58]
00000001405946d6 cmp      dword ptr [rax], esi
00000001405946d8 jae      0x14058eaac
00000001405946de lea      r9, [rip + 0xdc89b]
00000001405946e5 jmp      0x14058ea75
00000001405946ea mov      rbx, qword ptr [rbp + 0x48]
00000001405946ee mov      edi, 0xb028
00000001405946f3 mov      rax, qword ptr [rsi]
00000001405946f6 mov      edx, edi
00000001405946f8 mov      rcx, rbx
00000001405946fb call     qword ptr [rip + 0xefbf7]
0000000140594701 shr      eax, 4
0000000140594704 and      eax, r13d
0000000140594707 mov      dword ptr [rbp - 0x38], eax
000000014059470a je       0x14058ebb1
0000000140594710 mov      rax, qword ptr [rsi]
0000000140594713 mov      edx, edi
0000000140594715 mov      rcx, rbx
0000000140594718 call     qword ptr [rip + 0xefbda]
000000014059471e mov      rcx, qword ptr [rbp + 0x48]
0000000140594722 shr      eax, 4
0000000140594725 and      eax, r13d
0000000140594728 mov      dword ptr [rbp - 0x38], eax
000000014059472b mov      rax, rbx
000000014059472e mov      rcx, qword ptr [rcx + 8]
0000000140594732 lea      rbx, [rbx + 0x1320]
0000000140594739 mov      rdx, rbx
000000014059473c mov      rax, qword ptr [rax + 0x18]
0000000140594740 mov      rax, qword ptr [rax + 0x108]
0000000140594747 call     qword ptr [rip + 0xefbab]
000000014059474d mov      rax, qword ptr [rbp + 0x60]
0000000140594751 mov      esi, dword ptr [rbp + 0x58]
0000000140594754 cmp      dword ptr [rax], esi
0000000140594756 jae      0x14058eaac
000000014059475c lea      r9, [rip + 0xdc83d]
0000000140594763 jmp      0x14058ea75
0000000140594768 mov      rbx, qword ptr [rbp + 0x48]
000000014059476c mov      edi, 0xb028
0000000140594771 mov      rax, qword ptr [rsi + 0x10]
0000000140594775 mov      edx, edi
0000000140594777 mov      rcx, rbx
000000014059477a call     qword ptr [rip + 0xefb78]
0000000140594780 shr      eax, 0xb
0000000140594783 and      eax, r13d
0000000140594786 mov      dword ptr [rbp - 0x38], eax
0000000140594789 je       0x14058ebb1
000000014059478f mov      rax, qword ptr [rsi + 0x10]
0000000140594793 mov      edx, edi
0000000140594795 mov      rcx, rbx
0000000140594798 call     qword ptr [rip + 0xefb5a]
000000014059479e mov      rcx, qword ptr [rbp + 0x48]
00000001405947a2 shr      eax, 0xb
00000001405947a5 and      eax, r13d
00000001405947a8 mov      dword ptr [rbp - 0x38], eax
00000001405947ab mov      rax, rbx
00000001405947ae mov      rcx, qword ptr [rcx + 8]
00000001405947b2 lea      rbx, [rbx + 0x1320]
00000001405947b9 mov      rdx, rbx
00000001405947bc mov      rax, qword ptr [rax + 0x18]
00000001405947c0 mov      rax, qword ptr [rax + 0x108]
00000001405947c7 call     qword ptr [rip + 0xefb2b]
00000001405947cd mov      rax, qword ptr [rbp + 0x60]
00000001405947d1 mov      esi, dword ptr [rbp + 0x58]
00000001405947d4 cmp      dword ptr [rax], esi
00000001405947d6 jae      0x14058eaac
00000001405947dc lea      r9, [rip + 0xdc7dd]
00000001405947e3 jmp      0x14058ea75
00000001405947e8 mov      rbx, qword ptr [rbp + 0x48]
00000001405947ec mov      edi, 0xb028
00000001405947f1 mov      rax, qword ptr [rsi + 0x10]
00000001405947f5 mov      edx, edi
00000001405947f7 mov      rcx, rbx
00000001405947fa call     qword ptr [rip + 0xefaf8]
0000000140594800 shr      eax, 0xc
0000000140594803 and      eax, r13d
0000000140594806 mov      dword ptr [rbp - 0x38], eax
0000000140594809 je       0x14058ebb1
000000014059480f mov      rax, qword ptr [rsi + 0x10]
0000000140594813 mov      edx, edi
0000000140594815 mov      rcx, rbx
0000000140594818 call     qword ptr [rip + 0xefada]
000000014059481e mov      rcx, qword ptr [rbp + 0x48]
0000000140594822 shr      eax, 0xc
0000000140594825 and      eax, r13d
0000000140594828 mov      dword ptr [rbp - 0x38], eax
000000014059482b mov      rax, rbx
000000014059482e mov      rcx, qword ptr [rcx + 8]
0000000140594832 lea      rbx, [rbx + 0x1320]
0000000140594839 mov      rdx, rbx
000000014059483c mov      rax, qword ptr [rax + 0x18]
0000000140594840 mov      rax, qword ptr [rax + 0x108]
0000000140594847 call     qword ptr [rip + 0xefaab]
000000014059484d mov      rax, qword ptr [rbp + 0x60]
0000000140594851 mov      esi, dword ptr [rbp + 0x58]
0000000140594854 cmp      dword ptr [rax], esi
0000000140594856 jae      0x14058eaac
000000014059485c lea      r9, [rip + 0xdc78d]
0000000140594863 jmp      0x14058ea75
0000000140594868 mov      rbx, qword ptr [rbp + 0x48]
000000014059486c mov      edi, 0xb028
0000000140594871 mov      rax, qword ptr [rsi + 0x10]
0000000140594875 mov      edx, edi
0000000140594877 mov      rcx, rbx
000000014059487a call     qword ptr [rip + 0xefa78]
0000000140594880 shr      eax, 0xd
0000000140594883 and      eax, r13d
0000000140594886 mov      dword ptr [rbp - 0x38], eax
0000000140594889 je       0x14058ebb1
000000014059488f mov      rax, qword ptr [rsi + 0x10]
0000000140594893 mov      edx, edi
0000000140594895 mov      rcx, rbx
0000000140594898 call     qword ptr [rip + 0xefa5a]
000000014059489e mov      rcx, qword ptr [rbp + 0x48]
00000001405948a2 shr      eax, 0xd
00000001405948a5 and      eax, r13d
00000001405948a8 mov      dword ptr [rbp - 0x38], eax
00000001405948ab mov      rax, rbx
00000001405948ae mov      rcx, qword ptr [rcx + 8]
00000001405948b2 lea      rbx, [rbx + 0x1320]
00000001405948b9 mov      rdx, rbx
00000001405948bc mov      rax, qword ptr [rax + 0x18]
00000001405948c0 mov      rax, qword ptr [rax + 0x108]
00000001405948c7 call     qword ptr [rip + 0xefa2b]
00000001405948cd mov      rax, qword ptr [rbp + 0x60]
00000001405948d1 mov      esi, dword ptr [rbp + 0x58]
00000001405948d4 cmp      dword ptr [rax], esi
00000001405948d6 jae      0x14058eaac
00000001405948dc lea      r9, [rip + 0xdc73d]
00000001405948e3 jmp      0x14058ea75
00000001405948e8 cmp      dword ptr [rbp + 0x70], r13d
00000001405948ec jb       0x14058ebb1
00000001405948f2 mov      rbx, qword ptr [rbp + 0x48]
00000001405948f6 mov      r12d, 0xb750
00000001405948fc mov      rax, qword ptr [rsi + 0x10]
0000000140594900 mov      edx, r12d
0000000140594903 mov      rcx, rbx
0000000140594906 call     qword ptr [rip + 0xef9ec]
000000014059490c mov      edi, 0x1fff
0000000140594911 and      eax, edi
0000000140594913 mov      dword ptr [rbp - 0x38], eax
0000000140594916 je       0x14058ebb1
000000014059491c mov      rax, qword ptr [rsi + 0x10]
0000000140594920 mov      edx, r12d
0000000140594923 mov      rcx, rbx
0000000140594926 call     qword ptr [rip + 0xef9cc]
000000014059492c mov      rcx, qword ptr [rbp + 0x48]
0000000140594930 and      eax, edi
0000000140594932 mov      dword ptr [rbp - 0x38], eax
0000000140594935 mov      rax, rbx
0000000140594938 lea      rbx, [rbx + 0x1320]
000000014059493f mov      rdx, rbx
0000000140594942 mov      rcx, qword ptr [rcx + 8]
0000000140594946 mov      rax, qword ptr [rax + 0x18]
000000014059494a mov      rax, qword ptr [rax + 0x108]
0000000140594951 call     qword ptr [rip + 0xef9a1]
0000000140594957 mov      rax, qword ptr [rbp + 0x60]
000000014059495b mov      esi, dword ptr [rbp + 0x58]
000000014059495e cmp      dword ptr [rax], esi
0000000140594960 jae      0x14058eaac
0000000140594966 lea      r9, [rip + 0xdc6e3]
000000014059496d jmp      0x14058ea75
0000000140594972 cmp      dword ptr [rbp + 0x70], r13d
0000000140594976 jb       0x14058ebb1
000000014059497c mov      rbx, qword ptr [rbp + 0x48]
0000000140594980 mov      r12d, 0xb758
0000000140594986 mov      rax, qword ptr [rsi + 0x10]
000000014059498a mov      edx, r12d
000000014059498d mov      rcx, rbx
0000000140594990 call     qword ptr [rip + 0xef962]
0000000140594996 mov      edi, 0x1fff
000000014059499b and      eax, edi
000000014059499d mov      dword ptr [rbp - 0x38], eax
00000001405949a0 je       0x14058ebb1
00000001405949a6 mov      rax, qword ptr [rsi + 0x10]
00000001405949aa mov      edx, r12d
00000001405949ad mov      rcx, rbx
00000001405949b0 call     qword ptr [rip + 0xef942]
00000001405949b6 mov      rcx, qword ptr [rbp + 0x48]
00000001405949ba and      eax, edi
00000001405949bc mov      dword ptr [rbp - 0x38], eax
00000001405949bf mov      rax, rbx
00000001405949c2 lea      rbx, [rbx + 0x1320]
00000001405949c9 mov      rdx, rbx
00000001405949cc mov      rcx, qword ptr [rcx + 8]
00000001405949d0 mov      rax, qword ptr [rax + 0x18]
00000001405949d4 mov      rax, qword ptr [rax + 0x108]
00000001405949db call     qword ptr [rip + 0xef917]
00000001405949e1 mov      rax, qword ptr [rbp + 0x60]
00000001405949e5 mov      esi, dword ptr [rbp + 0x58]
00000001405949e8 cmp      dword ptr [rax], esi
00000001405949ea jae      0x14058eaac
00000001405949f0 lea      r9, [rip + 0xdc689]
00000001405949f7 jmp      0x14058ea75
00000001405949fc cmp      dword ptr [rbp + 0x70], r13d
0000000140594a00 jb       0x14058ebb1
0000000140594a06 mov      rbx, qword ptr [rbp + 0x48]
0000000140594a0a mov      r12d, 0xb760
0000000140594a10 mov      rax, qword ptr [rsi + 0x10]
0000000140594a14 mov      edx, r12d
0000000140594a17 mov      rcx, rbx
0000000140594a1a call     qword ptr [rip + 0xef8d8]
0000000140594a20 mov      edi, 0x1fff
0000000140594a25 and      eax, edi
0000000140594a27 mov      dword ptr [rbp - 0x38], eax
0000000140594a2a je       0x14058ebb1
0000000140594a30 mov      rax, qword ptr [rsi + 0x10]
0000000140594a34 mov      edx, r12d
0000000140594a37 mov      rcx, rbx
0000000140594a3a call     qword ptr [rip + 0xef8b8]
0000000140594a40 mov      rcx, qword ptr [rbp + 0x48]
0000000140594a44 and      eax, edi
0000000140594a46 mov      dword ptr [rbp - 0x38], eax
0000000140594a49 mov      rax, rbx
0000000140594a4c lea      rbx, [rbx + 0x1320]
0000000140594a53 mov      rdx, rbx
0000000140594a56 mov      rcx, qword ptr [rcx + 8]
0000000140594a5a mov      rax, qword ptr [rax + 0x18]
0000000140594a5e mov      rax, qword ptr [rax + 0x108]
0000000140594a65 call     qword ptr [rip + 0xef88d]
0000000140594a6b mov      rax, qword ptr [rbp + 0x60]
0000000140594a6f mov      esi, dword ptr [rbp + 0x58]
0000000140594a72 cmp      dword ptr [rax], esi
0000000140594a74 jae      0x14058eaac
0000000140594a7a lea      r9, [rip + 0xdc62f]
0000000140594a81 jmp      0x14058ea75
0000000140594a86 cmp      dword ptr [rbp + 0x70], r13d
0000000140594a8a jb       0x14058ebb1
0000000140594a90 mov      rbx, qword ptr [rbp + 0x48]
0000000140594a94 mov      r12d, 0xb768
0000000140594a9a mov      rax, qword ptr [rsi + 0x10]
0000000140594a9e mov      edx, r12d
0000000140594aa1 mov      rcx, rbx
0000000140594aa4 call     qword ptr [rip + 0xef84e]
0000000140594aaa mov      edi, 0x1fff
0000000140594aaf and      eax, edi
0000000140594ab1 mov      dword ptr [rbp - 0x38], eax
0000000140594ab4 je       0x14058ebb1
0000000140594aba mov      rax, qword ptr [rsi + 0x10]
0000000140594abe mov      edx, r12d
0000000140594ac1 mov      rcx, rbx
0000000140594ac4 call     qword ptr [rip + 0xef82e]
0000000140594aca mov      rcx, qword ptr [rbp + 0x48]
0000000140594ace and      eax, edi
0000000140594ad0 mov      dword ptr [rbp - 0x38], eax
0000000140594ad3 mov      rax, rbx
0000000140594ad6 lea      rbx, [rbx + 0x1320]
0000000140594add mov      rdx, rbx
0000000140594ae0 mov      rcx, qword ptr [rcx + 8]
0000000140594ae4 mov      rax, qword ptr [rax + 0x18]
0000000140594ae8 mov      rax, qword ptr [rax + 0x108]
0000000140594aef call     qword ptr [rip + 0xef803]
0000000140594af5 mov      rax, qword ptr [rbp + 0x60]
0000000140594af9 mov      esi, dword ptr [rbp + 0x58]
0000000140594afc cmp      dword ptr [rax], esi
0000000140594afe jae      0x14058eaac
0000000140594b04 lea      r9, [rip + 0xdc5d5]
0000000140594b0b jmp      0x14058ea75
0000000140594b10 cmp      dword ptr [rbp + 0x70], r13d
0000000140594b14 jb       0x14058ebb1
0000000140594b1a mov      rbx, qword ptr [rbp + 0x48]
0000000140594b1e mov      r12d, 0xb770
0000000140594b24 mov      rax, qword ptr [rsi + 0x10]
0000000140594b28 mov      edx, r12d
0000000140594b2b mov      rcx, rbx
0000000140594b2e call     qword ptr [rip + 0xef7c4]
0000000140594b34 mov      edi, 0x1fff
0000000140594b39 and      eax, edi
0000000140594b3b mov      dword ptr [rbp - 0x38], eax
0000000140594b3e je       0x14058ebb1
0000000140594b44 mov      rax, qword ptr [rsi + 0x10]
0000000140594b48 mov      edx, r12d
0000000140594b4b mov      rcx, rbx
0000000140594b4e call     qword ptr [rip + 0xef7a4]
0000000140594b54 mov      rcx, qword ptr [rbp + 0x48]
0000000140594b58 and      eax, edi
0000000140594b5a mov      dword ptr [rbp - 0x38], eax
0000000140594b5d mov      rax, rbx
0000000140594b60 lea      rbx, [rbx + 0x1320]
0000000140594b67 mov      rdx, rbx
0000000140594b6a mov      rcx, qword ptr [rcx + 8]
0000000140594b6e mov      rax, qword ptr [rax + 0x18]
0000000140594b72 mov      rax, qword ptr [rax + 0x108]
0000000140594b79 call     qword ptr [rip + 0xef779]
0000000140594b7f mov      rax, qword ptr [rbp + 0x60]
0000000140594b83 mov      esi, dword ptr [rbp + 0x58]
0000000140594b86 cmp      dword ptr [rax], esi
0000000140594b88 jae      0x14058eaac
0000000140594b8e lea      r9, [rip + 0xdc57b]
0000000140594b95 jmp      0x14058ea75
0000000140594b9a cmp      dword ptr [rbp + 0x70], r13d
0000000140594b9e jb       0x14058ebb1
0000000140594ba4 mov      rbx, qword ptr [rbp + 0x48]
0000000140594ba8 mov      r12d, 0xb778
0000000140594bae mov      rax, qword ptr [rsi + 0x10]
0000000140594bb2 mov      edx, r12d
0000000140594bb5 mov      rcx, rbx
0000000140594bb8 call     qword ptr [rip + 0xef73a]
0000000140594bbe mov      edi, 0x1fff
0000000140594bc3 and      eax, edi
0000000140594bc5 mov      dword ptr [rbp - 0x38], eax
0000000140594bc8 je       0x14058ebb1
0000000140594bce mov      rax, qword ptr [rsi + 0x10]
0000000140594bd2 mov      edx, r12d
0000000140594bd5 mov      rcx, rbx
0000000140594bd8 call     qword ptr [rip + 0xef71a]
0000000140594bde mov      rcx, qword ptr [rbp + 0x48]
0000000140594be2 and      eax, edi
0000000140594be4 mov      dword ptr [rbp - 0x38], eax
0000000140594be7 mov      rax, rbx
0000000140594bea lea      rbx, [rbx + 0x1320]
0000000140594bf1 mov      rdx, rbx
0000000140594bf4 mov      rcx, qword ptr [rcx + 8]
0000000140594bf8 mov      rax, qword ptr [rax + 0x18]
0000000140594bfc mov      rax, qword ptr [rax + 0x108]
0000000140594c03 call     qword ptr [rip + 0xef6ef]
0000000140594c09 mov      rax, qword ptr [rbp + 0x60]
0000000140594c0d mov      esi, dword ptr [rbp + 0x58]
0000000140594c10 cmp      dword ptr [rax], esi
0000000140594c12 jae      0x14058eaac
0000000140594c18 lea      r9, [rip + 0xdc521]
0000000140594c1f jmp      0x14058ea75
0000000140594c24 cmp      dword ptr [rbp + 0x70], r13d
0000000140594c28 jb       0x14058ebb1
0000000140594c2e mov      rbx, qword ptr [rbp + 0x48]
0000000140594c32 mov      r12d, 0xb784
0000000140594c38 mov      rax, qword ptr [rsi + 0x10]
0000000140594c3c mov      edx, r12d
0000000140594c3f mov      rcx, rbx
0000000140594c42 call     qword ptr [rip + 0xef6b0]
0000000140594c48 mov      edi, 0x1fff
0000000140594c4d and      eax, edi
0000000140594c4f mov      dword ptr [rbp - 0x38], eax
0000000140594c52 je       0x14058ebb1
0000000140594c58 mov      rax, qword ptr [rsi + 0x10]
0000000140594c5c mov      edx, r12d
0000000140594c5f mov      rcx, rbx
0000000140594c62 call     qword ptr [rip + 0xef690]
0000000140594c68 mov      rcx, qword ptr [rbp + 0x48]
0000000140594c6c and      eax, edi
0000000140594c6e mov      dword ptr [rbp - 0x38], eax
0000000140594c71 mov      rax, rbx
0000000140594c74 lea      rbx, [rbx + 0x1320]
0000000140594c7b mov      rdx, rbx
0000000140594c7e mov      rcx, qword ptr [rcx + 8]
0000000140594c82 mov      rax, qword ptr [rax + 0x18]
0000000140594c86 mov      rax, qword ptr [rax + 0x108]
0000000140594c8d call     qword ptr [rip + 0xef665]
0000000140594c93 mov      rax, qword ptr [rbp + 0x60]
0000000140594c97 mov      esi, dword ptr [rbp + 0x58]
0000000140594c9a cmp      dword ptr [rax], esi
0000000140594c9c jae      0x14058eaac
0000000140594ca2 lea      r9, [rip + 0xdc4c7]
0000000140594ca9 jmp      0x14058ea75
0000000140594cae cmp      dword ptr [rbp + 0x70], r13d
0000000140594cb2 jb       0x14058ebb1
0000000140594cb8 mov      rbx, qword ptr [rbp + 0x48]
0000000140594cbc mov      edi, 0xb01c
0000000140594cc1 mov      rax, qword ptr [rsi]
0000000140594cc4 mov      edx, edi
0000000140594cc6 mov      rcx, rbx
0000000140594cc9 call     qword ptr [rip + 0xef629]
0000000140594ccf and      eax, r13d
0000000140594cd2 mov      dword ptr [rbp - 0x38], eax
0000000140594cd5 je       0x14058ebb1
0000000140594cdb mov      rax, qword ptr [rsi]
0000000140594cde mov      edx, edi
0000000140594ce0 mov      rcx, rbx
0000000140594ce3 call     qword ptr [rip + 0xef60f]
0000000140594ce9 mov      rcx, qword ptr [rbp + 0x48]
0000000140594ced and      eax, r13d
0000000140594cf0 mov      dword ptr [rbp - 0x38], eax
0000000140594cf3 mov      rax, rbx
0000000140594cf6 lea      rbx, [rbx + 0x1320]
0000000140594cfd mov      rdx, rbx
0000000140594d00 mov      rcx, qword ptr [rcx + 8]
0000000140594d04 mov      rax, qword ptr [rax + 0x18]
0000000140594d08 mov      rax, qword ptr [rax + 0x108]
0000000140594d0f call     qword ptr [rip + 0xef5e3]
0000000140594d15 mov      rax, qword ptr [rbp + 0x60]
0000000140594d19 mov      esi, dword ptr [rbp + 0x58]
0000000140594d1c cmp      dword ptr [rax], esi
0000000140594d1e jae      0x14058eaac
0000000140594d24 lea      r9, [rip + 0xdc475]
0000000140594d2b jmp      0x14058ea75
0000000140594d30 cmp      dword ptr [rbp + 0x70], r13d
0000000140594d34 jb       0x14058ebb1
0000000140594d3a mov      rbx, qword ptr [rbp + 0x48]
0000000140594d3e mov      edi, 0xb01c
0000000140594d43 mov      rax, qword ptr [rsi]
0000000140594d46 mov      edx, edi
0000000140594d48 mov      rcx, rbx
0000000140594d4b call     qword ptr [rip + 0xef5a7]
0000000140594d51 shr      eax, 2
0000000140594d54 and      eax, r13d
0000000140594d57 mov      dword ptr [rbp - 0x38], eax
0000000140594d5a je       0x14058ebb1
0000000140594d60 mov      rax, qword ptr [rsi]
0000000140594d63 mov      edx, edi
0000000140594d65 mov      rcx, rbx
0000000140594d68 call     qword ptr [rip + 0xef58a]
0000000140594d6e mov      rcx, qword ptr [rbp + 0x48]
0000000140594d72 shr      eax, 2
0000000140594d75 and      eax, r13d
0000000140594d78 mov      dword ptr [rbp - 0x38], eax
0000000140594d7b mov      rax, rbx
0000000140594d7e mov      rcx, qword ptr [rcx + 8]
0000000140594d82 lea      rbx, [rbx + 0x1320]
0000000140594d89 mov      rdx, rbx
0000000140594d8c mov      rax, qword ptr [rax + 0x18]
0000000140594d90 mov      rax, qword ptr [rax + 0x108]
0000000140594d97 call     qword ptr [rip + 0xef55b]
0000000140594d9d mov      rax, qword ptr [rbp + 0x60]
0000000140594da1 mov      esi, dword ptr [rbp + 0x58]
0000000140594da4 cmp      dword ptr [rax], esi
0000000140594da6 jae      0x14058eaac
0000000140594dac lea      r9, [rip + 0xdc40d]
0000000140594db3 jmp      0x14058ea75
0000000140594db8 cmp      dword ptr [rbp + 0x70], r13d
0000000140594dbc jb       0x14058ebb1
0000000140594dc2 mov      rbx, qword ptr [rbp + 0x48]
0000000140594dc6 mov      edi, 0xb01c
0000000140594dcb mov      rax, qword ptr [rsi]
0000000140594dce mov      edx, edi
0000000140594dd0 mov      rcx, rbx
0000000140594dd3 call     qword ptr [rip + 0xef51f]
0000000140594dd9 shr      eax, 4
0000000140594ddc and      eax, r13d
0000000140594ddf mov      dword ptr [rbp - 0x38], eax
0000000140594de2 je       0x14058ebb1
0000000140594de8 mov      rax, qword ptr [rsi]
0000000140594deb mov      edx, edi
0000000140594ded mov      rcx, rbx
0000000140594df0 call     qword ptr [rip + 0xef502]
0000000140594df6 mov      rcx, qword ptr [rbp + 0x48]
0000000140594dfa shr      eax, 4
0000000140594dfd and      eax, r13d
0000000140594e00 mov      dword ptr [rbp - 0x38], eax
0000000140594e03 mov      rax, rbx
0000000140594e06 mov      rcx, qword ptr [rcx + 8]
0000000140594e0a lea      rbx, [rbx + 0x1320]
0000000140594e11 mov      rdx, rbx
0000000140594e14 mov      rax, qword ptr [rax + 0x18]
0000000140594e18 mov      rax, qword ptr [rax + 0x108]
0000000140594e1f call     qword ptr [rip + 0xef4d3]
0000000140594e25 mov      rax, qword ptr [rbp + 0x60]
0000000140594e29 mov      esi, dword ptr [rbp + 0x58]
0000000140594e2c cmp      dword ptr [rax], esi
0000000140594e2e jae      0x14058eaac
0000000140594e34 lea      r9, [rip + 0xdc3a5]
0000000140594e3b jmp      0x14058ea75
0000000140594e40 cmp      dword ptr [rbp + 0x70], r13d
0000000140594e44 jb       0x14058ebb1
0000000140594e4a mov      rbx, qword ptr [rbp + 0x48]
0000000140594e4e mov      edi, 0xb01c
0000000140594e53 mov      rax, qword ptr [rsi]
0000000140594e56 mov      edx, edi
0000000140594e58 mov      rcx, rbx
0000000140594e5b call     qword ptr [rip + 0xef497]
0000000140594e61 shr      eax, 6
0000000140594e64 and      eax, r13d
0000000140594e67 mov      dword ptr [rbp - 0x38], eax
0000000140594e6a je       0x14058ebb1
0000000140594e70 mov      rax, qword ptr [rsi]
0000000140594e73 mov      edx, edi
0000000140594e75 mov      rcx, rbx
0000000140594e78 call     qword ptr [rip + 0xef47a]
0000000140594e7e mov      rcx, qword ptr [rbp + 0x48]
0000000140594e82 shr      eax, 6
0000000140594e85 and      eax, r13d
0000000140594e88 mov      dword ptr [rbp - 0x38], eax
0000000140594e8b mov      rax, rbx
0000000140594e8e mov      rcx, qword ptr [rcx + 8]
0000000140594e92 lea      rbx, [rbx + 0x1320]
0000000140594e99 mov      rdx, rbx
0000000140594e9c mov      rax, qword ptr [rax + 0x18]
0000000140594ea0 mov      rax, qword ptr [rax + 0x108]
0000000140594ea7 call     qword ptr [rip + 0xef44b]
0000000140594ead mov      rax, qword ptr [rbp + 0x60]
0000000140594eb1 mov      esi, dword ptr [rbp + 0x58]
0000000140594eb4 cmp      dword ptr [rax], esi
0000000140594eb6 jae      0x14058eaac
0000000140594ebc lea      r9, [rip + 0xdc33d]
0000000140594ec3 jmp      0x14058ea75
0000000140594ec8 cmp      dword ptr [rbp + 0x70], r13d
0000000140594ecc jb       0x14058ebb1
0000000140594ed2 mov      rbx, qword ptr [rbp + 0x48]
0000000140594ed6 mov      edi, 0xb01c
0000000140594edb mov      rax, qword ptr [rsi + 0x10]
0000000140594edf mov      edx, edi
0000000140594ee1 mov      rcx, rbx
0000000140594ee4 call     qword ptr [rip + 0xef40e]
0000000140594eea shr      eax, 8
0000000140594eed and      eax, r13d
0000000140594ef0 mov      dword ptr [rbp - 0x38], eax
0000000140594ef3 je       0x14058ebb1
0000000140594ef9 mov      rax, qword ptr [rsi + 0x10]
0000000140594efd mov      edx, edi
0000000140594eff mov      rcx, rbx
0000000140594f02 call     qword ptr [rip + 0xef3f0]
0000000140594f08 mov      rcx, qword ptr [rbp + 0x48]
0000000140594f0c shr      eax, 8
0000000140594f0f and      eax, r13d
0000000140594f12 mov      dword ptr [rbp - 0x38], eax
0000000140594f15 mov      rax, rbx
0000000140594f18 mov      rcx, qword ptr [rcx + 8]
0000000140594f1c lea      rbx, [rbx + 0x1320]
0000000140594f23 mov      rdx, rbx
0000000140594f26 mov      rax, qword ptr [rax + 0x18]
0000000140594f2a mov      rax, qword ptr [rax + 0x108]
0000000140594f31 call     qword ptr [rip + 0xef3c1]
0000000140594f37 mov      rax, qword ptr [rbp + 0x60]
0000000140594f3b mov      esi, dword ptr [rbp + 0x58]
0000000140594f3e cmp      dword ptr [rax], esi
0000000140594f40 jae      0x14058eaac
0000000140594f46 lea      r9, [rip + 0xdc2d3]
0000000140594f4d jmp      0x14058ea75
0000000140594f52 cmp      dword ptr [rbp + 0x70], r13d
0000000140594f56 jb       0x14058ebb1
0000000140594f5c mov      rbx, qword ptr [rbp + 0x48]
0000000140594f60 mov      edi, 0xb01c
0000000140594f65 mov      rax, qword ptr [rsi + 0x10]
0000000140594f69 mov      edx, edi
0000000140594f6b mov      rcx, rbx
0000000140594f6e call     qword ptr [rip + 0xef384]
0000000140594f74 shr      eax, 0xa
0000000140594f77 and      eax, r13d
0000000140594f7a mov      dword ptr [rbp - 0x38], eax
0000000140594f7d je       0x14058ebb1
0000000140594f83 mov      rax, qword ptr [rsi + 0x10]
0000000140594f87 mov      edx, edi
0000000140594f89 mov      rcx, rbx
0000000140594f8c call     qword ptr [rip + 0xef366]
0000000140594f92 mov      rcx, qword ptr [rbp + 0x48]
0000000140594f96 shr      eax, 0xa
0000000140594f99 and      eax, r13d
0000000140594f9c mov      dword ptr [rbp - 0x38], eax
0000000140594f9f mov      rax, rbx
0000000140594fa2 mov      rcx, qword ptr [rcx + 8]
0000000140594fa6 lea      rbx, [rbx + 0x1320]
0000000140594fad mov      rdx, rbx
0000000140594fb0 mov      rax, qword ptr [rax + 0x18]
0000000140594fb4 mov      rax, qword ptr [rax + 0x108]
0000000140594fbb call     qword ptr [rip + 0xef337]
0000000140594fc1 mov      rax, qword ptr [rbp + 0x60]
0000000140594fc5 mov      esi, dword ptr [rbp + 0x58]
0000000140594fc8 cmp      dword ptr [rax], esi
0000000140594fca jae      0x14058eaac
0000000140594fd0 lea      r9, [rip + 0xdc269]
0000000140594fd7 jmp      0x14058ea75
0000000140594fdc cmp      dword ptr [rbp + 0x70], r13d
0000000140594fe0 jb       0x14058ebb1
0000000140594fe6 mov      rbx, qword ptr [rbp + 0x48]
0000000140594fea mov      edi, 0xb01c
0000000140594fef mov      rax, qword ptr [rsi + 0x10]
0000000140594ff3 mov      edx, edi
0000000140594ff5 mov      rcx, rbx
0000000140594ff8 call     qword ptr [rip + 0xef2fa]
0000000140594ffe shr      eax, 0xc
0000000140595001 and      eax, r13d
0000000140595004 mov      dword ptr [rbp - 0x38], eax
0000000140595007 je       0x14058ebb1
000000014059500d mov      rax, qword ptr [rsi + 0x10]
0000000140595011 mov      edx, edi
0000000140595013 mov      rcx, rbx
0000000140595016 call     qword ptr [rip + 0xef2dc]
000000014059501c mov      rcx, qword ptr [rbp + 0x48]
0000000140595020 shr      eax, 0xc
0000000140595023 and      eax, r13d
0000000140595026 mov      dword ptr [rbp - 0x38], eax
0000000140595029 mov      rax, rbx
000000014059502c mov      rcx, qword ptr [rcx + 8]
0000000140595030 lea      rbx, [rbx + 0x1320]
0000000140595037 mov      rdx, rbx
000000014059503a mov      rax, qword ptr [rax + 0x18]
000000014059503e mov      rax, qword ptr [rax + 0x108]
0000000140595045 call     qword ptr [rip + 0xef2ad]
000000014059504b mov      rax, qword ptr [rbp + 0x60]
000000014059504f mov      esi, dword ptr [rbp + 0x58]
0000000140595052 cmp      dword ptr [rax], esi
0000000140595054 jae      0x14058eaac
000000014059505a lea      r9, [rip + 0xdc20f]
0000000140595061 jmp      0x14058ea75
0000000140595066 cmp      dword ptr [rbp + 0x70], r13d
000000014059506a jb       0x14058ebb1
0000000140595070 mov      rbx, qword ptr [rbp + 0x48]
0000000140595074 mov      edi, 0xb01c
0000000140595079 mov      rax, qword ptr [rsi + 0x20]
000000014059507d mov      edx, edi
000000014059507f mov      rcx, rbx
0000000140595082 call     qword ptr [rip + 0xef270]
0000000140595088 shr      eax, 0x18
000000014059508b and      eax, r13d
000000014059508e mov      dword ptr [rbp - 0x38], eax
0000000140595091 jne      0x14058ebb1
0000000140595097 mov      rax, qword ptr [rsi + 0x20]
000000014059509b mov      edx, edi
000000014059509d mov      rcx, rbx
00000001405950a0 call     qword ptr [rip + 0xef252]
00000001405950a6 mov      rcx, qword ptr [rbp + 0x48]
00000001405950aa shr      eax, 0x18
00000001405950ad and      eax, r13d
00000001405950b0 mov      dword ptr [rbp - 0x38], eax
00000001405950b3 mov      rax, rbx
00000001405950b6 mov      rcx, qword ptr [rcx + 8]
00000001405950ba lea      rbx, [rbx + 0x1320]
00000001405950c1 mov      rdx, rbx
00000001405950c4 mov      rax, qword ptr [rax + 0x18]
00000001405950c8 mov      rax, qword ptr [rax + 0x108]
00000001405950cf call     qword ptr [rip + 0xef223]
00000001405950d5 mov      rax, qword ptr [rbp + 0x60]
00000001405950d9 mov      esi, dword ptr [rbp + 0x58]
00000001405950dc cmp      dword ptr [rax], esi
00000001405950de jae      0x14058eaac
00000001405950e4 lea      r9, [rip + 0xdc1b5]
00000001405950eb jmp      0x14058ea75
00000001405950f0 cmp      dword ptr [rbp + 0x70], r13d
00000001405950f4 jb       0x14058ebb1
00000001405950fa mov      rbx, qword ptr [rbp + 0x48]
00000001405950fe mov      edi, 0xb01c
0000000140595103 mov      rax, qword ptr [rsi + 0x20]
0000000140595107 mov      edx, edi
0000000140595109 mov      rcx, rbx
000000014059510c call     qword ptr [rip + 0xef1e6]
0000000140595112 shr      eax, 0x19
0000000140595115 and      eax, r13d
0000000140595118 mov      dword ptr [rbp - 0x38], eax
000000014059511b jne      0x14058ebb1
0000000140595121 mov      rax, qword ptr [rsi + 0x20]
0000000140595125 mov      edx, edi
0000000140595127 mov      rcx, rbx
000000014059512a call     qword ptr [rip + 0xef1c8]
0000000140595130 mov      rcx, qword ptr [rbp + 0x48]
0000000140595134 shr      eax, 0x19
0000000140595137 and      eax, r13d
000000014059513a mov      dword ptr [rbp - 0x38], eax
000000014059513d mov      rax, rbx
0000000140595140 mov      rcx, qword ptr [rcx + 8]
0000000140595144 lea      rbx, [rbx + 0x1320]
000000014059514b mov      rdx, rbx
000000014059514e mov      rax, qword ptr [rax + 0x18]
0000000140595152 mov      rax, qword ptr [rax + 0x108]
0000000140595159 call     qword ptr [rip + 0xef199]
000000014059515f mov      rax, qword ptr [rbp + 0x60]
0000000140595163 mov      esi, dword ptr [rbp + 0x58]
0000000140595166 cmp      dword ptr [rax], esi
0000000140595168 jae      0x14058eaac
000000014059516e lea      r9, [rip + 0xdc15b]
0000000140595175 jmp      0x14058ea75
000000014059517a cmp      dword ptr [rbp + 0x70], r13d
000000014059517e jb       0x14058ebb1
0000000140595184 mov      rbx, qword ptr [rbp + 0x48]
0000000140595188 mov      edi, 0xb01c
000000014059518d mov      rax, qword ptr [rsi + 0x20]
0000000140595191 mov      edx, edi
0000000140595193 mov      rcx, rbx
0000000140595196 call     qword ptr [rip + 0xef15c]
000000014059519c shr      eax, 0x16
000000014059519f and      eax, r13d
00000001405951a2 mov      dword ptr [rbp - 0x38], eax
00000001405951a5 jne      0x14058ebb1
00000001405951ab mov      rax, qword ptr [rsi + 0x20]
00000001405951af mov      edx, edi
00000001405951b1 mov      rcx, rbx
00000001405951b4 call     qword ptr [rip + 0xef13e]
00000001405951ba mov      rcx, qword ptr [rbp + 0x48]
00000001405951be shr      eax, 0x16
00000001405951c1 and      eax, r13d
00000001405951c4 mov      dword ptr [rbp - 0x38], eax
00000001405951c7 mov      rax, rbx
00000001405951ca mov      rcx, qword ptr [rcx + 8]
00000001405951ce lea      rbx, [rbx + 0x1320]
00000001405951d5 mov      rdx, rbx
00000001405951d8 mov      rax, qword ptr [rax + 0x18]
00000001405951dc mov      rax, qword ptr [rax + 0x108]
00000001405951e3 call     qword ptr [rip + 0xef10f]
00000001405951e9 mov      rax, qword ptr [rbp + 0x60]
00000001405951ed mov      esi, dword ptr [rbp + 0x58]
00000001405951f0 cmp      dword ptr [rax], esi
00000001405951f2 jae      0x14058eaac
00000001405951f8 lea      r9, [rip + 0xdc101]
00000001405951ff jmp      0x14058ea75
0000000140595204 cmp      dword ptr [rbp + 0x70], r13d
0000000140595208 jb       0x14058ebb1
000000014059520e mov      rbx, qword ptr [rbp + 0x48]
0000000140595212 mov      edi, 0xb01c
0000000140595217 mov      rax, qword ptr [rsi + 0x20]
000000014059521b mov      edx, edi
000000014059521d mov      rcx, rbx
0000000140595220 call     qword ptr [rip + 0xef0d2]
0000000140595226 shr      eax, 0x17
0000000140595229 and      eax, r13d
000000014059522c mov      dword ptr [rbp - 0x38], eax
000000014059522f jne      0x14058ebb1
0000000140595235 mov      rax, qword ptr [rsi + 0x20]
0000000140595239 mov      edx, edi
000000014059523b mov      rcx, rbx
000000014059523e call     qword ptr [rip + 0xef0b4]
0000000140595244 mov      rcx, qword ptr [rbp + 0x48]
0000000140595248 shr      eax, 0x17
000000014059524b and      eax, r13d
000000014059524e mov      dword ptr [rbp - 0x38], eax
0000000140595251 mov      rax, rbx
0000000140595254 mov      rcx, qword ptr [rcx + 8]
0000000140595258 lea      rbx, [rbx + 0x1320]
000000014059525f mov      rdx, rbx
0000000140595262 mov      rax, qword ptr [rax + 0x18]
0000000140595266 mov      rax, qword ptr [rax + 0x108]
000000014059526d call     qword ptr [rip + 0xef085]
0000000140595273 mov      rax, qword ptr [rbp + 0x60]
0000000140595277 mov      esi, dword ptr [rbp + 0x58]
000000014059527a cmp      dword ptr [rax], esi
000000014059527c jae      0x14058eaac
0000000140595282 lea      r9, [rip + 0xdc0a7]
0000000140595289 jmp      0x14058ea75
000000014059528e mov      rbx, qword ptr [rbp + 0x48]
0000000140595292 mov      r13d, 0xb000
0000000140595298 mov      rax, qword ptr [rsi]
000000014059529b mov      edx, r13d
000000014059529e mov      rcx, rbx
00000001405952a1 call     qword ptr [rip + 0xef051]
00000001405952a7 shr      eax, 4
00000001405952aa and      eax, 1
00000001405952ad mov      dword ptr [rbp - 0x38], eax
00000001405952b0 jne      0x14058ebb1
00000001405952b6 mov      rax, qword ptr [rsi]
00000001405952b9 mov      edx, r13d
00000001405952bc mov      rcx, rbx
00000001405952bf call     qword ptr [rip + 0xef033]
00000001405952c5 mov      rcx, qword ptr [rbp + 0x48]
00000001405952c9 shr      eax, 4
00000001405952cc and      eax, 1
00000001405952cf mov      dword ptr [rbp - 0x38], eax
00000001405952d2 mov      rax, rbx
00000001405952d5 mov      rcx, qword ptr [rcx + 8]
00000001405952d9 lea      rbx, [rbx + 0x1320]
00000001405952e0 mov      rdx, rbx
00000001405952e3 mov      rax, qword ptr [rax + 0x18]
00000001405952e7 mov      rax, qword ptr [rax + 0x108]
00000001405952ee call     qword ptr [rip + 0xef004]
00000001405952f4 mov      rax, qword ptr [rbp + 0x60]
00000001405952f8 mov      esi, dword ptr [rbp + 0x58]
00000001405952fb cmp      dword ptr [rax], esi
00000001405952fd jae      0x14058eaac
0000000140595303 lea      r9, [rip + 0xdc056]
000000014059530a jmp      0x14058ea75
000000014059530f mov      rbx, qword ptr [rbp + 0x48]
0000000140595313 mov      r13d, 0xb000
0000000140595319 mov      rax, qword ptr [rsi]
000000014059531c mov      edx, r13d
000000014059531f mov      rcx, rbx
0000000140595322 call     qword ptr [rip + 0xeefd0]
0000000140595328 shr      eax, 5
000000014059532b and      eax, 1
000000014059532e mov      dword ptr [rbp - 0x38], eax
0000000140595331 jne      0x14058ebb1
0000000140595337 mov      rax, qword ptr [rsi]
000000014059533a mov      edx, r13d
000000014059533d mov      rcx, rbx
0000000140595340 call     qword ptr [rip + 0xeefb2]
0000000140595346 mov      rcx, qword ptr [rbp + 0x48]
000000014059534a shr      eax, 5
000000014059534d and      eax, 1
0000000140595350 mov      dword ptr [rbp - 0x38], eax
0000000140595353 mov      rax, rbx
0000000140595356 mov      rcx, qword ptr [rcx + 8]
000000014059535a lea      rbx, [rbx + 0x1320]
0000000140595361 mov      rdx, rbx
0000000140595364 mov      rax, qword ptr [rax + 0x18]
0000000140595368 mov      rax, qword ptr [rax + 0x108]
000000014059536f call     qword ptr [rip + 0xeef83]
0000000140595375 mov      rax, qword ptr [rbp + 0x60]
0000000140595379 mov      esi, dword ptr [rbp + 0x58]
000000014059537c cmp      dword ptr [rax], esi
000000014059537e jae      0x14058eaac
0000000140595384 lea      r9, [rip + 0xdbff5]
000000014059538b jmp      0x14058ea75
0000000140595390 mov      rbx, qword ptr [rbp + 0x48]
0000000140595394 mov      r13d, 0xb000
000000014059539a mov      rax, qword ptr [rsi]
000000014059539d mov      edx, r13d
00000001405953a0 mov      rcx, rbx
00000001405953a3 call     qword ptr [rip + 0xeef4f]
00000001405953a9 movzx    eax, al
00000001405953ac shr      eax, 7
00000001405953af mov      dword ptr [rbp - 0x38], eax
00000001405953b2 test     eax, eax
00000001405953b4 je       0x14058ebb1
00000001405953ba mov      rax, qword ptr [rsi]
00000001405953bd mov      edx, r13d
00000001405953c0 mov      rcx, rbx
00000001405953c3 call     qword ptr [rip + 0xeef2f]
00000001405953c9 mov      rcx, qword ptr [rbp + 0x48]
00000001405953cd movzx    eax, al
00000001405953d0 shr      eax, 7
00000001405953d3 mov      dword ptr [rbp - 0x38], eax
00000001405953d6 mov      rax, rbx
00000001405953d9 mov      rcx, qword ptr [rcx + 8]
00000001405953dd lea      rbx, [rbx + 0x1320]
00000001405953e4 mov      rdx, rbx
00000001405953e7 mov      rax, qword ptr [rax + 0x18]
00000001405953eb mov      rax, qword ptr [rax + 0x108]
00000001405953f2 call     qword ptr [rip + 0xeef00]
00000001405953f8 mov      rax, qword ptr [rbp + 0x60]
00000001405953fc mov      esi, dword ptr [rbp + 0x58]
00000001405953ff cmp      dword ptr [rax], esi
0000000140595401 jae      0x14058eaac
0000000140595407 lea      r9, [rip + 0xdbf92]
000000014059540e jmp      0x14058ea75
0000000140595413 cmp      dword ptr [rbp + 0x70], r13d
0000000140595417 jb       0x14058ebb1
000000014059541d mov      rbx, qword ptr [rbp + 0x48]
0000000140595421 mov      r14d, 0xb79c
0000000140595427 mov      rax, qword ptr [rsi + 0x20]
000000014059542b mov      edx, r14d
000000014059542e mov      rcx, rbx
0000000140595431 call     qword ptr [rip + 0xeeec1]
0000000140595437 shr      eax, 0x10
000000014059543a mov      edi, 0x1fff
000000014059543f and      eax, edi
0000000140595441 mov      edx, r14d
0000000140595444 mov      dword ptr [rbp - 0x2c], eax
0000000140595447 mov      rcx, rbx
000000014059544a mov      dword ptr [rbp - 0x38], eax
000000014059544d mov      rax, qword ptr [rsi + 0x10]
0000000140595451 call     qword ptr [rip + 0xeeea1]
0000000140595457 mov      r14d, 0xb778
000000014059545d mov      rcx, rbx
0000000140595460 and      eax, edi
0000000140595462 mov      edx, r14d
0000000140595465 mov      dword ptr [rbp - 0x30], eax
0000000140595468 mov      rax, qword ptr [rsi + 0x20]
000000014059546c call     qword ptr [rip + 0xeee86]
0000000140595472 shr      eax, 0x10
0000000140595475 mov      edx, r14d
0000000140595478 movzx    eax, al
000000014059547b mov      rcx, rbx
000000014059547e mov      dword ptr [rbp - 0x20], eax
0000000140595481 mov      dword ptr [rbp - 0x38], eax
0000000140595484 mov      rax, qword ptr [rsi + 0x10]
0000000140595488 call     qword ptr [rip + 0xeee6a]
000000014059548e mov      r14d, 0xb770
0000000140595494 mov      rcx, rbx
0000000140595497 and      eax, edi
0000000140595499 mov      edx, r14d
000000014059549c mov      dword ptr [rbp - 0x1c], eax
000000014059549f mov      rax, qword ptr [rsi + 0x20]
00000001405954a3 call     qword ptr [rip + 0xeee4f]
00000001405954a9 shr      eax, 0x10
00000001405954ac mov      edx, r14d
00000001405954af movzx    eax, al
00000001405954b2 mov      rcx, rbx
00000001405954b5 mov      dword ptr [rbp - 0x18], eax
00000001405954b8 mov      rax, qword ptr [rsi + 0x10]
00000001405954bc call     qword ptr [rip + 0xeee36]
00000001405954c2 mov      r14d, 0xb768
00000001405954c8 mov      rcx, rbx
00000001405954cb and      eax, edi
00000001405954cd mov      edx, r14d
00000001405954d0 mov      dword ptr [rbp - 0x14], eax
00000001405954d3 mov      rax, qword ptr [rsi + 0x20]
00000001405954d7 call     qword ptr [rip + 0xeee1b]
00000001405954dd shr      eax, 0x10
00000001405954e0 mov      edx, r14d
00000001405954e3 movzx    r13d, al
00000001405954e7 mov      rcx, rbx
00000001405954ea mov      rax, qword ptr [rsi + 0x10]
00000001405954ee call     qword ptr [rip + 0xeee04]
00000001405954f4 lea      r15d, [r14 - 8]
00000001405954f8 mov      rcx, rbx
00000001405954fb movzx    r12d, ax
00000001405954ff mov      edx, r15d
0000000140595502 mov      rax, qword ptr [rsi + 0x20]
0000000140595506 and      r12d, edi
0000000140595509 call     qword ptr [rip + 0xeede9]
000000014059550f shr      eax, 0x10
0000000140595512 mov      edx, r15d
0000000140595515 movzx    r14d, al
0000000140595519 mov      rcx, rbx
000000014059551c mov      rax, qword ptr [rsi + 0x10]
0000000140595520 call     qword ptr [rip + 0xeedd2]
0000000140595526 movzx    r15d, ax
000000014059552a mov      rcx, rbx
000000014059552d mov      rax, qword ptr [rsi + 0x20]
0000000140595531 and      r15d, edi
0000000140595534 mov      edi, 0xb758
0000000140595539 mov      edx, edi
000000014059553b call     qword ptr [rip + 0xeedb7]
0000000140595541 mov      rcx, qword ptr [rbp - 0x28]
0000000140595545 shr      eax, 0x10
0000000140595548 movzx    esi, al
000000014059554b mov      rax, qword ptr [rcx + 0x10]
000000014059554f mov      edx, edi
0000000140595551 mov      rcx, rbx
0000000140595554 call     qword ptr [rip + 0xeed9e]
000000014059555a mov      edx, 0xb750
000000014059555f mov      rcx, rbx
0000000140595562 movzx    edi, ax
0000000140595565 mov      rax, qword ptr [rbp - 0x28]
0000000140595569 and      edi, 0x1fff
000000014059556f mov      rax, qword ptr [rax + 0x20]
0000000140595573 call     qword ptr [rip + 0xeed7f]
0000000140595579 mov      rcx, qword ptr [rbp + 0x48]
000000014059557d mov      edx, 0xb750
0000000140595582 shr      eax, 0x10
0000000140595585 movzx    ebx, al
0000000140595588 mov      rax, qword ptr [rbp - 0x28]
000000014059558c mov      rax, qword ptr [rax + 0x10]
0000000140595590 call     qword ptr [rip + 0xeed62]
0000000140595596 and      eax, 0x1fff
000000014059559b lea      ecx, [r14 + r12]
000000014059559f add      ecx, r13d
00000001405955a2 mov      dword ptr [rbp - 0x38], eax
00000001405955a5 add      ecx, dword ptr [rbp - 0x20]
00000001405955a8 add      ecx, eax
00000001405955aa mov      eax, dword ptr [rbp - 0x30]
00000001405955ad add      ecx, dword ptr [rbp - 0x1c]
00000001405955b0 add      ecx, dword ptr [rbp - 0x18]
00000001405955b3 add      eax, dword ptr [rbp - 0x2c]
00000001405955b6 add      ecx, r15d
00000001405955b9 add      ecx, ebx
00000001405955bb add      ecx, dword ptr [rbp - 0x14]
00000001405955be add      ecx, edi
00000001405955c0 add      ecx, esi
00000001405955c2 cmp      eax, ecx
00000001405955c4 je       0x14058ebad
00000001405955ca mov      r14, qword ptr [rbp - 0x28]
00000001405955ce mov      edx, 0xb79c
00000001405955d3 mov      rcx, qword ptr [rbp + 0x48]
00000001405955d7 mov      rax, qword ptr [r14 + 0x20]
00000001405955db call     qword ptr [rip + 0xeed17]
00000001405955e1 mov      rcx, qword ptr [rbp + 0x48]
00000001405955e5 mov      r12d, 0x1fff
00000001405955eb shr      eax, 0x10
00000001405955ee and      eax, r12d
00000001405955f1 mov      dword ptr [rbp - 0x38], eax
00000001405955f4 mov      rax, qword ptr [rbp + 0x48]
00000001405955f8 mov      rcx, qword ptr [rcx + 8]
00000001405955fc lea      r13, [rax + 0x1320]
0000000140595603 mov      rax, qword ptr [rax + 0x18]
0000000140595607 mov      rdx, r13
000000014059560a mov      rax, qword ptr [rax + 0x108]
0000000140595611 call     qword ptr [rip + 0xeece1]
0000000140595617 mov      rax, qword ptr [rbp + 0x60]
000000014059561b mov      esi, dword ptr [rbp + 0x58]
000000014059561e mov      r15, qword ptr [rbp + 0x50]
0000000140595622 cmp      dword ptr [rax], esi
0000000140595624 jae      0x140595667
0000000140595626 mov      edx, dword ptr [rax]
0000000140595628 lea      r9, [rip + 0xdbd91]
000000014059562f mov      rax, qword ptr [rbp + 0x48]
0000000140595633 mov      r8d, esi
0000000140595636 sub      r8d, edx
0000000140595639 add      rdx, r15
000000014059563c mov      rcx, qword ptr [rax + 0x18]
0000000140595640 mov      eax, dword ptr [rbp - 0x38]
0000000140595643 mov      dword ptr [rsp + 0x20], eax
0000000140595647 mov      rax, qword ptr [rbp + 0x48]
000000014059564b mov      r10, qword ptr [rcx + 0x128]
0000000140595652 mov      rcx, qword ptr [rax + 8]
0000000140595656 mov      rax, r10
0000000140595659 call     qword ptr [rip + 0xeec99]
000000014059565f mov      rdi, qword ptr [rbp + 0x60]
0000000140595663 add      dword ptr [rdi], eax
0000000140595665 jmp      0x14059566b
0000000140595667 mov      rdi, qword ptr [rbp + 0x60]
000000014059566b mov      rax, qword ptr [rbp + 0x48]
000000014059566f mov      rdx, r13
0000000140595672 mov      rbx, qword ptr [rbp + 0x48]
0000000140595676 mov      rax, qword ptr [rax + 0x18]
000000014059567a mov      rcx, qword ptr [rbx + 8]
000000014059567e mov      rax, qword ptr [rax + 0x110]
0000000140595685 call     qword ptr [rip + 0xeec6d]
000000014059568b mov      rax, qword ptr [r14 + 0x10]
000000014059568f mov      edx, 0xb79c
0000000140595694 mov      rcx, rbx
0000000140595697 call     qword ptr [rip + 0xeec5b]
000000014059569d mov      rcx, rbx
00000001405956a0 mov      rdx, r13
00000001405956a3 and      eax, r12d
00000001405956a6 mov      dword ptr [rbp - 0x38], eax
00000001405956a9 mov      rax, rbx
00000001405956ac mov      rax, qword ptr [rbx + 0x18]
00000001405956b0 mov      rcx, qword ptr [rbx + 8]
00000001405956b4 mov      rax, qword ptr [rax + 0x108]
00000001405956bb call     qword ptr [rip + 0xeec37]
00000001405956c1 cmp      dword ptr [rdi], esi
00000001405956c3 jae      0x1405956fe
00000001405956c5 mov      rcx, qword ptr [rbx + 0x18]
00000001405956c9 lea      r9, [rip + 0xdbd20]
00000001405956d0 mov      edx, dword ptr [rdi]
00000001405956d2 mov      rax, rbx
00000001405956d5 mov      eax, dword ptr [rbp - 0x38]
00000001405956d8 mov      r8d, esi
00000001405956db mov      dword ptr [rsp + 0x20], eax
00000001405956df sub      r8d, edx
00000001405956e2 mov      r10, qword ptr [rcx + 0x128]
00000001405956e9 mov      rax, rbx
00000001405956ec mov      rcx, qword ptr [rbx + 8]
00000001405956f0 mov      rax, r10
00000001405956f3 add      rdx, r15
00000001405956f6 call     qword ptr [rip + 0xeebfc]
00000001405956fc add      dword ptr [rdi], eax
00000001405956fe mov      rax, qword ptr [rbp + 0x48]
0000000140595702 mov      rdx, r13
0000000140595705 mov      rbx, qword ptr [rbp + 0x48]
0000000140595709 mov      rax, qword ptr [rax + 0x18]
000000014059570d mov      rcx, qword ptr [rbx + 8]
0000000140595711 mov      rax, qword ptr [rax + 0x110]
0000000140595718 call     qword ptr [rip + 0xeebda]
000000014059571e mov      rax, qword ptr [r14 + 0x20]
0000000140595722 mov      edx, 0xb778
0000000140595727 mov      rcx, rbx
000000014059572a call     qword ptr [rip + 0xeebc8]
0000000140595730 shr      eax, 0x10
0000000140595733 mov      rcx, rbx
0000000140595736 movzx    eax, al
0000000140595739 mov      rdx, r13
000000014059573c mov      dword ptr [rbp - 0x38], eax
000000014059573f mov      rax, rbx
0000000140595742 mov      rax, qword ptr [rbx + 0x18]
0000000140595746 mov      rcx, qword ptr [rbx + 8]
000000014059574a mov      rax, qword ptr [rax + 0x108]
0000000140595751 call     qword ptr [rip + 0xeeba1]
0000000140595757 cmp      dword ptr [rdi], esi
0000000140595759 jae      0x140595794
000000014059575b mov      rcx, qword ptr [rbx + 0x18]
000000014059575f lea      r9, [rip + 0xdbcba]
0000000140595766 mov      edx, dword ptr [rdi]
0000000140595768 mov      rax, rbx
000000014059576b mov      eax, dword ptr [rbp - 0x38]
000000014059576e mov      r8d, esi
0000000140595771 mov      dword ptr [rsp + 0x20], eax
0000000140595775 sub      r8d, edx
0000000140595778 mov      r10, qword ptr [rcx + 0x128]
000000014059577f mov      rax, rbx
0000000140595782 mov      rcx, qword ptr [rbx + 8]
0000000140595786 mov      rax, r10
0000000140595789 add      rdx, r15
000000014059578c call     qword ptr [rip + 0xeeb66]
0000000140595792 add      dword ptr [rdi], eax
0000000140595794 mov      rax, qword ptr [rbp + 0x48]
0000000140595798 mov      rdx, r13
000000014059579b mov      rbx, qword ptr [rbp + 0x48]
000000014059579f mov      rax, qword ptr [rax + 0x18]
00000001405957a3 mov      rcx, qword ptr [rbx + 8]
00000001405957a7 mov      rax, qword ptr [rax + 0x110]
00000001405957ae call     qword ptr [rip + 0xeeb44]
00000001405957b4 mov      rax, qword ptr [r14 + 0x10]
00000001405957b8 mov      edx, 0xb778
00000001405957bd mov      rcx, rbx
00000001405957c0 call     qword ptr [rip + 0xeeb32]
00000001405957c6 mov      rcx, rbx
00000001405957c9 mov      rdx, r13
00000001405957cc and      eax, r12d
00000001405957cf mov      dword ptr [rbp - 0x38], eax
00000001405957d2 mov      rax, rbx
00000001405957d5 mov      rax, qword ptr [rbx + 0x18]
00000001405957d9 mov      rcx, qword ptr [rbx + 8]
00000001405957dd mov      rax, qword ptr [rax + 0x108]
00000001405957e4 call     qword ptr [rip + 0xeeb0e]
00000001405957ea cmp      dword ptr [rdi], esi
00000001405957ec jae      0x140595827
00000001405957ee mov      rcx, qword ptr [rbx + 0x18]
00000001405957f2 lea      r9, [rip + 0xdb947]
00000001405957f9 mov      edx, dword ptr [rdi]
00000001405957fb mov      rax, rbx
00000001405957fe mov      eax, dword ptr [rbp - 0x38]
0000000140595801 mov      r8d, esi
0000000140595804 mov      dword ptr [rsp + 0x20], eax
0000000140595808 sub      r8d, edx
000000014059580b mov      r10, qword ptr [rcx + 0x128]
0000000140595812 mov      rax, rbx
0000000140595815 mov      rcx, qword ptr [rbx + 8]
0000000140595819 mov      rax, r10
000000014059581c add      rdx, r15
000000014059581f call     qword ptr [rip + 0xeead3]
0000000140595825 add      dword ptr [rdi], eax
0000000140595827 mov      rax, qword ptr [rbp + 0x48]
000000014059582b mov      rdx, r13
000000014059582e mov      rbx, qword ptr [rbp + 0x48]
0000000140595832 mov      rax, qword ptr [rax + 0x18]
0000000140595836 mov      rcx, qword ptr [rbx + 8]
000000014059583a mov      rax, qword ptr [rax + 0x110]
0000000140595841 call     qword ptr [rip + 0xeeab1]
0000000140595847 mov      rax, qword ptr [r14 + 0x20]
000000014059584b mov      edx, 0xb770
0000000140595850 mov      rcx, rbx
0000000140595853 call     qword ptr [rip + 0xeea9f]
0000000140595859 shr      eax, 0x10
000000014059585c mov      rcx, rbx
000000014059585f movzx    eax, al
0000000140595862 mov      rdx, r13
0000000140595865 mov      dword ptr [rbp - 0x38], eax
0000000140595868 mov      rax, rbx
000000014059586b mov      rax, qword ptr [rbx + 0x18]
000000014059586f mov      rcx, qword ptr [rbx + 8]
0000000140595873 mov      rax, qword ptr [rax + 0x108]
000000014059587a call     qword ptr [rip + 0xeea78]
0000000140595880 cmp      dword ptr [rdi], esi
0000000140595882 jae      0x1405958bd
0000000140595884 mov      rcx, qword ptr [rbx + 0x18]
0000000140595888 lea      r9, [rip + 0xdbbc1]
000000014059588f mov      edx, dword ptr [rdi]
0000000140595891 mov      rax, rbx
0000000140595894 mov      eax, dword ptr [rbp - 0x38]
0000000140595897 mov      r8d, esi
000000014059589a mov      dword ptr [rsp + 0x20], eax
000000014059589e sub      r8d, edx
00000001405958a1 mov      r10, qword ptr [rcx + 0x128]
00000001405958a8 mov      rax, rbx
00000001405958ab mov      rcx, qword ptr [rbx + 8]
00000001405958af mov      rax, r10
00000001405958b2 add      rdx, r15
00000001405958b5 call     qword ptr [rip + 0xeea3d]
00000001405958bb add      dword ptr [rdi], eax
00000001405958bd mov      rax, qword ptr [rbp + 0x48]
00000001405958c1 mov      rdx, r13
00000001405958c4 mov      rbx, qword ptr [rbp + 0x48]
00000001405958c8 mov      rax, qword ptr [rax + 0x18]
00000001405958cc mov      rcx, qword ptr [rbx + 8]
00000001405958d0 mov      rax, qword ptr [rax + 0x110]
00000001405958d7 call     qword ptr [rip + 0xeea1b]
00000001405958dd mov      rax, qword ptr [r14 + 0x10]
00000001405958e1 mov      edx, 0xb770
00000001405958e6 mov      rcx, rbx
00000001405958e9 call     qword ptr [rip + 0xeea09]
00000001405958ef mov      rcx, rbx
00000001405958f2 mov      rdx, r13
00000001405958f5 and      eax, r12d
00000001405958f8 mov      dword ptr [rbp - 0x38], eax
00000001405958fb mov      rax, rbx
00000001405958fe mov      rax, qword ptr [rbx + 0x18]
0000000140595902 mov      rcx, qword ptr [rbx + 8]
0000000140595906 mov      rax, qword ptr [rax + 0x108]
000000014059590d call     qword ptr [rip + 0xee9e5]
0000000140595913 cmp      dword ptr [rdi], esi
0000000140595915 jae      0x140595950
0000000140595917 mov      rcx, qword ptr [rbx + 0x18]
000000014059591b lea      r9, [rip + 0xdb7ee]
0000000140595922 mov      edx, dword ptr [rdi]
0000000140595924 mov      rax, rbx
0000000140595927 mov      eax, dword ptr [rbp - 0x38]
000000014059592a mov      r8d, esi
000000014059592d mov      dword ptr [rsp + 0x20], eax
0000000140595931 sub      r8d, edx
0000000140595934 mov      r10, qword ptr [rcx + 0x128]
000000014059593b mov      rax, rbx
000000014059593e mov      rcx, qword ptr [rbx + 8]
0000000140595942 mov      rax, r10
0000000140595945 add      rdx, r15
0000000140595948 call     qword ptr [rip + 0xee9aa]
000000014059594e add      dword ptr [rdi], eax
0000000140595950 mov      rax, qword ptr [rbp + 0x48]
0000000140595954 mov      rdx, r13
0000000140595957 mov      rbx, qword ptr [rbp + 0x48]
000000014059595b mov      rax, qword ptr [rax + 0x18]
000000014059595f mov      rcx, qword ptr [rbx + 8]
0000000140595963 mov      rax, qword ptr [rax + 0x110]
000000014059596a call     qword ptr [rip + 0xee988]
0000000140595970 mov      rax, qword ptr [r14 + 0x20]
0000000140595974 mov      edx, 0xb768
0000000140595979 mov      rcx, rbx
000000014059597c call     qword ptr [rip + 0xee976]
0000000140595982 shr      eax, 0x10
0000000140595985 mov      rcx, rbx
0000000140595988 movzx    eax, al
000000014059598b mov      rdx, r13
000000014059598e mov      dword ptr [rbp - 0x38], eax
0000000140595991 mov      rax, rbx
0000000140595994 mov      rax, qword ptr [rbx + 0x18]
0000000140595998 mov      rcx, qword ptr [rbx + 8]
000000014059599c mov      rax, qword ptr [rax + 0x108]
00000001405959a3 call     qword ptr [rip + 0xee94f]
00000001405959a9 cmp      dword ptr [rdi], esi
00000001405959ab jae      0x1405959e6
00000001405959ad mov      rcx, qword ptr [rbx + 0x18]
00000001405959b1 lea      r9, [rip + 0xdbac8]
00000001405959b8 mov      edx, dword ptr [rdi]
00000001405959ba mov      rax, rbx
00000001405959bd mov      eax, dword ptr [rbp - 0x38]
00000001405959c0 mov      r8d, esi
00000001405959c3 mov      dword ptr [rsp + 0x20], eax
00000001405959c7 sub      r8d, edx
00000001405959ca mov      r10, qword ptr [rcx + 0x128]
00000001405959d1 mov      rax, rbx
00000001405959d4 mov      rcx, qword ptr [rbx + 8]
00000001405959d8 mov      rax, r10
00000001405959db add      rdx, r15
00000001405959de call     qword ptr [rip + 0xee914]
00000001405959e4 add      dword ptr [rdi], eax
00000001405959e6 mov      rax, qword ptr [rbp + 0x48]
00000001405959ea mov      rdx, r13
00000001405959ed mov      rbx, qword ptr [rbp + 0x48]
00000001405959f1 mov      rax, qword ptr [rax + 0x18]
00000001405959f5 mov      rcx, qword ptr [rbx + 8]
00000001405959f9 mov      rax, qword ptr [rax + 0x110]
0000000140595a00 call     qword ptr [rip + 0xee8f2]
0000000140595a06 mov      rax, qword ptr [r14 + 0x10]
0000000140595a0a mov      edx, 0xb768
0000000140595a0f mov      rcx, rbx
0000000140595a12 call     qword ptr [rip + 0xee8e0]
0000000140595a18 mov      rcx, rbx
0000000140595a1b mov      rdx, r13
0000000140595a1e and      eax, r12d
0000000140595a21 mov      dword ptr [rbp - 0x38], eax
0000000140595a24 mov      rax, rbx
0000000140595a27 mov      rax, qword ptr [rbx + 0x18]
0000000140595a2b mov      rcx, qword ptr [rbx + 8]
0000000140595a2f mov      rax, qword ptr [rax + 0x108]
0000000140595a36 call     qword ptr [rip + 0xee8bc]
0000000140595a3c cmp      dword ptr [rdi], esi
0000000140595a3e jae      0x140595a79
0000000140595a40 mov      rcx, qword ptr [rbx + 0x18]
0000000140595a44 lea      r9, [rip + 0xdb695]
0000000140595a4b mov      edx, dword ptr [rdi]
0000000140595a4d mov      rax, rbx
0000000140595a50 mov      eax, dword ptr [rbp - 0x38]
0000000140595a53 mov      r8d, esi
0000000140595a56 mov      dword ptr [rsp + 0x20], eax
0000000140595a5a sub      r8d, edx
0000000140595a5d mov      r10, qword ptr [rcx + 0x128]
0000000140595a64 mov      rax, rbx
0000000140595a67 mov      rcx, qword ptr [rbx + 8]
0000000140595a6b mov      rax, r10
0000000140595a6e add      rdx, r15
0000000140595a71 call     qword ptr [rip + 0xee881]
0000000140595a77 add      dword ptr [rdi], eax
0000000140595a79 mov      rax, qword ptr [rbp + 0x48]
0000000140595a7d mov      rdx, r13
0000000140595a80 mov      rbx, qword ptr [rbp + 0x48]
0000000140595a84 mov      rax, qword ptr [rax + 0x18]
0000000140595a88 mov      rcx, qword ptr [rbx + 8]
0000000140595a8c mov      rax, qword ptr [rax + 0x110]
0000000140595a93 call     qword ptr [rip + 0xee85f]
0000000140595a99 mov      rax, qword ptr [r14 + 0x20]
0000000140595a9d mov      edx, 0xb760
0000000140595aa2 mov      rcx, rbx
0000000140595aa5 call     qword ptr [rip + 0xee84d]
0000000140595aab shr      eax, 0x10
0000000140595aae mov      rcx, rbx
0000000140595ab1 movzx    eax, al
0000000140595ab4 mov      rdx, r13
0000000140595ab7 mov      dword ptr [rbp - 0x38], eax
0000000140595aba mov      rax, rbx
0000000140595abd mov      rax, qword ptr [rbx + 0x18]
0000000140595ac1 mov      rcx, qword ptr [rbx + 8]
0000000140595ac5 mov      rax, qword ptr [rax + 0x108]
0000000140595acc call     qword ptr [rip + 0xee826]
0000000140595ad2 cmp      dword ptr [rdi], esi
0000000140595ad4 jae      0x140595b0f
0000000140595ad6 mov      rcx, qword ptr [rbx + 0x18]
0000000140595ada lea      r9, [rip + 0xdb9cf]
0000000140595ae1 mov      edx, dword ptr [rdi]
0000000140595ae3 mov      rax, rbx
0000000140595ae6 mov      eax, dword ptr [rbp - 0x38]
0000000140595ae9 mov      r8d, esi
0000000140595aec mov      dword ptr [rsp + 0x20], eax
0000000140595af0 sub      r8d, edx
0000000140595af3 mov      r10, qword ptr [rcx + 0x128]
0000000140595afa mov      rax, rbx
0000000140595afd mov      rcx, qword ptr [rbx + 8]
0000000140595b01 mov      rax, r10
0000000140595b04 add      rdx, r15
0000000140595b07 call     qword ptr [rip + 0xee7eb]
0000000140595b0d add      dword ptr [rdi], eax
0000000140595b0f mov      rax, qword ptr [rbp + 0x48]
0000000140595b13 mov      rdx, r13
0000000140595b16 mov      rbx, qword ptr [rbp + 0x48]
0000000140595b1a mov      rax, qword ptr [rax + 0x18]
0000000140595b1e mov      rcx, qword ptr [rbx + 8]
0000000140595b22 mov      rax, qword ptr [rax + 0x110]
0000000140595b29 call     qword ptr [rip + 0xee7c9]
0000000140595b2f mov      rax, qword ptr [r14 + 0x10]
0000000140595b33 mov      edx, 0xb760
0000000140595b38 mov      rcx, rbx
0000000140595b3b call     qword ptr [rip + 0xee7b7]
0000000140595b41 mov      rcx, rbx
0000000140595b44 mov      rdx, r13
0000000140595b47 and      eax, r12d
0000000140595b4a mov      dword ptr [rbp - 0x38], eax
0000000140595b4d mov      rax, rbx
0000000140595b50 mov      rax, qword ptr [rbx + 0x18]
0000000140595b54 mov      rcx, qword ptr [rbx + 8]
0000000140595b58 mov      rax, qword ptr [rax + 0x108]
0000000140595b5f call     qword ptr [rip + 0xee793]
0000000140595b65 cmp      dword ptr [rdi], esi
0000000140595b67 jae      0x140595ba2
0000000140595b69 mov      rcx, qword ptr [rbx + 0x18]
0000000140595b6d lea      r9, [rip + 0xdb53c]
0000000140595b74 mov      edx, dword ptr [rdi]
0000000140595b76 mov      rax, rbx
0000000140595b79 mov      eax, dword ptr [rbp - 0x38]
0000000140595b7c mov      r8d, esi
0000000140595b7f mov      dword ptr [rsp + 0x20], eax
0000000140595b83 sub      r8d, edx
0000000140595b86 mov      r10, qword ptr [rcx + 0x128]
0000000140595b8d mov      rax, rbx
0000000140595b90 mov      rcx, qword ptr [rbx + 8]
0000000140595b94 mov      rax, r10
0000000140595b97 add      rdx, r15
0000000140595b9a call     qword ptr [rip + 0xee758]
0000000140595ba0 add      dword ptr [rdi], eax
0000000140595ba2 mov      rax, qword ptr [rbp + 0x48]
0000000140595ba6 mov      rdx, r13
0000000140595ba9 mov      rbx, qword ptr [rbp + 0x48]
0000000140595bad mov      rax, qword ptr [rax + 0x18]
0000000140595bb1 mov      rcx, qword ptr [rbx + 8]
0000000140595bb5 mov      rax, qword ptr [rax + 0x110]
0000000140595bbc call     qword ptr [rip + 0xee736]
0000000140595bc2 mov      rax, qword ptr [r14 + 0x20]
0000000140595bc6 mov      edx, 0xb758
0000000140595bcb mov      rcx, rbx
0000000140595bce call     qword ptr [rip + 0xee724]
0000000140595bd4 shr      eax, 0x10
0000000140595bd7 mov      rcx, rbx
0000000140595bda movzx    eax, al
0000000140595bdd mov      rdx, r13
0000000140595be0 mov      dword ptr [rbp - 0x38], eax
0000000140595be3 mov      rax, rbx
0000000140595be6 mov      rax, qword ptr [rbx + 0x18]
0000000140595bea mov      rcx, qword ptr [rbx + 8]
0000000140595bee mov      rax, qword ptr [rax + 0x108]
0000000140595bf5 call     qword ptr [rip + 0xee6fd]
0000000140595bfb cmp      dword ptr [rdi], esi
0000000140595bfd jae      0x140595c38
0000000140595bff mov      rcx, qword ptr [rbx + 0x18]
0000000140595c03 lea      r9, [rip + 0xdb8d6]
0000000140595c0a mov      edx, dword ptr [rdi]
0000000140595c0c mov      rax, rbx
0000000140595c0f mov      eax, dword ptr [rbp - 0x38]
0000000140595c12 mov      r8d, esi
0000000140595c15 mov      dword ptr [rsp + 0x20], eax
0000000140595c19 sub      r8d, edx
0000000140595c1c mov      r10, qword ptr [rcx + 0x128]
0000000140595c23 mov      rax, rbx
0000000140595c26 mov      rcx, qword ptr [rbx + 8]
0000000140595c2a mov      rax, r10
0000000140595c2d add      rdx, r15
0000000140595c30 call     qword ptr [rip + 0xee6c2]
0000000140595c36 add      dword ptr [rdi], eax
0000000140595c38 mov      rax, qword ptr [rbp + 0x48]
0000000140595c3c mov      rdx, r13
0000000140595c3f mov      rbx, qword ptr [rbp + 0x48]
0000000140595c43 mov      rax, qword ptr [rax + 0x18]
0000000140595c47 mov      rcx, qword ptr [rbx + 8]
0000000140595c4b mov      rax, qword ptr [rax + 0x110]
0000000140595c52 call     qword ptr [rip + 0xee6a0]
0000000140595c58 mov      rax, qword ptr [r14 + 0x10]
0000000140595c5c mov      edx, 0xb758
0000000140595c61 mov      rcx, rbx
0000000140595c64 call     qword ptr [rip + 0xee68e]
0000000140595c6a mov      rcx, rbx
0000000140595c6d mov      rdx, r13
0000000140595c70 and      eax, r12d
0000000140595c73 mov      dword ptr [rbp - 0x38], eax
0000000140595c76 mov      rax, rbx
0000000140595c79 mov      rax, qword ptr [rbx + 0x18]
0000000140595c7d mov      rcx, qword ptr [rbx + 8]
0000000140595c81 mov      rax, qword ptr [rax + 0x108]
0000000140595c88 call     qword ptr [rip + 0xee66a]
0000000140595c8e cmp      dword ptr [rdi], esi
0000000140595c90 jae      0x140595ccb
0000000140595c92 mov      rcx, qword ptr [rbx + 0x18]
0000000140595c96 lea      r9, [rip + 0xdb3e3]
0000000140595c9d mov      edx, dword ptr [rdi]
0000000140595c9f mov      rax, rbx
0000000140595ca2 mov      eax, dword ptr [rbp - 0x38]
0000000140595ca5 mov      r8d, esi
0000000140595ca8 mov      dword ptr [rsp + 0x20], eax
0000000140595cac sub      r8d, edx
0000000140595caf mov      r10, qword ptr [rcx + 0x128]
0000000140595cb6 mov      rax, rbx
0000000140595cb9 mov      rcx, qword ptr [rbx + 8]
0000000140595cbd mov      rax, r10
0000000140595cc0 add      rdx, r15
0000000140595cc3 call     qword ptr [rip + 0xee62f]
0000000140595cc9 add      dword ptr [rdi], eax
0000000140595ccb mov      rax, qword ptr [rbp + 0x48]
0000000140595ccf mov      rdx, r13
0000000140595cd2 mov      rbx, qword ptr [rbp + 0x48]
0000000140595cd6 mov      rax, qword ptr [rax + 0x18]
0000000140595cda mov      rcx, qword ptr [rbx + 8]
0000000140595cde mov      rax, qword ptr [rax + 0x110]
0000000140595ce5 call     qword ptr [rip + 0xee60d]
0000000140595ceb mov      rax, qword ptr [r14 + 0x20]
0000000140595cef mov      edx, 0xb750
0000000140595cf4 mov      rcx, rbx
0000000140595cf7 call     qword ptr [rip + 0xee5fb]
0000000140595cfd shr      eax, 0x10
0000000140595d00 mov      rcx, rbx
0000000140595d03 movzx    eax, al
0000000140595d06 mov      rdx, r13
0000000140595d09 mov      dword ptr [rbp - 0x38], eax
0000000140595d0c mov      rax, rbx
0000000140595d0f mov      rax, qword ptr [rbx + 0x18]
0000000140595d13 mov      rcx, qword ptr [rbx + 8]
0000000140595d17 mov      rax, qword ptr [rax + 0x108]
0000000140595d1e call     qword ptr [rip + 0xee5d4]
0000000140595d24 cmp      dword ptr [rdi], esi
0000000140595d26 jae      0x140595d61
0000000140595d28 mov      rcx, qword ptr [rbx + 0x18]
0000000140595d2c lea      r9, [rip + 0xdb7dd]
0000000140595d33 mov      edx, dword ptr [rdi]
0000000140595d35 mov      rax, rbx
0000000140595d38 mov      eax, dword ptr [rbp - 0x38]
0000000140595d3b mov      r8d, esi
0000000140595d3e mov      dword ptr [rsp + 0x20], eax
0000000140595d42 sub      r8d, edx
0000000140595d45 mov      r10, qword ptr [rcx + 0x128]
0000000140595d4c mov      rax, rbx
0000000140595d4f mov      rcx, qword ptr [rbx + 8]
0000000140595d53 mov      rax, r10
0000000140595d56 add      rdx, r15
0000000140595d59 call     qword ptr [rip + 0xee599]
0000000140595d5f add      dword ptr [rdi], eax
0000000140595d61 mov      rax, qword ptr [rbp + 0x48]
0000000140595d65 mov      rdx, r13
0000000140595d68 mov      rbx, qword ptr [rbp + 0x48]
0000000140595d6c mov      rax, qword ptr [rax + 0x18]
0000000140595d70 mov      rcx, qword ptr [rbx + 8]
0000000140595d74 mov      rax, qword ptr [rax + 0x110]
0000000140595d7b call     qword ptr [rip + 0xee577]
0000000140595d81 mov      rax, qword ptr [r14 + 0x10]
0000000140595d85 mov      edx, 0xb750
0000000140595d8a mov      rcx, rbx
0000000140595d8d call     qword ptr [rip + 0xee565]
0000000140595d93 mov      rcx, rbx
0000000140595d96 mov      rdx, r13
0000000140595d99 and      eax, r12d
0000000140595d9c mov      dword ptr [rbp - 0x38], eax
0000000140595d9f mov      rax, rbx
0000000140595da2 mov      rax, qword ptr [rbx + 0x18]
0000000140595da6 mov      rcx, qword ptr [rbx + 8]
0000000140595daa mov      rax, qword ptr [rax + 0x108]
0000000140595db1 call     qword ptr [rip + 0xee541]
0000000140595db7 cmp      dword ptr [rdi], esi
0000000140595db9 jae      0x140595df5
0000000140595dbb lea      r9, [rip + 0xdb28e]
0000000140595dc2 mov      edx, dword ptr [rdi]
0000000140595dc4 mov      rax, qword ptr [rbp + 0x48]
0000000140595dc8 sub      esi, edx
0000000140595dca add      rdx, r15
0000000140595dcd mov      r8d, esi
0000000140595dd0 mov      rax, qword ptr [rax + 0x18]
0000000140595dd4 mov      r10, qword ptr [rax + 0x128]
0000000140595ddb mov      eax, dword ptr [rbp - 0x38]
0000000140595dde mov      dword ptr [rsp + 0x20], eax
0000000140595de2 mov      rax, qword ptr [rbp + 0x48]
0000000140595de6 mov      rcx, qword ptr [rax + 8]
0000000140595dea mov      rax, r10
0000000140595ded call     qword ptr [rip + 0xee505]
0000000140595df3 add      dword ptr [rdi], eax
0000000140595df5 mov      rdx, r13
0000000140595df8 jmp      0x14058eaaf
0000000140595dfd mov      rbx, qword ptr [rbp + 0x48]
0000000140595e01 mov      r12d, 0xb704
0000000140595e07 mov      rax, qword ptr [rsi]
0000000140595e0a mov      edx, r12d
0000000140595e0d mov      rcx, rbx
0000000140595e10 call     qword ptr [rip + 0xee4e2]
0000000140595e16 movzx    eax, al
0000000140595e19 mov      dword ptr [rbp - 0x38], eax
0000000140595e1c test     eax, eax
0000000140595e1e jne      0x14058ebb1
0000000140595e24 mov      rax, qword ptr [rsi]
0000000140595e27 mov      edx, r12d
0000000140595e2a mov      rcx, rbx
0000000140595e2d call     qword ptr [rip + 0xee4c5]
0000000140595e33 mov      rcx, qword ptr [rbp + 0x48]
0000000140595e37 movzx    eax, al
0000000140595e3a mov      dword ptr [rbp - 0x38], eax
0000000140595e3d mov      rax, rbx
0000000140595e40 lea      rbx, [rbx + 0x1320]
0000000140595e47 mov      rcx, qword ptr [rcx + 8]
0000000140595e4b mov      rdx, rbx
0000000140595e4e mov      rax, qword ptr [rax + 0x18]
0000000140595e52 mov      rax, qword ptr [rax + 0x108]
0000000140595e59 call     qword ptr [rip + 0xee499]
0000000140595e5f mov      esi, dword ptr [rbp + 0x58]
0000000140595e62 cmp      dword ptr [rdi], esi
0000000140595e64 jae      0x14058eaac
0000000140595e6a lea      r9, [rip + 0xdb6cf]
0000000140595e71 mov      edx, dword ptr [rdi]
0000000140595e73 mov      rax, qword ptr [rbp + 0x48]
0000000140595e77 sub      esi, edx
0000000140595e79 mov      r8d, esi
0000000140595e7c add      rdx, r15
0000000140595e7f mov      rax, qword ptr [rax + 0x18]
0000000140595e83 mov      r10, qword ptr [rax + 0x128]
0000000140595e8a mov      eax, dword ptr [rbp - 0x38]
0000000140595e8d mov      dword ptr [rsp + 0x20], eax
0000000140595e91 mov      rax, qword ptr [rbp + 0x48]
0000000140595e95 mov      rcx, qword ptr [rax + 8]
0000000140595e99 mov      rax, r10
0000000140595e9c call     qword ptr [rip + 0xee456]
0000000140595ea2 jmp      0x14058eaaa
0000000140595ea7 mov      rbx, qword ptr [rbp + 0x48]
0000000140595eab mov      r12d, 0xb704
0000000140595eb1 mov      rax, qword ptr [rsi + 0x10]
0000000140595eb5 mov      edx, r12d
0000000140595eb8 mov      rcx, rbx
0000000140595ebb call     qword ptr [rip + 0xee437]
0000000140595ec1 movzx    eax, ax
0000000140595ec4 shr      eax, 8
0000000140595ec7 mov      dword ptr [rbp - 0x38], eax
0000000140595eca test     eax, eax
0000000140595ecc jne      0x14058ebb1
0000000140595ed2 mov      rax, qword ptr [rsi + 0x10]
0000000140595ed6 mov      edx, r12d
0000000140595ed9 mov      rcx, rbx
0000000140595edc call     qword ptr [rip + 0xee416]
0000000140595ee2 mov      rcx, qword ptr [rbp + 0x48]
0000000140595ee6 movzx    eax, ax
0000000140595ee9 shr      eax, 8
0000000140595eec mov      dword ptr [rbp - 0x38], eax
0000000140595eef mov      rax, rbx
0000000140595ef2 mov      rcx, qword ptr [rcx + 8]
0000000140595ef6 lea      rbx, [rbx + 0x1320]
0000000140595efd mov      rdx, rbx
0000000140595f00 mov      rax, qword ptr [rax + 0x18]
0000000140595f04 mov      rax, qword ptr [rax + 0x108]
0000000140595f0b call     qword ptr [rip + 0xee3e7]
0000000140595f11 mov      esi, dword ptr [rbp + 0x58]
0000000140595f14 cmp      dword ptr [rdi], esi
0000000140595f16 jae      0x14058eaac
0000000140595f1c lea      r9, [rip + 0xdb64d]
0000000140595f23 jmp      0x140595e71
0000000140595f28 mov      rbx, qword ptr [rbp + 0x48]
0000000140595f2c mov      r12d, 0xb704
0000000140595f32 mov      rax, qword ptr [rsi + 0x20]
0000000140595f36 mov      edx, r12d
0000000140595f39 mov      rcx, rbx
0000000140595f3c call     qword ptr [rip + 0xee3b6]
0000000140595f42 shr      eax, 0x10
0000000140595f45 movzx    ecx, al
0000000140595f48 mov      dword ptr [rbp - 0x38], ecx
0000000140595f4b test     al, al
0000000140595f4d jne      0x14058ebb1
0000000140595f53 mov      rax, qword ptr [rsi + 0x20]
0000000140595f57 mov      edx, r12d
0000000140595f5a mov      rcx, rbx
0000000140595f5d call     qword ptr [rip + 0xee395]
0000000140595f63 mov      rcx, qword ptr [rbp + 0x48]
0000000140595f67 shr      eax, 0x10
0000000140595f6a movzx    eax, al
0000000140595f6d mov      dword ptr [rbp - 0x38], eax
0000000140595f70 mov      rax, rbx
0000000140595f73 mov      rcx, qword ptr [rcx + 8]
0000000140595f77 lea      rbx, [rbx + 0x1320]
0000000140595f7e mov      rdx, rbx
0000000140595f81 mov      rax, qword ptr [rax + 0x18]
0000000140595f85 mov      rax, qword ptr [rax + 0x108]
0000000140595f8c call     qword ptr [rip + 0xee366]
0000000140595f92 mov      esi, dword ptr [rbp + 0x58]
0000000140595f95 cmp      dword ptr [rdi], esi
0000000140595f97 jae      0x14058eaac
0000000140595f9d lea      r9, [rip + 0xdb5fc]
0000000140595fa4 jmp      0x140595e71
0000000140595fa9 mov      rax, qword ptr [rbp + 0x48]
0000000140595fad cmp      byte ptr [rax + 0x105], 5
0000000140595fb4 jne      0x14058ebb1
0000000140595fba mov      ebx, 2
0000000140595fbf lea      r8, [rbp - 0x38]
0000000140595fc3 mov      esi, 0x780
0000000140595fc8 mov      r9d, ebx
0000000140595fcb mov      edx, esi
0000000140595fcd mov      rcx, rax
0000000140595fd0 call     0x1403695ac
0000000140595fd5 mov      r14d, eax
0000000140595fd8 test     eax, eax
0000000140595fda jne      0x14058ebb1
0000000140595fe0 and      dword ptr [rbp - 0x38], r13d
0000000140595fe4 je       0x14058ebb1
0000000140595fea mov      rcx, qword ptr [rbp + 0x48]
0000000140595fee lea      r8, [rbp - 0x38]
0000000140595ff2 mov      r9d, ebx
0000000140595ff5 mov      edx, esi
0000000140595ff7 call     0x1403695ac
0000000140595ffc mov      r14d, eax
0000000140595fff test     eax, eax
0000000140596001 mov      rax, qword ptr [rbp + 0x48]
0000000140596005 jne      0x14058ebb5
000000014059600b and      dword ptr [rbp - 0x38], r13d
000000014059600f lea      rbx, [rax + 0x1320]
0000000140596016 mov      rax, qword ptr [rax + 0x18]
000000014059601a mov      rdx, rbx
000000014059601d mov      rcx, qword ptr [rbp + 0x48]
0000000140596021 mov      rax, qword ptr [rax + 0x108]
0000000140596028 mov      rcx, qword ptr [rcx + 8]
000000014059602c call     qword ptr [rip + 0xee2c6]
0000000140596032 mov      esi, dword ptr [rbp + 0x58]
0000000140596035 cmp      dword ptr [rdi], esi
0000000140596037 jae      0x14058eaac
000000014059603d lea      r9, [rip + 0xdb58c]
0000000140596044 jmp      0x140595e71
0000000140596049 mov      rax, qword ptr [rbp + 0x48]
000000014059604d cmp      byte ptr [rax + 0x105], 5
0000000140596054 jne      0x14058ebb1
000000014059605a mov      ebx, 2
000000014059605f lea      r8, [rbp - 0x38]
0000000140596063 mov      esi, 0x780
0000000140596068 mov      r9d, ebx
000000014059606b mov      edx, esi
000000014059606d mov      rcx, rax
0000000140596070 call     0x1403695ac
0000000140596075 mov      r14d, eax
0000000140596078 test     eax, eax
000000014059607a jne      0x14058ebb1
0000000140596080 mov      eax, dword ptr [rbp - 0x38]
0000000140596083 shr      eax, 1
0000000140596085 and      eax, r13d
0000000140596088 mov      dword ptr [rbp - 0x38], eax
000000014059608b je       0x14058ebb1
0000000140596091 mov      rcx, qword ptr [rbp + 0x48]
0000000140596095 lea      r8, [rbp - 0x38]
0000000140596099 mov      r9d, ebx
000000014059609c mov      edx, esi
000000014059609e call     0x1403695ac
00000001405960a3 mov      r14d, eax
00000001405960a6 test     eax, eax
00000001405960a8 jne      0x14058ebb1
00000001405960ae mov      eax, dword ptr [rbp - 0x38]
00000001405960b1 mov      rcx, qword ptr [rbp + 0x48]
00000001405960b5 shr      eax, 1
00000001405960b7 and      eax, r13d
00000001405960ba mov      dword ptr [rbp - 0x38], eax
00000001405960bd mov      rax, qword ptr [rbp + 0x48]
00000001405960c1 mov      rcx, qword ptr [rcx + 8]
00000001405960c5 lea      rbx, [rax + 0x1320]
00000001405960cc mov      rax, qword ptr [rax + 0x18]
00000001405960d0 mov      rdx, rbx
00000001405960d3 mov      rax, qword ptr [rax + 0x108]
00000001405960da call     qword ptr [rip + 0xee218]
00000001405960e0 mov      esi, dword ptr [rbp + 0x58]
00000001405960e3 cmp      dword ptr [rdi], esi
00000001405960e5 jae      0x14058eaac
00000001405960eb lea      r9, [rip + 0xdb4fe]
00000001405960f2 jmp      0x140595e71
00000001405960f7 mov      rax, qword ptr [rbp + 0x48]
00000001405960fb cmp      byte ptr [rax + 0x105], 5
0000000140596102 jne      0x14058ebb1
0000000140596108 mov      ebx, 2
000000014059610d lea      r8, [rbp - 0x38]
0000000140596111 mov      esi, 0x780
0000000140596116 mov      r9d, ebx
0000000140596119 mov      edx, esi
000000014059611b mov      rcx, rax
000000014059611e call     0x1403695ac
0000000140596123 mov      r14d, eax
0000000140596126 test     eax, eax
0000000140596128 jne      0x14058ebb1
000000014059612e mov      eax, dword ptr [rbp - 0x38]
0000000140596131 shr      eax, 2
0000000140596134 and      eax, r13d
0000000140596137 mov      dword ptr [rbp - 0x38], eax
000000014059613a je       0x14058ebb1
0000000140596140 mov      rcx, qword ptr [rbp + 0x48]
0000000140596144 lea      r8, [rbp - 0x38]
0000000140596148 mov      r9d, ebx
000000014059614b mov      edx, esi
000000014059614d call     0x1403695ac
0000000140596152 mov      r14d, eax
0000000140596155 test     eax, eax
0000000140596157 jne      0x14058ebb1
000000014059615d mov      eax, dword ptr [rbp - 0x38]
0000000140596160 mov      rcx, qword ptr [rbp + 0x48]
0000000140596164 shr      eax, 2
0000000140596167 and      eax, r13d
000000014059616a mov      dword ptr [rbp - 0x38], eax
000000014059616d mov      rax, qword ptr [rbp + 0x48]
0000000140596171 mov      rcx, qword ptr [rcx + 8]
0000000140596175 lea      rbx, [rax + 0x1320]
000000014059617c mov      rax, qword ptr [rax + 0x18]
0000000140596180 mov      rdx, rbx
0000000140596183 mov      rax, qword ptr [rax + 0x108]
000000014059618a call     qword ptr [rip + 0xee168]
0000000140596190 mov      esi, dword ptr [rbp + 0x58]
0000000140596193 cmp      dword ptr [rdi], esi
0000000140596195 jae      0x14058eaac
000000014059619b lea      r9, [rip + 0xdb46e]
00000001405961a2 jmp      0x140595e71
00000001405961a7 mov      rax, qword ptr [rbp + 0x48]
00000001405961ab cmp      byte ptr [rax + 0x105], 5
00000001405961b2 jne      0x14058ebb1
00000001405961b8 mov      ebx, 2
00000001405961bd lea      r8, [rbp - 0x38]
00000001405961c1 mov      esi, 0x780
00000001405961c6 mov      r9d, ebx
00000001405961c9 mov      edx, esi
00000001405961cb mov      rcx, rax
00000001405961ce call     0x1403695ac
00000001405961d3 mov      r14d, eax
00000001405961d6 test     eax, eax
00000001405961d8 jne      0x14058ebb1
00000001405961de mov      eax, dword ptr [rbp - 0x38]
00000001405961e1 shr      eax, 3
00000001405961e4 and      eax, r13d
00000001405961e7 mov      dword ptr [rbp - 0x38], eax
00000001405961ea je       0x14058ebb1
00000001405961f0 mov      rcx, qword ptr [rbp + 0x48]
00000001405961f4 lea      r8, [rbp - 0x38]
00000001405961f8 mov      r9d, ebx
00000001405961fb mov      edx, esi
00000001405961fd call     0x1403695ac
0000000140596202 mov      r14d, eax
0000000140596205 test     eax, eax
0000000140596207 jne      0x14058ebb1
000000014059620d mov      eax, dword ptr [rbp - 0x38]
0000000140596210 mov      rcx, qword ptr [rbp + 0x48]
0000000140596214 shr      eax, 3
0000000140596217 and      eax, r13d
000000014059621a mov      dword ptr [rbp - 0x38], eax
000000014059621d mov      rax, qword ptr [rbp + 0x48]
0000000140596221 mov      rcx, qword ptr [rcx + 8]
0000000140596225 lea      rbx, [rax + 0x1320]
000000014059622c mov      rax, qword ptr [rax + 0x18]
0000000140596230 mov      rdx, rbx
0000000140596233 mov      rax, qword ptr [rax + 0x108]
000000014059623a call     qword ptr [rip + 0xee0b8]
0000000140596240 mov      esi, dword ptr [rbp + 0x58]
0000000140596243 cmp      dword ptr [rdi], esi
0000000140596245 jae      0x14058eaac
000000014059624b lea      r9, [rip + 0xdb3de]
0000000140596252 jmp      0x140595e71
0000000140596257 mov      rax, qword ptr [rbp + 0x48]
000000014059625b cmp      byte ptr [rax + 0x105], 5
0000000140596262 jne      0x14058ebb1
0000000140596268 mov      ebx, 2
000000014059626d lea      r8, [rbp - 0x38]
0000000140596271 mov      esi, 0x504
0000000140596276 mov      r9d, ebx
0000000140596279 mov      edx, esi
000000014059627b mov      rcx, rax
000000014059627e call     0x1403695ac
0000000140596283 mov      r14d, eax
0000000140596286 test     eax, eax
0000000140596288 jne      0x14058ebb1
000000014059628e and      dword ptr [rbp - 0x38], r13d
0000000140596292 je       0x14058ebb1
0000000140596298 mov      rcx, qword ptr [rbp + 0x48]
000000014059629c lea      r8, [rbp - 0x38]
00000001405962a0 mov      r9d, ebx
00000001405962a3 mov      edx, esi
00000001405962a5 call     0x1403695ac
00000001405962aa mov      r14d, eax
00000001405962ad test     eax, eax
00000001405962af mov      rax, qword ptr [rbp + 0x48]
00000001405962b3 jne      0x14058ebb5
00000001405962b9 and      dword ptr [rbp - 0x38], r13d
00000001405962bd lea      rbx, [rax + 0x1320]
00000001405962c4 mov      rax, qword ptr [rax + 0x18]
00000001405962c8 mov      rdx, rbx
00000001405962cb mov      rcx, qword ptr [rbp + 0x48]
00000001405962cf mov      rax, qword ptr [rax + 0x108]
00000001405962d6 mov      rcx, qword ptr [rcx + 8]
00000001405962da call     qword ptr [rip + 0xee018]
00000001405962e0 mov      esi, dword ptr [rbp + 0x58]
00000001405962e3 cmp      dword ptr [rdi], esi
00000001405962e5 jae      0x14058eaac
00000001405962eb lea      r9, [rip + 0xdb35e]
00000001405962f2 jmp      0x140595e71
00000001405962f7 mov      rax, qword ptr [rbp + 0x48]
00000001405962fb cmp      byte ptr [rax + 0x105], 5
0000000140596302 jne      0x14058ebb1
0000000140596308 mov      ebx, 2
000000014059630d lea      r8, [rbp - 0x38]
0000000140596311 mov      esi, 0x504
0000000140596316 mov      r9d, ebx
0000000140596319 mov      edx, esi
000000014059631b mov      rcx, rax
000000014059631e call     0x1403695ac
0000000140596323 mov      r14d, eax
0000000140596326 test     eax, eax
0000000140596328 jne      0x14058ebb1
000000014059632e mov      eax, dword ptr [rbp - 0x38]
0000000140596331 shr      eax, 1
0000000140596333 and      eax, r13d
0000000140596336 mov      dword ptr [rbp - 0x38], eax
0000000140596339 je       0x14058ebb1
000000014059633f mov      rcx, qword ptr [rbp + 0x48]
0000000140596343 lea      r8, [rbp - 0x38]
0000000140596347 mov      r9d, ebx
000000014059634a mov      edx, esi
000000014059634c call     0x1403695ac
0000000140596351 mov      r14d, eax
0000000140596354 test     eax, eax
0000000140596356 jne      0x14058ebb1
000000014059635c mov      eax, dword ptr [rbp - 0x38]
000000014059635f mov      rcx, qword ptr [rbp + 0x48]
0000000140596363 shr      eax, 1
0000000140596365 and      eax, r13d
0000000140596368 mov      dword ptr [rbp - 0x38], eax
000000014059636b mov      rax, qword ptr [rbp + 0x48]
000000014059636f mov      rcx, qword ptr [rcx + 8]
0000000140596373 lea      rbx, [rax + 0x1320]
000000014059637a mov      rax, qword ptr [rax + 0x18]
000000014059637e mov      rdx, rbx
0000000140596381 mov      rax, qword ptr [rax + 0x108]
0000000140596388 call     qword ptr [rip + 0xedf6a]
000000014059638e mov      esi, dword ptr [rbp + 0x58]
0000000140596391 cmp      dword ptr [rdi], esi
0000000140596393 jae      0x14058eaac
0000000140596399 lea      r9, [rip + 0xdb2d0]
00000001405963a0 jmp      0x140595e71
00000001405963a5 mov      rax, qword ptr [rbp + 0x48]
00000001405963a9 cmp      byte ptr [rax + 0x105], 5
00000001405963b0 jne      0x14058ebb1
00000001405963b6 mov      ebx, 2
00000001405963bb lea      r8, [rbp - 0x38]
00000001405963bf mov      esi, 0x504
00000001405963c4 mov      r9d, ebx
00000001405963c7 mov      edx, esi
00000001405963c9 mov      rcx, rax
00000001405963cc call     0x1403695ac
00000001405963d1 mov      r14d, eax
00000001405963d4 test     eax, eax
00000001405963d6 jne      0x14058ebb1
00000001405963dc mov      eax, dword ptr [rbp - 0x38]
00000001405963df shr      eax, 2
00000001405963e2 and      eax, r13d
00000001405963e5 mov      dword ptr [rbp - 0x38], eax
00000001405963e8 je       0x14058ebb1
00000001405963ee mov      rcx, qword ptr [rbp + 0x48]
00000001405963f2 lea      r8, [rbp - 0x38]
00000001405963f6 mov      r9d, ebx
00000001405963f9 mov      edx, esi
00000001405963fb call     0x1403695ac
0000000140596400 mov      r14d, eax
0000000140596403 test     eax, eax
0000000140596405 jne      0x14058ebb1
000000014059640b mov      eax, dword ptr [rbp - 0x38]
000000014059640e mov      rcx, qword ptr [rbp + 0x48]
0000000140596412 shr      eax, 2
0000000140596415 and      eax, r13d
0000000140596418 mov      dword ptr [rbp - 0x38], eax
000000014059641b mov      rax, qword ptr [rbp + 0x48]
000000014059641f mov      rcx, qword ptr [rcx + 8]
0000000140596423 lea      rbx, [rax + 0x1320]
000000014059642a mov      rax, qword ptr [rax + 0x18]
000000014059642e mov      rdx, rbx
0000000140596431 mov      rax, qword ptr [rax + 0x108]
0000000140596438 call     qword ptr [rip + 0xedeba]
000000014059643e mov      esi, dword ptr [rbp + 0x58]
0000000140596441 cmp      dword ptr [rdi], esi
0000000140596443 jae      0x14058eaac
0000000140596449 lea      r9, [rip + 0xdb240]
0000000140596450 jmp      0x140595e71
0000000140596455 mov      rax, qword ptr [rbp + 0x48]
0000000140596459 cmp      byte ptr [rax + 0x105], 5
0000000140596460 jne      0x14058ebb1
0000000140596466 mov      ebx, 2
000000014059646b lea      r8, [rbp - 0x38]
000000014059646f mov      esi, 0x504
0000000140596474 mov      r9d, ebx
0000000140596477 mov      edx, esi
0000000140596479 mov      rcx, rax
000000014059647c call     0x1403695ac
0000000140596481 mov      r14d, eax
0000000140596484 test     eax, eax
0000000140596486 jne      0x14058ebb1
000000014059648c mov      eax, dword ptr [rbp - 0x38]
000000014059648f shr      eax, 3
0000000140596492 and      eax, r13d
0000000140596495 mov      dword ptr [rbp - 0x38], eax
0000000140596498 je       0x14058ebb1
000000014059649e mov      rcx, qword ptr [rbp + 0x48]
00000001405964a2 lea      r8, [rbp - 0x38]
00000001405964a6 mov      r9d, ebx
00000001405964a9 mov      edx, esi
00000001405964ab call     0x1403695ac
00000001405964b0 mov      r14d, eax
00000001405964b3 test     eax, eax
00000001405964b5 jne      0x14058ebb1
00000001405964bb mov      eax, dword ptr [rbp - 0x38]
00000001405964be mov      rcx, qword ptr [rbp + 0x48]
00000001405964c2 shr      eax, 3
00000001405964c5 and      eax, r13d
00000001405964c8 mov      dword ptr [rbp - 0x38], eax
00000001405964cb mov      rax, qword ptr [rbp + 0x48]
00000001405964cf mov      rcx, qword ptr [rcx + 8]
00000001405964d3 lea      rbx, [rax + 0x1320]
00000001405964da mov      rax, qword ptr [rax + 0x18]
00000001405964de mov      rdx, rbx
00000001405964e1 mov      rax, qword ptr [rax + 0x108]
00000001405964e8 call     qword ptr [rip + 0xede0a]
00000001405964ee mov      esi, dword ptr [rbp + 0x58]
00000001405964f1 cmp      dword ptr [rdi], esi
00000001405964f3 jae      0x14058eaac
00000001405964f9 lea      r9, [rip + 0xdb1b0]
0000000140596500 jmp      0x140595e71
0000000140596505 mov      rax, qword ptr [rbp + 0x48]
0000000140596509 cmp      byte ptr [rax + 0x105], 5
0000000140596510 jne      0x14058ebb1
0000000140596516 cmp      dword ptr [rbp + 0x70], r13d
000000014059651a jb       0x14058ebb1
0000000140596520 mov      ebx, 2
0000000140596525 lea      r8, [rbp - 0x38]
0000000140596529 mov      r12d, 0x724
000000014059652f mov      r9d, ebx
0000000140596532 mov      edx, r12d
0000000140596535 mov      rcx, rax
0000000140596538 call     0x1403695ac
000000014059653d mov      r14d, eax
0000000140596540 test     eax, eax
0000000140596542 jne      0x14058ebb1
0000000140596548 mov      esi, 0x1fff
000000014059654d and      dword ptr [rbp - 0x38], esi
0000000140596550 je       0x14058ebb1
0000000140596556 mov      rcx, qword ptr [rbp + 0x48]
000000014059655a lea      r8, [rbp - 0x38]
000000014059655e mov      r9d, ebx
0000000140596561 mov      edx, r12d
0000000140596564 call     0x1403695ac
0000000140596569 mov      r14d, eax
000000014059656c test     eax, eax
000000014059656e mov      rax, qword ptr [rbp + 0x48]
0000000140596572 jne      0x14058ebb5
0000000140596578 and      dword ptr [rbp - 0x38], esi
000000014059657b lea      rbx, [rax + 0x1320]
0000000140596582 mov      rax, qword ptr [rax + 0x18]
0000000140596586 mov      rdx, rbx
0000000140596589 mov      rcx, qword ptr [rbp + 0x48]
000000014059658d mov      rax, qword ptr [rax + 0x108]
0000000140596594 mov      rcx, qword ptr [rcx + 8]
0000000140596598 call     qword ptr [rip + 0xedd5a]
000000014059659e mov      esi, dword ptr [rbp + 0x58]
00000001405965a1 cmp      dword ptr [rdi], esi
00000001405965a3 jae      0x14058eaac
00000001405965a9 lea      r9, [rip + 0xdb120]
00000001405965b0 jmp      0x140595e71
00000001405965b5 mov      rax, qword ptr [rbp + 0x48]
00000001405965b9 cmp      byte ptr [rax + 0x105], 5
00000001405965c0 jne      0x14058ebb1
00000001405965c6 cmp      dword ptr [rbp + 0x70], r13d
00000001405965ca jb       0x14058ebb1
00000001405965d0 mov      ebx, 2
00000001405965d5 lea      r8, [rbp - 0x38]
00000001405965d9 mov      esi, 0x100
00000001405965de mov      r9d, ebx
00000001405965e1 mov      edx, esi
00000001405965e3 mov      rcx, rax
00000001405965e6 call     0x1403695ac
00000001405965eb mov      r14d, eax
00000001405965ee test     eax, eax
00000001405965f0 jne      0x14058ebb1
00000001405965f6 and      dword ptr [rbp - 0x38], r13d
00000001405965fa jne      0x14058ebb1
0000000140596600 mov      rcx, qword ptr [rbp + 0x48]
0000000140596604 lea      r8, [rbp - 0x38]
0000000140596608 mov      r9d, ebx
000000014059660b mov      edx, esi
000000014059660d call     0x1403695ac
0000000140596612 mov      r14d, eax
0000000140596615 test     eax, eax
0000000140596617 mov      rax, qword ptr [rbp + 0x48]
000000014059661b jne      0x14058ebb5
0000000140596621 and      dword ptr [rbp - 0x38], r13d
0000000140596625 lea      rbx, [rax + 0x1320]
000000014059662c mov      rax, qword ptr [rax + 0x18]
0000000140596630 mov      rdx, rbx
0000000140596633 mov      rcx, qword ptr [rbp + 0x48]
0000000140596637 mov      rax, qword ptr [rax + 0x108]
000000014059663e mov      rcx, qword ptr [rcx + 8]
0000000140596642 call     qword ptr [rip + 0xedcb0]
0000000140596648 mov      esi, dword ptr [rbp + 0x58]
000000014059664b cmp      dword ptr [rdi], esi
000000014059664d jae      0x14058eaac
0000000140596653 lea      r9, [rip + 0xdb0a6]
000000014059665a jmp      0x140595e71
000000014059665f mov      rax, qword ptr [rbp + 0x48]
0000000140596663 cmp      byte ptr [rax + 0x105], 5
000000014059666a jne      0x14058ebb1
0000000140596670 cmp      dword ptr [rbp + 0x70], r13d
0000000140596674 jb       0x14058ebb1
000000014059667a mov      ebx, 2
000000014059667f lea      r8, [rbp - 0x38]
0000000140596683 mov      esi, 0x100
0000000140596688 mov      r9d, ebx
000000014059668b mov      edx, esi
000000014059668d mov      rcx, rax
0000000140596690 call     0x1403695ac
0000000140596695 mov      r14d, eax
0000000140596698 test     eax, eax
000000014059669a jne      0x14058ebb1
00000001405966a0 mov      eax, dword ptr [rbp - 0x38]
00000001405966a3 shr      eax, 1
00000001405966a5 and      eax, r13d
00000001405966a8 mov      dword ptr [rbp - 0x38], eax
00000001405966ab jne      0x14058ebb1
00000001405966b1 mov      rcx, qword ptr [rbp + 0x48]
00000001405966b5 lea      r8, [rbp - 0x38]
00000001405966b9 mov      r9d, ebx
00000001405966bc mov      edx, esi
00000001405966be call     0x1403695ac
00000001405966c3 mov      r14d, eax
00000001405966c6 test     eax, eax
00000001405966c8 jne      0x14058ebb1
00000001405966ce mov      eax, dword ptr [rbp - 0x38]
00000001405966d1 mov      rcx, qword ptr [rbp + 0x48]
00000001405966d5 shr      eax, 1
00000001405966d7 and      eax, r13d
00000001405966da mov      dword ptr [rbp - 0x38], eax
00000001405966dd mov      rax, qword ptr [rbp + 0x48]
00000001405966e1 mov      rcx, qword ptr [rcx + 8]
00000001405966e5 lea      rbx, [rax + 0x1320]
00000001405966ec mov      rax, qword ptr [rax + 0x18]
00000001405966f0 mov      rdx, rbx
00000001405966f3 mov      rax, qword ptr [rax + 0x108]
00000001405966fa call     qword ptr [rip + 0xedbf8]
0000000140596700 mov      esi, dword ptr [rbp + 0x58]
0000000140596703 cmp      dword ptr [rdi], esi
0000000140596705 jae      0x14058eaac
000000014059670b lea      r9, [rip + 0xdb00e]
0000000140596712 jmp      0x140595e71
0000000140596717 mov      rax, qword ptr [rbp + 0x48]
000000014059671b cmp      byte ptr [rax + 0x105], 5
0000000140596722 jne      0x14058ebb1
0000000140596728 cmp      dword ptr [rbp + 0x70], r13d
000000014059672c jb       0x14058ebb1
0000000140596732 mov      ebx, 2
0000000140596737 lea      r8, [rbp - 0x38]
000000014059673b mov      esi, 0x100
0000000140596740 mov      r9d, ebx
0000000140596743 mov      edx, esi
0000000140596745 mov      rcx, rax
0000000140596748 call     0x1403695ac
000000014059674d mov      r14d, eax
0000000140596750 test     eax, eax
0000000140596752 jne      0x14058ebb1
0000000140596758 mov      eax, dword ptr [rbp - 0x38]
000000014059675b shr      eax, 2
000000014059675e and      eax, r13d
0000000140596761 mov      dword ptr [rbp - 0x38], eax
0000000140596764 jne      0x14058ebb1
000000014059676a mov      rcx, qword ptr [rbp + 0x48]
000000014059676e lea      r8, [rbp - 0x38]
0000000140596772 mov      r9d, ebx
0000000140596775 mov      edx, esi
0000000140596777 call     0x1403695ac
000000014059677c mov      r14d, eax
000000014059677f test     eax, eax
0000000140596781 jne      0x14058ebb1
0000000140596787 mov      eax, dword ptr [rbp - 0x38]
000000014059678a mov      rcx, qword ptr [rbp + 0x48]
000000014059678e shr      eax, 2
0000000140596791 and      eax, r13d
0000000140596794 mov      dword ptr [rbp - 0x38], eax
0000000140596797 mov      rax, qword ptr [rbp + 0x48]
000000014059679b mov      rcx, qword ptr [rcx + 8]
000000014059679f lea      rbx, [rax + 0x1320]
00000001405967a6 mov      rax, qword ptr [rax + 0x18]
00000001405967aa mov      rdx, rbx
00000001405967ad mov      rax, qword ptr [rax + 0x108]
00000001405967b4 call     qword ptr [rip + 0xedb3e]
00000001405967ba mov      esi, dword ptr [rbp + 0x58]
00000001405967bd cmp      dword ptr [rdi], esi
00000001405967bf jae      0x14058eaac
00000001405967c5 lea      r9, [rip + 0xdaf74]
00000001405967cc jmp      0x140595e71
00000001405967d1 mov      rax, qword ptr [rbp + 0x48]
00000001405967d5 cmp      byte ptr [rax + 0x105], 5
00000001405967dc jne      0x14058ebb1
00000001405967e2 cmp      dword ptr [rbp + 0x70], r13d
00000001405967e6 jb       0x14058ebb1
00000001405967ec mov      ebx, 2
00000001405967f1 lea      r8, [rbp - 0x38]
00000001405967f5 mov      esi, 0x100
00000001405967fa mov      r9d, ebx
00000001405967fd mov      edx, esi
00000001405967ff mov      rcx, rax
0000000140596802 call     0x1403695ac
0000000140596807 mov      r14d, eax
000000014059680a test     eax, eax
000000014059680c jne      0x14058ebb1
0000000140596812 mov      eax, dword ptr [rbp - 0x38]
0000000140596815 shr      eax, 3
0000000140596818 and      eax, r13d
000000014059681b mov      dword ptr [rbp - 0x38], eax
000000014059681e jne      0x14058ebb1
0000000140596824 mov      rcx, qword ptr [rbp + 0x48]
0000000140596828 lea      r8, [rbp - 0x38]
000000014059682c mov      r9d, ebx
000000014059682f mov      edx, esi
0000000140596831 call     0x1403695ac
0000000140596836 mov      r14d, eax
0000000140596839 test     eax, eax
000000014059683b jne      0x14058ebb1
0000000140596841 mov      eax, dword ptr [rbp - 0x38]
0000000140596844 mov      rcx, qword ptr [rbp + 0x48]
0000000140596848 shr      eax, 3
000000014059684b and      eax, r13d
000000014059684e mov      dword ptr [rbp - 0x38], eax
0000000140596851 mov      rax, qword ptr [rbp + 0x48]
0000000140596855 mov      rcx, qword ptr [rcx + 8]
0000000140596859 lea      rbx, [rax + 0x1320]
0000000140596860 mov      rax, qword ptr [rax + 0x18]
0000000140596864 mov      rdx, rbx
0000000140596867 mov      rax, qword ptr [rax + 0x108]
000000014059686e call     qword ptr [rip + 0xeda84]
0000000140596874 mov      esi, dword ptr [rbp + 0x58]
0000000140596877 cmp      dword ptr [rdi], esi
0000000140596879 jae      0x14058eaac
000000014059687f lea      r9, [rip + 0xdaeda]
0000000140596886 jmp      0x140595e71
000000014059688b mov      rax, qword ptr [rbp + 0x48]
000000014059688f cmp      byte ptr [rax + 0x105], 5
0000000140596896 jne      0x14058ebb1
000000014059689c mov      ebx, 2
00000001405968a1 lea      r8, [rbp - 0x38]
00000001405968a5 mov      r9d, ebx
00000001405968a8 xor      edx, edx
00000001405968aa mov      rcx, rax
00000001405968ad call     0x1403695ac
00000001405968b2 mov      r14d, eax
00000001405968b5 test     eax, eax
00000001405968b7 jne      0x14058ebb1
00000001405968bd mov      eax, dword ptr [rbp - 0x38]
00000001405968c0 shr      eax, 0xb
00000001405968c3 and      eax, r13d
00000001405968c6 mov      dword ptr [rbp - 0x38], eax
00000001405968c9 jne      0x14058ebb1
00000001405968cf mov      rcx, qword ptr [rbp + 0x48]
00000001405968d3 lea      r8, [rbp - 0x38]
00000001405968d7 mov      r9d, ebx
00000001405968da xor      edx, edx
00000001405968dc call     0x1403695ac
00000001405968e1 mov      r14d, eax
00000001405968e4 test     eax, eax
00000001405968e6 jne      0x14058ebb1
00000001405968ec mov      eax, dword ptr [rbp - 0x38]
00000001405968ef mov      rcx, qword ptr [rbp + 0x48]
00000001405968f3 shr      eax, 0xb
00000001405968f6 and      eax, r13d
00000001405968f9 mov      dword ptr [rbp - 0x38], eax
00000001405968fc mov      rax, qword ptr [rbp + 0x48]
0000000140596900 mov      rcx, qword ptr [rcx + 8]
0000000140596904 lea      rbx, [rax + 0x1320]
000000014059690b mov      rax, qword ptr [rax + 0x18]
000000014059690f mov      rdx, rbx
0000000140596912 mov      rax, qword ptr [rax + 0x108]
0000000140596919 call     qword ptr [rip + 0xed9d9]
000000014059691f mov      esi, dword ptr [rbp + 0x58]
0000000140596922 cmp      dword ptr [rdi], esi
0000000140596924 jae      0x14058eaac
000000014059692a lea      r9, [rip + 0xdae4f]
0000000140596931 jmp      0x140595e71
0000000140596936 mov      rax, qword ptr [rbp + 0x48]
000000014059693a cmp      byte ptr [rax + 0x105], 5
0000000140596941 jne      0x14058ebb1
0000000140596947 mov      ebx, 2
000000014059694c lea      r8, [rbp - 0x38]
0000000140596950 mov      r9d, ebx
0000000140596953 xor      edx, edx
0000000140596955 mov      rcx, rax
0000000140596958 call     0x1403695ac
000000014059695d mov      r14d, eax
0000000140596960 test     eax, eax
0000000140596962 jne      0x14058ebb1
0000000140596968 mov      eax, dword ptr [rbp - 0x38]
000000014059696b shr      eax, 0xd
000000014059696e and      eax, r13d
0000000140596971 mov      dword ptr [rbp - 0x38], eax
0000000140596974 jne      0x14058ebb1
000000014059697a mov      rcx, qword ptr [rbp + 0x48]
000000014059697e lea      r8, [rbp - 0x38]
0000000140596982 mov      r9d, ebx
0000000140596985 xor      edx, edx
0000000140596987 call     0x1403695ac
000000014059698c mov      r14d, eax
000000014059698f test     eax, eax
0000000140596991 jne      0x14058ebb1
0000000140596997 mov      eax, dword ptr [rbp - 0x38]
000000014059699a mov      rcx, qword ptr [rbp + 0x48]
000000014059699e shr      eax, 0xd
00000001405969a1 and      eax, r13d
00000001405969a4 mov      dword ptr [rbp - 0x38], eax
00000001405969a7 mov      rax, qword ptr [rbp + 0x48]
00000001405969ab mov      rcx, qword ptr [rcx + 8]
00000001405969af lea      rbx, [rax + 0x1320]
00000001405969b6 mov      rax, qword ptr [rax + 0x18]
00000001405969ba mov      rdx, rbx
00000001405969bd mov      rax, qword ptr [rax + 0x108]
00000001405969c4 call     qword ptr [rip + 0xed92e]
00000001405969ca mov      esi, dword ptr [rbp + 0x58]
00000001405969cd cmp      dword ptr [rdi], esi
00000001405969cf jae      0x14058eaac
00000001405969d5 lea      r9, [rip + 0xdadd4]
00000001405969dc jmp      0x140595e71
00000001405969e1 mov      rax, qword ptr [rbp + 0x48]
00000001405969e5 cmp      byte ptr [rax + 0x105], 5
00000001405969ec jne      0x14058ebb1
00000001405969f2 mov      ebx, 2
00000001405969f7 lea      r8, [rbp - 0x38]
00000001405969fb mov      r9d, ebx
00000001405969fe xor      edx, edx
0000000140596a00 mov      rcx, rax
0000000140596a03 call     0x1403695ac
0000000140596a08 mov      r14d, eax
0000000140596a0b test     eax, eax
0000000140596a0d jne      0x14058ebb1
0000000140596a13 mov      eax, dword ptr [rbp - 0x38]
0000000140596a16 shr      eax, 0x14
0000000140596a19 and      eax, r13d
0000000140596a1c mov      dword ptr [rbp - 0x38], eax
0000000140596a1f je       0x14058ebb1
0000000140596a25 mov      rcx, qword ptr [rbp + 0x48]
0000000140596a29 lea      r8, [rbp - 0x38]
0000000140596a2d mov      r9d, ebx
0000000140596a30 xor      edx, edx
0000000140596a32 call     0x1403695ac
0000000140596a37 mov      r14d, eax
0000000140596a3a test     eax, eax
0000000140596a3c jne      0x14058ebb1
0000000140596a42 mov      eax, dword ptr [rbp - 0x38]
0000000140596a45 mov      rcx, qword ptr [rbp + 0x48]
0000000140596a49 shr      eax, 0x14
0000000140596a4c and      eax, r13d
0000000140596a4f mov      dword ptr [rbp - 0x38], eax
0000000140596a52 mov      rax, qword ptr [rbp + 0x48]
0000000140596a56 mov      rcx, qword ptr [rcx + 8]
0000000140596a5a lea      rbx, [rax + 0x1320]
0000000140596a61 mov      rax, qword ptr [rax + 0x18]
0000000140596a65 mov      rdx, rbx
0000000140596a68 mov      rax, qword ptr [rax + 0x108]
0000000140596a6f call     qword ptr [rip + 0xed883]
0000000140596a75 mov      esi, dword ptr [rbp + 0x58]
0000000140596a78 cmp      dword ptr [rdi], esi
0000000140596a7a jae      0x14058eaac
0000000140596a80 lea      r9, [rip + 0xdad59]
0000000140596a87 jmp      0x140595e71
0000000140596a8c mov      rax, qword ptr [rbp + 0x48]
0000000140596a90 cmp      byte ptr [rax + 0x105], 5
0000000140596a97 jne      0x14058ebb1
0000000140596a9d cmp      dword ptr [rbp + 0x70], r13d
0000000140596aa1 jb       0x14058ebb1
0000000140596aa7 mov      ebx, 2
0000000140596aac lea      r8, [rbp - 0x38]
0000000140596ab0 mov      esi, 0x758
0000000140596ab5 mov      r9d, ebx
0000000140596ab8 mov      edx, esi
0000000140596aba mov      rcx, rax
0000000140596abd call     0x1403695ac
0000000140596ac2 mov      r14d, eax
0000000140596ac5 test     eax, eax
0000000140596ac7 jne      0x14058ebb1
0000000140596acd mov      r13d, dword ptr [rbp - 0x38]
0000000140596ad1 lea      r8, [rbp - 0x38]
0000000140596ad5 mov      rcx, qword ptr [rbp + 0x48]
0000000140596ad9 mov      r12d, 0x1fff
0000000140596adf shr      r13d, 0x10
0000000140596ae3 mov      r9d, ebx
0000000140596ae6 and      r13d, r12d
0000000140596ae9 mov      edx, esi
0000000140596aeb mov      dword ptr [rbp - 0x38], r13d
0000000140596aef call     0x1403695ac
0000000140596af4 mov      r14d, eax
0000000140596af7 test     eax, eax
0000000140596af9 jne      0x14058ebb1
0000000140596aff mov      eax, dword ptr [rbp - 0x38]
0000000140596b02 lea      r8, [rbp - 0x38]
0000000140596b06 mov      rcx, qword ptr [rbp + 0x48]
0000000140596b0a and      eax, r12d
0000000140596b0d mov      esi, 0x724
0000000140596b12 mov      dword ptr [rbp - 0x30], eax
0000000140596b15 mov      r9d, ebx
0000000140596b18 mov      dword ptr [rbp - 0x38], eax
0000000140596b1b mov      edx, esi
0000000140596b1d call     0x1403695ac
0000000140596b22 mov      r14d, eax
0000000140596b25 test     eax, eax
0000000140596b27 jne      0x14058ebb1
0000000140596b2d mov      eax, dword ptr [rbp - 0x38]
0000000140596b30 lea      r8, [rbp - 0x38]
0000000140596b34 mov      rcx, qword ptr [rbp + 0x48]
0000000140596b38 mov      r9d, ebx
0000000140596b3b shr      eax, 0x10
0000000140596b3e mov      edx, esi
0000000140596b40 movzx    eax, al
0000000140596b43 mov      dword ptr [rbp - 0x2c], eax
0000000140596b46 mov      dword ptr [rbp - 0x38], eax
0000000140596b49 call     0x1403695ac
0000000140596b4e mov      r14d, eax
0000000140596b51 test     eax, eax
0000000140596b53 jne      0x14058ebb1
0000000140596b59 mov      eax, dword ptr [rbp - 0x38]
0000000140596b5c mov      ecx, dword ptr [rbp - 0x2c]
0000000140596b5f and      eax, r12d
0000000140596b62 add      ecx, eax
0000000140596b64 mov      dword ptr [rbp - 0x38], eax
0000000140596b67 mov      eax, dword ptr [rbp - 0x30]
0000000140596b6a add      eax, r13d
0000000140596b6d cmp      eax, ecx
0000000140596b6f je       0x14058ebb1
0000000140596b75 mov      rcx, qword ptr [rbp + 0x48]
0000000140596b79 lea      r8, [rbp - 0x38]
0000000140596b7d mov      r9d, ebx
0000000140596b80 lea      edx, [rsi + 0x34]
0000000140596b83 call     0x1403695ac
0000000140596b88 mov      r14d, eax
0000000140596b8b test     eax, eax
0000000140596b8d jne      0x14058ebb1
0000000140596b93 mov      eax, dword ptr [rbp - 0x38]
0000000140596b96 mov      rcx, qword ptr [rbp + 0x48]
0000000140596b9a shr      eax, 0x10
0000000140596b9d and      eax, r12d
0000000140596ba0 mov      dword ptr [rbp - 0x38], eax
0000000140596ba3 mov      rax, qword ptr [rbp + 0x48]
0000000140596ba7 mov      rcx, qword ptr [rcx + 8]
0000000140596bab lea      r13, [rax + 0x1320]
0000000140596bb2 mov      rax, qword ptr [rax + 0x18]
0000000140596bb6 mov      rdx, r13
0000000140596bb9 mov      rax, qword ptr [rax + 0x108]
0000000140596bc0 call     qword ptr [rip + 0xed732]
0000000140596bc6 mov      esi, dword ptr [rbp + 0x58]
0000000140596bc9 cmp      dword ptr [rdi], esi
0000000140596bcb jae      0x140596c08
0000000140596bcd mov      rax, qword ptr [rbp + 0x48]
0000000140596bd1 lea      r9, [rip + 0xdac38]
0000000140596bd8 mov      edx, dword ptr [rdi]
0000000140596bda mov      r8d, esi
0000000140596bdd sub      r8d, edx
0000000140596be0 add      rdx, r15
0000000140596be3 mov      rcx, qword ptr [rax + 0x18]
0000000140596be7 mov      eax, dword ptr [rbp - 0x38]
0000000140596bea mov      dword ptr [rsp + 0x20], eax
0000000140596bee mov      rax, qword ptr [rbp + 0x48]
0000000140596bf2 mov      r10, qword ptr [rcx + 0x128]
0000000140596bf9 mov      rcx, qword ptr [rax + 8]
0000000140596bfd mov      rax, r10
0000000140596c00 call     qword ptr [rip + 0xed6f2]
0000000140596c06 add      dword ptr [rdi], eax
0000000140596c08 mov      rax, qword ptr [rbp + 0x48]
0000000140596c0c mov      rdx, r13
0000000140596c0f mov      rcx, qword ptr [rbp + 0x48]
0000000140596c13 mov      rax, qword ptr [rax + 0x18]
0000000140596c17 mov      rcx, qword ptr [rcx + 8]
0000000140596c1b mov      rax, qword ptr [rax + 0x110]
0000000140596c22 call     qword ptr [rip + 0xed6d0]
0000000140596c28 mov      rcx, qword ptr [rbp + 0x48]
0000000140596c2c lea      r8, [rbp - 0x38]
0000000140596c30 mov      r9d, ebx
0000000140596c33 mov      edx, 0x758
0000000140596c38 call     0x1403695ac
0000000140596c3d mov      r14d, eax
0000000140596c40 test     eax, eax
0000000140596c42 mov      rax, qword ptr [rbp + 0x48]
0000000140596c46 jne      0x14058ebb5
0000000140596c4c and      dword ptr [rbp - 0x38], r12d
0000000140596c50 mov      rdx, r13
0000000140596c53 mov      rax, qword ptr [rax + 0x18]
0000000140596c57 mov      rcx, qword ptr [rbp + 0x48]
0000000140596c5b mov      rax, qword ptr [rax + 0x108]
0000000140596c62 mov      rcx, qword ptr [rcx + 8]
0000000140596c66 call     qword ptr [rip + 0xed68c]
0000000140596c6c cmp      dword ptr [rdi], esi
0000000140596c6e jae      0x140596cab
0000000140596c70 mov      rax, qword ptr [rbp + 0x48]
0000000140596c74 lea      r9, [rip + 0xdabc5]
0000000140596c7b mov      edx, dword ptr [rdi]
0000000140596c7d mov      r8d, esi
0000000140596c80 sub      r8d, edx
0000000140596c83 add      rdx, r15
0000000140596c86 mov      rcx, qword ptr [rax + 0x18]
0000000140596c8a mov      eax, dword ptr [rbp - 0x38]
0000000140596c8d mov      dword ptr [rsp + 0x20], eax
0000000140596c91 mov      rax, qword ptr [rbp + 0x48]
0000000140596c95 mov      r10, qword ptr [rcx + 0x128]
0000000140596c9c mov      rcx, qword ptr [rax + 8]
0000000140596ca0 mov      rax, r10
0000000140596ca3 call     qword ptr [rip + 0xed64f]
0000000140596ca9 add      dword ptr [rdi], eax
0000000140596cab mov      rax, qword ptr [rbp + 0x48]
0000000140596caf mov      rdx, r13
0000000140596cb2 mov      rcx, qword ptr [rbp + 0x48]
0000000140596cb6 mov      rax, qword ptr [rax + 0x18]
0000000140596cba mov      rcx, qword ptr [rcx + 8]
0000000140596cbe mov      rax, qword ptr [rax + 0x110]
0000000140596cc5 call     qword ptr [rip + 0xed62d]
0000000140596ccb mov      rcx, qword ptr [rbp + 0x48]
0000000140596ccf lea      r8, [rbp - 0x38]
0000000140596cd3 mov      r9d, ebx
0000000140596cd6 mov      edx, 0x724
0000000140596cdb call     0x1403695ac
0000000140596ce0 mov      r14d, eax
0000000140596ce3 test     eax, eax
0000000140596ce5 jne      0x14058ebb1
0000000140596ceb mov      eax, dword ptr [rbp - 0x38]
0000000140596cee mov      rdx, r13
0000000140596cf1 mov      rcx, qword ptr [rbp + 0x48]
0000000140596cf5 shr      eax, 0x10
0000000140596cf8 movzx    eax, al
0000000140596cfb mov      dword ptr [rbp - 0x38], eax
0000000140596cfe mov      rax, qword ptr [rbp + 0x48]
0000000140596d02 mov      rcx, qword ptr [rcx + 8]
0000000140596d06 mov      rax, qword ptr [rax + 0x18]
0000000140596d0a mov      rax, qword ptr [rax + 0x108]
0000000140596d11 call     qword ptr [rip + 0xed5e1]
0000000140596d17 cmp      dword ptr [rdi], esi
0000000140596d19 jae      0x140596d56
0000000140596d1b mov      rax, qword ptr [rbp + 0x48]
0000000140596d1f lea      r9, [rip + 0xdab4a]
0000000140596d26 mov      edx, dword ptr [rdi]
0000000140596d28 mov      r8d, esi
0000000140596d2b sub      r8d, edx
0000000140596d2e add      rdx, r15
0000000140596d31 mov      rcx, qword ptr [rax + 0x18]
0000000140596d35 mov      eax, dword ptr [rbp - 0x38]
0000000140596d38 mov      dword ptr [rsp + 0x20], eax
0000000140596d3c mov      rax, qword ptr [rbp + 0x48]
0000000140596d40 mov      r10, qword ptr [rcx + 0x128]
0000000140596d47 mov      rcx, qword ptr [rax + 8]
0000000140596d4b mov      rax, r10
0000000140596d4e call     qword ptr [rip + 0xed5a4]
0000000140596d54 add      dword ptr [rdi], eax
0000000140596d56 mov      rax, qword ptr [rbp + 0x48]
0000000140596d5a mov      rdx, r13
0000000140596d5d mov      rcx, qword ptr [rbp + 0x48]
0000000140596d61 mov      rax, qword ptr [rax + 0x18]
0000000140596d65 mov      rcx, qword ptr [rcx + 8]
0000000140596d69 mov      rax, qword ptr [rax + 0x110]
0000000140596d70 call     qword ptr [rip + 0xed582]
0000000140596d76 mov      rcx, qword ptr [rbp + 0x48]
0000000140596d7a lea      r8, [rbp - 0x38]
0000000140596d7e mov      r9d, ebx
0000000140596d81 mov      edx, 0x724
0000000140596d86 call     0x1403695ac
0000000140596d8b mov      r14d, eax
0000000140596d8e test     eax, eax
0000000140596d90 mov      rax, qword ptr [rbp + 0x48]
0000000140596d94 jne      0x14058ebb5
0000000140596d9a and      dword ptr [rbp - 0x38], r12d
0000000140596d9e mov      rdx, r13
0000000140596da1 mov      rax, qword ptr [rax + 0x18]
0000000140596da5 mov      rcx, qword ptr [rbp + 0x48]
0000000140596da9 mov      rax, qword ptr [rax + 0x108]
0000000140596db0 mov      rcx, qword ptr [rcx + 8]
0000000140596db4 call     qword ptr [rip + 0xed53e]
0000000140596dba cmp      dword ptr [rdi], esi
0000000140596dbc jae      0x140595df5
0000000140596dc2 lea      r9, [rip + 0xda907]
0000000140596dc9 jmp      0x140595dc2
0000000140596dce mov      rax, qword ptr [rbp + 0x48]
0000000140596dd2 cmp      byte ptr [rax + 0x105], 5
0000000140596dd9 jne      0x14058ebb1
0000000140596ddf mov      ebx, 2
0000000140596de4 lea      r8, [rbp - 0x38]
0000000140596de8 mov      esi, 0x704
0000000140596ded mov      r9d, ebx
0000000140596df0 mov      edx, esi
0000000140596df2 mov      rcx, rax
0000000140596df5 call     0x1403695ac
0000000140596dfa mov      r14d, eax
0000000140596dfd test     eax, eax
0000000140596dff jne      0x14058ebb1
0000000140596e05 cmp      dword ptr [rbp - 0x38], eax
0000000140596e08 jne      0x14058ebb1
0000000140596e0e mov      rcx, qword ptr [rbp + 0x48]
0000000140596e12 lea      r8, [rbp - 0x38]
0000000140596e16 mov      r9d, ebx
0000000140596e19 mov      edx, esi
0000000140596e1b call     0x1403695ac
0000000140596e20 mov      r14d, eax
0000000140596e23 test     eax, eax
0000000140596e25 mov      rax, qword ptr [rbp + 0x48]
0000000140596e29 jne      0x14058ebb5
0000000140596e2f mov      rcx, qword ptr [rbp + 0x48]
0000000140596e33 lea      rbx, [rax + 0x1320]
0000000140596e3a mov      rax, qword ptr [rax + 0x18]
0000000140596e3e mov      rdx, rbx
0000000140596e41 mov      rcx, qword ptr [rcx + 8]
0000000140596e45 mov      rax, qword ptr [rax + 0x108]
0000000140596e4c call     qword ptr [rip + 0xed4a6]
0000000140596e52 mov      esi, dword ptr [rbp + 0x58]
0000000140596e55 cmp      dword ptr [rdi], esi
0000000140596e57 jae      0x14058eaac
0000000140596e5d lea      r9, [rip + 0xdaa3c]
0000000140596e64 jmp      0x140595e71
0000000140596e69 mov      rax, qword ptr [rbp + 0x48]
0000000140596e6d cmp      byte ptr [rax + 0x105], 5
0000000140596e74 jne      0x14058ebb1
0000000140596e7a mov      ebx, 2
0000000140596e7f lea      r8, [rbp - 0x38]
0000000140596e83 mov      esi, 0x704
0000000140596e88 mov      r9d, ebx
0000000140596e8b mov      edx, esi
0000000140596e8d mov      rcx, rax
0000000140596e90 call     0x1403695ac
0000000140596e95 mov      r14d, eax
0000000140596e98 test     eax, eax
0000000140596e9a jne      0x14058ebb1
0000000140596ea0 mov      eax, dword ptr [rbp - 0x38]
0000000140596ea3 shr      eax, 0x10
0000000140596ea6 movzx    ecx, al
0000000140596ea9 mov      dword ptr [rbp - 0x38], ecx
0000000140596eac test     al, al
0000000140596eae jne      0x14058ebb1
0000000140596eb4 mov      rcx, qword ptr [rbp + 0x48]
0000000140596eb8 lea      r8, [rbp - 0x38]
0000000140596ebc mov      r9d, ebx
0000000140596ebf mov      edx, esi
0000000140596ec1 call     0x1403695ac
0000000140596ec6 mov      r14d, eax
0000000140596ec9 test     eax, eax
0000000140596ecb jne      0x14058ebb1
0000000140596ed1 mov      eax, dword ptr [rbp - 0x38]
0000000140596ed4 mov      rcx, qword ptr [rbp + 0x48]
0000000140596ed8 shr      eax, 0x10
0000000140596edb movzx    eax, al
0000000140596ede mov      dword ptr [rbp - 0x38], eax
0000000140596ee1 mov      rax, qword ptr [rbp + 0x48]
0000000140596ee5 mov      rcx, qword ptr [rcx + 8]
0000000140596ee9 lea      rbx, [rax + 0x1320]
0000000140596ef0 mov      rax, qword ptr [rax + 0x18]
0000000140596ef4 mov      rdx, rbx
0000000140596ef7 mov      rax, qword ptr [rax + 0x108]
0000000140596efe call     qword ptr [rip + 0xed3f4]
0000000140596f04 mov      esi, dword ptr [rbp + 0x58]
0000000140596f07 cmp      dword ptr [rdi], esi
0000000140596f09 jae      0x14058eaac
0000000140596f0f lea      r9, [rip + 0xda9ba]
0000000140596f16 jmp      0x140595e71
0000000140596f1b mov      rax, qword ptr [rbp + 0x48]
0000000140596f1f cmp      byte ptr [rax + 0x105], 5
0000000140596f26 jne      0x14058ebb1
0000000140596f2c mov      ebx, 2
0000000140596f31 lea      r8, [rbp - 0x38]
0000000140596f35 mov      esi, 0x704
0000000140596f3a mov      r9d, ebx
0000000140596f3d mov      edx, esi
0000000140596f3f mov      rcx, rax
0000000140596f42 call     0x1403695ac
0000000140596f47 mov      r14d, eax
0000000140596f4a test     eax, eax
0000000140596f4c jne      0x14058ebb1
0000000140596f52 mov      eax, dword ptr [rbp - 0x38]
0000000140596f55 shr      eax, 0x18
0000000140596f58 mov      dword ptr [rbp - 0x38], eax
0000000140596f5b test     eax, eax
0000000140596f5d jne      0x14058ebb1
0000000140596f63 mov      rcx, qword ptr [rbp + 0x48]
0000000140596f67 lea      r8, [rbp - 0x38]
0000000140596f6b mov      r9d, ebx
0000000140596f6e mov      edx, esi
0000000140596f70 call     0x1403695ac
0000000140596f75 mov      r14d, eax
0000000140596f78 test     eax, eax
0000000140596f7a mov      rax, qword ptr [rbp + 0x48]
0000000140596f7e jne      0x14058ebb5
0000000140596f84 shr      dword ptr [rbp - 0x38], 0x18
0000000140596f88 lea      rbx, [rax + 0x1320]
0000000140596f8f mov      rax, qword ptr [rax + 0x18]
0000000140596f93 mov      rdx, rbx
0000000140596f96 mov      rcx, qword ptr [rbp + 0x48]
0000000140596f9a mov      rax, qword ptr [rax + 0x108]
0000000140596fa1 mov      rcx, qword ptr [rcx + 8]
0000000140596fa5 call     qword ptr [rip + 0xed34d]
0000000140596fab mov      esi, dword ptr [rbp + 0x58]
0000000140596fae cmp      dword ptr [rdi], esi
0000000140596fb0 jae      0x14058eaac
0000000140596fb6 lea      r9, [rip + 0xda943]
0000000140596fbd jmp      0x140595e71
0000000140596fc2 mov      rbx, qword ptr [rbp + 0x48]
0000000140596fc6 mov      r12d, 0x8804
0000000140596fcc mov      rax, qword ptr [rsi + 0x20]
0000000140596fd0 mov      edx, r12d
0000000140596fd3 mov      rcx, rbx
0000000140596fd6 call     qword ptr [rip + 0xed31c]
0000000140596fdc shr      eax, 0x1f
0000000140596fdf mov      dword ptr [rbp - 0x38], eax
0000000140596fe2 test     eax, eax
0000000140596fe4 je       0x14058ebb1
0000000140596fea mov      rax, qword ptr [rsi + 0x20]
0000000140596fee mov      edx, r12d
0000000140596ff1 mov      rcx, rbx
0000000140596ff4 call     qword ptr [rip + 0xed2fe]
0000000140596ffa mov      rcx, qword ptr [rbp + 0x48]
0000000140596ffe shr      eax, 0x1f
0000000140597001 mov      dword ptr [rbp - 0x38], eax
0000000140597004 mov      rax, rbx
0000000140597007 lea      rbx, [rbx + 0x1320]
000000014059700e mov      rcx, qword ptr [rcx + 8]
0000000140597012 mov      rdx, rbx
0000000140597015 mov      rax, qword ptr [rax + 0x18]
0000000140597019 mov      rax, qword ptr [rax + 0x108]
0000000140597020 call     qword ptr [rip + 0xed2d2]
0000000140597026 mov      esi, dword ptr [rbp + 0x58]
0000000140597029 cmp      dword ptr [rdi], esi
000000014059702b jae      0x14058eaac
0000000140597031 lea      r9, [rip + 0xda8f8]
0000000140597038 jmp      0x140595e71
000000014059703d mov      rbx, qword ptr [rbp + 0x48]
0000000140597041 mov      r12d, 0x8804
0000000140597047 mov      rax, qword ptr [rsi + 0x20]
000000014059704b mov      edx, r12d
000000014059704e mov      rcx, rbx
0000000140597051 call     qword ptr [rip + 0xed2a1]
0000000140597057 shr      eax, 0x1e
000000014059705a and      eax, r13d
000000014059705d mov      dword ptr [rbp - 0x38], eax
0000000140597060 je       0x14058ebb1
0000000140597066 mov      rax, qword ptr [rsi + 0x20]
000000014059706a mov      edx, r12d
000000014059706d mov      rcx, rbx
0000000140597070 call     qword ptr [rip + 0xed282]
0000000140597076 mov      rcx, qword ptr [rbp + 0x48]
000000014059707a shr      eax, 0x1e
000000014059707d and      eax, r13d
0000000140597080 mov      dword ptr [rbp - 0x38], eax
0000000140597083 mov      rax, rbx
0000000140597086 mov      rcx, qword ptr [rcx + 8]
000000014059708a lea      rbx, [rbx + 0x1320]
0000000140597091 mov      rdx, rbx
0000000140597094 mov      rax, qword ptr [rax + 0x18]
0000000140597098 mov      rax, qword ptr [rax + 0x108]
000000014059709f call     qword ptr [rip + 0xed253]
00000001405970a5 mov      esi, dword ptr [rbp + 0x58]
00000001405970a8 cmp      dword ptr [rdi], esi
00000001405970aa jae      0x14058eaac
00000001405970b0 lea      r9, [rip + 0xda8a9]
00000001405970b7 jmp      0x140595e71
00000001405970bc mov      rbx, qword ptr [rbp + 0x48]
00000001405970c0 mov      r12d, 0x8804
00000001405970c6 mov      rax, qword ptr [rsi + 0x20]
00000001405970ca mov      edx, r12d
00000001405970cd mov      rcx, rbx
00000001405970d0 call     qword ptr [rip + 0xed222]
00000001405970d6 shr      eax, 0x1d
00000001405970d9 and      eax, r13d
00000001405970dc mov      dword ptr [rbp - 0x38], eax
00000001405970df je       0x14058ebb1
00000001405970e5 mov      rax, qword ptr [rsi + 0x20]
00000001405970e9 mov      edx, r12d
00000001405970ec mov      rcx, rbx
00000001405970ef call     qword ptr [rip + 0xed203]
00000001405970f5 mov      rcx, qword ptr [rbp + 0x48]
00000001405970f9 shr      eax, 0x1d
00000001405970fc and      eax, r13d
00000001405970ff mov      dword ptr [rbp - 0x38], eax
0000000140597102 mov      rax, rbx
0000000140597105 mov      rcx, qword ptr [rcx + 8]
0000000140597109 lea      rbx, [rbx + 0x1320]
0000000140597110 mov      rdx, rbx
0000000140597113 mov      rax, qword ptr [rax + 0x18]
0000000140597117 mov      rax, qword ptr [rax + 0x108]
000000014059711e call     qword ptr [rip + 0xed1d4]
0000000140597124 mov      esi, dword ptr [rbp + 0x58]
0000000140597127 cmp      dword ptr [rdi], esi
0000000140597129 jae      0x14058eaac
000000014059712f lea      r9, [rip + 0xda85a]
0000000140597136 jmp      0x140595e71
000000014059713b mov      rbx, qword ptr [rbp + 0x48]
000000014059713f mov      r12d, 0x8804
0000000140597145 mov      rax, qword ptr [rsi + 0x20]
0000000140597149 mov      edx, r12d
000000014059714c mov      rcx, rbx
000000014059714f call     qword ptr [rip + 0xed1a3]
0000000140597155 shr      eax, 0x1c
0000000140597158 and      eax, r13d
000000014059715b mov      dword ptr [rbp - 0x38], eax
000000014059715e je       0x14058ebb1
0000000140597164 mov      rax, qword ptr [rsi + 0x20]
0000000140597168 mov      edx, r12d
000000014059716b mov      rcx, rbx
000000014059716e call     qword ptr [rip + 0xed184]
0000000140597174 mov      rcx, qword ptr [rbp + 0x48]
0000000140597178 shr      eax, 0x1c
000000014059717b and      eax, r13d
000000014059717e mov      dword ptr [rbp - 0x38], eax
0000000140597181 mov      rax, rbx
0000000140597184 mov      rcx, qword ptr [rcx + 8]
0000000140597188 lea      rbx, [rbx + 0x1320]
000000014059718f mov      rdx, rbx
0000000140597192 mov      rax, qword ptr [rax + 0x18]
0000000140597196 mov      rax, qword ptr [rax + 0x108]
000000014059719d call     qword ptr [rip + 0xed155]
00000001405971a3 mov      esi, dword ptr [rbp + 0x58]
00000001405971a6 cmp      dword ptr [rdi], esi
00000001405971a8 jae      0x14058eaac
00000001405971ae lea      r9, [rip + 0xda80b]
00000001405971b5 jmp      0x140595e71
00000001405971ba mov      rbx, qword ptr [rbp + 0x48]
00000001405971be mov      r12d, 0x8804
00000001405971c4 mov      rax, qword ptr [rsi + 0x20]
00000001405971c8 mov      edx, r12d
00000001405971cb mov      rcx, rbx
00000001405971ce call     qword ptr [rip + 0xed124]
00000001405971d4 shr      eax, 0x1b
00000001405971d7 and      eax, r13d
00000001405971da mov      dword ptr [rbp - 0x38], eax
00000001405971dd je       0x14058ebb1
00000001405971e3 mov      rax, qword ptr [rsi + 0x20]
00000001405971e7 mov      edx, r12d
00000001405971ea mov      rcx, rbx
00000001405971ed call     qword ptr [rip + 0xed105]
00000001405971f3 mov      rcx, qword ptr [rbp + 0x48]
00000001405971f7 shr      eax, 0x1b
00000001405971fa and      eax, r13d
00000001405971fd mov      dword ptr [rbp - 0x38], eax
0000000140597200 mov      rax, rbx
0000000140597203 mov      rcx, qword ptr [rcx + 8]
0000000140597207 lea      rbx, [rbx + 0x1320]
000000014059720e mov      rdx, rbx
0000000140597211 mov      rax, qword ptr [rax + 0x18]
0000000140597215 mov      rax, qword ptr [rax + 0x108]
000000014059721c call     qword ptr [rip + 0xed0d6]
0000000140597222 mov      esi, dword ptr [rbp + 0x58]
0000000140597225 cmp      dword ptr [rdi], esi
0000000140597227 jae      0x14058eaac
000000014059722d lea      r9, [rip + 0xda7bc]
0000000140597234 jmp      0x140595e71
0000000140597239 mov      rbx, qword ptr [rbp + 0x48]
000000014059723d mov      r12d, 0x8804
0000000140597243 mov      rax, qword ptr [rsi + 0x20]
0000000140597247 mov      edx, r12d
000000014059724a mov      rcx, rbx
000000014059724d call     qword ptr [rip + 0xed0a5]
0000000140597253 shr      eax, 0x1a
0000000140597256 and      eax, r13d
0000000140597259 mov      dword ptr [rbp - 0x38], eax
000000014059725c je       0x14058ebb1
0000000140597262 mov      rax, qword ptr [rsi + 0x20]
0000000140597266 mov      edx, r12d
0000000140597269 mov      rcx, rbx
000000014059726c call     qword ptr [rip + 0xed086]
0000000140597272 mov      rcx, qword ptr [rbp + 0x48]
0000000140597276 shr      eax, 0x1a
0000000140597279 and      eax, r13d
000000014059727c mov      dword ptr [rbp - 0x38], eax
000000014059727f mov      rax, rbx
0000000140597282 mov      rcx, qword ptr [rcx + 8]
0000000140597286 lea      rbx, [rbx + 0x1320]
000000014059728d mov      rdx, rbx
0000000140597290 mov      rax, qword ptr [rax + 0x18]
0000000140597294 mov      rax, qword ptr [rax + 0x108]
000000014059729b call     qword ptr [rip + 0xed057]
00000001405972a1 mov      esi, dword ptr [rbp + 0x58]
00000001405972a4 cmp      dword ptr [rdi], esi
00000001405972a6 jae      0x14058eaac
00000001405972ac lea      r9, [rip + 0xda76d]
00000001405972b3 jmp      0x140595e71
00000001405972b8 mov      rbx, qword ptr [rbp + 0x48]
00000001405972bc mov      r12d, 0x8804
00000001405972c2 mov      rax, qword ptr [rsi + 0x20]
00000001405972c6 mov      edx, r12d
00000001405972c9 mov      rcx, rbx
00000001405972cc call     qword ptr [rip + 0xed026]
00000001405972d2 shr      eax, 0x19
00000001405972d5 and      eax, r13d
00000001405972d8 mov      dword ptr [rbp - 0x38], eax
00000001405972db je       0x14058ebb1
00000001405972e1 mov      rax, qword ptr [rsi + 0x20]
00000001405972e5 mov      edx, r12d
00000001405972e8 mov      rcx, rbx
00000001405972eb call     qword ptr [rip + 0xed007]
00000001405972f1 mov      rcx, qword ptr [rbp + 0x48]
00000001405972f5 shr      eax, 0x19
00000001405972f8 and      eax, r13d
00000001405972fb mov      dword ptr [rbp - 0x38], eax
00000001405972fe mov      rax, rbx
0000000140597301 mov      rcx, qword ptr [rcx + 8]
0000000140597305 lea      rbx, [rbx + 0x1320]
000000014059730c mov      rdx, rbx
000000014059730f mov      rax, qword ptr [rax + 0x18]
0000000140597313 mov      rax, qword ptr [rax + 0x108]
000000014059731a call     qword ptr [rip + 0xecfd8]
0000000140597320 mov      esi, dword ptr [rbp + 0x58]
0000000140597323 cmp      dword ptr [rdi], esi
0000000140597325 jae      0x14058eaac
000000014059732b lea      r9, [rip + 0xda71e]
0000000140597332 jmp      0x140595e71
0000000140597337 mov      rbx, qword ptr [rbp + 0x48]
000000014059733b mov      r12d, 0x8804
0000000140597341 mov      rax, qword ptr [rsi + 0x20]
0000000140597345 mov      edx, r12d
0000000140597348 mov      rcx, rbx
000000014059734b call     qword ptr [rip + 0xecfa7]
0000000140597351 shr      eax, 0x18
0000000140597354 and      eax, r13d
0000000140597357 mov      dword ptr [rbp - 0x38], eax
000000014059735a je       0x14058ebb1
0000000140597360 mov      rax, qword ptr [rsi + 0x20]
0000000140597364 mov      edx, r12d
0000000140597367 mov      rcx, rbx
000000014059736a call     qword ptr [rip + 0xecf88]
0000000140597370 mov      rcx, qword ptr [rbp + 0x48]
0000000140597374 shr      eax, 0x18
0000000140597377 and      eax, r13d
000000014059737a mov      dword ptr [rbp - 0x38], eax
000000014059737d mov      rax, rbx
0000000140597380 mov      rcx, qword ptr [rcx + 8]
0000000140597384 lea      rbx, [rbx + 0x1320]
000000014059738b mov      rdx, rbx
000000014059738e mov      rax, qword ptr [rax + 0x18]
0000000140597392 mov      rax, qword ptr [rax + 0x108]
0000000140597399 call     qword ptr [rip + 0xecf59]
000000014059739f mov      esi, dword ptr [rbp + 0x58]
00000001405973a2 cmp      dword ptr [rdi], esi
00000001405973a4 jae      0x14058eaac
00000001405973aa lea      r9, [rip + 0xda6cf]
00000001405973b1 jmp      0x140595e71
00000001405973b6 mov      rbx, qword ptr [rbp + 0x48]
00000001405973ba mov      r12d, 0x8804
00000001405973c0 mov      rax, qword ptr [rsi + 0x20]
00000001405973c4 mov      edx, r12d
00000001405973c7 mov      rcx, rbx
00000001405973ca call     qword ptr [rip + 0xecf28]
00000001405973d0 shr      eax, 0x17
00000001405973d3 and      eax, r13d
00000001405973d6 mov      dword ptr [rbp - 0x38], eax
00000001405973d9 je       0x14058ebb1
00000001405973df mov      rax, qword ptr [rsi + 0x20]
00000001405973e3 mov      edx, r12d
00000001405973e6 mov      rcx, rbx
00000001405973e9 call     qword ptr [rip + 0xecf09]
00000001405973ef mov      rcx, qword ptr [rbp + 0x48]
00000001405973f3 shr      eax, 0x17
00000001405973f6 and      eax, r13d
00000001405973f9 mov      dword ptr [rbp - 0x38], eax
00000001405973fc mov      rax, rbx
00000001405973ff mov      rcx, qword ptr [rcx + 8]
0000000140597403 lea      rbx, [rbx + 0x1320]
000000014059740a mov      rdx, rbx
000000014059740d mov      rax, qword ptr [rax + 0x18]
0000000140597411 mov      rax, qword ptr [rax + 0x108]
0000000140597418 call     qword ptr [rip + 0xeceda]
000000014059741e mov      esi, dword ptr [rbp + 0x58]
0000000140597421 cmp      dword ptr [rdi], esi
0000000140597423 jae      0x14058eaac
0000000140597429 lea      r9, [rip + 0xda680]
0000000140597430 jmp      0x140595e71
0000000140597435 mov      rax, qword ptr [rsi + 0x20]
0000000140597439 mov      r12d, 0x8804
000000014059743f mov      rcx, qword ptr [rbp + 0x48]
0000000140597443 mov      edx, r12d
0000000140597446 call     qword ptr [rip + 0xeceac]
000000014059744c shr      eax, 0x16
000000014059744f and      eax, r13d
0000000140597452 mov      dword ptr [rbp - 0x38], eax
0000000140597455 je       0x14058ebb1
000000014059745b mov      rax, qword ptr [rsi + 0x20]
000000014059745f mov      edx, r12d
0000000140597462 mov      rcx, qword ptr [rbp + 0x48]
0000000140597466 call     qword ptr [rip + 0xece8c]
000000014059746c mov      rcx, qword ptr [rbp + 0x48]
0000000140597470 shr      eax, 0x16
0000000140597473 and      eax, r13d
0000000140597476 mov      dword ptr [rbp - 0x38], eax
0000000140597479 mov      rax, qword ptr [rbp + 0x48]
000000014059747d mov      rcx, qword ptr [rcx + 8]
0000000140597481 lea      rbx, [rax + 0x1320]
0000000140597488 mov      rax, qword ptr [rax + 0x18]
000000014059748c mov      rdx, rbx
000000014059748f mov      rax, qword ptr [rax + 0x108]
0000000140597496 call     qword ptr [rip + 0xece5c]
000000014059749c mov      esi, dword ptr [rbp + 0x58]
000000014059749f cmp      dword ptr [rdi], esi
00000001405974a1 jae      0x14058eaac
00000001405974a7 lea      r9, [rip + 0xda632]
00000001405974ae jmp      0x140595e71
00000001405974b3 mov      rax, qword ptr [rsi + 0x20]
00000001405974b7 mov      r12d, 0x8804
00000001405974bd mov      rcx, qword ptr [rbp + 0x48]
00000001405974c1 mov      edx, r12d
00000001405974c4 call     qword ptr [rip + 0xece2e]
00000001405974ca shr      eax, 0x15
00000001405974cd and      eax, r13d
00000001405974d0 mov      dword ptr [rbp - 0x38], eax
00000001405974d3 je       0x14058ebb1
00000001405974d9 mov      rax, qword ptr [rsi + 0x20]
00000001405974dd mov      edx, r12d
00000001405974e0 mov      rcx, qword ptr [rbp + 0x48]
00000001405974e4 call     qword ptr [rip + 0xece0e]
00000001405974ea mov      rcx, qword ptr [rbp + 0x48]
00000001405974ee shr      eax, 0x15
00000001405974f1 and      eax, r13d
00000001405974f4 mov      dword ptr [rbp - 0x38], eax
00000001405974f7 mov      rax, qword ptr [rbp + 0x48]
00000001405974fb mov      rcx, qword ptr [rcx + 8]
00000001405974ff lea      rbx, [rax + 0x1320]
0000000140597506 mov      rax, qword ptr [rax + 0x18]
000000014059750a mov      rdx, rbx
000000014059750d mov      rax, qword ptr [rax + 0x108]
0000000140597514 call     qword ptr [rip + 0xecdde]
000000014059751a mov      esi, dword ptr [rbp + 0x58]
000000014059751d cmp      dword ptr [rdi], esi
000000014059751f jae      0x14058eaac
0000000140597525 lea      r9, [rip + 0xda5e4]
000000014059752c jmp      0x140595e71
0000000140597531 mov      rax, qword ptr [rsi + 0x20]
0000000140597535 mov      r12d, 0x8804
000000014059753b mov      rcx, qword ptr [rbp + 0x48]
000000014059753f mov      edx, r12d
0000000140597542 call     qword ptr [rip + 0xecdb0]
0000000140597548 shr      eax, 0x14
000000014059754b and      eax, r13d
000000014059754e mov      dword ptr [rbp - 0x38], eax
0000000140597551 je       0x14058ebb1
0000000140597557 mov      rax, qword ptr [rsi + 0x20]
000000014059755b mov      edx, r12d
000000014059755e mov      rcx, qword ptr [rbp + 0x48]
0000000140597562 call     qword ptr [rip + 0xecd90]
0000000140597568 mov      rcx, qword ptr [rbp + 0x48]
000000014059756c shr      eax, 0x14
000000014059756f and      eax, r13d
0000000140597572 mov      dword ptr [rbp - 0x38], eax
0000000140597575 mov      rax, qword ptr [rbp + 0x48]
0000000140597579 mov      rcx, qword ptr [rcx + 8]
000000014059757d lea      rbx, [rax + 0x1320]
0000000140597584 mov      rax, qword ptr [rax + 0x18]
0000000140597588 mov      rdx, rbx
000000014059758b mov      rax, qword ptr [rax + 0x108]
0000000140597592 call     qword ptr [rip + 0xecd60]
0000000140597598 mov      esi, dword ptr [rbp + 0x58]
000000014059759b cmp      dword ptr [rdi], esi
000000014059759d jae      0x14058eaac
00000001405975a3 lea      r9, [rip + 0xda596]
00000001405975aa jmp      0x140595e71
00000001405975af mov      rax, qword ptr [rsi + 0x20]
00000001405975b3 mov      r12d, 0x8804
00000001405975b9 mov      rcx, qword ptr [rbp + 0x48]
00000001405975bd mov      edx, r12d
00000001405975c0 call     qword ptr [rip + 0xecd32]
00000001405975c6 shr      eax, 0x13
00000001405975c9 and      eax, r13d
00000001405975cc mov      dword ptr [rbp - 0x38], eax
00000001405975cf je       0x14058ebb1
00000001405975d5 mov      rax, qword ptr [rsi + 0x20]
00000001405975d9 mov      edx, r12d
00000001405975dc mov      rcx, qword ptr [rbp + 0x48]
00000001405975e0 call     qword ptr [rip + 0xecd12]
00000001405975e6 mov      rcx, qword ptr [rbp + 0x48]
00000001405975ea shr      eax, 0x13
00000001405975ed and      eax, r13d
00000001405975f0 mov      dword ptr [rbp - 0x38], eax
00000001405975f3 mov      rax, qword ptr [rbp + 0x48]
00000001405975f7 mov      rcx, qword ptr [rcx + 8]
00000001405975fb lea      rbx, [rax + 0x1320]
0000000140597602 mov      rax, qword ptr [rax + 0x18]
0000000140597606 mov      rdx, rbx
0000000140597609 mov      rax, qword ptr [rax + 0x108]
0000000140597610 call     qword ptr [rip + 0xecce2]
0000000140597616 mov      esi, dword ptr [rbp + 0x58]
0000000140597619 cmp      dword ptr [rdi], esi
000000014059761b jae      0x14058eaac
0000000140597621 lea      r9, [rip + 0xda548]
0000000140597628 jmp      0x140595e71
000000014059762d mov      rax, qword ptr [rsi + 0x20]
0000000140597631 mov      r12d, 0x8804
0000000140597637 mov      rcx, qword ptr [rbp + 0x48]
000000014059763b mov      edx, r12d
000000014059763e call     qword ptr [rip + 0xeccb4]
0000000140597644 shr      eax, 0x12
0000000140597647 and      eax, r13d
000000014059764a mov      dword ptr [rbp - 0x38], eax
000000014059764d je       0x14058ebb1
0000000140597653 mov      rax, qword ptr [rsi + 0x20]
0000000140597657 mov      edx, r12d
000000014059765a mov      rcx, qword ptr [rbp + 0x48]
000000014059765e call     qword ptr [rip + 0xecc94]
0000000140597664 mov      rcx, qword ptr [rbp + 0x48]
0000000140597668 shr      eax, 0x12
000000014059766b and      eax, r13d
000000014059766e mov      dword ptr [rbp - 0x38], eax
0000000140597671 mov      rax, qword ptr [rbp + 0x48]
0000000140597675 mov      rcx, qword ptr [rcx + 8]
0000000140597679 lea      rbx, [rax + 0x1320]
0000000140597680 mov      rax, qword ptr [rax + 0x18]
0000000140597684 mov      rdx, rbx
0000000140597687 mov      rax, qword ptr [rax + 0x108]
000000014059768e call     qword ptr [rip + 0xecc64]
0000000140597694 mov      esi, dword ptr [rbp + 0x58]
0000000140597697 cmp      dword ptr [rdi], esi
0000000140597699 jae      0x14058eaac
000000014059769f lea      r9, [rip + 0xda4fa]
00000001405976a6 jmp      0x140595e71
00000001405976ab mov      rax, qword ptr [rsi + 0x20]
00000001405976af mov      r12d, 0x8804
00000001405976b5 mov      rcx, qword ptr [rbp + 0x48]
00000001405976b9 mov      edx, r12d
00000001405976bc call     qword ptr [rip + 0xecc36]
00000001405976c2 shr      eax, 0x11
00000001405976c5 and      eax, r13d
00000001405976c8 mov      dword ptr [rbp - 0x38], eax
00000001405976cb je       0x14058ebb1
00000001405976d1 mov      rax, qword ptr [rsi + 0x20]
00000001405976d5 mov      edx, r12d
00000001405976d8 mov      rcx, qword ptr [rbp + 0x48]
00000001405976dc call     qword ptr [rip + 0xecc16]
00000001405976e2 mov      rcx, qword ptr [rbp + 0x48]
00000001405976e6 shr      eax, 0x11
00000001405976e9 and      eax, r13d
00000001405976ec mov      dword ptr [rbp - 0x38], eax
00000001405976ef mov      rax, qword ptr [rbp + 0x48]
00000001405976f3 mov      rcx, qword ptr [rcx + 8]
00000001405976f7 lea      rbx, [rax + 0x1320]
00000001405976fe mov      rax, qword ptr [rax + 0x18]
0000000140597702 mov      rdx, rbx
0000000140597705 mov      rax, qword ptr [rax + 0x108]
000000014059770c call     qword ptr [rip + 0xecbe6]
0000000140597712 mov      esi, dword ptr [rbp + 0x58]
0000000140597715 cmp      dword ptr [rdi], esi
0000000140597717 jae      0x14058eaac
000000014059771d lea      r9, [rip + 0xda4ac]
0000000140597724 jmp      0x140595e71
0000000140597729 mov      rax, qword ptr [rsi + 0x20]
000000014059772d mov      r12d, 0x8804
0000000140597733 mov      rcx, qword ptr [rbp + 0x48]
0000000140597737 mov      edx, r12d
000000014059773a call     qword ptr [rip + 0xecbb8]
0000000140597740 shr      eax, 0x10
0000000140597743 and      eax, r13d
0000000140597746 mov      dword ptr [rbp - 0x38], eax
0000000140597749 je       0x14058ebb1
000000014059774f mov      rax, qword ptr [rsi + 0x20]
0000000140597753 mov      edx, r12d
0000000140597756 mov      rcx, qword ptr [rbp + 0x48]
000000014059775a call     qword ptr [rip + 0xecb98]
0000000140597760 mov      rcx, qword ptr [rbp + 0x48]
0000000140597764 shr      eax, 0x10
0000000140597767 and      eax, r13d
000000014059776a mov      dword ptr [rbp - 0x38], eax
000000014059776d mov      rax, qword ptr [rbp + 0x48]
0000000140597771 mov      rcx, qword ptr [rcx + 8]
0000000140597775 lea      rbx, [rax + 0x1320]
000000014059777c mov      rax, qword ptr [rax + 0x18]
0000000140597780 mov      rdx, rbx
0000000140597783 mov      rax, qword ptr [rax + 0x108]
000000014059778a call     qword ptr [rip + 0xecb68]
0000000140597790 mov      esi, dword ptr [rbp + 0x58]
0000000140597793 cmp      dword ptr [rdi], esi
0000000140597795 jae      0x14058eaac
000000014059779b lea      r9, [rip + 0xda45e]
00000001405977a2 jmp      0x140595e71
00000001405977a7 mov      rax, qword ptr [rsi + 0x10]
00000001405977ab mov      r12d, 0x8804
00000001405977b1 mov      rcx, qword ptr [rbp + 0x48]
00000001405977b5 mov      edx, r12d
00000001405977b8 call     qword ptr [rip + 0xecb3a]
00000001405977be movzx    eax, ax
00000001405977c1 shr      eax, 0xf
00000001405977c4 mov      dword ptr [rbp - 0x38], eax
00000001405977c7 test     eax, eax
00000001405977c9 je       0x14058ebb1
00000001405977cf mov      rax, qword ptr [rsi + 0x10]
00000001405977d3 mov      edx, r12d
00000001405977d6 mov      rcx, qword ptr [rbp + 0x48]
00000001405977da call     qword ptr [rip + 0xecb18]
00000001405977e0 mov      rcx, qword ptr [rbp + 0x48]
00000001405977e4 movzx    eax, ax
00000001405977e7 shr      eax, 0xf
00000001405977ea mov      dword ptr [rbp - 0x38], eax
00000001405977ed mov      rax, qword ptr [rbp + 0x48]
00000001405977f1 mov      rcx, qword ptr [rcx + 8]
00000001405977f5 lea      rbx, [rax + 0x1320]
00000001405977fc mov      rax, qword ptr [rax + 0x18]
0000000140597800 mov      rdx, rbx
0000000140597803 mov      rax, qword ptr [rax + 0x108]
000000014059780a call     qword ptr [rip + 0xecae8]
0000000140597810 mov      esi, dword ptr [rbp + 0x58]
0000000140597813 cmp      dword ptr [rdi], esi
0000000140597815 jae      0x14058eaac
000000014059781b lea      r9, [rip + 0xda40e]
0000000140597822 jmp      0x140595e71
0000000140597827 mov      rax, qword ptr [rsi + 0x10]
000000014059782b mov      r12d, 0x8804
0000000140597831 mov      rcx, qword ptr [rbp + 0x48]
0000000140597835 mov      edx, r12d
0000000140597838 call     qword ptr [rip + 0xecaba]
000000014059783e shr      eax, 0xe
0000000140597841 and      eax, r13d
0000000140597844 mov      dword ptr [rbp - 0x38], eax
0000000140597847 je       0x14058ebb1
000000014059784d mov      rax, qword ptr [rsi + 0x10]
0000000140597851 mov      edx, r12d
0000000140597854 mov      rcx, qword ptr [rbp + 0x48]
0000000140597858 call     qword ptr [rip + 0xeca9a]
000000014059785e mov      rcx, qword ptr [rbp + 0x48]
0000000140597862 shr      eax, 0xe
0000000140597865 and      eax, r13d
0000000140597868 mov      dword ptr [rbp - 0x38], eax
000000014059786b mov      rax, qword ptr [rbp + 0x48]
000000014059786f mov      rcx, qword ptr [rcx + 8]
0000000140597873 lea      rbx, [rax + 0x1320]
000000014059787a mov      rax, qword ptr [rax + 0x18]
000000014059787e mov      rdx, rbx
0000000140597881 mov      rax, qword ptr [rax + 0x108]
0000000140597888 call     qword ptr [rip + 0xeca6a]
000000014059788e mov      esi, dword ptr [rbp + 0x58]
0000000140597891 cmp      dword ptr [rdi], esi
0000000140597893 jae      0x14058eaac
0000000140597899 lea      r9, [rip + 0xda3c0]
00000001405978a0 jmp      0x140595e71
00000001405978a5 mov      rax, qword ptr [rsi + 0x10]
00000001405978a9 mov      r12d, 0x8804
00000001405978af mov      rcx, qword ptr [rbp + 0x48]
00000001405978b3 mov      edx, r12d
00000001405978b6 call     qword ptr [rip + 0xeca3c]
00000001405978bc shr      eax, 0xd
00000001405978bf and      eax, r13d
00000001405978c2 mov      dword ptr [rbp - 0x38], eax
00000001405978c5 je       0x14058ebb1
00000001405978cb mov      rax, qword ptr [rsi + 0x10]
00000001405978cf mov      edx, r12d
00000001405978d2 mov      rcx, qword ptr [rbp + 0x48]
00000001405978d6 call     qword ptr [rip + 0xeca1c]
00000001405978dc mov      rcx, qword ptr [rbp + 0x48]
00000001405978e0 shr      eax, 0xd
00000001405978e3 and      eax, r13d
00000001405978e6 mov      dword ptr [rbp - 0x38], eax
00000001405978e9 mov      rax, qword ptr [rbp + 0x48]
00000001405978ed mov      rcx, qword ptr [rcx + 8]
00000001405978f1 lea      rbx, [rax + 0x1320]
00000001405978f8 mov      rax, qword ptr [rax + 0x18]
00000001405978fc mov      rdx, rbx
00000001405978ff mov      rax, qword ptr [rax + 0x108]
0000000140597906 call     qword ptr [rip + 0xec9ec]
000000014059790c mov      esi, dword ptr [rbp + 0x58]
000000014059790f cmp      dword ptr [rdi], esi
0000000140597911 jae      0x14058eaac
0000000140597917 lea      r9, [rip + 0xda372]
000000014059791e jmp      0x140595e71
0000000140597923 mov      rax, qword ptr [rsi + 0x10]
0000000140597927 mov      r12d, 0x8804
000000014059792d mov      rcx, qword ptr [rbp + 0x48]
0000000140597931 mov      edx, r12d
0000000140597934 call     qword ptr [rip + 0xec9be]
000000014059793a shr      eax, 0xc
000000014059793d and      eax, r13d
0000000140597940 mov      dword ptr [rbp - 0x38], eax
0000000140597943 je       0x14058ebb1
0000000140597949 mov      rax, qword ptr [rsi + 0x10]
000000014059794d mov      edx, r12d
0000000140597950 mov      rcx, qword ptr [rbp + 0x48]
0000000140597954 call     qword ptr [rip + 0xec99e]
000000014059795a mov      rcx, qword ptr [rbp + 0x48]
000000014059795e shr      eax, 0xc
0000000140597961 and      eax, r13d
0000000140597964 mov      dword ptr [rbp - 0x38], eax
0000000140597967 mov      rax, qword ptr [rbp + 0x48]
000000014059796b mov      rcx, qword ptr [rcx + 8]
000000014059796f lea      rbx, [rax + 0x1320]
0000000140597976 mov      rax, qword ptr [rax + 0x18]
000000014059797a mov      rdx, rbx
000000014059797d mov      rax, qword ptr [rax + 0x108]
0000000140597984 call     qword ptr [rip + 0xec96e]
000000014059798a mov      esi, dword ptr [rbp + 0x58]
000000014059798d cmp      dword ptr [rdi], esi
000000014059798f jae      0x14058eaac
0000000140597995 lea      r9, [rip + 0xda324]
000000014059799c jmp      0x140595e71
00000001405979a1 mov      rax, qword ptr [rsi + 0x10]
00000001405979a5 mov      r12d, 0x8804
00000001405979ab mov      rcx, qword ptr [rbp + 0x48]
00000001405979af mov      edx, r12d
00000001405979b2 call     qword ptr [rip + 0xec940]
00000001405979b8 shr      eax, 0xb
00000001405979bb and      eax, r13d
00000001405979be mov      dword ptr [rbp - 0x38], eax
00000001405979c1 je       0x14058ebb1
00000001405979c7 mov      rax, qword ptr [rsi + 0x10]
00000001405979cb mov      edx, r12d
00000001405979ce mov      rcx, qword ptr [rbp + 0x48]
00000001405979d2 call     qword ptr [rip + 0xec920]
00000001405979d8 mov      rcx, qword ptr [rbp + 0x48]
00000001405979dc shr      eax, 0xb
00000001405979df and      eax, r13d
00000001405979e2 mov      dword ptr [rbp - 0x38], eax
00000001405979e5 mov      rax, qword ptr [rbp + 0x48]
00000001405979e9 mov      rcx, qword ptr [rcx + 8]
00000001405979ed lea      rbx, [rax + 0x1320]
00000001405979f4 mov      rax, qword ptr [rax + 0x18]
00000001405979f8 mov      rdx, rbx
00000001405979fb mov      rax, qword ptr [rax + 0x108]
0000000140597a02 call     qword ptr [rip + 0xec8f0]
0000000140597a08 mov      esi, dword ptr [rbp + 0x58]
0000000140597a0b cmp      dword ptr [rdi], esi
0000000140597a0d jae      0x14058eaac
0000000140597a13 lea      r9, [rip + 0xda2d6]
0000000140597a1a jmp      0x140595e71
0000000140597a1f mov      rax, qword ptr [rsi + 0x10]
0000000140597a23 mov      r12d, 0x8804
0000000140597a29 mov      rcx, qword ptr [rbp + 0x48]
0000000140597a2d mov      edx, r12d
0000000140597a30 call     qword ptr [rip + 0xec8c2]
0000000140597a36 shr      eax, 0xa
0000000140597a39 and      eax, r13d
0000000140597a3c mov      dword ptr [rbp - 0x38], eax
0000000140597a3f je       0x14058ebb1
0000000140597a45 mov      rax, qword ptr [rsi + 0x10]
0000000140597a49 mov      edx, r12d
0000000140597a4c mov      rcx, qword ptr [rbp + 0x48]
0000000140597a50 call     qword ptr [rip + 0xec8a2]
0000000140597a56 mov      rcx, qword ptr [rbp + 0x48]
0000000140597a5a shr      eax, 0xa
0000000140597a5d and      eax, r13d
0000000140597a60 mov      dword ptr [rbp - 0x38], eax
0000000140597a63 mov      rax, qword ptr [rbp + 0x48]
0000000140597a67 mov      rcx, qword ptr [rcx + 8]
0000000140597a6b lea      rbx, [rax + 0x1320]
0000000140597a72 mov      rax, qword ptr [rax + 0x18]
0000000140597a76 mov      rdx, rbx
0000000140597a79 mov      rax, qword ptr [rax + 0x108]
0000000140597a80 call     qword ptr [rip + 0xec872]
0000000140597a86 mov      esi, dword ptr [rbp + 0x58]
0000000140597a89 cmp      dword ptr [rdi], esi
0000000140597a8b jae      0x14058eaac
0000000140597a91 lea      r9, [rip + 0xda288]
0000000140597a98 jmp      0x140595e71
0000000140597a9d mov      rax, qword ptr [rsi + 0x10]
0000000140597aa1 mov      r12d, 0x8804
0000000140597aa7 mov      rcx, qword ptr [rbp + 0x48]
0000000140597aab mov      edx, r12d
0000000140597aae call     qword ptr [rip + 0xec844]
0000000140597ab4 shr      eax, 9
0000000140597ab7 and      eax, r13d
0000000140597aba mov      dword ptr [rbp - 0x38], eax
0000000140597abd je       0x14058ebb1
0000000140597ac3 mov      rax, qword ptr [rsi + 0x10]
0000000140597ac7 mov      edx, r12d
0000000140597aca mov      rcx, qword ptr [rbp + 0x48]
0000000140597ace call     qword ptr [rip + 0xec824]
0000000140597ad4 mov      rcx, qword ptr [rbp + 0x48]
0000000140597ad8 shr      eax, 9
0000000140597adb and      eax, r13d
0000000140597ade mov      dword ptr [rbp - 0x38], eax
0000000140597ae1 mov      rax, qword ptr [rbp + 0x48]
0000000140597ae5 mov      rcx, qword ptr [rcx + 8]
0000000140597ae9 lea      rbx, [rax + 0x1320]
0000000140597af0 mov      rax, qword ptr [rax + 0x18]
0000000140597af4 mov      rdx, rbx
0000000140597af7 mov      rax, qword ptr [rax + 0x108]
0000000140597afe call     qword ptr [rip + 0xec7f4]
0000000140597b04 mov      esi, dword ptr [rbp + 0x58]
0000000140597b07 cmp      dword ptr [rdi], esi
0000000140597b09 jae      0x14058eaac
0000000140597b0f lea      r9, [rip + 0xda23a]
0000000140597b16 jmp      0x140595e71
0000000140597b1b mov      rax, qword ptr [rsi + 0x10]
0000000140597b1f mov      r12d, 0x8804
0000000140597b25 mov      rcx, qword ptr [rbp + 0x48]
0000000140597b29 mov      edx, r12d
0000000140597b2c call     qword ptr [rip + 0xec7c6]
0000000140597b32 mov      rcx, qword ptr [rbp + 0x48]
0000000140597b36 movzx    ebx, ax
0000000140597b39 mov      rax, qword ptr [rsi + 0x10]
0000000140597b3d shr      ebx, 8
0000000140597b40 and      ebx, r13d
0000000140597b43 mov      r13d, 0xb000
0000000140597b49 mov      edx, r13d
0000000140597b4c call     qword ptr [rip + 0xec7a6]
0000000140597b52 shr      eax, 8
0000000140597b55 and      eax, 7
0000000140597b58 xor      bl, 1
0000000140597b5b mov      dword ptr [rbp - 0x38], eax
0000000140597b5e jne      0x14058ebb1
0000000140597b64 mov      ebx, 2
0000000140597b69 cmp      eax, ebx
0000000140597b6b jb       0x14058ebb1
0000000140597b71 mov      rax, qword ptr [rsi + 0x10]
0000000140597b75 mov      edx, r12d
0000000140597b78 mov      rcx, qword ptr [rbp + 0x48]
0000000140597b7c call     qword ptr [rip + 0xec776]
0000000140597b82 mov      rcx, qword ptr [rbp + 0x48]
0000000140597b86 shr      eax, 8
0000000140597b89 and      eax, 1
0000000140597b8c mov      dword ptr [rbp - 0x38], eax
0000000140597b8f mov      rax, qword ptr [rbp + 0x48]
0000000140597b93 mov      rcx, qword ptr [rcx + 8]
0000000140597b97 lea      rbx, [rax + 0x1320]
0000000140597b9e mov      rax, qword ptr [rax + 0x18]
0000000140597ba2 mov      rdx, rbx
0000000140597ba5 mov      rax, qword ptr [rax + 0x108]
0000000140597bac call     qword ptr [rip + 0xec746]
0000000140597bb2 mov      esi, dword ptr [rbp + 0x58]
0000000140597bb5 cmp      dword ptr [rdi], esi
0000000140597bb7 jae      0x140597bf4
0000000140597bb9 mov      rax, qword ptr [rbp + 0x48]
0000000140597bbd lea      r9, [rip + 0xda1ac]
0000000140597bc4 mov      edx, dword ptr [rdi]
0000000140597bc6 mov      r8d, esi
0000000140597bc9 sub      r8d, edx
0000000140597bcc add      rdx, r15
0000000140597bcf mov      rcx, qword ptr [rax + 0x18]
0000000140597bd3 mov      eax, dword ptr [rbp - 0x38]
0000000140597bd6 mov      dword ptr [rsp + 0x20], eax
0000000140597bda mov      rax, qword ptr [rbp + 0x48]
0000000140597bde mov      r10, qword ptr [rcx + 0x128]
0000000140597be5 mov      rcx, qword ptr [rax + 8]
0000000140597be9 mov      rax, r10
0000000140597bec call     qword ptr [rip + 0xec706]
0000000140597bf2 add      dword ptr [rdi], eax
0000000140597bf4 mov      rax, qword ptr [rbp + 0x48]
0000000140597bf8 mov      rdx, rbx
0000000140597bfb mov      rcx, qword ptr [rbp + 0x48]
0000000140597bff mov      rax, qword ptr [rax + 0x18]
0000000140597c03 mov      rcx, qword ptr [rcx + 8]
0000000140597c07 mov      rax, qword ptr [rax + 0x110]
0000000140597c0e call     qword ptr [rip + 0xec6e4]
0000000140597c14 mov      rcx, qword ptr [rbp - 0x28]
0000000140597c18 mov      edx, r13d
0000000140597c1b mov      rax, qword ptr [rcx + 0x10]
0000000140597c1f mov      rcx, qword ptr [rbp + 0x48]
0000000140597c23 call     qword ptr [rip + 0xec6cf]
0000000140597c29 mov      rcx, qword ptr [rbp + 0x48]
0000000140597c2d mov      rdx, rbx
0000000140597c30 shr      eax, 8
0000000140597c33 and      eax, 7
0000000140597c36 mov      dword ptr [rbp - 0x38], eax
0000000140597c39 mov      rax, qword ptr [rbp + 0x48]
0000000140597c3d mov      rcx, qword ptr [rcx + 8]
0000000140597c41 mov      rax, qword ptr [rax + 0x18]
0000000140597c45 mov      rax, qword ptr [rax + 0x108]
0000000140597c4c call     qword ptr [rip + 0xec6a6]
0000000140597c52 cmp      dword ptr [rdi], esi
0000000140597c54 jae      0x14058eaac
0000000140597c5a lea      r9, [rip + 0xda12f]
0000000140597c61 jmp      0x140595e71
0000000140597c66 mov      rax, qword ptr [rsi]
0000000140597c69 mov      r12d, 0x8804
0000000140597c6f mov      rcx, qword ptr [rbp + 0x48]
0000000140597c73 mov      edx, r12d
0000000140597c76 call     qword ptr [rip + 0xec67c]
0000000140597c7c movzx    eax, al
0000000140597c7f shr      eax, 7
0000000140597c82 mov      dword ptr [rbp - 0x38], eax
0000000140597c85 test     eax, eax
0000000140597c87 je       0x14058ebb1
0000000140597c8d mov      rax, qword ptr [rsi]
0000000140597c90 mov      edx, r12d
0000000140597c93 mov      rcx, qword ptr [rbp + 0x48]
0000000140597c97 call     qword ptr [rip + 0xec65b]
0000000140597c9d mov      rcx, qword ptr [rbp + 0x48]
0000000140597ca1 movzx    eax, al
0000000140597ca4 shr      eax, 7
0000000140597ca7 mov      dword ptr [rbp - 0x38], eax
0000000140597caa mov      rax, qword ptr [rbp + 0x48]
0000000140597cae mov      rcx, qword ptr [rcx + 8]
0000000140597cb2 lea      rbx, [rax + 0x1320]
0000000140597cb9 mov      rax, qword ptr [rax + 0x18]
0000000140597cbd mov      rdx, rbx
0000000140597cc0 mov      rax, qword ptr [rax + 0x108]
0000000140597cc7 call     qword ptr [rip + 0xec62b]
0000000140597ccd mov      esi, dword ptr [rbp + 0x58]
0000000140597cd0 cmp      dword ptr [rdi], esi
0000000140597cd2 jae      0x14058eaac
0000000140597cd8 lea      r9, [rip + 0xda0e1]
0000000140597cdf jmp      0x140595e71
0000000140597ce4 mov      rax, qword ptr [rsi]
0000000140597ce7 mov      r12d, 0x8804
0000000140597ced mov      rcx, qword ptr [rbp + 0x48]
0000000140597cf1 mov      edx, r12d
0000000140597cf4 call     qword ptr [rip + 0xec5fe]
0000000140597cfa shr      eax, 6
0000000140597cfd and      eax, r13d
0000000140597d00 mov      dword ptr [rbp - 0x38], eax
0000000140597d03 je       0x14058ebb1
0000000140597d09 mov      rax, qword ptr [rsi]
0000000140597d0c mov      edx, r12d
0000000140597d0f mov      rcx, qword ptr [rbp + 0x48]
0000000140597d13 call     qword ptr [rip + 0xec5df]
0000000140597d19 mov      rcx, qword ptr [rbp + 0x48]
0000000140597d1d shr      eax, 6
0000000140597d20 and      eax, r13d
0000000140597d23 mov      dword ptr [rbp - 0x38], eax
0000000140597d26 mov      rax, qword ptr [rbp + 0x48]
0000000140597d2a mov      rcx, qword ptr [rcx + 8]
0000000140597d2e lea      rbx, [rax + 0x1320]
0000000140597d35 mov      rax, qword ptr [rax + 0x18]
0000000140597d39 mov      rdx, rbx
0000000140597d3c mov      rax, qword ptr [rax + 0x108]
0000000140597d43 call     qword ptr [rip + 0xec5af]
0000000140597d49 mov      esi, dword ptr [rbp + 0x58]
0000000140597d4c cmp      dword ptr [rdi], esi
0000000140597d4e jae      0x14058eaac
0000000140597d54 lea      r9, [rip + 0xda085]
0000000140597d5b jmp      0x140595e71
0000000140597d60 mov      rax, qword ptr [rsi]
0000000140597d63 mov      r12d, 0x8804
0000000140597d69 mov      rcx, qword ptr [rbp + 0x48]
0000000140597d6d mov      edx, r12d
0000000140597d70 call     qword ptr [rip + 0xec582]
0000000140597d76 shr      eax, 5
0000000140597d79 and      eax, r13d
0000000140597d7c mov      dword ptr [rbp - 0x38], eax
0000000140597d7f je       0x14058ebb1
0000000140597d85 mov      rax, qword ptr [rsi]
0000000140597d88 mov      edx, r12d
0000000140597d8b mov      rcx, qword ptr [rbp + 0x48]
0000000140597d8f call     qword ptr [rip + 0xec563]
0000000140597d95 mov      rcx, qword ptr [rbp + 0x48]
0000000140597d99 shr      eax, 5
0000000140597d9c and      eax, r13d
0000000140597d9f mov      dword ptr [rbp - 0x38], eax
0000000140597da2 mov      rax, qword ptr [rbp + 0x48]
0000000140597da6 mov      rcx, qword ptr [rcx + 8]
0000000140597daa lea      rbx, [rax + 0x1320]
0000000140597db1 mov      rax, qword ptr [rax + 0x18]
0000000140597db5 mov      rdx, rbx
0000000140597db8 mov      rax, qword ptr [rax + 0x108]
0000000140597dbf call     qword ptr [rip + 0xec533]
0000000140597dc5 mov      esi, dword ptr [rbp + 0x58]
0000000140597dc8 cmp      dword ptr [rdi], esi
0000000140597dca jae      0x14058eaac
0000000140597dd0 lea      r9, [rip + 0xda029]
0000000140597dd7 jmp      0x140595e71
0000000140597ddc mov      rax, qword ptr [rsi]
0000000140597ddf mov      r12d, 0x8804
0000000140597de5 mov      rcx, qword ptr [rbp + 0x48]
0000000140597de9 mov      edx, r12d
0000000140597dec call     qword ptr [rip + 0xec506]
0000000140597df2 shr      eax, 4
0000000140597df5 and      eax, r13d
0000000140597df8 mov      dword ptr [rbp - 0x38], eax
0000000140597dfb je       0x14058ebb1
0000000140597e01 mov      rax, qword ptr [rsi]
0000000140597e04 mov      edx, r12d
0000000140597e07 mov      rcx, qword ptr [rbp + 0x48]
0000000140597e0b call     qword ptr [rip + 0xec4e7]
0000000140597e11 mov      rcx, qword ptr [rbp + 0x48]
0000000140597e15 shr      eax, 4
0000000140597e18 and      eax, r13d
0000000140597e1b mov      dword ptr [rbp - 0x38], eax
0000000140597e1e mov      rax, qword ptr [rbp + 0x48]
0000000140597e22 mov      rcx, qword ptr [rcx + 8]
0000000140597e26 lea      rbx, [rax + 0x1320]
0000000140597e2d mov      rax, qword ptr [rax + 0x18]
0000000140597e31 mov      rdx, rbx
0000000140597e34 mov      rax, qword ptr [rax + 0x108]
0000000140597e3b call     qword ptr [rip + 0xec4b7]
0000000140597e41 mov      esi, dword ptr [rbp + 0x58]
0000000140597e44 cmp      dword ptr [rdi], esi
0000000140597e46 jae      0x14058eaac
0000000140597e4c lea      r9, [rip + 0xd9fcd]
0000000140597e53 jmp      0x140595e71
0000000140597e58 mov      rax, qword ptr [rsi]
0000000140597e5b mov      r12d, 0x8804
0000000140597e61 mov      rcx, qword ptr [rbp + 0x48]
0000000140597e65 mov      edx, r12d
0000000140597e68 call     qword ptr [rip + 0xec48a]
0000000140597e6e shr      eax, 3
0000000140597e71 and      eax, r13d
0000000140597e74 mov      dword ptr [rbp - 0x38], eax
0000000140597e77 je       0x14058ebb1
0000000140597e7d mov      rax, qword ptr [rsi]
0000000140597e80 mov      edx, r12d
0000000140597e83 mov      rcx, qword ptr [rbp + 0x48]
0000000140597e87 call     qword ptr [rip + 0xec46b]
0000000140597e8d mov      rcx, qword ptr [rbp + 0x48]
0000000140597e91 shr      eax, 3
0000000140597e94 and      eax, r13d
0000000140597e97 mov      dword ptr [rbp - 0x38], eax
0000000140597e9a mov      rax, qword ptr [rbp + 0x48]
0000000140597e9e mov      rcx, qword ptr [rcx + 8]
0000000140597ea2 lea      rbx, [rax + 0x1320]
0000000140597ea9 mov      rax, qword ptr [rax + 0x18]
0000000140597ead mov      rdx, rbx
0000000140597eb0 mov      rax, qword ptr [rax + 0x108]
0000000140597eb7 call     qword ptr [rip + 0xec43b]
0000000140597ebd mov      esi, dword ptr [rbp + 0x58]
0000000140597ec0 cmp      dword ptr [rdi], esi
0000000140597ec2 jae      0x14058eaac
0000000140597ec8 lea      r9, [rip + 0xd9f71]
0000000140597ecf jmp      0x140595e71
0000000140597ed4 mov      rax, qword ptr [rsi]
0000000140597ed7 mov      r12d, 0x8804
0000000140597edd mov      rcx, qword ptr [rbp + 0x48]
0000000140597ee1 mov      edx, r12d
0000000140597ee4 call     qword ptr [rip + 0xec40e]
0000000140597eea shr      eax, 2
0000000140597eed and      eax, r13d
0000000140597ef0 mov      dword ptr [rbp - 0x38], eax
0000000140597ef3 je       0x14058ebb1
0000000140597ef9 mov      rax, qword ptr [rsi]
0000000140597efc mov      edx, r12d
0000000140597eff mov      rcx, qword ptr [rbp + 0x48]
0000000140597f03 call     qword ptr [rip + 0xec3ef]
0000000140597f09 mov      rcx, qword ptr [rbp + 0x48]
0000000140597f0d shr      eax, 2
0000000140597f10 and      eax, r13d
0000000140597f13 mov      dword ptr [rbp - 0x38], eax
0000000140597f16 mov      rax, qword ptr [rbp + 0x48]
0000000140597f1a mov      rcx, qword ptr [rcx + 8]
0000000140597f1e lea      rbx, [rax + 0x1320]
0000000140597f25 mov      rax, qword ptr [rax + 0x18]
0000000140597f29 mov      rdx, rbx
0000000140597f2c mov      rax, qword ptr [rax + 0x108]
0000000140597f33 call     qword ptr [rip + 0xec3bf]
0000000140597f39 mov      esi, dword ptr [rbp + 0x58]
0000000140597f3c cmp      dword ptr [rdi], esi
0000000140597f3e jae      0x14058eaac
0000000140597f44 lea      r9, [rip + 0xd9f15]
0000000140597f4b jmp      0x140595e71
0000000140597f50 mov      rax, qword ptr [rsi]
0000000140597f53 mov      r12d, 0x8804
0000000140597f59 mov      rcx, qword ptr [rbp + 0x48]
0000000140597f5d mov      edx, r12d
0000000140597f60 call     qword ptr [rip + 0xec392]
0000000140597f66 shr      eax, 1
0000000140597f68 and      eax, r13d
0000000140597f6b mov      dword ptr [rbp - 0x38], eax
0000000140597f6e je       0x14058ebb1
0000000140597f74 mov      rax, qword ptr [rsi]
0000000140597f77 mov      edx, r12d
0000000140597f7a mov      rcx, qword ptr [rbp + 0x48]
0000000140597f7e call     qword ptr [rip + 0xec374]
0000000140597f84 mov      rcx, qword ptr [rbp + 0x48]
0000000140597f88 shr      eax, 1
0000000140597f8a and      eax, r13d
0000000140597f8d mov      dword ptr [rbp - 0x38], eax
0000000140597f90 mov      rax, qword ptr [rbp + 0x48]
0000000140597f94 mov      rcx, qword ptr [rcx + 8]
0000000140597f98 lea      rbx, [rax + 0x1320]
0000000140597f9f mov      rax, qword ptr [rax + 0x18]
0000000140597fa3 mov      rdx, rbx
0000000140597fa6 mov      rax, qword ptr [rax + 0x108]
0000000140597fad call     qword ptr [rip + 0xec345]
0000000140597fb3 mov      esi, dword ptr [rbp + 0x58]
0000000140597fb6 cmp      dword ptr [rdi], esi
0000000140597fb8 jae      0x14058eaac
0000000140597fbe lea      r9, [rip + 0xd9ebb]
0000000140597fc5 jmp      0x140595e71
0000000140597fca mov      rax, qword ptr [rsi]
0000000140597fcd mov      r12d, 0x8804
0000000140597fd3 mov      rcx, qword ptr [rbp + 0x48]
0000000140597fd7 mov      edx, r12d
0000000140597fda call     qword ptr [rip + 0xec318]
0000000140597fe0 and      eax, r13d
0000000140597fe3 mov      dword ptr [rbp - 0x38], eax
0000000140597fe6 je       0x14058ebb1
0000000140597fec mov      rax, qword ptr [rsi]
0000000140597fef mov      edx, r12d
0000000140597ff2 mov      rcx, qword ptr [rbp + 0x48]
0000000140597ff6 call     qword ptr [rip + 0xec2fc]
0000000140597ffc mov      rcx, qword ptr [rbp + 0x48]
0000000140598000 and      eax, r13d
0000000140598003 mov      dword ptr [rbp - 0x38], eax
0000000140598006 mov      rax, qword ptr [rbp + 0x48]
000000014059800a mov      rcx, qword ptr [rcx + 8]
000000014059800e lea      rbx, [rax + 0x1320]
0000000140598015 mov      rax, qword ptr [rax + 0x18]
0000000140598019 mov      rdx, rbx
000000014059801c mov      rax, qword ptr [rax + 0x108]
0000000140598023 call     qword ptr [rip + 0xec2cf]
0000000140598029 mov      esi, dword ptr [rbp + 0x58]
000000014059802c cmp      dword ptr [rdi], esi
000000014059802e jae      0x14058eaac
0000000140598034 lea      r9, [rip + 0xd9e65]
000000014059803b jmp      0x140595e71
0000000140598040 mov      rax, qword ptr [rsi + 0x20]
0000000140598044 mov      ebx, 0x8808
0000000140598049 mov      rcx, qword ptr [rbp + 0x48]
000000014059804d mov      edx, ebx
000000014059804f call     qword ptr [rip + 0xec2a3]
0000000140598055 shr      eax, 0x1f
0000000140598058 mov      dword ptr [rbp - 0x38], eax
000000014059805b test     eax, eax
000000014059805d je       0x14058ebb1
0000000140598063 mov      rax, qword ptr [rsi + 0x20]
0000000140598067 mov      edx, ebx
0000000140598069 mov      rcx, qword ptr [rbp + 0x48]
000000014059806d call     qword ptr [rip + 0xec285]
0000000140598073 mov      rcx, qword ptr [rbp + 0x48]
0000000140598077 shr      eax, 0x1f
000000014059807a mov      dword ptr [rbp - 0x38], eax
000000014059807d mov      rax, qword ptr [rbp + 0x48]
0000000140598081 mov      rcx, qword ptr [rcx + 8]
0000000140598085 lea      rbx, [rax + 0x1320]
000000014059808c mov      rax, qword ptr [rax + 0x18]
0000000140598090 mov      rdx, rbx
0000000140598093 mov      rax, qword ptr [rax + 0x108]
000000014059809a call     qword ptr [rip + 0xec258]
00000001405980a0 mov      esi, dword ptr [rbp + 0x58]
00000001405980a3 cmp      dword ptr [rdi], esi
00000001405980a5 jae      0x14058eaac
00000001405980ab lea      r9, [rip + 0xd9e0e]
00000001405980b2 jmp      0x140595e71
00000001405980b7 mov      rax, qword ptr [rsi + 0x20]
00000001405980bb mov      ebx, 0x8808
00000001405980c0 mov      rcx, qword ptr [rbp + 0x48]
00000001405980c4 mov      edx, ebx
00000001405980c6 call     qword ptr [rip + 0xec22c]
00000001405980cc shr      eax, 0x1e
00000001405980cf and      eax, r13d
00000001405980d2 mov      dword ptr [rbp - 0x38], eax
00000001405980d5 je       0x14058ebb1
00000001405980db mov      rax, qword ptr [rsi + 0x20]
00000001405980df mov      edx, ebx
00000001405980e1 mov      rcx, qword ptr [rbp + 0x48]
00000001405980e5 call     qword ptr [rip + 0xec20d]
00000001405980eb mov      rcx, qword ptr [rbp + 0x48]
00000001405980ef shr      eax, 0x1e
00000001405980f2 and      eax, r13d
00000001405980f5 mov      dword ptr [rbp - 0x38], eax
00000001405980f8 mov      rax, qword ptr [rbp + 0x48]
00000001405980fc mov      rcx, qword ptr [rcx + 8]
0000000140598100 lea      rbx, [rax + 0x1320]
0000000140598107 mov      rax, qword ptr [rax + 0x18]
000000014059810b mov      rdx, rbx
000000014059810e mov      rax, qword ptr [rax + 0x108]
0000000140598115 call     qword ptr [rip + 0xec1dd]
000000014059811b mov      esi, dword ptr [rbp + 0x58]
000000014059811e cmp      dword ptr [rdi], esi
0000000140598120 jae      0x14058eaac
0000000140598126 lea      r9, [rip + 0xd9dc3]
000000014059812d jmp      0x140595e71
0000000140598132 mov      rax, qword ptr [rsi + 0x20]
0000000140598136 mov      ebx, 0x8808
000000014059813b mov      rcx, qword ptr [rbp + 0x48]
000000014059813f mov      edx, ebx
0000000140598141 call     qword ptr [rip + 0xec1b1]
0000000140598147 shr      eax, 0x1b
000000014059814a and      eax, r13d
000000014059814d mov      dword ptr [rbp - 0x38], eax
0000000140598150 je       0x14058ebb1
0000000140598156 mov      rax, qword ptr [rsi + 0x20]
000000014059815a mov      edx, ebx
000000014059815c mov      rcx, qword ptr [rbp + 0x48]
0000000140598160 call     qword ptr [rip + 0xec192]
0000000140598166 mov      rcx, qword ptr [rbp + 0x48]
000000014059816a shr      eax, 0x1b
000000014059816d and      eax, r13d
0000000140598170 mov      dword ptr [rbp - 0x38], eax
0000000140598173 mov      rax, qword ptr [rbp + 0x48]
0000000140598177 mov      rcx, qword ptr [rcx + 8]
000000014059817b lea      rbx, [rax + 0x1320]
0000000140598182 mov      rax, qword ptr [rax + 0x18]
0000000140598186 mov      rdx, rbx
0000000140598189 mov      rax, qword ptr [rax + 0x108]
0000000140598190 call     qword ptr [rip + 0xec162]
0000000140598196 mov      esi, dword ptr [rbp + 0x58]
0000000140598199 cmp      dword ptr [rdi], esi
000000014059819b jae      0x14058eaac
00000001405981a1 lea      r9, [rip + 0xd9d78]
00000001405981a8 jmp      0x140595e71
00000001405981ad mov      rax, qword ptr [rsi + 0x20]
00000001405981b1 mov      ebx, 0x8808
00000001405981b6 mov      rcx, qword ptr [rbp + 0x48]
00000001405981ba mov      edx, ebx
00000001405981bc call     qword ptr [rip + 0xec136]
00000001405981c2 shr      eax, 0x19
00000001405981c5 and      eax, r13d
00000001405981c8 mov      dword ptr [rbp - 0x38], eax
00000001405981cb je       0x14058ebb1
00000001405981d1 mov      rax, qword ptr [rsi + 0x20]
00000001405981d5 mov      edx, ebx
00000001405981d7 mov      rcx, qword ptr [rbp + 0x48]
00000001405981db call     qword ptr [rip + 0xec117]
00000001405981e1 mov      rcx, qword ptr [rbp + 0x48]
00000001405981e5 shr      eax, 0x19
00000001405981e8 and      eax, r13d
00000001405981eb mov      dword ptr [rbp - 0x38], eax
00000001405981ee mov      rax, qword ptr [rbp + 0x48]
00000001405981f2 mov      rcx, qword ptr [rcx + 8]
00000001405981f6 lea      rbx, [rax + 0x1320]
00000001405981fd mov      rax, qword ptr [rax + 0x18]
0000000140598201 mov      rdx, rbx
0000000140598204 mov      rax, qword ptr [rax + 0x108]
000000014059820b call     qword ptr [rip + 0xec0e7]
0000000140598211 mov      esi, dword ptr [rbp + 0x58]
0000000140598214 cmp      dword ptr [rdi], esi
0000000140598216 jae      0x14058eaac
000000014059821c lea      r9, [rip + 0xd9d2d]
0000000140598223 jmp      0x140595e71
0000000140598228 mov      rax, qword ptr [rsi + 0x20]
000000014059822c mov      ebx, 0x8808
0000000140598231 mov      rcx, qword ptr [rbp + 0x48]
0000000140598235 mov      edx, ebx
0000000140598237 call     qword ptr [rip + 0xec0bb]
000000014059823d shr      eax, 0x18
0000000140598240 and      eax, r13d
0000000140598243 mov      dword ptr [rbp - 0x38], eax
0000000140598246 je       0x14058ebb1
000000014059824c mov      rax, qword ptr [rsi + 0x20]
0000000140598250 mov      edx, ebx
0000000140598252 mov      rcx, qword ptr [rbp + 0x48]
0000000140598256 call     qword ptr [rip + 0xec09c]
000000014059825c mov      rcx, qword ptr [rbp + 0x48]
0000000140598260 shr      eax, 0x18
0000000140598263 and      eax, r13d
0000000140598266 mov      dword ptr [rbp - 0x38], eax
0000000140598269 mov      rax, qword ptr [rbp + 0x48]
000000014059826d mov      rcx, qword ptr [rcx + 8]
0000000140598271 lea      rbx, [rax + 0x1320]
0000000140598278 mov      rax, qword ptr [rax + 0x18]
000000014059827c mov      rdx, rbx
000000014059827f mov      rax, qword ptr [rax + 0x108]
0000000140598286 call     qword ptr [rip + 0xec06c]
000000014059828c mov      esi, dword ptr [rbp + 0x58]
000000014059828f cmp      dword ptr [rdi], esi
0000000140598291 jae      0x14058eaac
0000000140598297 lea      r9, [rip + 0xd9ce2]
000000014059829e jmp      0x140595e71
00000001405982a3 mov      rax, qword ptr [rsi + 0x20]
00000001405982a7 mov      ebx, 0x8808
00000001405982ac mov      rcx, qword ptr [rbp + 0x48]
00000001405982b0 mov      edx, ebx
00000001405982b2 call     qword ptr [rip + 0xec040]
00000001405982b8 shr      eax, 0x17
00000001405982bb and      eax, r13d
00000001405982be mov      dword ptr [rbp - 0x38], eax
00000001405982c1 je       0x14058ebb1
00000001405982c7 mov      rax, qword ptr [rsi + 0x20]
00000001405982cb mov      edx, ebx
00000001405982cd mov      rcx, qword ptr [rbp + 0x48]
00000001405982d1 call     qword ptr [rip + 0xec021]
00000001405982d7 mov      rcx, qword ptr [rbp + 0x48]
00000001405982db shr      eax, 0x17
00000001405982de and      eax, r13d
00000001405982e1 mov      dword ptr [rbp - 0x38], eax
00000001405982e4 mov      rax, qword ptr [rbp + 0x48]
00000001405982e8 mov      rcx, qword ptr [rcx + 8]
00000001405982ec lea      rbx, [rax + 0x1320]
00000001405982f3 mov      rax, qword ptr [rax + 0x18]
00000001405982f7 mov      rdx, rbx
00000001405982fa mov      rax, qword ptr [rax + 0x108]
0000000140598301 call     qword ptr [rip + 0xebff1]
0000000140598307 mov      esi, dword ptr [rbp + 0x58]
000000014059830a cmp      dword ptr [rdi], esi
000000014059830c jae      0x14058eaac
0000000140598312 lea      r9, [rip + 0xd9c97]
0000000140598319 jmp      0x140595e71
000000014059831e mov      rax, qword ptr [rsi + 0x20]
0000000140598322 mov      ebx, 0x8808
0000000140598327 mov      rcx, qword ptr [rbp + 0x48]
000000014059832b mov      edx, ebx
000000014059832d call     qword ptr [rip + 0xebfc5]
0000000140598333 shr      eax, 0x16
0000000140598336 and      eax, r13d
0000000140598339 mov      dword ptr [rbp - 0x38], eax
000000014059833c je       0x14058ebb1
0000000140598342 mov      rax, qword ptr [rsi + 0x20]
0000000140598346 mov      edx, ebx
0000000140598348 mov      rcx, qword ptr [rbp + 0x48]
000000014059834c call     qword ptr [rip + 0xebfa6]
0000000140598352 mov      rcx, qword ptr [rbp + 0x48]
0000000140598356 shr      eax, 0x16
0000000140598359 and      eax, r13d
000000014059835c mov      dword ptr [rbp - 0x38], eax
000000014059835f mov      rax, qword ptr [rbp + 0x48]
0000000140598363 mov      rcx, qword ptr [rcx + 8]
0000000140598367 lea      rbx, [rax + 0x1320]
000000014059836e mov      rax, qword ptr [rax + 0x18]
0000000140598372 mov      rdx, rbx
0000000140598375 mov      rax, qword ptr [rax + 0x108]
000000014059837c call     qword ptr [rip + 0xebf76]
0000000140598382 mov      esi, dword ptr [rbp + 0x58]
0000000140598385 cmp      dword ptr [rdi], esi
0000000140598387 jae      0x14058eaac
000000014059838d lea      r9, [rip + 0xd9c4c]
0000000140598394 jmp      0x140595e71
0000000140598399 mov      rax, qword ptr [rsi + 0x20]
000000014059839d mov      ebx, 0x8808
00000001405983a2 mov      rcx, qword ptr [rbp + 0x48]
00000001405983a6 mov      edx, ebx
00000001405983a8 call     qword ptr [rip + 0xebf4a]
00000001405983ae shr      eax, 0x15
00000001405983b1 and      eax, r13d
00000001405983b4 mov      dword ptr [rbp - 0x38], eax
00000001405983b7 je       0x14058ebb1
00000001405983bd mov      rax, qword ptr [rsi + 0x20]
00000001405983c1 mov      edx, ebx
00000001405983c3 mov      rcx, qword ptr [rbp + 0x48]
00000001405983c7 call     qword ptr [rip + 0xebf2b]
00000001405983cd mov      rcx, qword ptr [rbp + 0x48]
00000001405983d1 shr      eax, 0x15
00000001405983d4 and      eax, r13d
00000001405983d7 mov      dword ptr [rbp - 0x38], eax
00000001405983da mov      rax, qword ptr [rbp + 0x48]
00000001405983de mov      rcx, qword ptr [rcx + 8]
00000001405983e2 lea      rbx, [rax + 0x1320]
00000001405983e9 mov      rax, qword ptr [rax + 0x18]
00000001405983ed mov      rdx, rbx
00000001405983f0 mov      rax, qword ptr [rax + 0x108]
00000001405983f7 call     qword ptr [rip + 0xebefb]
00000001405983fd mov      esi, dword ptr [rbp + 0x58]
0000000140598400 cmp      dword ptr [rdi], esi
0000000140598402 jae      0x14058eaac
0000000140598408 lea      r9, [rip + 0xd9c01]
000000014059840f jmp      0x140595e71
0000000140598414 mov      rax, qword ptr [rsi + 0x20]
0000000140598418 mov      ebx, 0x8808
000000014059841d mov      rcx, qword ptr [rbp + 0x48]
0000000140598421 mov      edx, ebx
0000000140598423 call     qword ptr [rip + 0xebecf]
0000000140598429 shr      eax, 0x14
000000014059842c and      eax, r13d
000000014059842f mov      dword ptr [rbp - 0x38], eax
0000000140598432 je       0x14058ebb1
0000000140598438 mov      rax, qword ptr [rsi + 0x20]
000000014059843c mov      edx, ebx
000000014059843e mov      rcx, qword ptr [rbp + 0x48]
0000000140598442 call     qword ptr [rip + 0xebeb0]
0000000140598448 mov      rcx, qword ptr [rbp + 0x48]
000000014059844c shr      eax, 0x14
000000014059844f and      eax, r13d
0000000140598452 mov      dword ptr [rbp - 0x38], eax
0000000140598455 mov      rax, qword ptr [rbp + 0x48]
0000000140598459 mov      rcx, qword ptr [rcx + 8]
000000014059845d lea      rbx, [rax + 0x1320]
0000000140598464 mov      rax, qword ptr [rax + 0x18]
0000000140598468 mov      rdx, rbx
000000014059846b mov      rax, qword ptr [rax + 0x108]
0000000140598472 call     qword ptr [rip + 0xebe80]
0000000140598478 mov      esi, dword ptr [rbp + 0x58]
000000014059847b cmp      dword ptr [rdi], esi
000000014059847d jae      0x14058eaac
0000000140598483 lea      r9, [rip + 0xd9bb6]
000000014059848a jmp      0x140595e71
000000014059848f mov      rax, qword ptr [rsi + 0x20]
0000000140598493 mov      ebx, 0x8808
0000000140598498 mov      rcx, qword ptr [rbp + 0x48]
000000014059849c mov      edx, ebx
000000014059849e call     qword ptr [rip + 0xebe54]
00000001405984a4 shr      eax, 0x13
00000001405984a7 and      eax, r13d
00000001405984aa mov      dword ptr [rbp - 0x38], eax
00000001405984ad je       0x14058ebb1
00000001405984b3 mov      rax, qword ptr [rsi + 0x20]
00000001405984b7 mov      edx, ebx
00000001405984b9 mov      rcx, qword ptr [rbp + 0x48]
00000001405984bd call     qword ptr [rip + 0xebe35]
00000001405984c3 mov      rcx, qword ptr [rbp + 0x48]
00000001405984c7 shr      eax, 0x13
00000001405984ca and      eax, r13d
00000001405984cd mov      dword ptr [rbp - 0x38], eax
00000001405984d0 mov      rax, qword ptr [rbp + 0x48]
00000001405984d4 mov      rcx, qword ptr [rcx + 8]
00000001405984d8 lea      rbx, [rax + 0x1320]
00000001405984df mov      rax, qword ptr [rax + 0x18]
00000001405984e3 mov      rdx, rbx
00000001405984e6 mov      rax, qword ptr [rax + 0x108]
00000001405984ed call     qword ptr [rip + 0xebe05]
00000001405984f3 mov      esi, dword ptr [rbp + 0x58]
00000001405984f6 cmp      dword ptr [rdi], esi
00000001405984f8 jae      0x14058eaac
00000001405984fe lea      r9, [rip + 0xd9b6b]
0000000140598505 jmp      0x140595e71
000000014059850a mov      rax, qword ptr [rsi + 0x20]
000000014059850e mov      ebx, 0x8808
0000000140598513 mov      rcx, qword ptr [rbp + 0x48]
0000000140598517 mov      edx, ebx
0000000140598519 call     qword ptr [rip + 0xebdd9]
000000014059851f shr      eax, 0x12
0000000140598522 and      eax, r13d
0000000140598525 mov      dword ptr [rbp - 0x38], eax
0000000140598528 je       0x14058ebb1
000000014059852e mov      rax, qword ptr [rsi + 0x20]
0000000140598532 mov      edx, ebx
0000000140598534 mov      rcx, qword ptr [rbp + 0x48]
0000000140598538 call     qword ptr [rip + 0xebdba]
000000014059853e mov      rcx, qword ptr [rbp + 0x48]
0000000140598542 shr      eax, 0x12
0000000140598545 and      eax, r13d
0000000140598548 mov      dword ptr [rbp - 0x38], eax
000000014059854b mov      rax, qword ptr [rbp + 0x48]
000000014059854f mov      rcx, qword ptr [rcx + 8]
0000000140598553 lea      rbx, [rax + 0x1320]
000000014059855a mov      rax, qword ptr [rax + 0x18]
000000014059855e mov      rdx, rbx
0000000140598561 mov      rax, qword ptr [rax + 0x108]
0000000140598568 call     qword ptr [rip + 0xebd8a]
000000014059856e mov      esi, dword ptr [rbp + 0x58]
0000000140598571 cmp      dword ptr [rdi], esi
0000000140598573 jae      0x14058eaac
0000000140598579 lea      r9, [rip + 0xd9b20]
0000000140598580 jmp      0x140595e71
0000000140598585 mov      rax, qword ptr [rsi + 0x20]
0000000140598589 mov      ebx, 0x8808
000000014059858e mov      rcx, qword ptr [rbp + 0x48]
0000000140598592 mov      edx, ebx
0000000140598594 call     qword ptr [rip + 0xebd5e]
000000014059859a shr      eax, 0x11
000000014059859d and      eax, r13d
00000001405985a0 mov      dword ptr [rbp - 0x38], eax
00000001405985a3 je       0x14058ebb1
00000001405985a9 mov      rax, qword ptr [rsi + 0x20]
00000001405985ad mov      edx, ebx
00000001405985af mov      rcx, qword ptr [rbp + 0x48]
00000001405985b3 call     qword ptr [rip + 0xebd3f]
00000001405985b9 mov      rcx, qword ptr [rbp + 0x48]
00000001405985bd shr      eax, 0x11
00000001405985c0 and      eax, r13d
00000001405985c3 mov      dword ptr [rbp - 0x38], eax
00000001405985c6 mov      rax, qword ptr [rbp + 0x48]
00000001405985ca mov      rcx, qword ptr [rcx + 8]
00000001405985ce lea      rbx, [rax + 0x1320]
00000001405985d5 mov      rax, qword ptr [rax + 0x18]
00000001405985d9 mov      rdx, rbx
00000001405985dc mov      rax, qword ptr [rax + 0x108]
00000001405985e3 call     qword ptr [rip + 0xebd0f]
00000001405985e9 mov      esi, dword ptr [rbp + 0x58]
00000001405985ec cmp      dword ptr [rdi], esi
00000001405985ee jae      0x14058eaac
00000001405985f4 lea      r9, [rip + 0xd9ad5]
00000001405985fb jmp      0x140595e71
0000000140598600 mov      rax, qword ptr [rsi + 0x20]
0000000140598604 mov      ebx, 0x8808
0000000140598609 mov      rcx, qword ptr [rbp + 0x48]
000000014059860d mov      edx, ebx
000000014059860f call     qword ptr [rip + 0xebce3]
0000000140598615 shr      eax, 0x10
0000000140598618 and      eax, r13d
000000014059861b mov      dword ptr [rbp - 0x38], eax
000000014059861e je       0x14058ebb1
0000000140598624 mov      rax, qword ptr [rsi + 0x20]
0000000140598628 mov      edx, ebx
000000014059862a mov      rcx, qword ptr [rbp + 0x48]
000000014059862e call     qword ptr [rip + 0xebcc4]
0000000140598634 mov      rcx, qword ptr [rbp + 0x48]
0000000140598638 shr      eax, 0x10
000000014059863b and      eax, r13d
000000014059863e mov      dword ptr [rbp - 0x38], eax
0000000140598641 mov      rax, qword ptr [rbp + 0x48]
0000000140598645 mov      rcx, qword ptr [rcx + 8]
0000000140598649 lea      rbx, [rax + 0x1320]
0000000140598650 mov      rax, qword ptr [rax + 0x18]
0000000140598654 mov      rdx, rbx
0000000140598657 mov      rax, qword ptr [rax + 0x108]
000000014059865e call     qword ptr [rip + 0xebc94]
0000000140598664 mov      esi, dword ptr [rbp + 0x58]
0000000140598667 cmp      dword ptr [rdi], esi
0000000140598669 jae      0x14058eaac
000000014059866f lea      r9, [rip + 0xd9a8a]
0000000140598676 jmp      0x140595e71
000000014059867b mov      rax, qword ptr [rsi + 0x10]
000000014059867f mov      ebx, 0x8808
0000000140598684 mov      rcx, qword ptr [rbp + 0x48]
0000000140598688 mov      edx, ebx
000000014059868a call     qword ptr [rip + 0xebc68]
0000000140598690 movzx    eax, ax
0000000140598693 shr      eax, 0xf
0000000140598696 mov      dword ptr [rbp - 0x38], eax
0000000140598699 test     eax, eax
000000014059869b je       0x14058ebb1
00000001405986a1 mov      rax, qword ptr [rsi + 0x10]
00000001405986a5 mov      edx, ebx
00000001405986a7 mov      rcx, qword ptr [rbp + 0x48]
00000001405986ab call     qword ptr [rip + 0xebc47]
00000001405986b1 mov      rcx, qword ptr [rbp + 0x48]
00000001405986b5 movzx    eax, ax
00000001405986b8 shr      eax, 0xf
00000001405986bb mov      dword ptr [rbp - 0x38], eax
00000001405986be mov      rax, qword ptr [rbp + 0x48]
00000001405986c2 mov      rcx, qword ptr [rcx + 8]
00000001405986c6 lea      rbx, [rax + 0x1320]
00000001405986cd mov      rax, qword ptr [rax + 0x18]
00000001405986d1 mov      rdx, rbx
00000001405986d4 mov      rax, qword ptr [rax + 0x108]
00000001405986db call     qword ptr [rip + 0xebc17]
00000001405986e1 mov      esi, dword ptr [rbp + 0x58]
00000001405986e4 cmp      dword ptr [rdi], esi
00000001405986e6 jae      0x14058eaac
00000001405986ec lea      r9, [rip + 0xd9a3d]
00000001405986f3 jmp      0x140595e71
00000001405986f8 mov      rax, qword ptr [rsi + 0x10]
00000001405986fc mov      ebx, 0x8808
0000000140598701 mov      rcx, qword ptr [rbp + 0x48]
0000000140598705 mov      edx, ebx
0000000140598707 call     qword ptr [rip + 0xebbeb]
000000014059870d shr      eax, 0xe
0000000140598710 and      eax, r13d
0000000140598713 mov      dword ptr [rbp - 0x38], eax
0000000140598716 je       0x14058ebb1
000000014059871c mov      rax, qword ptr [rsi + 0x10]
0000000140598720 mov      edx, ebx
0000000140598722 mov      rcx, qword ptr [rbp + 0x48]
0000000140598726 call     qword ptr [rip + 0xebbcc]
000000014059872c mov      rcx, qword ptr [rbp + 0x48]
0000000140598730 shr      eax, 0xe
0000000140598733 and      eax, r13d
0000000140598736 mov      dword ptr [rbp - 0x38], eax
0000000140598739 mov      rax, qword ptr [rbp + 0x48]
000000014059873d mov      rcx, qword ptr [rcx + 8]
0000000140598741 lea      rbx, [rax + 0x1320]
0000000140598748 mov      rax, qword ptr [rax + 0x18]
000000014059874c mov      rdx, rbx
000000014059874f mov      rax, qword ptr [rax + 0x108]
0000000140598756 call     qword ptr [rip + 0xebb9c]
000000014059875c mov      esi, dword ptr [rbp + 0x58]
000000014059875f cmp      dword ptr [rdi], esi
0000000140598761 jae      0x14058eaac
0000000140598767 lea      r9, [rip + 0xd99f2]
000000014059876e jmp      0x140595e71
0000000140598773 mov      rax, qword ptr [rsi + 0x10]
0000000140598777 mov      ebx, 0x8808
000000014059877c mov      rcx, qword ptr [rbp + 0x48]
0000000140598780 mov      edx, ebx
0000000140598782 call     qword ptr [rip + 0xebb70]
0000000140598788 shr      eax, 0xd
000000014059878b and      eax, r13d
000000014059878e mov      dword ptr [rbp - 0x38], eax
0000000140598791 je       0x14058ebb1
0000000140598797 mov      rax, qword ptr [rsi + 0x10]
000000014059879b mov      edx, ebx
000000014059879d mov      rcx, qword ptr [rbp + 0x48]
00000001405987a1 call     qword ptr [rip + 0xebb51]
00000001405987a7 mov      rcx, qword ptr [rbp + 0x48]
00000001405987ab shr      eax, 0xd
00000001405987ae and      eax, r13d
00000001405987b1 mov      dword ptr [rbp - 0x38], eax
00000001405987b4 mov      rax, qword ptr [rbp + 0x48]
00000001405987b8 mov      rcx, qword ptr [rcx + 8]
00000001405987bc lea      rbx, [rax + 0x1320]
00000001405987c3 mov      rax, qword ptr [rax + 0x18]
00000001405987c7 mov      rdx, rbx
00000001405987ca mov      rax, qword ptr [rax + 0x108]
00000001405987d1 call     qword ptr [rip + 0xebb21]
00000001405987d7 mov      esi, dword ptr [rbp + 0x58]
00000001405987da cmp      dword ptr [rdi], esi
00000001405987dc jae      0x14058eaac
00000001405987e2 lea      r9, [rip + 0xd99a7]
00000001405987e9 jmp      0x140595e71
00000001405987ee mov      rax, qword ptr [rsi + 0x10]
00000001405987f2 mov      ebx, 0x8808
00000001405987f7 mov      rcx, qword ptr [rbp + 0x48]
00000001405987fb mov      edx, ebx
00000001405987fd call     qword ptr [rip + 0xebaf5]
0000000140598803 shr      eax, 0xb
0000000140598806 and      eax, r13d
0000000140598809 mov      dword ptr [rbp - 0x38], eax
000000014059880c je       0x14058ebb1
0000000140598812 mov      rax, qword ptr [rsi + 0x10]
0000000140598816 mov      edx, ebx
0000000140598818 mov      rcx, qword ptr [rbp + 0x48]
000000014059881c call     qword ptr [rip + 0xebad6]
0000000140598822 mov      rcx, qword ptr [rbp + 0x48]
0000000140598826 shr      eax, 0xb
0000000140598829 and      eax, r13d
000000014059882c mov      dword ptr [rbp - 0x38], eax
000000014059882f mov      rax, qword ptr [rbp + 0x48]
0000000140598833 mov      rcx, qword ptr [rcx + 8]
0000000140598837 lea      rbx, [rax + 0x1320]
000000014059883e mov      rax, qword ptr [rax + 0x18]
0000000140598842 mov      rdx, rbx
0000000140598845 mov      rax, qword ptr [rax + 0x108]
000000014059884c call     qword ptr [rip + 0xebaa6]
0000000140598852 mov      esi, dword ptr [rbp + 0x58]
0000000140598855 cmp      dword ptr [rdi], esi
0000000140598857 jae      0x14058eaac
000000014059885d lea      r9, [rip + 0xd995c]
0000000140598864 jmp      0x140595e71
0000000140598869 mov      rax, qword ptr [rsi + 0x10]
000000014059886d mov      ebx, 0x8808
0000000140598872 mov      rcx, qword ptr [rbp + 0x48]
0000000140598876 mov      edx, ebx
0000000140598878 call     qword ptr [rip + 0xeba7a]
000000014059887e shr      eax, 0xa
0000000140598881 and      eax, r13d
0000000140598884 mov      dword ptr [rbp - 0x38], eax
0000000140598887 je       0x14058ebb1
000000014059888d mov      rax, qword ptr [rsi + 0x10]
0000000140598891 mov      edx, ebx
0000000140598893 mov      rcx, qword ptr [rbp + 0x48]
0000000140598897 call     qword ptr [rip + 0xeba5b]
000000014059889d mov      rcx, qword ptr [rbp + 0x48]
00000001405988a1 shr      eax, 0xa
00000001405988a4 and      eax, r13d
00000001405988a7 mov      dword ptr [rbp - 0x38], eax
00000001405988aa mov      rax, qword ptr [rbp + 0x48]
00000001405988ae mov      rcx, qword ptr [rcx + 8]
00000001405988b2 lea      rbx, [rax + 0x1320]
00000001405988b9 mov      rax, qword ptr [rax + 0x18]
00000001405988bd mov      rdx, rbx
00000001405988c0 mov      rax, qword ptr [rax + 0x108]
00000001405988c7 call     qword ptr [rip + 0xeba2b]
00000001405988cd mov      esi, dword ptr [rbp + 0x58]
00000001405988d0 cmp      dword ptr [rdi], esi
00000001405988d2 jae      0x14058eaac
00000001405988d8 lea      r9, [rip + 0xd9911]
00000001405988df jmp      0x140595e71
00000001405988e4 mov      rax, qword ptr [rsi + 0x10]
00000001405988e8 mov      ebx, 0x8808
00000001405988ed mov      rcx, qword ptr [rbp + 0x48]
00000001405988f1 mov      edx, ebx
00000001405988f3 call     qword ptr [rip + 0xeb9ff]
00000001405988f9 shr      eax, 9
00000001405988fc and      eax, r13d
00000001405988ff mov      dword ptr [rbp - 0x38], eax
0000000140598902 je       0x14058ebb1
0000000140598908 mov      rax, qword ptr [rsi + 0x10]
000000014059890c mov      edx, ebx
000000014059890e mov      rcx, qword ptr [rbp + 0x48]
0000000140598912 call     qword ptr [rip + 0xeb9e0]
0000000140598918 mov      rcx, qword ptr [rbp + 0x48]
000000014059891c shr      eax, 9
000000014059891f and      eax, r13d
0000000140598922 mov      dword ptr [rbp - 0x38], eax
0000000140598925 mov      rax, qword ptr [rbp + 0x48]
0000000140598929 mov      rcx, qword ptr [rcx + 8]
000000014059892d lea      rbx, [rax + 0x1320]
0000000140598934 mov      rax, qword ptr [rax + 0x18]
0000000140598938 mov      rdx, rbx
000000014059893b mov      rax, qword ptr [rax + 0x108]
0000000140598942 call     qword ptr [rip + 0xeb9b0]
0000000140598948 mov      esi, dword ptr [rbp + 0x58]
000000014059894b cmp      dword ptr [rdi], esi
000000014059894d jae      0x14058eaac
0000000140598953 lea      r9, [rip + 0xd98c6]
000000014059895a jmp      0x140595e71
000000014059895f mov      rax, qword ptr [rsi + 0x10]
0000000140598963 mov      ebx, 0x8808
0000000140598968 mov      rcx, qword ptr [rbp + 0x48]
000000014059896c mov      edx, ebx
000000014059896e call     qword ptr [rip + 0xeb984]
0000000140598974 shr      eax, 8
0000000140598977 and      eax, r13d
000000014059897a mov      dword ptr [rbp - 0x38], eax
000000014059897d je       0x14058ebb1
0000000140598983 mov      rax, qword ptr [rsi + 0x10]
0000000140598987 mov      edx, ebx
0000000140598989 mov      rcx, qword ptr [rbp + 0x48]
000000014059898d call     qword ptr [rip + 0xeb965]
0000000140598993 mov      rcx, qword ptr [rbp + 0x48]
0000000140598997 shr      eax, 8
000000014059899a and      eax, r13d
000000014059899d mov      dword ptr [rbp - 0x38], eax
00000001405989a0 mov      rax, qword ptr [rbp + 0x48]
00000001405989a4 mov      rcx, qword ptr [rcx + 8]
00000001405989a8 lea      rbx, [rax + 0x1320]
00000001405989af mov      rax, qword ptr [rax + 0x18]
00000001405989b3 mov      rdx, rbx
00000001405989b6 mov      rax, qword ptr [rax + 0x108]
00000001405989bd call     qword ptr [rip + 0xeb935]
00000001405989c3 mov      esi, dword ptr [rbp + 0x58]
00000001405989c6 cmp      dword ptr [rdi], esi
00000001405989c8 jae      0x14058eaac
00000001405989ce lea      r9, [rip + 0xd986b]
00000001405989d5 jmp      0x140595e71
00000001405989da mov      rax, qword ptr [rsi]
00000001405989dd mov      ebx, 0x8808
00000001405989e2 mov      rcx, qword ptr [rbp + 0x48]
00000001405989e6 mov      edx, ebx
00000001405989e8 call     qword ptr [rip + 0xeb90a]
00000001405989ee movzx    eax, al
00000001405989f1 shr      eax, 7
00000001405989f4 mov      dword ptr [rbp - 0x38], eax
00000001405989f7 test     eax, eax
00000001405989f9 je       0x14058ebb1
00000001405989ff mov      rax, qword ptr [rsi]
0000000140598a02 mov      edx, ebx
0000000140598a04 mov      rcx, qword ptr [rbp + 0x48]
0000000140598a08 call     qword ptr [rip + 0xeb8ea]
0000000140598a0e mov      rcx, qword ptr [rbp + 0x48]
0000000140598a12 movzx    eax, al
0000000140598a15 shr      eax, 7
0000000140598a18 mov      dword ptr [rbp - 0x38], eax
0000000140598a1b mov      rax, qword ptr [rbp + 0x48]
0000000140598a1f mov      rcx, qword ptr [rcx + 8]
0000000140598a23 lea      rbx, [rax + 0x1320]
0000000140598a2a mov      rax, qword ptr [rax + 0x18]
0000000140598a2e mov      rdx, rbx
0000000140598a31 mov      rax, qword ptr [rax + 0x108]
0000000140598a38 call     qword ptr [rip + 0xeb8ba]
0000000140598a3e mov      esi, dword ptr [rbp + 0x58]
0000000140598a41 cmp      dword ptr [rdi], esi
0000000140598a43 jae      0x14058eaac
0000000140598a49 lea      r9, [rip + 0xd9810]
0000000140598a50 jmp      0x140595e71
0000000140598a55 mov      rax, qword ptr [rsi]
0000000140598a58 mov      ebx, 0x8808
0000000140598a5d mov      rcx, qword ptr [rbp + 0x48]
0000000140598a61 mov      edx, ebx
0000000140598a63 call     qword ptr [rip + 0xeb88f]
0000000140598a69 shr      eax, 6
0000000140598a6c and      eax, r13d
0000000140598a6f mov      dword ptr [rbp - 0x38], eax
0000000140598a72 je       0x14058ebb1
0000000140598a78 mov      rax, qword ptr [rsi]
0000000140598a7b mov      edx, ebx
0000000140598a7d mov      rcx, qword ptr [rbp + 0x48]
0000000140598a81 call     qword ptr [rip + 0xeb871]
0000000140598a87 mov      rcx, qword ptr [rbp + 0x48]
0000000140598a8b shr      eax, 6
0000000140598a8e and      eax, r13d
0000000140598a91 mov      dword ptr [rbp - 0x38], eax
0000000140598a94 mov      rax, qword ptr [rbp + 0x48]
0000000140598a98 mov      rcx, qword ptr [rcx + 8]
0000000140598a9c lea      rbx, [rax + 0x1320]
0000000140598aa3 mov      rax, qword ptr [rax + 0x18]
0000000140598aa7 mov      rdx, rbx
0000000140598aaa mov      rax, qword ptr [rax + 0x108]
0000000140598ab1 call     qword ptr [rip + 0xeb841]
0000000140598ab7 mov      esi, dword ptr [rbp + 0x58]
0000000140598aba cmp      dword ptr [rdi], esi
0000000140598abc jae      0x14058eaac
0000000140598ac2 lea      r9, [rip + 0xd97b7]
0000000140598ac9 jmp      0x140595e71
0000000140598ace mov      rax, qword ptr [rsi]
0000000140598ad1 mov      ebx, 0x8808
0000000140598ad6 mov      rcx, qword ptr [rbp + 0x48]
0000000140598ada mov      edx, ebx
0000000140598adc call     qword ptr [rip + 0xeb816]
0000000140598ae2 shr      eax, 5
0000000140598ae5 and      eax, r13d
0000000140598ae8 mov      dword ptr [rbp - 0x38], eax
0000000140598aeb je       0x14058ebb1
0000000140598af1 mov      rax, qword ptr [rsi]
0000000140598af4 mov      edx, ebx
0000000140598af6 mov      rcx, qword ptr [rbp + 0x48]
0000000140598afa call     qword ptr [rip + 0xeb7f8]
0000000140598b00 mov      rcx, qword ptr [rbp + 0x48]
0000000140598b04 shr      eax, 5
0000000140598b07 and      eax, r13d
0000000140598b0a mov      dword ptr [rbp - 0x38], eax
0000000140598b0d mov      rax, qword ptr [rbp + 0x48]
0000000140598b11 mov      rcx, qword ptr [rcx + 8]
0000000140598b15 lea      rbx, [rax + 0x1320]
0000000140598b1c mov      rax, qword ptr [rax + 0x18]
0000000140598b20 mov      rdx, rbx
0000000140598b23 mov      rax, qword ptr [rax + 0x108]
0000000140598b2a call     qword ptr [rip + 0xeb7c8]
0000000140598b30 mov      esi, dword ptr [rbp + 0x58]
0000000140598b33 cmp      dword ptr [rdi], esi
0000000140598b35 jae      0x14058eaac
0000000140598b3b lea      r9, [rip + 0xd975e]
0000000140598b42 jmp      0x140595e71
0000000140598b47 mov      rax, qword ptr [rsi]
0000000140598b4a mov      ebx, 0x8808
0000000140598b4f mov      rcx, qword ptr [rbp + 0x48]
0000000140598b53 mov      edx, ebx
0000000140598b55 call     qword ptr [rip + 0xeb79d]
0000000140598b5b shr      eax, 4
0000000140598b5e and      eax, r13d
0000000140598b61 mov      dword ptr [rbp - 0x38], eax
0000000140598b64 je       0x14058ebb1
0000000140598b6a mov      rax, qword ptr [rsi]
0000000140598b6d mov      edx, ebx
0000000140598b6f mov      rcx, qword ptr [rbp + 0x48]
0000000140598b73 call     qword ptr [rip + 0xeb77f]
0000000140598b79 mov      rcx, qword ptr [rbp + 0x48]
0000000140598b7d shr      eax, 4
0000000140598b80 and      eax, r13d
0000000140598b83 mov      dword ptr [rbp - 0x38], eax
0000000140598b86 mov      rax, qword ptr [rbp + 0x48]
0000000140598b8a mov      rcx, qword ptr [rcx + 8]
0000000140598b8e lea      rbx, [rax + 0x1320]
0000000140598b95 mov      rax, qword ptr [rax + 0x18]
0000000140598b99 mov      rdx, rbx
0000000140598b9c mov      rax, qword ptr [rax + 0x108]
0000000140598ba3 call     qword ptr [rip + 0xeb74f]
0000000140598ba9 mov      esi, dword ptr [rbp + 0x58]
0000000140598bac cmp      dword ptr [rdi], esi
0000000140598bae jae      0x14058eaac
0000000140598bb4 lea      r9, [rip + 0xd9705]
0000000140598bbb jmp      0x140595e71
0000000140598bc0 mov      rax, qword ptr [rsi]
0000000140598bc3 mov      ebx, 0x8808
0000000140598bc8 mov      rcx, qword ptr [rbp + 0x48]
0000000140598bcc mov      edx, ebx
0000000140598bce call     qword ptr [rip + 0xeb724]
0000000140598bd4 shr      eax, 3
0000000140598bd7 and      eax, r13d
0000000140598bda mov      dword ptr [rbp - 0x38], eax
0000000140598bdd je       0x14058ebb1
0000000140598be3 mov      rax, qword ptr [rsi]
0000000140598be6 mov      edx, ebx
0000000140598be8 mov      rcx, qword ptr [rbp + 0x48]
0000000140598bec call     qword ptr [rip + 0xeb706]
0000000140598bf2 mov      rcx, qword ptr [rbp + 0x48]
0000000140598bf6 shr      eax, 3
0000000140598bf9 and      eax, r13d
0000000140598bfc mov      dword ptr [rbp - 0x38], eax
0000000140598bff mov      rax, qword ptr [rbp + 0x48]
0000000140598c03 mov      rcx, qword ptr [rcx + 8]
0000000140598c07 lea      rbx, [rax + 0x1320]
0000000140598c0e mov      rax, qword ptr [rax + 0x18]
0000000140598c12 mov      rdx, rbx
0000000140598c15 mov      rax, qword ptr [rax + 0x108]
0000000140598c1c call     qword ptr [rip + 0xeb6d6]
0000000140598c22 mov      esi, dword ptr [rbp + 0x58]
0000000140598c25 cmp      dword ptr [rdi], esi
0000000140598c27 jae      0x14058eaac
0000000140598c2d lea      r9, [rip + 0xd96ac]
0000000140598c34 jmp      0x140595e71
0000000140598c39 mov      rax, qword ptr [rsi]
0000000140598c3c mov      ebx, 0x8808
0000000140598c41 mov      rcx, qword ptr [rbp + 0x48]
0000000140598c45 mov      edx, ebx
0000000140598c47 call     qword ptr [rip + 0xeb6ab]
0000000140598c4d shr      eax, 2
0000000140598c50 and      eax, r13d
0000000140598c53 mov      dword ptr [rbp - 0x38], eax
0000000140598c56 je       0x14058ebb1
0000000140598c5c mov      rax, qword ptr [rsi]
0000000140598c5f mov      edx, ebx
0000000140598c61 mov      rcx, qword ptr [rbp + 0x48]
0000000140598c65 call     qword ptr [rip + 0xeb68d]
0000000140598c6b mov      rcx, qword ptr [rbp + 0x48]
0000000140598c6f shr      eax, 2
0000000140598c72 and      eax, r13d
0000000140598c75 mov      dword ptr [rbp - 0x38], eax
0000000140598c78 mov      rax, qword ptr [rbp + 0x48]
0000000140598c7c mov      rcx, qword ptr [rcx + 8]
0000000140598c80 lea      rbx, [rax + 0x1320]
0000000140598c87 mov      rax, qword ptr [rax + 0x18]
0000000140598c8b mov      rdx, rbx
0000000140598c8e mov      rax, qword ptr [rax + 0x108]
0000000140598c95 call     qword ptr [rip + 0xeb65d]
0000000140598c9b mov      esi, dword ptr [rbp + 0x58]
0000000140598c9e cmp      dword ptr [rdi], esi
0000000140598ca0 jae      0x14058eaac
0000000140598ca6 lea      r9, [rip + 0xd9653]
0000000140598cad jmp      0x140595e71
0000000140598cb2 mov      rax, qword ptr [rsi]
0000000140598cb5 mov      ebx, 0x8808
0000000140598cba mov      rcx, qword ptr [rbp + 0x48]
0000000140598cbe mov      edx, ebx
0000000140598cc0 call     qword ptr [rip + 0xeb632]
0000000140598cc6 shr      eax, 1
0000000140598cc8 and      eax, r13d
0000000140598ccb mov      dword ptr [rbp - 0x38], eax
0000000140598cce je       0x14058ebb1
0000000140598cd4 mov      rax, qword ptr [rsi]
0000000140598cd7 mov      edx, ebx
0000000140598cd9 mov      rcx, qword ptr [rbp + 0x48]
0000000140598cdd call     qword ptr [rip + 0xeb615]
0000000140598ce3 mov      rcx, qword ptr [rbp + 0x48]
0000000140598ce7 shr      eax, 1
0000000140598ce9 and      eax, r13d
0000000140598cec mov      dword ptr [rbp - 0x38], eax
0000000140598cef mov      rax, qword ptr [rbp + 0x48]
0000000140598cf3 mov      rcx, qword ptr [rcx + 8]
0000000140598cf7 lea      rbx, [rax + 0x1320]
0000000140598cfe mov      rax, qword ptr [rax + 0x18]
0000000140598d02 mov      rdx, rbx
0000000140598d05 mov      rax, qword ptr [rax + 0x108]
0000000140598d0c call     qword ptr [rip + 0xeb5e6]
0000000140598d12 mov      esi, dword ptr [rbp + 0x58]
0000000140598d15 cmp      dword ptr [rdi], esi
0000000140598d17 jae      0x14058eaac
0000000140598d1d lea      r9, [rip + 0xd95fc]
0000000140598d24 jmp      0x140595e71
0000000140598d29 mov      rax, qword ptr [rsi]
0000000140598d2c mov      ebx, 0x8808
0000000140598d31 mov      rcx, qword ptr [rbp + 0x48]
0000000140598d35 mov      edx, ebx
0000000140598d37 call     qword ptr [rip + 0xeb5bb]
0000000140598d3d and      eax, r13d
0000000140598d40 mov      dword ptr [rbp - 0x38], eax
0000000140598d43 je       0x14058ebb1
0000000140598d49 mov      rax, qword ptr [rsi]
0000000140598d4c mov      edx, ebx
0000000140598d4e mov      rcx, qword ptr [rbp + 0x48]
0000000140598d52 call     qword ptr [rip + 0xeb5a0]
0000000140598d58 mov      rcx, qword ptr [rbp + 0x48]
0000000140598d5c and      eax, r13d
0000000140598d5f mov      dword ptr [rbp - 0x38], eax
0000000140598d62 mov      rax, qword ptr [rbp + 0x48]
0000000140598d66 mov      rcx, qword ptr [rcx + 8]
0000000140598d6a lea      rbx, [rax + 0x1320]
0000000140598d71 mov      rax, qword ptr [rax + 0x18]
0000000140598d75 mov      rdx, rbx
0000000140598d78 mov      rax, qword ptr [rax + 0x108]
0000000140598d7f call     qword ptr [rip + 0xeb573]
0000000140598d85 mov      esi, dword ptr [rbp + 0x58]
0000000140598d88 cmp      dword ptr [rdi], esi
0000000140598d8a jae      0x14058eaac
0000000140598d90 lea      r9, [rip + 0xd95a9]
0000000140598d97 jmp      0x140595e71
0000000140598d9c mov      rax, qword ptr [rsi + 0x20]
0000000140598da0 mov      ebx, 0x880c
0000000140598da5 mov      rcx, qword ptr [rbp + 0x48]
0000000140598da9 mov      edx, ebx
0000000140598dab call     qword ptr [rip + 0xeb547]
0000000140598db1 shr      eax, 0x1e
0000000140598db4 and      eax, r13d
0000000140598db7 mov      dword ptr [rbp - 0x38], eax
0000000140598dba je       0x14058ebb1
0000000140598dc0 mov      rax, qword ptr [rsi + 0x20]
0000000140598dc4 mov      edx, ebx
0000000140598dc6 mov      rcx, qword ptr [rbp + 0x48]
0000000140598dca call     qword ptr [rip + 0xeb528]
0000000140598dd0 mov      rcx, qword ptr [rbp + 0x48]
0000000140598dd4 shr      eax, 0x1e
0000000140598dd7 and      eax, r13d
0000000140598dda mov      dword ptr [rbp - 0x38], eax
0000000140598ddd mov      rax, qword ptr [rbp + 0x48]
0000000140598de1 mov      rcx, qword ptr [rcx + 8]
0000000140598de5 lea      rbx, [rax + 0x1320]
0000000140598dec mov      rax, qword ptr [rax + 0x18]
0000000140598df0 mov      rdx, rbx
0000000140598df3 mov      rax, qword ptr [rax + 0x108]
0000000140598dfa call     qword ptr [rip + 0xeb4f8]
0000000140598e00 mov      esi, dword ptr [rbp + 0x58]
0000000140598e03 cmp      dword ptr [rdi], esi
0000000140598e05 jae      0x14058eaac
0000000140598e0b lea      r9, [rip + 0xd954e]
0000000140598e12 jmp      0x140595e71
0000000140598e17 mov      rax, qword ptr [rsi + 0x20]
0000000140598e1b mov      ebx, 0x880c
0000000140598e20 mov      rcx, qword ptr [rbp + 0x48]
0000000140598e24 mov      edx, ebx
0000000140598e26 call     qword ptr [rip + 0xeb4cc]
0000000140598e2c shr      eax, 0x1d
0000000140598e2f and      eax, r13d
0000000140598e32 mov      dword ptr [rbp - 0x38], eax
0000000140598e35 je       0x14058ebb1
0000000140598e3b mov      rax, qword ptr [rsi + 0x20]
0000000140598e3f mov      edx, ebx
0000000140598e41 mov      rcx, qword ptr [rbp + 0x48]
0000000140598e45 call     qword ptr [rip + 0xeb4ad]
0000000140598e4b mov      rcx, qword ptr [rbp + 0x48]
0000000140598e4f shr      eax, 0x1d
0000000140598e52 and      eax, r13d
0000000140598e55 mov      dword ptr [rbp - 0x38], eax
0000000140598e58 mov      rax, qword ptr [rbp + 0x48]
0000000140598e5c mov      rcx, qword ptr [rcx + 8]
0000000140598e60 lea      rbx, [rax + 0x1320]
0000000140598e67 mov      rax, qword ptr [rax + 0x18]
0000000140598e6b mov      rdx, rbx
0000000140598e6e mov      rax, qword ptr [rax + 0x108]
0000000140598e75 call     qword ptr [rip + 0xeb47d]
0000000140598e7b mov      esi, dword ptr [rbp + 0x58]
0000000140598e7e cmp      dword ptr [rdi], esi
0000000140598e80 jae      0x14058eaac
0000000140598e86 lea      r9, [rip + 0xd9503]
0000000140598e8d jmp      0x140595e71
0000000140598e92 mov      rax, qword ptr [rsi + 0x20]
0000000140598e96 mov      ebx, 0x880c
0000000140598e9b mov      rcx, qword ptr [rbp + 0x48]
0000000140598e9f mov      edx, ebx
0000000140598ea1 call     qword ptr [rip + 0xeb451]
0000000140598ea7 shr      eax, 0x1c
0000000140598eaa and      eax, r13d
0000000140598ead mov      dword ptr [rbp - 0x38], eax
0000000140598eb0 je       0x14058ebb1
0000000140598eb6 mov      rax, qword ptr [rsi + 0x20]
0000000140598eba mov      edx, ebx
0000000140598ebc mov      rcx, qword ptr [rbp + 0x48]
0000000140598ec0 call     qword ptr [rip + 0xeb432]
0000000140598ec6 mov      rcx, qword ptr [rbp + 0x48]
0000000140598eca shr      eax, 0x1c
0000000140598ecd and      eax, r13d
0000000140598ed0 mov      dword ptr [rbp - 0x38], eax
0000000140598ed3 mov      rax, qword ptr [rbp + 0x48]
0000000140598ed7 mov      rcx, qword ptr [rcx + 8]
0000000140598edb lea      rbx, [rax + 0x1320]
0000000140598ee2 mov      rax, qword ptr [rax + 0x18]
0000000140598ee6 mov      rdx, rbx
0000000140598ee9 mov      rax, qword ptr [rax + 0x108]
0000000140598ef0 call     qword ptr [rip + 0xeb402]
0000000140598ef6 mov      esi, dword ptr [rbp + 0x58]
0000000140598ef9 cmp      dword ptr [rdi], esi
0000000140598efb jae      0x14058eaac
0000000140598f01 lea      r9, [rip + 0xd94b8]
0000000140598f08 jmp      0x140595e71
0000000140598f0d mov      rax, qword ptr [rsi + 0x20]
0000000140598f11 mov      ebx, 0x880c
0000000140598f16 mov      rcx, qword ptr [rbp + 0x48]
0000000140598f1a mov      edx, ebx
0000000140598f1c call     qword ptr [rip + 0xeb3d6]
0000000140598f22 shr      eax, 0x1b
0000000140598f25 and      eax, r13d
0000000140598f28 mov      dword ptr [rbp - 0x38], eax
0000000140598f2b je       0x14058ebb1
0000000140598f31 mov      rax, qword ptr [rsi + 0x20]
0000000140598f35 mov      edx, ebx
0000000140598f37 mov      rcx, qword ptr [rbp + 0x48]
0000000140598f3b call     qword ptr [rip + 0xeb3b7]
0000000140598f41 mov      rcx, qword ptr [rbp + 0x48]
0000000140598f45 shr      eax, 0x1b
0000000140598f48 and      eax, r13d
0000000140598f4b mov      dword ptr [rbp - 0x38], eax
0000000140598f4e mov      rax, qword ptr [rbp + 0x48]
0000000140598f52 mov      rcx, qword ptr [rcx + 8]
0000000140598f56 lea      rbx, [rax + 0x1320]
0000000140598f5d mov      rax, qword ptr [rax + 0x18]
0000000140598f61 mov      rdx, rbx
0000000140598f64 mov      rax, qword ptr [rax + 0x108]
0000000140598f6b call     qword ptr [rip + 0xeb387]
0000000140598f71 mov      esi, dword ptr [rbp + 0x58]
0000000140598f74 cmp      dword ptr [rdi], esi
0000000140598f76 jae      0x14058eaac
0000000140598f7c lea      r9, [rip + 0xd946d]
0000000140598f83 jmp      0x140595e71
0000000140598f88 mov      rax, qword ptr [rsi + 0x20]
0000000140598f8c mov      ebx, 0x880c
0000000140598f91 mov      rcx, qword ptr [rbp + 0x48]
0000000140598f95 mov      edx, ebx
0000000140598f97 call     qword ptr [rip + 0xeb35b]
0000000140598f9d shr      eax, 0x1a
0000000140598fa0 and      eax, r13d
0000000140598fa3 mov      dword ptr [rbp - 0x38], eax
0000000140598fa6 je       0x14058ebb1
0000000140598fac mov      rax, qword ptr [rsi + 0x20]
0000000140598fb0 mov      edx, ebx
0000000140598fb2 mov      rcx, qword ptr [rbp + 0x48]
0000000140598fb6 call     qword ptr [rip + 0xeb33c]
0000000140598fbc mov      rcx, qword ptr [rbp + 0x48]
0000000140598fc0 shr      eax, 0x1a
0000000140598fc3 and      eax, r13d
0000000140598fc6 mov      dword ptr [rbp - 0x38], eax
0000000140598fc9 mov      rax, qword ptr [rbp + 0x48]
0000000140598fcd mov      rcx, qword ptr [rcx + 8]
0000000140598fd1 lea      rbx, [rax + 0x1320]
0000000140598fd8 mov      rax, qword ptr [rax + 0x18]
0000000140598fdc mov      rdx, rbx
0000000140598fdf mov      rax, qword ptr [rax + 0x108]
0000000140598fe6 call     qword ptr [rip + 0xeb30c]
0000000140598fec mov      esi, dword ptr [rbp + 0x58]
0000000140598fef cmp      dword ptr [rdi], esi
0000000140598ff1 jae      0x14058eaac
0000000140598ff7 lea      r9, [rip + 0xd9422]
0000000140598ffe jmp      0x140595e71
0000000140599003 mov      rax, qword ptr [rsi + 0x20]
0000000140599007 mov      ebx, 0x880c
000000014059900c mov      rcx, qword ptr [rbp + 0x48]
0000000140599010 mov      edx, ebx
0000000140599012 call     qword ptr [rip + 0xeb2e0]
0000000140599018 shr      eax, 0x18
000000014059901b and      eax, r13d
000000014059901e mov      dword ptr [rbp - 0x38], eax
0000000140599021 je       0x14058ebb1
0000000140599027 mov      rax, qword ptr [rsi + 0x20]
000000014059902b mov      edx, ebx
000000014059902d mov      rcx, qword ptr [rbp + 0x48]
0000000140599031 call     qword ptr [rip + 0xeb2c1]
0000000140599037 mov      rcx, qword ptr [rbp + 0x48]
000000014059903b shr      eax, 0x18
000000014059903e and      eax, r13d
0000000140599041 mov      dword ptr [rbp - 0x38], eax
0000000140599044 mov      rax, qword ptr [rbp + 0x48]
0000000140599048 mov      rcx, qword ptr [rcx + 8]
000000014059904c lea      rbx, [rax + 0x1320]
0000000140599053 mov      rax, qword ptr [rax + 0x18]
0000000140599057 mov      rdx, rbx
000000014059905a mov      rax, qword ptr [rax + 0x108]
0000000140599061 call     qword ptr [rip + 0xeb291]
0000000140599067 mov      esi, dword ptr [rbp + 0x58]
000000014059906a cmp      dword ptr [rdi], esi
000000014059906c jae      0x14058eaac
0000000140599072 lea      r9, [rip + 0xd93d7]
0000000140599079 jmp      0x140595e71
000000014059907e mov      rax, qword ptr [rsi + 0x20]
0000000140599082 mov      ebx, 0x880c
0000000140599087 mov      rcx, qword ptr [rbp + 0x48]
000000014059908b mov      edx, ebx
000000014059908d call     qword ptr [rip + 0xeb265]
0000000140599093 shr      eax, 0x17
0000000140599096 and      eax, r13d
0000000140599099 mov      dword ptr [rbp - 0x38], eax
000000014059909c je       0x14058ebb1
00000001405990a2 mov      rax, qword ptr [rsi + 0x20]
00000001405990a6 mov      edx, ebx
00000001405990a8 mov      rcx, qword ptr [rbp + 0x48]
00000001405990ac call     qword ptr [rip + 0xeb246]
00000001405990b2 mov      rcx, qword ptr [rbp + 0x48]
00000001405990b6 shr      eax, 0x17
00000001405990b9 and      eax, r13d
00000001405990bc mov      dword ptr [rbp - 0x38], eax
00000001405990bf mov      rax, qword ptr [rbp + 0x48]
00000001405990c3 mov      rcx, qword ptr [rcx + 8]
00000001405990c7 lea      rbx, [rax + 0x1320]
00000001405990ce mov      rax, qword ptr [rax + 0x18]
00000001405990d2 mov      rdx, rbx
00000001405990d5 mov      rax, qword ptr [rax + 0x108]
00000001405990dc call     qword ptr [rip + 0xeb216]
00000001405990e2 mov      esi, dword ptr [rbp + 0x58]
00000001405990e5 cmp      dword ptr [rdi], esi
00000001405990e7 jae      0x14058eaac
00000001405990ed lea      r9, [rip + 0xd938c]
00000001405990f4 jmp      0x140595e71
00000001405990f9 mov      rax, qword ptr [rsi + 0x20]
00000001405990fd mov      ebx, 0x880c
0000000140599102 mov      rcx, qword ptr [rbp + 0x48]
0000000140599106 mov      edx, ebx
0000000140599108 call     qword ptr [rip + 0xeb1ea]
000000014059910e shr      eax, 0x16
0000000140599111 and      eax, r13d
0000000140599114 mov      dword ptr [rbp - 0x38], eax
0000000140599117 je       0x14058ebb1
000000014059911d mov      rax, qword ptr [rsi + 0x20]
0000000140599121 mov      edx, ebx
0000000140599123 mov      rcx, qword ptr [rbp + 0x48]
0000000140599127 call     qword ptr [rip + 0xeb1cb]
000000014059912d mov      rcx, qword ptr [rbp + 0x48]
0000000140599131 shr      eax, 0x16
0000000140599134 and      eax, r13d
0000000140599137 mov      dword ptr [rbp - 0x38], eax
000000014059913a mov      rax, qword ptr [rbp + 0x48]
000000014059913e mov      rcx, qword ptr [rcx + 8]
0000000140599142 lea      rbx, [rax + 0x1320]
0000000140599149 mov      rax, qword ptr [rax + 0x18]
000000014059914d mov      rdx, rbx
0000000140599150 mov      rax, qword ptr [rax + 0x108]
0000000140599157 call     qword ptr [rip + 0xeb19b]
000000014059915d mov      esi, dword ptr [rbp + 0x58]
0000000140599160 cmp      dword ptr [rdi], esi
0000000140599162 jae      0x14058eaac
0000000140599168 lea      r9, [rip + 0xd9341]
000000014059916f jmp      0x140595e71
0000000140599174 mov      rax, qword ptr [rsi + 0x20]
0000000140599178 mov      ebx, 0x880c
000000014059917d mov      rcx, qword ptr [rbp + 0x48]
0000000140599181 mov      edx, ebx
0000000140599183 call     qword ptr [rip + 0xeb16f]
0000000140599189 shr      eax, 0x15
000000014059918c and      eax, r13d
000000014059918f mov      dword ptr [rbp - 0x38], eax
0000000140599192 je       0x14058ebb1
0000000140599198 mov      rax, qword ptr [rsi + 0x20]
000000014059919c mov      edx, ebx
000000014059919e mov      rcx, qword ptr [rbp + 0x48]
00000001405991a2 call     qword ptr [rip + 0xeb150]
00000001405991a8 mov      rcx, qword ptr [rbp + 0x48]
00000001405991ac shr      eax, 0x15
00000001405991af and      eax, r13d
00000001405991b2 mov      dword ptr [rbp - 0x38], eax
00000001405991b5 mov      rax, qword ptr [rbp + 0x48]
00000001405991b9 mov      rcx, qword ptr [rcx + 8]
00000001405991bd lea      rbx, [rax + 0x1320]
00000001405991c4 mov      rax, qword ptr [rax + 0x18]
00000001405991c8 mov      rdx, rbx
00000001405991cb mov      rax, qword ptr [rax + 0x108]
00000001405991d2 call     qword ptr [rip + 0xeb120]
00000001405991d8 mov      esi, dword ptr [rbp + 0x58]
00000001405991db cmp      dword ptr [rdi], esi
00000001405991dd jae      0x14058eaac
00000001405991e3 lea      r9, [rip + 0xd92f6]
00000001405991ea jmp      0x140595e71
00000001405991ef mov      rax, qword ptr [rsi + 0x20]
00000001405991f3 mov      ebx, 0x880c
00000001405991f8 mov      rcx, qword ptr [rbp + 0x48]
00000001405991fc mov      edx, ebx
00000001405991fe call     qword ptr [rip + 0xeb0f4]
0000000140599204 shr      eax, 0x14
0000000140599207 and      eax, r13d
000000014059920a mov      dword ptr [rbp - 0x38], eax
000000014059920d je       0x14058ebb1
0000000140599213 mov      rax, qword ptr [rsi + 0x20]
0000000140599217 mov      edx, ebx
0000000140599219 mov      rcx, qword ptr [rbp + 0x48]
000000014059921d call     qword ptr [rip + 0xeb0d5]
0000000140599223 mov      rcx, qword ptr [rbp + 0x48]
0000000140599227 shr      eax, 0x14
000000014059922a and      eax, r13d
000000014059922d mov      dword ptr [rbp - 0x38], eax
0000000140599230 mov      rax, qword ptr [rbp + 0x48]
0000000140599234 mov      rcx, qword ptr [rcx + 8]
0000000140599238 lea      rbx, [rax + 0x1320]
000000014059923f mov      rax, qword ptr [rax + 0x18]
0000000140599243 mov      rdx, rbx
0000000140599246 mov      rax, qword ptr [rax + 0x108]
000000014059924d call     qword ptr [rip + 0xeb0a5]
0000000140599253 mov      esi, dword ptr [rbp + 0x58]
0000000140599256 cmp      dword ptr [rdi], esi
0000000140599258 jae      0x14058eaac
000000014059925e lea      r9, [rip + 0xd92ab]
0000000140599265 jmp      0x140595e71
000000014059926a mov      rax, qword ptr [rsi + 0x20]
000000014059926e mov      ebx, 0x880c
0000000140599273 mov      rcx, qword ptr [rbp + 0x48]
0000000140599277 mov      edx, ebx
0000000140599279 call     qword ptr [rip + 0xeb079]
000000014059927f shr      eax, 0x13
0000000140599282 and      eax, r13d
0000000140599285 mov      dword ptr [rbp - 0x38], eax
0000000140599288 je       0x14058ebb1
000000014059928e mov      rax, qword ptr [rsi + 0x20]
0000000140599292 mov      edx, ebx
0000000140599294 mov      rcx, qword ptr [rbp + 0x48]
0000000140599298 call     qword ptr [rip + 0xeb05a]
000000014059929e mov      rcx, qword ptr [rbp + 0x48]
00000001405992a2 shr      eax, 0x13
00000001405992a5 and      eax, r13d
00000001405992a8 mov      dword ptr [rbp - 0x38], eax
00000001405992ab mov      rax, qword ptr [rbp + 0x48]
00000001405992af mov      rcx, qword ptr [rcx + 8]
00000001405992b3 lea      rbx, [rax + 0x1320]
00000001405992ba mov      rax, qword ptr [rax + 0x18]
00000001405992be mov      rdx, rbx
00000001405992c1 mov      rax, qword ptr [rax + 0x108]
00000001405992c8 call     qword ptr [rip + 0xeb02a]
00000001405992ce mov      esi, dword ptr [rbp + 0x58]
00000001405992d1 cmp      dword ptr [rdi], esi
00000001405992d3 jae      0x14058eaac
00000001405992d9 lea      r9, [rip + 0xd9260]
00000001405992e0 jmp      0x140595e71
00000001405992e5 mov      rax, qword ptr [rsi + 0x20]
00000001405992e9 mov      ebx, 0x880c
00000001405992ee mov      rcx, qword ptr [rbp + 0x48]
00000001405992f2 mov      edx, ebx
00000001405992f4 call     qword ptr [rip + 0xeaffe]
00000001405992fa shr      eax, 0x12
00000001405992fd and      eax, r13d
0000000140599300 mov      dword ptr [rbp - 0x38], eax
0000000140599303 je       0x14058ebb1
0000000140599309 mov      rax, qword ptr [rsi + 0x20]
000000014059930d mov      edx, ebx
000000014059930f mov      rcx, qword ptr [rbp + 0x48]
0000000140599313 call     qword ptr [rip + 0xeafdf]
0000000140599319 mov      rcx, qword ptr [rbp + 0x48]
000000014059931d shr      eax, 0x12
0000000140599320 and      eax, r13d
0000000140599323 mov      dword ptr [rbp - 0x38], eax
0000000140599326 mov      rax, qword ptr [rbp + 0x48]
000000014059932a mov      rcx, qword ptr [rcx + 8]
000000014059932e lea      rbx, [rax + 0x1320]
0000000140599335 mov      rax, qword ptr [rax + 0x18]
0000000140599339 mov      rdx, rbx
000000014059933c mov      rax, qword ptr [rax + 0x108]
0000000140599343 call     qword ptr [rip + 0xeafaf]
0000000140599349 mov      esi, dword ptr [rbp + 0x58]
000000014059934c cmp      dword ptr [rdi], esi
000000014059934e jae      0x14058eaac
0000000140599354 lea      r9, [rip + 0xd9215]
000000014059935b jmp      0x140595e71
0000000140599360 mov      rax, qword ptr [rsi + 0x20]
0000000140599364 mov      ebx, 0x880c
0000000140599369 mov      rcx, qword ptr [rbp + 0x48]
000000014059936d mov      edx, ebx
000000014059936f call     qword ptr [rip + 0xeaf83]
0000000140599375 shr      eax, 0x11
0000000140599378 and      eax, r13d
000000014059937b mov      dword ptr [rbp - 0x38], eax
000000014059937e je       0x14058ebb1
0000000140599384 mov      rax, qword ptr [rsi + 0x20]
0000000140599388 mov      edx, ebx
000000014059938a mov      rcx, qword ptr [rbp + 0x48]
000000014059938e call     qword ptr [rip + 0xeaf64]
0000000140599394 mov      rcx, qword ptr [rbp + 0x48]
0000000140599398 shr      eax, 0x11
000000014059939b and      eax, r13d
000000014059939e mov      dword ptr [rbp - 0x38], eax
00000001405993a1 mov      rax, qword ptr [rbp + 0x48]
00000001405993a5 mov      rcx, qword ptr [rcx + 8]
00000001405993a9 lea      rbx, [rax + 0x1320]
00000001405993b0 mov      rax, qword ptr [rax + 0x18]
00000001405993b4 mov      rdx, rbx
00000001405993b7 mov      rax, qword ptr [rax + 0x108]
00000001405993be call     qword ptr [rip + 0xeaf34]
00000001405993c4 mov      esi, dword ptr [rbp + 0x58]
00000001405993c7 cmp      dword ptr [rdi], esi
00000001405993c9 jae      0x14058eaac
00000001405993cf lea      r9, [rip + 0xd91ca]
00000001405993d6 jmp      0x140595e71
00000001405993db mov      rax, qword ptr [rsi + 0x20]
00000001405993df mov      ebx, 0x880c
00000001405993e4 mov      rcx, qword ptr [rbp + 0x48]
00000001405993e8 mov      edx, ebx
00000001405993ea call     qword ptr [rip + 0xeaf08]
00000001405993f0 shr      eax, 0x10
00000001405993f3 and      eax, r13d
00000001405993f6 mov      dword ptr [rbp - 0x38], eax
00000001405993f9 je       0x14058ebb1
00000001405993ff mov      rax, qword ptr [rsi + 0x20]
0000000140599403 mov      edx, ebx
0000000140599405 mov      rcx, qword ptr [rbp + 0x48]
0000000140599409 call     qword ptr [rip + 0xeaee9]
000000014059940f mov      rcx, qword ptr [rbp + 0x48]
0000000140599413 shr      eax, 0x10
0000000140599416 and      eax, r13d
0000000140599419 mov      dword ptr [rbp - 0x38], eax
000000014059941c mov      rax, qword ptr [rbp + 0x48]
0000000140599420 mov      rcx, qword ptr [rcx + 8]
0000000140599424 lea      rbx, [rax + 0x1320]
000000014059942b mov      rax, qword ptr [rax + 0x18]
000000014059942f mov      rdx, rbx
0000000140599432 mov      rax, qword ptr [rax + 0x108]
0000000140599439 call     qword ptr [rip + 0xeaeb9]
000000014059943f mov      esi, dword ptr [rbp + 0x58]
0000000140599442 cmp      dword ptr [rdi], esi
0000000140599444 jae      0x14058eaac
000000014059944a lea      r9, [rip + 0xd917f]
0000000140599451 jmp      0x140595e71
0000000140599456 mov      rax, qword ptr [rsi + 0x10]
000000014059945a mov      ebx, 0x880c
000000014059945f mov      rcx, qword ptr [rbp + 0x48]
0000000140599463 mov      edx, ebx
0000000140599465 call     qword ptr [rip + 0xeae8d]
000000014059946b movzx    eax, ax
000000014059946e shr      eax, 0xf
0000000140599471 mov      dword ptr [rbp - 0x38], eax
0000000140599474 test     eax, eax
0000000140599476 je       0x14058ebb1
000000014059947c mov      rax, qword ptr [rsi + 0x10]
0000000140599480 mov      edx, ebx
0000000140599482 mov      rcx, qword ptr [rbp + 0x48]
0000000140599486 call     qword ptr [rip + 0xeae6c]
000000014059948c mov      rcx, qword ptr [rbp + 0x48]
0000000140599490 movzx    eax, ax
0000000140599493 shr      eax, 0xf
0000000140599496 mov      dword ptr [rbp - 0x38], eax
0000000140599499 mov      rax, qword ptr [rbp + 0x48]
000000014059949d mov      rcx, qword ptr [rcx + 8]
00000001405994a1 lea      rbx, [rax + 0x1320]
00000001405994a8 mov      rax, qword ptr [rax + 0x18]
00000001405994ac mov      rdx, rbx
00000001405994af mov      rax, qword ptr [rax + 0x108]
00000001405994b6 call     qword ptr [rip + 0xeae3c]
00000001405994bc mov      esi, dword ptr [rbp + 0x58]
00000001405994bf cmp      dword ptr [rdi], esi
00000001405994c1 jae      0x14058eaac
00000001405994c7 lea      r9, [rip + 0xd9132]
00000001405994ce jmp      0x140595e71
00000001405994d3 mov      rax, qword ptr [rsi + 0x10]
00000001405994d7 mov      ebx, 0x880c
00000001405994dc mov      rcx, qword ptr [rbp + 0x48]
00000001405994e0 mov      edx, ebx
00000001405994e2 call     qword ptr [rip + 0xeae10]
00000001405994e8 shr      eax, 0xe
00000001405994eb and      eax, r13d
00000001405994ee mov      dword ptr [rbp - 0x38], eax
00000001405994f1 je       0x14058ebb1
00000001405994f7 mov      rax, qword ptr [rsi + 0x10]
00000001405994fb mov      edx, ebx
00000001405994fd mov      rcx, qword ptr [rbp + 0x48]
0000000140599501 call     qword ptr [rip + 0xeadf1]
0000000140599507 mov      rcx, qword ptr [rbp + 0x48]
000000014059950b shr      eax, 0xe
000000014059950e and      eax, r13d
0000000140599511 mov      dword ptr [rbp - 0x38], eax
0000000140599514 mov      rax, qword ptr [rbp + 0x48]
0000000140599518 mov      rcx, qword ptr [rcx + 8]
000000014059951c lea      rbx, [rax + 0x1320]
0000000140599523 mov      rax, qword ptr [rax + 0x18]
0000000140599527 mov      rdx, rbx
000000014059952a mov      rax, qword ptr [rax + 0x108]
0000000140599531 call     qword ptr [rip + 0xeadc1]
0000000140599537 mov      esi, dword ptr [rbp + 0x58]
000000014059953a cmp      dword ptr [rdi], esi
000000014059953c jae      0x14058eaac
0000000140599542 lea      r9, [rip + 0xd90e7]
0000000140599549 jmp      0x140595e71
000000014059954e mov      rax, qword ptr [rsi + 0x10]
0000000140599552 mov      ebx, 0x880c
0000000140599557 mov      rcx, qword ptr [rbp + 0x48]
000000014059955b mov      edx, ebx
000000014059955d call     qword ptr [rip + 0xead95]
0000000140599563 shr      eax, 0xd
0000000140599566 and      eax, r13d
0000000140599569 mov      dword ptr [rbp - 0x38], eax
000000014059956c je       0x14058ebb1
0000000140599572 mov      rax, qword ptr [rsi + 0x10]
0000000140599576 mov      edx, ebx
0000000140599578 mov      rcx, qword ptr [rbp + 0x48]
000000014059957c call     qword ptr [rip + 0xead76]
0000000140599582 mov      rcx, qword ptr [rbp + 0x48]
0000000140599586 shr      eax, 0xd
0000000140599589 and      eax, r13d
000000014059958c mov      dword ptr [rbp - 0x38], eax
000000014059958f mov      rax, qword ptr [rbp + 0x48]
0000000140599593 mov      rcx, qword ptr [rcx + 8]
0000000140599597 lea      rbx, [rax + 0x1320]
000000014059959e mov      rax, qword ptr [rax + 0x18]
00000001405995a2 mov      rdx, rbx
00000001405995a5 mov      rax, qword ptr [rax + 0x108]
00000001405995ac call     qword ptr [rip + 0xead46]
00000001405995b2 mov      esi, dword ptr [rbp + 0x58]
00000001405995b5 cmp      dword ptr [rdi], esi
00000001405995b7 jae      0x14058eaac
00000001405995bd lea      r9, [rip + 0xd909c]
00000001405995c4 jmp      0x140595e71
00000001405995c9 mov      rax, qword ptr [rsi + 0x10]
00000001405995cd mov      ebx, 0x880c
00000001405995d2 mov      rcx, qword ptr [rbp + 0x48]
00000001405995d6 mov      edx, ebx
00000001405995d8 call     qword ptr [rip + 0xead1a]
00000001405995de shr      eax, 0xc
00000001405995e1 and      eax, r13d
00000001405995e4 mov      dword ptr [rbp - 0x38], eax
00000001405995e7 je       0x14058ebb1
00000001405995ed mov      rax, qword ptr [rsi + 0x10]
00000001405995f1 mov      edx, ebx
00000001405995f3 mov      rcx, qword ptr [rbp + 0x48]
00000001405995f7 call     qword ptr [rip + 0xeacfb]
00000001405995fd mov      rcx, qword ptr [rbp + 0x48]
0000000140599601 shr      eax, 0xc
0000000140599604 and      eax, r13d
0000000140599607 mov      dword ptr [rbp - 0x38], eax
000000014059960a mov      rax, qword ptr [rbp + 0x48]
000000014059960e mov      rcx, qword ptr [rcx + 8]
0000000140599612 lea      rbx, [rax + 0x1320]
0000000140599619 mov      rax, qword ptr [rax + 0x18]
000000014059961d mov      rdx, rbx
0000000140599620 mov      rax, qword ptr [rax + 0x108]
0000000140599627 call     qword ptr [rip + 0xeaccb]
000000014059962d mov      esi, dword ptr [rbp + 0x58]
0000000140599630 cmp      dword ptr [rdi], esi
0000000140599632 jae      0x14058eaac
0000000140599638 lea      r9, [rip + 0xd9051]
000000014059963f jmp      0x140595e71
0000000140599644 mov      rax, qword ptr [rsi + 0x10]
0000000140599648 mov      ebx, 0x880c
000000014059964d mov      rcx, qword ptr [rbp + 0x48]
0000000140599651 mov      edx, ebx
0000000140599653 call     qword ptr [rip + 0xeac9f]
0000000140599659 shr      eax, 0xb
000000014059965c and      eax, r13d
000000014059965f mov      dword ptr [rbp - 0x38], eax
0000000140599662 je       0x14058ebb1
0000000140599668 mov      rax, qword ptr [rsi + 0x10]
000000014059966c mov      edx, ebx
000000014059966e mov      rcx, qword ptr [rbp + 0x48]
0000000140599672 call     qword ptr [rip + 0xeac80]
0000000140599678 mov      rcx, qword ptr [rbp + 0x48]
000000014059967c shr      eax, 0xb
000000014059967f and      eax, r13d
0000000140599682 mov      dword ptr [rbp - 0x38], eax
0000000140599685 mov      rax, qword ptr [rbp + 0x48]
0000000140599689 mov      rcx, qword ptr [rcx + 8]
000000014059968d lea      rbx, [rax + 0x1320]
0000000140599694 mov      rax, qword ptr [rax + 0x18]
0000000140599698 mov      rdx, rbx
000000014059969b mov      rax, qword ptr [rax + 0x108]
00000001405996a2 call     qword ptr [rip + 0xeac50]
00000001405996a8 mov      esi, dword ptr [rbp + 0x58]
00000001405996ab cmp      dword ptr [rdi], esi
00000001405996ad jae      0x14058eaac
00000001405996b3 lea      r9, [rip + 0xd9006]
00000001405996ba jmp      0x140595e71
00000001405996bf mov      rax, qword ptr [rsi + 0x10]
00000001405996c3 mov      ebx, 0x880c
00000001405996c8 mov      rcx, qword ptr [rbp + 0x48]
00000001405996cc mov      edx, ebx
00000001405996ce call     qword ptr [rip + 0xeac24]
00000001405996d4 shr      eax, 0xa
00000001405996d7 and      eax, r13d
00000001405996da mov      dword ptr [rbp - 0x38], eax
00000001405996dd je       0x14058ebb1
00000001405996e3 mov      rax, qword ptr [rsi + 0x10]
00000001405996e7 mov      edx, ebx
00000001405996e9 mov      rcx, qword ptr [rbp + 0x48]
00000001405996ed call     qword ptr [rip + 0xeac05]
00000001405996f3 mov      rcx, qword ptr [rbp + 0x48]
00000001405996f7 shr      eax, 0xa
00000001405996fa and      eax, r13d
00000001405996fd mov      dword ptr [rbp - 0x38], eax
0000000140599700 mov      rax, qword ptr [rbp + 0x48]
0000000140599704 mov      rcx, qword ptr [rcx + 8]
0000000140599708 lea      rbx, [rax + 0x1320]
000000014059970f mov      rax, qword ptr [rax + 0x18]
0000000140599713 mov      rdx, rbx
0000000140599716 mov      rax, qword ptr [rax + 0x108]
000000014059971d call     qword ptr [rip + 0xeabd5]
0000000140599723 mov      esi, dword ptr [rbp + 0x58]
0000000140599726 cmp      dword ptr [rdi], esi
0000000140599728 jae      0x14058eaac
000000014059972e lea      r9, [rip + 0xd8fbb]
0000000140599735 jmp      0x140595e71
000000014059973a mov      rax, qword ptr [rsi + 0x10]
000000014059973e mov      ebx, 0x880c
0000000140599743 mov      rcx, qword ptr [rbp + 0x48]
0000000140599747 mov      edx, ebx
0000000140599749 call     qword ptr [rip + 0xeaba9]
000000014059974f shr      eax, 9
0000000140599752 and      eax, r13d
0000000140599755 mov      dword ptr [rbp - 0x38], eax
0000000140599758 je       0x14058ebb1
000000014059975e mov      rax, qword ptr [rsi + 0x10]
0000000140599762 mov      edx, ebx
0000000140599764 mov      rcx, qword ptr [rbp + 0x48]
0000000140599768 call     qword ptr [rip + 0xeab8a]
000000014059976e mov      rcx, qword ptr [rbp + 0x48]
0000000140599772 shr      eax, 9
0000000140599775 and      eax, r13d
0000000140599778 mov      dword ptr [rbp - 0x38], eax
000000014059977b mov      rax, qword ptr [rbp + 0x48]
000000014059977f mov      rcx, qword ptr [rcx + 8]
0000000140599783 lea      rbx, [rax + 0x1320]
000000014059978a mov      rax, qword ptr [rax + 0x18]
000000014059978e mov      rdx, rbx
0000000140599791 mov      rax, qword ptr [rax + 0x108]
0000000140599798 call     qword ptr [rip + 0xeab5a]
000000014059979e mov      esi, dword ptr [rbp + 0x58]
00000001405997a1 cmp      dword ptr [rdi], esi
00000001405997a3 jae      0x14058eaac
00000001405997a9 lea      r9, [rip + 0xd8f70]
00000001405997b0 jmp      0x140595e71
00000001405997b5 mov      rax, qword ptr [rsi + 0x10]
00000001405997b9 mov      ebx, 0x880c
00000001405997be mov      rcx, qword ptr [rbp + 0x48]
00000001405997c2 mov      edx, ebx
00000001405997c4 call     qword ptr [rip + 0xeab2e]
00000001405997ca shr      eax, 8
00000001405997cd and      eax, r13d
00000001405997d0 mov      dword ptr [rbp - 0x38], eax
00000001405997d3 je       0x14058ebb1
00000001405997d9 mov      rax, qword ptr [rsi + 0x10]
00000001405997dd mov      edx, ebx
00000001405997df mov      rcx, qword ptr [rbp + 0x48]
00000001405997e3 call     qword ptr [rip + 0xeab0f]
00000001405997e9 mov      rcx, qword ptr [rbp + 0x48]
00000001405997ed shr      eax, 8
00000001405997f0 and      eax, r13d
00000001405997f3 mov      dword ptr [rbp - 0x38], eax
00000001405997f6 mov      rax, qword ptr [rbp + 0x48]
00000001405997fa mov      rcx, qword ptr [rcx + 8]
00000001405997fe lea      rbx, [rax + 0x1320]
0000000140599805 mov      rax, qword ptr [rax + 0x18]
0000000140599809 mov      rdx, rbx
000000014059980c mov      rax, qword ptr [rax + 0x108]
0000000140599813 call     qword ptr [rip + 0xeaadf]
0000000140599819 mov      esi, dword ptr [rbp + 0x58]
000000014059981c cmp      dword ptr [rdi], esi
000000014059981e jae      0x14058eaac
0000000140599824 lea      r9, [rip + 0xd8f15]
000000014059982b jmp      0x140595e71
0000000140599830 mov      rax, qword ptr [rsi]
0000000140599833 mov      ebx, 0x880c
0000000140599838 mov      rcx, qword ptr [rbp + 0x48]
000000014059983c mov      edx, ebx
000000014059983e call     qword ptr [rip + 0xeaab4]
0000000140599844 movzx    eax, al
0000000140599847 shr      eax, 7
000000014059984a mov      dword ptr [rbp - 0x38], eax
000000014059984d test     eax, eax
000000014059984f je       0x14058ebb1
0000000140599855 mov      rax, qword ptr [rsi]
0000000140599858 mov      edx, ebx
000000014059985a mov      rcx, qword ptr [rbp + 0x48]
000000014059985e call     qword ptr [rip + 0xeaa94]
0000000140599864 mov      rcx, qword ptr [rbp + 0x48]
0000000140599868 movzx    eax, al
000000014059986b shr      eax, 7
000000014059986e mov      dword ptr [rbp - 0x38], eax
0000000140599871 mov      rax, qword ptr [rbp + 0x48]
0000000140599875 mov      rcx, qword ptr [rcx + 8]
0000000140599879 lea      rbx, [rax + 0x1320]
0000000140599880 mov      rax, qword ptr [rax + 0x18]
0000000140599884 mov      rdx, rbx
0000000140599887 mov      rax, qword ptr [rax + 0x108]
000000014059988e call     qword ptr [rip + 0xeaa64]
0000000140599894 mov      esi, dword ptr [rbp + 0x58]
0000000140599897 cmp      dword ptr [rdi], esi
0000000140599899 jae      0x14058eaac
000000014059989f lea      r9, [rip + 0xd8eba]
00000001405998a6 jmp      0x140595e71
00000001405998ab mov      rax, qword ptr [rsi]
00000001405998ae mov      ebx, 0x880c
00000001405998b3 mov      rcx, qword ptr [rbp + 0x48]
00000001405998b7 mov      edx, ebx
00000001405998b9 call     qword ptr [rip + 0xeaa39]
00000001405998bf shr      eax, 6
00000001405998c2 and      eax, r13d
00000001405998c5 mov      dword ptr [rbp - 0x38], eax
00000001405998c8 je       0x14058ebb1
00000001405998ce mov      rax, qword ptr [rsi]
00000001405998d1 mov      edx, ebx
00000001405998d3 mov      rcx, qword ptr [rbp + 0x48]
00000001405998d7 call     qword ptr [rip + 0xeaa1b]
00000001405998dd mov      rcx, qword ptr [rbp + 0x48]
00000001405998e1 shr      eax, 6
00000001405998e4 and      eax, r13d
00000001405998e7 mov      dword ptr [rbp - 0x38], eax
00000001405998ea mov      rax, qword ptr [rbp + 0x48]
00000001405998ee mov      rcx, qword ptr [rcx + 8]
00000001405998f2 lea      rbx, [rax + 0x1320]
00000001405998f9 mov      rax, qword ptr [rax + 0x18]
00000001405998fd mov      rdx, rbx
0000000140599900 mov      rax, qword ptr [rax + 0x108]
0000000140599907 call     qword ptr [rip + 0xea9eb]
000000014059990d mov      esi, dword ptr [rbp + 0x58]
0000000140599910 cmp      dword ptr [rdi], esi
0000000140599912 jae      0x14058eaac
0000000140599918 lea      r9, [rip + 0xd8e61]
000000014059991f jmp      0x140595e71
0000000140599924 mov      rax, qword ptr [rsi]
0000000140599927 mov      ebx, 0x880c
000000014059992c mov      rcx, qword ptr [rbp + 0x48]
0000000140599930 mov      edx, ebx
0000000140599932 call     qword ptr [rip + 0xea9c0]
0000000140599938 shr      eax, 5
000000014059993b and      eax, r13d
000000014059993e mov      dword ptr [rbp - 0x38], eax
0000000140599941 je       0x14058ebb1
0000000140599947 mov      rax, qword ptr [rsi]
000000014059994a mov      edx, ebx
000000014059994c mov      rcx, qword ptr [rbp + 0x48]
0000000140599950 call     qword ptr [rip + 0xea9a2]
0000000140599956 mov      rcx, qword ptr [rbp + 0x48]
000000014059995a shr      eax, 5
000000014059995d and      eax, r13d
0000000140599960 mov      dword ptr [rbp - 0x38], eax
0000000140599963 mov      rax, qword ptr [rbp + 0x48]
0000000140599967 mov      rcx, qword ptr [rcx + 8]
000000014059996b lea      rbx, [rax + 0x1320]
0000000140599972 mov      rax, qword ptr [rax + 0x18]
0000000140599976 mov      rdx, rbx
0000000140599979 mov      rax, qword ptr [rax + 0x108]
0000000140599980 call     qword ptr [rip + 0xea972]
0000000140599986 mov      esi, dword ptr [rbp + 0x58]
0000000140599989 cmp      dword ptr [rdi], esi
000000014059998b jae      0x14058eaac
0000000140599991 lea      r9, [rip + 0xd8e08]
0000000140599998 jmp      0x140595e71
000000014059999d mov      rax, qword ptr [rsi]
00000001405999a0 mov      ebx, 0x880c
00000001405999a5 mov      rcx, qword ptr [rbp + 0x48]
00000001405999a9 mov      edx, ebx
00000001405999ab call     qword ptr [rip + 0xea947]
00000001405999b1 shr      eax, 4
00000001405999b4 and      eax, r13d
00000001405999b7 mov      dword ptr [rbp - 0x38], eax
00000001405999ba je       0x14058ebb1
00000001405999c0 mov      rax, qword ptr [rsi]
00000001405999c3 mov      edx, ebx
00000001405999c5 mov      rcx, qword ptr [rbp + 0x48]
00000001405999c9 call     qword ptr [rip + 0xea929]
00000001405999cf mov      rcx, qword ptr [rbp + 0x48]
00000001405999d3 shr      eax, 4
00000001405999d6 and      eax, r13d
00000001405999d9 mov      dword ptr [rbp - 0x38], eax
00000001405999dc mov      rax, qword ptr [rbp + 0x48]
00000001405999e0 mov      rcx, qword ptr [rcx + 8]
00000001405999e4 lea      rbx, [rax + 0x1320]
00000001405999eb mov      rax, qword ptr [rax + 0x18]
00000001405999ef mov      rdx, rbx
00000001405999f2 mov      rax, qword ptr [rax + 0x108]
00000001405999f9 call     qword ptr [rip + 0xea8f9]
00000001405999ff mov      esi, dword ptr [rbp + 0x58]
0000000140599a02 cmp      dword ptr [rdi], esi
0000000140599a04 jae      0x14058eaac
0000000140599a0a lea      r9, [rip + 0xd8daf]
0000000140599a11 jmp      0x140595e71
0000000140599a16 mov      rax, qword ptr [rsi]
0000000140599a19 mov      ebx, 0x880c
0000000140599a1e mov      rcx, qword ptr [rbp + 0x48]
0000000140599a22 mov      edx, ebx
0000000140599a24 call     qword ptr [rip + 0xea8ce]
0000000140599a2a shr      eax, 3
0000000140599a2d and      eax, r13d
0000000140599a30 mov      dword ptr [rbp - 0x38], eax
0000000140599a33 je       0x14058ebb1
0000000140599a39 mov      rax, qword ptr [rsi]
0000000140599a3c mov      edx, ebx
0000000140599a3e mov      rcx, qword ptr [rbp + 0x48]
0000000140599a42 call     qword ptr [rip + 0xea8b0]
0000000140599a48 mov      rcx, qword ptr [rbp + 0x48]
0000000140599a4c shr      eax, 3
0000000140599a4f and      eax, r13d
0000000140599a52 mov      dword ptr [rbp - 0x38], eax
0000000140599a55 mov      rax, qword ptr [rbp + 0x48]
0000000140599a59 mov      rcx, qword ptr [rcx + 8]
0000000140599a5d lea      rbx, [rax + 0x1320]
0000000140599a64 mov      rax, qword ptr [rax + 0x18]
0000000140599a68 mov      rdx, rbx
0000000140599a6b mov      rax, qword ptr [rax + 0x108]
0000000140599a72 call     qword ptr [rip + 0xea880]
0000000140599a78 mov      esi, dword ptr [rbp + 0x58]
0000000140599a7b cmp      dword ptr [rdi], esi
0000000140599a7d jae      0x14058eaac
0000000140599a83 lea      r9, [rip + 0xd8d56]
0000000140599a8a jmp      0x140595e71
0000000140599a8f mov      rax, qword ptr [rsi]
0000000140599a92 mov      ebx, 0x880c
0000000140599a97 mov      rcx, qword ptr [rbp + 0x48]
0000000140599a9b mov      edx, ebx
0000000140599a9d call     qword ptr [rip + 0xea855]
0000000140599aa3 shr      eax, 2
0000000140599aa6 and      eax, r13d
0000000140599aa9 mov      dword ptr [rbp - 0x38], eax
0000000140599aac je       0x14058ebb1
0000000140599ab2 mov      rax, qword ptr [rsi]
0000000140599ab5 mov      edx, ebx
0000000140599ab7 mov      rcx, qword ptr [rbp + 0x48]
0000000140599abb call     qword ptr [rip + 0xea837]
0000000140599ac1 mov      rcx, qword ptr [rbp + 0x48]
0000000140599ac5 shr      eax, 2
0000000140599ac8 and      eax, r13d
0000000140599acb mov      dword ptr [rbp - 0x38], eax
0000000140599ace mov      rax, qword ptr [rbp + 0x48]
0000000140599ad2 mov      rcx, qword ptr [rcx + 8]
0000000140599ad6 lea      rbx, [rax + 0x1320]
0000000140599add mov      rax, qword ptr [rax + 0x18]
0000000140599ae1 mov      rdx, rbx
0000000140599ae4 mov      rax, qword ptr [rax + 0x108]
0000000140599aeb call     qword ptr [rip + 0xea807]
0000000140599af1 mov      esi, dword ptr [rbp + 0x58]
0000000140599af4 cmp      dword ptr [rdi], esi
0000000140599af6 jae      0x14058eaac
0000000140599afc lea      r9, [rip + 0xd8cfd]
0000000140599b03 jmp      0x140595e71
0000000140599b08 mov      rax, qword ptr [rsi]
0000000140599b0b mov      ebx, 0x880c
0000000140599b10 mov      rcx, qword ptr [rbp + 0x48]
0000000140599b14 mov      edx, ebx
0000000140599b16 call     qword ptr [rip + 0xea7dc]
0000000140599b1c and      eax, r13d
0000000140599b1f mov      dword ptr [rbp - 0x38], eax
0000000140599b22 je       0x14058ebb1
0000000140599b28 mov      rax, qword ptr [rsi]
0000000140599b2b mov      edx, ebx
0000000140599b2d mov      rcx, qword ptr [rbp + 0x48]
0000000140599b31 call     qword ptr [rip + 0xea7c1]
0000000140599b37 mov      rcx, qword ptr [rbp + 0x48]
0000000140599b3b and      eax, r13d
0000000140599b3e mov      dword ptr [rbp - 0x38], eax
0000000140599b41 mov      rax, qword ptr [rbp + 0x48]
0000000140599b45 mov      rcx, qword ptr [rcx + 8]
0000000140599b49 lea      rbx, [rax + 0x1320]
0000000140599b50 mov      rax, qword ptr [rax + 0x18]
0000000140599b54 mov      rdx, rbx
0000000140599b57 mov      rax, qword ptr [rax + 0x108]
0000000140599b5e call     qword ptr [rip + 0xea794]
0000000140599b64 mov      esi, dword ptr [rbp + 0x58]
0000000140599b67 cmp      dword ptr [rdi], esi
0000000140599b69 jae      0x14058eaac
0000000140599b6f lea      r9, [rip + 0xd8caa]
0000000140599b76 jmp      0x140595e71
0000000140599b7b cmp      dword ptr [rbp + 0x70], r13d
0000000140599b7f jb       0x14058ebb1
0000000140599b85 mov      rax, qword ptr [rsi + 0x20]
0000000140599b89 mov      ebx, 0x8880
0000000140599b8e mov      rcx, qword ptr [rbp + 0x48]
0000000140599b92 mov      edx, ebx
0000000140599b94 call     qword ptr [rip + 0xea75e]
0000000140599b9a shr      eax, 0x1c
0000000140599b9d mov      dword ptr [rbp - 0x38], eax
0000000140599ba0 test     eax, eax
0000000140599ba2 je       0x14058ebb1
0000000140599ba8 mov      rax, qword ptr [rsi + 0x20]
0000000140599bac mov      edx, ebx
0000000140599bae mov      rcx, qword ptr [rbp + 0x48]
0000000140599bb2 call     qword ptr [rip + 0xea740]
0000000140599bb8 mov      rcx, qword ptr [rbp + 0x48]
0000000140599bbc shr      eax, 0x1c
0000000140599bbf mov      dword ptr [rbp - 0x38], eax
0000000140599bc2 mov      rax, qword ptr [rbp + 0x48]
0000000140599bc6 mov      rcx, qword ptr [rcx + 8]
0000000140599bca lea      rbx, [rax + 0x1320]
0000000140599bd1 mov      rax, qword ptr [rax + 0x18]
0000000140599bd5 mov      rdx, rbx
0000000140599bd8 mov      rax, qword ptr [rax + 0x108]
0000000140599bdf call     qword ptr [rip + 0xea713]
0000000140599be5 mov      esi, dword ptr [rbp + 0x58]
0000000140599be8 cmp      dword ptr [rdi], esi
0000000140599bea jae      0x14058eaac
0000000140599bf0 lea      r9, [rip + 0xd8c49]
0000000140599bf7 jmp      0x140595e71
0000000140599bfc cmp      dword ptr [rbp + 0x70], r13d
0000000140599c00 jb       0x14058ebb1
0000000140599c06 mov      rax, qword ptr [rsi + 0x20]
0000000140599c0a mov      ebx, 0x8880
0000000140599c0f mov      rcx, qword ptr [rbp + 0x48]
0000000140599c13 mov      edx, ebx
0000000140599c15 call     qword ptr [rip + 0xea6dd]
0000000140599c1b shr      eax, 0x18
0000000140599c1e and      eax, 0xf
0000000140599c21 mov      dword ptr [rbp - 0x38], eax
0000000140599c24 je       0x14058ebb1
0000000140599c2a mov      rax, qword ptr [rsi + 0x20]
0000000140599c2e mov      edx, ebx
0000000140599c30 mov      rcx, qword ptr [rbp + 0x48]
0000000140599c34 call     qword ptr [rip + 0xea6be]
0000000140599c3a mov      rcx, qword ptr [rbp + 0x48]
0000000140599c3e shr      eax, 0x18
0000000140599c41 and      eax, 0xf
0000000140599c44 mov      dword ptr [rbp - 0x38], eax
0000000140599c47 mov      rax, qword ptr [rbp + 0x48]
0000000140599c4b mov      rcx, qword ptr [rcx + 8]
0000000140599c4f lea      rbx, [rax + 0x1320]
0000000140599c56 mov      rax, qword ptr [rax + 0x18]
0000000140599c5a mov      rdx, rbx
0000000140599c5d mov      rax, qword ptr [rax + 0x108]
0000000140599c64 call     qword ptr [rip + 0xea68e]
0000000140599c6a mov      esi, dword ptr [rbp + 0x58]
0000000140599c6d cmp      dword ptr [rdi], esi
0000000140599c6f jae      0x14058eaac
0000000140599c75 lea      r9, [rip + 0xd8bf4]
0000000140599c7c jmp      0x140595e71
0000000140599c81 cmp      dword ptr [rbp + 0x70], r13d
0000000140599c85 jb       0x14058ebb1
0000000140599c8b mov      rax, qword ptr [rsi + 0x20]
0000000140599c8f mov      ebx, 0x8880
0000000140599c94 mov      rcx, qword ptr [rbp + 0x48]
0000000140599c98 mov      edx, ebx
0000000140599c9a call     qword ptr [rip + 0xea658]
0000000140599ca0 shr      eax, 0x14
0000000140599ca3 and      eax, 0xf
0000000140599ca6 mov      dword ptr [rbp - 0x38], eax
0000000140599ca9 je       0x14058ebb1
0000000140599caf mov      rax, qword ptr [rsi + 0x20]
0000000140599cb3 mov      edx, ebx
0000000140599cb5 mov      rcx, qword ptr [rbp + 0x48]
0000000140599cb9 call     qword ptr [rip + 0xea639]
0000000140599cbf mov      rcx, qword ptr [rbp + 0x48]
0000000140599cc3 shr      eax, 0x14
0000000140599cc6 and      eax, 0xf
0000000140599cc9 mov      dword ptr [rbp - 0x38], eax
0000000140599ccc mov      rax, qword ptr [rbp + 0x48]
0000000140599cd0 mov      rcx, qword ptr [rcx + 8]
0000000140599cd4 lea      rbx, [rax + 0x1320]
0000000140599cdb mov      rax, qword ptr [rax + 0x18]
0000000140599cdf mov      rdx, rbx
0000000140599ce2 mov      rax, qword ptr [rax + 0x108]
0000000140599ce9 call     qword ptr [rip + 0xea609]
0000000140599cef mov      esi, dword ptr [rbp + 0x58]
0000000140599cf2 cmp      dword ptr [rdi], esi
0000000140599cf4 jae      0x14058eaac
0000000140599cfa lea      r9, [rip + 0xd8b9f]
0000000140599d01 jmp      0x140595e71
0000000140599d06 cmp      dword ptr [rbp + 0x70], r13d
0000000140599d0a jb       0x14058ebb1
0000000140599d10 mov      rax, qword ptr [rsi + 0x20]
0000000140599d14 mov      ebx, 0x8880
0000000140599d19 mov      rcx, qword ptr [rbp + 0x48]
0000000140599d1d mov      edx, ebx
0000000140599d1f call     qword ptr [rip + 0xea5d3]
0000000140599d25 shr      eax, 0x10
0000000140599d28 and      eax, 0xf
0000000140599d2b mov      dword ptr [rbp - 0x38], eax
0000000140599d2e je       0x14058ebb1
0000000140599d34 mov      rax, qword ptr [rsi + 0x20]
0000000140599d38 mov      edx, ebx
0000000140599d3a mov      rcx, qword ptr [rbp + 0x48]
0000000140599d3e call     qword ptr [rip + 0xea5b4]
0000000140599d44 mov      rcx, qword ptr [rbp + 0x48]
0000000140599d48 shr      eax, 0x10
0000000140599d4b and      eax, 0xf
0000000140599d4e mov      dword ptr [rbp - 0x38], eax
0000000140599d51 mov      rax, qword ptr [rbp + 0x48]
0000000140599d55 mov      rcx, qword ptr [rcx + 8]
0000000140599d59 lea      rbx, [rax + 0x1320]
0000000140599d60 mov      rax, qword ptr [rax + 0x18]
0000000140599d64 mov      rdx, rbx
0000000140599d67 mov      rax, qword ptr [rax + 0x108]
0000000140599d6e call     qword ptr [rip + 0xea584]
0000000140599d74 mov      esi, dword ptr [rbp + 0x58]
0000000140599d77 cmp      dword ptr [rdi], esi
0000000140599d79 jae      0x14058eaac
0000000140599d7f lea      r9, [rip + 0xd8b4a]
0000000140599d86 jmp      0x140595e71
0000000140599d8b cmp      dword ptr [rbp + 0x70], r13d
0000000140599d8f jb       0x14058ebb1
0000000140599d95 mov      rax, qword ptr [rsi + 0x10]
0000000140599d99 mov      ebx, 0x8880
0000000140599d9e mov      rcx, qword ptr [rbp + 0x48]
0000000140599da2 mov      edx, ebx
0000000140599da4 call     qword ptr [rip + 0xea54e]
0000000140599daa movzx    eax, ax
0000000140599dad shr      eax, 0xc
0000000140599db0 mov      dword ptr [rbp - 0x38], eax
0000000140599db3 test     eax, eax
0000000140599db5 je       0x14058ebb1
0000000140599dbb mov      rax, qword ptr [rsi + 0x10]
0000000140599dbf mov      edx, ebx
0000000140599dc1 mov      rcx, qword ptr [rbp + 0x48]
0000000140599dc5 call     qword ptr [rip + 0xea52d]
0000000140599dcb mov      rcx, qword ptr [rbp + 0x48]
0000000140599dcf movzx    eax, ax
0000000140599dd2 shr      eax, 0xc
0000000140599dd5 mov      dword ptr [rbp - 0x38], eax
0000000140599dd8 mov      rax, qword ptr [rbp + 0x48]
0000000140599ddc mov      rcx, qword ptr [rcx + 8]
0000000140599de0 lea      rbx, [rax + 0x1320]
0000000140599de7 mov      rax, qword ptr [rax + 0x18]
0000000140599deb mov      rdx, rbx
0000000140599dee mov      rax, qword ptr [rax + 0x108]
0000000140599df5 call     qword ptr [rip + 0xea4fd]
0000000140599dfb mov      esi, dword ptr [rbp + 0x58]
0000000140599dfe cmp      dword ptr [rdi], esi
0000000140599e00 jae      0x14058eaac
0000000140599e06 lea      r9, [rip + 0xd8af3]
0000000140599e0d jmp      0x140595e71
0000000140599e12 cmp      dword ptr [rbp + 0x70], r13d
0000000140599e16 jb       0x14058ebb1
0000000140599e1c mov      rax, qword ptr [rsi + 0x10]
0000000140599e20 mov      ebx, 0x8880
0000000140599e25 mov      rcx, qword ptr [rbp + 0x48]
0000000140599e29 mov      edx, ebx
0000000140599e2b call     qword ptr [rip + 0xea4c7]
0000000140599e31 shr      eax, 8
0000000140599e34 and      eax, 0xf
0000000140599e37 mov      dword ptr [rbp - 0x38], eax
0000000140599e3a je       0x14058ebb1
0000000140599e40 mov      rax, qword ptr [rsi + 0x10]
0000000140599e44 mov      edx, ebx
0000000140599e46 mov      rcx, qword ptr [rbp + 0x48]
0000000140599e4a call     qword ptr [rip + 0xea4a8]
0000000140599e50 mov      rcx, qword ptr [rbp + 0x48]
0000000140599e54 shr      eax, 8
0000000140599e57 and      eax, 0xf
0000000140599e5a mov      dword ptr [rbp - 0x38], eax
0000000140599e5d mov      rax, qword ptr [rbp + 0x48]
0000000140599e61 mov      rcx, qword ptr [rcx + 8]
0000000140599e65 lea      rbx, [rax + 0x1320]
0000000140599e6c mov      rax, qword ptr [rax + 0x18]
0000000140599e70 mov      rdx, rbx
0000000140599e73 mov      rax, qword ptr [rax + 0x108]
0000000140599e7a call     qword ptr [rip + 0xea478]
0000000140599e80 mov      esi, dword ptr [rbp + 0x58]
0000000140599e83 cmp      dword ptr [rdi], esi
0000000140599e85 jae      0x14058eaac
0000000140599e8b lea      r9, [rip + 0xd8a9e]
0000000140599e92 jmp      0x140595e71
0000000140599e97 cmp      dword ptr [rbp + 0x70], r13d
0000000140599e9b jb       0x14058ebb1
0000000140599ea1 mov      rax, qword ptr [rsi]
0000000140599ea4 mov      ebx, 0x8880
0000000140599ea9 mov      rcx, qword ptr [rbp + 0x48]
0000000140599ead mov      edx, ebx
0000000140599eaf call     qword ptr [rip + 0xea443]
0000000140599eb5 movzx    eax, al
0000000140599eb8 shr      eax, 4
0000000140599ebb mov      dword ptr [rbp - 0x38], eax
0000000140599ebe test     eax, eax
0000000140599ec0 je       0x14058ebb1
0000000140599ec6 mov      rax, qword ptr [rsi]
0000000140599ec9 mov      edx, ebx
0000000140599ecb mov      rcx, qword ptr [rbp + 0x48]
0000000140599ecf call     qword ptr [rip + 0xea423]
0000000140599ed5 mov      rcx, qword ptr [rbp + 0x48]
0000000140599ed9 movzx    eax, al
0000000140599edc shr      eax, 4
0000000140599edf mov      dword ptr [rbp - 0x38], eax
0000000140599ee2 mov      rax, qword ptr [rbp + 0x48]
0000000140599ee6 mov      rcx, qword ptr [rcx + 8]
0000000140599eea lea      rbx, [rax + 0x1320]
0000000140599ef1 mov      rax, qword ptr [rax + 0x18]
0000000140599ef5 mov      rdx, rbx
0000000140599ef8 mov      rax, qword ptr [rax + 0x108]
0000000140599eff call     qword ptr [rip + 0xea3f3]
0000000140599f05 mov      esi, dword ptr [rbp + 0x58]
0000000140599f08 cmp      dword ptr [rdi], esi
0000000140599f0a jae      0x14058eaac
0000000140599f10 lea      r9, [rip + 0xd8a49]
0000000140599f17 jmp      0x140595e71
0000000140599f1c cmp      dword ptr [rbp + 0x70], r13d
0000000140599f20 jb       0x14058ebb1
0000000140599f26 mov      rax, qword ptr [rsi]
0000000140599f29 mov      ebx, 0x8880
0000000140599f2e mov      rcx, qword ptr [rbp + 0x48]
0000000140599f32 mov      edx, ebx
0000000140599f34 call     qword ptr [rip + 0xea3be]
0000000140599f3a shr      eax, 3
0000000140599f3d and      eax, r13d
0000000140599f40 mov      dword ptr [rbp - 0x38], eax
0000000140599f43 je       0x14058ebb1
0000000140599f49 mov      rax, qword ptr [rsi]
0000000140599f4c mov      edx, ebx
0000000140599f4e mov      rcx, qword ptr [rbp + 0x48]
0000000140599f52 call     qword ptr [rip + 0xea3a0]
0000000140599f58 mov      rcx, qword ptr [rbp + 0x48]
0000000140599f5c shr      eax, 3
0000000140599f5f and      eax, r13d
0000000140599f62 mov      dword ptr [rbp - 0x38], eax
0000000140599f65 mov      rax, qword ptr [rbp + 0x48]
0000000140599f69 mov      rcx, qword ptr [rcx + 8]
0000000140599f6d lea      rbx, [rax + 0x1320]
0000000140599f74 mov      rax, qword ptr [rax + 0x18]
0000000140599f78 mov      rdx, rbx
0000000140599f7b mov      rax, qword ptr [rax + 0x108]
0000000140599f82 call     qword ptr [rip + 0xea370]
0000000140599f88 mov      esi, dword ptr [rbp + 0x58]
0000000140599f8b cmp      dword ptr [rdi], esi
0000000140599f8d jae      0x14058eaac
0000000140599f93 lea      r9, [rip + 0xd89f6]
0000000140599f9a jmp      0x140595e71
0000000140599f9f cmp      dword ptr [rbp + 0x70], r13d
0000000140599fa3 jb       0x14058ebb1
0000000140599fa9 mov      rax, qword ptr [rsi]
0000000140599fac mov      ebx, 0x8880
0000000140599fb1 mov      rcx, qword ptr [rbp + 0x48]
0000000140599fb5 mov      edx, ebx
0000000140599fb7 call     qword ptr [rip + 0xea33b]
0000000140599fbd and      eax, 7
0000000140599fc0 mov      dword ptr [rbp - 0x38], eax
0000000140599fc3 je       0x14058ebb1
0000000140599fc9 mov      rax, qword ptr [rsi]
0000000140599fcc mov      edx, ebx
0000000140599fce mov      rcx, qword ptr [rbp + 0x48]
0000000140599fd2 call     qword ptr [rip + 0xea320]
0000000140599fd8 mov      rcx, qword ptr [rbp + 0x48]
0000000140599fdc and      eax, 7
0000000140599fdf mov      dword ptr [rbp - 0x38], eax
0000000140599fe2 mov      rax, qword ptr [rbp + 0x48]
0000000140599fe6 mov      rcx, qword ptr [rcx + 8]
0000000140599fea lea      rbx, [rax + 0x1320]
0000000140599ff1 mov      rax, qword ptr [rax + 0x18]
0000000140599ff5 mov      rdx, rbx
0000000140599ff8 mov      rax, qword ptr [rax + 0x108]
0000000140599fff call     qword ptr [rip + 0xea2f3]
000000014059a005 mov      esi, dword ptr [rbp + 0x58]
000000014059a008 cmp      dword ptr [rdi], esi
000000014059a00a jae      0x14058eaac
000000014059a010 lea      r9, [rip + 0xd8999]
000000014059a017 jmp      0x140595e71
000000014059a01c cmp      dword ptr [rbp + 0x70], r13d
000000014059a020 jb       0x14058ebb1
000000014059a026 mov      rax, qword ptr [rsi + 0x20]
000000014059a02a mov      ebx, 0x8884
000000014059a02f mov      rcx, qword ptr [rbp + 0x48]
000000014059a033 mov      edx, ebx
000000014059a035 call     qword ptr [rip + 0xea2bd]
000000014059a03b shr      eax, 0x1c
000000014059a03e mov      dword ptr [rbp - 0x38], eax
000000014059a041 test     eax, eax
000000014059a043 je       0x14058ebb1
000000014059a049 mov      rax, qword ptr [rsi + 0x20]
000000014059a04d mov      edx, ebx
000000014059a04f mov      rcx, qword ptr [rbp + 0x48]
000000014059a053 call     qword ptr [rip + 0xea29f]
000000014059a059 mov      rcx, qword ptr [rbp + 0x48]
000000014059a05d shr      eax, 0x1c
000000014059a060 mov      dword ptr [rbp - 0x38], eax
000000014059a063 mov      rax, qword ptr [rbp + 0x48]
000000014059a067 mov      rcx, qword ptr [rcx + 8]
000000014059a06b lea      rbx, [rax + 0x1320]
000000014059a072 mov      rax, qword ptr [rax + 0x18]
000000014059a076 mov      rdx, rbx
000000014059a079 mov      rax, qword ptr [rax + 0x108]
000000014059a080 call     qword ptr [rip + 0xea272]
000000014059a086 mov      esi, dword ptr [rbp + 0x58]
000000014059a089 cmp      dword ptr [rdi], esi
000000014059a08b jae      0x14058eaac
000000014059a091 lea      r9, [rip + 0xd8948]
000000014059a098 jmp      0x140595e71
000000014059a09d cmp      dword ptr [rbp + 0x70], r13d
000000014059a0a1 jb       0x14058ebb1
000000014059a0a7 mov      rax, qword ptr [rsi + 0x20]
000000014059a0ab mov      ebx, 0x8884
000000014059a0b0 mov      rcx, qword ptr [rbp + 0x48]
000000014059a0b4 mov      edx, ebx
000000014059a0b6 call     qword ptr [rip + 0xea23c]
000000014059a0bc shr      eax, 0x18
000000014059a0bf and      eax, 0xf
000000014059a0c2 mov      dword ptr [rbp - 0x38], eax
000000014059a0c5 je       0x14058ebb1
000000014059a0cb mov      rax, qword ptr [rsi + 0x20]
000000014059a0cf mov      edx, ebx
000000014059a0d1 mov      rcx, qword ptr [rbp + 0x48]
000000014059a0d5 call     qword ptr [rip + 0xea21d]
000000014059a0db mov      rcx, qword ptr [rbp + 0x48]
000000014059a0df shr      eax, 0x18
000000014059a0e2 and      eax, 0xf
000000014059a0e5 mov      dword ptr [rbp - 0x38], eax
000000014059a0e8 mov      rax, qword ptr [rbp + 0x48]
000000014059a0ec mov      rcx, qword ptr [rcx + 8]
000000014059a0f0 lea      rbx, [rax + 0x1320]
000000014059a0f7 mov      rax, qword ptr [rax + 0x18]
000000014059a0fb mov      rdx, rbx
000000014059a0fe mov      rax, qword ptr [rax + 0x108]
000000014059a105 call     qword ptr [rip + 0xea1ed]
000000014059a10b mov      esi, dword ptr [rbp + 0x58]
000000014059a10e cmp      dword ptr [rdi], esi
000000014059a110 jae      0x14058eaac
000000014059a116 lea      r9, [rip + 0xd88f3]
000000014059a11d jmp      0x140595e71
000000014059a122 cmp      dword ptr [rbp + 0x70], r13d
000000014059a126 jb       0x14058ebb1
000000014059a12c mov      rax, qword ptr [rsi + 0x20]
000000014059a130 mov      ebx, 0x8884
000000014059a135 mov      rcx, qword ptr [rbp + 0x48]
000000014059a139 mov      edx, ebx
000000014059a13b call     qword ptr [rip + 0xea1b7]
000000014059a141 shr      eax, 0x14
000000014059a144 and      eax, 0xf
000000014059a147 mov      dword ptr [rbp - 0x38], eax
000000014059a14a je       0x14058ebb1
000000014059a150 mov      rax, qword ptr [rsi + 0x20]
000000014059a154 mov      edx, ebx
000000014059a156 mov      rcx, qword ptr [rbp + 0x48]
000000014059a15a call     qword ptr [rip + 0xea198]
000000014059a160 mov      rcx, qword ptr [rbp + 0x48]
000000014059a164 shr      eax, 0x14
000000014059a167 and      eax, 0xf
000000014059a16a mov      dword ptr [rbp - 0x38], eax
000000014059a16d mov      rax, qword ptr [rbp + 0x48]
000000014059a171 mov      rcx, qword ptr [rcx + 8]
000000014059a175 lea      rbx, [rax + 0x1320]
000000014059a17c mov      rax, qword ptr [rax + 0x18]
000000014059a180 mov      rdx, rbx
000000014059a183 mov      rax, qword ptr [rax + 0x108]
000000014059a18a call     qword ptr [rip + 0xea168]
000000014059a190 mov      esi, dword ptr [rbp + 0x58]
000000014059a193 cmp      dword ptr [rdi], esi
000000014059a195 jae      0x14058eaac
000000014059a19b lea      r9, [rip + 0xd889e]
000000014059a1a2 jmp      0x140595e71
000000014059a1a7 cmp      dword ptr [rbp + 0x70], r13d
000000014059a1ab jb       0x14058ebb1
000000014059a1b1 mov      rax, qword ptr [rsi + 0x20]
000000014059a1b5 mov      ebx, 0x8888
000000014059a1ba mov      rcx, qword ptr [rbp + 0x48]
000000014059a1be mov      edx, ebx
000000014059a1c0 call     qword ptr [rip + 0xea132]
000000014059a1c6 shr      eax, 0x1c
000000014059a1c9 mov      dword ptr [rbp - 0x38], eax
000000014059a1cc test     eax, eax
000000014059a1ce je       0x14058ebb1
000000014059a1d4 mov      rax, qword ptr [rsi + 0x20]
000000014059a1d8 mov      edx, ebx
000000014059a1da mov      rcx, qword ptr [rbp + 0x48]
000000014059a1de call     qword ptr [rip + 0xea114]
000000014059a1e4 mov      rcx, qword ptr [rbp + 0x48]
000000014059a1e8 shr      eax, 0x1c
000000014059a1eb mov      dword ptr [rbp - 0x38], eax
000000014059a1ee mov      rax, qword ptr [rbp + 0x48]
000000014059a1f2 mov      rcx, qword ptr [rcx + 8]
000000014059a1f6 lea      rbx, [rax + 0x1320]
000000014059a1fd mov      rax, qword ptr [rax + 0x18]
000000014059a201 mov      rdx, rbx
000000014059a204 mov      rax, qword ptr [rax + 0x108]
000000014059a20b call     qword ptr [rip + 0xea0e7]
000000014059a211 mov      esi, dword ptr [rbp + 0x58]
000000014059a214 cmp      dword ptr [rdi], esi
000000014059a216 jae      0x14058eaac
000000014059a21c lea      r9, [rip + 0xd884d]
000000014059a223 jmp      0x140595e71
000000014059a228 cmp      dword ptr [rbp + 0x70], r13d
000000014059a22c jb       0x14058ebb1
000000014059a232 mov      rax, qword ptr [rsi + 0x20]
000000014059a236 mov      ebx, 0x8888
000000014059a23b mov      rcx, qword ptr [rbp + 0x48]
000000014059a23f mov      edx, ebx
000000014059a241 call     qword ptr [rip + 0xea0b1]
000000014059a247 shr      eax, 0x18
000000014059a24a and      eax, 0xf
000000014059a24d mov      dword ptr [rbp - 0x38], eax
000000014059a250 je       0x14058ebb1
000000014059a256 mov      rax, qword ptr [rsi + 0x20]
000000014059a25a mov      edx, ebx
000000014059a25c mov      rcx, qword ptr [rbp + 0x48]
000000014059a260 call     qword ptr [rip + 0xea092]
000000014059a266 mov      rcx, qword ptr [rbp + 0x48]
000000014059a26a shr      eax, 0x18
000000014059a26d and      eax, 0xf
000000014059a270 mov      dword ptr [rbp - 0x38], eax
000000014059a273 mov      rax, qword ptr [rbp + 0x48]
000000014059a277 mov      rcx, qword ptr [rcx + 8]
000000014059a27b lea      rbx, [rax + 0x1320]
000000014059a282 mov      rax, qword ptr [rax + 0x18]
000000014059a286 mov      rdx, rbx
000000014059a289 mov      rax, qword ptr [rax + 0x108]
000000014059a290 call     qword ptr [rip + 0xea062]
000000014059a296 mov      esi, dword ptr [rbp + 0x58]
000000014059a299 cmp      dword ptr [rdi], esi
000000014059a29b jae      0x14058eaac
000000014059a2a1 lea      r9, [rip + 0xd87f8]
000000014059a2a8 jmp      0x140595e71
000000014059a2ad cmp      dword ptr [rbp + 0x70], r13d
000000014059a2b1 jb       0x14058ebb1
000000014059a2b7 mov      rax, qword ptr [rsi + 0x20]
000000014059a2bb mov      ebx, 0x8888
000000014059a2c0 mov      rcx, qword ptr [rbp + 0x48]
000000014059a2c4 mov      edx, ebx
000000014059a2c6 call     qword ptr [rip + 0xea02c]
000000014059a2cc shr      eax, 0x14
000000014059a2cf and      eax, 0xf
000000014059a2d2 mov      dword ptr [rbp - 0x38], eax
000000014059a2d5 je       0x14058ebb1
000000014059a2db mov      rax, qword ptr [rsi + 0x20]
000000014059a2df mov      edx, ebx
000000014059a2e1 mov      rcx, qword ptr [rbp + 0x48]
000000014059a2e5 call     qword ptr [rip + 0xea00d]
000000014059a2eb mov      rcx, qword ptr [rbp + 0x48]
000000014059a2ef shr      eax, 0x14
000000014059a2f2 and      eax, 0xf
000000014059a2f5 mov      dword ptr [rbp - 0x38], eax
000000014059a2f8 mov      rax, qword ptr [rbp + 0x48]
000000014059a2fc mov      rcx, qword ptr [rcx + 8]
000000014059a300 lea      rbx, [rax + 0x1320]
000000014059a307 mov      rax, qword ptr [rax + 0x18]
000000014059a30b mov      rdx, rbx
000000014059a30e mov      rax, qword ptr [rax + 0x108]
000000014059a315 call     qword ptr [rip + 0xe9fdd]
000000014059a31b mov      esi, dword ptr [rbp + 0x58]
000000014059a31e cmp      dword ptr [rdi], esi
000000014059a320 jae      0x14058eaac
000000014059a326 lea      r9, [rip + 0xd87a3]
000000014059a32d jmp      0x140595e71
000000014059a332 cmp      dword ptr [rbp + 0x70], r13d
000000014059a336 jb       0x14058ebb1
000000014059a33c mov      rax, qword ptr [rsi + 0x20]
000000014059a340 mov      ebx, 0x8888
000000014059a345 mov      rcx, qword ptr [rbp + 0x48]
000000014059a349 mov      edx, ebx
000000014059a34b call     qword ptr [rip + 0xe9fa7]
000000014059a351 shr      eax, 0x10
000000014059a354 and      eax, 0xf
000000014059a357 mov      dword ptr [rbp - 0x38], eax
000000014059a35a je       0x14058ebb1
000000014059a360 mov      rax, qword ptr [rsi + 0x20]
000000014059a364 mov      edx, ebx
000000014059a366 mov      rcx, qword ptr [rbp + 0x48]
000000014059a36a call     qword ptr [rip + 0xe9f88]
000000014059a370 mov      rcx, qword ptr [rbp + 0x48]
000000014059a374 shr      eax, 0x10
000000014059a377 and      eax, 0xf
000000014059a37a mov      dword ptr [rbp - 0x38], eax
000000014059a37d mov      rax, qword ptr [rbp + 0x48]
000000014059a381 mov      rcx, qword ptr [rcx + 8]
000000014059a385 lea      rbx, [rax + 0x1320]
000000014059a38c mov      rax, qword ptr [rax + 0x18]
000000014059a390 mov      rdx, rbx
000000014059a393 mov      rax, qword ptr [rax + 0x108]
000000014059a39a call     qword ptr [rip + 0xe9f58]
000000014059a3a0 mov      esi, dword ptr [rbp + 0x58]
000000014059a3a3 cmp      dword ptr [rdi], esi
000000014059a3a5 jae      0x14058eaac
000000014059a3ab lea      r9, [rip + 0xd874e]
000000014059a3b2 jmp      0x140595e71
000000014059a3b7 cmp      dword ptr [rbp + 0x70], r13d
000000014059a3bb jb       0x14058ebb1
000000014059a3c1 mov      rax, qword ptr [rsi + 0x10]
000000014059a3c5 mov      ebx, 0x8888
000000014059a3ca mov      rcx, qword ptr [rbp + 0x48]
000000014059a3ce mov      edx, ebx
000000014059a3d0 call     qword ptr [rip + 0xe9f22]
000000014059a3d6 movzx    eax, ax
000000014059a3d9 shr      eax, 0xf
000000014059a3dc mov      dword ptr [rbp - 0x38], eax
000000014059a3df test     eax, eax
000000014059a3e1 je       0x14058ebb1
000000014059a3e7 mov      rax, qword ptr [rsi + 0x10]
000000014059a3eb mov      edx, ebx
000000014059a3ed mov      rcx, qword ptr [rbp + 0x48]
000000014059a3f1 call     qword ptr [rip + 0xe9f01]
000000014059a3f7 mov      rcx, qword ptr [rbp + 0x48]
000000014059a3fb movzx    eax, ax
000000014059a3fe shr      eax, 0xf
000000014059a401 mov      dword ptr [rbp - 0x38], eax
000000014059a404 mov      rax, qword ptr [rbp + 0x48]
000000014059a408 mov      rcx, qword ptr [rcx + 8]
000000014059a40c lea      rbx, [rax + 0x1320]
000000014059a413 mov      rax, qword ptr [rax + 0x18]
000000014059a417 mov      rdx, rbx
000000014059a41a mov      rax, qword ptr [rax + 0x108]
000000014059a421 call     qword ptr [rip + 0xe9ed1]
000000014059a427 mov      esi, dword ptr [rbp + 0x58]
000000014059a42a cmp      dword ptr [rdi], esi
000000014059a42c jae      0x14058eaac
000000014059a432 lea      r9, [rip + 0xd86f7]
000000014059a439 jmp      0x140595e71
000000014059a43e cmp      dword ptr [rbp + 0x70], r13d
000000014059a442 jb       0x14058ebb1
000000014059a448 mov      rax, qword ptr [rsi + 0x10]
000000014059a44c mov      ebx, 0x8888
000000014059a451 mov      rcx, qword ptr [rbp + 0x48]
000000014059a455 mov      edx, ebx
000000014059a457 call     qword ptr [rip + 0xe9e9b]
000000014059a45d shr      eax, 0xc
000000014059a460 and      eax, 7
000000014059a463 mov      dword ptr [rbp - 0x38], eax
000000014059a466 je       0x14058ebb1
000000014059a46c mov      rax, qword ptr [rsi + 0x10]
000000014059a470 mov      edx, ebx
000000014059a472 mov      rcx, qword ptr [rbp + 0x48]
000000014059a476 call     qword ptr [rip + 0xe9e7c]
000000014059a47c mov      rcx, qword ptr [rbp + 0x48]
000000014059a480 shr      eax, 0xc
000000014059a483 and      eax, 7
000000014059a486 mov      dword ptr [rbp - 0x38], eax
000000014059a489 mov      rax, qword ptr [rbp + 0x48]
000000014059a48d mov      rcx, qword ptr [rcx + 8]
000000014059a491 lea      rbx, [rax + 0x1320]
000000014059a498 mov      rax, qword ptr [rax + 0x18]
000000014059a49c mov      rdx, rbx
000000014059a49f mov      rax, qword ptr [rax + 0x108]
000000014059a4a6 call     qword ptr [rip + 0xe9e4c]
000000014059a4ac mov      esi, dword ptr [rbp + 0x58]
000000014059a4af cmp      dword ptr [rdi], esi
000000014059a4b1 jae      0x14058eaac
000000014059a4b7 lea      r9, [rip + 0xd86a2]
000000014059a4be jmp      0x140595e71
000000014059a4c3 cmp      dword ptr [rbp + 0x70], r13d
000000014059a4c7 jb       0x14058ebb1
000000014059a4cd mov      rax, qword ptr [rsi + 0x10]
000000014059a4d1 mov      ebx, 0x8888
000000014059a4d6 mov      rcx, qword ptr [rbp + 0x48]
000000014059a4da mov      edx, ebx
000000014059a4dc call     qword ptr [rip + 0xe9e16]
000000014059a4e2 shr      eax, 8
000000014059a4e5 and      eax, 0xf
000000014059a4e8 mov      dword ptr [rbp - 0x38], eax
000000014059a4eb je       0x14058ebb1
000000014059a4f1 mov      rax, qword ptr [rsi + 0x10]
000000014059a4f5 mov      edx, ebx
000000014059a4f7 mov      rcx, qword ptr [rbp + 0x48]
000000014059a4fb call     qword ptr [rip + 0xe9df7]
000000014059a501 mov      rcx, qword ptr [rbp + 0x48]
000000014059a505 shr      eax, 8
000000014059a508 and      eax, 0xf
000000014059a50b mov      dword ptr [rbp - 0x38], eax
000000014059a50e mov      rax, qword ptr [rbp + 0x48]
000000014059a512 mov      rcx, qword ptr [rcx + 8]
000000014059a516 lea      rbx, [rax + 0x1320]
000000014059a51d mov      rax, qword ptr [rax + 0x18]
000000014059a521 mov      rdx, rbx
000000014059a524 mov      rax, qword ptr [rax + 0x108]
000000014059a52b call     qword ptr [rip + 0xe9dc7]
000000014059a531 mov      esi, dword ptr [rbp + 0x58]
000000014059a534 cmp      dword ptr [rdi], esi
000000014059a536 jae      0x14058eaac
000000014059a53c lea      r9, [rip + 0xd864d]
000000014059a543 jmp      0x140595e71
000000014059a548 cmp      dword ptr [rbp + 0x70], r13d
000000014059a54c jb       0x14058ebb1
000000014059a552 mov      rax, qword ptr [rsi]
000000014059a555 mov      ebx, 0x8888
000000014059a55a mov      rcx, qword ptr [rbp + 0x48]
000000014059a55e mov      edx, ebx
000000014059a560 call     qword ptr [rip + 0xe9d92]
000000014059a566 and      eax, 3
000000014059a569 mov      dword ptr [rbp - 0x38], eax
000000014059a56c je       0x14058ebb1
000000014059a572 mov      rax, qword ptr [rsi]
000000014059a575 mov      edx, ebx
000000014059a577 mov      rcx, qword ptr [rbp + 0x48]
000000014059a57b call     qword ptr [rip + 0xe9d77]
000000014059a581 mov      rcx, qword ptr [rbp + 0x48]
000000014059a585 and      eax, 3
000000014059a588 mov      dword ptr [rbp - 0x38], eax
000000014059a58b mov      rax, qword ptr [rbp + 0x48]
000000014059a58f mov      rcx, qword ptr [rcx + 8]
000000014059a593 lea      rbx, [rax + 0x1320]
000000014059a59a mov      rax, qword ptr [rax + 0x18]
000000014059a59e mov      rdx, rbx
000000014059a5a1 mov      rax, qword ptr [rax + 0x108]
000000014059a5a8 call     qword ptr [rip + 0xe9d4a]
000000014059a5ae mov      esi, dword ptr [rbp + 0x58]
000000014059a5b1 cmp      dword ptr [rdi], esi
000000014059a5b3 jae      0x14058eaac
000000014059a5b9 lea      r9, [rip + 0xd8600]
000000014059a5c0 jmp      0x140595e71
000000014059a5c5 cmp      dword ptr [rbp + 0x70], r13d
000000014059a5c9 jb       0x14058ebb1
000000014059a5cf mov      rax, qword ptr [rsi]
000000014059a5d2 mov      ebx, 0x8888
000000014059a5d7 mov      rcx, qword ptr [rbp + 0x48]
000000014059a5db mov      edx, ebx
000000014059a5dd call     qword ptr [rip + 0xe9d15]
000000014059a5e3 shr      eax, 2
000000014059a5e6 and      eax, 3
000000014059a5e9 mov      dword ptr [rbp - 0x38], eax
000000014059a5ec je       0x14058ebb1
000000014059a5f2 mov      rax, qword ptr [rsi]
000000014059a5f5 mov      edx, ebx
000000014059a5f7 mov      rcx, qword ptr [rbp + 0x48]
000000014059a5fb call     qword ptr [rip + 0xe9cf7]
000000014059a601 mov      rcx, qword ptr [rbp + 0x48]
000000014059a605 shr      eax, 2
000000014059a608 and      eax, 3
000000014059a60b mov      dword ptr [rbp - 0x38], eax
000000014059a60e mov      rax, qword ptr [rbp + 0x48]
000000014059a612 mov      rcx, qword ptr [rcx + 8]
000000014059a616 lea      rbx, [rax + 0x1320]
000000014059a61d mov      rax, qword ptr [rax + 0x18]
000000014059a621 mov      rdx, rbx
000000014059a624 mov      rax, qword ptr [rax + 0x108]
000000014059a62b call     qword ptr [rip + 0xe9cc7]
000000014059a631 mov      esi, dword ptr [rbp + 0x58]
000000014059a634 cmp      dword ptr [rdi], esi
000000014059a636 jae      0x14058eaac
000000014059a63c lea      r9, [rip + 0xd85ad]
000000014059a643 jmp      0x140595e71
000000014059a648 cmp      dword ptr [rbp + 0x70], r13d
000000014059a64c jb       0x14058ebb1
000000014059a652 mov      rax, qword ptr [rsi + 0x20]
000000014059a656 mov      ebx, 0x889c
000000014059a65b mov      rcx, qword ptr [rbp + 0x48]
000000014059a65f mov      edx, ebx
000000014059a661 call     qword ptr [rip + 0xe9c91]
000000014059a667 mov      dword ptr [rbp - 0x38], eax
000000014059a66a cmp      eax, -1
000000014059a66d je       0x14058ebb1
000000014059a673 mov      rax, qword ptr [rsi + 0x20]
000000014059a677 mov      edx, ebx
000000014059a679 mov      rcx, qword ptr [rbp + 0x48]
000000014059a67d call     qword ptr [rip + 0xe9c75]
000000014059a683 mov      rcx, qword ptr [rbp + 0x48]
000000014059a687 mov      dword ptr [rbp - 0x38], eax
000000014059a68a mov      rax, qword ptr [rbp + 0x48]
000000014059a68e mov      rcx, qword ptr [rcx + 8]
000000014059a692 lea      rbx, [rax + 0x1320]
000000014059a699 mov      rax, qword ptr [rax + 0x18]
000000014059a69d mov      rdx, rbx
000000014059a6a0 mov      rax, qword ptr [rax + 0x108]
000000014059a6a7 call     qword ptr [rip + 0xe9c4b]
000000014059a6ad mov      esi, dword ptr [rbp + 0x58]
000000014059a6b0 cmp      dword ptr [rdi], esi
000000014059a6b2 jae      0x14058eaac
000000014059a6b8 lea      r9, [rip + 0xd8561]
000000014059a6bf jmp      0x140595e71
000000014059a6c4 cmp      dword ptr [rbp + 0x70], r13d
000000014059a6c8 jb       0x14058ebb1
000000014059a6ce mov      rax, qword ptr [rsi + 0x10]
000000014059a6d2 mov      ebx, 0x88a4
000000014059a6d7 mov      rcx, qword ptr [rbp + 0x48]
000000014059a6db mov      edx, ebx
000000014059a6dd call     qword ptr [rip + 0xe9c15]
000000014059a6e3 shr      eax, 8
000000014059a6e6 and      eax, 0xf
000000014059a6e9 mov      dword ptr [rbp - 0x38], eax
000000014059a6ec je       0x14058ebb1
000000014059a6f2 mov      rax, qword ptr [rsi + 0x10]
000000014059a6f6 mov      edx, ebx
000000014059a6f8 mov      rcx, qword ptr [rbp + 0x48]
000000014059a6fc call     qword ptr [rip + 0xe9bf6]
000000014059a702 mov      rcx, qword ptr [rbp + 0x48]
000000014059a706 shr      eax, 8
000000014059a709 and      eax, 0xf
000000014059a70c mov      dword ptr [rbp - 0x38], eax
000000014059a70f mov      rax, qword ptr [rbp + 0x48]
000000014059a713 mov      rcx, qword ptr [rcx + 8]
000000014059a717 lea      rbx, [rax + 0x1320]
000000014059a71e mov      rax, qword ptr [rax + 0x18]
000000014059a722 mov      rdx, rbx
000000014059a725 mov      rax, qword ptr [rax + 0x108]
000000014059a72c call     qword ptr [rip + 0xe9bc6]
000000014059a732 mov      esi, dword ptr [rbp + 0x58]
000000014059a735 cmp      dword ptr [rdi], esi
000000014059a737 jae      0x14058eaac
000000014059a73d lea      r9, [rip + 0xd850c]
000000014059a744 jmp      0x140595e71
000000014059a749 cmp      dword ptr [rbp + 0x70], r13d
000000014059a74d jb       0x14058ebb1
000000014059a753 mov      rax, qword ptr [rsi]
000000014059a756 mov      ebx, 0x88a4
000000014059a75b mov      rcx, qword ptr [rbp + 0x48]
000000014059a75f mov      edx, ebx
000000014059a761 call     qword ptr [rip + 0xe9b91]
000000014059a767 movzx    eax, al
000000014059a76a shr      eax, 4
000000014059a76d mov      dword ptr [rbp - 0x38], eax
000000014059a770 test     eax, eax
000000014059a772 je       0x14058ebb1
000000014059a778 mov      rax, qword ptr [rsi]
000000014059a77b mov      edx, ebx
000000014059a77d mov      rcx, qword ptr [rbp + 0x48]
000000014059a781 call     qword ptr [rip + 0xe9b71]
000000014059a787 mov      rcx, qword ptr [rbp + 0x48]
000000014059a78b movzx    eax, al
000000014059a78e shr      eax, 4
000000014059a791 mov      dword ptr [rbp - 0x38], eax
000000014059a794 mov      rax, qword ptr [rbp + 0x48]
000000014059a798 mov      rcx, qword ptr [rcx + 8]
000000014059a79c lea      rbx, [rax + 0x1320]
000000014059a7a3 mov      rax, qword ptr [rax + 0x18]
000000014059a7a7 mov      rdx, rbx
000000014059a7aa mov      rax, qword ptr [rax + 0x108]
000000014059a7b1 call     qword ptr [rip + 0xe9b41]
000000014059a7b7 mov      esi, dword ptr [rbp + 0x58]
000000014059a7ba cmp      dword ptr [rdi], esi
000000014059a7bc jae      0x14058eaac
000000014059a7c2 lea      r9, [rip + 0xd84b7]
000000014059a7c9 jmp      0x140595e71
000000014059a7ce cmp      dword ptr [rbp + 0x70], r13d
000000014059a7d2 jb       0x14058ebb1
000000014059a7d8 mov      rax, qword ptr [rsi + 0x20]
000000014059a7dc mov      ebx, 0x88a4
000000014059a7e1 mov      rcx, qword ptr [rbp + 0x48]
000000014059a7e5 mov      edx, ebx
000000014059a7e7 call     qword ptr [rip + 0xe9b0b]
000000014059a7ed shr      eax, 0x14
000000014059a7f0 and      eax, 0xf
000000014059a7f3 mov      dword ptr [rbp - 0x38], eax
000000014059a7f6 je       0x14058ebb1
000000014059a7fc mov      rax, qword ptr [rsi + 0x20]
000000014059a800 mov      edx, ebx
000000014059a802 mov      rcx, qword ptr [rbp + 0x48]
000000014059a806 call     qword ptr [rip + 0xe9aec]
000000014059a80c mov      rcx, qword ptr [rbp + 0x48]
000000014059a810 shr      eax, 0x14
000000014059a813 and      eax, 0xf
000000014059a816 mov      dword ptr [rbp - 0x38], eax
000000014059a819 mov      rax, qword ptr [rbp + 0x48]
000000014059a81d mov      rcx, qword ptr [rcx + 8]
000000014059a821 lea      rbx, [rax + 0x1320]
000000014059a828 mov      rax, qword ptr [rax + 0x18]
000000014059a82c mov      rdx, rbx
000000014059a82f mov      rax, qword ptr [rax + 0x108]
000000014059a836 call     qword ptr [rip + 0xe9abc]
000000014059a83c mov      esi, dword ptr [rbp + 0x58]
000000014059a83f cmp      dword ptr [rdi], esi
000000014059a841 jae      0x14058eaac
000000014059a847 lea      r9, [rip + 0xd8462]
000000014059a84e jmp      0x140595e71
000000014059a853 cmp      dword ptr [rbp + 0x70], r13d
000000014059a857 jb       0x14058ebb1
000000014059a85d mov      rax, qword ptr [rsi + 0x20]
000000014059a861 mov      ebx, 0x88a4
000000014059a866 mov      rcx, qword ptr [rbp + 0x48]
000000014059a86a mov      edx, ebx
000000014059a86c call     qword ptr [rip + 0xe9a86]
000000014059a872 shr      eax, 0x10
000000014059a875 and      eax, 0xf
000000014059a878 mov      dword ptr [rbp - 0x38], eax
000000014059a87b je       0x14058ebb1
000000014059a881 mov      rax, qword ptr [rsi + 0x20]
000000014059a885 mov      edx, ebx
000000014059a887 mov      rcx, qword ptr [rbp + 0x48]
000000014059a88b call     qword ptr [rip + 0xe9a67]
000000014059a891 mov      rcx, qword ptr [rbp + 0x48]
000000014059a895 shr      eax, 0x10
000000014059a898 and      eax, 0xf
000000014059a89b mov      dword ptr [rbp - 0x38], eax
000000014059a89e mov      rax, qword ptr [rbp + 0x48]
000000014059a8a2 mov      rcx, qword ptr [rcx + 8]
000000014059a8a6 lea      rbx, [rax + 0x1320]
000000014059a8ad mov      rax, qword ptr [rax + 0x18]
000000014059a8b1 mov      rdx, rbx
000000014059a8b4 mov      rax, qword ptr [rax + 0x108]
000000014059a8bb call     qword ptr [rip + 0xe9a37]
000000014059a8c1 mov      esi, dword ptr [rbp + 0x58]
000000014059a8c4 cmp      dword ptr [rdi], esi
000000014059a8c6 jae      0x14058eaac
000000014059a8cc lea      r9, [rip + 0xd840d]
000000014059a8d3 jmp      0x140595e71
000000014059a8d8 mov      rax, qword ptr [rsi + 0x20]
000000014059a8dc mov      ebx, 0x11870
000000014059a8e1 mov      rcx, qword ptr [rbp + 0x48]
000000014059a8e5 mov      edx, ebx
000000014059a8e7 call     qword ptr [rip + 0xe9a0b]
000000014059a8ed shr      eax, 8
000000014059a8f0 mov      dword ptr [rbp - 0x38], eax
000000014059a8f3 test     eax, eax
000000014059a8f5 je       0x14058ebb1
000000014059a8fb mov      rax, qword ptr [rsi + 0x20]
000000014059a8ff mov      edx, ebx
000000014059a901 mov      rcx, qword ptr [rbp + 0x48]
000000014059a905 call     qword ptr [rip + 0xe99ed]
000000014059a90b mov      rcx, qword ptr [rbp + 0x48]
000000014059a90f shr      eax, 8
000000014059a912 mov      dword ptr [rbp - 0x38], eax
000000014059a915 mov      rax, qword ptr [rbp + 0x48]
000000014059a919 mov      rcx, qword ptr [rcx + 8]
000000014059a91d lea      rbx, [rax + 0x1320]
000000014059a924 mov      rax, qword ptr [rax + 0x18]
000000014059a928 mov      rdx, rbx
000000014059a92b mov      rax, qword ptr [rax + 0x108]
000000014059a932 call     qword ptr [rip + 0xe99c0]
000000014059a938 mov      esi, dword ptr [rbp + 0x58]
000000014059a93b cmp      dword ptr [rdi], esi
000000014059a93d jae      0x14058eaac
000000014059a943 lea      r9, [rip + 0xd83c6]
000000014059a94a jmp      0x140595e71
000000014059a94f mov      rax, qword ptr [rsi + 0x10]
000000014059a953 mov      ebx, 0x1187c
000000014059a958 mov      rcx, qword ptr [rbp + 0x48]
000000014059a95c mov      edx, ebx
000000014059a95e call     qword ptr [rip + 0xe9994]
000000014059a964 shr      eax, 0xe
000000014059a967 and      eax, r13d
000000014059a96a mov      dword ptr [rbp - 0x38], eax
000000014059a96d je       0x14058ebb1
000000014059a973 mov      rax, qword ptr [rsi + 0x10]
000000014059a977 mov      edx, ebx
000000014059a979 mov      rcx, qword ptr [rbp + 0x48]
000000014059a97d call     qword ptr [rip + 0xe9975]
000000014059a983 mov      rcx, qword ptr [rbp + 0x48]
000000014059a987 shr      eax, 0xe
000000014059a98a and      eax, r13d
000000014059a98d mov      dword ptr [rbp - 0x38], eax
000000014059a990 mov      rax, qword ptr [rbp + 0x48]
000000014059a994 mov      rcx, qword ptr [rcx + 8]
000000014059a998 lea      rbx, [rax + 0x1320]
000000014059a99f mov      rax, qword ptr [rax + 0x18]
000000014059a9a3 mov      rdx, rbx
000000014059a9a6 mov      rax, qword ptr [rax + 0x108]
000000014059a9ad call     qword ptr [rip + 0xe9945]
000000014059a9b3 mov      esi, dword ptr [rbp + 0x58]
000000014059a9b6 cmp      dword ptr [rdi], esi
000000014059a9b8 jae      0x14058eaac
000000014059a9be lea      r9, [rip + 0xd837b]
000000014059a9c5 jmp      0x140595e71
000000014059a9ca mov      rax, qword ptr [rsi + 0x10]
000000014059a9ce mov      ebx, 0x1187c
000000014059a9d3 mov      rcx, qword ptr [rbp + 0x48]
000000014059a9d7 mov      edx, ebx
000000014059a9d9 call     qword ptr [rip + 0xe9919]
000000014059a9df shr      eax, 0xd
000000014059a9e2 and      eax, r13d
000000014059a9e5 mov      dword ptr [rbp - 0x38], eax
000000014059a9e8 je       0x14058ebb1
000000014059a9ee mov      rax, qword ptr [rsi + 0x10]
000000014059a9f2 mov      edx, ebx
000000014059a9f4 mov      rcx, qword ptr [rbp + 0x48]
000000014059a9f8 call     qword ptr [rip + 0xe98fa]
000000014059a9fe mov      rcx, qword ptr [rbp + 0x48]
000000014059aa02 shr      eax, 0xd
000000014059aa05 and      eax, r13d
000000014059aa08 mov      dword ptr [rbp - 0x38], eax
000000014059aa0b mov      rax, qword ptr [rbp + 0x48]
000000014059aa0f mov      rcx, qword ptr [rcx + 8]
000000014059aa13 lea      rbx, [rax + 0x1320]
000000014059aa1a mov      rax, qword ptr [rax + 0x18]
000000014059aa1e mov      rdx, rbx
000000014059aa21 mov      rax, qword ptr [rax + 0x108]
000000014059aa28 call     qword ptr [rip + 0xe98ca]
000000014059aa2e mov      esi, dword ptr [rbp + 0x58]
000000014059aa31 cmp      dword ptr [rdi], esi
000000014059aa33 jae      0x14058eaac
000000014059aa39 lea      r9, [rip + 0xd8330]
000000014059aa40 jmp      0x140595e71
000000014059aa45 mov      rax, qword ptr [rsi + 0x10]
000000014059aa49 mov      ebx, 0x1187c
000000014059aa4e mov      rcx, qword ptr [rbp + 0x48]
000000014059aa52 mov      edx, ebx
000000014059aa54 call     qword ptr [rip + 0xe989e]
000000014059aa5a shr      eax, 0xc
000000014059aa5d and      eax, r13d
000000014059aa60 mov      dword ptr [rbp - 0x38], eax
000000014059aa63 je       0x14058ebb1
000000014059aa69 mov      rax, qword ptr [rsi + 0x10]
000000014059aa6d mov      edx, ebx
000000014059aa6f mov      rcx, qword ptr [rbp + 0x48]
000000014059aa73 call     qword ptr [rip + 0xe987f]
000000014059aa79 mov      rcx, qword ptr [rbp + 0x48]
000000014059aa7d shr      eax, 0xc
000000014059aa80 and      eax, r13d
000000014059aa83 mov      dword ptr [rbp - 0x38], eax
000000014059aa86 mov      rax, qword ptr [rbp + 0x48]
000000014059aa8a mov      rcx, qword ptr [rcx + 8]
000000014059aa8e lea      rbx, [rax + 0x1320]
000000014059aa95 mov      rax, qword ptr [rax + 0x18]
000000014059aa99 mov      rdx, rbx
000000014059aa9c mov      rax, qword ptr [rax + 0x108]
000000014059aaa3 call     qword ptr [rip + 0xe984f]
000000014059aaa9 mov      esi, dword ptr [rbp + 0x58]
000000014059aaac cmp      dword ptr [rdi], esi
000000014059aaae jae      0x14058eaac
000000014059aab4 lea      r9, [rip + 0xd82e5]
000000014059aabb jmp      0x140595e71
000000014059aac0 mov      rax, qword ptr [rsi + 0x10]
000000014059aac4 mov      ebx, 0x1187c
000000014059aac9 mov      rcx, qword ptr [rbp + 0x48]
000000014059aacd mov      edx, ebx
000000014059aacf call     qword ptr [rip + 0xe9823]
000000014059aad5 shr      eax, 0xb
000000014059aad8 and      eax, r13d
000000014059aadb mov      dword ptr [rbp - 0x38], eax
000000014059aade je       0x14058ebb1
000000014059aae4 mov      rax, qword ptr [rsi + 0x10]
000000014059aae8 mov      edx, ebx
000000014059aaea mov      rcx, qword ptr [rbp + 0x48]
000000014059aaee call     qword ptr [rip + 0xe9804]
000000014059aaf4 mov      rcx, qword ptr [rbp + 0x48]
000000014059aaf8 shr      eax, 0xb
000000014059aafb and      eax, r13d
000000014059aafe mov      dword ptr [rbp - 0x38], eax
000000014059ab01 mov      rax, qword ptr [rbp + 0x48]
000000014059ab05 mov      rcx, qword ptr [rcx + 8]
000000014059ab09 lea      rbx, [rax + 0x1320]
000000014059ab10 mov      rax, qword ptr [rax + 0x18]
000000014059ab14 mov      rdx, rbx
000000014059ab17 mov      rax, qword ptr [rax + 0x108]
000000014059ab1e call     qword ptr [rip + 0xe97d4]
000000014059ab24 mov      esi, dword ptr [rbp + 0x58]
000000014059ab27 cmp      dword ptr [rdi], esi
000000014059ab29 jae      0x14058eaac
000000014059ab2f lea      r9, [rip + 0xd829a]
000000014059ab36 jmp      0x140595e71
000000014059ab3b mov      rax, qword ptr [rsi + 0x10]
000000014059ab3f mov      ebx, 0x1187c
000000014059ab44 mov      rcx, qword ptr [rbp + 0x48]
000000014059ab48 mov      edx, ebx
000000014059ab4a call     qword ptr [rip + 0xe97a8]
000000014059ab50 shr      eax, 0xa
000000014059ab53 and      eax, r13d
000000014059ab56 mov      dword ptr [rbp - 0x38], eax
000000014059ab59 je       0x14058ebb1
000000014059ab5f mov      rax, qword ptr [rsi + 0x10]
000000014059ab63 mov      edx, ebx
000000014059ab65 mov      rcx, qword ptr [rbp + 0x48]
000000014059ab69 call     qword ptr [rip + 0xe9789]
000000014059ab6f mov      rcx, qword ptr [rbp + 0x48]
000000014059ab73 shr      eax, 0xa
000000014059ab76 and      eax, r13d
000000014059ab79 mov      dword ptr [rbp - 0x38], eax
000000014059ab7c mov      rax, qword ptr [rbp + 0x48]
000000014059ab80 mov      rcx, qword ptr [rcx + 8]
000000014059ab84 lea      rbx, [rax + 0x1320]
000000014059ab8b mov      rax, qword ptr [rax + 0x18]
000000014059ab8f mov      rdx, rbx
000000014059ab92 mov      rax, qword ptr [rax + 0x108]
000000014059ab99 call     qword ptr [rip + 0xe9759]
000000014059ab9f mov      esi, dword ptr [rbp + 0x58]
000000014059aba2 cmp      dword ptr [rdi], esi
000000014059aba4 jae      0x14058eaac
000000014059abaa lea      r9, [rip + 0xd824f]
000000014059abb1 jmp      0x140595e71
000000014059abb6 mov      rax, qword ptr [rsi + 0x10]
000000014059abba mov      ebx, 0x1187c
000000014059abbf mov      rcx, qword ptr [rbp + 0x48]
000000014059abc3 mov      edx, ebx
000000014059abc5 call     qword ptr [rip + 0xe972d]
000000014059abcb shr      eax, 9
000000014059abce and      eax, r13d
000000014059abd1 mov      dword ptr [rbp - 0x38], eax
000000014059abd4 je       0x14058ebb1
000000014059abda mov      rax, qword ptr [rsi + 0x10]
000000014059abde mov      edx, ebx
000000014059abe0 mov      rcx, qword ptr [rbp + 0x48]
000000014059abe4 call     qword ptr [rip + 0xe970e]
000000014059abea mov      rcx, qword ptr [rbp + 0x48]
000000014059abee shr      eax, 9
000000014059abf1 and      eax, r13d
000000014059abf4 mov      dword ptr [rbp - 0x38], eax
000000014059abf7 mov      rax, qword ptr [rbp + 0x48]
000000014059abfb mov      rcx, qword ptr [rcx + 8]
000000014059abff lea      rbx, [rax + 0x1320]
000000014059ac06 mov      rax, qword ptr [rax + 0x18]
000000014059ac0a mov      rdx, rbx
000000014059ac0d mov      rax, qword ptr [rax + 0x108]
000000014059ac14 call     qword ptr [rip + 0xe96de]
000000014059ac1a mov      esi, dword ptr [rbp + 0x58]
000000014059ac1d cmp      dword ptr [rdi], esi
000000014059ac1f jae      0x14058eaac
000000014059ac25 lea      r9, [rip + 0xd8204]
000000014059ac2c jmp      0x140595e71
000000014059ac31 mov      rax, qword ptr [rsi + 0x10]
000000014059ac35 mov      ebx, 0x1187c
000000014059ac3a mov      rcx, qword ptr [rbp + 0x48]
000000014059ac3e mov      edx, ebx
000000014059ac40 call     qword ptr [rip + 0xe96b2]
000000014059ac46 shr      eax, 8
000000014059ac49 and      eax, r13d
000000014059ac4c mov      dword ptr [rbp - 0x38], eax
000000014059ac4f je       0x14058ebb1
000000014059ac55 mov      rax, qword ptr [rsi + 0x10]
000000014059ac59 mov      edx, ebx
000000014059ac5b mov      rcx, qword ptr [rbp + 0x48]
000000014059ac5f call     qword ptr [rip + 0xe9693]
000000014059ac65 mov      rcx, qword ptr [rbp + 0x48]
000000014059ac69 shr      eax, 8
000000014059ac6c and      eax, r13d
000000014059ac6f mov      dword ptr [rbp - 0x38], eax
000000014059ac72 mov      rax, qword ptr [rbp + 0x48]
000000014059ac76 mov      rcx, qword ptr [rcx + 8]
000000014059ac7a lea      rbx, [rax + 0x1320]
000000014059ac81 mov      rax, qword ptr [rax + 0x18]
000000014059ac85 mov      rdx, rbx
000000014059ac88 mov      rax, qword ptr [rax + 0x108]
000000014059ac8f call     qword ptr [rip + 0xe9663]
000000014059ac95 mov      esi, dword ptr [rbp + 0x58]
000000014059ac98 cmp      dword ptr [rdi], esi
000000014059ac9a jae      0x14058eaac
000000014059aca0 lea      r9, [rip + 0xd81a9]
000000014059aca7 jmp      0x140595e71
000000014059acac mov      rax, qword ptr [rsi]
000000014059acaf mov      ebx, 0x1187c
000000014059acb4 mov      rcx, qword ptr [rbp + 0x48]
000000014059acb8 mov      edx, ebx
000000014059acba call     qword ptr [rip + 0xe9638]
000000014059acc0 movzx    eax, al
000000014059acc3 shr      eax, 7
000000014059acc6 mov      dword ptr [rbp - 0x38], eax
000000014059acc9 test     eax, eax
000000014059accb je       0x14058ebb1
000000014059acd1 mov      rax, qword ptr [rsi]
000000014059acd4 mov      edx, ebx
000000014059acd6 mov      rcx, qword ptr [rbp + 0x48]
000000014059acda call     qword ptr [rip + 0xe9618]
000000014059ace0 mov      rcx, qword ptr [rbp + 0x48]
000000014059ace4 movzx    eax, al
000000014059ace7 shr      eax, 7
000000014059acea mov      dword ptr [rbp - 0x38], eax
000000014059aced mov      rax, qword ptr [rbp + 0x48]
000000014059acf1 mov      rcx, qword ptr [rcx + 8]
000000014059acf5 lea      rbx, [rax + 0x1320]
000000014059acfc mov      rax, qword ptr [rax + 0x18]
000000014059ad00 mov      rdx, rbx
000000014059ad03 mov      rax, qword ptr [rax + 0x108]
000000014059ad0a call     qword ptr [rip + 0xe95e8]
000000014059ad10 mov      esi, dword ptr [rbp + 0x58]
000000014059ad13 cmp      dword ptr [rdi], esi
000000014059ad15 jae      0x14058eaac
000000014059ad1b lea      r9, [rip + 0xd814e]
000000014059ad22 jmp      0x140595e71
000000014059ad27 mov      rax, qword ptr [rsi]
000000014059ad2a mov      ebx, 0x1187c
000000014059ad2f mov      rcx, qword ptr [rbp + 0x48]
000000014059ad33 mov      edx, ebx
000000014059ad35 call     qword ptr [rip + 0xe95bd]
000000014059ad3b shr      eax, 6
000000014059ad3e and      eax, r13d
000000014059ad41 mov      dword ptr [rbp - 0x38], eax
000000014059ad44 je       0x14058ebb1
000000014059ad4a mov      rax, qword ptr [rsi]
000000014059ad4d mov      edx, ebx
000000014059ad4f mov      rcx, qword ptr [rbp + 0x48]
000000014059ad53 call     qword ptr [rip + 0xe959f]
000000014059ad59 mov      rcx, qword ptr [rbp + 0x48]
000000014059ad5d shr      eax, 6
000000014059ad60 and      eax, r13d
000000014059ad63 mov      dword ptr [rbp - 0x38], eax
000000014059ad66 mov      rax, qword ptr [rbp + 0x48]
000000014059ad6a mov      rcx, qword ptr [rcx + 8]
000000014059ad6e lea      rbx, [rax + 0x1320]
000000014059ad75 mov      rax, qword ptr [rax + 0x18]
000000014059ad79 mov      rdx, rbx
000000014059ad7c mov      rax, qword ptr [rax + 0x108]
000000014059ad83 call     qword ptr [rip + 0xe956f]
000000014059ad89 mov      esi, dword ptr [rbp + 0x58]
000000014059ad8c cmp      dword ptr [rdi], esi
000000014059ad8e jae      0x14058eaac
000000014059ad94 lea      r9, [rip + 0xd80f5]
000000014059ad9b jmp      0x140595e71
000000014059ada0 mov      rax, qword ptr [rsi]
000000014059ada3 mov      ebx, 0x1187c
000000014059ada8 mov      rcx, qword ptr [rbp + 0x48]
000000014059adac mov      edx, ebx
000000014059adae call     qword ptr [rip + 0xe9544]
000000014059adb4 shr      eax, 5
000000014059adb7 and      eax, r13d
000000014059adba mov      dword ptr [rbp - 0x38], eax
000000014059adbd je       0x14058ebb1
000000014059adc3 mov      rax, qword ptr [rsi]
000000014059adc6 mov      edx, ebx
000000014059adc8 mov      rcx, qword ptr [rbp + 0x48]
000000014059adcc call     qword ptr [rip + 0xe9526]
000000014059add2 mov      rcx, qword ptr [rbp + 0x48]
000000014059add6 shr      eax, 5
000000014059add9 and      eax, r13d
000000014059addc mov      dword ptr [rbp - 0x38], eax
000000014059addf mov      rax, qword ptr [rbp + 0x48]
000000014059ade3 mov      rcx, qword ptr [rcx + 8]
000000014059ade7 lea      rbx, [rax + 0x1320]
000000014059adee mov      rax, qword ptr [rax + 0x18]
000000014059adf2 mov      rdx, rbx
000000014059adf5 mov      rax, qword ptr [rax + 0x108]
000000014059adfc call     qword ptr [rip + 0xe94f6]
000000014059ae02 mov      esi, dword ptr [rbp + 0x58]
000000014059ae05 cmp      dword ptr [rdi], esi
000000014059ae07 jae      0x14058eaac
000000014059ae0d lea      r9, [rip + 0xd809c]
000000014059ae14 jmp      0x140595e71
000000014059ae19 mov      rax, qword ptr [rsi]
000000014059ae1c mov      ebx, 0x1187c
000000014059ae21 mov      rcx, qword ptr [rbp + 0x48]
000000014059ae25 mov      edx, ebx
000000014059ae27 call     qword ptr [rip + 0xe94cb]
000000014059ae2d shr      eax, 4
000000014059ae30 and      eax, r13d
000000014059ae33 mov      dword ptr [rbp - 0x38], eax
000000014059ae36 je       0x14058ebb1
000000014059ae3c mov      rax, qword ptr [rsi]
000000014059ae3f mov      edx, ebx
000000014059ae41 mov      rcx, qword ptr [rbp + 0x48]
000000014059ae45 call     qword ptr [rip + 0xe94ad]
000000014059ae4b mov      rcx, qword ptr [rbp + 0x48]
000000014059ae4f shr      eax, 4
000000014059ae52 and      eax, r13d
000000014059ae55 mov      dword ptr [rbp - 0x38], eax
000000014059ae58 mov      rax, qword ptr [rbp + 0x48]
000000014059ae5c mov      rcx, qword ptr [rcx + 8]
000000014059ae60 lea      rbx, [rax + 0x1320]
000000014059ae67 mov      rax, qword ptr [rax + 0x18]
000000014059ae6b mov      rdx, rbx
000000014059ae6e mov      rax, qword ptr [rax + 0x108]
000000014059ae75 call     qword ptr [rip + 0xe947d]
000000014059ae7b mov      esi, dword ptr [rbp + 0x58]
000000014059ae7e cmp      dword ptr [rdi], esi
000000014059ae80 jae      0x14058eaac
000000014059ae86 lea      r9, [rip + 0xd8043]
000000014059ae8d jmp      0x140595e71
000000014059ae92 mov      rax, qword ptr [rsi]
000000014059ae95 mov      ebx, 0x1187c
000000014059ae9a mov      rcx, qword ptr [rbp + 0x48]
000000014059ae9e mov      edx, ebx
000000014059aea0 call     qword ptr [rip + 0xe9452]
000000014059aea6 shr      eax, 3
000000014059aea9 and      eax, r13d
000000014059aeac mov      dword ptr [rbp - 0x38], eax
000000014059aeaf je       0x14058ebb1
000000014059aeb5 mov      rax, qword ptr [rsi]
000000014059aeb8 mov      edx, ebx
000000014059aeba mov      rcx, qword ptr [rbp + 0x48]
000000014059aebe call     qword ptr [rip + 0xe9434]
000000014059aec4 mov      rcx, qword ptr [rbp + 0x48]
000000014059aec8 shr      eax, 3
000000014059aecb and      eax, r13d
000000014059aece mov      dword ptr [rbp - 0x38], eax
000000014059aed1 mov      rax, qword ptr [rbp + 0x48]
000000014059aed5 mov      rcx, qword ptr [rcx + 8]
000000014059aed9 lea      rbx, [rax + 0x1320]
000000014059aee0 mov      rax, qword ptr [rax + 0x18]
000000014059aee4 mov      rdx, rbx
000000014059aee7 mov      rax, qword ptr [rax + 0x108]
000000014059aeee call     qword ptr [rip + 0xe9404]
000000014059aef4 mov      esi, dword ptr [rbp + 0x58]
000000014059aef7 cmp      dword ptr [rdi], esi
000000014059aef9 jae      0x14058eaac
000000014059aeff lea      r9, [rip + 0xd7fea]
000000014059af06 jmp      0x140595e71
000000014059af0b mov      rax, qword ptr [rsi]
000000014059af0e mov      ebx, 0x1187c
000000014059af13 mov      rcx, qword ptr [rbp + 0x48]
000000014059af17 mov      edx, ebx
000000014059af19 call     qword ptr [rip + 0xe93d9]
000000014059af1f shr      eax, 2
000000014059af22 and      eax, r13d
000000014059af25 mov      dword ptr [rbp - 0x38], eax
000000014059af28 je       0x14058ebb1
000000014059af2e mov      rax, qword ptr [rsi]
000000014059af31 mov      edx, ebx
000000014059af33 mov      rcx, qword ptr [rbp + 0x48]
000000014059af37 call     qword ptr [rip + 0xe93bb]
000000014059af3d mov      rcx, qword ptr [rbp + 0x48]
000000014059af41 shr      eax, 2
000000014059af44 and      eax, r13d
000000014059af47 mov      dword ptr [rbp - 0x38], eax
000000014059af4a mov      rax, qword ptr [rbp + 0x48]
000000014059af4e mov      rcx, qword ptr [rcx + 8]
000000014059af52 lea      rbx, [rax + 0x1320]
000000014059af59 mov      rax, qword ptr [rax + 0x18]
000000014059af5d mov      rdx, rbx
000000014059af60 mov      rax, qword ptr [rax + 0x108]
000000014059af67 call     qword ptr [rip + 0xe938b]
000000014059af6d mov      esi, dword ptr [rbp + 0x58]
000000014059af70 cmp      dword ptr [rdi], esi
000000014059af72 jae      0x14058eaac
000000014059af78 lea      r9, [rip + 0xd7f91]
000000014059af7f jmp      0x140595e71
000000014059af84 mov      rax, qword ptr [rsi]
000000014059af87 mov      ebx, 0x1187c
000000014059af8c mov      rcx, qword ptr [rbp + 0x48]
000000014059af90 mov      edx, ebx
000000014059af92 call     qword ptr [rip + 0xe9360]
000000014059af98 shr      eax, 1
000000014059af9a and      eax, r13d
000000014059af9d mov      dword ptr [rbp - 0x38], eax
000000014059afa0 je       0x14058ebb1
000000014059afa6 mov      rax, qword ptr [rsi]
000000014059afa9 mov      edx, ebx
000000014059afab mov      rcx, qword ptr [rbp + 0x48]
000000014059afaf call     qword ptr [rip + 0xe9343]
000000014059afb5 mov      rcx, qword ptr [rbp + 0x48]
000000014059afb9 shr      eax, 1
000000014059afbb and      eax, r13d
000000014059afbe mov      dword ptr [rbp - 0x38], eax
000000014059afc1 mov      rax, qword ptr [rbp + 0x48]
000000014059afc5 mov      rcx, qword ptr [rcx + 8]
000000014059afc9 lea      rbx, [rax + 0x1320]
000000014059afd0 mov      rax, qword ptr [rax + 0x18]
000000014059afd4 mov      rdx, rbx
000000014059afd7 mov      rax, qword ptr [rax + 0x108]
000000014059afde call     qword ptr [rip + 0xe9314]
000000014059afe4 mov      esi, dword ptr [rbp + 0x58]
000000014059afe7 cmp      dword ptr [rdi], esi
000000014059afe9 jae      0x14058eaac
000000014059afef lea      r9, [rip + 0xd7f3a]
000000014059aff6 jmp      0x140595e71
000000014059affb mov      rax, qword ptr [rsi]
000000014059affe mov      ebx, 0x1187c
000000014059b003 mov      rcx, qword ptr [rbp + 0x48]
000000014059b007 mov      edx, ebx
000000014059b009 call     qword ptr [rip + 0xe92e9]
000000014059b00f and      eax, r13d
000000014059b012 mov      dword ptr [rbp - 0x38], eax
000000014059b015 je       0x14058ebb1
000000014059b01b mov      rax, qword ptr [rsi]
000000014059b01e mov      edx, ebx
000000014059b020 mov      rcx, qword ptr [rbp + 0x48]
000000014059b024 call     qword ptr [rip + 0xe92ce]
000000014059b02a mov      rcx, qword ptr [rbp + 0x48]
000000014059b02e and      eax, r13d
000000014059b031 mov      dword ptr [rbp - 0x38], eax
000000014059b034 mov      rax, qword ptr [rbp + 0x48]
000000014059b038 mov      rcx, qword ptr [rcx + 8]
000000014059b03c lea      rbx, [rax + 0x1320]
000000014059b043 mov      rax, qword ptr [rax + 0x18]
000000014059b047 mov      rdx, rbx
000000014059b04a mov      rax, qword ptr [rax + 0x108]
000000014059b051 call     qword ptr [rip + 0xe92a1]
000000014059b057 mov      esi, dword ptr [rbp + 0x58]
000000014059b05a cmp      dword ptr [rdi], esi
000000014059b05c jae      0x14058eaac
000000014059b062 lea      r9, [rip + 0xd7ee7]
000000014059b069 jmp      0x140595e71
000000014059b06e mov      rax, qword ptr [rsi + 0x20]
000000014059b072 mov      ebx, 0x11880
000000014059b077 mov      rcx, qword ptr [rbp + 0x48]
000000014059b07b mov      edx, ebx
000000014059b07d call     qword ptr [rip + 0xe9275]
000000014059b083 shr      eax, 0x1f
000000014059b086 mov      dword ptr [rbp - 0x38], eax
000000014059b089 test     eax, eax
000000014059b08b je       0x14058ebb1
000000014059b091 mov      rax, qword ptr [rsi + 0x20]
000000014059b095 mov      edx, ebx
000000014059b097 mov      rcx, qword ptr [rbp + 0x48]
000000014059b09b call     qword ptr [rip + 0xe9257]
000000014059b0a1 mov      rcx, qword ptr [rbp + 0x48]
000000014059b0a5 shr      eax, 0x1f
000000014059b0a8 mov      dword ptr [rbp - 0x38], eax
000000014059b0ab mov      rax, qword ptr [rbp + 0x48]
000000014059b0af mov      rcx, qword ptr [rcx + 8]
000000014059b0b3 lea      rbx, [rax + 0x1320]
000000014059b0ba mov      rax, qword ptr [rax + 0x18]
000000014059b0be mov      rdx, rbx
000000014059b0c1 mov      rax, qword ptr [rax + 0x108]
000000014059b0c8 call     qword ptr [rip + 0xe922a]
000000014059b0ce mov      esi, dword ptr [rbp + 0x58]
000000014059b0d1 cmp      dword ptr [rdi], esi
000000014059b0d3 jae      0x14058eaac
000000014059b0d9 lea      r9, [rip + 0xd7e90]
000000014059b0e0 jmp      0x140595e71
000000014059b0e5 mov      rax, qword ptr [rsi + 0x20]
000000014059b0e9 mov      ebx, 0x11880
000000014059b0ee mov      rcx, qword ptr [rbp + 0x48]
000000014059b0f2 mov      edx, ebx
000000014059b0f4 call     qword ptr [rip + 0xe91fe]
000000014059b0fa shr      eax, 0x1e
000000014059b0fd and      eax, r13d
000000014059b100 mov      dword ptr [rbp - 0x38], eax
000000014059b103 je       0x14058ebb1
000000014059b109 mov      rax, qword ptr [rsi + 0x20]
000000014059b10d mov      edx, ebx
000000014059b10f mov      rcx, qword ptr [rbp + 0x48]
000000014059b113 call     qword ptr [rip + 0xe91df]
000000014059b119 mov      rcx, qword ptr [rbp + 0x48]
000000014059b11d shr      eax, 0x1e
000000014059b120 and      eax, r13d
000000014059b123 mov      dword ptr [rbp - 0x38], eax
000000014059b126 mov      rax, qword ptr [rbp + 0x48]
000000014059b12a mov      rcx, qword ptr [rcx + 8]
000000014059b12e lea      rbx, [rax + 0x1320]
000000014059b135 mov      rax, qword ptr [rax + 0x18]
000000014059b139 mov      rdx, rbx
000000014059b13c mov      rax, qword ptr [rax + 0x108]
000000014059b143 call     qword ptr [rip + 0xe91af]
000000014059b149 mov      esi, dword ptr [rbp + 0x58]
000000014059b14c cmp      dword ptr [rdi], esi
000000014059b14e jae      0x14058eaac
000000014059b154 lea      r9, [rip + 0xd7e45]
000000014059b15b jmp      0x140595e71
000000014059b160 mov      rax, qword ptr [rsi + 0x20]
000000014059b164 mov      ebx, 0x11880
000000014059b169 mov      rcx, qword ptr [rbp + 0x48]
000000014059b16d mov      edx, ebx
000000014059b16f call     qword ptr [rip + 0xe9183]
000000014059b175 shr      eax, 0x1d
000000014059b178 and      eax, r13d
000000014059b17b mov      dword ptr [rbp - 0x38], eax
000000014059b17e je       0x14058ebb1
000000014059b184 mov      rax, qword ptr [rsi + 0x20]
000000014059b188 mov      edx, ebx
000000014059b18a mov      rcx, qword ptr [rbp + 0x48]
000000014059b18e call     qword ptr [rip + 0xe9164]
000000014059b194 mov      rcx, qword ptr [rbp + 0x48]
000000014059b198 shr      eax, 0x1d
000000014059b19b and      eax, r13d
000000014059b19e mov      dword ptr [rbp - 0x38], eax
000000014059b1a1 mov      rax, qword ptr [rbp + 0x48]
000000014059b1a5 mov      rcx, qword ptr [rcx + 8]
000000014059b1a9 lea      rbx, [rax + 0x1320]
000000014059b1b0 mov      rax, qword ptr [rax + 0x18]
000000014059b1b4 mov      rdx, rbx
000000014059b1b7 mov      rax, qword ptr [rax + 0x108]
000000014059b1be call     qword ptr [rip + 0xe9134]
000000014059b1c4 mov      esi, dword ptr [rbp + 0x58]
000000014059b1c7 cmp      dword ptr [rdi], esi
000000014059b1c9 jae      0x14058eaac
000000014059b1cf lea      r9, [rip + 0xd7dfa]
000000014059b1d6 jmp      0x140595e71
000000014059b1db mov      rax, qword ptr [rsi + 0x20]
000000014059b1df mov      ebx, 0x11880
000000014059b1e4 mov      rcx, qword ptr [rbp + 0x48]
000000014059b1e8 mov      edx, ebx
000000014059b1ea call     qword ptr [rip + 0xe9108]
000000014059b1f0 shr      eax, 0x1c
000000014059b1f3 and      eax, r13d
000000014059b1f6 mov      dword ptr [rbp - 0x38], eax
000000014059b1f9 je       0x14058ebb1
000000014059b1ff mov      rax, qword ptr [rsi + 0x20]
000000014059b203 mov      edx, ebx
000000014059b205 mov      rcx, qword ptr [rbp + 0x48]
000000014059b209 call     qword ptr [rip + 0xe90e9]
000000014059b20f mov      rcx, qword ptr [rbp + 0x48]
000000014059b213 shr      eax, 0x1c
000000014059b216 and      eax, r13d
000000014059b219 mov      dword ptr [rbp - 0x38], eax
000000014059b21c mov      rax, qword ptr [rbp + 0x48]
000000014059b220 mov      rcx, qword ptr [rcx + 8]
000000014059b224 lea      rbx, [rax + 0x1320]
000000014059b22b mov      rax, qword ptr [rax + 0x18]
000000014059b22f mov      rdx, rbx
000000014059b232 mov      rax, qword ptr [rax + 0x108]
000000014059b239 call     qword ptr [rip + 0xe90b9]
000000014059b23f mov      esi, dword ptr [rbp + 0x58]
000000014059b242 cmp      dword ptr [rdi], esi
000000014059b244 jae      0x14058eaac
000000014059b24a lea      r9, [rip + 0xd7daf]
000000014059b251 jmp      0x140595e71
000000014059b256 mov      rax, qword ptr [rsi + 0x20]
000000014059b25a mov      ebx, 0x11880
000000014059b25f mov      rcx, qword ptr [rbp + 0x48]
000000014059b263 mov      edx, ebx
000000014059b265 call     qword ptr [rip + 0xe908d]
000000014059b26b shr      eax, 0x1b
000000014059b26e and      eax, r13d
000000014059b271 mov      dword ptr [rbp - 0x38], eax
000000014059b274 je       0x14058ebb1
000000014059b27a mov      rax, qword ptr [rsi + 0x20]
000000014059b27e mov      edx, ebx
000000014059b280 mov      rcx, qword ptr [rbp + 0x48]
000000014059b284 call     qword ptr [rip + 0xe906e]
000000014059b28a mov      rcx, qword ptr [rbp + 0x48]
000000014059b28e shr      eax, 0x1b
000000014059b291 and      eax, r13d
000000014059b294 mov      dword ptr [rbp - 0x38], eax
000000014059b297 mov      rax, qword ptr [rbp + 0x48]
000000014059b29b mov      rcx, qword ptr [rcx + 8]
000000014059b29f lea      rbx, [rax + 0x1320]
000000014059b2a6 mov      rax, qword ptr [rax + 0x18]
000000014059b2aa mov      rdx, rbx
000000014059b2ad mov      rax, qword ptr [rax + 0x108]
000000014059b2b4 call     qword ptr [rip + 0xe903e]
000000014059b2ba mov      esi, dword ptr [rbp + 0x58]
000000014059b2bd cmp      dword ptr [rdi], esi
000000014059b2bf jae      0x14058eaac
000000014059b2c5 lea      r9, [rip + 0xd7d64]
000000014059b2cc jmp      0x140595e71
000000014059b2d1 mov      rax, qword ptr [rsi + 0x20]
000000014059b2d5 mov      ebx, 0x11880
000000014059b2da mov      rcx, qword ptr [rbp + 0x48]
000000014059b2de mov      edx, ebx
000000014059b2e0 call     qword ptr [rip + 0xe9012]
000000014059b2e6 shr      eax, 0x1a
000000014059b2e9 and      eax, r13d
000000014059b2ec mov      dword ptr [rbp - 0x38], eax
000000014059b2ef je       0x14058ebb1
000000014059b2f5 mov      rax, qword ptr [rsi + 0x20]
000000014059b2f9 mov      edx, ebx
000000014059b2fb mov      rcx, qword ptr [rbp + 0x48]
000000014059b2ff call     qword ptr [rip + 0xe8ff3]
000000014059b305 mov      rcx, qword ptr [rbp + 0x48]
000000014059b309 shr      eax, 0x1a
000000014059b30c and      eax, r13d
000000014059b30f mov      dword ptr [rbp - 0x38], eax
000000014059b312 mov      rax, qword ptr [rbp + 0x48]
000000014059b316 mov      rcx, qword ptr [rcx + 8]
000000014059b31a lea      rbx, [rax + 0x1320]
000000014059b321 mov      rax, qword ptr [rax + 0x18]
000000014059b325 mov      rdx, rbx
000000014059b328 mov      rax, qword ptr [rax + 0x108]
000000014059b32f call     qword ptr [rip + 0xe8fc3]
000000014059b335 mov      esi, dword ptr [rbp + 0x58]
000000014059b338 cmp      dword ptr [rdi], esi
000000014059b33a jae      0x14058eaac
000000014059b340 lea      r9, [rip + 0xd7d19]
000000014059b347 jmp      0x140595e71
000000014059b34c mov      rax, qword ptr [rsi + 0x20]
000000014059b350 mov      ebx, 0x11880
000000014059b355 mov      rcx, qword ptr [rbp + 0x48]
000000014059b359 mov      edx, ebx
000000014059b35b call     qword ptr [rip + 0xe8f97]
000000014059b361 shr      eax, 0x19
000000014059b364 and      eax, r13d
000000014059b367 mov      dword ptr [rbp - 0x38], eax
000000014059b36a je       0x14058ebb1
000000014059b370 mov      rax, qword ptr [rsi + 0x20]
000000014059b374 mov      edx, ebx
000000014059b376 mov      rcx, qword ptr [rbp + 0x48]
000000014059b37a call     qword ptr [rip + 0xe8f78]
000000014059b380 mov      rcx, qword ptr [rbp + 0x48]
000000014059b384 shr      eax, 0x19
000000014059b387 and      eax, r13d
000000014059b38a mov      dword ptr [rbp - 0x38], eax
000000014059b38d mov      rax, qword ptr [rbp + 0x48]
000000014059b391 mov      rcx, qword ptr [rcx + 8]
000000014059b395 lea      rbx, [rax + 0x1320]
000000014059b39c mov      rax, qword ptr [rax + 0x18]
000000014059b3a0 mov      rdx, rbx
000000014059b3a3 mov      rax, qword ptr [rax + 0x108]
000000014059b3aa call     qword ptr [rip + 0xe8f48]
000000014059b3b0 mov      esi, dword ptr [rbp + 0x58]
000000014059b3b3 cmp      dword ptr [rdi], esi
000000014059b3b5 jae      0x14058eaac
000000014059b3bb lea      r9, [rip + 0xd7cce]
000000014059b3c2 jmp      0x140595e71
000000014059b3c7 mov      rax, qword ptr [rsi + 0x20]
000000014059b3cb mov      ebx, 0x11880
000000014059b3d0 mov      rcx, qword ptr [rbp + 0x48]
000000014059b3d4 mov      edx, ebx
000000014059b3d6 call     qword ptr [rip + 0xe8f1c]
000000014059b3dc shr      eax, 0x18
000000014059b3df and      eax, r13d
000000014059b3e2 mov      dword ptr [rbp - 0x38], eax
000000014059b3e5 je       0x14058ebb1
000000014059b3eb mov      rax, qword ptr [rsi + 0x20]
000000014059b3ef mov      edx, ebx
000000014059b3f1 mov      rcx, qword ptr [rbp + 0x48]
000000014059b3f5 call     qword ptr [rip + 0xe8efd]
000000014059b3fb mov      rcx, qword ptr [rbp + 0x48]
000000014059b3ff shr      eax, 0x18
000000014059b402 and      eax, r13d
000000014059b405 mov      dword ptr [rbp - 0x38], eax
000000014059b408 mov      rax, qword ptr [rbp + 0x48]
000000014059b40c mov      rcx, qword ptr [rcx + 8]
000000014059b410 lea      rbx, [rax + 0x1320]
000000014059b417 mov      rax, qword ptr [rax + 0x18]
000000014059b41b mov      rdx, rbx
000000014059b41e mov      rax, qword ptr [rax + 0x108]
000000014059b425 call     qword ptr [rip + 0xe8ecd]
000000014059b42b mov      esi, dword ptr [rbp + 0x58]
000000014059b42e cmp      dword ptr [rdi], esi
000000014059b430 jae      0x14058eaac
000000014059b436 lea      r9, [rip + 0xd7c83]
000000014059b43d jmp      0x140595e71
000000014059b442 mov      rax, qword ptr [rsi + 0x20]
000000014059b446 mov      ebx, 0x11880
000000014059b44b mov      rcx, qword ptr [rbp + 0x48]
000000014059b44f mov      edx, ebx
000000014059b451 call     qword ptr [rip + 0xe8ea1]
000000014059b457 shr      eax, 0x17
000000014059b45a and      eax, r13d
000000014059b45d mov      dword ptr [rbp - 0x38], eax
000000014059b460 je       0x14058ebb1
000000014059b466 mov      rax, qword ptr [rsi + 0x20]
000000014059b46a mov      edx, ebx
000000014059b46c mov      rcx, qword ptr [rbp + 0x48]
000000014059b470 call     qword ptr [rip + 0xe8e82]
000000014059b476 mov      rcx, qword ptr [rbp + 0x48]
000000014059b47a shr      eax, 0x17
000000014059b47d and      eax, r13d
000000014059b480 mov      dword ptr [rbp - 0x38], eax
000000014059b483 mov      rax, qword ptr [rbp + 0x48]
000000014059b487 mov      rcx, qword ptr [rcx + 8]
000000014059b48b lea      rbx, [rax + 0x1320]
000000014059b492 mov      rax, qword ptr [rax + 0x18]
000000014059b496 mov      rdx, rbx
000000014059b499 mov      rax, qword ptr [rax + 0x108]
000000014059b4a0 call     qword ptr [rip + 0xe8e52]
000000014059b4a6 mov      esi, dword ptr [rbp + 0x58]
000000014059b4a9 cmp      dword ptr [rdi], esi
000000014059b4ab jae      0x14058eaac
000000014059b4b1 lea      r9, [rip + 0xd7c38]
000000014059b4b8 jmp      0x140595e71
000000014059b4bd mov      rax, qword ptr [rsi + 0x20]
000000014059b4c1 mov      ebx, 0x11880
000000014059b4c6 mov      rcx, qword ptr [rbp + 0x48]
000000014059b4ca mov      edx, ebx
000000014059b4cc call     qword ptr [rip + 0xe8e26]
000000014059b4d2 shr      eax, 0x16
000000014059b4d5 and      eax, r13d
000000014059b4d8 mov      dword ptr [rbp - 0x38], eax
000000014059b4db je       0x14058ebb1
000000014059b4e1 mov      rax, qword ptr [rsi + 0x20]
000000014059b4e5 mov      edx, ebx
000000014059b4e7 mov      rcx, qword ptr [rbp + 0x48]
000000014059b4eb call     qword ptr [rip + 0xe8e07]
000000014059b4f1 mov      rcx, qword ptr [rbp + 0x48]
000000014059b4f5 shr      eax, 0x16
000000014059b4f8 and      eax, r13d
000000014059b4fb mov      dword ptr [rbp - 0x38], eax
000000014059b4fe mov      rax, qword ptr [rbp + 0x48]
000000014059b502 mov      rcx, qword ptr [rcx + 8]
000000014059b506 lea      rbx, [rax + 0x1320]
000000014059b50d mov      rax, qword ptr [rax + 0x18]
000000014059b511 mov      rdx, rbx
000000014059b514 mov      rax, qword ptr [rax + 0x108]
000000014059b51b call     qword ptr [rip + 0xe8dd7]
000000014059b521 mov      esi, dword ptr [rbp + 0x58]
000000014059b524 cmp      dword ptr [rdi], esi
000000014059b526 jae      0x14058eaac
000000014059b52c lea      r9, [rip + 0xd7bed]
000000014059b533 jmp      0x140595e71
000000014059b538 mov      rax, qword ptr [rsi + 0x20]
000000014059b53c mov      ebx, 0x11880
000000014059b541 mov      rcx, qword ptr [rbp + 0x48]
000000014059b545 mov      edx, ebx
000000014059b547 call     qword ptr [rip + 0xe8dab]
000000014059b54d shr      eax, 0x15
000000014059b550 and      eax, r13d
000000014059b553 mov      dword ptr [rbp - 0x38], eax
000000014059b556 je       0x14058ebb1
000000014059b55c mov      rax, qword ptr [rsi + 0x20]
000000014059b560 mov      edx, ebx
000000014059b562 mov      rcx, qword ptr [rbp + 0x48]
000000014059b566 call     qword ptr [rip + 0xe8d8c]
000000014059b56c mov      rcx, qword ptr [rbp + 0x48]
000000014059b570 shr      eax, 0x15
000000014059b573 and      eax, r13d
000000014059b576 mov      dword ptr [rbp - 0x38], eax
000000014059b579 mov      rax, qword ptr [rbp + 0x48]
000000014059b57d mov      rcx, qword ptr [rcx + 8]
000000014059b581 lea      rbx, [rax + 0x1320]
000000014059b588 mov      rax, qword ptr [rax + 0x18]
000000014059b58c mov      rdx, rbx
000000014059b58f mov      rax, qword ptr [rax + 0x108]
000000014059b596 call     qword ptr [rip + 0xe8d5c]
000000014059b59c mov      esi, dword ptr [rbp + 0x58]
000000014059b59f cmp      dword ptr [rdi], esi
000000014059b5a1 jae      0x14058eaac
000000014059b5a7 lea      r9, [rip + 0xd7ba2]
000000014059b5ae jmp      0x140595e71
000000014059b5b3 mov      rax, qword ptr [rsi + 0x20]
000000014059b5b7 mov      ebx, 0x11880
000000014059b5bc mov      rcx, qword ptr [rbp + 0x48]
000000014059b5c0 mov      edx, ebx
000000014059b5c2 call     qword ptr [rip + 0xe8d30]
000000014059b5c8 shr      eax, 0x14
000000014059b5cb and      eax, r13d
000000014059b5ce mov      dword ptr [rbp - 0x38], eax
000000014059b5d1 je       0x14058ebb1
000000014059b5d7 mov      rax, qword ptr [rsi + 0x20]
000000014059b5db mov      edx, ebx
000000014059b5dd mov      rcx, qword ptr [rbp + 0x48]
000000014059b5e1 call     qword ptr [rip + 0xe8d11]
000000014059b5e7 mov      rcx, qword ptr [rbp + 0x48]
000000014059b5eb shr      eax, 0x14
000000014059b5ee and      eax, r13d
000000014059b5f1 mov      dword ptr [rbp - 0x38], eax
000000014059b5f4 mov      rax, qword ptr [rbp + 0x48]
000000014059b5f8 mov      rcx, qword ptr [rcx + 8]
000000014059b5fc lea      rbx, [rax + 0x1320]
000000014059b603 mov      rax, qword ptr [rax + 0x18]
000000014059b607 mov      rdx, rbx
000000014059b60a mov      rax, qword ptr [rax + 0x108]
000000014059b611 call     qword ptr [rip + 0xe8ce1]
000000014059b617 mov      esi, dword ptr [rbp + 0x58]
000000014059b61a cmp      dword ptr [rdi], esi
000000014059b61c jae      0x14058eaac
000000014059b622 lea      r9, [rip + 0xd7b57]
000000014059b629 jmp      0x140595e71
000000014059b62e mov      rax, qword ptr [rsi + 0x20]
000000014059b632 mov      ebx, 0x11880
000000014059b637 mov      rcx, qword ptr [rbp + 0x48]
000000014059b63b mov      edx, ebx
000000014059b63d call     qword ptr [rip + 0xe8cb5]
000000014059b643 shr      eax, 0x13
000000014059b646 and      eax, r13d
000000014059b649 mov      dword ptr [rbp - 0x38], eax
000000014059b64c je       0x14058ebb1
000000014059b652 mov      rax, qword ptr [rsi + 0x20]
000000014059b656 mov      edx, ebx
000000014059b658 mov      rcx, qword ptr [rbp + 0x48]
000000014059b65c call     qword ptr [rip + 0xe8c96]
000000014059b662 mov      rcx, qword ptr [rbp + 0x48]
000000014059b666 shr      eax, 0x13
000000014059b669 and      eax, r13d
000000014059b66c mov      dword ptr [rbp - 0x38], eax
000000014059b66f mov      rax, qword ptr [rbp + 0x48]
000000014059b673 mov      rcx, qword ptr [rcx + 8]
000000014059b677 lea      rbx, [rax + 0x1320]
000000014059b67e mov      rax, qword ptr [rax + 0x18]
000000014059b682 mov      rdx, rbx
000000014059b685 mov      rax, qword ptr [rax + 0x108]
000000014059b68c call     qword ptr [rip + 0xe8c66]
000000014059b692 mov      esi, dword ptr [rbp + 0x58]
000000014059b695 cmp      dword ptr [rdi], esi
000000014059b697 jae      0x14058eaac
000000014059b69d lea      r9, [rip + 0xd7b0c]
000000014059b6a4 jmp      0x140595e71
000000014059b6a9 mov      rax, qword ptr [rsi + 0x20]
000000014059b6ad mov      ebx, 0x11880
000000014059b6b2 mov      rcx, qword ptr [rbp + 0x48]
000000014059b6b6 mov      edx, ebx
000000014059b6b8 call     qword ptr [rip + 0xe8c3a]
000000014059b6be shr      eax, 0x12
000000014059b6c1 and      eax, r13d
000000014059b6c4 mov      dword ptr [rbp - 0x38], eax
000000014059b6c7 je       0x14058ebb1
000000014059b6cd mov      rax, qword ptr [rsi + 0x20]
000000014059b6d1 mov      edx, ebx
000000014059b6d3 mov      rcx, qword ptr [rbp + 0x48]
000000014059b6d7 call     qword ptr [rip + 0xe8c1b]
000000014059b6dd mov      rcx, qword ptr [rbp + 0x48]
000000014059b6e1 shr      eax, 0x12
000000014059b6e4 and      eax, r13d
000000014059b6e7 mov      dword ptr [rbp - 0x38], eax
000000014059b6ea mov      rax, qword ptr [rbp + 0x48]
000000014059b6ee mov      rcx, qword ptr [rcx + 8]
000000014059b6f2 lea      rbx, [rax + 0x1320]
000000014059b6f9 mov      rax, qword ptr [rax + 0x18]
000000014059b6fd mov      rdx, rbx
000000014059b700 mov      rax, qword ptr [rax + 0x108]
000000014059b707 call     qword ptr [rip + 0xe8beb]
000000014059b70d mov      esi, dword ptr [rbp + 0x58]
000000014059b710 cmp      dword ptr [rdi], esi
000000014059b712 jae      0x14058eaac
000000014059b718 lea      r9, [rip + 0xd7ac1]
000000014059b71f jmp      0x140595e71
000000014059b724 mov      rax, qword ptr [rsi + 0x20]
000000014059b728 mov      ebx, 0x11880
000000014059b72d mov      rcx, qword ptr [rbp + 0x48]
000000014059b731 mov      edx, ebx
000000014059b733 call     qword ptr [rip + 0xe8bbf]
000000014059b739 shr      eax, 0x11
000000014059b73c and      eax, r13d
000000014059b73f mov      dword ptr [rbp - 0x38], eax
000000014059b742 je       0x14058ebb1
000000014059b748 mov      rax, qword ptr [rsi + 0x20]
000000014059b74c mov      edx, ebx
000000014059b74e mov      rcx, qword ptr [rbp + 0x48]
000000014059b752 call     qword ptr [rip + 0xe8ba0]
000000014059b758 mov      rcx, qword ptr [rbp + 0x48]
000000014059b75c shr      eax, 0x11
000000014059b75f and      eax, r13d
000000014059b762 mov      dword ptr [rbp - 0x38], eax
000000014059b765 mov      rax, qword ptr [rbp + 0x48]
000000014059b769 mov      rcx, qword ptr [rcx + 8]
000000014059b76d lea      rbx, [rax + 0x1320]
000000014059b774 mov      rax, qword ptr [rax + 0x18]
000000014059b778 mov      rdx, rbx
000000014059b77b mov      rax, qword ptr [rax + 0x108]
000000014059b782 call     qword ptr [rip + 0xe8b70]
000000014059b788 mov      esi, dword ptr [rbp + 0x58]
000000014059b78b cmp      dword ptr [rdi], esi
000000014059b78d jae      0x14058eaac
000000014059b793 lea      r9, [rip + 0xd7a76]
000000014059b79a jmp      0x140595e71
000000014059b79f mov      rax, qword ptr [rsi + 0x20]
000000014059b7a3 mov      ebx, 0x11880
000000014059b7a8 mov      rcx, qword ptr [rbp + 0x48]
000000014059b7ac mov      edx, ebx
000000014059b7ae call     qword ptr [rip + 0xe8b44]
000000014059b7b4 shr      eax, 0x10
000000014059b7b7 and      eax, r13d
000000014059b7ba mov      dword ptr [rbp - 0x38], eax
000000014059b7bd je       0x14058ebb1
000000014059b7c3 mov      rax, qword ptr [rsi + 0x20]
000000014059b7c7 mov      edx, ebx
000000014059b7c9 mov      rcx, qword ptr [rbp + 0x48]
000000014059b7cd call     qword ptr [rip + 0xe8b25]
000000014059b7d3 mov      rcx, qword ptr [rbp + 0x48]
000000014059b7d7 shr      eax, 0x10
000000014059b7da and      eax, r13d
000000014059b7dd mov      dword ptr [rbp - 0x38], eax
000000014059b7e0 mov      rax, qword ptr [rbp + 0x48]
000000014059b7e4 mov      rcx, qword ptr [rcx + 8]
000000014059b7e8 lea      rbx, [rax + 0x1320]
000000014059b7ef mov      rax, qword ptr [rax + 0x18]
000000014059b7f3 mov      rdx, rbx
000000014059b7f6 mov      rax, qword ptr [rax + 0x108]
000000014059b7fd call     qword ptr [rip + 0xe8af5]
000000014059b803 mov      esi, dword ptr [rbp + 0x58]
000000014059b806 cmp      dword ptr [rdi], esi
000000014059b808 jae      0x14058eaac
000000014059b80e lea      r9, [rip + 0xd7a2b]
000000014059b815 jmp      0x140595e71
000000014059b81a mov      rax, qword ptr [rsi + 0x10]
000000014059b81e mov      ebx, 0x11880
000000014059b823 mov      rcx, qword ptr [rbp + 0x48]
000000014059b827 mov      edx, ebx
000000014059b829 call     qword ptr [rip + 0xe8ac9]
000000014059b82f movzx    eax, ax
000000014059b832 shr      eax, 0xf
000000014059b835 mov      dword ptr [rbp - 0x38], eax
000000014059b838 test     eax, eax
000000014059b83a je       0x14058ebb1
000000014059b840 mov      rax, qword ptr [rsi + 0x10]
000000014059b844 mov      edx, ebx
000000014059b846 mov      rcx, qword ptr [rbp + 0x48]
000000014059b84a call     qword ptr [rip + 0xe8aa8]
000000014059b850 mov      rcx, qword ptr [rbp + 0x48]
000000014059b854 movzx    eax, ax
000000014059b857 shr      eax, 0xf
000000014059b85a mov      dword ptr [rbp - 0x38], eax
000000014059b85d mov      rax, qword ptr [rbp + 0x48]
000000014059b861 mov      rcx, qword ptr [rcx + 8]
000000014059b865 lea      rbx, [rax + 0x1320]
000000014059b86c mov      rax, qword ptr [rax + 0x18]
000000014059b870 mov      rdx, rbx
000000014059b873 mov      rax, qword ptr [rax + 0x108]
000000014059b87a call     qword ptr [rip + 0xe8a78]
000000014059b880 mov      esi, dword ptr [rbp + 0x58]
000000014059b883 cmp      dword ptr [rdi], esi
000000014059b885 jae      0x14058eaac
000000014059b88b lea      r9, [rip + 0xd79de]
000000014059b892 jmp      0x140595e71
000000014059b897 mov      rax, qword ptr [rsi + 0x10]
000000014059b89b mov      ebx, 0x11880
000000014059b8a0 mov      rcx, qword ptr [rbp + 0x48]
000000014059b8a4 mov      edx, ebx
000000014059b8a6 call     qword ptr [rip + 0xe8a4c]
000000014059b8ac shr      eax, 0xe
000000014059b8af and      eax, r13d
000000014059b8b2 mov      dword ptr [rbp - 0x38], eax
000000014059b8b5 je       0x14058ebb1
000000014059b8bb mov      rax, qword ptr [rsi + 0x10]
000000014059b8bf mov      edx, ebx
000000014059b8c1 mov      rcx, qword ptr [rbp + 0x48]
000000014059b8c5 call     qword ptr [rip + 0xe8a2d]
000000014059b8cb mov      rcx, qword ptr [rbp + 0x48]
000000014059b8cf shr      eax, 0xe
000000014059b8d2 and      eax, r13d
000000014059b8d5 mov      dword ptr [rbp - 0x38], eax
000000014059b8d8 mov      rax, qword ptr [rbp + 0x48]
000000014059b8dc mov      rcx, qword ptr [rcx + 8]
000000014059b8e0 lea      rbx, [rax + 0x1320]
000000014059b8e7 mov      rax, qword ptr [rax + 0x18]
000000014059b8eb mov      rdx, rbx
000000014059b8ee mov      rax, qword ptr [rax + 0x108]
000000014059b8f5 call     qword ptr [rip + 0xe89fd]
000000014059b8fb mov      esi, dword ptr [rbp + 0x58]
000000014059b8fe cmp      dword ptr [rdi], esi
000000014059b900 jae      0x14058eaac
000000014059b906 lea      r9, [rip + 0xd7993]
000000014059b90d jmp      0x140595e71
000000014059b912 mov      rax, qword ptr [rsi + 0x10]
000000014059b916 mov      ebx, 0x11880
000000014059b91b mov      rcx, qword ptr [rbp + 0x48]
000000014059b91f mov      edx, ebx
000000014059b921 call     qword ptr [rip + 0xe89d1]
000000014059b927 shr      eax, 0xd
000000014059b92a and      eax, r13d
000000014059b92d mov      dword ptr [rbp - 0x38], eax
000000014059b930 je       0x14058ebb1
000000014059b936 mov      rax, qword ptr [rsi + 0x10]
000000014059b93a mov      edx, ebx
000000014059b93c mov      rcx, qword ptr [rbp + 0x48]
000000014059b940 call     qword ptr [rip + 0xe89b2]
000000014059b946 mov      rcx, qword ptr [rbp + 0x48]
000000014059b94a shr      eax, 0xd
000000014059b94d and      eax, r13d
000000014059b950 mov      dword ptr [rbp - 0x38], eax
000000014059b953 mov      rax, qword ptr [rbp + 0x48]
000000014059b957 mov      rcx, qword ptr [rcx + 8]
000000014059b95b lea      rbx, [rax + 0x1320]
000000014059b962 mov      rax, qword ptr [rax + 0x18]
000000014059b966 mov      rdx, rbx
000000014059b969 mov      rax, qword ptr [rax + 0x108]
000000014059b970 call     qword ptr [rip + 0xe8982]
000000014059b976 mov      esi, dword ptr [rbp + 0x58]
000000014059b979 cmp      dword ptr [rdi], esi
000000014059b97b jae      0x14058eaac
000000014059b981 lea      r9, [rip + 0xd7948]
000000014059b988 jmp      0x140595e71
000000014059b98d mov      rax, qword ptr [rsi + 0x10]
000000014059b991 mov      ebx, 0x11880
000000014059b996 mov      rcx, qword ptr [rbp + 0x48]
000000014059b99a mov      edx, ebx
000000014059b99c call     qword ptr [rip + 0xe8956]
000000014059b9a2 shr      eax, 0xc
000000014059b9a5 and      eax, r13d
000000014059b9a8 mov      dword ptr [rbp - 0x38], eax
000000014059b9ab je       0x14058ebb1
000000014059b9b1 mov      rax, qword ptr [rsi + 0x10]
000000014059b9b5 mov      edx, ebx
000000014059b9b7 mov      rcx, qword ptr [rbp + 0x48]
000000014059b9bb call     qword ptr [rip + 0xe8937]
000000014059b9c1 mov      rcx, qword ptr [rbp + 0x48]
000000014059b9c5 shr      eax, 0xc
000000014059b9c8 and      eax, r13d
000000014059b9cb mov      dword ptr [rbp - 0x38], eax
000000014059b9ce mov      rax, qword ptr [rbp + 0x48]
000000014059b9d2 mov      rcx, qword ptr [rcx + 8]
000000014059b9d6 lea      rbx, [rax + 0x1320]
000000014059b9dd mov      rax, qword ptr [rax + 0x18]
000000014059b9e1 mov      rdx, rbx
000000014059b9e4 mov      rax, qword ptr [rax + 0x108]
000000014059b9eb call     qword ptr [rip + 0xe8907]
000000014059b9f1 mov      esi, dword ptr [rbp + 0x58]
000000014059b9f4 cmp      dword ptr [rdi], esi
000000014059b9f6 jae      0x14058eaac
000000014059b9fc lea      r9, [rip + 0xd78fd]
000000014059ba03 jmp      0x140595e71
000000014059ba08 mov      rax, qword ptr [rsi + 0x10]
000000014059ba0c mov      ebx, 0x11880
000000014059ba11 mov      rcx, qword ptr [rbp + 0x48]
000000014059ba15 mov      edx, ebx
000000014059ba17 call     qword ptr [rip + 0xe88db]
000000014059ba1d shr      eax, 0xb
000000014059ba20 and      eax, r13d
000000014059ba23 mov      dword ptr [rbp - 0x38], eax
000000014059ba26 je       0x14058ebb1
000000014059ba2c mov      rax, qword ptr [rsi + 0x10]
000000014059ba30 mov      edx, ebx
000000014059ba32 mov      rcx, qword ptr [rbp + 0x48]
000000014059ba36 call     qword ptr [rip + 0xe88bc]
000000014059ba3c mov      rcx, qword ptr [rbp + 0x48]
000000014059ba40 shr      eax, 0xb
000000014059ba43 and      eax, r13d
000000014059ba46 mov      dword ptr [rbp - 0x38], eax
000000014059ba49 mov      rax, qword ptr [rbp + 0x48]
000000014059ba4d mov      rcx, qword ptr [rcx + 8]
000000014059ba51 lea      rbx, [rax + 0x1320]
000000014059ba58 mov      rax, qword ptr [rax + 0x18]
000000014059ba5c mov      rdx, rbx
000000014059ba5f mov      rax, qword ptr [rax + 0x108]
000000014059ba66 call     qword ptr [rip + 0xe888c]
000000014059ba6c mov      esi, dword ptr [rbp + 0x58]
000000014059ba6f cmp      dword ptr [rdi], esi
000000014059ba71 jae      0x14058eaac
000000014059ba77 lea      r9, [rip + 0xd78b2]
000000014059ba7e jmp      0x140595e71
000000014059ba83 mov      rax, qword ptr [rsi + 0x10]
000000014059ba87 mov      ebx, 0x11880
000000014059ba8c mov      rcx, qword ptr [rbp + 0x48]
000000014059ba90 mov      edx, ebx
000000014059ba92 call     qword ptr [rip + 0xe8860]
000000014059ba98 shr      eax, 0xa
000000014059ba9b and      eax, r13d
000000014059ba9e mov      dword ptr [rbp - 0x38], eax
000000014059baa1 je       0x14058ebb1
000000014059baa7 mov      rax, qword ptr [rsi + 0x10]
000000014059baab mov      edx, ebx
000000014059baad mov      rcx, qword ptr [rbp + 0x48]
000000014059bab1 call     qword ptr [rip + 0xe8841]
000000014059bab7 mov      rcx, qword ptr [rbp + 0x48]
000000014059babb shr      eax, 0xa
000000014059babe and      eax, r13d
000000014059bac1 mov      dword ptr [rbp - 0x38], eax
000000014059bac4 mov      rax, qword ptr [rbp + 0x48]
000000014059bac8 mov      rcx, qword ptr [rcx + 8]
000000014059bacc lea      rbx, [rax + 0x1320]
000000014059bad3 mov      rax, qword ptr [rax + 0x18]
000000014059bad7 mov      rdx, rbx
000000014059bada mov      rax, qword ptr [rax + 0x108]
000000014059bae1 call     qword ptr [rip + 0xe8811]
000000014059bae7 mov      esi, dword ptr [rbp + 0x58]
000000014059baea cmp      dword ptr [rdi], esi
000000014059baec jae      0x14058eaac
000000014059baf2 lea      r9, [rip + 0xd7867]
000000014059baf9 jmp      0x140595e71
000000014059bafe mov      rax, qword ptr [rsi + 0x10]
000000014059bb02 mov      ebx, 0x11880
000000014059bb07 mov      rcx, qword ptr [rbp + 0x48]
000000014059bb0b mov      edx, ebx
000000014059bb0d call     qword ptr [rip + 0xe87e5]
000000014059bb13 shr      eax, 9
000000014059bb16 and      eax, r13d
000000014059bb19 mov      dword ptr [rbp - 0x38], eax
000000014059bb1c je       0x14058ebb1
000000014059bb22 mov      rax, qword ptr [rsi + 0x10]
000000014059bb26 mov      edx, ebx
000000014059bb28 mov      rcx, qword ptr [rbp + 0x48]
000000014059bb2c call     qword ptr [rip + 0xe87c6]
000000014059bb32 mov      rcx, qword ptr [rbp + 0x48]
000000014059bb36 shr      eax, 9
000000014059bb39 and      eax, r13d
000000014059bb3c mov      dword ptr [rbp - 0x38], eax
000000014059bb3f mov      rax, qword ptr [rbp + 0x48]
000000014059bb43 mov      rcx, qword ptr [rcx + 8]
000000014059bb47 lea      rbx, [rax + 0x1320]
000000014059bb4e mov      rax, qword ptr [rax + 0x18]
000000014059bb52 mov      rdx, rbx
000000014059bb55 mov      rax, qword ptr [rax + 0x108]
000000014059bb5c call     qword ptr [rip + 0xe8796]
000000014059bb62 mov      esi, dword ptr [rbp + 0x58]
000000014059bb65 cmp      dword ptr [rdi], esi
000000014059bb67 jae      0x14058eaac
000000014059bb6d lea      r9, [rip + 0xd781c]
000000014059bb74 jmp      0x140595e71
000000014059bb79 mov      rax, qword ptr [rsi + 0x10]
000000014059bb7d mov      ebx, 0x11880
000000014059bb82 mov      rcx, qword ptr [rbp + 0x48]
000000014059bb86 mov      edx, ebx
000000014059bb88 call     qword ptr [rip + 0xe876a]
000000014059bb8e shr      eax, 8
000000014059bb91 and      eax, r13d
000000014059bb94 mov      dword ptr [rbp - 0x38], eax
000000014059bb97 je       0x14058ebb1
000000014059bb9d mov      rax, qword ptr [rsi + 0x10]
000000014059bba1 mov      edx, ebx
000000014059bba3 mov      rcx, qword ptr [rbp + 0x48]
000000014059bba7 call     qword ptr [rip + 0xe874b]
000000014059bbad mov      rcx, qword ptr [rbp + 0x48]
000000014059bbb1 shr      eax, 8
000000014059bbb4 and      eax, r13d
000000014059bbb7 mov      dword ptr [rbp - 0x38], eax
000000014059bbba mov      rax, qword ptr [rbp + 0x48]
000000014059bbbe mov      rcx, qword ptr [rcx + 8]
000000014059bbc2 lea      rbx, [rax + 0x1320]
000000014059bbc9 mov      rax, qword ptr [rax + 0x18]
000000014059bbcd mov      rdx, rbx
000000014059bbd0 mov      rax, qword ptr [rax + 0x108]
000000014059bbd7 call     qword ptr [rip + 0xe871b]
000000014059bbdd mov      esi, dword ptr [rbp + 0x58]
000000014059bbe0 cmp      dword ptr [rdi], esi
000000014059bbe2 jae      0x14058eaac
000000014059bbe8 lea      r9, [rip + 0xd77c1]
000000014059bbef jmp      0x140595e71
000000014059bbf4 mov      rax, qword ptr [rsi]
000000014059bbf7 mov      ebx, 0x11880
000000014059bbfc mov      rcx, qword ptr [rbp + 0x48]
000000014059bc00 mov      edx, ebx
000000014059bc02 call     qword ptr [rip + 0xe86f0]
000000014059bc08 movzx    eax, al
000000014059bc0b shr      eax, 7
000000014059bc0e mov      dword ptr [rbp - 0x38], eax
000000014059bc11 test     eax, eax
000000014059bc13 je       0x14058ebb1
000000014059bc19 mov      rax, qword ptr [rsi]
000000014059bc1c mov      edx, ebx
000000014059bc1e mov      rcx, qword ptr [rbp + 0x48]
000000014059bc22 call     qword ptr [rip + 0xe86d0]
000000014059bc28 mov      rcx, qword ptr [rbp + 0x48]
000000014059bc2c movzx    eax, al
000000014059bc2f shr      eax, 7
000000014059bc32 mov      dword ptr [rbp - 0x38], eax
000000014059bc35 mov      rax, qword ptr [rbp + 0x48]
000000014059bc39 mov      rcx, qword ptr [rcx + 8]
000000014059bc3d lea      rbx, [rax + 0x1320]
000000014059bc44 mov      rax, qword ptr [rax + 0x18]
000000014059bc48 mov      rdx, rbx
000000014059bc4b mov      rax, qword ptr [rax + 0x108]
000000014059bc52 call     qword ptr [rip + 0xe86a0]
000000014059bc58 mov      esi, dword ptr [rbp + 0x58]
000000014059bc5b cmp      dword ptr [rdi], esi
000000014059bc5d jae      0x14058eaac
000000014059bc63 lea      r9, [rip + 0xd7766]
000000014059bc6a jmp      0x140595e71
000000014059bc6f mov      rax, qword ptr [rsi]
000000014059bc72 mov      ebx, 0x11880
000000014059bc77 mov      rcx, qword ptr [rbp + 0x48]
000000014059bc7b mov      edx, ebx
000000014059bc7d call     qword ptr [rip + 0xe8675]
000000014059bc83 shr      eax, 6
000000014059bc86 and      eax, r13d
000000014059bc89 mov      dword ptr [rbp - 0x38], eax
000000014059bc8c je       0x14058ebb1
000000014059bc92 mov      rax, qword ptr [rsi]
000000014059bc95 mov      edx, ebx
000000014059bc97 mov      rcx, qword ptr [rbp + 0x48]
000000014059bc9b call     qword ptr [rip + 0xe8657]
000000014059bca1 mov      rcx, qword ptr [rbp + 0x48]
000000014059bca5 shr      eax, 6
000000014059bca8 and      eax, r13d
000000014059bcab mov      dword ptr [rbp - 0x38], eax
000000014059bcae mov      rax, qword ptr [rbp + 0x48]
000000014059bcb2 mov      rcx, qword ptr [rcx + 8]
000000014059bcb6 lea      rbx, [rax + 0x1320]
000000014059bcbd mov      rax, qword ptr [rax + 0x18]
000000014059bcc1 mov      rdx, rbx
000000014059bcc4 mov      rax, qword ptr [rax + 0x108]
000000014059bccb call     qword ptr [rip + 0xe8627]
000000014059bcd1 mov      esi, dword ptr [rbp + 0x58]
000000014059bcd4 cmp      dword ptr [rdi], esi
000000014059bcd6 jae      0x14058eaac
000000014059bcdc lea      r9, [rip + 0xd770d]
000000014059bce3 jmp      0x140595e71
000000014059bce8 mov      rax, qword ptr [rsi]
000000014059bceb mov      ebx, 0x11880
000000014059bcf0 mov      rcx, qword ptr [rbp + 0x48]
000000014059bcf4 mov      edx, ebx
000000014059bcf6 call     qword ptr [rip + 0xe85fc]
000000014059bcfc shr      eax, 5
000000014059bcff and      eax, r13d
000000014059bd02 mov      dword ptr [rbp - 0x38], eax
000000014059bd05 je       0x14058ebb1
000000014059bd0b mov      rax, qword ptr [rsi]
000000014059bd0e mov      edx, ebx
000000014059bd10 mov      rcx, qword ptr [rbp + 0x48]
000000014059bd14 call     qword ptr [rip + 0xe85de]
000000014059bd1a mov      rcx, qword ptr [rbp + 0x48]
000000014059bd1e shr      eax, 5
000000014059bd21 and      eax, r13d
000000014059bd24 mov      dword ptr [rbp - 0x38], eax
000000014059bd27 mov      rax, qword ptr [rbp + 0x48]
000000014059bd2b mov      rcx, qword ptr [rcx + 8]
000000014059bd2f lea      rbx, [rax + 0x1320]
000000014059bd36 mov      rax, qword ptr [rax + 0x18]
000000014059bd3a mov      rdx, rbx
000000014059bd3d mov      rax, qword ptr [rax + 0x108]
000000014059bd44 call     qword ptr [rip + 0xe85ae]
000000014059bd4a mov      esi, dword ptr [rbp + 0x58]
000000014059bd4d cmp      dword ptr [rdi], esi
000000014059bd4f jae      0x14058eaac
000000014059bd55 lea      r9, [rip + 0xd76b4]
000000014059bd5c jmp      0x140595e71
000000014059bd61 mov      rax, qword ptr [rsi]
000000014059bd64 mov      ebx, 0x11880
000000014059bd69 mov      rcx, qword ptr [rbp + 0x48]
000000014059bd6d mov      edx, ebx
000000014059bd6f call     qword ptr [rip + 0xe8583]
000000014059bd75 shr      eax, 4
000000014059bd78 and      eax, r13d
000000014059bd7b mov      dword ptr [rbp - 0x38], eax
000000014059bd7e je       0x14058ebb1
000000014059bd84 mov      rax, qword ptr [rsi]
000000014059bd87 mov      edx, ebx
000000014059bd89 mov      rcx, qword ptr [rbp + 0x48]
000000014059bd8d call     qword ptr [rip + 0xe8565]
000000014059bd93 mov      rcx, qword ptr [rbp + 0x48]
000000014059bd97 shr      eax, 4
000000014059bd9a and      eax, r13d
000000014059bd9d mov      dword ptr [rbp - 0x38], eax
000000014059bda0 mov      rax, qword ptr [rbp + 0x48]
000000014059bda4 mov      rcx, qword ptr [rcx + 8]
000000014059bda8 lea      rbx, [rax + 0x1320]
000000014059bdaf mov      rax, qword ptr [rax + 0x18]
000000014059bdb3 mov      rdx, rbx
000000014059bdb6 mov      rax, qword ptr [rax + 0x108]
000000014059bdbd call     qword ptr [rip + 0xe8535]
000000014059bdc3 mov      esi, dword ptr [rbp + 0x58]
000000014059bdc6 cmp      dword ptr [rdi], esi
000000014059bdc8 jae      0x14058eaac
000000014059bdce lea      r9, [rip + 0xd765b]
000000014059bdd5 jmp      0x140595e71
000000014059bdda mov      rax, qword ptr [rsi]
000000014059bddd mov      ebx, 0x11880
000000014059bde2 mov      rcx, qword ptr [rbp + 0x48]
000000014059bde6 mov      edx, ebx
000000014059bde8 call     qword ptr [rip + 0xe850a]
000000014059bdee shr      eax, 3
000000014059bdf1 and      eax, r13d
000000014059bdf4 mov      dword ptr [rbp - 0x38], eax
000000014059bdf7 je       0x14058ebb1
000000014059bdfd mov      rax, qword ptr [rsi]
000000014059be00 mov      edx, ebx
000000014059be02 mov      rcx, qword ptr [rbp + 0x48]
000000014059be06 call     qword ptr [rip + 0xe84ec]
000000014059be0c mov      rcx, qword ptr [rbp + 0x48]
000000014059be10 shr      eax, 3
000000014059be13 and      eax, r13d
000000014059be16 mov      dword ptr [rbp - 0x38], eax
000000014059be19 mov      rax, qword ptr [rbp + 0x48]
000000014059be1d mov      rcx, qword ptr [rcx + 8]
000000014059be21 lea      rbx, [rax + 0x1320]
000000014059be28 mov      rax, qword ptr [rax + 0x18]
000000014059be2c mov      rdx, rbx
000000014059be2f mov      rax, qword ptr [rax + 0x108]
000000014059be36 call     qword ptr [rip + 0xe84bc]
000000014059be3c mov      esi, dword ptr [rbp + 0x58]
000000014059be3f cmp      dword ptr [rdi], esi
000000014059be41 jae      0x14058eaac
000000014059be47 lea      r9, [rip + 0xd7602]
000000014059be4e jmp      0x140595e71
000000014059be53 mov      rax, qword ptr [rsi]
000000014059be56 mov      ebx, 0x11880
000000014059be5b mov      rcx, qword ptr [rbp + 0x48]
000000014059be5f mov      edx, ebx
000000014059be61 call     qword ptr [rip + 0xe8491]
000000014059be67 shr      eax, 2
000000014059be6a and      eax, r13d
000000014059be6d mov      dword ptr [rbp - 0x38], eax
000000014059be70 je       0x14058ebb1
000000014059be76 mov      rax, qword ptr [rsi]
000000014059be79 mov      edx, ebx
000000014059be7b mov      rcx, qword ptr [rbp + 0x48]
000000014059be7f call     qword ptr [rip + 0xe8473]
000000014059be85 mov      rcx, qword ptr [rbp + 0x48]
000000014059be89 shr      eax, 2
000000014059be8c and      eax, r13d
000000014059be8f mov      dword ptr [rbp - 0x38], eax
000000014059be92 mov      rax, qword ptr [rbp + 0x48]
000000014059be96 mov      rcx, qword ptr [rcx + 8]
000000014059be9a lea      rbx, [rax + 0x1320]
000000014059bea1 mov      rax, qword ptr [rax + 0x18]
000000014059bea5 mov      rdx, rbx
000000014059bea8 mov      rax, qword ptr [rax + 0x108]
000000014059beaf call     qword ptr [rip + 0xe8443]
000000014059beb5 mov      esi, dword ptr [rbp + 0x58]
000000014059beb8 cmp      dword ptr [rdi], esi
000000014059beba jae      0x14058eaac
000000014059bec0 lea      r9, [rip + 0xd75a9]
000000014059bec7 jmp      0x140595e71
000000014059becc mov      rax, qword ptr [rsi]
000000014059becf mov      ebx, 0x11880
000000014059bed4 mov      rcx, qword ptr [rbp + 0x48]
000000014059bed8 mov      edx, ebx
000000014059beda call     qword ptr [rip + 0xe8418]
000000014059bee0 shr      eax, 1
000000014059bee2 and      eax, r13d
000000014059bee5 mov      dword ptr [rbp - 0x38], eax
000000014059bee8 je       0x14058ebb1
000000014059beee mov      rax, qword ptr [rsi]
000000014059bef1 mov      edx, ebx
000000014059bef3 mov      rcx, qword ptr [rbp + 0x48]
000000014059bef7 call     qword ptr [rip + 0xe83fb]
000000014059befd mov      rcx, qword ptr [rbp + 0x48]
000000014059bf01 shr      eax, 1
000000014059bf03 and      eax, r13d
000000014059bf06 mov      dword ptr [rbp - 0x38], eax
000000014059bf09 mov      rax, qword ptr [rbp + 0x48]
000000014059bf0d mov      rcx, qword ptr [rcx + 8]
000000014059bf11 lea      rbx, [rax + 0x1320]
000000014059bf18 mov      rax, qword ptr [rax + 0x18]
000000014059bf1c mov      rdx, rbx
000000014059bf1f mov      rax, qword ptr [rax + 0x108]
000000014059bf26 call     qword ptr [rip + 0xe83cc]
000000014059bf2c mov      esi, dword ptr [rbp + 0x58]
000000014059bf2f cmp      dword ptr [rdi], esi
000000014059bf31 jae      0x14058eaac
000000014059bf37 lea      r9, [rip + 0xd7552]
000000014059bf3e jmp      0x140595e71
000000014059bf43 mov      rax, qword ptr [rsi]
000000014059bf46 mov      ebx, 0x11880
000000014059bf4b mov      rcx, qword ptr [rbp + 0x48]
000000014059bf4f mov      edx, ebx
000000014059bf51 call     qword ptr [rip + 0xe83a1]
000000014059bf57 and      eax, r13d
000000014059bf5a mov      dword ptr [rbp - 0x38], eax
000000014059bf5d je       0x14058ebb1
000000014059bf63 mov      rax, qword ptr [rsi]
000000014059bf66 mov      edx, ebx
000000014059bf68 mov      rcx, qword ptr [rbp + 0x48]
000000014059bf6c call     qword ptr [rip + 0xe8386]
000000014059bf72 mov      rcx, qword ptr [rbp + 0x48]
000000014059bf76 and      eax, r13d
000000014059bf79 mov      dword ptr [rbp - 0x38], eax
000000014059bf7c mov      rax, qword ptr [rbp + 0x48]
000000014059bf80 mov      rcx, qword ptr [rcx + 8]
000000014059bf84 lea      rbx, [rax + 0x1320]
000000014059bf8b mov      rax, qword ptr [rax + 0x18]
000000014059bf8f mov      rdx, rbx
000000014059bf92 mov      rax, qword ptr [rax + 0x108]
000000014059bf99 call     qword ptr [rip + 0xe8359]
000000014059bf9f mov      esi, dword ptr [rbp + 0x58]
000000014059bfa2 cmp      dword ptr [rdi], esi
000000014059bfa4 jae      0x14058eaac
000000014059bfaa lea      r9, [rip + 0xd74ff]
000000014059bfb1 jmp      0x140595e71
000000014059bfb6 mov      rax, qword ptr [rsi + 0x20]
000000014059bfba mov      ebx, 0x15870
000000014059bfbf mov      rcx, qword ptr [rbp + 0x48]
000000014059bfc3 mov      edx, ebx
000000014059bfc5 call     qword ptr [rip + 0xe832d]
000000014059bfcb shr      eax, 8
000000014059bfce mov      dword ptr [rbp - 0x38], eax
000000014059bfd1 test     eax, eax
000000014059bfd3 je       0x14058ebb1
000000014059bfd9 mov      rax, qword ptr [rsi + 0x20]
000000014059bfdd mov      edx, ebx
000000014059bfdf mov      rcx, qword ptr [rbp + 0x48]
000000014059bfe3 call     qword ptr [rip + 0xe830f]
000000014059bfe9 mov      rcx, qword ptr [rbp + 0x48]
000000014059bfed shr      eax, 8
000000014059bff0 mov      dword ptr [rbp - 0x38], eax
000000014059bff3 mov      rax, qword ptr [rbp + 0x48]
000000014059bff7 mov      rcx, qword ptr [rcx + 8]
000000014059bffb lea      rbx, [rax + 0x1320]
000000014059c002 mov      rax, qword ptr [rax + 0x18]
000000014059c006 mov      rdx, rbx
000000014059c009 mov      rax, qword ptr [rax + 0x108]
000000014059c010 call     qword ptr [rip + 0xe82e2]
000000014059c016 mov      esi, dword ptr [rbp + 0x58]
000000014059c019 cmp      dword ptr [rdi], esi
000000014059c01b jae      0x14058eaac
000000014059c021 lea      r9, [rip + 0xd74a8]
000000014059c028 jmp      0x140595e71
000000014059c02d mov      rax, qword ptr [rsi + 0x10]
000000014059c031 mov      ebx, 0x1587c
000000014059c036 mov      rcx, qword ptr [rbp + 0x48]
000000014059c03a mov      edx, ebx
000000014059c03c call     qword ptr [rip + 0xe82b6]
000000014059c042 shr      eax, 0xe
000000014059c045 and      eax, r13d
000000014059c048 mov      dword ptr [rbp - 0x38], eax
000000014059c04b je       0x14058ebb1
000000014059c051 mov      rax, qword ptr [rsi + 0x10]
000000014059c055 mov      edx, ebx
000000014059c057 mov      rcx, qword ptr [rbp + 0x48]
000000014059c05b call     qword ptr [rip + 0xe8297]
000000014059c061 mov      rcx, qword ptr [rbp + 0x48]
000000014059c065 shr      eax, 0xe
000000014059c068 and      eax, r13d
000000014059c06b mov      dword ptr [rbp - 0x38], eax
000000014059c06e mov      rax, qword ptr [rbp + 0x48]
000000014059c072 mov      rcx, qword ptr [rcx + 8]
000000014059c076 lea      rbx, [rax + 0x1320]
000000014059c07d mov      rax, qword ptr [rax + 0x18]
000000014059c081 mov      rdx, rbx
000000014059c084 mov      rax, qword ptr [rax + 0x108]
000000014059c08b call     qword ptr [rip + 0xe8267]
000000014059c091 mov      esi, dword ptr [rbp + 0x58]
000000014059c094 cmp      dword ptr [rdi], esi
000000014059c096 jae      0x14058eaac
000000014059c09c lea      r9, [rip + 0xd745d]
000000014059c0a3 jmp      0x140595e71
000000014059c0a8 mov      rax, qword ptr [rsi + 0x10]
000000014059c0ac mov      ebx, 0x1587c
000000014059c0b1 mov      rcx, qword ptr [rbp + 0x48]
000000014059c0b5 mov      edx, ebx
000000014059c0b7 call     qword ptr [rip + 0xe823b]
000000014059c0bd shr      eax, 0xd
000000014059c0c0 and      eax, r13d
000000014059c0c3 mov      dword ptr [rbp - 0x38], eax
000000014059c0c6 je       0x14058ebb1
000000014059c0cc mov      rax, qword ptr [rsi + 0x10]
000000014059c0d0 mov      edx, ebx
000000014059c0d2 mov      rcx, qword ptr [rbp + 0x48]
000000014059c0d6 call     qword ptr [rip + 0xe821c]
000000014059c0dc mov      rcx, qword ptr [rbp + 0x48]
000000014059c0e0 shr      eax, 0xd
000000014059c0e3 and      eax, r13d
000000014059c0e6 mov      dword ptr [rbp - 0x38], eax
000000014059c0e9 mov      rax, qword ptr [rbp + 0x48]
000000014059c0ed mov      rcx, qword ptr [rcx + 8]
000000014059c0f1 lea      rbx, [rax + 0x1320]
000000014059c0f8 mov      rax, qword ptr [rax + 0x18]
000000014059c0fc mov      rdx, rbx
000000014059c0ff mov      rax, qword ptr [rax + 0x108]
000000014059c106 call     qword ptr [rip + 0xe81ec]
000000014059c10c mov      esi, dword ptr [rbp + 0x58]
000000014059c10f cmp      dword ptr [rdi], esi
000000014059c111 jae      0x14058eaac
000000014059c117 lea      r9, [rip + 0xd7412]
000000014059c11e jmp      0x140595e71
000000014059c123 mov      rax, qword ptr [rsi + 0x10]
000000014059c127 mov      ebx, 0x1587c
000000014059c12c mov      rcx, qword ptr [rbp + 0x48]
000000014059c130 mov      edx, ebx
000000014059c132 call     qword ptr [rip + 0xe81c0]
000000014059c138 shr      eax, 0xc
000000014059c13b and      eax, r13d
000000014059c13e mov      dword ptr [rbp - 0x38], eax
000000014059c141 je       0x14058ebb1
000000014059c147 mov      rax, qword ptr [rsi + 0x10]
000000014059c14b mov      edx, ebx
000000014059c14d mov      rcx, qword ptr [rbp + 0x48]
000000014059c151 call     qword ptr [rip + 0xe81a1]
000000014059c157 mov      rcx, qword ptr [rbp + 0x48]
000000014059c15b shr      eax, 0xc
000000014059c15e and      eax, r13d
000000014059c161 mov      dword ptr [rbp - 0x38], eax
000000014059c164 mov      rax, qword ptr [rbp + 0x48]
000000014059c168 mov      rcx, qword ptr [rcx + 8]
000000014059c16c lea      rbx, [rax + 0x1320]
000000014059c173 mov      rax, qword ptr [rax + 0x18]
000000014059c177 mov      rdx, rbx
000000014059c17a mov      rax, qword ptr [rax + 0x108]
000000014059c181 call     qword ptr [rip + 0xe8171]
000000014059c187 mov      esi, dword ptr [rbp + 0x58]
000000014059c18a cmp      dword ptr [rdi], esi
000000014059c18c jae      0x14058eaac
000000014059c192 lea      r9, [rip + 0xd73c7]
000000014059c199 jmp      0x140595e71
000000014059c19e mov      rax, qword ptr [rsi + 0x10]
000000014059c1a2 mov      ebx, 0x1587c
000000014059c1a7 mov      rcx, qword ptr [rbp + 0x48]
000000014059c1ab mov      edx, ebx
000000014059c1ad call     qword ptr [rip + 0xe8145]
000000014059c1b3 shr      eax, 0xb
000000014059c1b6 and      eax, r13d
000000014059c1b9 mov      dword ptr [rbp - 0x38], eax
000000014059c1bc je       0x14058ebb1
000000014059c1c2 mov      rax, qword ptr [rsi + 0x10]
000000014059c1c6 mov      edx, ebx
000000014059c1c8 mov      rcx, qword ptr [rbp + 0x48]
000000014059c1cc call     qword ptr [rip + 0xe8126]
000000014059c1d2 mov      rcx, qword ptr [rbp + 0x48]
000000014059c1d6 shr      eax, 0xb
000000014059c1d9 and      eax, r13d
000000014059c1dc mov      dword ptr [rbp - 0x38], eax
000000014059c1df mov      rax, qword ptr [rbp + 0x48]
000000014059c1e3 mov      rcx, qword ptr [rcx + 8]
000000014059c1e7 lea      rbx, [rax + 0x1320]
000000014059c1ee mov      rax, qword ptr [rax + 0x18]
000000014059c1f2 mov      rdx, rbx
000000014059c1f5 mov      rax, qword ptr [rax + 0x108]
000000014059c1fc call     qword ptr [rip + 0xe80f6]
000000014059c202 mov      esi, dword ptr [rbp + 0x58]
000000014059c205 cmp      dword ptr [rdi], esi
000000014059c207 jae      0x14058eaac
000000014059c20d lea      r9, [rip + 0xd737c]
000000014059c214 jmp      0x140595e71
000000014059c219 mov      rax, qword ptr [rsi + 0x10]
000000014059c21d mov      ebx, 0x1587c
000000014059c222 mov      rcx, qword ptr [rbp + 0x48]
000000014059c226 mov      edx, ebx
000000014059c228 call     qword ptr [rip + 0xe80ca]
000000014059c22e shr      eax, 0xa
000000014059c231 and      eax, r13d
000000014059c234 mov      dword ptr [rbp - 0x38], eax
000000014059c237 je       0x14058ebb1
000000014059c23d mov      rax, qword ptr [rsi + 0x10]
000000014059c241 mov      edx, ebx
000000014059c243 mov      rcx, qword ptr [rbp + 0x48]
000000014059c247 call     qword ptr [rip + 0xe80ab]
000000014059c24d mov      rcx, qword ptr [rbp + 0x48]
000000014059c251 shr      eax, 0xa
000000014059c254 and      eax, r13d
000000014059c257 mov      dword ptr [rbp - 0x38], eax
000000014059c25a mov      rax, qword ptr [rbp + 0x48]
000000014059c25e mov      rcx, qword ptr [rcx + 8]
000000014059c262 lea      rbx, [rax + 0x1320]
000000014059c269 mov      rax, qword ptr [rax + 0x18]
000000014059c26d mov      rdx, rbx
000000014059c270 mov      rax, qword ptr [rax + 0x108]
000000014059c277 call     qword ptr [rip + 0xe807b]
000000014059c27d mov      esi, dword ptr [rbp + 0x58]
000000014059c280 cmp      dword ptr [rdi], esi
000000014059c282 jae      0x14058eaac
000000014059c288 lea      r9, [rip + 0xd7331]
000000014059c28f jmp      0x140595e71
000000014059c294 mov      rax, qword ptr [rsi + 0x10]
000000014059c298 mov      ebx, 0x1587c
000000014059c29d mov      rcx, qword ptr [rbp + 0x48]
000000014059c2a1 mov      edx, ebx
000000014059c2a3 call     qword ptr [rip + 0xe804f]
000000014059c2a9 shr      eax, 9
000000014059c2ac and      eax, r13d
000000014059c2af mov      dword ptr [rbp - 0x38], eax
000000014059c2b2 je       0x14058ebb1
000000014059c2b8 mov      rax, qword ptr [rsi + 0x10]
000000014059c2bc mov      edx, ebx
000000014059c2be mov      rcx, qword ptr [rbp + 0x48]
000000014059c2c2 call     qword ptr [rip + 0xe8030]
000000014059c2c8 mov      rcx, qword ptr [rbp + 0x48]
000000014059c2cc shr      eax, 9
000000014059c2cf and      eax, r13d
000000014059c2d2 mov      dword ptr [rbp - 0x38], eax
000000014059c2d5 mov      rax, qword ptr [rbp + 0x48]
000000014059c2d9 mov      rcx, qword ptr [rcx + 8]
000000014059c2dd lea      rbx, [rax + 0x1320]
000000014059c2e4 mov      rax, qword ptr [rax + 0x18]
000000014059c2e8 mov      rdx, rbx
000000014059c2eb mov      rax, qword ptr [rax + 0x108]
000000014059c2f2 call     qword ptr [rip + 0xe8000]
000000014059c2f8 mov      esi, dword ptr [rbp + 0x58]
000000014059c2fb cmp      dword ptr [rdi], esi
000000014059c2fd jae      0x14058eaac
000000014059c303 lea      r9, [rip + 0xd72e6]
000000014059c30a jmp      0x140595e71
000000014059c30f mov      rax, qword ptr [rsi + 0x10]
000000014059c313 mov      ebx, 0x1587c
000000014059c318 mov      rcx, qword ptr [rbp + 0x48]
000000014059c31c mov      edx, ebx
000000014059c31e call     qword ptr [rip + 0xe7fd4]
000000014059c324 shr      eax, 8
000000014059c327 and      eax, r13d
000000014059c32a mov      dword ptr [rbp - 0x38], eax
000000014059c32d je       0x14058ebb1
000000014059c333 mov      rax, qword ptr [rsi + 0x10]
000000014059c337 mov      edx, ebx
000000014059c339 mov      rcx, qword ptr [rbp + 0x48]
000000014059c33d call     qword ptr [rip + 0xe7fb5]
000000014059c343 mov      rcx, qword ptr [rbp + 0x48]
000000014059c347 shr      eax, 8
000000014059c34a and      eax, r13d
000000014059c34d mov      dword ptr [rbp - 0x38], eax
000000014059c350 mov      rax, qword ptr [rbp + 0x48]
000000014059c354 mov      rcx, qword ptr [rcx + 8]
000000014059c358 lea      rbx, [rax + 0x1320]
000000014059c35f mov      rax, qword ptr [rax + 0x18]
000000014059c363 mov      rdx, rbx
000000014059c366 mov      rax, qword ptr [rax + 0x108]
000000014059c36d call     qword ptr [rip + 0xe7f85]
000000014059c373 mov      esi, dword ptr [rbp + 0x58]
000000014059c376 cmp      dword ptr [rdi], esi
000000014059c378 jae      0x14058eaac
000000014059c37e lea      r9, [rip + 0xd728b]
000000014059c385 jmp      0x140595e71
000000014059c38a mov      rax, qword ptr [rsi]
000000014059c38d mov      ebx, 0x1587c
000000014059c392 mov      rcx, qword ptr [rbp + 0x48]
000000014059c396 mov      edx, ebx
000000014059c398 call     qword ptr [rip + 0xe7f5a]
000000014059c39e movzx    eax, al
000000014059c3a1 shr      eax, 7
000000014059c3a4 mov      dword ptr [rbp - 0x38], eax
000000014059c3a7 test     eax, eax
000000014059c3a9 je       0x14058ebb1
000000014059c3af mov      rax, qword ptr [rsi]
000000014059c3b2 mov      edx, ebx
000000014059c3b4 mov      rcx, qword ptr [rbp + 0x48]
000000014059c3b8 call     qword ptr [rip + 0xe7f3a]
000000014059c3be mov      rcx, qword ptr [rbp + 0x48]
000000014059c3c2 movzx    eax, al
000000014059c3c5 shr      eax, 7
000000014059c3c8 mov      dword ptr [rbp - 0x38], eax
000000014059c3cb mov      rax, qword ptr [rbp + 0x48]
000000014059c3cf mov      rcx, qword ptr [rcx + 8]
000000014059c3d3 lea      rbx, [rax + 0x1320]
000000014059c3da mov      rax, qword ptr [rax + 0x18]
000000014059c3de mov      rdx, rbx
000000014059c3e1 mov      rax, qword ptr [rax + 0x108]
000000014059c3e8 call     qword ptr [rip + 0xe7f0a]
000000014059c3ee mov      esi, dword ptr [rbp + 0x58]
000000014059c3f1 cmp      dword ptr [rdi], esi
000000014059c3f3 jae      0x14058eaac
000000014059c3f9 lea      r9, [rip + 0xd7230]
000000014059c400 jmp      0x140595e71
000000014059c405 mov      rax, qword ptr [rsi]
000000014059c408 mov      ebx, 0x1587c
000000014059c40d mov      rcx, qword ptr [rbp + 0x48]
000000014059c411 mov      edx, ebx
000000014059c413 call     qword ptr [rip + 0xe7edf]
000000014059c419 shr      eax, 6
000000014059c41c and      eax, r13d
000000014059c41f mov      dword ptr [rbp - 0x38], eax
000000014059c422 je       0x14058ebb1
000000014059c428 mov      rax, qword ptr [rsi]
000000014059c42b mov      edx, ebx
000000014059c42d mov      rcx, qword ptr [rbp + 0x48]
000000014059c431 call     qword ptr [rip + 0xe7ec1]
000000014059c437 mov      rcx, qword ptr [rbp + 0x48]
000000014059c43b shr      eax, 6
000000014059c43e and      eax, r13d
000000014059c441 mov      dword ptr [rbp - 0x38], eax
000000014059c444 mov      rax, qword ptr [rbp + 0x48]
000000014059c448 mov      rcx, qword ptr [rcx + 8]
000000014059c44c lea      rbx, [rax + 0x1320]
000000014059c453 mov      rax, qword ptr [rax + 0x18]
000000014059c457 mov      rdx, rbx
000000014059c45a mov      rax, qword ptr [rax + 0x108]
000000014059c461 call     qword ptr [rip + 0xe7e91]
000000014059c467 mov      esi, dword ptr [rbp + 0x58]
000000014059c46a cmp      dword ptr [rdi], esi
000000014059c46c jae      0x14058eaac
000000014059c472 lea      r9, [rip + 0xd71d7]
000000014059c479 jmp      0x140595e71
000000014059c47e mov      rax, qword ptr [rsi]
000000014059c481 mov      ebx, 0x1587c
000000014059c486 mov      rcx, qword ptr [rbp + 0x48]
000000014059c48a mov      edx, ebx
000000014059c48c call     qword ptr [rip + 0xe7e66]
000000014059c492 shr      eax, 5
000000014059c495 and      eax, r13d
000000014059c498 mov      dword ptr [rbp - 0x38], eax
000000014059c49b je       0x14058ebb1
000000014059c4a1 mov      rax, qword ptr [rsi]
000000014059c4a4 mov      edx, ebx
000000014059c4a6 mov      rcx, qword ptr [rbp + 0x48]
000000014059c4aa call     qword ptr [rip + 0xe7e48]
000000014059c4b0 mov      rcx, qword ptr [rbp + 0x48]
000000014059c4b4 shr      eax, 5
000000014059c4b7 and      eax, r13d
000000014059c4ba mov      dword ptr [rbp - 0x38], eax
000000014059c4bd mov      rax, qword ptr [rbp + 0x48]
000000014059c4c1 mov      rcx, qword ptr [rcx + 8]
000000014059c4c5 lea      rbx, [rax + 0x1320]
000000014059c4cc mov      rax, qword ptr [rax + 0x18]
000000014059c4d0 mov      rdx, rbx
000000014059c4d3 mov      rax, qword ptr [rax + 0x108]
000000014059c4da call     qword ptr [rip + 0xe7e18]
000000014059c4e0 mov      esi, dword ptr [rbp + 0x58]
000000014059c4e3 cmp      dword ptr [rdi], esi
000000014059c4e5 jae      0x14058eaac
000000014059c4eb lea      r9, [rip + 0xd717e]
000000014059c4f2 jmp      0x140595e71
000000014059c4f7 mov      rax, qword ptr [rsi]
000000014059c4fa mov      ebx, 0x1587c
000000014059c4ff mov      rcx, qword ptr [rbp + 0x48]
000000014059c503 mov      edx, ebx
000000014059c505 call     qword ptr [rip + 0xe7ded]
000000014059c50b shr      eax, 4
000000014059c50e and      eax, r13d
000000014059c511 mov      dword ptr [rbp - 0x38], eax
000000014059c514 je       0x14058ebb1
000000014059c51a mov      rax, qword ptr [rsi]
000000014059c51d mov      edx, ebx
000000014059c51f mov      rcx, qword ptr [rbp + 0x48]
000000014059c523 call     qword ptr [rip + 0xe7dcf]
000000014059c529 mov      rcx, qword ptr [rbp + 0x48]
000000014059c52d shr      eax, 4
000000014059c530 and      eax, r13d
000000014059c533 mov      dword ptr [rbp - 0x38], eax
000000014059c536 mov      rax, qword ptr [rbp + 0x48]
000000014059c53a mov      rcx, qword ptr [rcx + 8]
000000014059c53e lea      rbx, [rax + 0x1320]
000000014059c545 mov      rax, qword ptr [rax + 0x18]
000000014059c549 mov      rdx, rbx
000000014059c54c mov      rax, qword ptr [rax + 0x108]
000000014059c553 call     qword ptr [rip + 0xe7d9f]
000000014059c559 mov      esi, dword ptr [rbp + 0x58]
000000014059c55c cmp      dword ptr [rdi], esi
000000014059c55e jae      0x14058eaac
000000014059c564 lea      r9, [rip + 0xd7125]
000000014059c56b jmp      0x140595e71
000000014059c570 mov      rax, qword ptr [rsi]
000000014059c573 mov      ebx, 0x1587c
000000014059c578 mov      rcx, qword ptr [rbp + 0x48]
000000014059c57c mov      edx, ebx
000000014059c57e call     qword ptr [rip + 0xe7d74]
000000014059c584 shr      eax, 3
000000014059c587 and      eax, r13d
000000014059c58a mov      dword ptr [rbp - 0x38], eax
000000014059c58d je       0x14058ebb1
000000014059c593 mov      rax, qword ptr [rsi]
000000014059c596 mov      edx, ebx
000000014059c598 mov      rcx, qword ptr [rbp + 0x48]
000000014059c59c call     qword ptr [rip + 0xe7d56]
000000014059c5a2 mov      rcx, qword ptr [rbp + 0x48]
000000014059c5a6 shr      eax, 3
000000014059c5a9 and      eax, r13d
000000014059c5ac mov      dword ptr [rbp - 0x38], eax
000000014059c5af mov      rax, qword ptr [rbp + 0x48]
000000014059c5b3 mov      rcx, qword ptr [rcx + 8]
000000014059c5b7 lea      rbx, [rax + 0x1320]
000000014059c5be mov      rax, qword ptr [rax + 0x18]
000000014059c5c2 mov      rdx, rbx
000000014059c5c5 mov      rax, qword ptr [rax + 0x108]
000000014059c5cc call     qword ptr [rip + 0xe7d26]
000000014059c5d2 mov      esi, dword ptr [rbp + 0x58]
000000014059c5d5 cmp      dword ptr [rdi], esi
000000014059c5d7 jae      0x14058eaac
000000014059c5dd lea      r9, [rip + 0xd70cc]
000000014059c5e4 jmp      0x140595e71
000000014059c5e9 mov      rax, qword ptr [rsi]
000000014059c5ec mov      ebx, 0x1587c
000000014059c5f1 mov      rcx, qword ptr [rbp + 0x48]
000000014059c5f5 mov      edx, ebx
000000014059c5f7 call     qword ptr [rip + 0xe7cfb]
000000014059c5fd shr      eax, 2
000000014059c600 and      eax, r13d
000000014059c603 mov      dword ptr [rbp - 0x38], eax
000000014059c606 je       0x14058ebb1
000000014059c60c mov      rax, qword ptr [rsi]
000000014059c60f mov      edx, ebx
000000014059c611 mov      rcx, qword ptr [rbp + 0x48]
000000014059c615 call     qword ptr [rip + 0xe7cdd]
000000014059c61b mov      rcx, qword ptr [rbp + 0x48]
000000014059c61f shr      eax, 2
000000014059c622 and      eax, r13d
000000014059c625 mov      dword ptr [rbp - 0x38], eax
000000014059c628 mov      rax, qword ptr [rbp + 0x48]
000000014059c62c mov      rcx, qword ptr [rcx + 8]
000000014059c630 lea      rbx, [rax + 0x1320]
000000014059c637 mov      rax, qword ptr [rax + 0x18]
000000014059c63b mov      rdx, rbx
000000014059c63e mov      rax, qword ptr [rax + 0x108]
000000014059c645 call     qword ptr [rip + 0xe7cad]
000000014059c64b mov      esi, dword ptr [rbp + 0x58]
000000014059c64e cmp      dword ptr [rdi], esi
000000014059c650 jae      0x14058eaac
000000014059c656 lea      r9, [rip + 0xd7073]
000000014059c65d jmp      0x140595e71
000000014059c662 mov      rax, qword ptr [rsi]
000000014059c665 mov      ebx, 0x1587c
000000014059c66a mov      rcx, qword ptr [rbp + 0x48]
000000014059c66e mov      edx, ebx
000000014059c670 call     qword ptr [rip + 0xe7c82]
000000014059c676 shr      eax, 1
000000014059c678 and      eax, r13d
000000014059c67b mov      dword ptr [rbp - 0x38], eax
000000014059c67e je       0x14058ebb1
000000014059c684 mov      rax, qword ptr [rsi]
000000014059c687 mov      edx, ebx
000000014059c689 mov      rcx, qword ptr [rbp + 0x48]
000000014059c68d call     qword ptr [rip + 0xe7c65]
000000014059c693 mov      rcx, qword ptr [rbp + 0x48]
000000014059c697 shr      eax, 1
000000014059c699 and      eax, r13d
000000014059c69c mov      dword ptr [rbp - 0x38], eax
000000014059c69f mov      rax, qword ptr [rbp + 0x48]
000000014059c6a3 mov      rcx, qword ptr [rcx + 8]
000000014059c6a7 lea      rbx, [rax + 0x1320]
000000014059c6ae mov      rax, qword ptr [rax + 0x18]
000000014059c6b2 mov      rdx, rbx
000000014059c6b5 mov      rax, qword ptr [rax + 0x108]
000000014059c6bc call     qword ptr [rip + 0xe7c36]
000000014059c6c2 mov      esi, dword ptr [rbp + 0x58]
000000014059c6c5 cmp      dword ptr [rdi], esi
000000014059c6c7 jae      0x14058eaac
000000014059c6cd lea      r9, [rip + 0xd701c]
000000014059c6d4 jmp      0x140595e71
000000014059c6d9 mov      rax, qword ptr [rsi]
000000014059c6dc mov      ebx, 0x1587c
000000014059c6e1 mov      rcx, qword ptr [rbp + 0x48]
000000014059c6e5 mov      edx, ebx
000000014059c6e7 call     qword ptr [rip + 0xe7c0b]
000000014059c6ed and      eax, r13d
000000014059c6f0 mov      dword ptr [rbp - 0x38], eax
000000014059c6f3 je       0x14058ebb1
000000014059c6f9 mov      rax, qword ptr [rsi]
000000014059c6fc mov      edx, ebx
000000014059c6fe mov      rcx, qword ptr [rbp + 0x48]
000000014059c702 call     qword ptr [rip + 0xe7bf0]
000000014059c708 mov      rcx, qword ptr [rbp + 0x48]
000000014059c70c and      eax, r13d
000000014059c70f mov      dword ptr [rbp - 0x38], eax
000000014059c712 mov      rax, qword ptr [rbp + 0x48]
000000014059c716 mov      rcx, qword ptr [rcx + 8]
000000014059c71a lea      rbx, [rax + 0x1320]
000000014059c721 mov      rax, qword ptr [rax + 0x18]
000000014059c725 mov      rdx, rbx
000000014059c728 mov      rax, qword ptr [rax + 0x108]
000000014059c72f call     qword ptr [rip + 0xe7bc3]
000000014059c735 mov      esi, dword ptr [rbp + 0x58]
000000014059c738 cmp      dword ptr [rdi], esi
000000014059c73a jae      0x14058eaac
000000014059c740 lea      r9, [rip + 0xd6fc9]
000000014059c747 jmp      0x140595e71
000000014059c74c mov      rax, qword ptr [rsi + 0x20]
000000014059c750 mov      ebx, 0x15880
000000014059c755 mov      rcx, qword ptr [rbp + 0x48]
000000014059c759 mov      edx, ebx
000000014059c75b call     qword ptr [rip + 0xe7b97]
000000014059c761 shr      eax, 0x1f
000000014059c764 mov      dword ptr [rbp - 0x38], eax
000000014059c767 test     eax, eax
000000014059c769 je       0x14058ebb1
000000014059c76f mov      rax, qword ptr [rsi + 0x20]
000000014059c773 mov      edx, ebx
000000014059c775 mov      rcx, qword ptr [rbp + 0x48]
000000014059c779 call     qword ptr [rip + 0xe7b79]
000000014059c77f mov      rcx, qword ptr [rbp + 0x48]
000000014059c783 shr      eax, 0x1f
000000014059c786 mov      dword ptr [rbp - 0x38], eax
000000014059c789 mov      rax, qword ptr [rbp + 0x48]
000000014059c78d mov      rcx, qword ptr [rcx + 8]
000000014059c791 lea      rbx, [rax + 0x1320]
000000014059c798 mov      rax, qword ptr [rax + 0x18]
000000014059c79c mov      rdx, rbx
000000014059c79f mov      rax, qword ptr [rax + 0x108]
000000014059c7a6 call     qword ptr [rip + 0xe7b4c]
000000014059c7ac mov      esi, dword ptr [rbp + 0x58]
000000014059c7af cmp      dword ptr [rdi], esi
000000014059c7b1 jae      0x14058eaac
000000014059c7b7 lea      r9, [rip + 0xd6f72]
000000014059c7be jmp      0x140595e71
000000014059c7c3 mov      rax, qword ptr [rsi + 0x20]
000000014059c7c7 mov      ebx, 0x15880
000000014059c7cc mov      rcx, qword ptr [rbp + 0x48]
000000014059c7d0 mov      edx, ebx
000000014059c7d2 call     qword ptr [rip + 0xe7b20]
000000014059c7d8 shr      eax, 0x1e
000000014059c7db and      eax, r13d
000000014059c7de mov      dword ptr [rbp - 0x38], eax
000000014059c7e1 je       0x14058ebb1
000000014059c7e7 mov      rax, qword ptr [rsi + 0x20]
000000014059c7eb mov      edx, ebx
000000014059c7ed mov      rcx, qword ptr [rbp + 0x48]
000000014059c7f1 call     qword ptr [rip + 0xe7b01]
000000014059c7f7 mov      rcx, qword ptr [rbp + 0x48]
000000014059c7fb shr      eax, 0x1e
000000014059c7fe and      eax, r13d
000000014059c801 mov      dword ptr [rbp - 0x38], eax
000000014059c804 mov      rax, qword ptr [rbp + 0x48]
000000014059c808 mov      rcx, qword ptr [rcx + 8]
000000014059c80c lea      rbx, [rax + 0x1320]
000000014059c813 mov      rax, qword ptr [rax + 0x18]
000000014059c817 mov      rdx, rbx
000000014059c81a mov      rax, qword ptr [rax + 0x108]
000000014059c821 call     qword ptr [rip + 0xe7ad1]
000000014059c827 mov      esi, dword ptr [rbp + 0x58]
000000014059c82a cmp      dword ptr [rdi], esi
000000014059c82c jae      0x14058eaac
000000014059c832 lea      r9, [rip + 0xd6f27]
000000014059c839 jmp      0x140595e71
000000014059c83e mov      rax, qword ptr [rsi + 0x20]
000000014059c842 mov      ebx, 0x15880
000000014059c847 mov      rcx, qword ptr [rbp + 0x48]
000000014059c84b mov      edx, ebx
000000014059c84d call     qword ptr [rip + 0xe7aa5]
000000014059c853 shr      eax, 0x1d
000000014059c856 and      eax, r13d
000000014059c859 mov      dword ptr [rbp - 0x38], eax
000000014059c85c je       0x14058ebb1
000000014059c862 mov      rax, qword ptr [rsi + 0x20]
000000014059c866 mov      edx, ebx
000000014059c868 mov      rcx, qword ptr [rbp + 0x48]
000000014059c86c call     qword ptr [rip + 0xe7a86]
000000014059c872 mov      rcx, qword ptr [rbp + 0x48]
000000014059c876 shr      eax, 0x1d
000000014059c879 and      eax, r13d
000000014059c87c mov      dword ptr [rbp - 0x38], eax
000000014059c87f mov      rax, qword ptr [rbp + 0x48]
000000014059c883 mov      rcx, qword ptr [rcx + 8]
000000014059c887 lea      rbx, [rax + 0x1320]
000000014059c88e mov      rax, qword ptr [rax + 0x18]
000000014059c892 mov      rdx, rbx
000000014059c895 mov      rax, qword ptr [rax + 0x108]
000000014059c89c call     qword ptr [rip + 0xe7a56]
000000014059c8a2 mov      esi, dword ptr [rbp + 0x58]
000000014059c8a5 cmp      dword ptr [rdi], esi
000000014059c8a7 jae      0x14058eaac
000000014059c8ad lea      r9, [rip + 0xd6edc]
000000014059c8b4 jmp      0x140595e71
000000014059c8b9 mov      rax, qword ptr [rsi + 0x20]
000000014059c8bd mov      ebx, 0x15880
000000014059c8c2 mov      rcx, qword ptr [rbp + 0x48]
000000014059c8c6 mov      edx, ebx
000000014059c8c8 call     qword ptr [rip + 0xe7a2a]
000000014059c8ce shr      eax, 0x1c
000000014059c8d1 and      eax, r13d
000000014059c8d4 mov      dword ptr [rbp - 0x38], eax
000000014059c8d7 je       0x14058ebb1
000000014059c8dd mov      rax, qword ptr [rsi + 0x20]
000000014059c8e1 mov      edx, ebx
000000014059c8e3 mov      rcx, qword ptr [rbp + 0x48]
000000014059c8e7 call     qword ptr [rip + 0xe7a0b]
000000014059c8ed mov      rcx, qword ptr [rbp + 0x48]
000000014059c8f1 shr      eax, 0x1c
000000014059c8f4 and      eax, r13d
000000014059c8f7 mov      dword ptr [rbp - 0x38], eax
000000014059c8fa mov      rax, qword ptr [rbp + 0x48]
000000014059c8fe mov      rcx, qword ptr [rcx + 8]
000000014059c902 lea      rbx, [rax + 0x1320]
000000014059c909 mov      rax, qword ptr [rax + 0x18]
000000014059c90d mov      rdx, rbx
000000014059c910 mov      rax, qword ptr [rax + 0x108]
000000014059c917 call     qword ptr [rip + 0xe79db]
000000014059c91d mov      esi, dword ptr [rbp + 0x58]
000000014059c920 cmp      dword ptr [rdi], esi
000000014059c922 jae      0x14058eaac
000000014059c928 lea      r9, [rip + 0xd6e91]
000000014059c92f jmp      0x140595e71
000000014059c934 mov      rax, qword ptr [rsi + 0x20]
000000014059c938 mov      ebx, 0x15880
000000014059c93d mov      rcx, qword ptr [rbp + 0x48]
000000014059c941 mov      edx, ebx
000000014059c943 call     qword ptr [rip + 0xe79af]
000000014059c949 shr      eax, 0x1b
000000014059c94c and      eax, r13d
000000014059c94f mov      dword ptr [rbp - 0x38], eax
000000014059c952 je       0x14058ebb1
000000014059c958 mov      rax, qword ptr [rsi + 0x20]
000000014059c95c mov      edx, ebx
000000014059c95e mov      rcx, qword ptr [rbp + 0x48]
000000014059c962 call     qword ptr [rip + 0xe7990]
000000014059c968 mov      rcx, qword ptr [rbp + 0x48]
000000014059c96c shr      eax, 0x1b
000000014059c96f and      eax, r13d
000000014059c972 mov      dword ptr [rbp - 0x38], eax
000000014059c975 mov      rax, qword ptr [rbp + 0x48]
000000014059c979 mov      rcx, qword ptr [rcx + 8]
000000014059c97d lea      rbx, [rax + 0x1320]
000000014059c984 mov      rax, qword ptr [rax + 0x18]
000000014059c988 mov      rdx, rbx
000000014059c98b mov      rax, qword ptr [rax + 0x108]
000000014059c992 call     qword ptr [rip + 0xe7960]
000000014059c998 mov      esi, dword ptr [rbp + 0x58]
000000014059c99b cmp      dword ptr [rdi], esi
000000014059c99d jae      0x14058eaac
000000014059c9a3 lea      r9, [rip + 0xd6e46]
000000014059c9aa jmp      0x140595e71
000000014059c9af mov      rax, qword ptr [rsi + 0x20]
000000014059c9b3 mov      ebx, 0x15880
000000014059c9b8 mov      rcx, qword ptr [rbp + 0x48]
000000014059c9bc mov      edx, ebx
000000014059c9be call     qword ptr [rip + 0xe7934]
000000014059c9c4 shr      eax, 0x1a
000000014059c9c7 and      eax, r13d
000000014059c9ca mov      dword ptr [rbp - 0x38], eax
000000014059c9cd je       0x14058ebb1
000000014059c9d3 mov      rax, qword ptr [rsi + 0x20]
000000014059c9d7 mov      edx, ebx
000000014059c9d9 mov      rcx, qword ptr [rbp + 0x48]
000000014059c9dd call     qword ptr [rip + 0xe7915]
000000014059c9e3 mov      rcx, qword ptr [rbp + 0x48]
000000014059c9e7 shr      eax, 0x1a
000000014059c9ea and      eax, r13d
000000014059c9ed mov      dword ptr [rbp - 0x38], eax
000000014059c9f0 mov      rax, qword ptr [rbp + 0x48]
000000014059c9f4 mov      rcx, qword ptr [rcx + 8]
000000014059c9f8 lea      rbx, [rax + 0x1320]
000000014059c9ff mov      rax, qword ptr [rax + 0x18]
000000014059ca03 mov      rdx, rbx
000000014059ca06 mov      rax, qword ptr [rax + 0x108]
000000014059ca0d call     qword ptr [rip + 0xe78e5]
000000014059ca13 mov      esi, dword ptr [rbp + 0x58]
000000014059ca16 cmp      dword ptr [rdi], esi
000000014059ca18 jae      0x14058eaac
000000014059ca1e lea      r9, [rip + 0xd6dfb]
000000014059ca25 jmp      0x140595e71
000000014059ca2a mov      rax, qword ptr [rsi + 0x20]
000000014059ca2e mov      ebx, 0x15880
000000014059ca33 mov      rcx, qword ptr [rbp + 0x48]
000000014059ca37 mov      edx, ebx
000000014059ca39 call     qword ptr [rip + 0xe78b9]
000000014059ca3f shr      eax, 0x19
000000014059ca42 and      eax, r13d
000000014059ca45 mov      dword ptr [rbp - 0x38], eax
000000014059ca48 je       0x14058ebb1
000000014059ca4e mov      rax, qword ptr [rsi + 0x20]
000000014059ca52 mov      edx, ebx
000000014059ca54 mov      rcx, qword ptr [rbp + 0x48]
000000014059ca58 call     qword ptr [rip + 0xe789a]
000000014059ca5e mov      rcx, qword ptr [rbp + 0x48]
000000014059ca62 shr      eax, 0x19
000000014059ca65 and      eax, r13d
000000014059ca68 mov      dword ptr [rbp - 0x38], eax
000000014059ca6b mov      rax, qword ptr [rbp + 0x48]
000000014059ca6f mov      rcx, qword ptr [rcx + 8]
000000014059ca73 lea      rbx, [rax + 0x1320]
000000014059ca7a mov      rax, qword ptr [rax + 0x18]
000000014059ca7e mov      rdx, rbx
000000014059ca81 mov      rax, qword ptr [rax + 0x108]
000000014059ca88 call     qword ptr [rip + 0xe786a]
000000014059ca8e mov      esi, dword ptr [rbp + 0x58]
000000014059ca91 cmp      dword ptr [rdi], esi
000000014059ca93 jae      0x14058eaac
000000014059ca99 lea      r9, [rip + 0xd6db0]
000000014059caa0 jmp      0x140595e71
000000014059caa5 mov      rax, qword ptr [rsi + 0x20]
000000014059caa9 mov      ebx, 0x15880
000000014059caae mov      rcx, qword ptr [rbp + 0x48]
000000014059cab2 mov      edx, ebx
000000014059cab4 call     qword ptr [rip + 0xe783e]
000000014059caba shr      eax, 0x18
000000014059cabd and      eax, r13d
000000014059cac0 mov      dword ptr [rbp - 0x38], eax
000000014059cac3 je       0x14058ebb1
000000014059cac9 mov      rax, qword ptr [rsi + 0x20]
000000014059cacd mov      edx, ebx
000000014059cacf mov      rcx, qword ptr [rbp + 0x48]
000000014059cad3 call     qword ptr [rip + 0xe781f]
000000014059cad9 mov      rcx, qword ptr [rbp + 0x48]
000000014059cadd shr      eax, 0x18
000000014059cae0 and      eax, r13d
000000014059cae3 mov      dword ptr [rbp - 0x38], eax
000000014059cae6 mov      rax, qword ptr [rbp + 0x48]
000000014059caea mov      rcx, qword ptr [rcx + 8]
000000014059caee lea      rbx, [rax + 0x1320]
000000014059caf5 mov      rax, qword ptr [rax + 0x18]
000000014059caf9 mov      rdx, rbx
000000014059cafc mov      rax, qword ptr [rax + 0x108]
000000014059cb03 call     qword ptr [rip + 0xe77ef]
000000014059cb09 mov      esi, dword ptr [rbp + 0x58]
000000014059cb0c cmp      dword ptr [rdi], esi
000000014059cb0e jae      0x14058eaac
000000014059cb14 lea      r9, [rip + 0xd6d65]
000000014059cb1b jmp      0x140595e71
000000014059cb20 mov      rax, qword ptr [rsi + 0x20]
000000014059cb24 mov      ebx, 0x15880
000000014059cb29 mov      rcx, qword ptr [rbp + 0x48]
000000014059cb2d mov      edx, ebx
000000014059cb2f call     qword ptr [rip + 0xe77c3]
000000014059cb35 shr      eax, 0x17
000000014059cb38 and      eax, r13d
000000014059cb3b mov      dword ptr [rbp - 0x38], eax
000000014059cb3e je       0x14058ebb1
000000014059cb44 mov      rax, qword ptr [rsi + 0x20]
000000014059cb48 mov      edx, ebx
000000014059cb4a mov      rcx, qword ptr [rbp + 0x48]
000000014059cb4e call     qword ptr [rip + 0xe77a4]
000000014059cb54 mov      rcx, qword ptr [rbp + 0x48]
000000014059cb58 shr      eax, 0x17
000000014059cb5b and      eax, r13d
000000014059cb5e mov      dword ptr [rbp - 0x38], eax
000000014059cb61 mov      rax, qword ptr [rbp + 0x48]
000000014059cb65 mov      rcx, qword ptr [rcx + 8]
000000014059cb69 lea      rbx, [rax + 0x1320]
000000014059cb70 mov      rax, qword ptr [rax + 0x18]
000000014059cb74 mov      rdx, rbx
000000014059cb77 mov      rax, qword ptr [rax + 0x108]
000000014059cb7e call     qword ptr [rip + 0xe7774]
000000014059cb84 mov      esi, dword ptr [rbp + 0x58]
000000014059cb87 cmp      dword ptr [rdi], esi
000000014059cb89 jae      0x14058eaac
000000014059cb8f lea      r9, [rip + 0xd6d1a]
000000014059cb96 jmp      0x140595e71
000000014059cb9b mov      rax, qword ptr [rsi + 0x20]
000000014059cb9f mov      ebx, 0x15880
000000014059cba4 mov      rcx, qword ptr [rbp + 0x48]
000000014059cba8 mov      edx, ebx
000000014059cbaa call     qword ptr [rip + 0xe7748]
000000014059cbb0 shr      eax, 0x16
000000014059cbb3 and      eax, r13d
000000014059cbb6 mov      dword ptr [rbp - 0x38], eax
000000014059cbb9 je       0x14058ebb1
000000014059cbbf mov      rax, qword ptr [rsi + 0x20]
000000014059cbc3 mov      edx, ebx
000000014059cbc5 mov      rcx, qword ptr [rbp + 0x48]
000000014059cbc9 call     qword ptr [rip + 0xe7729]
000000014059cbcf mov      rcx, qword ptr [rbp + 0x48]
000000014059cbd3 shr      eax, 0x16
000000014059cbd6 and      eax, r13d
000000014059cbd9 mov      dword ptr [rbp - 0x38], eax
000000014059cbdc mov      rax, qword ptr [rbp + 0x48]
000000014059cbe0 mov      rcx, qword ptr [rcx + 8]
000000014059cbe4 lea      rbx, [rax + 0x1320]
000000014059cbeb mov      rax, qword ptr [rax + 0x18]
000000014059cbef mov      rdx, rbx
000000014059cbf2 mov      rax, qword ptr [rax + 0x108]
000000014059cbf9 call     qword ptr [rip + 0xe76f9]
000000014059cbff mov      esi, dword ptr [rbp + 0x58]
000000014059cc02 cmp      dword ptr [rdi], esi
000000014059cc04 jae      0x14058eaac
000000014059cc0a lea      r9, [rip + 0xd6ccf]
000000014059cc11 jmp      0x140595e71
000000014059cc16 mov      rax, qword ptr [rsi + 0x20]
000000014059cc1a mov      ebx, 0x15880
000000014059cc1f mov      rcx, qword ptr [rbp + 0x48]
000000014059cc23 mov      edx, ebx
000000014059cc25 call     qword ptr [rip + 0xe76cd]
000000014059cc2b shr      eax, 0x15
000000014059cc2e and      eax, r13d
000000014059cc31 mov      dword ptr [rbp - 0x38], eax
000000014059cc34 je       0x14058ebb1
000000014059cc3a mov      rax, qword ptr [rsi + 0x20]
000000014059cc3e mov      edx, ebx
000000014059cc40 mov      rcx, qword ptr [rbp + 0x48]
000000014059cc44 call     qword ptr [rip + 0xe76ae]
000000014059cc4a mov      rcx, qword ptr [rbp + 0x48]
000000014059cc4e shr      eax, 0x15
000000014059cc51 and      eax, r13d
000000014059cc54 mov      dword ptr [rbp - 0x38], eax
000000014059cc57 mov      rax, qword ptr [rbp + 0x48]
000000014059cc5b mov      rcx, qword ptr [rcx + 8]
000000014059cc5f lea      rbx, [rax + 0x1320]
000000014059cc66 mov      rax, qword ptr [rax + 0x18]
000000014059cc6a mov      rdx, rbx
000000014059cc6d mov      rax, qword ptr [rax + 0x108]
000000014059cc74 call     qword ptr [rip + 0xe767e]
000000014059cc7a mov      esi, dword ptr [rbp + 0x58]
000000014059cc7d cmp      dword ptr [rdi], esi
000000014059cc7f jae      0x14058eaac
000000014059cc85 lea      r9, [rip + 0xd6c84]
000000014059cc8c jmp      0x140595e71
000000014059cc91 mov      rax, qword ptr [rsi + 0x20]
000000014059cc95 mov      ebx, 0x15880
000000014059cc9a mov      rcx, qword ptr [rbp + 0x48]
000000014059cc9e mov      edx, ebx
000000014059cca0 call     qword ptr [rip + 0xe7652]
000000014059cca6 shr      eax, 0x14
000000014059cca9 and      eax, r13d
000000014059ccac mov      dword ptr [rbp - 0x38], eax
000000014059ccaf je       0x14058ebb1
000000014059ccb5 mov      rax, qword ptr [rsi + 0x20]
000000014059ccb9 mov      edx, ebx
000000014059ccbb mov      rcx, qword ptr [rbp + 0x48]
000000014059ccbf call     qword ptr [rip + 0xe7633]
000000014059ccc5 mov      rcx, qword ptr [rbp + 0x48]
000000014059ccc9 shr      eax, 0x14
000000014059cccc and      eax, r13d
000000014059cccf mov      dword ptr [rbp - 0x38], eax
000000014059ccd2 mov      rax, qword ptr [rbp + 0x48]
000000014059ccd6 mov      rcx, qword ptr [rcx + 8]
000000014059ccda lea      rbx, [rax + 0x1320]
000000014059cce1 mov      rax, qword ptr [rax + 0x18]
000000014059cce5 mov      rdx, rbx
000000014059cce8 mov      rax, qword ptr [rax + 0x108]
000000014059ccef call     qword ptr [rip + 0xe7603]
000000014059ccf5 mov      esi, dword ptr [rbp + 0x58]
000000014059ccf8 cmp      dword ptr [rdi], esi
000000014059ccfa jae      0x14058eaac
000000014059cd00 lea      r9, [rip + 0xd6c39]
000000014059cd07 jmp      0x140595e71
000000014059cd0c mov      rax, qword ptr [rsi + 0x20]
000000014059cd10 mov      ebx, 0x15880
000000014059cd15 mov      rcx, qword ptr [rbp + 0x48]
000000014059cd19 mov      edx, ebx
000000014059cd1b call     qword ptr [rip + 0xe75d7]
000000014059cd21 shr      eax, 0x13
000000014059cd24 and      eax, r13d
000000014059cd27 mov      dword ptr [rbp - 0x38], eax
000000014059cd2a je       0x14058ebb1
000000014059cd30 mov      rax, qword ptr [rsi + 0x20]
000000014059cd34 mov      edx, ebx
000000014059cd36 mov      rcx, qword ptr [rbp + 0x48]
000000014059cd3a call     qword ptr [rip + 0xe75b8]
000000014059cd40 mov      rcx, qword ptr [rbp + 0x48]
000000014059cd44 shr      eax, 0x13
000000014059cd47 and      eax, r13d
000000014059cd4a mov      dword ptr [rbp - 0x38], eax
000000014059cd4d mov      rax, qword ptr [rbp + 0x48]
000000014059cd51 mov      rcx, qword ptr [rcx + 8]
000000014059cd55 lea      rbx, [rax + 0x1320]
000000014059cd5c mov      rax, qword ptr [rax + 0x18]
000000014059cd60 mov      rdx, rbx
000000014059cd63 mov      rax, qword ptr [rax + 0x108]
000000014059cd6a call     qword ptr [rip + 0xe7588]
000000014059cd70 mov      esi, dword ptr [rbp + 0x58]
000000014059cd73 cmp      dword ptr [rdi], esi
000000014059cd75 jae      0x14058eaac
000000014059cd7b lea      r9, [rip + 0xd6bee]
000000014059cd82 jmp      0x140595e71
000000014059cd87 mov      rax, qword ptr [rsi + 0x20]
000000014059cd8b mov      ebx, 0x15880
000000014059cd90 mov      rcx, qword ptr [rbp + 0x48]
000000014059cd94 mov      edx, ebx
000000014059cd96 call     qword ptr [rip + 0xe755c]
000000014059cd9c shr      eax, 0x12
000000014059cd9f and      eax, r13d
000000014059cda2 mov      dword ptr [rbp - 0x38], eax
000000014059cda5 je       0x14058ebb1
000000014059cdab mov      rax, qword ptr [rsi + 0x20]
000000014059cdaf mov      edx, ebx
000000014059cdb1 mov      rcx, qword ptr [rbp + 0x48]
000000014059cdb5 call     qword ptr [rip + 0xe753d]
000000014059cdbb mov      rcx, qword ptr [rbp + 0x48]
000000014059cdbf shr      eax, 0x12
000000014059cdc2 and      eax, r13d
000000014059cdc5 mov      dword ptr [rbp - 0x38], eax
000000014059cdc8 mov      rax, qword ptr [rbp + 0x48]
000000014059cdcc mov      rcx, qword ptr [rcx + 8]
000000014059cdd0 lea      rbx, [rax + 0x1320]
000000014059cdd7 mov      rax, qword ptr [rax + 0x18]
000000014059cddb mov      rdx, rbx
000000014059cdde mov      rax, qword ptr [rax + 0x108]
000000014059cde5 call     qword ptr [rip + 0xe750d]
000000014059cdeb mov      esi, dword ptr [rbp + 0x58]
000000014059cdee cmp      dword ptr [rdi], esi
000000014059cdf0 jae      0x14058eaac
000000014059cdf6 lea      r9, [rip + 0xd6ba3]
000000014059cdfd jmp      0x140595e71
000000014059ce02 mov      rax, qword ptr [rsi + 0x20]
000000014059ce06 mov      ebx, 0x15880
000000014059ce0b mov      rcx, qword ptr [rbp + 0x48]
000000014059ce0f mov      edx, ebx
000000014059ce11 call     qword ptr [rip + 0xe74e1]
000000014059ce17 shr      eax, 0x11
000000014059ce1a and      eax, r13d
000000014059ce1d mov      dword ptr [rbp - 0x38], eax
000000014059ce20 je       0x14058ebb1
000000014059ce26 mov      rax, qword ptr [rsi + 0x20]
000000014059ce2a mov      edx, ebx
000000014059ce2c mov      rcx, qword ptr [rbp + 0x48]
000000014059ce30 call     qword ptr [rip + 0xe74c2]
000000014059ce36 mov      rcx, qword ptr [rbp + 0x48]
000000014059ce3a shr      eax, 0x11
000000014059ce3d and      eax, r13d
000000014059ce40 mov      dword ptr [rbp - 0x38], eax
000000014059ce43 mov      rax, qword ptr [rbp + 0x48]
000000014059ce47 mov      rcx, qword ptr [rcx + 8]
000000014059ce4b lea      rbx, [rax + 0x1320]
000000014059ce52 mov      rax, qword ptr [rax + 0x18]
000000014059ce56 mov      rdx, rbx
000000014059ce59 mov      rax, qword ptr [rax + 0x108]
000000014059ce60 call     qword ptr [rip + 0xe7492]
000000014059ce66 mov      esi, dword ptr [rbp + 0x58]
000000014059ce69 cmp      dword ptr [rdi], esi
000000014059ce6b jae      0x14058eaac
000000014059ce71 lea      r9, [rip + 0xd6b58]
000000014059ce78 jmp      0x140595e71
000000014059ce7d mov      rax, qword ptr [rsi + 0x20]
000000014059ce81 mov      ebx, 0x15880
000000014059ce86 mov      rcx, qword ptr [rbp + 0x48]
000000014059ce8a mov      edx, ebx
000000014059ce8c call     qword ptr [rip + 0xe7466]
000000014059ce92 shr      eax, 0x10
000000014059ce95 and      eax, r13d
000000014059ce98 mov      dword ptr [rbp - 0x38], eax
000000014059ce9b je       0x14058ebb1
000000014059cea1 mov      rax, qword ptr [rsi + 0x20]
000000014059cea5 mov      edx, ebx
000000014059cea7 mov      rcx, qword ptr [rbp + 0x48]
000000014059ceab call     qword ptr [rip + 0xe7447]
000000014059ceb1 mov      rcx, qword ptr [rbp + 0x48]
000000014059ceb5 shr      eax, 0x10
000000014059ceb8 and      eax, r13d
000000014059cebb mov      dword ptr [rbp - 0x38], eax
000000014059cebe mov      rax, qword ptr [rbp + 0x48]
000000014059cec2 mov      rcx, qword ptr [rcx + 8]
000000014059cec6 lea      rbx, [rax + 0x1320]
000000014059cecd mov      rax, qword ptr [rax + 0x18]
000000014059ced1 mov      rdx, rbx
000000014059ced4 mov      rax, qword ptr [rax + 0x108]
000000014059cedb call     qword ptr [rip + 0xe7417]
000000014059cee1 mov      esi, dword ptr [rbp + 0x58]
000000014059cee4 cmp      dword ptr [rdi], esi
000000014059cee6 jae      0x14058eaac
000000014059ceec lea      r9, [rip + 0xd6b0d]
000000014059cef3 jmp      0x140595e71
000000014059cef8 mov      rax, qword ptr [rsi + 0x10]
000000014059cefc mov      ebx, 0x15880
000000014059cf01 mov      rcx, qword ptr [rbp + 0x48]
000000014059cf05 mov      edx, ebx
000000014059cf07 call     qword ptr [rip + 0xe73eb]
000000014059cf0d movzx    eax, ax
000000014059cf10 shr      eax, 0xf
000000014059cf13 mov      dword ptr [rbp - 0x38], eax
000000014059cf16 test     eax, eax
000000014059cf18 je       0x14058ebb1
000000014059cf1e mov      rax, qword ptr [rsi + 0x10]
000000014059cf22 mov      edx, ebx
000000014059cf24 mov      rcx, qword ptr [rbp + 0x48]
000000014059cf28 call     qword ptr [rip + 0xe73ca]
000000014059cf2e mov      rcx, qword ptr [rbp + 0x48]
000000014059cf32 movzx    eax, ax
000000014059cf35 shr      eax, 0xf
000000014059cf38 mov      dword ptr [rbp - 0x38], eax
000000014059cf3b mov      rax, qword ptr [rbp + 0x48]
000000014059cf3f mov      rcx, qword ptr [rcx + 8]
000000014059cf43 lea      rbx, [rax + 0x1320]
000000014059cf4a mov      rax, qword ptr [rax + 0x18]
000000014059cf4e mov      rdx, rbx
000000014059cf51 mov      rax, qword ptr [rax + 0x108]
000000014059cf58 call     qword ptr [rip + 0xe739a]
000000014059cf5e mov      esi, dword ptr [rbp + 0x58]
000000014059cf61 cmp      dword ptr [rdi], esi
000000014059cf63 jae      0x14058eaac
000000014059cf69 lea      r9, [rip + 0xd6ac0]
000000014059cf70 jmp      0x140595e71
000000014059cf75 mov      rax, qword ptr [rsi + 0x10]
000000014059cf79 mov      ebx, 0x15880
000000014059cf7e mov      rcx, qword ptr [rbp + 0x48]
000000014059cf82 mov      edx, ebx
000000014059cf84 call     qword ptr [rip + 0xe736e]
000000014059cf8a shr      eax, 0xe
000000014059cf8d and      eax, r13d
000000014059cf90 mov      dword ptr [rbp - 0x38], eax
000000014059cf93 je       0x14058ebb1
000000014059cf99 mov      rax, qword ptr [rsi + 0x10]
000000014059cf9d mov      edx, ebx
000000014059cf9f mov      rcx, qword ptr [rbp + 0x48]
000000014059cfa3 call     qword ptr [rip + 0xe734f]
000000014059cfa9 mov      rcx, qword ptr [rbp + 0x48]
000000014059cfad shr      eax, 0xe
000000014059cfb0 and      eax, r13d
000000014059cfb3 mov      dword ptr [rbp - 0x38], eax
000000014059cfb6 mov      rax, qword ptr [rbp + 0x48]
000000014059cfba mov      rcx, qword ptr [rcx + 8]
000000014059cfbe lea      rbx, [rax + 0x1320]
000000014059cfc5 mov      rax, qword ptr [rax + 0x18]
000000014059cfc9 mov      rdx, rbx
000000014059cfcc mov      rax, qword ptr [rax + 0x108]
000000014059cfd3 call     qword ptr [rip + 0xe731f]
000000014059cfd9 mov      esi, dword ptr [rbp + 0x58]
000000014059cfdc cmp      dword ptr [rdi], esi
000000014059cfde jae      0x14058eaac
000000014059cfe4 lea      r9, [rip + 0xd6a75]
000000014059cfeb jmp      0x140595e71
000000014059cff0 mov      rax, qword ptr [rsi + 0x10]
000000014059cff4 mov      ebx, 0x15880
000000014059cff9 mov      rcx, qword ptr [rbp + 0x48]
000000014059cffd mov      edx, ebx
000000014059cfff call     qword ptr [rip + 0xe72f3]
000000014059d005 shr      eax, 0xd
000000014059d008 and      eax, r13d
000000014059d00b mov      dword ptr [rbp - 0x38], eax
000000014059d00e je       0x14058ebb1
000000014059d014 mov      rax, qword ptr [rsi + 0x10]
000000014059d018 mov      edx, ebx
000000014059d01a mov      rcx, qword ptr [rbp + 0x48]
000000014059d01e call     qword ptr [rip + 0xe72d4]
000000014059d024 mov      rcx, qword ptr [rbp + 0x48]
000000014059d028 shr      eax, 0xd
000000014059d02b and      eax, r13d
000000014059d02e mov      dword ptr [rbp - 0x38], eax
000000014059d031 mov      rax, qword ptr [rbp + 0x48]
000000014059d035 mov      rcx, qword ptr [rcx + 8]
000000014059d039 lea      rbx, [rax + 0x1320]
000000014059d040 mov      rax, qword ptr [rax + 0x18]
000000014059d044 mov      rdx, rbx
000000014059d047 mov      rax, qword ptr [rax + 0x108]
000000014059d04e call     qword ptr [rip + 0xe72a4]
000000014059d054 mov      esi, dword ptr [rbp + 0x58]
000000014059d057 cmp      dword ptr [rdi], esi
000000014059d059 jae      0x14058eaac
000000014059d05f lea      r9, [rip + 0xd6a2a]
000000014059d066 jmp      0x140595e71
000000014059d06b mov      rax, qword ptr [rsi + 0x10]
000000014059d06f mov      ebx, 0x15880
000000014059d074 mov      rcx, qword ptr [rbp + 0x48]
000000014059d078 mov      edx, ebx
000000014059d07a call     qword ptr [rip + 0xe7278]
000000014059d080 shr      eax, 0xc
000000014059d083 and      eax, r13d
000000014059d086 mov      dword ptr [rbp - 0x38], eax
000000014059d089 je       0x14058ebb1
000000014059d08f mov      rax, qword ptr [rsi + 0x10]
000000014059d093 mov      edx, ebx
000000014059d095 mov      rcx, qword ptr [rbp + 0x48]
000000014059d099 call     qword ptr [rip + 0xe7259]
000000014059d09f mov      rcx, qword ptr [rbp + 0x48]
000000014059d0a3 shr      eax, 0xc
000000014059d0a6 and      eax, r13d
000000014059d0a9 mov      dword ptr [rbp - 0x38], eax
000000014059d0ac mov      rax, qword ptr [rbp + 0x48]
000000014059d0b0 mov      rcx, qword ptr [rcx + 8]
000000014059d0b4 lea      rbx, [rax + 0x1320]
000000014059d0bb mov      rax, qword ptr [rax + 0x18]
000000014059d0bf mov      rdx, rbx
000000014059d0c2 mov      rax, qword ptr [rax + 0x108]
000000014059d0c9 call     qword ptr [rip + 0xe7229]
000000014059d0cf mov      esi, dword ptr [rbp + 0x58]
000000014059d0d2 cmp      dword ptr [rdi], esi
000000014059d0d4 jae      0x14058eaac
000000014059d0da lea      r9, [rip + 0xd69df]
000000014059d0e1 jmp      0x140595e71
000000014059d0e6 mov      rax, qword ptr [rsi + 0x10]
000000014059d0ea mov      ebx, 0x15880
000000014059d0ef mov      rcx, qword ptr [rbp + 0x48]
000000014059d0f3 mov      edx, ebx
000000014059d0f5 call     qword ptr [rip + 0xe71fd]
000000014059d0fb shr      eax, 0xb
000000014059d0fe and      eax, r13d
000000014059d101 mov      dword ptr [rbp - 0x38], eax
000000014059d104 je       0x14058ebb1
000000014059d10a mov      rax, qword ptr [rsi + 0x10]
000000014059d10e mov      edx, ebx
000000014059d110 mov      rcx, qword ptr [rbp + 0x48]
000000014059d114 call     qword ptr [rip + 0xe71de]
000000014059d11a mov      rcx, qword ptr [rbp + 0x48]
000000014059d11e shr      eax, 0xb
000000014059d121 and      eax, r13d
000000014059d124 mov      dword ptr [rbp - 0x38], eax
000000014059d127 mov      rax, qword ptr [rbp + 0x48]
000000014059d12b mov      rcx, qword ptr [rcx + 8]
000000014059d12f lea      rbx, [rax + 0x1320]
000000014059d136 mov      rax, qword ptr [rax + 0x18]
000000014059d13a mov      rdx, rbx
000000014059d13d mov      rax, qword ptr [rax + 0x108]
000000014059d144 call     qword ptr [rip + 0xe71ae]
000000014059d14a mov      esi, dword ptr [rbp + 0x58]
000000014059d14d cmp      dword ptr [rdi], esi
000000014059d14f jae      0x14058eaac
000000014059d155 lea      r9, [rip + 0xd6994]
000000014059d15c jmp      0x140595e71
000000014059d161 mov      rax, qword ptr [rsi + 0x10]
000000014059d165 mov      ebx, 0x15880
000000014059d16a mov      rcx, qword ptr [rbp + 0x48]
000000014059d16e mov      edx, ebx
000000014059d170 call     qword ptr [rip + 0xe7182]
000000014059d176 shr      eax, 0xa
000000014059d179 and      eax, r13d
000000014059d17c mov      dword ptr [rbp - 0x38], eax
000000014059d17f je       0x14058ebb1
000000014059d185 mov      rax, qword ptr [rsi + 0x10]
000000014059d189 mov      edx, ebx
000000014059d18b mov      rcx, qword ptr [rbp + 0x48]
000000014059d18f call     qword ptr [rip + 0xe7163]
000000014059d195 mov      rcx, qword ptr [rbp + 0x48]
000000014059d199 shr      eax, 0xa
000000014059d19c and      eax, r13d
000000014059d19f mov      dword ptr [rbp - 0x38], eax
000000014059d1a2 mov      rax, qword ptr [rbp + 0x48]
000000014059d1a6 mov      rcx, qword ptr [rcx + 8]
000000014059d1aa lea      rbx, [rax + 0x1320]
000000014059d1b1 mov      rax, qword ptr [rax + 0x18]
000000014059d1b5 mov      rdx, rbx
000000014059d1b8 mov      rax, qword ptr [rax + 0x108]
000000014059d1bf call     qword ptr [rip + 0xe7133]
000000014059d1c5 mov      esi, dword ptr [rbp + 0x58]
000000014059d1c8 cmp      dword ptr [rdi], esi
000000014059d1ca jae      0x14058eaac
000000014059d1d0 lea      r9, [rip + 0xd6949]
000000014059d1d7 jmp      0x140595e71
000000014059d1dc mov      rax, qword ptr [rsi + 0x10]
000000014059d1e0 mov      ebx, 0x15880
000000014059d1e5 mov      rcx, qword ptr [rbp + 0x48]
000000014059d1e9 mov      edx, ebx
000000014059d1eb call     qword ptr [rip + 0xe7107]
000000014059d1f1 shr      eax, 9
000000014059d1f4 and      eax, r13d
000000014059d1f7 mov      dword ptr [rbp - 0x38], eax
000000014059d1fa je       0x14058ebb1
000000014059d200 mov      rax, qword ptr [rsi + 0x10]
000000014059d204 mov      edx, ebx
000000014059d206 mov      rcx, qword ptr [rbp + 0x48]
000000014059d20a call     qword ptr [rip + 0xe70e8]
000000014059d210 mov      rcx, qword ptr [rbp + 0x48]
000000014059d214 shr      eax, 9
000000014059d217 and      eax, r13d
000000014059d21a mov      dword ptr [rbp - 0x38], eax
000000014059d21d mov      rax, qword ptr [rbp + 0x48]
000000014059d221 mov      rcx, qword ptr [rcx + 8]
000000014059d225 lea      rbx, [rax + 0x1320]
000000014059d22c mov      rax, qword ptr [rax + 0x18]
000000014059d230 mov      rdx, rbx
000000014059d233 mov      rax, qword ptr [rax + 0x108]
000000014059d23a call     qword ptr [rip + 0xe70b8]
000000014059d240 mov      esi, dword ptr [rbp + 0x58]
000000014059d243 cmp      dword ptr [rdi], esi
000000014059d245 jae      0x14058eaac
000000014059d24b lea      r9, [rip + 0xd68fe]
000000014059d252 jmp      0x140595e71
000000014059d257 mov      rax, qword ptr [rsi + 0x10]
000000014059d25b mov      ebx, 0x15880
000000014059d260 mov      rcx, qword ptr [rbp + 0x48]
000000014059d264 mov      edx, ebx
000000014059d266 call     qword ptr [rip + 0xe708c]
000000014059d26c shr      eax, 8
000000014059d26f and      eax, r13d
000000014059d272 mov      dword ptr [rbp - 0x38], eax
000000014059d275 je       0x14058ebb1
000000014059d27b mov      rax, qword ptr [rsi + 0x10]
000000014059d27f mov      edx, ebx
000000014059d281 mov      rcx, qword ptr [rbp + 0x48]
000000014059d285 call     qword ptr [rip + 0xe706d]
000000014059d28b mov      rcx, qword ptr [rbp + 0x48]
000000014059d28f shr      eax, 8
000000014059d292 and      eax, r13d
000000014059d295 mov      dword ptr [rbp - 0x38], eax
000000014059d298 mov      rax, qword ptr [rbp + 0x48]
000000014059d29c mov      rcx, qword ptr [rcx + 8]
000000014059d2a0 lea      rbx, [rax + 0x1320]
000000014059d2a7 mov      rax, qword ptr [rax + 0x18]
000000014059d2ab mov      rdx, rbx
000000014059d2ae mov      rax, qword ptr [rax + 0x108]
000000014059d2b5 call     qword ptr [rip + 0xe703d]
000000014059d2bb mov      esi, dword ptr [rbp + 0x58]
000000014059d2be cmp      dword ptr [rdi], esi
000000014059d2c0 jae      0x14058eaac
000000014059d2c6 lea      r9, [rip + 0xd68a3]
000000014059d2cd jmp      0x140595e71
000000014059d2d2 mov      rax, qword ptr [rsi]
000000014059d2d5 mov      ebx, 0x15880
000000014059d2da mov      rcx, qword ptr [rbp + 0x48]
000000014059d2de mov      edx, ebx
000000014059d2e0 call     qword ptr [rip + 0xe7012]
000000014059d2e6 movzx    eax, al
000000014059d2e9 shr      eax, 7
000000014059d2ec mov      dword ptr [rbp - 0x38], eax
000000014059d2ef test     eax, eax
000000014059d2f1 je       0x14058ebb1
000000014059d2f7 mov      rax, qword ptr [rsi]
000000014059d2fa mov      edx, ebx
000000014059d2fc mov      rcx, qword ptr [rbp + 0x48]
000000014059d300 call     qword ptr [rip + 0xe6ff2]
000000014059d306 mov      rcx, qword ptr [rbp + 0x48]
000000014059d30a movzx    eax, al
000000014059d30d shr      eax, 7
000000014059d310 mov      dword ptr [rbp - 0x38], eax
000000014059d313 mov      rax, qword ptr [rbp + 0x48]
000000014059d317 mov      rcx, qword ptr [rcx + 8]
000000014059d31b lea      rbx, [rax + 0x1320]
000000014059d322 mov      rax, qword ptr [rax + 0x18]
000000014059d326 mov      rdx, rbx
000000014059d329 mov      rax, qword ptr [rax + 0x108]
000000014059d330 call     qword ptr [rip + 0xe6fc2]
000000014059d336 mov      esi, dword ptr [rbp + 0x58]
000000014059d339 cmp      dword ptr [rdi], esi
000000014059d33b jae      0x14058eaac
000000014059d341 lea      r9, [rip + 0xd6848]
000000014059d348 jmp      0x140595e71
000000014059d34d mov      rax, qword ptr [rsi]
000000014059d350 mov      ebx, 0x15880
000000014059d355 mov      rcx, qword ptr [rbp + 0x48]
000000014059d359 mov      edx, ebx
000000014059d35b call     qword ptr [rip + 0xe6f97]
000000014059d361 shr      eax, 6
000000014059d364 and      eax, r13d
000000014059d367 mov      dword ptr [rbp - 0x38], eax
000000014059d36a je       0x14058ebb1
000000014059d370 mov      rax, qword ptr [rsi]
000000014059d373 mov      edx, ebx
000000014059d375 mov      rcx, qword ptr [rbp + 0x48]
000000014059d379 call     qword ptr [rip + 0xe6f79]
000000014059d37f mov      rcx, qword ptr [rbp + 0x48]
000000014059d383 shr      eax, 6
000000014059d386 and      eax, r13d
000000014059d389 mov      dword ptr [rbp - 0x38], eax
000000014059d38c mov      rax, qword ptr [rbp + 0x48]
000000014059d390 mov      rcx, qword ptr [rcx + 8]
000000014059d394 lea      rbx, [rax + 0x1320]
000000014059d39b mov      rax, qword ptr [rax + 0x18]
000000014059d39f mov      rdx, rbx
000000014059d3a2 mov      rax, qword ptr [rax + 0x108]
000000014059d3a9 call     qword ptr [rip + 0xe6f49]
000000014059d3af mov      esi, dword ptr [rbp + 0x58]
000000014059d3b2 cmp      dword ptr [rdi], esi
000000014059d3b4 jae      0x14058eaac
000000014059d3ba lea      r9, [rip + 0xd67ef]
000000014059d3c1 jmp      0x140595e71
000000014059d3c6 mov      rax, qword ptr [rsi]
000000014059d3c9 mov      ebx, 0x15880
000000014059d3ce mov      rcx, qword ptr [rbp + 0x48]
000000014059d3d2 mov      edx, ebx
000000014059d3d4 call     qword ptr [rip + 0xe6f1e]
000000014059d3da shr      eax, 5
000000014059d3dd and      eax, r13d
000000014059d3e0 mov      dword ptr [rbp - 0x38], eax
000000014059d3e3 je       0x14058ebb1
000000014059d3e9 mov      rax, qword ptr [rsi]
000000014059d3ec mov      edx, ebx
000000014059d3ee mov      rcx, qword ptr [rbp + 0x48]
000000014059d3f2 call     qword ptr [rip + 0xe6f00]
000000014059d3f8 mov      rcx, qword ptr [rbp + 0x48]
000000014059d3fc shr      eax, 5
000000014059d3ff and      eax, r13d
000000014059d402 mov      dword ptr [rbp - 0x38], eax
000000014059d405 mov      rax, qword ptr [rbp + 0x48]
000000014059d409 mov      rcx, qword ptr [rcx + 8]
000000014059d40d lea      rbx, [rax + 0x1320]
000000014059d414 mov      rax, qword ptr [rax + 0x18]
000000014059d418 mov      rdx, rbx
000000014059d41b mov      rax, qword ptr [rax + 0x108]
000000014059d422 call     qword ptr [rip + 0xe6ed0]
000000014059d428 mov      esi, dword ptr [rbp + 0x58]
000000014059d42b cmp      dword ptr [rdi], esi
000000014059d42d jae      0x14058eaac
000000014059d433 lea      r9, [rip + 0xd6796]
000000014059d43a jmp      0x140595e71
000000014059d43f mov      rax, qword ptr [rsi]
000000014059d442 mov      ebx, 0x15880
000000014059d447 mov      rcx, qword ptr [rbp + 0x48]
000000014059d44b mov      edx, ebx
000000014059d44d call     qword ptr [rip + 0xe6ea5]
000000014059d453 shr      eax, 4
000000014059d456 and      eax, r13d
000000014059d459 mov      dword ptr [rbp - 0x38], eax
000000014059d45c je       0x14058ebb1
000000014059d462 mov      rax, qword ptr [rsi]
000000014059d465 mov      edx, ebx
000000014059d467 mov      rcx, qword ptr [rbp + 0x48]
000000014059d46b call     qword ptr [rip + 0xe6e87]
000000014059d471 mov      rcx, qword ptr [rbp + 0x48]
000000014059d475 shr      eax, 4
000000014059d478 and      eax, r13d
000000014059d47b mov      dword ptr [rbp - 0x38], eax
000000014059d47e mov      rax, qword ptr [rbp + 0x48]
000000014059d482 mov      rcx, qword ptr [rcx + 8]
000000014059d486 lea      rbx, [rax + 0x1320]
000000014059d48d mov      rax, qword ptr [rax + 0x18]
000000014059d491 mov      rdx, rbx
000000014059d494 mov      rax, qword ptr [rax + 0x108]
000000014059d49b call     qword ptr [rip + 0xe6e57]
000000014059d4a1 mov      esi, dword ptr [rbp + 0x58]
000000014059d4a4 cmp      dword ptr [rdi], esi
000000014059d4a6 jae      0x14058eaac
000000014059d4ac lea      r9, [rip + 0xd673d]
000000014059d4b3 jmp      0x140595e71
000000014059d4b8 mov      rax, qword ptr [rsi]
000000014059d4bb mov      ebx, 0x15880
000000014059d4c0 mov      rcx, qword ptr [rbp + 0x48]
000000014059d4c4 mov      edx, ebx
000000014059d4c6 call     qword ptr [rip + 0xe6e2c]
000000014059d4cc shr      eax, 3
000000014059d4cf and      eax, r13d
000000014059d4d2 mov      dword ptr [rbp - 0x38], eax
000000014059d4d5 je       0x14058ebb1
000000014059d4db mov      rax, qword ptr [rsi]
000000014059d4de mov      edx, ebx
000000014059d4e0 mov      rcx, qword ptr [rbp + 0x48]
000000014059d4e4 call     qword ptr [rip + 0xe6e0e]
000000014059d4ea mov      rcx, qword ptr [rbp + 0x48]
000000014059d4ee shr      eax, 3
000000014059d4f1 and      eax, r13d
000000014059d4f4 mov      dword ptr [rbp - 0x38], eax
000000014059d4f7 mov      rax, qword ptr [rbp + 0x48]
000000014059d4fb mov      rcx, qword ptr [rcx + 8]
000000014059d4ff lea      rbx, [rax + 0x1320]
000000014059d506 mov      rax, qword ptr [rax + 0x18]
000000014059d50a mov      rdx, rbx
000000014059d50d mov      rax, qword ptr [rax + 0x108]
000000014059d514 call     qword ptr [rip + 0xe6dde]
000000014059d51a mov      esi, dword ptr [rbp + 0x58]
000000014059d51d cmp      dword ptr [rdi], esi
000000014059d51f jae      0x14058eaac
000000014059d525 lea      r9, [rip + 0xd66e4]
000000014059d52c jmp      0x140595e71
000000014059d531 mov      rax, qword ptr [rsi]
000000014059d534 mov      ebx, 0x15880
000000014059d539 mov      rcx, qword ptr [rbp + 0x48]
000000014059d53d mov      edx, ebx
000000014059d53f call     qword ptr [rip + 0xe6db3]
000000014059d545 shr      eax, 2
000000014059d548 and      eax, r13d
000000014059d54b mov      dword ptr [rbp - 0x38], eax
000000014059d54e je       0x14058ebb1
000000014059d554 mov      rax, qword ptr [rsi]
000000014059d557 mov      edx, ebx
000000014059d559 mov      rcx, qword ptr [rbp + 0x48]
000000014059d55d call     qword ptr [rip + 0xe6d95]
000000014059d563 mov      rcx, qword ptr [rbp + 0x48]
000000014059d567 shr      eax, 2
000000014059d56a and      eax, r13d
000000014059d56d mov      dword ptr [rbp - 0x38], eax
000000014059d570 mov      rax, qword ptr [rbp + 0x48]
000000014059d574 mov      rcx, qword ptr [rcx + 8]
000000014059d578 lea      rbx, [rax + 0x1320]
000000014059d57f mov      rax, qword ptr [rax + 0x18]
000000014059d583 mov      rdx, rbx
000000014059d586 mov      rax, qword ptr [rax + 0x108]
000000014059d58d call     qword ptr [rip + 0xe6d65]
000000014059d593 mov      esi, dword ptr [rbp + 0x58]
000000014059d596 cmp      dword ptr [rdi], esi
000000014059d598 jae      0x14058eaac
000000014059d59e lea      r9, [rip + 0xd668b]
000000014059d5a5 jmp      0x140595e71
000000014059d5aa mov      rax, qword ptr [rsi]
000000014059d5ad mov      ebx, 0x15880
000000014059d5b2 mov      rcx, qword ptr [rbp + 0x48]
000000014059d5b6 mov      edx, ebx
000000014059d5b8 call     qword ptr [rip + 0xe6d3a]
000000014059d5be shr      eax, 1
000000014059d5c0 and      eax, r13d
000000014059d5c3 mov      dword ptr [rbp - 0x38], eax
000000014059d5c6 je       0x14058ebb1
000000014059d5cc mov      rax, qword ptr [rsi]
000000014059d5cf mov      edx, ebx
000000014059d5d1 mov      rcx, qword ptr [rbp + 0x48]
000000014059d5d5 call     qword ptr [rip + 0xe6d1d]
000000014059d5db mov      rcx, qword ptr [rbp + 0x48]
000000014059d5df shr      eax, 1
000000014059d5e1 and      eax, r13d
000000014059d5e4 mov      dword ptr [rbp - 0x38], eax
000000014059d5e7 mov      rax, qword ptr [rbp + 0x48]
000000014059d5eb mov      rcx, qword ptr [rcx + 8]
000000014059d5ef lea      rbx, [rax + 0x1320]
000000014059d5f6 mov      rax, qword ptr [rax + 0x18]
000000014059d5fa mov      rdx, rbx
000000014059d5fd mov      rax, qword ptr [rax + 0x108]
000000014059d604 call     qword ptr [rip + 0xe6cee]
000000014059d60a mov      esi, dword ptr [rbp + 0x58]
000000014059d60d cmp      dword ptr [rdi], esi
000000014059d60f jae      0x14058eaac
000000014059d615 lea      r9, [rip + 0xd6634]
000000014059d61c jmp      0x140595e71
000000014059d621 mov      rax, qword ptr [rsi]
000000014059d624 mov      ebx, 0x15880
000000014059d629 mov      rcx, qword ptr [rbp + 0x48]
000000014059d62d mov      edx, ebx
000000014059d62f call     qword ptr [rip + 0xe6cc3]
000000014059d635 and      eax, r13d
000000014059d638 mov      dword ptr [rbp - 0x38], eax
000000014059d63b je       0x14058ebb1
000000014059d641 mov      rax, qword ptr [rsi]
000000014059d644 mov      edx, ebx
000000014059d646 mov      rcx, qword ptr [rbp + 0x48]
000000014059d64a call     qword ptr [rip + 0xe6ca8]
000000014059d650 mov      rcx, qword ptr [rbp + 0x48]
000000014059d654 and      eax, r13d
000000014059d657 mov      dword ptr [rbp - 0x38], eax
000000014059d65a mov      rax, qword ptr [rbp + 0x48]
000000014059d65e mov      rcx, qword ptr [rcx + 8]
000000014059d662 lea      rbx, [rax + 0x1320]
000000014059d669 mov      rax, qword ptr [rax + 0x18]
000000014059d66d mov      rdx, rbx
000000014059d670 mov      rax, qword ptr [rax + 0x108]
000000014059d677 call     qword ptr [rip + 0xe6c7b]
000000014059d67d mov      esi, dword ptr [rbp + 0x58]
000000014059d680 cmp      dword ptr [rdi], esi
000000014059d682 jae      0x14058eaac
000000014059d688 lea      r9, [rip + 0xd65e1]
000000014059d68f jmp      0x140595e71
000000014059d694 add      ch, dl
000000014059d696 pop      rax
000000014059d697 add      bh, dl