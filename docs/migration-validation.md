# Standalone migration validation — 2026-10-12

- Working driver patch SHA-256:
  `69f722ce636bb6fda541bd4be3d787fbc30b9db88b54d731dc66fe4a15036fc6`.
  Matches a fresh git diff of the original active driver's source.
- Ran driver/prepare.sh against a fresh upstream clone. Exact pinned commit
  checked out; patch applied and reconstructed diff had the same SHA-256.
- Built the kernel modules with make -j4 against Linux 6.8.0-124-generic.
  BTF generation was skipped because vmlinux is unavailable; modules built.
- Configured and built the standalone SoapySDR plugin and live bridge with
  CMake, using the host's /usr/local SoapySDR SDK.
- Bash syntax checks passed for run-receiver.sh and driver/prepare.sh.
  Python syntax checks passed for the demo, launcher, Pluto helper and
  register-field generator.
- Credential-pattern scan found no matching private keys, GitHub tokens,
  credential-bearing RTSP URLs or assigned long password/API-token literals.
- Existing live receiver service remained active on its original paths.
  Migration validation did not replace loaded modules, install the new plugin
  globally or interrupt reception. The relocated launcher has not yet been
  exercised against hardware; existing RF qualification predates relocation.

The independent Linux build checkout is /home/plaing/rtl8922-sdr; Windows
source checkout is D:/rtl8922-sdr. Large binary data and vendor binaries remain
outside this repository in the original workspace.
