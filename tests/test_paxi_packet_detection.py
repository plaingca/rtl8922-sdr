"""Compile the actual PAXI inhibit helper against fake BB register access."""

import pathlib
import shutil
import subprocess
import tempfile
import unittest

ROOT = pathlib.Path(__file__).resolve().parents[1]


@unittest.skipUnless(shutil.which("cc"), "C compiler required")
class PacketDetectionGate(unittest.TestCase):
    def test_preserve_bits_reapply_and_fail_closed(self):
        source = (ROOT / "research/streaming/paxi-frozen.c").read_text()
        begin = source.index("static bool iq_paxi_quiesce_pd = true;")
        end = source.index("static bool iq_paxi_mmio_valid", begin)
        helper = source[begin:end]
        harness = (
            r"""
#include <stdbool.h>
#include <stdint.h>
#include <errno.h>
#include <assert.h>
#define READ_ONCE(x) (x)
#define R_RXCCA_BE1 0x0520
#define B_RXCCA_BE1_DIS 1U
#define R_PD_CTRL 0x0c3c
#define B_PD_HIT_DIS (1U << 9)
#define RTW89_PHY_0 0
struct rtw89_dev { uint32_t cca,pd; bool reject; };
static void rtw89_phy_write32_idx(struct rtw89_dev *d, uint32_t a,
                                uint32_t mask, uint32_t value, int phy) {
    (void)phy;
    uint32_t *r=a==R_RXCCA_BE1?&d->cca:&d->pd;
    if(d->reject && a==R_PD_CTRL) return;
    *r=(*r&~mask)|(value<<__builtin_ctz(mask));
}
static uint32_t rtw89_phy_read32_idx(struct rtw89_dev *d, uint32_t a,
                                   uint32_t mask, int phy) {
    (void)phy;
    return ((a==R_RXCCA_BE1?d->cca:d->pd)&mask)>>__builtin_ctz(mask);
}
"""
            + helper
            + r"""
int main(void) {
    struct rtw89_dev d={.cca=0x12340000,.pd=0xabcd0000};
    assert(iq_paxi_quiesce_packet_detection(&d)==0);
    assert(d.cca==0x12340001 && d.pd==0xabcd0200 && iq_paxi_pd_quiesced);
    d.cca&=~1U;d.pd&=~(1U<<9); /* upstream retune re-enables detection */
    assert(iq_paxi_quiesce_packet_detection(&d)==0 && iq_paxi_pd_quiesced);
    d.pd&=~(1U<<9);d.reject=true;
    assert(iq_paxi_quiesce_packet_detection(&d)==-EIO && !iq_paxi_pd_quiesced);
    iq_paxi_quiesce_pd=false;d.cca=0;d.pd=0;
    assert(iq_paxi_quiesce_packet_detection(&d)==0 && !iq_paxi_pd_quiesced);
    assert(!d.cca && !d.pd);
}
"""
        )
        with tempfile.TemporaryDirectory() as directory:
            src = pathlib.Path(directory) / "gate.c"
            src.write_text(harness)
            binary = pathlib.Path(directory) / "gate"
            subprocess.run(
                [
                    "cc",
                    "-std=c11",
                    "-Wall",
                    "-Wextra",
                    "-Werror",
                    str(src),
                    "-o",
                    str(binary),
                ],
                check=True,
            )
            subprocess.run([str(binary)], check=True)
