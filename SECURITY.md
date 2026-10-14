# Security and sensitive data

Report vulnerabilities and accidental credential/data exposure through
[GitHub private vulnerability reporting](https://github.com/plaingca/rtl8922-sdr/security/advisories/new).
Include the commit, affected component and a minimal reproduction without
posting credentials or received packet contents. Public issues are suitable for
ordinary bugs; use private reporting for exploitable problems or sensitive data.

Only the latest default-branch source is maintained. This is experimental
research software, with no security or response-time guarantee.

The browser demo is designed for loopback access and SSH forwarding. It can
control a receiver and an external Pluto transmitter. Do not expose it directly
to an untrusted network. Receiver launchers require privileged driver/debugfs
access; inspect changes before running them as root.

For a leaked credential, rotate/revoke it first. Deleting it from the current
tree does not remove historical copies. Coordinate any history rewrite with
the maintainer before force-pushing or deleting shared branches.
