#!/usr/bin/env python3
"""Bounded passive register snapshot; no CPU reset or DMA submission."""

import sys

from hardware import Radio

with Radio(sys.argv[1], seconds=60) as radio:
    radio.report["scope"] = "PAXI and processor-control baseline; no CPU reset or DMA submission"
    radio.report["direct"] = {
        hex(a): hex(radio.rd(a)) for a in (0x88, 0x888, 0x3FC, 0x8400, 0x8404, 0x914)
    }
    radio.wr(0xC04, 0x18000000)
    radio.report["indirect_global"] = {
        hex(a): hex(radio.rd(0x80000 + a)) for a in (0x88, 0x888, 0x3FC)
    }
    radio.wr(0xC04, 0x18006000)
    radio.report["paxi"] = {
        hex(a): hex(radio.rd(0x80000 + a)) for a in
        (0, 4, 0x100, 0x104, 0x320, 0x420, 0x424, 0x620, 0x624, 0x700, 0x704, 0x710, 0x714)
    }
    radio.save()
