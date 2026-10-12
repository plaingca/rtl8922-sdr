# Project context

Read README.md, synthesizer-findings.md and validation-summary.json before
changing capture or RF tuning behavior. Historical reports do not supersede
current qualification limits. Keep working and experimental driver patches separate.

The working driver is pinned by driver/upstream.json; driver/prepare.sh
reconstructs it. vendor/ and build directories are ignored. Never commit raw
captures, firmware/ROM dumps, vendor driver packages, credentials or build artifacts.

Hardware testing uses beastmode via the user's existing SSH setup. The card
is RTL8922AE at 0000:0d:00.0; Pluto is available at ip:192.168.2.1.
Do not interrupt unrelated services. Before any RF test, save fresh settings,
bound the test duration, stop TX and restore settings in finally. Reject
strong peaks unless they move correctly with the reference tone. Do not claim
LO lock solely from computed dividers or calibration readbacks.

At migration, the running demo still uses
/home/plaing/rtl8922-iq-research/soapy and rtl8922-live-demo.service.
The new independent checkout is /home/plaing/rtl8922-sdr. Do not run both
receivers at once or overwrite the working driver while it is loaded.
The 40 MS/s demo uses the service launcher from /home/plaing/rtl8922-sdr,
using the original working modules in /home/plaing/rtl8922-iq-research/la-driver.
The user has shut the demo down: Pluto TX is off and the card is released.
Do not restart it automatically.
Read the loopback demo status before taking the card. Keep the demo restored
after experiments when feasible. Long captures require checking free disk space.

The research/archive tools preserve historical paths and may write registers.
Inspect them before running. Never automatically run hardware probes as CI tests.
